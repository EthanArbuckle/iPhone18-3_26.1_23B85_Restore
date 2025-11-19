uint64_t sub_21E565F48()
{
  result = sub_21E57B3DC();
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

uint64_t sub_21E565FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete19VoiceShortcutSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E566054(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E566128;

  return (sub_21E566938)(v8, a2, a3, v7);
}

uint64_t sub_21E566128()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = *(v1 + 16);
  v6 = *v0;

  v3 = OUTLINED_FUNCTION_5();

  return v4(v3);
}

uint64_t sub_21E566214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v6 = sub_21E57B5EC();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v9 = type metadata accessor for DefaultEligibilityCriteria();
  v3[17] = v9;
  v3[5] = v9;
  v3[6] = &off_282F92F38;
  v3[2] = a2;
  v3[10] = type metadata accessor for DefaultSiriShortcutsEnablementProvider();
  v3[11] = &off_282F92ED8;
  v3[7] = a3;

  return MEMORY[0x2822009F8](sub_21E566338);
}

uint64_t sub_21E566338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  v27 = *(v24 + 136);
  v28 = [*(v24 + 96) associatedAppBundleIdentifier];
  v29 = sub_21E57B67C();
  v31 = v30;

  *(v24 + 144) = v29;
  *(v24 + 152) = v31;
  v32 = *__swift_project_boxed_opaque_existential_1((v24 + 16), v27);
  OUTLINED_FUNCTION_60();
  if (sub_21E54A03C())
  {
    v33 = *__swift_project_boxed_opaque_existential_1((v24 + 56), *(v24 + 80));
    v34 = swift_task_alloc();
    *(v24 + 160) = v34;
    *v34 = v24;
    v34[1] = sub_21E566608;
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_120();

    return sub_21E5496DC();
  }

  else
  {
    v37 = *(v24 + 128);
    v38 = *(v24 + 96);
    sub_21E57B5BC();
    v39 = v38;

    v40 = sub_21E57B5DC();
    v41 = sub_21E57B85C();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v24 + 128);
    v44 = *(v24 + 104);
    v45 = *(v24 + 112);
    if (v42)
    {
      v46 = *(v24 + 96);
      v47 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      a13 = a10;
      *v47 = 136315394;
      v48 = [v46 shortcutName];
      a11 = v44;
      a12 = v43;
      v49 = sub_21E57B67C();
      v51 = v50;

      v52 = sub_21E5553D8(v49, v51, &a13);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      v53 = OUTLINED_FUNCTION_60();
      v56 = sub_21E5553D8(v53, v54, v55);

      *(v47 + 14) = v56;
      _os_log_impl(&dword_21E527000, v40, v41, "VoiceShortcut: %s's appBundleId %s is not installed. Not eligible for autocomplete", v47, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      (*(v45 + 8))(a12, a11);
    }

    else
    {

      (*(v45 + 8))(v43, v44);
    }

    v57 = *(v24 + 120);
    v58 = *(v24 + 128);
    __swift_destroy_boxed_opaque_existential_0Tm((v24 + 16));
    __swift_destroy_boxed_opaque_existential_0Tm((v24 + 56));

    v59 = *(v24 + 8);
    OUTLINED_FUNCTION_120();

    return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_21E566608()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 160);
  *v2 = *v0;
  *(v1 + 168) = v5;

  return MEMORY[0x2822009F8](sub_21E5666F8);
}

uint64_t sub_21E5666F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  v27 = *(v24 + 152);
  if (*(v24 + 168) == 1)
  {
    v28 = *(v24 + 152);
  }

  else
  {
    v29 = *(v24 + 120);
    v30 = *(v24 + 96);
    sub_21E57B5BC();
    v31 = v30;

    v32 = sub_21E57B5DC();
    v33 = sub_21E57B85C();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v24 + 152);
    if (v34)
    {
      a9 = *(v24 + 144);
      a10 = *(v24 + 112);
      v36 = *(v24 + 96);
      a11 = *(v24 + 104);
      a12 = *(v24 + 120);
      v37 = swift_slowAlloc();
      a13 = swift_slowAlloc();
      *v37 = 136315394;
      v38 = [v36 shortcutName];
      v39 = sub_21E57B67C();
      v41 = v40;

      v42 = sub_21E5553D8(v39, v41, &a13);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v43 = sub_21E5553D8(a9, v35, &a13);

      *(v37 + 14) = v43;
      _os_log_impl(&dword_21E527000, v32, v33, "VoiceShortcut: %s's appBundleId %s is not enabled for Siri. Not eligible for autocomplete", v37, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      (*(a10 + 8))(a12, a11);
    }

    else
    {
      v45 = *(v24 + 112);
      v44 = *(v24 + 120);
      v46 = *(v24 + 104);
      v47 = *(v24 + 152);

      (*(v45 + 8))(v44, v46);
    }
  }

  v49 = *(v24 + 120);
  v48 = *(v24 + 128);
  __swift_destroy_boxed_opaque_existential_0Tm((v24 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v24 + 56));

  v50 = *(v24 + 8);
  OUTLINED_FUNCTION_120();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_21E566938(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[28] = a4;
  v4[29] = *a4;
  v6 = sub_21E57B5EC();
  v4[30] = v6;
  v7 = *(v6 - 8);
  v4[31] = v7;
  v8 = *(v7 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[21] = type metadata accessor for DefaultEligibilityCriteria();
  v4[22] = &off_282F92F38;
  v4[18] = a1;

  return MEMORY[0x2822009F8](sub_21E566A6C);
}

uint64_t sub_21E566A6C()
{
  v20 = v0;
  v1 = v0[35];
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[35];
  v6 = v0[30];
  v7 = v0[31];
  if (v4)
  {
    v8 = v0[29];
    v9 = OUTLINED_FUNCTION_50();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_21E57BC2C();
    v13 = sub_21E5553D8(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21E527000, v2, v3, "%s: Fetching phrases", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  v0[36] = v14;
  sub_21E57B4AC();
  v0[37] = sub_21E57B62C();
  v15 = [objc_opt_self() standardClient];
  v0[38] = v15;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_21E566CC4;
  v16 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CD8, &qword_21E57E0E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21E5656E8;
  v0[13] = &block_descriptor_4;
  v0[14] = v16;
  [v15 getVoiceShortcutsWithCompletion_];
  OUTLINED_FUNCTION_55();

  return MEMORY[0x282200938]();
}

uint64_t sub_21E566CC4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 312) = v4;
  if (v4)
  {
    v5 = sub_21E566FD0;
  }

  else
  {
    v5 = sub_21E566DC4;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E566DC4()
{
  v2 = v0[38];
  v3 = v0[26];
  v0[40] = v3;

  result = sub_21E5351E4(v3);
  v0[41] = result;
  if (!result)
  {

    v9 = v0[37];
    v10 = v0[33];
    sub_21E57B5BC();
    sub_21E57B5DC();
    v11 = sub_21E57B84C();
    if (OUTLINED_FUNCTION_10_5(v11))
    {
      v12 = OUTLINED_FUNCTION_50();
      *v12 = 134217984;
      *(v12 + 4) = *(v9 + 16);
      OUTLINED_FUNCTION_4_6(&dword_21E527000, v13, v14, "VoiceShortcutSource: created %ld phrases");
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_8();
    v15 = OUTLINED_FUNCTION_7_4();
    v1(v15);

    v17 = sub_21E529E80(v16);
    sub_21E565B74(v17);

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_55();

    __asm { BRAA            X2, X16 }
  }

  if (result >= 1)
  {
    type metadata accessor for DefaultSiriShortcutsEnablementProvider();
    inited = swift_initStaticObject();
    v6 = v0[37];
    v0[45] = v6;
    v0[46] = v6;
    v0[43] = v6;
    v0[44] = 0;
    v0[42] = inited;
    v7 = v0[40];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D5CE50](0);
    }

    else
    {
      v8 = *(v7 + 32);
    }

    v0[47] = v8;
    v20 = *__swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    v21 = swift_task_alloc();
    v0[48] = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_0_5(v21);
    OUTLINED_FUNCTION_55();

    __asm { BR              X4 }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E566FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t), uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  v28 = *(v24 + 304);
  v29 = *(v24 + 312);
  v30 = *(v24 + 272);
  swift_willThrow();

  sub_21E57B5BC();
  v31 = v29;
  v32 = sub_21E57B5DC();
  v33 = sub_21E57B86C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v24 + 312);
    a10 = *(v24 + 272);
    a11 = *(v24 + 288);
    v36 = *(v24 + 240);
    v35 = *(v24 + 248);
    v37 = OUTLINED_FUNCTION_50();
    v25 = swift_slowAlloc();
    a12 = v25;
    *v37 = 136315138;
    swift_getErrorValue();
    v39 = *(v24 + 184);
    v38 = *(v24 + 192);
    v40 = *(v24 + 200);
    v41 = sub_21E57BB7C();
    v43 = sub_21E5553D8(v41, v42, &a12);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_21E527000, v32, v33, "Unexpected error occurred while fetching voice shortcuts: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();

    a11(a10, v36);
  }

  else
  {
    v44 = *(v24 + 288);
    v45 = *(v24 + 272);
    v46 = *(v24 + 240);
    v47 = *(v24 + 248);

    v44(v45, v46);
  }

  v48 = *(v24 + 296);
  v49 = *(v24 + 264);
  sub_21E57B5BC();
  sub_21E57B5DC();
  v50 = sub_21E57B84C();
  if (OUTLINED_FUNCTION_10_5(v50))
  {
    v51 = OUTLINED_FUNCTION_50();
    *v51 = 134217984;
    *(v51 + 4) = *(v48 + 16);
    OUTLINED_FUNCTION_4_6(&dword_21E527000, v52, v53, "VoiceShortcutSource: created %ld phrases");
    OUTLINED_FUNCTION_39();
  }

  OUTLINED_FUNCTION_3_8();
  v54 = OUTLINED_FUNCTION_7_4();
  (v25)(v54);

  v56 = sub_21E529E80(v55);
  sub_21E565B74(v56);

  __swift_destroy_boxed_opaque_existential_0Tm((v24 + 144));

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_120();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_21E567230()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 384);
  *v2 = *v0;
  *(v1 + 392) = v5;

  return MEMORY[0x2822009F8](sub_21E567320);
}

uint64_t sub_21E567320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  v28 = *(v24 + 376);
  if ((*(v24 + 392) & 1) == 0)
  {
    v34 = *(v24 + 256);
    sub_21E57B5BC();
    v35 = v28;
    v36 = sub_21E57B5DC();
    v37 = sub_21E57B85C();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v24 + 376);
    v40 = *(v24 + 288);
    v41 = *(v24 + 256);
    v42 = *(v24 + 240);
    if (v38)
    {
      a12 = *(v24 + 248) + 8;
      a11 = *(v24 + 288);
      v43 = OUTLINED_FUNCTION_50();
      a10 = v41;
      v44 = swift_slowAlloc();
      a13 = v44;
      *v43 = 136315138;
      v45 = [v39 shortcutName];
      v46 = sub_21E57B67C();
      v48 = v47;

      v25 = sub_21E5553D8(v46, v48, &a13);

      *(v43 + 4) = v25;
      _os_log_impl(&dword_21E527000, v36, v37, "VoiceShortcut %s is not eligible for autocomplete. Skipping processing", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      a11(a10, v42);
    }

    else
    {

      v40(v41, v42);
    }

    goto LABEL_8;
  }

  v29 = *(v24 + 360);
  sub_21E5657F0(*(v24 + 376));

  sub_21E57B45C();
  v30 = *(v24 + 360);
  if (*(v29 + 16))
  {
    sub_21E52F7C4();
    v32 = v31;

    if (v32)
    {
      v33 = *(v24 + 376);

LABEL_8:
      v50 = *(v24 + 360);
      v49 = *(v24 + 368);
      v51 = *(v24 + 344);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v52 = *(v24 + 376);
  v53 = *(v24 + 344);
  sub_21E57B45C();
  sub_21E5657F0(v52);
  swift_isUniquelyReferenced_nonNull_native();
  a13 = v53;
  sub_21E545E44();

  v51 = a13;
  v50 = a13;
  v49 = a13;
LABEL_11:
  v54 = *(v24 + 352) + 1;
  if (v54 == *(v24 + 328))
  {
    v55 = *(v24 + 320);

    v56 = *(v24 + 264);
    sub_21E57B5BC();
    sub_21E57B5DC();
    v57 = sub_21E57B84C();
    if (OUTLINED_FUNCTION_10_5(v57))
    {
      v58 = OUTLINED_FUNCTION_50();
      *v58 = 134217984;
      *(v58 + 4) = *(v50 + 16);
      OUTLINED_FUNCTION_4_6(&dword_21E527000, v59, v60, "VoiceShortcutSource: created %ld phrases");
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_8();
    v61 = OUTLINED_FUNCTION_7_4();
    v25(v61);

    v63 = sub_21E529E80(v62);
    sub_21E565B74(v63);

    __swift_destroy_boxed_opaque_existential_0Tm((v24 + 144));

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_120();

    return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    *(v24 + 360) = v50;
    *(v24 + 368) = v49;
    *(v24 + 344) = v51;
    *(v24 + 352) = v54;
    v73 = *(v24 + 320);
    if ((v73 & 0xC000000000000001) != 0)
    {
      v74 = MEMORY[0x223D5CE50]();
    }

    else
    {
      v74 = *(v73 + 8 * v54 + 32);
    }

    *(v24 + 376) = v74;
    v75 = *__swift_project_boxed_opaque_existential_1((v24 + 144), *(v24 + 168));
    v76 = swift_task_alloc();
    *(v24 + 384) = v76;
    *v76 = v24;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_120();

    return v81(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, sub_21E566214, a13, a14, a15, a16);
  }
}

unint64_t sub_21E567754()
{
  result = qword_281225500;
  if (!qword_281225500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281225500);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{
  *(a1 + 8) = sub_21E567230;
  v3 = *(v2 + 336);
  v4 = *(v2 + 224);
  return v1;
}

void OUTLINED_FUNCTION_3_8()
{
  v3 = v1[35];
  v4 = v1[36];
  v6 = v1[33];
  v5 = v1[34];
  v8 = v1[31];
  v7 = v1[32];
  v9 = v1[30];
}

void OUTLINED_FUNCTION_4_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_10_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_21E567844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a2;
  v71 = a6;
  v69 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470);
  OUTLINED_FUNCTION_13_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_9();
  v67 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620);
  OUTLINED_FUNCTION_13_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_9();
  v66 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  OUTLINED_FUNCTION_13_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_9();
  v65 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  OUTLINED_FUNCTION_13_1(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_9();
  v64 = v28;
  v29 = sub_21E57B3DC();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v36 = v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CATDialogProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8910, &qword_21E57C490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E57C390;
  *(inited + 32) = 0x656D614E707061;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = a3;
  *(inited + 56) = a4;

  v38 = sub_21E57B62C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass_];
  v68 = a5;
  v41 = sub_21E55E854(v40, 0xD000000000000020, 0x800000021E57FBE0, v38, a5, v71, 0x636E75614C707061, 0xEF65736172685068);
  v43 = v42;

  if (!v43)
  {
    return 0;
  }

  v72 = 0x636E75614C707061;
  v73 = 0xEA00000000005F68;
  v44 = v70;

  v63[1] = v41;
  MEMORY[0x223D5CBD0](v69, v44);
  v63[3] = v72;
  v63[2] = v73;
  (*(v32 + 104))(v36, *MEMORY[0x277D55878], v29);
  v45 = sub_21E57B1FC();
  OUTLINED_FUNCTION_7(v64, v46, v47, v45);
  v48 = sub_21E57AC4C();
  OUTLINED_FUNCTION_7(v65, v49, v50, v48);
  v51 = sub_21E57B5FC();
  OUTLINED_FUNCTION_7(v66, v52, v53, v51);
  v54 = sub_21E57B04C();
  OUTLINED_FUNCTION_7(v67, v55, v56, v54);
  v57 = sub_21E57B5AC();
  v58 = sub_21E57B59C();
  v74 = v57;
  v75 = MEMORY[0x277D55898];
  v72 = v58;
  v59 = sub_21E57B4AC();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();

  return sub_21E57B44C();
}

uint64_t sub_21E567CC0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000020;
  }

  if (a1 == 1)
  {
    return 0x656D614E707061;
  }

  return 0x636E75614C707061;
}

uint64_t sub_21E567D28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E57B5EC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E57B5BC();
  v12 = sub_21E57B5DC();
  v13 = sub_21E57B84C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21E527000, v12, v13, "Ranking App Launch phrases", v14, 2u);
    OUTLINED_FUNCTION_39();
  }

  (*(v7 + 8))(v11, v4);
  v15 = *(v2 + OBJC_IVAR____TtC16SiriAutoComplete15AppLaunchSource_histogram);

  sub_21E5427F8(a1);
}

