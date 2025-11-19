BOOL sub_1DA388720(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_1DA394934()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (OUTLINED_FUNCTION_26(), (sub_1DA394934())))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA3887BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1DA394354();
  OUTLINED_FUNCTION_28_0();
  sub_1DA394354();
  return MEMORY[0x1DA74C080](v5 + 1);
}

uint64_t sub_1DA38880C()
{
  OUTLINED_FUNCTION_140();
  sub_1DA3949D4();
  sub_1DA394354();
  sub_1DA394354();
  MEMORY[0x1DA74C080](v0 + 1);
  return sub_1DA394A14();
}

uint64_t sub_1DA388888()
{
  OUTLINED_FUNCTION_140();
  sub_1DA3949D4();
  sub_1DA394354();
  sub_1DA394354();
  MEMORY[0x1DA74C080](v0 + 1);
  return sub_1DA394A14();
}

uint64_t DefaultSiriAutoCompleteService.flushAssistantSuggestions(deactivateWriteClientAfter:)()
{
  OUTLINED_FUNCTION_9_1();
  *(v1 + 16) = v0;
  *(v1 + 112) = v2;
  v3 = sub_1DA394154();
  *(v1 + 24) = v3;
  OUTLINED_FUNCTION_6_2(v3);
  *(v1 + 32) = v4;
  v6 = *(v5 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_76();
  v7 = sub_1DA394144();
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_76();
  v10 = sub_1DA3940F4();
  *(v1 + 56) = v10;
  OUTLINED_FUNCTION_6_2(v10);
  *(v1 + 64) = v11;
  v13 = *(v12 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_76();
  v14 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1DA388A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_47();
  v16 = v12[2];
  v17 = v16[6];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v16[5]);
  v18 = *(v17 + 8);
  v19 = OUTLINED_FUNCTION_28_0();
  if (v20(v19))
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v21 = sub_1DA3942F4();
    v12[10] = __swift_project_value_buffer(v21, qword_1EDCC51C0);
    v22 = sub_1DA3942D4();
    v23 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v23))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v17 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v17 + 4) = sub_1DA372AD8(0xD000000000000036, v24, v25);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    OUTLINED_FUNCTION_112();
    *(v17 + 8) = 1;
    (*(v31 + 104))(v17, *MEMORY[0x1E69DF5C0]);
    OUTLINED_FUNCTION_43_0();
    sub_1DA394134();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4E0, &qword_1DA395FC0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
    OUTLINED_FUNCTION_63(v32);
    v34 = *(v33 + 72);
    v35 = OUTLINED_FUNCTION_99();
    *(v35 + 16) = xmmword_1DA395AB0;
    v36 = v35 + v14;
    v37 = *(v13 + 56);
    v38 = *MEMORY[0x1E69DF560];
    v39 = sub_1DA394124();
    OUTLINED_FUNCTION_10(v39);
    v41 = *(v40 + 104);
    v42 = OUTLINED_FUNCTION_102();
    v43(v42);
    *(v36 + v37) = 1;
    v44 = *MEMORY[0x1E69DF5E0];
    v45 = sub_1DA394164();
    OUTLINED_FUNCTION_10(v45);
    (*(v46 + 104))(v36 + v37, v44, v45);
    OUTLINED_FUNCTION_46_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v45);
    OUTLINED_FUNCTION_28_0();
    sub_1DA3940E4();
    v12[11] = *(v15 + 56);
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x1EEE6DFA0](v50, v51, v52);
  }

  else
  {
    OUTLINED_FUNCTION_125();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_45_0();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
  }
}

uint64_t sub_1DA388CF8()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 112);
  *(v0 + 96) = sub_1DA375E30();
  *(v0 + 104) = 0;
  OUTLINED_FUNCTION_67();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA388D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_47();
  v13 = v12[10];
  v14 = sub_1DA3942D4();
  v15 = sub_1DA394584();
  if (OUTLINED_FUNCTION_82(v15))
  {
    v16 = v12[12];
    v18 = v12[8];
    v17 = v12[9];
    v19 = v12[7];
    v20 = OUTLINED_FUNCTION_83();
    a10 = OUTLINED_FUNCTION_74();
    *v20 = 136315394;
    OUTLINED_FUNCTION_9_2();
    v23 = sub_1DA372AD8(0xD000000000000036, v21, v22);
    OUTLINED_FUNCTION_61(v23);
    OUTLINED_FUNCTION_60();
    _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_30_0();

    v29 = *(v18 + 8);
  }

  else
  {
    v33 = v12[8];
    v32 = v12[9];
    v34 = v12[7];

    v35 = *(v33 + 8);
  }

  v30 = OUTLINED_FUNCTION_28_0();
  v31(v30);
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_45_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_1DA388EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47();
  v14 = *(v12 + 80);
  v15 = *(v12 + 104);
  v16 = sub_1DA3942D4();
  sub_1DA394594();

  v17 = OUTLINED_FUNCTION_116();
  v18 = *(v12 + 104);
  v20 = *(v12 + 64);
  v19 = *(v12 + 72);
  v21 = *(v12 + 56);
  if (v17)
  {
    OUTLINED_FUNCTION_83();
    v22 = OUTLINED_FUNCTION_87();
    a9 = OUTLINED_FUNCTION_74();
    *v13 = 136315394;
    OUTLINED_FUNCTION_12_2();
    v25 = sub_1DA372AD8(0xD000000000000036, v23, v24);
    OUTLINED_FUNCTION_85(v25);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v26;
    *v22 = v26;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
    sub_1DA36CB60(v22, &qword_1ECBAD2F0, &qword_1DA395840);
    OUTLINED_FUNCTION_56();
    __swift_destroy_boxed_opaque_existential_1(a9);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
  }

  v32 = *(v20 + 8);
  v33 = OUTLINED_FUNCTION_28_0();
  v34(v33);
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_58();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t DefaultSiriAutoCompleteService.insertPhrasesForAssistantSuggestions(phrases:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_76();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_76();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
  v1[7] = v9;
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA389144()
{
  OUTLINED_FUNCTION_9_1();
  v0[10] = sub_1DA377B88(v0[2]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1DA3891E8;
  v2 = v0[3];

  return DefaultSiriAutoCompleteService.flushAssistantSuggestions(deactivateWriteClientAfter:)();
}

uint64_t sub_1DA3891E8()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3892CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47();
  if (!v13[10])
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v27 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v27, qword_1EDCC51C0);
    v25 = sub_1DA3942D4();
    v28 = sub_1DA394584();
    if (!OUTLINED_FUNCTION_27_1(v28))
    {
      goto LABEL_11;
    }

LABEL_10:
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_141();
    *v12 = 136315138;
    OUTLINED_FUNCTION_12_2();
    *(v12 + 4) = sub_1DA372AD8(0xD00000000000002ELL, v29, v30);
    OUTLINED_FUNCTION_11_3();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_16_2();
LABEL_11:

    v37 = v13[8];
    v36 = v13[9];
    v39 = v13[5];
    v38 = v13[6];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_58();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }

  v14 = v13[6];
  v12 = v13[7];
  v15 = v13[4];
  v16 = v13[5];
  v17 = *(v13[3] + 56);
  v18 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_databaseDirectory;
  v19 = sub_1DA393EC4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v16, v17 + v18, v19);
  OUTLINED_FUNCTION_46_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  static DefaultSiriAutoCompleteService.initializeVectorDBClient(readOnly:featureFlagsProvider:databaseDirectoryOverride:)();
  sub_1DA36CB60(v16, &qword_1ECBAD400, &unk_1DA395B90);
  if (__swift_getEnumTagSinglePayload(v14, 1, v12) == 1)
  {
    sub_1DA36CB60(v13[6], &qword_1ECBAD408, &qword_1DA395FE0);
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v24 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v24, qword_1EDCC51C0);
    v25 = sub_1DA3942D4();
    v26 = sub_1DA394584();
    if (!OUTLINED_FUNCTION_27_1(v26))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v50 = v13[8];
  v49 = v13[9];
  v51 = v13[6];
  v52 = v13[7];
  OUTLINED_FUNCTION_137();
  sub_1DA38EDE4(v53, v54, v55, v56);
  OUTLINED_FUNCTION_137();
  sub_1DA390014(v57, v58, v59, v60);
  v13[12] = *v50;
  (*(v20 + 8))(&v50[*(v52 + 48)], v19);
  v61 = swift_task_alloc();
  v13[13] = v61;
  *v61 = v13;
  v61[1] = sub_1DA389634;
  v62 = v13[2];
  v63 = v13[3];
  OUTLINED_FUNCTION_58();

  return sub_1DA3897B8(v64, v65);
}

uint64_t sub_1DA389634()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA389718()
{
  OUTLINED_FUNCTION_50();
  v1 = v0[12];
  v2 = v0[9];

  sub_1DA36CB60(v2, &qword_1ECBAD410, &unk_1DA395BA0);
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[5];
  v5 = v0[6];

  OUTLINED_FUNCTION_24_1();

  return v7();
}

uint64_t sub_1DA3897B8(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return OUTLINED_FUNCTION_2_5(sub_1DA3897D8, 0);
}

uint64_t sub_1DA3897D8()
{
  v49 = v0;
  v1 = v0[14];
  v2 = v0[15];
  sub_1DA394084();
  v3 = MEMORY[0x1E69E7CC0];
  v0[12] = MEMORY[0x1E69E7CC0];
  v43 = v0 + 12;
  result = sub_1DA377B88(v1);
  if (result)
  {
    v5 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = v0[14];
    v8 = v7 & 0xC000000000000001;
    v44 = v7 + 32;
    v46 = "morphunTokenizer";
    *(&v9 + 1) = 2;
    *&v9 = 136315394;
    v45 = v9;
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v0;
    v47 = v7 & 0xC000000000000001;
    do
    {
      if (v8)
      {
        v10 = MEMORY[0x1DA74BE10](v6, v0[14]);
      }

      else
      {
        v10 = *(v44 + 8 * v6);
      }

      v11 = v0[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD470, &qword_1DA395E10);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1DA395AB0;
      OUTLINED_FUNCTION_9();
      swift_beginAccess();
      v13 = *(v10 + 24);
      *(v12 + 32) = *(v10 + 16);
      *(v12 + 40) = v13;

      OUTLINED_FUNCTION_9();
      sub_1DA394034();
      OUTLINED_FUNCTION_39_0();

      v14 = *(v11 + 16);

      if (v14)
      {
        if (qword_1EDCC52A0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v15 = sub_1DA3942F4();
        OUTLINED_FUNCTION_38_0(v15, qword_1EDCC51C0);

        v16 = sub_1DA3942D4();
        v17 = sub_1DA394584();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = OUTLINED_FUNCTION_83();
          v19 = OUTLINED_FUNCTION_89();
          v48[0] = v19;
          *v18 = v45;
          *(v18 + 4) = OUTLINED_FUNCTION_120(v19, v20, v21, v22, v23, v24, v25, v26, v41, v42, v43, v44, v45, *(&v45 + 1), v46);
          *(v18 + 12) = 2080;
          v27 = v6;
          v28 = *(v10 + 16);
          v29 = *(v10 + 24);

          v30 = sub_1DA372AD8(v28, v29, v48);
          v8 = v47;

          *(v18 + 14) = v30;
          v6 = v27;
          OUTLINED_FUNCTION_117(&dword_1DA365000, v16, v17, "Function: %s > '%s' already in DB, skip inserting this AssistantSuggestion");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_16_2();
        }
      }

      else
      {

        MEMORY[0x1DA74BB40](v31);
        v32 = *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v32 >> 1)
        {
          OUTLINED_FUNCTION_23_1(v32);
          sub_1DA394504();
        }

        sub_1DA394524();

        v41 = *v43;
      }

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v41 = v3;
  }

  type metadata accessor for VectorSearchAssets.Builder();
  inited = swift_initStackObject();
  v34 = MEMORY[0x1E69E7CD0];
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = v34;
  v35 = sub_1DA377700(v41);

  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v36 = *(v35 + 16);

  VectorSearchAssets.init(phrases:)(v37, v48);

  v38 = v48[0];
  v0[17] = v48[0];
  v0[13] = v38;
  v39 = swift_task_alloc();
  v0[18] = v39;
  *v39 = v0;
  v39[1] = sub_1DA389D10;
  v40 = v0[16];

  return DefaultSiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(v0 + 13, 1);
}

