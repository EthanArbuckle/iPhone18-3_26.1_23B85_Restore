uint64_t DefaultBookkeepingXPCClient.init(featureConfigProvider:accountDetailsProvider:ownerProviders:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_231368770();
  v10 = v9;
  sub_2311CF388(a1, (a4 + 2));
  sub_2311CF388(a2, (a4 + 7));
  sub_231366F40();
  v11 = sub_231366F30();
  v12 = type metadata accessor for DefaultBookkeepingXPCConnectionFactory();
  OUTLINED_FUNCTION_54();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v16 = v12;
  v17 = &off_2845F3CA0;
  v15[0] = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a4 = v8;
  a4[1] = v10;
  a4[12] = a3;
  sub_2311CF388(v15, (a4 + 13));
  a4[18] = *(*__swift_project_boxed_opaque_existential_1(v15, v16) + 16);

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t DefaultBookkeepingXPCClient.updateIndexForAppInstall(bundleIds:)()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2313698C0();
  v1[5] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23121E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  v26 = OUTLINED_FUNCTION_17_4(v22[4]);
  v22[8] = v26;
  v22[9] = v27;
  v28 = v22[3];
  if (v27)
  {
    v29 = v27;
    v30 = *(v22[4] + 144);
    OUTLINED_FUNCTION_36_2();
    v31 = swift_allocObject();
    v22[10] = v31;
    *(v31 + 16) = v29;
    *(v31 + 24) = v28;
    OUTLINED_FUNCTION_15_8(MEMORY[0x277D60698]);
    sub_231369EE0();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v22[11] = v32;
    *v32 = v33;
    v32[1] = sub_23121E278;
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_7();

    return v38(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v43 = v26;
    v44 = v22[7];
    sub_2313690F0();
    sub_231369EE0();
    v45 = sub_2313698A0();
    sub_23136A3B0();
    OUTLINED_FUNCTION_48_3();

    v46 = os_log_type_enabled(v45, v23);
    v47 = v22[6];
    v48 = v22[7];
    v49 = v22[5];
    if (v46)
    {
      v50 = v22[3];
      OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_33_4();
      *v48 = 136315138;
      v51 = MEMORY[0x23192A860](v50, MEMORY[0x277D837D0]);
      v53 = sub_2311CFD58(v51, v52, &a10);

      *(v48 + 4) = v53;
      OUTLINED_FUNCTION_43_0(&dword_2311CB000, v54, v55, "[BookkeepingXPCServicesClient] Error while trying to update index for app installs - %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_15();

      (*(v47 + 8))(a9, v49);
    }

    else
    {

      (*(v47 + 8))(v48, v49);
    }

    sub_231223268();
    v56 = OUTLINED_FUNCTION_42_3();
    OUTLINED_FUNCTION_24_5(v56, v57);
    [v43 invalidate];

    v58 = v22[7];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_7();

    return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23121E278()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23121E378()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  swift_unknownObjectRelease();
  v4 = v0[2];
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_14();

  return v5(v4);
}

uint64_t sub_23121E410()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  swift_unknownObjectRelease();
  [v3 invalidate];
  swift_unknownObjectRelease();

  v4 = v0[12];
  v5 = v0[7];

  OUTLINED_FUNCTION_56_0();

  return v6();
}

void sub_23121E49C(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = a3;
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438F0, &qword_23136EA60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_2313698C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v14 = sub_2313698A0();
  v15 = sub_23136A3A0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v4;
    v17 = a1;
    v18 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2311CB000, v14, v15, "[BookkeepingXPCServicesClient] Calling XPCService updateIndexForAppInstall", v16, 2u);
    v19 = v18;
    a1 = v17;
    v4 = v25;
    MEMORY[0x23192B930](v19, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v20 = sub_23136A190();
  (*(v5 + 16))(v8, a1, v4);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v21, v8, v4);
  aBlock[4] = sub_2312256A8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23121E784;
  aBlock[3] = &block_descriptor_112;
  v23 = _Block_copy(aBlock);

  [v27 updateIndexForAppInstallWithBundleIds:v20 with:v23];
  _Block_release(v23);
}

uint64_t sub_23121E784(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t DefaultBookkeepingXPCClient.deletePhrasesAppUnInstall(bundleIds:)()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23121E87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  v26 = OUTLINED_FUNCTION_17_4(v22[3]);
  v22[7] = v26;
  v22[8] = v27;
  v28 = v22[2];
  if (v27)
  {
    v29 = v27;
    v30 = *(v22[3] + 144);
    OUTLINED_FUNCTION_36_2();
    v31 = swift_allocObject();
    v22[9] = v31;
    *(v31 + 16) = v29;
    *(v31 + 24) = v28;
    OUTLINED_FUNCTION_15_8(MEMORY[0x277D60698]);
    sub_231369EE0();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v22[10] = v32;
    *v32 = v33;
    v32[1] = sub_23121EAC4;
    OUTLINED_FUNCTION_7();

    return v38(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v43 = v26;
    v44 = v22[6];
    sub_2313690F0();
    sub_231369EE0();
    v45 = sub_2313698A0();
    sub_23136A3B0();
    OUTLINED_FUNCTION_48_3();

    v46 = os_log_type_enabled(v45, v23);
    v47 = v22[5];
    v48 = v22[6];
    v49 = v22[4];
    if (v46)
    {
      v50 = v22[2];
      OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_33_4();
      *v48 = 136315138;
      v51 = MEMORY[0x23192A860](v50, MEMORY[0x277D837D0]);
      v53 = sub_2311CFD58(v51, v52, &a10);

      *(v48 + 4) = v53;
      OUTLINED_FUNCTION_43_0(&dword_2311CB000, v54, v55, "[BookkeepingXPCServicesClient] Error while trying to delete phrases for uninstalled apps - %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_15();

      (*(v47 + 8))(a9, v49);
    }

    else
    {

      (*(v47 + 8))(v48, v49);
    }

    sub_231223268();
    v56 = OUTLINED_FUNCTION_42_3();
    OUTLINED_FUNCTION_24_5(v56, v57);
    [v43 invalidate];

    v58 = v22[6];

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_7();

    return v61(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23121EAC4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23121EBC4()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  swift_unknownObjectRelease();
  v4 = *(v0 + 96);
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_14();

  return v5(v4);
}

uint64_t sub_23121EC5C()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  swift_unknownObjectRelease();
  [v3 invalidate];
  swift_unknownObjectRelease();

  v4 = v0[11];
  v5 = v0[6];

  OUTLINED_FUNCTION_14();

  return v6(0);
}

void sub_23121ECEC(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = a3;
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438F8, &qword_23136EA68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_2313698C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v14 = sub_2313698A0();
  v15 = sub_23136A3A0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v4;
    v17 = a1;
    v18 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2311CB000, v14, v15, "[BookkeepingXPCServicesClient] Calling XPCService deletePhrasesAppUnInstall", v16, 2u);
    v19 = v18;
    a1 = v17;
    v4 = v25;
    MEMORY[0x23192B930](v19, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v20 = sub_23136A190();
  (*(v5 + 16))(v8, a1, v4);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v21, v8, v4);
  aBlock[4] = sub_23122544C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23121F020;
  aBlock[3] = &block_descriptor_106;
  v23 = _Block_copy(aBlock);

  [v27 deletePhrasesForAppUnInstallsWithBundleIds:v20 with:v23];
  _Block_release(v23);
}

uint64_t sub_23121F020(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t DefaultBookkeepingXPCClient.buildAutoCompleteIndex(onStartUpEvent:)()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 24) = v0;
  *(v1 + 96) = v2;
  v3 = sub_231369840();
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_0(v3);
  *(v1 + 40) = v4;
  v6 = *(v5 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23121F11C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = sub_231369190();
  sub_231369140();

  sub_2313675D0();
  v4 = sub_231369190();
  sub_2313691A0();

  v5 = *__swift_project_boxed_opaque_existential_1((v2 + 104), *(v2 + 128));
  v6 = sub_2311D56B0();
  *(v0 + 56) = v6;
  *(v0 + 64) = v7;
  if (v7)
  {
    v8 = v7;
    v9 = *(v0 + 96);
    v10 = *(*(v0 + 24) + 144);
    OUTLINED_FUNCTION_36_2();
    v11 = swift_allocObject();
    *(v0 + 72) = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
    v12 = *MEMORY[0x277D60698];
    v13 = *(MEMORY[0x277D60698] + 4);
    v25 = OUTLINED_FUNCTION_31_4(MEMORY[0x277D60698]);
    swift_unknownObjectRetain_n();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v0 + 80) = v14;
    *v14 = v15;
    v14[1] = sub_23121F364;
    v16 = OUTLINED_FUNCTION_28_4();

    return v25(v16);
  }

  else
  {
    v18 = v6;
    v19 = *(v0 + 48);
    sub_231223268();
    OUTLINED_FUNCTION_42_3();
    *v20 = 1;
    swift_willThrow();
    [v18 invalidate];

    sub_2313675D0();
    v21 = sub_231369190();
    sub_231369180();

    v22 = OUTLINED_FUNCTION_47_4();
    v23(v22);

    OUTLINED_FUNCTION_56_0();

    return v24();
  }
}

uint64_t sub_23121F364()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23121F464()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  swift_unknownObjectRelease();
  v6 = v0[2];
  [v1 invalidate];
  swift_unknownObjectRelease();

  sub_2313675D0();
  v7 = sub_231369190();
  sub_231369180();

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_14();

  return v8(v6);
}

void sub_23121F564()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  swift_unknownObjectRelease();
  [v3 invalidate];
  swift_unknownObjectRelease();

  sub_2313675D0();
  v5 = sub_231369190();
  sub_231369180();

  v6 = v0[11];
  v7 = OUTLINED_FUNCTION_47_4();
  v8(v7);

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_86();

  __asm { BRAA            X1, X16 }
}

