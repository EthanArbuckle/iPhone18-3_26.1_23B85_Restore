uint64_t sub_2312F1334()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v4 = v0[46];
  sub_231369360();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_2312F13A0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 200);
    sub_231228E9C(v1, &qword_27DD44858, &qword_2313765C0);
    sub_231369130();
    sub_2311CF324(v4, v0 + 16);
    v5 = sub_2313698A0();
    v6 = sub_23136A3A0();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 344);
    v9 = *(v0 + 312);
    v10 = *(v0 + 320);
    if (v7)
    {
      v11 = *(v0 + 248);
      v12 = *(v0 + 256);
      v74 = *(v0 + 240);
      v13 = OUTLINED_FUNCTION_60();
      v76 = OUTLINED_FUNCTION_29_0();
      *v13 = 136315138;
      v80 = v9;
      v83 = v76;
      v14 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      OUTLINED_FUNCTION_32_13();
      sub_2313676F0();

      sub_231368130();
      v15 = OUTLINED_FUNCTION_22_18();
      v16(v15);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v17 = OUTLINED_FUNCTION_28();
      v20 = sub_2311CFD58(v17, v18, v19);

      *(v13 + 4) = v20;
      OUTLINED_FUNCTION_17_16();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_29();

      (*(v10 + 8))(v78, v80);
    }

    else
    {

      v55 = *(v10 + 8);
      v56 = OUTLINED_FUNCTION_28();
      v57(v56);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    OUTLINED_FUNCTION_1_38();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X2, X16 }
  }

  v27 = *(v0 + 400);
  v26 = *(v0 + 408);
  v28 = *(v0 + 384);
  v29 = *(v0 + 360);
  (*(v28 + 32))(v26, v1, v2);
  sub_231369130();
  v30 = *(v28 + 16);
  *(v0 + 440) = v30;
  *(v0 + 448) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v27, v26, v2);
  v31 = sub_2313698A0();
  v32 = sub_23136A3A0();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 400);
  v35 = *(v0 + 376);
  v36 = *(v0 + 384);
  v37 = *(v0 + 360);
  v39 = *(v0 + 312);
  v38 = *(v0 + 320);
  if (v33)
  {
    v72 = v31;
    v81 = *(v0 + 360);
    v41 = *(v0 + 296);
    v40 = *(v0 + 304);
    v42 = *(v0 + 288);
    v79 = *(v0 + 312);
    v73 = OUTLINED_FUNCTION_60();
    v77 = OUTLINED_FUNCTION_29_0();
    v83 = v77;
    *v73 = 136315138;
    v75 = v32;
    sub_231367430();
    OUTLINED_FUNCTION_8_24();
    sub_2312F42C8(v43, 255, v44);
    v45 = sub_23136A8B0();
    v46 = v35;
    v48 = v47;
    v49 = *(v41 + 8);
    v50 = OUTLINED_FUNCTION_28_0();
    v51(v50);
    v52 = *(v36 + 8);
    v52(v34, v46);
    v53 = sub_2311CFD58(v45, v48, &v83);

    *(v73 + 4) = v53;
    _os_log_impl(&dword_2311CB000, v72, v75, "ToolKitIntentDetailsResolver: Resolving IntentDetails for intentQuery.intentType: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_10_25();

    v54 = *(v38 + 8);
    v54(v81, v79);
  }

  else
  {

    v52 = *(v36 + 8);
    v52(v34, v35);
    v54 = *(v38 + 8);
    v54(v37, v39);
  }

  *(v0 + 456) = v52;
  *(v0 + 464) = v54;
  if (qword_27DD42DE8 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 280);
  v62 = *(v0 + 216);
  v61 = *(v0 + 224);
  v64 = *(v0 + 200);
  v63 = *(v0 + 208);
  v65 = v63[4];
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  sub_2313677C0();
  sub_2311CF324(v64, v0 + 56);
  sub_2311CF324(v63, v0 + 96);
  sub_2311CF324(v62, v0 + 136);
  v66 = swift_allocObject();
  *(v0 + 472) = v66;
  sub_2311D38A8((v0 + 56), v66 + 16);
  sub_2311D38A8((v0 + 96), v66 + 56);
  sub_2311D38A8((v0 + 136), v66 + 96);
  *(v66 + 136) = v61;
  v67 = *(MEMORY[0x277D60FF8] + 4);
  v82 = *MEMORY[0x277D60FF8] + MEMORY[0x277D60FF8];

  v68 = swift_task_alloc();
  *(v0 + 480) = v68;
  *v68 = v0;
  v68[1] = sub_2312F1960;
  v69 = *(v0 + 280);
  OUTLINED_FUNCTION_31();

  __asm { BR              X4 }
}

uint64_t sub_2312F1960()
{
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  v5 = v2[59];
  (*(v2[34] + 8))(v2[35], v2[33]);

  if (v0)
  {
    v6 = sub_2312F1E48;
  }

  else
  {
    v6 = sub_2312F1AE0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2312F1AE0()
{
  v64 = v0;
  v1 = v0[61];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[51];
  v5 = v0[49];
  v6 = v0[47];
  v7 = v0[44];
  v8 = v0[23];
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  v10 = sub_231254A3C(sub_2312F42A8, v9, v8);

  sub_231369130();
  v3(v5, v4, v6);
  sub_231369EE0();
  v11 = sub_2313698A0();
  v12 = sub_23136A3A0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[58];
  v15 = v0[49];
  v16 = v0[47];
  v61 = v0[57];
  v17 = v0[44];
  v18 = v0[39];
  v19 = v0[40];
  if (v13)
  {
    v56 = v12;
    v58 = v0[44];
    v20 = v0[37];
    v21 = v0[38];
    v53 = v0[48];
    v22 = v0[36];
    v57 = v0[39];
    v23 = swift_slowAlloc();
    v54 = OUTLINED_FUNCTION_29_0();
    v63 = v54;
    *v23 = 134218242;
    *(v23 + 4) = *(v10 + 16);

    *(v23 + 12) = 2080;
    v55 = v14;
    sub_231367430();
    OUTLINED_FUNCTION_8_24();
    sub_2312F42C8(v24, 255, v25);
    v26 = sub_23136A8B0();
    v28 = v27;
    v29 = *(v20 + 8);
    v30 = OUTLINED_FUNCTION_71();
    v31(v30);
    v32 = OUTLINED_FUNCTION_31_18();
    v33(v32);
    v34 = sub_2311CFD58(v26, v28, &v63);

    *(v23 + 14) = v34;
    _os_log_impl(&dword_2311CB000, v11, v56, "ToolKitIntentDetailsResolver: Resolved %ld IntentDetails for intentQuery.intentType: %s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    OUTLINED_FUNCTION_10_25();
    OUTLINED_FUNCTION_29();

    v55(v58, v57);
  }

  else
  {

    v35 = OUTLINED_FUNCTION_31_18();
    v36(v35);
    v14(v17, v18);
  }

  v37 = v0[57];
  v38 = v0[51];
  v39 = v0[47];
  v62 = sub_23121D750(v10);

  v40 = OUTLINED_FUNCTION_26_1();
  v37(v40);
  v42 = v0[50];
  v41 = v0[51];
  v43 = v0[49];
  v45 = v0[45];
  v44 = v0[46];
  v47 = v0[43];
  v46 = v0[44];
  v49 = v0[41];
  v48 = v0[42];
  v50 = v0[38];
  v59 = v0[35];
  v60 = v0[32];

  OUTLINED_FUNCTION_14();

  return v51(v62);
}

uint64_t sub_2312F1E48()
{
  v1 = v0[61];
  v2 = v0[41];
  sub_231369130();
  v3 = v1;
  v4 = sub_2313698A0();
  v5 = sub_23136A3B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[61];
    v7 = OUTLINED_FUNCTION_60();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2311CB000, v4, v5, "Unable to communicate with ToolKitIntentService: %@", v7, 0xCu);
    sub_231228E9C(v8, &qword_27DD433B0, &unk_23136EDC0);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v11 = v0[61];
  v13 = v0[57];
  v12 = v0[58];
  v14 = v0[51];
  v15 = v0[47];
  v16 = v0[48];
  v17 = v4;
  v18 = v0[40];
  v19 = v0[41];
  v20 = v0[39];

  v21 = OUTLINED_FUNCTION_71();
  v12(v21);

  v22 = OUTLINED_FUNCTION_26_1();
  v13(v22);
  OUTLINED_FUNCTION_1_38();

  OUTLINED_FUNCTION_14();
  v24 = MEMORY[0x277D84F90];

  return v23(v24);
}

uint64_t sub_2312F2044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_231366860();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_231367C70();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312F2174, 0, 0);
}

uint64_t sub_2312F2174()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_25(*(v0 + 24));
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  *(v0 + 128) = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  v3 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312F21F4()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = sub_231369340();
  v6 = v5;
  swift_unknownObjectRelease();
  v0[17] = v4;
  v0[18] = v6;
  v0[19] = swift_getObjectType();
  v7 = *(*(v6 + 8) + 8);
  sub_23136A260();
  OUTLINED_FUNCTION_36_0();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312F2290()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v0[20] = sub_231368020();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312F22FC()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 32);
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  OUTLINED_FUNCTION_71();
  sub_2313677D0();
  (*(v4 + 104))(v2, *MEMORY[0x277D60AC8], v3);
  sub_2312F42C8(&qword_280F7CA78, 255, MEMORY[0x277D60AE8]);
  v7 = sub_231369F60();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v9 = OUTLINED_FUNCTION_28_0();
  (v8)(v9);
  if (v7)
  {
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_2_25(*(v0 + 40));
    v10 = sub_2313683A0();
  }

  *(v0 + 168) = v10;
  v11 = *(v0 + 72);
  v12 = *(v0 + 40);
  v13 = __swift_project_boxed_opaque_existential_1((*(v0 + 48) + 32), *(*(v0 + 48) + 56));
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  OUTLINED_FUNCTION_71();
  sub_231368360();
  v15 = *v13;
  v16 = swift_task_alloc();
  *(v0 + 176) = v16;
  *v16 = v0;
  v16[1] = sub_2312F24E0;
  v17 = *(v0 + 160);
  v18 = *(v0 + 72);
  v19 = *(v0 + 32);

  return sub_2312F5834();
}

uint64_t sub_2312F24E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = v4[22];
  *v6 = *v2;
  v5[23] = v1;

  v8 = v4[21];
  v9 = v4[20];
  v10 = v4[9];
  v11 = v4[8];
  v12 = v4[7];
  if (v1)
  {
    (*(v11 + 8))(v10, v12);

    v13 = sub_2312F2730;
  }

  else
  {
    v5[24] = a1;
    (*(v11 + 8))(v10, v12);

    v13 = sub_2312F26B0;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_2312F26B0()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  **(v0 + 16) = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2312F2730()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_2312F27F4()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2312F2858()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312F2918;

  return sub_2312F0DD8();
}

uint64_t sub_2312F2918()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_14();

  return v6(v2);
}

uint64_t sub_2312F2A04()
{
  OUTLINED_FUNCTION_8();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v1[17] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  OUTLINED_FUNCTION_40_0(v4);
  v6 = *(v5 + 64);
  v1[18] = OUTLINED_FUNCTION_43();
  v7 = sub_231369A00();
  v1[19] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[20] = v8;
  v10 = *(v9 + 64);
  v1[21] = OUTLINED_FUNCTION_43();
  v11 = sub_2313673A0();
  v1[22] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[23] = v12;
  v14 = *(v13 + 64);
  v1[24] = OUTLINED_FUNCTION_43();
  v15 = type metadata accessor for IntentDetails();
  v1[25] = v15;
  OUTLINED_FUNCTION_40_0(v15);
  v17 = *(v16 + 64);
  v1[26] = OUTLINED_FUNCTION_43();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  OUTLINED_FUNCTION_40_0(v18);
  v20 = *(v19 + 64);
  v1[27] = OUTLINED_FUNCTION_43();
  v21 = sub_231367550();
  v1[28] = v21;
  OUTLINED_FUNCTION_0(v21);
  v1[29] = v22;
  v24 = *(v23 + 64);
  v1[30] = OUTLINED_FUNCTION_67();
  v1[31] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44858, &qword_2313765C0);
  OUTLINED_FUNCTION_40_0(v25);
  v27 = *(v26 + 64);
  v1[32] = OUTLINED_FUNCTION_43();
  v28 = sub_231367490();
  v1[33] = v28;
  OUTLINED_FUNCTION_0(v28);
  v1[34] = v29;
  v31 = *(v30 + 64);
  v1[35] = OUTLINED_FUNCTION_67();
  v1[36] = swift_task_alloc();
  v32 = sub_231368180();
  v1[37] = v32;
  OUTLINED_FUNCTION_0(v32);
  v1[38] = v33;
  v35 = *(v34 + 64);
  v1[39] = OUTLINED_FUNCTION_43();
  v36 = sub_2313698C0();
  v1[40] = v36;
  OUTLINED_FUNCTION_0(v36);
  v1[41] = v37;
  v39 = *(v38 + 64);
  v1[42] = OUTLINED_FUNCTION_67();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_2312F2D4C()
{
  v73 = v0;
  v1 = v0[16];
  v2 = v0[14];
  if (sub_231368520() == *(v1 + 16) && v3 == *(v1 + 24))
  {
  }

  else
  {
    v5 = OUTLINED_FUNCTION_33_14();

    if ((v5 & 1) == 0)
    {
      v6 = v0[42];
      v7 = v0[16];
      v8 = v0[14];
      sub_231369130();

      v9 = sub_2313698A0();
      v10 = sub_23136A3A0();

      v11 = os_log_type_enabled(v9, v10);
      v13 = v0[41];
      v12 = v0[42];
      v14 = v0[40];
      if (v11)
      {
        v15 = v0[16];
        v67 = v0[17];
        v71 = v0[42];
        v16 = v0[14];
        v17 = OUTLINED_FUNCTION_29_0();
        v72 = swift_slowAlloc();
        *v17 = 136315650;
        v18 = sub_231368520();
        sub_2311CFD58(v18, v19, &v72);
        OUTLINED_FUNCTION_36_12();
        *(v17 + 4) = v14;
        *(v17 + 12) = 2080;
        v0[12] = v15;

        v20 = sub_23136A010();
        sub_2311CFD58(v20, v21, &v72);
        OUTLINED_FUNCTION_36_12();
        *(v17 + 14) = v14;
        *(v17 + 22) = 2080;
        v22 = OUTLINED_FUNCTION_26_1();
        *(v17 + 24) = sub_2311CFD58(v22, v23, v24);
        OUTLINED_FUNCTION_34_12(&dword_2311CB000, v25, v26, "Parameter's identifier (%s) is required to match %s's resolverTypeOperand (%s). Returning empty results");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10_25();
        OUTLINED_FUNCTION_29();

        (*(v13 + 8))(v71, v14);
      }

      else
      {

        (*(v13 + 8))(v12, v14);
      }

      OUTLINED_FUNCTION_3_30();
      OUTLINED_FUNCTION_6_21();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_35();

      __asm { BRAA            X2, X16 }
    }
  }

  v27 = v0[47];
  v28 = v0[15];
  v29 = v0[16];
  sub_231369130();
  sub_2311CF324(v28, (v0 + 2));

  v30 = sub_2313698A0();
  v31 = sub_23136A3A0();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[47];
  v34 = v0[40];
  v35 = v0[41];
  if (v32)
  {
    v36 = v0[38];
    v37 = v0[39];
    v68 = v0[17];
    v65 = v0[37];
    v66 = v0[16];
    v38 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v38 = 136315394;
    v72 = v69;
    v70 = v33;
    v39 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_2313682A0();
    sub_2313676F0();

    sub_231368130();
    v40 = OUTLINED_FUNCTION_22_18();
    v41(v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v42 = OUTLINED_FUNCTION_28();
    v45 = sub_2311CFD58(v42, v43, v44);

    *(v38 + 4) = v45;
    *(v38 + 12) = 2080;
    v0[13] = v66;

    v46 = sub_23136A010();
    v48 = sub_2311CFD58(v46, v47, &v72);

    *(v38 + 14) = v48;
    OUTLINED_FUNCTION_17_16();
    _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_25();
    OUTLINED_FUNCTION_29();

    v54 = *(v35 + 8);
    v54(v70, v34);
  }

  else
  {

    v54 = *(v35 + 8);
    v55 = OUTLINED_FUNCTION_26_1();
    (v54)(v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v0[48] = v54;
  OUTLINED_FUNCTION_2_25(v0[15]);
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[49] = v56;
  v0[50] = v57;
  v0[51] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_35();

  return MEMORY[0x2822009F8](v58, v59, v60);
}

uint64_t sub_2312F3208()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  v4 = v0[32];
  sub_231369360();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312F3274()
{
  v2 = v0[32];
  v1 = v0[33];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[43];
    v4 = v0[15];
    sub_231228E9C(v2, &qword_27DD44858, &qword_2313765C0);
    sub_231369130();
    sub_2311CF324(v4, (v0 + 7));
    v5 = sub_2313698A0();
    v6 = sub_23136A3A0();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[48];
    v9 = v0[43];
    v10 = v0[40];
    if (v7)
    {
      v40 = v0[40];
      v11 = v0[38];
      v12 = v0[39];
      v36 = v0[37];
      v39 = v0[41];
      v13 = OUTLINED_FUNCTION_60();
      v41 = OUTLINED_FUNCTION_29_0();
      *v13 = 136315138;
      v38 = v9;
      v14 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      OUTLINED_FUNCTION_32_13();
      sub_2313676F0();

      sub_231368130();
      (*(v11 + 8))(v12, v36);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      v15 = OUTLINED_FUNCTION_28();
      v18 = sub_2311CFD58(v15, v16, v17);

      *(v13 + 4) = v18;
      OUTLINED_FUNCTION_17_16();
      _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v37(v38, v40);
    }

    else
    {

      v32 = OUTLINED_FUNCTION_26_1();
      v8(v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    }

    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_6_21();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_35();

    __asm { BRAA            X2, X16 }
  }

  v24 = v0[15];
  (*(v0[34] + 32))(v0[36], v2, v1);
  v25 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[52] = v26;
  v0[53] = v27;
  v0[54] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_35();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_2312F35A0()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v4 = sub_2313693D0();
  v6 = v5;
  swift_unknownObjectRelease();
  v0[55] = v4;
  v0[56] = v6;
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312F361C()
{
  v1 = *(v0 + 448);
  if (!v1)
  {
LABEL_9:
    v9 = *(v0 + 352);
    sub_231369130();
    v10 = sub_2313698A0();
    v11 = sub_23136A3A0();
    if (os_log_type_enabled(v10, v11))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_57(&dword_2311CB000, v12, v13, "Fallback phrase not provided for intent");
      OUTLINED_FUNCTION_29();
    }

    v14 = *(v0 + 384);
    v15 = *(v0 + 352);
    v16 = *(v0 + 320);
    v17 = *(v0 + 328);
    v18 = *(v0 + 288);
    v19 = *(v0 + 264);
    v20 = *(v0 + 272);

    v21 = OUTLINED_FUNCTION_28_0();
    v14(v21);
    v22 = *(v20 + 8);
    v23 = OUTLINED_FUNCTION_54_0();
    v24(v23);
    OUTLINED_FUNCTION_3_30();
    v28 = *(v0 + 216);
    v29 = *(v0 + 208);
    v30 = *(v0 + 192);
    v31 = *(v0 + 168);
    v32 = *(v0 + 144);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X2, X16 }
  }

  v2 = *(v0 + 440) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_25(*(v0 + 120));
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 456) = v3;
  *(v0 + 464) = v4;
  *(v0 + 472) = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312F384C()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[27];
  sub_231369460();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312F38B8()
{
  v116 = v0;
  v1 = v0[27];
  v2 = v0[28];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[56];
  if (EnumTagSinglePayload != 1)
  {
    v22 = v0[46];
    (*(v0[29] + 32))(v0[31], v1, v2);
    sub_231369130();
    sub_231369EE0();
    v23 = sub_2313698A0();
    v24 = sub_23136A3A0();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[55];
      v25 = v0[56];
      v112 = v0[48];
      v27 = v0[46];
      v28 = v0[40];
      v29 = v0[41];
      v30 = OUTLINED_FUNCTION_60();
      v31 = OUTLINED_FUNCTION_29_0();
      v114 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_2311CFD58(v26, v25, &v114);
      _os_log_impl(&dword_2311CB000, v23, v24, "Creating IntentDetails using provided phrase fallback from our client: %s.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v32 = OUTLINED_FUNCTION_28_0();
      v112(v32);
    }

    else
    {
      v33 = v0[48];
      v34 = v0[46];
      v35 = v0[40];
      v36 = v0[41];

      v37 = OUTLINED_FUNCTION_28_0();
      v33(v37);
    }

    v107 = v0[55];
    v109 = v0[56];
    v38 = v0[35];
    v113 = v0[36];
    v39 = v0[33];
    v40 = v0[34];
    v41 = v0[30];
    v42 = v0[28];
    v43 = v0[26];
    v103 = v41;
    v104 = v0[25];
    v45 = v0[23];
    v44 = v0[24];
    v105 = v44;
    v106 = v0[22];
    v46 = *(v0[29] + 16);
    v46();
    v47 = *(v40 + 16);
    v47(v38, v113, v39);
    sub_231369EC0();
    (v46)(v43, v103, v42);
    v47(v43 + *(v104 + 20), v38, v39);
    v48 = (v43 + *(v104 + 28));
    *v48 = v107;
    v48[1] = v109;
    sub_231367430();
    v49 = (*(v45 + 88))(v105, v106);
    if (v49 == *MEMORY[0x277D60878])
    {
      v50 = v0[30];
      v51 = v0[21];
      v53 = v0[19];
      v52 = v0[20];
      (*(v0[23] + 8))(v0[24], v0[22]);
      (*(v52 + 104))(v51, *MEMORY[0x277D723F0], v53);
      v54 = sub_2313699F0();
      v56 = v55;
      (*(v52 + 8))(v51, v53);
      v114 = v54;
      v115 = v56;
    }

    else
    {
      v57 = v0[30];
      v58 = v0[23];
      v59 = v0[24];
      v60 = v0[22];
      if (v49 != *MEMORY[0x277D60868])
      {
        v71 = v0[30];
        sub_231367520();
        v72 = *(v58 + 8);
        v73 = OUTLINED_FUNCTION_54_0();
        v74(v73);
        goto LABEL_14;
      }

      v62 = v0[20];
      v61 = v0[21];
      v63 = v0[19];
      v64 = *(v58 + 8);
      v65 = OUTLINED_FUNCTION_54_0();
      v66(v65);
      (*(v62 + 104))(v61, *MEMORY[0x277D723E8], v63);
      v67 = sub_2313699F0();
      v69 = v68;
      (*(v62 + 8))(v61, v63);
      v114 = v67;
      v115 = v69;
    }

    MEMORY[0x23192A730](95, 0xE100000000000000);
    v70 = sub_231367520();
    MEMORY[0x23192A730](v70);

LABEL_14:
    v75 = v0[35];
    v76 = v0[33];
    v77 = v0[34];
    v78 = v0[30];
    v108 = v0[31];
    v110 = v0[36];
    v79 = v0[28];
    v80 = v0[29];
    v82 = v0[25];
    v81 = v0[26];
    v83 = v0[18];
    sub_231367530();
    v84 = v81 + *(v82 + 24);
    sub_231369020();
    v85 = *(v77 + 8);
    v85(v75, v76);
    v86 = *(v80 + 8);
    v86(v78, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_23136B670;
    *(v87 + 56) = v82;
    v111 = v87;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v87 + 32));
    sub_2312053C8(v81, boxed_opaque_existential_1);
    v86(v108, v79);
    v85(v110, v76);
    goto LABEL_15;
  }

  v5 = v0[45];
  v6 = v0[56];

  sub_231228E9C(v1, &qword_27DD43808, &qword_231373E90);
  sub_231369130();
  v7 = sub_2313698A0();
  v8 = sub_23136A3A0();
  if (os_log_type_enabled(v7, v8))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v9, v10, "Cannot get intent from Context");
    OUTLINED_FUNCTION_29();
  }

  v11 = v0[48];
  v12 = v0[45];
  v13 = v0[40];
  v14 = v0[41];
  v15 = v0[36];
  v16 = v0[33];
  v17 = v0[34];

  v18 = OUTLINED_FUNCTION_28_0();
  v11(v18);
  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_54_0();
  v21(v20);
  v111 = MEMORY[0x277D84F90];