uint64_t sub_1DA389D10()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA389E10()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 120);
  sub_1DA394094();
  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t *DefaultSiriAutoCompleteService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v2 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  return v0;
}

uint64_t DefaultSiriAutoCompleteService.__deallocating_deinit()
{
  DefaultSiriAutoCompleteService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 232, 7);
}

uint64_t sub_1DA389EEC(uint64_t *a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA389F94;

  return DefaultSiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(a1, a2);
}

uint64_t sub_1DA389F94()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  OUTLINED_FUNCTION_26_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_29_0();

  return v7(v2);
}

uint64_t sub_1DA38A07C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA38A148;

  return DefaultSiriAutoCompleteService.autoCompleteResults(for:using:)();
}

uint64_t sub_1DA38A148()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_24_1();

  return v5();
}

uint64_t sub_1DA38A22C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3903BC;

  return DefaultSiriAutoCompleteService.insertPhrasesForAssistantSuggestions(phrases:)();
}

uint64_t sub_1DA38A2C4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3903BC;

  return DefaultSiriAutoCompleteService.deletePhrasesForSource(source:deactivateWriteClientAfter:)();
}

uint64_t sub_1DA38A36C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA389F94;

  return DefaultSiriAutoCompleteService.deletePhrasesForApp(bundleIds:)();
}

uint64_t sub_1DA38A404()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3903BC;

  return DefaultSiriAutoCompleteService.increaseTapCountForPhrase(phrase:)();
}

uint64_t sub_1DA38A4AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3903C0;

  return DefaultSiriAutoCompleteService.fetchPhrasesMatching(filters:)();
}

uint64_t sub_1DA38A544()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA38A5D4;

  return DefaultSiriAutoCompleteService.dropDB()();
}

uint64_t sub_1DA38A5D4()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_24_1();

  return v5();
}

uint64_t sub_1DA38A6B4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA38A5D4;

  return DefaultSiriAutoCompleteService.coolDownWriteDBClient()();
}

uint64_t AutoCompleteResult.query.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_26();
}

SiriAutoCompleteAPI::AutoCompleteResult::ResultState_optional __swiftcall AutoCompleteResult.ResultState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA394844();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AutoCompleteResult.ResultState.rawValue.getter()
{
  result = 0x65646E496D6F7266;
  switch(*v0)
  {
    case 1:
      result = 0x686361436D6F7266;
      break;
    case 2:
      result = 0x726F727265;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DA38A8EC@<X0>(unint64_t *a1@<X8>)
{
  result = AutoCompleteResult.ResultState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA38A9C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA394934() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73657361726870 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DA394934() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA394934();

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

uint64_t sub_1DA38AAD4(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0x73657361726870;
  }

  return 0x6574617473;
}

uint64_t sub_1DA38AB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA38A9C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA38AB54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA38AACC();
  *a1 = result;
  return result;
}

uint64_t sub_1DA38AB7C(uint64_t a1)
{
  v2 = sub_1DA38EE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA38ABB8(uint64_t a1)
{
  v2 = sub_1DA38EE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoCompleteResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4F8, &unk_1DA396058);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = *v1;
  v12 = v1[1];
  v18 = v1[2];
  v21 = *(v1 + 24);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA38EE30();
  sub_1DA394A34();
  v25 = 0;
  v14 = v19;
  sub_1DA3948E4();
  if (!v14)
  {
    v15 = v21;
    v20 = v18;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD388, &qword_1DA395A90);
    sub_1DA38EED8(&qword_1ECBAD508, &qword_1EDCC5168);
    sub_1DA394904();
    v23 = v15;
    v22 = 2;
    sub_1DA38EE84();
    sub_1DA394904();
  }

  return (*(v5 + 8))(v10, v3);
}

uint64_t AutoCompleteResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD518, &qword_1DA396068);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA38EE30();
  sub_1DA394A24();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DA394884();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD388, &qword_1DA395A90);
  sub_1DA38EED8(&qword_1ECBAD520, &qword_1EDCC4F50);
  sub_1DA3948A4();
  sub_1DA38EFA4();
  sub_1DA3948A4();
  v13 = OUTLINED_FUNCTION_59();
  v14(v13);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DA38B0E8()
{
  sub_1DA394844();
  OUTLINED_FUNCTION_39_0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DA38B130(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x6B636F6C42707061;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x694D656C61636F6CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA38B218@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA38B0E8();
  *a2 = result;
  return result;
}

unint64_t sub_1DA38B248@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DA38B130(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DA38B274()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DA38B2B8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1DA38B300(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1DA38B324@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1DA38B354()
{
  OUTLINED_FUNCTION_7_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_94(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD470, &qword_1DA395E10);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_105((v9 - 32) / 16);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_93();
        sub_1DA378208(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_6_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA38B428()
{
  OUTLINED_FUNCTION_7_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_1();
      if (v5)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD570, &qword_1DA3964B8);
  v9 = sub_1DA393FD4();
  OUTLINED_FUNCTION_6_2(v9);
  v11 = *(v10 + 72);
  OUTLINED_FUNCTION_130();
  v14 = v13 & ~v12;
  v15 = swift_allocObject();
  v16 = _swift_stdlib_malloc_size(v15);
  if (!v11)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 - v14 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_105((v16 - v14) / v11);
LABEL_18:
  v18 = *(sub_1DA393FD4() - 8);
  if (v1)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_1DA378228(v0 + v19, v7, v15 + v19);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_143();
  }
}

void sub_1DA38B5A4()
{
  OUTLINED_FUNCTION_7_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_6_1();
      if (v5)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v4 = v2;
  }

  if (v4 <= *(v0 + 16))
  {
    v7 = *(v0 + 16);
  }

  else
  {
    v7 = v4;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4E0, &qword_1DA395FC0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
  OUTLINED_FUNCTION_6_2(v8);
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_130();
  v13 = v12 & ~v11;
  v14 = swift_allocObject();
  v15 = _swift_stdlib_malloc_size(v14);
  if (!v10)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 - v13 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_105((v15 - v13) / v10);
LABEL_17:
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20) - 8) + 80);
  if (v1)
  {
    sub_1DA378260();
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_143();
  }
}