void sub_23121F644(uint64_t a1, int a2, void *a3)
{
  v24 = a3;
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438F0, &qword_23136EA60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = sub_2313698C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v14 = sub_2313698A0();
  v15 = sub_23136A3A0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = a1;
    v17 = v16;
    *v16 = 67109120;
    *(v16 + 4) = v25 & 1;
    _os_log_impl(&dword_2311CB000, v14, v15, "[BookkeepingXPCServicesClient] Calling XPCService buildAutoCompleteIndex. onStartUpEvent: %{BOOL}d", v16, 8u);
    v18 = v17;
    a1 = v23;
    MEMORY[0x23192B930](v18, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  (*(v5 + 16))(v8, a1, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v8, v4);
  aBlock[4] = sub_231225424;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23121E784;
  aBlock[3] = &block_descriptor_100;
  v21 = _Block_copy(aBlock);

  [v24 buildAutoCompleteIndexOnStartUpEvent:v25 & 1 with:v21];
  _Block_release(v21);
}

uint64_t DefaultBookkeepingXPCClient.buildAutoCompleteIndexSubset(sources:)()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2313698C0();
  v1[5] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23121F9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  v26 = OUTLINED_FUNCTION_17_4(v22[4]);
  v22[8] = v26;
  v22[9] = v27;
  v28 = v22[3];
  if (v27)
  {
    v29 = v27;
    v30 = *(v22[4] + 144);
    OUTLINED_FUNCTION_36_2();
    v31 = swift_allocObject();
    v22[10] = v31;
    *(v31 + 16) = v29;
    *(v31 + 24) = v28;
    OUTLINED_FUNCTION_15_8(MEMORY[0x277D60698]);
    sub_231369EE0();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v22[11] = v32;
    *v32 = v33;
    v32[1] = sub_23121FC08;
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_7();

    return v38(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v43 = v26;
    v44 = v22[7];
    sub_2313690F0();
    sub_231369EE0();
    v45 = sub_2313698A0();
    sub_23136A3B0();
    OUTLINED_FUNCTION_48_3();

    v46 = os_log_type_enabled(v45, v23);
    v47 = v22[6];
    v48 = v22[7];
    v49 = v22[5];
    if (v46)
    {
      v50 = v22[3];
      OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_33_4();
      *v48 = 136315138;
      v51 = sub_231369570();
      v52 = MEMORY[0x23192A860](v50, v51);
      v54 = sub_2311CFD58(v52, v53, &a10);

      *(v48 + 4) = v54;
      OUTLINED_FUNCTION_43_0(&dword_2311CB000, v55, v56, "Error while trying to build partial index - %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_15();

      (*(v47 + 8))(a9, v49);
    }

    else
    {

      (*(v47 + 8))(v48, v49);
    }

    sub_231223268();
    v57 = OUTLINED_FUNCTION_42_3();
    OUTLINED_FUNCTION_24_5(v57, v58);
    [v43 invalidate];

    v59 = v22[7];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_7();

    return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23121FC08()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_23121FD08(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_231369570();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438F0, &qword_23136EA60);
  v45 = *(v10 - 8);
  v43 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v44 = &v40 - v11;
  v12 = sub_2313698C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v17 = sub_2313698A0();
  v18 = sub_23136A3A0();
  v19 = os_log_type_enabled(v17, v18);
  v46 = a1;
  if (v19)
  {
    v20 = a2;
    v21 = a3;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2311CB000, v17, v18, "[BookkeepingXPCServicesClient] Calling XPCService buildAutoCompleteIndexSubset", v22, 2u);
    v23 = v22;
    a3 = v21;
    a2 = v20;
    a1 = v46;
    MEMORY[0x23192B930](v23, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v24 = *(a3 + 16);
  if (v24)
  {
    v41 = v10;
    v42 = a2;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2311F5C94(0, v24, 0);
    v25 = aBlock[0];
    v26 = v48 + 16;
    v27 = *(v48 + 16);
    v28 = a3 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v47 = *(v48 + 72);
    v48 = v27;
    v29 = (v26 - 8);
    do
    {
      v30 = v49;
      (v48)(v9, v28, v49);
      v31 = sub_231369560();
      (*v29)(v9, v30);
      aBlock[0] = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2311F5C94(v32 > 1, v33 + 1, 1);
        v25 = aBlock[0];
      }

      *(v25 + 16) = v33 + 1;
      *(v25 + 8 * v33 + 32) = v31;
      v28 += v47;
      --v24;
    }

    while (v24);
    v10 = v41;
    a2 = v42;
    a1 = v46;
  }

  v34 = sub_23136A190();

  v36 = v44;
  v35 = v45;
  (*(v45 + 16))(v44, a1, v10);
  v37 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v38 = swift_allocObject();
  (*(v35 + 32))(v38 + v37, v36, v10);
  aBlock[4] = sub_2312256A8;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23121E784;
  aBlock[3] = &block_descriptor_94;
  v39 = _Block_copy(aBlock);

  [a2 buildAutoCompleteIndexSubsetWithSources:v34 with:v39];
  _Block_release(v39);
}

uint64_t sub_2312201C4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 192) = v0;

  if (v0)
  {
    v9 = *(v3 + 176);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312202C4()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  (*(v4 + 8))(v3, v4);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  if (v1)
  {
    sub_231224724(*(v0 + 152), MEMORY[0x277D607A0]);

    v7 = *(v0 + 152);
  }

  else
  {
    v8 = *(v0 + 136);
    v9 = type metadata accessor for FeatureRequirementsTransport();
    OUTLINED_FUNCTION_4_8(v9);
    sub_2312243AC(v6, v8 + v10, v11);
    sub_2311D38A8((v0 + 96), v8);
    *(v8 + *(v9 + 24)) = v5;
  }

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_52_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2312203DC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t FeatureRequirementsTransport.init(featureConfigWrapper:accountDetails:possibleOwners:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2311D38A8(a1, a4);
  v7 = type metadata accessor for FeatureRequirementsTransport();
  OUTLINED_FUNCTION_4_8(v7);
  result = sub_2312243AC(a2, a4 + v8, v9);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t DefaultBookkeepingXPCClient.log(from:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_8();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2313667A0();
  v1[6] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[7] = v6;
  v1[8] = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v8 = sub_231367D80();
  v1[10] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[11] = v9;
  v1[12] = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_43();
  v11 = type metadata accessor for FeatureRequirementsTransport();
  OUTLINED_FUNCTION_0(v11);
  v1[14] = v12;
  v1[15] = *(v13 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2312205FC()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17_4(v0[5]);
  v0[18] = v1;
  v0[19] = v2;
  if (v2)
  {
    swift_unknownObjectRetain();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[20] = v3;
    *v3 = v4;
    v3[1] = sub_231220740;
    v5 = v0[17];
    v6 = v0[5];
    OUTLINED_FUNCTION_52_3();

    return sub_2311D512C(v7);
  }

  else
  {
    v10 = v1;
    sub_231223268();
    v11 = OUTLINED_FUNCTION_42_3();
    OUTLINED_FUNCTION_24_5(v11, v12);
    [v10 invalidate];

    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[13];
    v16 = v0[9];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_52_3();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_231220740()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23122083C()
{
  v1 = v0[16];
  v2 = v0[17];
  v24 = v0[14];
  v25 = v0[15];
  v3 = v0[13];
  v26 = v3;
  v27 = v1;
  v23 = v0[12];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v29 = v6;
  v31 = v0[19];
  v8 = v0[6];
  v7 = v0[7];
  v28 = v8;
  v9 = v0[4];
  v11 = v0[2];
  v10 = v0[3];
  v32 = *(v0[5] + 144);
  (*(v4 + 16))();
  OUTLINED_FUNCTION_20_5();
  sub_23122509C(v2, v1, v12);
  (*(v7 + 16))(v6, v9, v8);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = (v23 + *(v24 + 80) + v13) & ~*(v24 + 80);
  v15 = (v25 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v7 + 80) + v15 + 8) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v0[22] = v17;
  *(v17 + 16) = v11;
  (*(v4 + 32))(v17 + v13, v26, v5);
  OUTLINED_FUNCTION_19_6();
  sub_2312243AC(v27, v17 + v14, v18);
  *(v17 + v15) = v31;
  (*(v7 + 32))(v17 + v16, v29, v28);
  v19 = *MEMORY[0x277D60698];
  v20 = *(MEMORY[0x277D60698] + 4);
  v30 = OUTLINED_FUNCTION_31_4(MEMORY[0x277D60698]);
  swift_unknownObjectRetain();
  sub_231369EE0();
  v21 = swift_task_alloc();
  v0[23] = v21;
  *v21 = v0;
  v21[1] = sub_231220A78;

  return v30();
}

uint64_t sub_231220A78()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *(v4 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v9 + 192) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231220B90()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];
  v6 = v0[9];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_13();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_231220C4C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();
  [v1 invalidate];
  swift_unknownObjectRelease();

  v3 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v7 = v0[9];

  OUTLINED_FUNCTION_56_0();

  return v8();
}

uint64_t sub_231220CF8()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_13();
  [v1 invalidate];
  swift_unknownObjectRelease();

  v4 = v0[24];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];
  v8 = v0[9];

  OUTLINED_FUNCTION_56_0();

  return v9();
}

uint64_t sub_231220DAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v48 = a6;
  v50 = a5;
  v51 = a4;
  v52 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C8, &qword_23136EA50);
  v9 = *(v8 - 8);
  v49 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = sub_2313698C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v17 = sub_2313698A0();
  v18 = sub_23136A3A0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v47 = a2;
    v20 = v11;
    v21 = v8;
    v22 = v9;
    v23 = a1;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2311CB000, v17, v18, "[BookkeepingXPCServicesClient] Calling XPCService log", v19, 2u);
    v25 = v24;
    a1 = v23;
    v9 = v22;
    v8 = v21;
    v11 = v20;
    a2 = v47;
    MEMORY[0x23192B930](v25, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v26 = sub_231366560();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_231366550();
  sub_231366530();
  aBlock[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438D0, &qword_23136EA58);
  sub_2312252FC();
  v29 = sub_231366540();
  v31 = v30;
  sub_231367D80();
  sub_2311D57D8(&qword_27DD438E8, MEMORY[0x277D60BA8]);
  v32 = sub_231366540();
  v52 = v33;
  type metadata accessor for FeatureRequirementsTransport();
  sub_2311D57D8(qword_280F7EF50, type metadata accessor for FeatureRequirementsTransport);
  v51 = sub_231366540();
  v44 = v34;
  v46 = sub_2313666B0();
  v47 = v32;
  v45 = sub_2313666B0();
  v48 = sub_231366780();
  v35 = v44;
  v36 = sub_2313666B0();
  (*(v9 + 16))(v11, a1, v8);
  v37 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v38 = swift_allocObject();
  (*(v9 + 32))(v38 + v37, v11, v8);
  aBlock[4] = sub_2312256A4;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2312212A4;
  aBlock[3] = &block_descriptor_86;
  v39 = _Block_copy(aBlock);

  v41 = v45;
  v40 = v46;
  v42 = v48;
  [v50 logFrom:v46 deliveryVehicle:v45 generationId:v48 featureRequirements:v36 with:v39];

  _Block_release(v39);

  sub_231225224(v51, v35);
  sub_231225224(v47, v52);
  return sub_231225224(v29, v31);
}

void sub_2312212A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t DefaultBookkeepingXPCClient.logEngagement(for:with:invocationType:)()
{
  OUTLINED_FUNCTION_8();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2313667A0();
  v1[6] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[7] = v6;
  v1[8] = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v8 = sub_231367C70();
  v1[10] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[11] = v9;
  v1[12] = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_43();
  v11 = sub_231369050();
  v1[14] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[15] = v12;
  v1[16] = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_43();
  v14 = type metadata accessor for FeatureRequirementsTransport();
  OUTLINED_FUNCTION_0(v14);
  v1[18] = v15;
  v1[19] = *(v16 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2312214CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312215C8()
{
  v40 = v0[23];
  v1 = v0[20];
  v36 = v1;
  v30 = v0[18];
  v31 = v0[19];
  v2 = v0[17];
  v27 = v0[21];
  v28 = v0[16];
  v3 = v0[14];
  v4 = v0[15];
  v34 = v2;
  v35 = v0[13];
  v29 = v0[12];
  v5 = v0[11];
  v32 = v3;
  v33 = v0[10];
  v6 = v0[9];
  v38 = v6;
  v8 = v0[6];
  v7 = v0[7];
  v37 = v8;
  v9 = v0[4];
  v10 = v0[2];
  v26 = v0[3];
  v41 = *(v0[5] + 144);
  (*(v4 + 16))();
  v11 = *(v5 + 16);
  v12 = OUTLINED_FUNCTION_64();
  v13(v12);
  OUTLINED_FUNCTION_20_5();
  sub_23122509C(v27, v1, v14);
  (*(v7 + 16))(v6, v26, v8);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = (v28 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = (v29 + *(v30 + 80) + v16) & ~*(v30 + 80);
  v18 = (v31 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v7 + 80) + v18 + 8) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v0[26] = v20;
  (*(v4 + 32))(v20 + v15, v34, v32);
  (*(v5 + 32))(v20 + v16, v35, v33);
  OUTLINED_FUNCTION_19_6();
  sub_2312243AC(v36, v20 + v17, v21);
  *(v20 + v18) = v40;
  (*(v7 + 32))(v20 + v19, v38, v37);
  v22 = *MEMORY[0x277D60698];
  v23 = *(MEMORY[0x277D60698] + 4);
  v39 = OUTLINED_FUNCTION_31_4(MEMORY[0x277D60698]);
  swift_unknownObjectRetain();
  v24 = swift_task_alloc();
  v0[27] = v24;
  *v24 = v0;
  v24[1] = sub_231221860;

  return v39();
}

uint64_t sub_231221860()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *(v4 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v9 + 224) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231221978()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[9];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_13();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v8();
}

void sub_231221A4C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[22];
  v2 = v0[23];
  swift_unknownObjectRelease();
  [v1 invalidate];
  swift_unknownObjectRelease();

  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  OUTLINED_FUNCTION_43_5();

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_86();

  __asm { BRAA            X1, X16 }
}

void sub_231221AFC()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_13();
  [v1 invalidate];
  swift_unknownObjectRelease();

  v4 = v0[28];
  v6 = v0[20];
  v5 = v0[21];
  OUTLINED_FUNCTION_43_5();

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_86();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231221BB4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v48 = a6;
  v50 = a5;
  v51 = a4;
  v52 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C8, &qword_23136EA50);
  v9 = *(v8 - 8);
  v49 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = sub_2313698C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v17 = sub_2313698A0();
  v18 = sub_23136A3A0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v47 = a2;
    v20 = v11;
    v21 = v8;
    v22 = v9;
    v23 = a1;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2311CB000, v17, v18, "[BookkeepingXPCServicesClient] Calling XPCService logEngagement", v19, 2u);
    v25 = v24;
    a1 = v23;
    v9 = v22;
    v8 = v21;
    v11 = v20;
    MEMORY[0x23192B930](v25, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v26 = sub_231366560();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_231366550();
  sub_231366530();
  sub_231369050();
  sub_2311D57D8(&qword_280F7C950, MEMORY[0x277D61268]);
  v29 = sub_231366540();
  v31 = v30;
  v32 = a1;
  sub_231367C70();
  sub_2311D57D8(&qword_280F7CA88, MEMORY[0x277D60AE8]);
  v47 = sub_231366540();
  v52 = v33;
  type metadata accessor for FeatureRequirementsTransport();
  sub_2311D57D8(qword_280F7EF50, type metadata accessor for FeatureRequirementsTransport);
  v51 = sub_231366540();
  v35 = v34;
  v46 = sub_2313666B0();
  v48 = sub_231366780();
  v45 = sub_2313666B0();
  v36 = sub_2313666B0();
  (*(v9 + 16))(v11, v32, v8);
  v37 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v38 = swift_allocObject();
  (*(v9 + 32))(v38 + v37, v11, v8);
  aBlock[4] = sub_2312252D4;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2312212A4;
  aBlock[3] = &block_descriptor_80;
  v39 = _Block_copy(aBlock);

  v41 = v45;
  v40 = v46;
  v42 = v48;
  [v50 logEngagementFor:v46 with:v48 invocationType:v45 featureRequirements:v36 with:v39];

  _Block_release(v39);

  sub_231225224(v51, v35);
  sub_231225224(v47, v52);
  return sub_231225224(v29, v31);
}

void sub_2312220D4(void *a1)
{
  v3 = sub_2313698C0();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  if (a1)
  {
    v12 = a1;
    sub_231369100();
    v13 = a1;
    v14 = sub_2313698A0();
    sub_23136A3B0();

    if (os_log_type_enabled(v14, v1))
    {
      v15 = OUTLINED_FUNCTION_60();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_2311CB000, v14, v1, "[BookkeepingXPCServicesClient] XPCService log encountered error: %@", v15, 0xCu);
      sub_2311F4E78(v16);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_15();
    }

    (*(v6 + 8))(v11, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C8, &qword_23136EA50);
    sub_231366F10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C8, &qword_23136EA50);
    sub_231366F20();
  }
}

uint64_t DefaultBookkeepingXPCClient.getAccountDetails()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312222D0()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17_4(v0[3]);
  v0[4] = v1;
  v0[5] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0[3] + 144);
    OUTLINED_FUNCTION_54();
    v5 = swift_allocObject();
    v0[6] = v5;
    *(v5 + 16) = v3;
    v6 = *MEMORY[0x277D60698];
    v7 = *(MEMORY[0x277D60698] + 4);
    OUTLINED_FUNCTION_31_4(MEMORY[0x277D60698]);
    swift_unknownObjectRetain_n();
    v8 = swift_task_alloc();
    v0[7] = v8;
    sub_231369790();
    *v8 = v0;
    v8[1] = sub_23122244C;
    v9 = v0[2];
    OUTLINED_FUNCTION_52_3();

    return v14(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v19 = v1;
    sub_231223268();
    v20 = OUTLINED_FUNCTION_42_3();
    OUTLINED_FUNCTION_24_5(v20, v21);
    [v19 invalidate];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_52_3();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_23122244C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23122254C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2312225C8()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  swift_unknownObjectRelease();
  [v3 invalidate];
  swift_unknownObjectRelease();

  v4 = v0[8];
  OUTLINED_FUNCTION_56_0();

  return v5();
}

void sub_23122264C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C0, &unk_23136EA40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_231225178;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231222B98;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);

  [a2 getAccountDetailsWith_];
  _Block_release(v11);
}

void sub_2312227FC(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_231369790();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2313698C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = a3;
    sub_231369100();
    v16 = a3;
    v17 = sub_2313698A0();
    v18 = sub_23136A3B0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = a3;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_2311CB000, v17, v18, "[BookkeepingXPCServicesClient] XPCService getAccountDetails error: %@", v19, 0xCu);
      sub_2311F4E78(v20);
      MEMORY[0x23192B930](v20, -1, -1);
      MEMORY[0x23192B930](v19, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v28 = a3;
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      v24 = sub_231366520();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      sub_23122527C(a1, a2);
      sub_231366510();
      v28 = 200;
      sub_2311D57D8(&qword_280F85A70, MEMORY[0x277D607A0]);
      sub_231366500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C0, &unk_23136EA40);
      sub_231366F20();

      sub_231225210(a1, a2);
      sub_231224724(v9, MEMORY[0x277D607A0]);
      return;
    }

    sub_231223268();
    a3 = swift_allocError();
    *v23 = 0;
    v28 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C0, &unk_23136EA40);
  sub_231366F10();
}

uint64_t sub_231222B98(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_2313666C0();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_231225210(v4, v9);
}

uint64_t sub_231222C48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312256B0;

  return DefaultBookkeepingXPCClient.updateIndexForAppInstall(bundleIds:)();
}

uint64_t sub_231222CDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231222D70;

  return DefaultBookkeepingXPCClient.deletePhrasesAppUnInstall(bundleIds:)();
}

uint64_t sub_231222D70()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_14();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_231222E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231222EF8;

  return DefaultBookkeepingXPCClient.buildAutoCompleteIndex(onStartUpEvent:)();
}

uint64_t sub_231222EF8()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_14();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_231222FE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312256B0;

  return DefaultBookkeepingXPCClient.buildAutoCompleteIndexSubset(sources:)();
}