uint64_t sub_21E567E7C()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete15AppLaunchSource_source;
  v2 = sub_21E57B3DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriAutoComplete15AppLaunchSource_histogram);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for AppLaunchSource()
{
  result = qword_2812267B0;
  if (!qword_2812267B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E567F7C()
{
  result = sub_21E57B3DC();
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

uint64_t sub_21E568018@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete15AppLaunchSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E568094(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E568168;

  return (sub_21E568264)(v8, a2, a3, v7);
}

uint64_t sub_21E568168(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_21E568264(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v4[10] = *a4;
  v6 = sub_21E57B5EC();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v9 = type metadata accessor for DefaultEligibilityCriteria();
  v4[15] = v9;
  v4[5] = v9;
  v4[6] = &off_282F92F38;
  v4[2] = a1;

  return MEMORY[0x2822009F8](sub_21E568388);
}

uint64_t sub_21E568388()
{
  v60 = v0;
  v1 = v0[14];
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v58 = v0;
  if (v4)
  {
    v8 = v0[10];
    v9 = v0 + 5;
    v56 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59 = v11;
    *v10 = 136315138;
    v12 = sub_21E57BC2C();
    v14 = sub_21E5553D8(v12, v13, &v59);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21E527000, v2, v3, "%s: Fetching phrases", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();

    (*(v6 + 8))(v56, v7);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
    v9 = v0 + 15;
  }

  v15 = *v9;
  v54 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v16 = __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v17 = *(*__swift_project_boxed_opaque_existential_1((*v16 + 16), *(*v16 + 40)) + 16);
  v55 = v17 + 64;
  v57 = v17;
  v18 = -1;
  v19 = -1 << *(v17 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & *(v17 + 64);
  v21 = (63 - v19) >> 6;

  v23 = 0;
  while (v20)
  {
    v24 = v58;
LABEL_14:
    v27 = v24[7];
    v26 = v24[8];
    v28 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v29 = v28 | (v23 << 6);
    v30 = (*(v57 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    v33 = (*(v57 + 56) + 24 * v29);
    v34 = *v33;
    v35 = v33[1];

    v36 = sub_21E567844(v31, v32, v34, v35, v27, v26);

    if (v36)
    {

      MEMORY[0x223D5CC60](v37);
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21E57B7AC();
      }

      sub_21E57B7CC();

      v54 = v59;
    }
  }

  v24 = v58;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    if (v25 >= v21)
    {
      break;
    }

    v20 = *(v55 + 8 * v25);
    ++v23;
    if (v20)
    {
      v23 = v25;
      goto LABEL_14;
    }
  }

  v38 = v58[13];

  sub_21E57B5BC();

  v39 = sub_21E57B5DC();
  v40 = sub_21E57B84C();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v58[12];
  v43 = v58[13];
  v44 = v58[11];
  if (v41)
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = sub_21E5351E4(v54);

    _os_log_impl(&dword_21E527000, v39, v40, "AppLaunchSource: created %ld phrases", v45, 0xCu);
    OUTLINED_FUNCTION_39();

    v46 = OUTLINED_FUNCTION_4_7();
    v47(v46);
  }

  else
  {

    v48 = OUTLINED_FUNCTION_4_7();
    v49(v48);
  }

  v51 = v58[13];
  v50 = v58[14];
  v52 = v58[9];
  sub_21E567D28(v54);
  __swift_destroy_boxed_opaque_existential_0Tm(v58 + 2);

  v53 = v58[1];

  return v53(v54);
}

uint64_t sub_21E5687D0()
{
  v51 = sub_21E57AC4C();
  v0 = OUTLINED_FUNCTION_0(v51);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = sub_21E57ACCC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  v50 = sub_21E57ACDC();
  v17 = OUTLINED_FUNCTION_0(v50);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v49 - v31;
  MEMORY[0x28223BE20](v30);
  v49 = &v49 - v33;
  type metadata accessor for SiriAutoCompleteHistogram();
  v34 = swift_allocObject();
  v52 = v34;
  *(v34 + 16) = MEMORY[0x277D84F98];
  *(v34 + 24) = 0;
  sub_21E57ACBC();
  (*(v11 + 104))(v16, *MEMORY[0x277CC9998], v8);
  sub_21E57AC3C();
  sub_21E57ACAC();
  v35 = v51;
  (*(v2 + 8))(v7, v51);
  (*(v11 + 8))(v16, v8);
  (*(v19 + 8))(v24, v50);
  v36 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v37 = [v36 InFocus];
  swift_unknownObjectRelease();
  v38 = v49;
  sub_21E569258(v49, v32);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v35);
  v39 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v40 = sub_21E52F134(v32, v29, 1000, 0, 0);
  v41 = [v37 publisherWithOptions_];

  v57 = sub_21E568D04;
  v58 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_21E529E04;
  v56 = &block_descriptor_5;
  v42 = _Block_copy(&aBlock);
  v43 = [v41 filterWithIsIncluded_];
  _Block_release(v42);

  v57 = sub_21E568E7C;
  v58 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_21E529A78;
  v56 = &block_descriptor_4;
  v44 = _Block_copy(&aBlock);
  v45 = v52;
  v57 = sub_21E5692E0;
  v58 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_21E529A78;
  v56 = &block_descriptor_7;
  v46 = _Block_copy(&aBlock);

  v47 = [v43 sinkWithCompletion:v44 receiveInput:v46];
  _Block_release(v46);
  _Block_release(v44);

  sub_21E5692E8(v38);
  return v45;
}

id sub_21E568D04(void *a1)
{
  v2 = sub_21E57B5EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 eventBody];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 starting];
  }

  else
  {
    sub_21E57B5BC();
    v10 = sub_21E57B5DC();
    v11 = sub_21E57B86C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21E527000, v10, v11, "Skipping Biome event with missing body", v12, 2u);
      MEMORY[0x223D5D740](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v9;
}

id sub_21E568E7C(void *a1)
{
  v2 = sub_21E57B5EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  if ([a1 state])
  {
    sub_21E57B5BC();
    v10 = sub_21E57B5DC();
    v11 = sub_21E57B86C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21E527000, v10, v11, "Publisher completion state was not 'success'", v12, 2u);
      MEMORY[0x223D5D740](v12, -1, -1);
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    result = [a1 error];
    if (result)
    {
      v14 = result;
      sub_21E57B5BC();
      v15 = v14;
      v16 = sub_21E57B5DC();
      v17 = sub_21E57B86C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_21E57BB7C();
        v22 = sub_21E5553D8(v20, v21, &v24);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_21E527000, v16, v17, "Error encountered while attempting to build the app launch histogram: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x223D5D740](v19, -1, -1);
        MEMORY[0x223D5D740](v18, -1, -1);
      }

      else
      {
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

void sub_21E569128(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v4 = v1;
    v2 = sub_21E569350(v1);
    if (v3)
    {
      sub_21E542680(v2, v3, 1.0);
    }

    else
    {
    }
  }
}

uint64_t sub_21E5691D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21E569258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E5692E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E569350(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21E57B67C();

  return v3;
}

uint64_t sub_21E5693C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a3;
  v7 = *v3;
  v8 = sub_21E57B5EC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  v22 = v4[3];
  v80[0] = a1;
  v80[1] = a2;
  v79 = v80;
  if (!sub_21E56E084(sub_21E540070, v78, v22))
  {
    sub_21E57B5BC();

    v47 = sub_21E57B5DC();
    v48 = sub_21E57B85C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v76 = v8;
      v80[0] = v50;
      *v49 = 136315394;
      v51 = sub_21E57BC2C();
      v53 = sub_21E5553D8(v51, v52, v80);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_21E5553D8(a1, a2, v80);
      _os_log_impl(&dword_21E527000, v47, v48, "%s: Not indexing %s since it is not an allowed intent", v49, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      (*(v11 + 8))(v21, v76);
    }

    else
    {

      (*(v11 + 8))(v21, v8);
    }

    return 1;
  }

  result = sub_21E52D130(a1, a2, v4[2]);
  if (!result)
  {
    return result;
  }

  v24 = result;
  v25 = *(*(result + 40) + 16);
  v76 = v8;
  v73 = a1;
  if (v25 || *(*(result + 32) + 16))
  {
    v71 = v11;
    v72 = v16;
    v70 = v7;
    v74 = a2;
    v26 = v77;
    v27 = v77 + 56;
    v28 = 1 << *(v77 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v77 + 56);
    v31 = (v28 + 63) >> 6;

    v32 = 0;
    v75 = v24;
LABEL_9:
    while (v30)
    {
      v33 = v30;
LABEL_16:
      v30 = (v33 - 1) & v33;
      v36 = *(v24 + 40);
      if (*(v36 + 16))
      {
        v37 = (*(v26 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v33)))));
        v39 = *v37;
        v38 = v37[1];
        v40 = *(v36 + 40);
        sub_21E57BB8C();

        sub_21E57B6AC();
        v41 = sub_21E57BBCC();
        v42 = ~(-1 << *(v36 + 32));
        do
        {
          v43 = v41 & v42;
          if (((*(v36 + 56 + (((v41 & v42) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v42)) & 1) == 0)
          {

            v24 = v75;
            v26 = v77;
            goto LABEL_9;
          }

          v44 = (*(v36 + 48) + 16 * v43);
          if (*v44 == v39 && v44[1] == v38)
          {
            break;
          }

          v46 = sub_21E57BB3C();
          v41 = v43 + 1;
        }

        while ((v46 & 1) == 0);

        return 1;
      }
    }

    v34 = v74;
    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        return result;
      }

      if (v35 >= v31)
      {
        break;
      }

      v33 = *(v27 + 8 * v35);
      ++v32;
      if (v33)
      {
        v32 = v35;
        goto LABEL_16;
      }
    }

    if (!sub_21E543F9C(v26, *(v24 + 32)))
    {

      return 0;
    }

    v54 = v72;
    sub_21E57B5BC();

    v55 = sub_21E57B5DC();
    v56 = sub_21E57B85C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v57 = 136315650;
      v58 = sub_21E57BC2C();
      v60 = sub_21E5553D8(v58, v59, v80);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_21E5553D8(v73, v34, v80);
      *(v57 + 22) = 2080;
      v61 = sub_21E57B81C();
      v63 = sub_21E5553D8(v61, v62, v80);

      *(v57 + 24) = v63;
      _os_log_impl(&dword_21E527000, v55, v56, "%s: Not adding intent class %s, parameter combination: %s", v57, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    else
    {
    }

    (*(v71 + 8))(v54, v76);
    return 1;
  }

  sub_21E57B5BC();

  v64 = sub_21E57B5DC();
  v65 = sub_21E57B85C();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v66 = 136315394;
    v67 = sub_21E57BC2C();
    v69 = sub_21E5553D8(v67, v68, v80);

    *(v66 + 4) = v69;
    *(v66 + 12) = 2080;
    *(v66 + 14) = sub_21E5553D8(v73, a2, v80);
    _os_log_impl(&dword_21E527000, v64, v65, "%s: %s has malformed deniedIntentParameters, assuming the intent is allowed for all parameter combinations.", v66, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();

    (*(v11 + 8))(v19, v76);
  }

  else
  {

    (*(v11 + 8))(v19, v8);
  }

  return 0;
}

uint64_t sub_21E569AFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C43746E65746E69 && a2 == 0xEB00000000737361;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x800000021E57FC90 == a2;
    if (v6 || (sub_21E57BB3C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x800000021E57FCB0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_21E57BB3C();

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

uint64_t sub_21E569C24(char a1)
{
  if (!a1)
  {
    return 0x6C43746E65746E69;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001BLL;
  }

  return 0xD000000000000010;
}

uint64_t sub_21E569C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E569AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E569CC4(uint64_t a1)
{
  v2 = sub_21E56BFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E569D00(uint64_t a1)
{
  v2 = sub_21E56BFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21E569D3C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_21E569D6C()
{
  sub_21E569D3C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21E569DC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CE8, &qword_21E57E290);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E56BFDC();
  sub_21E57BBEC();
  v14 = v3[2];
  v15 = v3[3];
  LOBYTE(v18) = 0;
  sub_21E57BAEC();
  if (!v2)
  {
    v18 = v3[4];
    HIBYTE(v17) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CF0, &unk_21E57E298);
    sub_21E56C030(&unk_27CEC8CF8);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_1_5();
    sub_21E57BAFC();
    v18 = v3[5];
    HIBYTE(v17) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
    sub_21E56C0B4(&unk_27CEC8D00);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_1_5();
    sub_21E57BAFC();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_21E569FD0(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_21E56A020(a1);
  return v2;
}

uint64_t *sub_21E56A020(uint64_t *a1)
{
  v4 = *v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D08, &qword_21E57E2A8);
  OUTLINED_FUNCTION_0(v13);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v7);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E56BFDC();
  sub_21E57BBDC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14) = 0;
    v1[2] = sub_21E57BAAC();
    v1[3] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8CF0, &unk_21E57E298);
    sub_21E56C030(&unk_281225518);
    OUTLINED_FUNCTION_2_7();
    sub_21E57BABC();
    v1[4] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E0, &unk_21E57C450);
    sub_21E56C0B4(&unk_281225520);
    OUTLINED_FUNCTION_2_7();
    sub_21E57BABC();
    v10 = OUTLINED_FUNCTION_4_8();
    v11(v10);
    v1[5] = v14;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_21E56A2C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496465776F6C6C61 && a2 == 0xEE0073746E65746ELL;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021E57FD60 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E57BB3C();

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

uint64_t sub_21E56A398(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x496465776F6C6C61;
  }
}

uint64_t sub_21E56A3E0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D30, &qword_21E57E480);
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E56C3C8();
  sub_21E57BBEC();
  v19 = a2;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8958, &unk_21E57C580);
  sub_21E56C49C(&unk_27CEC8D38);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_1_5();
  sub_21E57BAFC();
  if (!v3)
  {
    v19 = a3;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D28, &qword_21E57E478);
    sub_21E56C41C(&unk_27CEC8D40);
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_1_5();
    sub_21E57BAFC();
  }

  return (*(v9 + 8))(v14, v7);
}

uint64_t sub_21E56A5D4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D20, &unk_21E57E468);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E56C3C8();
  sub_21E57BBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8958, &unk_21E57C580);
  HIBYTE(v13) = 0;
  sub_21E56C49C(&qword_2812264D8);
  OUTLINED_FUNCTION_7_0();
  v12 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D28, &qword_21E57E478);
  HIBYTE(v13) = 1;
  sub_21E56C41C(&unk_281225548);
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v9, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t sub_21E56A7F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21E569FD0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21E56A848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E56A2C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E56A870(uint64_t a1)
{
  v2 = sub_21E56C3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E56A8AC(uint64_t a1)
{
  v2 = sub_21E56C3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E56A8E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21E56A5D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t *sub_21E56A930()
{
  type metadata accessor for INIntentAllowListProvider();
  swift_allocObject();
  result = sub_21E56A96C();
  qword_2812269C0 = result;
  return result;
}

uint64_t *sub_21E56A96C()
{
  v1 = *v0;
  v2 = sub_21E56A9C0();
  v0[2] = v3;
  v0[3] = v2;
  return v0;
}

uint64_t sub_21E56A9C0()
{
  v0 = sub_21E57B5EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = sub_21E56ACEC();
  if (v8)
  {
    v9 = v8;
    sub_21E57B5BC();
    v10 = sub_21E57B5DC();
    v11 = sub_21E57B85C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v0;
      v28 = v13;
      v14 = v13;
      *v12 = 136315138;
      v15 = sub_21E57BC2C();
      v17 = sub_21E5553D8(v15, v16, &v28);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_21E527000, v10, v11, "%s: INIntentAllowList exist on Trial, override the list from project", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x223D5D740](v14, -1, -1);
      MEMORY[0x223D5D740](v12, -1, -1);

      (*(v1 + 8))(v7, v27);
    }

    else
    {

      (*(v1 + 8))(v7, v0);
    }
  }

  else
  {
    v18 = sub_21E56B490();
    if (v18)
    {
      return v18;
    }

    else
    {
      sub_21E57B5BC();
      v20 = sub_21E57B5DC();
      v21 = sub_21E57B86C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v28 = v23;
        *v22 = 136315138;
        v24 = sub_21E57BC2C();
        v26 = sub_21E5553D8(v24, v25, &v28);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_21E527000, v20, v21, "%s: Cannot load project INIntentAllowList, falling back to empty allow list", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        MEMORY[0x223D5D740](v23, -1, -1);
        MEMORY[0x223D5D740](v22, -1, -1);
      }

      (*(v1 + 8))(v5, v0);
      type metadata accessor for DeniedIntentParameters();
      v9 = MEMORY[0x277D84F90];
      sub_21E57B62C();
    }
  }

  return v9;
}

uint64_t sub_21E56ACEC()
{
  v1 = v0;
  v2 = sub_21E57ABEC();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v54 - v6;
  v7 = sub_21E57ADEC();
  v63 = *(v7 - 8);
  v8 = *(v63 + 8);
  MEMORY[0x28223BE20](v7);
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E57B5EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v64 = [objc_opt_self() clientWithIdentifier_];
  sub_21E57B5BC();
  v21 = sub_21E57B5DC();
  v22 = sub_21E57B85C();
  v23 = os_log_type_enabled(v21, v22);
  v60 = v1;
  v55 = v18;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v54 = v15;
    v25 = v24;
    v26 = swift_slowAlloc();
    v65[0] = v26;
    *v25 = 136315138;
    v27 = sub_21E57BC2C();
    v61 = v10;
    v29 = v11;
    v30 = sub_21E5553D8(v27, v28, v65);
    v10 = v61;

    *(v25 + 4) = v30;
    _os_log_impl(&dword_21E527000, v21, v22, "%s: looking for INIntent allow list on Trial.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x223D5D740](v26, -1, -1);
    MEMORY[0x223D5D740](v25, -1, -1);

    v31 = v29;
  }

  else
  {

    v31 = v11;
  }

  v32 = *(v31 + 8);
  v32(v20, v10);
  sub_21E57ADAC();
  v33 = sub_21E57B66C();

  v35 = v62;
  v34 = v63;
  (*(v63 + 13))(v62, *MEMORY[0x277D60418], v7);
  sub_21E57ADDC();
  (*(v34 + 1))(v35, v7);
  v36 = sub_21E57B66C();

  v37 = [v64 levelForFactor:v33 withNamespaceName:v36];

  v38 = sub_21E57AD8C();
  if (v39)
  {
    v65[0] = v38;
    v65[1] = v39;

    MEMORY[0x223D5CBD0](47, 0xE100000000000000);

    v40 = v56;
    sub_21E57ABBC();

    v41 = v57;
    sub_21E57ABCC();
    v42 = v59;
    v43 = *(v58 + 8);
    v43(v40, v59);
    v44 = sub_21E56B8C8();

    v43(v41, v42);
  }

  else
  {
    v46 = v55;
    sub_21E57B5BC();
    v47 = sub_21E57B5DC();
    v48 = sub_21E57B85C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v65[0] = v50;
      *v49 = 136315138;
      v51 = sub_21E57BC2C();
      v63 = v32;
      v53 = sub_21E5553D8(v51, v52, v65);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_21E527000, v47, v48, "%s: No INIntent allow list on Trial.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x223D5D740](v50, -1, -1);
      MEMORY[0x223D5D740](v49, -1, -1);

      v63(v46, v10);
    }

    else
    {

      v32(v46, v10);
    }

    return 0;
  }

  return v44;
}

uint64_t sub_21E56B490()
{
  v0 = sub_21E57ABEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E57B5EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  sub_21E57B5BC();
  v12 = sub_21E57B5DC();
  v13 = sub_21E57B85C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = v4;
    v38 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v40 = v16;
    *v15 = 136315138;
    v17 = sub_21E57BC2C();
    v36 = v1;
    v19 = sub_21E5553D8(v17, v18, &v40);
    v1 = v36;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_21E527000, v12, v13, "%s: loading INIntent allow list from project resources.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x223D5D740](v16, -1, -1);
    v20 = v15;
    v4 = v37;
    v5 = v38;
    MEMORY[0x223D5D740](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v11, v4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = sub_21E546314(0xD000000000000011, 0x800000021E57E290, 0x7473696C70, 0xE500000000000000, v23);

  if (v24)
  {
    v25 = v39;
    sub_21E57ABDC();

    v26 = sub_21E56B8C8();
    (*(v1 + 8))(v25, v0);
  }

  else
  {
    sub_21E57B5BC();
    v27 = sub_21E57B5DC();
    v28 = sub_21E57B86C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315138;
      v31 = sub_21E57BC2C();
      v33 = sub_21E5553D8(v31, v32, &v40);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_21E527000, v27, v28, "%s: unable to get a path to the list of allowed INIntents", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x223D5D740](v30, -1, -1);
      MEMORY[0x223D5D740](v29, -1, -1);
    }

    v21(v9, v4);
    return 0;
  }

  return v26;
}