LABEL_15:
  v90 = v0[46];
  v89 = v0[47];
  v92 = v0[44];
  v91 = v0[45];
  v94 = v0[42];
  v93 = v0[43];
  v95 = v0[39];
  v97 = v0[35];
  v96 = v0[36];
  v98 = v0[31];
  v99 = v0[32];
  v100 = v0[30];
  OUTLINED_FUNCTION_6_21();

  OUTLINED_FUNCTION_14();

  return v101(v111);
}

uint64_t sub_2312F3F48()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312F4310;

  return sub_2312F2A04();
}

uint64_t sub_2312F4110()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *(v0 + 136);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2312F41C0;

  return sub_2312F2044(v3, v0 + 16, v0 + 56, v0 + 96, v4);
}

uint64_t sub_2312F41C0()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2312F42C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2312F4328()
{
  v1 = sub_231366860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231366800();
  v6 = *(v0 + 16);
  sub_231369B10();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2312F4424()
{
  v1 = sub_231369B50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231366860();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231366800();
  (*(v2 + 104))(v5, *MEMORY[0x277D72858], v1);
  v11 = *(v0 + 16);
  v12 = sub_231369B00();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  return v12;
}

uint64_t sub_2312F45E4(uint64_t a1)
{
  v2 = sub_231369D00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v64 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v59 = &v53[-v7];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448B8, &qword_231376720);
  v8 = *(*(v63 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v63);
  v65 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v53[-v12];
  MEMORY[0x28223BE20](v11);
  v57 = &v53[-v13];
  v14 = MEMORY[0x277D84F98];
  v66 = MEMORY[0x277D84F98];
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;
  v55 = v3;
  v56 = (v3 + 16);
  v61 = a1;
  v62 = (v3 + 32);
  result = sub_231369EE0();
  v21 = 0;
  v54 = a1 + 64;
  v60 = v2;
  if (v18)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v22 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
  }

  while (!v18);
  v21 = v22;
  while (1)
  {
LABEL_9:
    v23 = __clz(__rbit64(v18)) | (v21 << 6);
    v24 = *(v61 + 56);
    v25 = (*(v61 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = (type metadata accessor for ResolvedParameter() - 8);
    v29 = v24 + *(*v28 + 72) * v23;
    v30 = v63;
    v31 = v57;
    sub_2312FB298(v29, &v57[*(v63 + 48)], type metadata accessor for ResolvedParameter);
    *v31 = v27;
    v31[1] = v26;
    v32 = v31;
    v33 = v58;
    sub_2312FB2F8(v32, v58);
    v34 = &v33[*(v30 + 48) + v28[8]];
    v35 = v59;
    v36 = v60;
    (*v56)(v59, v34, v60);
    sub_2312FB2F8(v33, v65);
    v37 = *v62;
    (*v62)(v64, v35, v36);
    if (*(v14 + 24) <= *(v14 + 16))
    {
      sub_231369EE0();
      sub_2312B4368();
    }

    else
    {
      sub_231369EE0();
    }

    v14 = v66;
    v39 = *v65;
    v38 = v65[1];
    v40 = *(v66 + 40);
    sub_23136A9D0();
    sub_23136A060();
    result = sub_23136AA00();
    v41 = v14 + 64;
    v42 = -1 << *(v14 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v14 + 64 + 8 * (v43 >> 6))) == 0)
    {
      break;
    }

    v45 = __clz(__rbit64((-1 << v43) & ~*(v14 + 64 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v18 &= v18 - 1;
    v50 = v64;
    v51 = *(v63 + 48);
    *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v52 = (*(v14 + 48) + 16 * v45);
    *v52 = v39;
    v52[1] = v38;
    v37(*(v14 + 56) + *(v55 + 72) * v45, v50, v36);
    ++*(v14 + 16);
    result = sub_2312FB368(v65 + v51, type metadata accessor for ResolvedParameter);
    v15 = v54;
    if (!v18)
    {
      goto LABEL_5;
    }
  }

  v46 = 0;
  v47 = (63 - v42) >> 6;
  while (++v44 != v47 || (v46 & 1) == 0)
  {
    v48 = v44 == v47;
    if (v44 == v47)
    {
      v44 = 0;
    }

    v46 |= v48;
    v49 = *(v41 + 8 * v44);
    if (v49 != -1)
    {
      v45 = __clz(__rbit64(~v49)) + (v44 << 6);
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_2312F4A68(uint64_t a1)
{
  v2 = sub_2313673A0();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448F8, &unk_2313767E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = sub_231369A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v40 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_231367490();
  v14 = *(v51 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v51);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v49 = v14 + 8;
  v50 = v14 + 16;
  v48 = (v52 + 88);
  v47 = *MEMORY[0x277D60878];
  v44 = *MEMORY[0x277D60868];
  v46 = (v52 + 8);
  v41 = *MEMORY[0x277D723E8];
  v45 = (v11 + 104);
  v43 = *MEMORY[0x277D723F0];
  v38 = v11;
  v39 = (v11 + 32);
  v52 = a1;
  sub_231369EE0();
  v23 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v21)
    {
      break;
    }

LABEL_8:
    v25 = v51;
    (*(v14 + 16))(v17, *(v52 + 48) + *(v14 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v51);
    sub_231367430();
    (*(v14 + 8))(v17, v25);
    v26 = v53;
    v27 = (*v48)(v5, v53);
    if (v27 == v47)
    {
      (*v46)(v5, v26);
      (*v45)(v9, v43, v10);
    }

    else
    {
      if (v27 != v44)
      {
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
        (*v46)(v5, v53);
        goto LABEL_14;
      }

      (*v46)(v5, v53);
      (*v45)(v9, v41, v10);
    }

    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
LABEL_14:
    v21 &= v21 - 1;
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_2311D1F18(v9, &qword_27DD448F8, &unk_2313767E0);
    }

    else
    {
      v28 = *v39;
      (*v39)(v40, v9, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126F04C(0, *(v42 + 16) + 1, 1, v42);
        v42 = v33;
      }

      v30 = *(v42 + 16);
      v29 = *(v42 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v36 = *(v42 + 16);
        v37 = v30 + 1;
        sub_23126F04C(v29 > 1, v30 + 1, 1, v42);
        v30 = v36;
        v31 = v37;
        v42 = v34;
      }

      v32 = v42;
      *(v42 + 16) = v31;
      v28((v32 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30), v40, v10);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      sub_231255414();
      return;
    }

    v21 = *(v18 + 8 * v23);
    ++v24;
    if (v21)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2312F4FA4(uint64_t a1)
{
  v2 = sub_231367490();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v32 = *(v8 + 56);
    v33 = v9;
    v11 = MEMORY[0x277D84F90];
    v31 = v8;
    do
    {
      v33(v6, v10, v2);
      v12 = sub_231367470();
      v14 = v13;
      (*(v8 - 8))(v6, v2);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v11 + 16);
          sub_23126DC90();
          v11 = v18;
        }

        v15 = *(v11 + 16);
        if (v15 >= *(v11 + 24) >> 1)
        {
          sub_23126DC90();
          v11 = v19;
        }

        *(v11 + 16) = v15 + 1;
        v16 = v11 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v14;
      }

      v10 += v32;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v20 = 0;
  v21 = *(v11 + 16);
  v22 = MEMORY[0x277D84F90];
LABEL_13:
  v23 = (v11 + 40 + 16 * v20);
  while (1)
  {
    if (v21 == v20)
    {

      sub_231255354(v22);
      return;
    }

    if (v20 >= *(v11 + 16))
    {
      break;
    }

    ++v20;
    v25 = *(v23 - 1);
    v24 = *v23;
    v23 += 2;
    v26 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v26 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      sub_231369EE0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = *(v22 + 16);
        sub_2311F4E34();
        v22 = v34;
      }

      v29 = *(v22 + 16);
      if (v29 >= *(v22 + 24) >> 1)
      {
        sub_2311F4E34();
        v22 = v34;
      }

      *(v22 + 16) = v29 + 1;
      v30 = v22 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_2312F5238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_231367490();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v35 = (v7 + 8);
  v36 = v7 + 16;
  v37 = a1;
  sub_231369EE0();
  v16 = 0;
  v34 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = v16;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v7 + 16))(v10, *(v37 + 48) + *(v7 + 72) * (v18 | (v16 << 6)), v6);
    sub_231367450();
    v19 = sub_231367960();
    if (__swift_getEnumTagSinglePayload(v5, 1, v19) == 1)
    {
      (*v35)(v10, v6);
      sub_2311D1F18(v5, &qword_27DD43F08, &qword_231370CD0);
    }

    else
    {
      v20 = sub_231367930();
      v31 = v21;
      v32 = v20;
      v22 = *v35;
      v33 = v6;
      v22(v10, v6);
      (*(*(v19 - 8) + 8))(v5, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(v34 + 16);
        sub_23126DC90();
        v34 = v28;
      }

      v23 = *(v34 + 16);
      if (v23 >= *(v34 + 24) >> 1)
      {
        sub_23126DC90();
        v34 = v29;
      }

      v24 = v34;
      *(v34 + 16) = v23 + 1;
      v25 = v24 + 16 * v23;
      v26 = v31;
      *(v25 + 32) = v32;
      *(v25 + 40) = v26;
      v6 = v33;
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      sub_231255354(v34);
      return;
    }

    v14 = *(v11 + 8 * v16);
    ++v17;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2312F555C(uint64_t a1)
{
  v2 = sub_231367490();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = 0;
  v10 = *(a1 + 16);
  v24 = v3 + 16;
  v25 = a1;
  v22 = (v3 + 32);
  v11 = MEMORY[0x277D84F90];
  while (v10 != v9)
  {
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = *(v3 + 72);
    (*(v3 + 16))(v8, v25 + v12 + v13 * v9, v2);
    sub_231367470();
    if (v14)
    {

      (*(v3 + 8))(v8, v2);
      ++v9;
    }

    else
    {
      v21 = *v22;
      v21(v23, v8, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5FD4(0, *(v11 + 16) + 1, 1);
        v11 = v26;
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = v17 + 1;
        sub_2311F5FD4(v16 > 1, v17 + 1, 1);
        v18 = v20;
        v11 = v26;
      }

      ++v9;
      *(v11 + 16) = v18;
      v21((v11 + v12 + v17 * v13), v23, v2);
    }
  }

  sub_231255540();
}

uint64_t sub_2312F5798@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SuggestionsToolDatabaseManager();
  swift_allocObject();
  result = sub_2311EB588();
  if (!v1)
  {
    a1[3] = v3;
    a1[4] = &off_2845F2D98;
    *a1 = result;
  }

  return result;
}

id sub_2312F57FC()
{
  v0 = objc_allocWithZone(MEMORY[0x277D23C38]);

  return [v0 init];
}

uint64_t sub_2312F5834()
{
  OUTLINED_FUNCTION_8();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_2313698C0();
  v1[13] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[14] = v7;
  v9 = *(v8 + 64);
  v1[15] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44868, &qword_231376650);
  v1[16] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44870, &qword_231376658);
  OUTLINED_FUNCTION_40_0(v14);
  v16 = *(v15 + 64);
  v1[19] = OUTLINED_FUNCTION_43();
  v17 = sub_2313698F0();
  v1[20] = v17;
  OUTLINED_FUNCTION_0(v17);
  v1[21] = v18;
  v20 = *(v19 + 64);
  v1[22] = OUTLINED_FUNCTION_43();
  v21 = sub_231369AC0();
  v1[23] = v21;
  OUTLINED_FUNCTION_0(v21);
  v1[24] = v22;
  v24 = *(v23 + 64);
  v1[25] = OUTLINED_FUNCTION_67();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v25 = sub_231369840();
  v1[29] = v25;
  OUTLINED_FUNCTION_0(v25);
  v1[30] = v26;
  v28 = *(v27 + 64);
  v1[31] = OUTLINED_FUNCTION_43();
  v29 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_2312F5A6C()
{
  v1 = v0[31];
  v2 = v0[12];
  v3 = sub_231369190();
  sub_231369140();

  v4 = sub_231369190();
  OUTLINED_FUNCTION_51_10();
  sub_2313691A0();

  v5 = *(v2 + 24);
  (*(v2 + 16))();
  v6 = v0[27];
  v7 = v0[24];
  v52 = v0[28];
  v53 = v0[23];
  v8 = v0[21];
  v9 = v0[22];
  v51 = v0[20];
  v55 = v0[19];
  v57 = v0[12];
  v54 = v0[8];
  sub_2312F4FA4(v54);
  v59 = v10;
  v0[7] = MEMORY[0x277D84F90];
  sub_231369AA0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44878, &unk_231376690);
  v11 = sub_231369900();
  OUTLINED_FUNCTION_0_0(v11);
  v13 = v12;
  v15 = *(v14 + 72);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23136B670;
  (*(v13 + 104))(v17 + v16, *MEMORY[0x277D720F8], v11);
  sub_2312558B4();
  *v9 = v18;
  (*(v8 + 104))(v9, *MEMORY[0x277D720A8], v51);
  sub_2312FB430(&qword_27DD44880, MEMORY[0x277D724B8]);
  sub_2312FB430(&qword_27DD44888, MEMORY[0x277D720C0]);
  sub_231369B40();

  (*(v8 + 8))(v9, v51);
  v19 = *(v7 + 8);
  v0[32] = v19;
  v0[33] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v6, v53);
  sub_2312F66A4(v54, v52, (v0 + 2), v55);
  v20 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44890, &qword_2313766A0);
  sub_23136A210();
  if (*(v59 + 16))
  {
    v22 = v0[26];
    v21 = v0[27];
    v23 = v0[24];
    v56 = v0[23];
    v58 = v0[25];
    v24 = v0[17];
    v25 = v0[18];
    v26 = v0[16];
    sub_231369AA0();
    swift_getKeyPath();
    v27 = swift_allocObject();
    *(v27 + 16) = v59;
    *v25 = v27;
    (*(v24 + 104))(v25, *MEMORY[0x277D721B8], v26);
    sub_2312FB3DC(&qword_27DD44898, &qword_27DD44868, &qword_231376650);
    sub_231369B40();

    (*(v24 + 8))(v25, v26);
    v19(v21, v56);
    (*(v23 + 16))(v58, v22, v56);
    v28 = v0[7];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126F0CC(0, *(v28 + 16) + 1, 1, v28);
      v28 = v49;
    }

    v30 = *(v28 + 16);
    v29 = *(v28 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_23126F0CC(v29 > 1, v30 + 1, 1, v28);
      v28 = v50;
    }

    v31 = v0[25];
    v32 = v0[23];
    v33 = v0[24];
    v19(v0[26], v32);
    *(v28 + 16) = v30 + 1;
    (*(v33 + 32))(v28 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30, v31, v32);
    v0[7] = v28;
  }

  else
  {

    v28 = v0[7];
  }

  v0[34] = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[35] = v34;
  *v34 = v35;
  v34[1] = sub_2312F614C;
  v36 = v0[11];
  v37 = v0[12];
  v38 = v0[9];
  v39 = v0[10];
  v40 = v0[8];
  OUTLINED_FUNCTION_35();

  return sub_2312F6B10(v41, v42, v43, v44, v45, v46);
}

uint64_t sub_2312F614C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *(v4 + 280);
  *v6 = *v2;
  *(v5 + 288) = v1;

  v8 = *(v4 + 272);

  if (v1)
  {
    v9 = sub_2312F63DC;
  }

  else
  {
    *(v5 + 296) = a1;
    v9 = sub_2312F6288;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2312F6288()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v13 = v0[26];
  v14 = v0[25];
  v8 = v0[23];
  v15 = v0[22];
  v16 = v0[18];
  v17 = v0[15];
  sub_2311D1F18(v0[19], &qword_27DD44870, &qword_231376658);
  v2(v5, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v9 = sub_231369190();
  OUTLINED_FUNCTION_51_10();
  sub_231369180();

  (*(v3 + 8))(v4, v6);

  OUTLINED_FUNCTION_14();
  v11 = v0[37];

  return v10(v11);
}

uint64_t sub_2312F63DC()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[28];
  v4 = v0[23];
  sub_2311D1F18(v0[19], &qword_27DD44870, &qword_231376658);
  (v2)(v3, v4);
  v5 = v0[36];
  v6 = v0[15];
  sub_231369130();
  v7 = v5;
  v8 = sub_2313698A0();
  LOBYTE(v1) = sub_23136A3B0();

  if (os_log_type_enabled(v8, v1))
  {
    OUTLINED_FUNCTION_60();
    v9 = OUTLINED_FUNCTION_46_12();
    *v2 = 138412290;
    v10 = v5;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_23_15(&dword_2311CB000, v12, v13, "Unable to communicate with toolkit intent service: %@");
    sub_2311D1F18(v9, &qword_27DD433B0, &unk_23136EDC0);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_17_17();
  }

  v14 = v0[31];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[13];

  v18 = OUTLINED_FUNCTION_29_5();
  v19(v18);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v20 = sub_231369190();
  OUTLINED_FUNCTION_47_8();

  v21 = v0[31];
  v23 = v0[28];
  v22 = v0[29];
  v25 = v0[26];
  v24 = v0[27];
  v26 = OUTLINED_FUNCTION_25_16(v0[30]);
  v27(v26);

  OUTLINED_FUNCTION_56_0();

  return v28();
}

uint64_t sub_2312F65DC(uint64_t a1)
{
  v2 = sub_2313698F0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_231369A40();
}

uint64_t sub_2312F66A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v44 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448D0, &unk_231376740);
  v43 = *(v41 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v8 = &v35[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448D8, &qword_231378770);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35[-v11];
  v13 = sub_231369AC0();
  v42 = *(v13 - 8);
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2312F555C(a1);
  v18 = v17;
  sub_2312F4A68(v17);
  v20 = v19;
  sub_2312F5238(v18);
  v22 = v21;

  v46 = a3;
  v23 = v47;
  sub_2312E3C94(sub_2312FB3C0, v45, v22);
  if (v23)
  {
  }

  v47 = v13;
  v38 = v8;

  sub_231255788();
  v26 = v25;
  if (!*(v25 + 16))
  {
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v47);
  }

  swift_getKeyPath();
  v37 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  *v12 = v27;
  v36 = *MEMORY[0x277D721B8];
  v28 = v39;
  (*(v39 + 104))(v12);
  sub_2312FB430(&qword_27DD44880, MEMORY[0x277D724B8]);
  sub_2312FB3DC(&qword_27DD448E0, &qword_27DD448D8, &qword_231378770);
  sub_231369B40();

  (*(v28 + 8))(v12, v9);
  swift_getKeyPath();
  v29 = swift_allocObject();
  v30 = v38;
  *(v29 + 16) = v37;
  *v30 = v29;
  v31 = v43;
  v32 = v41;
  (*(v43 + 104))(v30, v36, v41);
  sub_2312FB3DC(&qword_27DD448E8, &qword_27DD448D0, &unk_231376740);
  v33 = v44;
  sub_231369B40();

  (*(v31 + 8))(v30, v32);
  v34 = v47;
  (*(v42 + 8))(v16, v47);
  return __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
}

uint64_t sub_2312F6B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_231369990();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v11 = sub_2313698C0();
  v7[14] = v11;
  v12 = *(v11 - 8);
  v7[15] = v12;
  v13 = *(v12 + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v14 = sub_231369AC0();
  v7[19] = v14;
  v15 = *(v14 - 8);
  v7[20] = v15;
  v16 = *(v15 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312F6CC4, 0, 0);
}

