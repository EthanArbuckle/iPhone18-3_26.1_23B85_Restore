uint64_t sub_2691B2D50(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = sub_2691E1374();
  v7 = OUTLINED_FUNCTION_37(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  sub_2691B8078(a1, v3 + 16);
  *(v3 + 64) = a2;
  type metadata accessor for RestartShutdownCATsSimple();
  sub_2691E1364();
  sub_2691E1294();
  sub_2691B8078(a1, v12);
  sub_2691E1274();
  sub_2691B80DC(v12);
  sub_2691E1284();

  v10 = sub_2691E1324();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *(v3 + 56) = v10;
  return v3;
}

uint64_t sub_2691B2E4C()
{
  OUTLINED_FUNCTION_34();
  v1[29] = v2;
  v1[30] = v0;
  v3 = sub_2691E0CA4();
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  v1[31] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E0E64();
  v1[32] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[33] = v7;
  v9 = *(v8 + 64);
  v1[34] = OUTLINED_FUNCTION_44();
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  v1[35] = restarted;
  OUTLINED_FUNCTION_37(restarted);
  v12 = *(v11 + 64);
  v1[36] = OUTLINED_FUNCTION_44();
  v13 = sub_2691E1024();
  v1[37] = v13;
  OUTLINED_FUNCTION_1(v13);
  v1[38] = v14;
  v16 = *(v15 + 64);
  v1[39] = OUTLINED_FUNCTION_44();
  v17 = sub_2691E0F94();
  v1[40] = v17;
  OUTLINED_FUNCTION_1(v17);
  v1[41] = v18;
  v20 = *(v19 + 64);
  v1[42] = OUTLINED_FUNCTION_49();
  v1[43] = swift_task_alloc();
  v21 = sub_2691E0FF4();
  v1[44] = v21;
  OUTLINED_FUNCTION_1(v21);
  v1[45] = v22;
  v24 = *(v23 + 64);
  v1[46] = OUTLINED_FUNCTION_49();
  v1[47] = swift_task_alloc();
  v25 = sub_2691E1044();
  v1[48] = v25;
  OUTLINED_FUNCTION_1(v25);
  v1[49] = v26;
  v28 = *(v27 + 64);
  v1[50] = OUTLINED_FUNCTION_49();
  v1[51] = swift_task_alloc();
  v29 = sub_2691E0D84();
  v1[52] = v29;
  OUTLINED_FUNCTION_1(v29);
  v1[53] = v30;
  v32 = *(v31 + 64);
  v1[54] = OUTLINED_FUNCTION_44();
  v33 = sub_2691E1374();
  OUTLINED_FUNCTION_37(v33);
  v35 = *(v34 + 64);
  v1[55] = OUTLINED_FUNCTION_44();
  v36 = sub_2691E1394();
  v1[56] = v36;
  OUTLINED_FUNCTION_1(v36);
  v1[57] = v37;
  v39 = *(v38 + 64);
  v1[58] = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_2691B3144()
{
  OUTLINED_FUNCTION_53();
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  v4 = __swift_project_value_buffer(v3, qword_2802FBA28);
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_2691E1384();
  v8 = sub_2691E1524();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32(v9);
    _os_log_impl(&dword_2691B1000, v7, v8, "SCSystemCommandsYesNoStrategy | making prompt for Yes/No response", v5, 2u);
    OUTLINED_FUNCTION_42();
  }

  v11 = v0[57];
  v10 = v0[58];
  v12 = v0[56];
  v13 = v0[30];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_35();
  v16(v15);
  if (*(v13 + 64))
  {
    if (*(v13 + 64) == 1)
    {
      v17 = *(v0[30] + 56);
      v18 = swift_task_alloc();
      v0[60] = v18;
      *v18 = v0;
      OUTLINED_FUNCTION_36(v18);

      return sub_2691CC1A4();
    }

    else
    {
      v22 = v0[55];
      v23 = v0[30];
      type metadata accessor for ScreenRecordingCATsSimple();
      sub_2691E1364();
      sub_2691E1294();
      sub_2691B8078(v23 + 16, (v0 + 2));
      sub_2691E1274();
      sub_2691B80DC((v0 + 2));
      sub_2691E1284();

      v0[61] = sub_2691E1324();
      v24 = swift_task_alloc();
      v0[62] = v24;
      *v24 = v0;
      OUTLINED_FUNCTION_36(v24);

      return sub_2691C31AC();
    }
  }

  else
  {
    v20 = *(v0[30] + 56);
    v21 = swift_task_alloc();
    v0[59] = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_36(v21);

    return sub_2691CC100();
  }
}

uint64_t sub_2691B3404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_20();
  v19 = v18;
  OUTLINED_FUNCTION_10();
  *v20 = v19;
  v19[16] = v17;
  v19[17] = v21;
  v19[18] = v16;
  OUTLINED_FUNCTION_63();
  v23 = *(v22 + 472);
  v24 = *v17;
  OUTLINED_FUNCTION_8();
  *v25 = v24;

  if (v16)
  {
    OUTLINED_FUNCTION_25();

    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_24();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v35, v36, v37);
  }
}

uint64_t sub_2691B36BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_20();
  v19 = v18;
  OUTLINED_FUNCTION_10();
  *v20 = v19;
  v19[19] = v17;
  v19[20] = v21;
  v19[21] = v16;
  OUTLINED_FUNCTION_63();
  v23 = *(v22 + 480);
  v24 = *v17;
  OUTLINED_FUNCTION_8();
  *v25 = v24;

  if (v16)
  {
    OUTLINED_FUNCTION_25();

    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_24();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v35, v36, v37);
  }
}

uint64_t sub_2691B3974()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3[22] = v1;
  v3[23] = v2;
  v3[24] = v0;
  OUTLINED_FUNCTION_63();
  v5 = *(v4 + 496);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 504) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691B3BB4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3[12] = v1;
  v3[13] = v2;
  v3[14] = v4;
  v3[15] = v0;
  OUTLINED_FUNCTION_63();
  v6 = *(v5 + 520);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v10 + 528) = v9;
  *(v10 + 536) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2691B3CBC()
{
  OUTLINED_FUNCTION_34();
  v1 = *(*(v0 + 240) + 56);
  v2 = swift_task_alloc();
  *(v0 + 544) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_36(v2);

  return sub_2691CBE70();
}

uint64_t sub_2691B3D48()
{
  OUTLINED_FUNCTION_61();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  *v6 = v5;
  v8 = *(v7 + 544);
  v9 = *v1;
  OUTLINED_FUNCTION_8();
  *v10 = v9;
  v5[69] = v0;

  if (v0)
  {
    v11 = v5[66];
  }

  else
  {
    v5[70] = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_2691B3E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_64();
  v17 = v16[70];
  v18 = [v17 dialog];

  sub_2691B7F64();
  OUTLINED_FUNCTION_38();
  v19 = sub_2691E1494();

  if (!sub_2691B7FAC(v19))
  {

    sub_2691E1634();
    OUTLINED_FUNCTION_24();
    return;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_73();
  }

  else
  {
    OUTLINED_FUNCTION_60();
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = *(v19 + 32);
  }

  v22 = v21;
  v23 = v16[66];
  v24 = v16[13];
  v25 = v16[64];
  v27 = v16[35];
  v26 = v16[36];
  v52 = v16[54];
  v53 = v16[34];
  v28 = v16[31];

  v29 = [v22 fullPrint];

  v30 = sub_2691E13D4();
  v32 = v31;

  v16[25] = v24;
  v16[26] = v23;
  sub_2691E09D4();
  v33 = *(v27 + 20);
  v16[27] = v30;
  v16[28] = v32;
  sub_2691E09D4();
  v34 = sub_2691E0DA4();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v16[71] = sub_2691E0D94();
  v16[10] = type metadata accessor for SiriSystemCommandsModels(0);
  v16[11] = sub_2691B8144(&qword_2802F9458, 255, type metadata accessor for SiriSystemCommandsModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16 + 7);
  sub_2691B81EC(v26, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9460, &unk_2691E2330);
  v38 = swift_allocObject();
  v16[72] = v38;
  *(v38 + 16) = xmmword_2691E2120;
  *(v38 + 32) = v25;
  v39 = v25;
  sub_2691E0C94();
  *(swift_task_alloc() + 16) = v52;
  sub_2691E0E24();

  v40 = *(MEMORY[0x277D5BD40] + 4);
  v54 = *MEMORY[0x277D5BD40] + MEMORY[0x277D5BD40];
  v41 = swift_task_alloc();
  v16[73] = v41;
  *v41 = v16;
  v41[1] = sub_2691B4180;
  v42 = v16[34];
  v43 = v16[29];
  OUTLINED_FUNCTION_24();

  v48(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, v52, v54, a14, a15, a16);
}

uint64_t sub_2691B4180()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  *v3 = v2;
  v5 = v4[73];
  v6 = v4[72];
  v7 = v4[71];
  v8 = v4[34];
  v9 = v4[33];
  v10 = v4[32];
  v11 = *v0;
  OUTLINED_FUNCTION_8();
  *v12 = v11;

  (*(v9 + 8))(v8, v10);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2691B4304()
{
  v19 = *(v0 + 464);
  v20 = *(v0 + 440);
  v18 = *(v0 + 432);
  v1 = *(v0 + 424);
  v16 = *(v0 + 408);
  v17 = *(v0 + 416);
  v21 = *(v0 + 400);
  v2 = *(v0 + 392);
  v14 = *(v0 + 376);
  v15 = *(v0 + 384);
  v22 = *(v0 + 368);
  v3 = *(v0 + 360);
  v12 = *(v0 + 344);
  v13 = *(v0 + 352);
  v23 = *(v0 + 336);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  v8 = *(v0 + 288);
  v9 = *(v0 + 296);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);

  sub_2691B82A4(v8, type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel);
  (*(v6 + 8))(v7, v9);
  (*(v4 + 8))(v12, v5);
  (*(v3 + 8))(v14, v13);
  (*(v2 + 8))(v16, v15);
  (*(v1 + 8))(v18, v17);

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t sub_2691B44E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_64();
  v17 = v16[61];

  v18 = v16[63];
  OUTLINED_FUNCTION_9();
  v31 = v20;
  v32 = v19;
  v33 = v16[31];
  v34 = v21;

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_24();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, v33, v34, a14, a15, a16);
}

uint64_t sub_2691B45BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_17();
  (*(v24 + 8))(v27, v19);
  (*(v23 + 8))(v25, v26);
  (*(v22 + 8))(a11, a10);
  (*(v20 + 8))(a13, a12);
  (*(v18 + 8))(a15, a14);
  v28 = *(v21 + 536);
  OUTLINED_FUNCTION_9();
  v41 = v30;
  v42 = v29;
  v43 = *(v21 + 248);
  v44 = v31;

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, v41, v42, v43, v44, a16, a17, a18);
}

uint64_t sub_2691B4700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_17();
  (*(v24 + 8))(v27, v19);
  (*(v23 + 8))(v25, v26);
  (*(v22 + 8))(a11, a10);
  (*(v20 + 8))(a13, a12);
  (*(v18 + 8))(a15, a14);
  v28 = *(v21 + 552);
  OUTLINED_FUNCTION_9();
  v41 = v30;
  v42 = v29;
  v43 = *(v21 + 248);
  v44 = v31;

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, v41, v42, v43, v44, a16, a17, a18);
}

uint64_t sub_2691B4844(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_2691E0D84();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_2691E0E44();
  sub_2691E0E54();
  return sub_2691E0E34();
}