uint64_t sub_21E56B8C8()
{
  v0 = sub_21E57B5EC();
  v54 = *(v0 - 8);
  v1 = *(v54 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - v3;
  v5 = sub_21E57AB9C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_21E57AB8C();
  v9 = sub_21E57ABFC();
  v51 = v4;
  v11 = v10;
  v12 = v9;
  sub_21E56C180();
  sub_21E57AB7C();
  v46 = v12;
  v47 = v11;
  v49 = v8;
  v50 = v0;
  v13 = v57[1];
  v48 = v57[0];
  type metadata accessor for DeniedIntentParameters();
  v14 = sub_21E57B62C();
  v56 = sub_21E5351E4(v13);
  if (v56)
  {
    v15 = 0;
    v55 = v13 & 0xC000000000000001;
    v52 = v13 & 0xFFFFFFFFFFFFFF8;
    v53 = v13;
    while (1)
    {
      if (v55)
      {
        v16 = MEMORY[0x223D5CE50](v15, v13);
      }

      else
      {
        if (v15 >= *(v52 + 16))
        {
          goto LABEL_27;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v14[2] && (v19 = *(v16 + 16), v18 = *(v16 + 24), , sub_21E52F7C4(), LOBYTE(v18) = v20, , (v18 & 1) != 0))
      {
      }

      else
      {
        v22 = *(v16 + 16);
        v21 = *(v16 + 24);

        swift_isUniquelyReferenced_nonNull_native();
        v57[0] = v14;
        v23 = sub_21E52F7C4();
        if (__OFADD__(v14[2], (v24 & 1) == 0))
        {
          goto LABEL_26;
        }

        v25 = v23;
        v26 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D10, "<7");
        if (sub_21E57BA1C())
        {
          v27 = sub_21E52F7C4();
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_29;
          }

          v25 = v27;
        }

        v14 = v57[0];
        if (v26)
        {
          v29 = *(v57[0] + 56);
          v30 = *(v29 + 8 * v25);
          *(v29 + 8 * v25) = v16;
        }

        else
        {
          *(v57[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
          v31 = (v14[6] + 16 * v25);
          *v31 = v22;
          v31[1] = v21;
          *(v14[7] + 8 * v25) = v16;
          v32 = v14[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_28;
          }

          v14[2] = v34;
        }

        v13 = v53;
      }

      ++v15;
      if (v17 == v56)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_21E57BB6C();
    __break(1u);
  }

  else
  {
LABEL_21:

    v35 = v51;
    sub_21E57B5BC();
    swift_bridgeObjectRetain_n();
    v36 = sub_21E57B5DC();
    v37 = sub_21E57B85C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v57[0] = v39;
      *v38 = 136315394;
      v40 = sub_21E57BC2C();
      v42 = sub_21E5553D8(v40, v41, v57);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2048;
      v43 = v14[2];

      *(v38 + 14) = v43;

      _os_log_impl(&dword_21E527000, v36, v37, "%s: loaded %ld intents", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x223D5D740](v39, -1, -1);
      MEMORY[0x223D5D740](v38, -1, -1);
      sub_21E53505C(v46, v47);
    }

    else
    {

      sub_21E53505C(v46, v47);
    }

    (*(v54 + 8))(v35, v50);

    return v48;
  }

  return result;
}

uint64_t sub_21E56BF5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_21E56BF84()
{
  sub_21E56BF5C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_21E56BFDC()
{
  result = qword_281225C30;
  if (!qword_281225C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225C30);
  }

  return result;
}

unint64_t sub_21E56C030(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8CF0, &unk_21E57E298);
    sub_21E56C0B4(v4);
    OUTLINED_FUNCTION_7_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E56C0B4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC88E0, &unk_21E57C450);
    OUTLINED_FUNCTION_7_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21E56C118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E8, &qword_21E57C660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E56C180()
{
  result = qword_281225DC8;
  if (!qword_281225DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeniedIntentParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E56C2C4()
{
  result = qword_27CEC8D18;
  if (!qword_27CEC8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8D18);
  }

  return result;
}

unint64_t sub_21E56C31C()
{
  result = qword_281225C20;
  if (!qword_281225C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225C20);
  }

  return result;
}

unint64_t sub_21E56C374()
{
  result = qword_281225C28;
  if (!qword_281225C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225C28);
  }

  return result;
}

unint64_t sub_21E56C3C8()
{
  result = qword_281225DE0;
  if (!qword_281225DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DE0);
  }

  return result;
}

unint64_t sub_21E56C41C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8D28, &qword_21E57E478);
    sub_21E56C500(v4);
    OUTLINED_FUNCTION_7_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E56C49C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8958, &unk_21E57C580);
    OUTLINED_FUNCTION_7_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E56C500(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    type metadata accessor for DeniedIntentParameters();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INIntentAllowList.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E56C61C()
{
  result = qword_27CEC8D50;
  if (!qword_27CEC8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8D50);
  }

  return result;
}

unint64_t sub_21E56C674()
{
  result = qword_281225DD0;
  if (!qword_281225DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DD0);
  }

  return result;
}

unint64_t sub_21E56C6CC()
{
  result = qword_281225DD8;
  if (!qword_281225DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DD8);
  }

  return result;
}

uint64_t sub_21E56C778(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_source;
  v4 = *MEMORY[0x277D55840];
  v5 = sub_21E57B3DC();
  (*(*(v5 - 8) + 104))(v1 + v3, v4, v5);
  *(v1 + OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_histogram) = a1;
  v6 = [objc_allocWithZone(MEMORY[0x277D23B78]) init];
  *(v1 + OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_appShortcutProvider) = v6;
  return v1;
}

uint64_t sub_21E56C824(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v129 = a2;
  v130 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_9();
  v128 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620);
  OUTLINED_FUNCTION_13_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_9();
  v127 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  OUTLINED_FUNCTION_13_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_9();
  v126 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  OUTLINED_FUNCTION_13_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_9();
  v125 = v23;
  v124 = sub_21E57B3DC();
  v24 = OUTLINED_FUNCTION_0(v124);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v123 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_21E57B5EC();
  v30 = OUTLINED_FUNCTION_0(v118);
  v32 = v31;
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v30);
  v37 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  i = &v108 - v39;
  v139 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_61;
  }

  v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v41)
  {
    return MEMORY[0x277D84F90];
  }

  v119 = a1 & 0xC000000000000001;
  v111 = a1 & 0xFFFFFFFFFFFFFF8;
  v110 = a1 + 32;
  v116 = v32 + 1;
  v122 = *MEMORY[0x277D55840];
  v121 = (v26 + 104);
  v26 = 0;
  *&v38 = 136315394;
  v108 = v38;
  *&v38 = 136315650;
  v109 = v38;
  v134 = MEMORY[0x277D84F90];
  v113 = a1;
  v114 = i;
  v117 = v41;
  v115 = v37;
  do
  {
    if (v119)
    {
      v42 = MEMORY[0x223D5CE50](v26, a1);
    }

    else
    {
      if (v26 >= *(v111 + 16))
      {
        goto LABEL_60;
      }

      v42 = *(v110 + 8 * v26);
    }

    v32 = v42;
    if (__OFADD__(v26++, 1))
    {
      goto LABEL_59;
    }

    v120 = v26;
    v138 = MEMORY[0x277D84F90];
    v44 = WFAllGroupedPhrasesForAutoShortcut();
    if (v44)
    {
      v26 = v44;
      v135 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C70, &qword_21E57DBD8);
      v37 = sub_21E57B78C();

      v45 = *(v37 + 2);
      if (v45)
      {
        a1 = 0;
        v136 = (v37 + 32);
        i = MEMORY[0x277D84F90];
        do
        {
          if (a1 >= *(v37 + 2))
          {
            goto LABEL_58;
          }

          v26 = *(v136 + 8 * a1);
          if (v26 >> 62)
          {
            if (v26 < 0)
            {
              v61 = *(v136 + 8 * a1);
            }

            v32 = sub_21E57BA4C();
            if (v32)
            {
LABEL_16:
              sub_21E55BF7C(0, (v26 & 0xC000000000000001) == 0, v26);
              if ((v26 & 0xC000000000000001) != 0)
              {

                v47 = MEMORY[0x223D5CE50](0, v26);
              }

              else
              {
                v46 = *(v26 + 32);

                v47 = v46;
              }

              v48 = v47;
              for (i = 0; v32 != i; ++i)
              {
                if ((v26 & 0xC000000000000001) != 0)
                {
                  v49 = MEMORY[0x223D5CE50](i, v26);
                }

                else
                {
                  if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_57;
                  }

                  v49 = *(v26 + 8 * i + 32);
                }

                v50 = v49;
                if (__OFADD__(i, 1))
                {
                  __break(1u);
LABEL_57:
                  __break(1u);
LABEL_58:
                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
LABEL_61:
                  v41 = sub_21E57BA4C();
                  goto LABEL_3;
                }

                if ([v49 isPrimary])
                {

                  v56 = [v50 localizedPhrase];
                  v57 = sub_21E57B67C();
                  v59 = v58;

                  OUTLINED_FUNCTION_8_4();
                  v32 = &v138;
                  sub_21E545A3C();
                  v26 = *(v138 + 16);
                  sub_21E52F384(v26);
                  OUTLINED_FUNCTION_7_6();
                  *(v60 + 32) = v57;
                  *(v60 + 40) = v59;
                  v138 = i;
                  swift_endAccess();

                  goto LABEL_29;
                }
              }

              v51 = [v48 localizedPhrase];
              v52 = sub_21E57B67C();
              v54 = v53;

              OUTLINED_FUNCTION_8_4();
              v32 = &v138;
              sub_21E545A3C();
              v26 = *(v138 + 16);
              sub_21E52F384(v26);
              OUTLINED_FUNCTION_7_6();
              *(v55 + 32) = v52;
              *(v55 + 40) = v54;
              v138 = i;
              swift_endAccess();
              v50 = v48;
LABEL_29:
            }
          }

          else
          {
            v32 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v32)
            {
              goto LABEL_16;
            }
          }

          ++a1;
        }

        while (a1 != v45);

        a1 = v113;
      }

      else
      {

        i = MEMORY[0x277D84F90];
      }

      v66 = v114;
      sub_21E57B5BC();
      v67 = v135;
      v32 = sub_21E57B5DC();
      v68 = sub_21E57B85C();

      v69 = os_log_type_enabled(v32, v68);
      v37 = v115;
      v132 = v67;
      if (v69)
      {
        v70 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v137[0] = v136;
        *v70 = v109;
        v71 = [v67 bundleIdentifier];
        sub_21E57B67C();
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_10_6();
        *(v70 + 4) = v71;
        *(v70 + 12) = 2080;
        v72 = [v67 actionIdentifier];
        sub_21E57B67C();
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_10_6();
        *(v70 + 14) = v72;
        *(v70 + 22) = 2080;

        v74 = MEMORY[0x223D5CC90](v73, MEMORY[0x277D837D0]);
        v76 = v75;

        v77 = sub_21E5553D8(v74, v76, v137);

        *(v70 + 24) = v77;
        _os_log_impl(&dword_21E527000, v32, v68, "getThirdPartyPhrases: %s %s: %s", v70, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();

        OUTLINED_FUNCTION_3_10();
        v79 = v114;
      }

      else
      {

        OUTLINED_FUNCTION_3_10();
        v79 = v66;
      }

      v78(v79, v118);
      v80 = i;
      i = *(i + 16);
      if (i)
      {
        v131 = sub_21E57B5AC();

        v112 = v80;
        v81 = (v80 + 40);
        v82 = v132;
        do
        {
          v83 = *v81;
          v136 = *(v81 - 1);

          v84 = [v82 bundleIdentifier];
          v85 = sub_21E57B67C();
          v134 = v86;
          v135 = v85;

          v87 = [v82 actionIdentifier];
          v133 = sub_21E57B67C();

          (*v121)(v123, v122, v124);
          v88 = sub_21E57B1FC();
          OUTLINED_FUNCTION_11_0(v125, v89, v90, v88);
          v91 = sub_21E57AC4C();
          OUTLINED_FUNCTION_11_0(v126, v92, v93, v91);
          v94 = sub_21E57B5FC();
          OUTLINED_FUNCTION_11_0(v127, v95, v96, v94);
          v97 = sub_21E57B04C();
          OUTLINED_FUNCTION_11_0(v128, v98, v99, v97);
          v100 = v131;
          v101 = sub_21E57B59C();
          v137[3] = v100;
          v137[4] = MEMORY[0x277D55898];
          v137[0] = v101;
          v102 = sub_21E57B4AC();
          v103 = *(v102 + 48);
          v104 = *(v102 + 52);
          swift_allocObject();

          sub_21E57B44C();

          v32 = &v139;
          MEMORY[0x223D5CC60](v105);
          if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21E57B7AC();
          }

          sub_21E57B7CC();

          v81 += 2;
          --i;
          v82 = v132;
        }

        while (i);
        v134 = v139;

        swift_bridgeObjectRelease_n();
        a1 = v113;
        v37 = v115;
      }

      else
      {
      }
    }

    else
    {
      sub_21E57B5BC();
      i = v32;
      v32 = v37;
      v62 = sub_21E57B5DC();
      v63 = sub_21E57B86C();

      if (os_log_type_enabled(v62, v63))
      {
        v32 = swift_slowAlloc();
        v137[0] = swift_slowAlloc();
        *v32 = v108;
        v64 = [i bundleIdentifier];
        sub_21E57B67C();
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_10_6();
        *(v32 + 4) = v64;
        *(v32 + 6) = 2080;
        v65 = [i actionIdentifier];
        sub_21E57B67C();
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_10_6();
        *(v32 + 14) = v65;
        _os_log_impl(&dword_21E527000, v62, v63, "getThirdPartyPhrases: Failed to get grouped phrases for %s - %s", v32, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();
      }

      else
      {
      }

      OUTLINED_FUNCTION_3_10();
      v106(v37, v118);
    }

    v26 = v120;
  }

  while (v120 != v117);
  return v134;
}

uint64_t sub_21E56D398(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E57B5EC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E57B5BC();
  v12 = sub_21E57B5DC();
  v13 = sub_21E57B84C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21E527000, v12, v13, "Ranking App Shortcut phrases", v14, 2u);
    OUTLINED_FUNCTION_39();
  }

  (*(v7 + 8))(v11, v4);
  v15 = *(v2 + OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_histogram);

  sub_21E5427F8(a1);
}

uint64_t sub_21E56D4EC()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_source;
  v2 = sub_21E57B3DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_histogram);

  return v0;
}

uint64_t sub_21E56D56C()
{
  sub_21E56D4EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AppShortcutsSource()
{
  result = qword_2812262E0;
  if (!qword_2812262E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E56D618()
{
  result = sub_21E57B3DC();
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

uint64_t sub_21E56D6C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E56D740(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E568168;

  return (sub_21E56D814)(v8, a2, a3, v7);
}

uint64_t sub_21E56D814(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v4[10] = *a4;
  v6 = sub_21E57B5EC();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v9 = type metadata accessor for DefaultEligibilityCriteria();
  v4[16] = v9;
  v4[5] = v9;
  v4[6] = &off_282F92F38;
  v4[2] = a1;

  return MEMORY[0x2822009F8](sub_21E56D944);
}

uint64_t sub_21E56D944()
{
  v25 = v0;
  v1 = v0[15];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[16]);
  v3 = *(*__swift_project_boxed_opaque_existential_1((*v2 + 16), *(*v2 + 40)) + 16);

  v0[17] = sub_21E529EAC(v4);
  sub_21E57B5BC();
  v5 = sub_21E57B5DC();
  v6 = sub_21E57B84C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[15];
  v10 = v0[11];
  v9 = v0[12];
  if (v7)
  {
    v11 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = sub_21E57BC2C();
    v16 = sub_21E5553D8(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21E527000, v5, v6, "%s: Fetching phrases", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();
  }

  v17 = *(v9 + 8);
  v17(v8, v10);
  v0[18] = v17;
  v18 = v0[10];
  v19 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_21E56DB4C;
  v21 = v0[7];
  v22 = v0[8];

  return sub_21E5589A4();
}

uint64_t sub_21E56DB4C(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_21E56DC6C);
}

uint64_t sub_21E56DC6C()
{
  v44 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  sub_21E57B5BC();

  v3 = sub_21E57B5DC();
  v4 = sub_21E57B84C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = sub_21E5351E4(v6);

    _os_log_impl(&dword_21E527000, v3, v4, "AppShortcutsSouce: created %ld phrases from LNAutoShortcutsProvider", v7, 0xCu);
    OUTLINED_FUNCTION_39();
  }

  else
  {
    v8 = *(v0 + 160);
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 96) + 8;
  (*(v0 + 144))(*(v0 + 112), *(v0 + 88));
  result = sub_21E5351E4(v9);
  if (result)
  {
    v12 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v13 = 0;
    v14 = *(v0 + 160);
    v15 = v14 & 0xC000000000000001;
    v39 = v14 + 32;
    v41 = result;
    v40 = v14 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        MEMORY[0x223D5CE50](v13, *(v0 + 160));
      }

      else
      {
        v16 = *(v39 + 8 * v13);
      }

      v17 = *(v0 + 104);
      sub_21E57B5BC();

      v18 = sub_21E57B5DC();
      v19 = sub_21E57B84C();

      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 144);
      v22 = *(v0 + 104);
      v42 = *(v0 + 88);
      if (v20)
      {
        v23 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v23 = 136315650;
        v24 = sub_21E57B45C();
        v26 = sub_21E5553D8(v24, v25, &v43);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2080;
        v27 = sub_21E57B47C();
        v29 = sub_21E5553D8(v27, v28, &v43);

        *(v23 + 14) = v29;
        *(v23 + 22) = 2080;
        v30 = sub_21E57B40C();
        v32 = sub_21E5553D8(v30, v31, &v43);

        *(v23 + 24) = v32;
        v15 = v40;
        _os_log_impl(&dword_21E527000, v18, v19, "Phrase: %s, BundleId: %s, ActionId: %s", v23, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_39();
        v12 = v41;
        OUTLINED_FUNCTION_39();
      }

      else
      {
      }

      v21(v22, v42);
      ++v13;
    }

    while (v12 != v13);
  }

  v34 = *(v0 + 112);
  v33 = *(v0 + 120);
  v35 = *(v0 + 104);
  v36 = *(v0 + 72);
  sub_21E56D398(*(v0 + 160));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v37 = *(v0 + 8);
  v38 = *(v0 + 160);

  return v37(v38);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_21E5553D8(v0, v1, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_9_7()
{
}

uint64_t OUTLINED_FUNCTION_10_6()
{
}

BOOL sub_21E56E084(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_21E56E134(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21E57B6CC();
    v1 = sub_21E57B72C();

    return v1;
  }

  return result;
}

uint64_t sub_21E56E1F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
    if (v6 || (sub_21E57BB3C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000021E57F380 == a2;
      if (v7 || (sub_21E57BB3C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000021E57FED0 == a2;
        if (v8 || (sub_21E57BB3C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000021E57FEF0 == a2;
          if (v9 || (sub_21E57BB3C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000014 && 0x800000021E57FF10 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_21E57BB3C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21E56E3F4(char a1)
{
  result = 0x656D614E65707974;
  switch(a1)
  {
    case 1:
      result = 0x7954746E65746E69;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21E56E4BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D88, &qword_21E57E800);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E573530();
  sub_21E57BBEC();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v20) = 0;
  OUTLINED_FUNCTION_29_1();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v20) = 1;
    OUTLINED_FUNCTION_29_1();
    v20 = v3[4];
    HIBYTE(v19) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
    sub_21E573584(&qword_27CEC8A80);
    OUTLINED_FUNCTION_1_7();
    v20 = v3[5];
    HIBYTE(v19) = 3;
    OUTLINED_FUNCTION_1_7();
    v20 = v3[6];
    HIBYTE(v19) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8958, &unk_21E57C580);
    sub_21E5735EC(&qword_27CEC8D38);
    OUTLINED_FUNCTION_1_7();
    v20 = v3[7];
    HIBYTE(v19) = 5;
    OUTLINED_FUNCTION_1_7();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_21E56E6E8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D80, &qword_21E57E7F8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E573530();
  sub_21E57BBDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  OUTLINED_FUNCTION_11_5();
  v10 = sub_21E57BAAC();
  v12 = v11;
  LOBYTE(v30[0]) = 1;
  OUTLINED_FUNCTION_11_5();
  v22 = v10;
  v23 = sub_21E57BAAC();
  v25 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
  sub_21E573584(qword_2812260F8);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_11_5();
  sub_21E57BA9C();
  v21 = v30[0];
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_11_5();
  sub_21E57BA9C();
  v24 = v30[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8958, &unk_21E57C580);
  sub_21E5735EC(&qword_2812264D8);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_11_5();
  sub_21E57BA9C();
  v14 = v30[0];
  v31 = 5;
  OUTLINED_FUNCTION_11_5();
  sub_21E57BA9C();
  v15 = OUTLINED_FUNCTION_2_8();
  v16(v15);
  v20 = v32;
  *&v26 = v22;
  *(&v26 + 1) = v12;
  *&v27 = v23;
  *(&v27 + 1) = v25;
  *&v28 = v30[0];
  *(&v28 + 1) = v30[0];
  *&v29 = v30[0];
  *(&v29 + 1) = v32;
  sub_21E573240(&v26, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v30[0] = v22;
  v30[1] = v12;
  v30[2] = v23;
  v30[3] = v25;
  v30[4] = v21;
  v30[5] = v24;
  v30[6] = v14;
  v30[7] = v20;
  result = sub_21E573278(v30);
  v18 = v27;
  *a2 = v26;
  a2[1] = v18;
  v19 = v29;
  a2[2] = v28;
  a2[3] = v19;
  return result;
}

uint64_t sub_21E56EB50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6465766F72707061 && a2 == 0xEF73746E65746E49)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E57BB3C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E56EBF4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D68, &qword_21E57E7F0);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E5733C0();
  sub_21E57BBEC();
  v14[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D60, &qword_21E57E7E8);
  sub_21E573468(&qword_27CEC8D70);
  sub_21E57BAFC();
  return (*(v6 + 8))(v11, v4);
}

void *sub_21E56ED70(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D58, &qword_21E57E7E0);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E5733C0();
  sub_21E57BBDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D60, &qword_21E57E7E8);
    sub_21E573468(&qword_281225540);
    sub_21E57BABC();
    (*(v5 + 8))(v10, v3);
    v12 = v14[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v12;
}

uint64_t sub_21E56EF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E56E1F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E56EF44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E56E3EC();
  *a1 = result;
  return result;
}

uint64_t sub_21E56EF6C(uint64_t a1)
{
  v2 = sub_21E573530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E56EFA8(uint64_t a1)
{
  v2 = sub_21E573530();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21E56EFE4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_21E56E6E8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_21E56F044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E56EB50(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E56F070(uint64_t a1)
{
  v2 = sub_21E5733C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E56F0AC(uint64_t a1)
{
  v2 = sub_21E5733C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21E56F0E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_21E56ED70(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21E56F130()
{
  result = sub_21E54335C(&unk_282F92308);
  qword_2812269E8 = result;
  return result;
}

uint64_t sub_21E56F158()
{
  v1 = *v0;
  v2 = sub_21E57B5EC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = sub_21E57ABEC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v35 - v20;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = sub_21E546314(0xD000000000000019, 0x800000021E57FEB0, 0x7473696C70, 0xE500000000000000, v23);

  if (v24)
  {
    sub_21E57ABDC();

    (*(v14 + 32))(v21, v19, v11);
    v25 = sub_21E57AB9C();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_21E57AB8C();
    v28 = sub_21E57ABFC();
    v30 = v29;
    sub_21E5732A8();
    sub_21E57AB7C();
    (*(v14 + 8))(v21, v11);
    sub_21E53505C(v28, v30);

    return v35[2];
  }

  else
  {
    sub_21E57B5BC();
    v31 = sub_21E57B5DC();
    v32 = sub_21E57B85C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_21E527000, v31, v32, "SiriSuggestionsPoolSource: unable to get URL to filePath. Returning 0 phrases", v33, 2u);
      OUTLINED_FUNCTION_12_2();
    }

    (*(v5 + 8))(v10, v2);
    return 0;
  }
}

uint64_t sub_21E56F5C0(uint64_t a1)
{
  v3 = sub_21E5351E4(a1);
  v4 = v3;
  if (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
      goto LABEL_30;
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D5CE50](v5, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = COERCE_DOUBLE(sub_21E57B3EC());
      if (v9)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v8;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v6 + 16);
        OUTLINED_FUNCTION_5_6();
        sub_21E543828();
        v6 = v14;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_40(v11);
        sub_21E543828();
        v6 = v15;
      }

      ++v5;

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v21 = v6;

  sub_21E571410(&v21);

  v1 = v21;
  if (v4)
  {
    if (v4 >= 1)
    {
      v16 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223D5CE50](v16, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v16 + 32);
        }

        ++v16;
        v18 = COERCE_DOUBLE(sub_21E57B3EC());
        if (v19)
        {
          v18 = 0.0;
        }

        sub_21E57A72C(v1, v18);
        sub_21E57B3FC();
      }

      while (v4 != v16);
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);

    __break(1u);
    return result;
  }

LABEL_26:
}

uint64_t sub_21E56F7B4()
{
  OUTLINED_FUNCTION_29();
  v1[35] = v2;
  v1[36] = v0;
  v3 = sub_21E57B5EC();
  v1[37] = v3;
  OUTLINED_FUNCTION_6(v3);
  v1[38] = v4;
  v6 = *(v5 + 64) + 15;
  v1[39] = swift_task_alloc();
  v7 = sub_21E57AFEC();
  v1[40] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[41] = v8;
  v10 = *(v9 + 64) + 15;
  v1[42] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89E8, &unk_21E57C638) - 8) + 64);
  v1[43] = OUTLINED_FUNCTION_187();
  v1[44] = swift_task_alloc();
  v12 = sub_21E57B03C();
  v1[45] = v12;
  OUTLINED_FUNCTION_6(v12);
  v1[46] = v13;
  v15 = *(v14 + 64);
  v1[47] = OUTLINED_FUNCTION_187();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v16 = sub_21E57B06C();
  v1[50] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[51] = v17;
  v19 = *(v18 + 64);
  v1[52] = OUTLINED_FUNCTION_187();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v20 = sub_21E57B08C();
  v1[62] = v20;
  OUTLINED_FUNCTION_6(v20);
  v1[63] = v21;
  v23 = *(v22 + 64);
  v1[64] = OUTLINED_FUNCTION_187();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v24);
}