uint64_t sub_2312F6CC4()
{
  v72 = v0;
  v1 = MEMORY[0x277D84FA0];
  v0[2] = MEMORY[0x277D84FA0];
  v2 = v0[4];
  v64 = *(v2 + 16);
  if (v64)
  {
    v3 = 0;
    v4 = v0[20];
    v5 = *(v4 + 16);
    v4 += 16;
    v62 = v5;
    v63 = v0[3];
    v61 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v6 = (v4 - 8);
    v65 = (v0[15] + 8);
    v57 = v0[11];
    v7 = (v57 + 8);
    v60 = *(v4 + 56);
    v59 = (v4 - 8);
    do
    {
      v9 = v0[21];
      v8 = v0[22];
      v10 = v0[19];
      v62(v8, v61 + v3 * v60, v10);
      sub_231369130();
      v62(v9, v8, v10);
      v11 = sub_2313698A0();
      v12 = sub_23136A3A0();
      v13 = os_log_type_enabled(v11, v12);
      v14 = v0[21];
      v16 = v0[18];
      v15 = v0[19];
      v69 = v0[14];
      if (v13)
      {
        v17 = OUTLINED_FUNCTION_60();
        v71 = OUTLINED_FUNCTION_29_0();
        v18 = v71;
        *v17 = 136315138;
        v58 = sub_231369A60();
        v66 = v16;
        v20 = v19;
        v21 = *v6;
        v22 = OUTLINED_FUNCTION_67_0();
        v68 = v23;
        v23(v22);
        v24 = sub_2311CFD58(v58, v20, &v71);

        *(v17 + 4) = v24;
        _os_log_impl(&dword_2311CB000, v11, v12, "Querying tools using query: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        v7 = (v57 + 8);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*v65)(v66, v69);
      }

      else
      {

        v25 = *v6;
        v26 = OUTLINED_FUNCTION_67_0();
        v68 = v27;
        v27(v26);
        (*v65)(v16, v69);
      }

      v28 = v0[22];
      v29 = *__swift_project_boxed_opaque_existential_1(v0[3], *(v63 + 24));
      v67 = v3;
      v70 = sub_2312F4424();
      v30 = *(v70 + 16);
      if (v30)
      {
        v31 = v70 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
        v32 = *(v57 + 72);
        v33 = *(v57 + 16);
        do
        {
          v35 = v0[12];
          v34 = v0[13];
          v36 = v0[10];
          v37 = OUTLINED_FUNCTION_28();
          v33(v37);
          sub_23122EFC8();
          (*v7)(v35, v36);
          v31 += v32;
          --v30;
        }

        while (v30);
      }

      v3 = v67 + 1;
      v6 = v59;
      v68(v0[22], v0[19]);
    }

    while (v67 + 1 != v64);
    v1 = v0[2];
  }

  v0[23] = v1;
  v38 = v0[17];
  sub_231369130();
  sub_231369EE0();
  v39 = sub_2313698A0();
  v40 = sub_23136A3A0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_60();
    *v41 = 134217984;
    *(v41 + 4) = *(v1 + 16);

    _os_log_impl(&dword_2311CB000, v39, v40, "Got %ld tools back from toolkit", v41, 0xCu);
    OUTLINED_FUNCTION_17_17();
  }

  else
  {
  }

  (*(v0[15] + 8))(v0[17], v0[14]);
  if (!*(v1 + 16))
  {

    v49 = v0[21];
    v48 = v0[22];
    v51 = v0[17];
    v50 = v0[18];
    v52 = v0[16];
    v54 = v0[12];
    v53 = v0[13];

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_55_9();

    __asm { BRAA            X2, X16 }
  }

  sub_231369EE0();
  v42 = swift_task_alloc();
  v0[24] = v42;
  *v42 = v0;
  v42[1] = sub_2312F7334;
  v43 = v0[9];
  v44 = v0[7];
  v45 = v0[5];
  OUTLINED_FUNCTION_55_9();

  return sub_2312F76A0();
}

uint64_t sub_2312F7334()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 192);
  *v2 = *v0;
  *(v1 + 200) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312F7420()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[23];

  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_2312F74C4;
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];

  return sub_2312F7BFC();
}

uint64_t sub_2312F74C4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = v3[26];
  v5 = v3[25];
  v6 = v3[23];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 216) = v9;

  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312F75E4()
{
  v1 = v0[27];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v8 = v0[12];
  v7 = v0[13];

  OUTLINED_FUNCTION_14();

  return v9(v1);
}

uint64_t sub_2312F76A0()
{
  OUTLINED_FUNCTION_8();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_231369990();
  v1[11] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_43();
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312F7748()
{
  OUTLINED_FUNCTION_8();
  v1 = *__swift_project_boxed_opaque_existential_1((v0[10] + 32), *(v0[10] + 56));
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[14] = v2;
  *v2 = v3;
  v2[1] = sub_2312F77F0;
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  return sub_2311EE480((v0 + 2), v4, v5, v6);
}

uint64_t sub_2312F77F0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312F78D4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43368, &qword_23136C2F0);
  v3 = sub_231369EC0();
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;
  v38 = v2;
  result = sub_231369EE0();
  v10 = 0;
  v36 = v8;
  v37 = v2 + 56;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      (*(v1 + 16))(v39[13], *(v38 + 48) + *(v1 + 72) * (__clz(__rbit64(v7)) | (v11 << 6)), v39[11]);
      v12 = v39[6];
      __swift_project_boxed_opaque_existential_1(v39 + 2, v39[5]);
      sub_2311EDDB8();
      v14 = v13;
      v15 = sub_231369970();
      v17 = v16;
      v18 = *(v1 + 8);
      v19 = OUTLINED_FUNCTION_26_1();
      v20(v19);
      swift_isUniquelyReferenced_nonNull_native();
      result = sub_231215F6C(v15, v17);
      if (__OFADD__(v3[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = result;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448C8, &qword_231376738);
      result = sub_23136A700();
      if (result)
      {
        result = sub_231215F6C(v15, v17);
        if ((v23 & 1) != (v24 & 1))
        {
          OUTLINED_FUNCTION_35();

          return sub_23136A970();
        }

        v22 = result;
      }

      v7 &= v7 - 1;
      if (v23)
      {

        v25 = v3[7];
        v26 = *(v25 + 8 * v22);
        *(v25 + 8 * v22) = v14;
      }

      else
      {
        v3[(v22 >> 6) + 8] |= 1 << v22;
        v27 = (v3[6] + 16 * v22);
        *v27 = v15;
        v27[1] = v17;
        *(v3[7] + 8 * v22) = v14;
        v28 = v3[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_26;
        }

        v3[2] = v30;
      }

      v10 = v11;
      v8 = v36;
      v4 = v37;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v31 = v39[13];
        v32 = v39[7];

        __swift_destroy_boxed_opaque_existential_1Tm(v39 + 2);

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_35();

        __asm { BRAA            X2, X16 }
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2312F7BFC()
{
  OUTLINED_FUNCTION_8();
  v28 = *MEMORY[0x277D85DE8];
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[9] = *v0;
  v7 = sub_2313698C0();
  v1[10] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_67();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436F0, &unk_23136D510);
  OUTLINED_FUNCTION_40_0(v11);
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_43();
  v14 = type metadata accessor for IntentDetails();
  v1[16] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[17] = v15;
  v17 = *(v16 + 64);
  v1[18] = OUTLINED_FUNCTION_67();
  v1[19] = swift_task_alloc();
  v18 = sub_231369990();
  v1[20] = v18;
  OUTLINED_FUNCTION_0(v18);
  v1[21] = v19;
  v21 = *(v20 + 64);
  v1[22] = OUTLINED_FUNCTION_67();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v22 = sub_231367C70();
  v1[25] = v22;
  OUTLINED_FUNCTION_0(v22);
  v1[26] = v23;
  v25 = *(v24 + 64);
  v1[27] = OUTLINED_FUNCTION_67();
  v1[28] = swift_task_alloc();
  v26 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2312F7E5C, 0, 0);
}

uint64_t sub_2312F856C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2312F86CC, 0, 0);
}

uint64_t sub_2312F86CC()
{
  v115 = v0;
  v114[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 120);
  if (__swift_getEnumTagSinglePayload(v2, 1, *(v0 + 128)) == 1)
  {
    v3 = *(v0 + 272);
    (*(*(v0 + 168) + 8))(*(v0 + 192), *(v0 + 160));

    sub_2311D1F18(v2, &qword_27DD436F0, &unk_23136D510);
    v4 = *(v0 + 264);
    v5 = (*(v0 + 256) - 1) & *(v0 + 256);
  }

  else
  {
    v6 = *(v0 + 248);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = OUTLINED_FUNCTION_28();
    sub_2312053C8(v9, v10);
    v11 = OUTLINED_FUNCTION_26_1();
    sub_2312FB298(v11, v12, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 248);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_39:
      sub_23126F08C(0, v2[2] + 1, 1, v2);
      v2 = v99;
    }

    v16 = v2[2];
    v15 = v2[3];
    v3 = (v16 + 1);
    if (v16 >= v15 >> 1)
    {
      sub_23126F08C(v15 > 1, v16 + 1, 1, v2);
      v2 = v100;
    }

    v17 = *(v0 + 192);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    v1 = *(v0 + 144);
    v20 = *(v0 + 152);
    v21 = *(v0 + 136);

    sub_2312FB368(v20, type metadata accessor for IntentDetails);
    v22 = *(v19 + 8);
    v23 = OUTLINED_FUNCTION_26_1();
    v24(v23);
    v2[2] = v3;
    sub_2312053C8(v1, v2 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16);
    v4 = *(v0 + 264);
    v5 = (*(v0 + 256) - 1) & *(v0 + 256);
    *(v0 + 248) = v2;
  }

  v25 = 1;
  v113 = 136315138;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v5)
          {
            while (!__OFADD__(v4, 1))
            {
              OUTLINED_FUNCTION_45_9();
              if (v27 == v28)
              {
                v89 = *(v0 + 232);

                v90 = *(v0 + 248);
                OUTLINED_FUNCTION_19_19();

                OUTLINED_FUNCTION_14();
                v91 = *MEMORY[0x277D85DE8];
                OUTLINED_FUNCTION_33_0();

                __asm { BRAA            X2, X16 }
              }

              v5 = *(v3 + v26 + 8);
              ++v4;
              if (v5)
              {
                v4 = v26;
                goto LABEL_15;
              }
            }

            __break(1u);
            goto LABEL_39;
          }

          v3 = *(v0 + 240);
LABEL_15:
          *(v0 + 256) = v5;
          *(v0 + 264) = v4;
          OUTLINED_FUNCTION_31_19();
          OUTLINED_FUNCTION_21_20(v29);
        }

        while (!v31);
        v32 = v30;
        sub_231369EE0();
        v33 = sub_2312168CC(v32);
        if (v34)
        {
          break;
        }
      }

      v35 = *(v0 + 232);
      v36 = *(v0 + 160);
      v37 = *(v0 + 168);
      v40 = *(v37 + 16);
      v39 = v37 + 16;
      v38 = v40;
      v41 = OUTLINED_FUNCTION_52_10(v33, *(v0 + 192));
      v40(v41);
      v42 = v1 >> 62 ? sub_23136A5A0() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v43 = *(v0 + 192);
      if (v42)
      {
        break;
      }

      OUTLINED_FUNCTION_58_7();
      sub_231369130();
      v48 = OUTLINED_FUNCTION_11_23();
      v38(v48);
      v2 = v32;
      v3 = sub_2313698A0();
      v49 = sub_23136A3A0();
      OUTLINED_FUNCTION_48_9(v49);
      OUTLINED_FUNCTION_28_16();
      if (v50)
      {
        OUTLINED_FUNCTION_60();
        v51 = OUTLINED_FUNCTION_10_26();
        OUTLINED_FUNCTION_27_14(v51, v52, v53, v54, v55, v56, v57, v58, v101, v104, v107, v108, v109, v110, v111, v112, v113);
        v59 = OUTLINED_FUNCTION_1_39();
        v60 = (v1)(v59);
        OUTLINED_FUNCTION_59_8(v60, v61, v114, v62, v63, v64, v65, v66, v102, v105);
        OUTLINED_FUNCTION_38();

        OUTLINED_FUNCTION_12_20();
        OUTLINED_FUNCTION_50_8();
        v70 = "LNPhraseTemplates result for toolId %s is empty. Not constructing IntentDetails";
        goto LABEL_29;
      }

LABEL_30:

      v3 = v32[1];
      (v3)(v2, v1);
      (*(v39 + 8))(v111, v112);
      (v3)(v25, v1);
      v25 = 1;
    }

    v25 = *(v0 + 32);
    v44 = sub_231369970();
    if (*(v25 + 16))
    {
      break;
    }

LABEL_27:
    OUTLINED_FUNCTION_57_11();
    sub_231369130();
    v71 = OUTLINED_FUNCTION_11_23();
    v38(v71);
    v2 = v32;
    v3 = sub_2313698A0();
    v49 = sub_23136A3A0();
    OUTLINED_FUNCTION_48_9(v49);
    OUTLINED_FUNCTION_40_13();
    if (!v72)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_60();
    v73 = OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_27_14(v73, v74, v75, v76, v77, v78, v79, v80, v101, v104, v107, v108, v109, v110, v111, v112, v113);
    v81 = OUTLINED_FUNCTION_1_39();
    v82 = (v1)(v81);
    OUTLINED_FUNCTION_59_8(v82, v83, v114, v84, v85, v86, v87, v88, v103, v106);
    OUTLINED_FUNCTION_38();

    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_50_8();
    v70 = "Unable to get resolvedParameters for toolId %s. Not constructing IntentDetails";
LABEL_29:
    _os_log_impl(v67, v68, v69, v70, v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v109 + 8))(v111, v112);
    (v1)(v110, v39);
    v25 = 1;
  }

  v46 = *(v0 + 32);
  sub_231215F6C(v44, v45);
  v25 = v47;

  if ((v25 & 1) == 0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_53_10();
  sub_231369EE0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 296) = v94;
  *v94 = v95;
  OUTLINED_FUNCTION_5_25();
  v96 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33_0();

  return sub_2312F95A8();
}

uint64_t sub_2312F8CD4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44868, &qword_231376650);
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = (&v24 - v7);
  v26 = sub_231369E30();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v17 = *a1;
  v16 = a1[1];
  v25 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_231369E20();
  swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  *v8 = v18;
  v19 = v24;
  (*(v5 + 104))(v8, *MEMORY[0x277D721C8], v24);
  sub_2312FB430(&qword_27DD448F0, MEMORY[0x277D73330]);
  sub_2312FB3DC(&qword_27DD44898, &qword_27DD44868, &qword_231376650);
  sub_231369EE0();
  sub_231369B40();

  (*(v5 + 8))(v8, v19);
  v20 = v26;
  v21 = *(v9 + 8);
  v21(v13, v26);
  v22 = *v25;
  sub_2312F4328();
  return (v21)(v15, v20);
}

uint64_t sub_2312F8FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1);
  return a7(v14);
}

uint64_t sub_2312F9064(uint64_t a1)
{
  v59 = sub_231369D90();
  v2 = OUTLINED_FUNCTION_0_0(v59);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v58 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231369990();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v65 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v52 - v15;
  MEMORY[0x28223BE20](v14);
  v56 = v52 - v18;
  v19 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  v67 = v17 + 16;
  v62 = v17 + 32;
  v55 = (v4 + 8);
  v52[0] = v17 + 40;
  v57 = v17;
  v53 = (v17 + 8);
  v60 = a1;
  sub_231369EE0();
  v24 = 0;
  v25 = MEMORY[0x277D84F98];
  v54 = v23;
  v66 = v8;
  if (v22)
  {
    while (1)
    {
LABEL_8:
      v28 = v56;
      v27 = v57;
      v29 = *(v60 + 48) + *(v57 + 72) * (__clz(__rbit64(v22)) | (v24 << 6));
      v30 = *(v57 + 16);
      v63 = *(v57 + 72);
      v64 = v30;
      v30(v56, v29, v8);
      v61 = *(v27 + 32);
      v61(v16, v28, v8);
      v31 = v58;
      sub_231369930();
      v32 = sub_231369D70();
      v34 = v33;
      (*v55)(v31, v59);
      v35 = sub_231369960();
      if (v35[2])
      {
        v36 = v35[4];
        v37 = v35[5];
        sub_231369EE0();
      }

      else
      {

        v38 = sub_231369970();
        v52[1] = v39;
        v72 = v38;
        v73 = v39;
        v70 = v32;
        v71 = v34;
        sub_231369EE0();
        MEMORY[0x23192A730](46, 0xE100000000000000);
        v68 = 0;
        v69 = 0xE000000000000000;
        sub_231207C1C();
        sub_23136A500();
      }

      v40 = objc_allocWithZone(MEMORY[0x277D23778]);
      v41 = sub_2312FB210();
      v64(v65, v16, v66);
      swift_isUniquelyReferenced_nonNull_native();
      v72 = v25;
      v42 = sub_2312168CC(v41);
      if (__OFADD__(v25[2], (v43 & 1) == 0))
      {
        break;
      }

      v44 = v42;
      v45 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448C0, &unk_231376728);
      if (sub_23136A700())
      {
        v46 = sub_2312168CC(v41);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_25;
        }

        v44 = v46;
      }

      v25 = v72;
      if (v45)
      {
        v8 = v66;
        (*v52[0])(v72[7] + v44 * v63, v65, v66);
      }

      else
      {
        v72[(v44 >> 6) + 8] |= 1 << v44;
        *(v25[6] + 8 * v44) = v41;
        v8 = v66;
        v61((v25[7] + v44 * v63), v65, v66);
        v48 = v25[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_24;
        }

        v25[2] = v50;
      }

      v22 &= v22 - 1;
      (*v53)(v16, v8);
      v23 = v54;
      if (!v22)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        return v25;
      }

      v22 = *(v19 + 8 * v26);
      ++v24;
      if (v22)
      {
        v24 = v26;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_2312176CC();
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_2312F95A8()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 484) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  *(v1 + 48) = v8;
  v9 = sub_2313698C0();
  *(v1 + 104) = v9;
  OUTLINED_FUNCTION_0(v9);
  *(v1 + 112) = v10;
  v12 = *(v11 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_67();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  OUTLINED_FUNCTION_40_0(v13);
  v15 = *(v14 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_43();
  v16 = sub_2313673A0();
  *(v1 + 160) = v16;
  OUTLINED_FUNCTION_0(v16);
  *(v1 + 168) = v17;
  v19 = *(v18 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_43();
  v20 = sub_231367550();
  *(v1 + 184) = v20;
  OUTLINED_FUNCTION_0(v20);
  *(v1 + 192) = v21;
  v23 = *(v22 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_67();
  *(v1 + 208) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44858, &qword_2313765C0);
  OUTLINED_FUNCTION_40_0(v24);
  v26 = *(v25 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_43();
  v27 = sub_231367490();
  *(v1 + 224) = v27;
  OUTLINED_FUNCTION_0(v27);
  *(v1 + 232) = v28;
  v30 = *(v29 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_67();
  *(v1 + 248) = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448B0, &qword_231378740);
  OUTLINED_FUNCTION_40_0(v31);
  v33 = *(v32 + 64);
  *(v1 + 256) = OUTLINED_FUNCTION_43();
  v34 = sub_231369990();
  *(v1 + 264) = v34;
  OUTLINED_FUNCTION_0(v34);
  *(v1 + 272) = v35;
  v37 = *(v36 + 64);
  *(v1 + 280) = OUTLINED_FUNCTION_67();
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  v38 = sub_2313699E0();
  *(v1 + 320) = v38;
  OUTLINED_FUNCTION_0(v38);
  *(v1 + 328) = v39;
  v41 = *(v40 + 64);
  *(v1 + 336) = OUTLINED_FUNCTION_67();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  v42 = sub_231369A00();
  *(v1 + 360) = v42;
  OUTLINED_FUNCTION_0(v42);
  *(v1 + 368) = v43;
  v45 = *(v44 + 64);
  *(v1 + 376) = OUTLINED_FUNCTION_67();
  *(v1 + 384) = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v46, v47, v48);
}

uint64_t sub_2312F9938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_56_7();
  a33 = v35;
  a34 = v36;
  a32 = v34;
  v38 = *(v34 + 376);
  v37 = *(v34 + 384);
  v39 = *(v34 + 360);
  v40 = *(v34 + 368);
  v41 = *(v34 + 272);
  v42 = *(v34 + 56);
  sub_231369980();
  *(v34 + 480) = *MEMORY[0x277D723F0];
  v43 = *(v40 + 104);
  *(v34 + 392) = v43;
  *(v34 + 400) = (v40 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v43(v38);
  v44 = sub_2313122BC(v37, v38);
  v45 = *(v40 + 8);
  *(v34 + 408) = v45;
  *(v34 + 416) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46 = OUTLINED_FUNCTION_26_1();
  v45(v46);
  (v45)(v37, v39);
  v47 = (v41 + 16);
  v48 = *(v34 + 264);
  if (v44)
  {
    v49 = *(v34 + 344);
    v50 = *(v34 + 312);
    v51 = *(v34 + 256);
    v52 = *(v34 + 56);
    sub_2312F45E4(*(v34 + 64));
    v53 = *v47;
    *(v34 + 424) = *v47;
    *(v34 + 432) = v47 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v53(v50, v52, v48);
    sub_23134B4B4();

    v54 = sub_231369AF0();
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v54);
    sub_2313699A0();
    (*(*(v34 + 328) + 32))(*(v34 + 352), *(v34 + 344), *(v34 + 320));
    v86 = swift_task_alloc();
    *(v34 + 440) = v86;
    *v86 = v34;
    v86[1] = sub_2312FA000;
    v87 = *(v34 + 352);
    v88 = *(v34 + 484);
    v89 = *(v34 + 88);
    v90 = *(v34 + 72);
    OUTLINED_FUNCTION_24_19();

    return sub_231205488(v91, v92, v93, v94);
  }

  else
  {
    v56 = *(v34 + 288);
    v55 = *(v34 + 296);
    v57 = *(v34 + 128);
    v58 = *(v34 + 56);
    sub_231369130();
    v59 = *v47;
    (*v47)(v55, v58, v48);
    v59(v56, v58, v48);
    v60 = sub_2313698A0();
    v61 = sub_23136A3A0();
    if (OUTLINED_FUNCTION_48_9(v61))
    {
      a16 = *(v34 + 384);
      a17 = *(v34 + 360);
      v62 = *(v34 + 296);
      v63 = *(v34 + 264);
      v64 = *(v34 + 272);
      a14 = v63;
      a15 = *(v34 + 288);
      a19 = *(v34 + 112);
      a20 = *(v34 + 104);
      a21 = *(v34 + 128);
      v65 = swift_slowAlloc();
      a18 = swift_slowAlloc();
      a22 = a18;
      *v65 = 136315394;
      v66 = sub_231369970();
      v68 = v67;
      v69 = *(v64 + 8);
      v70 = OUTLINED_FUNCTION_28();
      v69(v70);
      v71 = sub_2311CFD58(v66, v68, &a22);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      sub_231369980();
      v72 = sub_23136A010();
      (v69)(a15, v63);
      v73 = OUTLINED_FUNCTION_28();
      sub_2311CFD58(v73, v74, v75);
      OUTLINED_FUNCTION_38();

      *(v65 + 14) = v72;
      _os_log_impl(&dword_2311CB000, v60, v61, "ToolKitIntentService only supports appIntent tools currently. Returning nil IntentDetails for toolId: %s. toolType: %s", v65, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(a19 + 8))(a21, a20);
    }

    else
    {
      v77 = *(v34 + 288);
      v76 = *(v34 + 296);
      v78 = *(v34 + 264);
      v79 = *(v34 + 272);
      v80 = *(v34 + 128);
      v81 = *(v34 + 104);
      v82 = *(v34 + 112);

      v83 = *(v79 + 8);
      v84 = OUTLINED_FUNCTION_26_1();
      v83(v84);
      v85 = OUTLINED_FUNCTION_67_0();
      v83(v85);
      (*(v82 + 8))(v80, v81);
    }

    v97 = *(v34 + 48);
    type metadata accessor for IntentDetails();
    v98 = OUTLINED_FUNCTION_15_23();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_9_25();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_24_19();

    return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }
}

uint64_t sub_2312FA000()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v7 = *(v6 + 440);
  *v2 = *v0;
  v1[56] = v3;
  v1[57] = v4;

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312FA0F4()
{
  v65 = v0;
  if (!v0[57])
  {
    v13 = v0[53];
    v12 = v0[54];
    v14 = v0[38];
    v15 = v0[33];
    v16 = v0[17];
    v17 = v0[7];
    sub_231369130();
    v18 = OUTLINED_FUNCTION_67_0();
    v13(v18);
    v19 = sub_2313698A0();
    v60 = sub_23136A3B0();
    v20 = os_log_type_enabled(v19, v60);
    v21 = v0[44];
    v23 = v0[40];
    v22 = v0[41];
    v24 = v0[38];
    v26 = v0[33];
    v25 = v0[34];
    v27 = v0[17];
    v28 = v0[14];
    v62 = v0[13];
    if (v20)
    {
      v58 = v0[17];
      v29 = OUTLINED_FUNCTION_60();
      v56 = v22;
      v30 = OUTLINED_FUNCTION_29_0();
      v64 = v30;
      *v29 = 136315138;
      v52 = v23;
      v54 = v21;
      v31 = sub_231369970();
      v33 = v32;
      v34 = OUTLINED_FUNCTION_49_10();
      v35(v34, v26);
      v36 = sub_2311CFD58(v31, v33, &v64);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_2311CB000, v19, v60, "Unable to form hydrated phrase from resolved parameters for id: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v28 + 8))(v58, v62);
      (*(v56 + 8))(v54, v52);
    }

    else
    {

      v37 = OUTLINED_FUNCTION_49_10();
      v38(v37, v26);
      (*(v28 + 8))(v27, v62);
      v39 = OUTLINED_FUNCTION_29_5();
      v40(v39);
    }

    v41 = v0[6];
    type metadata accessor for IntentDetails();
    v42 = OUTLINED_FUNCTION_15_23();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    OUTLINED_FUNCTION_3_31();
    v48 = v0[30];
    v49 = v0[27];
    v50 = v0[26];
    v51 = v0[25];
    v53 = v0[22];
    v55 = v0[19];
    v57 = v0[18];
    v59 = v0[17];
    v61 = v0[16];
    v63 = v0[15];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X1, X16 }
  }

  v0[58] = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[59] = v1;
  *v1 = v2;
  v1[1] = sub_2312FA468;
  v3 = v0[44];
  v4 = v0[27];
  v5 = v0[12];
  v6 = v0[10];
  OUTLINED_FUNCTION_33_0();

  return sub_2312FAC5C(v7, v8, v9);
}