uint64_t sub_2691B4940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v266 = a2;
  v3 = sub_2691E0EB4();
  v4 = OUTLINED_FUNCTION_2(v3);
  v249 = v5;
  v250 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_47();
  v248 = v9 - v8;
  OUTLINED_FUNCTION_54();
  v10 = type metadata accessor for SystemCommandsIntent();
  v11 = OUTLINED_FUNCTION_37(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47();
  v236 = v15 - v14;
  OUTLINED_FUNCTION_54();
  v245 = sub_2691E0FF4();
  v16 = OUTLINED_FUNCTION_2(v245);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  v260 = v21;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22();
  v265 = v23;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v24);
  v26 = &v233 - v25;
  v252 = sub_2691E0F64();
  v27 = OUTLINED_FUNCTION_2(v252);
  v256 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  v246 = &v233 - v33;
  OUTLINED_FUNCTION_54();
  v34 = sub_2691E0F24();
  v253 = OUTLINED_FUNCTION_2(v34);
  v254 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v253);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  v257 = &v233 - v39;
  OUTLINED_FUNCTION_54();
  v267 = sub_2691E1394();
  v40 = OUTLINED_FUNCTION_2(v267);
  v264 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6();
  v263 = v44;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  v262 = &v233 - v53;
  OUTLINED_FUNCTION_54();
  v54 = sub_2691E0ED4();
  v55 = OUTLINED_FUNCTION_2(v54);
  v261 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6();
  v255 = v59;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v60);
  v62 = (&v233 - v61);
  v63 = sub_2691E0EE4();
  v64 = OUTLINED_FUNCTION_2(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  v71 = MEMORY[0x28223BE20](v70);
  v73 = &v233 - v72;
  v74 = MEMORY[0x28223BE20](v71);
  v76 = (&v233 - v75);
  MEMORY[0x28223BE20](v74);
  v78 = &v233 - v77;
  v251 = a1;
  sub_2691E0EA4();
  v79 = (*(v66 + 88))(v78, v63);
  if (v79 == *MEMORY[0x277D5C150])
  {
    (*(v66 + 16))(v73, v78, v63);
    (*(v66 + 96))(v73, v63);
    v80 = v261;
    v81 = *(v261 + 16);
    v257 = v73;
    v260 = v54;
    v81(v62, v73, v54);
    v265 = v62;
    v82 = sub_2691E0EC4();
    v84 = v83;
    v85 = sub_2691E0BD4();
    v86 = [v85 identifier];

    v87 = sub_2691E13D4();
    v89 = v88;

    v90 = v82 == v87 && v84 == v89;
    v26 = v63;
    if (v90)
    {

      v93 = v267;
    }

    else
    {
      OUTLINED_FUNCTION_56();
      v91 = sub_2691E16D4();

      v93 = v267;
      if ((v91 & 1) == 0)
      {
        v258 = v78;
        v259 = v66;
        v262 = v26;
        v94 = *(v80 + 8);
        v95 = v260;
        v94(v265, v260);
        (*(v80 + 32))(v255, v257, v95);
        v96 = sub_2691E0EC4();
        v98 = v97;
        v99 = sub_2691E0BC4();
        v100 = [v99 identifier];

        v101 = sub_2691E13D4();
        v103 = v102;

        if (v96 == v101 && v98 == v103)
        {

          v107 = v264;
          v108 = v247;
        }

        else
        {
          OUTLINED_FUNCTION_56();
          v105 = sub_2691E16D4();

          v107 = v264;
          v108 = v247;
          if ((v105 & 1) == 0)
          {
            v79 = (v94)(v255, v95);
            v109 = v263;
            goto LABEL_69;
          }
        }

        if (qword_2802F9378 != -1)
        {
          v106 = OUTLINED_FUNCTION_0();
        }

        OUTLINED_FUNCTION_39(v106, qword_2802FBA28);
        (*(v107 + 16))(v108);
        v161 = sub_2691E1384();
        v162 = sub_2691E1524();
        if (OUTLINED_FUNCTION_19(v162))
        {
          v163 = OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_32(v163);
          OUTLINED_FUNCTION_11(&dword_2691B1000, v164, v165, "SCSystemCommandsYesNoStrategy actionForInput | cancel pressed");
          OUTLINED_FUNCTION_42();
        }

        (*(v107 + 8))(v108, v93);
        sub_2691E0CC4();
        v94(v255, v95);
        return (*(v259 + 8))(v258, v262);
      }
    }

    v116 = v80;
    v117 = v265;
    if (qword_2802F9378 != -1)
    {
      goto LABEL_91;
    }

    goto LABEL_19;
  }

  v258 = v78;
  v259 = v66;
  v262 = v63;
  if (v79 == *MEMORY[0x277D5C130])
  {
    v111 = v258;
    v110 = v259;
    v112 = v262;
    (*(v259 + 16))(v76, v258, v262);
    (*(v110 + 96))(v76, v112);
    v113 = *v76;
    objc_opt_self();
    OUTLINED_FUNCTION_38();
    v114 = swift_dynamicCastObjCClass();
    v93 = v267;
    v109 = v263;
    if (v114 || (objc_opt_self(), OUTLINED_FUNCTION_38(), swift_dynamicCastObjCClass()))
    {
      swift_unknownObjectRelease();
      (*(v110 + 8))(v111, v112);
      return sub_2691E0CC4();
    }

    objc_opt_self();
    OUTLINED_FUNCTION_38();
    if (swift_dynamicCastObjCClass())
    {
      sub_2691E0CD4();
      swift_unknownObjectRelease();
      return (*(v110 + 8))(v111, v112);
    }

    v79 = swift_unknownObjectRelease();
    goto LABEL_69;
  }

  v93 = v267;
  v109 = v263;
  if (v79 != *MEMORY[0x277D5C160])
  {
LABEL_69:
    if (qword_2802F9378 != -1)
    {
      v79 = OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_39(v79, qword_2802FBA28);
    v196 = v264;
    OUTLINED_FUNCTION_57();
    v197(v109);
    v199 = v248;
    v198 = v249;
    v200 = v250;
    (*(v249 + 16))(v248, v251, v250);
    v201 = sub_2691E1384();
    v202 = sub_2691E1524();
    v203 = os_log_type_enabled(v201, v202);
    v204 = v259;
    v205 = v262;
    if (v203)
    {
      v206 = OUTLINED_FUNCTION_72();
      v265 = swift_slowAlloc();
      v268 = v265;
      *v206 = 136315138;
      OUTLINED_FUNCTION_18();
      sub_2691B8144(v207, 255, v208);
      v262 = v205;
      v209 = sub_2691E16C4();
      v210 = v200;
      v212 = v211;
      (*(v198 + 8))(v199, v210);
      v213 = sub_2691B98CC(v209, v212, &v268);

      *(v206 + 4) = v213;
      v205 = v262;
      _os_log_impl(&dword_2691B1000, v201, v202, "SCSystemCommandsYesNoStrategy actionForInput | ignoring unknown parse: %s", v206, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v265);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      (*(v196 + 8))(v263, v93);
    }

    else
    {

      (*(v198 + 8))(v199, v200);
      (*(v196 + 8))(v109, v93);
    }

    sub_2691E0CE4();
    return (*(v204 + 8))(v258, v205);
  }

  v127 = v259;
  v128 = v244;
  v129 = v262;
  (*(v259 + 16))(v244, v258, v262);
  (*(v127 + 96))(v128, v129);
  v130 = v128;
  v117 = v253;
  (*(v254 + 32))(v257, v130, v253);
  v131 = v246;
  sub_2691E0F14();
  v116 = sub_2691E0F54();
  v132 = *(v256 + 8);
  v256 += 8;
  v263 = v132;
  v132(v131, v252);
  v93 = 0;
  v133 = *(v116 + 16);
  v66 = v18 + 16;
  v78 = (v18 + 8);
  v134 = v245;
  while (v133 != v93)
  {
    if (v93 >= *(v116 + 16))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      v92 = OUTLINED_FUNCTION_0();
LABEL_19:
      OUTLINED_FUNCTION_39(v92, qword_2802FBA28);
      v118 = v264;
      v119 = v262;
      (*(v264 + 16))(v262);
      v120 = sub_2691E1384();
      v121 = sub_2691E1524();
      if (OUTLINED_FUNCTION_19(v121))
      {
        v122 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_32(v122);
        OUTLINED_FUNCTION_11(&dword_2691B1000, v123, v124, "SCSystemCommandsYesNoStrategy actionForInput | confirm pressed");
        v117 = v265;
        OUTLINED_FUNCTION_42();
      }

      (*(v118 + 8))(v119, v93);
      sub_2691E0CD4();
      v125 = *(v116 + 8);
      v126 = v260;
      v125(v117, v260);
      v125(v257, v126);
      return (*(v66 + 8))(v78, v26);
    }

    OUTLINED_FUNCTION_45();
    (*(v18 + 16))(v26, v116 + v135 + *(v18 + 72) * v93++, v134);
    v136 = sub_2691E0FA4();
    (*(v18 + 8))(v26, v134);
    if (v136)
    {

      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v137 = v267;
      __swift_project_value_buffer(v267, qword_2802FBA28);
      OUTLINED_FUNCTION_65();
      v138 = v242;
      v139(v242);
      v140 = sub_2691E1384();
      v141 = sub_2691E1524();
      OUTLINED_FUNCTION_19(v141);
      OUTLINED_FUNCTION_59();
      if (v142)
      {
        v143 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_32(v143);
        OUTLINED_FUNCTION_11(&dword_2691B1000, v144, v145, "SCSystemCommandsYesNoStrategy actionForInput | hasAccepted");
        OUTLINED_FUNCTION_21();
      }

      (*(v66 + 8))(v138, v137);
      sub_2691E0CD4();
      (*(v254 + 8))(v257, v117);
      return (*(v116 + 8))(v26, v134);
    }
  }

  v146 = v243;
  sub_2691E0F14();
  v116 = sub_2691E0F54();
  v263(v146, v252);
  v26 = 0;
  v147 = *(v116 + 16);
  v117 = v267;
  do
  {
    if (v147 == v26)
    {

      v166 = v241;
      sub_2691E0F14();
      v167 = v166;
      v117 = sub_2691E0F54();
      v263(v166, v252);
      v116 = 0;
      v26 = v117[2];
      v93 = v264;
      while (v26 != v116)
      {
        if (v116 >= v117[2])
        {
          goto LABEL_90;
        }

        OUTLINED_FUNCTION_45();
        v167 = v260;
        (*(v18 + 16))(v260, v117 + v168 + *(v18 + 72) * v116++, v134);
        v169 = sub_2691E0FC4();
        (*(v18 + 8))(v167, v134);
        if (v169)
        {

          if (qword_2802F9378 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v170 = v267;
          v171 = __swift_project_value_buffer(v267, qword_2802FBA28);
          v172 = v93;
          v173 = *(v93 + 16);
          v174 = v237;
          v173(v237, v171, v170);
          v175 = sub_2691E1384();
          v176 = sub_2691E1524();
          OUTLINED_FUNCTION_19(v176);
          OUTLINED_FUNCTION_59();
          v177 = v254;
          if (v178)
          {
            v179 = OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_32(v179);
            OUTLINED_FUNCTION_11(&dword_2691B1000, v180, v181, "SCSystemCommandsYesNoStrategy actionForInput | hasCancelled");
            OUTLINED_FUNCTION_42();
          }

          (*(v172 + 8))(v174, v170);
          sub_2691E0CC4();
          (*(v177 + 8))(v257, v253);
          return (*(v116 + 8))(v26, v134);
        }
      }

      v156 = v254;
      if (*(v238 + 64))
      {
        v26 = v258;
        v116 = v259;
        v134 = v262;
        v155 = v253;
        v183 = v93;
        if (*(v238 + 64) == 2)
        {
          OUTLINED_FUNCTION_68();
          OUTLINED_FUNCTION_67();
          sub_2691C4C28();
          v185 = v184;
          OUTLINED_FUNCTION_5();
          v182 = sub_2691B82A4(v167, v186);
          if (v185)
          {
            v187 = v267;
            if (qword_2802F9378 != -1)
            {
              v182 = OUTLINED_FUNCTION_0();
            }

            OUTLINED_FUNCTION_39(v182, qword_2802FBA28);
            OUTLINED_FUNCTION_57();
            v188 = v233;
            v189(v233);
            v190 = sub_2691E1384();
            v191 = sub_2691E1524();
            if (!OUTLINED_FUNCTION_19(v191))
            {
              goto LABEL_81;
            }

            v192 = OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_32(v192);
            v195 = "SCSystemCommandsYesNoStrategy actionForInput | accepting confirmation for StartRecording parse";
LABEL_80:
            OUTLINED_FUNCTION_11(&dword_2691B1000, v193, v194, v195);
            OUTLINED_FUNCTION_21();
LABEL_81:

            (*(v183 + 8))(v188, v187);
            sub_2691E0CD4();
            goto LABEL_41;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_67();
        sub_2691C4C54();
        v215 = v214;
        OUTLINED_FUNCTION_5();
        sub_2691B82A4(v167, v216);
        OUTLINED_FUNCTION_59();
        v155 = v253;
        v183 = v93;
        if (v215)
        {
          v187 = v267;
          if (qword_2802F9378 != -1)
          {
            v182 = OUTLINED_FUNCTION_0();
          }

          OUTLINED_FUNCTION_39(v182, qword_2802FBA28);
          OUTLINED_FUNCTION_57();
          v188 = v234;
          v217(v234);
          v190 = sub_2691E1384();
          v218 = sub_2691E1524();
          if (!OUTLINED_FUNCTION_19(v218))
          {
            goto LABEL_81;
          }

          v219 = OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_32(v219);
          v195 = "SCSystemCommandsYesNoStrategy actionForInput | accepting confirmation for Restart parse";
          goto LABEL_80;
        }
      }

      v220 = v267;
      if (qword_2802F9378 != -1)
      {
        v182 = OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_39(v182, qword_2802FBA28);
      OUTLINED_FUNCTION_57();
      v221 = v239;
      v222(v239);
      v223 = v235;
      (*(v156 + 16))(v235, v257, v155);
      v224 = sub_2691E1384();
      v225 = sub_2691E1524();
      if (os_log_type_enabled(v224, v225))
      {
        v155 = OUTLINED_FUNCTION_72();
        v226 = swift_slowAlloc();
        v268 = v226;
        *v155 = 136315138;
        v227 = sub_2691E0F04();
        v228 = v223;
        v230 = v229;
        v231 = *(v156 + 8);
        v231(v228, v253);
        v232 = sub_2691B98CC(v227, v230, &v268);

        *(v155 + 4) = v232;
        _os_log_impl(&dword_2691B1000, v224, v225, "SCSystemCommandsYesNoStrategy actionForInput | ignoring usoParse: %s", v155, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v226);
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_21();

        (*(v183 + 8))(v239, v220);
      }

      else
      {

        v231 = *(v156 + 8);
        v231(v223, v155);
        (*(v183 + 8))(v221, v220);
      }

      sub_2691E0CE4();
      v231(v257, v155);
      return (*(v259 + 8))(v258, v262);
    }

    if (v26 >= *(v116 + 16))
    {
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_45();
    v149 = v265;
    (*(v18 + 16))(v265, v116 + v148 + *(v18 + 72) * v26++, v134);
    v93 = sub_2691E0FB4();
    (*(v18 + 8))(v149, v134);
  }

  while ((v93 & 1) == 0);

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v150 = v117;
  __swift_project_value_buffer(v117, qword_2802FBA28);
  OUTLINED_FUNCTION_65();
  v151 = v240;
  v152(v240);
  v153 = sub_2691E1384();
  v154 = sub_2691E1524();
  OUTLINED_FUNCTION_19(v154);
  OUTLINED_FUNCTION_59();
  v155 = v253;
  v156 = v254;
  if (v157)
  {
    v158 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32(v158);
    OUTLINED_FUNCTION_11(&dword_2691B1000, v159, v160, "SCSystemCommandsYesNoStrategy actionForInput | hasRejected");
    OUTLINED_FUNCTION_21();
  }

  (*(v66 + 8))(v151, v150);
  sub_2691E0CC4();
LABEL_41:
  (*(v156 + 8))(v257, v155);
  return (*(v116 + 8))(v26, v134);
}

uint64_t sub_2691B5E9C()
{
  OUTLINED_FUNCTION_34();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2691E0EB4();
  v1[5] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_44();
  v8 = sub_2691E1394();
  v1[8] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_49();
  v1[11] = swift_task_alloc();
  v12 = type metadata accessor for SystemCommandsIntent();
  OUTLINED_FUNCTION_37(v12);
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_44();
  v15 = sub_2691E0FF4();
  v1[13] = v15;
  OUTLINED_FUNCTION_1(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_49();
  v1[16] = swift_task_alloc();
  v19 = sub_2691E0F64();
  v1[17] = v19;
  OUTLINED_FUNCTION_1(v19);
  v1[18] = v20;
  v22 = *(v21 + 64);
  v1[19] = OUTLINED_FUNCTION_49();
  v1[20] = swift_task_alloc();
  v23 = sub_2691E0F24();
  v1[21] = v23;
  OUTLINED_FUNCTION_1(v23);
  v1[22] = v24;
  v26 = *(v25 + 64);
  v1[23] = OUTLINED_FUNCTION_49();
  v1[24] = swift_task_alloc();
  v27 = sub_2691E0ED4();
  v1[25] = v27;
  OUTLINED_FUNCTION_1(v27);
  v1[26] = v28;
  v30 = *(v29 + 64);
  v1[27] = OUTLINED_FUNCTION_44();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9438, &qword_2691E3A00);
  OUTLINED_FUNCTION_37(v31);
  v33 = *(v32 + 64);
  v1[28] = OUTLINED_FUNCTION_44();
  v34 = sub_2691E0EE4();
  v1[29] = v34;
  OUTLINED_FUNCTION_1(v34);
  v1[30] = v35;
  v37 = *(v36 + 64);
  v1[31] = OUTLINED_FUNCTION_49();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

uint64_t sub_2691B61BC()
{
  v185 = v0;
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[3];
  sub_2691E0EA4();
  v5 = *(v3 + 88);
  v6 = OUTLINED_FUNCTION_35();
  v8 = v7(v6);
  if (v8 != *MEMORY[0x277D5C150])
  {
    if (v8 == *MEMORY[0x277D5C130])
    {
      v31 = v0[34];
      v30 = v0[35];
      v32 = v0[30];
      v33 = OUTLINED_FUNCTION_48(v32);
      v34(v33);
      v35 = *(v32 + 96);
      v36 = OUTLINED_FUNCTION_56();
      v37(v36);
      v38 = *v31;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v39 = v0[28];
        v40 = v0[2];
        v41 = MEMORY[0x277D5BED8];
LABEL_22:
        v78 = *v41;
        v79 = sub_2691E0DF4();
        OUTLINED_FUNCTION_27(v79);
        (*(v80 + 104))(v39, v78, v79);
        __swift_storeEnumTagSinglePayload(v39, 0, 1, v79);
        sub_2691E0E94();
        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v39 = v0[28];
        v77 = v0[2];
        v41 = MEMORY[0x277D5BED0];
        goto LABEL_22;
      }

      swift_unknownObjectRelease();
LABEL_30:
      if (qword_2802F9378 != -1)
      {
        goto LABEL_52;
      }

      goto LABEL_31;
    }

    if (v8 != *MEMORY[0x277D5C160])
    {
      goto LABEL_30;
    }

    v53 = v0[35];
    v54 = v0[32];
    v55 = v0[30];
    v56 = v0[24];
    v57 = v0[21];
    v58 = v0[22];
    v59 = v0[20];
    v60 = v0[18];
    v182 = v0[17];
    v61 = v0[14];
    v62 = OUTLINED_FUNCTION_48(v55);
    v63(v62);
    v64 = *(v55 + 96);
    v65 = OUTLINED_FUNCTION_56();
    v66(v65);
    (*(v58 + 32))(v56, v54, v57);
    sub_2691E0F14();
    v67 = sub_2691E0F54();
    v68 = v182;
    v178 = *(v60 + 8);
    v181 = v60 + 8;
    v178(v59, v68);
    v69 = 0;
    v70 = *(v67 + 16);
    while (v70 != v69)
    {
      if (v69 >= *(v67 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        OUTLINED_FUNCTION_0();
LABEL_31:
        v94 = v0[9];
        v93 = v0[10];
        v96 = v0[7];
        v95 = v0[8];
        v97 = v0[5];
        v98 = v0[6];
        v99 = v0[3];
        v100 = __swift_project_value_buffer(v95, qword_2802FBA28);
        (*(v94 + 16))(v93, v100, v95);
        (*(v98 + 16))(v96, v99, v97);
        v101 = sub_2691E1384();
        v102 = sub_2691E1524();
        v103 = os_log_type_enabled(v101, v102);
        v105 = v0[9];
        v104 = v0[10];
        v106 = v0[7];
        v107 = v0[8];
        v109 = v0[5];
        v108 = v0[6];
        if (v103)
        {
          OUTLINED_FUNCTION_72();
          v176 = v102;
          v110 = OUTLINED_FUNCTION_66();
          v184 = v110;
          *v107 = 136315138;
          OUTLINED_FUNCTION_18();
          sub_2691B8144(v111, 255, v112);
          v113 = sub_2691E16C4();
          v179 = v104;
          v115 = v114;
          (*(v108 + 8))(v106, v109);
          v116 = sub_2691B98CC(v113, v115, &v184);

          *(v107 + 4) = v116;
          _os_log_impl(&dword_2691B1000, v101, v176, "SCSystemCommandsYesNoStrategy parseConfirmationResponse | Unable to parse a confirmation response for: %s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v110);
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_42();

          (*(v105 + 8))(v179, v181);
        }

        else
        {

          (*(v108 + 8))(v106, v109);
          (*(v105 + 8))(v104, v107);
        }

        v117 = v0[28];
        v118 = v0[2];
        v119 = sub_2691E0DF4();
        OUTLINED_FUNCTION_71(v119);
        sub_2691E0E94();
        goto LABEL_35;
      }

      v71 = v0[16];
      OUTLINED_FUNCTION_43();
      (*(v61 + 16))(v71, v72 + v73 * v69++, v56);
      sub_2691E0FA4();
      v74 = OUTLINED_FUNCTION_62();
      v75(v74);
      if (v57)
      {
        OUTLINED_FUNCTION_58();
        v76 = MEMORY[0x277D5BED8];
LABEL_28:
        v90 = *v76;
        v91 = sub_2691E0DF4();
        OUTLINED_FUNCTION_27(v91);
        (*(v92 + 104))(v71, v90, v91);
        OUTLINED_FUNCTION_69();
        sub_2691E0E94();
        (*(v61 + 8))(v56);
        goto LABEL_35;
      }
    }

    v81 = v0[24];
    v56 = v0[19];
    v82 = v0[17];

    sub_2691E0F14();
    v83 = sub_2691E0F54();
    v178(v56, v82);
    v84 = 0;
    v85 = *(v83 + 16);
    while (v85 != v84)
    {
      if (v84 >= *(v83 + 16))
      {
        goto LABEL_51;
      }

      v71 = v0[15];
      OUTLINED_FUNCTION_43();
      (*(v61 + 16))(v71, v86 + v87 * v84++, v56);
      sub_2691E0FB4();
      v88 = OUTLINED_FUNCTION_62();
      v89(v88);
      if (v82)
      {
        OUTLINED_FUNCTION_58();
        v76 = MEMORY[0x277D5BED0];
        goto LABEL_28;
      }
    }

    v131 = v0[4];

    if (*(v131 + 64))
    {
      if (*(v131 + 64) != 2)
      {
LABEL_44:
        if (qword_2802F9378 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v137 = v0[23];
        v138 = v0[24];
        v139 = v0[21];
        v140 = v0[22];
        v141 = v0[11];
        v142 = v0[8];
        v143 = v0[9];
        v144 = __swift_project_value_buffer(v142, qword_2802FBA28);
        (*(v143 + 16))(v141, v144, v142);
        (*(v140 + 16))(v137, v138, v139);
        v145 = sub_2691E1384();
        v146 = sub_2691E1524();
        v147 = os_log_type_enabled(v145, v146);
        v149 = v0[22];
        v148 = v0[23];
        v150 = v0[21];
        v151 = v0[11];
        v153 = v0[8];
        v152 = v0[9];
        if (v147)
        {
          OUTLINED_FUNCTION_72();
          v154 = OUTLINED_FUNCTION_66();
          v184 = v154;
          *v153 = 136315138;
          v175 = sub_2691E0F04();
          v180 = v151;
          v156 = v155;
          v157 = *(v149 + 8);
          v158 = OUTLINED_FUNCTION_55();
          v159(v158);
          v160 = sub_2691B98CC(v175, v156, &v184);

          *(v153 + 4) = v160;
          _os_log_impl(&dword_2691B1000, v145, v146, "SCSystemCommandsYesNoStrategy parseConfirmationResponse | Unknown usoParse: %s", v153, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v154);
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_42();

          (*(v152 + 8))(v180, v181);
        }

        else
        {

          v161 = *(v149 + 8);
          v162 = OUTLINED_FUNCTION_55();
          v163(v162);
          (*(v152 + 8))(v151, v153);
        }

        v164 = v0[28];
        v165 = v0[24];
        v166 = v0[21];
        v167 = v0[2];
        v168 = sub_2691E0DF4();
        OUTLINED_FUNCTION_71(v168);
        sub_2691E0E94();
        v169 = OUTLINED_FUNCTION_35();
        v150(v169);
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_70();
      sub_2691C4820();
      sub_2691C4C28();
    }

    else
    {
      OUTLINED_FUNCTION_70();
      sub_2691C4820();
      sub_2691C4C54();
    }

    v133 = v132;
    OUTLINED_FUNCTION_5();
    sub_2691B82A4(v56, v134);
    if (v133)
    {
      v43 = v0[28];
      v135 = v0[24];
      v136 = v0[21];
      v45 = v0[22];
      goto LABEL_13;
    }

    goto LABEL_44;
  }

  v9 = v0[35];
  v10 = v0[33];
  v11 = v0[30];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];
  v15 = OUTLINED_FUNCTION_48(v11);
  v16(v15);
  v17 = *(v11 + 96);
  v18 = OUTLINED_FUNCTION_56();
  v19(v18);
  (*(v13 + 32))(v12, v10, v14);
  v20 = sub_2691E0EC4();
  v22 = v21;
  v23 = sub_2691E0BD4();
  v24 = [v23 identifier];

  v25 = sub_2691E13D4();
  v27 = v26;

  if (v20 == v25 && v22 == v27)
  {
  }

  else
  {
    v29 = sub_2691E16D4();

    if ((v29 & 1) == 0)
    {
      (*(v0[26] + 8))(v0[27], v0[25]);
      goto LABEL_30;
    }
  }

  v42 = v0[27];
  v43 = v0[28];
  v44 = v0[25];
  v45 = v0[26];
LABEL_13:
  v46 = v0[2];
  v47 = *MEMORY[0x277D5BED8];
  v48 = sub_2691E0DF4();
  OUTLINED_FUNCTION_27(v48);
  (*(v49 + 104))(v43, v47, v48);
  OUTLINED_FUNCTION_69();
  sub_2691E0E94();
  v50 = *(v45 + 8);
  v51 = OUTLINED_FUNCTION_35();
  v52(v51);
LABEL_35:
  v120 = v0[34];
  v122 = v0[32];
  v121 = v0[33];
  v123 = v0[31];
  v124 = v0[28];
  v125 = v0[27];
  v127 = v0[23];
  v126 = v0[24];
  v170 = v0[20];
  v171 = v0[19];
  v172 = v0[16];
  v173 = v0[15];
  v174 = v0[12];
  v177 = v0[11];
  v128 = v0[10];
  v183 = v0[7];
  (*(v0[30] + 8))(v0[35], v0[29]);

  OUTLINED_FUNCTION_31();

  return v129();
}

uint64_t sub_2691B6C24()
{
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_33();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2691B6C50()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[2];
  v2 = *(v1 + 56);
  if (*(v1 + 64))
  {
    if (*(v1 + 64) == 1)
    {
      v3 = swift_task_alloc();
      v0[3] = v3;
      *v3 = v0;
      OUTLINED_FUNCTION_36(v3);

      return sub_2691CBFB8();
    }

    else
    {
      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      OUTLINED_FUNCTION_36(v6);

      return sub_2691CBF14();
    }
  }

  else
  {
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_36(v5);

    return sub_2691CC05C();
  }
}

uint64_t sub_2691B6DAC()
{
  OUTLINED_FUNCTION_61();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_8();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_46();

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

void sub_2691B6ECC()
{
  OUTLINED_FUNCTION_53();
  v1 = *(v0 + 32);
  v2 = [v1 dialog];

  sub_2691B7F64();
  OUTLINED_FUNCTION_38();
  v3 = sub_2691E1494();

  if (!sub_2691B7FAC(v3))
  {

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_12();
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_73();
  }

  else
  {
    OUTLINED_FUNCTION_60();
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 fullPrint];

  sub_2691E13D4();
  v8 = OUTLINED_FUNCTION_15();

  v9(v8);
}

uint64_t sub_2691B700C()
{
  OUTLINED_FUNCTION_61();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_8();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_46();

    return v11();
  }

  else
  {
    *(v5 + 48) = v3;
    v13 = OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

void sub_2691B712C()
{
  OUTLINED_FUNCTION_53();
  v1 = *(v0 + 48);
  v2 = [v1 dialog];

  sub_2691B7F64();
  OUTLINED_FUNCTION_38();
  v3 = sub_2691E1494();

  if (!sub_2691B7FAC(v3))
  {

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_12();
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_73();
  }

  else
  {
    OUTLINED_FUNCTION_60();
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 fullPrint];

  sub_2691E13D4();
  v8 = OUTLINED_FUNCTION_15();

  v9(v8);
}

uint64_t sub_2691B726C()
{
  OUTLINED_FUNCTION_61();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_8();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_46();

    return v11();
  }

  else
  {
    *(v5 + 64) = v3;
    v13 = OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

void sub_2691B738C()
{
  OUTLINED_FUNCTION_53();
  v1 = *(v0 + 64);
  v2 = [v1 dialog];

  sub_2691B7F64();
  OUTLINED_FUNCTION_38();
  v3 = sub_2691E1494();

  if (!sub_2691B7FAC(v3))
  {

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_12();
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_73();
  }

  else
  {
    OUTLINED_FUNCTION_60();
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 fullPrint];

  sub_2691E13D4();
  v8 = OUTLINED_FUNCTION_15();

  v9(v8);
}

uint64_t sub_2691B74F4(unsigned __int8 a1)
{
  sub_2691E1714();
  MEMORY[0x26D633080](a1);
  return sub_2691E1734();
}

uint64_t sub_2691B7558()
{
  v1 = *v0;
  sub_2691E1714();
  MEMORY[0x26D633080](v1);
  return sub_2691E1734();
}

uint64_t sub_2691B759C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

uint64_t getEnumTagSinglePayload for SCSystemCommandsYesNoStrategy.ResponseType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SCSystemCommandsYesNoStrategy.ResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691B7764);
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

unint64_t sub_2691B77B4()
{
  result = qword_2802F93B8;
  if (!qword_2802F93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F93B8);
  }

  return result;
}

uint64_t sub_2691B7850()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B8324;

  return sub_2691B2E4C();
}

uint64_t sub_2691B78F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B8324;

  return sub_2691B5E9C();
}

uint64_t sub_2691B79A0(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5B388] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for SCSystemCommandsYesNoStrategy();
  v7 = sub_2691B8144(&qword_2802F93C8, v6, type metadata accessor for SCSystemCommandsYesNoStrategy);
  *v4 = v1;
  v4[1] = sub_2691B8324;

  return MEMORY[0x2821B9C20](a1, v5, v7);
}

uint64_t sub_2691B7A88(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5B390] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for SCSystemCommandsYesNoStrategy();
  v7 = sub_2691B8144(&qword_2802F93C8, v6, type metadata accessor for SCSystemCommandsYesNoStrategy);
  *v4 = v1;
  v4[1] = sub_2691B8324;

  return MEMORY[0x2821B9C28](a1, v5, v7);
}

uint64_t sub_2691B7B70(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5B398] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for SCSystemCommandsYesNoStrategy();
  v7 = sub_2691B8144(&qword_2802F93C8, v6, type metadata accessor for SCSystemCommandsYesNoStrategy);
  *v4 = v1;
  v4[1] = sub_2691B8324;

  return MEMORY[0x2821B9C30](a1, v5, v7);
}

uint64_t sub_2691B7C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B648] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2691B8324;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_2691B7D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B640] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2691B7DC0;

  return MEMORY[0x2821BA028](a1, a2, a3);
}

uint64_t sub_2691B7DC0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_31();

  return v5();
}