uint64_t sub_21E56FA70(__n128 a1)
{
  v241 = v1;
  v2 = *(v1 + 280);
  v3 = MEMORY[0x277D84F90];
  *(v1 + 272) = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *(v1 + 504);
    v6 = *(v1 + 408);
    v7 = *(v1 + 368);
    v213 = *(v1 + 336);
    v8 = (v2 + 32);
    v196 = (*(v1 + 304) + 8);
    LODWORD(v199) = *MEMORY[0x277D60878];
    v212 = (*(v1 + 328) + 104);
    v211 = (v7 + 16);
    v232 = (v6 + 16);
    v230 = (v6 + 8);
    v231 = v6;
    v208 = v7 + 8;
    HIDWORD(v199) = *MEMORY[0x277D60868];
    v229 = *MEMORY[0x277D60928];
    v227 = (v5 + 8);
    v228 = (v5 + 104);
    a1.n128_u64[0] = 136315394;
    v191 = a1;
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[3];
      *(v1 + 48) = v8[2];
      *(v1 + 64) = v11;
      *(v1 + 16) = v9;
      *(v1 + 32) = v10;
      v12 = *(v1 + 48);
      if (v12)
      {
        sub_21E573240(v1 + 16, v1 + 208);
        v13 = v12;
      }

      else
      {
        sub_21E573240(v1 + 16, v1 + 80);
        v13 = sub_21E57B62C();
      }

      v14 = *(v1 + 56);
      v238 = v3;

      if (v14)
      {
        v237 = v14;
      }

      else
      {
        v237 = sub_21E57B62C();
      }

      v16 = *(v1 + 32);
      v15 = *(v1 + 40);
      v17 = *(v1 + 24);
      v234 = v8;
      v235 = *(v1 + 16);
      v18 = v16 == 0x6E6F69746361 && v15 == 0xE600000000000000;
      v233 = v4;
      if (v18 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
      {

        sub_21E52D2D4(0x656C67676F547369, 0xEE006E6F69746341, v13);
        if (v19 && (v20 = sub_21E57B7DC(), v20 != 2) && (v20 & 1) != 0)
        {
          v21 = *(v1 + 528);
          v22 = *(v1 + 488);
          v23 = *(v1 + 496);
          v222 = *(v1 + 480);
          v24 = *(v1 + 392);
          v25 = *(v1 + 400);

          swift_isUniquelyReferenced_nonNull_native();
          v26 = OUTLINED_FUNCTION_15_3();
          OUTLINED_FUNCTION_10_7(v26 & 0xFFFF0000FFFFFFFFLL | 0x6E4F00000000, 0xE600000000000000);

          OUTLINED_FUNCTION_27_1();
          sub_21E57B21C();
          v220 = *v228;
          (*v228)(v21, v229, v23);
          sub_21E57B07C();
          sub_21E539508(v237);
          sub_21E57B05C();
          v27 = v222;
          v223 = *v232;
          (*v232)(v27, v22, v25);
          v28 = v238;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v167 = *(v238 + 16);
            v168 = OUTLINED_FUNCTION_5_6();
            sub_21E5438E4(v168, v169, v170, v238);
            v28 = v171;
          }

          v30 = *(v28 + 16);
          v29 = *(v28 + 24);
          if (v30 >= v29 >> 1)
          {
            v172 = OUTLINED_FUNCTION_6_6(v29);
            sub_21E5438E4(v172, v173, v174, v28);
            v239 = v175;
          }

          else
          {
            v239 = v28;
          }

          v31 = *(v1 + 520);
          v32 = *(v1 + 496);
          v33 = *(v1 + 480);
          v202 = *(v1 + 472);
          v205 = *(v1 + 464);
          v35 = *(v1 + 392);
          v34 = *(v1 + 400);
          *(v239 + 16) = v30 + 1;
          v36 = *(v231 + 80);
          OUTLINED_FUNCTION_23_2();
          v216 = v37;
          v214 = *(v38 + 72);
          v218 = *(v38 + 32);
          v218(v239 + v37 + v214 * v30);
          swift_isUniquelyReferenced_nonNull_native();
          v39 = OUTLINED_FUNCTION_15_3();
          OUTLINED_FUNCTION_10_7(v39 | 0x66664F00000000, 0xE700000000000000);

          OUTLINED_FUNCTION_27_1();
          sub_21E57B21C();
          v220(v31, v229, v32);
          sub_21E57B07C();
          sub_21E539508(v237);

          sub_21E57B05C();
          v223(v205, v202, v34);
          v41 = *(v239 + 16);
          v40 = *(v239 + 24);
          if (v41 >= v40 >> 1)
          {
            v176 = OUTLINED_FUNCTION_40(v40);
            sub_21E5438E4(v176, v177, 1, v239);
            v239 = v178;
          }

          v224 = *(v1 + 528);
          v42 = *(v1 + 520);
          v44 = *(v1 + 488);
          v43 = *(v1 + 496);
          v45 = *(v1 + 472);
          v236 = *(v1 + 464);
          v46 = *(v1 + 400);
          sub_21E573278(v1 + 16);
          v47 = *v230;
          (*v230)(v45, v46);
          v48 = *v227;
          (*v227)(v42, v43);
          v47(v44, v46);
          v48(v224, v43);
          v3 = v239;
          *(v239 + 16) = v41 + 1;
          (v218)(v239 + v216 + v41 * v214, v236, v46);
        }

        else
        {
          v49 = *(v1 + 512);
          v50 = *(v1 + 496);
          v52 = *(v1 + 448);
          v51 = *(v1 + 456);
          v54 = *(v1 + 392);
          v53 = *(v1 + 400);

          OUTLINED_FUNCTION_27_1();
          sub_21E57B21C();
          (*v228)(v49, v229, v50);
          sub_21E57B07C();
          sub_21E539508(v237);

          sub_21E57B05C();
          (*v232)(v52, v51, v53);
          v55 = v238;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = *(v238 + 16);
            v151 = OUTLINED_FUNCTION_5_6();
            sub_21E5438E4(v151, v152, v153, v238);
            v55 = v154;
          }

          v57 = *(v55 + 16);
          v56 = *(v55 + 24);
          if (v57 >= v56 >> 1)
          {
            v155 = OUTLINED_FUNCTION_6_6(v56);
            sub_21E5438E4(v155, v156, v157, v55);
            v55 = v158;
          }

          v58 = *(v1 + 512);
          v59 = *(v1 + 496);
          v61 = *(v1 + 448);
          v60 = *(v1 + 456);
          v62 = *(v1 + 400);
          sub_21E573278(v1 + 16);
          (*(v231 + 8))(v60, v62);
          (*v227)(v58, v59);
          v3 = v55;
          *(v55 + 16) = v57 + 1;
          v63 = *(v231 + 80);
          OUTLINED_FUNCTION_23_2();
          (*(v231 + 32))(v55 + v64 + *(v231 + 72) * v57, v61, v62);
        }
      }

      else
      {
        v65 = v16 == 0x746E65746E496E69 && v15 == 0xE800000000000000;
        if (v65 || (v66 = OUTLINED_FUNCTION_18_3(), (v66 & 1) != 0))
        {
          v219 = *(v1 + 440);
          v221 = *(v1 + 432);
          v225 = *(v1 + 400);
          v73 = *(v1 + 384);
          v74 = *(v1 + 352);
          v215 = *(v1 + 392);
          v217 = *(v1 + 360);
          v76 = *(v1 + 336);
          v75 = *(v1 + 344);
          v77 = *(v1 + 320);

          v78 = sub_21E57098C();
          *v76 = v235;
          v86 = OUTLINED_FUNCTION_26_2(v78, v79, v80, v81, v82, v83, v84, v85, v191.n128_i64[0], v191.n128_i64[1], v196, v199, v202, v205, v208, v211, v212, v213);
          v87(v86, HIDWORD(v200), v77);

          sub_21E539720(v13);

          sub_21E563058(v74, v75, &qword_27CEC89E8, &unk_21E57C638);
          OUTLINED_FUNCTION_25_4();
          sub_21E57AFFC();
          (*v211)(v215, v73, v217);
          sub_21E539508(v237);

          sub_21E57B05C();
          (*v232)(v221, v219, v225);
          v88 = v238;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v159 = *(v238 + 16);
            v160 = OUTLINED_FUNCTION_5_6();
            sub_21E5438E4(v160, v161, v162, v238);
            v88 = v163;
          }

          v90 = *(v88 + 16);
          v89 = *(v88 + 24);
          if (v90 >= v89 >> 1)
          {
            v164 = OUTLINED_FUNCTION_40(v89);
            sub_21E5438E4(v164, v165, 1, v88);
            v88 = v166;
          }

          v92 = *(v1 + 432);
          v91 = *(v1 + 440);
          v93 = *(v1 + 400);
          v94 = *(v1 + 384);
          v96 = *(v1 + 352);
          v95 = *(v1 + 360);
          sub_21E573278(v1 + 16);
          v97 = (*(v231 + 8))(v91, v93);
          v105 = OUTLINED_FUNCTION_24_1(v97, v98, v99, v100, v101, v102, v103, v104, v192, v194, v197, v200, v203, v206, v209);
          v106(v105);
          sub_21E56514C(v96, &qword_27CEC89E8, &unk_21E57C638);
          v3 = v88;
          *(v88 + 16) = v90 + 1;
          v107 = *(v231 + 80);
          OUTLINED_FUNCTION_23_2();
          (*(v231 + 32))(v88 + v108 + *(v231 + 72) * v90, v92, v93);
        }

        else
        {
          if (v16 != 0x6E65746E49707061 || v15 != 0xE900000000000074)
          {
            v66 = OUTLINED_FUNCTION_18_3();
            if ((v66 & 1) == 0)
            {
              v138 = *(v1 + 312);

              sub_21E57B5BC();
              sub_21E573240(v1 + 16, v1 + 144);
              v139 = sub_21E57B5DC();
              v140 = sub_21E57B84C();
              sub_21E573278(v1 + 16);
              v141 = os_log_type_enabled(v139, v140);
              v142 = *(v1 + 312);
              v143 = *(v1 + 296);
              if (v141)
              {
                v144 = v4;
                v145 = swift_slowAlloc();
                v240 = swift_slowAlloc();
                *v145 = v191.n128_u32[0];
                *(v145 + 4) = sub_21E5553D8(v16, v15, &v240);
                *(v145 + 12) = 2080;

                v146 = OUTLINED_FUNCTION_27_1();
                v149 = sub_21E5553D8(v146, v147, v148);

                *(v145 + 14) = v149;
                _os_log_impl(&dword_21E527000, v139, v140, "StaticSuggestion:getSuggestions: Unsupported intentType %s for intent %s", v145, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_12_2();
                v4 = v144;
                v8 = v234;
                OUTLINED_FUNCTION_39();
              }

              sub_21E573278(v1 + 16);
              (*v196)(v142, v143);
              v3 = v238;
              goto LABEL_40;
            }
          }

          v111 = *(v1 + 416);
          v110 = *(v1 + 424);
          v112 = *(v1 + 392);
          v226 = *(v1 + 400);
          v113 = *(v1 + 376);
          v114 = *(v1 + 360);
          v115 = *(v1 + 320);
          **(v1 + 336) = v235;
          v116 = OUTLINED_FUNCTION_26_2(v66, v67, v115, v68, v69, v70, v71, v72, v191.n128_i64[0], v191.n128_i64[1], v196, v199, v202, v205, v208, v211, v212, v213);
          v117(v116, v201);

          sub_21E539720(v13);

          sub_21E57B00C();
          (*v211)(v112, v113, v114);
          sub_21E539508(v237);

          sub_21E57B05C();
          (*v232)(v111, v110, v226);
          v118 = v238;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v179 = *(v238 + 16);
            v180 = OUTLINED_FUNCTION_5_6();
            sub_21E5438E4(v180, v181, v182, v238);
            v118 = v183;
          }

          v120 = *(v118 + 16);
          v119 = *(v118 + 24);
          if (v120 >= v119 >> 1)
          {
            v184 = OUTLINED_FUNCTION_6_6(v119);
            sub_21E5438E4(v184, v185, v186, v118);
            v118 = v187;
          }

          v122 = *(v1 + 416);
          v121 = *(v1 + 424);
          v123 = *(v1 + 400);
          v124 = *(v1 + 376);
          v125 = *(v1 + 360);
          sub_21E573278(v1 + 16);
          v126 = (*(v231 + 8))(v121, v123);
          v134 = OUTLINED_FUNCTION_24_1(v126, v127, v128, v129, v130, v131, v132, v133, v193, v195, v198, v201, v204, v207, v210);
          v135(v134);
          v3 = v118;
          *(v118 + 16) = v120 + 1;
          v136 = *(v231 + 80);
          OUTLINED_FUNCTION_23_2();
          (*(v231 + 32))(v118 + v137 + *(v231 + 72) * v120, v122, v123);
        }
      }

      v4 = v233;
      v8 = v234;
LABEL_40:
      v8 += 4;
      --v4;
    }

    while (v4);
  }

  *(v1 + 536) = v3;
  v188 = *__swift_project_boxed_opaque_existential_1((*(v1 + 288) + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_suggestionsForIntentProvider), *(*(v1 + 288) + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_suggestionsForIntentProvider + 24));
  v189 = swift_task_alloc();
  *(v1 + 544) = v189;
  *v189 = v1;
  v189[1] = sub_21E570710;

  return sub_21E5615B8();
}

