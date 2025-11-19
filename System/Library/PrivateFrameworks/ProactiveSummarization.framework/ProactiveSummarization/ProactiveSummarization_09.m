void sub_231D66878()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 1312);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 1304);
    v10 = *(v3 + 1280);
    (*(v3 + 1272))(*(v3 + 1064), *(v3 + 1032));

    v11 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231D669A8()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 992);
  *(v0 + 1320) = v3;
  *(v0 + 1328) = sub_231DF4938(v3, v2);
  OUTLINED_FUNCTION_25();
  sub_231D69930();
  *(v0 + 1336) = v4;
  if (v4)
  {
    v5 = v4;
    if (sub_231CC8398())
    {
      v6 = sub_231D689F4();
      v7 = *(v0 + 1248);
      v8 = *(v0 + 1240);
      v9 = *(v0 + 1232);
      v10 = *(v0 + 1048);
      v11 = *(v0 + 1032);
      v12 = *(v0 + 1024);
      v13 = *(v0 + 1008);
      *(v0 + 1000) = v6;
      v8(v10, v9, v11);
      v14 = swift_task_alloc();
      *(v0 + 1440) = v14;
      v14[2] = v0 + 1000;
      v14[3] = v12;
      v14[4] = v13;
      v15 = swift_task_alloc();
      *(v0 + 1448) = v15;
      *v15 = v0;
      OUTLINED_FUNCTION_10_14(v15);
      OUTLINED_FUNCTION_8_16();
    }

    else
    {
      v42 = *(v0 + 1248);
      v43 = *(v0 + 1240);
      v44 = *(v0 + 1232);
      v45 = *(v0 + 1056);
      v46 = *(v0 + 1032);
      v66 = *(v0 + 1024);
      v47 = *(v0 + 1016);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FB8, &qword_231E1D3F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231E1C2A0;
      sub_231E11330();
      *(inited + 32) = sub_231E112D0();
      *(inited + 40) = v49;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = 1;
      *(inited + 80) = sub_231E11300();
      *(inited + 88) = v50;
      *(inited + 120) = MEMORY[0x277D83B88];
      *(inited + 96) = v47;
      *(inited + 128) = sub_231E112F0();
      *(inited + 136) = v51;
      v52 = getpid();
      v53 = MEMORY[0x277D849A8];
      *(inited + 168) = MEMORY[0x277D849A8];
      *(inited + 144) = v52;
      *(inited + 176) = sub_231E112E0();
      *(inited + 184) = v54;
      v55 = getpid();
      *(inited + 216) = v53;
      *(inited + 192) = v55;
      v56 = sub_231E11530();
      *(v0 + 1344) = v56;
      v57 = sub_231CC7218(9);
      *(v0 + 1490) = v57 & 1;
      v58 = *MEMORY[0x277D6F2B8];
      *(v0 + 1352) = *MEMORY[0x277D6F2B8];
      v59 = *MEMORY[0x277D6F2C0];
      *(v0 + 1360) = *MEMORY[0x277D6F2C0];
      if ((v57 & 1) == 0)
      {
        v58 = v59;
      }

      v60 = v58;
      v61 = OUTLINED_FUNCTION_57_6();
      v43(v61, v44, v46);
      v62 = swift_task_alloc();
      *(v0 + 1368) = v62;
      v62[2] = v66;
      v62[3] = v5;
      v62[4] = inited;
      v62[5] = v56;
      v63 = swift_task_alloc();
      *(v0 + 1376) = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FC0, &unk_231E1D410);
      OUTLINED_FUNCTION_73_4();
      *v63 = v64;
      v63[1] = sub_231D66DF0;
      v65 = *(v0 + 1056);
      v17 = "Message.SmartResponseGeneration";
      v20 = &unk_231E1D408;
      v16 = v0 + 960;
      v18 = 31;
      v19 = 2;
      v21 = v62;
    }

    return sub_231DC55B4(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = *(v0 + 1216);
    v23 = *(v0 + 1208);
    v24 = *(v0 + 1200);
    v25 = *(v0 + 1192);
    v26 = *(v0 + 1184);
    v27 = *(v0 + 1152);
    v28 = *(v0 + 1088);

    v23(v27, v24, v28);
    v29 = sub_231E10E10();
    v30 = sub_231E11AE0();
    if (OUTLINED_FUNCTION_79_3(v30))
    {
      *OUTLINED_FUNCTION_16_1() = 0;
      OUTLINED_FUNCTION_25_0(&dword_231CAE000, v31, v32, "Could not build input context history for messages content");
      OUTLINED_FUNCTION_30();
    }

    v33 = *(v0 + 1224);
    v34 = *(v0 + 1152);
    v35 = *(v0 + 1096);
    v36 = *(v0 + 1088);
    v37 = *(v0 + 1024);

    v38 = OUTLINED_FUNCTION_25();
    v33(v38);
    v39 = *(v37 + 24);
    v40 = swift_task_alloc();
    *(v0 + 1456) = v40;
    *v40 = v0;
    OUTLINED_FUNCTION_48_7(v40);

    return sub_231CD6BE0();
  }
}

uint64_t sub_231D66DF0()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[172];
  *v4 = *v1;
  v3[173] = v0;

  v6 = v2[171];
  v7 = v2[168];
  if (v0)
  {
    v8 = v3[166];
    v9 = v3[165];
    v10 = v3[160];
    v11 = v3[149];
    (v3[159])(v3[132], v3[129]);
  }

  else
  {
    v12 = v3[160];
    (v3[159])(v3[132], v3[129]);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231D66F98()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[120];
  v0[174] = v2;
  v3 = v0[121];

  v4 = [v2 actionsResponse];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 responses];

    sub_231D6BD2C();
    v7 = sub_231E11870();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v0[175] = v7;
  v8 = sub_231CBA138(v7);
  v0[176] = v8;
  if (v8)
  {
    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {
      v9 = 0;
      while (1)
      {
        v0[177] = v9;
        v10 = v0[175];
        v11 = (v10 & 0xC000000000000001) != 0 ? MEMORY[0x23837D2A0]() : *(v10 + 8 * v9 + 32);
        v7 = v11;
        v0[178] = v11;
        if ([v11 requiresFollowUp])
        {
          break;
        }

        v9 = OUTLINED_FUNCTION_101_5();
        if (v12)
        {
          goto LABEL_13;
        }
      }

      v25 = v0[167];
      v26 = v0[128];
      v27 = swift_task_alloc();
      OUTLINED_FUNCTION_115_4(v27);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FC8, &qword_231E1D440);
      OUTLINED_FUNCTION_36_8(v28);
      v8 = OUTLINED_FUNCTION_32_7();
    }

    return MEMORY[0x282200920](v8);
  }

  else
  {
LABEL_13:
    OUTLINED_FUNCTION_55_5();
    v13 = [v7 repliesResponse];

    OUTLINED_FUNCTION_49_8();
    v14 = OUTLINED_FUNCTION_81_5();
    v15(v14);
    v16 = swift_task_alloc();
    v0[180] = v16;
    OUTLINED_FUNCTION_107_5(v16);
    v17 = swift_task_alloc();
    v0[181] = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_10_14(v17);
    OUTLINED_FUNCTION_8_16();

    return sub_231DC55B4(v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_231D671C8()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 1432);

  while (1)
  {
    v3 = OUTLINED_FUNCTION_101_5();
    if (v4)
    {
      break;
    }

    *(v0 + 1416) = v3;
    v5 = *(v0 + 1400);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x23837D2A0]();
    }

    else
    {
      v6 = *(v5 + 8 * v3 + 32);
    }

    v2 = v6;
    *(v0 + 1424) = v6;
    if ([v6 requiresFollowUp])
    {
      v19 = *(v0 + 1336);
      v20 = *(v0 + 1024);
      v21 = swift_task_alloc();
      OUTLINED_FUNCTION_115_4(v21);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FC8, &qword_231E1D440);
      v23 = OUTLINED_FUNCTION_36_8(v22);
      v24 = OUTLINED_FUNCTION_32_7(v23);

      return MEMORY[0x282200920](v24);
    }
  }

  OUTLINED_FUNCTION_55_5();
  v7 = [v2 repliesResponse];

  OUTLINED_FUNCTION_49_8();
  v8 = OUTLINED_FUNCTION_81_5();
  v9(v8);
  v10 = swift_task_alloc();
  *(v0 + 1440) = v10;
  OUTLINED_FUNCTION_107_5(v10);
  v11 = swift_task_alloc();
  *(v0 + 1448) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_10_14(v11);
  OUTLINED_FUNCTION_8_16();

  return sub_231DC55B4(v12, v13, v14, v15, v16, v17);
}

void sub_231D67350()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 1448);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_97_3();
  }

  else
  {
    v11 = *(v3 + 1440);
    v12 = *(v3 + 1328);
    v13 = *(v3 + 1320);
    v14 = *(v3 + 1280);
    v15 = *(v3 + 1192);
    (*(v3 + 1272))(*(v3 + 1048), *(v3 + 1032));

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_97_3();

    MEMORY[0x2822009F8](v16, v17, v18);
  }
}

uint64_t sub_231D674A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v19 = *(v17 + 1216);
  v20 = *(v17 + 1184);
  (*(v17 + 1208))(*(v17 + 1160), *(v17 + 1200), *(v17 + 1088));

  v21 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_53_7();

  v22 = OUTLINED_FUNCTION_85();
  v23 = *(v17 + 1336);
  v24 = *(v17 + 1224);
  v25 = *(v17 + 1184);
  if (v22)
  {
    v51 = *(v17 + 1224);
    v26 = *(v17 + 1176);
    v49 = *(v17 + 1160);
    OUTLINED_FUNCTION_63_5();
    a13 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_53_0(4.8751e-34, a13, v27, v28, v29);
    OUTLINED_FUNCTION_57_6();

    *(v18 + 4) = v26;
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v30, v31, "Generated Smart Replies for messages; id: %{public}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    v51(v49, v16);
  }

  else
  {
    v32 = *(v17 + 1160);
    OUTLINED_FUNCTION_82_2();

    v33 = OUTLINED_FUNCTION_25();
    v24(v33);
  }

  OUTLINED_FUNCTION_3_23();
  v47 = v35;
  v48 = v34;
  OUTLINED_FUNCTION_100_5();
  v50 = v37;
  v52 = v36;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v50, v52, a13, a14, a15, a16);
}

uint64_t sub_231D67674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_87_5();
  v18 = v16[182];
  v19 = *v17;
  OUTLINED_FUNCTION_4();
  *v20 = v19;

  OUTLINED_FUNCTION_223();
  v22 = *(v21 + 1168);
  v23 = v16[145];
  v24 = v16[144];
  v25 = v16[143];
  v26 = v16[142];
  v27 = v16[141];
  v28 = v16[140];
  v29 = v16[139];
  v45 = v16[138];
  OUTLINED_FUNCTION_223();
  v46 = *(v30 + 1080);
  OUTLINED_FUNCTION_223();
  v47 = *(v31 + 1072);
  OUTLINED_FUNCTION_223();
  v48 = *(v32 + 1064);
  OUTLINED_FUNCTION_223();
  v49 = *(v33 + 1056);
  OUTLINED_FUNCTION_223();
  v35 = *(v34 + 1048);

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_37();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, v47, v48, v49, a14, a15, a16);
}

uint64_t sub_231D678DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_87_5();
  v18 = v16[183];
  v19 = *v17;
  OUTLINED_FUNCTION_4();
  *v20 = v19;

  OUTLINED_FUNCTION_223();
  v22 = *(v21 + 1168);
  v23 = v16[145];
  v24 = v16[144];
  v25 = v16[143];
  v26 = v16[142];
  v27 = v16[141];
  v28 = v16[140];
  v29 = v16[139];
  v45 = v16[138];
  OUTLINED_FUNCTION_223();
  v46 = *(v30 + 1080);
  OUTLINED_FUNCTION_223();
  v47 = *(v31 + 1072);
  OUTLINED_FUNCTION_223();
  v48 = *(v32 + 1064);
  OUTLINED_FUNCTION_223();
  v49 = *(v33 + 1056);
  OUTLINED_FUNCTION_223();
  v35 = *(v34 + 1048);

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_37();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, v47, v48, v49, a14, a15, a16);
}

uint64_t sub_231D67B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_87_5();
  v18 = v16[184];
  v19 = *v17;
  OUTLINED_FUNCTION_4();
  *v20 = v19;

  OUTLINED_FUNCTION_223();
  v22 = *(v21 + 1168);
  v23 = v16[145];
  v24 = v16[144];
  v25 = v16[143];
  v26 = v16[142];
  v27 = v16[141];
  v28 = v16[140];
  v29 = v16[139];
  v45 = v16[138];
  OUTLINED_FUNCTION_223();
  v46 = *(v30 + 1080);
  OUTLINED_FUNCTION_223();
  v47 = *(v31 + 1072);
  OUTLINED_FUNCTION_223();
  v48 = *(v32 + 1064);
  OUTLINED_FUNCTION_223();
  v49 = *(v33 + 1056);
  OUTLINED_FUNCTION_223();
  v35 = *(v34 + 1048);

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_37();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, v47, v48, v49, a14, a15, a16);
}

uint64_t sub_231D67DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_51_0();
  a22 = v24;
  v27 = *(v24 + 1384);
  v28 = (v24 + 1360);
  v29 = *(v24 + 1216);
  v30 = *(v24 + 1208);
  v31 = *(v24 + 1200);
  v32 = *(v24 + 1184);
  v33 = *(v24 + 1104);
  v34 = *(v24 + 1088);
  if (*(v24 + 1490))
  {
    v28 = (v24 + 1352);
  }

  (v30)(v33, v31, v34);

  v35 = v27;
  v36 = sub_231E10E10();
  sub_231E11AD0();

  if (OUTLINED_FUNCTION_85())
  {
    v37 = *(v24 + 1384);
    v38 = *(v24 + 1184);
    v39 = *(v24 + 1176);
    v61 = *(v24 + 1104);
    v62 = *(v24 + 1224);
    v40 = *(v24 + 1096);
    v60 = *(v24 + 1088);
    v41 = OUTLINED_FUNCTION_98_0();
    swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_28();
    a13 = v42;
    *v41 = 138412546;
    v43 = v37;
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 4) = v44;
    *v30 = v44;
    *(v41 + 12) = 2082;
    v45 = sub_231CB5000(v39, v38, &a13);

    *(v41 + 14) = v45;
    OUTLINED_FUNCTION_43_10();
    _os_log_impl(v46, v47, v48, v49, v41, 0x16u);
    sub_231CE1118(v30, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v62(v61, v60);
  }

  else
  {
    v50 = *(v24 + 1224);
    v51 = *(v24 + 1184);
    v52 = *(v24 + 1104);
    v53 = *(v24 + 1096);
    v54 = *(v24 + 1088);

    v55 = OUTLINED_FUNCTION_25();
    v50(v55);
  }

  v56 = *(*(v24 + 1024) + 24);
  v57 = swift_task_alloc();
  *(v24 + 1480) = v57;
  *v57 = v24;
  OUTLINED_FUNCTION_48_7(v57);
  OUTLINED_FUNCTION_37();

  return sub_231CD6BE0();
}

uint64_t sub_231D67FFC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 1480);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D680E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = *(v16 + 1384);

  OUTLINED_FUNCTION_3_23();
  v31 = v19;
  v32 = v18;
  OUTLINED_FUNCTION_100_5();
  v33 = v21;
  v34 = v20;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, v33, v34, a14, a15, a16);
}

uint64_t sub_231D681C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D681E4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  if (sub_231E10180())
  {
    v2 = *(*(v0 + 32) + 32);
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_231D682BC;
    v4 = *(v0 + 48);
    v5 = OUTLINED_FUNCTION_27_1(*(v0 + 40));

    return sub_231DF8000(v5, v6);
  }

  else
  {
    **(v0 + 16) = 0;
    OUTLINED_FUNCTION_14_0();

    return v8();
  }
}

uint64_t sub_231D682BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D683B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D683D0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(*(v0 + 32) + 96);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 40) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_86_5(v2);

  return sub_231D14FBC(v4, v5);
}

uint64_t sub_231D68468()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_231D68564()
{
  OUTLINED_FUNCTION_118();
  v0 = sub_231E10400();
  v1 = OUTLINED_FUNCTION_24(v0);
  v43 = v2;
  v44 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_1();
  v7 = v6 - v5;
  v8 = sub_231E0F950();
  v9 = OUTLINED_FUNCTION_24(v8);
  v41 = v10;
  v42 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v15 = v14 - v13;
  v16 = sub_231E10210();
  v17 = OUTLINED_FUNCTION_24(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_1();
  v24 = v23 - v22;
  sub_231D6C800();
  v26 = v25;
  v28 = v27;

  v45 = v28;
  if (sub_231E101C0())
  {
    sub_231D6B094();
  }

  if (sub_231E101D0())
  {
    sub_231D6B094();
  }

  v29 = sub_231E10100();
  v31 = v30;
  objc_allocWithZone(MEMORY[0x277D6F370]);
  v32 = sub_231D6B778(v29, v31, v45, v26, MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], 0);
  if (v32)
  {
    v33 = v32;
    v34 = [objc_allocWithZone(MEMORY[0x277D6F460]) init];
    sub_231E10220();
    sub_231E10200();
    (*(v19 + 8))(v24, v16);
    v35 = sub_231E115F0();

    [v34 setText_];

    sub_231E101B0();
    v36 = sub_231E0F8C0();
    (*(v41 + 8))(v15, v42);
    [v34 setTimestamp_];

    sub_231E10000();
    v37 = sub_231E115F0();

    [v34 setEntryIdentifier_];

    sub_231E100E0();
    sub_231E103F0();
    (*(v43 + 8))(v7, v44);
    v38 = sub_231E115F0();

    [v34 setSenderIdentifier_];

    OUTLINED_FUNCTION_94_5();
    v39 = sub_231E11A50();

    [v34 setPrimaryRecipientIdentifiers_];

    OUTLINED_FUNCTION_94_5();
    v40 = sub_231E11A50();

    [v34 setSecondaryRecipientIdentifiers_];

    [v33 addEntry_];
    [objc_allocWithZone(MEMORY[0x277D6F228]) initWithTIInputContextHistory_];
  }

  else
  {
  }

  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_113();
}

id sub_231D689F4()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6F238]);
  result = sub_231D6B70C(&unk_2846F6638);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231D68A34()
{
  OUTLINED_FUNCTION_18();
  v0[4] = v1;
  v0[5] = v2;
  OUTLINED_FUNCTION_92_4(v3, v4);
  v5 = sub_231E11320();
  v0[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D68AD8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[5];
  v2 = *(v0[3] + 40);
  (*(v0[7] + 104))(v0[8], *MEMORY[0x277D4B198], v0[6]);
  OUTLINED_FUNCTION_10_3(MEMORY[0x277D4B1A0]);
  v8 = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_231D68BA8;
  v5 = v0[8];
  v6 = OUTLINED_FUNCTION_27_1(v0[4]);

  return v8(v6);
}

uint64_t sub_231D68BA8()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v9 = v6[9];
  *v8 = *v1;
  v7[10] = v0;

  v10 = v6[8];
  v11 = v6[7];
  v12 = v6[6];
  if (!v0)
  {
    v7[11] = v3;
    v7[12] = v5;
  }

  (*(v11 + 8))(v10, v12);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231D68D24()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);
  **(v0 + 16) = vextq_s8(*(v0 + 88), *(v0 + 88), 8uLL);

  OUTLINED_FUNCTION_14_0();

  return v2();
}

uint64_t sub_231D68D8C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_19();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_231D68DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D68E00()
{
  OUTLINED_FUNCTION_29();
  v1 = *(*(v0 + 16) + 24);
  v2 = **(v0 + 24);
  *(v0 + 40) = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_110_4(v5);

  return sub_231CE01C0();
}