uint64_t sub_2691B7EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B650] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2691B8324;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

unint64_t sub_2691B7F64()
{
  result = qword_2802F9430;
  if (!qword_2802F9430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F9430);
  }

  return result;
}

uint64_t sub_2691B7FAC(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2691B8078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2691B80DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F99D0, &qword_2691E2320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2691B8144(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2691B81EC(uint64_t a1, uint64_t a2)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  (*(*(restarted - 8) + 16))(a2, a1, restarted);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2691B82A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_27(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2691B8300(unint64_t result, char a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3(uint64_t result)
{
  *(result + 8) = sub_2691B3BB4;
  v2 = *(v1 + 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v8[54];
  v12 = v8[50];
  v11 = v8[51];
  v13 = v8[49];
  v15 = v8[46];
  v14 = v8[47];
  v16 = v8[45];
  v21 = v8[48];
  v22 = v8[44];
  v17 = v8[42];
  v18 = v8[41];
  v24 = v8[40];
  v19 = v8[38];
  v23 = v8[39];
  v25 = v8[37];
  v8[64] = v7;

  return MEMORY[0x2821BB1C0](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_9()
{
  result = v0[58];
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[50];
  v4 = v0[51];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[42];
  v8 = v0[43];
  v10 = v0[39];
  v11 = v0[36];
  v12 = v0[34];
  return result;
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return sub_2691E1634();
}

char *OUTLINED_FUNCTION_14(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 16);
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_16()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_17()
{
  v2 = v0[64];
  v3 = v0[53];
  v4 = v0[52];
  v16 = v0[54];
  v5 = v0[49];
  v14 = v0[47];
  v15 = v0[48];
  v6 = v0[45];
  v13 = v0[44];
  v7 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[38];
  v11 = v0[39];
  v12 = v0[37];
}

BOOL OUTLINED_FUNCTION_19(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_21()
{
  v2 = *(v0 - 216);

  JUMPOUT(0x26D6335B0);
}

uint64_t OUTLINED_FUNCTION_25()
{
  v2 = v0[58];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[50];
  v5 = v0[51];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[43];
  v13 = v0[42];
  v14 = v0[39];
  v10 = v0[36];
  v15 = v0[34];
  v11 = v0[31];
}

uint64_t OUTLINED_FUNCTION_31()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_42()
{

  JUMPOUT(0x26D6335B0);
}

void OUTLINED_FUNCTION_43()
{
  v3 = *(v1 + 104);
  v4 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5 = *(v2 + 72);
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_46()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58()
{
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[2];
}

void OUTLINED_FUNCTION_59()
{
  v2 = *(v0 - 176);
  v1 = *(v0 - 168);
  v3 = *(v0 - 144);
}

uint64_t OUTLINED_FUNCTION_66()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_67()
{
  v2 = *(v0 - 352);

  sub_2691C4820();
}

uint64_t OUTLINED_FUNCTION_68()
{
  v2 = *(v0 - 360);
  v3 = *(v0 - 232);

  return sub_2691E0EA4();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_70()
{
  v2 = v0[31];
  v3 = v0[12];
  v4 = v0[3];

  return sub_2691E0EA4();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_72()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_73()
{

  JUMPOUT(0x26D632F20);
}

uint64_t SCSoftwareUpdateFlow.__allocating_init(sharedObjects:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SCSoftwareUpdateFlow.init(sharedObjects:)(a1);
  return v2;
}

uint64_t SCSoftwareUpdateFlow.init(sharedObjects:)(uint64_t a1)
{
  sub_2691B8078(a1 + 40, v1 + 16);
  sub_2691B8078(a1 + 80, v4);
  sub_2691B8A88(a1);
  sub_2691B8ADC(v4, v1 + 56);
  return v1;
}

uint64_t sub_2691B8ADC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t SCSoftwareUpdateFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[14] = v2;
  v1[15] = v0;
  v3 = *(*(sub_2691E0CA4() - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v4 = sub_2691E0E64();
  v1[17] = v4;
  v5 = *(v4 - 8);
  v1[18] = v5;
  v6 = *(v5 + 64) + 15;
  v1[19] = swift_task_alloc();
  v7 = sub_2691E1394();
  v1[20] = v7;
  v8 = *(v7 - 8);
  v1[21] = v8;
  v9 = *(v8 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v10 = *(*(sub_2691E1374() - 8) + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691B8C78, 0, 0);
}

uint64_t sub_2691B8C78()
{
  v1 = v0[24];
  v2 = v0[15];
  type metadata accessor for SystemControlCATPatternsExecutor();
  sub_2691E1294();
  sub_2691B8078(v2 + 16, (v0 + 2));
  sub_2691E1274();
  sub_2691B80DC((v0 + 2));
  sub_2691E1284();

  sub_2691E1364();
  v3 = sub_2691E12C4();
  v0[25] = v3;

  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_2691B8DB0;
  v5 = v0[15];

  return sub_2691BD4A0(0, v3, v5);
}

uint64_t sub_2691B8DB0()
{
  OUTLINED_FUNCTION_34();
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  v2[27] = v4;
  v2[28] = v0;

  if (v0)
  {
    v5 = sub_2691B9148;
  }

  else
  {
    v6 = v2[25];

    v5 = sub_2691B8EC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2691B8EC8()
{
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = __swift_project_value_buffer(v2, qword_2802FBA28);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2691E1384();
  v6 = sub_2691E1534();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2691B1000, v5, v6, "SCSoftwareUpdateFlow execute | software update pattern successfully executed", v7, 2u);
    MEMORY[0x26D6335B0](v7, -1, -1);
  }

  v8 = v0[27];
  v9 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v24 = v0[14];
  v25 = v0[17];

  (*(v10 + 8))(v9, v11);
  sub_2691E0C84();
  sub_2691E0E24();
  sub_2691B8078(v15 + 56, (v0 + 7));
  v16 = sub_2691E0DA4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_2691E0D94();
  v19 = sub_2691E0B04();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v0[13] = sub_2691E0AF4();
  sub_2691E0B14();

  sub_2691E0D44();

  (*(v13 + 8))(v12, v25);
  OUTLINED_FUNCTION_2_0();

  v22 = v0[1];

  return v22();
}

uint64_t sub_2691B9148()
{
  v26 = v0;
  v1 = v0[25];

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[28];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = __swift_project_value_buffer(v5, qword_2802FBA28);
  (*(v4 + 16))(v3, v6, v5);
  MEMORY[0x26D633490](v2);
  v7 = sub_2691E1384();
  v8 = sub_2691E1544();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[28];
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    v0[12] = v9;
    MEMORY[0x26D633490](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v15 = sub_2691E13E4();
    v17 = sub_2691B98CC(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2691B1000, v7, v8, "SCSoftwareUpdateFlow execute | error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x26D6335B0](v14, -1, -1);
    MEMORY[0x26D6335B0](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v19 = v0[21];
    v18 = v0[22];
    v20 = v0[20];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[28];
  v22 = v0[14];
  sub_2691E0D54();

  OUTLINED_FUNCTION_2_0();

  v23 = v0[1];

  return v23();
}

uint64_t SCSoftwareUpdateFlow.execute(completion:)()
{
  type metadata accessor for SCSoftwareUpdateFlow();
  sub_2691B9E70();
  return sub_2691E0B34();
}

uint64_t SCSoftwareUpdateFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  return v0;
}

uint64_t SCSoftwareUpdateFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2691B9468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2691B9518;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2691B9518()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t sub_2691B9634()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B96D0;

  return SCSoftwareUpdateFlow.execute()();
}

uint64_t sub_2691B96D0()
{
  OUTLINED_FUNCTION_34();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2691B97C0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for SCSoftwareUpdateFlow();

  return MEMORY[0x2821BA658](updated, a2);
}

uint64_t sub_2691B97FC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2691B9870(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2691B98CC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2691B98CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2691B9990(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2691B9EC4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2691B9990(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2691B9A90(a5, a6);
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
    result = sub_2691E15F4();
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

uint64_t sub_2691B9A90(uint64_t a1, unint64_t a2)
{
  v4 = sub_2691B9ADC(a1, a2);
  sub_2691B9BF4(&unk_2879D4CC8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2691B9ADC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2691E1444())
  {
    result = sub_2691B9CD8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2691E15B4();
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
          result = sub_2691E15F4();
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

uint64_t sub_2691B9BF4(uint64_t result)
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

    result = sub_2691B9D48(result, v8, 1, v3);
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

void *sub_2691B9CD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97E0, &qword_2691E2418);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2691B9D48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97E0, &qword_2691E2418);
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

_BYTE **sub_2691B9E3C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_2691B9E70()
{
  result = qword_2802F97D8;
  if (!qword_2802F97D8)
  {
    type metadata accessor for SCSoftwareUpdateFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F97D8);
  }

  return result;
}

uint64_t sub_2691B9EC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[16];
}

uint64_t *LocalizationProvider.shared.unsafeMutableAddressor()
{
  if (qword_2802F9360 != -1)
  {
    swift_once();
  }

  return &static LocalizationProvider.shared;
}

uint64_t sub_2691B9F94()
{
  type metadata accessor for LocalizationProvider();
  result = swift_initStaticObject();
  static LocalizationProvider.shared = result;
  return result;
}

uint64_t static LocalizationProvider.shared.getter()
{
  type metadata accessor for LocalizationProvider();

  return swift_initStaticObject();
}

uint64_t LocalizationProvider.localizedString(key:table:locale:)(char a1)
{
  v3 = *v1;
  v19 = sub_2691E09B4();
  v20 = v4;
  v18 = sub_2691BA210();
  v17 = MEMORY[0x277D837D0];
  v5 = sub_2691E15A4();
  v7 = v6;

  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = (a1 & 1) == 0;
    if (a1)
    {
      v11 = 0xD000000000000014;
    }

    else
    {
      v11 = 0xD000000000000013;
    }

    if (v10)
    {
      v12 = &unk_2691E4140;
    }

    else
    {
      v12 = "CONFIRMATION_CANCEL";
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_2691BA5B4(v11, v12 | 0x8000000000000000, 0x736C6562614CLL, 0xE600000000000000, v14, v5, v7, v9);
  }

  else
  {

    return 0;
  }

  return v15;
}

unint64_t LocalizationKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000013;
  }
}

unint64_t sub_2691BA210()
{
  result = qword_2802F97E8;
  if (!qword_2802F97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F97E8);
  }

  return result;
}

BOOL LocalizationTable.init(rawValue:)()
{
  v0 = sub_2691E1654();

  return v0 != 0;
}

uint64_t sub_2691BA2F4()
{
  sub_2691E1714();
  sub_2691E1414();
  return sub_2691E1734();
}

uint64_t sub_2691BA368()
{
  sub_2691E1414();
}

uint64_t sub_2691BA3D0()
{
  sub_2691E1714();
  sub_2691E1414();

  return sub_2691E1734();
}

uint64_t sub_2691BA448()
{
  sub_2691E1714();
  sub_2691E1414();
  return sub_2691E1734();
}

BOOL sub_2691BA494@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = LocalizationTable.init(rawValue:)();
  *a2 = result;
  return result;
}

SiriSystemCommandsIntents::LocalizationKey_optional __swiftcall LocalizationKey.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_2691E1654();

  if (v1 == 1)
  {
    v2.value = SiriSystemCommandsIntents_LocalizationKey_confirmationConfirm;
  }

  else
  {
    v2.value = SiriSystemCommandsIntents_LocalizationKey_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

SiriSystemCommandsIntents::LocalizationKey_optional sub_2691BA558@<W0>(Swift::String *a1@<X0>, SiriSystemCommandsIntents::LocalizationKey_optional *a2@<X8>)
{
  result.value = LocalizationKey.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_2691BA588@<X0>(unint64_t *a1@<X8>)
{
  result = LocalizationKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2691BA5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_2691E13C4();

  v11 = sub_2691E13C4();

  v12 = sub_2691E13C4();

  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_2691E13D4();

  return v14;
}

unint64_t sub_2691BA6AC()
{
  result = qword_2802F97F0;
  if (!qword_2802F97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F97F0);
  }

  return result;
}

unint64_t sub_2691BA704()
{
  result = qword_2802F97F8;
  if (!qword_2802F97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F97F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalizationTable(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for LocalizationTable(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2691BA848);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalizationKey(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for LocalizationKey(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691BA9DCLL);
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

uint64_t type metadata accessor for RestartShutdownCATs()
{
  result = qword_2802F9800;
  if (!qword_2802F9800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691BAAAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2691BAB00(a1, a2);
}

uint64_t sub_2691BAB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_2691E1374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2691BACA4(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2691E12A4();
  (*(v5 + 8))(a2, v4);
  sub_2691BAD14(a1);
  return v12;
}

uint64_t sub_2691BAC6C()
{
  v0 = sub_2691E12D4();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2691BACA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691BAD14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.confirmText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  sub_2691E09F4();
  return v1;
}

uint64_t (*SiriSystemCommandsModels.RestartConfirmationModel.confirmText.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  v2[4] = sub_2691E09E4();
  return sub_2691BD0DC;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.rejectText.getter()
{
  v0 = *(type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  sub_2691E09F4();
  return v2;
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.rejectText.setter()
{
  v0 = *(type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  return sub_2691E0A04();
}

uint64_t (*SiriSystemCommandsModels.RestartConfirmationModel.rejectText.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  v2[4] = sub_2691E09E4();
  return sub_2691BB050;
}

void sub_2691BB054(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2691BB0A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546D7269666E6F63 && a2 == 0xEB00000000747865;
  if (v4 || (sub_2691E16D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65547463656A6572 && a2 == 0xEA00000000007478)
  {

    return 1;
  }

  else
  {
    v7 = sub_2691E16D4();

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

uint64_t sub_2691BB1B4(char a1)
{
  sub_2691E1714();
  MEMORY[0x26D633080](a1 & 1);
  return sub_2691E1734();
}

uint64_t sub_2691BB208(char a1)
{
  if (a1)
  {
    return 0x65547463656A6572;
  }

  else
  {
    return 0x546D7269666E6F63;
  }
}

uint64_t sub_2691BB270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2691BB0A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2691BB2B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2691BB174();
  *a1 = result;
  return result;
}

uint64_t sub_2691BB2E0(uint64_t a1)
{
  v2 = sub_2691BB520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2691BB31C(uint64_t a1)
{
  v2 = sub_2691BB520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9820, &qword_2691E2678);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691BB520();
  sub_2691E1764();
  v14[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  sub_2691BB90C(&qword_2802F9830);
  OUTLINED_FUNCTION_5_0();
  if (!v1)
  {
    v12 = *(type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0) + 20);
    v14[14] = 1;
    OUTLINED_FUNCTION_5_0();
  }

  return (*(v5 + 8))(v10, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2691BB520()
{
  result = qword_2802F9828;
  if (!qword_2802F9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9828);
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

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  v4 = OUTLINED_FUNCTION_2(v41);
  v38 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = v33 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9838, &qword_2691E2680);
  OUTLINED_FUNCTION_2(v39);
  v37 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = v33 - v16;
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  v19 = OUTLINED_FUNCTION_27(restarted);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  v24 = v23 - v22;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691BB520();
  sub_2691E1754();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v34 = restarted;
  v35 = v24;
  v27 = v37;
  v26 = v38;
  v43 = 0;
  v28 = sub_2691BB90C(&qword_2802F9840);
  v29 = v39;
  sub_2691E1684();
  v33[1] = v28;
  v30 = v40;
  v40 = *(v26 + 32);
  (v40)(v35, v30, v41);
  v42 = 1;
  sub_2691E1684();
  (*(v27 + 8))(v17, v29);
  v31 = v35;
  (v40)(v35 + *(v34 + 20), v10, v41);
  sub_2691BC0A8(v31, v36, type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_2691BB97C(v31);
}

uint64_t sub_2691BB90C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F9818, &qword_2691E2670);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2691BB97C(uint64_t a1)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  (*(*(restarted - 8) + 8))(a1, restarted);
  return a1;
}

uint64_t sub_2691BB9D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002691E4600 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2691E16D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2691BBA9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2691E16D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2691BBB0C()
{
  sub_2691E1714();
  MEMORY[0x26D633080](0);
  return sub_2691E1734();
}

uint64_t sub_2691BBBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2691BB9D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2691BBBF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2691B9460();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2691BBC24(uint64_t a1)
{
  v2 = sub_2691BC054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2691BBC60(uint64_t a1)
{
  v2 = sub_2691BC054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2691BBC9C()
{
  sub_2691E1714();
  MEMORY[0x26D633080](0);
  return sub_2691E1734();
}

uint64_t sub_2691BBCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2691BBA9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2691BBD0C(uint64_t a1)
{
  v2 = sub_2691BC108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2691BBD48(uint64_t a1)
{
  v2 = sub_2691BC108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriSystemCommandsModels.encode(to:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9848, &qword_2691E2688);
  OUTLINED_FUNCTION_2(v28);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for SiriSystemCommandsModels(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_47();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9850, &qword_2691E2690);
  OUTLINED_FUNCTION_2(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691BC054();
  sub_2691E1764();
  sub_2691BC0A8(v27, v13, type metadata accessor for SiriSystemCommandsModels);
  sub_2691BC108();
  sub_2691E16A4();
  type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  OUTLINED_FUNCTION_1_0();
  sub_2691BC6D0(v23, v24);
  v25 = v28;
  sub_2691E16B4();
  sub_2691BB97C(v13);
  (*(v3 + 8))(v8, v25);
  return (*(v16 + 8))(v21, v14);
}

uint64_t sub_2691BC01C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2691BC054()
{
  result = qword_2802F9858;
  if (!qword_2802F9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9858);
  }

  return result;
}

uint64_t sub_2691BC0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_27(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2691BC108()
{
  result = qword_2802F9860;
  if (!qword_2802F9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9860);
  }

  return result;
}

uint64_t SiriSystemCommandsModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v49 = type metadata accessor for SiriSystemCommandsModels(0);
  v3 = OUTLINED_FUNCTION_27(v49);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9870, &qword_2691E2698);
  OUTLINED_FUNCTION_2(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9878, &qword_2691E26A0);
  OUTLINED_FUNCTION_2(v16);
  v50 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691BC054();
  v24 = v51;
  sub_2691E1754();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v51 = v15;
  v46 = v8;
  v25 = sub_2691E1694();
  result = sub_2691BC60C(v25, 0);
  if (v28 == v29 >> 1)
  {
    v30 = v16;
    goto LABEL_8;
  }

  if (v28 < (v29 >> 1))
  {
    sub_2691BC654(v28 + 1, v29 >> 1, result, v27, v28, v29);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    if (v32 == v34 >> 1)
    {
      sub_2691BC108();
      sub_2691E1664();
      type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
      OUTLINED_FUNCTION_1_0();
      sub_2691BC6D0(v39, v40);
      v41 = v46;
      sub_2691E1684();
      v42 = v50;
      swift_unknownObjectRelease();
      v43 = OUTLINED_FUNCTION_6_0();
      v44(v43);
      (*(v42 + 8))(v22, v16);
      sub_2691BC718(v41, v47);
      return __swift_destroy_boxed_opaque_existential_0Tm(a1);
    }

    v30 = v16;
LABEL_8:
    v35 = sub_2691E15E4();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9880, &qword_2691E26A8) + 48);
    *v37 = v49;
    sub_2691E1674();
    sub_2691E15D4();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v50 + 8))(v22, v30);
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_2691BC60C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2691BC654(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2691BC6D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2691BC718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSystemCommandsModels(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691BC89C(uint64_t a1, uint64_t a2)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);

  return MEMORY[0x2821FE9C0](a1, a2, restarted, j____swift_get_extra_inhabitant_indexTm);
}

uint64_t sub_2691BC920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, restarted, j____swift_store_extra_inhabitant_indexTm);
}

uint64_t sub_2691BC98C(uint64_t a1)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(restarted - 8) + 84);
    return 0;
  }

  return restarted;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_2691BCB08()
{
  sub_2691BCB74();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2691BCB74()
{
  if (!qword_2802F98C0)
  {
    v0 = sub_2691E0A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2802F98C0);
    }
  }
}

_BYTE *sub_2691BCBDC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2691BCC78);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriSystemCommandsModels.RestartConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691BCD7CLL);
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

unint64_t sub_2691BCDB8()
{
  result = qword_2802F98C8;
  if (!qword_2802F98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98C8);
  }

  return result;
}

unint64_t sub_2691BCE10()
{
  result = qword_2802F98D0;
  if (!qword_2802F98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98D0);
  }

  return result;
}

unint64_t sub_2691BCE68()
{
  result = qword_2802F98D8;
  if (!qword_2802F98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98D8);
  }

  return result;
}

unint64_t sub_2691BCEC0()
{
  result = qword_2802F98E0;
  if (!qword_2802F98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98E0);
  }

  return result;
}

unint64_t sub_2691BCF18()
{
  result = qword_2802F98E8;
  if (!qword_2802F98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98E8);
  }

  return result;
}

unint64_t sub_2691BCF70()
{
  result = qword_2802F98F0;
  if (!qword_2802F98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98F0);
  }

  return result;
}

unint64_t sub_2691BCFC8()
{
  result = qword_2802F98F8;
  if (!qword_2802F98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98F8);
  }

  return result;
}

unint64_t sub_2691BD020()
{
  result = qword_2802F9900;
  if (!qword_2802F9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9900);
  }

  return result;
}

unint64_t sub_2691BD078()
{
  result = qword_2802F9908;
  if (!qword_2802F9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9908);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_2691E16B4();
}

uint64_t type metadata accessor for SystemControlCATPatternsExecutor()
{
  result = qword_2802F9910;
  if (!qword_2802F9910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691BD1D8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 112) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2691BD1F0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 112);
  v3 = sub_2691E1354();
  sub_2691B8078(v1 + 16, v0 + 16);
  *(v0 + 72) = sub_2691E1344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9920, &qword_2691E2C40);
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  v5 = OUTLINED_FUNCTION_1_1(v4, xmmword_2691E2B80);
  v5[4].n128_u64[1] = v3;
  v5[5].n128_u64[0] = 0xD000000000000017;
  v5[5].n128_u64[1] = 0x80000002691E46A0;
  v5[7].n128_u64[1] = MEMORY[0x277D839B0];
  v5[6].n128_u8[0] = v2;
  v6 = *(MEMORY[0x277D55BE8] + 4);
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_2691BD36C;
  v8 = *(v0 + 56);

  return v10(0xD000000000000013, 0x80000002691E46C0, v4);
}

uint64_t sub_2691BD36C()
{
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v10 = v9;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2691BD4A0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 112) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2691BD4B8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 112);
  v3 = sub_2691E1354();
  sub_2691B8078(v1 + 16, v0 + 16);
  *(v0 + 72) = sub_2691E1344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9920, &qword_2691E2C40);
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  v5 = OUTLINED_FUNCTION_1_1(v4, xmmword_2691E2B80);
  v5[5].n128_u64[1] = 0x80000002691E46A0;
  v5[7].n128_u64[1] = MEMORY[0x277D839B0];
  v5[6].n128_u8[0] = v2;
  v6 = *(MEMORY[0x277D55BE8] + 4);
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v4[4].n128_u64[1] = v3;
  v4[5].n128_u64[0] = 0xD000000000000017;

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_2691BD62C;
  v8 = *(v0 + 56);

  return v10(0xD00000000000001CLL, 0x80000002691E46E0, v4);
}

uint64_t sub_2691BD62C()
{
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v10 = v9;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2691BD760()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[13];

  return v3(v4);
}

uint64_t sub_2691BD7D0()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_2691BD83C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2691BD854()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9920, &qword_2691E2C40);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x80000002691E46A0;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55BE8];
  *(v2 + 48) = v1;
  v4 = v3[1];
  v8 = (v3 + *v3);
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_2691E2110;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_2691BD984;
  v6 = *(v0 + 16);

  return v8(0xD000000000000025, 0x80000002691E4670, v2);
}