uint64_t sub_231223078()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return DefaultBookkeepingXPCClient.log(from:deliveryVehicle:generationId:)();
}

uint64_t sub_231223124()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return DefaultBookkeepingXPCClient.logEngagement(for:with:invocationType:)();
}

uint64_t sub_2312231D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311D05C8;

  return DefaultBookkeepingXPCClient.getAccountDetails()(a1);
}

unint64_t sub_231223268()
{
  result = qword_27DD43888;
  if (!qword_27DD43888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43888);
  }

  return result;
}

id sub_2312232BC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231369FA0();

  v2 = [v0 initWithServiceName_];

  return v2;
}

uint64_t sub_231223330()
{
  v0 = sub_2313698C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v5 = sub_2313698A0();
  v6 = sub_23136A3B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2311CFD58(0xD00000000000002CLL, 0x800000023137D340, &v11);
    _os_log_impl(&dword_2311CB000, v5, v6, "XPC connection to %s interrupted", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23192B930](v8, -1, -1);
    MEMORY[0x23192B930](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2312234C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23122350C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_23136A2C0();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a1;

  sub_231271090(0, 0, v7, &unk_23136EA88, v9);
}

uint64_t sub_231223600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2313698C0();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312236C0, 0, 0);
}

uint64_t sub_2312236C0()
{
  v23 = v0;
  v1 = v0[7];
  v2 = v0[3];
  sub_2313690C0();
  v3 = v2;
  v4 = sub_2313698A0();
  v5 = sub_23136A3B0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    v9 = v0[3];
    v10 = OUTLINED_FUNCTION_60();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    v0[2] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v13 = sub_23136A010();
    v15 = sub_2311CFD58(v13, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2311CB000, v4, v5, "[BookkeepingXPCServicesClient] XPC Service connection failure: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_29();

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];

    (*(v17 + 8))(v16, v18);
  }

  v0[8] = *(v0[4] + 16);
  sub_231366F40();
  sub_2311D57D8(&qword_280F7CB28, MEMORY[0x277D606A0]);
  v20 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_2312238DC, v20, v19);
}

uint64_t sub_2312238DC()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[3];
  sub_231366F00();

  OUTLINED_FUNCTION_56_0();

  return v4();
}

void sub_231223940(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2312239A8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_54();

  return swift_deallocClassInstance();
}

uint64_t FeatureRequirementsTransport.possibleOwners.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureRequirementsTransport() + 24));

  return sub_231369EE0();
}

uint64_t FeatureRequirementsTransport.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_231369790();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43890, &qword_23136E5F8);
  OUTLINED_FUNCTION_0_0(v10);
  v34 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2312246D0();
  v36 = v16;
  v18 = v37;
  sub_23136AA20();
  if (v18)
  {
    v32 = a1;
  }

  else
  {
    v37 = a1;
    v19 = v10;
    v20 = v9;
    v21 = v34;
    v22 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43898, &unk_23136E600);
    v39 = 0;
    v23 = v36;
    sub_231367C00();
    v39 = 1;
    OUTLINED_FUNCTION_18_7();
    sub_2311D57D8(v24, v25);
    v26 = v19;
    sub_23136A820();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    v39 = 2;
    v28 = sub_231367BE0();
    (*(v21 + 8))(v23, v26);
    sub_2311D38A8(&v38, v22);
    v29 = type metadata accessor for FeatureRequirementsTransport();
    OUTLINED_FUNCTION_4_8(v29);
    sub_2312243AC(v20, v22 + v30, v31);
    *(v22 + *(v29 + 24)) = v28;
    v32 = v37;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v32);
}

uint64_t FeatureRequirementsTransport.encode(to:)(void *a1)
{
  v3 = v1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438A0, qword_23136E610);
  OUTLINED_FUNCTION_0_0(v22);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v23[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2312246D0();
  sub_23136AA40();
  v24 = 0;
  v13 = v3[3];
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v13);
  v23[3] = v13;
  v23[4] = *(v14 + 24);
  __swift_allocate_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_26_0(v13);
  (*(v15 + 16))();
  sub_231367C10();
  if (v2)
  {
    (*(v6 + 8))(v11, v22);
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v17 = type metadata accessor for FeatureRequirementsTransport();
    v18 = *(v17 + 20);
    LOBYTE(v23[0]) = 1;
    sub_231369790();
    OUTLINED_FUNCTION_18_7();
    sub_2311D57D8(v19, v20);
    v21 = v22;
    sub_23136A890();
    LOBYTE(v23[0]) = 2;
    sub_23121DB48(*(v3 + *(v17 + 24)));
    sub_231367BF0();
    (*(v6 + 8))(v11, v21);
  }
}