void sub_1DA38B738()
{
  OUTLINED_FUNCTION_7_2();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_3();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_94(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD440, &qword_1DA3964A0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_105((v10 - 32) / 8);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_93();
        sub_1DA378240(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v9 + 32), (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_6_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA38B804()
{
  OUTLINED_FUNCTION_7_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_94(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD458, &unk_1DA396490);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_105((v9 - 32) / 40);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_93();
        sub_1DA3783D4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_6_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DA38B8E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DA394914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD560, &qword_1DA3964A8);
        v6 = sub_1DA394514();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DA38C284(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DA38BB4C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DA38B9E4(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1DA394914();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1DA394514();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1DA38BAF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DA38BB4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = v4 + 16 * a3;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = v6;
      v11 = v5;
      do
      {
        v12 = v9 < *(v11 + 8);
        if (v8 != *v11)
        {
          v12 = *v11 < v8;
        }

        if (!v12)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = *v11;
        *v11 = v8;
        *(v11 + 8) = v9;
        v11 -= 16;
      }

      while (!__CFADD__(v10++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DA38BBDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  v5 = *a4 + 40 * a3 - 40;
  v6 = result - a3;
  while (2)
  {
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = (v8 + 40);
      v10 = *(v8 + 75);
      v11 = *(v8 + 35);
      if (v10 != v11)
      {
        if ((v11 & (v10 ^ 1) & 1) == 0)
        {
          break;
        }

        goto LABEL_18;
      }

      v12 = *(v8 + 73);
      v13 = *(v8 + 33);
      if (v12 != v13)
      {
        if ((v12 & (v13 ^ 1) & 1) == 0)
        {
          break;
        }

        goto LABEL_18;
      }

      v14 = *(v8 + 64);
      v15 = *(v8 + 24);
      v16 = v14 < v15;
      if (v14 != v15)
      {
        goto LABEL_15;
      }

      v17 = *(*(v8 + 40) + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
      v18 = *(*v8 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
      if (v17 == v18)
      {
        v19 = *(v8 + 48);
        v20 = *(v8 + 8);
        if (v19 == v20)
        {
          v19 = *(v8 + 56);
          v20 = *(v8 + 16);
        }

        v16 = v20 < v19;
LABEL_15:
        if (!v16)
        {
          break;
        }

        goto LABEL_18;
      }

      if (v17 >= v18)
      {
        break;
      }

LABEL_18:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v21 = *v9;
      *v24 = *(v8 + 56);
      *&v24[14] = *(v8 + 70);
      v22 = *(v8 + 16);
      *v9 = *v8;
      *(v8 + 56) = v22;
      *(v8 + 72) = *(v8 + 32);
      *(v8 + 30) = *&v24[14];
      *v8 = v21;
      *(v8 + 16) = *v24;
      v8 -= 40;
    }

    while (!__CFADD__(v7++, 1));
    ++a3;
    v5 += 40;
    --v6;
    if (a3 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1DA38BD04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 75);
        v10 = *(v8 + 35);
        if (v9 == v10)
        {
          v11 = *(v8 + 73);
          v12 = *(v8 + 33);
          if (v11 == v12)
          {
            if (*(v8 + 8) >= *(v8 + 48))
            {
              break;
            }
          }

          else if ((v11 & (v12 ^ 1) & 1) == 0)
          {
            break;
          }
        }

        else if ((v10 & (v9 ^ 1) & 1) == 0)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v16 = *(v8 + 56);
        v13 = *(v8 + 40);
        v14 = *(v8 + 16);
        *(v8 + 40) = *v8;
        *&v16[14] = *(v8 + 70);
        *(v8 + 56) = v14;
        *(v8 + 72) = *(v8 + 32);
        *(v8 + 30) = *&v16[14];
        *v8 = v13;
        *(v8 + 16) = *v16;
        v8 -= 40;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DA38BDE4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v10 < v9) ^ (v12 >= *(*a3 + 8 * v11++));
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v10 < v9)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (*v25 >= v23)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_1DA378078();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1DA378078();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1DA38D7F4((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DA38D6C8(&v78, *a1, a3);
LABEL_89:
}

void sub_1DA38C284(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v97 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v87 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v87 = i)
      {
        if (!*a3)
        {
          goto LABEL_133;
        }

        v89 = &v8[16 * i];
        v90 = *v89;
        v91 = &v87[2 * i];
        v92 = v91[1];
        sub_1DA38D968((*a3 + 16 * *v89), (*a3 + 16 * *v91), (*a3 + 16 * v92), v97);
        if (v5)
        {
          break;
        }

        if (v92 < v90)
        {
          goto LABEL_121;
        }

        if (i - 2 >= *v87)
        {
          goto LABEL_122;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        v93 = *v87 - i;
        if (*v87 < i)
        {
          goto LABEL_123;
        }

        i = *v87 - 1;
        memmove(v91, v91 + 2, 16 * v93);
      }

LABEL_105:

      return;
    }

LABEL_130:
    v8 = sub_1DA38E010(v8);
    goto LABEL_97;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v9 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v10 = *a3 + 16 * v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *a3 + 16 * v7;
      v14 = 16 * v7;
      v15 = *v13 < *v10;
      v16 = *&v12 < *(v13 + 8);
      if (v11 != *v13)
      {
        v16 = v15;
      }

      v17 = (v13 + 40);
      v18 = v7 + 2;
      while (1)
      {
        v19 = v18;
        if (++v9 >= v6)
        {
          break;
        }

        v20 = *(v17 - 1);
        v22 = *v17;
        v17 += 2;
        v21 = v22;
        v23 = *&v22 >= *&v12;
        if (v20 == v11)
        {
          v24 = v23;
        }

        else
        {
          v24 = v11 >= v20;
        }

        ++v18;
        v12 = v21;
        v11 = v20;
        if (v16 == v24)
        {
          if (!v16)
          {
            goto LABEL_25;
          }

          goto LABEL_15;
        }
      }

      v9 = v6;
      if (!v16)
      {
        goto LABEL_25;
      }

LABEL_15:
      if (v9 < v7)
      {
        goto LABEL_127;
      }

      if (v7 < v9)
      {
        if (v6 >= v19)
        {
          v6 = v19;
        }

        v25 = 16 * v6;
        v26 = v9;
        v27 = v7;
        do
        {
          if (v27 != --v26)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_134;
            }

            v29 = (v28 + v14);
            v30 = v28 + v25;
            v31 = *v29;
            v32 = v29[1];
            *v29 = *(v30 - 16);
            *(v30 - 16) = v31;
            *(v30 - 8) = v32;
          }

          ++v27;
          v25 -= 16;
          v14 += 16;
        }

        while (v27 < v26);
        v6 = a3[1];
      }
    }

LABEL_25:
    if (v9 < v6)
    {
      if (__OFSUB__(v9, v7))
      {
        goto LABEL_126;
      }

      if (v9 - v7 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v9 < v7)
    {
      goto LABEL_125;
    }

    v96 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = *(v8 + 2);
      sub_1DA378078();
      v8 = v85;
    }

    v43 = *(v8 + 2);
    v44 = v43 + 1;
    if (v43 >= *(v8 + 3) >> 1)
    {
      sub_1DA378078();
      v8 = v86;
    }

    *(v8 + 2) = v44;
    v45 = v8 + 32;
    v46 = &v8[16 * v43 + 32];
    *v46 = v7;
    *(v46 + 1) = v9;
    v97 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        v48 = &v45[16 * v44 - 16];
        v49 = &v8[16 * v44];
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_63:
          if (v53)
          {
            goto LABEL_112;
          }

          v65 = *v49;
          v64 = *(v49 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_115;
          }

          v69 = *(v48 + 1);
          v70 = v69 - *v48;
          if (__OFSUB__(v69, *v48))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v67, v70))
          {
            goto LABEL_120;
          }

          if (v67 + v70 >= v52)
          {
            if (v52 < v70)
            {
              v47 = v44 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v44 < 2)
        {
          goto LABEL_114;
        }

        v72 = *v49;
        v71 = *(v49 + 1);
        v60 = __OFSUB__(v71, v72);
        v67 = v71 - v72;
        v68 = v60;
LABEL_78:
        if (v68)
        {
          goto LABEL_117;
        }

        v74 = *v48;
        v73 = *(v48 + 1);
        v60 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v60)
        {
          goto LABEL_119;
        }

        if (v75 < v67)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v79 = &v45[16 * v47 - 16];
        v80 = *v79;
        v81 = &v45[16 * v47];
        v82 = *(v81 + 1);
        sub_1DA38D968((*a3 + 16 * *v79), (*a3 + 16 * *v81), (*a3 + 16 * v82), v97);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v82 < v80)
        {
          goto LABEL_107;
        }

        v5 = v8;
        v8 = *(v8 + 2);
        if (v47 > v8)
        {
          goto LABEL_108;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        if (v47 >= v8)
        {
          goto LABEL_109;
        }

        v44 = (v8 - 1);
        memmove(&v45[16 * v47], v81 + 16, 16 * &v8[-v47 - 1]);
        *(v5 + 2) = v8 - 1;
        v83 = v8 > 2;
        v8 = v5;
        v5 = 0;
        if (!v83)
        {
          goto LABEL_92;
        }
      }

      v54 = &v45[16 * v44];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_110;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_111;
      }

      v61 = *(v49 + 1);
      v62 = v61 - *v49;
      if (__OFSUB__(v61, *v49))
      {
        goto LABEL_113;
      }

      v60 = __OFADD__(v52, v62);
      v63 = v52 + v62;
      if (v60)
      {
        goto LABEL_116;
      }

      if (v63 >= v57)
      {
        v77 = *v48;
        v76 = *(v48 + 1);
        v60 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v60)
        {
          goto LABEL_124;
        }

        if (v52 < v78)
        {
          v47 = v44 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v6 = a3[1];
    v7 = v96;
    a4 = v94;
    if (v96 >= v6)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_128;
  }

  if (v7 + a4 < v6)
  {
    v6 = v7 + a4;
  }

  if (v6 < v7)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v9 == v6)
  {
    goto LABEL_43;
  }

  v33 = *a3;
  v34 = *a3 + 16 * v9 - 16;
  v35 = v7 - v9;