uint64_t sub_2691BD984()
{
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v9 = v8;
  *(v4 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v4 + 24);

    v14 = *(v8 + 8);

    return v14(v1);
  }
}

uint64_t sub_2691BDAC4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2691BDB28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2691BDB7C(a1, a2);
}

uint64_t sub_2691BDB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2691E1374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2691BACA4(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2691E12A4();
  (*(v5 + 8))(a2, v4);
  sub_2691BAD14(a1);
  return v12;
}

__n128 *OUTLINED_FUNCTION_1_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x7453656369766564;
  result[2].n128_u64[1] = 0xEB00000000657461;
  result[3].n128_u64[0] = v2;
  return result;
}

uint64_t type metadata accessor for SystemQueryCATs()
{
  result = qword_2802F9928;
  if (!qword_2802F9928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691BDDEC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2691BDE40(a1, a2);
}

uint64_t sub_2691BDE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2691E1374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2691BACA4(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2691E12A4();
  (*(v5 + 8))(a2, v4);
  sub_2691BAD14(a1);
  return v12;
}

uint64_t SystemCommandsFlowProvider.__allocating_init(featureFlags:sharedObjects:)(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  memcpy((v4 + 24), a2, 0x78uLL);
  return v4;
}

uint64_t SystemCommandsFlowProvider.init(featureFlags:sharedObjects:)(uint64_t a1, const void *a2)
{
  *(v2 + 16) = a1;
  memcpy((v2 + 24), a2, 0x78uLL);
  return v2;
}

uint64_t SystemCommandsFlowProvider.makeFlowSearchResult(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = type metadata accessor for SystemCommandsIntent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_47();
  v81 = v6 - v5;
  v7 = sub_2691E1394();
  v8 = OUTLINED_FUNCTION_2(v7);
  v85 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_3();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v83 = &v73 - v16;
  v17 = sub_2691E0F24();
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  v77 = (v23 - v24);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v73 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - v29;
  v31 = sub_2691E0EE4();
  v32 = OUTLINED_FUNCTION_2(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3();
  v80 = v37 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v73 - v40;
  v42 = *(v34 + 16);
  v82 = a1;
  v43 = a1;
  v45 = v44;
  v79 = v42;
  v42(&v73 - v40, v43, v44);
  if ((*(v34 + 88))(v41, v45) == *MEMORY[0x277D5C160])
  {
    (*(v34 + 96))(v41, v45);
    (*(v20 + 32))(v30, v41, v17);
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v46 = __swift_project_value_buffer(v7, qword_2802FBA28);
    v47 = v85;
    v48 = v83;
    (*(v85 + 16))(v83, v46, v7);
    v78 = v7;
    v49 = *(v20 + 16);
    v76 = v30;
    v49(v28, v30, v17);
    v50 = sub_2691E1384();
    v75 = sub_2691E1524();
    if (os_log_type_enabled(v50, v75))
    {
      v51 = swift_slowAlloc();
      v74 = v45;
      v52 = v51;
      v73 = swift_slowAlloc();
      v87 = v73;
      *v52 = 136315138;
      v49(v77, v28, v17);
      v77 = sub_2691E13E4();
      v54 = v53;
      v55 = *(v20 + 8);
      v56 = OUTLINED_FUNCTION_9_0();
      v55(v56);
      v57 = sub_2691B98CC(v77, v54, &v87);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_2691B1000, v50, v75, "SystemCommandsFlowProvider makeFlow | uso parse: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      OUTLINED_FUNCTION_42();
      v45 = v74;
      OUTLINED_FUNCTION_42();

      v58 = v55;
      (*(v47 + 8))(v83, v78);
    }

    else
    {

      v58 = *(v20 + 8);
      v70 = OUTLINED_FUNCTION_9_0();
      v58(v70);
      (*(v47 + 8))(v48, v78);
    }

    v79(v80, v82, v45);
    v71 = v81;
    sub_2691C4820();
    sub_2691BE6B0(v71, v84);
    sub_2691BF15C(v71);
    return (v58)(v76, v17);
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v59 = __swift_project_value_buffer(v7, qword_2802FBA28);
    v60 = v85;
    (*(v85 + 16))(v14, v59, v7);
    v61 = sub_2691E1384();
    v62 = sub_2691E1524();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v45;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v86 = v63;
      v87 = v65;
      *v64 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9938, &qword_2691E2CB0);
      v66 = sub_2691E13E4();
      v68 = sub_2691B98CC(v66, v67, &v87);
      v78 = v7;
      v69 = v68;

      *(v64 + 4) = v69;
      _os_log_impl(&dword_2691B1000, v61, v62, "SystemCommandsFlowProvider makeFlow | unable to make flow with parse: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      OUTLINED_FUNCTION_42();
      v45 = v63;
      OUTLINED_FUNCTION_42();

      (*(v85 + 8))(v14, v78);
    }

    else
    {

      (*(v60 + 8))(v14, v7);
    }

    sub_2691E0B74();
    return (*(v34 + 8))(v41, v45);
  }
}

uint64_t sub_2691BE6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SystemCommandsIntent();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  v13 = sub_2691E1394();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47();
  v21 = v20 - v19;
  sub_2691C5264();
  if (v22)
  {
    type metadata accessor for SCTakePhotoFlow();
    v23 = OUTLINED_FUNCTION_6_1();
    *(v23 + 16) = 0;
LABEL_8:
    v69[0] = v23;
    sub_2691BF2E0(&qword_2802F9998, type metadata accessor for SCTakePhotoFlow);
    OUTLINED_FUNCTION_5_1();

LABEL_9:
    sub_2691E0B84();
  }

  sub_2691C5270();
  if (v24)
  {
    type metadata accessor for SCTakePhotoFlow();
    v23 = OUTLINED_FUNCTION_6_1();
    v25 = 1;
LABEL_7:
    *(v23 + 16) = v25;
    goto LABEL_8;
  }

  sub_2691C568C();
  if (v26)
  {
    type metadata accessor for SCTakePhotoFlow();
    v23 = OUTLINED_FUNCTION_6_1();
    v25 = 2;
    goto LABEL_7;
  }

  v67 = a2;
  v66 = *(v2 + 16);
  v28 = sub_2691CBBBC();
  sub_2691C4C28();
  if (v28)
  {
    if (v29)
    {
      v30 = sub_2691C5698();
      type metadata accessor for SCStartScreenRecordingFlow();
      swift_allocObject();
      v69[0] = SCStartScreenRecordingFlow.init(confirmationRequired:)(v30);
      sub_2691BF2E0(&qword_2802F9990, type metadata accessor for SCStartScreenRecordingFlow);
      OUTLINED_FUNCTION_5_1();

      goto LABEL_9;
    }

    sub_2691C58CC();
    if (v34)
    {
      type metadata accessor for SCStopScreenRecordingFlow();
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      v69[0] = v35;
      v32 = &qword_2802F9988;
      v33 = type metadata accessor for SCStopScreenRecordingFlow;
      goto LABEL_27;
    }
  }

  else if (v29)
  {
    type metadata accessor for SCInformationalStartScreenRecordingFlow();
    swift_allocObject();
    started = SCInformationalStartScreenRecordingFlow.init()();
    OUTLINED_FUNCTION_3_1(started);
    v32 = &qword_2802F9980;
    v33 = type metadata accessor for SCInformationalStartScreenRecordingFlow;
LABEL_27:
    sub_2691BF2E0(v32, v33);
    sub_2691E0B24();
    goto LABEL_28;
  }

  sub_2691C4C54();
  if (v36)
  {
    v37 = [objc_opt_self() sharedService];
    type metadata accessor for SCRestartShutdownFlow();
    v38 = swift_allocObject();
    *(v38 + 64) = sub_2691BF29C();
    *(v38 + 72) = &off_2879D5780;
    *(v38 + 40) = v37;
    *(v38 + 16) = 0;
LABEL_22:
    *(v38 + 24) = sub_2691D84D4;
    *(v38 + 32) = 0;
    v69[0] = v38;
    sub_2691BF2E0(&qword_2802F9978, type metadata accessor for SCRestartShutdownFlow);
    OUTLINED_FUNCTION_5_1();
LABEL_28:

    sub_2691E0B84();
  }

  sub_2691C5C60();
  if (v39)
  {
    v40 = [objc_opt_self() sharedService];
    type metadata accessor for SCRestartShutdownFlow();
    v38 = swift_allocObject();
    *(v38 + 64) = sub_2691BF29C();
    *(v38 + 72) = &off_2879D5780;
    *(v38 + 40) = v40;
    *(v38 + 16) = 256;
    goto LABEL_22;
  }

  if (sub_2691C68B8())
  {
    OUTLINED_FUNCTION_8_0();
    type metadata accessor for SCResetFlow();
    swift_allocObject();
    v41 = SCResetFlow.init(sharedObjects:)(v69);
    OUTLINED_FUNCTION_3_1(v41);
    v32 = &qword_2802F9968;
    v33 = type metadata accessor for SCResetFlow;
    goto LABEL_27;
  }

  if (sub_2691C68D0())
  {
    OUTLINED_FUNCTION_8_0();
    type metadata accessor for SCSoftwareUpdateFlow();
    swift_allocObject();
    v42 = SCSoftwareUpdateFlow.init(sharedObjects:)(v69);
    OUTLINED_FUNCTION_3_1(v42);
    v32 = &qword_2802F97D8;
    v33 = type metadata accessor for SCSoftwareUpdateFlow;
    goto LABEL_27;
  }

  if (sub_2691CBBB4())
  {
    if (sub_2691C699C())
    {
      type metadata accessor for SCScreenshotFlow();
      v43 = swift_allocObject();
      OUTLINED_FUNCTION_3_1(v43);
      v32 = &qword_2802F9960;
      v33 = type metadata accessor for SCScreenshotFlow;
      goto LABEL_27;
    }

    if (sub_2691C6BD0())
    {
      type metadata accessor for SCLockFlow();
      v44 = swift_allocObject();
      OUTLINED_FUNCTION_3_1(v44);
      v32 = &qword_2802F9958;
      v33 = type metadata accessor for SCLockFlow;
      goto LABEL_27;
    }

    if (sub_2691C6F7C())
    {
      if (sub_2691C6F88())
      {
        v45 = 3;
      }

      else if (sub_2691C6F94())
      {
        v45 = 0;
      }

      else if (sub_2691C70EC())
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      OUTLINED_FUNCTION_8_0();
      type metadata accessor for SCGuestModeFlow();
      swift_allocObject();
      v64 = sub_2691D71AC(v45, v69);
      OUTLINED_FUNCTION_3_1(v64);
      v32 = &qword_2802F9950;
      v33 = type metadata accessor for SCGuestModeFlow;
      goto LABEL_27;
    }

    sub_2691C71A4();
    if ((v46 & 1) != 0 && sub_2691BEFFC())
    {
      OUTLINED_FUNCTION_8_0();
      sub_2691E0C14();
      v47 = type metadata accessor for SCUnlockFlow();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      v50 = sub_2691BF3A8(&v68, v69);
      OUTLINED_FUNCTION_3_1(v50);
      v32 = &qword_2802F9948;
      v33 = type metadata accessor for SCUnlockFlow;
      goto LABEL_27;
    }

    sub_2691C76FC();
    v66 = v52;
    if (v51)
    {
      v53 = v51;
      OUTLINED_FUNCTION_8_0();
      type metadata accessor for SCSystemQueryFlow();
      swift_allocObject();
      v54 = SCSystemQueryFlow.init(systemCategory:sharedObjects:)(v66, v53, v69);
      OUTLINED_FUNCTION_3_1(v54);
      v32 = &qword_2802F9940;
      v33 = type metadata accessor for SCSystemQueryFlow;
      goto LABEL_27;
    }
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v55 = __swift_project_value_buffer(v13, qword_2802FBA28);
  (*(v16 + 16))(v21, v55, v13);
  sub_2691BF1DC(a1, v12);
  v56 = sub_2691E1384();
  v57 = sub_2691E1524();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v69[0] = v59;
    *v58 = 136315138;
    sub_2691BF1DC(v12, v9);
    v60 = sub_2691E13E4();
    v62 = v61;
    sub_2691BF15C(v12);
    v63 = sub_2691B98CC(v60, v62, v69);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_2691B1000, v56, v57, "SystemCommandsFlowProvider getSupportedFlowFor | no flow found for intent: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();
  }

  else
  {

    sub_2691BF15C(v12);
  }

  (*(v16 + 8))(v21, v13);
  return sub_2691E0B74();
}