uint64_t sub_231224004(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000023137D2D0 == a2;
  if (v3 || (OUTLINED_FUNCTION_45_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44746E756F636361 && a2 == 0xEE00736C69617465;
    if (v6 || (OUTLINED_FUNCTION_45_1() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C626973736F70 && a2 == 0xEE007372656E774FLL)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_45_1();

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

uint64_t sub_231224110(unsigned __int8 a1)
{
  sub_23136A9D0();
  MEMORY[0x23192B090](a1);
  return sub_23136AA00();
}

uint64_t sub_231224164(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0x44746E756F636361;
  }

  return 0x656C626973736F70;
}

uint64_t sub_2312241D8()
{
  v1 = *v0;
  sub_23136A9D0();
  MEMORY[0x23192B090](v1);
  return sub_23136AA00();
}

uint64_t sub_231224224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231224004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231224258(uint64_t a1)
{
  v2 = sub_2312246D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231224294(uint64_t a1)
{
  v2 = sub_2312246D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_36_2();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t type metadata accessor for FeatureRequirementsTransport()
{
  result = qword_280F85A88;
  if (!qword_280F85A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2312243AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_64();
  v8(v7);
  return a2;
}

uint64_t sub_231224408(uint64_t a1)
{
  v3 = sub_231367D80();
  OUTLINED_FUNCTION_0(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for FeatureRequirementsTransport();
  OUTLINED_FUNCTION_0(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = sub_2313667A0();
  OUTLINED_FUNCTION_40_0(v13);
  v15 = *(v1 + 16);
  v16 = *(v1 + v12);
  v17 = v1 + ((v12 + *(v14 + 80) + 8) & ~*(v14 + 80));

  return sub_231220DAC(a1, v15, v1 + v5, v1 + v10, v16, v17);
}

uint64_t sub_231224540(uint64_t a1)
{
  v3 = sub_231369050();
  OUTLINED_FUNCTION_0(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_231367C70();
  OUTLINED_FUNCTION_0(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = type metadata accessor for FeatureRequirementsTransport();
  OUTLINED_FUNCTION_0(v13);
  v15 = (v10 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v17 = (*(v16 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = sub_2313667A0();
  OUTLINED_FUNCTION_40_0(v18);
  v20 = *(v1 + v17);
  v21 = v1 + ((v17 + *(v19 + 80) + 8) & ~*(v19 + 80));

  return sub_231221BB4(a1, v1 + v5, v1 + v10, v1 + v15, v20, v21);
}

unint64_t sub_2312246D0()
{
  result = qword_280F85A08;
  if (!qword_280F85A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A08);
  }

  return result;
}

uint64_t sub_231224724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_11(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_23122477C(uint64_t a1)
{
  result = sub_2312247A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2312247A4()
{
  result = qword_280F7F650;
  if (!qword_280F7F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7F650);
  }

  return result;
}

uint64_t dispatch thunk of BookkeepingXPCClientProtocol.updateIndexForAppInstall(bundleIds:)()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  v3 = *(OUTLINED_FUNCTION_23_3(v0, v1, v2) + 24);
  OUTLINED_FUNCTION_3_3();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_7_7(v8);
  OUTLINED_FUNCTION_52_3();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of BookkeepingXPCClientProtocol.deletePhrasesAppUnInstall(bundleIds:)()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  v3 = *(OUTLINED_FUNCTION_23_3(v0, v1, v2) + 32);
  OUTLINED_FUNCTION_3_3();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_7_7(v8);
  OUTLINED_FUNCTION_52_3();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of BookkeepingXPCClientProtocol.buildAutoCompleteIndex(onStartUpEvent:)()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_3_3();
  v17 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  v6[1] = sub_231204BD4;
  OUTLINED_FUNCTION_52_3();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t dispatch thunk of BookkeepingXPCClientProtocol.buildAutoCompleteIndexSubset(sources:)()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  v3 = *(OUTLINED_FUNCTION_23_3(v0, v1, v2) + 48);
  OUTLINED_FUNCTION_3_3();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_7_7(v8);
  OUTLINED_FUNCTION_52_3();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_231224BF0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_231224C30(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_231224CF4()
{
  sub_231224D90();
  if (v0 <= 0x3F)
  {
    sub_231369790();
    if (v1 <= 0x3F)
    {
      sub_231224DEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_231224D90()
{
  result = qword_280F85A78;
  if (!qword_280F85A78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280F85A78);
  }

  return result;
}

void sub_231224DEC()
{
  if (!qword_280F85A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43600, &qword_23136CB40);
    v0 = sub_23136A250();
    if (!v1)
    {
      atomic_store(v0, &qword_280F85A60);
    }
  }
}

_BYTE *sub_231224E60(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231224F40()
{
  result = qword_27DD438A8;
  if (!qword_27DD438A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD438A8);
  }

  return result;
}

unint64_t sub_231224F98()
{
  result = qword_27DD438B0;
  if (!qword_27DD438B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD438B0);
  }

  return result;
}

unint64_t sub_231224FF0()
{
  result = qword_280F859F8;
  if (!qword_280F859F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F859F8);
  }

  return result;
}

unint64_t sub_231225048()
{
  result = qword_280F85A00;
  if (!qword_280F85A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A00);
  }

  return result;
}

uint64_t sub_23122509C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_64();
  v8(v7);
  return a2;
}

_OWORD *sub_2312250F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_231225108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C0, &unk_23136CB00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_231225178(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C0, &unk_23136EA40);
  OUTLINED_FUNCTION_40_0(v6);
  v8 = *(v7 + 80);

  sub_2312227FC(a1, a2, a3);
}

uint64_t sub_231225210(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_231225224(a1, a2);
  }

  return a1;
}

uint64_t sub_231225224(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23122527C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2312252FC()
{
  result = qword_27DD438D8;
  if (!qword_27DD438D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD438D0, &qword_23136EA58);
    sub_2311D57D8(&qword_27DD438E0, MEMORY[0x277D606E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD438D8);
  }

  return result;
}

uint64_t sub_2312253B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_40_0(v7);
  return a4(a1, v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80)));
}

uint64_t sub_23122544C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438F8, &qword_23136EA68);
  OUTLINED_FUNCTION_40_0(v0);
  v2 = *(v1 + 80);

  return sub_23121EFD4();
}

uint64_t objectdestroy_73Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

unint64_t sub_231225540()
{
  result = qword_280F7C7E0;
  if (!qword_280F7C7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C7E0);
  }

  return result;
}

uint64_t sub_231225594()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2311D05C8;
  OUTLINED_FUNCTION_86();

  return sub_231223600(v8, v9, v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_17_4@<X0>(uint64_t a1@<X8>)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 104), *(a1 + 128));

  return sub_2311D56B0();
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_43_5()
{
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[9];
}

uint64_t OUTLINED_FUNCTION_47_4()
{
  v1 = v0[4];
  v2 = *(v0[5] + 8);
  return v0[6];
}

uint64_t sub_2312257EC()
{
  v0 = sub_2313698C0();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v4 = sub_2313664B0();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43930, &qword_23136EBC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23136B670;
  v14 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v15 = v14;
  sub_2313414CC(inited);
  sub_2313665B0();

  v16 = sub_2313664A0();
  (*(v7 + 8))(v12, v4);
  return v16 & 1;
}

void sub_231225A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  v155 = v20;
  v24 = v23;
  v146 = v25;
  v151 = sub_2313679C0();
  v26 = OUTLINED_FUNCTION_0_0(v151);
  v145 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v144 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED8, &qword_23136EBD0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v34);
  v143[5] = v143 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43938, &qword_23136EBD8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v39);
  v148 = v143 - v40;
  OUTLINED_FUNCTION_18();
  v41 = sub_2313689A0();
  v42 = OUTLINED_FUNCTION_0_0(v41);
  v149 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_4();
  v158 = v47 - v46;
  OUTLINED_FUNCTION_18();
  v48 = sub_231366690();
  v49 = OUTLINED_FUNCTION_0_0(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v57);
  v59 = (v143 - v58);
  v162 = sub_2313698C0();
  v60 = OUTLINED_FUNCTION_0_0(v162);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v66);
  v68 = v143 - v67;
  sub_231369100();
  v69 = *(v51 + 16);
  v161 = v24;
  v160 = v51 + 16;
  v159 = v69;
  (v69)(v59, v24, v48);
  v70 = sub_2313698A0();
  v71 = sub_23136A3A0();
  v72 = os_log_type_enabled(v70, v71);
  v152 = v62;
  v154 = v51;
  if (v72)
  {
    v73 = OUTLINED_FUNCTION_60();
    v156 = v48;
    v74 = v73;
    v75 = swift_slowAlloc();
    v147 = v41;
    v76 = v75;
    *&v170 = v75;
    *v74 = 136315138;
    OUTLINED_FUNCTION_0_11();
    sub_231228E54(v77, v78);
    v79 = sub_23136A8B0();
    v81 = v80;
    v82 = OUTLINED_FUNCTION_12_6();
    v83(v82, v156);
    v84 = sub_2311CFD58(v79, v81, &v170);

    *(v74 + 4) = v84;
    _os_log_impl(&dword_2311CB000, v70, v71, "Loading suggestion details config from file - %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    v41 = v147;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    v48 = v156;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v150 = *(v152 + 8);
  }

  else
  {

    v85 = OUTLINED_FUNCTION_12_6();
    v86(v85, v48);
    v150 = *(v62 + 8);
  }

  v150(v68, v162);
  v87 = v153;
  OUTLINED_FUNCTION_34_3();
  v89 = *(v88 - 256);
  v90 = v159;
  v159();
  v91 = type metadata accessor for JsonSerializer();
  v92 = swift_allocObject();
  v171 = v91;
  v172 = &protocol witness table for JsonSerializer;
  *&v170 = v92;
  v93 = v157;
  (v90)(v157, v87, v48);
  v94 = type metadata accessor for FileBasedConfigBackingStore();
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  v97 = swift_allocObject();
  (*(v154 + 32))(v97 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v93, v48);
  v168 = v94;
  v169 = sub_231228E54(&qword_280F85B48, type metadata accessor for FileBasedConfigBackingStore);
  *&v167 = v97;
  v98 = OUTLINED_FUNCTION_26_6();
  v156 = v59;
  v154 = v51;
  (v59)(v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43940, &unk_23136EBE0);
  inited = swift_initStackObject();
  sub_2311D38A8(&v167, inited + 16);
  sub_2311D38A8(&v170, inited + 56);
  v100 = v158;
  v101 = v155;
  sub_23127E748();
  if (v101)
  {
    v102 = v101;
LABEL_6:
    a10 = v102;
    v103 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    if (swift_dynamicCast() && v163 == 5)
    {

      sub_231228DBC();
      OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_10_8(v104, 5);
      swift_willThrow();
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
    }

    else
    {

      sub_231369100();
      OUTLINED_FUNCTION_34_3();
      v115 = *(v114 - 256);
      v159();
      v116 = v102;
      v117 = sub_2313698A0();
      v118 = sub_23136A3B0();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        a10 = v161;
        *v119 = 136315394;
        OUTLINED_FUNCTION_0_11();
        sub_231228E54(v120, v121);
        v122 = sub_23136A8B0();
        v124 = v123;
        OUTLINED_FUNCTION_30_3();
        v125();
        v126 = sub_2311CFD58(v122, v124, &a10);

        *(v119 + 4) = v126;
        *(v119 + 12) = 2080;
        swift_getErrorValue();
        v127 = sub_23136A980();
        v129 = sub_2311CFD58(v127, v128, &a10);

        *(v119 + 14) = v129;
        _os_log_impl(&dword_2311CB000, v117, v118, "Error loading suggestions config from url - %s with error %s", v119, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      else
      {

        OUTLINED_FUNCTION_30_3();
        v132();
      }

      OUTLINED_FUNCTION_14_8();
      OUTLINED_FUNCTION_28_5();
      v133();
      sub_231228DBC();
      OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_10_8(v134, 4);
      swift_willThrow();

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_5(&v166);
  sub_231368960();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, 1, v151);
  sub_231228E9C(v93, &qword_27DD43938, &qword_23136EBD8);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_31_5(&v165);
    sub_231368990();
    v106 = sub_231368600();
    v107 = __swift_getEnumTagSinglePayload(v93, 1, v106);
    sub_231228E9C(v93, &qword_27DD42ED8, &qword_23136EBD0);
    if (v107 == 1)
    {
      sub_231369100();
      v108 = sub_2313698A0();
      v109 = sub_23136A3B0();
      if (OUTLINED_FUNCTION_19_7(v109))
      {
        OUTLINED_FUNCTION_16_1();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_8(&dword_2311CB000, v110, v111, "either dialog info or enabled info should be present in SuggestionDetailsConfig");
        v100 = v158;
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      OUTLINED_FUNCTION_14_8();
      OUTLINED_FUNCTION_28_5();
      v112();
      sub_231228DBC();
      v102 = OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_10_8(v113, 5);
      swift_willThrow();
      (*(v149 + 8))(v100, v41);
      goto LABEL_6;
    }
  }

  v130 = v143[6];
  sub_231368960();
  v131 = v151;
  if (__swift_getEnumTagSinglePayload(v130, 1, v151) == 1)
  {

    sub_231228E9C(v130, &qword_27DD43938, &qword_23136EBD8);
    (*(v149 + 32))(v146, v100, v41);
  }

  else
  {
    v147 = v41;
    (*(v145 + 32))(v144, v130, v131);
    v135 = sub_231367990();
    sub_231367990();
    if (v136)
    {

      v137 = v143[1];
      sub_231366640();
      OUTLINED_FUNCTION_31_5(&v172);
      sub_231366620();

      v138 = v156;
      v156(v137, v48);
      v162 = sub_231366660();
      v138(v93, v48);
    }

    else
    {
      v162 = v135;
    }

    v139 = v158;
    sub_231368980();
    OUTLINED_FUNCTION_31_5(&v164);
    sub_231368990();
    v140 = v144;
    sub_231367880();
    v141 = v143[3];
    sub_2313679A0();
    v142 = v151;
    __swift_storeEnumTagSinglePayload(v141, 0, 1, v151);
    OUTLINED_FUNCTION_26_6();
    sub_231368970();

    (*(v145 + 8))(v140, v142);
    (*(v149 + 8))(v139, v147);
  }

LABEL_24:
  OUTLINED_FUNCTION_22_0();
}

void sub_23122677C()
{
  OUTLINED_FUNCTION_21_0();
  v64 = v0;
  v74[1] = *MEMORY[0x277D85DE8];
  v67 = sub_2313689A0();
  v1 = OUTLINED_FUNCTION_0_0(v67);
  v69 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v71 = v6 - v5;
  OUTLINED_FUNCTION_18();
  v7 = sub_231366690();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v68 = v13;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_7();
  v66 = v15;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v19 = [objc_opt_self() defaultManager];
  v20 = sub_2313665F0();
  v74[0] = 0;
  v21 = [v19 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:4 error:v74];

  v22 = v74[0];
  if (v21)
  {
    v23 = sub_23136A1A0();
    v24 = v22;

    v25 = 0;
    v72 = *(v23 + 16);
    v73 = v10 + 16;
    v65 = (v10 + 32);
    v26 = (v10 + 8);
    v70 = MEMORY[0x277D84F90];
    while (v72 != v25)
    {
      if (v25 >= *(v23 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v27 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v28 = *(v10 + 72);
      (*(v10 + 16))(v18, v23 + v27 + v28 * v25, v7);
      if (sub_2312257EC())
      {
        v29 = *v26;
        v30 = OUTLINED_FUNCTION_26_6();
        v31(v30);
        ++v25;
      }

      else
      {
        v63 = *v65;
        v63(v66, v18, v7);
        v32 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74[0] = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2311F5900(0, v32[2] + 1, 1);
          v32 = v74[0];
        }

        v35 = v32[2];
        v34 = v32[3];
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v70 = (v35 + 1);
          v62 = v35;
          sub_2311F5900(v34 > 1, v35 + 1, 1);
          v36 = v70;
          v35 = v62;
          v32 = v74[0];
        }

        ++v25;
        v32[2] = v36;
        v70 = v32;
        v63(v32 + v27 + v35 * v28, v66, v7);
      }
    }

    v37 = v70;
    v38 = v70[2];
    if (v38)
    {
      v74[0] = MEMORY[0x277D84F90];
      sub_2311F58A8(0, v38, 0);
      v39 = 0;
      v40 = v74[0];
      v41 = *(v10 + 80);
      OUTLINED_FUNCTION_35_0();
      v72 = v37 + v42;
      v66 = (v69 + 32);
      v43 = v64;
      while (1)
      {
        if (v39 >= *(v37 + 16))
        {
          goto LABEL_25;
        }

        v44 = v68;
        (*(v10 + 16))(v68, v72 + *(v10 + 72) * v39, v7);
        sub_231225A20(v44, v45, v46, v47, v48, v49, v50, v51, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
        if (v43)
        {
          break;
        }

        (*v26)(v44, v7);
        v74[0] = v40;
        v53 = v40[2];
        v52 = v40[3];
        if (v53 >= v52 >> 1)
        {
          sub_2311F58A8(v52 > 1, v53 + 1, 1);
          v40 = v74[0];
        }

        ++v39;
        v40[2] = v53 + 1;
        v54 = *(v69 + 80);
        OUTLINED_FUNCTION_35_0();
        (*(v56 + 32))(v40 + v55 + *(v56 + 72) * v53, v71, v67);
        v43 = 0;
        v37 = v70;
        if (v38 == v39)
        {
          goto LABEL_19;
        }
      }

      v58 = *v26;
      v59 = OUTLINED_FUNCTION_26_6();
      v60(v59);
    }

    else
    {
LABEL_19:
    }
  }

  else
  {
    v57 = v74[0];
    sub_231366570();

    swift_willThrow();
  }

  v61 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_0();
}

void sub_231226C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  v137 = v20;
  v24 = v23;
  v25 = sub_23136A000();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v133 = v27;
  v134 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v132 = v31 - v30;
  OUTLINED_FUNCTION_18();
  v32 = sub_231366690();
  v33 = OUTLINED_FUNCTION_0_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_1();
  v135 = v38;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_7();
  v139 = v40;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v41);
  v43 = &v127 - v42;
  v44 = sub_2313698C0();
  v45 = OUTLINED_FUNCTION_0_0(v44);
  v144 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22();
  v51 = (v49 - v50);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8_7();
  v138 = v53;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_8_7();
  v129 = v55;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_8_7();
  v136 = v57;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v58);
  v60 = &v127 - v59;
  sub_231369100();
  v61 = *(v35 + 16);
  v143 = v24;
  v130 = v61;
  v131 = v35 + 16;
  v61(v43, v24, v32);
  v62 = sub_2313698A0();
  v63 = sub_23136A3A0();
  v64 = os_log_type_enabled(v62, v63);
  v142 = v44;
  v140 = v35;
  if (v64)
  {
    v65 = OUTLINED_FUNCTION_60();
    v128 = v51;
    v66 = v65;
    v127 = swift_slowAlloc();
    a10 = v127;
    *v66 = 136315138;
    OUTLINED_FUNCTION_0_11();
    sub_231228E54(v67, v68);
    v69 = sub_23136A8B0();
    v71 = v70;
    v72 = OUTLINED_FUNCTION_27_5();
    v73(v72);
    v74 = sub_2311CFD58(v69, v71, &a10);
    v44 = v142;

    *(v66 + 4) = v74;
    _os_log_impl(&dword_2311CB000, v62, v63, "loading adopter config - %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v127);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    v51 = v128;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  else
  {

    v75 = OUTLINED_FUNCTION_27_5();
    v76(v75);
  }

  v77 = *(v144 + 8);
  v77(v60, v44);
  if (sub_2312257EC())
  {
    sub_231369100();
    v78 = sub_2313698A0();
    v79 = sub_23136A3B0();
    if (OUTLINED_FUNCTION_19_7(v79))
    {
      OUTLINED_FUNCTION_16_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_8(&dword_2311CB000, v80, v81, "the config should not be a directory");
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    OUTLINED_FUNCTION_17_5();
    v77(v51, v44);
    sub_231228DBC();
    OUTLINED_FUNCTION_42_3();
    *v82 = 0;
    goto LABEL_18;
  }

  v83 = v139;
  sub_231366600();
  v84 = sub_2313665E0();
  v86 = v85;
  v87 = v140 + 8;
  v88 = v32;
  v141(v83, v32);
  v89 = sub_231369FA0();
  v90 = NSClassFromString(v89);

  if (!v90 || (ObjCClassMetadata = swift_getObjCClassMetadata(), !dynamic_cast_existential_1_conditional(ObjCClassMetadata)))
  {
    v110 = v138;
    sub_231369100();
    sub_231369EE0();
    v111 = sub_2313698A0();
    v112 = sub_23136A3B0();

    if (os_log_type_enabled(v111, v112))
    {
      OUTLINED_FUNCTION_60();
      v113 = OUTLINED_FUNCTION_20_6();
      a10 = v113;
      *v87 = 136315138;
      v114 = sub_2311CFD58(v84, v86, &a10);

      *(v87 + 4) = v114;
      _os_log_impl(&dword_2311CB000, v111, v112, "couldn't identify the class type from file name - error loading the %s as Adopter Config", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_17_5();
    v77(v110, v142);
    sub_231228DBC();
    OUTLINED_FUNCTION_42_3();
    v116 = 1;
LABEL_17:
    *v115 = v116;
LABEL_18:
    swift_willThrow();
    goto LABEL_19;
  }

  v92 = v143;
  v93 = v137;
  v94 = sub_231369F70();
  if (!v93)
  {
    v96 = v95;
    v140 = v94;
    sub_231369100();
    v97 = v92;
    v98 = v88;
    v130(v135, v97, v88);
    sub_231369EE0();
    v99 = sub_2313698A0();
    v100 = sub_23136A3A0();

    LODWORD(v139) = v100;
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v143 = v96;
      v102 = v101;
      v138 = swift_slowAlloc();
      a10 = v138;
      *v102 = 136315394;
      *(v102 + 4) = sub_2311CFD58(v140, v143, &a10);
      *(v102 + 12) = 2080;
      OUTLINED_FUNCTION_0_11();
      sub_231228E54(v103, v104);
      v137 = v99;
      v105 = v135;
      v131 = sub_23136A8B0();
      v107 = v106;
      v141(v105, v98);
      v108 = sub_2311CFD58(v131, v107, &a10);

      *(v102 + 14) = v108;
      v109 = v137;
      _os_log_impl(&dword_2311CB000, v137, v139, "Parsed configContent - %s and config file name - %s", v102, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    else
    {

      v141(v135, v98);
    }

    OUTLINED_FUNCTION_17_5();
    v77(v136, v142);
    v117 = v132;
    sub_231369FF0();
    sub_231369FE0();
    v119 = v118;

    (*(v133 + 8))(v117, v134);
    if (v119 >> 60 != 15)
    {
      OUTLINED_FUNCTION_15_9();
      sub_231367A80();
      v125 = OUTLINED_FUNCTION_15_9();
      sub_231225210(v125, v126);
      goto LABEL_19;
    }

    v120 = v129;
    sub_231369100();
    v121 = sub_2313698A0();
    v122 = sub_23136A3B0();
    if (OUTLINED_FUNCTION_19_7(v122))
    {
      OUTLINED_FUNCTION_16_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_8(&dword_2311CB000, v123, v124, "Error creating data object ");
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    OUTLINED_FUNCTION_17_5();
    v77(v120, v142);
    sub_231228DBC();
    OUTLINED_FUNCTION_42_3();
    v116 = 2;
    goto LABEL_17;
  }

LABEL_19:
  OUTLINED_FUNCTION_22_0();
}

void sub_2312275A4()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v110 = v3;
  v123[1] = *MEMORY[0x277D85DE8];
  v4 = sub_231366690();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v107 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v107 - v17;
  v19 = sub_2313698C0();
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v112 = v21;
  v113 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_7();
  v108 = v28;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v29);
  if ((sub_2312257EC() & 1) == 0)
  {
    sub_231369100();
    (*(v7 + 16))(v12, v2, v4);
    v49 = sub_2313698A0();
    v50 = sub_23136A3B0();
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_60();
      v122 = OUTLINED_FUNCTION_20_6();
      v123[0] = v122;
      *v0 = 136315138;
      OUTLINED_FUNCTION_0_11();
      sub_231228E54(v51, v52);
      v53 = sub_23136A8B0();
      v55 = v54;
      v56 = *(v7 + 8);
      v57 = OUTLINED_FUNCTION_15_9();
      v58(v57);
      v59 = sub_2311CFD58(v53, v55, v123);

      *(v0 + 4) = v59;
      _os_log_impl(&dword_2311CB000, v49, v50, "Domain asset should point to a directory, a non-directory url - %s is not expected", v0, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    else
    {

      v91 = *(v7 + 8);
      v92 = OUTLINED_FUNCTION_15_9();
      v93(v92);
    }

    (*(v112 + 8))(v26, v113);
    sub_231228DBC();
    OUTLINED_FUNCTION_42_3();
    OUTLINED_FUNCTION_10_8(v94, 7);
    goto LABEL_33;
  }

  v122 = sub_2313665E0();
  v31 = v30;
  sub_231369100();
  v32 = *(v7 + 16);
  v118 = v2;
  v119 = v32;
  v120 = v7 + 16;
  v32(v18, v2, v4);
  sub_231369EE0();
  v33 = sub_2313698A0();
  v34 = sub_23136A3A0();
  v109 = v31;

  LODWORD(v117) = v34;
  v35 = os_log_type_enabled(v33, v34);
  v36 = v4;
  v37 = v122;
  v114 = v7;
  v115 = v36;
  if (v35)
  {
    v38 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v123[0] = v116;
    *v38 = 136315394;
    OUTLINED_FUNCTION_0_11();
    sub_231228E54(v39, v40);
    v41 = v33;
    v42 = sub_23136A8B0();
    v44 = v43;
    v121 = *(v114 + 8);
    v121(v18, v115);
    v45 = sub_2311CFD58(v42, v44, v123);
    v36 = v115;

    *(v38 + 4) = v45;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_2311CFD58(v37, v109, v123);
    _os_log_impl(&dword_2311CB000, v41, v117, "begin generating OwnerConfigs for %s as domain - %s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    v46 = v114;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  else
  {
    v46 = v7;

    v121 = *(v7 + 8);
    v121(v18, v36);
  }

  v47 = OUTLINED_FUNCTION_29_3();
  v48(v47);
  v60 = [objc_opt_self() defaultManager];
  v61 = sub_2313665F0();
  v123[0] = 0;
  v62 = [v60 contentsOfDirectoryAtURL:v61 includingPropertiesForKeys:0 options:4 error:v123];

  v63 = v123[0];
  if (!v62)
  {
    v95 = v123[0];

    sub_231366570();

LABEL_33:
    swift_willThrow();
    goto LABEL_36;
  }

  v64 = sub_23136A1A0();
  v65 = v63;

  v123[0] = MEMORY[0x277D84F90];
  v118 = *(v64 + 16);
  if (!v118)
  {
LABEL_29:

    sub_231367870();
    goto LABEL_36;
  }

  v66 = 0;
  v67 = *(v46 + 80);
  OUTLINED_FUNCTION_35_0();
  v116 = (v64 + v68);
  v111 = 0x800000023137D4A0;
  v117 = v46 + 8;
  v69 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v66 >= *(v64 + 16))
    {
      __break(1u);
    }

    v119(v16, &v116[*(v46 + 72) * v66], v36);
    if ((sub_2312257EC() & 1) == 0)
    {
      sub_231226C84(v16, v70, v71, v72, v73, v74, v75, v76, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      if (v0)
      {
        goto LABEL_35;
      }

      v79 = v77;
      v80 = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = *(v69 + 16);
        sub_23126E1B8();
        v69 = v89;
      }

      v81 = *(v69 + 16);
      if (v81 >= *(v69 + 24) >> 1)
      {
        sub_23126E1B8();
        v69 = v90;
      }

      *(v69 + 16) = v81 + 1;
      v82 = v69 + 16 * v81;
      *(v82 + 32) = v79;
      *(v82 + 40) = v80;
      v46 = v114;
      v36 = v115;
    }

    if (sub_2312257EC())
    {
      break;
    }

LABEL_28:
    ++v66;
    v86 = OUTLINED_FUNCTION_9_8();
    v87(v86);
    if (v118 == v66)
    {
      goto LABEL_29;
    }
  }

  if (sub_2313665E0() == 0xD000000000000011 && v111 == v83)
  {

    goto LABEL_26;
  }

  v85 = sub_23136A900();

  if (v85)
  {
LABEL_26:
    sub_23122677C();
    if (v0)
    {
LABEL_35:

      v96 = OUTLINED_FUNCTION_9_8();
      v97(v96);

      goto LABEL_36;
    }

    sub_231266FF4();
    goto LABEL_28;
  }

  v99 = v108;
  sub_231369100();
  v100 = sub_2313698A0();
  v101 = sub_23136A3B0();
  if (os_log_type_enabled(v100, v101))
  {
    OUTLINED_FUNCTION_16_1();
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_2311CB000, v100, v101, "only directory allowed inside owner asset directory is SuggestionDetails", v103, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v107(v99, v113);
  sub_231228DBC();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_10_8(v104, 6);
  swift_willThrow();
  v105 = OUTLINED_FUNCTION_9_8();
  v106(v105);
LABEL_36:
  v98 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_231227F0C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DefaultAllOwnerConfigsLoader();
  v3 = swift_allocObject();
  v4 = type metadata accessor for DefaultOwnerConfigLoader();
  result = swift_allocObject();
  v3[5] = v4;
  v3[6] = &off_2845F3FA8;
  v3[2] = result;
  a1[3] = v2;
  a1[4] = &off_2845F3F88;
  *a1 = v3;
  return result;
}

void sub_231227FCC()
{
  OUTLINED_FUNCTION_21_0();
  v111 = v1;
  v107 = v0;
  v3 = v2;
  v112[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2313698C0();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v109 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = sub_231367890();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v108 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v110 = v17;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v18);
  v95 = &v94 - v19;
  OUTLINED_FUNCTION_18();
  v20 = sub_231366690();
  v21 = OUTLINED_FUNCTION_0_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v94 - v30;
  if (sub_2312257EC())
  {
    v106 = v31;
    v32 = [objc_opt_self() defaultManager];
    v33 = sub_2313665F0();
    v112[0] = 0;
    v34 = [v32 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:0 options:4 error:v112];

    v35 = v112[0];
    if (v34)
    {
      v36 = v20;
      v37 = sub_23136A1A0();
      v38 = v35;

      v39 = sub_231369EC0();
      v40 = 0;
      v41 = *(v37 + 16);
      v42 = v23;
      v102 = v37;
      v103 = v23 + 16;
      v104 = v23 + 8;
      v105 = v41;
      v97 = v108 + 32;
      v98 = v20;
      v100 = v108 + 8;
      v101 = (v108 + 16);
      v96 = v108 + 40;
      v43 = v106;
      v44 = v95;
      v99 = v23;
      while (1)
      {
        if (v105 == v40)
        {

          v89 = sub_231367CF0();
          v90 = *(v89 + 48);
          v91 = *(v89 + 52);
          swift_allocObject();
          sub_231367CD0();
          goto LABEL_22;
        }

        if (v40 >= *(v37 + 16))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
        }

        v45 = v12;
        v46 = *(v42 + 80);
        OUTLINED_FUNCTION_35_0();
        v48 = *(v42 + 72);
        v109 = v49;
        (*(v42 + 16))(v43, v37 + v47 + v48 * v49, v36);
        v50 = v107[5];
        v51 = v107[6];
        __swift_project_boxed_opaque_existential_1(v107 + 2, v50);
        v52 = v111;
        (*(v51 + 8))(v43, v50, v51);
        if (v52)
        {
          v92 = OUTLINED_FUNCTION_24_6();
          v93(v92);

          goto LABEL_22;
        }

        v111 = 0;
        v53 = OUTLINED_FUNCTION_24_6();
        v54(v53);
        v55 = sub_231367880();
        v57 = v56;
        v58 = v44;
        (*v101)(v110, v44, v45);
        swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v39;
        v59 = sub_231215F6C(v55, v57);
        if (__OFADD__(v39[2], (v60 & 1) == 0))
        {
          goto LABEL_26;
        }

        v61 = v59;
        v62 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43920, &unk_23136EBB8);
        v63 = v112;
        if (sub_23136A700())
        {
          v63 = v112[0];
          v64 = sub_231215F6C(v55, v57);
          if ((v62 & 1) != (v65 & 1))
          {
            sub_23136A970();
            __break(1u);
            return;
          }

          v61 = v64;
        }

        v12 = v45;
        if (v62)
        {

          v39 = v112[0];
          v66 = OUTLINED_FUNCTION_33_5();
          (v63[5])(v66, v110, v45);
          v67 = OUTLINED_FUNCTION_32_2();
          v68(v67);
        }

        else
        {
          v39 = v112[0];
          *(v112[0] + (v61 >> 6) + 8) |= 1 << v61;
          v69 = (v39[6] + 16 * v61);
          *v69 = v55;
          v69[1] = v57;
          v70 = OUTLINED_FUNCTION_33_5();
          (v63[4])(v70, v110, v45);
          v71 = OUTLINED_FUNCTION_32_2();
          v72(v71);
          v73 = v39[2];
          v74 = __OFADD__(v73, 1);
          v75 = v73 + 1;
          if (v74)
          {
            goto LABEL_27;
          }

          v39[2] = v75;
        }

        v40 = v109 + 1;
        v36 = v98;
        v42 = v99;
        v44 = v58;
        v43 = v106;
        v37 = v102;
      }
    }

    v87 = v112[0];
    sub_231366570();
  }

  else
  {
    sub_231369100();
    (*(v23 + 16))(v28, v3, v20);
    v76 = sub_2313698A0();
    v77 = sub_23136A3B0();
    if (os_log_type_enabled(v76, v77))
    {
      OUTLINED_FUNCTION_60();
      v111 = v4;
      v78 = OUTLINED_FUNCTION_20_6();
      v112[0] = v78;
      *v4 = 136315138;
      OUTLINED_FUNCTION_0_11();
      sub_231228E54(v79, v80);
      v81 = sub_23136A8B0();
      v82 = v23;
      v84 = v83;
      (*(v82 + 8))(v28, v20);
      v85 = sub_2311CFD58(v81, v84, v112);

      *(v4 + 4) = v85;
      _os_log_impl(&dword_2311CB000, v76, v77, "Domain asset should point to a directory, a non-directory url - %s is not expected", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      (*(v109 + 8))(v11, v111);
    }

    else
    {

      (*(v23 + 8))(v28, v20);
      (*(v109 + 8))(v11, v4);
    }

    sub_231228DBC();
    OUTLINED_FUNCTION_42_3();
    OUTLINED_FUNCTION_10_8(v86, 9);
  }

  swift_willThrow();
LABEL_22:
  v88 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_231228710(uint64_t a1)
{
  sub_231367890();
  v3 = sub_231369EC0();
  v4 = 0;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v5 == v4)
    {
      v11 = sub_231367CF0();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      return sub_231367CD0();
    }

    v6 = *(sub_231366690() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    sub_231227FCC();
    if (v1)
    {
      break;
    }

    v9 = MEMORY[0x231928390]();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v3;
    sub_2312288C4(v9, sub_231228D4C, 0, isUniquelyReferenced_nonNull_native, &v15);

    v3 = v15;
    ++v4;
  }
}

void sub_2312288C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  v8 = sub_231367890();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v46 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43918, &qword_23136EBB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (v43 - v14);
  sub_2312B7234(v52);
  v43[2] = v52[6];
  v45 = v9;
  v16 = (v9 + 32);
  v43[4] = a1;
  sub_231369EE0();
  v43[3] = a3;

  v44 = v8;
  while (1)
  {
    sub_2312B6974();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43910, &qword_2313749B0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v17) == 1)
    {
      sub_2311D3BBC();

      return;
    }

    v18 = *(v17 + 48);
    v20 = v15[1];
    v50 = *v15;
    v19 = v50;
    v51 = v20;
    v21 = *v16;
    v22 = v16;
    (*v16)(v46, v15 + v18, v8);
    v23 = *v47;
    v25 = sub_231215F6C(v19, v20);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    if (__OFADD__(v26, v27))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      sub_23136A970();
      __break(1u);
      goto LABEL_20;
    }

    v28 = v24;
    if (v23[3] < v26 + v27)
    {
      break;
    }

    if (a4)
    {
      if (v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43920, &unk_23136EBB8);
      sub_23136A710();
      if (v28)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v33 = v46;
    v34 = *v47;
    *(*v47 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v35 = (v34[6] + 16 * v25);
    *v35 = v19;
    v35[1] = v20;
    v36 = v34[7] + *(v45 + 72) * v25;
    v8 = v44;
    v16 = v22;
    v21(v36, v33, v44);
    v37 = v34[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_18;
    }

    v34[2] = v39;
    a4 = 1;
  }

  v29 = v47;
  sub_2312B4390();
  v30 = *v29;
  v31 = sub_231215F6C(v19, v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_19;
  }

  v25 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  sub_231228DBC();
  v40 = swift_allocError();
  *v41 = 8;
  swift_willThrow();
  v53 = v40;
  v42 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v45 + 8))(v46, v44);
    sub_2311D3BBC();

    return;
  }

LABEL_20:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

uint64_t sub_231228D4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43910, &qword_2313749B0);
  result = sub_231361EB8(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_231228DBC()
{
  result = qword_27DD43928;
  if (!qword_27DD43928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43928);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231228E54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231228E9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for OwnerConfigLoaderErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OwnerConfigLoaderErrors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231229064()
{
  result = qword_27DD43948;
  if (!qword_27DD43948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43948);
  }

  return result;
}

uint64_t BiomeStreamRefresher.__allocating_init(bookkeepingXPCClient:)(__int128 *a1)
{
  v2 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v3 = [v2 Intent];
  swift_unknownObjectRelease();
  v4 = sub_231369FA0();
  v5 = [v3 tombstoneDSLPublisherWithUseCase_];

  if (v5)
  {
    v6 = sub_231369FA0();
    v7 = sub_231369FA0();
    v8 = [v5 filterWithKeyPath:v6 value:v7];
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_1_14();
  v9 = swift_allocObject();
  BiomeStreamRefresher.init(bookkeepingXPCClient:tombstonePublisher:)(a1, v8);
  return v9;
}

uint64_t BiomeStreamRefresher.__allocating_init(bookkeepingXPCClient:tombstonePublisher:)(__int128 *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_14();
  v4 = swift_allocObject();
  BiomeStreamRefresher.init(bookkeepingXPCClient:tombstonePublisher:)(a1, a2);
  return v4;
}

uint64_t BiomeStreamRefresher.init(bookkeepingXPCClient:tombstonePublisher:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 64) = 0;
  sub_2311D38A8(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t BiomeStreamRefresher.start(container:)()
{
  OUTLINED_FUNCTION_8();
  v1[15] = v0;
  v2 = sub_2313698C0();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = sub_23136A3F0();
  v1[20] = v5;
  v6 = *(v5 - 8);
  v1[21] = v6;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v8 = sub_23136A3E0();
  v1[23] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v10 = *(*(sub_231369E50() - 8) + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231229468, 0, 0);
}

uint64_t sub_231229468()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v34 = v0[20];
  v35 = v0[15];
  sub_23122989C();
  sub_231369E40();
  v0[14] = MEMORY[0x277D84F90];
  sub_2312298E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD43950, &qword_23136ECC8);
  sub_231229938();
  sub_23136A550();
  (*(v5 + 104))(v4, *MEMORY[0x277D85260], v34);
  v6 = sub_23136A400();
  v7 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v8 = sub_23122A974(0xD000000000000031, 0x800000023137D4E0, v6);
  v9 = *(v35 + 56);
  if (v9)
  {
    v11 = v0 + 19;
    v10 = v0[19];
    v12 = v0[15];
    v13 = v9;
    v14 = [v13 subscribeOn:v8];
    v0[6] = sub_23122999C;
    v0[7] = 0;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_231229C7C;
    v0[5] = &block_descriptor_1;
    v15 = _Block_copy(v0 + 2);
    v16 = swift_allocObject();
    swift_weakInit();
    v0[12] = sub_23122A9E0;
    v0[13] = v16;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_23122A624;
    v0[11] = &block_descriptor_3;
    v17 = _Block_copy(v0 + 8);
    v18 = v0[13];

    v19 = [v14 sinkWithCompletion:v15 receiveInput:v17];
    _Block_release(v17);
    _Block_release(v15);

    v20 = *(v12 + 64);
    *(v12 + 64) = v19;
    swift_unknownObjectRelease();
    sub_231369100();
    v21 = sub_2313698A0();
    v22 = sub_23136A3A0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2311CB000, v21, v22, "BiomeStreamRefresher: Starts listening for App.Intent:tombstones", v23, 2u);
      OUTLINED_FUNCTION_29();

LABEL_6:
      v13 = v21;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v0 + 18;
    v24 = v0[18];
    sub_2313690F0();
    v21 = sub_2313698A0();
    v25 = sub_23136A3B0();
    if (os_log_type_enabled(v21, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2311CB000, v21, v25, "BiomeStreamRefresher: Failed to create App.Intent:tombstones publisher", v26, 2u);
      OUTLINED_FUNCTION_29();
      goto LABEL_6;
    }

    v13 = v8;
  }

  v8 = v21;
LABEL_10:

  v27 = v0[24];
  v28 = v0[25];
  v29 = v0[22];
  v31 = v0[18];
  v30 = v0[19];
  (*(v0[17] + 8))(*v11, v0[16]);

  OUTLINED_FUNCTION_56_0();

  return v32();
}

unint64_t sub_23122989C()
{
  result = qword_280F7C7C0;
  if (!qword_280F7C7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C7C0);
  }

  return result;
}