uint64_t sub_21E570710()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  v4 = *(v3 + 544);
  v5 = *(v3 + 536);
  v6 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v7 = v6;
  *(v9 + 552) = v8;

  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E570818()
{
  v1 = v0[69];
  if (v1)
  {
    sub_21E54A558(v1);
  }

  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v6 = v0[60];
  v5 = v0[61];
  v8 = v0[58];
  v7 = v0[59];
  v10 = v0[56];
  v9 = v0[57];
  v11 = v0[55];
  v14 = v0[54];
  v15 = v0[53];
  v16 = v0[52];
  v17 = v0[49];
  v18 = v0[48];
  v19 = v0[47];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[42];
  v23 = v0[39];
  v24 = v0[34];

  OUTLINED_FUNCTION_9_0();

  return v12(v24);
}

uint64_t sub_21E57098C()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v5 = v4;
  v6 = v2 == 0xD000000000000029 && 0x800000021E57FE30 == v1;
  if (!v6 && (sub_21E57BB3C() & 1) == 0)
  {
    v13 = v3 == 0xD000000000000024 && 0x800000021E57FE60 == v1;
    if (!v13 && (sub_21E57BB3C() & 1) == 0 || !v0)
    {
      goto LABEL_33;
    }

    v14 = OUTLINED_FUNCTION_30_1();
    if (v15)
    {
      if (v14 == 0x636973756DLL && v15 == 0xE500000000000000)
      {
      }

      else
      {
        v17 = sub_21E57BB3C();

        if ((v17 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v11 = MEMORY[0x277CD3EC0];
      goto LABEL_14;
    }

LABEL_27:
    v18 = OUTLINED_FUNCTION_30_1();
    if (v19)
    {
      if (v18 == 1937204590 && v19 == 0xE400000000000000)
      {
      }

      else
      {
        v21 = sub_21E57BB3C();

        if ((v21 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_21E535114(0, &qword_2812254F0, 0x277CD3EC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8938, &qword_21E57E680);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_21E57E5F0;
      v38 = objc_allocWithZone(MEMORY[0x277CD3DB8]);
      OUTLINED_FUNCTION_25_4();
      *(v37 + 32) = sub_21E57130C(v39, v40, v41, v42, 7, 0);
      v43 = sub_21E57B87C();
      sub_21E56228C(0xD000000000000012, 0x800000021E57FE90);
      *v5 = v43;
      goto LABEL_37;
    }

LABEL_33:
    sub_21E57B08C();
    OUTLINED_FUNCTION_26();
    goto LABEL_38;
  }

  if (!v0)
  {
    goto LABEL_13;
  }

  v7 = sub_21E52D2D4(0x656D686361747461, 0xEA0000000000746ELL, v0);
  if (!v8)
  {
    goto LABEL_13;
  }

  if (v7 == 0x6E6F697461636F6CLL && v8 == 0xE800000000000000)
  {

    goto LABEL_35;
  }

  v10 = sub_21E57BB3C();

  if (v10)
  {
LABEL_35:
    v26 = [objc_opt_self() attachmentWithCurrentLocation];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8938, &qword_21E57E680);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_21E57E5F0;
    *(v27 + 32) = v26;
    v28 = objc_allocWithZone(MEMORY[0x277CD4078]);
    OUTLINED_FUNCTION_25_4();
    v12 = sub_21E571168(v29, v30, v31, v32, 0, 0, 0, 0, 0, 0, v27);
    goto LABEL_36;
  }

LABEL_13:
  v11 = MEMORY[0x277CD4078];
LABEL_14:
  v12 = [objc_allocWithZone(v11) init];
LABEL_36:
  *v5 = v12;
LABEL_37:
  v33 = *MEMORY[0x277D60918];
  v34 = sub_21E57B08C();
  OUTLINED_FUNCTION_8_3(v34);
  (*(v35 + 104))(v5, v33, v34);
  v22 = v5;
  v23 = 0;
  v24 = 1;
  v25 = v34;
LABEL_38:

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_21E570D6C()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_source;
  v2 = sub_21E57B3DC();
  OUTLINED_FUNCTION_8_3(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_appFinderProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_suggestionsForIntentProvider));
  return v0;
}

uint64_t sub_21E570DE4()
{
  sub_21E570D6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for StaticSuggestionsSource()
{
  result = qword_281225B48;
  if (!qword_281225B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E570E90()
{
  result = sub_21E57B3DC();
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

uint64_t sub_21E570F2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E570FA8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E57107C;

  return (sub_21E572B6C)(v8, a2, a3, v7);
}

uint64_t sub_21E57107C()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_32();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v6 = v5;

  OUTLINED_FUNCTION_9_0();

  return v7(v2);
}

id sub_21E571168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a1)
  {
    sub_21E535114(0, &qword_2812254C0, 0x277CD3E90);
    v16 = sub_21E57B77C();

    if (a4)
    {
LABEL_3:
      v17 = sub_21E57B66C();

      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  if (a7)
  {
    v18 = sub_21E57B66C();
  }

  else
  {
    v18 = 0;
  }

  if (a9)
  {
    v19 = sub_21E57B66C();
  }

  else
  {
    v19 = 0;
  }

  if (a11)
  {
    sub_21E535114(0, &qword_2812254D0, 0x277CD4070);
    v20 = sub_21E57B77C();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v11 initWithRecipients:v16 outgoingMessageType:a2 content:v17 speakableGroupName:a5 conversationIdentifier:v18 serviceName:v19 sender:a10 attachments:v20];

  return v21;
}

id sub_21E57130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  if (!a2)
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_21E57B66C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_21E57B66C();

LABEL_6:
  v13 = [v7 initWithIdentifier:v11 title:v12 type:a5 artwork:a6];

  return v13;
}

uint64_t sub_21E5713CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21E57BB3C() & 1;
  }
}

uint64_t sub_21E571410(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21E565138(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21E57147C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21E57147C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21E57BB0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21E57B7BC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21E5715CC(v7, v8, a1, v4);
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
    return sub_21E571570(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21E571570(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
        if (v7 >= *v9)
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

void sub_21E5715CC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v75 = a4;
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

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
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

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
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
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
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

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_21E543698();
        v7 = v73;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_21E543698();
        v7 = v74;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
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

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_21E571BA8((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_21E571A7C(&v80, *a1, a3);
LABEL_89:
}

uint64_t sub_21E571A7C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21E564BC8(v5);
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
    sub_21E571BA8((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
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

uint64_t sub_21E571BA8(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_21E5626D0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_21E5626D0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_21E571D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E57B10C();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_21E57B5EC();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = sub_21E57B3DC();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();
  v16 = sub_21E57B25C();
  v2[20] = v16;
  v17 = *(v16 - 8);
  v2[21] = v17;
  v18 = *(v17 + 64) + 15;
  v2[22] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v20 = sub_21E57B23C();
  v2[26] = v20;
  v21 = *(v20 - 8);
  v2[27] = v21;
  v22 = *(v21 + 64) + 15;
  v2[28] = swift_task_alloc();
  v23 = sub_21E57AFDC();
  v2[29] = v23;
  v24 = *(v23 - 8);
  v2[30] = v24;
  v25 = *(v24 + 64) + 15;
  v2[31] = swift_task_alloc();
  v26 = sub_21E57AF9C();
  v2[32] = v26;
  v27 = *(v26 - 8);
  v2[33] = v27;
  v28 = *(v27 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[5] = type metadata accessor for DefaultEligibilityCriteria();
  v2[6] = &off_282F92F38;
  v2[2] = a2;

  v2[7] = MEMORY[0x277D84F90];
  v29 = swift_task_alloc();
  v2[35] = v29;
  *v29 = v2;
  v29[1] = sub_21E572194;

  return sub_21E56F7B4();
}

uint64_t sub_21E572194()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  v4 = *(v3 + 280);
  *v2 = *v0;
  *(v1 + 288) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E572280(__n128 a1)
{
  v144 = v1;
  v2 = v1[36];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[33];
    v111 = v1[24];
    v5 = v1[9];
    v6 = *(v4 + 16);
    v4 += 16;
    v122 = v6;
    v7 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v121 = *(v4 + 56);
    v127 = (v1[30] + 8);
    v120 = (v1[27] + 8);
    v119 = (v1[21] + 8);
    v112 = *MEMORY[0x277D61238];
    v117 = *MEMORY[0x277D60E90];
    v115 = (v5 + 8);
    v116 = (v5 + 104);
    v110 = (v1[12] + 8);
    v118 = (v4 - 8);
    v114 = *MEMORY[0x277D55850];
    v125 = MEMORY[0x277D84F90];
    v113 = (v1[18] + 104);
    a1.n128_u64[0] = 136315394;
    v109 = a1;
    while (1)
    {
      v139 = v7;
      v141 = v3;
      v9 = v1[31];
      v8 = v1[32];
      v11 = v1[28];
      v10 = v1[29];
      v12 = v1[25];
      v133 = v1[24];
      v13 = v1[22];
      v129 = v1[26];
      v131 = v1[20];
      v122(v1[34]);
      sub_21E57AF5C();
      sub_21E57AFAC();
      v14 = *v127;
      (*v127)(v9, v10);
      sub_21E57AF6C();
      v128 = sub_21E57B22C();
      v137 = v15;
      (*v120)(v11, v129);
      sub_21E57AF5C();
      sub_21E57AFBC();
      v130 = v14;
      v14(v9, v10);
      sub_21E57B24C();
      (*v119)(v13, v131);
      sub_21E563058(v12, v133, &qword_27CEC8908, &qword_21E57C480);
      v16 = sub_21E57B1FC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v133, 1, v16);
      v18 = v1[24];
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v19 = *(v16 - 8);
      v20 = (*(v19 + 88))(v18, v16);
      v21 = v1[24];
      if (v20 != v112)
      {
        (*(v19 + 8))(v1[24], v16);
        goto LABEL_8;
      }

      (*(v19 + 96))(v1[24], v16);
      v22 = *v21;
      v23 = *(v111 + 8);
LABEL_9:
      if (qword_281225B58 != -1)
      {
        swift_once();
      }

      v27 = qword_2812269E8;

      LOBYTE(v27) = sub_21E543EB0(v22, v23, v27);

      v134 = v22;
      if (v27 & 1) != 0 || (v28 = *__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]), , LOBYTE(v28) = sub_21E54A03C(), , (v28))
      {
        v29 = v1[34];
        v30 = v1[31];
        v31 = v1[25];
        v32 = v1[23];
        v126 = v32;
        v132 = v1[19];
        v34 = v1[16];
        v33 = v1[17];
        v35 = v1[15];
        v123 = v1[29];
        v124 = v1[14];
        (*v113)();
        sub_21E563058(v31, v32, &qword_27CEC8908, &qword_21E57C480);
        sub_21E57AC4C();
        OUTLINED_FUNCTION_26();
        __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
        sub_21E57B5FC();
        OUTLINED_FUNCTION_26();
        __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);

        sub_21E57AF5C();
        v44 = sub_21E57AFCC();
        v46 = v45;
        v130(v30, v123);
        sub_21E57B04C();
        OUTLINED_FUNCTION_26();
        __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
        v51 = sub_21E57B5AC();
        v52 = sub_21E57B59C();
        v143[3] = v51;
        v143[4] = MEMORY[0x277D55898];
        v143[0] = v52;
        v53 = sub_21E57B4AC();
        v54 = *(v53 + 48);
        v55 = *(v53 + 52);
        swift_allocObject();
        v97 = 0;
        v98 = 0;
        v106 = v46;
        v107 = v124;
        v104 = v143;
        v105 = v44;
        v103 = v35;
        LOBYTE(v102) = 1;
        v100 = v34;
        v101 = 0;
        v99 = 0;
        v96 = v126;
        v95 = v132;
        OUTLINED_FUNCTION_25_4();
        sub_21E57B44C();

        MEMORY[0x223D5CC60](v56);
        v57 = *((v1[7] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v1[7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v57 >> 1)
        {
          OUTLINED_FUNCTION_40(v57);
          sub_21E57B7AC();
        }

        v58 = v1[34];
        v59 = v1[32];
        v60 = v1[25];
        sub_21E57B7CC();

        sub_21E56514C(v60, &qword_27CEC8908, &qword_21E57C480);
        (*v118)(v58, v59);
        v61 = v1[7];

        v1[7] = v61;
      }

      else
      {
        v62 = v1[13];

        sub_21E57B5BC();

        v63 = sub_21E57B5DC();
        v64 = sub_21E57B85C();

        v65 = os_log_type_enabled(v63, v64);
        v66 = v1[34];
        v135 = v1[32];
        v67 = v1[25];
        v68 = v1[13];
        v69 = v1[11];
        if (v65)
        {
          v70 = swift_slowAlloc();
          v143[0] = swift_slowAlloc();
          *v70 = v109.n128_u32[0];
          v71 = sub_21E5553D8(v128, v137, v143);

          *(v70 + 4) = v71;
          *(v70 + 12) = 2080;

          v72 = sub_21E5553D8(v134, v23, v143);

          *(v70 + 14) = v72;
          _os_log_impl(&dword_21E527000, v63, v64, "Not adding suggestion %s because the app %s is not installed", v70, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_12_2();
        }

        else
        {
        }

        v81 = OUTLINED_FUNCTION_21_2(v73, v74, v75, v76, v77, v78, v79, v80, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109.n128_i64[0], v109.n128_i64[1], v110);
        v82(v81);
        sub_21E56514C(v67, &qword_27CEC8908, &qword_21E57C480);
        (*v118)(v66, v135);

        v61 = v125;
      }

      v125 = v61;
      v7 = v139 + v121;
      v3 = v141 - 1;
      if (v141 == 1)
      {
        v83 = v1[36];

        goto LABEL_23;
      }
    }

    sub_21E56514C(v18, &qword_27CEC8908, &qword_21E57C480);
LABEL_8:
    v24 = v1[10];
    v25 = v1[8];
    (*v116)(v24, v117, v25);
    v22 = sub_21E57B0FC();
    v23 = v26;
    (*v115)(v24, v25);
    goto LABEL_9;
  }

  v125 = MEMORY[0x277D84F90];
LABEL_23:
  v84 = v1[34];
  v85 = v1[31];
  v86 = v1[28];
  v88 = v1[24];
  v87 = v1[25];
  v90 = v1[22];
  v89 = v1[23];
  v91 = v1[19];
  v92 = v1[16];
  v136 = v1[15];
  v138 = v1[14];
  v140 = v1[13];
  v142 = v1[10];
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);

  OUTLINED_FUNCTION_9_0();

  return v93(v125);
}

uint64_t sub_21E572B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[25] = a2;
  v6 = sub_21E57B5EC();
  v4[28] = v6;
  v7 = *(v6 - 8);
  v4[29] = v7;
  v8 = *(v7 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[21] = type metadata accessor for DefaultEligibilityCriteria();
  v4[22] = &off_282F92F38;
  v4[18] = a1;

  return MEMORY[0x2822009F8](sub_21E572C64);
}

uint64_t sub_21E572C64()
{
  v1 = *(v0 + 248);
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B85C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21E527000, v2, v3, "StaticSuggestionsSource: fetching phrases from static list file", v4, 2u);
    OUTLINED_FUNCTION_39();
  }

  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 216);

  v9 = *(v7 + 8);
  *(v0 + 256) = v9;
  v9(v5, v6);
  v10 = sub_21E56F158();
  if (v10)
  {
    v11 = v10;
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);

    v14 = sub_21E56E134(2);
    v43 = MEMORY[0x223D5CB90](v14);
    v16 = v15;

    v18 = 0;
    v19 = *(v11 + 16);
    v20 = MEMORY[0x277D84F90];
LABEL_5:
    v42 = v20;
    *(v0 + 264) = v20;
    v21 = (v18 << 6) | 0x20;
    while (v19 != v18)
    {
      if (v18 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v22 = *(v11 + v21);
      v23 = *(v11 + v21 + 16);
      v24 = *(v11 + v21 + 48);
      *(v0 + 48) = *(v11 + v21 + 32);
      *(v0 + 64) = v24;
      *(v0 + 16) = v22;
      *(v0 + 32) = v23;
      if (*(v0 + 64))
      {
        v25 = *(v0 + 64);
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
      }

      *(v0 + 184) = v43;
      *(v0 + 192) = v16;
      v26 = swift_task_alloc();
      *(v26 + 16) = v0 + 184;
      sub_21E573240(v0 + 16, v0 + 80);

      v27 = sub_21E56E084(sub_21E540070, v26, v25);

      if (!v27)
      {
        v20 = v42;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21E5628A0(0, *(v42 + 16) + 1, 1);
          v20 = v42;
        }

        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          v34 = OUTLINED_FUNCTION_40(v28);
          result = sub_21E5628A0(v34, v29 + 1, 1);
          v20 = v42;
        }

        ++v18;
        *(v20 + 16) = v29 + 1;
        v30 = (v20 + (v29 << 6));
        v31 = *(v0 + 16);
        v32 = *(v0 + 32);
        v33 = *(v0 + 64);
        v30[4] = *(v0 + 48);
        v30[5] = v33;
        v30[2] = v31;
        v30[3] = v32;
        goto LABEL_5;
      }

      result = sub_21E573278(v0 + 16);
      v21 += 64;
      ++v18;
    }

    v35 = *__swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
    v36 = swift_task_alloc();
    *(v0 + 272) = v36;
    *v36 = v0;
    v36[1] = sub_21E572FEC;
    v37 = *(v0 + 216);

    return sub_21E571D48(v42, v35);
  }

  else
  {
    v38 = *(v0 + 240);
    v39 = *(v0 + 248);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));

    OUTLINED_FUNCTION_9_0();
    v41 = MEMORY[0x277D84F90];

    return v40(v41);
  }
}

uint64_t sub_21E572FEC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  v4 = *(v3 + 272);
  v5 = *(v3 + 264);
  v6 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v7 = v6;
  *(v9 + 280) = v8;

  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E5730F4()
{
  v1 = *(v0 + 240);
  sub_21E56F5C0(*(v0 + 280));
  sub_21E57B5BC();

  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 280);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = sub_21E5351E4(v5);

    _os_log_impl(&dword_21E527000, v2, v3, "StaticSuggestionsSource: created %ld phrases", v6, 0xCu);
    OUTLINED_FUNCTION_12_2();
  }

  else
  {
    v7 = *(v0 + 280);
  }

  v8 = *(v0 + 232) + 8;
  (*(v0 + 256))(*(v0 + 240), *(v0 + 224));
  v9 = *(v0 + 280);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));

  OUTLINED_FUNCTION_9_0();

  return v12(v9);
}

unint64_t sub_21E5732A8()
{
  result = qword_281225798;
  if (!qword_281225798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225798);
  }

  return result;
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

uint64_t sub_21E573320(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21E573360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E5733C0()
{
  result = qword_2812257B0;
  if (!qword_2812257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257B0);
  }

  return result;
}

unint64_t sub_21E573414()
{
  result = qword_2812256C8;
  if (!qword_2812256C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812256C8);
  }

  return result;
}

uint64_t sub_21E573468(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8D60, &qword_21E57E7E8);
    v1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E5734DC()
{
  result = qword_27CEC8D78;
  if (!qword_27CEC8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8D78);
  }

  return result;
}

unint64_t sub_21E573530()
{
  result = qword_2812256E0;
  if (!qword_2812256E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812256E0);
  }

  return result;
}

uint64_t sub_21E573584(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8A70, &qword_21E57CEB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21E5735EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8958, &unk_21E57C580);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StaticSuggestionApprovedIntent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for StaticSuggestionApprovedIntent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StaticSuggestionApprovedList.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_21E573868()
{
  result = qword_27CEC8D90;
  if (!qword_27CEC8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8D90);
  }

  return result;
}

unint64_t sub_21E5738C0()
{
  result = qword_27CEC8D98;
  if (!qword_27CEC8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8D98);
  }

  return result;
}