LABEL_34:
  v36 = v33 + 16 * v9;
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v38 < *(v40 + 8);
    if (v37 != *v40)
    {
      v41 = *v40 < v37;
    }

    if (!v41)
    {
LABEL_41:
      ++v9;
      v34 += 16;
      --v35;
      if (v9 == v6)
      {
        v9 = v6;
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    if (!v33)
    {
      break;
    }

    *(v40 + 16) = *v40;
    *v40 = v37;
    *(v40 + 8) = v38;
    v40 -= 16;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_1DA38C840(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v121 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_117;
    }

    goto LABEL_151;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = (v7 + 1);
    if ((v7 + 1) < v6)
    {
      v10 = v8;
      v11 = *v138;
      v8 = v7 + 1;
      v12 = *v138 + 40 * (v7 + 1);
      v13 = *v12;
      v14 = *(v12 + 16);
      *(v135 + 14) = *(v12 + 30);
      v134 = v13;
      v135[0] = v14;
      v15 = *(v12 + 16);
      v132 = *v12;
      v133[0] = v15;
      *(v133 + 14) = *(v12 + 30);
      v16 = (v11 + 40 * v7);
      v17 = *(v16 + 30);
      v18 = v16[1];
      v136 = *v16;
      v137[0] = v18;
      *(v137 + 14) = v17;
      v19 = v16[1];
      v130 = *v16;
      v131[0] = v19;
      *(v131 + 14) = *(v16 + 30);
      v20 = sub_1DA387AB0(&v132, &v130);
      if (v5)
      {
        v126 = v130;
        v127[0] = v131[0];
        *(v127 + 14) = *(v131 + 14);
        sub_1DA38FE94(&v134, &v128);
        sub_1DA38FE94(&v136, &v128);
        sub_1DA38FECC(&v126);
        v128 = v132;
        v129[0] = v133[0];
        *(v129 + 14) = *(v133 + 14);
        sub_1DA38FECC(&v128);
LABEL_125:

        return;
      }

      v21 = v20;
      v126 = v130;
      v127[0] = v131[0];
      *(v127 + 14) = *(v131 + 14);
      sub_1DA38FE94(&v134, v124);
      sub_1DA38FE94(&v136, v124);
      sub_1DA38FECC(&v126);
      v128 = v132;
      v129[0] = v133[0];
      *(v129 + 14) = *(v133 + 14);
      sub_1DA38FECC(&v128);
      v22 = 40 * v7;
      v23 = (v11 + 40 * v7 + 115);
      v24 = v7 + 2;
      v9 = (v7 + 1);
      do
      {
        v25 = v24;
        if (v9 + 1 >= v6)
        {
          v9 = v6;
          if ((v21 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_22;
        }

        v26 = *v23;
        v27 = *(v23 - 40);
        if (v26 == v27)
        {
          v29 = *(v23 - 2);
          v30 = *(v23 - 42);
          if (v29 == v30)
          {
            v31 = *(v23 - 11);
            v32 = *(v23 - 51);
            if (v31 == v32)
            {
              v33 = *(v23 - 27);
              v34 = *(v23 - 67);
              v35 = *(*(v23 - 35) + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
              v36 = *(*(v23 - 75) + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
              v37 = *(v23 - 59) < *(v23 - 19);
              if (v33 != v34)
              {
                v37 = v34 < v33;
              }

              v38 = v35 == v36;
              v28 = v35 < v36;
              if (v38)
              {
                v28 = v37;
              }
            }

            else
            {
              v28 = v31 < v32;
            }
          }

          else
          {
            v28 = v29 & (v30 ^ 1);
          }
        }

        else
        {
          v28 = v27 & (v26 ^ 1);
        }

        v23 += 40;
        ++v9;
        v24 = (v25 + 1);
      }

      while ((v21 & 1) == v28);
      if ((v21 & 1) == 0)
      {
LABEL_32:
        v8 = v10;
        goto LABEL_33;
      }

LABEL_22:
      if (v9 < v7)
      {
        goto LABEL_150;
      }

      if (v7 >= v9)
      {
        goto LABEL_32;
      }

      if (v6 < v25)
      {
        v25 = v6;
      }

      v39 = 40 * v25 - 40;
      v40 = v9;
      v41 = v7;
      v8 = v10;
      do
      {
        if (v41 != --v40)
        {
          v42 = *v138;
          if (!*v138)
          {
            goto LABEL_155;
          }

          v43 = (v42 + v22);
          v44 = (v42 + v39);
          v125[0] = v43[1];
          *(v125 + 14) = *(v43 + 30);
          v45 = *v43;
          v46 = *(v44 + 4);
          v47 = v44[1];
          *v43 = *v44;
          v43[1] = v47;
          *(v43 + 4) = v46;
          *v44 = v45;
          *(v44 + 30) = *(v125 + 14);
          v44[1] = v125[0];
        }

        ++v41;
        v39 -= 40;
        v22 += 40;
      }

      while (v41 < v40);
    }

LABEL_33:
    v48 = v138[1];
    if (v9 < v48)
    {
      if (__OFSUB__(v9, v7))
      {
        goto LABEL_147;
      }

      if (v9 - v7 < a4)
      {
        break;
      }
    }

LABEL_62:
    if (v9 < v7)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = *(v8 + 2);
      sub_1DA378078();
      v8 = v111;
    }

    v69 = *(v8 + 2);
    v70 = v69 + 1;
    if (v69 >= *(v8 + 3) >> 1)
    {
      sub_1DA378078();
      v8 = v112;
    }

    *(v8 + 2) = v70;
    v71 = v8 + 32;
    v72 = &v8[16 * v69 + 32];
    *v72 = v7;
    *(v72 + 1) = v9;
    v122 = *a1;
    if (!*a1)
    {
      goto LABEL_156;
    }

    v121 = v9;
    if (v69)
    {
      while (1)
      {
        v73 = v70 - 1;
        v74 = &v71[16 * v70 - 16];
        v75 = &v8[16 * v70];
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v76 = *(v8 + 4);
          v77 = *(v8 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_82:
          if (v79)
          {
            goto LABEL_133;
          }

          v91 = *v75;
          v90 = *(v75 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_136;
          }

          v95 = *(v74 + 1);
          v96 = v95 - *v74;
          if (__OFSUB__(v95, *v74))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v93, v96))
          {
            goto LABEL_141;
          }

          if (v93 + v96 >= v78)
          {
            if (v78 < v96)
            {
              v73 = v70 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v70 < 2)
        {
          goto LABEL_135;
        }

        v98 = *v75;
        v97 = *(v75 + 1);
        v86 = __OFSUB__(v97, v98);
        v93 = v97 - v98;
        v94 = v86;
LABEL_97:
        if (v94)
        {
          goto LABEL_138;
        }

        v100 = *v74;
        v99 = *(v74 + 1);
        v86 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v86)
        {
          goto LABEL_140;
        }

        if (v101 < v93)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v73 - 1 >= v70)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v138)
        {
          goto LABEL_153;
        }

        v105 = &v71[16 * v73 - 16];
        v106 = *v105;
        v107 = &v71[16 * v73];
        v108 = *(v107 + 1);
        sub_1DA38DB2C((*v138 + 40 * *v105), (*v138 + 40 * *v107), (*v138 + 40 * v108), v122);
        if (v5)
        {
          goto LABEL_125;
        }

        if (v108 < v106)
        {
          goto LABEL_128;
        }

        v5 = *(v8 + 2);
        if (v73 > v5)
        {
          goto LABEL_129;
        }

        *v105 = v106;
        *(v105 + 1) = v108;
        if (v73 >= v5)
        {
          goto LABEL_130;
        }

        v70 = v5 - 1;
        memmove(&v71[16 * v73], v107 + 16, 16 * (v5 - 1 - v73));
        *(v8 + 2) = v5 - 1;
        v109 = v5 > 2;
        v5 = 0;
        if (!v109)
        {
          goto LABEL_111;
        }
      }

      v80 = &v71[16 * v70];
      v81 = *(v80 - 8);
      v82 = *(v80 - 7);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_131;
      }

      v85 = *(v80 - 6);
      v84 = *(v80 - 5);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_132;
      }

      v87 = *(v75 + 1);
      v88 = v87 - *v75;
      if (__OFSUB__(v87, *v75))
      {
        goto LABEL_134;
      }

      v86 = __OFADD__(v78, v88);
      v89 = v78 + v88;
      if (v86)
      {
        goto LABEL_137;
      }

      if (v89 >= v83)
      {
        v103 = *v74;
        v102 = *(v74 + 1);
        v86 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v86)
        {
          goto LABEL_145;
        }

        if (v78 < v104)
        {
          v73 = v70 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v6 = v138[1];
    v7 = v121;
    if (v121 >= v6)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_148;
  }

  if (&v7[a4] < v48)
  {
    v48 = &v7[a4];
  }

  if (v48 < v7)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v8 = sub_1DA38E010(v8);
LABEL_117:
    v123 = v8;
    v113 = (v8 + 16);
    for (i = *(v8 + 2); i >= 2; *v113 = i)
    {
      if (!*v138)
      {
        goto LABEL_154;
      }

      v115 = &v123[16 * i];
      v116 = *v115;
      v8 = &v113[2 * i];
      v117 = *(v8 + 1);
      sub_1DA38DB2C((*v138 + 40 * *v115), (*v138 + 40 * *v8), (*v138 + 40 * v117), v121);
      if (v5)
      {
        break;
      }

      if (v117 < v116)
      {
        goto LABEL_142;
      }

      if (i - 2 >= *v113)
      {
        goto LABEL_143;
      }

      *v115 = v116;
      *(v115 + 1) = v117;
      v118 = *v113 - i;
      if (*v113 < i)
      {
        goto LABEL_144;
      }

      i = *v113 - 1;
      memmove(v8, v8 + 16, 16 * v118);
    }

    goto LABEL_125;
  }

  if (v9 == v48)
  {
    goto LABEL_62;
  }

  v49 = *v138;
  v50 = *v138 + 40 * v9 - 40;
  v51 = &v7[-v9];