uint64_t sub_231D68EA8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D68FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D68FBC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  v2 = sub_231E105E0();
  if (v2 == 2 || (v2 & 1) == 0)
  {
    **(v0 + 16) = 0;
    OUTLINED_FUNCTION_14_0();

    return v9();
  }

  else
  {
    v3 = *(*(v0 + 32) + 32);
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_231D690A0;
    v5 = *(v0 + 48);
    v6 = OUTLINED_FUNCTION_27_1(*(v0 + 40));

    return sub_231DF843C(v6, v7);
  }
}

uint64_t sub_231D690A0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D6918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D691A4()
{
  OUTLINED_FUNCTION_29();
  v1 = *(*(v0 + 32) + 96);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 40) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_86_5(v2);

  return sub_231CC1D30(v4, v5);
}

uint64_t sub_231D6923C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D69328()
{
  OUTLINED_FUNCTION_18();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = sub_231E10E30();
  v0[7] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v10 = sub_231E0F950();
  v0[10] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[11] = v11;
  v13 = *(v12 + 64);
  v0[12] = OUTLINED_FUNCTION_69();
  v0[13] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231D6942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_47_0();
  v12 = *(v11 + 24);
  v13 = sub_231E10520();
  *(v11 + 112) = v13;
  *(v11 + 120) = v14;
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v18 = *(v11 + 96);
    v17 = *(v11 + 104);
    v19 = *(v11 + 80);
    v20 = *(v11 + 88);
    v21 = *(v11 + 48);
    sub_231E0F940();
    sub_231E0F8B0();
    v22 = *(v20 + 8);
    *(v11 + 128) = v22;
    *(v11 + 136) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v18, v19);
    v23 = sub_231DE8A04(0);
    v25 = v24;
    *(v11 + 144) = v24;
    v26 = sub_231D119A4();
    v27 = *(v21 + 88);
    v28 = *(v21 + 32);
    v29 = swift_task_alloc();
    *(v11 + 152) = v29;
    *v29 = v11;
    v29[1] = sub_231D695EC;
    v30 = *(v11 + 32);
    v31 = *(v11 + 40);
    v32 = OUTLINED_FUNCTION_27_1(*(v11 + 104));

    return sub_231DE9D80(v32, v15, v16, v23, v25, v33, v34, v26, a9, a10, a11);
  }

  else
  {
    v37 = *(v11 + 96);
    v36 = *(v11 + 104);
    v38 = *(v11 + 72);
    **(v11 + 16) = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_14_0();

    return v39();
  }
}

uint64_t sub_231D695EC()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = v3[19];
  v5 = v3[18];
  v6 = v3[17];
  v7 = v3[16];
  v8 = v3[13];
  v9 = v3[10];
  v10 = *v0;
  OUTLINED_FUNCTION_4();
  *v11 = v10;
  *(v13 + 160) = v12;

  v14 = OUTLINED_FUNCTION_25();
  v7(v14);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_97_3();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231D69750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_56_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_59_1();
  a20 = v22;
  v25 = *(v22 + 160);
  v26 = *(v22 + 120);
  v28 = *(v22 + 64);
  v27 = *(v22 + 72);
  v29 = *(v22 + 56);
  v30 = sub_231DC4AB8();
  (*(v28 + 16))(v27, v30, v29);

  v31 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_53_7();

  v32 = OUTLINED_FUNCTION_85();
  v33 = *(v22 + 160);
  v34 = *(v22 + 120);
  if (v32)
  {
    v35 = *(v22 + 112);
    v36 = *(v22 + 64);
    a10 = *(v22 + 72);
    v37 = *(v22 + 56);
    v38 = OUTLINED_FUNCTION_98_0();
    v39 = swift_slowAlloc();
    a11 = v39;
    *v38 = 134218243;
    *(v38 + 4) = *(v33 + 16);

    *(v38 + 12) = 2085;
    v40 = sub_231CB5000(v35, v34, &a11);

    *(v38 + 14) = v40;
    OUTLINED_FUNCTION_43_10();
    _os_log_impl(v41, v42, v43, v44, v38, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v36 + 8))(a10, v37);
  }

  else
  {
    v46 = *(v22 + 64);
    v45 = *(v22 + 72);
    v47 = *(v22 + 56);
    v48 = *(v22 + 160);

    v49 = *(v46 + 8);
    v50 = OUTLINED_FUNCTION_25();
    v51(v50);
  }

  v53 = *(v22 + 96);
  v52 = *(v22 + 104);
  v54 = *(v22 + 72);
  **(v22 + 16) = *(v22 + 160);

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_35();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
}

void sub_231D69930()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  OUTLINED_FUNCTION_95_5();
  v65 = sub_231E10E30();
  v2 = OUTLINED_FUNCTION_24(v65);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 - v7;
  v68 = sub_231E0F950();
  v10 = OUTLINED_FUNCTION_24(v68);
  v75 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_1();
  v67 = v15 - v14;
  v77 = sub_231E10400();
  v16 = OUTLINED_FUNCTION_24(v77);
  v72 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_1();
  v76 = v21 - v20;
  v22 = sub_231E106A0();
  v23 = OUTLINED_FUNCTION_24(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_1();
  v30 = v29 - v28;
  sub_231D6C800();
  v78 = v31;
  v33 = v32;
  v35 = v34;
  v36 = sub_231E10520();
  v38 = v37;
  objc_allocWithZone(MEMORY[0x277D6F370]);
  v69 = sub_231D6B778(v36, v38, v35, v78, v33, MEMORY[0x277D84FA0], 0);
  if (v69)
  {
    v39 = v4;
    v40 = *(v1 + 16);
    if (v40)
    {
      v42 = *(v25 + 16);
      v41 = v25 + 16;
      v43 = v1 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
      v73 = (v72 + 8);
      v74 = v42;
      v66 = v30;
      v63 = (v39 + 8);
      v64 = (v39 + 16);
      v70 = *(v41 + 56);
      v71 = (v41 - 8);
      do
      {
        v74(v30, v43, v22);
        sub_231E104F0();
        v44 = sub_231E103F0();
        v46 = v45;
        (*v73)(v76, v77);
        if (v46)
        {
          v47 = v22;
          v48 = sub_231E10640();
          v50 = v49;
          sub_231E105C0();
          v51 = v9;
          v52 = sub_231E0F8C0();
          (*(v75 + 8))(v67, v68);
          v53 = sub_231E10690();
          v54 = v48;
          v22 = v47;
          sub_231D6C72C(v54, v50, v52, v44, v46, v53, v55, v69);

          v9 = v51;
          v30 = v66;
        }

        else
        {
          v56 = sub_231DC4AB8();
          (*v64)(v9, v56, v65);
          v57 = sub_231E10E10();
          v58 = sub_231E11AC0();
          if (OUTLINED_FUNCTION_79_3(v58))
          {
            v59 = OUTLINED_FUNCTION_16_1();
            *v59 = 0;
            _os_log_impl(&dword_231CAE000, v57, v58, "Could not retrieve sender identifiers for a recent message - there will be skipped messages in the conversation history ", v59, 2u);
            OUTLINED_FUNCTION_30();
          }

          v60 = *v63;
          v61 = OUTLINED_FUNCTION_83();
          v62(v61);
        }

        (*v71)(v30, v22);
        v43 += v70;
        --v40;
      }

      while (v40);
    }

    [objc_allocWithZone(MEMORY[0x277D6F228]) initWithTIInputContextHistory_];
  }

  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D69DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D69DCC()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v0[8] + 40);
  v4 = *MEMORY[0x277D6F2B0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FD8, &qword_231E1D448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231E138E0;
  *(inited + 32) = v2;
  v6 = v2;
  sub_231D6BD70(inited);
  v0[12] = v7;
  OUTLINED_FUNCTION_10_3(MEMORY[0x277D4B1B0]);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_231D69EE4;
  OUTLINED_FUNCTION_27_1(v0[9]);
  OUTLINED_FUNCTION_97_3();

  return v17(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_231D69EE4()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  *v8 = v7;
  v10 = *(v9 + 104);
  v11 = *v1;
  OUTLINED_FUNCTION_4();
  *v12 = v11;
  v7[14] = v0;

  if (!v0)
  {
    v13 = v7[12];

    v7[15] = v3;
    v7[16] = v5;
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_97_3();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231D6A010()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_19();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_231D6A06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D6A084()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0[3] + 40);
  v2 = *MEMORY[0x277D6F2B0];
  OUTLINED_FUNCTION_10_3(MEMORY[0x277D4B1A8]);
  v10 = v3;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_88_5(v4);
  *v5 = v6;
  v5[1] = sub_231D6A148;
  v7 = v0[5];
  v8 = OUTLINED_FUNCTION_27_1(v0[4]);

  return v10(v8);
}

uint64_t sub_231D6A148()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  *v8 = v7;
  v10 = *(v9 + 48);
  v11 = *v1;
  OUTLINED_FUNCTION_4();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);
    OUTLINED_FUNCTION_97_3();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    *(v7 + 56) = v3;
    *(v7 + 64) = v5;
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_97_3();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }
}

uint64_t sub_231D6A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D6A2A8()
{
  OUTLINED_FUNCTION_29();
  v1 = **(v0 + 16);
  *(v0 + 40) = v1;
  if (v1)
  {
    v2 = *(*(v0 + 24) + 24);
    v3 = v1;
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_88_5(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_110_4(v5);

    return sub_231CE0700();
  }

  else
  {
    OUTLINED_FUNCTION_14_0();

    return v8();
  }
}

uint64_t sub_231D6A388()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D6A46C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_14_0();

  return v1();
}

void sub_231D6A4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_118();
  v79 = v23;
  v80 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v81 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v39 = OUTLINED_FUNCTION_47(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v75 - v42;
  v83 = sub_231E10E30();
  v44 = OUTLINED_FUNCTION_24(v83);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v75 - v53;
  v55 = *v36;
  v82 = v34;
  v56 = sub_231D6AA3C(v34, v32, v55);
  if (!v58)
  {
LABEL_15:
    v70 = sub_231E119F0();
    (*(*(v70 - 8) + 16))(v43, v80, v70);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v70);
    v71 = swift_allocObject();
    v71[2] = 0;
    v71[3] = 0;
    v72 = v82;
    v71[4] = v82;
    v71[5] = v32;
    v71[6] = a21;
    v71[7] = a22;
    v71[8] = a23;

    v73 = sub_231D6AE00(0, 0, v43, &unk_231E1D470, v71);
    sub_231CE1118(v43, &qword_27DD75180, &qword_231E13690);

    v74 = *v36;
    swift_isUniquelyReferenced_nonNull_native();
    v84 = *v36;
    sub_231D6C1DC(v30, v28, v73, v72, v32);
    *v36 = v84;
    sub_231D621EC();

    goto LABEL_18;
  }

  v59 = v57;
  v78 = v58;
  if (v57)
  {
    if (v28)
    {
      v60 = v56 == v30 && v57 == v28;
      if (v60 || (sub_231E12100() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_12;
  }

  if (v28)
  {
LABEL_12:
    v77 = v59;
    v65 = sub_231DC4AB8();
    (*(v46 + 16))(v51, v65, v83);

    v66 = sub_231E10E10();
    v67 = sub_231E11AF0();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_98_0();
      v76 = v30;
      v69 = v68;
      v75 = OUTLINED_FUNCTION_68();
      v84 = v75;
      *v69 = 136315394;
      *(v69 + 4) = sub_231CB5000(v79, v26, &v84);
      *(v69 + 12) = 2080;
      *(v69 + 14) = sub_231CB5000(v82, v32, &v84);
      _os_log_impl(&dword_231CAE000, v66, v67, "Cancelling existing %s smart replies precomputation task with key: %s", v69, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      v30 = v76;
      OUTLINED_FUNCTION_30();
    }

    (*(v46 + 8))(v51, v83);
    sub_231E11A00();

    goto LABEL_15;
  }

LABEL_9:
  v61 = sub_231DC4AB8();
  (*(v46 + 16))(v54, v61, v83);

  v62 = sub_231E10E10();
  v63 = sub_231E11AF0();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_98_0();
    v84 = OUTLINED_FUNCTION_68();
    *v64 = 136315394;
    *(v64 + 4) = sub_231CB5000(v79, v26, &v84);
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_231CB5000(v82, v32, &v84);
    _os_log_impl(&dword_231CAE000, v62, v63, "Ignoring identical request for %s with key: %s", v64, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v46 + 8))(v54, v83);
  v73 = 0;
LABEL_18:
  *v81 = v73;
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D6AA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_231CE0CA4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 24 * v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];

  return v7;
}

uint64_t sub_231D6AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D6AAD0()
{
  OUTLINED_FUNCTION_47_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_231E11D70();

  MEMORY[0x23837CC20](v3, v2);
  sub_231E116A0();

  v0[7] = os_transaction_create();

  v8 = (v1 + *v1);
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_231D6AC40;
  v6 = v0[5];

  return v8();
}

uint64_t sub_231D6AC40()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D6AD24()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0[6] + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  os_unfair_lock_lock(v3 + 6);
  sub_231D6CE6C();
  v5 = v0[7];
  os_unfair_lock_unlock(v3 + 6);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_231D6AE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_231CE6758(a3, v26 - v11);
  v13 = sub_231E119F0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_231CE1118(v12, &qword_27DD75180, &qword_231E13690);
  }

  else
  {
    sub_231E119E0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_231E11920();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_231E116A0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_231D6B094()
{
  OUTLINED_FUNCTION_118();
  v55 = v1;
  OUTLINED_FUNCTION_95_5();
  v57 = sub_231E0F660();
  v2 = OUTLINED_FUNCTION_24(v57);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v54 = v7 - v8;
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_91_5(v10, v11, v12, v13, v14, v15, v16, v17, v49);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = sub_231E10400();
  v22 = OUTLINED_FUNCTION_24(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_1();
  v29 = v28 - v27;
  v61[2] = MEMORY[0x277D84FA0];
  v30 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  v31 = *(v0 + 16);
  if (v31)
  {
    v33 = *(v24 + 16);
    v32 = v24 + 16;
    v34 = v0 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v56 = (v4 + 8);
    v59 = *(v32 + 56);
    v60 = v33;
    v49 = (v4 + 32);
    v50 = v30;
    v51 = (v4 + 16);
    v58 = (v32 - 8);
    v52 = v32;
    v53 = v21;
    do
    {
      v60(v29, v34, v21);
      v35 = sub_231E103F0();
      if (v36)
      {
        v37 = v35;
        v38 = v36;

        sub_231D42148(v61, v37, v38);

        sub_231E0F650();
        sub_231E103E0();
        if (v39)
        {
          v40 = sub_231E115F0();

          v41 = [v50 personNameComponentsFromString_];

          if (v41)
          {
            sub_231E0F640();

            (*v56)(v20, v57);
            v42 = *v49;
            OUTLINED_FUNCTION_94_5();
            v43();
          }
        }

        v44 = v57;
        (*v51)(v54, v20, v57);
        v45 = v55;
        v46 = *v55;
        swift_isUniquelyReferenced_nonNull_native();
        v61[0] = *v45;
        v47 = OUTLINED_FUNCTION_83();
        sub_231D6C068(v47, v48, v38);

        *v45 = v61[0];
        (*v56)(v20, v44);
        v21 = v53;
      }

      (*v58)(v29, v21);
      v34 += v59;
      --v31;
    }

    while (v31);
  }

  else
  {
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D6B3F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  v4 = *(v0 + 88);
  swift_unknownObjectRelease();
  v5 = *(v0 + 96);

  return v0;
}

uint64_t sub_231D6B448()
{
  sub_231D6B3F0();

  return swift_deallocClassInstance();
}

uint64_t sub_231D6B4A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_231D6B4E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231D6B540()
{
  OUTLINED_FUNCTION_29();
  v0 = sub_231E106A0();
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_44_8();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_24_8(v4);

  return sub_231D653F8();
}

uint64_t sub_231D6B5F8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_32(v4);
  OUTLINED_FUNCTION_94_5();

  return sub_231D656B4(v6, v7, v8);
}

uint64_t sub_231D6B680()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_13(v1);

  return sub_231D658EC();
}

id sub_231D6B70C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_231E11850();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithResponseTexts_];

  return v3;
}

id sub_231D6B778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v13 = sub_231E115F0();

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if (a3)
    {
LABEL_3:
      sub_231E0F660();
      v14 = sub_231E11520();

      if (a4)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v14 = 0;
  if (a4)
  {
LABEL_4:
    v15 = sub_231E11A50();

    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v15 = 0;
  if (a5)
  {
LABEL_5:
    v16 = sub_231E11A50();

    if (a6)
    {
      goto LABEL_6;
    }

LABEL_12:
    v17 = 0;
    if (a7)
    {
      goto LABEL_7;
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v16 = 0;
  if (!a6)
  {
    goto LABEL_12;
  }

LABEL_6:
  v17 = sub_231E11A50();

  if (!a7)
  {
    goto LABEL_13;
  }

LABEL_7:
  v18 = sub_231E11520();

LABEL_14:
  v19 = [v7 initWithThreadIdentifier:v13 participantsIDtoNamesMap:v14 firstPersonIDs:v15 primaryRecipients:v16 secondaryRecipients:v17 infoDict:v18];

  return v19;
}

uint64_t sub_231D6B930(uint64_t a1)
{
  v2 = sub_231D6D468(&qword_27DD75018);
  v3 = sub_231D6D468(&qword_27DD75020);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_231D6B9C8()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_97_3();

  return sub_231D68FA0(v3, v4, v5, v6, v7);
}

uint64_t sub_231D6BA58()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_116_5();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_29_0(v2);

  return sub_231D6918C(v4, v5, v0);
}

uint64_t sub_231D6BAE8()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_97_3();

  return sub_231D69328();
}

uint64_t sub_231D6BB78()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_97_3();

  return sub_231D69DB0(v3, v4, v5, v6, v7);
}

uint64_t sub_231D6BC08()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return sub_231D6A290(v3, v4, v5, v6);
}

uint64_t sub_231D6BC94()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_17(v5);

  return sub_231D6A06C(v7, v8, v9, v3);
}

unint64_t sub_231D6BD2C()
{
  result = qword_27DD74FD0;
  if (!qword_27DD74FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD74FD0);
  }

  return result;
}