unint64_t sub_2312298E0()
{
  result = qword_280F7C7C8;
  if (!qword_280F7C7C8)
  {
    sub_23136A3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C7C8);
  }

  return result;
}

unint64_t sub_231229938()
{
  result = qword_280F7C808;
  if (!qword_280F7C808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD43950, &qword_23136ECC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C808);
  }

  return result;
}

uint64_t sub_23122999C(void *a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = [a1 error];
  if (v10)
  {
    v11 = v10;
    sub_2313690F0();
    v12 = v11;
    v13 = sub_2313698A0();
    v14 = sub_23136A3B0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_23136A980();
      v19 = sub_2311CFD58(v17, v18, &v28);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2311CB000, v13, v14, "BiomeStreamRefresher: App.Intent:tombstones sink completed un-expectedly with error %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x23192B930](v16, -1, -1);
      MEMORY[0x23192B930](v15, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_2313690F0();
    v20 = a1;
    v21 = sub_2313698A0();
    v22 = sub_23136A3A0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_2311CB000, v21, v22, "BiomeStreamRefresher: App.Intent:tombstones sink completed - %@", v23, 0xCu);
      sub_2311F4E78(v24);
      MEMORY[0x23192B930](v24, -1, -1);
      MEMORY[0x23192B930](v23, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

void sub_231229C7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_231229CE4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - v4;
  v6 = sub_2313698C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_2313690F0();
    swift_unknownObjectRetain();
    v13 = sub_2313698A0();
    v14 = sub_23136A3A0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v23[0] = swift_slowAlloc();
      v24 = v23[0];
      *v15 = 136315138;
      if ([a1 respondsToSelector_])
      {
        v16 = [a1 eventBody];
      }

      else
      {
        v16 = 1;
      }

      v23[1] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C8, &qword_23136EDB0);
      v17 = sub_23136A010();
      v19 = sub_2311CFD58(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2311CB000, v13, v14, "BiomeStreamRefresher: Received event %s", v15, 0xCu);
      v20 = v23[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v23[0]);
      MEMORY[0x23192B930](v20, -1, -1);
      MEMORY[0x23192B930](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v21 = sub_23136A2C0();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v12;
    sub_231271090(0, 0, v5, &unk_23136EDA0, v22);
  }

  return result;
}

uint64_t sub_231229FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2313698C0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23122A094, 0, 0);
}