unint64_t sub_21E573918()
{
  result = qword_2812256D0;
  if (!qword_2812256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812256D0);
  }

  return result;
}

unint64_t sub_21E573970()
{
  result = qword_2812256D8;
  if (!qword_2812256D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812256D8);
  }

  return result;
}

unint64_t sub_21E5739C8()
{
  result = qword_2812257A0;
  if (!qword_2812257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257A0);
  }

  return result;
}

unint64_t sub_21E573A20()
{
  result = qword_2812257A8;
  if (!qword_2812257A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return sub_21E57BADC();
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1, uint64_t a2)
{

  return sub_21E545F30(a1, a2, 0x41676E6974746573, 0xED00006E6F697463);
}

void OUTLINED_FUNCTION_12_2()
{

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return sub_21E57BB3C();
}

uint64_t OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18)
{
  *(a18 + 8) = v18;
  v20 = *a17;
  return v19;
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return sub_21E57BAEC();
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return sub_21E52D2D4(v1, 0xE900000000000065, v0);
}

uint64_t IndexUpdateType.description.getter()
{
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
      v8 = 0x6369666963657073;
      v6 = MEMORY[0x277D84A28];
      goto LABEL_13;
    case 2:
      v5 = 0x6174736E49707061;
      goto LABEL_11;
    case 3:
      sub_21E57B94C();

      v5 = 0x736E496E55707061;
LABEL_11:
      v8 = v5;
      v6 = MEMORY[0x277D837D0];
LABEL_13:
      v2 = MEMORY[0x223D5CC90](v1, v6);
      break;
    default:
      v8 = 678194273;
      if (v1)
      {
        v2 = 1702195828;
      }

      else
      {
        v2 = 0x65736C6166;
      }

      if (v1)
      {
        v3 = 0xE400000000000000;
      }

      else
      {
        v3 = 0xE500000000000000;
      }

      v4 = v3;
      break;
  }

  MEMORY[0x223D5CBD0](v2, v4);

  MEMORY[0x223D5CBD0](41, 0xE100000000000000);
  return v8;
}

uint64_t static IndexUpdateType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  switch(v4)
  {
    case 1u:
      if (v6 != 1)
      {
        goto LABEL_11;
      }

      v30 = *a1;
      sub_21E5740FC(v3, 1u);
      sub_21E5740FC(v3, 1u);
      sub_21E5740FC(v5, 1u);
      OUTLINED_FUNCTION_6_7();
      sub_21E5781A0(&v30, v22, v23, sub_21E578974, sub_21E578410);
      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_6_7();
      sub_21E5781A0(&v30, v24, v25, sub_21E578974, sub_21E578410);
      v26 = OUTLINED_FUNCTION_19_2();
      sub_21E5741B8(v26, v27);
      OUTLINED_FUNCTION_23_3();

      sub_21E574114(v3, 1u);
      v14 = v5;
      v15 = 1;
      goto LABEL_10;
    case 2u:
      if (v6 != 2)
      {
        goto LABEL_11;
      }

      v30 = *a1;
      sub_21E5740FC(v3, 2u);
      sub_21E5740FC(v3, 2u);
      sub_21E5740FC(v5, 2u);
      OUTLINED_FUNCTION_0_6();
      sub_21E5781A0(&v30, v8, v9, sub_21E57846C, sub_21E578348);
      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_0_6();
      sub_21E5781A0(&v30, v10, v11, sub_21E57846C, sub_21E578348);
      v12 = OUTLINED_FUNCTION_19_2();
      sub_21E57412C(v12, v13);
      OUTLINED_FUNCTION_23_3();

      sub_21E574114(v3, 2u);
      v14 = v5;
      v15 = 2;
      goto LABEL_10;
    case 3u:
      if (v6 == 3)
      {
        v30 = *a1;
        sub_21E5740FC(v3, 3u);
        sub_21E5740FC(v3, 3u);
        sub_21E5740FC(v5, 3u);
        OUTLINED_FUNCTION_0_6();
        sub_21E5781A0(&v30, v16, v17, sub_21E57846C, sub_21E578348);
        OUTLINED_FUNCTION_25_5();
        OUTLINED_FUNCTION_0_6();
        sub_21E5781A0(&v30, v18, v19, sub_21E57846C, sub_21E578348);
        v20 = OUTLINED_FUNCTION_19_2();
        sub_21E57412C(v20, v21);
        OUTLINED_FUNCTION_23_3();

        sub_21E574114(v3, 3u);
        v14 = v5;
        v15 = 3;
LABEL_10:
        sub_21E574114(v14, v15);
        return v2 & 1;
      }

      else
      {
LABEL_11:
        v29 = *a1;

LABEL_12:
        sub_21E5740FC(v5, v6);
        sub_21E574114(v3, v4);
        sub_21E574114(v5, v6);
        v7 = 0;
        return v7 & 1;
      }

    default:
      if (*(a2 + 8))
      {
        goto LABEL_12;
      }

      sub_21E574114(*a1, 0);
      sub_21E574114(v5, 0);
      v7 = v5 ^ v3 ^ 1;
      return v7 & 1;
  }
}

uint64_t sub_21E5740FC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 2)
  {
  }

  return result;
}

uint64_t sub_21E574114(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 2)
  {
  }

  return result;
}

uint64_t sub_21E57412C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21E57BB3C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21E5741B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_21E574214(uint64_t *a1)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *v1;
  v9 = *(v1 + 8);
  v19 = *a1;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  if ((static IndexUpdateType.== infix(_:_:)(&v19, &v21) & 1) == 0)
  {
    switch(v9)
    {
      case 1:
        if (v7 == 1)
        {
          v14 = 0;
LABEL_18:
          if (v14 != *(v6 + 16))
          {
            v15 = *(v6 + 32 + 8 * v14++);
            v16 = *(v8 + 16);
            v17 = (v8 + 32);
            while (v16)
            {
              v18 = *v17++;
              --v16;
              if (v18 == v15)
              {
                goto LABEL_18;
              }
            }
          }
        }

        break;
      case 2:
        if (v7 == 2)
        {
          OUTLINED_FUNCTION_27_2();
          do
          {
            if (v3 + v4 == -1)
            {
              break;
            }

            if (++v4 >= *(v6 + 16))
            {
              __break(1u);
              goto LABEL_25;
            }

            OUTLINED_FUNCTION_22_2(v10);
            MEMORY[0x28223BE20](v11);
            OUTLINED_FUNCTION_21_3();
            sub_21E56E084(sub_21E540C2C, v2, v8);
            OUTLINED_FUNCTION_23_3();

            v10 = v5;
          }

          while ((v2 & 1) != 0);
        }

        break;
      case 3:
        if (v7 == 3)
        {
          OUTLINED_FUNCTION_27_2();
          while (v3 + v4 != -1)
          {
            if (++v4 >= *(v6 + 16))
            {
LABEL_25:
              __break(1u);
              return;
            }

            OUTLINED_FUNCTION_22_2(v12);
            MEMORY[0x28223BE20](v13);
            OUTLINED_FUNCTION_21_3();
            sub_21E56E084(sub_21E540070, v2, v8);
            OUTLINED_FUNCTION_23_3();

            v12 = v5;
            if ((v2 & 1) == 0)
            {
              return;
            }
          }
        }

        break;
      default:
        return;
    }
  }
}

uint64_t IndexUpdateType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 8))
  {
    case 1:
      MEMORY[0x223D5D090](1);

      result = sub_21E579F08(a1, v2);
      break;
    case 2:
      v5 = 2;
      goto LABEL_5;
    case 3:
      v5 = 3;
LABEL_5:
      MEMORY[0x223D5D090](v5);

      result = sub_21E579E90(a1, v2);
      break;
    default:
      MEMORY[0x223D5D090](0);
      result = sub_21E57BBAC();
      break;
  }

  return result;
}

uint64_t IndexUpdateType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21E57BB8C();
  switch(v2)
  {
    case 1:
      MEMORY[0x223D5D090](1);
      sub_21E579F08(v5, v1);
      break;
    case 2:
      v3 = 2;
      goto LABEL_5;
    case 3:
      v3 = 3;
LABEL_5:
      MEMORY[0x223D5D090](v3);
      sub_21E579E90(v5, v1);
      break;
    default:
      MEMORY[0x223D5D090](0);
      sub_21E57BBAC();
      break;
  }

  return sub_21E57BBCC();
}

uint64_t sub_21E5745B8()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_21E57BB8C();
  IndexUpdateType.hash(into:)(v3);
  return sub_21E57BBCC();
}

unint64_t IndexUpdateResultInfo.description.getter()
{
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_28_2();

      OUTLINED_FUNCTION_13_2();
      updated = IndexUpdateType.description.getter();
      goto LABEL_6;
    case 2:
      v3 = 0x2D2064656C696146;
      MEMORY[0x223D5CBD0](*v0, *(v0 + 8));
      return v3;
    case 3:
      return 0xD000000000000010;
    default:
      OUTLINED_FUNCTION_28_2();

      OUTLINED_FUNCTION_13_2();
      updated = sub_21E57BB2C();
LABEL_6:
      MEMORY[0x223D5CBD0](updated);

      return v3;
  }
}

uint64_t static IndexUpdateResultInfo.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 == 1)
      {
        v62 = *a1;
        v63 = v3;
        v60 = v5;
        v61 = v6;
        v32 = OUTLINED_FUNCTION_15_0();
        sub_21E579F58(v32, v33, 1);
        v34 = OUTLINED_FUNCTION_87();
        sub_21E579F58(v34, v35, 1);
        v36 = OUTLINED_FUNCTION_15_0();
        sub_21E579F58(v36, v37, 1);
        v38 = OUTLINED_FUNCTION_87();
        sub_21E579F58(v38, v39, 1);
        v12 = static IndexUpdateType.== infix(_:_:)(&v62, &v60);
        v40 = OUTLINED_FUNCTION_87();
        sub_21E579F7C(v40, v41, 1);
        v42 = OUTLINED_FUNCTION_15_0();
        sub_21E579F7C(v42, v43, 1);
        v44 = OUTLINED_FUNCTION_15_0();
        sub_21E579F7C(v44, v45, 1);
        v23 = OUTLINED_FUNCTION_87();
        v25 = 1;
        goto LABEL_18;
      }

      sub_21E5740FC(*a1, v3);
      goto LABEL_21;
    case 2:
      if (v7 == 2)
      {
        v13 = *a1;
        if (v2 == v5 && v3 == v6)
        {
          sub_21E579F58(v13, v3, 2);
          v53 = OUTLINED_FUNCTION_2_9();
          sub_21E579F58(v53, v54, v55);
          v56 = OUTLINED_FUNCTION_2_9();
          sub_21E579F7C(v56, v57, v58);
          v29 = OUTLINED_FUNCTION_2_9();
LABEL_23:
          sub_21E579F7C(v29, v30, v31);
          v12 = 1;
        }

        else
        {
          v12 = sub_21E57BB3C();
          v15 = OUTLINED_FUNCTION_15_0();
          sub_21E579F58(v15, v16, 2);
          v17 = OUTLINED_FUNCTION_2_9();
          sub_21E579F58(v17, v18, v19);
          v20 = OUTLINED_FUNCTION_2_9();
          sub_21E579F7C(v20, v21, v22);
          v23 = OUTLINED_FUNCTION_15_0();
          v25 = 2;
LABEL_18:
          sub_21E579F7C(v23, v24, v25);
        }
      }

      else
      {
        v46 = *(a1 + 8);

LABEL_21:
        v47 = OUTLINED_FUNCTION_15_0();
        sub_21E579F58(v47, v48, v7);
        v49 = OUTLINED_FUNCTION_87();
        sub_21E579F7C(v49, v50, v4);
        v51 = OUTLINED_FUNCTION_15_0();
        sub_21E579F7C(v51, v52, v7);
        v12 = 0;
      }

      return v12 & 1;
    case 3:
      if (v7 != 3 || (v6 | v5) != 0)
      {
        goto LABEL_21;
      }

      v27 = OUTLINED_FUNCTION_87();
      sub_21E579F7C(v27, v28, 3);
      v29 = 0;
      v30 = 0;
      v31 = 3;
      goto LABEL_23;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_21;
      }

      v8 = OUTLINED_FUNCTION_87();
      sub_21E579F7C(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_15_0();
      sub_21E579F7C(v10, v11, 0);
      v12 = v2 == v5;
      return v12 & 1;
  }
}

uint64_t IndexUpdateManager.__allocating_init(indexBuilder:)(__int128 *a1)
{
  v2 = swift_allocObject();
  IndexUpdateManager.init(indexBuilder:)(a1);
  return v2;
}

void *IndexUpdateManager.init(indexBuilder:)(__int128 *a1)
{
  v3 = sub_21E57ADCC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DA0, &unk_21E57EA40);
  sub_21E57B26C();
  sub_21E57ADBC();
  v1[15] = sub_21E57AE0C();
  sub_21E57B12C();
  v1[16] = sub_21E57B11C();
  sub_21E529804(a1, (v1 + 17));
  return v1;
}

uint64_t sub_21E574A84()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  v5 = sub_21E57B5EC();
  *(v1 + 80) = v5;
  v6 = *(v5 - 8);
  *(v1 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v3;
  *(v1 + 96) = v8;
  *(v1 + 104) = v9;
  *(v1 + 128) = *(v3 + 8);

  return MEMORY[0x2822009F8](sub_21E574B50);
}

uint64_t sub_21E574B50()
{
  v77 = v0;
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;
  v7 = *(v1 + 112);
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v5)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(v0 + 128);
      v12 = *(v0 + 104);
      v13 = *(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v5))));
      v14 = *v13;
      v15 = *(v13 + 8);
      v73 = *v13;
      v74 = v15;
      v75 = v12;
      v76 = v11;
      v16 = OUTLINED_FUNCTION_62_0();
      sub_21E5740FC(v16, v17);
      sub_21E574214(&v75);
      if (v18)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_21E574114(v14, v15);
      v9 = v10;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v30 = *(v0 + 96);
    v31 = *(v0 + 104);
    v32 = *(v0 + 128);

    sub_21E57B5BC();
    v33 = OUTLINED_FUNCTION_62_0();
    sub_21E5740FC(v33, v34);
    v35 = OUTLINED_FUNCTION_26_3();
    sub_21E5740FC(v35, v36);
    v37 = sub_21E57B5DC();
    v38 = sub_21E57B85C();
    v39 = OUTLINED_FUNCTION_62_0();
    sub_21E574114(v39, v40);
    v41 = OUTLINED_FUNCTION_26_3();
    sub_21E574114(v41, v42);
    if (os_log_type_enabled(v37, v38))
    {
      v43 = *(v0 + 104);
      v69 = *(v0 + 88);
      v70 = *(v0 + 80);
      v72 = *(v0 + 96);
      v44 = *(v0 + 128);
      v45 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v73 = v68;
      *v45 = 136315394;
      v75 = v14;
      v76 = v15;
      v46 = OUTLINED_FUNCTION_62_0();
      sub_21E5740FC(v46, v47);
      updated = IndexUpdateType.description.getter();
      v50 = v49;
      v51 = OUTLINED_FUNCTION_62_0();
      sub_21E574114(v51, v52);
      v53 = sub_21E5553D8(updated, v50, &v73);

      *(v45 + 4) = v53;
      *(v45 + 12) = 2080;
      v75 = v43;
      v76 = v44;
      v54 = OUTLINED_FUNCTION_26_3();
      sub_21E5740FC(v54, v55);
      v56 = IndexUpdateType.description.getter();
      v58 = v57;
      v59 = OUTLINED_FUNCTION_26_3();
      sub_21E574114(v59, v60);
      v61 = sub_21E5553D8(v56, v58, &v73);

      *(v45 + 14) = v61;
      _os_log_impl(&dword_21E527000, v37, v38, "There is task pending - %s - which is going to do this work - %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D5D740](v68, -1, -1);
      MEMORY[0x223D5D740](v45, -1, -1);

      (*(v69 + 8))(v72, v70);
    }

    else
    {
      v63 = *(v0 + 88);
      v62 = *(v0 + 96);
      v64 = *(v0 + 80);

      (*(v63 + 8))(v62, v64);
    }

    v65 = *(v0 + 64);
    *v65 = v14;
    *(v65 + 8) = v15;
    *(v65 + 16) = 1;
    v66 = *(v0 + 96);

    OUTLINED_FUNCTION_12_3();

    return v67();
  }

  else
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v6)
      {
        break;
      }

      v5 = *(v2 + 56 + 8 * v10);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v19 = *(v0 + 104);
    v20 = *(v0 + 72);
    v21 = *(v0 + 128);

    swift_beginAccess();
    sub_21E5740FC(v19, v21);
    sub_21E576190(&v75, v19, v21);
    v22 = v75;
    v23 = v76;
    swift_endAccess();
    sub_21E574114(v22, v23);
    v24 = *(v20 + 128);
    v25 = swift_allocObject();
    *(v0 + 112) = v25;
    *(v25 + 16) = v20;
    *(v25 + 24) = v19;
    *(v25 + 32) = v21;
    sub_21E5740FC(v19, v21);
    v26 = *(MEMORY[0x277D60FA8] + 4);
    v71 = (*MEMORY[0x277D60FA8] + MEMORY[0x277D60FA8]);

    swift_task_alloc();
    OUTLINED_FUNCTION_17_3();
    *(v0 + 120) = v27;
    *v27 = v28;
    v27[1] = sub_21E575018;
    v29 = *(v0 + 64);

    return v71(v29, &unk_21E57EA58, v25, 0, 0, &type metadata for IndexUpdateResultInfo);
  }
}

uint64_t sub_21E575018()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  v6 = *(v1 + 96);

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_21E575144(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 56) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_21E575168);
}

uint64_t sub_21E575168()
{
  OUTLINED_FUNCTION_152();
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 120);
  v3 = *(v0 + 56);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  sub_21E5740FC(v1, v3);
  v6 = *(MEMORY[0x277D60420] + 4);
  v11 = (*MEMORY[0x277D60420] + MEMORY[0x277D60420]);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_3();
  *(v0 + 48) = v7;
  *v7 = v8;
  v7[1] = sub_21E575290;
  v9 = *(v0 + 16);

  return v11(v9, &unk_21E57EDD8, v5);
}

uint64_t sub_21E575290()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  OUTLINED_FUNCTION_12_3();

  return v6();
}

uint64_t sub_21E57538C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 49) = a4;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a1;
  return MEMORY[0x2822009F8](sub_21E5753B4);
}

uint64_t sub_21E5753B4()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 49);
    *(v0 + 40) = *(v0 + 72);
    *(v0 + 48) = v3;

    return MEMORY[0x2822009F8](sub_21E5754A0);
  }

  else
  {
    v4 = *(v0 + 56);
    *v4 = 0xD000000000000024;
    v4[1] = 0x800000021E580060;
    *(*(v0 + 56) + 16) = 2;
    OUTLINED_FUNCTION_12_3();

    return v5();
  }
}

uint64_t sub_21E5754A0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 80);
  v2 = *(v0 + 49);
  sub_21E575EDC((v0 + 40));
  switch(v2)
  {
    case 1:
      v3 = sub_21E5757D4;
      break;
    case 2:
      v3 = sub_21E575A18;
      break;
    case 3:
      v3 = sub_21E575C5C;
      break;
    default:
      v3 = sub_21E575560;
      break;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_21E575560()
{
  OUTLINED_FUNCTION_152();
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = v1[20];
  v4 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v3);
  v5 = *(v4 + 8);
  OUTLINED_FUNCTION_10_8();
  v12 = (v6 + *v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_3();
  *(v0 + 88) = v9;
  *v9 = v10;
  v9[1] = sub_21E57568C;

  return (v12)(v2 & 1, v3, v4);
}

uint64_t sub_21E57568C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 88);
  *v2 = *v0;
  *(v1 + 96) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E575774()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  OUTLINED_FUNCTION_3_11();

  return v4();
}