void sub_231D6BD70(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FE0, &qword_231E1D450), v2 = sub_231E11D50(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_231E11620();
      sub_231E12220();
      v27 = v6;
      sub_231E116E0();
      v8 = sub_231E12250();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_231E11620();
        v17 = v16;
        if (v15 == sub_231E11620() && v17 == v18)
        {

          goto LABEL_17;
        }

        v20 = sub_231E12100();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_231D6BF74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_231CE0CA4(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FF0, &unk_231E1D478);
  sub_231E11EA0();
  v10 = *(*(v16 + 48) + 16 * v7 + 8);

  v11 = (*(v16 + 56) + 24 * v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  sub_231E11EB0();
  *v3 = v16;
  return v12;
}

uint64_t sub_231D6C068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_231CE0CA4(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FE8, &unk_231E1D458);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_231CE0CA4(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_231E12160();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = sub_231E0F660();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v11;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_231D6C348(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_231D6C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_231CE0CA4(a4, a5);
  if (__OFADD__(*(v12 + 16), (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74FF0, &unk_231E1D478);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v6;
  v18 = sub_231CE0CA4(a4, a5);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_231E12160();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *v6;
  if (v16)
  {
    v21 = (v20[7] + 24 * v15);
    v23 = v21[1];
    v22 = v21[2];
    *v21 = a1;
    v21[1] = a2;
    v21[2] = a3;
  }

  else
  {
    sub_231D6C3F8(v15, a4, a5, a1, a2, a3, v20);
  }
}

uint64_t sub_231D6C348(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_231E0F660();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_231D6C3F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_231D6C44C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_231E12220();
  sub_231E116E0();
  v7 = sub_231E12250();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_231E12100() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_231D42658();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_231D6C574(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_231D6C574(unint64_t result)
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

    v9 = sub_231E11CF0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_231E12220();

        sub_231E116E0();
        v15 = sub_231E12250();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

void sub_231D6C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_231E115F0();

  v11 = sub_231E115F0();

  v12 = sub_231E115F0();

  [a8 addTextEntry:v10 timestamp:a3 senderIdentifier:v11 entryIdentifier:v12];
}

void sub_231D6C800()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  OUTLINED_FUNCTION_95_5();
  v3 = sub_231E0F660();
  v4 = OUTLINED_FUNCTION_24(v3);
  v71 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v69 = v8 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_91_5(v11, v12, v13, v14, v15, v16, v17, v18, v66[0]);
  MEMORY[0x28223BE20](v19);
  v70 = v66 - v20;
  v21 = sub_231E10400();
  v22 = OUTLINED_FUNCTION_24(v21);
  v73 = v23;
  v74 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v68 = (v26 - v27);
  MEMORY[0x28223BE20](v28);
  v30 = v66 - v29;
  v31 = v2(0);
  v32 = OUTLINED_FUNCTION_24(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v38 = v66 - v37;
  (*(v34 + 16))(v66 - v37, v0, v31);
  OUTLINED_FUNCTION_102_3();
  v39 = sub_231E10A50();
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v75 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  v72 = v3;
  v78 = sub_231E11530();
  OUTLINED_FUNCTION_102_3();
  sub_231E10A60();
  sub_231D6B094();
  v42 = v41;

  v77[2] = v42;
  v76 = v40;
  v43 = *(v40 + 16);
  if (v43)
  {
    v44 = (v76 + 40);
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;

      sub_231D6C44C(v45, v46);

      v44 += 2;
      --v43;
    }

    while (v43);
  }

  OUTLINED_FUNCTION_102_3();
  sub_231E10A40();
  v47 = sub_231E103F0();
  v49 = v48;
  v50 = v74;
  v51 = *(v73 + 8);
  v51(v30, v74);
  if (v49)
  {

    v73 = v47;
    v67 = v49;
    sub_231D42148(v77, v47, v49);

    v52 = v70;
    sub_231E0F650();
    v53 = v68;
    OUTLINED_FUNCTION_102_3();
    sub_231E10A40();
    (*(v34 + 8))(v38, v31);
    sub_231E103E0();
    v55 = v54;
    v51(v53, v50);
    v57 = v71;
    v56 = v72;
    v58 = v75;
    if (v55)
    {
      v59 = sub_231E115F0();

      v60 = [v58 personNameComponentsFromString_];

      if (v60)
      {
        sub_231E0F640();

        (*(v57 + 8))(v52, v56);
        v61 = *(v57 + 32);
        v62 = OUTLINED_FUNCTION_83();
        v63(v62);
      }
    }

    v64 = v69;
    (*(v57 + 16))(v69, v52, v56);
    v65 = v78;
    swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v65;
    sub_231D6C068(v64, v73, v67);

    v78 = v77[0];
    (*(v57 + 8))(v52, v56);
  }

  else
  {
    (*(v34 + 8))(v38, v31);
    v58 = v75;
  }

  sub_231D3FF4C(v76);

  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D6CD28()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_32(v7);
  OUTLINED_FUNCTION_97_3();

  return sub_231D6AAB4(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_231D6CDD0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_116_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;
  v3 = OUTLINED_FUNCTION_23_9();

  return v4(v3);
}

uint64_t sub_231D6CE6C()
{
  v1 = sub_231D6BF74(*(v0 + 16), *(v0 + 24));
  sub_231D6CEB0(v1, v2, v3);
  return sub_231D621EC();
}

uint64_t sub_231D6CEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_24(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);

  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + v8, v5 | 7);
}

uint64_t sub_231D6CFB4()
{
  OUTLINED_FUNCTION_29();
  v0 = sub_231E10340();
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_44_8();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_24_8(v4);

  return sub_231D62AE4();
}

uint64_t sub_231D6D06C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_32(v4);
  OUTLINED_FUNCTION_94_5();

  return sub_231D62DF8(v6, v7, v8);
}

uint64_t sub_231D6D0F4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_13(v1);

  return sub_231D63034();
}

uint64_t sub_231D6D180()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 40);
  return sub_231E11310();
}

uint64_t sub_231D6D1A8()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);
  OUTLINED_FUNCTION_106_5();
  OUTLINED_FUNCTION_97_3();

  return sub_231D681C8(v3, v4, v5, v6, v7);
}

uint64_t sub_231D6D238()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_116_5();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_29_0(v2);

  return sub_231D683B8(v4, v5, v0);
}

uint64_t sub_231D6D2C8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_6_17(v5);

  return sub_231D68A34();
}

uint64_t sub_231D6D360()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_13(v1);

  return sub_231D68DE8(v3, v4, v5, v6);
}

uint64_t sub_231D6D468(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TCTextCompositionAssistantResponseType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_23()
{
  result = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v4 = v0[143];
  v5 = v0[142];
  v6 = v0[141];
  v7 = v0[140];
  v8 = v0[139];
  v9 = v0[138];
  v10 = v0[135];
  v11 = v0[134];
  v12 = v0[133];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_14(uint64_t result)
{
  *(result + 8) = sub_231D67350;
  v2 = *(v1 + 1048);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_13()
{
  v2 = v0[50];
  result = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v8 = v0[44];
  v7 = v0[45];
  v10 = v0[40];
  v9 = v0[41];
  v11 = v0[38];
  v12 = v0[39];
  return result;
}

uint64_t OUTLINED_FUNCTION_31_9()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_10(uint64_t result)
{
  *(result + 8) = sub_231D643B0;
  v2 = *(v1 + 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1)
{

  return MEMORY[0x282200918](v2 + 16, 0, a1, &unk_231E1D438, v1, v2 + 976);
}

uint64_t OUTLINED_FUNCTION_42_8(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_231CB5000(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_48_7(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 1008);
  return result;
}

void OUTLINED_FUNCTION_49_8()
{
  v1 = v0[156];
  v2 = v0[155];
  v3 = v0[154];
}

void OUTLINED_FUNCTION_52_7()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_55_5()
{
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1392);
  v4 = (v0 + 1360);
  if (*(v0 + 1490))
  {
    v4 = (v0 + 1352);
  }

  v5 = *v4;
}

uint64_t OUTLINED_FUNCTION_56_8(uint64_t a1)
{
  *(a1 + 16) = *(v3 - 88);
  v4 = *(v1 + 32);
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t a1)
{
  *(v1 + 64) = a1;
  *(a1 + 16) = v2;
  v5 = *(v3 + 32);
  return a1 + v4;
}

uint64_t OUTLINED_FUNCTION_62_3()
{
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63_5()
{
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_69_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_75_3(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return sub_231E119F0();
}

uint64_t OUTLINED_FUNCTION_77_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 + 32) = a1;
  *(a1 + 16) = a9;
  *(a1 + 32) = v9;

  return swift_task_alloc();
}

BOOL OUTLINED_FUNCTION_79_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_81_5()
{
  result = v1[131];
  v3 = v1[129];
  v4 = v1[128];
  v5 = v1[126];
  v1[125] = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_3()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];
  result = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[33];
  return result;
}

uint64_t OUTLINED_FUNCTION_86_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 24);
  return v2 + 48;
}

__n128 OUTLINED_FUNCTION_89_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v10 + 40) = a1;
  result = a9;
  *(a1 + 16) = a9.n128_u64[0];
  *(a1 + 24) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_92_4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_93_5()
{
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[150];
  result = v0[149];
  v5 = v0[148];
  return result;
}

void *OUTLINED_FUNCTION_107_5(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v3;
  return result;
}

void OUTLINED_FUNCTION_108_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_110_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 32);
  return v2;
}

void *OUTLINED_FUNCTION_115_4(void *result)
{
  *(v3 + 1432) = result;
  result[2] = v4;
  result[3] = v1;
  result[4] = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_117_4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v9 + 56) = a1;
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t sub_231D6DA98()
{
  v0 = sub_231E10580();
  v2 = v1;
  v3 = sub_231CC7C18();
  if (v2)
  {
    if (v0 == *v3 && v2 == v3[1])
    {

      v6 = 0;
    }

    else
    {
      v5 = sub_231E12100();

      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_231D6DB14()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_27();

  return swift_deallocClassInstance();
}

uint64_t sub_231D6DB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = a5;
  v6 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D6DB78()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  type metadata accessor for TaskReference();
  OUTLINED_FUNCTION_27();
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = 0;
  OUTLINED_FUNCTION_27();
  v5 = swift_allocObject();
  *(v0 + 64) = v5;
  *(v5 + 16) = 0;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = *(v0 + 24);
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v7;
  *(v6 + 48) = v3;
  *(v6 + 56) = v2;
  *(v6 + 64) = v1;
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_231D6DCC4;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_231D6DCC4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D6DDC4()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231D6DE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v48 = a6;
  v49 = a7;
  v44 = a4;
  v45 = a5;
  v46 = a3;
  v47 = a2;
  v42 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  v50 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v39 - v19;
  v40 = &v39 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75030, &qword_231E1D748);
  OUTLINED_FUNCTION_27();
  v21 = swift_allocObject();
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  v22 = v21;
  v43 = sub_231E119F0();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v43);
  OUTLINED_FUNCTION_27();
  v23 = swift_allocObject();
  swift_weakInit();
  v41 = *(v13 + 16);
  v41(v16, a1, v10);
  v24 = *(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v45;
  *(v25 + 4) = v44;
  *(v25 + 5) = v26;
  *(v25 + 6) = v23;
  *(v25 + 7) = v22;
  v27 = *(v13 + 32);
  v28 = v10;
  v27(&v25[(v24 + 64) & ~v24], v16, v10);

  v29 = v40;
  v30 = sub_231CEB77C(0, 0, v40, &unk_231E1D758, v25);
  v31 = *(v47 + 16);
  *(v47 + 16) = v30;

  sub_231E11990();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v43);
  OUTLINED_FUNCTION_27();
  v32 = swift_allocObject();
  swift_weakInit();
  v41(v16, v42, v10);
  v33 = (v24 + 72) & ~v24;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = a8;
  v35 = v48;
  *(v34 + 40) = v32;
  *(v34 + 48) = v35;
  *(v34 + 56) = v49;
  *(v34 + 64) = v22;
  v27((v34 + v33), v16, v28);
  sub_231D6ECF0(v35);
  v36 = sub_231CEB77C(0, 0, v29, &unk_231E1D768, v34);
  v37 = *(v46 + 16);
  *(v46 + 16) = v36;
}

_BYTE *sub_231D6E1B4(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738);
    result = sub_231E11940();
    *v1 = 1;
  }

  return result;
}

uint64_t sub_231D6E208()
{
  OUTLINED_FUNCTION_18();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_231D6E2F4;

  return v8();
}

uint64_t sub_231D6E2F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D6E3D8()
{
  OUTLINED_FUNCTION_50_0();
  sub_231E11A30();
  v2 = v0[5];
  OUTLINED_FUNCTION_10_15();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 16))
    {
      v4 = *(Strong + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
      sub_231E11A00();
    }
  }

  v6 = v0[6];
  v5 = v0[7];
  *(swift_task_alloc() + 16) = v5;
  os_unfair_lock_lock((v6 + 20));
  sub_231D6ED2C((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_231D6E518()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_9_13();

  return sub_231D6E208();
}

uint64_t sub_231D6E604()
{
  OUTLINED_FUNCTION_18();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[6] = v5;
  v0[5] = v6;
  v7 = sub_231E10E30();
  v0[11] = v7;
  v8 = *(v7 - 8);
  v0[12] = v8;
  v9 = *(v8 + 64) + 15;
  v0[13] = swift_task_alloc();
  v10 = sub_231E11E70();
  v0[14] = v10;
  v11 = *(v10 - 8);
  v0[15] = v11;
  v12 = *(v11 + 64) + 15;
  v0[16] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231D6E720()
{
  v1 = v0[16];
  v2 = v0[5];
  sub_231E12280();
  sub_231E12190();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_231D6E7F8;
  v4 = v0[16];
  v5 = OUTLINED_FUNCTION_25();

  return sub_231CB4540(v5, v6, 0, 0, 1);
}

uint64_t sub_231D6E7F8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2[17];
  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v9 + 144) = v0;

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_25();
  v12(v11);
  if (v0)
  {
    v13 = sub_231D6EB88;
  }

  else
  {
    v13 = sub_231D6E958;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_231D6E958()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[18];
  sub_231E11A30();
  if (v1)
  {
    v2 = v0[16];
    v3 = v0[13];

    OUTLINED_FUNCTION_19();
  }

  else
  {
    v6 = v0[6];
    OUTLINED_FUNCTION_10_15();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 16))
      {
        v8 = *(Strong + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
        sub_231E11A00();
      }
    }

    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    v12 = sub_231CB4EEC();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_231E10E10();
    v14 = sub_231E11AD0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_231CAE000, v13, v14, "Task timed out", v15, 2u);
      MEMORY[0x23837E1D0](v15, -1, -1);
    }

    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];
    v19 = v0[7];

    v20 = *(v17 + 8);
    v21 = OUTLINED_FUNCTION_25();
    v23 = v22(v21);
    if (v19)
    {
      v24 = v0[8];
      (v0[7])(v23);
    }

    v26 = v0[9];
    v25 = v0[10];
    *(swift_task_alloc() + 16) = v25;
    os_unfair_lock_lock((v26 + 20));
    sub_231D6ED00((v26 + 16));
    os_unfair_lock_unlock((v26 + 20));
    v27 = v0[16];
    v28 = v0[13];

    OUTLINED_FUNCTION_19();
  }

  return v4();
}

uint64_t sub_231D6EB88()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_231D6EBF0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738) - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_231CBFF60;
  OUTLINED_FUNCTION_9_13();

  return sub_231D6E604();
}

uint64_t sub_231D6ECF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_15()
{

  return swift_beginAccess();
}

uint64_t sub_231D6ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v6 = sub_231E0F950();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = sub_231E10370();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D6EEC8, 0, 0);
}

uint64_t sub_231D6EEC8()
{
  v1 = v0[7];
  if (sub_231D6DA98())
  {
    if (sub_231D56880(0, v0[6]))
    {
      v2 = 13;
      v3 = 42;
      goto LABEL_21;
    }
  }

  else
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[7];
    sub_231E104E0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v4);
    v8 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[11];
    if (EnumTagSinglePayload == 1)
    {
      v12 = *MEMORY[0x277D422D8];
      v13 = *(v10 + 104);
      v13(v8, v12, v0[12]);
      if (__swift_getEnumTagSinglePayload(v11, 1, v9) != 1)
      {
        sub_231D6F4D8(v0[11]);
      }
    }

    else
    {
      (*(v10 + 32))(v8, v0[11], v0[12]);
      v12 = *MEMORY[0x277D422D8];
      v13 = *(v10 + 104);
    }

    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[12];
    v17 = v0[13];
    v13(v15, v12, v16);
    sub_231D6F540();
    sub_231E117E0();
    sub_231E117E0();
    v18 = *(v17 + 8);
    v18(v15, v16);
    v18(v14, v16);
    if (v0[2] != v0[3])
    {
      v2 = 13;
      v3 = 33;
      goto LABEL_21;
    }

    if (sub_231D56880(0, v0[6]) || (v19 = v0[5], v20 = v19[3], v21 = v19[4], __swift_project_boxed_opaque_existential_0(v19, v20), ((*(v21 + 8))(v20, v21) & 1) == 0))
    {
      v22 = *sub_231D70008();

      v23 = sub_231D70048();

      if ((v23 & 1) == 0)
      {
        v2 = 13;
        v3 = 58;
        goto LABEL_21;
      }
    }
  }

  v24 = v0[7];
  v25 = v0[4];
  v3 = 0;
  v2 = 255;
  if ((sub_231D6DA98() & 1) == 0 || !v25)
  {
LABEL_21:
    v40 = v0[14];
    v39 = v0[15];
    v42 = v0[10];
    v41 = v0[11];

    v43 = v0[1];

    return v43(v3, 0, v2);
  }

  v26 = v0[7];
  v27 = v0[4];

  v28 = sub_231E10580();
  v0[16] = v29;
  if (!v29)
  {

    v3 = 0;
    v2 = 255;
    goto LABEL_21;
  }

  v30 = v28;
  v31 = v29;
  v32 = v0[10];
  v33 = v0[4];
  sub_231DB0818(v28);
  v34 = *(*v27 + 136);
  v44 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  v0[17] = v36;
  *v36 = v0;
  v36[1] = sub_231D6F2B0;
  v37 = v0[10];

  return (v44)(v30, v31, v37, 0);
}

uint64_t sub_231D6F2B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 136);
  v6 = *(*v3 + 128);
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 72);
  v9 = *(*v3 + 64);
  v11 = *v3;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  *(v4 + 160) = a3;

  (*(v8 + 8))(v7, v9);

  return MEMORY[0x2822009F8](sub_231D6F430, 0, 0);
}

uint64_t sub_231D6F430()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 160);

  v9 = *(v0 + 8);

  return v9(v2, v3, v8);
}

uint64_t sub_231D6F4D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231D6F540()
{
  result = qword_2814CB020;
  if (!qword_2814CB020)
  {
    sub_231E10370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CB020);
  }

  return result;
}

unint64_t sub_231D6F598(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_231D6F5AC()
{
  result = qword_27DD75038;
  if (!qword_27DD75038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75038);
  }

  return result;
}

unint64_t sub_231D6F600@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231D6F598(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SmartRepliesStatus(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SmartRepliesStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231D6F790()
{
  sub_231CE11D8();
  sub_231E11C40();
  OUTLINED_FUNCTION_0_27();

  OUTLINED_FUNCTION_0_27();

  v0 = OUTLINED_FUNCTION_0_27();

  return v0;
}

uint64_t sub_231D6F8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75040, &qword_231E1D838);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v18[0] = a1;
  v18[1] = a2;
  sub_231E0FBB0();
  sub_231D6FA2C();
  sub_231D6FA80();
  v9 = sub_231E11570();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v5 + 8))(v8, v4);
  v16 = MEMORY[0x23837CBB0](v9, v11, v13, v15);

  return v16;
}

unint64_t sub_231D6FA2C()
{
  result = qword_2814CAFE0;
  if (!qword_2814CAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CAFE0);
  }

  return result;
}

unint64_t sub_231D6FA80()
{
  result = qword_2814CBC38;
  if (!qword_2814CBC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD75040, &qword_231E1D838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBC38);
  }

  return result;
}

void sub_231D6FAE4(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = objc_autoreleasePoolPush();
  sub_231D6FB3C(v2, a1 & 1, a2);

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_231D6FB3C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v50 = sub_231E0F950();
  v5 = OUTLINED_FUNCTION_24(v50);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = (v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = v49 - v13;
  v15 = sub_231E10E30();
  v16 = OUTLINED_FUNCTION_24(v15);
  v51 = v17;
  v52 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v49 - v23;
  v25 = [a1 attributeSet];
  sub_231CC33AC(v25, &selRef_transcribedTextContent);
  if ((a2 & 1) != 0 && !v26)
  {
    sub_231CC33AC(v25, &selRef_contentSnippet);
  }

  sub_231CC33AC(v25, &selRef_uniqueIdentifier);
  if (!v27)
  {

    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_28();
    v35(v24);
    v36 = sub_231E10E10();
    v37 = sub_231E11AE0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      OUTLINED_FUNCTION_2_23(&dword_231CAE000, v39, v40, "No unique identifier while creating audio transcript entity");
      MEMORY[0x23837E1D0](v38, -1, -1);
    }

    v12[1](v24, v14);
    goto LABEL_13;
  }

  v28 = [v25 contentCreationDate];
  if (!v28)
  {

    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_28();
    v41(v22);
    v42 = sub_231E10E10();
    v43 = sub_231E11AE0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      OUTLINED_FUNCTION_2_23(&dword_231CAE000, v45, v46, "No date while creating audio transcript entity");
      MEMORY[0x23837E1D0](v44, -1, -1);
    }

    v12[1](v22, v14);
LABEL_13:
    v34 = 1;
    v33 = v53;
    goto LABEL_14;
  }

  v29 = v28;
  sub_231E0F910();

  v30 = sub_231CC33AC(v25, &selRef_domainIdentifier);
  v51 = v31;
  v52 = v30;
  v49[1] = sub_231CC33AC(v25, &selRef_bundleID);
  v32 = v50;
  (*(v7 + 16))(v12, v14, v50);
  [v25 protectionClass];
  v33 = v53;
  sub_231E10AC0();

  (*(v7 + 8))(v14, v32);
  v34 = 0;