LABEL_42:
  v52 = v51;
  v53 = v50;
  while (1)
  {
    v54 = (v53 + 40);
    v55 = *(v53 + 75);
    v56 = *(v53 + 35);
    if (v55 != v56)
    {
      if ((v56 & (v55 ^ 1) & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

    v57 = *(v53 + 73);
    v58 = *(v53 + 33);
    if (v57 != v58)
    {
      if ((v57 & (v58 ^ 1) & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

    v59 = *(v53 + 64);
    v60 = *(v53 + 24);
    v61 = v59 < v60;
    if (v59 != v60)
    {
      goto LABEL_54;
    }

    v62 = *(*(v53 + 40) + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
    v63 = *(*v53 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
    if (v62 == v63)
    {
      v64 = *(v53 + 48);
      v65 = *(v53 + 8);
      if (v64 == v65)
      {
        v64 = *(v53 + 56);
        v65 = *(v53 + 16);
      }

      v61 = v65 < v64;
LABEL_54:
      if (!v61)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

    if (v62 >= v63)
    {
      goto LABEL_60;
    }

LABEL_57:
    if (!v49)
    {
      break;
    }

    v137[0] = *(v53 + 56);
    *(v137 + 14) = *(v53 + 70);
    v66 = *v54;
    v67 = *(v53 + 16);
    *v54 = *v53;
    *(v53 + 56) = v67;
    *(v53 + 72) = *(v53 + 32);
    *v53 = v66;
    *(v53 + 30) = *(v137 + 14);
    *(v53 + 16) = v137[0];
    v53 -= 40;
    if (__CFADD__(v52++, 1))
    {
LABEL_60:
      ++v9;
      v50 += 40;
      --v51;
      if (v9 == v48)
      {
        v9 = v48;
        goto LABEL_62;
      }

      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

void sub_1DA38D050(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = a4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v4)
      {
        v9 = *a3 + 40 * v6;
        v10 = *(v9 + 8);
        v11 = *(v9 + 33);
        v12 = *(v9 + 35);
        v13 = *a3 + 40 * v8;
        v14 = *(v13 + 8);
        v15 = *(v13 + 33);
        v16 = *(v13 + 35);
        if (v11 == v15)
        {
          v17 = v14 < v10;
        }

        else
        {
          v17 = v11 & (v15 ^ 1);
        }

        if (v12 == v16)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16 & (v12 ^ 1);
        }

        v19 = v8 + 2;
        if (v4 > v8 + 2)
        {
          v19 = v4;
        }

        v20 = 40 * v8;
        v21 = (*a3 + 40 * v8 + 115);
        while (++v6 < v4)
        {
          v22 = *(v21 - 2);
          v23 = *v21;
          v24 = *(v21 - 42);
          v25 = *(v21 - 40);
          if (v22 == v24)
          {
            v26 = *(v21 - 67) < *(v21 - 27);
          }

          else
          {
            v26 = v22 & (v24 ^ 1);
          }

          if (v23 != v25)
          {
            v26 = v25 & (v23 ^ 1);
          }

          v21 += 40;
          if (v18 != v26)
          {
            if (!v18)
            {
              goto LABEL_31;
            }

            goto LABEL_23;
          }
        }

        v6 = v19;
        if (!v18)
        {
          goto LABEL_31;
        }

LABEL_23:
        if (v6 < v8)
        {
          goto LABEL_137;
        }

        if (v8 < v6)
        {
          v27 = 40 * v6 - 40;
          v28 = v6;
          v29 = v8;
          do
          {
            if (v29 != --v28)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v31 = (v30 + v20);
              v32 = (v30 + v27);
              v33 = *v31;
              *v103 = v31[1];
              *&v103[14] = *(v31 + 30);
              v34 = *(v32 + 4);
              v35 = v32[1];
              *v31 = *v32;
              v31[1] = v35;
              *(v31 + 4) = v34;
              *(v32 + 30) = *&v103[14];
              *v32 = v33;
              v32[1] = *v103;
            }

            ++v29;
            v27 -= 40;
            v20 += 40;
          }

          while (v29 < v28);
          v4 = a3[1];
        }
      }

LABEL_31:
      if (v6 < v4)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_136;
        }

        if (v6 - v8 < v5)
        {
          if (__OFADD__(v8, v5))
          {
            goto LABEL_138;
          }

          if (v8 + v5 < v4)
          {
            v4 = v8 + v5;
          }

          if (v4 >= v8)
          {
            if (v6 == v4)
            {
              goto LABEL_53;
            }

            v36 = *a3;
            v37 = *a3 + 40 * v6 - 40;
            v38 = v8 - v6;
LABEL_40:
            v39 = v38;
            v40 = v37;
            while (1)
            {
              v41 = *(v40 + 75);
              v42 = *(v40 + 35);
              if (v41 == v42)
              {
                v43 = *(v40 + 73);
                v44 = *(v40 + 33);
                if (v43 == v44)
                {
                  if (*(v40 + 8) >= *(v40 + 48))
                  {
                    goto LABEL_51;
                  }
                }

                else if ((v43 & (v44 ^ 1) & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

              else if ((v42 & (v41 ^ 1) & 1) == 0)
              {
                goto LABEL_51;
              }

              if (!v36)
              {
                break;
              }

              *v104 = *(v40 + 56);
              v45 = *(v40 + 40);
              v46 = *(v40 + 16);
              *(v40 + 40) = *v40;
              *&v104[14] = *(v40 + 70);
              *(v40 + 56) = v46;
              *(v40 + 72) = *(v40 + 32);
              *(v40 + 30) = *&v104[14];
              *v40 = v45;
              *(v40 + 16) = *v104;
              v40 -= 40;
              if (__CFADD__(v39++, 1))
              {
LABEL_51:
                ++v6;
                v37 += 40;
                --v38;
                if (v6 == v4)
                {
                  v6 = v4;
                  goto LABEL_53;
                }

                goto LABEL_40;
              }
            }

            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

LABEL_139:
          __break(1u);
LABEL_140:
          v7 = sub_1DA38E010(v7);
          goto LABEL_107;
        }
      }

LABEL_53:
      if (v6 < v8)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = *(v7 + 16);
        sub_1DA378078();
        v7 = v90;
      }

      v48 = *(v7 + 16);
      v49 = v48 + 1;
      if (v48 >= *(v7 + 24) >> 1)
      {
        sub_1DA378078();
        v7 = v91;
      }

      *(v7 + 16) = v49;
      v50 = v7 + 32;
      v51 = (v7 + 32 + 16 * v48);
      *v51 = v8;
      v51[1] = v6;
      v101 = *a1;
      if (!*a1)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      if (v48)
      {
        break;
      }

LABEL_102:
      v4 = a3[1];
      v5 = a4;
      if (v6 >= v4)
      {
        goto LABEL_105;
      }
    }

    while (1)
    {
      v52 = v49 - 1;
      v53 = (v50 + 16 * (v49 - 1));
      v54 = (v7 + 16 * v49);
      if (v49 >= 4)
      {
        break;
      }

      if (v49 == 3)
      {
        v55 = *(v7 + 32);
        v56 = *(v7 + 40);
        v65 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        v58 = v65;
LABEL_73:
        if (v58)
        {
          goto LABEL_122;
        }

        v70 = *v54;
        v69 = v54[1];
        v71 = __OFSUB__(v69, v70);
        v72 = v69 - v70;
        v73 = v71;
        if (v71)
        {
          goto LABEL_125;
        }

        v74 = v53[1];
        v75 = v74 - *v53;
        if (__OFSUB__(v74, *v53))
        {
          goto LABEL_128;
        }

        if (__OFADD__(v72, v75))
        {
          goto LABEL_130;
        }

        if (v72 + v75 >= v57)
        {
          if (v57 < v75)
          {
            v52 = v49 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_88;
      }

      if (v49 < 2)
      {
        goto LABEL_124;
      }

      v77 = *v54;
      v76 = v54[1];
      v65 = __OFSUB__(v76, v77);
      v72 = v76 - v77;
      v73 = v65;
LABEL_88:
      if (v73)
      {
        goto LABEL_127;
      }

      v79 = *v53;
      v78 = v53[1];
      v65 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v65)
      {
        goto LABEL_129;
      }

      if (v80 < v72)
      {
        goto LABEL_102;
      }

LABEL_95:
      if (v52 - 1 >= v49)
      {
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      if (!*a3)
      {
        goto LABEL_142;
      }

      v84 = v7;
      v85 = (v50 + 16 * (v52 - 1));
      v86 = *v85;
      v87 = (v50 + 16 * v52);
      v7 = v87[1];
      sub_1DA38DDEC((*a3 + 40 * *v85), (*a3 + 40 * *v87), (*a3 + 40 * v7), v101);
      if (v105)
      {
        goto LABEL_115;
      }

      if (v7 < v86)
      {
        goto LABEL_117;
      }

      v88 = *(v84 + 16);
      if (v52 > v88)
      {
        goto LABEL_118;
      }

      *v85 = v86;
      v85[1] = v7;
      if (v52 >= v88)
      {
        goto LABEL_119;
      }

      v105 = 0;
      v49 = v88 - 1;
      memmove((v50 + 16 * v52), v87 + 2, 16 * (v88 - 1 - v52));
      v7 = v84;
      *(v84 + 16) = v88 - 1;
      if (v88 <= 2)
      {
        goto LABEL_102;
      }
    }

    v59 = v50 + 16 * v49;
    v60 = *(v59 - 64);
    v61 = *(v59 - 56);
    v65 = __OFSUB__(v61, v60);
    v62 = v61 - v60;
    if (v65)
    {
      goto LABEL_120;
    }

    v64 = *(v59 - 48);
    v63 = *(v59 - 40);
    v65 = __OFSUB__(v63, v64);
    v57 = v63 - v64;
    v58 = v65;
    if (v65)
    {
      goto LABEL_121;
    }

    v66 = v54[1];
    v67 = v66 - *v54;
    if (__OFSUB__(v66, *v54))
    {
      goto LABEL_123;
    }

    v65 = __OFADD__(v57, v67);
    v68 = v57 + v67;
    if (v65)
    {
      goto LABEL_126;
    }

    if (v68 >= v62)
    {
      v82 = *v53;
      v81 = v53[1];
      v65 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v65)
      {
        goto LABEL_134;
      }

      if (v57 < v83)
      {
        v52 = v49 - 2;
      }

      goto LABEL_95;
    }

    goto LABEL_73;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_105:
  v101 = *a1;
  if (!*a1)
  {
LABEL_146:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_140;
  }

LABEL_107:
  v92 = (v7 + 16);
  v93 = *(v7 + 16);
  while (v93 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_143;
    }

    v94 = v7;
    v95 = (v7 + 16 * v93);
    v96 = *v95;
    v97 = &v92[2 * v93];
    v7 = v97[1];
    sub_1DA38DDEC((*a3 + 40 * *v95), (*a3 + 40 * *v97), (*a3 + 40 * v7), v101);
    if (v105)
    {
      break;
    }

    if (v7 < v96)
    {
      goto LABEL_131;
    }

    if (v93 - 2 >= *v92)
    {
      goto LABEL_132;
    }

    *v95 = v96;
    v95[1] = v7;
    v98 = *v92 - v93;
    if (*v92 < v93)
    {
      goto LABEL_133;
    }

    v105 = 0;
    v93 = *v92 - 1;
    memmove(v97, v97 + 2, 16 * v98);
    *v92 = v93;
    v7 = v94;
  }

LABEL_115:
}

uint64_t sub_1DA38D6C8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DA38E010(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DA38D7F4((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DA38D7F4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1DA378240(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v4 >= *v6)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1DA378240(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (*v14 < v16)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_1DA38D968(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1DA378208(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_32;
      }

      v12 = *(v6 + 1) < *(v4 + 1);
      if (*v6 != *v4)
      {
        v12 = *v4 < *v6;
      }

      if (!v12)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 16;
      if (!v14)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 16;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 16;
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v7 = *v13;
    goto LABEL_15;
  }

  sub_1DA378208(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_17:
  v15 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v17 = *(v10 - 2);
    v18 = *(v6 - 2);
    v19 = *(v10 - 1) < *(v6 - 1);
    if (v17 != v18)
    {
      v19 = v18 < v17;
    }

    if (v19)
    {
      v14 = v5 + 16 == v6;
      v6 -= 16;
      if (!v14)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_17;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_32:
  v20 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v20])
  {
    memmove(v6, v4, 16 * v20);
  }

  return 1;
}

uint64_t sub_1DA38DB2C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1DA3783D4(a1, (a2 - a1) / 40, a4);
    v10 = &v4[5 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v27 = v7;
        goto LABEL_52;
      }

      v12 = v6[35];
      v13 = *(v4 + 35);
      if (v12 != v13)
      {
        if ((v13 & (v12 ^ 1) & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

      v16 = v6[33];
      v17 = *(v4 + 33);
      if (v16 != v17)
      {
        if ((v16 & (v17 ^ 1) & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

      v20 = *(v6 + 3);
      v21 = v4[3];
      v22 = v20 < v21;
      if (v20 != v21)
      {
        goto LABEL_22;
      }

      v23 = *(*v6 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
      v24 = *(*v4 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
      if (v23 == v24)
      {
        break;
      }

      if (v23 >= v24)
      {
LABEL_14:
        v14 = v4;
        v15 = v7 == v4;
        v4 += 5;
        if (v15)
        {
          goto LABEL_16;
        }

LABEL_15:
        v18 = *v14;
        v19 = *(v14 + 1);
        *(v7 + 4) = v14[4];
        *v7 = v18;
        *(v7 + 1) = v19;
        goto LABEL_16;
      }

LABEL_9:
      v14 = v6;
      v15 = v7 == v6;
      v6 += 40;
      if (!v15)
      {
        goto LABEL_15;
      }

LABEL_16:
      v7 += 40;
    }

    v25 = *(v6 + 1);
    v26 = v4[1];
    if (v25 == v26)
    {
      v25 = *(v6 + 2);
      v26 = v4[2];
    }

    v22 = v26 < v25;
LABEL_22:
    if (!v22)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_1DA3783D4(a2, (a3 - a2) / 40, a4);
  v10 = &v4[5 * v9];
LABEL_27:
  v27 = v6;
  v6 -= 40;
  v28 = v10;
  while (1)
  {
    v10 = v28;
    if (v28 <= v4 || v27 <= v7)
    {
      break;
    }

    v30 = v5;
    v28 -= 5;
    v31 = *(v10 - 5);
    v32 = *(v27 - 5);
    if (v31 != v32)
    {
      v33 = v32 & (v31 ^ 1);
      goto LABEL_37;
    }

    v34 = *(v10 - 7);
    v35 = *(v27 - 7);
    if (v34 != v35)
    {
      v33 = v34 & (v35 ^ 1);
LABEL_37:
      v5 -= 40;
      if (v33)
      {
        goto LABEL_49;
      }

      goto LABEL_38;
    }

    v38 = *(v10 - 2);
    v39 = *(v27 - 2);
    if (v38 == v39)
    {
      v40 = *(*(v10 - 5) + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
      v41 = *(*(v27 - 5) + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
      v5 -= 40;
      if (v40 == v41)
      {
        v42 = *(v10 - 4);
        v43 = *(v27 - 4);
        if (v42 == v43)
        {
          v42 = *(v10 - 3);
          v43 = *(v27 - 3);
        }

        if (v43 < v42)
        {
LABEL_49:
          if (v30 != v27)
          {
            v44 = *v6;
            v45 = *(v6 + 1);
            *(v5 + 4) = *(v6 + 4);
            *v5 = v44;
            *(v5 + 1) = v45;
          }

          goto LABEL_27;
        }
      }

      else if (v40 < v41)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v5 -= 40;
      if (v38 < v39)
      {
        goto LABEL_49;
      }
    }

LABEL_38:
    if (v10 != v30)
    {
      v36 = *v28;
      v37 = *(v10 - 3);
      *(v5 + 4) = *(v10 - 1);
      *v5 = v36;
      *(v5 + 1) = v37;
    }
  }

LABEL_52:
  v46 = 5 * ((v10 - v4) / 40);
  if (v27 != v4 || v27 >= &v4[v46])
  {
    memmove(v27, v4, v46 * 8);
  }

  return 1;
}

uint64_t sub_1DA38DDEC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1DA3783D4(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v20 = v7;
        goto LABEL_38;
      }

      v12 = v6[35];
      v13 = v4[35];
      if (v12 == v13)
      {
        v16 = v6[33];
        v17 = v4[33];
        if (v16 == v17)
        {
          if (*(v4 + 1) >= *(v6 + 1))
          {
LABEL_16:
            v14 = v4;
            v15 = v7 == v4;
            v4 += 40;
            if (v15)
            {
              goto LABEL_18;
            }

LABEL_17:
            v18 = *v14;
            v19 = *(v14 + 1);
            *(v7 + 4) = *(v14 + 4);
            *v7 = v18;
            *(v7 + 1) = v19;
            goto LABEL_18;
          }
        }

        else if ((v16 & (v17 ^ 1) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if ((v13 & (v12 ^ 1) & 1) == 0)
      {
        goto LABEL_16;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 40;
      if (!v15)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 40;
    }
  }

  sub_1DA3783D4(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_20:
  v20 = v6;
  v21 = v5;
  while (v10 > v4 && v6 > v7)
  {
    v23 = *(v10 - 5);
    v24 = *(v6 - 5);
    if (v23 != v24)
    {
      v25 = v24 & (v23 ^ 1);
      goto LABEL_30;
    }

    v26 = *(v10 - 7);
    v27 = *(v6 - 7);
    if (v26 != v27)
    {
      v25 = v26 & (v27 ^ 1);
LABEL_30:
      v5 = v21 - 40;
      if (v25)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    v5 = v21 - 40;
    if (*(v6 - 4) < *(v10 - 4))
    {
LABEL_35:
      v6 -= 40;
      if (v21 != v20)
      {
        v31 = *v6;
        v32 = *(v20 - 24);
        *(v5 + 4) = *(v20 - 1);
        *v5 = v31;
        *(v5 + 1) = v32;
      }

      goto LABEL_20;
    }

LABEL_33:
    v28 = v10 - 40;
    v15 = v10 == v21;
    v21 = v5;
    v10 -= 40;
    if (!v15)
    {
      v29 = *v28;
      v30 = *(v28 + 1);
      *(v5 + 4) = *(v28 + 4);
      *v5 = v29;
      *(v5 + 1) = v30;
      v21 = v5;
      v10 = v28;
    }
  }

LABEL_38:
  v33 = 40 * ((v10 - v4) / 40);
  if (v20 != v4 || v20 >= &v4[v33])
  {
    memmove(v20, v4, v33);
  }

  return 1;
}

char *sub_1DA38E024(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD468, &qword_1DA395E08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1DA38E124(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_1DA393EC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[3] = &type metadata for DefaultSiriAutoCompleteFeatureFlagsProvider;
  v57[4] = &protocol witness table for DefaultSiriAutoCompleteFeatureFlagsProvider;
  v44 = a1;
  sub_1DA390014(a1, v7, &qword_1ECBAD400, &unk_1DA395B90);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    if (qword_1EDCC5A20 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v8, qword_1EDCC5AA0);
    (*(v9 + 16))(v12, v13, v8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_1DA36CB60(v7, &qword_1ECBAD400, &unk_1DA395B90);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  v14 = type metadata accessor for VectorDBWriteClientManager();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v43 = sub_1DA38FEFC(v12, v17);
  v18 = type metadata accessor for DefaultProfanityPreferenceProvider();
  v19 = swift_allocObject();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD568, &qword_1DA3964B0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v19 + 16) = sub_1DA394274();
  v23 = type metadata accessor for DefaultBlockedAppsProvider();
  swift_allocObject();
  v24 = sub_1DA3739A4();
  type metadata accessor for TypingSessionCacheProvider();
  swift_allocObject();
  v45 = sub_1DA3749D8(a2 & 1, 50);
  sub_1DA368CE0(v57, v56);
  if (qword_1EDCC5950 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDCC5958;
  v54 = type metadata accessor for DefaultMorphunTokenizer();
  v55 = &protocol witness table for DefaultMorphunTokenizer;
  *&v53 = v25;
  v26 = qword_1EDCC5960;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDCC5968;
  v51 = type metadata accessor for DefaultLocaleProvider();
  v52 = &protocol witness table for DefaultLocaleProvider;
  *&v50 = v27;
  v49[4] = &off_1F55E53E0;
  v49[3] = v18;
  v49[0] = v19;
  v48 = &off_1F55E5210;
  v47 = v23;
  v46[0] = v24;
  type metadata accessor for DefaultSiriAutoCompleteService();
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v49, v18);
  v30 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = v47;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v32;
  v41 = *v38;
  v28[11] = v18;
  v28[12] = &off_1F55E53E0;
  v28[13] = v41;
  v28[8] = v40;
  v28[16] = v23;
  v28[17] = &off_1F55E5210;

  sub_1DA36CB60(v44, &qword_1ECBAD400, &unk_1DA395B90);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1DA366D48(v56, (v28 + 2));
  v28[7] = v43;
  v28[18] = v45;
  sub_1DA366D48(&v53, (v28 + 19));
  sub_1DA366D48(&v50, (v28 + 24));
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v28;
}

void *sub_1DA38E6EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a4;
  LODWORD(v55) = a3;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v54 - v16;
  v18 = sub_1DA393EC4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70[3] = a5;
  v70[4] = a6;
  v58 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  (*(v10 + 32))(boxed_opaque_existential_1, a1, a5);
  v57 = a2;
  sub_1DA390014(a2, v17, &qword_1ECBAD400, &unk_1DA395B90);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    if (qword_1EDCC5A20 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v18, qword_1EDCC5AA0);
    (*(v19 + 16))(v22, v24, v18);
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      sub_1DA36CB60(v17, &qword_1ECBAD400, &unk_1DA395B90);
    }
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
  }

  v25 = type metadata accessor for VectorDBWriteClientManager();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  (*(v10 + 16))(v13, boxed_opaque_existential_1, a5);
  v58 = sub_1DA3765D4(v13, v22, v28, a5, v58);
  v29 = type metadata accessor for DefaultProfanityPreferenceProvider();
  v30 = swift_allocObject();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD568, &qword_1DA3964B0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *(v30 + 16) = sub_1DA394274();
  v34 = type metadata accessor for DefaultBlockedAppsProvider();
  swift_allocObject();
  v35 = sub_1DA3739A4();
  type metadata accessor for TypingSessionCacheProvider();
  swift_allocObject();
  v55 = sub_1DA3749D8(v55 & 1, 50);
  sub_1DA368CE0(v70, v69);
  if (qword_1EDCC5950 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDCC5958;
  v67 = type metadata accessor for DefaultMorphunTokenizer();
  v68 = &protocol witness table for DefaultMorphunTokenizer;
  *&v66 = v36;
  v37 = qword_1EDCC5960;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDCC5968;
  v64 = type metadata accessor for DefaultLocaleProvider();
  v65 = &protocol witness table for DefaultLocaleProvider;
  *&v63 = v38;
  v62[4] = &off_1F55E53E0;
  v62[3] = v29;
  v62[0] = v30;
  v61 = &off_1F55E5210;
  v60 = v34;
  v59[0] = v35;
  v39 = swift_allocObject();
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v62, v29);
  v41 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v54 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = v60;
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  v47 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = (&v54 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v43;
  v52 = *v49;
  v39[11] = v29;
  v39[12] = &off_1F55E53E0;
  v39[13] = v52;
  v39[8] = v51;
  v39[16] = v34;
  v39[17] = &off_1F55E5210;

  sub_1DA36CB60(v57, &qword_1ECBAD400, &unk_1DA395B90);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_1DA366D48(v69, (v39 + 2));
  v39[7] = v58;
  v39[18] = v55;
  sub_1DA366D48(&v66, (v39 + 19));
  sub_1DA366D48(&v63, (v39 + 24));
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v62);
  return v39;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1DA38EDE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_149(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_26();
  v9(v8);
  return v4;
}

unint64_t sub_1DA38EE30()
{
  result = qword_1ECBAD500;
  if (!qword_1ECBAD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD500);
  }

  return result;
}

unint64_t sub_1DA38EE84()
{
  result = qword_1ECBAD510;
  if (!qword_1ECBAD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD510);
  }

  return result;
}

uint64_t sub_1DA38EED8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAD388, &qword_1DA395A90);
    sub_1DA38EF60(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA38EF60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AutoCompletePhrase();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA38EFA4()
{
  result = qword_1ECBAD528;
  if (!qword_1ECBAD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD528);
  }

  return result;
}

unint64_t sub_1DA38EFFC()
{
  result = qword_1ECBAD530;
  if (!qword_1ECBAD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD530);
  }

  return result;
}

uint64_t dispatch thunk of SiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)()
{
  OUTLINED_FUNCTION_51();
  v4 = *(OUTLINED_FUNCTION_109(v0, v1, v2, v3) + 8);
  OUTLINED_FUNCTION_19_0();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_65(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_71(v9);
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_97();

  return v11();
}

uint64_t dispatch thunk of SiriAutoCompleteService.autoCompleteResults(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_47();
  v13 = *(v12 + 16);
  v30 = v12 + 16;
  OUTLINED_FUNCTION_19_0();
  v31 = v14 + *v14;
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_65(v17);
  *v18 = v19;
  v18[1] = sub_1DA38A5D4;
  OUTLINED_FUNCTION_45_0();

  return v27(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31, a11, a12);
}

void dispatch thunk of SiriAutoCompleteService.insertPhrasesForAssistantSuggestions(phrases:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = *(OUTLINED_FUNCTION_64(v0, v1, v2) + 24);
  OUTLINED_FUNCTION_19_0();
  v12 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_65(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_18_1(v8);
  OUTLINED_FUNCTION_153();

  __asm { BRAA            X3, X16 }
}

uint64_t dispatch thunk of SiriAutoCompleteService.deletePhrasesForSource(source:deactivateWriteClientAfter:)()
{
  OUTLINED_FUNCTION_51();
  v4 = *(OUTLINED_FUNCTION_109(v0, v1, v2, v3) + 32);
  OUTLINED_FUNCTION_19_0();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_65(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_71(v9);
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_97();

  return v11();
}

void dispatch thunk of SiriAutoCompleteService.deletePhrasesForApp(bundleIds:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = *(OUTLINED_FUNCTION_64(v0, v1, v2) + 40);
  OUTLINED_FUNCTION_19_0();
  v12 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_65(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_18_1(v8);
  OUTLINED_FUNCTION_153();

  __asm { BRAA            X3, X16 }
}

uint64_t dispatch thunk of SiriAutoCompleteService.increaseTapCountForPhrase(phrase:)()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_19_0();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_65(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_71(v6);
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_97();

  return v8();
}

void dispatch thunk of SiriAutoCompleteService.fetchPhrasesMatching(filters:)()
{
  OUTLINED_FUNCTION_44_0();
  v3 = *(OUTLINED_FUNCTION_64(v0, v1, v2) + 56);
  OUTLINED_FUNCTION_19_0();
  v12 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_65(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_18_1(v8);
  OUTLINED_FUNCTION_153();

  __asm { BRAA            X3, X16 }
}

uint64_t dispatch thunk of SiriAutoCompleteService.dropDB()()
{
  OUTLINED_FUNCTION_44_0();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_19_0();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_65(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_71(v6);
  v8 = OUTLINED_FUNCTION_8_1();

  return v10(v8);
}

uint64_t dispatch thunk of SiriAutoCompleteService.coolDownWriteDBClient()()
{
  OUTLINED_FUNCTION_44_0();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_19_0();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_65(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_71(v6);
  v8 = OUTLINED_FUNCTION_8_1();

  return v10(v8);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DA38F9E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1DA38FA24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoCompleteResult.ResultState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AutoCompleteResult.ResultState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AutoCompleteResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AutoCompleteResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA38FD3C()
{
  result = qword_1ECBAD538;
  if (!qword_1ECBAD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD538);
  }

  return result;
}

unint64_t sub_1DA38FD94()
{
  result = qword_1ECBAD540;
  if (!qword_1ECBAD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD540);
  }

  return result;
}

unint64_t sub_1DA38FDEC()
{
  result = qword_1ECBAD548;
  if (!qword_1ECBAD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD548);
  }

  return result;
}

unint64_t sub_1DA38FE40()
{
  result = qword_1ECBAD550;
  if (!qword_1ECBAD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD550);
  }

  return result;
}

uint64_t sub_1DA38FEFC(uint64_t a1, uint64_t a2)
{
  v8 = &type metadata for DefaultSiriAutoCompleteFeatureFlagsProvider;
  v9 = &protocol witness table for DefaultSiriAutoCompleteFeatureFlagsProvider;
  swift_defaultActor_initialize();
  *(a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_writeEnabledClient) = 0;
  *(a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_isActivated) = 0;
  sub_1DA366D48(&v7, a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_featureFlagsProvider);
  v4 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_databaseDirectory;
  v5 = sub_1DA393EC4();
  (*(*(v5 - 8) + 32))(a2 + v4, a1, v5);
  return a2;
}

uint64_t sub_1DA390000(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DA36F350(a1, a2);
  }

  return a1;
}

uint64_t sub_1DA390014(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_149(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_26();
  v9(v8);
  return v4;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA390074(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1DA3900B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA390104(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DA39018C(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA390278(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 38))
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

uint64_t sub_1DA3902B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA390310()
{
  result = qword_1ECBAD578;
  if (!qword_1ECBAD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD578);
  }

  return result;
}

unint64_t sub_1DA390368()
{
  result = qword_1ECBAD580;
  if (!qword_1ECBAD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD580);
  }

  return result;
}

void OUTLINED_FUNCTION_8_4()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA74C560);
}

void OUTLINED_FUNCTION_16_2()
{

  JUMPOUT(0x1DA74C560);
}

void OUTLINED_FUNCTION_21_1()
{

  JUMPOUT(0x1DA74C560);
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

BOOL OUTLINED_FUNCTION_27_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_30_0()
{

  JUMPOUT(0x1DA74C560);
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  *(v4 + 16) = v1;
  v7 = v4 + v0 * v3;
  v8 = *(v5 - 144);
  v9 = *(v5 - 128);
  *(v7 + 62) = *(v2 + 30);
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;

  return sub_1DA38FECC(v5 - 144);
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1)
{
  *(a1 + 8) = sub_1DA3846EC;
  v2 = v1[23];
  v3 = v1[24];
  return v1[15];
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1)
{
  *(a1 + 8) = sub_1DA384AA4;
  v2 = v1[28];
  v3 = v1[23];
  v4 = v1[24];
  return v1[27];
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1)
{
  *(a1 + 8) = sub_1DA381E08;
  v3 = *(v2 + 192);
  return v1;
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1)
{
  *(a1 + 8) = sub_1DA382590;
  v2 = v1[5];
  v3 = v1[6];
  return v1[10];
}

void OUTLINED_FUNCTION_36_0()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  static DefaultSiriAutoCompleteService.initializeVectorDBClient(readOnly:featureFlagsProvider:databaseDirectoryOverride:)();
}

void OUTLINED_FUNCTION_48()
{

  JUMPOUT(0x1DA74C560);
}

void OUTLINED_FUNCTION_52()
{

  JUMPOUT(0x1DA74C560);
}

void OUTLINED_FUNCTION_54()
{

  JUMPOUT(0x1DA74C560);
}

void OUTLINED_FUNCTION_56()
{

  JUMPOUT(0x1DA74C560);
}

uint64_t OUTLINED_FUNCTION_61(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_62@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 98);
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  *(a1 + 62) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_77()
{
  v1 = *(*(v0 - 352) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 344);
  return result;
}

uint64_t OUTLINED_FUNCTION_78(uint64_t result)
{
  v1[42] = result;
  v4 = *(v2 + 16);
  v3 = v2 + 16;
  v1[43] = v4;
  v1[44] = v3 & 0xFFFFFFFFFFFFLL | 0xD876000000000000;
  v5 = *(v3 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_81()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_82(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_84@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1DA372AD8(0xD000000000000032, a1 | 0x8000000000000000, va);
}

id OUTLINED_FUNCTION_85(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_87()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_88()
{
  v2 = v0[25];
  result = v0[26];
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[11];
  return result;
}

uint64_t OUTLINED_FUNCTION_89()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_90()
{

  return sub_1DA38FE94(v0 - 128, v0 - 168);
}

void OUTLINED_FUNCTION_94(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_99()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_100()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_104()
{
  v2 = v1[27];
  v3 = v1[28];
  v4 = v1[12];
  return v0;
}

void OUTLINED_FUNCTION_112()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  **(v0 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_115(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_1DA38FE94(va1, va);
}

BOOL OUTLINED_FUNCTION_116()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_117(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_118()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_119()
{

  return sub_1DA394424();
}

uint64_t OUTLINED_FUNCTION_120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return sub_1DA372AD8(0xD00000000000003DLL, a15 | 0x8000000000000000, (v15 - 88));
}

uint64_t OUTLINED_FUNCTION_121()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

BOOL OUTLINED_FUNCTION_122(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_124()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_125()
{
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
}

uint64_t OUTLINED_FUNCTION_126()
{

  return sub_1DA38FE94(v0 - 160, v0 - 208);
}

__n128 OUTLINED_FUNCTION_132@<Q0>(__int128 *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  *(v1 - 98) = *(a1 + 30);
  *(v1 - 128) = v3;
  *(v1 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_136(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v2;
  return result;
}

void OUTLINED_FUNCTION_140()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_143()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_144()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_145(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_146@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + 296);
  v6 = *(v2 + 200);
  *(v1 + v3) = a1;

  return sub_1DA393EF4();
}

uint64_t OUTLINED_FUNCTION_147()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_148(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_149(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_1DA372AD8(0xD00000000000001FLL, a2, a3);
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_1DA372AD8(0xD000000000000022, a2, a3);
}

uint64_t SiriAutoCompleteXPCService.__allocating_init(client:directAccessService:featureFlagsProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  SiriAutoCompleteXPCService.init(client:directAccessService:featureFlagsProvider:)(a1, a2, a3);
  return v6;
}

uint64_t SiriAutoCompleteXPCService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(uint64_t *a1, char a2)
{
  *(v3 + 48) = a2;
  v4 = *a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  return OUTLINED_FUNCTION_0_6();
}

uint64_t sub_1DA39102C()
{
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_1_5(*(v1 + 24));
  *(v1 + 16) = v2;
  v3 = *(v0 + 8);
  OUTLINED_FUNCTION_3_5();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v1 + 40) = v7;
  *v7 = v1;
  v7[1] = sub_1DA39114C;
  v8 = *(v1 + 48);
  OUTLINED_FUNCTION_13_2();

  return v9();
}

uint64_t sub_1DA39114C()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  OUTLINED_FUNCTION_26_1();
  v4 = *(v3 + 40);
  v5 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_29_0();

  return v7(v2);
}

uint64_t SiriAutoCompleteXPCService.autoCompleteResults(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_6();
}

uint64_t sub_1DA391250()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = *(v1 + 136);
  OUTLINED_FUNCTION_17_2();
  v7 = swift_allocObject();
  v0[8] = v7;
  v7[2] = v1;
  v7[3] = v5;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v2;
  OUTLINED_FUNCTION_17_2();
  v8 = swift_allocObject();
  v0[9] = v8;
  v8[2] = v5;
  v8[3] = v3;
  v8[4] = v1;
  v8[5] = v4;
  v8[6] = v2;
  v9 = *(MEMORY[0x1E69D3168] + 4);
  v14 = (*MEMORY[0x1E69D3168] + MEMORY[0x1E69D3168]);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_2();
  v0[10] = v10;
  *v10 = v11;
  v10[1] = sub_1DA3913C8;
  v12 = v0[2];

  return v14(v12, &unk_1DA396678, v7, &unk_1DA396688, v8, &type metadata for AutoCompleteResult);
}

uint64_t sub_1DA3913C8()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v3 = v2;
  v4 = v2[10];
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA3914FC, 0, 0);
  }

  else
  {
    v8 = v3[8];
    v7 = v3[9];

    OUTLINED_FUNCTION_24_1();

    return v9();
  }
}

uint64_t sub_1DA3914FC()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_24_1();
  v4 = v0[11];

  return v3();
}

uint64_t sub_1DA391560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA391588, 0, 0);
}

uint64_t sub_1DA391588()
{
  OUTLINED_FUNCTION_44_0();
  v1 = v0[11];
  v2 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v3 = sub_1DA3941F4();
  v4 = v0[11];
  if (v3)
  {
    v5 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    v6 = *(v5 + 8);
    OUTLINED_FUNCTION_3_5();
    v28 = v7 + *v7;
    v9 = *(v8 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_15_2();
    v0[16] = v10;
    *v10 = v11;
    v10[1] = sub_1DA3917AC;
    v12 = v0[14];
    v13 = v0[15];
    v14 = v0[12];
    v15 = v0[13];
    OUTLINED_FUNCTION_18_2();
  }

  else
  {
    OUTLINED_FUNCTION_1_5(v4);
    v17 = *(v2 + 16);
    OUTLINED_FUNCTION_3_5();
    v29 = v18 + *v18;
    v20 = *(v19 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_15_2();
    v0[18] = v21;
    *v21 = v22;
    v21[1] = sub_1DA391968;
    v23 = v0[14];
    v24 = v0[15];
    v25 = v0[12];
    v26 = v0[13];
    OUTLINED_FUNCTION_18_2();
  }

  return v16();
}

uint64_t sub_1DA3917AC()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = sub_1DA391B24;
  }

  else
  {
    v7 = sub_1DA3918B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DA3918B0()
{
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_10_4();

  sub_1DA366DAC(v9, v8);
  *v1 = v3;
  *(v1 + 8) = v2;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  OUTLINED_FUNCTION_24_1();

  return v6();
}

uint64_t sub_1DA391968()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v3 = *(v2 + 144);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 152) = v0;

  if (v0)
  {
    v7 = sub_1DA391B2C;
  }

  else
  {
    v7 = sub_1DA391A6C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DA391A6C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_10_4();

  sub_1DA366DAC(v9, v8);
  *v1 = v3;
  *(v1 + 8) = v2;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  OUTLINED_FUNCTION_24_1();

  return v6();
}

uint64_t sub_1DA391B34()
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_16_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_1DA391560(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DA391BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA391BF4, 0, 0);
}

uint64_t sub_1DA391BF4()
{
  v22 = v0;
  if (qword_1EDCC52A0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1DA3942F4();
  __swift_project_value_buffer(v2, qword_1EDCC51C0);

  v3 = sub_1DA3942D4();
  v4 = sub_1DA394574();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DA372AD8(v6, v5, &v21);
    _os_log_impl(&dword_1DA365000, v3, v4, "Skipping computation of autocomplete result for query '%s' due to incoming follow up request.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1DA74C560](v8, -1, -1);
    MEMORY[0x1DA74C560](v7, -1, -1);
  }

  v9 = v0[5];
  v10 = v9[19];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (v9[18] != v0[6] || v10 != v0[7])
  {
    if ((sub_1DA394934() & 1) == 0)
    {
      goto LABEL_14;
    }

    v9 = v0[5];
  }

  if (v9[21])
  {
    v12 = v0[4];
    v13 = v0[2];
    v14 = v9[22];
    *v13 = v0[3];
    *(v13 + 8) = v12;
    *(v13 + 16) = v14;
    *(v13 + 24) = 3;

    goto LABEL_15;
  }

LABEL_14:
  v15 = v0[4];
  v16 = v0[2];
  *v16 = v0[3];
  *(v16 + 8) = v15;
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  *(v16 + 24) = 3;
LABEL_15:
  v17 = v0[4];
  OUTLINED_FUNCTION_29_0();
  v20 = v18;

  return v20();
}

uint64_t sub_1DA391E04()
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_16_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_3(v1);

  return sub_1DA391BCC(v3, v4, v5, v6, v7, v8);
}

uint64_t SiriAutoCompleteXPCService.insertPhrasesForAssistantSuggestions(phrases:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_6();
}

uint64_t sub_1DA391EB0()
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_1_5(*(v1 + 24));
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_3_5();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_4_6(v6);

  return v8(v7);
}

uint64_t sub_1DA391FAC()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_24_1();

  return v5();
}

uint64_t SiriAutoCompleteXPCService.deletePhrasesForSource(source:deactivateWriteClientAfter:)(_BYTE *a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 33) = a2;
  *(v3 + 34) = *a1;
  return OUTLINED_FUNCTION_0_6();
}

uint64_t sub_1DA3920AC()
{
  v2 = *(v1 + 34);
  OUTLINED_FUNCTION_1_5(*(v1 + 16));
  *(v1 + 32) = v2;
  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_3_5();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v1 + 24) = v7;
  *v7 = v1;
  v7[1] = sub_1DA3921D0;
  v8 = *(v1 + 33);
  OUTLINED_FUNCTION_13_2();

  return v9();
}

uint64_t sub_1DA3921D0()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_24_1();

  return v5();
}

uint64_t SiriAutoCompleteXPCService.deletePhrasesForApp(bundleIds:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_6();
}

uint64_t sub_1DA3922C4()
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_1_5(*(v1 + 24));
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_3_5();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_4_6(v6);

  return v8(v7);
}

uint64_t sub_1DA3923C0()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  OUTLINED_FUNCTION_26_1();
  v4 = *(v3 + 32);
  v5 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_29_0();

  return v7(v2);
}

uint64_t SiriAutoCompleteXPCService.increaseTapCountForPhrase(phrase:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_6();
}

uint64_t sub_1DA3924C0()
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_1_5(*(v1 + 32));
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_3_5();
  v11 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 40) = v6;
  *v6 = v1;
  v6[1] = sub_1DA3925CC;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  OUTLINED_FUNCTION_13_2();

  return v9();
}

uint64_t sub_1DA3925CC()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_24_1();

  return v5();
}

uint64_t SiriAutoCompleteXPCService.fetchPhrasesMatching(filters:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_6();
}

uint64_t sub_1DA3926C0()
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_1_5(*(v1 + 24));
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_3_5();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_4_6(v6);

  return v8(v7);
}

uint64_t sub_1DA3927D0()
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_1_5(*(v1 + 16));
  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_3_5();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_14_2(v6);

  return v8(v7);
}

uint64_t sub_1DA3928E0()
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_1_5(*(v1 + 16));
  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_3_5();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_14_2(v6);

  return v8(v7);
}

uint64_t sub_1DA3929DC(uint64_t *a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA389F94;

  return SiriAutoCompleteXPCService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(a1, a2);
}

uint64_t sub_1DA392A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DA38A5D4;

  return SiriAutoCompleteXPCService.autoCompleteResults(for:using:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DA392B50(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA3903BC;

  return SiriAutoCompleteXPCService.insertPhrasesForAssistantSuggestions(phrases:)(a1);
}

uint64_t sub_1DA392BE8(_BYTE *a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA3903BC;

  return SiriAutoCompleteXPCService.deletePhrasesForSource(source:deactivateWriteClientAfter:)(a1, a2);
}

uint64_t sub_1DA392C90(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA389F94;

  return SiriAutoCompleteXPCService.deletePhrasesForApp(bundleIds:)(a1);
}

uint64_t sub_1DA392D28(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA3903BC;

  return SiriAutoCompleteXPCService.increaseTapCountForPhrase(phrase:)(a1, a2);
}

uint64_t sub_1DA392DD0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA3903C0;

  return SiriAutoCompleteXPCService.fetchPhrasesMatching(filters:)(a1);
}

uint64_t sub_1DA392E68()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3903BC;

  return SiriAutoCompleteXPCService.dropDB()();
}

uint64_t sub_1DA392EF8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA38A5D4;

  return SiriAutoCompleteXPCService.coolDownWriteDBClient()();
}

uint64_t OUTLINED_FUNCTION_10_4()
{
  v9 = *(v2 + 168);
  v10 = *(v2 + 160);
  v6 = *(v2 + 176);
  *(v2 + 160) = v3;
  *(v2 + 168) = v1;
  *(v2 + 176) = v0;
  v7 = *(v2 + 184);
  *(v2 + 184) = v4;
}

void OUTLINED_FUNCTION_16_3()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_19_1()
{
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = *(v3 + 152);
  *(v3 + 144) = v0[14];
  *(v3 + 152) = v2;
}

BOOL sub_1DA393130(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t SiriAutoCompleteFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1DA3949D4();
  MEMORY[0x1DA74C060](v1);
  return sub_1DA394A14();
}

uint64_t SiriUIFeatureFlags.hashValue.getter()
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C060](0);
  return sub_1DA394A14();
}

Swift::Bool __swiftcall DefaultSiriAutoCompleteFeatureFlagsProvider.isIndexBuildEnabled()()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = sub_1DA393968(v0);
  v3 = v2;
  if (DefaultSiriAutoCompleteFeatureFlagsProvider.isSAEUIEnabled()() && (v8[3] = &type metadata for SiriAutoCompleteFeatureFlags, v8[4] = sub_1DA3939D8(), LOBYTE(v8[0]) = 0, v4 = sub_1DA393F84(), __swift_destroy_boxed_opaque_existential_1(v8), (v4 & 1) != 0))
  {
    v5.value._countAndFlagsBits = v1;
    v5.value._object = v3;
    v6 = DefaultSiriAutoCompleteFeatureFlagsProvider.isLocalizedSuggestionsEnabled(for:)(v5);
  }

  else
  {

    return 0;
  }

  return v6;
}