uint64_t sub_2312FA468()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312FA54C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_log_t log, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_56_7();
  a33 = v35;
  a34 = v36;
  a32 = v34;
  v37 = *(v34 + 216);
  v38 = *(v34 + 224);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v38);
  v40 = *(v34 + 464);
  v42 = *(v34 + 320);
  v41 = *(v34 + 328);
  if (EnumTagSinglePayload == 1)
  {
    v43 = *(v34 + 352);
    v44 = *(v34 + 336);
    v45 = *(v34 + 144);
    v46 = *(v34 + 464);

    sub_2311D1F18(v37, &qword_27DD44858, &qword_2313765C0);
    sub_231369130();
    (*(v41 + 16))(v44, v43, v42);
    v47 = sub_2313698A0();
    v48 = sub_23136A3B0();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v34 + 352);
    v52 = *(v34 + 328);
    v51 = *(v34 + 336);
    v53 = *(v34 + 320);
    v54 = *(v34 + 144);
    v55 = *(v34 + 112);
    v143 = *(v34 + 104);
    if (v49)
    {
      log = v47;
      v56 = *(v34 + 320);
      v57 = OUTLINED_FUNCTION_60();
      a20 = v54;
      v58 = OUTLINED_FUNCTION_29_0();
      a22 = v58;
      *v57 = 136315138;
      LODWORD(a17) = v48;
      v59 = sub_2313699C0();
      a19 = v50;
      v61 = v60;
      v62 = *(v52 + 8);
      v63 = OUTLINED_FUNCTION_67_0();
      v62(v63);
      v64 = sub_2311CFD58(v59, v61, &a22);

      *(v57 + 4) = v64;
      _os_log_impl(&dword_2311CB000, log, a17, "Unable to find a query to associate with this tool %s. Cannot construct IntentDetails", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v55 + 8))(a20, v143);
      (v62)(a19, v56);
    }

    else
    {

      v90 = *(v52 + 8);
      v90(v51, v53);
      (*(v55 + 8))(v54, v143);
      v90(v50, v53);
    }

    v91 = *(v34 + 48);
    type metadata accessor for IntentDetails();
    v92 = OUTLINED_FUNCTION_15_23();
    goto LABEL_13;
  }

  v142 = *(v34 + 464);
  v65 = *(v34 + 352);
  v66 = *(v34 + 232);
  v138 = *(v34 + 456);
  v67 = *(v34 + 208);
  v144 = *(v34 + 200);
  v68 = *(v34 + 184);
  v69 = *(v34 + 192);
  v136 = *(v34 + 240);
  v137 = *(v34 + 176);
  v139 = *(v34 + 168);
  loga = *(v34 + 160);
  v141 = *(v34 + 448);
  v133 = *(v34 + 96);
  v134 = *(v34 + 248);
  a10 = *(v34 + 72);
  v135 = *(v34 + 48);
  (*(v66 + 32))();
  (*(v41 + 16))(v67, v65, v42);
  v70 = *MEMORY[0x277D60950];
  v71 = sub_231367560();
  OUTLINED_FUNCTION_11(v71);
  (*(v72 + 104))(v67, v70);
  (*(v69 + 104))(v67, *MEMORY[0x277D60920], v68);
  a20 = sub_2312FB02C(v142);
  v73 = *(v69 + 16);
  v73(v144, v67, v68);
  v74 = *(v66 + 16);
  v74(v136, v134, v38);
  v73(v135, v144, v68);
  v75 = type metadata accessor for IntentDetails();
  v74(v135 + *(v75 + 20), v136, v38);
  v143 = v75;
  v76 = (v135 + *(v75 + 28));
  *v76 = v141;
  v76[1] = v138;
  sub_231367430();
  v77 = (*(v139 + 88))(v137, loga);
  if (v77 == *MEMORY[0x277D60878])
  {
    v79 = *(v34 + 408);
    v78 = *(v34 + 416);
    v81 = *(v34 + 392);
    v80 = *(v34 + 400);
    v82 = *(v34 + 480);
    v83 = *(v34 + 384);
    v84 = *(v34 + 360);
    v85 = *(v34 + 200);
    (*(*(v34 + 168) + 8))(*(v34 + 176), *(v34 + 160));
    v81(v83, v82, v84);
    v86 = sub_2313699F0();
    v88 = v87;
    v89 = OUTLINED_FUNCTION_26_1();
    v79(v89);
    a22 = v86;
    a23 = v88;
    MEMORY[0x23192A730](95, 0xE100000000000000);
  }

  else
  {
    if (v77 != *MEMORY[0x277D60868])
    {
      v108 = *(v34 + 200);
      v109 = *(v34 + 168);
      v110 = *(v34 + 176);
      v111 = *(v34 + 160);
      a17 = sub_231367520();
      a15 = v112;
      (*(v109 + 8))(v110, v111);
      goto LABEL_12;
    }

    v97 = *(v34 + 408);
    v96 = *(v34 + 416);
    v99 = *(v34 + 392);
    v98 = *(v34 + 400);
    v100 = *(v34 + 384);
    v101 = *(v34 + 360);
    v102 = *(v34 + 200);
    (*(*(v34 + 168) + 8))(*(v34 + 176), *(v34 + 160));
    v99(v100, *MEMORY[0x277D723E8], v101);
    v103 = sub_2313699F0();
    v105 = v104;
    v106 = OUTLINED_FUNCTION_28();
    v97(v106);
    a22 = v103;
    a23 = v105;
    MEMORY[0x23192A730](95, 0xE100000000000000);
  }

  v107 = sub_231367520();
  MEMORY[0x23192A730](v107);

  a17 = a22;
  a15 = a23;
LABEL_12:
  v113 = *(v34 + 328);
  log = *(v34 + 320);
  a19 = *(v34 + 352);
  a16 = *(v34 + 248);
  a11 = *(v34 + 240);
  v114 = *(v34 + 224);
  v115 = *(v34 + 232);
  v116 = *(v34 + 200);
  a12 = *(v34 + 208);
  a13 = *(v34 + 464);
  v118 = *(v34 + 184);
  v117 = *(v34 + 192);
  v119 = *(v34 + 152);
  v120 = *(v34 + 48);
  a14 = v120;
  sub_231367530();
  v121 = v120 + *(v143 + 24);
  sub_231369020();
  v122 = *(v115 + 8);
  v122(a11, v114);
  v123 = *(v117 + 8);
  v123(v116, v118);

  v123(a12, v118);
  v122(a16, v114);
  (*(v113 + 8))(a19, log);
  v92 = v120;
  v93 = 0;
  v94 = 1;
  v95 = v143;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_24_19();

  return v125(v124, v125, v126, v127, v128, v129, v130, v131, a9, a10, a11, a12, a13, a14, a15, a16, a17, log, a19, a20, v143, a22, a23, a24, a25, a26);
}

uint64_t sub_2312FAC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_231367490();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312FAD20, 0, 0);
}

uint64_t sub_2312FAD20()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[6];
  v2 = *(v0[4] + 16);
  v0[8] = v2;
  v0[9] = 0;
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[5];
    OUTLINED_FUNCTION_54_10(v1);
    v5();
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_6_22(v6);

    return sub_231357934();
  }

  else
  {
    v8 = v0[7];
    __swift_storeEnumTagSinglePayload(v0[2], 1, 1, v0[5]);

    OUTLINED_FUNCTION_56_0();

    return v9();
  }
}

uint64_t sub_2312FAE08()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312FAEF4()
{
  OUTLINED_FUNCTION_8();
  if (*(v0 + 88))
  {
    (*(*(v0 + 48) + 32))(*(v0 + 16), *(v0 + 56), *(v0 + 40));
    v1 = 0;
LABEL_5:
    v3 = *(v0 + 56);
    __swift_storeEnumTagSinglePayload(*(v0 + 16), v1, 1, *(v0 + 40));

    OUTLINED_FUNCTION_56_0();

    return v4();
  }

  v2 = *(v0 + 72) + 1;
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  *(v0 + 72) = v2;
  if (v2 == *(v0 + 64))
  {
    v1 = 1;
    goto LABEL_5;
  }

  v6 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  OUTLINED_FUNCTION_54_10(*(v0 + 48));
  v12 = v9 + v10 + *(v11 + 56) * v2;
  v13();
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_6_22();

  return sub_231357934();
}

uint64_t sub_2312FB02C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445B8, &qword_231374970);
  result = sub_23136A770();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      result = v14[1];
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = (v3[6] + 16 * v13);
      *v16 = v15;
      v16[1] = result;
      v17 = (v3[7] + 16 * v13);
      *v17 = 0x7465537369;
      v17[1] = 0xE500000000000000;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;
      result = sub_231369EE0();
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2312FB188()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[10];

  return v0;
}

uint64_t sub_2312FB1B8()
{
  sub_2312FB188();

  return swift_deallocClassInstance();
}

id sub_2312FB210()
{
  v1 = sub_231369FA0();

  v2 = sub_231369FA0();

  v3 = [v0 initWithBundleIdentifier:v1 actionIdentifier:v2];

  return v3;
}

uint64_t sub_2312FB298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_11(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2312FB2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD448B8, &qword_231376720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312FB368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_11(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2312FB3DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2312FB430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1)
{
  *(a1 + 8) = sub_2312F856C;
  v3 = *(v1 + 304);
  v4 = *(v1 + 192);
  result = *(v1 + 120);
  v6 = *(v1 + 64);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v2 - 80);
  return result;
}

void OUTLINED_FUNCTION_17_17()
{

  JUMPOUT(0x23192B930);
}

void OUTLINED_FUNCTION_23_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *(v18 - 88) = a1;
  *v17 = a17;

  return sub_231369970();
}

void OUTLINED_FUNCTION_28_16()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[10];
}

uint64_t OUTLINED_FUNCTION_46_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_8()
{

  return sub_231369180();
}

uint64_t OUTLINED_FUNCTION_57_11()
{
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[14];
}

uint64_t OUTLINED_FUNCTION_58_7()
{
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[13];
}

uint64_t OUTLINED_FUNCTION_59_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_2311CFD58(a10, v10, a3);
}

void ConstCodableDict.encode(to:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = a2[3];
  v7 = sub_23136A4D0();
  OUTLINED_FUNCTION_40_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  v46 = v40 - v11;
  v12 = a2[2];
  v45 = a2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_24(v16, v40[0]);
  v17 = sub_23136A4D0();
  OUTLINED_FUNCTION_40_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v20);
  v22 = v40 - v21;
  v23 = *v3;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23136AA30();
  swift_getTupleTypeMetadata2();
  sub_23136A220();
  v48 = a2[10];
  v49 = AssociatedTypeWitness;
  v56 = sub_231369EC0();
  v41 = a2;
  v43 = a2[4];
  v44 = v23;
  v50 = v6;
  v25 = sub_231369EE0();
  v26 = v25;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = sub_23136A730();
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v26 = v27 | 0x8000000000000000;
  }

  else
  {
    v31 = -1 << *(v25 + 32);
    v28 = v25 + 64;
    v32 = *(v25 + 64);
    OUTLINED_FUNCTION_3_32();
    v30 = v33 & v34;
  }

  v51 = 0;
  v40[1] = v29;
  v35 = (v29 + 64) >> 6;
  v47 = v12 - 8;
  v42 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v36 = v51;
    if (!v30)
    {
      break;
    }

    v37 = v51;
LABEL_11:
    v38 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    (*(*(v12 - 8) + 16))(v22, *(v26 + 48) + *(*(v12 - 8) + 72) * (v38 | (v37 << 6)), v12);
    while (1)
    {
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v12);
      sub_23136A140();
      sub_231369F00();
      (*(*(v12 - 8) + 8))(v22, v12);
      sub_231369EF0();
      sub_231369F10();
      v26 = v42;
      if ((v42 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_12:
      if (!sub_23136A740())
      {
        goto LABEL_16;
      }

      sub_23136A8E0();
      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {
LABEL_16:
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v12);
      sub_2311D3BBC();
      v54 = v56;
      __swift_mutable_project_boxed_opaque_existential_1(v55, v55[3]);
      sub_231369EF0();
      v39 = v41[7];
      v52 = v41[9];
      v53 = v39;
      swift_getWitnessTable();
      sub_23136A920();

      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      return;
    }

    v30 = *(v28 + 8 * v37);
    ++v36;
    if (v30)
    {
      v51 = v37;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2312FBAD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2312FBB14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2312FBB54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2312FBBE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v0 + 16));
  v1 = *(MEMORY[0x277D60D50] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_8_0(v2);

  return MEMORY[0x2821C6C80](v3);
}

uint64_t sub_2312FBC80()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 24);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  OUTLINED_FUNCTION_14();

  return v7(v2);
}

uint64_t sub_2312FBD7C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v0 + 16));
  v1 = *(MEMORY[0x277D60D58] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_8_0(v2);

  return MEMORY[0x2821C6C90](v3);
}

uint64_t sub_2312FBE14()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_10_27();
  return sub_231367FA0();
}

uint64_t sub_2312FBE6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2312FBEAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2312FBF1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return sub_2312FBBD4();
}

uint64_t sub_2312FBFA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E6A24;

  return sub_2312FBD68();
}

uint64_t sub_2312FC060(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_2312FC078()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v2 + 32));
  v3 = *(MEMORY[0x277D611C8] + 4);
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_2312FC124;
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);

  return MEMORY[0x2821C7498](v6, v5, v0, v1);
}

uint64_t sub_2312FC124()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2312FC208()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  OUTLINED_FUNCTION_10_27();
  return sub_231367AD0();
}

uint64_t sub_2312FC248(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_2312FC25C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v0 + 24));
  v1 = *(MEMORY[0x277D611D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_23(v2);

  return MEMORY[0x2821C74A8](v3);
}

uint64_t sub_2312FC2F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7_21();

  return v6(v5);
}

uint64_t sub_2312FC3E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_2312FC3FC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v0 + 24));
  v1 = *(MEMORY[0x277D611D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_23(v2);

  return MEMORY[0x2821C74A8](v3);
}

uint64_t sub_2312FC494()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 32);
  v7 = *v0;
  *(v2 + 48) = v4;
  *(v2 + 40) = v5;

  return MEMORY[0x2822009F8](sub_2312FC590, 0, 0);
}

uint64_t sub_2312FC590()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_14();
  v3 = *(v0 + 48);

  return v2(v3);
}

uint64_t sub_2312FC5EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v4);
  a1[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v4 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v4);
}

uint64_t sub_2312FC674(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311D44D4;

  return sub_2312FC060(a1, a2);
}

uint64_t sub_2312FC718(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311DDECC;

  return sub_2312FC3E8(a1);
}

uint64_t sub_2312FC7AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2312FC840;

  return sub_2312FC248(a1);
}

uint64_t sub_2312FC840()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7_21();

  return v6(v5);
}

uint64_t sub_2312FC938(uint64_t a1, uint64_t a2)
{
  v4 = sub_2311EB1F8();

  return MEMORY[0x2821C74C0](a1, a2, v4);
}

unint64_t sub_2312FC990()
{
  result = qword_280F7D1E0;
  if (!qword_280F7D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7D1E0);
  }

  return result;
}

uint64_t sub_2312FCA10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445E8, &qword_2313749C8);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2312FFC08(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2312FCAA8()
{
  OUTLINED_FUNCTION_8();
  v0[7] = v1;
  v0[8] = type metadata accessor for SuggestionPool();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_26_3(v2);

  return sub_2312FD524();
}

uint64_t sub_2312FCB48()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312FCC30()
{
  OUTLINED_FUNCTION_8();
  sub_2311CF388(v0[7], (v0 + 2));
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_2312FCCD4;
  v2 = v0[10];
  v3 = v0[8];

  return sub_2312FCDFC();
}

uint64_t sub_2312FCCD4()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v5 = v4;
  v7 = *(v6 + 88);
  v10 = *v1;
  *(v4 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2312AB0B8, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_14();

    return v8(v3);
  }
}

uint64_t sub_2312FCDFC()
{
  OUTLINED_FUNCTION_8();
  v1[43] = v2;
  v1[44] = v0;
  v1[42] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44908, &qword_231376B20) - 8) + 64) + 15;
  v1[45] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312FCE90()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44910, &qword_231376B28);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  sub_2311CF388(v2, v0 + 176);
  v4 = swift_allocObject();
  *(v0 + 368) = v4;
  sub_2311D38A8((v0 + 176), v4 + 16);
  v5 = *(MEMORY[0x277D60B28] + 4);
  v6 = swift_task_alloc();
  *(v0 + 376) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434F8, &qword_23136CA38);
  v8 = sub_231367710();
  *v6 = v0;
  v6[1] = sub_2312FCFD8;
  v11 = *(v0 + 360);
  v12 = *(v0 + 336);

  return MEMORY[0x2821C6B08](v12, v11, &unk_231376B38, v4, v7, v8, v9, v10);
}

void sub_2312FCFD8()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = v2[47];
  v5 = *v1;
  v3[48] = v6;
  v3[49] = v0;

  if (v0)
  {
  }

  else
  {
    v7 = v3[46];
    sub_2311EB450(v3[45], &qword_27DD44908, &qword_231376B20);

    MEMORY[0x2822009F8](sub_2312FD12C, 0, 0);
  }
}

void sub_2312FD12C()
{
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_2311EB398(v3, v0 + 16, &qword_27DD434F8, &qword_23136CA38);
      memcpy((v0 + 96), (v0 + 16), 0x50uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FD0, &unk_231370E70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44000, &qword_231376B40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *(v0 + 288) = 0;
        *(v0 + 256) = 0u;
        *(v0 + 272) = 0u;
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      if (*(v0 + 280))
      {
        sub_2311D38A8((v0 + 256), v0 + 216);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_25();
          sub_23126EEA8();
          v4 = v7;
        }

        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        if (v6 >= v5 >> 1)
        {
          OUTLINED_FUNCTION_37(v5);
          sub_23126EEA8();
          v4 = v8;
        }

        *(v4 + 16) = v6 + 1;
        sub_2311D38A8((v0 + 216), v4 + 40 * v6 + 32);
      }

      else
      {
        sub_2311EB450(v0 + 256, &qword_27DD44918, &qword_231376B48);
      }

      v3 += 80;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = MEMORY[0x277D84F90];
    v11 = v4 + 32;
    while (1)
    {
      sub_2311CF388(v11, v0 + 296);
      __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
      swift_getDynamicType();
      v12 = *(v0 + 328);
      v13 = sub_231368910();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
      v14 = *(v13 + 16);
      v15 = *(v10 + 16);
      if (__OFADD__(v15, v14))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v15 + v14 > *(v10 + 24) >> 1)
      {
        sub_23126E7FC();
        v10 = v16;
      }

      if (*(v13 + 16))
      {
        if ((*(v10 + 24) >> 1) - *(v10 + 16) < v14)
        {
          goto LABEL_39;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
        OUTLINED_FUNCTION_13_20();

        if (v14)
        {
          v17 = *(v10 + 16);
          v18 = __OFADD__(v17, v14);
          v19 = v17 + v14;
          if (v18)
          {
            goto LABEL_40;
          }

          *(v10 + 16) = v19;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_38;
        }
      }

      v11 += 40;
      if (!--v9)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
LABEL_30:
    v20 = *(v0 + 392);
    v21 = *(v0 + 352);
    sub_2312FED88(*(v0 + 384));
    v22 = *(v0 + 384);
    v23 = *(v0 + 360);
    if (v20)
    {
      v24 = *(v0 + 336);
      __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 344));

      v25 = *(v0 + 8);

      v25();
    }

    else
    {
      v27 = *(v0 + 344);
      v26 = *(v0 + 352);
      v28 = *(v0 + 336);
      v29 = *(v0 + 384);
      static SuggestionPool.keySuggestions(suggestions:)();
      v31 = v30;

      sub_2312FF578(v28);
      v33 = v32;

      swift_allocObject();
      v34 = SuggestionPool.init(pool:resolvers:intentOwners:)(v31, v10, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);

      OUTLINED_FUNCTION_14();

      v35(v34);
    }
  }
}