LABEL_14:
  v47 = sub_231E10AE0();
  return __swift_storeEnumTagSinglePayload(v33, v34, 1, v47);
}

id sub_231D6FF64()
{
  type metadata accessor for FocusModeState();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(PSUModeConfigurationService) init];
  *(v0 + 16) = result;
  qword_2814CE648 = v0;
  return result;
}

uint64_t sub_231D6FFB8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(PSUModeConfigurationService) init];
  return v0;
}

uint64_t *sub_231D70008()
{
  if (qword_2814CD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  return &qword_2814CE648;
}

id sub_231D70048()
{
  v42 = sub_231E10E30();
  v0 = OUTLINED_FUNCTION_24(v42);
  v2 = v1;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v0);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = [BiomeLibrary() UserFocus];
  swift_unknownObjectRelease();
  v19 = [v18 ComputedMode];
  swift_unknownObjectRelease();
  v20 = sub_231E115F0();
  v21 = sub_231E0F950();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v21);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v21);
  v22 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v23 = sub_231D7076C(v16, v14, 1, 1, 0);
  v24 = [v19 publisherWithUseCase:v20 options:v23];

  v47 = sub_231D70594;
  v48 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_231D2F010;
  v46 = &block_descriptor_7;
  v25 = _Block_copy(&aBlock);
  v47 = sub_231D708C0;
  v48 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_231D70A18;
  v46 = &block_descriptor_3_0;
  v26 = _Block_copy(&aBlock);

  v27 = [v24 sinkWithCompletion:v25 receiveInput:v26];
  _Block_release(v26);
  _Block_release(v25);

  swift_beginAccess();
  if (*(v17 + 24))
  {
    v28 = *(v17 + 16);
    v29 = *(v41 + 16);
    v30 = *(v17 + 24);

    v31 = sub_231E115F0();

    v32 = [v29 doesModeHaveIntelligentBreakthroughEnabled_];

    v33 = sub_231DC4DC0();
    v34 = v42;
    (*(v2 + 16))(v9, v33, v42);
    v35 = sub_231E10E10();
    v36 = sub_231E11AC0();
    if (!os_log_type_enabled(v35, v36))
    {
      v7 = v9;
      goto LABEL_9;
    }

    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = v32;
    _os_log_impl(&dword_231CAE000, v35, v36, "Is in mode with intelligent breakthrough enabled: %{BOOL}d", v37, 8u);
    v7 = v9;
  }

  else
  {
    v38 = sub_231DC4DC0();
    v34 = v42;
    (*(v2 + 16))(v7, v38, v42);
    v35 = sub_231E10E10();
    v39 = sub_231E11AC0();
    if (!os_log_type_enabled(v35, v39))
    {
      v32 = 0;
      goto LABEL_9;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_231CAE000, v35, v39, "Not in a mode", v37, 2u);
    v32 = 0;
  }

  MEMORY[0x23837E1D0](v37, -1, -1);
LABEL_9:

  (*(v2 + 8))(v7, v34);

  return v32;
}

id sub_231D70594(void *a1)
{
  v2 = sub_231E10E30();
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v11 = result;
    v12 = sub_231DC4DC0();
    (*(v5 + 16))(v9, v12, v2);
    v13 = v11;
    v14 = sub_231E10E10();
    v15 = sub_231E11AD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v13;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_231CAE000, v14, v15, "Could not scan computed mode stream: %@", v16, 0xCu);
      sub_231CC340C(v17);
      MEMORY[0x23837E1D0](v17, -1, -1);
      MEMORY[0x23837E1D0](v16, -1, -1);
    }

    else
    {
      v18 = v14;
      v14 = v13;
    }

    return (*(v5 + 8))(v9, v2);
  }

  return result;
}

id sub_231D7076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_231E0F950();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_231E0F8C0();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_231E0F8C0();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_231D708C0(void *a1)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 starting];

    if (v5)
    {
      v6 = [a1 eventBody];
      if (v6)
      {
        v7 = sub_231D709A0(v6);
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      swift_beginAccess();
      v10 = *(v1 + 24);
      *(v1 + 16) = v7;
      *(v1 + 24) = v9;
    }
  }
}

uint64_t sub_231D709A0(void *a1)
{
  v2 = [a1 mode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231D70A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = sub_231E0F950();
  v4[5] = v5;
  OUTLINED_FUNCTION_6(v5);
  v4[6] = v6;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_231E107F0();
  v4[8] = v9;
  OUTLINED_FUNCTION_6(v9);
  v4[9] = v10;
  v12 = *(v11 + 64) + 15;
  v4[10] = swift_task_alloc();
  v13 = sub_231E10210();
  v4[11] = v13;
  OUTLINED_FUNCTION_6(v13);
  v4[12] = v14;
  v16 = *(v15 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D70B80, 0, 0);
}

uint64_t sub_231D70B80()
{
  if (sub_231D56880(1, v0[3]))
  {
    v1 = 13;
    v2 = 39;
LABEL_24:
    v34 = v0[13];
    v35 = v0[10];
    v36 = v0[7];

    v37 = v0[1];

    return v37(v2, 0, v1);
  }

  v3 = v0[4];
  if ((sub_231CE2244() & 1) == 0)
  {
    v4 = v0[4];
    v5 = sub_231E10130();
    if (v5 != 2 && (v5 & 1) != 0)
    {
      v1 = 13;
      v2 = 14;
      goto LABEL_24;
    }
  }

  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  v9 = v0[4];
  sub_231E10220();
  sub_231E10200();
  (*(v7 + 8))(v6, v8);
  v10 = sub_231E100A0();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v0[9];
    v14 = *(v12 + 16);
    v13 = v12 + 16;
    v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v50 = *(v13 + 56);
    v51 = v14;
    v16 = MEMORY[0x277D84F90];
    do
    {
      v17 = v0[10];
      v18 = v0[8];
      v51(v17, v15, v18);
      v19 = sub_231E107A0();
      v21 = v20;
      (*(v13 - 8))(v17, v18);
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_231CE0B9C(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = sub_231CE0B9C((v22 > 1), v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        v24 = &v16[16 * v23];
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
      }

      v15 += v50;
      --v11;
    }

    while (v11);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v25 = v0[4];
  v26 = sub_231DC3C70(v16);

  v27 = sub_231D7116C();
  v28 = sub_231E116F0();

  v30 = v28 + v26;
  if (__OFADD__(v28, v26))
  {
    __break(1u);
    goto LABEL_33;
  }

  v31 = __OFADD__(v30, v27);
  v2 = v30 + v27;
  if (v31)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v32 = sub_231CC8B18();
  if (v33)
  {
    v32 = sub_231D11754();
  }

  if (v2 < v32)
  {
    v1 = 0;
    goto LABEL_24;
  }

  v38 = v0[4];
  v39 = sub_231E10140();
  if (!v40)
  {
    v39 = sub_231DE8A04(1);
  }

  v41 = v39;
  v42 = v40;
  v0[14] = v40;
  v43 = v0[7];
  v44 = v0[2];
  sub_231DB0818(v39);
  v45 = *(*v44 + 136);
  v52 = (v45 + *v45);
  v46 = v45[1];
  v47 = swift_task_alloc();
  v0[15] = v47;
  *v47 = v0;
  v47[1] = sub_231D70F90;
  v48 = v0[7];
  v49 = v0[2];

  return (v52)(v41, v42, v48, 0);
}

uint64_t sub_231D70F90(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *(*v3 + 112);
  v9 = *(*v3 + 56);
  v10 = *(*v3 + 48);
  v11 = *(*v3 + 40);
  v12 = *v3;

  (*(v10 + 8))(v9, v11);
  v13 = v6[13];
  v14 = v6[10];
  v15 = v6[7];

  v16 = *(v12 + 8);

  return v16(a1, a2, a3);
}

uint64_t sub_231D7116C()
{
  v93 = sub_231E10470();
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231E10010();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v92 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v85 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v85 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v85 - v24;
  sub_231E10080();
  v26 = sub_231E10290();
  v27 = 0;
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
  {
    sub_231D71A98(v25, v23);
    OUTLINED_FUNCTION_1_0();
    v29 = v28;
    v31 = *(v30 + 88);
    v32 = OUTLINED_FUNCTION_2_24();
    v34 = v33(v32);
    if (v34 == *MEMORY[0x277D42288])
    {
      v88 = v25;
      v35 = *(v29 + 96);
      v36 = OUTLINED_FUNCTION_2_24();
      result = v37(v36);
      v39 = 0;
      v40 = *v23;
      v41 = *(*v23 + 16);
      v93 = v9 + 16;
      v89 = (v9 + 32);
      v42 = (v9 + 8);
      v90 = MEMORY[0x277D84F90];
      while (v41 != v39)
      {
        if (v39 >= *(v40 + 16))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        v43 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v44 = *(v9 + 72);
        (*(v9 + 16))(v18, v40 + v43 + v44 * v39, v7);
        if (sub_231E0FFC0())
        {
          result = (*v42)(v18, v7);
          ++v39;
        }

        else
        {
          v87 = *v89;
          v87(v91, v18, v7);
          v45 = v90;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94 = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_231D41D7C(0, *(v45 + 16) + 1, 1);
            v45 = v94;
          }

          v48 = *(v45 + 16);
          v47 = *(v45 + 24);
          v49 = v48 + 1;
          if (v48 >= v47 >> 1)
          {
            v90 = v48 + 1;
            v86 = v48;
            sub_231D41D7C(v47 > 1, v48 + 1, 1);
            v49 = v90;
            v48 = v86;
            v45 = v94;
          }

          ++v39;
          *(v45 + 16) = v49;
          v90 = v45;
          result = (v87)(v45 + v43 + v48 * v44, v91, v7);
        }
      }

      v68 = *(v90 + 16);
      if (v68)
      {
        v94 = MEMORY[0x277D84F90];
        v69 = v90;
        sub_231D1C82C(0, v68, 0);
        v70 = v94;
        v71 = v69 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v91 = *(v9 + 72);
        v72 = *(v9 + 16);
        do
        {
          v72(v92, v71, v7);
          sub_231E0FFB0();
          if (v73)
          {
            v74 = sub_231E116F0();
          }

          else
          {
            v74 = 0;
          }

          (*v42)(v92, v7);
          v94 = v70;
          v76 = *(v70 + 16);
          v75 = *(v70 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_231D1C82C((v75 > 1), v76 + 1, 1);
            v70 = v94;
          }

          *(v70 + 16) = v76 + 1;
          *(v70 + 8 * v76 + 32) = v74;
          v71 += v91;
          --v68;
        }

        while (v68);
      }

      else
      {

        v70 = MEMORY[0x277D84F90];
      }

      v80 = *(v70 + 16);
      if (v80)
      {
        v27 = 0;
        v81 = 32;
        while (1)
        {
          v82 = *(v70 + v81);
          v83 = __OFADD__(v27, v82);
          v27 += v82;
          if (v83)
          {
            goto LABEL_42;
          }

          v81 += 8;
          if (!--v80)
          {

            goto LABEL_37;
          }
        }
      }

      v27 = 0;
LABEL_37:
      v25 = v88;
    }

    else if (v34 == *MEMORY[0x277D42290])
    {
      v50 = *(v29 + 96);
      v51 = OUTLINED_FUNCTION_2_24();
      v52(v51);
      v53 = *v23;
      v54 = *(*v23 + 16);
      if (v54)
      {
        v88 = v25;
        v94 = MEMORY[0x277D84F90];
        sub_231CC686C(0, v54, 0);
        v55 = v94;
        v56 = (v1 + 16);
        v57 = *(v1 + 16);
        v58 = *(v1 + 80);
        v89 = v53;
        v59 = v53 + ((v58 + 32) & ~v58);
        v90 = *(v56 + 7);
        v91 = v57;
        v92 = v56;
        v60 = (v56 - 8);
        do
        {
          v61 = v93;
          (v91)(v6, v59, v93);
          v62 = sub_231E10450();
          v64 = v63;
          (*v60)(v6, v61);
          v94 = v55;
          v66 = *(v55 + 16);
          v65 = *(v55 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_231CC686C((v65 > 1), v66 + 1, 1);
            v55 = v94;
          }

          *(v55 + 16) = v66 + 1;
          v67 = v55 + 16 * v66;
          *(v67 + 32) = v62;
          *(v67 + 40) = v64;
          v59 += v90;
          --v54;
        }

        while (v54);

        v25 = v88;
      }

      else
      {
        v84 = *v23;

        v55 = MEMORY[0x277D84F90];
      }

      v27 = sub_231DC3C70(v55);
    }

    else
    {
      v77 = *(v29 + 8);
      v78 = OUTLINED_FUNCTION_2_24();
      v79(v78);
      v27 = 0;
    }
  }

  sub_231D71A30(v25);
  return v27;
}

uint64_t sub_231D7185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_231D71900;

  return sub_231D70A1C(v7, a3, a4);
}

uint64_t sub_231D71900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_231D71A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231D71A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231D71B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  sub_231D71B78(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_231D71B78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 2)
  {
    __break(1u);
  }

  else
  {
    v9 = *v5;
    v5[2] = result;
    v5[3] = a2;
    sub_231CE6758(a3, v5 + _MergedGlobals_3);
    v10 = (v5 + qword_2814CDF60);
    *v10 = a4;
    v10[1] = a5;
    v11 = *(v9 + 96);
    v12 = *(v9 + 104);
    v15 = *(v9 + 88);
    v16 = *(v9 + 80);

    v17[0] = sub_231E118A0();
    v17[1] = 0;
    v13 = type metadata accessor for AsyncConcurrentWorkQueue.GuardedData();
    v14 = sub_231D71CB0(v17, v13);

    sub_231CE1118(a3, &qword_27DD75180, &qword_231E13690);
    *(v5 + qword_2814CDF68) = v14;
    return v5;
  }

  return result;
}

uint64_t sub_231D71CB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  v8 = sub_231D72BF0(v7, a2);
  (*(v4 + 8))(a1, a2);
  return v8;
}

uint64_t sub_231D71DB0(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(v2 + qword_2814CDF68);
  v11[16] = a2;
  v12 = v2;
  v13 = a1;
  v6 = *(v4 + 80);
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  v15 = *(v4 + 88);
  v14 = vdupq_lane_s64(v6, 0);
  v17 = *(&v6 + 1);
  v16 = v8;
  v18 = v7;
  v19 = v8;
  v9 = type metadata accessor for AsyncConcurrentWorkQueue.GuardedData();
  sub_231D72D34(sub_231D72058, v11, v5, v9, MEMORY[0x277D839B0]);
  return v14.u8[0];
}

uint64_t sub_231D71EB0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(*a3 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v21 - v14;
  v16 = *v13;
  v18 = *(v17 + 88);
  result = sub_231E118D0();
  if ((a2 & 1) != 0 && result >= a3[3])
  {
    v20 = 0;
  }

  else
  {
    (*(v11 + 16))(v15, a4, v10);
    sub_231E11900();
    sub_231E118E0();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_231E115B0();
    result = sub_231D72088(a1);
    v20 = 1;
  }

  *a5 = v20;
  return result;
}

uint64_t sub_231D72088(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v38 = &v31 - v13;
  v14 = *v12;
  v40 = *v12;
  sub_231E11900();
  swift_getWitnessTable();
  result = sub_231E11A90();
  if ((result & 1) == 0 && *(a1 + 8) < v1[2])
  {
    v35 = v7;
    v36 = &v31;
    v39 = v14;
    MEMORY[0x28223BE20](result);
    v16 = v4[11];
    v17 = v4[12];
    *(&v31 - 6) = v5;
    *(&v31 - 5) = v16;
    v33 = v17;
    v34 = v16;
    v18 = v4[13];
    *(&v31 - 4) = v17;
    *(&v31 - 3) = v18;
    v32 = v18;
    *(&v31 - 2) = a1;

    sub_231E11A80();

    if ((v41 & 1) == 0)
    {
      v19 = v38;
      result = sub_231E118F0();
      v20 = *(a1 + 8);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        __break(1u);
      }

      else
      {
        *(a1 + 8) = v22;
        v23 = _MergedGlobals_3;
        v24 = v35;
        v25 = v37;
        (*(v35 + 16))(v37, v19, v5);
        v26 = (*(v24 + 80) + 72) & ~*(v24 + 80);
        v27 = swift_allocObject();
        *(v27 + 2) = 0;
        *(v27 + 3) = 0;
        v29 = v33;
        v28 = v34;
        *(v27 + 4) = v5;
        *(v27 + 5) = v28;
        v30 = v32;
        *(v27 + 6) = v29;
        *(v27 + 7) = v30;
        *(v27 + 8) = v2;
        (*(v24 + 32))(&v27[v26], v25, v5);

        sub_231D6AE00(0, 0, v2 + v23, &unk_231E1D990, v27);

        return (*(v24 + 8))(v19, v5);
      }
    }
  }

  return result;
}

uint64_t sub_231D72398()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(v0 + qword_2814CDF68);
  v7 = *(*v0 + 80);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v11 = *(v2 + 88);
  v10 = vdupq_lane_s64(v7, 0);
  v13 = *(&v7 + 1);
  v12 = v9;
  v14 = v8;
  v15 = v9;
  v4 = type metadata accessor for AsyncConcurrentWorkQueue.GuardedData();
  sub_231D72D34(sub_231D7249C, &v6, v3, v4, MEMORY[0x277D83B88]);
  return v10.i64[0];
}

uint64_t sub_231D7249C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = sub_231E118D0();
  *a2 = result;
  return result;
}

uint64_t sub_231D724D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_0();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75048, &qword_231E1D9A0);
  if (swift_dynamicCast())
  {
    sub_231CB6D84(v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_0(v14, v15);
    v10 = ((*(v9 + 8))(v8, v9) & 1) == 0 || *(a2 + 8) == 0;
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_231CE1118(v12, &qword_27DD75050, &qword_231E1D9A8);
    return 1;
  }

  return v10;
}

uint64_t sub_231D72640(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[12] = *a4;
  return MEMORY[0x2822009F8](sub_231D72688, 0, 0);
}

uint64_t sub_231D72688()
{
  OUTLINED_FUNCTION_18();
  v1 = (v0[10] + qword_2814CDF60);
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_231D72784;
  v5 = v0[11];

  return v7(v5);
}

uint64_t sub_231D72784()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_231D72870, 0, 0);
}

uint64_t sub_231D72870()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v2 + qword_2814CDF68);
  v4 = *(v1 + 80);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  *(v0 + 32) = *(v1 + 88);
  *(v0 + 16) = vdupq_lane_s64(v4, 0);
  *(v0 + 48) = v6;
  *(v0 + 56) = *(&v4 + 1);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for AsyncConcurrentWorkQueue.GuardedData();
  sub_231D72D34(sub_231D72F48, v2, v3, v7, MEMORY[0x277D84F78] + 8);
  OUTLINED_FUNCTION_19();

  return v8();
}

uint64_t sub_231D72944()
{
  sub_231CE1118(v0 + _MergedGlobals_3, &qword_27DD75180, &qword_231E13690);
  v1 = *(v0 + qword_2814CDF68);

  v2 = *(v0 + qword_2814CDF60 + 8);

  return v0;
}

uint64_t sub_231D729A4()
{
  sub_231D72944();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_231D72A00()
{
  sub_231D72AD4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_231D72AD4()
{
  if (!qword_2814CBDC0)
  {
    sub_231E119F0();
    v0 = sub_231E11BF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814CBDC0);
    }
  }
}

uint64_t sub_231D72B2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_231D72B74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_231D72BB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231D72BF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_231E11DE0();
  v4 = sub_231E11DD0();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_231D72CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x277D841D0]) - 8) + 16))(a2);
}