uint64_t sub_23122A094()
{
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439D0, &qword_23136EDB8);
  v4 = sub_231369570();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v0[7] = v8;
  *(v8 + 16) = xmmword_23136B670;
  (*(v5 + 104))(v8 + v7, *MEMORY[0x277D55868], v4);
  v9 = *(v3 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_23122A28C;

  return v13(v8, v2, v3);
}

uint64_t sub_23122A28C()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  v2[9] = v4;
  v2[10] = v0;

  if (v0)
  {
    v5 = sub_23122A4AC;
  }

  else
  {
    v6 = v2[7];

    v5 = sub_23122A3A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23122A3A4()
{
  v1 = v0[6];
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2311CB000, v2, v3, "BiomeStreamRefresher: Reindexed %ld phrases", v5, 0xCu);
    OUTLINED_FUNCTION_29();
  }

  v6 = v0[5];
  (*(v0[4] + 8))(v0[6], v0[3]);

  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_23122A4AC()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];

  sub_2313690F0();
  v4 = v1;
  v5 = sub_2313698A0();
  v6 = sub_23136A3B0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2311CB000, v5, v6, "BiomeStreamRefresher: event processing error - %@", v9, 0xCu);
    sub_2311F4E78(v10);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  v13 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);

  OUTLINED_FUNCTION_56_0();

  return v14();
}

uint64_t sub_23122A624(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_23122A6A4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*(v0 + 16) + 64);
  if (v1)
  {
    [v1 cancel];
  }

  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t BiomeStreamRefresher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BiomeStreamRefresher.__deallocating_deinit()
{
  BiomeStreamRefresher.deinit();
  OUTLINED_FUNCTION_1_14();

  return swift_deallocClassInstance();
}

uint64_t sub_23122A768()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23122AAF0;

  return BiomeStreamRefresher.start(container:)();
}

uint64_t sub_23122A7F8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23122A888;

  return BiomeStreamRefresher.destroy()();
}

uint64_t sub_23122A888()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_56_0();

  return v2();
}

id sub_23122A974(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_231369FA0();

  v6 = [v3 initWithIdentifier:v5 targetQueue:a3];

  return v6;
}

uint64_t sub_23122AA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23122A888;

  return sub_231229FC8(a1, v4, v5, v6);
}

size_t sub_23122ABA8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_231250134(*(a1 + 16), 0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0);
  v3 = OUTLINED_FUNCTION_40_0(v2);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_18_8(v3, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  sub_2312512C8();
  OUTLINED_FUNCTION_16_9();
  if (!v13)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

size_t sub_23122AC54(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_2312501E0(*(a1 + 16), 0);
  v2 = sub_231367E10();
  v3 = OUTLINED_FUNCTION_40_0(v2);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_18_8(v3, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  sub_231251660();
  OUTLINED_FUNCTION_16_9();
  if (!v13)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_23122AD78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_40_4();
  v6(v5);
  OUTLINED_FUNCTION_44_4();
  a3();
  OUTLINED_FUNCTION_16_9();
  if (!v7)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_23122AE18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_40_4();
  v6(v5);
  OUTLINED_FUNCTION_44_4();
  a3();
  OUTLINED_FUNCTION_16_9();
  if (!v7)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_23122AECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v6 = OUTLINED_FUNCTION_40_4();
  v8 = v7(v6);
  v9 = a3(0);
  v10 = OUTLINED_FUNCTION_40_0(v9);
  v12 = *(v11 + 80);
  v20 = OUTLINED_FUNCTION_18_8(v10, v13, v14, v15, v16, v17, v18, v19, v23, v24);
  a4(v20);
  OUTLINED_FUNCTION_16_9();
  if (!v21)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t AppUtilsService.homescreenAppPicker.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker;
  v4 = sub_231368DB0();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t AppUtilsService.__allocating_init(cache:homescreenAppPicker:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker;
  v9 = sub_231368DB0();
  OUTLINED_FUNCTION_11(v9);
  (*(v10 + 32))(v7 + v8, a2);
  return v7;
}

uint64_t AppUtilsService.init(cache:homescreenAppPicker:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker;
  v5 = sub_231368DB0();
  OUTLINED_FUNCTION_11(v5);
  (*(v6 + 32))(v2 + v4, a2);
  return v2;
}

uint64_t AppUtilsService.getAppDetailsBuilder(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = type metadata accessor for DefaultAppDetailsBuilder();
  v9 = swift_allocObject();
  v9[3] = a1;
  v9[4] = a2;
  v9[2] = v7;
  a3[3] = v8;
  a3[4] = sub_231236C54(&qword_27DD439D8, v10, type metadata accessor for DefaultAppDetailsBuilder);
  *a3 = v9;

  return sub_231369EE0();
}

void AppUtilsService.listIntentSupportingApps()()
{
  OUTLINED_FUNCTION_11_0();
  v49 = sub_2313698C0();
  v0 = OUTLINED_FUNCTION_0_0(v49);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439E0, &unk_23136EDD0);
  OUTLINED_FUNCTION_40_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = sub_231368480();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v47 = &v41 - v23;
  MEMORY[0x28223BE20](v22);
  v46 = &v41 - v24;
  v51 = MEMORY[0x277D84FA0];
  v50 = [objc_opt_self() enumeratorWithOptions_];
  v44 = (v17 + 16);
  v45 = (v17 + 32);
  v43 = (v17 + 8);
  v25 = (v2 + 8);
  v26 = 1001;
  v27 = &off_278908000;
  *&v28 = 134217984;
  v41 = v28;
  v42 = (v2 + 8);
  while (1)
  {
    v29 = [v50 v27[180]];
    if (!v29)
    {
      break;
    }

    v30 = v29;
    if (!v26)
    {

      break;
    }

    v31 = MEMORY[0x23192B1C0]();
    if (--v26)
    {
      sub_23122B5D4();
      if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
      {
        sub_2311D1F18(v13, &qword_27DD439E0, &unk_23136EDD0);
      }

      else
      {
        v35 = v46;
        (*v45)(v46, v13, v14);
        v36 = v48;
        (*v44)(v48, v35, v14);
        v37 = v47;
        sub_23122EB84(v47, v36);
        v38 = *v43;
        (*v43)(v37, v14);
        v39 = v35;
        v27 = &off_278908000;
        v38(v39, v14);
        v25 = v42;
      }
    }

    else
    {
      sub_231369100();
      v32 = sub_2313698A0();
      v33 = sub_23136A390();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = OUTLINED_FUNCTION_60();
        *v34 = v41;
        *(v34 + 4) = 1000;
        _os_log_impl(&dword_2311CB000, v32, v33, "[warning] Too many app records returned from LSApplicationRecord. Using first %ld", v34, 0xCu);
        v27 = &off_278908000;
        OUTLINED_FUNCTION_29();
      }

      (*v25)(v7, v49);
    }

    objc_autoreleasePoolPop(v31);
  }

  v40 = sub_231369EE0();
  sub_23122AECC(v40, sub_2312503C0, MEMORY[0x277D60F78], sub_231251E44);

  OUTLINED_FUNCTION_9_0();
}

void sub_23122B5D4()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_2313698C0();
  v6 = OUTLINED_FUNCTION_4_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  if ([v2 developerType] == 1)
  {
LABEL_11:
    v34 = sub_231368480();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v34);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v14 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (!v14)
  {
LABEL_8:
    sub_231369100();
    v23 = v2;
    v24 = sub_2313698A0();
    v25 = sub_23136A3B0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_60();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v26 = 136315138;
      v27 = [v23 description];
      v28 = v4;
      v29 = sub_231369FD0();
      v31 = v30;

      v32 = v29;
      v4 = v28;
      v33 = sub_2311CFD58(v32, v31, &v36);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_2311CB000, v24, v25, "Unable to create INAppInfo for record: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v8 + 8))(v13, v1);
    goto LABEL_11;
  }

  v15 = v14;
  sub_2312360F8(v14, &selRef_applicationIdentifier);
  if (!v16)
  {

    goto LABEL_8;
  }

  v17 = [v15 supportedIntents];
  sub_23136A310();

  sub_231368470();
  sub_231368480();
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_9_0();

  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void AppUtilsService.findIntents(forApp:)()
{
  OUTLINED_FUNCTION_11_0();
  v0 = sub_2313698C0();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  sub_231369EE0();
  v5 = OUTLINED_FUNCTION_35_5();
  sub_23122DFCC(v5, v6, 1);
  sub_23122B5D4();
  OUTLINED_FUNCTION_9_0();
}

Swift::Bool __swiftcall AppUtilsService.isAppInstalled(appBundleId:)(Swift::String appBundleId)
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_2313698C0();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  sub_231369EE0();
  v10 = sub_23122DFCC(v4, v2, 0);
  v11 = [v10 applicationState];
  [v11 isInstalled];

  OUTLINED_FUNCTION_9_0();
  return result;
}

uint64_t AppUtilsService.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker;
  v3 = sub_231368DB0();
  OUTLINED_FUNCTION_11(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t AppUtilsService.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker;
  v3 = sub_231368DB0();
  OUTLINED_FUNCTION_11(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23122BE68(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_23122BE88, 0, 0);
}

uint64_t sub_23122BE88()
{
  v1 = v0[8];
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v0[9] = v4;
  v0[5] = v2;
  v0[6] = v4;
  v5 = *(MEMORY[0x277D61208] + 4);
  v12 = (*MEMORY[0x277D61208] + MEMORY[0x277D61208]);
  sub_231369EE0();
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AB8, &qword_23136F498);
  v8 = sub_231236B4C(&qword_27DD43AC0, sub_231236378);
  v9 = sub_231236B4C(&qword_27DD43AC8, sub_231236324);
  *v6 = v0;
  v6[1] = sub_23122C010;
  v10 = v0[8];

  return v12(v0 + 2, v0 + 5, &unk_23136F490, v10, v7, v8, v9);
}

uint64_t sub_23122C010()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_23122C11C, 0, 0);
}

uint64_t sub_23122C11C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = &type metadata for DefaultAppDetails;
    v5 = sub_231236BC4();
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  v6 = v0[7];
  *v6 = v2;
  v6[1] = v1;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_23122C1B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2313698C0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23122C278, 0, 0);
}

uint64_t sub_23122C278()
{
  v22 = v0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = sub_231366900();
  if (v5)
  {
    DefaultAppDetails.init(appInfo:)(v5, *(v0 + 16));
  }

  else
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);
    sub_2313690F0();

    v8 = sub_2313698A0();
    v9 = sub_23136A3B0();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 32);
    if (v10)
    {
      OUTLINED_FUNCTION_60();
      v14 = OUTLINED_FUNCTION_57_0();
      v21 = v14;
      *v1 = 136315138;
      *(v1 + 4) = sub_2311CFD58(v3, v4, &v21);
      OUTLINED_FUNCTION_37_2(&dword_2311CB000, v15, v16, "SAAppInfoFactory was unable to create the app info for: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v12 + 8))(v11, v13);
    v17 = *(v0 + 16);
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v18 = *(v0 + 48);

  OUTLINED_FUNCTION_56_0();

  return v19();
}

void DefaultAppDetails.init(appInfo:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2313698C0();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v13 = [a1 appIdentifyingInfo];
  if (v13)
  {
    v14 = v13;
    v15 = sub_2312360F8(v13, &selRef_bundleId);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = sub_231236158(a1);
      if (!v19)
      {
        v19 = sub_231369EC0();
      }

      v20 = v19;

      *a2 = v17;
      a2[1] = v18;
      a2[2] = v20;
      return;
    }
  }

  sub_2313690F0();
  v21 = sub_2313698A0();
  v22 = sub_23136A3B0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2311CB000, v21, v22, "Could not create AppDetails from provided appInfo because it's missing the bundleId", v23, 2u);
    OUTLINED_FUNCTION_29();
  }

  (*(v7 + 8))(v12, v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t sub_23122C598()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_23122C5C0()
{
  sub_23122C598();

  return swift_deallocClassInstance();
}

uint64_t sub_23122C5F4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23122C690;

  return sub_23122BE68(a1);
}