BOOL sub_2691BEFFC()
{
  v0 = sub_2691E0DE4();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_47();
  v8 = v7 - v6;
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2691E0DD4();
  v9 = sub_2691E0C24();
  (*(v3 + 8))(v8, v0);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return (v9 & 1) == 0;
}

uint64_t SystemCommandsFlowProvider.deinit()
{
  v1 = *(v0 + 16);

  sub_2691B8A88(v0 + 24);
  return v0;
}

uint64_t SystemCommandsFlowProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_2691B8A88(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_2691BF15C(uint64_t a1)
{
  v2 = type metadata accessor for SystemCommandsIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2691BF1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemCommandsIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2691BF29C()
{
  result = qword_2802F9970;
  if (!qword_2802F9970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F9970);
  }

  return result;
}

uint64_t sub_2691BF2E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_2691E0B24();
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_2691BF240(v0 + 24, v1 - 208);
}

uint64_t sub_2691BF3A8(__int128 *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_input;
  v6 = sub_2691E0EB4();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  sub_2691B8ADC(a1, v2 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_aceService);
  sub_2691B8078(a2 + 40, v2 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_deviceState);
  sub_2691B8078(a2 + 80, v8);
  sub_2691B8A88(a2);
  sub_2691B8ADC(v8, v2 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_outputPublisher);
  return v2;
}

uint64_t sub_2691BF454(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F99C8, &qword_2691E2DE8);
  v4 = OUTLINED_FUNCTION_37(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = sub_2691E0EB4();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_input;
  swift_beginAccess();
  sub_2691C0AD4(v8, v1 + v10);
  swift_endAccess();
  return 1;
}

uint64_t sub_2691BF554()
{
  type metadata accessor for SCUnlockFlow();
  sub_2691C0A7C();
  return sub_2691E0B34();
}

uint64_t sub_2691BF5B4()
{
  OUTLINED_FUNCTION_34();
  v1[25] = v2;
  v1[26] = v0;
  v3 = sub_2691E0CA4();
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  v1[27] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E0E64();
  v1[28] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[29] = v7;
  v9 = *(v8 + 64);
  v1[30] = OUTLINED_FUNCTION_44();
  v10 = sub_2691E1394();
  v1[31] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[32] = v11;
  v13 = *(v12 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v14 = sub_2691E1374();
  OUTLINED_FUNCTION_37(v14);
  v16 = *(v15 + 64);
  v1[36] = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2691BF708()
{
  sub_2691E0EF4();
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_35();
  if (sub_2691E0C54())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
LABEL_4:
    v4 = v0[36];
    v5 = v0[26];
    type metadata accessor for SystemControlCATPatternsExecutor();
    sub_2691E1294();
    sub_2691B8078(v5 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_deviceState, (v0 + 12));
    sub_2691E1274();
    sub_2691C0B44((v0 + 12), &unk_2802F99D0, &qword_2691E2320);
    sub_2691E1284();

    sub_2691E1364();
    v0[37] = sub_2691E12C4();
    v6 = swift_task_alloc();
    v0[38] = v6;
    *v6 = v0;
    v6[1] = sub_2691BFA3C;

    return sub_2691BD83C(0);
  }

  sub_2691E0EF4();
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_35();
  v3 = sub_2691E0C44();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v3)
  {
    goto LABEL_4;
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v8 = v0[34];
  v9 = v0[32];
  __swift_project_value_buffer(v0[31], qword_2802FBA28);
  v10 = OUTLINED_FUNCTION_9_1();
  v11(v10);
  v12 = sub_2691E1384();
  v13 = sub_2691E1524();
  if (os_log_type_enabled(v12, v13))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v14, v15, "SCUnlockFlow execute | cannot unlock device on watchOS");
    OUTLINED_FUNCTION_42();
  }

  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[32];
  v20 = v0[25];
  v19 = v0[26];

  v21 = *(v18 + 8);
  v22 = OUTLINED_FUNCTION_35();
  v23(v22);

  sub_2691E0E14();
  v24 = sub_2691E0A74();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v0[22] = sub_2691E0A64();
  sub_2691E0D34();

  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_31();

  return v27();
}

uint64_t sub_2691BFA3C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = v2[38];
  v11 = *v1;
  v3[39] = v5;
  v3[40] = v0;

  if (!v0)
  {
    v6 = v3[37];
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2691BFB4C()
{
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[35];
  v2 = v0[32];
  __swift_project_value_buffer(v0[31], qword_2802FBA28);
  v3 = OUTLINED_FUNCTION_9_1();
  v4(v3);
  v5 = sub_2691E1384();
  v6 = sub_2691E1534();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v7, v8, "SCUnlockFlow execute | capturing unlock request and throwing usupported dialog");
    OUTLINED_FUNCTION_42();
  }

  v9 = v0[39];
  v10 = v0[35];
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[27];
  v16 = v0[26];
  v25 = v0[25];
  v26 = v0[28];

  (*(v11 + 8))(v10, v12);
  sub_2691E0C84();
  sub_2691E0E24();
  sub_2691B8078(v16 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_outputPublisher, (v0 + 17));
  v17 = sub_2691E0DA4();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_2691E0D94();
  v20 = sub_2691E0B04();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v0[24] = sub_2691E0AF4();
  sub_2691E0B14();

  sub_2691E0D44();

  (*(v14 + 8))(v13, v26);
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_31();

  return v23();
}

uint64_t sub_2691BFDB4()
{
  v32 = v0;
  v1 = v0[37];

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[40];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = __swift_project_value_buffer(v5, qword_2802FBA28);
  (*(v4 + 16))(v3, v6, v5);
  MEMORY[0x26D633490](v2);
  v7 = sub_2691E1384();
  v8 = sub_2691E1544();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[40];
    v11 = v0[32];
    v10 = v0[33];
    v12 = v0[31];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315138;
    v0[23] = v9;
    MEMORY[0x26D633490](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v15 = sub_2691E13E4();
    v17 = sub_2691B98CC(v15, v16, &v31);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2691B1000, v7, v8, "SCUnlockFlow execute | error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v18 = *(v11 + 8);
    v19 = OUTLINED_FUNCTION_35();
    v20(v19);
  }

  else
  {
    v22 = v0[32];
    v21 = v0[33];
    v23 = v0[31];

    v24 = *(v22 + 8);
    v25 = OUTLINED_FUNCTION_35();
    v26(v25);
  }

  v27 = v0[40];
  v28 = v0[25];
  sub_2691E0D54();

  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_31();

  return v29();
}

uint64_t sub_2691BFFF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691C008C();
}

uint64_t sub_2691C008C()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v4 = *(v3 + 64);
  v0[23] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E0DB4();
  v0[24] = v5;
  OUTLINED_FUNCTION_1(v5);
  v0[25] = v6;
  v8 = *(v7 + 64);
  v0[26] = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691C0160()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  v1 = *(MEMORY[0x277D5BDC0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_2691C0200;
  v3 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v3, v0 + 16);
}

uint64_t sub_2691C0200()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *(v2 + 216);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 224) = v0;

  sub_2691C0B44(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2691C0318()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  v6 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v7 = sub_2691E0D84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = sub_2691E0F34();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v8;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2691E0D14();
  sub_2691C0B44(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691C0B44(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t sub_2691C04B4()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[26];
  v2 = v0[23];

  OUTLINED_FUNCTION_31();
  v4 = v0[28];

  return v3();
}

uint64_t sub_2691C051C()
{
  sub_2691C0B44(v0 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_input, &qword_2802F99C8, &qword_2691E2DE8);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_aceService));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_outputPublisher));
  return v0;
}

uint64_t sub_2691C0584()
{
  sub_2691C051C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SCUnlockFlow()
{
  result = qword_2802F99B0;
  if (!qword_2802F99B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2691C0630()
{
  sub_2691C06CC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2691C06CC()
{
  if (!qword_2802F99C0)
  {
    sub_2691E0EB4();
    v0 = sub_2691E1574();
    if (!v1)
    {
      atomic_store(v0, &qword_2802F99C0);
    }
  }
}

uint64_t sub_2691C0724(uint64_t a1)
{
  v2 = *v1;
  sub_2691BF454(a1);
  return 1;
}

uint64_t sub_2691C074C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2691C07FC;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2691C07FC()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2691C090C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B7DC0;

  return sub_2691BF5B4();
}

uint64_t sub_2691C09A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCUnlockFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_2691C09E4()
{
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691BFFF4();
}

unint64_t sub_2691C0A7C()
{
  result = qword_2802F9948;
  if (!qword_2802F9948)
  {
    type metadata accessor for SCUnlockFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9948);
  }

  return result;
}

uint64_t sub_2691C0AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F99C8, &qword_2691E2DE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691C0B44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_1()
{
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[30];
  v7 = v0[27];
}

void OUTLINED_FUNCTION_12_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t SCResetFlow.__allocating_init(sharedObjects:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SCResetFlow.init(sharedObjects:)(a1);
  return v2;
}

uint64_t SCResetFlow.init(sharedObjects:)(uint64_t a1)
{
  sub_2691B8078(a1 + 40, v1 + 16);
  sub_2691B8078(a1 + 80, v4);
  sub_2691B8A88(a1);
  sub_2691B8ADC(v4, v1 + 56);
  return v1;
}

uint64_t SCResetFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[14] = v2;
  v1[15] = v0;
  v3 = *(*(sub_2691E0CA4() - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v4 = sub_2691E0E64();
  v1[17] = v4;
  v5 = *(v4 - 8);
  v1[18] = v5;
  v6 = *(v5 + 64) + 15;
  v1[19] = swift_task_alloc();
  v7 = sub_2691E1394();
  v1[20] = v7;
  v8 = *(v7 - 8);
  v1[21] = v8;
  v9 = *(v8 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v10 = *(*(sub_2691E1374() - 8) + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691C0E18, 0, 0);
}

uint64_t sub_2691C0E18()
{
  v1 = v0[24];
  v2 = v0[15];
  type metadata accessor for SystemControlCATPatternsExecutor();
  sub_2691E1294();
  sub_2691B8078(v2 + 16, (v0 + 2));
  sub_2691E1274();
  sub_2691B80DC((v0 + 2));
  sub_2691E1284();

  sub_2691E1364();
  v3 = sub_2691E12C4();
  v0[25] = v3;

  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_2691C0F50;
  v5 = v0[15];

  return sub_2691BD1D8(0, v3, v5);
}

uint64_t sub_2691C0F50()
{
  OUTLINED_FUNCTION_34();
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  v2[27] = v4;
  v2[28] = v0;

  if (v0)
  {
    v5 = sub_2691C12E8;
  }

  else
  {
    v6 = v2[25];

    v5 = sub_2691C1068;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2691C1068()
{
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = __swift_project_value_buffer(v2, qword_2802FBA28);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2691E1384();
  v6 = sub_2691E1534();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2691B1000, v5, v6, "SCResetFlow execute | reset pattern successfully executed", v7, 2u);
    MEMORY[0x26D6335B0](v7, -1, -1);
  }

  v8 = v0[27];
  v9 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v24 = v0[14];
  v25 = v0[17];

  (*(v10 + 8))(v9, v11);
  sub_2691E0C84();
  sub_2691E0E24();
  sub_2691B8078(v15 + 56, (v0 + 7));
  v16 = sub_2691E0DA4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_2691E0D94();
  v19 = sub_2691E0B04();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v0[13] = sub_2691E0AF4();
  sub_2691E0B14();

  sub_2691E0D44();

  (*(v13 + 8))(v12, v25);
  OUTLINED_FUNCTION_2_0();

  v22 = v0[1];

  return v22();
}

uint64_t sub_2691C12E8()
{
  v26 = v0;
  v1 = v0[25];

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[28];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = __swift_project_value_buffer(v5, qword_2802FBA28);
  (*(v4 + 16))(v3, v6, v5);
  MEMORY[0x26D633490](v2);
  v7 = sub_2691E1384();
  v8 = sub_2691E1544();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[28];
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    v0[12] = v9;
    MEMORY[0x26D633490](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v15 = sub_2691E13E4();
    v17 = sub_2691B98CC(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2691B1000, v7, v8, "SCResetFlow execute | error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x26D6335B0](v14, -1, -1);
    MEMORY[0x26D6335B0](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v19 = v0[21];
    v18 = v0[22];
    v20 = v0[20];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[28];
  v22 = v0[14];
  sub_2691E0D54();

  OUTLINED_FUNCTION_2_0();

  v23 = v0[1];

  return v23();
}

uint64_t SCResetFlow.execute(completion:)()
{
  type metadata accessor for SCResetFlow();
  sub_2691C171C();
  return sub_2691E0B34();
}

uint64_t SCResetFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  return v0;
}

uint64_t SCResetFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2691C1624()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B96D0;

  return SCResetFlow.execute()();
}

uint64_t sub_2691C16C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCResetFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

unint64_t sub_2691C171C()
{
  result = qword_2802F9968;
  if (!qword_2802F9968)
  {
    type metadata accessor for SCResetFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9968);
  }

  return result;
}

uint64_t SCInformationalStartScreenRecordingFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  SCInformationalStartScreenRecordingFlow.init()();
  return v0;
}

uint64_t SCInformationalStartScreenRecordingFlow.init()()
{
  v1 = sub_2691E1374();
  v2 = OUTLINED_FUNCTION_37(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_0();
  *(v0 + 16) = 0;
  type metadata accessor for ScreenRecordingCATs();
  sub_2691E1364();
  sub_2691E1294();
  sub_2691E0EF4();
  sub_2691E1274();
  sub_2691C0B44(v6, &unk_2802F99D0, &qword_2691E2320);
  sub_2691E1284();

  *(v0 + 24) = sub_2691E12C4();
  return v0;
}

uint64_t SCInformationalStartScreenRecordingFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_2691E1394();
  v1[11] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[12] = v4;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2691C1954()
{
  v69 = v0;
  sub_2691E0EF4();
  v1 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_35();
  v2 = sub_2691E0C64();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v2)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    __swift_project_value_buffer(*(v0 + 88), qword_2802FBA28);
    v5 = OUTLINED_FUNCTION_9_1();
    v6(v5);
    v7 = sub_2691E1384();
    v8 = sub_2691E1524();
    if (os_log_type_enabled(v7, v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v9, v10, "SCInformationalStartScreenRecordingFlow execute | cannot screen record on watchOS");
      OUTLINED_FUNCTION_42();
    }

    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 72);

    v16 = *(v12 + 8);
    v17 = OUTLINED_FUNCTION_35();
    v18(v17);
    *(v14 + 16) = 2;

    sub_2691E0E14();
    v19 = sub_2691E0A74();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    *(v0 + 64) = sub_2691E0A64();
LABEL_18:
    sub_2691E0D34();

    goto LABEL_19;
  }

  v22 = *(v0 + 80);
  if (!*(v22 + 16))
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v43 = *(v0 + 120);
    v44 = *(v0 + 96);
    __swift_project_value_buffer(*(v0 + 88), qword_2802FBA28);
    v45 = OUTLINED_FUNCTION_9_1();
    v46(v45);
    v47 = sub_2691E1384();
    v48 = sub_2691E1524();
    if (os_log_type_enabled(v47, v48))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v49, v50, "SCInformationalStartScreenRecordingFlow execute");
      OUTLINED_FUNCTION_42();
    }

    v51 = *(v0 + 120);
    v52 = *(v0 + 88);
    v53 = *(v0 + 96);
    v55 = *(v0 + 72);
    v54 = *(v0 + 80);

    v56 = *(v53 + 8);
    v57 = OUTLINED_FUNCTION_35();
    v58(v57);

    sub_2691E0E14();
    v59 = sub_2691E0A74();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    *(v0 + 56) = sub_2691E0A64();
    goto LABEL_18;
  }

  v23 = *(v0 + 80);
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
    v67 = *(v0 + 80);
  }

  v24 = *(v0 + 112);
  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  v27 = __swift_project_value_buffer(v25, qword_2802FBA28);
  (*(v26 + 16))(v24, v27, v25);

  v28 = sub_2691E1384();
  v29 = sub_2691E1524();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 112);
  v32 = *(v0 + 88);
  v33 = *(v0 + 96);
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v68 = v35;
    *v34 = 136315138;
    *(v0 + 128) = *(v22 + 16);
    v36 = sub_2691E13E4();
    v38 = sub_2691B98CC(v36, v37, &v68);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_2691B1000, v28, v29, "SCInformationalStartScreenRecordingFlow execute | flow completed with state: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();
  }

  v39 = *(v33 + 8);
  v40 = OUTLINED_FUNCTION_35();
  v41(v40);
  v42 = *(v0 + 72);
  sub_2691E0D54();
LABEL_19:
  v63 = *(v0 + 112);
  v62 = *(v0 + 120);
  v64 = *(v0 + 104);

  OUTLINED_FUNCTION_31();

  return v65();
}

uint64_t sub_2691C1DCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B8324;

  return sub_2691C277C();
}

uint64_t sub_2691C1E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691C1F5C();
}

uint64_t SCInformationalStartScreenRecordingFlow.execute(completion:)()
{
  type metadata accessor for SCInformationalStartScreenRecordingFlow();
  sub_2691C2E0C();
  return sub_2691E0B34();
}

uint64_t sub_2691C1F5C()
{
  OUTLINED_FUNCTION_34();
  v1[17] = v2;
  v1[18] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  v1[19] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E0DB4();
  v1[20] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[21] = v7;
  v9 = *(v8 + 64);
  v1[22] = OUTLINED_FUNCTION_44();
  v10 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2691C202C()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0[18] + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  v0[23] = v2;
  *v2 = v3;
  v2[1] = sub_2691C20C0;
  v4 = v0[22];

  return sub_2691D7F8C();
}

uint64_t sub_2691C20C0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = *(v2 + 184);
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 192) = v0;

  if (v0)
  {
    v7 = sub_2691C235C;
  }

  else
  {
    v7 = sub_2691C21C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2691C21C4()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  sub_2691E0EF4();
  sub_2691E0EF4();
  v7 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_2691E0C34();
  sub_2691C23C4();
  v8 = sub_2691E0D84();
  v9 = OUTLINED_FUNCTION_16_0(v8);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v6[3] = v9;
  v6[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_2691E0CF4();

  sub_2691C0B44(v0 + 96, &unk_2802F99F0, &unk_2691E3010);
  sub_2691C0B44(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  OUTLINED_FUNCTION_31();

  return v11();
}

uint64_t sub_2691C235C()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[22];
  v2 = v0[19];

  OUTLINED_FUNCTION_31();
  v4 = v0[24];

  return v3();
}

uint64_t sub_2691C23C4()
{
  v2 = sub_2691E1394();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v6 = OUTLINED_FUNCTION_37(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F9A00, qword_2691E3020);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = *(v0 + 24);
  sub_2691D7EBC();
  v16 = sub_2691E1744();
  v18 = v17;
  sub_2691C0B44(v14, &unk_2802F9A00, qword_2691E3020);
  if (v18)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D47AC8]) init];
    sub_2691E0994();
    v20 = sub_2691E09A4();
    v21 = 0;
    if (__swift_getEnumTagSinglePayload(v10, 1, v20) != 1)
    {
      v21 = sub_2691E0984();
      (*(*(v20 - 8) + 8))(v10, v20);
    }

    [v19 setRef_];

    v22 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
    sub_2691C2FBC(v16, v18, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9460, &unk_2691E2330);
    v23 = swift_allocObject();
    v31 = xmmword_2691E2120;
    *(v23 + 16) = xmmword_2691E2120;
    *(v23 + 32) = v19;
    v24 = v19;
    sub_2691C3020(v23, v22);
    v25 = swift_allocObject();
    *(v25 + 16) = v31;
    *(v25 + 32) = v22;
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v26 = __swift_project_value_buffer(v2, qword_2802FBA28);
    (*(v3 + 16))(v1, v26, v2);
    v27 = sub_2691E1384();
    v28 = sub_2691E1544();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2691B1000, v27, v28, "Failed to localize button label.", v29, 2u);
      OUTLINED_FUNCTION_42();
    }

    (*(v3 + 8))(v1, v2);
    return MEMORY[0x277D84F90];
  }

  return v25;
}