Swift::Bool __swiftcall DefaultSiriAutoCompleteFeatureFlagsProvider.isSAEUIEnabled()()
{
  v0 = [objc_opt_self() isSAEEnabled];
  v3[3] = &type metadata for SiriUIFeatureFlags;
  v3[4] = sub_1DA393A2C();
  v1 = sub_1DA393F84();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v0 & v1;
}

Swift::Bool __swiftcall DefaultSiriAutoCompleteFeatureFlagsProvider.isLocalizedSuggestionsEnabled(for:)(Swift::String_optional a1)
{
  if (!a1.value._object)
  {
    goto LABEL_6;
  }

  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD470, &qword_1DA395E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA3967A0;
  *(inited + 32) = 0x52462D7266;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x41432D7266;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x45422D7266;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x48432D7266;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x53452D7365;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = 0x53552D7365;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = 0x584D2D7365;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = 0x4C432D7365;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 160) = 0x45442D6564;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = 0x48432D6564;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = 0x54412D6564;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = 0x54492D7469;
  *(inited + 216) = 0xE500000000000000;
  *(inited + 224) = 0x48432D7469;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = 0x52422D7470;
  *(inited + 248) = 0xE500000000000000;
  *(inited + 256) = 0x4E432D687ALL;
  *(inited + 264) = 0xE500000000000000;
  *(inited + 272) = 0x504A2D616ALL;
  *(inited + 280) = 0xE500000000000000;
  *(inited + 288) = 0x524B2D6F6BLL;
  *(inited + 296) = 0xE500000000000000;
  v4 = sub_1DA394424();
  if ((v4 & 1) == 0)
  {
    v9[0] = countAndFlagsBits;
    v9[1] = object;
    MEMORY[0x1EEE9AC00](v4);
    v8[2] = v9;
    v5 = sub_1DA393130(sub_1DA38FFE0, v8, inited);
    swift_setDeallocating();
    sub_1DA38B274();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_6:
    v6 = 0;
    return v6 & 1;
  }

  swift_setDeallocating();
  sub_1DA38B274();