uint64_t sub_2312FD524()
{
  OUTLINED_FUNCTION_8();
  v0[98] = v1;
  v0[97] = v2;
  v3 = sub_2313698C0();
  v0[99] = v3;
  v4 = *(v3 - 8);
  v0[100] = v4;
  v5 = *(v4 + 64) + 15;
  v0[101] = swift_task_alloc();
  v0[102] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312FD5E8()
{
  v1 = *(v0 + 776);
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_3_2(v1);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 824) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_26_3(v6);

  return v9(v7, v3);
}

uint64_t sub_2312FD6FC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 824);
  *v2 = *v0;
  *(v1 + 832) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312FD7E4()
{
  v63 = v0;
  v1 = v0[104];
  v2 = *(v1 + 16);
  if (v2)
  {
    v62 = MEMORY[0x277D84F90];
    v3 = OUTLINED_FUNCTION_10_28();
    sub_2311F5E10(v3, v2, 0);
    v4 = v62;
    v5 = v1 + 32;
    do
    {
      sub_2311CF388(v5, (v0 + 42));
      v6 = v0[46];
      __swift_project_boxed_opaque_existential_1(v0 + 42, v0[45]);
      sub_231367DD0();
      v7 = v0[51];
      __swift_project_boxed_opaque_existential_1(v0 + 47, v0[50]);
      sub_231368740();
      v8 = v0[55];
      v9 = v0[56];
      __swift_project_boxed_opaque_existential_1(v0 + 52, v8);
      v0[5] = v8;
      v0[6] = *(v9 + 8);
      __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      OUTLINED_FUNCTION_26_0(v8);
      (*(v10 + 16))();
      v11 = v0[45];
      v12 = v0[46];
      __swift_project_boxed_opaque_existential_1(v0 + 42, v11);
      v0[10] = v11;
      v0[11] = *(v12 + 8);
      __swift_allocate_boxed_opaque_existential_1(v0 + 7);
      OUTLINED_FUNCTION_26_0(v11);
      (*(v13 + 16))();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 52);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
      v62 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        v16 = OUTLINED_FUNCTION_37(v14);
        sub_2311F5E10(v16, v15 + 1, 1);
        v4 = v62;
      }

      *(v4 + 16) = v15 + 1;
      memcpy((v4 + 80 * v15 + 32), v0 + 2, 0x50uLL);
      v5 += 40;
      --v2;
    }

    while (v2);
    v17 = v0[104];
  }

  else
  {
    v18 = v0[104];

    v4 = MEMORY[0x277D84F90];
  }

  v0[105] = v4;
  v19 = v0[102];
  sub_231369100();
  sub_231369EE0();
  v20 = sub_2313698A0();
  v21 = sub_23136A3A0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v22 = 136315138;
    v23 = *(v4 + 16);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v57 = v21;
      v58 = v20;
      v62 = MEMORY[0x277D84F90];
      v25 = OUTLINED_FUNCTION_10_28();
      sub_2311F59B0(v25, v23, 0);
      v24 = v62;
      v26 = v4 + 32;
      do
      {
        sub_2311EB398(v26, (v0 + 32), &qword_27DD434F8, &qword_23136CA38);
        v27 = v0[41];
        __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
        sub_231367AD0();
        sub_2311EB450((v0 + 32), &qword_27DD434F8, &qword_23136CA38);
        v62 = v24;
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);
        if (v29 >= v28 >> 1)
        {
          v35 = OUTLINED_FUNCTION_37(v28);
          sub_2311F59B0(v35, v29 + 1, 1);
        }

        v30 = v0[96];
        __swift_mutable_project_boxed_opaque_existential_1((v0 + 92), v0[95]);
        OUTLINED_FUNCTION_12_21();
        v32 = v31;
        v34 = *(v33 + 64) + 15;
        swift_task_alloc();
        (*(v32 + 16))();
        sub_23125D3D4();
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 92);

        v24 = v62;
        v26 += 80;
        --v23;
      }

      while (v23);
      v20 = v58;
      v21 = v57;
    }

    v41 = v0[102];
    v42 = v0[100];
    v43 = v0[99];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    v45 = MEMORY[0x23192A860](v24, v44);
    v47 = v46;

    v48 = sub_2311CFD58(v45, v47, &v61);

    *(v22 + 4) = v48;
    _os_log_impl(&dword_2311CB000, v20, v21, "domain repos from %s loaded", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v39 = *(v42 + 8);
    v39(v41, v43);
  }

  else
  {
    v36 = v0[102];
    v37 = v0[100];
    v38 = v0[99];

    v39 = *(v37 + 8);
    v40 = OUTLINED_FUNCTION_27();
    (v39)(v40);
  }

  v0[106] = v39;
  v49 = v0[98];
  v50 = v49[3];
  v51 = v49[4];
  OUTLINED_FUNCTION_3_2(v49);
  v52 = *(v51 + 16);
  v60 = (v52 + *v52);
  v53 = v52[1];
  v54 = swift_task_alloc();
  v0[107] = v54;
  *v54 = v0;
  v55 = OUTLINED_FUNCTION_26_3(v54);

  return v60(v55, v51);
}

uint64_t sub_2312FDD98()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 856);
  *v2 = *v0;
  *(v1 + 864) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2312FDE80()
{
  v74 = v0;
  v1 = *(v0 + 864);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2311CF388(v3, v0 + 456);
      sub_2311D38A8((v0 + 456), v0 + 576);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FC0, &qword_231370E60);
      if (swift_dynamicCast())
      {
        if (*(v0 + 560))
        {
          sub_2311D38A8((v0 + 536), v0 + 496);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_8_25();
            sub_23126ED68();
            v4 = v7;
          }

          v6 = *(v4 + 16);
          v5 = *(v4 + 24);
          if (v6 >= v5 >> 1)
          {
            OUTLINED_FUNCTION_37(v5);
            sub_23126ED68();
            v4 = v8;
          }

          *(v4 + 16) = v6 + 1;
          sub_2311D38A8((v0 + 496), v4 + 40 * v6 + 32);
          goto LABEL_12;
        }
      }

      else
      {
        *(v0 + 568) = 0;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
      }

      sub_2311EB450(v0 + 536, &qword_27DD44900, &unk_231376B08);
LABEL_12:
      v3 += 40;
      if (!--v2)
      {
        v9 = *(v0 + 864);

        goto LABEL_15;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_15:
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = MEMORY[0x277D84F90];
    v12 = v4 + 32;
    while (1)
    {
      sub_2311CF388(v12, v0 + 616);
      v13 = *(v0 + 648);
      __swift_project_boxed_opaque_existential_1((v0 + 616), *(v0 + 640));
      v14 = *(v13 + 16);
      v15 = sub_231366F70();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 616));
      v16 = *(v15 + 16);
      v17 = *(v11 + 16);
      if (__OFADD__(v17, v16))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v17 + v16 > *(v11 + 24) >> 1)
      {
        sub_23126ED44();
        v11 = v18;
      }

      if (*(v15 + 16))
      {
        if ((*(v11 + 24) >> 1) - *(v11 + 16) < v16)
        {
          goto LABEL_51;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FD0, &unk_231370E70);
        OUTLINED_FUNCTION_13_20();

        if (v16)
        {
          v19 = *(v11 + 16);
          v20 = __OFADD__(v19, v16);
          v21 = v19 + v16;
          if (v20)
          {
            goto LABEL_52;
          }

          *(v11 + 16) = v21;
        }
      }

      else
      {

        if (v16)
        {
          goto LABEL_50;
        }
      }

      v12 += 40;
      if (!--v10)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
LABEL_30:
    v22 = MEMORY[0x277D84F90];
    v23 = *(v11 + 16);
    if (v23)
    {
      v73 = MEMORY[0x277D84F90];
      v24 = OUTLINED_FUNCTION_10_28();
      sub_2311F5E10(v24, v23, 0);
      v25 = v73;
      v26 = v11 + 32;
      do
      {
        sub_2311CF388(v26, v0 + 656);
        sub_2311CF388(v0 + 656, v0 + 96);
        v27 = *(v0 + 680);
        v28 = *(v0 + 688);
        __swift_project_boxed_opaque_existential_1((v0 + 656), v27);
        *(v0 + 160) = v27;
        *(v0 + 168) = *(v28 + 8);
        __swift_allocate_boxed_opaque_existential_1((v0 + 136));
        OUTLINED_FUNCTION_26_0(v27);
        (*(v29 + 16))();
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 656));
        v73 = v25;
        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        if (v31 >= v30 >> 1)
        {
          v32 = OUTLINED_FUNCTION_37(v30);
          sub_2311F5E10(v32, v31 + 1, 1);
          v25 = v73;
        }

        *(v25 + 16) = v31 + 1;
        memcpy((v25 + 80 * v31 + 32), (v0 + 96), 0x50uLL);
        v26 += 40;
        --v23;
      }

      while (v23);
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v33 = *(v0 + 808);
    sub_231369100();
    sub_231369EE0();
    v34 = sub_2313698A0();
    v35 = sub_23136A3A0();

    if (os_log_type_enabled(v34, v35))
    {
      v70 = v35;
      log = v34;
      v36 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v72 = v68;
      buf = v36;
      *v36 = 136315138;
      v37 = *(v25 + 16);
      v38 = MEMORY[0x277D84F90];
      if (v37)
      {
        v73 = MEMORY[0x277D84F90];
        v39 = OUTLINED_FUNCTION_10_28();
        sub_2311F59B0(v39, v37, 0);
        v38 = v73;
        v40 = v25 + 32;
        do
        {
          sub_2311EB398(v40, v0 + 176, &qword_27DD434F8, &qword_23136CA38);
          v41 = *(v0 + 248);
          __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
          sub_231367AD0();
          sub_2311EB450(v0 + 176, &qword_27DD434F8, &qword_23136CA38);
          v73 = v38;
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          if (v43 >= v42 >> 1)
          {
            v49 = OUTLINED_FUNCTION_37(v42);
            sub_2311F59B0(v49, v43 + 1, 1);
          }

          v44 = *(v0 + 728);
          __swift_mutable_project_boxed_opaque_existential_1(v0 + 696, *(v0 + 720));
          OUTLINED_FUNCTION_12_21();
          v46 = v45;
          v48 = *(v47 + 64) + 15;
          swift_task_alloc();
          (*(v46 + 16))();
          sub_23125D3D4();
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));

          v38 = v73;
          v40 += 80;
          --v37;
        }

        while (v37);
        v22 = MEMORY[0x277D84F90];
      }

      v54 = *(v0 + 848);
      v55 = *(v0 + 808);
      v56 = *(v0 + 800);
      v57 = *(v0 + 792);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
      v59 = MEMORY[0x23192A860](v38, v58);
      v61 = v60;

      v62 = sub_2311CFD58(v59, v61, &v72);

      *(buf + 4) = v62;
      _os_log_impl(&dword_2311CB000, log, v70, "generator repos from %s loaded", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v54(v55, v57);
    }

    else
    {
      v50 = *(v0 + 848);
      v51 = *(v0 + 808);
      v52 = *(v0 + 800);
      v53 = *(v0 + 792);

      v50(v51, v53);
    }

    v63 = *(v0 + 840);
    v64 = *(v0 + 816);
    v65 = *(v0 + 808);
    v73 = v22;
    sub_2312676A0(v63);
    sub_2312676A0(v25);
    v66 = v73;

    OUTLINED_FUNCTION_14();

    v67(v66);
  }
}

uint64_t sub_2312FE5D4(uint64_t a1, uint64_t a2)
{
  v2[42] = a1;
  v2[43] = a2;
  v3 = sub_231368180();
  v2[44] = v3;
  v4 = *(v3 - 8);
  v2[45] = v4;
  v5 = *(v4 + 64) + 15;
  v2[46] = swift_task_alloc();
  v6 = sub_2313698C0();
  v2[47] = v6;
  v7 = *(v6 - 8);
  v2[48] = v7;
  v8 = *(v7 + 64) + 15;
  v2[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312FE6F0, 0, 0);
}

uint64_t sub_2312FE6F0()
{
  v1 = *(v0 + 336);
  sub_2311EB398(v1, v0 + 16, &qword_27DD434F8, &qword_23136CA38);
  sub_2311D38A8((v0 + 16), v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_2311EB398(v1, v0 + 96, &qword_27DD434F8, &qword_23136CA38);
  sub_2311D38A8((v0 + 136), v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  OUTLINED_FUNCTION_3_2((v0 + 176));
  v4 = *(MEMORY[0x277D607C0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 400) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_26_3(v5);

  return MEMORY[0x2821C64A0](v6, v3);
}

uint64_t sub_2312FE7F8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 400);
  *v2 = *v0;
  *(v1 + 408) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312FE8E0()
{
  v61 = v0;
  v1 = v0 + 27;
  v2 = v0[51];
  v3 = v0[49];
  sub_231369100();
  sub_2311CF388((v0 + 27), (v0 + 32));
  sub_231369EE0();
  v4 = sub_2313698A0();
  v5 = sub_23136A3A0();

  if (os_log_type_enabled(v4, v5))
  {
    v54 = v5;
    v6 = v0[51];
    v7 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = v0[36];
    __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
    sub_231367AD0();
    v9 = v0[40];
    v10 = v0[41];
    OUTLINED_FUNCTION_3_2(v0 + 37);
    MEMORY[0x231929610](v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
    v11 = OUTLINED_FUNCTION_27();
    v14 = sub_2311CFD58(v11, v12, v13);

    *(v7 + 4) = v14;
    buf = v7;
    *(v7 + 12) = 2080;
    v15 = *(v6 + 16);
    v16 = MEMORY[0x277D84F90];
    v58 = v0;
    if (v15)
    {
      v52 = v4;
      v53 = v0 + 27;
      v17 = v0[51];
      v18 = v0[45];
      v60 = MEMORY[0x277D84F90];
      sub_2311F4E34();
      v16 = v60;
      v19 = *(v18 + 16);
      v18 += 16;
      v20 = v17 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v56 = *(v18 + 56);
      v57 = v19;
      v21 = (v18 - 8);
      do
      {
        v57(v0[46], v20, v0[44]);
        v22 = sub_231368130();
        v24 = v23;
        v25 = *v21;
        v26 = OUTLINED_FUNCTION_27();
        v27(v26);
        v60 = v16;
        v29 = *(v16 + 16);
        v28 = *(v16 + 24);
        if (v29 >= v28 >> 1)
        {
          OUTLINED_FUNCTION_37(v28);
          sub_2311F4E34();
          v16 = v60;
        }

        *(v16 + 16) = v29 + 1;
        v30 = v16 + 16 * v29;
        *(v30 + 32) = v22;
        *(v30 + 40) = v24;
        v20 += v56;
        --v15;
        v0 = v58;
      }

      while (v15);
      v4 = v52;
      v1 = v53;
    }

    v60 = v16;
    sub_231369EE0();
    sub_231255C38(&v60);
    v38 = v0[48];
    v37 = v0[49];
    v39 = v0[47];

    v40 = sub_231367920();
    v42 = v41;

    v0 = v58;
    v43 = sub_2311CFD58(v40, v42, &v59);

    *(buf + 14) = v43;
    _os_log_impl(&dword_2311CB000, v4, v54, "SuggestionPool:: Loaded from provider %s:\n%s", buf, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v38 + 8))(v37, v39);
  }

  else
  {
    v32 = v0[48];
    v31 = v0[49];
    v33 = v0[47];

    v34 = *(v32 + 8);
    v35 = OUTLINED_FUNCTION_27();
    v36(v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  v44 = v0[51];
  v45 = v0[49];
  v46 = v0[46];
  v47 = v0[43];
  v48 = swift_task_alloc();
  *(v48 + 16) = v47;
  *(v48 + 24) = v1;
  v49 = sub_2312E3FC8(sub_231300310, v48, v44);

  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);

  OUTLINED_FUNCTION_14();

  return v50(v49);
}

uint64_t sub_2312FED24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_2312A4110(a1, a3);
  *a4 = result;
  return result;
}

uint64_t sub_2312FED88(uint64_t a1)
{
  v3 = sub_2313698C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_231368180();
  v8 = *(v76 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
  v82 = sub_231369EC0();
  sub_23125D7A0(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44928, &qword_231376B60);
  sub_231369EA0();
  v74 = sub_23125D7A0(a1);
  if (!v74)
  {
  }

  v68 = v7;
  v69 = v1;
  v66 = v4;
  v67 = v3;
  v11 = 0;
  v70 = a1 & 0xFFFFFFFFFFFFFF8;
  v71 = a1;
  v72 = (v8 + 8);
  v73 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v73)
    {
      v12 = MEMORY[0x23192AD10](v11, a1);
    }

    else
    {
      if (v11 >= *(v70 + 16))
      {
        goto LABEL_30;
      }

      v12 = *(a1 + 8 * v11 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v13 = v75;
    sub_2313676F0();
    v14 = sub_231368130();
    v16 = v15;
    (*v72)(v13, v76);
    v17 = v82;
    v18 = *(v82 + 16);
    v77 = v11 + 1;
    if (v18)
    {
      break;
    }

LABEL_11:
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    sub_2311EB450(&v79, &qword_27DD43D30, qword_231375200);
    sub_2313676D0();
    swift_isUniquelyReferenced_nonNull_native();
    v78 = v17;
    v21 = v14;
    v22 = v16;
    v23 = sub_231215F6C(v14, v16);
    if (__OFADD__(*(v17 + 16), (v24 & 1) == 0))
    {
      goto LABEL_28;
    }

    v25 = v23;
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E00, &unk_231370780);
    if (sub_23136A700())
    {
      v27 = sub_231215F6C(v21, v22);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_32;
      }

      v25 = v27;
    }

    if (v26)
    {

      v29 = v78;
      v30 = (v78[7] + 40 * v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      sub_2311D38A8(&v79, v30);
    }

    else
    {
      v29 = v78;
      v78[(v25 >> 6) + 8] |= 1 << v25;
      v31 = (v29[6] + 16 * v25);
      *v31 = v21;
      v31[1] = v22;
      sub_2311D38A8(&v79, v29[7] + 40 * v25);

      v32 = v29[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_29;
      }

      v29[2] = v34;
    }

    v82 = v29;
    ++v11;
    a1 = v71;
    if (v77 == v74)
    {
    }
  }

  v19 = sub_231215F6C(v14, v16);
  if ((v20 & 1) == 0)
  {
    v17 = v82;
    goto LABEL_11;
  }

  sub_2311CF388(*(v17 + 56) + 40 * v19, &v79);
  sub_2311EB450(&v79, &qword_27DD43D30, qword_231375200);
  v36 = v68;
  sub_231369100();
  sub_231369EE0();

  v37 = sub_2313698A0();
  v38 = sub_23136A3B0();

  if (!os_log_type_enabled(v37, v38))
  {

    swift_bridgeObjectRelease_n();
    (*(v66 + 8))(v36, v67);
    goto LABEL_26;
  }

  LODWORD(v76) = v38;
  v39 = v16;
  v40 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  v78 = v75;
  *v40 = 136315650;
  *(v40 + 4) = sub_2311CFD58(v14, v39, &v78);
  *(v40 + 12) = 2080;
  v77 = v12;
  sub_2313676D0();
  v41 = *(&v80 + 1);
  v42 = v81;
  v43 = __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
  v44 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  (*(v46 + 16))(&v65 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *(v42 + 16);
  v48 = sub_23136A020();
  v50 = v49;
  __swift_destroy_boxed_opaque_existential_1Tm(&v79);
  v51 = sub_2311CFD58(v48, v50, &v78);

  *(v40 + 14) = v51;
  *(v40 + 22) = 2080;
  sub_2312177CC(&v79, v14, v39, v17);
  v52 = *(&v80 + 1);

  if (v52)
  {

    v53 = *(&v80 + 1);
    v54 = v81;
    v55 = __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
    v56 = *(*(v53 - 8) + 64);
    MEMORY[0x28223BE20](v55);
    (*(v58 + 16))(&v65 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    v59 = *(v54 + 16);
    v60 = sub_23136A020();
    v62 = v61;
    __swift_destroy_boxed_opaque_existential_1Tm(&v79);
    v63 = sub_2311CFD58(v60, v62, &v78);

    *(v40 + 24) = v63;
    _os_log_impl(&dword_2311CB000, v37, v76, "Found duplicate suggestionId: %s. Conflict amoungst owners: %s and %s", v40, 0x20u);
    v64 = v75;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v64, -1, -1);
    MEMORY[0x23192B930](v40, -1, -1);

    (*(v66 + 8))(v68, v67);
LABEL_26:
    sub_2313002BC();
    swift_allocError();
    swift_willThrow();
  }

LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_23136A970();
  __break(1u);
  return result;
}

void sub_2312FF578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43590, &qword_23136CAD0);
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - v4;
  v6 = 0;
  v31 = 0;
  v33 = *(a1 + 16);
  v32 = a1 + 32;
  v7 = MEMORY[0x277D84F90];
  v37 = xmmword_23136B670;
  while (1)
  {
    if (v6 == v33)
    {
      goto LABEL_24;
    }

    sub_2311EB398(v32 + 80 * v6, v44, &qword_27DD434F8, &qword_23136CA38);
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    v8 = sub_231366F60();
    v9 = *(v8 + 16);
    if (v9)
    {
      v35 = v7;
      v36 = v6;
      v43 = MEMORY[0x277D84F90];
      sub_2311F602C(0, v9, 0);
      v10 = v43;
      v40 = sub_2313673A0();
      v11 = *(v40 - 8);
      v12 = *(v11 + 16);
      v11 += 16;
      v39 = v12;
      v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
      v34 = v8;
      v14 = v8 + v13;
      v38 = v11;
      v15 = *(v11 + 56);
      do
      {
        v16 = *(v42 + 48);
        v39(v5, v14, v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435F8, &qword_231374530);
        v17 = swift_allocObject();
        *(v17 + 16) = v37;
        __swift_project_boxed_opaque_existential_1(v45, v45[3]);
        sub_231367AD0();
        *&v5[v16] = v17;
        v43 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2311F602C(v18 > 1, v19 + 1, 1);
          v10 = v43;
        }

        *(v10 + 16) = v19 + 1;
        sub_23130024C(v5, v10 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v19);
        v14 += v15;
        --v9;
      }

      while (v9);

      v7 = v35;
      v6 = v36;
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }

    sub_2311EB450(v44, &qword_27DD434F8, &qword_23136CA38);
    v20 = *(v10 + 16);
    v21 = *(v7 + 16);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v22 > *(v7 + 24) >> 1)
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      sub_23126ED8C(isUniquelyReferenced_nonNull_native, v24, 1, v7);
      v7 = v25;
    }

    ++v6;
    if (*(v10 + 16))
    {
      if ((*(v7 + 24) >> 1) - *(v7 + 16) < v20)
      {
        goto LABEL_26;
      }

      v26 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v27 = *(v41 + 72);
      swift_arrayInitWithCopy();

      if (v20)
      {
        v28 = *(v7 + 16);
        v29 = __OFADD__(v28, v20);
        v30 = v28 + v20;
        if (v29)
        {
          goto LABEL_27;
        }

        *(v7 + 16) = v30;
      }
    }

    else
    {

      if (v20)
      {
        __break(1u);
LABEL_24:
        sub_2312FCA10(v7);
        return;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_2312FF950(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_2313698C0();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *a2;
  sub_231369110();
  sub_231369EE0();
  sub_231369EE0();
  v13 = sub_2313698A0();
  v14 = sub_23136A390();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = v7;
    v16 = v15;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v16 = 136315650;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    v33 = v3;
    v18 = v17;
    v19 = MEMORY[0x23192A860](v11, v17);
    v32 = a3;
    v21 = sub_2311CFD58(v19, v20, &v35);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = MEMORY[0x23192A860](v11, v18);
    v24 = sub_2311CFD58(v22, v23, &v35);

    *(v16 + 14) = v24;
    a3 = v32;
    *(v16 + 22) = 2080;
    v25 = MEMORY[0x23192A860](v12, v18);
    v27 = sub_2311CFD58(v25, v26, &v35);

    *(v16 + 24) = v27;
    _os_log_impl(&dword_2311CB000, v13, v14, "[warning] duplicate intent registered for %s. Existing owner: %s, duplicate owner: %s", v16, 0x20u);
    v28 = v30;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v28, -1, -1);
    MEMORY[0x23192B930](v16, -1, -1);

    (*(v34 + 8))(v10, v31);
  }

  else
  {

    (*(v34 + 8))(v10, v7);
  }

  *a3 = v11;
  sub_231369EE0();
  sub_231369EE0();
  sub_2312673D8();
}