void sub_231D72DC0(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_231D72E7C()
{
  OUTLINED_FUNCTION_29();
  v2 = (*(*(*(v0 + 32) - 8) + 80) + 72) & ~*(*(*(v0 + 32) - 8) + 80);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_231CBFF60;

  return sub_231D72640(v4, v5, v6, v3, v0 + v2);
}

uint64_t sub_231D72F48(uint64_t result)
{
  v1 = *(result + 8);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(result + 8) = v3;
    return sub_231D72088(result);
  }

  return result;
}

uint64_t sub_231D72FA0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_231E10E30();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = sub_231E108B0();
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D730BC, 0, 0);
}

uint64_t sub_231D730BC()
{
  v1 = v0[19];
  v2 = sub_231E0FE70();
  v0[26] = v2;
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v2;
    v6 = v0[24];
    v23 = MEMORY[0x277D84F90];
    sub_231CC686C(0, v3, 0);
    v4 = v23;
    v7 = *(v6 + 16);
    v6 += 16;
    v8 = v5 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v21 = *(v6 + 56);
    v22 = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = v0[25];
      v11 = v0[23];
      v22(v10, v8, v11);
      v12 = sub_231E10820();
      v14 = v13;
      (*v9)(v10, v11);
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_231CC686C((v15 > 1), v16 + 1, 1);
      }

      *(v23 + 16) = v16 + 1;
      v17 = v23 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v8 += v21;
      --v3;
    }

    while (v3);
  }

  v0[27] = v4;
  type metadata accessor for SpotlightReader();
  sub_231D5EBAC(0, 0, 0, 0, v0 + 2);
  v0[28] = sub_231DF7564();
  v18 = swift_task_alloc();
  v0[29] = v18;
  *v18 = v0;
  v18[1] = sub_231D732AC;
  v19 = v0[18];

  return sub_231E0011C();
}

uint64_t sub_231D732AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = sub_231D734B8;
  }

  else
  {
    v8 = v4[27];
    v9 = v4[28];

    v4[31] = a1;
    v7 = sub_231D733E4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231D733E4()
{
  v1 = v0[30];
  v2 = sub_231D7379C(v0[31]);
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[22];
  v6 = v0[18];
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  *(v7 + 24) = v6;
  v8 = OUTLINED_FUNCTION_9_14();
  v10 = sub_231D755B4(v8, v9, v3);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_231D734B8()
{
  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];

  v7 = sub_231CB4EEC();
  (*(v5 + 16))(v4, v7, v6);

  v8 = v1;
  v9 = sub_231E10E10();
  v10 = sub_231E11AD0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[30];
    v12 = v0[27];
    v40 = v0[21];
    v41 = v0[20];
    v42 = v0[22];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v13 = 136315394;
    MEMORY[0x23837CD80](v12, MEMORY[0x277D837D0]);

    v15 = OUTLINED_FUNCTION_25();
    v18 = sub_231CB5000(v15, v16, v17);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_231CAE000, v9, v10, "[XPC] [Mail] Could not look up items with ids: %s: %@", v13, 0x16u);
    sub_231CE1118(v14, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v40 + 8))(v42, v41);
  }

  else
  {
    v21 = v0[27];
    v23 = v0[21];
    v22 = v0[22];
    v24 = v0[20];

    v25 = *(v23 + 8);
    v26 = OUTLINED_FUNCTION_25();
    v27(v26);
  }

  v28 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75058, &qword_231E1DAB0);
  v29 = sub_231E11530();

  v31 = v0[25];
  v30 = v0[26];
  v32 = v0[22];
  v33 = v0[18];
  v34 = swift_task_alloc();
  *(v34 + 16) = v29;
  *(v34 + 24) = v33;
  v35 = OUTLINED_FUNCTION_9_14();
  v37 = sub_231D755B4(v35, v36, v30);

  v38 = v0[1];

  return v38(v37);
}

uint64_t sub_231D7379C(uint64_t a1)
{
  v48 = sub_231E10340();
  v2 = *(*(v48 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v48);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v49 = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  v44 = v9;
  v45 = v8;
  v43 = v9 + 16;
  v46 = (v9 + 32);
  v39 = xmmword_231E138E0;
  v41 = a1;
  while (1)
  {
    if (v45 == v6)
    {

      return v7;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v10 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v11 = *(v44 + 72);
    v12 = v6;
    (*(v44 + 16))(v47, a1 + v10 + v11 * v6, v48);
    v13 = sub_231E10000();
    v15 = v14;
    v17 = sub_231CE0CA4(v13, v14);
    v18 = v7[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v7[3] < v20)
    {
      sub_231D75B90(v20, 1);
      v7 = v49;
      v22 = sub_231CE0CA4(v13, v15);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v17 = v22;
    }

    if (v21)
    {

      v24 = v7[7];
      v25 = *v46;
      (*v46)(v42, v47, v48);
      v26 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v26;
      v40 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_231D758D4(0, *(v26 + 16) + 1, 1, v26);
        *(v24 + 8 * v17) = v26;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        v26 = sub_231D758D4(v28 > 1, v29 + 1, 1, v26);
        *(v24 + 8 * v17) = v26;
      }

      a1 = v41;
      v30 = v42;
      v31 = v12;
      *(v26 + 16) = v29 + 1;
      v40((v26 + v10 + v29 * v11), v30, v48);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74570, &qword_231E170F0);
      v32 = swift_allocObject();
      *(v32 + 16) = v39;
      (*v46)((v32 + v10), v47, v48);
      v7[(v17 >> 6) + 8] |= 1 << v17;
      v33 = (v7[6] + 16 * v17);
      *v33 = v13;
      v33[1] = v15;
      *(v7[7] + 8 * v17) = v32;
      v34 = v7[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_20;
      }

      v7[2] = v36;
      a1 = v41;
      v31 = v12;
    }

    v6 = v31 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_231E12160();
  __break(1u);
  return result;
}

uint64_t sub_231D73B10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v274 = a3;
  v295 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v281 = v260 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A78, &unk_231E1E3E0);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v292 = v260 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v17 = OUTLINED_FUNCTION_47(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v260 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_0();
  v291 = v23;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_5();
  v290 = v25;
  v284 = sub_231E108B0();
  v26 = OUTLINED_FUNCTION_24(v284);
  v294 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_6_12(v32);
  v287 = sub_231E10E30();
  v33 = OUTLINED_FUNCTION_24(v287);
  v285 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_139();
  v299 = v37;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_6_12(v40);
  v301 = sub_231E10340();
  v41 = OUTLINED_FUNCTION_24(v301);
  v286 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_12(v260 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_231E10210();
  v47 = OUTLINED_FUNCTION_24(v46);
  v296 = v48;
  v297 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_139();
  v289 = v51;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_5();
  v298 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v55 = OUTLINED_FUNCTION_47(v54);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x28223BE20](v55);
  v60 = v260 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v62 = v260 - v61;
  v63 = sub_231E10400();
  v64 = OUTLINED_FUNCTION_24(v63);
  v302 = v65;
  v303 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_139();
  v288 = v68;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_25_5();
  v293 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  v72 = OUTLINED_FUNCTION_47(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  v93 = MEMORY[0x28223BE20](v92);
  v95 = v260 - v94;
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  v97 = MEMORY[0x28223BE20](v96);
  v99 = (v260 - v98);
  v100 = MEMORY[0x28223BE20](v97);
  v102 = v260 - v101;
  MEMORY[0x28223BE20](v100);
  v104 = v260 - v103;
  v305 = a1;
  v105 = sub_231E10840();
  v278 = v22;
  if (!v106)
  {
    goto LABEL_10;
  }

  v107 = HIBYTE(v106) & 0xF;
  if ((v106 & 0x2000000000000000) == 0)
  {
    v107 = v105 & 0xFFFFFFFFFFFFLL;
  }

  if (!v107)
  {

LABEL_10:
    v266 = 0;
    v300 = 0;
    goto LABEL_13;
  }

  v260[0] = v99;
  v108 = v95;
  v109 = a2;
  sub_231D42B88();
  v110 = sub_231CE00C4();
  v111 = [v110 textContent];

  v112 = sub_231E11620();
  v114 = v113;

  v115 = HIBYTE(v114) & 0xF;
  v266 = v112;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v115 = v112 & 0xFFFFFFFFFFFFLL;
  }

  if (v115)
  {
    v300 = v114;
  }

  else
  {

    v266 = 0;
    v300 = 0;
  }

  a2 = v109;
  v95 = v108;
  v99 = v260[0];
LABEL_13:
  v116 = sub_231E10850();
  v118 = v117;
  v304 = v104;
  if (v117)
  {
    v119 = v116;
    v120 = HIBYTE(v117) & 0xF;
    if ((v117 & 0x2000000000000000) == 0)
    {
      v120 = v116 & 0xFFFFFFFFFFFFLL;
    }

    if (!v120)
    {

      v119 = 0;
      v118 = 0;
    }
  }

  else
  {
    v119 = 0;
  }

  v121 = sub_231E10820();
  v123 = sub_231D75564(v121, v122, a2);

  v124 = v304;
  if (v123)
  {
    sub_231CFC060(v123, v304);
  }

  else
  {
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v125, v126, v127, v301);
  }

  sub_231E10890();
  v128 = v303;
  OUTLINED_FUNCTION_8_17(v60, 1, v303);
  if (v129)
  {
    sub_231D75E60(v124, v102);
    v130 = v301;
    OUTLINED_FUNCTION_8_17(v102, 1, v301);
    if (v129)
    {
      sub_231CE1118(v102, &qword_27DD74580, &qword_231E17110);
      v132 = 1;
    }

    else
    {
      sub_231E100E0();
      v128 = v303;
      (*(v286 + 8))(v102, v130);
      v132 = 0;
    }

    __swift_storeEnumTagSinglePayload(v62, v132, 1, v128);
    OUTLINED_FUNCTION_8_17(v60, 1, v128);
    v131 = v299;
    if (!v129)
    {
      sub_231CE1118(v60, &dword_27DD73FA0, &dword_231E13460);
    }
  }

  else
  {
    (*(v302 + 32))(v62, v60, v128);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v128);
    v131 = v299;
  }

  OUTLINED_FUNCTION_8_17(v62, 1, v128);
  if (v129)
  {

    sub_231CE1118(v62, &dword_27DD73FA0, &dword_231E13460);
    v133 = sub_231CB4EEC();
    v134 = v285;
    v135 = v287;
    (*(v285 + 16))(v131, v133, v287);
    v136 = v294;
    v137 = *(v294 + 16);
    v138 = v283;
    OUTLINED_FUNCTION_10_16();
    v139();
    v140 = sub_231E10E10();
    v141 = sub_231E11AD0();
    if (OUTLINED_FUNCTION_20_11(v141))
    {
      swift_slowAlloc();
      v142 = OUTLINED_FUNCTION_13_8();
      v306 = v142;
      *v131 = 136315138;
      v143 = sub_231E10820();
      OUTLINED_FUNCTION_14_10();
      v144(v138, v145);
      v146 = sub_231CB5000(v143, v118, &v306);

      *(v131 + 4) = v146;
      OUTLINED_FUNCTION_11_14(&dword_231CAE000, v147, v148, "[XPC] [Mail] Missing sender handle for id: %s");
      __swift_destroy_boxed_opaque_existential_0(v142);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v134 + 8))(v299, v135);
      v149 = v304;
    }

    else
    {

      (*(v136 + 8))(v138, v118);
      (*(v134 + 8))(v131, v135);
      v149 = v124;
    }

    sub_231CE1118(v149, &qword_27DD74580, &qword_231E17110);
    v157 = 1;
    v158 = v295;
    v156 = v301;
    return __swift_storeEnumTagSinglePayload(v158, v157, 1, v156);
  }

  v150 = v293;
  (*(v302 + 32))(v293, v62, v128);
  v151 = sub_231E108A0();
  if (v152)
  {
    v153 = v151;
    v154 = v152;
    v155 = v294;
    v156 = v301;
  }

  else
  {
    sub_231D75E60(v124, v99);
    v156 = v301;
    OUTLINED_FUNCTION_8_17(v99, 1, v301);
    v155 = v294;
    if (v129)
    {
      sub_231CE1118(v99, &qword_27DD74580, &qword_231E17110);

      sub_231CB4EEC();
      OUTLINED_FUNCTION_15_14();
      v159 = v264;
      v160(v264);
      v161 = *(v155 + 16);
      v162 = v263;
      OUTLINED_FUNCTION_10_16();
      v163();
      v164 = sub_231E10E10();
      v165 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_20_11(v165))
      {
        swift_slowAlloc();
        v166 = OUTLINED_FUNCTION_13_8();
        v306 = v166;
        *v162 = 136315138;
        v305 = sub_231E10820();
        OUTLINED_FUNCTION_14_10();
        v167(v162, v168);
        v169 = sub_231CB5000(v305, v118, &v306);

        *(v162 + 4) = v169;
        OUTLINED_FUNCTION_11_14(&dword_231CAE000, v170, v171, "[XPC] [Mail] Missing subject for id: %s");
        __swift_destroy_boxed_opaque_existential_0(v166);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        v99[1](v264, v287);
LABEL_114:
        (*(v302 + 8))(v293, v303);
LABEL_118:
        sub_231CE1118(v124, &qword_27DD74580, &qword_231E17110);
        v157 = 1;
        v158 = v295;
        return __swift_storeEnumTagSinglePayload(v158, v157, 1, v156);
      }

LABEL_117:
      (*(v155 + 8))(v162, v118);
      v99[1](v159, v287);
      (*(v302 + 8))(v150, v303);
      goto LABEL_118;
    }

    v153 = sub_231E102D0();
    v154 = v172;
    (*(v286 + 8))(v99, v156);
  }

  v99 = v282;
  v301 = v154;
  v299 = v153;
  if (!v118)
  {
    if (v300)
    {

      v119 = v266;
      v118 = v173;
      goto LABEL_44;
    }

    v118 = v262;
    sub_231D75E60(v124, v262);
    OUTLINED_FUNCTION_0_30(v118);
    if (!v129)
    {
      v176 = v286;
      (*(v286 + 32))(v260[1], v118, v156);
      sub_231E10220();
      v257 = OUTLINED_FUNCTION_1_23();
      v258(v257);
      goto LABEL_45;
    }

    sub_231CE1118(v118, &qword_27DD74580, &qword_231E17110);
    sub_231CB4EEC();
    OUTLINED_FUNCTION_15_14();
    v159 = v261;
    v246(v261);
    v247 = *(v155 + 16);
    v162 = v260[2];
    OUTLINED_FUNCTION_10_16();
    v248();
    v249 = sub_231E10E10();
    v250 = sub_231E11AD0();
    if (OUTLINED_FUNCTION_20_11(v250))
    {
      swift_slowAlloc();
      v305 = OUTLINED_FUNCTION_13_8();
      v306 = v305;
      *v162 = 136315138;
      v251 = sub_231E10820();
      OUTLINED_FUNCTION_14_10();
      v252(v162, v253);
      v254 = sub_231CB5000(v251, v118, &v306);

      *(v162 + 4) = v254;
      OUTLINED_FUNCTION_11_14(&dword_231CAE000, v255, v256, "[XPC] [Mail] Missing plain text body for id: %s");
      __swift_destroy_boxed_opaque_existential_0(v305);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      v99[1](v261, v287);
      goto LABEL_114;
    }

    goto LABEL_117;
  }

LABEL_44:
  v174 = v298;
  *v298 = v119;
  v174[1] = v118;
  v175 = *MEMORY[0x277D42268];
  (*(v296 + 104))();
  v176 = v286;