uint64_t sub_23122C690()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  OUTLINED_FUNCTION_56_0();

  return v4();
}

uint64_t DefaultAppDetails.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231369EE0();
  return v1;
}

uint64_t DefaultAppDetails.appName.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  a1[3] = &type metadata for DefaultAppName;
  a1[4] = sub_2312361BC();
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  sub_231369EE0();

  return sub_231369EE0();
}

void DefaultAppDetails.getSirikitApp()()
{
  OUTLINED_FUNCTION_11_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439F0, &qword_23136EDE0);
  OUTLINED_FUNCTION_40_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  v43 = v41 - v5;
  v6 = v0[1];
  v7 = v0[2];
  v8 = *(v7 + 16);
  if (v8)
  {
    v41[0] = *v0;
    v41[1] = v6;
    v49 = MEMORY[0x277D84F90];
    sub_23136A6C0();
    v10 = sub_231236C18(v7);
    v11 = v7 + 64;
    v12 = v8 - 1;
    v42 = v7 + 64;
    v13 = v43;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v7 + 32))
      {
        if ((*(v11 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        if (v9 != *(v7 + 36))
        {
          goto LABEL_14;
        }

        v46 = 1 << v10;
        v47 = v10 >> 6;
        v44 = v12;
        v45 = v9;
        v14 = (*(v7 + 48) + 16 * v10);
        v16 = *v14;
        v15 = v14[1];
        v17 = (*(v7 + 56) + 16 * v10);
        v18 = v17[1];
        v48 = *v17;
        v19 = sub_231366D20();
        v20 = *(v19 + 48);
        v21 = *(v19 + 52);
        swift_allocObject();
        sub_231369EE0();
        sub_231369EE0();
        sub_231366D10();
        sub_23136A050();
        v22 = sub_231366CD0();
        OUTLINED_FUNCTION_55_4();
        __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
        sub_231366CF0();

        sub_2311D1F18(v13, &qword_27DD439F0, &qword_23136EDE0);
        sub_23136A050();
        OUTLINED_FUNCTION_55_4();
        __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
        sub_231366CE0();

        sub_2311D1F18(v13, &qword_27DD439F0, &qword_23136EDE0);
        sub_231366D00();

        sub_23136A6A0();
        v29 = *(v49 + 16);
        sub_23136A6D0();
        sub_23136A6E0();
        sub_23136A6B0();
        v30 = *(v7 + 32);
        OUTLINED_FUNCTION_19_8();
        if (v10 >= -v31)
        {
          goto LABEL_15;
        }

        v11 = v42;
        if ((*(v42 + 8 * v47) & v46) == 0)
        {
          goto LABEL_16;
        }

        if (v45 != *(v7 + 36))
        {
          goto LABEL_17;
        }

        v32 = sub_23136A570();
        if (!v44)
        {
          goto LABEL_12;
        }

        v10 = v32;
        v9 = *(v7 + 36);
        v12 = v44 - 1;
        if (v32 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
  }

LABEL_12:
  v33 = sub_231366C90();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_231366C80();
  sub_231369EE0();
  v36 = v43;
  OUTLINED_FUNCTION_35_5();
  sub_23136A050();

  sub_231366CD0();
  OUTLINED_FUNCTION_55_4();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_231366C60();

  sub_2311D1F18(v36, &qword_27DD439F0, &qword_23136EDE0);
  sub_231366C50();

  sub_231366C70();

  OUTLINED_FUNCTION_9_0();
}

void DefaultAppDetails.toDialog(dialogProvider:)()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_2313698C0();
  v7 = OUTLINED_FUNCTION_4_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  v16 = *v0;
  v15 = v0[1];
  v17 = v0[2];
  sub_2311CF324(v3, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439F8, &qword_23136EDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A00, &unk_23136EDF0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v23);
    sub_231369120();
    v18 = sub_2313698A0();
    v19 = sub_23136A3A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2311CB000, v18, v19, "Mapping AppName to SiriKitApp instance for dialogging", v20, 2u);
      OUTLINED_FUNCTION_29();
    }

    (*(v9 + 8))(v14, v1);
    v24[0] = v16;
    v24[1] = v15;
    v24[2] = v17;
    DefaultAppDetails.getSirikitApp()();
    v24[0] = v21;
    sub_231366CA0();
    sub_231236C54(&qword_27DD43A08, 255, MEMORY[0x277D55C08]);
    v22 = sub_231366D30();
    v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);

    *v5 = v22;
  }

  else
  {
    *v5 = v16;
    v5[1] = v15;
    v5[2] = v17;
    v5[3] = &type metadata for DefaultAppDetails;
    sub_231369EE0();
    sub_231369EE0();
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t DefaultAppDetails.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_23136A650();
  MEMORY[0x23192A730](0xD000000000000018, 0x800000023137D5E0);
  sub_231369EE0();
  MEMORY[0x23192A730](v1, v2);

  MEMORY[0x23192A730](0xD000000000000016, 0x800000023137D600);
  v6 = *(v3 + 16);
  v4 = sub_23136A8B0();
  MEMORY[0x23192A730](v4);

  MEMORY[0x23192A730](0xD000000000000012, 0x800000023137D620);
  return 0;
}

uint64_t static DefaultAppDetails.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23136A900() & 1) == 0)
  {
    return 0;
  }

  return sub_23122CF44(v2, v3);
}

uint64_t sub_23122CF44(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];
    sub_231369EE0();
    sub_231369EE0();
    v20 = sub_231215F6C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_23136A900();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23122D0E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D656D614E707061 && a2 == 0xEA00000000007061)
  {

    return 1;
  }

  else
  {
    v7 = sub_23136A900();

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

uint64_t sub_23122D1BC(char a1)
{
  sub_23136A9D0();
  MEMORY[0x23192B090](a1 & 1);
  return sub_23136AA00();
}

uint64_t sub_23122D204(char a1)
{
  if (a1)
  {
    return 0x4D656D614E707061;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_23122D250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23122D0E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23122D298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23122D1B4();
  *a1 = result;
  return result;
}

uint64_t sub_23122D2C0(uint64_t a1)
{
  v2 = sub_231236210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23122D2FC(uint64_t a1)
{
  v2 = sub_231236210();

  return MEMORY[0x2821FE720](a1, v2);
}

void DefaultAppDetails.encode(to:)()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A10, &qword_23136EE00);
  OUTLINED_FUNCTION_0_0(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v15 = v0[2];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_231236210();
  sub_23136AA40();
  sub_23136A840();
  if (!v1)
  {
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A20, &qword_23136EE08);
    sub_231236264(&qword_27DD43A28);
    sub_23136A890();
  }

  (*(v16 + 8))(v10, v4);
  OUTLINED_FUNCTION_22_0();
}

void DefaultAppDetails.init(from:)()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A30, &qword_23136EE10);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_231236210();
  sub_23136AA20();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    v12 = sub_23136A7D0();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A20, &qword_23136EE08);
    sub_231236264(&qword_27DD43A38);
    sub_23136A820();
    v15 = *(v7 + 8);
    v16 = OUTLINED_FUNCTION_35_5();
    v17(v16);
    *v4 = v12;
    v4[1] = v14;
    v4[2] = v18;
    sub_231369EE0();
    sub_231369EE0();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t DefaultAppName.getSirikitApp()()
{
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  sub_231369EE0();
  sub_231369EE0();
  DefaultAppDetails.getSirikitApp()();
  v2 = v1;

  return v2;
}

uint64_t DefaultAppName.toDialog(dialogProvider:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_231369EE0();
  sub_231369EE0();
  DefaultAppDetails.toDialog(dialogProvider:)();
}

Swift::String_optional __swiftcall DefaultAppName.appName(locale:)(Swift::String locale)
{
  OUTLINED_FUNCTION_11_0();
  v4 = v3;
  v6 = v5;
  v7 = sub_2313698C0();
  v8 = OUTLINED_FUNCTION_4_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  v17 = *(v1 + 8);
  v16 = *(v1 + 16);
  sub_2313690F0();
  sub_231369EE0();
  sub_231369EE0();
  v18 = sub_2313698A0();
  v19 = sub_23136A3A0();

  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_60();
    v20 = OUTLINED_FUNCTION_57_0();
    v30 = v20;
    *v17 = 136315138;
    v21 = sub_231369E90();
    v29 = v2;
    v23 = v6;
    v24 = v4;
    v25 = sub_2311CFD58(v21, v22, &v30);

    *(v17 + 4) = v25;
    v4 = v24;
    v6 = v23;
    _os_log_impl(&dword_2311CB000, v18, v19, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v10 + 8))(v15, v29);
  }

  else
  {

    (*(v10 + 8))(v15);
  }

  sub_231210CBC(v6, v4, v16);
  OUTLINED_FUNCTION_9_0();
  result.value._object = v27;
  result.value._countAndFlagsBits = v26;
  return result;
}

uint64_t sub_23122DA18(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6961746544707061 && a2 == 0xEA0000000000736CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23136A900();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23122DAA0()
{
  sub_23136A9D0();
  MEMORY[0x23192B090](0);
  return sub_23136AA00();
}

uint64_t sub_23122DB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23122DA18(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23122DB54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23122DA98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23122DB80(uint64_t a1)
{
  v2 = sub_2312362D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23122DBBC(uint64_t a1)
{
  v2 = sub_2312362D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void DefaultAppName.encode(to:)()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v15[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A40, &qword_23136EE18);
  OUTLINED_FUNCTION_0_0(v15[0]);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2312362D0();
  sub_231369EE0();
  sub_231369EE0();
  sub_23136AA40();
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  sub_231236324();
  v14 = v15[0];
  sub_23136A890();

  (*(v4 + 8))(v9, v14);
  OUTLINED_FUNCTION_22_0();
}

void DefaultAppName.init(from:)()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A58, &qword_23136EE20);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2312362D0();
  sub_23136AA20();
  if (!v0)
  {
    sub_231236378();
    sub_23136A820();
    (*(v7 + 8))(v12, v5);
    v14 = v16;
    *v4 = v15[1];
    *(v4 + 8) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_22_0();
}

uint64_t AppUtilErrors.hashValue.getter()
{
  sub_23136A9D0();
  MEMORY[0x23192B090](0);
  return sub_23136AA00();
}

uint64_t sub_23122DF8C()
{
  sub_23136A9D0();
  MEMORY[0x23192B090](0);
  return sub_23136AA00();
}

id sub_23122DFCC(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_231369FA0();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_231366570();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_23122E0AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

BOOL sub_23122E0DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_23136A5D0();
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_19_8();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v5 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v14 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2311E5778(a2, v20);
      v19 = *v3;
      sub_231231BE8(v20, v11, isUniquelyReferenced_nonNull_native);
      *v3 = v19;
      v16 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v16;
      *(a1 + 32) = *(a2 + 32);
      return v12 == 0;
    }

    sub_2311E5778(*(v5 + 48) + 40 * v11, v20);
    v13 = MEMORY[0x23192AC90](v20, a2);
    sub_2311E57D4(v20);
    if (v13)
    {
      break;
    }

    v8 = v11 + 1;
  }

  sub_2311E57D4(a2);
  sub_2311E5778(*(v5 + 48) + 40 * v11, a1);
  return v12 == 0;
}

void sub_23122E218()
{
  OUTLINED_FUNCTION_56_3();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *(*v0 + 40);
  sub_23136A9D0();
  sub_23136A060();
  sub_23136AA00();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_19_8();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v14 = (*(v7 + 48) + 16 * v13);
    v15 = *v14 == v4 && v14[1] == v2;
    if (v15 || (sub_23136A900() & 1) != 0)
    {

      v16 = (*(v7 + 48) + 16 * v13);
      v17 = v16[1];
      *v6 = *v16;
      v6[1] = v17;
      sub_231369EE0();
      goto LABEL_11;
    }

    v10 = v13 + 1;
  }

  v18 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v0;
  sub_231369EE0();
  sub_231231D48(v4, v2, v13, isUniquelyReferenced_nonNull_native);
  *v0 = v20;
  *v6 = v4;
  v6[1] = v2;
LABEL_11:
  OUTLINED_FUNCTION_57_4();
}