uint64_t sub_2691C277C()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v4 = *(v3 + 64);
  v0[23] = OUTLINED_FUNCTION_44();
  v5 = sub_2691E0DB4();
  v0[24] = v5;
  OUTLINED_FUNCTION_1(v5);
  v0[25] = v6;
  v8 = *(v7 + 64);
  v0[26] = OUTLINED_FUNCTION_44();
  v9 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2691C284C()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  v1 = *(MEMORY[0x277D5BDC0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 216) = v2;
  *v2 = v3;
  v2[1] = sub_2691C28E8;
  v4 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v4, v0 + 16);
}

uint64_t sub_2691C28E8()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *(v2 + 216);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 224) = v0;

  sub_2691C0B44(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  if (v0)
  {
    v7 = sub_2691C04B4;
  }

  else
  {
    v7 = sub_2691C2A04;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2691C2A04()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  v6 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v7 = sub_2691E0D84();
  v8 = OUTLINED_FUNCTION_16_0(v7);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v9 = MEMORY[0x277D5C1D8];
  v5[3] = v8;
  v5[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2691E0D14();
  sub_2691C0B44(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691C0B44(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t SCInformationalStartScreenRecordingFlow.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SCInformationalStartScreenRecordingFlow.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2691C2C04()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2691B7DC0;

  return SCInformationalStartScreenRecordingFlow.execute()();
}

uint64_t sub_2691C2CA0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SCInformationalStartScreenRecordingFlow();

  return MEMORY[0x2821BA658](started, a2);
}

uint64_t sub_2691C2CD8()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_12_1(v1);

  return sub_2691C1E64();
}

uint64_t sub_2691C2D60()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_12_1(v1);

  return sub_2691C1DCC();
}

unint64_t sub_2691C2E0C()
{
  result = qword_2802F9980;
  if (!qword_2802F9980)
  {
    type metadata accessor for SCInformationalStartScreenRecordingFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9980);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SCInformationalStartScreenRecordingFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691C2F2CLL);
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

unint64_t sub_2691C2F68()
{
  result = qword_2802F99E0;
  if (!qword_2802F99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F99E0);
  }

  return result;
}

void sub_2691C2FBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2691E13C4();

  [a3 setText_];
}

void sub_2691C3020(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F9A10, qword_2691E3038);
  v3 = sub_2691E1484();

  [a2 setCommands_];
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_2691E0F34();
}