LABEL_45:
  v294 = sub_231E10820();
  v287 = v177;
  sub_231D75E60(v124, v95);
  OUTLINED_FUNCTION_0_30(v95);
  v178 = v278;
  v179 = v277;
  v180 = v275;
  if (v129)
  {
    sub_231CE1118(v95, &qword_27DD74580, &qword_231E17110);
    v286 = 0;
    v285 = 0;
  }

  else
  {
    v286 = sub_231E102F0();
    v285 = v181;
    OUTLINED_FUNCTION_7_19();
    v182 = OUTLINED_FUNCTION_25();
    v183(v182);
  }

  v184 = v267;
  v284 = sub_231DE8A04(1);
  v283 = v185;
  sub_231D75E60(v124, v184);
  OUTLINED_FUNCTION_0_30(v184);
  v186 = v268;
  if (v129)
  {
    sub_231CE1118(v184, &qword_27DD74580, &qword_231E17110);
    v267 = 0;
    v266 = 0xE000000000000000;
  }

  else
  {
    v267 = sub_231E10160();
    v266 = v187;
    v188 = OUTLINED_FUNCTION_1_23();
    v189(v188);
  }

  sub_231D75E60(v124, v186);
  OUTLINED_FUNCTION_0_30(v186);
  if (v129)
  {
    sub_231CE1118(v186, &qword_27DD74580, &qword_231E17110);
    v264 = 0;
  }

  else
  {
    v264 = sub_231E100F0();
    OUTLINED_FUNCTION_7_19();
    v190 = OUTLINED_FUNCTION_25();
    v191(v190);
  }

  (*(v302 + 16))(v288, v150, v303);
  v192 = v305;
  v193 = sub_231E10830();
  if (v193)
  {
    v194 = v193;
    v195 = v279;
  }

  else
  {
    v196 = v265;
    sub_231D75E60(v124, v265);
    OUTLINED_FUNCTION_0_30(v196);
    v195 = v279;
    if (v129)
    {
      sub_231CE1118(v196, &qword_27DD74580, &qword_231E17110);
      v194 = MEMORY[0x277D84F90];
    }

    else
    {
      v192 = v196;
      v194 = sub_231E10150();
      v197 = OUTLINED_FUNCTION_1_23();
      v198(v197);
    }
  }

  v279 = sub_231CC6C88(v274, v194);

  OUTLINED_FUNCTION_23_10(v124, &v299);
  OUTLINED_FUNCTION_0_30(v192);
  if (v129)
  {
    sub_231CE1118(v192, &qword_27DD74580, &qword_231E17110);
    v274 = 0;
    v268 = 0xF000000000000000;
  }

  else
  {
    v274 = sub_231E100C0();
    v268 = v199;
    v200 = OUTLINED_FUNCTION_1_23();
    v201(v200);
  }

  v202 = v273;
  v203 = v269;
  (*(v296 + 16))(v289, v298, v297);
  sub_231D75E60(v124, v203);
  OUTLINED_FUNCTION_0_30(v203);
  if (v129)
  {
    sub_231CE1118(v203, &qword_27DD74580, &qword_231E17110);
    LODWORD(v273) = 1;
  }

  else
  {
    LODWORD(v273) = sub_231E10170();
    v204 = OUTLINED_FUNCTION_1_23();
    v205(v204);
  }

  OUTLINED_FUNCTION_21_8(&v301);
  OUTLINED_FUNCTION_0_30(v203);
  if (v129)
  {
    sub_231CE1118(v203, &qword_27DD74580, &qword_231E17110);
    v270 = MEMORY[0x277D84F90];
  }

  else
  {
    v270 = sub_231E101A0();
    v206 = OUTLINED_FUNCTION_1_23();
    v207(v206);
  }

  OUTLINED_FUNCTION_21_8(&v302);
  OUTLINED_FUNCTION_0_30(v203);
  if (v129)
  {
    sub_231CE1118(v203, &qword_27DD74580, &qword_231E17110);
    v271 = MEMORY[0x277D84F90];
  }

  else
  {
    v271 = sub_231E100A0();
    v208 = OUTLINED_FUNCTION_1_23();
    v209(v208);
  }

  OUTLINED_FUNCTION_21_8(&v303);
  OUTLINED_FUNCTION_0_30(v203);
  if (v129)
  {
    sub_231CE1118(v203, &qword_27DD74580, &qword_231E17110);
    v272 = 0;
    v269 = 0;
  }

  else
  {
    v272 = sub_231E10100();
    v269 = v210;
    v211 = OUTLINED_FUNCTION_1_23();
    v212(v211);
  }

  sub_231D75E60(v124, v202);
  OUTLINED_FUNCTION_0_30(v202);
  if (v129)
  {
    sub_231CE1118(v202, &qword_27DD74580, &qword_231E17110);
    sub_231E0F950();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v213, v214, v215, v216);
  }

  else
  {
    sub_231E102E0();
    OUTLINED_FUNCTION_7_19();
    v217 = OUTLINED_FUNCTION_25();
    v218(v217);
  }

  v219 = v305;
  sub_231E10860();
  v220 = sub_231E0F950();
  OUTLINED_FUNCTION_8_17(v178, 1, v220);
  if (v129)
  {
    OUTLINED_FUNCTION_23_10(v124, &v294);
    OUTLINED_FUNCTION_0_30(v219);
    if (v129)
    {
      sub_231CE1118(v219, &qword_27DD74580, &qword_231E17110);
      OUTLINED_FUNCTION_105();
      __swift_storeEnumTagSinglePayload(v221, v222, v223, v220);
    }

    else
    {
      sub_231E100D0();
      v224 = OUTLINED_FUNCTION_1_23();
      v225(v224);
    }

    OUTLINED_FUNCTION_8_17(v178, 1, v220);
    if (!v129)
    {
      sub_231CE1118(v178, &dword_27DD74AD0, &qword_231E16C40);
    }
  }

  else
  {
    v219 = v291;
    (*(*(v220 - 8) + 32))(v291, v178, v220);
    __swift_storeEnumTagSinglePayload(v219, 0, 1, v220);
  }

  OUTLINED_FUNCTION_23_10(v124, &v306);
  OUTLINED_FUNCTION_0_30(v219);
  if (v129)
  {
    sub_231CE1118(v219, &qword_27DD74580, &qword_231E17110);
    sub_231E10070();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v226, v227, v228, v229);
  }

  else
  {
    sub_231E10110();
    v230 = OUTLINED_FUNCTION_1_23();
    v231(v230);
  }

  v232 = v276;
  sub_231D75E60(v124, v99);
  OUTLINED_FUNCTION_0_30(v99);
  if (v129)
  {
    sub_231CE1118(v99, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E10240();
    OUTLINED_FUNCTION_7_19();
    v233(v99, v156);
  }

  sub_231D75E60(v124, v180);
  OUTLINED_FUNCTION_0_30(v180);
  if (v129)
  {
    sub_231CE1118(v180, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E10130();
    OUTLINED_FUNCTION_7_19();
    v234(v180, v156);
  }

  sub_231D75E60(v304, v232);
  OUTLINED_FUNCTION_0_30(v232);
  if (v129)
  {
    sub_231CE1118(v232, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E10300();
    OUTLINED_FUNCTION_7_19();
    v235(v232, v156);
  }

  sub_231D75E60(v304, v179);
  OUTLINED_FUNCTION_0_30(v179);
  if (v129)
  {
    sub_231CE1118(v179, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E102A0();
    OUTLINED_FUNCTION_7_19();
    v236(v179, v156);
  }

  v237 = v305;
  if (sub_231E10880() == 2)
  {
    OUTLINED_FUNCTION_23_10(v304, &v295);
    OUTLINED_FUNCTION_0_30(v237);
    if (v129)
    {
      sub_231CE1118(v237, &qword_27DD74580, &qword_231E17110);
    }

    else
    {
      sub_231E102B0();
      v238 = OUTLINED_FUNCTION_1_23();
      v239(v238);
    }
  }

  sub_231D75E60(v304, v195);
  OUTLINED_FUNCTION_0_30(v195);
  if (v129)
  {
    sub_231CE1118(v195, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E10250();
    OUTLINED_FUNCTION_7_19();
    v240(v195, v156);
  }

  v241 = v280;
  sub_231D75E60(v304, v280);
  OUTLINED_FUNCTION_0_30(v241);
  if (v129)
  {
    sub_231CE1118(v241, &qword_27DD74580, &qword_231E17110);
  }

  else
  {
    sub_231E10330();
    (*(v176 + 8))(v241, v156);
  }

  sub_231E10290();
  OUTLINED_FUNCTION_105();
  __swift_storeEnumTagSinglePayload(v242, v243, v244, v245);
  v158 = v295;
  sub_231E10310();

  (*(v296 + 8))(v298, v297);
  (*(v302 + 8))(v293, v303);
  sub_231CE1118(v304, &qword_27DD74580, &qword_231E17110);
  v157 = 0;
  return __swift_storeEnumTagSinglePayload(v158, v157, 1, v156);
}

uint64_t sub_231D75564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_231CE0CA4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

size_t sub_231D755B4(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_231E10340();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v33 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v31 = v15;
  v32 = &v27 - v14;
  v16 = 0;
  v17 = *(a3 + 16);
  v34 = (v15 + 32);
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v17 == v16)
    {
      return v35;
    }

    v18 = *(sub_231E108B0() - 8);
    a1(a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_231CE1118(v9, &qword_27DD74580, &qword_231E17110);
      ++v16;
    }

    else
    {
      v19 = *v34;
      (*v34)(v32, v9, v10);
      v30 = v19;
      v19(v33, v32, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_231D758D4(0, *(v35 + 16) + 1, 1, v35);
      }

      v21 = *(v35 + 16);
      v20 = *(v35 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v28 = *(v35 + 16);
        v29 = v21 + 1;
        v24 = sub_231D758D4(v20 > 1, v21 + 1, 1, v35);
        v21 = v28;
        v22 = v29;
        v35 = v24;
      }

      ++v16;
      v23 = v35;
      *(v35 + 16) = v22;
      v30((v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21), v33, v10);
    }
  }

  v25 = v35;

  return v25;
}

size_t sub_231D758D4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_231D759C0(v8, v7);
  v10 = *(sub_231E10340() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_231D75ABC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_231D759C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74570, &qword_231E170F0);
  v4 = *(sub_231E10340() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231D75ABC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_231E10340(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_231E10340();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231D75B90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75060, &qword_231E1D9B8);
  v38 = a2;
  result = sub_231E11EF0();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_231CFD55C(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_231E12220();
    sub_231E116E0();
    result = sub_231E12250();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_231D75E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_21_8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return sub_231D75E60(v1, v3);
}

unint64_t sub_231D75F38()
{
  result = OUTLINED_FUNCTION_431();
  switch(v1)
  {
    case 1:
      return result;
    case 2:
    case 3:
      result = 0x6F54207974706D45;
      break;
    default:
      result = OUTLINED_FUNCTION_284_0();
      break;
  }

  return result;
}

unint64_t sub_231D75FAC()
{
  result = OUTLINED_FUNCTION_431();
  switch(v1)
  {
    case 1:
      return result;
    case 2:
    case 3:
      result = 0x6F54207974706D45;
      break;
    default:
      result = OUTLINED_FUNCTION_284_0();
      break;
  }

  return result;
}

uint64_t sub_231D7603C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231E1D9C0;
  v1 = sub_231E10B40();
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 7104878;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  v5 = sub_231E10BA0();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7104878;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  *(v0 + 48) = v7;
  *(v0 + 56) = v8;
  v9 = sub_231E10BD0();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 7104878;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  *(v0 + 64) = v11;
  *(v0 + 72) = v12;
  v13 = OUTLINED_FUNCTION_140_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_134_1();
  sub_231DA21B0(v15, v16, v17);
  sub_231E11580();
  OUTLINED_FUNCTION_3_12();

  return OUTLINED_FUNCTION_140_0();
}

uint64_t type metadata accessor for MailThreadSummarizationResponse()
{
  result = qword_2814CDEE0;
  if (!qword_2814CDEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231D76188()
{
  v1 = sub_231E10E30();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 - v7;
  v10 = *(*v0 + 16);
  sub_231CB4EEC();
  OUTLINED_FUNCTION_471();
  v11(v9);
  v12 = sub_231E10E10();
  v13 = sub_231E11AF0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_9_1();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_231CAE000, v12, v13, "Active summarization requests changed: %ld", v14, 0xCu);
    OUTLINED_FUNCTION_30();
  }

  return (*(v4 + 8))(v9, v1);
}

uint64_t sub_231D762D0()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v1 == OUTLINED_FUNCTION_407() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0xD000000000000014 && 0x8000000231E366F0 == v0;
    if (v5 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x79727465527369 && v0 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_15_2();

      if (v7)
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

uint64_t sub_231D763AC(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_407();
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x79727465527369;
}

uint64_t sub_231D76410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231D762D0();
  *a1 = result;
  return result;
}

uint64_t sub_231D76444()
{
  sub_231D7691C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D7647C()
{
  sub_231D7691C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D764B4()
{
  sub_231D769C4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D764EC()
{
  sub_231D769C4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D76524()
{
  sub_231D76A18();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D7655C()
{
  sub_231D76A18();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D76594()
{
  sub_231D76970();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231D765CC()
{
  sub_231D76970();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231D76604(void *a1, int a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75068, &qword_231E1D9E0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v43 = v5;
  v44 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v8);
  v42 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75070, &qword_231E1D9E8);
  v11 = OUTLINED_FUNCTION_24(v10);
  v40 = v12;
  v41 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75078, &qword_231E1D9F0);
  OUTLINED_FUNCTION_24(v18);
  v39 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75080, &qword_231E1D9F8);
  OUTLINED_FUNCTION_24(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v30);
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231D7691C();
  sub_231E12270();
  v32 = (v27 + 8);
  if (v45)
  {
    if (v45 == 1)
    {
      v47 = 1;
      sub_231D769C4();
      OUTLINED_FUNCTION_420();
      (*(v40 + 8))(v17, v41);
    }

    else
    {
      v48 = 2;
      sub_231D76970();
      v33 = v42;
      OUTLINED_FUNCTION_420();
      (*(v43 + 8))(v33, v44);
    }
  }

  else
  {
    v46 = 0;
    sub_231D76A18();
    OUTLINED_FUNCTION_420();
    (*(v39 + 8))(v24, v18);
  }

  v34 = *v32;
  v35 = OUTLINED_FUNCTION_294_0();
  return v36(v35);
}

unint64_t sub_231D7691C()
{
  result = qword_27DD83550;
  if (!qword_27DD83550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD83550);
  }

  return result;
}

unint64_t sub_231D76970()
{
  result = qword_27DD83558;
  if (!qword_27DD83558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD83558);
  }

  return result;
}

unint64_t sub_231D769C4()
{
  result = qword_27DD83560;
  if (!qword_27DD83560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD83560);
  }

  return result;
}

unint64_t sub_231D76A18()
{
  result = qword_27DD83568[0];
  if (!qword_27DD83568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD83568);
  }

  return result;
}

uint64_t sub_231D76A6C(uint64_t *a1)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75088, &qword_231E1DA00);
  OUTLINED_FUNCTION_24(v80);
  v78 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v5);
  v76 = &v70 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75090, &qword_231E1DA08);
  OUTLINED_FUNCTION_24(v77);
  v75 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75098, &qword_231E1DA10);
  OUTLINED_FUNCTION_24(v13);
  v74 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750A0, &unk_231E1DA18);
  OUTLINED_FUNCTION_24(v20);
  v79 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v24);
  v26 = &v70 - v25;
  v27 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v27);
  sub_231D7691C();
  v28 = v81;
  sub_231E12260();
  if (v28)
  {
    goto LABEL_12;
  }

  v70 = v13;
  v71 = v19;
  v72 = v12;
  v73 = 0;
  v29 = v80;
  v81 = a1;
  v30 = v26;
  v31 = sub_231E11FE0();
  result = sub_231CCF16C(v31, 0);
  v27 = v20;
  if (v34 == v35 >> 1)
  {
    goto LABEL_10;
  }

  if (v34 < (v35 >> 1))
  {
    v36 = v20;
    v37 = *(v33 + v34);
    v38 = sub_231CCF304(v34 + 1, v35 >> 1, result, v33, v34, v35);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    v43 = v77;
    v44 = v78;
    if (v40 == v42 >> 1)
    {
      v27 = v37;
      if (v37)
      {
        v74 = v38;
        v45 = v73;
        if (v37 == 1)
        {
          v83 = 1;
          sub_231D769C4();
          v46 = v72;
          OUTLINED_FUNCTION_355();
          sub_231E11F30();
          v47 = v79;
          if (!v45)
          {
            swift_unknownObjectRelease();
            (*(v75 + 8))(v46, v43);
            v48 = *(v47 + 8);
            v49 = OUTLINED_FUNCTION_80();
            v50(v49);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_0(v81);
            return v27;
          }
        }

        else
        {
          LODWORD(v77) = v37;
          v84 = 2;
          sub_231D76970();
          v27 = v76;
          OUTLINED_FUNCTION_355();
          sub_231E11F30();
          v47 = v79;
          if (!v45)
          {
            swift_unknownObjectRelease();
            (*(v44 + 8))(v27, v29);
            v67 = *(v47 + 8);
            v68 = OUTLINED_FUNCTION_80();
            v69(v68);
            v27 = v77;
            goto LABEL_21;
          }
        }

        v62 = *(v47 + 8);
        v63 = OUTLINED_FUNCTION_80();
        v64(v63);
      }

      else
      {
        v82 = 0;
        sub_231D76A18();
        v58 = v71;
        OUTLINED_FUNCTION_355();
        v59 = v73;
        sub_231E11F30();
        if (!v59)
        {
          swift_unknownObjectRelease();
          (*(v74 + 8))(v58, v70);
          OUTLINED_FUNCTION_457();
          v65 = OUTLINED_FUNCTION_80();
          v66(v65);
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_457();
        v60 = OUTLINED_FUNCTION_80();
        v61(v60);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v27 = v36;
LABEL_10:
    v51 = sub_231E11DC0();
    OUTLINED_FUNCTION_22_7();
    swift_allocError();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10) + 48);
    *v53 = &type metadata for SummarizationManager.Option;
    sub_231E11F40();
    sub_231E11DB0();
    v55 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_56_6(v51);
    (*(v56 + 104))(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_457();
    v57(v30, v27);
LABEL_11:
    a1 = v81;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_231D77008@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231D76A6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_231D77050(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, void *a11, uint64_t a12, uint64_t *a13, char a14, uint64_t a15, uint64_t *a16, uint64_t *a17)
{
  v23 = swift_allocObject();
  sub_231D77128(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  return v23;
}

uint64_t sub_231D77128(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, void *a11, uint64_t a12, uint64_t *a13, char a14, uint64_t a15, uint64_t *a16, uint64_t *a17)
{
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750A8, &unk_231E1DA28);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D84F98];
  *(v26 + 32) = 0;
  *(v26 + 16) = v27;
  *(v26 + 24) = 0;
  *(v18 + 24) = a8;
  *(v18 + 32) = v26;
  *(v18 + 16) = a9;
  sub_231DA0900(a4, v18 + 40);
  type metadata accessor for UrgencyManager();
  sub_231DA0900(a5, v43);
  sub_231DA0900(a6, v42);
  sub_231DA0900(a1, v41);

  v28 = a11;
  *(v18 + 80) = sub_231CE8318(v43, v42, v41, v28);
  sub_231DA0900(a1, v18 + 88);
  sub_231DA0900(a2, v18 + 128);
  *(v18 + 168) = a3;
  sub_231DA0900(a7, v18 + 176);
  type metadata accessor for PowerBudget();
  OUTLINED_FUNCTION_65_4();
  type metadata accessor for PowerTracker();
  v29 = v28;
  swift_unknownObjectRetain();
  sub_231CE6C64(2u, 0);
  sub_231E0B66C(v42);
  *(v18 + 216) = sub_231E0B688();
  v30 = v29;
  sub_231CE6C64(3u, 0);
  sub_231E0B66C(v43);
  *(v18 + 224) = sub_231E0B688();
  sub_231DA0900(a10, v18 + 232);
  *(v18 + 272) = v30;
  sub_231DA0900(a13, v18 + 280);
  *(v18 + 320) = a14;
  *(v18 + 328) = a15;
  sub_231DA0900(a16, v18 + 336);
  sub_231DA0900(a17, v18 + 376);
  v31 = *(v18 + 32);
  v32 = v30;

  os_unfair_lock_lock(v31 + 8);
  sub_231DA0960(&v31[4]);
  os_unfair_lock_unlock(v31 + 8);

  v33 = [objc_opt_self() sharedInstance];
  [v33 prewarm];

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a17);
  __swift_destroy_boxed_opaque_existential_0(a16);
  __swift_destroy_boxed_opaque_existential_0(a13);
  __swift_destroy_boxed_opaque_existential_0(a10);
  __swift_destroy_boxed_opaque_existential_0(a7);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

void sub_231D77494()
{
  OUTLINED_FUNCTION_118();
  v43 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_95_5();
  v6 = sub_231E10A30();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_241_0();
  v14 = v12 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_450();
  v19 = sub_231E119F0();
  v20 = OUTLINED_FUNCTION_24(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_63_6();
  sub_231E10A20();
  sub_231CC8990(v1);
  OUTLINED_FUNCTION_28_2(v1);
  if (v25)
  {
    sub_231D1221C();
    OUTLINED_FUNCTION_28_2(v1);
    if (!v25)
    {
      sub_231CC154C(v1, &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    v26 = OUTLINED_FUNCTION_382();
    v27(v26);
  }

  OUTLINED_FUNCTION_463();
  OUTLINED_FUNCTION_340();
  v29(v28);
  v30 = *(v9 + 80);
  OUTLINED_FUNCTION_142_2();
  v32 = v31 & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v5;
  *(v33 + 24) = v0;
  (*(v9 + 32))(v33 + v0, v14, v6);
  *(v33 + v32) = v43;

  OUTLINED_FUNCTION_81();
  sub_231D7B818(v34, v35, v36, v37, v2, v38, v39);

  v40 = *(v22 + 8);
  v41 = OUTLINED_FUNCTION_294_0();
  v42(v41);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D77734()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_103_3(v1, v2, v3, v4);
  v5 = sub_231E10A30();
  v0[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[7] = v6;
  v0[8] = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D777DC()
{
  OUTLINED_FUNCTION_274_0();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_89_5();
  sub_231D12014();
  v3 = OUTLINED_FUNCTION_50_6();
  v4(v3);
  OUTLINED_FUNCTION_49_9();
  v5 = OUTLINED_FUNCTION_435();
  v6 = OUTLINED_FUNCTION_38_9(v5);
  v7(v6);
  *(v0 + v2) = v1;
  OUTLINED_FUNCTION_220_0();
  swift_retain_n();

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_290_0(v8);
  *v9 = v10;
  v9[1] = sub_231DA48C8;
  OUTLINED_FUNCTION_64_5(v9, &unk_231E1E5A8);
  OUTLINED_FUNCTION_273_0();

  return sub_231D6DB48(v11, v12, v13, v14, v15);
}

uint64_t sub_231D778EC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_102_4(v1, v2, v3, v4);
  v5 = sub_231E0F950();
  v0[9] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[10] = v6;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_434(v9);
  v0[12] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[13] = v11;
  v13 = *(v12 + 64);
  v0[14] = OUTLINED_FUNCTION_55();
  v14 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231D779D0()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_65_6(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_325(v2);
  OUTLINED_FUNCTION_62_4();

  return sub_231DDB61C();
}

void sub_231D77A84()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 120);

    v10 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_231D77B9C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_61_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_381(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_48_8(v2);

  return sub_231D77D08();
}

uint64_t sub_231D77C28()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  OUTLINED_FUNCTION_433(v5);
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D77D08()
{
  OUTLINED_FUNCTION_18();
  v1[231] = v0;
  v1[230] = v2;
  v1[229] = v3;
  v1[228] = v4;
  v5 = sub_231E0F5E0();
  v1[232] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[233] = v6;
  v8 = *(v7 + 64);
  v1[234] = OUTLINED_FUNCTION_55();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  v1[235] = OUTLINED_FUNCTION_55();
  v12 = type metadata accessor for SummarizerResult();
  v1[236] = v12;
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  v1[237] = OUTLINED_FUNCTION_69();
  v1[238] = swift_task_alloc();
  v1[239] = swift_task_alloc();
  v15 = sub_231E107F0();
  v1[240] = v15;
  OUTLINED_FUNCTION_6(v15);
  v1[241] = v16;
  v18 = *(v17 + 64);
  v1[242] = OUTLINED_FUNCTION_55();
  v19 = sub_231E10A30();
  v1[243] = v19;
  OUTLINED_FUNCTION_6(v19);
  v1[244] = v20;
  v22 = *(v21 + 64);
  v1[245] = OUTLINED_FUNCTION_69();
  v1[246] = swift_task_alloc();
  v23 = type metadata accessor for EntityKind();
  v1[247] = v23;
  OUTLINED_FUNCTION_47(v23);
  v25 = *(v24 + 64);
  v1[248] = OUTLINED_FUNCTION_55();
  v26 = sub_231E10E30();
  v1[249] = v26;
  OUTLINED_FUNCTION_6(v26);
  v1[250] = v27;
  v29 = *(v28 + 64);
  v1[251] = OUTLINED_FUNCTION_69();
  v1[252] = swift_task_alloc();
  v1[253] = swift_task_alloc();
  v1[254] = swift_task_alloc();
  v1[255] = swift_task_alloc();
  v1[256] = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_231D77F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();
  v19 = v18[244];
  v20 = v18[243];
  v21 = v18[228];
  v22 = swift_allocBox();
  v24 = v23;
  v18[257] = v22;
  v18[258] = v23;
  v18[259] = *(v19 + 16);
  OUTLINED_FUNCTION_322();
  v18[260] = v25;
  OUTLINED_FUNCTION_94_5();
  v26();
  v27 = sub_231E10A20();
  v29 = v28;
  v18[261] = v27;
  v18[262] = v28;
  sub_231E109C0();
  if (v30)
  {
    sub_231E116F0();
    OUTLINED_FUNCTION_202_0();
  }

  v31 = v18[229];
  OUTLINED_FUNCTION_4_12();
  sub_231D9F768();
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_100_6();
  sub_231E109F0();
  if (v32)
  {
    sub_231E116F0();
    OUTLINED_FUNCTION_202_0();
  }

  v33 = v18[229];
  OUTLINED_FUNCTION_4_12();
  sub_231D9F768();
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_100_6();
  sub_231E109B0();
  if (v34)
  {
    sub_231E116F0();
    OUTLINED_FUNCTION_202_0();
  }

  v35 = v18[229];
  OUTLINED_FUNCTION_4_12();
  sub_231D9F768();
  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_100_6();
  v36 = sub_231E108E0();
  v37 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isCommunicationNotification;
  OUTLINED_FUNCTION_4_12();
  *(v35 + v37) = v36;
  v38 = sub_231E108E0();
  if (v38 == 2 || (v38 & 1) == 0)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0x3FF0000000000000;
  }

  v40 = v18[229] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_proportionCommunicationNotifications;
  OUTLINED_FUNCTION_51();
  *v40 = v39;
  *(v40 + 8) = 0;
  sub_231E10910();
  if (v41)
  {
    OUTLINED_FUNCTION_7_15();
    if (v24 == sub_231DE8A04(0) && v37 == v42)
    {
      v50 = 4;
LABEL_32:
      LODWORD(a14) = v50;

      goto LABEL_33;
    }

    OUTLINED_FUNCTION_207();
    v44 = sub_231E12100();

    if (v44)
    {
      v45 = 4;
LABEL_25:
      LODWORD(a14) = v45;
LABEL_33:

      v74 = v18[256];
      v75 = v18[255];
      v76 = v18[254];
      v77 = v18[253];
      v78 = v18[252];
      v79 = v18[251];
      v80 = v18[248];
      v81 = v18[246];
      v82 = v18[245];
      v83 = v18[242];
      v84 = v18[239];
      v85 = v18[238];
      OUTLINED_FUNCTION_85_4();

      OUTLINED_FUNCTION_18_6();
      OUTLINED_FUNCTION_107_1();

      return v88(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }
  }

  sub_231E10910();
  if (!v46)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_7_15();
  if (v24 == sub_231DE8A04(1) && v37 == v47)
  {
    v50 = 3;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_207();
  v49 = sub_231E12100();

  if (v49)
  {
    v45 = 3;
    goto LABEL_25;
  }

LABEL_27:
  v51 = v18[256];
  v52 = v18[250];
  v53 = v18[249];
  v54 = v18[229];
  v18[263] = sub_231CB4EEC();
  v56 = *(v52 + 16);
  v55 = v52 + 16;
  v18[264] = v56;
  OUTLINED_FUNCTION_322();
  v18[265] = v57;
  v58(v51);
  OUTLINED_FUNCTION_390();
  swift_retain_n();

  v59 = sub_231E10E10();
  v60 = sub_231E11AF0();

  if (os_log_type_enabled(v59, v60))
  {
    v108 = v27;
    v61 = v18[229];
    v62 = swift_slowAlloc();
    v63 = OUTLINED_FUNCTION_67();
    *v62 = 136446466;
    v64 = sub_231DDB1E8();
    OUTLINED_FUNCTION_316(v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_335();
    *(v62 + 4) = v55;
    *(v62 + 12) = 1024;
    OUTLINED_FUNCTION_270_0();
    v72 = sub_231E108E0();
    swift_endAccess();

    v73 = v72 != 2 && (v72 & 1) != 0;
    v107 = v18[256];
    v100 = v18[250];
    v101 = v18[249];
    *(v62 + 14) = v73;

    _os_log_impl(&dword_231CAE000, v59, v60, "%{public}s Processing notification; communication: %{BOOL}d", v62, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v63);
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_31_1();

    v98 = *(v100 + 8);
    v98(v107, v101);
    v27 = v108;
  }

  else
  {
    v95 = v18[256];
    v96 = v18[250];
    v97 = v18[249];
    OUTLINED_FUNCTION_390();

    v98 = *(v96 + 8);
    v99 = OUTLINED_FUNCTION_18_0();
    (v98)(v99);
  }

  v18[266] = v98;
  v102 = v18[231];
  v103 = swift_task_alloc();
  v18[267] = v103;
  v103[2] = v24;
  v103[3] = v102;
  v103[4] = v27;
  v103[5] = v29;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v18[268] = v104;
  *v104 = v105;
  OUTLINED_FUNCTION_171_1(v104);
  OUTLINED_FUNCTION_107_1();

  return sub_231DDB61C();
}

uint64_t sub_231D78564()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_87_5();
  v3 = *(v0 + 2144);
  v4 = *v2;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_223();
  v7 = *(v6 + 2136);
  if (v1)
  {
  }

  else
  {
    v9 = *(v6 + 2136);

    v10 = OUTLINED_FUNCTION_143_2();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_231D7869C()
{
  OUTLINED_FUNCTION_207_0();
  v78 = v2;
  if (*(v2 + 1785))
  {
    v4 = *(v2 + 2096);
    v5 = *(v2 + 2056);

    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_85_4();

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_406();

    __asm { BRAA            X2, X16 }
  }

  v8 = *(v2 + 2064);
  OUTLINED_FUNCTION_125_1();
  sub_231E10A00();
  *(v2 + 2152) = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_81_0();
    v10 = *(v2 + 2064);
    swift_endAccess();
    OUTLINED_FUNCTION_125_1();
    v11 = sub_231E10910();
    *(v2 + 2160) = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = *(v2 + 2064);
      swift_endAccess();
      OUTLINED_FUNCTION_125_1();
      v16 = sub_231E109B0();
      *(v2 + 2168) = v17;
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        v20 = *(v2 + 2064);
        swift_endAccess();
        OUTLINED_FUNCTION_125_1();
        v21 = sub_231E108E0();
        v3 = v21;
        swift_endAccess();
        if (v21 != 2 && (v21 & 1) != 0)
        {
          v22 = *(v2 + 1848);
          v23 = swift_task_alloc();
          *(v2 + 2176) = v23;
          v23[2] = v1;
          v23[3] = v0;
          v23[4] = v13;
          v23[5] = v14;
          v23[6] = v18;
          v23[7] = v19;
          v23[8] = v22;
          v24 = swift_task_alloc();
          *(v2 + 2184) = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75100, &qword_231E1E520);
          OUTLINED_FUNCTION_136_1();
          *v24 = v25;
          v24[1] = sub_231D78C44;
          v26 = *(v2 + 1832);
LABEL_30:
          OUTLINED_FUNCTION_406();

          return sub_231DDB61C();
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
  }

  v27 = v2 + 1785;
  OUTLINED_FUNCTION_257();
  v28 = *(v2 + 1992);
  v29 = *(v2 + 1832);
  v30(*(v2 + 2040));

  v31 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v32 = OUTLINED_FUNCTION_91_0();
  v33 = *(v2 + 2128);
  v34 = *(v2 + 2040);
  v35 = *(v2 + 2000);
  v36 = *(v2 + 1992);
  if (v32)
  {
    v76 = *(v2 + 2128);
    v37 = *(v2 + 1832);
    OUTLINED_FUNCTION_9_1();
    v77 = OUTLINED_FUNCTION_17_1();
    *v27 = 136446210;
    v38 = sub_231DDB1E8();
    sub_231CB5000(v38, v39, &v77);
    OUTLINED_FUNCTION_87_0();
    *(v2 + 1789) = v3;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    OUTLINED_FUNCTION_2_6();
    v27 = v2 + 1785;
    OUTLINED_FUNCTION_30();

    v45 = OUTLINED_FUNCTION_9_4();
    v76(v45);
  }

  else
  {

    v46 = OUTLINED_FUNCTION_9_4();
    v33(v46);
  }

  *(v2 + 2192) = MEMORY[0x277D84F90];
  v47 = *(v2 + 2064);
  OUTLINED_FUNCTION_125_1();
  sub_231E10920();
  swift_endAccess();
  OUTLINED_FUNCTION_505();
  if (!v31)
  {
    v65 = 3;
LABEL_27:
    v66 = *(v27 + 47);
    v67 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
    OUTLINED_FUNCTION_4_12();
    *(v66 + v67) = v65;
    if (sub_231E11A20())
    {
      v68 = OUTLINED_FUNCTION_118_5();
      OUTLINED_FUNCTION_182_0(v68);
      v69 = swift_task_alloc();
      *(v2 + 2224) = v69;
      *v69 = v2;
      OUTLINED_FUNCTION_60_6(v69);
      OUTLINED_FUNCTION_13_0();
    }

    else
    {
      v70 = *(v2 + 2064);
      v71 = swift_task_alloc();
      *(v2 + 2232) = v71;
      v72 = *(v27 + 47);
      *(v71 + 16) = v70;
      *(v71 + 24) = v72;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      *(v2 + 2240) = v73;
      *v73 = v74;
      OUTLINED_FUNCTION_59_7(v73);
      OUTLINED_FUNCTION_57_7();
    }

    goto LABEL_30;
  }

  v48 = *(v2 + 2064);
  OUTLINED_FUNCTION_125_1();
  v49 = sub_231E108E0();
  swift_endAccess();
  if (v49 == 2 || (v49 & 1) == 0)
  {
    v65 = 4;
    goto LABEL_27;
  }

  v50 = *(v2 + 2056);
  v51 = *(v2 + 1848);
  v52 = *(v2 + 1832);
  sub_231D12170();
  OUTLINED_FUNCTION_299_0();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_465(v53);
  OUTLINED_FUNCTION_220_0();
  swift_retain_n();

  v54 = swift_task_alloc();
  v55 = OUTLINED_FUNCTION_445(v54);
  *v55 = v56;
  v57 = OUTLINED_FUNCTION_209_0(v55);
  OUTLINED_FUNCTION_84_4(v57, &unk_231E1E660);
  OUTLINED_FUNCTION_406();

  return sub_231D6DB48(v58, v59, v60, v61, v62);
}

uint64_t sub_231D78C44()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  v3 = v1;
  OUTLINED_FUNCTION_4();
  *v4 = v1;
  v5 = v1[273];
  *v4 = *v2;

  OUTLINED_FUNCTION_90_1();
  v7 = *(v6 + 2176);
  if (v0)
  {
  }

  else
  {
    v9 = v3[271];
    v10 = v3[270];
    v11 = v3[269];

    OUTLINED_FUNCTION_137_0();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_231D78D9C()
{
  OUTLINED_FUNCTION_47_0();
  v1[274] = v1[227];
  v3 = v1[258];
  OUTLINED_FUNCTION_125_1();
  sub_231E10920();
  swift_endAccess();
  OUTLINED_FUNCTION_505();
  if (v0)
  {
    v4 = v1[258];
    OUTLINED_FUNCTION_125_1();
    v5 = sub_231E108E0();
    swift_endAccess();
    if (v5 != 2 && (v5 & 1) != 0)
    {
      v6 = v1[257];
      v7 = v1[231];
      v8 = v1[229];
      sub_231D12170();
      OUTLINED_FUNCTION_299_0();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_465(v9);
      OUTLINED_FUNCTION_220_0();
      swift_retain_n();

      v10 = swift_task_alloc();
      v11 = OUTLINED_FUNCTION_445(v10);
      *v11 = v12;
      v13 = OUTLINED_FUNCTION_209_0(v11);
      v14 = OUTLINED_FUNCTION_84_4(v13, &unk_231E1E660);

      return sub_231D6DB48(v14, v2, v15, v8, v16);
    }

    v18 = 4;
  }

  else
  {
    v18 = 3;
  }

  v19 = v1[229];
  v20 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
  OUTLINED_FUNCTION_4_12();
  *(v19 + v20) = v18;
  if (sub_231E11A20())
  {
    v21 = OUTLINED_FUNCTION_118_5();
    OUTLINED_FUNCTION_182_0(v21);
    v22 = swift_task_alloc();
    v1[278] = v22;
    *v22 = v1;
    OUTLINED_FUNCTION_60_6(v22);
    OUTLINED_FUNCTION_13_0();
  }

  else
  {
    v23 = v1[258];
    v24 = swift_task_alloc();
    v1[279] = v24;
    v25 = *(v1 + 229);
    *(v24 + 16) = v23;
    *(v24 + 24) = v25;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v1[280] = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_59_7(v26);
    OUTLINED_FUNCTION_57_7();
  }

  return sub_231DDB61C();
}

uint64_t sub_231D7900C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1[276];
  v3 = v1[275];
  v4 = v1[229];
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231D79128()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  if (sub_231E11A20())
  {
    v1 = OUTLINED_FUNCTION_118_5();
    OUTLINED_FUNCTION_182_0(v1);
    v2 = swift_task_alloc();
    *(v0 + 2224) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_60_6(v2);
    OUTLINED_FUNCTION_13_0();
  }

  else
  {
    v3 = *(v0 + 2064);
    v4 = swift_task_alloc();
    *(v0 + 2232) = v4;
    v5 = *(v0 + 1832);
    *(v4 + 16) = v3;
    *(v4 + 24) = v5;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v0 + 2240) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_59_7(v6);
    OUTLINED_FUNCTION_57_7();
  }

  OUTLINED_FUNCTION_106();

  return sub_231DDB61C();
}

uint64_t sub_231D79230()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  v3 = v1;
  OUTLINED_FUNCTION_4();
  *v4 = v1;
  v5 = *(v1 + 2224);
  *v4 = *v2;

  OUTLINED_FUNCTION_90_1();
  v7 = *(v6 + 2216);
  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 2192);
    v10 = *(v3 + 2096);

    v11 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231D79378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = *(v16 + 2056);

  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_85_4();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_37();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D79454()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_87_5();
  v3 = *(v0 + 2240);
  v4 = *v2;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_223();
  v7 = *(v6 + 2232);
  if (v1)
  {
  }

  else
  {
    v9 = *(v6 + 2232);

    v10 = OUTLINED_FUNCTION_143_2();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

void sub_231D7958C()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();
  v1 = *(v0 + 1784);
  if (v1 == 255)
  {
    v42 = *(v0 + 2064);
    v43 = *(v0 + 1848);
    v44 = *(v0 + 1832);
    v45 = swift_task_alloc();
    *(v0 + 2248) = v45;
    OUTLINED_FUNCTION_107_5(v45);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v0 + 2256) = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_171_1(v46);
    OUTLINED_FUNCTION_442();
LABEL_33:
    OUTLINED_FUNCTION_107_1();

    sub_231DDB61C();
    return;
  }

  v2 = (v0 + 16);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1776);
  OUTLINED_FUNCTION_257();
  v5 = *(v0 + 1992);
  v6 = *(v0 + 1832);
  v7 = 2 * ((v1 & 0xFE) != 6);
  v8(*(v0 + 2032));

  v9 = OUTLINED_FUNCTION_67_6();
  sub_231D26064(v9, v10, v11);
  v12 = sub_231E10E10();
  v13 = sub_231E11AF0();

  v14 = OUTLINED_FUNCTION_67_6();
  sub_231CBA16C(v14, v15, v16);
  v17 = os_log_type_enabled(v12, v13);
  v18 = *(v0 + 2128);
  v19 = *(v0 + 2032);
  v20 = *(v0 + 2000);
  v135 = *(v0 + 1992);
  if (v17)
  {
    v132 = *(v0 + 2128);
    v21 = *(v0 + 1832);
    v131 = *(v0 + 2032);
    v22 = OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_68();
    *v22 = 136446466;
    v23 = sub_231DDB1E8();
    OUTLINED_FUNCTION_316(v23, v24, v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_117_0();
    *(v22 + 4) = v7;
    *(v22 + 12) = 2080;
    v31 = OUTLINED_FUNCTION_67_6();
    sub_231CFFD6C(v31, v32, v33);
    OUTLINED_FUNCTION_316(v34, v35, v36, v37, v38, v39, v40, v41);
    OUTLINED_FUNCTION_117_0();
    *(v22 + 14) = v7;
    _os_log_impl(&dword_231CAE000, v12, v13, "%{public}s Ineligible for urgency (%s)", v22, 0x16u);
    OUTLINED_FUNCTION_282_0();
    v2 = (v0 + 16);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_49_2();

    v132(v131, v135);
  }

  else
  {

    v18(v19, v135);
  }

  v48 = *(v0 + 1832) + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason;
  OUTLINED_FUNCTION_51();
  v49 = *v48;
  v50 = *(v48 + 8);
  *v48 = v3;
  *(v48 + 8) = v4;
  v51 = *(v48 + 16);
  *(v48 + 16) = v1;
  v52 = OUTLINED_FUNCTION_67_6();
  sub_231D26064(v52, v53, v54);
  v55 = OUTLINED_FUNCTION_67_6();
  sub_231CC3500(v55, v56, v57);
  sub_231CBA16C(v49, v50, v51);
  *(v0 + 1168) = xmmword_231E13680;
  *(v0 + 1184) = 0u;
  *(v0 + 1200) = 0u;
  *(v0 + 1216) = 0u;
  *(v0 + 1232) = 0u;
  *(v0 + 1248) = 0u;
  OUTLINED_FUNCTION_249_0();
  sub_231CE25FC(v62, v58, v59, v60, v61, v63);
  v64 = OUTLINED_FUNCTION_67_6();
  sub_231CBA16C(v64, v65, v66);
  memcpy(v2, (v0 + 400), 0x80uLL);
  if (sub_231E11A20())
  {
    v67 = OUTLINED_FUNCTION_118_5();
    *(v0 + 2264) = v67;
    v67[2] = v4;
    v67[3] = v2;
    v67[4] = v50;
    v67[5] = v3;
    v67[6] = v1;
    v67[7] = v48;
    v68 = swift_task_alloc();
    *(v0 + 2272) = v68;
    *v68 = v0;
    OUTLINED_FUNCTION_171_1(v68);
    OUTLINED_FUNCTION_13_0();
    goto LABEL_33;
  }

  v69 = *(v0 + 2192);
  v70 = *(v69 + 16);
  if (!v70)
  {
    v74 = MEMORY[0x277D84F90];
LABEL_23:
    v98 = *(v74 + 16);
    if (v98)
    {
      v99 = *(v0 + 1928);
      v100 = *(v99 + 16);
      v101 = *(v99 + 80);
      OUTLINED_FUNCTION_79();
      v103 = v74 + v102;
      v133 = *(v104 + 56);
      v134 = v105;
      v106 = (v104 - 8);
      v107 = MEMORY[0x277D84F90];
      do
      {
        v108 = *(v0 + 1936);
        v109 = *(v0 + 1920);
        v110 = OUTLINED_FUNCTION_294_0();
        v134(v110);
        v111 = sub_231E107A0();
        v113 = v112;
        v114 = *v106;
        v115 = OUTLINED_FUNCTION_203_0();
        v116(v115);
        if (v113)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v120 = *(v107 + 2);
            v121 = OUTLINED_FUNCTION_0_1();
            v107 = sub_231CE0B9C(v121, v122, v123, v107);
          }

          v118 = *(v107 + 2);
          v117 = *(v107 + 3);
          if (v118 >= v117 >> 1)
          {
            OUTLINED_FUNCTION_2_12(v117);
            OUTLINED_FUNCTION_389();
            v107 = sub_231CE0B9C(v124, v125, v126, v107);
          }

          *(v107 + 2) = v118 + 1;
          v119 = &v107[16 * v118];
          *(v119 + 4) = v111;
          *(v119 + 5) = v113;
        }

        v103 += v133;
        --v98;
      }

      while (v98);
    }

    v127 = OUTLINED_FUNCTION_492();
    OUTLINED_FUNCTION_303(v127);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v0 + 2296) = v128;
    *v128 = v129;
    OUTLINED_FUNCTION_171_1(v128);
    OUTLINED_FUNCTION_187();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_296_0(v69);
  v136 = v71;
  v73 = (v72 + 8);
  v74 = MEMORY[0x277D84F90];
  while (1)
  {
    v75 = *(v0 + 2080);
    v76 = *(v0 + 2072);
    v77 = *(v0 + 1968);
    v78 = *(v0 + 1944);
    v79 = OUTLINED_FUNCTION_140_0();
    v80(v79);
    v81 = sub_231E10920();
    v82 = *v73;
    v83 = OUTLINED_FUNCTION_301_0();
    v84(v83);
    v85 = *(v81 + 16);
    v86 = *(v74 + 16);
    if (__OFADD__(v86, v85))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v86 + v85 > *(v74 + 24) >> 1)
    {
      OUTLINED_FUNCTION_248_0();
      v74 = sub_231D9F7F4(v87, v88, v89, v90, &qword_27DD74BC0, &qword_231E1C578, v91, v92);
    }

    if (*(v81 + 16))
    {
      OUTLINED_FUNCTION_460();
      if (v94 != v95)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_279_0(v93);

      if (v85)
      {
        v96 = *(v74 + 16);
        v95 = __OFADD__(v96, v85);
        v97 = v96 + v85;
        if (v95)
        {
          goto LABEL_39;
        }

        *(v74 + 16) = v97;
      }
    }

    else
    {

      if (v85)
      {
        goto LABEL_37;
      }
    }

    v1 += v136;
    if (!--v70)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_231D79B8C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 2256);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 2248);
  }

  else
  {
    OUTLINED_FUNCTION_12_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

void sub_231D79CAC()
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v1 = *(v0 + 528);
  *(v0 + 16) = v1;
  v77 = v0[260];
  v2 = v0[259];
  v3 = v0[258];
  v4 = v0[248];
  v5 = v0[247];
  v6 = v0[243];
  v79 = v0[231];
  v81 = v0[281];
  v7 = v0[229];
  memcpy(v0 + 17, v0 + 529, 0x7FuLL);
  v8 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isUrgent;
  OUTLINED_FUNCTION_4_12();
  *(v7 + v8) = v1;
  v2(v4, v3, v6);
  OUTLINED_FUNCTION_70();
  swift_storeEnumTagMultiPayload();
  memcpy(v0 + 18, v0 + 2, 0x80uLL);
  sub_231D8C62C();
  OUTLINED_FUNCTION_4_19();
  sub_231DA1DDC();

  if (sub_231E11A20())
  {
    v9 = v0[262];
    v10 = v0[261];
    v11 = v0[258];
    v12 = v0[231];
    v13 = v0[229];
    v14 = swift_task_alloc();
    v0[283] = v14;
    v14[2] = v12;
    v14[3] = v0 + 2;
    v14[4] = v13;
    v14[5] = v11;
    v14[6] = v10;
    v14[7] = v9;
    v15 = swift_task_alloc();
    v0[284] = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_171_1(v15);
    OUTLINED_FUNCTION_13_0();
LABEL_28:
    OUTLINED_FUNCTION_35();

    sub_231DDB61C();
    return;
  }

  v16 = v0[274];
  v17 = *(v16 + 16);
  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_18:
    v45 = *(v21 + 16);
    if (v45)
    {
      v46 = v0[241];
      v47 = *(v46 + 16);
      v48 = *(v46 + 80);
      OUTLINED_FUNCTION_79();
      v50 = v21 + v49;
      v78 = *(v51 + 56);
      v80 = v52;
      v53 = (v51 - 8);
      v54 = MEMORY[0x277D84F90];
      do
      {
        v55 = v0[242];
        v56 = v0[240];
        v57 = OUTLINED_FUNCTION_294_0();
        v80(v57);
        v58 = sub_231E107A0();
        v60 = v59;
        v61 = *v53;
        v62 = OUTLINED_FUNCTION_203_0();
        v63(v62);
        if (v60)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = *(v54 + 2);
            v67 = OUTLINED_FUNCTION_0_1();
            v54 = sub_231CE0B9C(v67, v68, v69, v54);
          }

          v64 = *(v54 + 2);
          if (v64 >= *(v54 + 3) >> 1)
          {
            OUTLINED_FUNCTION_389();
            v54 = sub_231CE0B9C(v70, v71, v72, v54);
          }

          *(v54 + 2) = v64 + 1;
          v65 = &v54[16 * v64];
          *(v65 + 4) = v58;
          *(v65 + 5) = v60;
        }

        v50 += v78;
        --v45;
      }

      while (v45);
    }

    v73 = OUTLINED_FUNCTION_492();
    OUTLINED_FUNCTION_303(v73);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v0[287] = v74;
    *v74 = v75;
    OUTLINED_FUNCTION_171_1(v74);
    OUTLINED_FUNCTION_187();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_296_0(v16);
  v82 = v18;
  v20 = (v19 + 8);
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v0[260];
    v23 = v0[259];
    v24 = v0[246];
    v25 = v0[243];
    v26 = OUTLINED_FUNCTION_140_0();
    v27(v26);
    v28 = sub_231E10920();
    v29 = *v20;
    v30 = OUTLINED_FUNCTION_301_0();
    v31(v30);
    v32 = *(v28 + 16);
    v33 = *(v21 + 16);
    if (__OFADD__(v33, v32))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v33 + v32 > *(v21 + 24) >> 1)
    {
      OUTLINED_FUNCTION_248_0();
      v21 = sub_231D9F7F4(v34, v35, v36, v37, &qword_27DD74BC0, &qword_231E1C578, v38, v39);
    }

    if (*(v28 + 16))
    {
      OUTLINED_FUNCTION_460();
      if (v41 != v42)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_279_0(v40);

      if (v32)
      {
        v43 = *(v21 + 16);
        v42 = __OFADD__(v43, v32);
        v44 = v43 + v32;
        if (v42)
        {
          goto LABEL_34;
        }

        *(v21 + 16) = v44;
      }
    }

    else
    {

      if (v32)
      {
        goto LABEL_32;
      }
    }

    v2 = (v2 + v82);
    if (!--v17)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_231D7A0F0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 2272);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[283];
  }

  else
  {
    v11 = v3[274];
    v12 = v3[262];

    v13 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_231D7A220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = v16[283];
  v18 = v16[257];
  OUTLINED_FUNCTION_178(v16 + 82);
  sub_231CD2C1C((v16 + 82));

  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_85_4();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_37();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D7A31C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  v3 = v1;
  OUTLINED_FUNCTION_4();
  *v4 = v1;
  v5 = *(v1 + 2296);
  *v4 = *v2;

  OUTLINED_FUNCTION_90_1();
  v7 = *(v6 + 2288);
  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 2280);

    v10 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_231D7AA00()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 2328);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[290];
  }

  else
  {
    v11 = v3[274];
    v12 = v3[262];

    v13 = OUTLINED_FUNCTION_4_18();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_231D7AB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = *(v16 + 2320);
  v18 = *(v16 + 2056);
  sub_231CBA16C(*(v16 + 2304), *(v16 + 2312), *(v16 + 1786));
  OUTLINED_FUNCTION_178((v16 + 1040));
  sub_231CD2C1C(v16 + 1040);

  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_85_4();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_37();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D7AC3C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 2368);
  *(v1 + 2360);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D7AD48()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v6 = v0[239];
  v7 = v0[238];
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v8, v9);
  v10 = v0[294];
  v11 = v0[262];
  v12 = OUTLINED_FUNCTION_364();
  v0[300] = v12;
  v12[2] = v4;
  v12[3] = v3;
  v12[4] = v0 + 2;
  v12[5] = v5;
  v12[6] = v10;
  v12[7] = v2;
  v12[8] = v1;
  v12[9] = v11;
  v13 = swift_task_alloc();
  v0[301] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_171_1(v13);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