void sub_2312FFC08(uint64_t a1, char a2, uint64_t *a3)
{
  v50 = a3;
  v48 = sub_2313673A0();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43590, &qword_23136CAD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v40 - v13;
  v44 = *(a1 + 16);
  if (!v44)
  {
LABEL_17:

    return;
  }

  v14 = 0;
  v43 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v41 = v6;
  v42 = v15;
  v46 = v3;
  v47 = (v6 + 32);
  v40 = (v6 + 8);
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_23136A970();
      __break(1u);
      goto LABEL_25;
    }

    v16 = v12;
    v17 = v45;
    sub_2311EB398(v43 + *(v12 + 72) * v14, v45, &qword_27DD43590, &qword_23136CAD0);
    v18 = *v47;
    (*v47)(v49, v17, v48);
    v19 = *(v17 + v42);
    v53 = v19;
    v20 = *v50;
    v22 = sub_23121652C();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_22;
    }

    v25 = v21;
    if (v20[3] < v23 + v24)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44920, &unk_231376B50);
      sub_23136A710();
      if (v25)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    v34 = v49;
    v35 = *v50;
    *(*v50 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v18((v35[6] + *(v41 + 72) * v22), v34, v48);
    *(v35[7] + 8 * v22) = v19;
    v36 = v35[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_23;
    }

    v35[2] = v38;
LABEL_16:
    ++v14;
    a2 = 1;
    v12 = v16;
    if (v44 == v14)
    {
      goto LABEL_17;
    }
  }

  v26 = v50;
  sub_2312B5A70();
  v27 = *v26;
  v28 = sub_23121652C();
  if ((v25 & 1) != (v29 & 1))
  {
    goto LABEL_24;
  }

  v22 = v28;
  if ((v25 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v30 = *v50;
  v52 = *(*(*v50 + 56) + 8 * v22);
  sub_231369EE0();
  v31 = v46;
  sub_2312FF950(&v52, &v53, v51);
  v46 = v31;
  if (!v31)
  {

    (*v40)(v49, v48);
    v32 = *(v30 + 56);
    v33 = *(v32 + 8 * v22);
    *(v32 + 8 * v22) = v51[0];

    goto LABEL_16;
  }

  v52 = v46;
  v39 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*v40)(v49, v48);

    return;
  }

LABEL_25:
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

uint64_t sub_2313000C8()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23130015C;

  return sub_2312FE5D4(v3, v0 + 16);
}

uint64_t sub_23130015C()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v7 = *v0;

  OUTLINED_FUNCTION_14();

  return v5(v2);
}

uint64_t sub_23130024C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43590, &qword_23136CAD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2313002BC()
{
  result = qword_27DD44930;
  if (!qword_27DD44930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44930);
  }

  return result;
}

_BYTE *_s6ErrorsOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_2313003DC()
{
  result = qword_27DD44938;
  if (!qword_27DD44938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44938);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_20()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_231300450()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A0, &qword_23136DB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23136B670;
  v1 = sub_231367D20();
  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_0_35();
  *(v0 + 64) = sub_2313008F4(v2, 255, v3);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B48], v1);
  return v0;
}

uint64_t sub_23130053C()
{
  v1 = v0[7];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2313006BC();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2313707C0;
    sub_2313692F0();
    v5 = sub_231367D20();
    v0[5] = v5;
    OUTLINED_FUNCTION_0_35();
    v0[6] = sub_2313008F4(v6, 255, v7);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B48], v5);
    *(v4 + 32) = sub_231369230();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v9 = v0[1];

  return v9(v4);
}

uint64_t sub_2313006BC()
{
  MEMORY[0x231927EB0](v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = MEMORY[0x231929610](v0, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

uint64_t sub_231300764(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_23130051C(a1);
}

void sub_2313007F8(uint64_t a1, uint64_t a2)
{
  sub_2313008F4(qword_280F7D130, a2, type metadata accessor for ConversationalContinuerSignalExtractor);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_2313008F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_23130093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = sub_231369050();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231300A00, 0, 0);
}

uint64_t sub_231300A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18[2];
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v22 = *(MEMORY[0x277D60F68] + 4);
  v28 = swift_task_alloc();
  v18[9] = v28;
  *v28 = v18;
  v28[1] = sub_231300ABC;
  v29 = v18[8];

  return MEMORY[0x2821C6E60](v29, v20, v21, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231300ABC()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_231300BB8, 0, 0);
}

uint64_t sub_231300BB8()
{
  v50 = v0;
  v2 = v0[8];
  v3 = v0[3];
  v4 = sub_231369040();
  v6 = v5;
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v8 = sub_231254950();
  v9 = v8 + 1;
  if (v8 == -1)
  {
    __break(1u);
  }

  else if (qword_280F7C8A0 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v10 = sub_2313698C0();
  __swift_project_value_buffer(v10, qword_280F8E510);
  sub_231369EE0();
  v11 = sub_2313698A0();
  v12 = sub_23136A3A0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_45();
    v1 = swift_slowAlloc();
    v49 = v1;
    *v13 = 136315394;
    *(v13 + 4) = OUTLINED_FUNCTION_3_33(v1, v14);
    *(v13 + 12) = 2048;
    *(v13 + 14) = v9;
    _os_log_impl(&dword_2311CB000, v11, v12, "DiscoverabilityScorer: %s Calculated signalWeighting as %lu", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
    OUTLINED_FUNCTION_24();
    MEMORY[0x23192B930](v13, -1, -1);
  }

  v15 = v0[5];
  v16 = sub_231300FE4(v0[8], v0[3]);
  v17 = __swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40));
  v18 = log(v17[8]);
  v19 = 2.0 / (pow(v16, 0.693147181 / v18) + v9);
  sub_231369EE0();
  v20 = sub_2313698A0();
  v21 = sub_23136A3A0();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_45();
    v22 = OUTLINED_FUNCTION_57_0();
    v49 = v22;
    *v1 = 136315394;
    *(v1 + 4) = OUTLINED_FUNCTION_3_33(v22, v23);
    *(v1 + 12) = 2048;
    *(v1 + 14) = v19;
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v24, v25, "DiscoverabilityScorer: %s Calculated interest as %f");
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_24();
  }

  v26 = v0[5];
  sub_23130129C(v4, v6, v0[2], v0[8], v0[3], v0[4]);
  v28 = v27;
  sub_231369EE0();
  v29 = sub_2313698A0();
  v30 = sub_23136A3A0();

  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_45();
    v31 = OUTLINED_FUNCTION_57_0();
    v49 = v31;
    *v1 = 136315394;
    *(v1 + 4) = OUTLINED_FUNCTION_3_33(v31, v32);
    *(v1 + 12) = 2048;
    *(v1 + 14) = v28;
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v33, v34, "DiscoverabilityScorer: %s Calculated existingKnowledge as %f");
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_24();
  }

  v35 = v19 / ((v28 + 1.0) * *(__swift_project_boxed_opaque_existential_1((v15 + 16), *(v15 + 40)) + 10));
  sub_231369EE0();
  v36 = sub_2313698A0();
  v37 = sub_23136A3A0();

  v38 = os_log_type_enabled(v36, v37);
  v40 = v0[7];
  v39 = v0[8];
  v41 = v0[6];
  if (v38)
  {
    OUTLINED_FUNCTION_45();
    v49 = OUTLINED_FUNCTION_57_0();
    *v1 = 136315394;
    v42 = sub_2311CFD58(v4, v6, &v49);

    *(v1 + 4) = v42;
    *(v1 + 12) = 2048;
    *(v1 + 14) = v35;
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v43, v44, "DiscoverabilityScorer: %s Calculated finalScore as %f");
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_24();
  }

  else
  {
  }

  (*(v40 + 8))(v39, v41);
  v45 = v0[8];

  v46 = v0[1];
  v47.n128_f64[0] = v35;

  return v46(v47);
}

uint64_t sub_231300FE4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_231369050();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  result = sub_231254248(a1, v11, v12);
  if (v14)
  {
    v15 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    memcpy(v33, v15, sizeof(v33));
    sub_231301C34();
    v17 = v16 != 0;
    result = v16 - 1;
    if (!v17)
    {
      __break(1u);
      return result;
    }
  }

  v18 = result + 1;
  if (result == -1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (qword_280F7C8A0 != -1)
  {
LABEL_11:
    swift_once();
  }

  v19 = sub_2313698C0();
  __swift_project_value_buffer(v19, qword_280F8E510);
  (*(v7 + 16))(v10, a1, v6);
  v20 = sub_2313698A0();
  v21 = sub_23136A3A0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v18;
    v32 = v23;
    v24 = v6;
    v25 = v23;
    *v22 = 136315394;
    v26 = sub_231369040();
    v28 = v27;
    v29 = v24;
    v18 = v31;
    (*(v7 + 8))(v10, v29);
    v30 = sub_2311CFD58(v26, v28, &v32);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v18;
    _os_log_impl(&dword_2311CB000, v20, v21, "rank for candidate: %s fetched as %lu", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x23192B930](v25, -1, -1);
    MEMORY[0x23192B930](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return v18;
}

uint64_t sub_23130129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v13 = a5[3];
  v14 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v13);
  result = sub_2312548B8(v13, v14);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    v16 = a5[3];
    v17 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v16);
    v18 = sub_231254598(a4, v16, v17);
    MEMORY[0x28223BE20](v18);
    v24[2] = v7;
    v24[3] = a6;
    v24[4] = a1;
    v24[5] = a2;
    v19 = sub_23132BC28(sub_2313020CC, v24, v18);

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 32);
      v22 = 0.0;
      do
      {
        v23 = *v21++;
        v22 = v22 + v23;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

void sub_2313013F8(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, double *a6@<X8>)
{
  v87 = a6;
  v85 = a5;
  v81 = a4;
  v9 = sub_231368090();
  v88 = *(v9 - 8);
  v89 = v9;
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v9);
  v86 = (v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v83 = v80 - v13;
  MEMORY[0x28223BE20](v14);
  v82 = v80 - v15;
  v16 = sub_231368260();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v80 - v22;
  v24 = __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  v25 = v24[10];
  v26 = v24[11];
  v27 = v24[12];
  v90 = *(v24 + 4);
  v91 = v25;
  v92 = v26;
  v93 = v27;
  v28 = SiriSuggestionsRuntimeConfig.SiriSuggestionsDiscoverabilityConfig.observedActionTypeCoefficients.getter();
  sub_231368060();
  v84 = COERCE_DOUBLE(sub_231210F50(v23, v28));
  v30 = v29;

  v31 = *(v17 + 8);
  v31(v23, v16);
  if (v30)
  {
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v32 = sub_2313698C0();
    __swift_project_value_buffer(v32, qword_280F8E510);
    v34 = v88;
    v33 = v89;
    v35 = v82;
    (*(v88 + 16))(v82, a1, v89);
    v36 = sub_2313698A0();
    v37 = sub_23136A3B0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = COERCE_DOUBLE(swift_slowAlloc());
      v84 = v38;
      v86 = swift_slowAlloc();
      *&v90 = v86;
      **&v38 = 136315138;
      v85 = v36;
      sub_231368060();
      sub_2313020F0(&qword_27DD44940, MEMORY[0x277D60E40]);
      v39 = sub_23136A8B0();
      LODWORD(v83) = v37;
      v41 = v40;
      v31(v20, v16);
      (*(v34 + 8))(v35, v89);
      v42 = sub_2311CFD58(v39, v41, &v90);

      v43 = *&v84;
      v44 = v85;
      *(*&v84 + 4) = v42;
      v45 = v43;
      _os_log_impl(&dword_2311CB000, v44, v83, "DiscoverabilityScorer: Unable to determine action coefficient for %s. Check instantiation of DiscoverabilityScorer", v43, 0xCu);
      v46 = v86;
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x23192B930](v46, -1, -1);
      MEMORY[0x23192B930](v45, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v35, v33);
    }

    v66 = 0.0;
  }

  else
  {
    v47 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    sub_231368380();
    v49 = v48;
    sub_231368050();
    v51 = v50;
    v52 = a1;
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v53 = v49 - v51;
    v54 = sub_2313698C0();
    v55 = __swift_project_value_buffer(v54, qword_280F8E510);
    v57 = v88;
    v56 = v89;
    v58 = *(v88 + 16);
    v59 = v83;
    v82 = v52;
    v58(v83, v52, v89);

    v80[1] = v55;
    v60 = sub_2313698A0();
    v61 = sub_23136A3A0();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134218752;
      *(v62 + 4) = v84;
      *(v62 + 12) = 2048;
      *(v62 + 14) = v49;
      *(v62 + 22) = 2048;
      sub_231368050();
      v64 = v63;
      v83 = *(v88 + 8);
      (v83)(v59, v89);
      *(v62 + 24) = v64;
      *(v62 + 32) = 2048;
      *(v62 + 34) = 0.693147181 / (__swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40))[9] * 86400.0);
      _os_log_impl(&dword_2311CB000, v60, v61, "%f * (1 / exp((%f - %f) * %f))", v62, 0x2Au);
      v65 = v62;
      v56 = v89;
      MEMORY[0x23192B930](v65, -1, -1);
    }

    else
    {

      v83 = *(v57 + 8);
      (v83)(v59, v56);
    }

    v67 = __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
    v68 = exp(v53 * (0.693147181 / (v67[9] * 86400.0)));
    v66 = 0.0;
    if (fabs(v68) != INFINITY)
    {
      v66 = 1.0 / v68 * v84;
    }

    v69 = v86;
    v58(v86, v82, v56);
    v70 = v85;
    sub_231369EE0();
    v71 = sub_2313698A0();
    v72 = sub_23136A3A0();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v90 = v74;
      *v73 = 136315906;
      *(v73 + 4) = sub_2311CFD58(v81, v70, &v90);
      *(v73 + 12) = 2080;
      sub_2313020F0(&qword_27DD44948, MEMORY[0x277D60D90]);
      v75 = sub_23136A8B0();
      v76 = v56;
      v78 = v77;
      (v83)(v69, v76);
      v79 = sub_2311CFD58(v75, v78, &v90);

      *(v73 + 14) = v79;
      *(v73 + 22) = 2048;
      *(v73 + 24) = v66;
      *(v73 + 32) = 2048;
      *(v73 + 34) = v49;
      _os_log_impl(&dword_2311CB000, v71, v72, "DiscoverabilityScorer: %s calculated observed action: %s as %f with currentTs: %f", v73, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23192B930](v74, -1, -1);
      MEMORY[0x23192B930](v73, -1, -1);
    }

    else
    {

      (v83)(v69, v56);
    }
  }

  *v87 = v66;
}