uint64_t type metadata accessor for ScreenRecordingCATsSimple()
{
  result = qword_2802F9A20;
  if (!qword_2802F9A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691C31AC()
{
  v1 = *(MEMORY[0x277D55C70] + 4);
  v5 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_2691C3270;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD00000000000002ALL, 0x80000002691E4900, v3);
}

uint64_t sub_2691C3270(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2691C3370(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2691C33C4(a1, a2);
}

uint64_t sub_2691C33C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_2691E1374();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2691BACA4(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_2691E1304();
  (*(v8 + 8))(a2, v2);
  sub_2691BAD14(a1);
  return v16;
}

uint64_t sub_2691C3520(uint64_t a1, uint64_t a2)
{
  v5 = sub_2691E1374();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2691E1314();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_2691C3620()
{
  v0 = sub_2691E1334();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for SystemControlCATs()
{
  result = qword_2802F9A30;
  if (!qword_2802F9A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691C36FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2691C3750(a1, a2);
}

uint64_t sub_2691C3750(uint64_t a1, uint64_t a2)
{
  v4 = sub_2691E1374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2691BACA4(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2691E12A4();
  (*(v5 + 8))(a2, v4);
  sub_2691BAD14(a1);
  return v12;
}

uint64_t sub_2691C38C4@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_2691E1394();
  v2 = OUTLINED_FUNCTION_2(v1);
  v55 = v3;
  v56 = v2;
  v5 = *(v4 + 64);
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_47();
  v54 = v7 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A40, qword_2691E30F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v10 = &v53 - v9;
  v11 = sub_2691E0F64();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47();
  v19 = v18 - v17;
  v20 = sub_2691E0F24();
  v21 = OUTLINED_FUNCTION_2(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  v28 = v27 - v26;
  v29 = sub_2691E0EE4();
  v30 = OUTLINED_FUNCTION_2(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  v37 = v36 - v35;
  (*(v32 + 16))(v36 - v35, v57, v29);
  if ((*(v32 + 88))(v37, v29) == *MEMORY[0x277D5C160])
  {
    (*(v32 + 96))(v37, v29);
    (*(v23 + 32))(v28, v37, v20);
    sub_2691E0F14();
    v38 = sub_2691E0F54();
    (*(v14 + 8))(v19, v11);
    sub_2691C46AC(v38, v10);

    v39 = sub_2691E0FF4();
    if (__swift_getEnumTagSinglePayload(v10, 1, v39) == 1)
    {
      v57 = v23;
      sub_2691C4328(v10);
      v40 = v58;
      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v41 = v56;
      v42 = __swift_project_value_buffer(v56, qword_2802FBA28);
      v44 = v54;
      v43 = v55;
      (*(v55 + 16))(v54, v42, v41);
      v45 = sub_2691E1384();
      v46 = sub_2691E1554();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_51();
        *v47 = 0;
        _os_log_impl(&dword_2691B1000, v45, v46, "Parse-Extension#firstUserDialogAct No user dialog act found in userParse.", v47, 2u);
        OUTLINED_FUNCTION_42();
      }

      (*(v43 + 8))(v44, v41);
      (*(v57 + 8))(v28, v20);
      v48 = v40;
      v49 = 1;
    }

    else
    {
      (*(v23 + 8))(v28, v20);
      v52 = v58;
      (*(*(v39 - 8) + 32))(v58, v10, v39);
      v48 = v52;
      v49 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v48, v49, 1, v39);
  }

  else
  {
    v50 = sub_2691E0FF4();
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v50);
    return (*(v32 + 8))(v37, v29);
  }
}

uint64_t sub_2691C3D84()
{
  v1 = sub_2691E1394();
  v2 = OUTLINED_FUNCTION_2(v1);
  v52 = v3;
  v53 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A40, qword_2691E30F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - v14;
  v16 = sub_2691E0FF4();
  v17 = OUTLINED_FUNCTION_2(v16);
  v51 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  v50 = v22 - v21;
  v23 = sub_2691E0EE4();
  v24 = OUTLINED_FUNCTION_2(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47();
  v31 = v30 - v29;
  (*(v26 + 16))(v30 - v29, v0, v23);
  v32 = 0;
  if ((*(v26 + 88))(v31, v23) == *MEMORY[0x277D5C160])
  {
    sub_2691C38C4(v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_2691C4328(v15);
      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v33 = v53;
      v34 = __swift_project_value_buffer(v53, qword_2802FBA28);
      v35 = v52;
      (*(v52 + 16))(v8, v34, v33);
      v36 = sub_2691E1384();
      v37 = sub_2691E1554();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_51();
        *v38 = 0;
        _os_log_impl(&dword_2691B1000, v36, v37, "Parse-Extension#firstUsoTask No user dialog act found in userParse.", v38, 2u);
        OUTLINED_FUNCTION_42();
      }

      (*(v35 + 8))(v8, v33);
LABEL_9:
      v32 = 0;
      goto LABEL_10;
    }

    (*(v51 + 32))(v50, v15, v16);
    v40 = sub_2691E1054();
    v41 = sub_2691B8328();
    v43 = v52;
    v42 = v53;
    if (!v41)
    {

      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v44 = __swift_project_value_buffer(v42, qword_2802FBA28);
      (*(v43 + 16))(v11, v44, v42);
      v45 = sub_2691E1384();
      v46 = sub_2691E1554();
      if (os_log_type_enabled(v45, v46))
      {
        *OUTLINED_FUNCTION_51() = 0;
        OUTLINED_FUNCTION_3_2(&dword_2691B1000, v47, v48, "Parse-Extension#firstUsoTask No tasks found in input");
        OUTLINED_FUNCTION_42();
      }

      (*(v43 + 8))(v11, v42);
      (*(v51 + 8))(v50, v16);
      goto LABEL_9;
    }

    sub_2691B832C(0, (v40 & 0xC000000000000001) == 0, v40);
    if ((v40 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x26D632F20](0, v40);
    }

    else
    {
      v32 = *(v40 + 32);
    }

    (*(v51 + 8))(v50, v16);
  }

LABEL_10:
  (*(v26 + 8))(v31, v23);
  return v32;
}

uint64_t sub_2691C4328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A40, qword_2691E30F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2691C43C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A40, qword_2691E30F0);
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

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2691C449C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A40, qword_2691E30F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SystemCommandsIntent()
{
  result = qword_2802F9A48;
  if (!qword_2802F9A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2691C459C()
{
  sub_2691C4658(319, &qword_2802F9A58, MEMORY[0x277D5DB80]);
  if (v0 <= 0x3F)
  {
    sub_2691C4658(319, &qword_2802F9A60, MEMORY[0x277D5F450]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2691C4658(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2691E1574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2691C46C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

BOOL sub_2691C4770(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_2691C4820()
{
  OUTLINED_FUNCTION_26_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_2691E0EE4();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_3();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_43_0();
  v15 = sub_2691E1394();
  v16 = OUTLINED_FUNCTION_2(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_3();
  v61 = (v21 - v22);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_16_1(v15, qword_2802FBA28);
  v26 = v18[2];
  v59 = v27;
  v60 = v18 + 2;
  v58 = v26;
  (v26)(v25);
  v63 = v18;
  v64 = v2;
  v28 = *(v8 + 16);
  v28(v0, v2, v5);
  v29 = sub_2691E1384();
  v62 = v15;
  v30 = v29;
  v31 = v8;
  v32 = sub_2691E1524();
  if (os_log_type_enabled(v30, v32))
  {
    v33 = OUTLINED_FUNCTION_72();
    v57 = v4;
    v34 = v33;
    v56 = swift_slowAlloc();
    v65 = v56;
    *v34 = 136315138;
    v28(v13, v0, v5);
    v35 = sub_2691E13E4();
    v37 = v36;
    v38 = OUTLINED_FUNCTION_50_0(v31);
    v39(v38);
    v40 = sub_2691B98CC(v35, v37, &v65);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_2691B1000, v30, v32, "SystemCommandsIntent init | parse: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    OUTLINED_FUNCTION_42();
    v4 = v57;
    OUTLINED_FUNCTION_42();
  }

  else
  {

    v43 = OUTLINED_FUNCTION_50_0(v31);
    v44(v43);
  }

  v41 = v62;
  v42 = *(v63 + 1);
  v42(v25, v62);
  v45 = v64;
  sub_2691C38C4(v4);
  v46 = sub_2691C3D84();
  if (v46)
  {
    v47 = v46;
    v0(v45, v5);
  }

  else
  {
    v58(v61, v59, v41);
    v48 = sub_2691E1384();
    v49 = sub_2691E1534();
    if (OUTLINED_FUNCTION_19(v49))
    {
      v50 = OUTLINED_FUNCTION_51();
      v63 = v0;
      v51 = v50;
      *v50 = 0;
      OUTLINED_FUNCTION_49_0();
      _os_log_impl(v52, v53, v54, v55, v51, 2u);
      v0 = v63;
      OUTLINED_FUNCTION_42();
    }

    v0(v45, v5);
    v42(v61, v41);
    v47 = 0;
  }

  *(v4 + *(type metadata accessor for SystemCommandsIntent() + 20)) = v47;
  OUTLINED_FUNCTION_24_0();
}

void sub_2691C4C54()
{
  OUTLINED_FUNCTION_26_0();
  v4 = sub_2691E1194();
  v5 = OUTLINED_FUNCTION_1_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A80, &qword_2691E3148);
  OUTLINED_FUNCTION_27(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A88, &qword_2691E3150);
  v17 = OUTLINED_FUNCTION_37(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_46_0();
  MEMORY[0x28223BE20](v21);
  v23 = v41 - v22;
  v24 = *(v1 + *(type metadata accessor for SystemCommandsIntent() + 20));
  sub_2691E1134();
  if (!v43)
  {
    sub_2691CAE08(v42, &qword_2802F9A70, &qword_2691E3140);
LABEL_5:
    sub_2691E1134();
    if (v43)
    {
      sub_2691E1154();
      OUTLINED_FUNCTION_5_3();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_2691E11F4();
      if (!v42[0])
      {

        goto LABEL_25;
      }

      v41[0] = v7;

      sub_2691E11F4();

      if (v42[0] && (v25 = sub_2691E10E4(), , v25))
      {
        sub_2691E1184();
      }

      else
      {
        OUTLINED_FUNCTION_15_0(v23);
      }

      v29 = v41[0];
      (*(v41[0] + 104))(v3, *MEMORY[0x277D5EE50], v0);
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v0);
      v30 = *(v10 + 48);
      sub_2691C824C(v23, v15);
      sub_2691C824C(v3, &v15[v30]);
      OUTLINED_FUNCTION_6_2(v15);
      if (v31)
      {

        OUTLINED_FUNCTION_52_0(v3);
        OUTLINED_FUNCTION_52_0(v23);
        OUTLINED_FUNCTION_6_2(&v15[v30]);
        if (v31)
        {
          sub_2691CAE08(v15, &qword_2802F9A88, &qword_2691E3150);
          goto LABEL_25;
        }
      }

      else
      {
        sub_2691C824C(v15, v2);
        OUTLINED_FUNCTION_6_2(&v15[v30]);
        if (!v31)
        {
          v35 = *(v29 + 32);
          v36 = OUTLINED_FUNCTION_28_0();
          v37(v36);
          sub_2691C82BC(&qword_2802F9A90, MEMORY[0x277D5EE58]);
          OUTLINED_FUNCTION_38_0();
          sub_2691E13B4();

          v38 = *(v29 + 8);
          v39 = OUTLINED_FUNCTION_37_0();
          v38(v39);
          sub_2691CAE08(v3, &qword_2802F9A88, &qword_2691E3150);
          sub_2691CAE08(v23, &qword_2802F9A88, &qword_2691E3150);
          v40 = OUTLINED_FUNCTION_29_0();
          v38(v40);
          sub_2691CAE08(v15, &qword_2802F9A88, &qword_2691E3150);
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_52_0(v3);
        OUTLINED_FUNCTION_52_0(v23);
        v32 = *(v29 + 8);
        v33 = OUTLINED_FUNCTION_29_0();
        v34(v33);
      }

      v26 = &qword_2802F9A80;
      v27 = &qword_2691E3148;
      v28 = v15;
    }

    else
    {
      v26 = &qword_2802F9A70;
      v27 = &qword_2691E3140;
      v28 = v42;
    }

    sub_2691CAE08(v28, v26, v27);
    goto LABEL_25;
  }

  sub_2691E11E4();
  OUTLINED_FUNCTION_5_3();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  OUTLINED_FUNCTION_24_0();
}

uint64_t sub_2691C50E4(char a1, char a2)
{
  v2 = "CONFIRMATION_CANCEL";
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = &unk_2691E4140;
  }

  else
  {
    v5 = "CONFIRMATION_CANCEL";
  }

  if (a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if ((a2 & 1) == 0)
  {
    v2 = &unk_2691E4140;
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2691E16D4();
  }

  return v8 & 1;
}

uint64_t sub_2691C5184()
{
  sub_2691E11D4();
  sub_2691C82BC(&qword_2802F9A78, MEMORY[0x277D5F0F0]);
  sub_2691E1474();
  sub_2691E1474();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2691E16D4();
  }

  return v1 & 1;
}

void sub_2691C527C()
{
  OUTLINED_FUNCTION_26_0();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A68, &qword_2691E3138);
  v7 = OUTLINED_FUNCTION_37(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = sub_2691E11D4();
  v14 = OUTLINED_FUNCTION_1_2(v13);
  v39 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_44_0();
  v20 = type metadata accessor for SystemCommandsIntent();
  OUTLINED_FUNCTION_51_0(v20);
  if (!v41)
  {
    sub_2691CAE08(v40, &qword_2802F9A70, &qword_2691E3140);
    goto LABEL_11;
  }

  sub_2691E1064();
  OUTLINED_FUNCTION_5_3();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v38 = v5;

  sub_2691E1144();

  if (!v40[0] || (v21 = sub_2691E1164(), , !v21))
  {

    OUTLINED_FUNCTION_15_0(v12);
    goto LABEL_10;
  }

  sub_2691E11C4();

  OUTLINED_FUNCTION_6_2(v12);
  if (v22)
  {

LABEL_10:
    sub_2691CAE08(v12, &qword_2802F9A68, &qword_2691E3138);
    v5 = v38;
    goto LABEL_11;
  }

  v27 = v39;
  (*(v39 + 32))(v3, v12, v0);
  v28 = v38;
  (*(v27 + 104))(v2, *v38, v0);
  v29 = sub_2691C5184();
  v5 = v28;

  v30 = *(v27 + 8);
  v30(v2, v0);
  v30(v3, v0);
  if ((v29 & 1) == 0)
  {
LABEL_11:
    sub_2691E1134();
    if (v41)
    {
      sub_2691E1224();
      OUTLINED_FUNCTION_5_3();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_2691E1144();

      if (v40[0] && (v23 = sub_2691E1164(), , v23))
      {
        sub_2691E11C4();

        OUTLINED_FUNCTION_6_2(v1);
        if (!v22)
        {
          v31 = v39;
          v32 = *(v39 + 32);
          v33 = OUTLINED_FUNCTION_38_0();
          v34(v33);
          (*(v31 + 104))(v2, *v5, v0);
          sub_2691C5184();

          v35 = *(v31 + 8);
          v35(v2, v0);
          v36 = OUTLINED_FUNCTION_29_0();
          (v35)(v36);
          goto LABEL_22;
        }
      }

      else
      {

        OUTLINED_FUNCTION_15_0(v1);
      }

      v24 = &qword_2802F9A68;
      v25 = &qword_2691E3138;
      v26 = v1;
    }

    else
    {
      v24 = &qword_2802F9A70;
      v25 = &qword_2691E3140;
      v26 = v40;
    }

    sub_2691CAE08(v26, v24, v25);
  }

LABEL_22:
  OUTLINED_FUNCTION_24_0();
}

BOOL sub_2691C5698()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A68, &qword_2691E3138);
  OUTLINED_FUNCTION_37(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_0();
  v5 = sub_2691E11D4();
  v6 = OUTLINED_FUNCTION_1_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_0(v12);
  sub_2691E1134();
  if (!v28[3])
  {
    v14 = &qword_2802F9A70;
    v15 = &qword_2691E3140;
    v16 = v28;
LABEL_10:
    sub_2691CAE08(v16, v14, v15);
    return 1;
  }

  sub_2691E1064();
  if ((OUTLINED_FUNCTION_22_0() & 1) == 0)
  {
    return 1;
  }

  sub_2691E1144();

  if (!v28[0])
  {

    OUTLINED_FUNCTION_15_0(v0);
    goto LABEL_9;
  }

  sub_2691E1164();
  OUTLINED_FUNCTION_53_0();
  sub_2691E11C4();

  OUTLINED_FUNCTION_6_2(v0);
  if (v13)
  {

LABEL_9:
    v14 = &qword_2802F9A68;
    v15 = &qword_2691E3138;
    v16 = v0;
    goto LABEL_10;
  }

  v18 = OUTLINED_FUNCTION_14_0(v8);
  v19(v18);
  v20 = *MEMORY[0x277D5F0D0];
  v21 = *(v8 + 104);
  v22 = OUTLINED_FUNCTION_28_0();
  v23(v22);
  OUTLINED_FUNCTION_38_0();
  v24 = sub_2691C5184();

  v25 = *(v8 + 8);
  v26 = OUTLINED_FUNCTION_37_0();
  v25(v26);
  v27 = OUTLINED_FUNCTION_29_0();
  v25(v27);
  return (v24 & 1) == 0;
}

void sub_2691C58F8()
{
  OUTLINED_FUNCTION_26_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A68, &qword_2691E3138);
  OUTLINED_FUNCTION_37(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_0();
  v9 = sub_2691E11D4();
  v10 = OUTLINED_FUNCTION_1_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_51_0(v16);
  if (v35)
  {
    v4(0);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCast())
    {

      sub_2691E1214();

      if (v34[0] && (v17 = sub_2691E1124(), v19 = v18, , v19))
      {
        v20 = v17 == 0xD000000000000010 && v19 == 0x80000002691E4970;
        if (v20)
        {

          goto LABEL_23;
        }

        v21 = sub_2691E16D4();

        if (v21)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_2691CAE08(v34, &qword_2802F9A70, &qword_2691E3140);
  }

  sub_2691E1134();
  if (!v35)
  {
    v22 = &qword_2802F9A70;
    v23 = &qword_2691E3140;
    v24 = v34;
    goto LABEL_22;
  }

  v2(0);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCast())
  {

    sub_2691E1144();

    if (v34[0])
    {
      sub_2691E1164();
      OUTLINED_FUNCTION_53_0();
      sub_2691E11C4();

      OUTLINED_FUNCTION_6_2(v0);
      if (!v20)
      {
        v25 = OUTLINED_FUNCTION_14_0(v12);
        v26(v25);
        v27 = *MEMORY[0x277D5F0D0];
        v28 = *(v12 + 104);
        v29 = OUTLINED_FUNCTION_28_0();
        v30(v29);
        OUTLINED_FUNCTION_38_0();
        sub_2691C5184();

        v31 = *(v12 + 8);
        v32 = OUTLINED_FUNCTION_37_0();
        v31(v32);
        v33 = OUTLINED_FUNCTION_29_0();
        v31(v33);
        goto LABEL_23;
      }
    }

    else
    {

      OUTLINED_FUNCTION_15_0(v0);
    }

    v22 = &qword_2802F9A68;
    v23 = &qword_2691E3138;
    v24 = v0;
LABEL_22:
    sub_2691CAE08(v24, v22, v23);
  }

LABEL_23:
  OUTLINED_FUNCTION_24_0();
}

void sub_2691C5C60()
{
  OUTLINED_FUNCTION_26_0();
  v4 = type metadata accessor for SystemCommandsIntent();
  v5 = OUTLINED_FUNCTION_27(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_11_0();
  v8 = sub_2691E1394();
  v9 = OUTLINED_FUNCTION_2(v8);
  v126 = v10;
  v127 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v125 = (v13 - v14);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x28223BE20](v16);
  v124 = &v121 - v17;
  OUTLINED_FUNCTION_13();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v121 - v20;
  MEMORY[0x28223BE20](v19);
  v123 = &v121 - v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  v122 = &v121 - v24;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_46_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v121 - v27;
  v29 = v0;
  v30 = *&v0[*(v4 + 20)];
  sub_2691E1134();
  v31 = MEMORY[0x277D84F70];
  if (!v130)
  {
    sub_2691CAE08(v129, &qword_2802F9A70, &qword_2691E3140);
LABEL_9:
    sub_2691E1134();
    v42 = v127;
    if (v130)
    {
      sub_2691E1174();
      OUTLINED_FUNCTION_5_3();
      if (swift_dynamicCast())
      {

        sub_2691E1214();

        if (v129[0] && (v43 = sub_2691C7D84(0), , v43) && (sub_2691CAB20(), v45 = v44, , (v45 & 1) != 0))
        {
          if (qword_2802F9378 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          OUTLINED_FUNCTION_16_1(v42, qword_2802FBA28);
          v46 = v126;
          v47 = v124;
          (*(v126 + 16))(v124);
          v48 = sub_2691E1384();
          v49 = sub_2691E1524();
          if (OUTLINED_FUNCTION_17_0(v49))
          {
            v50 = OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_36_0(v50);
            OUTLINED_FUNCTION_10_0(&dword_2691B1000, v51, v52, "SystemCommandsIntent isShutDown | Found shutdown identifier");
            OUTLINED_FUNCTION_18_0();
          }

          else
          {
          }

          (*(v46 + 8))(v47, v42);
        }

        else
        {
          if (qword_2802F9378 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          OUTLINED_FUNCTION_16_1(v42, qword_2802FBA28);
          v65 = v126;
          (*(v126 + 16))(v3);
          v66 = sub_2691E1384();
          v67 = sub_2691E1524();
          if (OUTLINED_FUNCTION_17_0(v67))
          {
            v68 = OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_36_0(v68);
            OUTLINED_FUNCTION_10_0(&dword_2691B1000, v69, v70, "SystemCommandsIntent isShutDown | Did not find shutdown identifier");
            OUTLINED_FUNCTION_18_0();
          }

          else
          {
          }

          (*(v65 + 8))(v3, v42);
        }

        goto LABEL_77;
      }
    }

    else
    {
      sub_2691CAE08(v129, &qword_2802F9A70, &qword_2691E3140);
    }

    v53 = v126;
    if (qword_2802F9378 != -1)
    {
LABEL_81:
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_16_1(v42, qword_2802FBA28);
    (*(v53 + 16))(v125);
    sub_2691BF1DC(v29, v1);
    v54 = sub_2691E1384();
    sub_2691E1524();
    OUTLINED_FUNCTION_27_0();
    if (!os_log_type_enabled(v54, v55))
    {

      sub_2691BF15C(v1);
      v62 = *(v53 + 8);
      v63 = v125;
      v64 = v42;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_72();
    v56 = OUTLINED_FUNCTION_39_0();
    v129[0] = v56;
    *v31 = 136315138;
    v128 = *(v1 + *(v4 + 20));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AB8, &qword_2691E3178);
    v57 = v42;
    v58 = sub_2691E13E4();
    v60 = v59;
    sub_2691BF15C(v1);
    v61 = sub_2691B98CC(v58, v60, v129);

    *(v31 + 4) = v61;
    _os_log_impl(&dword_2691B1000, v54, v28, "SystemCommandsIntent isShutDown | no flow found for task: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_9_2();

    v62 = *(v53 + 8);
    v63 = v125;
LABEL_22:
    v64 = v57;
LABEL_24:
    v62(v63, v64);
    goto LABEL_77;
  }

  sub_2691E11A4();
  OUTLINED_FUNCTION_5_3();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v1 = v128;
  swift_retain_n();
  v31 = v0;
  if (sub_2691C8304())
  {

    v32 = v126;
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v33 = v127;
    __swift_project_value_buffer(v127, qword_2802FBA28);
    OUTLINED_FUNCTION_13_1();
    v34(v28);
    v35 = sub_2691E1384();
    v36 = sub_2691E1524();
    if (OUTLINED_FUNCTION_19(v36))
    {
      v37 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_47_0(v37);
      OUTLINED_FUNCTION_49_0();
      _os_log_impl(v38, v39, v40, v41, v0, 2u);
      OUTLINED_FUNCTION_9_2();
    }

    else
    {
    }

    (*(v32 + 8))(v28, v33);
    goto LABEL_77;
  }

  v71 = sub_2691E1204();
  v72 = v126;
  if (v71)
  {
    v73 = v71;

    if (sub_2691C8560(v74) & 1) != 0 || (sub_2691C9254(v73))
    {

LABEL_33:

      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v75 = v127;
      OUTLINED_FUNCTION_16_1(v127, qword_2802FBA28);
      (*(v72 + 16))(v2);

      v76 = sub_2691E1384();
      v77 = sub_2691E1524();

      if (os_log_type_enabled(v76, v77))
      {
        OUTLINED_FUNCTION_72();
        v78 = OUTLINED_FUNCTION_39_0();
        v129[0] = v78;
        *v75 = 136315138;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AC0, &qword_2691E3180);
        v80 = MEMORY[0x26D632E00](v73, v79);
        v82 = v81;

        v83 = sub_2691B98CC(v80, v82, v129);

        *(v75 + 4) = v83;
        OUTLINED_FUNCTION_49_0();
        _os_log_impl(v84, v85, v86, v87, v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v78);
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_9_2();

        (*(v72 + 8))(v2, v127);
      }

      else
      {

        (*(v72 + 8))(v2, v75);
      }

      goto LABEL_77;
    }

    v88 = sub_2691C9F48(v73);

    if (v88)
    {
      goto LABEL_33;
    }
  }

  sub_2691E1214();

  v89 = v127;
  if (v129[0])
  {

    v28 = sub_2691E1204();

    if (v28)
    {
      v42 = sub_2691B8328(v28);
      v90 = 0;
      v53 = v28 & 0xC000000000000001;
      v4 = v28 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v42 == v90)
        {

          v72 = v126;
          v89 = v127;
          goto LABEL_63;
        }

        if (v53)
        {
          v29 = MEMORY[0x26D632F20](v90, v28);
        }

        else
        {
          if (v90 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_80;
          }

          v29 = *(v28 + 8 * v90 + 32);
        }

        if (__OFADD__(v90, 1))
        {
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        sub_2691E10C4();
        if (v129[0])
        {
          v91 = sub_2691E10D4();

          if (v91)
          {
            break;
          }
        }

        ++v90;
      }

      v108 = v122;
      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v57 = v127;
      OUTLINED_FUNCTION_16_1(v127, qword_2802FBA28);
      v109 = v126;
      (*(v126 + 16))(v108);

      v110 = sub_2691E1384();
      v111 = sub_2691E1524();

      if (os_log_type_enabled(v110, v111))
      {
        OUTLINED_FUNCTION_72();
        v112 = OUTLINED_FUNCTION_39_0();
        v128 = v29;
        v129[0] = v112;
        *v31 = 136315138;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AC0, &qword_2691E3180);
        v113 = sub_2691E13E4();
        v115 = sub_2691B98CC(v113, v114, v129);

        *(v31 + 4) = v115;
        OUTLINED_FUNCTION_31_0();
        _os_log_impl(v116, v117, v118, v119, v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v112);
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_9_2();

        v62 = *(v109 + 8);
        v63 = v122;
      }

      else
      {

        v62 = *(v109 + 8);
        v63 = v108;
      }

      goto LABEL_22;
    }

LABEL_63:
    if (sub_2691CAAAC())
    {
      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_16_1(v89, qword_2802FBA28);
      v100 = v123;
      (*(v72 + 16))(v123);
      v101 = sub_2691E1384();
      v102 = sub_2691E1524();
      if (OUTLINED_FUNCTION_19(v102))
      {
        v103 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_36_0(v103);
        OUTLINED_FUNCTION_49_0();
        _os_log_impl(v104, v105, v106, v107, v28, 2u);
        OUTLINED_FUNCTION_18_0();
      }

      else
      {
      }

      (*(v72 + 8))(v100, v89);
    }

    else
    {
    }
  }

  else
  {

    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_16_1(v89, qword_2802FBA28);
    (*(v72 + 16))(v21);
    v92 = sub_2691E1384();
    sub_2691E1524();
    OUTLINED_FUNCTION_27_0();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_47_0(v94);
      OUTLINED_FUNCTION_31_0();
      _os_log_impl(v95, v96, v97, v98, v99, 2u);
      OUTLINED_FUNCTION_9_2();
    }

    else
    {
    }

    (*(v72 + 8))(v21, v89);
  }

LABEL_77:
  OUTLINED_FUNCTION_24_0();
}

uint64_t sub_2691C68D0()
{
  v1 = *(v0 + *(type metadata accessor for SystemCommandsIntent() + 20));
  sub_2691E1134();
  if (v4)
  {
    sub_2691E1244();
    if (OUTLINED_FUNCTION_41_0())
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_2691CAE08(v3, &qword_2802F9A70, &qword_2691E3140);
  }

  sub_2691E1134();
  if (v4)
  {
    sub_2691E1234();
    if (OUTLINED_FUNCTION_41_0())
    {
LABEL_7:

      return 1;
    }
  }

  else
  {
    sub_2691CAE08(v3, &qword_2802F9A70, &qword_2691E3140);
  }

  return 0;
}

BOOL sub_2691C699C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A68, &qword_2691E3138);
  OUTLINED_FUNCTION_37(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_0();
  v5 = sub_2691E11D4();
  v6 = OUTLINED_FUNCTION_1_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_0(v12);
  sub_2691E1134();
  if (!v28[3])
  {
    v14 = &qword_2802F9A70;
    v15 = &qword_2691E3140;
    v16 = v28;
LABEL_10:
    sub_2691CAE08(v16, v14, v15);
    return 0;
  }

  sub_2691E1224();
  if ((OUTLINED_FUNCTION_22_0() & 1) == 0)
  {
    return 0;
  }

  sub_2691E1144();

  if (!v28[0])
  {

    OUTLINED_FUNCTION_15_0(v0);
    goto LABEL_9;
  }

  sub_2691E1164();
  OUTLINED_FUNCTION_53_0();
  sub_2691E11C4();

  OUTLINED_FUNCTION_6_2(v0);
  if (v13)
  {

LABEL_9:
    v14 = &qword_2802F9A68;
    v15 = &qword_2691E3138;
    v16 = v0;
    goto LABEL_10;
  }

  v18 = OUTLINED_FUNCTION_14_0(v8);
  v19(v18);
  v20 = *MEMORY[0x277D5F0C8];
  v21 = *(v8 + 104);
  v22 = OUTLINED_FUNCTION_28_0();
  v23(v22);
  OUTLINED_FUNCTION_38_0();
  v24 = sub_2691C5184();

  v25 = *(v8 + 8);
  v26 = OUTLINED_FUNCTION_37_0();
  v25(v26);
  v27 = OUTLINED_FUNCTION_29_0();
  v25(v27);
  return (v24 & 1) != 0;
}

uint64_t sub_2691C6BD0()
{
  v2 = sub_2691E1394();
  v3 = OUTLINED_FUNCTION_1_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v12 = type metadata accessor for SystemCommandsIntent();
  OUTLINED_FUNCTION_25_0(v12);
  sub_2691E1134();
  if (v37[3])
  {
    sub_2691E1174();
    v13 = OUTLINED_FUNCTION_22_0();
    if (v13)
    {

      sub_2691E1214();

      if (v37[0] && (v15 = sub_2691C7D84(1), v14 = , v15) && (sub_2691CAB20(), v17 = v16, v14 = , (v17 & 1) != 0))
      {
        if (qword_2802F9378 != -1)
        {
          v14 = OUTLINED_FUNCTION_0();
        }

        OUTLINED_FUNCTION_7_1(v14, qword_2802FBA28);
        v18 = OUTLINED_FUNCTION_28_0();
        v19(v18);
        v20 = sub_2691E1384();
        v21 = sub_2691E1524();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = OUTLINED_FUNCTION_51();
          *v22 = 0;
          _os_log_impl(&dword_2691B1000, v20, v21, "SystemCommandsIntent isLock | found lock identifier", v22, 2u);
          OUTLINED_FUNCTION_12_2();
        }

        else
        {
        }

        v27 = 1;
      }

      else
      {
        if (qword_2802F9378 != -1)
        {
          v14 = OUTLINED_FUNCTION_0();
        }

        OUTLINED_FUNCTION_7_1(v14, qword_2802FBA28);
        v28(v0);
        v29 = sub_2691E1384();
        sub_2691E1524();
        OUTLINED_FUNCTION_27_0();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = OUTLINED_FUNCTION_51();
          *v31 = 0;
          _os_log_impl(&dword_2691B1000, v29, v11, "SystemCommandsIntent isLock | lock identifier not found", v31, 2u);
          OUTLINED_FUNCTION_12_2();
        }

        else
        {
        }

        v27 = 0;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v13 = sub_2691CAE08(v37, &qword_2802F9A70, &qword_2691E3140);
  }

  if (qword_2802F9378 != -1)
  {
    v13 = OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_7_1(v13, qword_2802FBA28);
  v23(v1);
  v24 = sub_2691E1384();
  sub_2691E1524();
  OUTLINED_FUNCTION_27_0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_51();
    *v26 = 0;
    _os_log_impl(&dword_2691B1000, v24, v11, "SystemCommandsIntent isLock | task is not UsoTask_enable_common_Setting", v26, 2u);
    OUTLINED_FUNCTION_42();
  }

  v27 = 0;
LABEL_22:
  v32 = *(v5 + 8);
  v33 = OUTLINED_FUNCTION_37_0();
  v34(v33);
  return v27;
}

uint64_t sub_2691C6FA0(const char *a1)
{
  v3 = sub_2691E1394();
  v4 = OUTLINED_FUNCTION_1_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_47();
  v12 = v11 - v10;
  if (qword_2802F9378 != -1)
  {
    v9 = OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_7_1(v9, qword_2802FBA28);
  v13(v12);
  v14 = sub_2691E1384();
  v15 = sub_2691E1524();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_51();
    *v16 = 0;
    _os_log_impl(&dword_2691B1000, v14, v15, a1, v16, 2u);
    OUTLINED_FUNCTION_12_2();
  }

  (*(v6 + 8))(v12, v1);
  return 0;
}

uint64_t sub_2691C7104(void (*a1)(void))
{
  v2 = type metadata accessor for SystemCommandsIntent();
  OUTLINED_FUNCTION_25_0(v2);
  sub_2691E1134();
  if (v5)
  {
    a1(0);
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    sub_2691CAE08(v4, &qword_2802F9A70, &qword_2691E3140);
  }

  return 0;
}

void sub_2691C71A4()
{
  OUTLINED_FUNCTION_26_0();
  v5 = sub_2691E1394();
  v6 = OUTLINED_FUNCTION_1_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_44_0();
  v13 = sub_2691E10B4();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47();
  v21 = v20 - v19;
  v22 = type metadata accessor for SystemCommandsIntent();
  OUTLINED_FUNCTION_25_0(v22);
  sub_2691E1134();
  if (v69[3])
  {
    sub_2691E1174();
    if (swift_dynamicCast())
    {

      sub_2691E1214();

      if (!v69[0])
      {
        goto LABEL_25;
      }

      v23 = sub_2691E10F4();

      if (!v23)
      {
        goto LABEL_25;
      }

      v60 = v4;
      v61 = v3;
      v62 = v68;
      v63 = v8;
      v64 = v0;
      v24 = *(v23 + 16);
      v59[1] = v23;
      if (v24)
      {
        v25 = v16 + 16;
        v26 = *(v16 + 16);
        v27 = v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
        v65 = *(v25 + 56);
        v66 = v26;
        v67 = v25;
        v28 = (v25 - 8);
        v29 = MEMORY[0x277D84F90];
        do
        {
          v66(v21, v27, v13);
          v30 = sub_2691E1094();
          v32 = v31;
          (*v28)(v21, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_2691CAE60(0, *(v29 + 2) + 1, 1, v29);
          }

          v34 = *(v29 + 2);
          v33 = *(v29 + 3);
          if (v34 >= v33 >> 1)
          {
            v36 = OUTLINED_FUNCTION_48_0(v33);
            v29 = sub_2691CAE60(v36, v37, v38, v29);
          }

          *(v29 + 2) = v34 + 1;
          v35 = &v29[16 * v34];
          *(v35 + 4) = v30;
          *(v35 + 5) = v32;
          v27 += v65;
          --v24;
        }

        while (v24);
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
      }

      v69[0] = 0x6B636F6C6E75;
      v69[1] = 0xE600000000000000;
      MEMORY[0x28223BE20](v44);
      v59[-2] = v69;
      v45 = sub_2691C4770(sub_2691CB6C4, &v59[-4], v29);

      v8 = v63;
      v0 = v64;
      v3 = v61;
      v46 = v60;
      if (v45)
      {
        if (qword_2802F9378 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        __swift_project_value_buffer(v0, qword_2802FBA28);
        OUTLINED_FUNCTION_13_1();
        v47(v46);
        v48 = sub_2691E1384();
        v49 = sub_2691E1524();
        if (OUTLINED_FUNCTION_17_0(v49))
        {
          v50 = OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_36_0(v50);
          OUTLINED_FUNCTION_10_0(&dword_2691B1000, v51, v52, "SystemCommandsIntent isUnlock | does not have required userEntity");
          OUTLINED_FUNCTION_18_0();
        }

        else
        {
        }

        (*(v8 + 8))(v46, v0);
      }

      else
      {
LABEL_25:
        if (qword_2802F9378 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        __swift_project_value_buffer(v0, qword_2802FBA28);
        OUTLINED_FUNCTION_13_1();
        v53(v3);
        v54 = sub_2691E1384();
        v55 = sub_2691E1524();
        if (OUTLINED_FUNCTION_17_0(v55))
        {
          v56 = OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_36_0(v56);
          OUTLINED_FUNCTION_10_0(&dword_2691B1000, v57, v58, "SystemCommandsIntent isUnlock | unlock identifier not found");
          OUTLINED_FUNCTION_18_0();
        }

        else
        {
        }

        (*(v8 + 8))(v3, v0);
      }

      goto LABEL_31;
    }
  }

  else
  {
    sub_2691CAE08(v69, &qword_2802F9A70, &qword_2691E3140);
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  __swift_project_value_buffer(v0, qword_2802FBA28);
  OUTLINED_FUNCTION_13_1();
  v39 = OUTLINED_FUNCTION_28_0();
  v40(v39);
  v41 = sub_2691E1384();
  v42 = sub_2691E1524();
  if (OUTLINED_FUNCTION_17_0(v42))
  {
    v43 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_47_0(v43);
    _os_log_impl(&dword_2691B1000, v41, v13, "SystemCommandsIntent isUnlock | task is not UsoTask_enable_common_Setting", v2, 2u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v8 + 8))(v1, v0);
LABEL_31:
  OUTLINED_FUNCTION_24_0();
}

void sub_2691C76FC()
{
  OUTLINED_FUNCTION_26_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A98, &qword_2691E3158);
  OUTLINED_FUNCTION_37(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v67 - v7;
  v9 = sub_2691E1394();
  v10 = OUTLINED_FUNCTION_1_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_32_0();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v67 - v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_43_0();
  v23 = type metadata accessor for SystemCommandsIntent();
  OUTLINED_FUNCTION_25_0(v23);
  sub_2691E1134();
  if (v75[3])
  {
    sub_2691E11B4();
    v24 = swift_dynamicCast();
    if (v24)
    {
      v25 = v74;
      if (qword_2802F9378 != -1)
      {
        v24 = OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_7_1(v24, qword_2802FBA28);
      v70 = v26;
      v71 = v27;
      v72 = v28;
      (v27)(v2);

      v29 = sub_2691E1384();
      v73 = v12;
      v30 = v29;
      v31 = sub_2691E1524();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_72();
        v68 = swift_slowAlloc();
        v69 = v22;
        v74 = v25;
        v75[0] = v68;
        *v32 = 136315138;

        v33 = sub_2691E13E4();
        v35 = v0;
        v36 = v1;
        v37 = v8;
        v38 = v25;
        v39 = sub_2691B98CC(v33, v34, v75);

        *(v32 + 4) = v39;
        v25 = v38;
        v8 = v37;
        v1 = v36;
        v0 = v35;
        _os_log_impl(&dword_2691B1000, v30, v31, "SystemCommandsIntent isQueryFor | parse: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
        v22 = v69;
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_42();
      }

      v40 = *(v73 + 8);
      v40(v2, v0);

      sub_2691E1144();

      v41 = v75[0];
      if (v75[0])
      {
        sub_2691C7D84(0);
        OUTLINED_FUNCTION_53_0();
        v69 = v40;
        sub_2691C46C4(v41, MEMORY[0x277D5E4F0], v8);

        v42 = sub_2691E10B4();
        if (__swift_getEnumTagSinglePayload(v8, 1, v42) == 1)
        {
          sub_2691CAE08(v8, &qword_2802F9A98, &qword_2691E3158);
          v43 = 0;
          v44 = 0;
        }

        else
        {
          v43 = sub_2691E1094();
          v44 = v57;
          (*(*(v42 - 8) + 8))(v8, v42);
        }

        v71(v22, v70, v0);

        v58 = sub_2691E1384();
        v59 = sub_2691E1524();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = OUTLINED_FUNCTION_72();
          v61 = swift_slowAlloc();
          v74 = v61;
          v75[0] = v43;
          *v60 = 136315138;
          v75[1] = v44;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AA0, &qword_2691E3160);
          v62 = sub_2691E13E4();
          v72 = v25;
          v64 = v22;
          v65 = sub_2691B98CC(v62, v63, &v74);

          *(v60 + 4) = v65;
          _os_log_impl(&dword_2691B1000, v58, v59, "SystemCommandsIntent isQueryFor | found systemCategory identifier: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v61);
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_42();

          v66 = v64;
        }

        else
        {

          v66 = v22;
        }

        (v69)(v66, v0);
      }

      else
      {
        v71(v1, v70, v0);
        v54 = sub_2691E1384();
        sub_2691E1524();
        OUTLINED_FUNCTION_27_0();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = OUTLINED_FUNCTION_51();
          *v56 = 0;
          _os_log_impl(&dword_2691B1000, v54, v22, "SystemCommandsIntent isQueryFor | systemCategory identifier not found", v56, 2u);
          OUTLINED_FUNCTION_42();
        }

        else
        {
        }

        v40(v1, v0);
      }

      goto LABEL_20;
    }
  }

  else
  {
    v24 = sub_2691CAE08(v75, &qword_2802F9A70, &qword_2691E3140);
  }

  if (qword_2802F9378 != -1)
  {
    v24 = OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_7_1(v24, qword_2802FBA28);
  v45(v17);
  v46 = sub_2691E1384();
  sub_2691E1524();
  OUTLINED_FUNCTION_27_0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_47_0(v48);
    OUTLINED_FUNCTION_31_0();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v12 + 8))(v17, v0);
LABEL_20:
  OUTLINED_FUNCTION_24_0();
}

uint64_t sub_2691C7D84(uint64_t a1)
{
  v31 = a1;
  v1 = sub_2691E10B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  result = sub_2691E10F4();
  if (result)
  {
    v9 = result;
    v10 = 0;
    v32 = *(result + 16);
    v25 = 0x80000002691E4970;
    v26 = (v2 + 32);
    v29 = (v2 + 8);
    v30 = v2 + 16;
    v28 = MEMORY[0x277D84F90];
    while (v32 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        JUMPOUT(0x2691C820CLL);
      }

      v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v12 = *(v2 + 72);
      v13 = v1;
      (*(v2 + 16))(v7, v9 + v11 + v12 * v10, v1);
      v14 = sub_2691E10A4();
      v16 = 0xE400000000000000;
      v17 = 1684107369;
      switch(v31)
      {
        case 1:
          v17 = 0x74416D6574737973;
          v16 = 0xEF65747562697274;
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        case 2:
          v17 = 0x7250726577736E61;
          v16 = 0xED0000746375646FLL;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 3:
          v16 = 0xE500000000000000;
          v17 = 0x656E6F6870;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 4:
          v16 = 0xE600000000000000;
          v17 = 0x656E6F687069;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 5:
          goto LABEL_33;
        case 6:
          v16 = 0xE600000000000000;
          v17 = 0x656369766564;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 7:
          v16 = 0xE700000000000000;
          v17 = 0x746375646F7270;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 8:
          v16 = 0xE600000000000000;
          v17 = 0x6E6565726373;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 9:
          v17 = 1801678700;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 10:
          v16 = 0xE600000000000000;
          v17 = 0x6B636F6C6E75;
LABEL_33:
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        case 11:
          v17 = 1701667182;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 12:
          v16 = 0xE500000000000000;
          v17 = 0x73656D616ELL;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 13:
          v16 = 0xE500000000000000;
          v17 = 0x7265776F70;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 14:
          v16 = 0xE800000000000000;
          v17 = 0x6E776F6474756873;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 15:
          v17 = 0xD000000000000010;
          v16 = v25;
          if (!v15)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        default:
          v17 = 0x61436D6574737973;
          v16 = 0xEE0079726F676574;
          if (!v15)
          {
LABEL_41:

LABEL_42:
            v1 = v13;
            (*v29)(v7, v13);
            ++v10;
            continue;
          }

LABEL_34:
          if (v14 == v17 && v15 == v16)
          {
          }

          else
          {
            v19 = sub_2691E16D4();

            if ((v19 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          v24 = *v26;
          v24(v27, v7, v13);
          v20 = v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2691CB398(0, *(v20 + 16) + 1, 1);
            v20 = v33;
          }

          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_2691CB398(v22 > 1, v23 + 1, 1);
            v20 = v33;
          }

          ++v10;
          *(v20 + 16) = v23 + 1;
          v28 = v20;
          v1 = v13;
          v24((v20 + v11 + v23 * v12), v27, v13);
          break;
      }
    }

    return v28;
  }

  return result;
}

uint64_t sub_2691C824C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A88, &qword_2691E3150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691C82BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2691C8304()
{
  v0 = sub_2691E1394();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2691E1204();
  if (v5)
  {
    v6 = v5;
    if (sub_2691B8328())
    {
      sub_2691B832C(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D632F20](0, v6);
      }

      else
      {
        v7 = *(v6 + 32);
      }

      sub_2691E10C4();

      if (v16[1])
      {
        v8 = sub_2691E10F4();

        if (v8)
        {
          sub_2691CAB20();
          v10 = v9;

          return v10 & 1;
        }
      }
    }

    else
    {
    }
  }

  if (qword_2802F9378 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_2802FBA28);
  (*(v1 + 16))(v4, v11, v0);
  v12 = sub_2691E1384();
  v13 = sub_2691E1524();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2691B1000, v12, v13, "SystemCommandsIntent isTurnOffDevice | no identifiers found", v14, 2u);
    MEMORY[0x26D6335B0](v14, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_2691C8560(uint64_t a1)
{
  v2 = sub_2691E1394();
  v126 = *(v2 - 8);
  v3 = *(v126 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v124 = &v119 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v119 - v9;
  v130 = sub_2691E1114();
  v11 = *(v130 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v130);
  v129 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v128 = &v119 - v15;
  v16 = sub_2691E10B4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  if (a1)
  {
    v122 = v10;
    v123 = v11;
    v120 = v24;
    v121 = v23;
    v134 = &v119 - v22;
    v138 = v21;
    v25 = sub_2691B8328(a1);
    v26 = 0;
    v27 = a1 & 0xC000000000000001;
    v136 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = MEMORY[0x277D84F90];
    v125 = v2;
LABEL_3:
    v137 = v28;
    while (v25 != v26)
    {
      if (v27)
      {
        v29 = MEMORY[0x26D632F20](v26, a1);
      }

      else
      {
        if (v26 >= *(v136 + 16))
        {
          goto LABEL_93;
        }

        v29 = *(a1 + 8 * v26 + 32);
      }

      if (__OFADD__(v26, 1))
      {
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
        goto LABEL_107;
      }

      sub_2691E10C4();
      v6 = v139;
      if (v139)
      {
        v135 = v26 + 1;
        sub_2691E1074();

        v6 = sub_2691E1264();

        if (*(v6 + 2))
        {
          v30 = sub_2691CB56C(0x73656D616ELL, 0xE500000000000000);
          if (v31)
          {
            v127 = v27;
            v32 = *(*(v6 + 7) + 8 * v30);

            v33 = sub_2691B8328(v32);
            v34 = 0;
            v132 = (v32 & 0xC000000000000001);
            v133 = v33;
            v131 = v32 & 0xFFFFFFFFFFFFFF8;
            v2 = MEMORY[0x277D84F90];
            while (v133 != v34)
            {
              if (v132)
              {
                MEMORY[0x26D632F20](v34, v32);
              }

              else
              {
                if (v34 >= *(v131 + 16))
                {
                  goto LABEL_100;
                }

                v35 = *(v32 + 8 * v34 + 32);
              }

              if (__OFADD__(v34, 1))
              {
                goto LABEL_99;
              }

              v6 = sub_2691E1254();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v2 = sub_2691CB054(0, *(v2 + 16) + 1, 1, v2);
              }

              v37 = *(v2 + 16);
              v36 = *(v2 + 24);
              if (v37 >= v36 >> 1)
              {
                v2 = sub_2691CB054((v36 > 1), v37 + 1, 1, v2);
              }

              *(v2 + 16) = v37 + 1;
              *(v2 + 8 * v37 + 32) = v6;
              ++v34;
            }

            v132 = v29;

            v38 = 0;
            v133 = *(v2 + 16);
            v39 = MEMORY[0x277D84F90];
            v27 = v127;
            while (v133 != v38)
            {
              if (v38 >= *(v2 + 16))
              {
                goto LABEL_101;
              }

              v40 = v2;
              v2 = v25;
              v41 = v17;
              v42 = a1;
              v6 = v40;
              v43 = &v40[8 * v38];
              v44 = *(v43 + 4);
              v45 = *(v44 + 16);
              v46 = *(v39 + 16);
              v47 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                goto LABEL_102;
              }

              v48 = *(v43 + 4);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v47 > *(v39 + 24) >> 1)
              {
                if (v46 <= v47)
                {
                  v50 = v46 + v45;
                }

                else
                {
                  v50 = v46;
                }

                v39 = sub_2691CAF68(isUniquelyReferenced_nonNull_native, v50, 1, v39);
              }

              a1 = v42;
              v27 = v127;
              v17 = v41;
              if (*(v44 + 16))
              {
                v51 = *(v39 + 16);
                if ((*(v39 + 24) >> 1) - v51 < v45)
                {
                  goto LABEL_105;
                }

                v25 = v2;
                v52 = v39 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v51;
                swift_arrayInitWithCopy();

                v2 = v6;
                if (v45)
                {
                  v53 = *(v39 + 16);
                  v54 = __OFADD__(v53, v45);
                  v55 = v53 + v45;
                  if (v54)
                  {
                    goto LABEL_106;
                  }

                  *(v39 + 16) = v55;
                }
              }

              else
              {

                v25 = v2;
                v2 = v6;
                if (v45)
                {
                  goto LABEL_103;
                }
              }

              ++v38;
            }

            v6 = v39;

            v28 = v137;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_2691CB054(0, v28[2] + 1, 1, v28);
            }

            v57 = v28[2];
            v56 = v28[3];
            if (v57 >= v56 >> 1)
            {
              v59 = sub_2691CB054((v56 > 1), v57 + 1, 1, v28);
              v58 = v6;
              v28 = v59;
            }

            else
            {
              v58 = v6;
            }

            v28[2] = v57 + 1;
            v28[v57 + 4] = v58;
            v26 = v135;
            goto LABEL_3;
          }
        }
      }

      ++v26;
      v28 = v137;
    }

    v60 = 0;
    v61 = v28[2];
    v62 = MEMORY[0x277D84F90];
    while (v61 != v60)
    {
      if (v60 >= v28[2])
      {
        goto LABEL_94;
      }

      v63 = &v28[v60];
      v64 = v63[4];
      v6 = *(v64 + 16);
      v65 = *(v62 + 16);
      v66 = &v6[v65];
      if (__OFADD__(v65, v6))
      {
        goto LABEL_95;
      }

      v67 = v63[4];

      v68 = swift_isUniquelyReferenced_nonNull_native();
      if (!v68 || v66 > *(v62 + 24) >> 1)
      {
        if (v65 <= v66)
        {
          v69 = &v6[v65];
        }

        else
        {
          v69 = v65;
        }

        v62 = sub_2691CAF68(v68, v69, 1, v62);
      }

      if (*(v64 + 16))
      {
        if ((*(v62 + 24) >> 1) - *(v62 + 16) < v6)
        {
          goto LABEL_97;
        }

        v70 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v71 = *(v17 + 72);
        swift_arrayInitWithCopy();

        if (v6)
        {
          v72 = *(v62 + 16);
          v54 = __OFADD__(v72, v6);
          v73 = &v6[v72];
          if (v54)
          {
            goto LABEL_98;
          }

          *(v62 + 16) = v73;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_96;
        }
      }

      ++v60;
    }

    v2 = 0;
    v137 = *(v62 + 16);
    LODWORD(v135) = *MEMORY[0x277D5E6B0];
    v132 = (v123 + 8);
    v133 = (v123 + 104);
    v136 = v17 + 8;
    v131 = v17 + 16;
    v74 = v128;
    while (v137 != v2)
    {
      if (v2 >= *(v62 + 16))
      {
        goto LABEL_104;
      }

      v75 = v62 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v2;
      v76 = v17;
      v77 = v134;
      v127 = *(v17 + 16);
      v127(v134, v75, v138);
      sub_2691E1084();
      v79 = v129;
      v78 = v130;
      (*v133)(v129, v135, v130);
      v80 = MEMORY[0x26D632A60](v74, v79);
      v81 = *v132;
      (*v132)(v79, v78);
      v81(v74, v78);
      if ((v80 & 1) != 0 || ((sub_2691E10A4(), v82) ? (v6 = v82) : (v6 = 0xE000000000000000), v83 = sub_2691E1654(), , v83 <= 9))
      {

        if (qword_2802F9378 != -1)
        {
          swift_once();
        }

        v89 = v125;
        v90 = __swift_project_value_buffer(v125, qword_2802FBA28);
        v91 = v126;
        v92 = v122;
        (*(v126 + 16))(v122, v90, v89);
        v93 = v121;
        v94 = v138;
        v95 = v127;
        v127(v121, v134, v138);
        v96 = sub_2691E1384();
        v97 = sub_2691E1534();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v137 = v98;
          v99 = v94;
          v100 = swift_slowAlloc();
          v139 = v100;
          *v98 = 136315138;
          v95(v120, v93, v99);
          v101 = sub_2691E13E4();
          v102 = v91;
          v104 = v103;
          v105 = *v136;
          (*v136)(v93, v99);
          v106 = sub_2691B98CC(v101, v104, &v139);

          v107 = v137;
          *(v137 + 4) = v106;
          v108 = v97;
          v109 = v107;
          _os_log_impl(&dword_2691B1000, v96, v108, "SystemCommandsIntent isHomeAutomationParse | Found HA identifier: %s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v100);
          MEMORY[0x26D6335B0](v100, -1, -1);
          MEMORY[0x26D6335B0](v109, -1, -1);

          (*(v102 + 8))(v122, v125);
          v105(v134, v99);
        }

        else
        {

          v118 = *v136;
          (*v136)(v93, v94);
          (*(v91 + 8))(v92, v89);
          v118(v134, v94);
        }

        return 1;
      }

      (*v136)(v77, v138);
      ++v2;
      v17 = v76;
    }

    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v110 = v125;
    v111 = __swift_project_value_buffer(v125, qword_2802FBA28);
    v112 = v126;
    v113 = v124;
    (*(v126 + 16))(v124, v111, v110);
    v114 = sub_2691E1384();
    v115 = sub_2691E1534();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_2691B1000, v114, v115, "SystemCommandsIntent isHomeAutomationParse | No HA identifiers found, parse is not HomeAutomation", v116, 2u);
      MEMORY[0x26D6335B0](v116, -1, -1);
    }

    (*(v112 + 8))(v113, v110);
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
LABEL_107:
      swift_once();
    }

    v84 = __swift_project_value_buffer(v2, qword_2802FBA28);
    v85 = v126;
    (*(v126 + 16))(v6, v84, v2);
    v86 = sub_2691E1384();
    v87 = sub_2691E1534();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_2691B1000, v86, v87, "SystemCommandsIntent isHomeAutomationParse | No UserEntities found", v88, 2u);
      MEMORY[0x26D6335B0](v88, -1, -1);
    }

    (*(v85 + 8))(v6, v2);
  }

  return 0;
}