uint64_t sub_21E5757D4()
{
  OUTLINED_FUNCTION_152();
  v1 = *(OUTLINED_FUNCTION_8_5() + 16);
  OUTLINED_FUNCTION_10_8();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_1_8(v5);

  return v7(v6);
}

uint64_t sub_21E5758D0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  *(v1 + 112) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E5759B8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];

  OUTLINED_FUNCTION_3_11();

  return v4();
}

uint64_t sub_21E575A18()
{
  OUTLINED_FUNCTION_152();
  v1 = *(OUTLINED_FUNCTION_8_5() + 24);
  OUTLINED_FUNCTION_10_8();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_1_8(v5);

  return v7(v6);
}

uint64_t sub_21E575B14()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 120);
  *v2 = *v0;
  *(v1 + 128) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E575BFC()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[7];

  OUTLINED_FUNCTION_3_11();

  return v4();
}

uint64_t sub_21E575C5C()
{
  OUTLINED_FUNCTION_152();
  v1 = *(OUTLINED_FUNCTION_8_5() + 32);
  OUTLINED_FUNCTION_10_8();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_1_8(v5);

  return v7(v6);
}

uint64_t sub_21E575D58()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 136);
  *v2 = *v0;
  *(v1 + 50) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E575E40()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 50);
  v2 = *(v0 + 80);

  v3 = *(v0 + 56);
  if (v1 == 1)
  {
    *v3 = 0;
    v3[1] = 0;
    v4 = 3;
  }

  else
  {
    *v3 = 0xD000000000000027;
    v3[1] = 0x800000021E580090;
    v4 = 2;
  }

  *(*(v0 + 56) + 16) = v4;
  OUTLINED_FUNCTION_12_3();

  return v5();
}

uint64_t sub_21E575EDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_62_0();
  sub_21E579384(v3, v4, v5);
  swift_endAccess();
  return sub_21E57A398(v7, v8);
}