void sub_231301C34()
{
  v1 = log(*(v0 + 64));
  v2 = exp2(1.0 / (0.693147181 / v1));
  if (v2 == INFINITY)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_231301CAC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = OBJC_IVAR____TtC15SiriSuggestions21DiscoverabilityScorer_objective;
  v2 = sub_2313694E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DiscoverabilityScorer()
{
  result = qword_280F82060;
  if (!qword_280F82060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231301DA4()
{
  result = sub_2313694E0();
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

uint64_t sub_231301EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15SiriSuggestions21DiscoverabilityScorer_objective;
  v5 = sub_2313694E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_231301F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_231301FD0;

  return sub_23130093C(a1, a2, v11, a4);
}

uint64_t sub_231301FD0(double a1)
{
  v3 = *(*v1 + 16);
  v7 = *v1;

  v4 = *(v7 + 8);
  v5.n128_f64[0] = a1;

  return v4(v5);
}

uint64_t sub_2313020F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DefaultTrialCoreAnalyticsLogger.__allocating_init(coreAnalyticsClient:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = OUTLINED_FUNCTION_1_40(v9, v14);
  v11(v10);
  v12 = OUTLINED_FUNCTION_7_22();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

unint64_t sub_2313022E0(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

SiriSuggestions::TrialUseCase_optional __swiftcall TrialUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23136A7B0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TrialUseCase.rawValue.getter()
{
  v1 = 0x4C65727574616566;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

unint64_t sub_231302470@<X0>(unint64_t *a1@<X8>)
{
  result = TrialUseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2313024A8(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_2313698C0();
  OUTLINED_FUNCTION_21();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *a1;
  if (*(v80 + 16))
  {
    v18 = *a3;
    sub_231369FA0();

    v23 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v88 = v23;
    sub_231259C34();
    v24 = v88;
    if (a5)
    {
      sub_231369FA0();
      swift_isUniquelyReferenced_nonNull_native();
      v88 = v24;
      sub_231259C34();
      v24 = v88;
    }

    v74 = v6;
    sub_231369FA0();

    swift_isUniquelyReferenced_nonNull_native();
    v88 = v24;
    sub_231259C34();
    v25 = v88;
    v26 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    [v26 initWithInteger_];
    swift_isUniquelyReferenced_nonNull_native();
    v88 = v25;
    sub_231259C34();
    v27 = v80 + 64;
    v28 = 1 << *(v80 + 32);
    v29 = -1;
    v30 = v88;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v31 = v29 & *(v80 + 64);
    v32 = (v28 + 63) >> 6;
    v78 = "_trialExperimentId";
    v79 = "edSuggestionsService";
    v77 = "_trialDeploymentId";
    sub_231369EE0();
    v33 = 0;
    v75 = v32;
    v76 = v27;
    if (v31)
    {
      while (1)
      {
        v34 = v33;
LABEL_15:
        v35 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v36 = v35 | (v34 << 6);
        v37 = *(*(v80 + 48) + v36);
        v38 = *(v80 + 56) + 40 * v36;
        v40 = *v38;
        v39 = *(v38 + 8);
        v83 = *(v38 + 16);
        v41 = *(v38 + 32);
        v81 = *(v38 + 24);
        v42 = 0xEE00415F70756F72;
        v43 = 0x675F6E69616D6F64;
        switch(v37)
        {
          case 1:
            v42 = 0xEE00425F70756F72;
            break;
          case 2:
            v42 = 0xE800000000000000;
            v43 = 0x6D726F6674616C70;
            break;
          case 3:
            v42 = 0xE900000000000073;
            v43 = 0x7473696C796E6564;
            break;
          default:
            break;
        }

        v85 = v43;
        v88 = v43;
        v89 = v42;
        sub_231369EE0();
        v82 = v41;
        sub_231369EE0();
        v86 = v42;
        sub_231369EE0();
        OUTLINED_FUNCTION_6_24();
        sub_231369FA0();

        swift_isUniquelyReferenced_nonNull_native();
        v88 = v30;
        v44 = OUTLINED_FUNCTION_50_2();
        sub_231215F6C(v44, v45);
        if (__OFADD__(v30[2], (v46 & 1) == 0))
        {
          break;
        }

        v47 = v46;
        v48 = &v88;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EB8, &unk_231376F60);
        if (sub_23136A700())
        {
          v48 = v88;
          v49 = OUTLINED_FUNCTION_50_2();
          sub_231215F6C(v49, v50);
          if ((v47 & 1) != (v51 & 1))
          {
            goto LABEL_50;
          }
        }

        v52 = v88;
        if (v47)
        {
          OUTLINED_FUNCTION_2_26();
        }

        else
        {
          OUTLINED_FUNCTION_0_36();
          if (v54)
          {
            goto LABEL_47;
          }

          v52[2] = v53;
        }

        v88 = v85;
        v89 = v86;
        sub_231369EE0();
        OUTLINED_FUNCTION_6_24();
        v87 = v83;
        sub_23130306C();
        sub_23136A530();
        sub_231369FA0();

        swift_isUniquelyReferenced_nonNull_native();
        v88 = v52;
        v55 = OUTLINED_FUNCTION_50_2();
        sub_231215F6C(v55, v56);
        v58 = v57;
        OUTLINED_FUNCTION_5_26();
        if (v54)
        {
          goto LABEL_45;
        }

        v59 = &v88;
        if (sub_23136A700())
        {
          v59 = v88;
          v60 = OUTLINED_FUNCTION_50_2();
          sub_231215F6C(v60, v61);
          if ((v58 & 1) != (v62 & 1))
          {
            goto LABEL_50;
          }
        }

        v63 = v88;
        if (v58)
        {
          OUTLINED_FUNCTION_2_26();
        }

        else
        {
          OUTLINED_FUNCTION_0_36();
          if (v54)
          {
            goto LABEL_48;
          }

          v63[2] = v64;
        }

        v88 = v85;
        v89 = v86;
        sub_231369EE0();
        MEMORY[0x23192A730](0xD000000000000011, v77 | 0x8000000000000000);

        sub_231369FA0();

        swift_isUniquelyReferenced_nonNull_native();
        v88 = v63;
        v65 = OUTLINED_FUNCTION_50_2();
        sub_231215F6C(v65, v66);
        v68 = v67;
        OUTLINED_FUNCTION_5_26();
        if (v54)
        {
          goto LABEL_46;
        }

        v69 = &v88;
        if (sub_23136A700())
        {
          v69 = v88;
          v70 = OUTLINED_FUNCTION_50_2();
          sub_231215F6C(v70, v71);
          if ((v68 & 1) != (v72 & 1))
          {
            goto LABEL_50;
          }
        }

        v30 = v88;
        if (v68)
        {
          OUTLINED_FUNCTION_2_26();
        }

        else
        {
          OUTLINED_FUNCTION_0_36();
          if (v54)
          {
            goto LABEL_49;
          }

          v30[2] = v73;
        }

        v33 = v34;
        v32 = v75;
        v27 = v76;
        if (!v31)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v34 >= v32)
        {

          sub_231368340();
        }

        v31 = *(v27 + 8 * v34);
        ++v33;
        if (v31)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    result = sub_23136A970();
    __break(1u);
  }

  else
  {
    sub_231369100();
    v19 = sub_2313698A0();
    v20 = sub_23136A3A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2311CB000, v19, v20, "device not participating in any experiments or rollouts, not logging to core analytics", v21, 2u);
      MEMORY[0x23192B930](v21, -1, -1);
    }

    return (*(v12 + 8))(v17, v10);
  }

  return result;
}

uint64_t DefaultTrialCoreAnalyticsLogger.init(coreAnalyticsClient:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_1_40(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_7_22();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t DefaultTrialCoreAnalyticsLogger.__deallocating_deinit()
{
  _s15SiriSuggestions31DefaultTrialCoreAnalyticsLoggerCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_231302D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_2311CF324(v10, &v9);
  v7 = sub_231368330();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v7;
}

unint64_t sub_231302E14()
{
  result = qword_27DD44950;
  if (!qword_27DD44950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44950);
  }

  return result;
}

unint64_t sub_231302E6C()
{
  result = qword_27DD44958;
  if (!qword_27DD44958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44960, &qword_231376EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44958);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for DefaultTrialCoreAnalyticsLogger()
{
  result = qword_280F7DE58;
  if (!qword_280F7DE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23130306C()
{
  result = qword_27DD44968;
  if (!qword_27DD44968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44968);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return sub_231302D78(v3, v0, v1, v2);
}

void sub_2313030F4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 56;
  v31 = MEMORY[0x277D84F90];
  v21 = a1 + 56;
  v22 = v4;
  while (1)
  {
    v6 = ~v3;
    v7 = v5 + 32 * v3;
    v8 = v4 - v3;
    if (!v8)
    {
      break;
    }

    while (1)
    {
      v9 = *(v7 - 24);
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if (v9 >= *(*a2 + 16))
      {
        goto LABEL_20;
      }

      v10 = *(*a2 + 8 * v9 + 32);
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v10 >= *(*v7 + 16))
      {
        goto LABEL_22;
      }

      v11 = *(v7 - 16);
      v12 = *(v7 - 8);
      sub_231247A14(*v7 + 32 * v10 + 32, &v26, &qword_27DD443C0, &unk_23136E000);
      if (v27)
      {
        sub_2312250F8(&v26, &v23);
        *&v28 = v11;
        *(&v28 + 1) = v12;
        sub_2312250F8(&v23, &v29);
        sub_231369EE0();
      }

      else
      {
        sub_231369EE0();
        sub_231369EE0();
        sub_231228E9C(&v26, &qword_27DD443C0, &unk_23136E000);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
      }

      if (*(&v28 + 1))
      {
        break;
      }

      sub_231228E9C(&v28, &qword_27DD44988, &unk_231377078);
      --v6;
      v7 += 32;
      if (!--v8)
      {
        return;
      }
    }

    v23 = v28;
    v24 = v29;
    v25 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = *(v31 + 16);
      sub_23126F1D8();
      v31 = v19;
    }

    v4 = v22;
    v13 = *(v31 + 16);
    if (v13 >= *(v31 + 24) >> 1)
    {
      sub_23126F1D8();
      v31 = v20;
    }

    v3 = -v6;
    v14 = v31;
    *(v31 + 16) = v13 + 1;
    v15 = (v14 + 48 * v13);
    v16 = v23;
    v17 = v25;
    v15[3] = v24;
    v15[4] = v17;
    v15[2] = v16;
    v5 = v21;
  }
}

uint64_t ResolutionService.resolveParameters(_:interaction:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_2313698C0();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_231369840();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23130343C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = sub_231369190();
  sub_231369140();

  sub_231367590();
  v4 = sub_231369190();
  OUTLINED_FUNCTION_28();
  sub_2313691A0();

  sub_231369160();
  v5 = sub_2313698A0();
  v6 = sub_23136A3A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2311CB000, v5, v6, "Resolving parameters...", v7, 2u);
    OUTLINED_FUNCTION_29();
  }

  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 24);
  v21 = *(v0 + 32);

  v13 = *(v9 + 8);
  v14 = OUTLINED_FUNCTION_28_0();
  v15(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
  v16 = swift_task_alloc();
  *(v0 + 104) = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v11;
  *(v16 + 32) = v21;
  v17 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 112) = v18;
  *v18 = v19;
  v18[1] = sub_23130362C;
  OUTLINED_FUNCTION_24_20();

  return MEMORY[0x282200600]();
}

uint64_t sub_23130362C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_23130372C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[2];
  sub_231367590();
  v6 = sub_231369190();
  sub_231369180();

  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  OUTLINED_FUNCTION_40();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_231303808(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6768(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_231308024(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2313038A4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = *(*(v7 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = a3(a1, v13, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v15;
}

uint64_t ResolutionService.description.getter()
{
  v1 = sub_2313698C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369160();
  v6 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44660, &qword_231376F90);
  v7 = sub_231369860();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_231303AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44970, &qword_231377018);
  v6[33] = v8;
  v9 = *(v8 - 8);
  v6[34] = v9;
  v10 = *(v9 + 64) + 15;
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231303C04, 0, 0);
}

uint64_t sub_231303C04()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = **(v0 + 208);
    v3 = v1 + 32;
    v4 = sub_23136A2C0();
    v27 = v4;
    do
    {
      v5 = *(v0 + 248);
      v6 = *(v0 + 256);
      v8 = *(v0 + 232);
      v7 = *(v0 + 240);
      v9 = *(v0 + 224);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v4);
      sub_2311CF324(v3, v0 + 16);
      sub_2311CF324(v8, v0 + 56);
      sub_2311CF324(v7, v0 + 96);
      v10 = swift_allocObject();
      v10[2] = 0;
      v11 = v10 + 2;
      v10[3] = 0;
      sub_2311D38A8((v0 + 16), (v10 + 4));
      v10[9] = v9;
      sub_2311D38A8((v0 + 56), (v10 + 10));
      sub_2311D38A8((v0 + 96), (v10 + 15));
      sub_231247A14(v6, v5, &qword_27DD439C0, &qword_23136ED90);
      LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v4);

      v12 = *(v0 + 248);
      if (v5 == 1)
      {
        sub_231228E9C(*(v0 + 248), &qword_27DD439C0, &qword_23136ED90);
      }

      else
      {
        sub_23136A2B0();
        (*(*(v4 - 8) + 8))(v12, v4);
      }

      if (*v11)
      {
        v13 = v10[3];
        v14 = *v11;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_23136A260();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = swift_allocObject();
      *(v18 + 16) = &unk_231377030;
      *(v18 + 24) = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
      v19 = v17 | v15;
      if (v17 | v15)
      {
        v19 = v0 + 136;
        *(v0 + 136) = 0;
        *(v0 + 144) = 0;
        *(v0 + 152) = v15;
        *(v0 + 160) = v17;
      }

      v20 = *(v0 + 256);
      *(v0 + 168) = 1;
      *(v0 + 176) = v19;
      *(v0 + 184) = v28;
      swift_task_create();

      sub_231228E9C(v20, &qword_27DD439C0, &qword_23136ED90);
      v3 += 40;
      --v2;
      v4 = v27;
    }

    while (v2);
  }

  v21 = *(v0 + 280);
  v22 = **(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
  sub_23136A290();
  *(v0 + 288) = MEMORY[0x277D84F90];
  v23 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 296) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_5_27(v24);

  return MEMORY[0x2822002E8](v0 + 192, 0, 0);
}

uint64_t sub_231303F74()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231304058()
{
  OUTLINED_FUNCTION_16();
  v4 = v0[24];
  v5 = v0[36];
  if (v4)
  {
    v6 = *(v4 + 16);
    v7 = *(v5 + 16);
    if (__OFADD__(v7, v6))
    {
      __break(1u);
    }

    else
    {
      v8 = v0[36];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v0[36];
      if (!isUniquelyReferenced_nonNull_native || v7 + v6 > *(v9 + 24) >> 1)
      {
        v10 = v0[36];
        sub_23126DF64();
        v9 = isUniquelyReferenced_nonNull_native;
      }

      if (*(v4 + 16))
      {
        if ((*(v9 + 24) >> 1) - *(v9 + 16) >= v6)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
          swift_arrayInitWithCopy();

          if (!v6)
          {
            goto LABEL_15;
          }

          v11 = *(v9 + 16);
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (!v12)
          {
            *(v9 + 16) = v13;
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return MEMORY[0x2822002E8](isUniquelyReferenced_nonNull_native, v2, v3);
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (!v6)
      {
LABEL_15:
        v0[36] = v9;
        v19 = *(MEMORY[0x277D856B0] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_14_0();
        v0[37] = v20;
        *v20 = v21;
        OUTLINED_FUNCTION_5_27();
        isUniquelyReferenced_nonNull_native = (v0 + 24);
        v2 = 0;
        v3 = 0;

        return MEMORY[0x2822002E8](isUniquelyReferenced_nonNull_native, v2, v3);
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v14 = v0[32];
  v15 = v0[31];
  v16 = v0[25];
  (*(v0[34] + 8))(v0[35], v0[33]);
  *v16 = v5;

  OUTLINED_FUNCTION_56_0();

  return v17();
}

uint64_t sub_23130423C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_26(v1);

  return sub_231303AEC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2313042D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  v7[31] = a1;
  v8 = sub_2313698C0();
  v7[36] = v8;
  v9 = *(v8 - 8);
  v7[37] = v9;
  v10 = *(v9 + 64) + 15;
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v11 = sub_231368180();
  v7[40] = v11;
  v12 = *(v11 - 8);
  v7[41] = v12;
  v13 = *(v12 + 64) + 15;
  v7[42] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0) - 8) + 64) + 15;
  v7[43] = swift_task_alloc();
  v15 = *(*(sub_2313694E0() - 8) + 64) + 15;
  v7[44] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810) - 8) + 64) + 15;
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23130449C, 0, 0);
}

uint64_t sub_23130449C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44978, &qword_231377048);
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  v2 = *(v0 + 272);
  *(v1 + 16) = *(v0 + 256);
  *(v1 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44980, &unk_231377060);
  v3 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 376) = v4;
  *v4 = v5;
  v4[1] = sub_2313045A4;
  OUTLINED_FUNCTION_24_20();

  return MEMORY[0x282200600]();
}

uint64_t sub_2313045A4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 376);
  v3 = *(v1 + 368);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2313046A4()
{
  v155 = v0;
  v154[0] = sub_23125967C(*(v0 + 240));
  v2 = 0;
  sub_231303808(v154);

  v3 = v154[0];
  v4 = *(v154[0] + 16);
  if (v4)
  {
    v153 = MEMORY[0x277D84F90];
    sub_2311F604C();
    i = MEMORY[0x277D84F70];
    v6 = 0;
    v144 = v153;
    v7 = *(v3 + 16);
    v138 = v3 + 32;
    if (v7 >= v4)
    {
      v7 = v4;
    }

    v142 = v7;
    v1 = &unk_23136E000;
    v136 = v3;
    v140 = v4;
    while (1)
    {
      v8 = v142;
      if (v6 == v142)
      {
        break;
      }

      v8 = *(v3 + 16);
      if (v6 >= v8)
      {
        goto LABEL_78;
      }

      v9 = (v138 + 24 * v6);
      v147 = v9[1];
      v149 = *v9;
      v10 = v9[2];
      v11 = *(v10 + 16);
      if (v11)
      {
        v154[0] = MEMORY[0x277D84F90];
        sub_231369EE0();
        sub_231369EE0();
        sub_2311F6098(0, v11, 0);
        i = MEMORY[0x277D84F70];
        v12 = v154[0];
        v13 = v10 + 32;
        do
        {
          sub_2311D1D6C(v13, v0 + 208);
          v14 = OUTLINED_FUNCTION_53_3();
          __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
          swift_dynamicCast();
          v154[0] = v12;
          v17 = *(v12 + 16);
          v16 = *(v12 + 24);
          if (v17 >= v16 >> 1)
          {
            v20 = OUTLINED_FUNCTION_37(v16);
            sub_2311F6098(v20, v17 + 1, 1);
            i = MEMORY[0x277D84F70];
            v12 = v154[0];
          }

          *(v12 + 16) = v17 + 1;
          v18 = v12 + 32 * v17;
          v19 = *(v0 + 192);
          *(v18 + 32) = *(v0 + 176);
          *(v18 + 48) = v19;
          v13 += 32;
          --v11;
        }

        while (v11);
        v3 = v136;
      }

      else
      {
        sub_231369EE0();
        sub_231369EE0();
        v12 = MEMORY[0x277D84F90];
      }

      if (!*(v12 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_23136B670;
        *(v12 + 32) = 0u;
        *(v12 + 48) = 0u;
      }

      v21 = v144;
      v153 = v144;
      v23 = *(v144 + 16);
      v22 = *(v144 + 24);
      v2 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_37(v22);
        sub_2311F604C();
        i = MEMORY[0x277D84F70];
        v21 = v153;
      }

      *(v21 + 16) = v2;
      v144 = v21;
      v24 = (v21 + 32 * v23);
      v24[4] = v6;
      v24[5] = v149;
      v24[6] = v147;
      v24[7] = v12;
      ++v6;
      v4 = v140;
      if (v6 == v140)
      {

        v25 = v144;
        goto LABEL_21;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_21:
  v134 = sub_2313076D4(0, *(v25 + 16));
  v153 = v134;
  sub_2313341CC(v25);
  if (!v27)
  {
    v102 = *(v0 + 352);
    v103 = *(v0 + 360);
    v104 = *(v0 + 344);
    v105 = *(v0 + 256);

    v106 = v105[4];
    __swift_project_boxed_opaque_existential_1(v105, v105[3]);
    sub_2313682A0();
    sub_231369EC0();
    v107 = v105[4];
    __swift_project_boxed_opaque_existential_1(v105, v105[3]);
    sub_231368300();
    v108 = v105[4];
    __swift_project_boxed_opaque_existential_1(v105, v105[3]);
    sub_2313682C0();
    v109 = v105[4];
    __swift_project_boxed_opaque_existential_1(v105, v105[3]);
    sub_231368310();
    v110 = v105[4];
    __swift_project_boxed_opaque_existential_1(v105, v105[3]);
    sub_2313682B0();
    v1 = sub_231368C60();
    v111 = v1[12];
    v112 = *(v1 + 26);
    swift_allocObject();
    i = sub_231368C50();
    sub_23126DF64();
    v114 = v113;
    v2 = *(v113 + 16);
    v8 = *(v113 + 24);
    v4 = v2 + 1;
    if (v2 < v8 >> 1)
    {
LABEL_68:
      *(v0 + 40) = v1;
      *(v0 + 48) = MEMORY[0x277D61158];
      *(v0 + 16) = i;
      *(v114 + 16) = v4;
      v115 = v114;
      sub_2311D38A8((v0 + 16), v114 + 40 * v2 + 32);
      goto LABEL_70;
    }

LABEL_81:
    OUTLINED_FUNCTION_37(v8);
    sub_23126DF64();
    v114 = v125;
    goto LABEL_68;
  }

  v28 = 0;
  v130 = *(v0 + 256);
  v127 = *(v26 + 16);
  v128 = (*(v0 + 328) + 8);
  v143 = (*(v0 + 296) + 8);
  v129 = v25 + 56;
  v126 = MEMORY[0x277D84F90];
  v145 = v25;
  while (1)
  {
    v29 = sub_231334234(v134);
    if ((v30 & 1) == 0 && v29 == v127)
    {
      break;
    }

    sub_2313030F4(v25, &v153);
    v150 = v28;
    v133 = sub_23127E014(v31);
    v32 = v134;
    v8 = *(v134 + 16);
    v2 = -v8;
    v33 = v129;
    for (i = 4; ; ++i)
    {
      if (v2 + i == 4)
      {
        v134 = v32;
        goto LABEL_44;
      }

      v34 = (i - 4);
      if (i - 4 >= v8)
      {
        goto LABEL_74;
      }

      if (v34 >= *(v25 + 16))
      {
        goto LABEL_75;
      }

      v4 = *(v32 + 8 * i);
      v35 = *(*v33 + 16) - 1;
      v1 = (v8 - 1);
      v36 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v4 != v35 || v34 == v1)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = v36;
      }

      else
      {
        sub_23128D8A8(v36);
      }

      v8 = *(v32 + 16);
      if (v34 >= v8)
      {
        goto LABEL_76;
      }

      *(v32 + 8 * i) = 0;
      v153 = v32;
      v33 += 32;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23128D8A8(v36);
      v36 = v98;
    }

    v8 = *(v36 + 16);
    if (v34 >= v8)
    {
      goto LABEL_79;
    }

    v39 = *(v36 + 8 * i);
    v40 = __OFADD__(v39, 1);
    v8 = v39 + 1;
    if (v40)
    {
      goto LABEL_80;
    }

    *(v36 + 8 * i) = v8;
    v134 = v36;
    v153 = v36;
LABEL_44:
    v41 = *(v0 + 336);
    v4 = *(v0 + 312);
    v42 = *(v0 + 320);
    v43 = *(v0 + 256);
    v44 = *(v130 + 24);
    v45 = *(v130 + 32);
    v46 = OUTLINED_FUNCTION_53_3();
    __swift_project_boxed_opaque_existential_1(v46, v47);
    sub_2313682A0();
    sub_2313676F0();

    v48 = sub_231368150();
    (*v128)(v41, v42);
    v49 = sub_2313078A4(v48);
    v50 = v150;

    sub_231369160();
    sub_2311CF324(v43, v0 + 56);

    v51 = sub_2313698A0();
    v1 = sub_23136A3A0();

    v52 = os_log_type_enabled(v51, v1);
    v53 = *(v0 + 312);
    v54 = *(v0 + 288);
    if (v52)
    {
      v55 = OUTLINED_FUNCTION_45();
      v4 = OUTLINED_FUNCTION_44();
      v154[0] = v4;
      *v55 = 136315394;
      v151 = v53;
      v56 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      OUTLINED_FUNCTION_28();
      v57 = sub_231368320();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      v58 = OUTLINED_FUNCTION_28();
      sub_2311CFD58(v58, v59, v60);
      OUTLINED_FUNCTION_38();

      *(v55 + 4) = v57;
      *(v55 + 12) = 2080;
      sub_231368540();
      v61 = sub_231369E90();
      v63 = sub_2311CFD58(v61, v62, v154);

      *(v55 + 14) = v63;
      _os_log_impl(&dword_2311CB000, v51, v1, "Required params for: %s = %s", v55, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v141 = *v143;
      (*v143)(v151, v54);
    }

    else
    {

      v141 = *v143;
      (*v143)(v53, v54);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    }

    sub_231369EE0();
    v2 = v50;
    i = sub_231307A08(v49, v133);
    v132 = v50;

    v64 = 0;
    v131 = *(i + 16);
    v66 = i + 64;
    v65 = *(i + 64);
    v146 = i;
    v67 = -1 << *(i + 32);
    if (-v67 < 64)
    {
      v68 = ~(-1 << -v67);
    }

    else
    {
      v68 = -1;
    }

    v69 = v68 & v65;
    v70 = (63 - v67) >> 6;
    if ((v68 & v65) != 0)
    {
      do
      {
LABEL_55:
        v71 = *(v0 + 304);
        v72 = *(v0 + 256);
        v73 = __clz(__rbit64(v69)) | (v64 << 6);
        v74 = (*(v146 + 48) + 16 * v73);
        v2 = *v74;
        v1 = v74[1];
        v75 = *(*(v146 + 56) + 8 * v73);
        sub_231369EE0();

        sub_231369160();
        sub_2311CF324(v72, v0 + 96);
        sub_231369EE0();

        i = sub_2313698A0();
        LOBYTE(v72) = sub_23136A390();

        v148 = v72;
        v76 = os_log_type_enabled(i, v72);
        v4 = *(v0 + 304);
        v152 = *(v0 + 288);
        if (v76)
        {
          v139 = *(v0 + 304);
          v4 = OUTLINED_FUNCTION_45();
          v137 = OUTLINED_FUNCTION_44();
          v154[0] = v137;
          *v4 = 136315394;
          sub_231369EE0();
          log = i;
          v77 = sub_2311CFD58(v2, v1, v154);

          *(v4 + 4) = v77;
          *(v4 + 12) = 2080;
          v78 = *(v0 + 128);
          __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
          OUTLINED_FUNCTION_28();
          v79 = sub_231368320();
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
          v80 = OUTLINED_FUNCTION_28();
          sub_2311CFD58(v80, v81, v82);
          OUTLINED_FUNCTION_38();

          *(v4 + 14) = v79;
          v2 = log;
          _os_log_impl(&dword_2311CB000, log, v148, "Mandatory parameter: %s was not resolved for candidate %s. Skipping it.", v4, 0x16u);
          i = v137;
          swift_arrayDestroy();
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_29();

          v141(v139, v152);
        }

        else
        {

          v141(v4, v152);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
        }

        v69 &= v69 - 1;
      }

      while (v69);
    }

    while (1)
    {
      v8 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if (v8 >= v70)
      {
        break;
      }

      v69 = *(v66 + 8 * v8);
      ++v64;
      if (v69)
      {
        v64 = v8;
        goto LABEL_55;
      }
    }

    if (v131)
    {

      v25 = v145;
      v28 = v132;
    }

    else
    {
      v84 = *(v0 + 352);
      v83 = *(v0 + 360);
      v85 = *(v0 + 344);
      v86 = *(v0 + 256);
      OUTLINED_FUNCTION_21_21();
      OUTLINED_FUNCTION_38();
      sub_2313682A0();
      sub_23134B810(v133);

      v87 = *(v130 + 32);
      __swift_project_boxed_opaque_existential_1(v86, *(v130 + 24));
      OUTLINED_FUNCTION_38();
      sub_231368300();
      v89 = *(v130 + 24);
      v88 = *(v130 + 32);
      v90 = OUTLINED_FUNCTION_80();
      __swift_project_boxed_opaque_existential_1(v90, v91);
      sub_2313682C0();
      OUTLINED_FUNCTION_21_21();
      OUTLINED_FUNCTION_38();
      sub_231368310();
      OUTLINED_FUNCTION_21_21();
      OUTLINED_FUNCTION_38();
      sub_2313682B0();
      v1 = sub_231368C60();
      v92 = v1[12];
      v93 = *(v1 + 26);
      swift_allocObject();
      v94 = sub_231368C50();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = *(v126 + 16);
        sub_23126DF64();
        v126 = v100;
      }

      v95 = v126;
      v97 = *(v126 + 16);
      v96 = *(v126 + 24);
      v4 = v97 + 1;
      v25 = v145;
      v28 = v132;
      if (v97 >= v96 >> 1)
      {
        OUTLINED_FUNCTION_37(v96);
        sub_23126DF64();
        v95 = v101;
      }

      *(v0 + 160) = v1;
      *(v0 + 168) = MEMORY[0x277D61158];
      *(v0 + 136) = v94;
      v126 = v95;
      *(v95 + 16) = v4;
      sub_2311D38A8((v0 + 136), v95 + 40 * v97 + 32);
    }
  }

  v115 = v126;
LABEL_70:
  v116 = *(v0 + 352);
  v117 = *(v0 + 360);
  v119 = *(v0 + 336);
  v118 = *(v0 + 344);
  v121 = *(v0 + 304);
  v120 = *(v0 + 312);
  v122 = *(v0 + 248);

  *v122 = v115;

  OUTLINED_FUNCTION_56_0();

  return v123();
}

uint64_t sub_2313053F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[71] = a6;
  v6[70] = a5;
  v6[69] = a4;
  v6[68] = a3;
  v6[67] = a2;
  v6[66] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90) - 8) + 64) + 15;
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44990, &qword_231377088);
  v6[74] = v8;
  v9 = *(v8 - 8);
  v6[75] = v9;
  v10 = *(v9 + 64) + 15;
  v6[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23130551C, 0, 0);
}