uint64_t sub_231D7AE30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 2384);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v3[299] = v0;

  if (v0)
  {
    v9 = v3[292];
    v10 = v3[274];
    v11 = v3[262];
  }

  else
  {
    v12 = v3[297];
    v13 = v3[292];
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231D7AF5C()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v5 = v0[293];
  v6 = v0[239];
  v7 = v0[237];
  v8 = v0[236];
  v9 = v0[235];
  v10 = v0[229];
  OUTLINED_FUNCTION_0_31();
  sub_231DA29CC(v11, v6);
  v12 = v10 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth;
  OUTLINED_FUNCTION_4_12();
  *v12 = v5;
  *(v12 + 8) = 0;
  v13 = *(v8 + 20);
  OUTLINED_FUNCTION_503();
  v14 = sub_231E0F5F0();
  if (OUTLINED_FUNCTION_161_1(v14) == 1)
  {
    sub_231CC154C(v0[235], &qword_27DD74470, &qword_231E17120);
  }

  else
  {
    v15 = v0[234];
    v1 = v0[233];
    v8 = v0[232];
    sub_231E0F5C0();
    OUTLINED_FUNCTION_56_6(v12);
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_140_0();
    v19(v18);
    sub_231E0F5D0();
    v20 = OUTLINED_FUNCTION_40_7();
    v21(v20);
  }

  v22 = v0[229] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summaryTopLineLength;
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_449();
  v23 = v0[294];
  v24 = v0[262];
  v25 = OUTLINED_FUNCTION_364();
  v0[300] = v25;
  v25[2] = v3;
  v25[3] = v2;
  v25[4] = v0 + 2;
  v25[5] = v4;
  v25[6] = v23;
  v25[7] = v1;
  v25[8] = v8;
  v25[9] = v24;
  v26 = swift_task_alloc();
  v0[301] = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_171_1(v26);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

uint64_t sub_231D7B14C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  v3 = v1;
  OUTLINED_FUNCTION_4();
  *v4 = v1;
  v5 = v1[301];
  *v4 = *v2;

  OUTLINED_FUNCTION_90_1();
  v7 = *(v6 + 2400);
  if (v0)
  {
  }

  else
  {
    v9 = v3[294];
    v10 = v3[274];
    v11 = v3[262];

    OUTLINED_FUNCTION_137_0();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_231D7B2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_257();
  v21 = v18[249];
  v22 = v18[229];
  v23(v18[251]);

  v24 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v25 = OUTLINED_FUNCTION_91_0();
  v26 = v18[266];
  v27 = v18[251];
  v28 = v18[250];
  v29 = v18[249];
  if (v25)
  {
    a14 = v18[266];
    v30 = v18[229];
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_459();
    *v19 = 136446210;
    v31 = sub_231DDB1E8();
    OUTLINED_FUNCTION_316(v31, v32, v33, v34, v35, v36, v37, v38);
    OUTLINED_FUNCTION_87_0();
    *(v19 + 4) = v20;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v44 = OUTLINED_FUNCTION_9_4();
    a14(v44);
  }

  else
  {

    v45 = OUTLINED_FUNCTION_9_4();
    v26(v45);
  }

  v46 = v18[257];
  v47 = v18[239];
  sub_231D48194();
  OUTLINED_FUNCTION_3_24();
  sub_231DA1DDC();
  OUTLINED_FUNCTION_178(v18 + 98);
  sub_231CD2C1C((v18 + 98));

  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_107_1();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231D7B478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_47_0();
  v11 = v10[260];
  v12 = v10[259];
  v13 = v10[258];
  v14 = v10[248];
  v15 = v10[247];
  v16 = v10[243];
  OUTLINED_FUNCTION_178(v10 + 34);
  OUTLINED_FUNCTION_125_1();
  sub_231E10920();
  swift_endAccess();
  sub_231D147C8();
  v10[302] = v17;

  v18 = OUTLINED_FUNCTION_59_0();
  v12(v18);
  OUTLINED_FUNCTION_25();
  swift_storeEnumTagMultiPayload();
  v19 = swift_task_alloc();
  v10[303] = v19;
  *v19 = v10;
  v19[1] = sub_231D7B598;
  v20 = v10[294];
  v21 = v10[248];
  v22 = v10[231];
  v23 = v10[229];
  OUTLINED_FUNCTION_27_1(v10[299]);
  OUTLINED_FUNCTION_227_0();

  return sub_231D8FA3C(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_231D7B598()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = v3[303];
  v5 = v3[302];
  v6 = v3[294];
  v7 = v3[248];
  v8 = *v0;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  *(v11 + 1787) = v10;

  OUTLINED_FUNCTION_4_19();
  sub_231DA1DDC();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231D7B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();
  v19 = *(v18 + 2376);
  v20 = *(v18 + 2056);

  OUTLINED_FUNCTION_178((v18 + 912));
  sub_231CD2C1C(v18 + 912);

  v21 = *(v18 + 2048);
  v22 = *(v18 + 2040);
  v23 = *(v18 + 2032);
  v24 = *(v18 + 2024);
  v25 = *(v18 + 2016);
  v26 = *(v18 + 2008);
  v27 = *(v18 + 1984);
  v28 = *(v18 + 1968);
  v29 = *(v18 + 1960);
  v30 = *(v18 + 1936);
  v31 = *(v18 + 1912);
  v32 = *(v18 + 1904);
  OUTLINED_FUNCTION_331();
  HIDWORD(a15) = *(v18 + 1787);

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_107_1();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231D7B818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a6;
  v12[1] = a7;

  MEMORY[0x23837CC20](46, 0xE100000000000000);
  v8 = OUTLINED_FUNCTION_250_0();
  MEMORY[0x23837CC20](v8);
  v9 = *(v7 + 32);
  os_unfair_lock_lock(v9 + 8);
  sub_231DA3B48(v12, &v9[4]);
  os_unfair_lock_unlock(v9 + 8);
  v10 = v12[0];

  return v10;
}

void sub_231D7B8FC()
{
  OUTLINED_FUNCTION_118();
  v48 = v2;
  v49 = v0;
  v47 = v3;
  OUTLINED_FUNCTION_95_5();
  v45 = sub_231E10BE0();
  v4 = OUTLINED_FUNCTION_24(v45);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = sub_231E119F0();
  v16 = OUTLINED_FUNCTION_24(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_63_6();
  v41 = sub_231D7603C();
  v42 = v21;
  v43 = v0;
  v50 = sub_231E10B50();
  v22 = OUTLINED_FUNCTION_59_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_94_5();
  sub_231DA21B0(v24, v25, v26);
  v39 = sub_231E11580();
  v40 = v27;

  sub_231CC8990(v14);
  OUTLINED_FUNCTION_28_2(v14);
  v46 = v18;
  v38 = v15;
  if (v28)
  {
    sub_231D1221C();
    OUTLINED_FUNCTION_28_2(v14);
    if (!v28)
    {
      sub_231CC154C(v14, &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    v29 = *(v18 + 32);
    OUTLINED_FUNCTION_115_5();
    v30();
  }

  OUTLINED_FUNCTION_246_0();
  v31 = v44;
  v32 = v45;
  v33(v44, v43, v45);
  v34 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v35 = swift_allocObject();
  v36 = v49;
  *(v35 + 16) = v48;
  *(v35 + 24) = v36;
  (*(v6 + 32))(v35 + v34, v31, v32);
  *(v35 + ((v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v47;

  sub_231D7B818(v41, v42, v39, v40, v1, 0xD000000000000012, 0x8000000231E36540);

  (*(v46 + 8))(v1, v38);
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D7BC34()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_103_3(v1, v2, v3, v4);
  v5 = sub_231E10BE0();
  v0[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[7] = v6;
  v0[8] = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D7BCDC()
{
  OUTLINED_FUNCTION_274_0();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_89_5();
  sub_231D11F64();
  v3 = OUTLINED_FUNCTION_50_6();
  v4(v3);
  OUTLINED_FUNCTION_49_9();
  v5 = OUTLINED_FUNCTION_435();
  v6 = OUTLINED_FUNCTION_38_9(v5);
  v7(v6);
  *(v0 + v2) = v1;
  OUTLINED_FUNCTION_220_0();
  swift_retain_n();

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_290_0(v8);
  *v9 = v10;
  v9[1] = sub_231DA48C8;
  OUTLINED_FUNCTION_64_5(v9, &unk_231E1E4D8);
  OUTLINED_FUNCTION_273_0();

  return sub_231D6DB48(v11, v12, v13, v14, v15);
}

uint64_t sub_231D7BDEC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_102_4(v1, v2, v3, v4);
  v5 = sub_231E0F950();
  v0[9] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[10] = v6;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_434(v9);
  v0[12] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[13] = v11;
  v13 = *(v12 + 64);
  v0[14] = OUTLINED_FUNCTION_55();
  v14 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231D7BED0()
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_65_6(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_325(v2);
  OUTLINED_FUNCTION_62_4();

  return sub_231DDB61C();
}

uint64_t sub_231D7BF84()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_61_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_381(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_48_8(v2);

  return sub_231D7C010();
}

uint64_t sub_231D7C010()
{
  OUTLINED_FUNCTION_18();
  v1[94] = v0;
  v1[93] = v2;
  v1[92] = v3;
  v1[91] = v4;
  v5 = type metadata accessor for EntityKind();
  v1[95] = v5;
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  v1[96] = OUTLINED_FUNCTION_55();
  v8 = sub_231E0F5E0();
  v1[97] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[98] = v9;
  v11 = *(v10 + 64);
  v1[99] = OUTLINED_FUNCTION_55();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  v1[100] = OUTLINED_FUNCTION_69();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  v1[107] = OUTLINED_FUNCTION_55();
  v18 = type metadata accessor for SummarizerResult();
  v1[108] = v18;
  OUTLINED_FUNCTION_47(v18);
  v20 = *(v19 + 64);
  v1[109] = OUTLINED_FUNCTION_69();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v21 = sub_231E107F0();
  v1[113] = v21;
  OUTLINED_FUNCTION_6(v21);
  v1[114] = v22;
  v24 = *(v23 + 64);
  v1[115] = OUTLINED_FUNCTION_55();
  v25 = sub_231E10A30();
  v1[116] = v25;
  OUTLINED_FUNCTION_6(v25);
  v1[117] = v26;
  v28 = *(v27 + 64);
  v1[118] = OUTLINED_FUNCTION_69();
  v1[119] = swift_task_alloc();
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v29 = sub_231E10E30();
  v1[125] = v29;
  OUTLINED_FUNCTION_6(v29);
  v1[126] = v30;
  v32 = *(v31 + 64);
  v1[127] = OUTLINED_FUNCTION_69();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v33 = sub_231E11E70();
  v1[132] = v33;
  OUTLINED_FUNCTION_6(v33);
  v1[133] = v34;
  v36 = *(v35 + 64);
  v1[134] = OUTLINED_FUNCTION_55();
  v37 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_231D7C374()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[134];
  v2 = v0[91];
  v0[135] = sub_231E10BC0();
  v0[136] = v3;
  sub_231E12190();
  v4 = OUTLINED_FUNCTION_488(&dword_231E1D770);
  v0[137] = v4;
  *v4 = v0;
  v4[1] = sub_231D7C43C;
  v5 = v0[134];
  OUTLINED_FUNCTION_27_1(1000000000000000000);
  OUTLINED_FUNCTION_81();

  return v7();
}