LABEL_5:
  v9[3] = &type metadata for SiriAutoCompleteFeatureFlags;
  v9[4] = sub_1DA3939D8();
  LOBYTE(v9[0]) = 6;
  v6 = sub_1DA393F84();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6 & 1;
}

Swift::Bool __swiftcall DefaultSiriAutoCompleteFeatureFlagsProvider.isFTSQueryEnabled()()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = sub_1DA393968(v0);
  v3 = v2;
  v4 = DefaultSiriAutoCompleteFeatureFlagsProvider.isSAEUIEnabled()();
  v8[3] = &type metadata for SiriAutoCompleteFeatureFlags;
  v8[4] = sub_1DA3939D8();
  LOBYTE(v8[0]) = 2;
  v5 = sub_1DA393F84();
  __swift_destroy_boxed_opaque_existential_1(v8);
  v6.value._countAndFlagsBits = v1;
  v6.value._object = v3;
  LOBYTE(v1) = DefaultSiriAutoCompleteFeatureFlagsProvider.isLocalizedSuggestionsEnabled(for:)(v6);

  return v4 & v5 & v1 & 1;
}

Swift::Bool __swiftcall DefaultSiriAutoCompleteFeatureFlagsProvider.areAppIntentSourcesEnabled()()
{
  if (DefaultSiriAutoCompleteFeatureFlagsProvider.isIndexBuildEnabled()())
  {
    v2[3] = &type metadata for SiriAutoCompleteFeatureFlags;
    v2[4] = sub_1DA3939D8();
    LOBYTE(v2[0]) = 4;
    v0 = sub_1DA393F84();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1DA393924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DA394934() & 1;
  }
}

uint64_t sub_1DA393968(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DA394384();

  return v3;
}

unint64_t sub_1DA3939D8()
{
  result = qword_1EDCC5970;
  if (!qword_1EDCC5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5970);
  }

  return result;
}

unint64_t sub_1DA393A2C()
{
  result = qword_1EDCC5628;
  if (!qword_1EDCC5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC5628);
  }

  return result;
}

unint64_t sub_1DA393AB0()
{
  result = qword_1ECBAD588;
  if (!qword_1ECBAD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD588);
  }

  return result;
}

unint64_t sub_1DA393B08()
{
  result = qword_1ECBAD590;
  if (!qword_1ECBAD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAD590);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAutoCompleteFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriAutoCompleteFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DA393D18(_BYTE *result, int a2, int a3)
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