void sub_23122E348()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v4);
  v5 = sub_231369A00();
  v6 = OUTLINED_FUNCTION_4_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_23_4();
  sub_231236C54(v9, 255, v10);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_0_12();
  while (1)
  {
    OUTLINED_FUNCTION_2_7(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_41_4();
      v16 = OUTLINED_FUNCTION_7_8();
      v17(v16);
      v18 = OUTLINED_FUNCTION_8_8();
      sub_231231EB0(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_6_7();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_15();
    v2(v13);
    OUTLINED_FUNCTION_23_4();
    sub_231236C54(&qword_27DD43B20, 255, v14);
    OUTLINED_FUNCTION_13_8();
    v15 = OUTLINED_FUNCTION_10_9();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v3 + 1;
  }

  v23 = OUTLINED_FUNCTION_15_10();
  v1(v23);
  v24 = OUTLINED_FUNCTION_9_9();
  v2(v24);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_23122E4BC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v4);
  v5 = sub_231367490();
  v6 = OUTLINED_FUNCTION_4_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_22_5();
  sub_231236C54(v9, 255, v10);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_0_12();
  while (1)
  {
    OUTLINED_FUNCTION_2_7(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_41_4();
      v16 = OUTLINED_FUNCTION_7_8();
      v17(v16);
      v18 = OUTLINED_FUNCTION_8_8();
      sub_231232168(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_6_7();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_15();
    v2(v13);
    OUTLINED_FUNCTION_22_5();
    sub_231236C54(&qword_27DD43B38, 255, v14);
    OUTLINED_FUNCTION_13_8();
    v15 = OUTLINED_FUNCTION_10_9();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v3 + 1;
  }

  v23 = OUTLINED_FUNCTION_15_10();
  v1(v23);
  v24 = OUTLINED_FUNCTION_9_9();
  v2(v24);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23122E630(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_231369EE0();
    v8 = sub_23136A5B0();

    if (v8)
    {

      sub_2313692F0();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
    }

    else
    {
      result = sub_23136A5A0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v19 = sub_23122F424(v7, result + 1);
        v20 = *(v19 + 16);
        if (*(v19 + 24) <= v20)
        {
          sub_2312300E4(v20 + 1);
        }

        sub_231231AFC(v21, v19);

        *v3 = v19;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_2313692F0();
    v10 = *(v6 + 40);
    OUTLINED_FUNCTION_21_6();
    sub_231236C54(v11, 255, v12);
    OUTLINED_FUNCTION_35_5();
    sub_231369F30();
    v13 = *(v6 + 32);
    OUTLINED_FUNCTION_19_8();
    v16 = ~v15;
    while (1)
    {
      v17 = v14 & v16;
      if (((*(v6 + 56 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v16)) & 1) == 0)
      {
        v22 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v2;

        sub_231232420(v24, v17, isUniquelyReferenced_nonNull_native);
        *v2 = v27;
        goto LABEL_16;
      }

      v26 = *(*(v6 + 48) + 8 * v17);
      OUTLINED_FUNCTION_21_6();
      sub_231236C54(&qword_280F7C908, 255, v18);
      if (sub_231369F60())
      {
        break;
      }

      v14 = v17 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v17);

    return 0;
  }

  return result;
}

void sub_23122E89C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v4);
  v5 = sub_231369050();
  v6 = OUTLINED_FUNCTION_4_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_20_7();
  sub_231236C54(v9, 255, v10);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_0_12();
  while (1)
  {
    OUTLINED_FUNCTION_2_7(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_41_4();
      v16 = OUTLINED_FUNCTION_7_8();
      v17(v16);
      v18 = OUTLINED_FUNCTION_8_8();
      sub_2312325F8(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_6_7();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_15();
    v2(v13);
    OUTLINED_FUNCTION_20_7();
    sub_231236C54(&qword_280F7C940, 255, v14);
    OUTLINED_FUNCTION_13_8();
    v15 = OUTLINED_FUNCTION_10_9();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v3 + 1;
  }

  v23 = OUTLINED_FUNCTION_15_10();
  v1(v23);
  v24 = OUTLINED_FUNCTION_9_9();
  v2(v24);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_23122EA10()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v4);
  v5 = sub_231368090();
  v6 = OUTLINED_FUNCTION_4_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_28_6();
  sub_231236C54(v9, 255, v10);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_0_12();
  while (1)
  {
    OUTLINED_FUNCTION_2_7(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_41_4();
      v16 = OUTLINED_FUNCTION_7_8();
      v17(v16);
      v18 = OUTLINED_FUNCTION_8_8();
      sub_2312328B0(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_6_7();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_15();
    v2(v13);
    OUTLINED_FUNCTION_28_6();
    sub_231236C54(&qword_280F7C9C0, 255, v14);
    OUTLINED_FUNCTION_13_8();
    v15 = OUTLINED_FUNCTION_10_9();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v3 + 1;
  }

  v23 = OUTLINED_FUNCTION_15_10();
  v1(v23);
  v24 = OUTLINED_FUNCTION_9_9();
  v2(v24);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

BOOL sub_23122EB84(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_231368480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_231236C54(&qword_280F7C988, 255, MEMORY[0x277D60F78]);
  v30 = a2;
  v11 = sub_231369F30();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_231232B68(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_231236C54(&qword_280F7C980, 255, MEMORY[0x277D60F78]);
    v17 = sub_231369F60();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

void sub_23122EE54()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v4);
  v5 = sub_231369D90();
  v6 = OUTLINED_FUNCTION_4_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_27_6();
  sub_231236C54(v9, 255, v10);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_0_12();
  while (1)
  {
    OUTLINED_FUNCTION_2_7(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_41_4();
      v16 = OUTLINED_FUNCTION_7_8();
      v17(v16);
      v18 = OUTLINED_FUNCTION_8_8();
      sub_231232E20(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_6_7();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_15();
    v2(v13);
    OUTLINED_FUNCTION_27_6();
    sub_231236C54(&qword_27DD43B08, 255, v14);
    OUTLINED_FUNCTION_13_8();
    v15 = OUTLINED_FUNCTION_10_9();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v3 + 1;
  }

  v23 = OUTLINED_FUNCTION_15_10();
  v1(v23);
  v24 = OUTLINED_FUNCTION_9_9();
  v2(v24);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_23122EFC8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v4);
  v5 = sub_231369990();
  v6 = OUTLINED_FUNCTION_4_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_26_7();
  sub_231236C54(v9, 255, v10);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_0_12();
  while (1)
  {
    OUTLINED_FUNCTION_2_7(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_41_4();
      v16 = OUTLINED_FUNCTION_7_8();
      v17(v16);
      v18 = OUTLINED_FUNCTION_8_8();
      sub_2312330D8(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_6_7();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_15();
    v2(v13);
    OUTLINED_FUNCTION_26_7();
    sub_231236C54(&qword_27DD43AF0, 255, v14);
    OUTLINED_FUNCTION_13_8();
    v15 = OUTLINED_FUNCTION_10_9();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v3 + 1;
  }

  v23 = OUTLINED_FUNCTION_15_10();
  v1(v23);
  v24 = OUTLINED_FUNCTION_9_9();
  v2(v24);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_23122F13C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v4);
  v5 = sub_231369900();
  v6 = OUTLINED_FUNCTION_4_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_25_5();
  sub_231236C54(v9, 255, v10);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_0_12();
  while (1)
  {
    OUTLINED_FUNCTION_2_7(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_41_4();
      v16 = OUTLINED_FUNCTION_7_8();
      v17(v16);
      v18 = OUTLINED_FUNCTION_8_8();
      sub_231233390(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_6_7();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_15();
    v2(v13);
    OUTLINED_FUNCTION_25_5();
    sub_231236C54(&qword_27DD43B50, 255, v14);
    OUTLINED_FUNCTION_13_8();
    v15 = OUTLINED_FUNCTION_10_9();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v3 + 1;
  }

  v23 = OUTLINED_FUNCTION_15_10();
  v1(v23);
  v24 = OUTLINED_FUNCTION_9_9();
  v2(v24);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_23122F2B0()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v4);
  v5 = sub_231369D50();
  v6 = OUTLINED_FUNCTION_4_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_24_7();
  sub_231236C54(v9, 255, v10);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_0_12();
  while (1)
  {
    OUTLINED_FUNCTION_2_7(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_41_4();
      v16 = OUTLINED_FUNCTION_7_8();
      v17(v16);
      v18 = OUTLINED_FUNCTION_8_8();
      sub_231233648(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_6_7();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_15();
    v2(v13);
    OUTLINED_FUNCTION_24_7();
    sub_231236C54(&qword_27DD43360, 255, v14);
    OUTLINED_FUNCTION_13_8();
    v15 = OUTLINED_FUNCTION_10_9();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v3 + 1;
  }

  v23 = OUTLINED_FUNCTION_15_10();
  v1(v23);
  v24 = OUTLINED_FUNCTION_9_9();
  v2(v24);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23122F424(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AE0, &qword_23136F4A8);
    v2 = sub_23136A620();
    v16 = v2;
    sub_23136A590();
    while (1)
    {
      if (!sub_23136A5C0())
      {

        return v2;
      }

      sub_2313692F0();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_2312300E4(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      sub_231236C54(&unk_280F7C910, 255, MEMORY[0x277D612D0]);
      result = sub_231369F30();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_23122F63C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AD8, &qword_23136F4A0);
  result = sub_23136A610();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v29 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2312B3C88(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
    v30 = *v17;
    v31 = *(v17 + 16);
    v32 = *(v17 + 32);
    v18 = *(v6 + 40);
    result = sub_23136A5D0();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v6 + 48) + 40 * v22;
    *v27 = v30;
    *(v27 + 16) = v31;
    *(v27 + 32) = v32;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_23122F898()
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_45_2(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B68, &qword_23136F4E0);
  v5 = sub_23136A610();
  if (!*(v1 + 16))
  {
LABEL_24:

    *v0 = v5;
    OUTLINED_FUNCTION_57_4();
    return;
  }

  v6 = 0;
  v8 = (v1 + 56);
  v7 = *(v1 + 56);
  v9 = *(v1 + 32);
  OUTLINED_FUNCTION_29_4();
  if (!v3)
  {
LABEL_4:
    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v6 >= v2)
      {
        break;
      }

      ++v11;
      if (v8[v6])
      {
        OUTLINED_FUNCTION_31_6();
        v3 = v13 & v12;
        goto LABEL_9;
      }
    }

    v26 = *(v1 + 32);
    OUTLINED_FUNCTION_42_4();
    if (v27 >= 64)
    {
      sub_2312B3C88(0, (v27 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_19_8();
      *v8 = v28;
    }

    *(v1 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_32_3();
LABEL_9:
    v14 = (*(v1 + 48) + 16 * (v10 | (v6 << 6)));
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v5 + 40);
    sub_23136A9D0();
    sub_23136A060();
    v18 = sub_23136AA00();
    OUTLINED_FUNCTION_36_3(v18);
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_18:
    OUTLINED_FUNCTION_30_4(v20);
    *v25 = v15;
    v25[1] = v16;
    ++*(v5 + 16);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (++v21 != v23 || (v22 & 1) == 0)
  {
    v24 = v21 == v23;
    if (v21 == v23)
    {
      v21 = 0;
    }

    v22 |= v24;
    if (v0[v21] != -1)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_23122FA2C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_231369A00();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B28, &qword_23136F4C0);
  result = sub_23136A610();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2312B3C88(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_231236C54(&qword_27DD43B18, 255, MEMORY[0x277D723F8]);
    result = sub_231369F30();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_23122FD88(uint64_t a1)
{
  v2 = v1;
  v41 = sub_231367490();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B40, &qword_23136F4C8);
  result = sub_23136A610();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2312B3C88(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_231236C54(&qword_27DD43B30, 255, MEMORY[0x277D608B8]);
    result = sub_231369F30();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2312300E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AE0, &qword_23136F4A8);
  result = sub_23136A610();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v29 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_2312B3C88(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_2313692F0();
    sub_231236C54(&unk_280F7C910, 255, MEMORY[0x277D612D0]);
    result = sub_231369F30();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    v3 = v29;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231230378(uint64_t a1)
{
  v2 = v1;
  v41 = sub_231369050();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B78, &qword_23136F4F0);
  result = sub_23136A610();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2312B3C88(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_231236C54(&qword_280F7C948, 255, MEMORY[0x277D61268]);
    result = sub_231369F30();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2312306D4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_231368090();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B70, &qword_23136F4E8);
  result = sub_23136A610();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2312B3C88(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_231236C54(&qword_280F7C9C8, 255, MEMORY[0x277D60D90]);
    result = sub_231369F30();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231230A30(uint64_t a1)
{
  v2 = v1;
  v41 = sub_231368480();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B80, &qword_23136F4F8);
  result = sub_23136A610();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2312B3C88(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_231236C54(&qword_280F7C988, 255, MEMORY[0x277D60F78]);
    result = sub_231369F30();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231230D8C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_231369D90();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B10, &qword_23136F4B8);
  result = sub_23136A610();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2312B3C88(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_231236C54(&qword_27DD43B00, 255, MEMORY[0x277D73110]);
    result = sub_231369F30();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2312310E8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_231369990();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AF8, &qword_23136F4B0);
  result = sub_23136A610();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2312B3C88(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_231236C54(&qword_27DD43AE8, 255, MEMORY[0x277D72238]);
    result = sub_231369F30();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231231444(uint64_t a1)
{
  v2 = v1;
  v41 = sub_231369900();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B58, &qword_23136F4D0);
  result = sub_23136A610();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2312B3C88(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_231236C54(&qword_27DD43B48, 255, MEMORY[0x277D72108]);
    result = sub_231369F30();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2312317A0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_231369D50();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B60, &qword_23136F4D8);
  result = sub_23136A610();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2312B3C88(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_231236C54(&qword_280F7C888, 255, MEMORY[0x277D72D58]);
    result = sub_231369F30();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_231231AFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2313692F0();
  sub_231236C54(&unk_280F7C910, 255, MEMORY[0x277D612D0]);
  sub_231369F30();
  v5 = -1 << *(a2 + 32);
  result = sub_23136A580();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_231231BE8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23122F63C(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_231233EE8(v7 + 1);
LABEL_10:
      v15 = *v3;
      v16 = *(*v3 + 40);
      result = sub_23136A5D0();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_2311E5778(*(v15 + 48) + 40 * a2, v19);
        v18 = MEMORY[0x23192AC90](v19, v6);
        sub_2311E57D4(v19);
        if (v18)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_231233900();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *(v6 + 16);
  *v10 = *v6;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(v6 + 32);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }

  return result;
}

void sub_231231D48(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_23122F898();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_231234110();
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_23136A9D0();
      sub_23136A060();
      v17 = sub_23136AA00();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_23136A900() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_231233A74();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_231231EB0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_231369A00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23122FA2C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231234284(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_231236C54(&qword_27DD43B18, 255, MEMORY[0x277D723F8]);
      v15 = sub_231369F30();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43B20, 255, MEMORY[0x277D723F8]);
        v17 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_231232168(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_231367490();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23122FD88(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2312345A0(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_231236C54(&qword_27DD43B30, 255, MEMORY[0x277D608B8]);
      v15 = sub_231369F30();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43B38, 255, MEMORY[0x277D608B8]);
        v17 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_231232420(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2312300E4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2312348BC(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_2313692F0();
      sub_231236C54(&unk_280F7C910, 255, MEMORY[0x277D612D0]);
      result = sub_231369F30();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v15 = *(*(v12 + 48) + 8 * a2);
        sub_231236C54(&qword_280F7C908, 255, MEMORY[0x277D612D0]);
        if (sub_231369F60())
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_231233BB0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_2312325F8(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_231369050();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231230378(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231234B34(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_231236C54(&qword_280F7C948, 255, MEMORY[0x277D61268]);
      v15 = sub_231369F30();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_280F7C940, 255, MEMORY[0x277D61268]);
        v17 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2312328B0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_231368090();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2312306D4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231234E50(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_231236C54(&qword_280F7C9C8, 255, MEMORY[0x277D60D90]);
      v15 = sub_231369F30();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_280F7C9C0, 255, MEMORY[0x277D60D90]);
        v17 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_231232B68(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_231368480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231230A30(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_23123516C(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_231236C54(&qword_280F7C988, 255, MEMORY[0x277D60F78]);
      v15 = sub_231369F30();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_280F7C980, 255, MEMORY[0x277D60F78]);
        v17 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_231232E20(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_231369D90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231230D8C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231235488(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_231236C54(&qword_27DD43B00, 255, MEMORY[0x277D73110]);
      v15 = sub_231369F30();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43B08, 255, MEMORY[0x277D73110]);
        v17 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2312330D8(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_231369990();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2312310E8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2312357A4(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_231236C54(&qword_27DD43AE8, 255, MEMORY[0x277D72238]);
      v15 = sub_231369F30();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43AF0, 255, MEMORY[0x277D72238]);
        v17 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_231233390(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_231369900();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231231444(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231235AC0(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_231236C54(&qword_27DD43B48, 255, MEMORY[0x277D72108]);
      v15 = sub_231369F30();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43B50, 255, MEMORY[0x277D72108]);
        v17 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}