void *IndexUpdateManager.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t IndexUpdateManager.__deallocating_deinit()
{
  IndexUpdateManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21E575FE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21E57EA30;
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

BOOL sub_21E576044(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21E57BB8C();
  sub_21E57B6AC();
  v9 = sub_21E57BBCC();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_21E57BB3C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_21E576F80(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_21E576190(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21E57BB8C();
  v47 = v3;
  switch(a3)
  {
    case 1u:
      MEMORY[0x223D5D090](1);
      sub_21E579F08(v52, a2);
      break;
    case 2u:
      v9 = 2;
      goto LABEL_5;
    case 3u:
      v9 = 3;
LABEL_5:
      MEMORY[0x223D5D090](v9);
      sub_21E579E90(v52, a2);
      break;
    default:
      MEMORY[0x223D5D090](0);
      sub_21E57BBAC();
      break;
  }

  v10 = sub_21E57BBCC();
  v11 = v7 + 56;
  v12 = -1 << *(v7 + 32);
  v13 = v10 & ~v12;
  if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_60:
    v40 = *v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = *v47;
    sub_21E5740FC(a2, a3);
    sub_21E5770E8(a2, a3, v13, isUniquelyReferenced_nonNull_native);
    *v47 = v52[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }

  v14 = ~v12;
  v49 = ~v12;
  v50 = v7 + 56;
  v48 = v7;
  while (2)
  {
    v15 = *(v7 + 48) + 16 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    switch(v17)
    {
      case 1u:
        if (a3 != 1)
        {
          sub_21E5740FC(a2, a3);
          sub_21E5740FC(v16, 1u);
          v18 = v16;
          v19 = 1;
          goto LABEL_47;
        }

        v51 = 16 * v13;
        v52[0] = *v15;
        sub_21E5740FC(v16, 1u);
        sub_21E5740FC(v16, 1u);
        sub_21E5740FC(a2, 1u);
        sub_21E5740FC(v16, 1u);
        v32 = MEMORY[0x277D84A28];
        sub_21E5781A0(v52, sub_21E5650CC, MEMORY[0x277D84A28], sub_21E578974, sub_21E578410);
        v33 = v52[0];
        v52[0] = a2;

        sub_21E5781A0(v52, sub_21E5650CC, v32, sub_21E578974, sub_21E578410);
        v34 = *(v33 + 16);
        if (v34 != *(v52[0] + 16))
        {
          goto LABEL_50;
        }

        if (v34 && v33 != v52[0])
        {
          v35 = 32;
          while (*(v33 + v35) == *(v52[0] + v35))
          {
            v35 += 8;
            if (!--v34)
            {
              goto LABEL_63;
            }
          }

LABEL_50:
          sub_21E574114(v16, 1u);
          sub_21E574114(a2, 1u);
          sub_21E574114(v16, 1u);

          goto LABEL_58;
        }

        goto LABEL_63;
      case 2u:
        if (a3 != 2)
        {
          sub_21E5740FC(a2, a3);
          sub_21E5740FC(v16, 2u);
          v18 = v16;
          v19 = 2;
          goto LABEL_47;
        }

        v51 = 16 * v13;
        v52[0] = *v15;
        sub_21E5740FC(v16, 2u);
        sub_21E5740FC(v16, 2u);
        sub_21E5740FC(a2, 2u);
        sub_21E5740FC(v16, 2u);
        v20 = MEMORY[0x277D837D0];
        sub_21E5781A0(v52, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
        v21 = v52[0];
        v52[0] = a2;

        sub_21E5781A0(v52, sub_21E5650B8, v20, sub_21E57846C, sub_21E578348);
        v22 = v52[0];
        v23 = *(v21 + 16);
        if (v23 != *(v52[0] + 16))
        {
          sub_21E574114(v16, 2u);
          sub_21E574114(a2, 2u);
          v36 = v16;
          v37 = 2;
          goto LABEL_53;
        }

        if (!v23 || v21 == v52[0])
        {
          goto LABEL_62;
        }

        v46 = a1;
        v24 = 0;
        while (1)
        {
          v25 = *(v21 + v24 + 32) == *(v22 + v24 + 32) && *(v21 + v24 + 40) == *(v22 + v24 + 40);
          if (!v25 && (sub_21E57BB3C() & 1) == 0)
          {
            break;
          }

          v24 += 16;
          if (!--v23)
          {
            goto LABEL_61;
          }
        }

        sub_21E574114(v16, 2u);
        sub_21E574114(a2, 2u);
        v38 = v16;
        v39 = 2;
        goto LABEL_56;
      case 3u:
        if (a3 != 3)
        {
          sub_21E5740FC(a2, a3);
          sub_21E5740FC(v16, 3u);
          v18 = v16;
          v19 = 3;
LABEL_47:
          sub_21E574114(v18, v19);
          sub_21E574114(a2, a3);
          goto LABEL_59;
        }

        v51 = 16 * v13;
        v52[0] = *v15;
        sub_21E5740FC(v16, 3u);
        sub_21E5740FC(v16, 3u);
        sub_21E5740FC(a2, 3u);
        sub_21E5740FC(v16, 3u);
        v26 = MEMORY[0x277D837D0];
        sub_21E5781A0(v52, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
        v27 = v52[0];
        v52[0] = a2;

        sub_21E5781A0(v52, sub_21E5650B8, v26, sub_21E57846C, sub_21E578348);
        v28 = v52[0];
        v29 = *(v27 + 16);
        if (v29 != *(v52[0] + 16))
        {
          sub_21E574114(v16, 3u);
          sub_21E574114(a2, 3u);
          v36 = v16;
          v37 = 3;
LABEL_53:
          sub_21E574114(v36, v37);

LABEL_57:
          v7 = v48;
LABEL_58:
          v14 = v49;
          v11 = v50;
LABEL_59:
          v13 = (v13 + 1) & v14;
          if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_60;
          }

          continue;
        }

        if (!v29 || v27 == v52[0])
        {
          goto LABEL_62;
        }

        v46 = a1;
        v30 = 0;
        do
        {
          v31 = *(v27 + v30 + 32) == *(v28 + v30 + 32) && *(v27 + v30 + 40) == *(v28 + v30 + 40);
          if (!v31 && (sub_21E57BB3C() & 1) == 0)
          {
            sub_21E574114(v16, 3u);
            sub_21E574114(a2, 3u);
            v38 = v16;
            v39 = 3;
LABEL_56:
            sub_21E574114(v38, v39);

            a1 = v46;
            goto LABEL_57;
          }

          v30 += 16;
          --v29;
        }

        while (v29);
LABEL_61:
        a1 = v46;
LABEL_62:
        v7 = v48;
LABEL_63:
        sub_21E574114(v16, v17);
        sub_21E574114(a2, v17);
        sub_21E574114(v16, v17);

LABEL_64:
        sub_21E574114(a2, a3);
        v43 = *(v7 + 48) + v51;
        v44 = *v43;
        *a1 = *v43;
        v45 = *(v43 + 8);
        *(a1 + 8) = v45;
        sub_21E5740FC(v44, v45);
        return 0;
      default:
        if (a3)
        {
          sub_21E5740FC(a2, a3);
          v18 = v16;
          v19 = 0;
          goto LABEL_47;
        }

        v51 = 16 * v13;
        sub_21E574114(v16, 0);
        sub_21E574114(a2, 0);
        if (((v16 ^ a2) & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
    }
  }
}

uint64_t sub_21E576990(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DA8, &qword_21E57EDC0);
  result = sub_21E57B92C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_21E575FE0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_21E57BB8C();
    sub_21E57B6AC();
    result = sub_21E57BBCC();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21E576BEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DB0, &qword_21E57EDC8);
  result = sub_21E57B92C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_42:

    *v2 = v6;
    return result;
  }

  v43 = v2;
  v44 = v3;
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
        goto LABEL_44;
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
        v45 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v42 = 1 << *(v3 + 32);
    if (v42 >= 64)
    {
      sub_21E575FE0(0, (v42 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v42;
    }

    v2 = v43;
    *(v3 + 16) = 0;
    goto LABEL_42;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v45 = (v11 - 1) & v11;
LABEL_14:
    v17 = *(v3 + 48) + 16 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v6 + 40);
    sub_21E57BB8C();
    v46 = v19;
    switch(v19)
    {
      case 1:
        MEMORY[0x223D5D090](1);
        MEMORY[0x223D5D090](v18[2]);
        v29 = v18[2];
        if (v29)
        {
          v30 = v18 + 4;
          do
          {
            v31 = *v30++;
            MEMORY[0x223D5D0B0](v31);
            --v29;
          }

          while (v29);
        }

        break;
      case 2:
        MEMORY[0x223D5D090](2);
        MEMORY[0x223D5D090](v18[2]);
        v21 = v18[2];
        if (v21)
        {
          v22 = v18 + 5;
          do
          {
            v23 = *(v22 - 1);
            v24 = *v22;

            sub_21E57B6AC();

            v22 += 2;
            --v21;
          }

          while (v21);
        }

        break;
      case 3:
        MEMORY[0x223D5D090](3);
        MEMORY[0x223D5D090](v18[2]);
        v25 = v18[2];
        if (v25)
        {
          v26 = v18 + 5;
          do
          {
            v27 = *(v26 - 1);
            v28 = *v26;

            sub_21E57B6AC();

            v26 += 2;
            --v25;
          }

          while (v25);
        }

        break;
      default:
        MEMORY[0x223D5D090](0);
        sub_21E57BBAC();
        break;
    }

    result = sub_21E57BBCC();
    v32 = -1 << *(v6 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v13 + 8 * (v33 >> 6))) == 0)
    {
      break;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v13 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    v36 = v46;
LABEL_36:
    *(v13 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v41 = *(v6 + 48) + 16 * v35;
    *v41 = v18;
    *(v41 + 8) = v36;
    ++*(v6 + 16);
    v3 = v44;
    v11 = v45;
    if (!v45)
    {
      goto LABEL_9;
    }
  }

  v37 = 0;
  v38 = (63 - v32) >> 6;
  v36 = v46;
  while (++v34 != v38 || (v37 & 1) == 0)
  {
    v39 = v34 == v38;
    if (v34 == v38)
    {
      v34 = 0;
    }

    v37 |= v39;
    v40 = *(v13 + 8 * v34);
    if (v40 != -1)
    {
      v35 = __clz(__rbit64(~v40)) + (v34 << 6);
      goto LABEL_36;
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_21E576F80(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_21E576990(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_21E577B94(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_21E57BB8C();
      sub_21E57B6AC();
      result = sub_21E57BBCC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_21E57BB3C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_21E5778DC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_21E57BB5C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_21E5770E8(uint64_t result, unsigned __int8 a2, unint64_t a3, char a4)
{
  v8 = v4;
  v11 = result;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 <= v12 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_21E576BEC(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_21E577A34();
        goto LABEL_67;
      }

      sub_21E577DC8(v12 + 1);
    }

    v5 = 0;
    v14 = *v4;
    v15 = *(*v4 + 40);
    sub_21E57BB8C();
    switch(a2)
    {
      case 1u:
        MEMORY[0x223D5D090](1);
        sub_21E579F08(v52, v11);
        break;
      case 2u:
        v16 = 2;
        goto LABEL_12;
      case 3u:
        v16 = 3;
LABEL_12:
        MEMORY[0x223D5D090](v16);
        sub_21E579E90(v52, v11);
        break;
      default:
        MEMORY[0x223D5D090](0);
        sub_21E57BBAC();
        break;
    }

    result = sub_21E57BBCC();
    v17 = v14 + 56;
    v18 = -1 << *(v14 + 32);
    a3 = result & ~v18;
    if ((*(v14 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v19 = ~v18;
      v48 = v8;
      v49 = v14;
      v50 = ~v18;
      v51 = v14 + 56;
      while (1)
      {
        v20 = *(v14 + 48) + 16 * a3;
        v6 = *v20;
        v7 = *(v20 + 8);
        switch(v7)
        {
          case 1u:
            if (a2 != 1)
            {
              sub_21E5740FC(v11, a2);
              sub_21E5740FC(v6, 1u);
              v21 = v6;
              v22 = 1;
              goto LABEL_54;
            }

            v52[0] = *v20;
            sub_21E5740FC(v6, 1u);
            sub_21E5740FC(v6, 1u);
            sub_21E5740FC(v11, 1u);
            sub_21E5740FC(v6, 1u);
            v35 = MEMORY[0x277D84A28];
            sub_21E5781A0(v52, sub_21E5650CC, MEMORY[0x277D84A28], sub_21E578974, sub_21E578410);
            v36 = v52[0];
            v52[0] = v11;

            sub_21E5781A0(v52, sub_21E5650CC, v35, sub_21E578974, sub_21E578410);
            v37 = *(v36 + 16);
            if (v37 != *(v52[0] + 16))
            {
              goto LABEL_55;
            }

            if (v37 && v36 != v52[0])
            {
              v38 = 32;
              while (*(v36 + v38) == *(v52[0] + v38))
              {
                v38 += 8;
                if (!--v37)
                {
                  goto LABEL_70;
                }
              }

LABEL_55:
              sub_21E574114(v6, 1u);
              sub_21E574114(v11, 1u);
              sub_21E574114(v6, 1u);

              goto LABEL_65;
            }

            goto LABEL_70;
          case 2u:
            if (a2 != 2)
            {
              sub_21E5740FC(v11, a2);
              sub_21E5740FC(v6, 2u);
              v21 = v6;
              v22 = 2;
              goto LABEL_54;
            }

            v52[0] = *v20;
            sub_21E5740FC(v6, 2u);
            sub_21E5740FC(v6, 2u);
            sub_21E5740FC(v11, 2u);
            sub_21E5740FC(v6, 2u);
            v23 = MEMORY[0x277D837D0];
            sub_21E5781A0(v52, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
            v24 = v52[0];
            v52[0] = v11;

            sub_21E5781A0(v52, sub_21E5650B8, v23, sub_21E57846C, sub_21E578348);
            v25 = v52[0];
            v26 = *(v24 + 16);
            if (v26 != *(v52[0] + 16))
            {
              sub_21E574114(v6, 2u);
              sub_21E574114(v11, 2u);
              v39 = v6;
              v40 = 2;
              goto LABEL_60;
            }

            if (!v26 || v24 == v52[0])
            {
              goto LABEL_70;
            }

            v27 = 0;
            while (1)
            {
              v28 = *(v24 + v27 + 32) == *(v25 + v27 + 32) && *(v24 + v27 + 40) == *(v25 + v27 + 40);
              if (!v28 && (sub_21E57BB3C() & 1) == 0)
              {
                break;
              }

              v27 += 16;
              if (!--v26)
              {
                goto LABEL_70;
              }
            }

            sub_21E574114(v6, 2u);
            sub_21E574114(v11, 2u);
            v41 = v6;
            v42 = 2;
            goto LABEL_63;
          case 3u:
            if (a2 == 3)
            {
              v52[0] = *v20;
              sub_21E5740FC(v6, 3u);
              sub_21E5740FC(v6, 3u);
              sub_21E5740FC(v11, 3u);
              sub_21E5740FC(v6, 3u);
              v29 = MEMORY[0x277D837D0];
              sub_21E5781A0(v52, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
              v30 = v52[0];
              v52[0] = v11;

              sub_21E5781A0(v52, sub_21E5650B8, v29, sub_21E57846C, sub_21E578348);
              v31 = v52[0];
              v32 = *(v30 + 16);
              if (v32 == *(v52[0] + 16))
              {
                if (!v32 || v30 == v52[0])
                {
                  goto LABEL_70;
                }

                v33 = 0;
                while (1)
                {
                  v34 = *(v30 + v33 + 32) == *(v31 + v33 + 32) && *(v30 + v33 + 40) == *(v31 + v33 + 40);
                  if (!v34 && (sub_21E57BB3C() & 1) == 0)
                  {
                    break;
                  }

                  v33 += 16;
                  if (!--v32)
                  {
                    goto LABEL_70;
                  }
                }

                sub_21E574114(v6, 3u);
                sub_21E574114(v11, 3u);
                v41 = v6;
                v42 = 3;
LABEL_63:
                sub_21E574114(v41, v42);

                v8 = v48;
              }

              else
              {
                sub_21E574114(v6, 3u);
                sub_21E574114(v11, 3u);
                v39 = v6;
                v40 = 3;
LABEL_60:
                sub_21E574114(v39, v40);
              }

              v14 = v49;
LABEL_65:
              v19 = v50;
              v17 = v51;
            }

            else
            {
              sub_21E5740FC(v11, a2);
              sub_21E5740FC(v6, 3u);
              v21 = v6;
              v22 = 3;
LABEL_54:
              sub_21E574114(v21, v22);
              result = sub_21E574114(v11, a2);
            }

LABEL_66:
            a3 = (a3 + 1) & v19;
            if (((*(v17 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              goto LABEL_67;
            }

            break;
          default:
            if (a2)
            {
              sub_21E5740FC(v11, a2);
              v21 = v6;
              v22 = 0;
              goto LABEL_54;
            }

            sub_21E574114(*v20, 0);
            result = sub_21E574114(v11, 0);
            if (((v6 ^ v11) & 1) == 0)
            {
              goto LABEL_71;
            }

            goto LABEL_66;
        }
      }
    }
  }

LABEL_67:
  v43 = *v8;
  *(*v8 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v44 = *(v43 + 48) + 16 * a3;
  *v44 = v11;
  *(v44 + 8) = a2;
  v45 = *(v43 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
LABEL_70:
    sub_21E574114(v6, v7);
    sub_21E574114(v11, v7);
    sub_21E574114(v6, v7);

LABEL_71:
    sub_21E57BB5C();
    __break(1u);

    __break(1u);
  }

  else
  {
    *(v43 + 16) = v47;
  }

  return result;
}

void *sub_21E5778DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DA8, &qword_21E57EDC0);
  v2 = *v0;
  v3 = sub_21E57B91C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21E577A34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DB0, &qword_21E57EDC8);
  v2 = *v0;
  v3 = sub_21E57B91C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        result = sub_21E5740FC(v19, v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21E577B94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DA8, &qword_21E57EDC0);
  result = sub_21E57B92C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_21E57BB8C();

        sub_21E57B6AC();
        result = sub_21E57BBCC();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21E577DC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DB0, &qword_21E57EDC8);
  result = sub_21E57B92C();
  v6 = result;
  if (*(v3 + 16))
  {
    v42 = v2;
    v43 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v44 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(v3 + 48) + 16 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v6 + 40);
        sub_21E57BB8C();
        v45 = v19;
        switch(v19)
        {
          case 1:
            MEMORY[0x223D5D090](1);
            MEMORY[0x223D5D090](*(v18 + 16));
            v29 = *(v18 + 16);
            if (!v29)
            {
              goto LABEL_28;
            }

            v30 = (v18 + 32);
            do
            {
              v31 = *v30++;
              MEMORY[0x223D5D0B0](v31);
              --v29;
            }

            while (v29);
            sub_21E5740FC(v18, 1u);
            break;
          case 2:
            MEMORY[0x223D5D090](2);
            MEMORY[0x223D5D090](*(v18 + 16));
            v21 = *(v18 + 16);
            if (!v21)
            {
              goto LABEL_28;
            }

            v22 = (v18 + 40);
            do
            {
              v23 = *(v22 - 1);
              v24 = *v22;

              sub_21E57B6AC();

              v22 += 2;
              --v21;
            }

            while (v21);
            break;
          case 3:
            MEMORY[0x223D5D090](3);
            MEMORY[0x223D5D090](*(v18 + 16));
            v25 = *(v18 + 16);
            if (v25)
            {

              v26 = (v18 + 40);
              do
              {
                v27 = *(v26 - 1);
                v28 = *v26;

                sub_21E57B6AC();

                v26 += 2;
                --v25;
              }

              while (v25);
            }

            else
            {
LABEL_28:
            }

            break;
          default:
            MEMORY[0x223D5D090](0);
            sub_21E57BBAC();
            break;
        }

        result = sub_21E57BBCC();
        v32 = -1 << *(v6 + 32);
        v33 = result & ~v32;
        v34 = v33 >> 6;
        if (((-1 << v33) & ~*(v13 + 8 * (v33 >> 6))) == 0)
        {
          break;
        }

        v35 = __clz(__rbit64((-1 << v33) & ~*(v13 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
        v36 = v45;
LABEL_38:
        *(v13 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        v41 = *(v6 + 48) + 16 * v35;
        *v41 = v18;
        *(v41 + 8) = v36;
        ++*(v6 + 16);
        v3 = v43;
        v11 = v44;
        if (!v44)
        {
          goto LABEL_9;
        }
      }

      v37 = 0;
      v38 = (63 - v32) >> 6;
      v36 = v45;
      while (++v34 != v38 || (v37 & 1) == 0)
      {
        v39 = v34 == v38;
        if (v34 == v38)
        {
          v34 = 0;
        }

        v37 |= v39;
        v40 = *(v13 + 8 * v34);
        if (v40 != -1)
        {
          v35 = __clz(__rbit64(~v40)) + (v34 << 6);
          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v42;
          goto LABEL_42;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v44 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_42:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21E5781A0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_21E57823C(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_21E57823C(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_21E57BB0C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v11 = sub_21E57B7BC();
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

uint64_t sub_21E578348(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_21E57BB3C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_21E578410(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
        if (v7 >= *v9)
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

void sub_21E57846C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_21E57BB3C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_21E57BB3C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_21E57BB3C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_21E543698();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_21E543698();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_21E57906C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_21E578E14(&v92, *a1, a3);
LABEL_102:
}

void sub_21E578974(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
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

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
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
                if (v23 >= *v25)
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
        sub_21E543698();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_21E543698();
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
          sub_21E579210((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v76);
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

  sub_21E578F40(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_21E578E14(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21E564BC8(v5);
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
    sub_21E57906C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_21E578F40(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21E564BC8(v5);
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
    sub_21E579210((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
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

uint64_t sub_21E57906C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_21E52981C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_21E57BB3C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_21E52981C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_21E57BB3C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_21E579210(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_21E5626D0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
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

  sub_21E5626D0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
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

unint64_t sub_21E579384@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_21E57BB8C();
  v50 = a3;
  switch(a2)
  {
    case 1u:
      MEMORY[0x223D5D090](1);
      sub_21E579F08(v52, a1);
      break;
    case 2u:
      v10 = 2;
      goto LABEL_5;
    case 3u:
      v10 = 3;
LABEL_5:
      MEMORY[0x223D5D090](v10);
      sub_21E579E90(v52, a1);
      break;
    default:
      MEMORY[0x223D5D090](0);
      sub_21E57BBAC();
      break;
  }

  result = sub_21E57BBCC();
  v12 = v8 + 56;
  v13 = -1 << *(v8 + 32);
  v14 = result & ~v13;
  if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_59:
    *v50 = 0;
    *(v50 + 8) = -1;
    return result;
  }

  v15 = ~v13;
  v48 = ~v13;
  v49 = v8;
  v47 = v8 + 56;
  while (2)
  {
    v16 = *(v8 + 48) + 16 * v14;
    v17 = *v16;
    v18 = *(v16 + 8);
    switch(v18)
    {
      case 1u:
        if (a2 != 1)
        {
          sub_21E5740FC(a1, a2);
          sub_21E5740FC(v17, 1u);
          v19 = v17;
          v20 = 1;
          goto LABEL_47;
        }

        v51 = 16 * v14;
        v52[0] = *v16;
        sub_21E5740FC(v17, 1u);
        sub_21E5740FC(v17, 1u);
        sub_21E5740FC(a1, 1u);
        sub_21E5740FC(v17, 1u);
        v33 = MEMORY[0x277D84A28];
        sub_21E5781A0(v52, sub_21E5650CC, MEMORY[0x277D84A28], sub_21E578974, sub_21E578410);
        v34 = v52[0];
        v52[0] = a1;

        sub_21E5781A0(v52, sub_21E5650CC, v33, sub_21E578974, sub_21E578410);
        v35 = *(v34 + 16);
        if (v35 != *(v52[0] + 16))
        {
          goto LABEL_50;
        }

        if (v35 && v34 != v52[0])
        {
          v36 = 32;
          while (*(v34 + v36) == *(v52[0] + v36))
          {
            v36 += 8;
            if (!--v35)
            {
              goto LABEL_61;
            }
          }

LABEL_50:
          sub_21E574114(v17, 1u);
          sub_21E574114(a1, 1u);
          sub_21E574114(v17, 1u);

          v15 = v48;
          v8 = v49;
          goto LABEL_58;
        }

        goto LABEL_61;
      case 2u:
        if (a2 != 2)
        {
          sub_21E5740FC(a1, a2);
          sub_21E5740FC(v17, 2u);
          v19 = v17;
          v20 = 2;
          goto LABEL_47;
        }

        v51 = 16 * v14;
        v52[0] = *v16;
        sub_21E5740FC(v17, 2u);
        sub_21E5740FC(v17, 2u);
        sub_21E5740FC(a1, 2u);
        sub_21E5740FC(v17, 2u);
        v21 = MEMORY[0x277D837D0];
        sub_21E5781A0(v52, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
        v22 = v52[0];
        v52[0] = a1;

        sub_21E5781A0(v52, sub_21E5650B8, v21, sub_21E57846C, sub_21E578348);
        v23 = v52[0];
        v24 = *(v22 + 16);
        if (v24 != *(v52[0] + 16))
        {
          sub_21E574114(v17, 2u);
          sub_21E574114(a1, 2u);
          v37 = v17;
          v38 = 2;
          goto LABEL_53;
        }

        if (!v24 || v22 == v52[0])
        {
          goto LABEL_61;
        }

        v46 = v4;
        v25 = 0;
        while (1)
        {
          v26 = *(v22 + v25 + 32) == *(v23 + v25 + 32) && *(v22 + v25 + 40) == *(v23 + v25 + 40);
          if (!v26 && (sub_21E57BB3C() & 1) == 0)
          {
            break;
          }

          v25 += 16;
          if (!--v24)
          {
            goto LABEL_60;
          }
        }

        sub_21E574114(v17, 2u);
        sub_21E574114(a1, 2u);
        v39 = v17;
        v40 = 2;
        goto LABEL_56;
      case 3u:
        if (a2 != 3)
        {
          sub_21E5740FC(a1, a2);
          sub_21E5740FC(v17, 3u);
          v19 = v17;
          v20 = 3;
LABEL_47:
          sub_21E574114(v19, v20);
          result = sub_21E574114(a1, a2);
LABEL_58:
          v14 = (v14 + 1) & v15;
          if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_59;
          }

          continue;
        }

        v51 = 16 * v14;
        v52[0] = *v16;
        sub_21E5740FC(v17, 3u);
        sub_21E5740FC(v17, 3u);
        sub_21E5740FC(a1, 3u);
        sub_21E5740FC(v17, 3u);
        v27 = MEMORY[0x277D837D0];
        sub_21E5781A0(v52, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
        v28 = v52[0];
        v52[0] = a1;

        sub_21E5781A0(v52, sub_21E5650B8, v27, sub_21E57846C, sub_21E578348);
        v29 = v52[0];
        v30 = *(v28 + 16);
        if (v30 != *(v52[0] + 16))
        {
          sub_21E574114(v17, 3u);
          sub_21E574114(a1, 3u);
          v37 = v17;
          v38 = 3;
LABEL_53:
          sub_21E574114(v37, v38);

LABEL_57:
          v15 = v48;
          v8 = v49;
          v12 = v47;
          goto LABEL_58;
        }

        if (v30 && v28 != v52[0])
        {
          v46 = v4;
          v31 = 0;
          while (1)
          {
            v32 = *(v28 + v31 + 32) == *(v29 + v31 + 32) && *(v28 + v31 + 40) == *(v29 + v31 + 40);
            if (!v32 && (sub_21E57BB3C() & 1) == 0)
            {
              break;
            }

            v31 += 16;
            if (!--v30)
            {
LABEL_60:
              v4 = v46;
              goto LABEL_61;
            }
          }

          sub_21E574114(v17, 3u);
          sub_21E574114(a1, 3u);
          v39 = v17;
          v40 = 3;
LABEL_56:
          sub_21E574114(v39, v40);

          v4 = v46;
          goto LABEL_57;
        }

LABEL_61:
        sub_21E574114(v17, v18);
        sub_21E574114(a1, v18);
        sub_21E574114(v17, v18);

LABEL_62:
        v41 = *v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = *v4;
        v52[0] = *v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21E577A34();
          v43 = v52[0];
        }

        v44 = *(v43 + 48) + v51;
        v45 = *v44;
        LOBYTE(v44) = *(v44 + 8);
        *v50 = v45;
        *(v50 + 8) = v44;
        result = sub_21E579B6C(v14);
        *v4 = v52[0];
        return result;
      default:
        if (a2)
        {
          sub_21E5740FC(a1, a2);
          v19 = v17;
          v20 = 0;
          goto LABEL_47;
        }

        v51 = 16 * v14;
        sub_21E574114(v17, 0);
        result = sub_21E574114(a1, 0);
        if (((v17 ^ a1) & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
    }
  }
}

unint64_t sub_21E579B6C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_21E57B90C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v36 = (v9 + 1) & v7;
      v37 = v4;
      do
      {
        v10 = v7;
        v38 = 16 * v6;
        v11 = *(v3 + 40);
        v12 = *(v3 + 48) + 16 * v6;
        v13 = *v12;
        v14 = *(v12 + 8);
        sub_21E57BB8C();
        switch(v14)
        {
          case 1:
            MEMORY[0x223D5D090](1);
            MEMORY[0x223D5D090](*(v13 + 16));
            v23 = *(v13 + 16);
            if (!v23)
            {
              goto LABEL_18;
            }

            v24 = (v13 + 32);
            do
            {
              v25 = *v24++;
              MEMORY[0x223D5D0B0](v25);
              --v23;
            }

            while (v23);
            sub_21E5740FC(v13, 1u);
            break;
          case 2:
            MEMORY[0x223D5D090](2);
            MEMORY[0x223D5D090](*(v13 + 16));
            v15 = *(v13 + 16);
            if (!v15)
            {
              goto LABEL_18;
            }

            v16 = (v13 + 40);
            do
            {
              v17 = *(v16 - 1);
              v18 = *v16;

              sub_21E57B6AC();

              v16 += 2;
              --v15;
            }

            while (v15);
            break;
          case 3:
            MEMORY[0x223D5D090](3);
            MEMORY[0x223D5D090](*(v13 + 16));
            v19 = *(v13 + 16);
            if (v19)
            {

              v20 = (v13 + 40);
              do
              {
                v21 = *(v20 - 1);
                v22 = *v20;

                sub_21E57B6AC();

                v20 += 2;
                --v19;
              }

              while (v19);
            }

            else
            {
LABEL_18:
            }

            break;
          default:
            MEMORY[0x223D5D090](0);
            sub_21E57BBAC();
            break;
        }

        v26 = sub_21E57BBCC();
        sub_21E574114(v13, v14);
        v7 = v10;
        v27 = v26 & v10;
        if (v2 >= v36)
        {
          v28 = v27 < v36 || v2 < v27;
        }

        else
        {
          v28 = v27 < v36 && v2 < v27;
        }

        v4 = v37;
        if (!v28)
        {
          v29 = *(v3 + 48);
          v30 = (v29 + 16 * v2);
          v31 = (v29 + v38);
          v32 = 16 * v2 != v38 || v30 >= v31 + 1;
          v2 = v6;
          if (v32)
          {
            *v30 = *v31;
            v2 = v6;
          }
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(v37 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v33 = *(v3 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v35;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_21E579E90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D5D090](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_21E57B6AC();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21E579F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D5D090](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x223D5D0B0](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21E579F58(uint64_t result, unsigned __int8 a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return sub_21E5740FC(result, a2);
  }

  return result;
}

uint64_t sub_21E579F7C(uint64_t result, unsigned __int8 a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return sub_21E574114(result, a2);
  }

  return result;
}

uint64_t sub_21E579FA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_3();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_15_4(v5);

  return sub_21E575144(v7, v8, v9, v10);
}

unint64_t sub_21E57A040()
{
  result = qword_281225DE8;
  if (!qword_281225DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DE8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21E57A0B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_21E57A0F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriAutoComplete21IndexUpdateResultInfoO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21E57A17C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_21E57A1BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_21E57A200(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t dispatch thunk of IndexUpdateManager.update(type:)()
{
  OUTLINED_FUNCTION_152();
  v3 = v2;
  v5 = v4;
  v6 = *(*v0 + 152);
  v11 = (v6 + *v6);
  v7 = v6[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_17_3();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_21E57A56C;

  return v11(v5, v3);
}

uint64_t sub_21E57A398(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_21E574114(a1, a2);
  }

  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  sub_21E574114(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21E57A3F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_3();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_15_4(v5);

  return sub_21E57538C(v7, v8, v9, v10);
}

uint64_t sub_21E57A48C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_12_3();

  return v5();
}

uint64_t OUTLINED_FUNCTION_3_11()
{
  *v0 = v1;
  v0[1] = 0;
  *(*(v2 + 56) + 16) = 0;
  result = v2 + 8;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
  return v3;
}

uint64_t OUTLINED_FUNCTION_12_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_3()
{
}

void OUTLINED_FUNCTION_22_2(uint64_t *a1@<X8>)
{
  v2 = *a1;
  *(v1 - 112) = *(a1 - 1);
  *(v1 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_25_5()
{
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return sub_21E57B94C();
}

uint64_t sub_21E57A72C(uint64_t a1, double a2)
{
  v4 = sub_21E57B5EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  if (*(a1 + 16) > 1uLL)
  {
    v18 = sub_21E57AA64(a1, a2);
    if (v19)
    {
      sub_21E57B5BC();
      v20 = sub_21E57B5DC();
      v21 = sub_21E57B86C();
      if (os_log_type_enabled(v20, v21))
      {
        swift_slowAlloc();
        v29 = OUTLINED_FUNCTION_2_10();
        *a1 = 136315394;
        v22 = OUTLINED_FUNCTION_0_7("normalizedScoreOf(value:inSortedList:)");
        OUTLINED_FUNCTION_4_10(v22);
        _os_log_impl(&dword_21E527000, v20, v21, "Function: %s > Unable to calculate a normalized score for value %f since it does not exist in the list", a1, 0x16u);
        OUTLINED_FUNCTION_1_9();
        OUTLINED_FUNCTION_12_2();
      }

      return (*(v5 + 8))(v9, v4);
    }

    else
    {
      v23 = v18;
      result = sub_21E57AAA4(a1, a2);
      if (v24)
      {
        sub_21E57B5BC();
        v25 = sub_21E57B5DC();
        v26 = sub_21E57B86C();
        if (os_log_type_enabled(v25, v26))
        {
          swift_slowAlloc();
          v29 = OUTLINED_FUNCTION_2_10();
          *a1 = 136315394;
          v27 = OUTLINED_FUNCTION_0_7("normalizedScoreOf(value:inSortedList:)");
          OUTLINED_FUNCTION_4_10(v27);
          _os_log_impl(&dword_21E527000, v25, v26, "Function: %s > Unable to calculate a normalized score for value %f since it does not exist in the list", a1, 0x16u);
          OUTLINED_FUNCTION_1_9();
          OUTLINED_FUNCTION_12_2();
        }

        return (*(v5 + 8))(v12, v4);
      }

      else if (__OFADD__(v23, result))
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21E57B5BC();
    v15 = sub_21E57B5DC();
    v16 = sub_21E57B86C();
    if (os_log_type_enabled(v15, v16))
    {
      swift_slowAlloc();
      v29 = OUTLINED_FUNCTION_2_10();
      *a1 = 136315138;
      *(a1 + 4) = OUTLINED_FUNCTION_0_7("normalizedScoreOf(value:inSortedList:)");
      _os_log_impl(&dword_21E527000, v15, v16, "Function: %s > Skipping normalized score calculation for a list with less than two elements", a1, 0xCu);
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_12_2();
    }

    return (*(v5 + 8))(v14, v4);
  }

  return result;
}

uint64_t sub_21E57AA64(uint64_t a1, double a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a1 + 16) == i)
    {
      return 0;
    }

    if (*(a1 + 32 + 8 * i) == a2)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_21E57AAA4(uint64_t a1, double a2)
{
  result = *(a1 + 16);
  v4 = a1 + 24;
  do
  {
    v5 = result;
    if (!result)
    {
      break;
    }

    --result;
  }

  while (*(v4 + 8 * v5) != a2);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_7@<X0>(uint64_t a1@<X8>)
{

  return sub_21E5553D8(0xD000000000000026, (a1 - 32) | 0x8000000000000000, (v1 - 88));
}

void OUTLINED_FUNCTION_1_9()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v2;
  return result;
}