uint64_t sub_23130551C()
{
  v1 = (v0 + 520);
  v58 = *(v0 + 552);
  v2 = *(v0 + 544);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
  *(v0 + 512) = sub_231369EC0();
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_28_0();
  v4 = sub_2313682F0();
  v7 = v4;
  v8 = 0;
  v9 = v4 + 64;
  v10 = -1;
  v11 = -1 << *(v4 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v4 + 64);
  v13 = (63 - v11) >> 6;
  v57 = v4;
  v55 = v13;
  v56 = v4 + 64;
  if (v12)
  {
    while (1)
    {
      v14 = v8;
LABEL_9:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(v7 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      sub_2311D1D6C(*(v7 + 56) + 32 * v16, v0 + 336);
      *(v0 + 128) = v18;
      *(v0 + 136) = v19;
      sub_2312250F8((v0 + 336), (v0 + 144));
      sub_231369EE0();
LABEL_10:
      v20 = *(v0 + 144);
      *(v0 + 80) = *(v0 + 128);
      *(v0 + 96) = v20;
      *(v0 + 112) = *(v0 + 160);
      v62 = *(v0 + 88);
      if (!v62)
      {
        break;
      }

      v21 = *(v0 + 80);
      sub_2312250F8((v0 + 96), (v0 + 368));
      sub_2311D1D6C(v0 + 368, v0 + 400);
      sub_231368540();
      if (swift_dynamicCast())
      {
        v59 = v12;
        v22 = *(v58 + 16);
        v61 = *v1;
        v23 = sub_231368520();
        if (*(v22 + 16) && (v25 = sub_231215F6C(v23, v24), (v26 & 1) != 0))
        {
          v27 = *(*(v22 + 56) + 8 * v25);
          sub_231369EE0();
        }

        else
        {
          v27 = MEMORY[0x277D84F90];
        }

        v12 = v59;

        v30 = *(v27 + 16);
        if (v30)
        {
          v60 = **(v0 + 536);
          v31 = v27 + 32;
          v32 = sub_23136A2C0();
          do
          {
            v66 = v30;
            v63 = *(v0 + 584);
            v64 = *(v0 + 576);
            v33 = *(v0 + 568);
            v34 = *(v0 + 560);
            v35 = *(v0 + 552);
            v36 = *(v0 + 544);
            __swift_storeEnumTagSinglePayload(v63, 1, 1, v32);
            v65 = v31;
            sub_2311CF324(v31, v0 + 176);
            sub_2311CF324(v36, v0 + 216);
            sub_2311CF324(v34, v0 + 256);
            sub_2311CF324(v33, v0 + 296);
            v37 = swift_allocObject();
            v37[2] = 0;
            v38 = v37 + 2;
            v37[3] = 0;
            v37[4] = v35;
            v37[5] = v21;
            v37[6] = v62;
            sub_2311D38A8((v0 + 176), (v37 + 7));
            v37[12] = v61;
            sub_2311D38A8((v0 + 216), (v37 + 13));
            sub_2311D38A8((v0 + 256), (v37 + 18));
            sub_2311D38A8((v0 + 296), (v37 + 23));
            sub_231247A14(v63, v64, &qword_27DD439C0, &qword_23136ED90);
            LODWORD(v34) = __swift_getEnumTagSinglePayload(v64, 1, v32);

            sub_231369EE0();

            v39 = *(v0 + 576);
            if (v34 == 1)
            {
              sub_231228E9C(*(v0 + 576), &qword_27DD439C0, &qword_23136ED90);
            }

            else
            {
              sub_23136A2B0();
              (*(*(v32 - 8) + 8))(v39, v32);
            }

            if (*v38)
            {
              v40 = v37[3];
              v41 = *v38;
              swift_getObjectType();
              swift_unknownObjectRetain();
              v42 = sub_23136A260();
              v44 = v43;
              swift_unknownObjectRelease();
            }

            else
            {
              v42 = 0;
              v44 = 0;
            }

            v45 = swift_allocObject();
            *(v45 + 16) = &unk_2313770A0;
            *(v45 + 24) = v37;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44978, &qword_231377048);
            v46 = v44 | v42;
            if (v44 | v42)
            {
              v46 = v0 + 432;
              *(v0 + 432) = 0;
              *(v0 + 440) = 0;
              *(v0 + 448) = v42;
              *(v0 + 456) = v44;
            }

            v47 = *(v0 + 584);
            *(v0 + 488) = 1;
            *(v0 + 496) = v46;
            *(v0 + 504) = v60;
            swift_task_create();
            OUTLINED_FUNCTION_38();

            sub_231228E9C(v47, &qword_27DD439C0, &qword_23136ED90);
            v31 = v65 + 40;
            v30 = v66 - 1;
          }

          while (v66 != 1);

          v7 = v57;
          v1 = (v0 + 520);
          v13 = v55;
          v9 = v56;
          v12 = v59;
        }

        else
        {
        }
      }

      else
      {
        v28 = *(v0 + 552);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23136B670;
        sub_2311D1D6C(v0 + 368, inited + 32);
        sub_2313075DC((v0 + 512), v21, v62);

        swift_setDeallocating();
        sub_231322B5C();
      }

      v4 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 368));
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v48 = *(v0 + 608);
    v49 = *(v0 + 536);

    v50 = *v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44978, &qword_231377048);
    sub_23136A290();
    v51 = *(MEMORY[0x277D856B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v0 + 616) = v52;
    *v52 = v53;
    v4 = OUTLINED_FUNCTION_3_34(v52);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        v12 = 0;
        *(v0 + 144) = 0u;
        *(v0 + 160) = 0u;
        *(v0 + 128) = 0u;
        goto LABEL_10;
      }

      v12 = *(v9 + 8 * v14);
      ++v8;
      if (v12)
      {
        v8 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return MEMORY[0x2822002E8](v4, v5, v6);
}

uint64_t sub_231305B68()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 616);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231305C4C()
{
  OUTLINED_FUNCTION_26();
  if (v0[59])
  {
    v1 = v0[60];
    v2 = v0[69];
    sub_2313075DC(v0 + 64, v0[58], v0[59]);

    v3 = *(MEMORY[0x277D856B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[77] = v4;
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_3_34();

    return MEMORY[0x2822002E8](v6, v7, v8);
  }

  else
  {
    v9 = v0[73];
    v10 = v0[72];
    v11 = v0[66];
    (*(v0[75] + 8))(v0[76], v0[74]);
    *v11 = v0[64];

    OUTLINED_FUNCTION_56_0();

    return v12();
  }
}

uint64_t sub_231305D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 296) = v15;
  *(v8 + 280) = v14;
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 232) = a1;
  *(v8 + 240) = a4;
  v9 = sub_2313698C0();
  *(v8 + 304) = v9;
  v10 = *(v9 - 8);
  *(v8 + 312) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231305E54, 0, 0);
}

uint64_t sub_231305E54()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v16 = *(v0 + 248);
  v17 = *(v0 + 272);
  v8 = v6[6];
  v7 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v8);
  v9 = (*(v7 + 8))(v8, v7);
  sub_2311CF324(v5, v0 + 16);
  sub_2311CF324(v3, v0 + 56);
  sub_2311CF324(v2, v0 + 96);
  sub_2311CF324(v1, v0 + 136);
  v10 = swift_allocObject();
  *(v0 + 328) = v10;
  v10[2] = v6;
  v10[3] = v16;
  v10[4] = v4;
  sub_2311D38A8((v0 + 16), (v10 + 5));
  v10[10] = v17;
  sub_2311D38A8((v0 + 56), (v10 + 11));
  sub_2311D38A8((v0 + 96), (v10 + 16));
  sub_2311D38A8((v0 + 136), (v10 + 21));
  v11 = *(MEMORY[0x277D61CC0] + 4);

  sub_231369EE0();

  v12 = swift_task_alloc();
  *(v0 + 336) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
  *v12 = v0;
  v12[1] = sub_23130603C;
  v14.n128_f64[0] = v9;

  return MEMORY[0x2821C8618](v0 + 216, &unk_2313770B8, v10, v13, v14);
}

uint64_t sub_23130603C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = *(v2 + 336);
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = sub_2313061BC;
  }

  else
  {
    v8 = *(v3 + 328);

    v7 = sub_231306148;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231306148()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[27];
  *v2 = v0[31];
  v2[1] = v1;
  v2[2] = v3;
  v4 = v0[40];
  sub_231369EE0();

  OUTLINED_FUNCTION_56_0();

  return v5();
}

uint64_t sub_2313061BC()
{
  v42 = v0;
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[32];
  v4 = v0[33];

  sub_231369160();
  sub_2311CF324(v4, (v0 + 22));
  sub_231369EE0();
  v6 = v1;
  v7 = sub_2313698A0();
  v8 = sub_23136A3B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[43];
    v10 = v0[39];
    v39 = v0[38];
    v40 = v0[40];
    v12 = v0[31];
    v11 = v0[32];
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_2311CFD58(v12, v11, &v41);
    *(v13 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
    swift_getDynamicType();
    v14 = sub_23136AA70();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    v17 = sub_2311CFD58(v14, v16, &v41);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    v0[28] = v9;
    v18 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v19 = sub_23136A010();
    v21 = sub_2311CFD58(v19, v20, &v41);

    *(v13 + 24) = v21;
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v10 + 8))(v40, v39);
  }

  else
  {
    v28 = v0[39];
    v27 = v0[40];
    v29 = v0[38];

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    v30 = *(v28 + 8);
    v31 = OUTLINED_FUNCTION_28_0();
    v32(v31);
  }

  v33 = v0[43];
  v34 = v0[32];
  v35 = v0[29];
  *v35 = v0[31];
  v35[1] = v34;
  sub_231369EE0();

  v35[2] = MEMORY[0x277D84F90];
  v36 = v0[40];

  OUTLINED_FUNCTION_56_0();

  return v37();
}

uint64_t sub_231306450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_23130653C;

  return sub_23130665C(a3, a4, a5, a6, a7, a8, v18);
}

uint64_t sub_23130653C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 24);
  v9 = *v0;
  *(v2 + 32) = v4;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23130662C()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_56_0();
  return v1();
}

uint64_t sub_23130665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v7[27] = a2;
  v7[28] = a3;
  v7[26] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44998, &qword_2313770D0) - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v9 = sub_231367DC0();
  v7[34] = v9;
  v10 = *(v9 - 8);
  v7[35] = v10;
  v11 = *(v10 + 64) + 15;
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v12 = sub_2313698C0();
  v7[39] = v12;
  v13 = *(v12 - 8);
  v7[40] = v13;
  v14 = *(v13 + 64) + 15;
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231306804, 0, 0);
}

uint64_t sub_231306804()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0(*(v0 + 240));
  OUTLINED_FUNCTION_28_0();
  v1 = sub_231368300();
  v3 = v2;
  *(v0 + 368) = v1;
  *(v0 + 376) = v2;
  *(v0 + 384) = swift_getObjectType();
  v4 = *(*(v3 + 8) + 8);
  v6 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_2313068A0, v6, v5);
}

uint64_t sub_2313068A0()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v0[49] = sub_2313693F0();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23130690C()
{
  v160 = v0;
  v1 = *(v0 + 392);
  if (!v1)
  {
LABEL_6:
    OUTLINED_FUNCTION_2_0(*(v0 + 224));
    v16 = *(MEMORY[0x277D60D28] + 4);
    v17 = swift_task_alloc();
    *(v0 + 432) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_4_25(v17);
    OUTLINED_FUNCTION_35();

    return MEMORY[0x2821C6C38](v18, v19, v20, v21, v22, v23);
  }

  v2 = *(v0 + 360);
  sub_231369160();
  v3 = sub_2313698A0();
  v4 = sub_23136A390();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2311CB000, v3, v4, "Found intent properties on the context", v5, 2u);
    OUTLINED_FUNCTION_29();
  }

  v6 = *(v0 + 360);
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);

  v158 = *(v8 + 8);
  v158(v6, v7);
  v13 = OUTLINED_FUNCTION_80();
  sub_231210FC0(v13, v14, v1);
  if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
  {
    v15 = *(v0 + 264);

    sub_231228E9C(v15, &qword_27DD44998, &qword_2313770D0);
    goto LABEL_6;
  }

  v25 = *(v0 + 352);
  v27 = *(v0 + 296);
  v26 = *(v0 + 304);
  v28 = *(v0 + 272);
  v29 = *(v0 + 280);
  v30 = *(v0 + 216);
  (*(v29 + 32))(v26, *(v0 + 264), v28);
  sub_231369160();
  v32 = *(v29 + 16);
  v31 = v29 + 16;
  v155 = v32;
  v32(v27, v26, v28);
  sub_231369EE0();
  v33 = sub_2313698A0();
  LOBYTE(v25) = sub_23136A390();

  v151 = v25;
  v34 = os_log_type_enabled(v33, v25);
  v153 = *(v0 + 320);
  v35 = *(v0 + 296);
  v37 = *(v0 + 272);
  v36 = *(v0 + 280);
  if (v34)
  {
    v148 = *(v0 + 312);
    v149 = *(v0 + 352);
    v39 = *(v0 + 208);
    v38 = *(v0 + 216);
    v40 = OUTLINED_FUNCTION_45();
    v159 = OUTLINED_FUNCTION_44();
    *v40 = 136315394;
    *(v40 + 4) = sub_2311CFD58(v39, v38, &v159);
    *(v40 + 12) = 2080;
    sub_231308BAC();
    sub_23136A8B0();
    log = v33;
    v41 = *(v36 + 8);
    v41(v35, v37);
    v42 = OUTLINED_FUNCTION_54_0();
    v45 = sub_2311CFD58(v42, v43, v44);

    *(v40 + 14) = v45;
    _os_log_impl(&dword_2311CB000, log, v151, "Found intent property on the context for %s as %s", v40, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    v46 = v41;
    OUTLINED_FUNCTION_29();

    v48 = v148;
    v47 = v149;
  }

  else
  {

    v46 = *(v36 + 8);
    v46(v35, v37);
    v47 = OUTLINED_FUNCTION_54_0();
  }

  v158(v47, v48);
  *(v0 + 400) = v46;
  v49 = *(v0 + 280);
  v50 = *(v0 + 272);
  v155(*(v0 + 288), *(v0 + 304), v50);
  v52 = *(v49 + 88);
  v51 = v49 + 88;
  v53 = OUTLINED_FUNCTION_28();
  v55 = v54(v53);
  if (v55 == *MEMORY[0x277D60C48])
  {
    v56 = *(v0 + 336);
    OUTLINED_FUNCTION_31_20();
    (*(v31 + 96))(v50, v51);
    sub_2312250F8(v50, (v0 + 16));
    sub_231369160();
    sub_2311D1D6C(v0 + 16, v0 + 48);
    sub_231369EE0();
    v57 = sub_2313698A0();
    v58 = sub_23136A390();

    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 336);
    v61 = *(v0 + 312);
    v62 = *(v0 + 320);
    if (v59)
    {
      v64 = *(v0 + 208);
      v63 = *(v0 + 216);
      v65 = OUTLINED_FUNCTION_45();
      v159 = OUTLINED_FUNCTION_44();
      *v65 = 136315394;
      v66 = OUTLINED_FUNCTION_80();
      *(v65 + 4) = sub_2311CFD58(v66, v67, v68);
      *(v65 + 12) = 2080;
      sub_2311D1D6C(v0 + 48, v0 + 80);
      sub_23136A010();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
      v69 = OUTLINED_FUNCTION_53_3();
      v72 = sub_2311CFD58(v69, v70, v71);

      *(v65 + 14) = v72;
      OUTLINED_FUNCTION_28_2();
      _os_log_impl(v73, v74, v75, v76, v77, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
    }

    v158(v60, v61);
    OUTLINED_FUNCTION_2_0(*(v0 + 240));
    OUTLINED_FUNCTION_28_0();
    v100 = sub_231368300();
    v102 = v101;
    *(v0 + 408) = v100;
    *(v0 + 416) = v101;
    *(v0 + 424) = swift_getObjectType();
    v103 = *(*(v102 + 8) + 8);
    sub_23136A260();
    OUTLINED_FUNCTION_35();

    return MEMORY[0x2822009F8](v104, v105, v106);
  }

  if (v55 == *MEMORY[0x277D60C38])
  {
    v78 = *(v0 + 344);
    OUTLINED_FUNCTION_31_20();
    (*(v31 + 96))(v50, v51);
    sub_2312250F8(v50, (v0 + 112));
    sub_231369160();
    sub_2311D1D6C(v0 + 112, v0 + 144);
    sub_231369EE0();
    v79 = sub_2313698A0();
    v80 = sub_23136A390();

    v81 = os_log_type_enabled(v79, v80);
    v82 = *(v0 + 344);
    v83 = *(v0 + 312);
    v84 = *(v0 + 320);
    if (v81)
    {
      v156 = v46;
      v86 = *(v0 + 208);
      v85 = *(v0 + 216);
      v87 = OUTLINED_FUNCTION_45();
      v159 = OUTLINED_FUNCTION_44();
      *v87 = 136315394;
      v88 = OUTLINED_FUNCTION_80();
      *(v87 + 4) = sub_2311CFD58(v88, v89, v90);
      *(v87 + 12) = 2080;
      sub_2311D1D6C(v0 + 144, v0 + 176);
      sub_23136A010();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
      v91 = OUTLINED_FUNCTION_53_3();
      v94 = sub_2311CFD58(v91, v92, v93);

      *(v87 + 14) = v94;
      v46 = v156;
      OUTLINED_FUNCTION_28_2();
      _os_log_impl(v95, v96, v97, v98, v99, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    }

    v158(v82, v83);
    v126 = *(v0 + 304);
    v127 = *(v0 + 272);
    v128 = *(v0 + 280);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_23136B670;
    sub_2312250F8((v0 + 112), (v129 + 32));
    v130 = OUTLINED_FUNCTION_28_0();
    (v46)(v130);
    v132 = *(v0 + 352);
    v131 = *(v0 + 360);
    v134 = *(v0 + 336);
    v133 = *(v0 + 344);
    v135 = *(v0 + 328);
    v137 = *(v0 + 296);
    v136 = *(v0 + 304);
    v138 = *(v0 + 288);
    v139 = *(v0 + 264);

    v140 = *(v0 + 8);
    OUTLINED_FUNCTION_35();

    __asm { BRAA            X2, X16 }
  }

  if (v55 == *MEMORY[0x277D60C40])
  {
    v108 = *(v0 + 328);
    v109 = *(v0 + 216);

    sub_231369160();
    sub_231369EE0();
    v110 = sub_2313698A0();
    v111 = sub_23136A390();

    v112 = os_log_type_enabled(v110, v111);
    v113 = *(v0 + 320);
    v114 = *(v0 + 328);
    v115 = *(v0 + 304);
    v116 = *(v0 + 312);
    v117 = *(v0 + 272);
    if (v112)
    {
      v154 = *(v0 + 272);
      v157 = v46;
      v119 = *(v0 + 208);
      v118 = *(v0 + 216);
      v152 = *(v0 + 280);
      v120 = swift_slowAlloc();
      v150 = v115;
      v121 = swift_slowAlloc();
      v159 = v121;
      *v120 = 136315138;
      v122 = OUTLINED_FUNCTION_80();
      *(v120 + 4) = sub_2311CFD58(v122, v123, v124);
      _os_log_impl(&dword_2311CB000, v110, v111, "Intent property %s is set to be ignored", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v125 = OUTLINED_FUNCTION_54_0();
      (v158)(v125);
      v157(v150, v154);
    }

    else
    {

      v145 = OUTLINED_FUNCTION_54_0();
      (v158)(v145);
      v46(v115, v117);
    }

    goto LABEL_6;
  }

  v143 = *(v0 + 272);
  OUTLINED_FUNCTION_35();

  return MEMORY[0x2821FDEB8]();
}

uint64_t sub_2313072BC()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[26];
  v5 = v0[27];
  sub_231369390();
  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23130732C()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 400);
  v2 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1(v2, v3);
  OUTLINED_FUNCTION_2_0(*(v0 + 224));
  v5 = *(MEMORY[0x277D60D28] + 4);
  v6 = swift_task_alloc();
  *(v0 + 432) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_4_25(v6);

  return MEMORY[0x2821C6C38](v7, v8, v9, v10, v11, v12);
}

void sub_2313073D8()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = v1[45];
  v6 = v1[44];
  v7 = v1[43];
  v8 = v1[42];
  v9 = v1[41];
  v10 = v1[38];
  v11 = v1[37];
  v12 = v1[36];
  v13 = v1[33];

  v14 = *(v3 + 8);
  OUTLINED_FUNCTION_40();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2313075DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2312177D8(a2, a3, *a1);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v7 = v6;
  }

  v12 = v7;
  v8 = sub_231369EE0();
  sub_231267530(v8);
  if (v12)
  {
    sub_231369EE0();
    v9 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    sub_23125A588();

    *a1 = v11;
  }

  else
  {
    sub_2312D0564(a2, a3);
  }

  return result;
}