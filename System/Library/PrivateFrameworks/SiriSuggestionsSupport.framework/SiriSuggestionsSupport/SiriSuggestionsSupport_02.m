uint64_t sub_2315E0968()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[172];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[173] = v8;
  v3[174] = v0;

  v9 = v2[171];
  if (v0)
  {
    v10 = v3[168];
    v11 = v3[167];
    v12 = v3[166];
    v29 = v3[160];
    v13 = v3[157];
    v14 = v3[156];
    v15 = v3[155];
    v16 = v3[154];
    v17 = v3[153];

    v18 = *(v16 + 8);
    v19 = OUTLINED_FUNCTION_13_2();
    v20(v19);
    sub_2315B2F7C((v3 + 62), &qword_27DD601D0, &qword_231607A98);
    (*(v13 + 8))(v29, v14);
  }

  else
  {
    v21 = v3[160];
    v22 = v3[157];
    v23 = v3[156];
    v24 = v3[155];
    v25 = v3[154];
    v26 = v3[153];

    (*(v25 + 8))(v24, v26);
    sub_2315B2F7C((v3 + 62), &qword_27DD601D0, &qword_231607A98);
    (*(v22 + 8))(v21, v23);
  }

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E0B8C()
{
  v1 = *(v0 + 1312);
  v2 = [*(v0 + 1384) dialog];
  sub_2315E9290(0, &qword_27DD60738, 0x277D052C8);
  v3 = sub_231606858();

  v44 = sub_2315E8E84(v3);
  sub_2315E72BC();
  v4 = sub_2315DE364(3, v44);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_231605898();
  v42 = v10;
  v43 = v8;
  v14 = v10 >> 1;
  v15 = __OFSUB__(v14, v8);
  v16 = v14 - v8;
  if (v15)
  {
    goto LABEL_13;
  }

  v41 = v0;
  if (v16)
  {
    v45 = MEMORY[0x277D84F90];
    v11 = sub_2316040B8(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
LABEL_14:
      __break(1u);
      return MEMORY[0x2821C6CC0](v11, v12, v13);
    }

    v17 = v43;
    while (v17 < v14)
    {
      v18 = *(v6 + 8 * v17);
      v19 = [v18 fullSpeak];
      v20 = sub_231606798();
      v22 = v21;

      v24 = *(v45 + 16);
      v23 = *(v45 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_12_3(v23);
        v11 = sub_2316040B8(v26, v24 + 1, 1);
      }

      *(v45 + 16) = v24 + 1;
      v25 = v45 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      if (v14 == ++v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v27 = *(v0 + 1392);
  v28 = *(v0 + 1384);
  v29 = *(v41 + 1312);
  sub_2316058C8();
  sub_2315DE988(v4, v6, v43, v42, (v41 + 920));
  sub_231605918();
  sub_2316058B8();
  swift_unknownObjectRelease();

  *(v41 + 1431) = -18;
  strcpy((v41 + 1416), "com.apple.siri");
  *(v41 + 1415) = -18;
  strcpy((v41 + 1400), "com.apple.siri");
  *(v41 + 1528) = 1;
  v30 = *(v41 + 1312);
  v31 = *(v41 + 968);
  v32 = OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils;
  *(v41 + 1432) = OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils;
  v33 = (v31 + v32);
  v34 = *(v31 + v32 + 32);
  __swift_project_boxed_opaque_existential_1((v31 + v32), *(v31 + v32 + 24));
  OUTLINED_FUNCTION_46_0();
  sub_231606598();
  OUTLINED_FUNCTION_27_1();
  sub_231605978();
  swift_endAccess();
  v35 = v33[4];
  OUTLINED_FUNCTION_51_0(v33, v33[3]);
  OUTLINED_FUNCTION_41();
  sub_2316065A8();
  v36 = *(v41 + 280);
  v37 = *(v41 + 288);
  OUTLINED_FUNCTION_51_0((v41 + 256), v36);
  v38 = *(MEMORY[0x277D60D78] + 4);
  v39 = swift_task_alloc();
  *(v41 + 1440) = v39;
  *v39 = v41;
  v39[1] = sub_2315E0EC4;
  v11 = v41 + 216;
  v12 = v36;
  v13 = v37;

  return MEMORY[0x2821C6CC0](v11, v12, v13);
}

uint64_t sub_2315E0EC4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 1440);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E0FAC()
{
  OUTLINED_FUNCTION_15();
  if (*(v0 + 240))
  {
    v1 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
    OUTLINED_FUNCTION_56();
    sub_231606008();
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 216));
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 256));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 256));
    sub_2315B2F7C(v0 + 216, &qword_27DD60718, &qword_231609520);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
  }

  v2 = *(v0 + 1408);
  v3 = *(v0 + 1400);
  v4 = (*(v0 + 968) + *(v0 + 1432));
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2316065A8();

  v6 = *(v0 + 400);
  v7 = *(v0 + 408);
  OUTLINED_FUNCTION_51_0((v0 + 376), v6);
  v8 = *(MEMORY[0x277D60D78] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 1448) = v9;
  *v9 = v10;
  v9[1] = sub_2315E110C;

  return MEMORY[0x2821C6CC0](v0 + 336, v6, v7);
}

uint64_t sub_2315E110C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 1448);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E11F4()
{
  if (*(v0 + 360))
  {
    v1 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
    OUTLINED_FUNCTION_26();
    sub_231606008();
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 336));
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 376));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 376));
    sub_2315B2F7C(v0 + 336, &qword_27DD60718, &qword_231609520);
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0;
  }

  v2 = *(v0 + 1424);
  v3 = *(v0 + 1416);
  v4 = *(v0 + 1312);
  OUTLINED_FUNCTION_27_1();
  sub_231605908();
  swift_endAccess();
  sub_2315DC458(v0 + 176, v0 + 16, &qword_27DD60720, &qword_231609528);
  v5 = *(v0 + 1064);
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60728, &unk_231609540);
    v6 = sub_231605568();
    v7 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v5, v7 ^ 1u, 1, v6);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      v8 = *(v0 + 1064);
      sub_231605558();
      OUTLINED_FUNCTION_23(v6);
      (*(v9 + 8))(v8, v6);
      goto LABEL_9;
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 16, &qword_27DD60720, &qword_231609528);
    sub_231605568();
    v10 = OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  sub_2315B2F7C(*(v0 + 1064), &qword_27DD60710, &qword_231609508);
LABEL_9:
  v14 = *(v0 + 1312);
  OUTLINED_FUNCTION_27_1();
  sub_2316059A8();
  swift_endAccess();
  sub_2315DC458(v0 + 296, v0 + 456, &qword_27DD60720, &qword_231609528);
  v15 = *(v0 + 1056);
  if (*(v0 + 480))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60728, &unk_231609540);
    v16 = sub_231605568();
    v17 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v15, v17 ^ 1u, 1, v16);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      v18 = *(v0 + 1056);
      sub_231605558();
      OUTLINED_FUNCTION_23(v16);
      v20 = *(v19 + 8);
      v21 = OUTLINED_FUNCTION_41();
      v22(v21);
      goto LABEL_14;
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 456, &qword_27DD60720, &qword_231609528);
    sub_231605568();
    v23 = OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  sub_2315B2F7C(*(v0 + 1056), &qword_27DD60710, &qword_231609508);
LABEL_14:
  v27 = *(v0 + 1528);
  v28 = *(v0 + 1312);
  v29 = *(v0 + 960);
  OUTLINED_FUNCTION_27_1();
  sub_231605958();
  swift_endAccess();
  sub_231605C38();
  OUTLINED_FUNCTION_27_1();
  sub_231605988();
  swift_endAccess();
  if (v27)
  {
    v30 = *(v0 + 1264);
    v31 = *(v0 + 1256);
    v32 = *(v0 + 1248);
    v33 = *(v0 + 1048);
    v34 = *(v0 + 968);
    v35 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    sub_2315DEFAC();
    sub_2315E3C58();
    v36 = *(v31 + 8);
    v37 = OUTLINED_FUNCTION_26();
    v36(v37);
    if (__swift_getEnumTagSinglePayload(v33, 1, v32) == 1)
    {
      v38 = *(v0 + 1048);

      sub_2315B2F7C(v38, &qword_27DD601C8, &qword_231607A90);
    }

    else
    {
      v43 = *(v0 + 1312);
      (*(*(v0 + 1256) + 32))(*(v0 + 1272), *(v0 + 1048), *(v0 + 1248));
      v44 = sub_231604FB8();
      [v35 setPunchOutUri_];

      sub_231606988();
      OUTLINED_FUNCTION_27_1();
      sub_231605968();
      swift_endAccess();

      v45 = OUTLINED_FUNCTION_26();
      v36(v45);
    }
  }

  else
  {
    v39 = *(v0 + 952);
    v40 = static DirectInvocationFactory.createShowMore(suggestions:)();
    if (v40)
    {
      v41 = v40;
      v42 = *(v0 + 1312);
      sub_231606988();
      OUTLINED_FUNCTION_27_1();
      sub_2316058A8();
      swift_endAccess();
    }
  }

  v46 = *(v0 + 1312);
  v62 = *(v0 + 1304);
  v47 = *(v0 + 1296);
  v48 = *(v0 + 1288);
  v49 = *(v0 + 1040);
  v50 = *(v0 + 968);
  v51 = *(v50 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_siriFeatureSupportPolicyProvider);
  sub_2316059D8();
  v52 = *(v50 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_featureFlagProvider + 32);
  OUTLINED_FUNCTION_51_0((v50 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_featureFlagProvider), *(v50 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_featureFlagProvider + 24));
  OUTLINED_FUNCTION_13_2();
  sub_231606298();
  swift_beginAccess();
  sub_2316058D8();
  swift_endAccess();
  sub_2315E43E0();
  v53 = *(v50 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_responseFrameworkInvoker + 24);
  v54 = *(v50 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_responseFrameworkInvoker + 32);
  OUTLINED_FUNCTION_51_0((v50 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_responseFrameworkInvoker), v53);
  (*(v47 + 16))(v62, v46, v48);
  v55 = *(v54 + 8);
  v63 = (v55 + *v55);
  v56 = v55[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 1456) = v57;
  *v57 = v58;
  v57[1] = sub_2315E18D8;
  v59 = *(v0 + 1304);
  v60 = *(v0 + 1040);

  return (v63)(v0 + 416, 0, v59, v60, v53, v54);
}

uint64_t sub_2315E18D8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 1456);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[183] = v0;

  if (v0)
  {
    v9 = v3[168];
    v10 = v3[167];
    v11 = v3[166];
    v12 = OUTLINED_FUNCTION_67_0();
    v3[189] = v13;
    v3[190] = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v12);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_67_0();
    v3[184] = v16;
    v3[185] = v17 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v15);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E1A40()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*(v0 + 968) + 56);
  v2 = *(MEMORY[0x277D606D8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 1488) = v3;
  *v3 = v4;
  v3[1] = sub_2315E1AD8;

  return MEMORY[0x2821C61E8](v0 + 416);
}

uint64_t sub_2315E1AD8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 1488);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[187] = v0;

  if (v0)
  {
    v9 = v3[168];
    v10 = v3[167];
    v11 = v3[166];
  }

  else
  {
    v3[188] = v3[70];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E1C04()
{
  v24 = *(v0 + 1472);
  v25 = *(v0 + 1480);
  v16 = *(v0 + 1344);
  v17 = *(v0 + 1504);
  v22 = *(v0 + 1360);
  v23 = *(v0 + 1312);
  v20 = *(v0 + 1352);
  v21 = *(v0 + 1288);
  v26 = *(v0 + 1304);
  v27 = *(v0 + 1280);
  v28 = *(v0 + 1272);
  v29 = *(v0 + 1264);
  v30 = *(v0 + 1240);
  v31 = *(v0 + 1216);
  v32 = *(v0 + 1208);
  v33 = *(v0 + 1200);
  v34 = *(v0 + 1192);
  v35 = *(v0 + 1184);
  v36 = *(v0 + 1176);
  v37 = *(v0 + 1168);
  v38 = *(v0 + 1144);
  v39 = *(v0 + 1120);
  v40 = *(v0 + 1112);
  v41 = *(v0 + 1088);
  v42 = *(v0 + 1064);
  v43 = *(v0 + 1056);
  v44 = *(v0 + 1048);
  v1 = *(v0 + 1032);
  v18 = *(v0 + 1024);
  v19 = *(v0 + 1040);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  v7 = *(v0 + 968);
  v8 = *(v0 + 952);
  v9 = sub_2316068E8();
  v15 = *(v0 + 1328);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  v10 = v3;
  (*(v5 + 16))(v3, v8, v6);
  v11 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v7;
  *(v12 + 40) = v15;
  *(v12 + 56) = v17;
  *(v12 + 64) = v16;
  (*(v5 + 32))(v12 + v11, v10, v6);

  sub_2315FD77C(0, 0, v2, &unk_231609538, v12);

  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 416));
  (*(v1 + 8))(v19, v18);
  sub_2315B2F7C(v0 + 296, &qword_27DD60720, &qword_231609528);
  sub_2315B2F7C(v0 + 176, &qword_27DD60720, &qword_231609528);

  v24(v23, v21);

  OUTLINED_FUNCTION_14();

  return v13();
}

uint64_t sub_2315E1F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_55();
  v27 = *(v26 + 1360);
  v28 = *(v26 + 1312);
  v29 = *(v26 + 1296);
  v30 = *(v26 + 1288);

  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_56();
  v33(v32);
  OUTLINED_FUNCTION_3_5(*(v26 + 1392));

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9_2();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2315E2094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_55();
  v27 = v26[190];
  v28 = v26[189];
  OUTLINED_FUNCTION_30_0();
  v29 = OUTLINED_FUNCTION_35();
  v30(v29);
  OUTLINED_FUNCTION_42_0();
  sub_2315B2F7C(v31, v32, v33);
  OUTLINED_FUNCTION_42_0();
  sub_2315B2F7C(v34, v35, v36);

  v37 = OUTLINED_FUNCTION_56();
  v28(v37);
  OUTLINED_FUNCTION_3_5(v26[183]);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2315E21FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_55();
  v27 = v26[185];
  v28 = v26[184];
  OUTLINED_FUNCTION_30_0();
  __swift_destroy_boxed_opaque_existential_1Tm_0(v26 + 52);
  v29 = OUTLINED_FUNCTION_35();
  v30(v29);
  OUTLINED_FUNCTION_42_0();
  sub_2315B2F7C(v31, v32, v33);
  OUTLINED_FUNCTION_42_0();
  sub_2315B2F7C(v34, v35, v36);

  v37 = OUTLINED_FUNCTION_56();
  v28(v37);
  OUTLINED_FUNCTION_3_5(v26[187]);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2315E236C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_231605EF8();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = sub_231605098();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = sub_231605F08();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v12 = sub_231605F28();
  v2[21] = v12;
  v13 = *(v12 - 8);
  v2[22] = v13;
  v14 = *(v13 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v15 = sub_231605DD8();
  v2[25] = v15;
  v16 = *(v15 - 8);
  v2[26] = v16;
  v17 = *(v16 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315E262C, 0, 0);
}

void sub_2315E30B0()
{
  OUTLINED_FUNCTION_93();
  v45 = v0;
  v46 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607A8, &qword_2316095B8);
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v40 - v6;
  OUTLINED_FUNCTION_19();
  v44 = sub_2316061C8();
  v7 = OUTLINED_FUNCTION_1_0(v44);
  v42 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v41 = v12 - v11;
  OUTLINED_FUNCTION_19();
  v13 = sub_231606108();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = sub_231606148();
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  (*(v25 + 104))(v29 - v28, *MEMORY[0x277D60B50], v22);
  sub_2315E5078();
  v32 = v31;
  (*(v25 + 8))(v30, v22);
  if (!v32)
  {
    goto LABEL_7;
  }

  sub_231606538();
  sub_2316060F8();
  (*(v16 + 8))(v21, v13);
  sub_2315E93B4(v48, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607B0, qword_2316095C0);
  if (!swift_dynamicCast())
  {
    sub_2315E93B4(v48, v47);
    v33 = v43;
    v34 = v44;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
      v35 = v42;
      v36 = v41;
      (*(v42 + 32))(v41, v33, v34);
      sub_2316061A8();

      (*(v35 + 8))(v36, v34);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v48);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_0(v48);

    v37 = OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v34);
    sub_2315B2F7C(v33, &qword_27DD607A8, &qword_2316095B8);
LABEL_7:

    goto LABEL_8;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_0(v48);

LABEL_8:
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315E345C(uint64_t a1)
{
  sub_2315DC54C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604F8, &qword_231608FB0);
  sub_231605BB8();
  if (swift_dynamicCast())
  {
    v1 = sub_231605BA8();
  }

  else
  {
    if (qword_280FE9550 != -1)
    {
      swift_once();
    }

    v2 = sub_2316066E8();
    __swift_project_value_buffer(v2, qword_280FE9558);
    v3 = sub_2316066C8();
    v4 = sub_231606958();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2315AF000, v3, v4, "[warning] Owner is not a signalled siri help owner! Cant determine if this is a conversational continuer so assuming not", v5, 2u);
      MEMORY[0x231933730](v5, -1, -1);
    }

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_2315E35A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_231605D58();
  sub_2315E30B0();
  v6 = v5;
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm_0(v12);
  if (v6 == a2 && v8 == a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_231606BD8();
  }

  return v10 & 1;
}

uint64_t sub_2315E3694()
{
  sub_231605D58();
  sub_2315E30B0();
  v1 = v0;
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1Tm_0(v7);
  if (v1 == 0x6C7070612E6D6F63 && v3 == 0xEE00697269732E65)
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_231606BD8();
  }

  return v5 & 1;
}

uint64_t sub_2315E3790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v40 = a2;
  v3 = sub_231606478();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231604EF8();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231605EF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  sub_231605D68();
  sub_231605EC8();
  v17 = *(v10 + 8);
  v17(v16, v9);
  sub_2316057D8();
  v18 = objc_opt_self();
  sub_231605D68();
  sub_231605EC8();
  v17(v16, v9);
  v19 = sub_231606788();

  v20 = sub_231606788();
  v21 = [v18 quote:v19 forLocale:v20];

  sub_231606798();
  sub_231605838();
  sub_231605D68();
  v22 = sub_231605EB8();
  v24 = v23;
  v17(v14, v9);
  if (!v24)
  {
    goto LABEL_6;
  }

  v45 = v22;
  v46 = v24;
  v25 = v37;
  sub_231604EE8();
  sub_2315BC8D0();
  v26 = sub_2316069C8();
  v28 = v27;
  (*(v38 + 8))(v25, v39);

  if (!v26 && v28 == 0xE000000000000000)
  {

    goto LABEL_8;
  }

  v29 = sub_231606BD8();

  if ((v29 & 1) == 0)
  {
LABEL_6:
    sub_231605D68();
    sub_231605EB8();
    v31 = v30;
    v17(v16, v9);
    if (v31)
    {
      sub_2316057C8();
    }
  }

LABEL_8:
  sub_2315E5BCC();
  v32 = static DirectInvocationFactory.createExecute(suggestion:)();
  if (v32)
  {
    v33 = v32;
    sub_231606988();
    sub_231605808();
  }

  v34 = v42;
  sub_231605D78();
  sub_231606468();
  (*(v43 + 8))(v34, v44);
  return sub_2316057E8();
}

uint64_t sub_2315E3BF4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];

  v4 = OUTLINED_FUNCTION_26();
  sub_2315E3790(v4, v5, v3);
}

void sub_2315E3C58()
{
  OUTLINED_FUNCTION_93();
  v100 = v1;
  v101 = v2;
  v99 = v3;
  v102 = v4;
  v5 = sub_2316051D8();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v93 = v7;
  v94 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v92 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60750, &qword_231609560);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v97 = &v90 - v16;
  OUTLINED_FUNCTION_19();
  v17 = sub_231605238();
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v96 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v91 = (v22 - v23);
  v25 = MEMORY[0x28223BE20](v24);
  v95 = &v90 - v26;
  MEMORY[0x28223BE20](v25);
  v98 = &v90 - v27;
  OUTLINED_FUNCTION_19();
  v28 = sub_2316056F8();
  v29 = OUTLINED_FUNCTION_1_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601F0, &qword_231607AA8);
  v35 = OUTLINED_FUNCTION_5_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  v40 = (v38 - v39);
  MEMORY[0x28223BE20](v41);
  v103 = &v90 - v42;
  v43 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_catGlobals);
  if (v43)
  {
    v44 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_catGlobals);
  }

  else
  {
    sub_231605668();
    v44 = sub_231605658();
  }

  sub_231605688();
  memset(v104, 0, 40);
  v45 = v43;
  v46 = sub_231606728();
  sub_2316056E8();
  v47 = v103;
  sub_231605678();

  v48 = *(v31 + 8);
  v49 = OUTLINED_FUNCTION_58_0();
  v50(v49);
  sub_2315B2F7C(v104, &qword_27DD601D0, &qword_231607A98);
  sub_2315DC458(v47, v40, &qword_27DD601F0, &qword_231607AA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = *v40;
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v52 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v52, qword_280FE9558);
    v53 = v51;
    v54 = sub_2316066C8();
    v55 = sub_231606978();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_60();
      v57 = OUTLINED_FUNCTION_63();
      v104[0] = v57;
      *v56 = 136315138;
      swift_getErrorValue();
      v58 = sub_231606C18();
      v60 = sub_2315B1574(v58, v59, v104);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_2315AF000, v54, v55, "Error: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v57);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    else
    {
    }

    v79 = &qword_27DD601F0;
    v80 = &qword_231607AA8;
    v81 = v103;
  }

  else
  {
    v61 = v96;
    v62 = *(v96 + 32);
    v63 = v98;
    v64 = OUTLINED_FUNCTION_41();
    v65 = v17;
    v66(v64);
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v67 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v67, qword_280FE9558);
    v68 = *(v61 + 16);
    v69 = v95;
    v68(v95, v63, v65);
    v70 = sub_2316066C8();
    v71 = sub_231606958();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = OUTLINED_FUNCTION_60();
      v73 = OUTLINED_FUNCTION_63();
      v104[0] = v73;
      *v72 = 136315138;
      v46 = v91;
      v68(v91, v69, v65);
      sub_2316067A8();
      v74 = OUTLINED_FUNCTION_65();
      v46(v74);
      v75 = OUTLINED_FUNCTION_58_0();
      v78 = sub_2315B1574(v75, v76, v77);

      *(v72 + 4) = v78;
      _os_log_impl(&dword_2315AF000, v70, v71, "Extracting learn more URL from templating result: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v73);
      v63 = v98;
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      v82 = OUTLINED_FUNCTION_65();
      v46(v82);
    }

    v83 = v97;
    v84 = sub_231605228();
    sub_2315DE8E0(v84, MEMORY[0x277D5BDD8], v83);

    v85 = sub_231605268();
    if (__swift_getEnumTagSinglePayload(v83, 1, v85) != 1)
    {
      v87 = v63;
      v88 = v92;
      sub_231605258();
      OUTLINED_FUNCTION_23(v85);
      (*(v89 + 8))(v83, v85);
      sub_2316051C8();
      OUTLINED_FUNCTION_62_0();
      (*(v93 + 8))(v88, v94);
      OUTLINED_FUNCTION_85();
      sub_231604FE8();

      (v46)(v87, v65);
      sub_2315B2F7C(v103, &qword_27DD601F0, &qword_231607AA8);
      goto LABEL_20;
    }

    (v46)(v63, v65);
    sub_2315B2F7C(v103, &qword_27DD601F0, &qword_231607AA8);
    v79 = &qword_27DD60750;
    v80 = &qword_231609560;
    v81 = v83;
  }

  sub_2315B2F7C(v81, v79, v80);
  v86 = sub_231604FF8();
  __swift_storeEnumTagSinglePayload(v102, 1, 1, v86);
LABEL_20:
  OUTLINED_FUNCTION_69();
}

void sub_2315E43E0()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v40 = v4;
  v5 = sub_2316051B8();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = sub_231605188();
  v15 = OUTLINED_FUNCTION_24(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = sub_2316052D8();
  v19 = OUTLINED_FUNCTION_1_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  sub_231605178();
  sub_231605278();
  if (v1)
  {
    (*(v8 + 104))(v13, *MEMORY[0x277D5BC50], v5);
    sub_231605288();
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v27, qword_280FE9558);
    v28 = sub_2316066C8();
    v29 = sub_231606968();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_33();
      *v30 = 0;
      _os_log_impl(&dword_2315AF000, v28, v29, "SAE UI is enabled, setting response type to disambiguation to support tappable suggestions", v30, 2u);
      OUTLINED_FUNCTION_20();
    }
  }

  sub_2316052C8();
  sub_2316052B8();
  if (v3)
  {
    sub_2316052B8();
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v31 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v31, qword_280FE9558);
    v32 = sub_2316066C8();
    v33 = sub_231606968();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_33();
      *v34 = 0;
      _os_log_impl(&dword_2315AF000, v32, v33, "relying on FF for followup rather than listen after speaking(LAS)", v34, 2u);
      OUTLINED_FUNCTION_20();
    }
  }

  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v35 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v35, qword_280FE9558);
  v36 = sub_2316066C8();
  v37 = sub_231606968();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109120;
    swift_beginAccess();
    v39 = sub_2316052A8();
    swift_endAccess();
    *(v38 + 4) = v39 & 1;
    _os_log_impl(&dword_2315AF000, v36, v37, "setting listenAfterSpeaking as %{BOOL}d in manifest", v38, 8u);
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_27_1();
  sub_231605298();
  swift_endAccess();
  (*(v21 + 16))(v40, v26, v18);
  (*(v21 + 8))(v26, v18);
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315E47FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[5] = v15;
  v6[3] = a4;
  v7 = sub_231605098();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = sub_231606158();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315E4924, 0, 0);
}

uint64_t sub_2315E4924()
{
  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_2316066E8();
  v0[12] = __swift_project_value_buffer(v1, qword_280FE9558);
  v2 = sub_2316066C8();
  v3 = sub_231606968();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    *v4 = 0;
    _os_log_impl(&dword_2315AF000, v2, v3, "Donating interaction event", v4, 2u);
    OUTLINED_FUNCTION_20();
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[5];
  v10 = v0[3];

  v11 = v10[5];
  v12 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  (*(v6 + 104))(v5, *MEMORY[0x277D60B98], v7);
  sub_231605E78();
  v13 = *(MEMORY[0x277D60560] + 4);
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_2315E4AD0;
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[4];

  return MEMORY[0x2821C5F88](v17, v15, v16, v11, v12);
}

uint64_t sub_2315E4AD0()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = v5[13];
  v7 = v5[11];
  v8 = v5[10];
  v9 = v5[9];
  v10 = v5[8];
  v11 = v5[7];
  v12 = v5[6];
  v13 = *v1;
  OUTLINED_FUNCTION_2();
  *v14 = v13;
  v3[14] = v0;

  v15 = *(v11 + 8);
  v16 = OUTLINED_FUNCTION_31_1();
  v17(v16);
  v18 = OUTLINED_FUNCTION_35();
  v19(v18);
  if (!v0)
  {
    v21 = v3[11];
    v22 = v3[8];

    v23 = *(v13 + 8);
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E4CC0()
{
  v19 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v1;
  v4 = sub_2316066C8();
  v5 = sub_231606978();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = OUTLINED_FUNCTION_60();
    v8 = OUTLINED_FUNCTION_63();
    v18 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v10 = sub_2316067A8();
    v12 = sub_2315B1574(v10, v11, &v18);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2315AF000, v4, v5, "SirHelpDispatcher :: Error when donating interaction: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v8);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  else
  {
    v13 = v0[14];
  }

  v14 = v0[11];
  v15 = v0[8];

  OUTLINED_FUNCTION_14();

  return v16();
}

uint64_t sub_2315E4E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_2315DC54C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604F8, &qword_231608FB0);
  sub_231605BB8();
  if (swift_dynamicCast())
  {
    v4 = a3();
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v5, qword_280FE9558);

    v6 = sub_2316066C8();
    v7 = sub_231606958();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_60();
      v9 = OUTLINED_FUNCTION_63();
      v19[0] = v9;
      *v8 = 136315138;
      v10 = sub_231606048();
      v11 = MEMORY[0x231932D20](v4, v10);
      v13 = sub_2315B1574(v11, v12, v19);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_2315AF000, v6, v7, "signal stats: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v9);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }
  }

  else
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v14 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v14, qword_280FE9558);
    v15 = sub_2316066C8();
    v16 = sub_231606978();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_33();
      *v17 = 0;
      _os_log_impl(&dword_2315AF000, v15, v16, "Owner is not a signalled siri help owner!", v17, 2u);
      OUTLINED_FUNCTION_20();
    }

    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_2315E5078()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_231606048();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v34 = sub_2315E4E44(v9, v5, v3);

  sub_2315E7458(&v34);

  v19 = v34;
  v20 = *(v34 + 16);
  if (v20)
  {
    v30[1] = 0;
    v30[2] = v5;
    v31 = v7;
    v32 = v1;
    v34 = MEMORY[0x277D84F90];
    sub_231606A98();
    v22 = *(v13 + 16);
    v21 = v13 + 16;
    v33 = v22;
    v23 = *(v21 + 64);
    v30[0] = v19;
    v24 = v19 + ((v23 + 32) & ~v23);
    v25 = *(v21 + 56);
    do
    {
      v33(v18, v24, v10);
      sub_231606038();
      (*(v21 - 8))(v18, v10);
      sub_231606A78();
      v26 = *(v34 + 16);
      sub_231606AA8();
      sub_231606AB8();
      sub_231606A88();
      v24 += v25;
      --v20;
    }

    while (v20);

    v27 = v34;
    v7 = v31;
    v1 = v32;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v28 = sub_2315E52B8(v27);

  MEMORY[0x28223BE20](v29);
  v30[-2] = v7;
  sub_2315DEE98(v1, &v30[-4], v28);

  OUTLINED_FUNCTION_69();
}

unint64_t sub_2315E52B8(unint64_t result)
{
  v2 = v1;
  v3 = result;
  v40 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    goto LABEL_49;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v34 = v3 & 0xC000000000000001;
    v31 = v2;
    v32 = v3 + 32;
    v29 = v4;
    v30 = v3;
    while (1)
    {
      if (v34)
      {
        MEMORY[0x231932F00](v5, v3);
      }

      else
      {
        v6 = *(v32 + 8 * v5);
      }

      MEMORY[0x231932CF0](v7);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_231606878();
      }

      sub_231606898();
      v38 = v40;
      sub_231606558();
      v8 = sub_2315E52B8();

      if (v8 >> 62)
      {
        v9 = sub_231606AF8();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v38 >> 62;
      if (v38 >> 62)
      {
        v11 = sub_231606AF8();
      }

      else
      {
        v11 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = v9;
      v12 = __OFADD__(v11, v9);
      v13 = v11 + v9;
      if (v12)
      {
        __break(1u);
LABEL_44:
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
        result = sub_231606AF8();
        v4 = result;
        if (!result)
        {
          return MEMORY[0x277D84F90];
        }

        goto LABEL_3;
      }

      v36 = v5;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v10)
        {
          goto LABEL_22;
        }

        v14 = v38 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v10)
        {
LABEL_22:
          sub_231606AF8();
          goto LABEL_23;
        }

        v14 = v38 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_23:
      v38 = sub_231606A58();
      v14 = v38 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v16 = *(v14 + 16);
      v17 = (*(v14 + 24) >> 1) - v16;
      v18 = v14 + 8 * v16;
      v35 = v14;
      if (v8 >> 62)
      {
        v20 = sub_231606AF8();
        if (v20)
        {
          v21 = v20;
          v22 = sub_231606AF8();
          if (v17 < v22)
          {
            goto LABEL_46;
          }

          if (v21 < 1)
          {
            goto LABEL_48;
          }

          v33 = v22;
          sub_2315E9360(&qword_27DD607A0, &qword_27DD60798, &qword_231609598);
          for (i = 0; i != v21; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60798, &qword_231609598);
            v24 = sub_2315E909C(v39, i, v8);
            v26 = *v25;

            (v24)(v39, 0);
            *(v18 + 32 + 8 * i) = v26;
          }

          v3 = v30;
          v2 = v31;
          v4 = v29;
          v19 = v33;
          goto LABEL_34;
        }
      }

      else
      {
        v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          if (v17 < v19)
          {
            goto LABEL_47;
          }

          sub_231606568();
          swift_arrayInitWithCopy();
LABEL_34:

          if (v19 < v37)
          {
            goto LABEL_44;
          }

          if (v19 > 0)
          {
            v27 = *(v35 + 16);
            v12 = __OFADD__(v27, v19);
            v28 = v27 + v19;
            if (v12)
            {
              goto LABEL_45;
            }

            *(v35 + 16) = v28;
          }

          goto LABEL_39;
        }
      }

      if (v37 > 0)
      {
        goto LABEL_44;
      }

LABEL_39:
      v5 = v36 + 1;

      result = v38;
      v40 = v38;
      if (v36 + 1 == v4)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2315E5680(uint64_t *a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_231606148();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60778, &qword_231609580);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60780, &qword_231609588);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = *a1;
  sub_231606548();
  v22 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60788, &qword_231609590);
  v23 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v20, v23 ^ 1u, 1, v3);
  (*(v4 + 16))(v18, v32, v3);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
  v24 = *(v8 + 56);
  sub_2315DC458(v20, v11, &qword_27DD60780, &qword_231609588);
  sub_2315DC458(v18, &v11[v24], &qword_27DD60780, &qword_231609588);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) != 1)
  {
    v26 = v31;
    sub_2315DC458(v11, v31, &qword_27DD60780, &qword_231609588);
    if (__swift_getEnumTagSinglePayload(&v11[v24], 1, v3) != 1)
    {
      v27 = v30;
      (*(v22 + 32))(v30, &v11[v24], v3);
      sub_2315E9418(&qword_27DD60790, MEMORY[0x277D60B68]);
      v25 = sub_231606778();
      v28 = *(v22 + 8);
      v28(v27, v3);
      sub_2315B2F7C(v18, &qword_27DD60780, &qword_231609588);
      v28(v31, v3);
      sub_2315B2F7C(v11, &qword_27DD60780, &qword_231609588);
      goto LABEL_8;
    }

    sub_2315B2F7C(v18, &qword_27DD60780, &qword_231609588);
    (*(v22 + 8))(v26, v3);
    goto LABEL_6;
  }

  sub_2315B2F7C(v18, &qword_27DD60780, &qword_231609588);
  if (__swift_getEnumTagSinglePayload(&v11[v24], 1, v3) != 1)
  {
LABEL_6:
    sub_2315B2F7C(v11, &qword_27DD60778, &qword_231609580);
    v25 = 0;
    goto LABEL_8;
  }

  sub_2315B2F7C(v11, &qword_27DD60780, &qword_231609588);
  v25 = 1;
LABEL_8:
  sub_2315B2F7C(v20, &qword_27DD60780, &qword_231609588);
  return v25 & 1;
}

uint64_t sub_2315E5ACC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2315E7254(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_231605DD8();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2315E5BCC()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = sub_2316064A8();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v124 = v6;
  v125 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v123 = v10 - v9;
  OUTLINED_FUNCTION_19();
  v11 = sub_231605EF8();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v121 = v13;
  v122 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v120 = v17 - v16;
  OUTLINED_FUNCTION_19();
  v129 = sub_231605DD8();
  v18 = OUTLINED_FUNCTION_1_0(v129);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v126 = v24 - v23;
  OUTLINED_FUNCTION_19();
  v118 = sub_2316063F8();
  v25 = OUTLINED_FUNCTION_1_0(v118);
  v116 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  v117 = (v29 - v30);
  MEMORY[0x28223BE20](v31);
  v115 = &v115 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60760, &qword_231609568);
  v34 = OUTLINED_FUNCTION_24(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v115 - v41;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60768, &qword_231609570);
  v43 = OUTLINED_FUNCTION_5_1(v119);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_4();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = (&v115 - v48);
  MEMORY[0x28223BE20](v47);
  v51 = &v115 - v50;
  sub_2315E64D4(&v115 - v50);
  v52 = sub_231606428();
  if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
  {
LABEL_2:
    v127 = v51;
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v53 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v53, qword_280FE9558);
    v54 = v126;
    (*(v20 + 16))(v126, v1, v129);
    v55 = sub_2316066C8();
    v56 = sub_231606978();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_60();
      v58 = OUTLINED_FUNCTION_63();
      v128 = v3;
      v59 = v58;
      v130 = v58;
      *v57 = 136315138;
      v60 = v120;
      sub_231605D68();
      v61 = v123;
      sub_231605ED8();
      (*(v121 + 8))(v60, v122);
      sub_231606488();
      (*(v124 + 8))(v61, v125);
      sub_2316067A8();
      OUTLINED_FUNCTION_62_0();
      (*(v20 + 8))(v54, v129);
      v62 = OUTLINED_FUNCTION_85();
      v65 = sub_2315B1574(v62, v63, v64);

      *(v57 + 4) = v65;
      _os_log_impl(&dword_2315AF000, v55, v56, "Unknown icon asset: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v59);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      v76 = *(v20 + 8);
      v77 = OUTLINED_FUNCTION_13_2();
      v78(v77);
    }

    sub_231605858();
    sub_2315B2F7C(v127, &qword_27DD60768, &qword_231609570);
    v129 = 0;
    goto LABEL_10;
  }

  v128 = v3;
  v66 = OUTLINED_FUNCTION_13_2();
  sub_2315DC458(v66, v67, v68, v69);
  v70 = *(v52 - 8);
  v71 = (*(v70 + 88))(v49, v52);
  if (v71 == *MEMORY[0x277D61228])
  {
    v72 = OUTLINED_FUNCTION_34_0();
    v73(v72);
    v74 = *v49;
    v75 = v49[1];
    sub_231605858();
    v129 = sub_231605028();
    sub_2315B300C(v74, v75);
    sub_2315B2F7C(v51, &qword_27DD60768, &qword_231609570);
LABEL_10:
    OUTLINED_FUNCTION_14_2();
    goto LABEL_11;
  }

  v127 = v51;
  if (v71 != *MEMORY[0x277D61230])
  {
    if (v71 == *MEMORY[0x277D61238])
    {
      v90 = OUTLINED_FUNCTION_34_0();
      v91(v90);
      v92 = *v49;
      v93 = v49[1];
      sub_231605858();
      sub_2315B2F7C(v127, &qword_27DD60768, &qword_231609570);
      v129 = 0;
      OUTLINED_FUNCTION_14_2();
      goto LABEL_11;
    }

    (*(v70 + 8))(v49, v52);
    v51 = v127;
    v3 = v128;
    goto LABEL_2;
  }

  v79 = OUTLINED_FUNCTION_34_0();
  v80(v79);
  v82 = *v49;
  v81 = v49[1];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60770, &qword_231609578);
  sub_2315E92D0(v49 + *(v83 + 48), v42);
  sub_231605858();
  v84 = OUTLINED_FUNCTION_58_0();
  sub_2315DC458(v84, v85, v86, v87);
  v88 = v118;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v118);
  v125 = v82;
  v126 = v81;
  if (EnumTagSinglePayload == 1)
  {
    sub_2315B2F7C(v42, &qword_27DD60760, &qword_231609568);
    sub_2315B2F7C(v39, &qword_27DD60760, &qword_231609568);
    OUTLINED_FUNCTION_14_2();
  }

  else
  {
    v95 = v115;
    v94 = v116;
    (*(v116 + 32))(v115, v39, v88);
    v96 = v117;
    (*(v94 + 16))(v117, v95, v88);
    v97 = *(v94 + 88);
    v98 = OUTLINED_FUNCTION_31_1();
    v100 = v99(v98);
    if (v100 == *MEMORY[0x277D61218])
    {
      (*(v94 + 8))(v95, v88);
      sub_2315B2F7C(v42, &qword_27DD60760, &qword_231609568);
      v101 = *(v94 + 96);
      v102 = OUTLINED_FUNCTION_31_1();
      v103(v102);
      v104 = *v96;
      v105 = v96[1];
    }

    else
    {
      v106 = v100;
      v107 = *MEMORY[0x277D61210];
      v108 = *(v94 + 8);
      v108(v95, v88);
      sub_2315B2F7C(v42, &qword_27DD60760, &qword_231609568);
      if (v106 == v107)
      {
        v109 = *(v94 + 96);
        v110 = OUTLINED_FUNCTION_31_1();
        v111(v110);
        v113 = *v96;
        v112 = v96[1];
      }

      else
      {
        v114 = OUTLINED_FUNCTION_31_1();
        (v108)(v114);
      }
    }
  }

  sub_2315B2F7C(v127, &qword_27DD60768, &qword_231609570);
  v129 = 0;
LABEL_11:
  sub_2316057F8();
  sub_231605848();
  sub_2316057B8();
  sub_231605828();
  sub_231605818();
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315E64D4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60768, &qword_231609570);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v32 - v3;
  v37 = sub_2316064A8();
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  v5 = MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v36 = sub_231605EF8();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v36);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = sub_231606148();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605D58();
  (*(v18 + 104))(v21, *MEMORY[0x277D60B50], v17);
  sub_2315E5078();
  v23 = v22;
  (*(v18 + 8))(v21, v17);
  __swift_destroy_boxed_opaque_existential_1Tm_0(v38);
  if (v23)
  {

    sub_231605D68();
    sub_231605ED8();
    v24 = *(v10 + 8);
    v24(v16, v36);
    v25 = v33;
    sub_231606498();
    v26 = *(v35 + 8);
    v27 = v9;
    v28 = v25;
    v26(v27, v37);
    v29 = sub_231606428();
    if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
    {
      sub_231605D68();
      sub_231605ED8();
      v24(v14, v36);
      sub_231606488();
      v26(v7, v37);
      result = __swift_getEnumTagSinglePayload(v28, 1, v29);
      if (result != 1)
      {
        return sub_2315B2F7C(v28, &qword_27DD60768, &qword_231609570);
      }
    }

    else
    {
      v31 = v34;
      (*(*(v29 - 8) + 32))(v34, v28, v29);
      return __swift_storeEnumTagSinglePayload(v31, 0, 1, v29);
    }
  }

  else
  {
    sub_231605D68();
    sub_231605ED8();
    (*(v10 + 8))(v14, v36);
    sub_231606488();
    return (*(v35 + 8))(v7, v37);
  }

  return result;
}

uint64_t sub_2315E6960()
{
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 16));
  v1 = *(v0 + 56);

  v2 = OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_templatesUrl;
  v3 = sub_231604FF8();
  OUTLINED_FUNCTION_5_1(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_siriFeatureSupportPolicyProvider);

  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_responseFrameworkInvoker));
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils));
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_featureFlagProvider));
  return v0;
}

uint64_t sub_2315E6A18()
{
  sub_2315E6960();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2315E6A70()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4660;

  return sub_2315DF430();
}

void SiriSuggestions.Suggestion.toIntentSuggestion()()
{
  OUTLINED_FUNCTION_93();
  v54 = sub_231605098();
  v1 = OUTLINED_FUNCTION_1_0(v54);
  v56 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v53 = v6 - v5;
  OUTLINED_FUNCTION_19();
  v7 = sub_231606478();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_4();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v55 = sub_231606658();
  sub_231605D78();
  v52 = sub_231606468();
  v21 = v20;
  v22 = *(v10 + 8);
  v22(v19, v7);
  sub_231605D78();
  sub_231606468();
  v22(v0, v7);
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_2315E7000(v52, v21);
  sub_231605D78();
  sub_231606458();
  OUTLINED_FUNCTION_62_0();
  v22(v19, v7);
  v25 = OUTLINED_FUNCTION_85();
  v51 = v24;
  sub_2315E89C0(v25, v26, v24);
  sub_231605D78();
  v27 = sub_231606448();
  v22(v15, v7);
  v28 = MEMORY[0x277D84F90];
  v29 = *(v27 + 64);
  v57 = MEMORY[0x277D84F90];
  v30 = 1 << *(v27 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v52 = v56 + 8;
  v55 = v27;

  v34 = 0;
  if (v32)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {

      sub_2315E8A24(v28, v51);
      OUTLINED_FUNCTION_69();
      return;
    }

    v32 = *(v27 + 64 + 8 * v35);
    ++v34;
    if (v32)
    {
      v34 = v35;
      do
      {
LABEL_8:
        v36 = (v34 << 10) | (16 * __clz(__rbit64(v32)));
        v37 = (*(v55 + 48) + v36);
        v39 = *v37;
        v38 = v37[1];
        v40 = (*(v55 + 56) + v36);
        v41 = v40[1];
        v56 = *v40;

        sub_231605088();
        sub_231605068();
        OUTLINED_FUNCTION_62_0();
        v42 = OUTLINED_FUNCTION_66_0();
        v43(v42, v54);
        sub_231606668();
        v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        v45 = OUTLINED_FUNCTION_85();
        v47 = sub_2315E7000(v45, v46);
        sub_2315E8A98(v39, v38, v47);
        sub_2315E8AF0(v56, v41, v47);

        MEMORY[0x231932CF0](v48);
        v49 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v49 >> 1)
        {
          OUTLINED_FUNCTION_12_3(v49);
          sub_231606878();
        }

        v32 &= v32 - 1;
        sub_231606898();
        v28 = v57;
      }

      while (v32);
    }
  }

  __break(1u);
}

uint64_t SiriHelpDispatcherErrors.hashValue.getter()
{
  sub_231606C68();
  MEMORY[0x231933130](0);
  return sub_231606C88();
}

uint64_t sub_2315E6FC0()
{
  sub_231606C68();
  MEMORY[0x231933130](0);
  return sub_231606C88();
}

id sub_2315E7000(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_231606788();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_231606788();

  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  return v5;
}

uint64_t sub_2315E7094(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_231606AF8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

size_t sub_2315E70B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603F0, &qword_2316095B0);
  v4 = sub_231605DD8();
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v9);
  if (v6)
  {
    if (result - v8 != 0x8000000000000000 || v6 != -1)
    {
      v9[2] = a1;
      v9[3] = 2 * ((result - v8) / v6);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2315E71AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B0, &unk_2316083F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

unint64_t sub_2315E7230(unint64_t result, char a2, uint64_t a3)
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

void sub_2315E7254(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_2315DA0CC();
    *v1 = v6;
  }
}

void sub_2315E72BC()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x231933750](&v20, 8);
      v4 = (v20 * v1) >> 64;
      if (v1 > v20 * v1)
      {
        v5 = -v1 % v1;
        if (v5 > v20 * v1)
        {
          do
          {
            v20 = 0;
            MEMORY[0x231933750](&v20, 8);
          }

          while (v5 > v20 * v1);
          v4 = (v20 * v1) >> 64;
        }
      }

      v6 = v3 + v4;
      if (__OFADD__(v3, v4))
      {
        break;
      }

      if (v3 != v6)
      {
        v7 = *v0;
        v8 = *(*v0 + 16);
        if (v3 >= v8)
        {
          goto LABEL_22;
        }

        if (v6 >= v8)
        {
          goto LABEL_23;
        }

        v9 = *(v7 + 32 + 8 * v6);
        v10 = *(v7 + 32 + 8 * v3);
        v11 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_2315E927C(v7);
          *v0 = v7;
        }

        if (v3 >= *(v7 + 16))
        {
          goto LABEL_24;
        }

        v13 = v7 + 8 * v3;
        v14 = *(v13 + 32);
        *(v13 + 32) = v11;

        sub_231606A88();
        v15 = *v0;
        v16 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v15;
        if ((v16 & 1) == 0)
        {
          v15 = sub_2315E927C(v15);
          *v0 = v15;
        }

        if (v6 >= *(v15 + 16))
        {
          goto LABEL_25;
        }

        v17 = v15 + 8 * v6;
        v18 = *(v17 + 32);
        *(v17 + 32) = v10;

        sub_231606A88();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_2315E7458(size_t *a1)
{
  v2 = *(sub_231606048() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2315E9268(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2315E7500(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2315E7500(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231606BB8();
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
        sub_231606048();
        v6 = sub_231606888();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231606048() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2315E78D0(v8, v9, a1, v4);
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
    return sub_2315E7630(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2315E7630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_231606048();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v34 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v15 + 16);
    v18 = v15 + 16;
    v20 = *(v18 + 56);
    v45 = (v18 - 8);
    v46 = v19;
    v47 = v18;
    v42 = (v18 + 16);
    v43 = v17;
    v21 = v17 + v20 * (a3 - 1);
    v41 = -v20;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v17 + v20 * a3;
    while (2)
    {
      v39 = v21;
      v40 = a3;
      v37 = v23;
      v38 = v22;
      v50 = v22;
      v24 = v21;
      do
      {
        v25 = v48;
        v26 = v46;
        v46(v48, v23, v8);
        v27 = v49;
        v26(v49, v24, v8);
        v28 = sub_231606028();
        v29 = sub_231606028();
        v30 = *v45;
        (*v45)(v27, v8);
        result = v30(v25, v8);
        if (v29 >= v28)
        {
          break;
        }

        if (!v43)
        {
          __break(1u);
          return result;
        }

        v31 = *v42;
        v32 = v44;
        (*v42)(v44, v23, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v31)(v24, v32, v8);
        v24 += v41;
        v23 += v41;
      }

      while (!__CFADD__(v50++, 1));
      a3 = v40 + 1;
      v21 = v39 + v35;
      v22 = v38 - 1;
      v23 = v37 + v35;
      if (v40 + 1 != v36)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2315E78D0(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v128 = a1;
  v6 = sub_231606048();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v131 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v142 = &v126 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v148 = &v126 - v13;
  MEMORY[0x28223BE20](v12);
  v147 = &v126 - v15;
  v137 = v14;
  v138 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_104:
    v20 = *v128;
    if (!*v128)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v118 = (v18 + 16);
      v119 = *(v18 + 16);
      while (v119 >= 2)
      {
        if (!*v138)
        {
          goto LABEL_142;
        }

        v120 = v18;
        v18 += 16 * v119;
        v121 = *v18;
        v122 = &v118[2 * v119];
        v123 = v122[1];
        v124 = v139;
        sub_2315E82B4(*v138 + *(v137 + 72) * *v18, *v138 + *(v137 + 72) * *v122, *v138 + *(v137 + 72) * v123, v20);
        v139 = v124;
        if (v124)
        {
          break;
        }

        if (v123 < v121)
        {
          goto LABEL_130;
        }

        if (v119 - 2 >= *v118)
        {
          goto LABEL_131;
        }

        *v18 = v121;
        *(v18 + 8) = v123;
        v125 = *v118 - v119;
        if (*v118 < v119)
        {
          goto LABEL_132;
        }

        v119 = *v118 - 1;
        memmove(v122, v122 + 2, 16 * v125);
        *v118 = v119;
        v18 = v120;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v18 = sub_2315E87CC(v18);
    goto LABEL_106;
  }

  v126 = a4;
  v17 = 0;
  v145 = (v14 + 8);
  v146 = v14 + 16;
  v144 = (v14 + 32);
  v18 = MEMORY[0x277D84F90];
  v149 = v6;
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v129 = v17;
    if (v17 + 1 >= v16)
    {
      v35 = v139;
    }

    else
    {
      v127 = v18;
      v21 = *v138;
      v22 = *(v14 + 72);
      v23 = v17;
      v24 = *v138 + v22 * v20;
      v25 = *(v14 + 16);
      v18 = v147;
      v136 = v16;
      v25(v147, v24, v6);
      v26 = v21 + v22 * v23;
      v27 = v148;
      v133 = v25;
      v25(v148, v26, v6);
      v28 = v20;
      v135 = sub_231606028();
      v134 = sub_231606028();
      v29 = v6;
      v30 = *(v137 + 8);
      v30(v27, v29);
      v31 = v29;
      v20 = v28;
      v132 = v30;
      v30(v18, v31);
      v32 = v136;
      v33 = (v129 + 2);
      v140 = v22;
      v34 = v21 + v22 * (v129 + 2);
      v35 = v139;
      while (1)
      {
        v36 = v33;
        v37 = v20 + 1;
        if (v37 >= v32)
        {
          break;
        }

        v139 = v35;
        LODWORD(v141) = v134 < v135;
        v38 = v147;
        v39 = v149;
        v40 = v133;
        v143 = v33;
        (v133)(v147, v34, v149);
        v41 = v148;
        v40(v148, v24, v39);
        v42 = v37;
        v43 = sub_231606028();
        v44 = sub_231606028();
        v45 = v41;
        v18 = v145;
        v46 = v132;
        v132(v45, v39);
        v46(v38, v39);
        v36 = v143;
        v32 = v136;
        v47 = v44 < v43;
        v20 = v42;
        v48 = !v47;
        v49 = v141 ^ v48;
        v35 = v139;
        v34 += v140;
        v24 += v140;
        v33 = v143 + 1;
        if ((v49 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v20 = v32;
LABEL_13:
      if (v134 >= v135)
      {
        v14 = v137;
        v18 = v127;
        v6 = v149;
      }

      else
      {
        v19 = v129;
        v6 = v149;
        if (v20 < v129)
        {
          goto LABEL_136;
        }

        if (v129 >= v20)
        {
          v14 = v137;
          v18 = v127;
          goto LABEL_36;
        }

        v50 = v32 >= v36 ? v36 : v32;
        v51 = v20;
        v52 = v140 * (v50 - 1);
        v53 = v140 * v50;
        v54 = v129;
        v55 = v129 * v140;
        v136 = v51;
        do
        {
          if (v54 != --v51)
          {
            v56 = *v138;
            if (!*v138)
            {
              goto LABEL_143;
            }

            v143 = *v144;
            (v143)(v131, v56 + v55, v6);
            v57 = v55 < v52 || v56 + v55 >= (v56 + v53);
            if (v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v55 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v143)(v56 + v52, v131, v6);
          }

          ++v54;
          v52 -= v140;
          v53 -= v140;
          v55 += v140;
        }

        while (v54 < v51);
        v20 = v136;
        v14 = v137;
        v18 = v127;
      }

      v19 = v129;
    }

LABEL_36:
    v58 = v138[1];
    if (v20 < v58)
    {
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_135;
      }

      if (v20 - v19 < v126)
      {
        break;
      }
    }

LABEL_52:
    if (v20 < v19)
    {
      goto LABEL_134;
    }

    v139 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v115 = *(v18 + 16);
      sub_2315DA1B4();
      v18 = v116;
    }

    v74 = *(v18 + 16);
    v75 = v74 + 1;
    if (v74 >= *(v18 + 24) >> 1)
    {
      sub_2315DA1B4();
      v18 = v117;
    }

    *(v18 + 16) = v75;
    v76 = v18 + 32;
    v77 = (v18 + 32 + 16 * v74);
    *v77 = v129;
    v77[1] = v20;
    v143 = *v128;
    if (!v143)
    {
      goto LABEL_144;
    }

    v136 = v20;
    if (v74)
    {
      while (1)
      {
        v20 = v75 - 1;
        v78 = (v76 + 16 * (v75 - 1));
        v79 = (v18 + 16 * v75);
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v80 = *(v18 + 32);
          v81 = *(v18 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_121;
          }

          v95 = *v79;
          v94 = v79[1];
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_124;
          }

          v99 = v78[1];
          v100 = v99 - *v78;
          if (__OFSUB__(v99, *v78))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v97, v100))
          {
            goto LABEL_129;
          }

          if (v97 + v100 >= v82)
          {
            if (v82 < v100)
            {
              v20 = v75 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v75 < 2)
        {
          goto LABEL_123;
        }

        v102 = *v79;
        v101 = v79[1];
        v90 = __OFSUB__(v101, v102);
        v97 = v101 - v102;
        v98 = v90;
LABEL_87:
        if (v98)
        {
          goto LABEL_126;
        }

        v104 = *v78;
        v103 = v78[1];
        v90 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v90)
        {
          goto LABEL_128;
        }

        if (v105 < v97)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v20 - 1 >= v75)
        {
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
          goto LABEL_138;
        }

        if (!*v138)
        {
          goto LABEL_141;
        }

        v109 = v18;
        v110 = (v76 + 16 * (v20 - 1));
        v111 = *v110;
        v112 = (v76 + 16 * v20);
        v18 = v112[1];
        v113 = v139;
        sub_2315E82B4(*v138 + *(v137 + 72) * *v110, *v138 + *(v137 + 72) * *v112, *v138 + *(v137 + 72) * v18, v143);
        v139 = v113;
        if (v113)
        {
          goto LABEL_114;
        }

        if (v18 < v111)
        {
          goto LABEL_116;
        }

        v114 = *(v109 + 16);
        if (v20 > v114)
        {
          goto LABEL_117;
        }

        *v110 = v111;
        v110[1] = v18;
        if (v20 >= v114)
        {
          goto LABEL_118;
        }

        v75 = v114 - 1;
        memmove((v76 + 16 * v20), v112 + 2, 16 * (v114 - 1 - v20));
        v18 = v109;
        *(v109 + 16) = v114 - 1;
        if (v114 <= 2)
        {
          goto LABEL_101;
        }
      }

      v84 = v76 + 16 * v75;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_119;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_120;
      }

      v91 = v79[1];
      v92 = v91 - *v79;
      if (__OFSUB__(v91, *v79))
      {
        goto LABEL_122;
      }

      v90 = __OFADD__(v82, v92);
      v93 = v82 + v92;
      if (v90)
      {
        goto LABEL_125;
      }

      if (v93 >= v87)
      {
        v107 = *v78;
        v106 = v78[1];
        v90 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v90)
        {
          goto LABEL_133;
        }

        if (v82 < v108)
        {
          v20 = v75 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v14 = v137;
    v16 = v138[1];
    v17 = v136;
    if (v136 >= v16)
    {
      goto LABEL_104;
    }
  }

  v59 = (v19 + v126);
  if (__OFADD__(v19, v126))
  {
    goto LABEL_137;
  }

  if (v59 >= v58)
  {
    v59 = v138[1];
  }

  if (v59 < v19)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v20 == v59)
  {
    goto LABEL_52;
  }

  v127 = v18;
  v60 = *v138;
  v61 = *(v14 + 72);
  v143 = *(v14 + 16);
  v62 = v60 + v61 * (v20 - 1);
  v139 = v35;
  v140 = -v61;
  v63 = v19 - v20;
  v141 = v60;
  v130 = v61;
  v64 = (v60 + v20 * v61);
  v132 = v59;
LABEL_45:
  v135 = v62;
  v136 = v20;
  v133 = v64;
  v134 = v63;
  while (1)
  {
    v65 = v147;
    v66 = v143;
    (v143)(v147, v64, v6);
    v67 = v148;
    v66(v148, v62, v149);
    v68 = sub_231606028();
    v69 = sub_231606028();
    v70 = *v145;
    v71 = v67;
    v6 = v149;
    (*v145)(v71, v149);
    v70(v65, v6);
    if (v69 >= v68)
    {
LABEL_50:
      v20 = v136 + 1;
      v62 = v135 + v130;
      v63 = v134 - 1;
      v64 = &v133[v130];
      if ((v136 + 1) == v132)
      {
        v20 = v132;
        v35 = v139;
        v18 = v127;
        v19 = v129;
        goto LABEL_52;
      }

      goto LABEL_45;
    }

    if (!v141)
    {
      break;
    }

    v72 = *v144;
    v73 = v142;
    (*v144)(v142, v64, v6);
    swift_arrayInitWithTakeFrontToBack();
    v72(v62, v73, v6);
    v62 += v140;
    v64 += v140;
    v57 = __CFADD__(v63++, 1);
    if (v57)
    {
      goto LABEL_50;
    }
  }

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
}

uint64_t sub_2315E82B4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v70 = a4;
  v69 = sub_231606048();
  v7 = *(*(v69 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v69);
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v65 = &v56 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v14;
  v73 = a1;
  v72 = v70;
  v63 = (v11 + 8);
  v64 = (v11 + 16);
  v19 = v16 / v14;
  if (v18 >= v16 / v14)
  {
    v68 = a1;
    v35 = v70;
    sub_2315DA6F8(a2, v16 / v14, v70);
    v36 = v35 + v19 * v14;
    v37 = -v14;
    v38 = v36;
    v59 = -v14;
LABEL_36:
    v39 = a2 + v37;
    v57 = v38;
    v40 = v38;
    v60 = a2 + v37;
    v61 = a2;
    while (1)
    {
      if (v36 <= v70)
      {
        v73 = a2;
        v71 = v40;
        goto LABEL_58;
      }

      if (a2 <= v68)
      {
        break;
      }

      v58 = v40;
      v67 = a3 + v37;
      v41 = v65;
      v42 = *v64;
      v62 = v36 + v37;
      v43 = v69;
      v44 = a3;
      v42(v65);
      v45 = v66;
      (v42)(v66, v39, v43);
      v46 = sub_231606028();
      v47 = sub_231606028();
      v48 = *v63;
      (*v63)(v45, v43);
      v48(v41, v43);
      if (v47 < v46)
      {
        a3 = v67;
        if (v44 < v61 || v67 >= v61)
        {
          a2 = v60;
          swift_arrayInitWithTakeFrontToBack();
          v38 = v58;
          v37 = v59;
        }

        else
        {
          v54 = v58;
          v38 = v58;
          v15 = v44 == v61;
          v37 = v59;
          v55 = v60;
          a2 = v60;
          if (!v15)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v55;
            v38 = v54;
          }
        }

        goto LABEL_36;
      }

      v49 = v67;
      if (v44 < v36 || v67 >= v36)
      {
        v51 = v62;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v49;
        v36 = v51;
        v40 = v51;
        v39 = v60;
        a2 = v61;
        v37 = v59;
      }

      else
      {
        a2 = v61;
        v52 = v62;
        v40 = v62;
        v15 = v36 == v44;
        a3 = v67;
        v36 = v62;
        v37 = v59;
        v39 = v60;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v49;
          v36 = v52;
          v40 = v52;
        }
      }
    }

    v73 = a2;
    v71 = v57;
  }

  else
  {
    v20 = v70;
    sub_2315DA6F8(a1, (a2 - a1) / v14, v70);
    v62 = v20 + v18 * v14;
    v71 = v62;
    v21 = a1;
    v67 = a3;
    v22 = v65;
    while (v70 < v62 && a2 < a3)
    {
      v68 = v21;
      v24 = *v64;
      v25 = v69;
      (*v64)(v22, a2, v69);
      v26 = a2;
      v27 = v66;
      (v24)(v66, v70, v25);
      v28 = sub_231606028();
      v29 = sub_231606028();
      v30 = *v63;
      (*v63)(v27, v25);
      v30(v22, v25);
      if (v29 >= v28)
      {
        a2 = v26;
        v33 = v70 + v14;
        v31 = v68;
        if (v68 < v70 || v68 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v67;
        }

        else
        {
          a3 = v67;
          if (v68 != v70)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v72 = v33;
        v70 = v33;
      }

      else
      {
        a2 = v26 + v14;
        v31 = v68;
        if (v68 < v26 || v68 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v67;
        }

        else
        {
          a3 = v67;
          if (v68 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      v21 = v31 + v14;
      v73 = v21;
    }
  }

LABEL_58:
  sub_2315E87E0(&v73, &v72, &v71);
  return 1;
}

uint64_t sub_2315E87E0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_231606048();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2315E88C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60538, &unk_2316095A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_2315E89C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231606788();

  [a3 setActionIdentifier_];
}

void sub_2315E8A24(uint64_t a1, void *a2)
{
  sub_231606668();
  v3 = sub_231606848();

  [a2 setParameters_];
}

void sub_2315E8A98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231606788();
  [a3 setKey_];
}

void sub_2315E8AF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231606788();
  [a3 setValue_];
}

unint64_t sub_2315E8B4C()
{
  result = qword_27DD606C0;
  if (!qword_27DD606C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD606C0);
  }

  return result;
}

uint64_t type metadata accessor for SiriHelpDispatcher()
{
  result = qword_27DD60700;
  if (!qword_27DD60700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2315E8BF4()
{
  result = sub_231604FF8();
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

_BYTE *storeEnumTagSinglePayload for SiriHelpDispatcherErrors(_BYTE *result, int a2, int a3)
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

uint64_t sub_2315E8D70()
{
  v2 = sub_231605E98();
  OUTLINED_FUNCTION_24(v2);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0 + ((*(v3 + 80) + 72) & ~*(v3 + 80));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v1 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_2315B4660;
  OUTLINED_FUNCTION_58();

  return sub_2315E47FC(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2315E8E84(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_231606AF8();
    if (v4)
    {
      v5 = v4;
      v2 = sub_2315E71AC(v4, 0);
      sub_2315E8F18((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_2315E8F18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_231606AF8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2315E7094(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2315E9290(0, &qword_27DD60738, 0x277D052C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2315E9360(&qword_27DD60748, &qword_27DD60740, &unk_231609550);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60740, &unk_231609550);
          v9 = sub_2315E912C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2315E909C(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *)
{
  v6 = sub_2315B56C4(a3);
  sub_2315E7230(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = MEMORY[0x231932F00](a2, a3);
  }

  *a1 = v8;
  return j__OUTLINED_FUNCTION_22_2;
}

void (*sub_2315E912C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_2315B56C4(a3);
  sub_2315E7230(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x231932F00](a2, a3);
  }

  *a1 = v7;
  return sub_2315E91B8;
}

uint64_t sub_2315E91C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2315E9210(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_231606AF8();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_2315E9290(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2315E92D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60760, &qword_231609568);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315E9360(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2315E93B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2315E9418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2315E9460(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1152);
  v4 = **(v2 - 120);
  return a1;
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_43()
{
  v2 = *(v0 + 1152);
  v3 = *(v0 + 976);
  v4 = *(*(v1 - 128) + 80) + 32;
}

size_t OUTLINED_FUNCTION_50(size_t a1)
{

  return sub_231604008(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_63_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v13 = *(v12 + 200);
  v14 = *a12;
  return a1;
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  result = v0[163];
  v2 = v0[161];
  v3 = *(v0[162] + 8);
  return result;
}

uint64_t sub_2315E9668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B8, &unk_231607A80);
  result = sub_231606728();
  qword_280FE8FD8 = result;
  return result;
}

uint64_t sub_2315E96B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v18 = sub_2316066E8();
    OUTLINED_FUNCTION_5_7(v18, qword_280FE9578);
    v19 = sub_2316066C8();
    v20 = sub_231606978();

    if (!OUTLINED_FUNCTION_7())
    {
      goto LABEL_28;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v34[2] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2315B1574(a1, a2, &v34[2]);
    _os_log_impl(&dword_2315AF000, v19, v20, "No remote application Id set. Refusing access to %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_20();
    goto LABEL_27;
  }

  v10 = a3 == a1 && a2 == a4;
  if (v10 || (sub_231606BD8() & 1) != 0)
  {
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v11 = sub_2316066E8();
    OUTLINED_FUNCTION_5_7(v11, qword_280FE9578);

    v12 = sub_2316066C8();
    sub_231606958();

    if (!OUTLINED_FUNCTION_7())
    {
      goto LABEL_12;
    }

    swift_slowAlloc();
    *&v34[2] = OUTLINED_FUNCTION_3_6();
    v13 = OUTLINED_FUNCTION_2_8(4.8151e-34);
    *(v5 + 14) = OUTLINED_FUNCTION_1_7(v13);
    v16 = "Access to %s is allowed for %s as it is the same process";
LABEL_11:
    OUTLINED_FUNCTION_6_5(&dword_2315AF000, v14, v15, v16);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
LABEL_12:

    return 1;
  }

  v23 = sub_2315DCCC0(a3, a4, *(v4 + 16));
  if (v23)
  {
    v24 = v23;
    v5 = &v33;
    *&v34[2] = a1;
    v35 = a2;
    MEMORY[0x28223BE20](v23);
    v32[2] = &v34[2];
    v25 = sub_2315E9B70(sub_2315BC994, v32, v24);

    if (v25)
    {
      if (qword_280FE9570 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v26 = sub_2316066E8();
      OUTLINED_FUNCTION_5_7(v26, qword_280FE9578);

      v12 = sub_2316066C8();
      sub_231606958();

      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_12;
      }

      swift_slowAlloc();
      *&v34[2] = OUTLINED_FUNCTION_3_6();
      v27 = OUTLINED_FUNCTION_2_8(4.8151e-34);
      *v34 = OUTLINED_FUNCTION_1_7(v27);
      v16 = "Access to %s is allowed for %s";
      goto LABEL_11;
    }
  }

  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v28 = sub_2316066E8();
  OUTLINED_FUNCTION_5_7(v28, qword_280FE9578);

  v19 = sub_2316066C8();
  sub_231606978();

  if (OUTLINED_FUNCTION_7())
  {
    swift_slowAlloc();
    *&v34[2] = OUTLINED_FUNCTION_3_6();
    v29 = OUTLINED_FUNCTION_2_8(4.8151e-34);
    *(v5 + 14) = OUTLINED_FUNCTION_1_7(v29);
    OUTLINED_FUNCTION_6_5(&dword_2315AF000, v30, v31, "Access to %s for %s is not allowed");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
LABEL_27:
    OUTLINED_FUNCTION_20();
  }

LABEL_28:

  return 0;
}

uint64_t sub_2315E9AD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2315E9B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_231606BD8() & 1;
  }
}

BOOL sub_2315E9B70(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2315E9C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 16);
  v20 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_3_7(v16);
  *v17 = v18;
  v17[1] = sub_2315B776C;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2315E9DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(OUTLINED_FUNCTION_2_9(a1, a2, a3, a4) + 24);
  OUTLINED_FUNCTION_5();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_7(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_0_6(v9);

  return v12(v11);
}

uint64_t sub_2315E9EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(OUTLINED_FUNCTION_2_9(a1, a2, a3, a4) + 32);
  OUTLINED_FUNCTION_5();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_7(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_0_6(v9);

  return v12(v11);
}

uint64_t sub_2315E9F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 40);
  OUTLINED_FUNCTION_5();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_3_7(v16);
  *v17 = v18;
  v17[1] = sub_2315B66C8;

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of HintsStateStore.submit(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 16);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2315B66C8;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

INInteraction __swiftcall INInteraction.init(intent:response:donatedBySiri:)(INIntent intent, INIntentResponse response, Swift::Bool donatedBySiri)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:intent.super.isa response:response.super.isa];
  [v6 _setDonatedBySiri_];

  return v6;
}

__n128 *static EventDrivenSuggestionsClient.getInteractionBuilder@Sendable (event:inAppIdentifier:deviceState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 **a4@<X8>)
{
  v8 = sub_2316061C8();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2315B4568(a1, v21);
  (*(v11 + 16))(v15, a2, v8);
  sub_2315B4568(a3, v20);
  v16 = type metadata accessor for EventDrivenInteractionBuilder(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  result = EventDrivenInteractionBuilder.init(event:inAppIdentifier:deviceState:)(v21, v15, v20);
  a4[3] = v16;
  a4[4] = &protocol witness table for EventDrivenInteractionBuilder;
  *a4 = result;
  return result;
}

uint64_t EventDrivenSuggestionsClient.__allocating_init(clock:suggestionService:interactionBuilder:requestIdProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  OUTLINED_FUNCTION_22_3();
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  EventDrivenSuggestionsClient.init(clock:suggestionService:interactionBuilder:requestIdProvider:)(v9, v8, v7, v6, a5);
  return v13;
}

void *EventDrivenSuggestionsClient.init(clock:suggestionService:interactionBuilder:requestIdProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v22 = a5;
  OUTLINED_FUNCTION_22_3();
  v10 = sub_231605B98();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_2316061C8();
  type metadata accessor for Connection(0);
  OUTLINED_FUNCTION_0_7();
  sub_2315F32A0(v18, v19);
  v5[14] = sub_231606728();
  sub_231605B68();
  (*(v13 + 32))(v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_eventConfig, v17, v10);
  sub_2315B4648(v9, (v5 + 15));
  sub_2315B4648(v8, (v5 + 20));
  v5[25] = v7;
  v5[26] = v6;
  sub_2315B4648(v22, v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_requestIdProvider);
  return v5;
}

uint64_t sub_2315EA5D0()
{
  OUTLINED_FUNCTION_8();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_2316061C8();
  v1[8] = v4;
  OUTLINED_FUNCTION_4(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_47_0();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607E8, &unk_231609900);
  OUTLINED_FUNCTION_24(v8);
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_23_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60550, &dword_231609010);
  v1[14] = v11;
  OUTLINED_FUNCTION_4(v11);
  v1[15] = v12;
  v14 = *(v13 + 64);
  v1[16] = OUTLINED_FUNCTION_47_0();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2315EA738()
{
  v71 = v0;
  v2 = *(v0 + 120);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  OUTLINED_FUNCTION_53_0();
  v6 = *(v4 + 112);

  v8 = sub_2315F0C44(v7, v5, v3);

  sub_2315F169C(v8, &v70);
  v9 = MEMORY[0x277D84F90];
  v10 = &dword_231609010;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    sub_2315F16D8(v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v12) == 1)
    {
      break;
    }

    v14 = *(v0 + 152);
    v15 = *(v0 + 104);
    OUTLINED_FUNCTION_27_2();
    sub_2315C7354(v16, v17, v18, &dword_231609010);
    v19 = *(v0 + 152);
    if (*v14 > 1)
    {
      sub_2315C7354(v19, *(v0 + 144), &qword_27DD60550, &dword_231609010);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_231603FE8(0, *(v11 + 16) + 1, 1);
      }

      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_231603FE8(v20 > 1, v21 + 1, 1);
      }

      v22 = *(v0 + 144);
      *(v11 + 16) = v21 + 1;
      sub_2315C7354(v22, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21, &qword_27DD60550, &dword_231609010);
    }

    else
    {
      sub_2315B2F7C(v19, &qword_27DD60550, &dword_231609010);
    }
  }

  v23 = *(v0 + 104);
  sub_2315F3278();
  sub_2315B2F7C(v23, &qword_27DD607E8, &unk_231609900);
  v24 = *(v11 + 16);
  if (v24)
  {
    v68 = *(v0 + 112);
    v25 = *(v0 + 72);
    v70 = v9;
    sub_231603F90(0, v24, 0);
    v26 = v70;
    v10 = (v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
    v67 = v25;
    v27 = (v25 + 32);
    v66 = *(v2 + 72);
    do
    {
      v28 = *(v0 + 128);
      v29 = *(v0 + 136);
      v2 = *(v0 + 96);
      v69 = *(v0 + 64);
      v11 = v26;
      sub_2315C9580(v10, v29, &qword_27DD60550, &dword_231609010);
      sub_2315C7354(v29, v28, &qword_27DD60550, &dword_231609010);
      v30 = v28 + *(v68 + 48);
      v31 = *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607F0, &qword_231609910) + 48));

      v32 = *v27;
      (*v27)(v2, v30, v69);
      v70 = v26;
      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      v1 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        sub_231603F90(v33 > 1, v34 + 1, 1);
        v26 = v70;
      }

      v35 = *(v0 + 96);
      v36 = *(v0 + 64);
      *(v26 + 16) = v1;
      v32(v26 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v34, v35, v36);
      v10 = (v10 + v66);
      --v24;
    }

    while (v24);
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  *(v0 + 160) = v26;
  v37 = *(v26 + 16);
  *(v0 + 168) = v37;
  if (!v37)
  {

    OUTLINED_FUNCTION_71_0();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_66_1();

    __asm { BRAA            X1, X16 }
  }

  v38 = *(v0 + 64);
  v39 = *(v0 + 72);
  v40 = *(v39 + 16);
  v39 += 16;
  v41 = *(v39 + 64);
  *(v0 + 216) = v41;
  *(v0 + 176) = *(v39 + 56);
  *(v0 + 184) = v40;
  *(v0 + 192) = 0;
  v40(*(v0 + 88), v26 + ((v41 + 32) & ~v41), v38);
  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v42 = OUTLINED_FUNCTION_69_0();
  __swift_project_value_buffer(v42, qword_280FE9558);
  OUTLINED_FUNCTION_27_2();
  (v2)();
  swift_retain_n();
  v43 = sub_2316066C8();
  sub_231606958();
  OUTLINED_FUNCTION_39();
  v45 = os_log_type_enabled(v43, v44);
  v47 = *(v0 + 72);
  v46 = *(v0 + 80);
  v48 = *(v0 + 56);
  v49 = *(v0 + 64);
  if (v45)
  {
    swift_slowAlloc();
    v70 = OUTLINED_FUNCTION_21_2();
    *v10 = 136315394;
    OUTLINED_FUNCTION_0_7();
    sub_2315F32A0(v50, v51);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_55_0();
    v52 = *(v47 + 8);
    v53 = OUTLINED_FUNCTION_17_0();
    v52(v53);
    sub_2315B1574(v11, v1, &v70);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_46_1();
    *(v10 + 14) = v46;

    OUTLINED_FUNCTION_45_0();
    _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {
    v61 = *(v0 + 56);

    v52 = *(v47 + 8);
    v62 = OUTLINED_FUNCTION_17_0();
    v52(v62);
  }

  *(v0 + 200) = v52;
  v63 = swift_task_alloc();
  *(v0 + 208) = v63;
  *v63 = v0;
  OUTLINED_FUNCTION_12_4(v63);
  OUTLINED_FUNCTION_66_1();

  return sub_2315EBBA4();
}

uint64_t sub_2315EACF8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 208);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315EADF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v27;
  a22 = v28;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  v29 = *(v22 + 168);
  v30 = *(v22 + 192) + 1;
  v31 = (*(v22 + 72) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v22 + 200))(*(v22 + 88), *(v22 + 64));
  if (v30 == v29)
  {
    v32 = *(v22 + 160);

    OUTLINED_FUNCTION_71_0();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v42 = *(v22 + 184);
    v43 = *(v22 + 192) + 1;
    *(v22 + 192) = v43;
    v44 = *(v22 + 72) + 16;
    v42(*(v22 + 88), *(v22 + 160) + ((*(v22 + 216) + 32) & ~*(v22 + 216)) + *(v22 + 176) * v43, *(v22 + 64));
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v45 = OUTLINED_FUNCTION_69_0();
    __swift_project_value_buffer(v45, qword_280FE9558);
    OUTLINED_FUNCTION_27_2();
    v24();
    swift_retain_n();
    v46 = sub_2316066C8();
    sub_231606958();
    OUTLINED_FUNCTION_39();
    v48 = os_log_type_enabled(v46, v47);
    v50 = *(v22 + 72);
    v49 = *(v22 + 80);
    v51 = *(v22 + 56);
    v52 = *(v22 + 64);
    if (v48)
    {
      swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_21_2();
      *v23 = 136315394;
      OUTLINED_FUNCTION_0_7();
      sub_2315F32A0(v53, v54);
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_55_0();
      v55 = *(v50 + 8);
      v56 = OUTLINED_FUNCTION_17_0();
      v55(v56);
      sub_2315B1574(v25, v26, &a11);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_46_1();
      *(v23 + 14) = v49;

      OUTLINED_FUNCTION_45_0();
      _os_log_impl(v57, v58, v59, v60, v61, 0x16u);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {
      v62 = *(v22 + 56);

      v55 = *(v50 + 8);
      v63 = OUTLINED_FUNCTION_17_0();
      v55(v63);
    }

    *(v22 + 200) = v55;
    v64 = swift_task_alloc();
    *(v22 + 208) = v64;
    *v64 = v22;
    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_31();

    return sub_2315EBBA4();
  }
}

uint64_t sub_2315EB0A8()
{
  OUTLINED_FUNCTION_8();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_2316061C8();
  v1[9] = v3;
  OUTLINED_FUNCTION_4(v3);
  v1[10] = v4;
  v1[11] = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_47_0();
  v1[13] = swift_task_alloc();
  v6 = sub_231605B98();
  v1[14] = v6;
  OUTLINED_FUNCTION_4(v6);
  v1[15] = v7;
  v9 = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_23_0();
  v10 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2315EB1AC()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[7];
  sub_2316061A8();
  v0[17] = v2;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_2315EB25C;
  v4 = v0[8];

  return sub_2315EA5D0();
}

uint64_t sub_2315EB25C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[8];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  return MEMORY[0x2822009F8](sub_2315EB378, v4, 0);
}

uint64_t sub_2315EB378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  v13 = v12[16];
  v14 = v12[13];
  v15 = v12[12];
  v36 = v12[11];
  v16 = v12[9];
  v17 = v12[10];
  v19 = v12[7];
  v18 = v12[8];
  (*(v12[15] + 16))(v13, v18 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_eventConfig, v12[14]);
  v20 = *(v17 + 16);
  v20(v14, v19, v16);
  sub_2315B4568(v18 + 120, (v12 + 2));
  v20(v15, v19, v16);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  (*(v17 + 32))(v22 + v21, v15, v16);
  v23 = type metadata accessor for Connection(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  sub_2315EE6E0(v13, v14, (v12 + 2), &unk_2316098F8, v22);

  v26 = v12[1];
  OUTLINED_FUNCTION_58();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
}

uint64_t sub_2315EB500()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return sub_2315ED970();
}

uint64_t sub_2315EB5B8()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2316061C8();
  v1[10] = v3;
  OUTLINED_FUNCTION_4(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_47_0();
  v1[13] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2315EB668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  v28 = v22[8];
  v27 = v22[9];
  OUTLINED_FUNCTION_53_0();
  v29 = *(v27 + 112);

  v30 = OUTLINED_FUNCTION_72();
  v32 = sub_2315DCBBC(v30, v31);

  if (v32)
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v33 = OUTLINED_FUNCTION_72_0();
    __swift_project_value_buffer(v33, qword_280FE9558);
    v34 = OUTLINED_FUNCTION_50_0();
    v35(v34);
    v36 = sub_2316066C8();
    sub_231606958();
    OUTLINED_FUNCTION_39();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v22[13];
    v41 = v22[10];
    v40 = v22[11];
    if (v38)
    {
      v42 = OUTLINED_FUNCTION_60();
      a10 = v32;
      a11 = OUTLINED_FUNCTION_63();
      v43 = a11;
      *v42 = 136315138;
      OUTLINED_FUNCTION_0_7();
      sub_2315F32A0(v44, v45);
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_55_0();
      v46 = *(v40 + 8);
      v47 = OUTLINED_FUNCTION_17_0();
      v48(v47);
      sub_2315B1574(v23, v24, &a11);
      OUTLINED_FUNCTION_73();
      *(v42 + 4) = v39;
      OUTLINED_FUNCTION_35_0(&dword_2315AF000, v49, v50, "Getting existing connection for: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x231933730](v43, -1, -1);
      OUTLINED_FUNCTION_29();
    }

    else
    {

      v55 = *(v40 + 8);
      v56 = OUTLINED_FUNCTION_17_0();
      v57(v56);
    }

    v59 = v22[12];
    v58 = v22[13];

    v60 = v22[1];
    OUTLINED_FUNCTION_31();

    return v63(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v51 = swift_task_alloc();
    v22[14] = v51;
    *v51 = v22;
    v51[1] = sub_2315EB8A8;
    v52 = v22[9];
    OUTLINED_FUNCTION_29_0(v22[8]);
    OUTLINED_FUNCTION_31();

    return sub_2315EB0A8();
  }
}

uint64_t sub_2315EB8A8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v4 = *(v3 + 112);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 120) = v8;

  v10 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2315EB9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_57();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_49();
  a18 = v20;
  v24 = v20[15];
  v25 = qword_280FE9550;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v26 = OUTLINED_FUNCTION_70_0();
  __swift_project_value_buffer(v26, qword_280FE9558);
  v27 = OUTLINED_FUNCTION_14_3();
  v28(v27);
  v29 = sub_2316066C8();
  v30 = sub_231606958();
  v31 = OUTLINED_FUNCTION_51_1(v30);
  v33 = v20[11];
  v32 = v20[12];
  v34 = v20[10];
  if (v31)
  {
    OUTLINED_FUNCTION_60();
    v35 = OUTLINED_FUNCTION_21_2();
    a9 = v35;
    *v21 = 136315138;
    OUTLINED_FUNCTION_0_7();
    sub_2315F32A0(v36, v37);
    v38 = sub_231606BC8();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_6_6();
    v42(v41);
    sub_2315B1574(v38, v40, &a9);
    OUTLINED_FUNCTION_30_1();

    *(v21 + 4) = v32;
    OUTLINED_FUNCTION_34_1(&dword_2315AF000, v43, v44, "Created new connection for: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    v45 = OUTLINED_FUNCTION_6_6();
    v46(v45);
  }

  v47 = v20[15];
  v48 = v20[8];
  v49 = v20[9];
  swift_beginAccess();

  v50 = *(v49 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  a9 = *(v49 + 112);
  OUTLINED_FUNCTION_56();
  sub_2315DBE6C();
  *(v49 + 112) = a9;
  swift_endAccess();
  v51 = v20[15];
  v53 = v20[12];
  v52 = v20[13];

  v54 = v20[1];
  OUTLINED_FUNCTION_58();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
}

uint64_t sub_2315EBBA4()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2316061C8();
  v1[10] = v3;
  OUTLINED_FUNCTION_4(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_47_0();
  v1[13] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2315EBC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  v27 = v22[8];
  v28 = v22[9];
  OUTLINED_FUNCTION_53_0();
  v29 = *(v28 + 112);

  v30 = OUTLINED_FUNCTION_72();
  v32 = sub_2315DCBBC(v30, v31);

  if (v32)
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v33 = OUTLINED_FUNCTION_72_0();
    __swift_project_value_buffer(v33, qword_280FE9558);
    v34 = OUTLINED_FUNCTION_50_0();
    v35(v34);
    v36 = sub_2316066C8();
    sub_231606968();
    OUTLINED_FUNCTION_39();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v22[13];
    v41 = v22[10];
    v40 = v22[11];
    if (v38)
    {
      v42 = OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_63();
      a11 = a10;
      *v42 = 136315138;
      OUTLINED_FUNCTION_0_7();
      sub_2315F32A0(v43, v44);
      OUTLINED_FUNCTION_52_0();
      HIDWORD(a9) = v23;
      OUTLINED_FUNCTION_55_0();
      v45 = *(v40 + 8);
      v46 = OUTLINED_FUNCTION_17_0();
      v47(v46);
      sub_2315B1574(v32, v24, &a11);
      OUTLINED_FUNCTION_73();
      *(v42 + 4) = v39;
      _os_log_impl(&dword_2315AF000, v36, v23, "Disconnecting: %s", v42, 0xCu);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      v67 = *(v40 + 8);
      v68 = OUTLINED_FUNCTION_17_0();
      v69(v68);
    }

    v70 = v22[8];
    sub_2315EF6A8();
    swift_beginAccess();
    sub_2315F0850();
    swift_endAccess();
  }

  else
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v48 = OUTLINED_FUNCTION_70_0();
    __swift_project_value_buffer(v48, qword_280FE9558);
    v49 = OUTLINED_FUNCTION_14_3();
    v50(v49);
    v51 = sub_2316066C8();
    v52 = sub_231606958();
    v53 = OUTLINED_FUNCTION_51_1(v52);
    v55 = v22[11];
    v54 = v22[12];
    v56 = v22[10];
    if (v53)
    {
      OUTLINED_FUNCTION_60();
      v57 = OUTLINED_FUNCTION_21_2();
      a11 = v57;
      *v23 = 136315138;
      OUTLINED_FUNCTION_0_7();
      sub_2315F32A0(v58, v59);
      v60 = sub_231606BC8();
      v62 = v61;
      v63 = OUTLINED_FUNCTION_6_6();
      v64(v63);
      sub_2315B1574(v60, v62, &a11);
      OUTLINED_FUNCTION_30_1();

      *(v23 + 4) = v54;
      OUTLINED_FUNCTION_34_1(&dword_2315AF000, v65, v66, "no connection for %s found. Unable to disconnect");
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {

      v71 = OUTLINED_FUNCTION_6_6();
      v72(v71);
    }
  }

  v74 = v22[12];
  v73 = v22[13];

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2315EBF94()
{
  OUTLINED_FUNCTION_8();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C0, &unk_2316096D0);
  v1[14] = v4;
  OUTLINED_FUNCTION_4(v4);
  v1[15] = v5;
  v7 = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_23_0();
  v8 = sub_231606158();
  v1[17] = v8;
  OUTLINED_FUNCTION_4(v8);
  v1[18] = v9;
  v11 = *(v10 + 64);
  v1[19] = OUTLINED_FUNCTION_23_0();
  v12 = sub_231606348();
  v1[20] = v12;
  OUTLINED_FUNCTION_4(v12);
  v1[21] = v13;
  v15 = *(v14 + 64);
  v1[22] = OUTLINED_FUNCTION_23_0();
  v16 = sub_2316060C8();
  v1[23] = v16;
  OUTLINED_FUNCTION_4(v16);
  v1[24] = v17;
  v19 = *(v18 + 64);
  v1[25] = OUTLINED_FUNCTION_47_0();
  v1[26] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  OUTLINED_FUNCTION_24(v20);
  v22 = *(v21 + 64);
  v1[27] = OUTLINED_FUNCTION_23_0();
  v23 = sub_231605098();
  v1[28] = v23;
  OUTLINED_FUNCTION_4(v23);
  v1[29] = v24;
  v26 = *(v25 + 64);
  v1[30] = OUTLINED_FUNCTION_23_0();
  v27 = sub_2316061C8();
  v1[31] = v27;
  OUTLINED_FUNCTION_4(v27);
  v1[32] = v28;
  v30 = *(v29 + 64);
  v1[33] = OUTLINED_FUNCTION_47_0();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v31 = sub_231606188();
  v1[36] = v31;
  OUTLINED_FUNCTION_4(v31);
  v1[37] = v32;
  v34 = *(v33 + 64);
  v1[38] = OUTLINED_FUNCTION_23_0();
  v35 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v35);
}

uint64_t sub_2315EC260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64_1();
  a22 = v24;
  a23 = v25;
  a21 = v23;
  v26 = *(v23 + 304);
  v28 = *(v23 + 264);
  v27 = *(v23 + 272);
  v29 = *(v23 + 248);
  v30 = *(v23 + 256);
  v31 = *(v23 + 96);
  sub_2316060A8();
  sub_231606078();
  sub_231605F38();
  OUTLINED_FUNCTION_56();
  LOBYTE(v31) = sub_2316061B8();
  v32 = *(v30 + 8);
  *(v23 + 312) = v32;
  *(v23 + 320) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33 = OUTLINED_FUNCTION_26();
  v32(v33);
  v34 = (v32)(v27, v29);
  if (v31)
  {
    v35 = *(v23 + 96);
    v36 = MEMORY[0x231932570](v34);
    sub_2315DCC0C(0x4974736575716572, 0xE900000000000064, v36, (v23 + 16));

    v37 = *(v23 + 216);
    v38 = *(v23 + 224);
    if (*(v23 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
      v39 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v37, v39 ^ 1u, 1, v38);
      if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
      {
        (*(*(v23 + 232) + 32))(*(v23 + 240), *(v23 + 216), *(v23 + 224));
        if (qword_280FE9550 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v40 = sub_2316066E8();
        __swift_project_value_buffer(v40, qword_280FE9558);
        v41 = sub_2316066C8();
        v42 = sub_231606958();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_2315AF000, v41, v42, "Mapping siri hints identifier", v43, 2u);
          OUTLINED_FUNCTION_17();
        }

        v44 = *(v23 + 272);
        v45 = *(v23 + 240);
        v46 = *(v23 + 248);
        v47 = *(v23 + 232);
        v81 = *(v23 + 280);
        v82 = *(v23 + 224);
        v48 = *(v23 + 96);

        sub_231606078();
        sub_2316061A8();
        (v32)(v44, v46);
        v49 = sub_231605068();
        strcpy(&a12, "conversation-");
        HIWORD(a12) = -4864;
        MEMORY[0x231932CB0](v49);

        sub_231606198();
        (*(v47 + 8))(v45, v82);
        goto LABEL_17;
      }
    }

    else
    {
      sub_2315B2F7C(v23 + 16, &qword_27DD60390, &qword_231608910);
      OUTLINED_FUNCTION_38();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v38);
    }

    sub_2315B2F7C(*(v23 + 216), &qword_27DD60268, &qword_231608230);
  }

  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v53 = *(v23 + 208);
  v54 = *(v23 + 184);
  v55 = *(v23 + 192);
  v56 = *(v23 + 96);
  v57 = sub_2316066E8();
  __swift_project_value_buffer(v57, qword_280FE9558);
  v58 = OUTLINED_FUNCTION_14_3();
  v59(v58);
  v60 = sub_2316066C8();
  LOBYTE(v56) = sub_231606958();
  v61 = OUTLINED_FUNCTION_51_1(v56);
  v62 = *(v23 + 208);
  v63 = *(v23 + 184);
  v64 = *(v23 + 192);
  if (v61)
  {
    OUTLINED_FUNCTION_60();
    v65 = OUTLINED_FUNCTION_21_2();
    *&a12 = v65;
    *v29 = 136315138;
    sub_2315F32A0(&qword_280FE95E8, MEMORY[0x277D60A70]);
    v66 = sub_231606BC8();
    v68 = v67;
    v69 = OUTLINED_FUNCTION_6_6();
    v70(v69);
    sub_2315B1574(v66, v68, &a12);
    OUTLINED_FUNCTION_30_1();

    *(v29 + 4) = v62;
    OUTLINED_FUNCTION_34_1(&dword_2315AF000, v71, v72, "using identifier for inapp as is. %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    v73 = OUTLINED_FUNCTION_6_6();
    v74(v73);
  }

  v75 = *(v23 + 280);
  v76 = *(v23 + 96);
  sub_231606078();
LABEL_17:
  v77 = swift_task_alloc();
  *(v23 + 328) = v77;
  *v77 = v23;
  v77[1] = sub_2315EC708;
  v78 = *(v23 + 104);
  OUTLINED_FUNCTION_29_0(*(v23 + 280));
  OUTLINED_FUNCTION_33_1();

  return sub_2315EB5B8();
}

uint64_t sub_2315EC708()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v4 = *(v3 + 328);
  v5 = *(v3 + 104);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 336) = v8;

  v10 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2315EC804()
{
  v65 = v0;
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[31];
  v6 = v0[12];
  sub_231606078();
  sub_231605F38();
  OUTLINED_FUNCTION_0_7();
  sub_2315F32A0(v7, v8);
  OUTLINED_FUNCTION_56();
  LOBYTE(v6) = sub_231606778();
  v9 = OUTLINED_FUNCTION_26();
  (v2)(v9);
  (v2)(v3, v5);
  if (v6)
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = v0[42];
    v11 = sub_2316066E8();
    __swift_project_value_buffer(v11, qword_280FE9558);

    v12 = sub_2316066C8();
    v13 = sub_231606958();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[42];
      v10 = OUTLINED_FUNCTION_60();
      v15 = OUTLINED_FUNCTION_63();
      v64 = v15;
      *v10 = 136315138;
      swift_beginAccess();
      v16 = *(v14 + 16);

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
      v2 = MEMORY[0x231932D20](v16, v17);
      v19 = v18;

      v20 = sub_2315B1574(v2, v19, &v64);

      *(v10 + 4) = v20;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_17();
    }

    OUTLINED_FUNCTION_28_1();
    v58 = v0[27];
    v59 = v0[26];
    v60 = v0[25];
    v61 = v0[22];
    v62 = v0[19];
    v27 = v0[15];
    v26 = v0[16];
    v28 = v0[13];
    v29 = v0[14];
    v55 = v0[11];
    v56 = v30;
    v31 = swift_task_alloc();
    OUTLINED_FUNCTION_67_1(v31);
    (*(v27 + 104))(v26, *MEMORY[0x277D858A0], v29);
    OUTLINED_FUNCTION_15_3();

    v57(v13, v56);
    (*(v2 + 8))(v10);

    OUTLINED_FUNCTION_14();

    return v32();
  }

  else
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v34 = sub_2316066E8();
    __swift_project_value_buffer(v34, qword_280FE9558);
    v35 = sub_2316066C8();
    v36 = sub_231606958();
    if (os_log_type_enabled(v35, v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_17();
    }

    v43 = v0[24];
    v42 = v0[25];
    v44 = v0[23];
    v63 = v0[22];
    v46 = v0[18];
    v45 = v0[19];
    v47 = v0[17];
    v49 = v0[12];
    v48 = v0[13];

    sub_231606078();
    (*(v46 + 104))(v45, *MEMORY[0x277D60B90], v47);
    v50 = v48[19];
    __swift_project_boxed_opaque_existential_1(v48 + 15, v48[18]);
    sub_2316063E8();
    (*(v43 + 16))(v42, v49, v44);
    sub_231606338();
    v51 = swift_task_alloc();
    v0[43] = v51;
    *v51 = v0;
    v51[1] = sub_2315ECCD4;
    v52 = v0[42];
    v53 = OUTLINED_FUNCTION_29_0(v0[22]);

    return sub_2315F1A7C(v53, v54);
  }
}

uint64_t sub_2315ECCD4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v2 = v1[43];
  v3 = v1[22];
  v4 = v1[21];
  v5 = v1[20];
  v6 = v1[13];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2315ECE30, v6, 0);
}

void sub_2315ECE30()
{
  OUTLINED_FUNCTION_28_1();
  v13 = v4;
  v15 = v2[27];
  v16 = v2[26];
  v17 = v2[25];
  v18 = v2[22];
  v19 = v2[19];
  v6 = v2[15];
  v5 = v2[16];
  v7 = v2[13];
  v8 = v2[14];
  v12 = v2[11];
  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_67_1(v9);
  (*(v6 + 104))(v5, *MEMORY[0x277D858A0], v8);
  OUTLINED_FUNCTION_15_3();

  v14(v0, v13);
  (*(v3 + 8))(v1);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_66_1();

  __asm { BRAA            X1, X16 }
}

void sub_2315ECF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_231606188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2315EFAD8();
  swift_beginAccess();

  v12 = *(a3 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a3 + 112);
  sub_2315DBE6C();
  *(a3 + 112) = v22;
  swift_endAccess();
  if (qword_280FE9550 != -1)
  {
    swift_once();
  }

  v13 = sub_2316066E8();
  __swift_project_value_buffer(v13, qword_280FE9558);
  (*(v8 + 16))(v11, a5, v7);
  v14 = sub_2316066C8();
  v15 = sub_231606958();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    sub_2315F32A0(&qword_280FE95D0, MEMORY[0x277D60C08]);
    v18 = sub_231606BC8();
    v20 = v19;
    (*(v8 + 8))(v11, v7);
    v21 = sub_2315B1574(v18, v20, &v23);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2315AF000, v14, v15, "Finished setting up connection for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x231933730](v17, -1, -1);
    MEMORY[0x231933730](v16, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_2315ED270()
{
  OUTLINED_FUNCTION_8();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_2316061C8();
  v1[9] = v3;
  OUTLINED_FUNCTION_4(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_23_0();
  v7 = sub_231606158();
  v1[12] = v7;
  OUTLINED_FUNCTION_4(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_47_0();
  v1[15] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2315ED36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  v25 = v22[15];
  v26 = v22[12];
  v27 = v22[13];
  v28 = v22[7];
  v29 = v28[3];
  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_231606418();
  v30 = *(v27 + 88);
  v31 = OUTLINED_FUNCTION_56();
  if (v32(v31) == *MEMORY[0x277D60B90])
  {
    v34 = v22[10];
    v33 = v22[11];
    v35 = v22[9];
    (*(v22[13] + 96))(v22[15], v22[12]);
    v36 = *(v34 + 32);
    OUTLINED_FUNCTION_27_2();
    v37();
    v38 = swift_task_alloc();
    v22[16] = v38;
    *v38 = v22;
    v38[1] = sub_2315ED670;
    v39 = v22[8];
    OUTLINED_FUNCTION_29_0(v22[11]);
    OUTLINED_FUNCTION_31();

    return sub_2315EB5B8();
  }

  else
  {
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v42 = v22[7];
    v43 = sub_2316066E8();
    __swift_project_value_buffer(v43, qword_280FE9558);
    sub_2315B4568(v42, (v22 + 2));
    v44 = sub_2316066C8();
    v45 = sub_231606978();
    if (OUTLINED_FUNCTION_51_1(v45))
    {
      v46 = v22[13];
      v47 = v22[14];
      v48 = v22[12];
      OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_21_2();
      a11 = a10;
      *v29 = 136315138;
      v49 = v22[6];
      __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
      HIDWORD(a9) = v45;
      OUTLINED_FUNCTION_30_1();
      sub_231606418();
      sub_2315F32A0(&qword_27DD603B8, MEMORY[0x277D60BA8]);
      v50 = sub_231606BC8();
      v52 = v51;
      v53 = *(v46 + 8);
      v53(v47, v48);
      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
      sub_2315B1574(v50, v52, &a11);
      OUTLINED_FUNCTION_30_1();

      *(v29 + 4) = v50;
      OUTLINED_FUNCTION_45_0();
      _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {
      v59 = v22[13];

      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
      v53 = *(v59 + 8);
    }

    v53(v22[15], v22[12]);
    v61 = v22[14];
    v60 = v22[15];
    v62 = v22[11];

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2315ED670()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v4 = v3;
  OUTLINED_FUNCTION_7_0();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *(v6 + 56);
  v9 = *v0;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v4 + 136) = v2;

  v11 = *(v8 + 24);
  v12 = *(v8 + 32);
  v13 = OUTLINED_FUNCTION_26();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v15 = swift_task_alloc();
  *(v4 + 144) = v15;
  *v15 = v9;
  v15[1] = sub_2315ED7DC;
  v16 = OUTLINED_FUNCTION_44_0();

  return sub_2315F226C(v16, v17, v18, v12);
}

uint64_t sub_2315ED7DC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 144);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315ED8D4()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  (*(v3 + 8))(v2, v4);
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];

  OUTLINED_FUNCTION_14();

  return v8();
}

uint64_t sub_2315ED970()
{
  OUTLINED_FUNCTION_8();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = sub_231605098();
  OUTLINED_FUNCTION_24(v5);
  v7 = *(v6 + 64);
  v1[26] = OUTLINED_FUNCTION_23_0();
  v8 = sub_231605E28();
  v1[27] = v8;
  OUTLINED_FUNCTION_4(v8);
  v1[28] = v9;
  v11 = *(v10 + 64);
  v1[29] = OUTLINED_FUNCTION_23_0();
  v12 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2315EDA38()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 200);
  v2 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v1[23]);
  v3 = *(MEMORY[0x277D60468] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 240) = v4;
  *v4 = v5;
  v4[1] = sub_2315EDAEC;
  OUTLINED_FUNCTION_40_1();

  return MEMORY[0x2821C5CD8](v6);
}

uint64_t sub_2315EDAEC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 240);
  v3 = *(v1 + 200);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315EDBE4()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 200);
  v2 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v1[23]);
  v3 = *(v2 + 8);
  v4 = *(MEMORY[0x277D60470] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 248) = v5;
  *v5 = v6;
  v5[1] = sub_2315EDC9C;
  OUTLINED_FUNCTION_40_1();

  return MEMORY[0x2821C5CE0]();
}

uint64_t sub_2315EDC9C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 248);
  v3 = *(v1 + 200);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315EDD94()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_2316055E8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v5 = *(v2 + 208);
  (*(v2 + 200))(v3, v1, v0 + 7);
  v6 = v0[20];
  v7 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v6);
  v8 = (v2 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_requestIdProvider);
  v9 = *(v2 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_requestIdProvider + 24);
  v10 = *(v2 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_requestIdProvider + 32);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v0[32] = v12;
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v15 = *(v7 + 8);
  v21 = (v15 + *v15);
  v16 = v15[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[33] = v17;
  *v17 = v18;
  v17[1] = sub_2315EDF74;
  v19 = v0[29];

  return v21(v19, v13, v14, v6, v7);
}

uint64_t sub_2315EDF74()
{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = v2[33];
  if (v2[32])
  {
    v6 = v2[32];
  }

  v7 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v8 = v7;
  *(v9 + 272) = v0;

  v10 = v2[25];
  if (v0)
  {
    v11 = sub_2315EE308;
  }

  else
  {
    v11 = sub_2315EE0C0;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_2315EE0C0()
{
  OUTLINED_FUNCTION_15();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(MEMORY[0x277D60438] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[35] = v4;
  *v4 = v5;
  v4[1] = sub_2315EE180;
  v6 = v0[29];
  v7 = v0[22];

  return MEMORY[0x2821C5C98](v7, v6, v1, v2);
}

uint64_t sub_2315EE180()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 280);
  v3 = *(v1 + 200);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315EE278()
{
  OUTLINED_FUNCTION_8();
  (*(v0[28] + 8))(v0[29], v0[27]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[29];
  v2 = v0[26];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_2315EE308()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[34];
  v2 = v0[26];
  v3 = v0[22];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  sub_231606528();
  sub_231606058();
  sub_2315F32A0(&qword_280FE95F0, MEMORY[0x277D60A60]);
  sub_231605088();
  sub_231605E58();

  v4 = v0[29];
  v5 = v0[26];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_14();

  return v6();
}

void *EventDrivenSuggestionsClient.deinit()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v2 = v0[26];

  v3 = OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_eventConfig;
  v4 = sub_231605B98();
  OUTLINED_FUNCTION_5_1(v4);
  (*(v5 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport28EventDrivenSuggestionsClient_requestIdProvider));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t EventDrivenSuggestionsClient.__deallocating_deinit()
{
  EventDrivenSuggestionsClient.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2315EE504()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4660;

  return sub_2315EBF94();
}

uint64_t sub_2315EE5B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return sub_2315EBBA4();
}

uint64_t sub_2315EE648()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return sub_2315ED270();
}

uint64_t sub_2315EE6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_22_3();
  *(v5 + 16) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_lock;
  *(v5 + v15) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v16 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_config;
  v17 = sub_231605B98();
  OUTLINED_FUNCTION_5_1(v17);
  (*(v18 + 32))(v5 + v16, v9);
  v19 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_key;
  v20 = sub_2316061C8();
  OUTLINED_FUNCTION_5_1(v20);
  (*(v21 + 32))(v5 + v19, v8);
  sub_2315B4648(v7, v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_clock);
  v22 = (v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_getSuggestions);
  *v22 = v6;
  v22[1] = a5;
  return v5;
}

uint64_t sub_2315EE818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v38 = a3;
  v6 = sub_2316061C8();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_connection;
  swift_beginAccess();
  sub_2315C9580(a1 + v18, v12, &qword_27DD607D0, &qword_2316098B0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2315B2F7C(v12, &qword_27DD607D0, &qword_2316098B0);
    if (qword_280FE9550 != -1)
    {
      swift_once();
    }

    v19 = sub_2316066E8();
    __swift_project_value_buffer(v19, qword_280FE9558);
    v20 = v39;
    v21 = v40;
    v22 = v41;
    (*(v40 + 16))(v39, v38, v41);
    v23 = sub_2316066C8();
    v24 = sub_231606958();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136315138;
      sub_2315F32A0(&qword_280FE95B8, MEMORY[0x277D60C18]);
      v27 = sub_231606BC8();
      v28 = v20;
      v29 = v27;
      v31 = v30;
      (*(v21 + 8))(v28, v22);
      v32 = sub_2315B1574(v29, v31, &v43);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_2315AF000, v23, v24, "No connection for %s created yet. Adding to buffer", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x231933730](v26, -1, -1);
      MEMORY[0x231933730](v25, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    sub_2315EF2C4();
    swift_beginAccess();
    sub_2315CAAEC();
    v35 = *(*(a1 + 16) + 16);
    sub_2315CAB78(v35);
    v36 = *(a1 + 16);
    *(v36 + 16) = v35 + 1;
    sub_2315B4568(v42, v36 + 40 * v35 + 32);
    *(a1 + 16) = v36;
    return swift_endAccess();
  }

  else
  {
    v33 = *(v14 + 32);
    v33(v17, v12, v13);
    sub_2315B2F7C(a2, &qword_27DD607D0, &qword_2316098B0);
    v33(a2, v17, v13);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
  }
}

uint64_t sub_2315EED18()
{
  OUTLINED_FUNCTION_8();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607E0, &qword_2316098E8);
  OUTLINED_FUNCTION_24(v4);
  v6 = *(v5 + 64);
  v1[20] = OUTLINED_FUNCTION_23_0();
  v7 = type metadata accessor for PreFetchedSuggestionEvent();
  v1[21] = v7;
  OUTLINED_FUNCTION_24(v7);
  v9 = *(v8 + 64);
  v1[22] = OUTLINED_FUNCTION_23_0();
  v10 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2315EEDC4()
{
  v48 = v0;
  v3 = v0[20];
  v2 = v0[21];
  sub_2315B4568(v0[18], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
  if (swift_dynamicCast())
  {
    v4 = v0[22];
    v5 = v0[20];
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v0[21]);
    sub_2315F3134(v5, v4);
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_2316066E8();
    __swift_project_value_buffer(v6, qword_280FE9558);
    v7 = sub_2316066C8();
    v8 = sub_231606958();
    if (os_log_type_enabled(v7, v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_17();
    }

    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[17];

    v17 = *(v15 + 24);
    v18 = sub_231605E98();
    OUTLINED_FUNCTION_5_1(v18);
    (*(v19 + 16))(v16, v14 + v17);
    sub_2315BE3F0(v14);
    v20 = v0[22];
    v21 = v0[20];

    OUTLINED_FUNCTION_14();

    return v22();
  }

  else
  {
    v25 = v0[20];
    v24 = v0[21];
    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    sub_2315B2F7C(v25, &qword_27DD607E0, &qword_2316098E8);
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v30 = v0[18];
    v31 = sub_2316066E8();
    __swift_project_value_buffer(v31, qword_280FE9558);
    sub_2315B4568(v30, (v0 + 7));
    v32 = sub_2316066C8();
    v33 = sub_231606958();
    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_60();
      v34 = OUTLINED_FUNCTION_21_2();
      v47 = v34;
      *v1 = 136315138;
      sub_2315B4568((v0 + 7), (v0 + 12));
      v35 = sub_2316067A8();
      v37 = v36;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      v38 = sub_2315B1574(v35, v37, &v47);

      *(v1 + 4) = v38;
      _os_log_impl(&dword_2315AF000, v32, v33, "Got event of type: %s. Generating suggestions", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    }

    v39 = (v0[19] + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_getSuggestions);
    v40 = v39[1];
    v46 = (*v39 + **v39);
    v41 = (*v39)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v0[23] = v42;
    *v42 = v43;
    v42[1] = sub_2315EF1A4;
    v44 = v0[17];
    v45 = v0[18];

    return v46(v44, v45);
  }
}

uint64_t sub_2315EF1A4()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v1 + 176);
  v6 = *(v1 + 160);

  v7 = *(v3 + 8);

  return v7();
}

void sub_2315EF2C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_clock + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_clock), *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_clock + 24));
  sub_2316063E8();
  v3 = v2;
  swift_beginAccess();
  v4 = *(*(v0 + 16) + 16);
  v5 = sub_231605B78();
  if (!__OFADD__(v5, 1))
  {
    v31 = v4;
    v32 = v5 + 1;
    v1 = *(v0 + 16);
    v6 = *(v1 + 16);
    v7 = v1 + 32;

    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (v6 != v8)
    {
      if (v8 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_2315B4568(v7, &v34);
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      sub_231606408();
      v11 = v3 - v10;
      sub_231605B88();
      if (v11 >= v12)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v34);
      }

      else
      {
        sub_2315B4648(&v34, v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_231604130(0, *(v9 + 16) + 1, 1);
          v9 = v36;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_231604130(v14 > 1, v15 + 1, 1);
          v9 = v36;
        }

        *(v9 + 16) = v15 + 1;
        sub_2315B4648(v33, v9 + 40 * v15 + 32);
      }

      v7 += 40;
      ++v8;
    }

    sub_2315EF610(v32, v9);
    v17 = v16;
    v19 = v18;
    if (v18)
    {
      sub_231606BE8();
      swift_unknownObjectRetain_n();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        swift_unknownObjectRelease();
        v24 = MEMORY[0x277D84F90];
      }

      v25 = *(v24 + 16);

      if (__OFSUB__(v19 >> 1, v17))
      {
        __break(1u);
      }

      else if (v25 == (v19 >> 1) - v17)
      {
        v23 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v23)
        {
          goto LABEL_22;
        }

        v23 = MEMORY[0x277D84F90];
LABEL_21:
        swift_unknownObjectRelease();
LABEL_22:
        v26 = *(v0 + 16);
        *(v0 + 16) = v23;

        v1 = *(*(v0 + 16) + 16);
        if (qword_280FE9550 != -1)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

      swift_unknownObjectRelease();
    }

    v20 = OUTLINED_FUNCTION_72();
    sub_2315F0B5C(v20, v21, v17, v19);
    v23 = v22;
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_0();
LABEL_23:
  v27 = sub_2316066E8();
  __swift_project_value_buffer(v27, qword_280FE9558);
  v28 = sub_2316066C8();
  v29 = sub_231606958();
  if (OUTLINED_FUNCTION_51_1(v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134218240;
    *(v30 + 4) = v31;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v1;
    _os_log_impl(&dword_2315AF000, v28, v29, "before purging %ld elements, after purging %ld", v30, 0x16u);
    OUTLINED_FUNCTION_17();
  }
}

int64_t sub_2315EF610(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2315E91C0(v3, -result, 0, a2);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_2315F1630(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2315EF6A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_lock);

  [v1 lock];
  sub_2315EF728(v0);
  [v1 unlock];
}

uint64_t sub_2315EF728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v24 = v23 - v12;
  if (qword_280FE9550 != -1)
  {
    swift_once();
  }

  v13 = sub_2316066E8();
  v23[1] = __swift_project_value_buffer(v13, qword_280FE9558);
  v14 = sub_2316066C8();
  v15 = sub_231606968();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2315AF000, v14, v15, "Disconnecting connection", v16, 2u);
    MEMORY[0x231933730](v16, -1, -1);
  }

  v17 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_connection;
  swift_beginAccess();
  sub_2315C9580(a1 + v17, v8, &qword_27DD607D0, &qword_2316098B0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2315B2F7C(v8, &qword_27DD607D0, &qword_2316098B0);
  }

  else
  {
    (*(v10 + 32))(v24, v8, v9);
    v18 = sub_2316066C8();
    v19 = sub_231606968();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2315AF000, v18, v19, "Notifying downstream subscribers of events that connection is disconnected", v20, 2u);
      MEMORY[0x231933730](v20, -1, -1);
    }

    v23[2] = 0;
    v21 = v24;
    sub_231606918();
    (*(v10 + 8))(v21, v9);
  }

  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  swift_beginAccess();
  sub_2315F30C4(v6, a1 + v17);
  return swift_endAccess();
}

void sub_2315EFB38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  v5 = *(v4 - 8);
  v61 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v54 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  v18 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_connection;
  swift_beginAccess();
  v53 = v18;
  sub_2315C9580(a1 + v18, v17, &qword_27DD607D0, &qword_2316098B0);
  LODWORD(v18) = __swift_getEnumTagSinglePayload(v17, 1, v4);
  sub_2315B2F7C(v17, &qword_27DD607D0, &qword_2316098B0);
  if (v18 == 1)
  {
    sub_2315EF2C4();
    swift_beginAccess();
    v58 = v5 + 16;
    v57 = v5 + 32;
    *&v19 = 136315138;
    v55 = v19;
    while (1)
    {
      v20 = *(a1 + 16);
      if (!*(v20 + 16))
      {
        break;
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2315F2F0C(v20);
        v20 = v49;
      }

      v22 = *(v20 + 16);
      if (!v22)
      {
        __break(1u);
        return;
      }

      *(v20 + 16) = v22 - 1;
      *(a1 + 16) = v20;
      sub_2315B4648((v20 + 40 * v22 - 8), v69);
      swift_endAccess();
      if (qword_280FE9550 != -1)
      {
        swift_once();
      }

      v23 = sub_2316066E8();
      __swift_project_value_buffer(v23, qword_280FE9558);
      sub_2315B4568(v69, &v67);
      v24 = sub_2316066C8();
      v25 = sub_231606958();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v70 = v56;
        *v26 = v55;
        __swift_project_boxed_opaque_existential_1(&v67, v68);
        swift_getDynamicType();
        v27 = sub_231606CD8();
        v28 = a1;
        v29 = v5;
        v30 = a2;
        v31 = v4;
        v33 = v32;
        __swift_destroy_boxed_opaque_existential_1Tm(&v67);
        v34 = sub_2315B1574(v27, v33, &v70);
        v4 = v31;
        a2 = v30;
        v5 = v29;
        a1 = v28;

        *(v26 + 4) = v34;
        _os_log_impl(&dword_2315AF000, v24, v25, "sending event %s from buffer to new connection", v26, 0xCu);
        v35 = v56;
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x231933730](v35, -1, -1);
        MEMORY[0x231933730](v26, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v67);
      }

      v36 = sub_2316068E8();
      v37 = v62;
      __swift_storeEnumTagSinglePayload(v62, 1, 1, v36);
      sub_2315B4568(v69, &v67);
      v38 = v60;
      (*(v5 + 16))(v60, a2, v4);
      v39 = (*(v5 + 80) + 80) & ~*(v5 + 80);
      v40 = swift_allocObject();
      *(v40 + 2) = 0;
      *(v40 + 3) = 0;
      *(v40 + 4) = a1;
      sub_2315B4648(&v67, (v40 + 40));
      (*(v5 + 32))(&v40[v39], v38, v4);
      v41 = v59;
      sub_2315C9580(v37, v59, &qword_27DD60398, &qword_231609BD0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v36);

      if (EnumTagSinglePayload == 1)
      {
        sub_2315B2F7C(v41, &qword_27DD60398, &qword_231609BD0);
      }

      else
      {
        sub_2316068D8();
        (*(*(v36 - 8) + 8))(v41, v36);
      }

      v43 = *(v40 + 2);
      v44 = *(v40 + 3);
      swift_unknownObjectRetain();

      if (v43)
      {
        swift_getObjectType();
        v45 = sub_2316068A8();
        v47 = v46;
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0;
        v47 = 0;
      }

      sub_2315B2F7C(v62, &qword_27DD60398, &qword_231609BD0);
      v48 = swift_allocObject();
      *(v48 + 16) = &unk_2316098C0;
      *(v48 + 24) = v40;
      if (v47 | v45)
      {
        v63 = 0;
        v64 = 0;
        v65 = v45;
        v66 = v47;
      }

      swift_task_create();

      __swift_destroy_boxed_opaque_existential_1Tm(v69);
    }
  }

  v50 = v54;
  (*(v5 + 16))(v54, a2, v4);
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v4);
  v51 = v53;
  swift_beginAccess();
  sub_2315F30C4(v50, a1 + v51);
  swift_endAccess();
}

uint64_t sub_2315F0278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D8, &qword_2316098D8);
  v6[3] = v7;
  v8 = *(v7 - 8);
  v6[4] = v8;
  v9 = *(v8 + 64) + 15;
  v6[5] = swift_task_alloc();
  v10 = sub_231605E98();
  v6[6] = v10;
  v11 = *(v10 - 8);
  v6[7] = v11;
  v12 = *(v11 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[10] = v13;
  *v13 = v6;
  v13[1] = sub_2315F03F8;

  return sub_2315EED18();
}

uint64_t sub_2315F03F8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315F04DC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  (*(v3 + 16))(v0[8], v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  sub_231606908();
  (*(v5 + 8))(v4, v7);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_14();

  return v8();
}

uint64_t sub_2315F05E4()
{
  v1 = *(v0 + 16);

  sub_2315B2F7C(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_connection, &qword_27DD607D0, &qword_2316098B0);
  v2 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_config;
  v3 = sub_231605B98();
  OUTLINED_FUNCTION_5_1(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_key;
  v6 = sub_2316061C8();
  OUTLINED_FUNCTION_5_1(v6);
  (*(v7 + 8))(v0 + v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_clock));

  v8 = *(v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_getSuggestions + 8);

  return v0;
}

uint64_t sub_2315F06D0()
{
  sub_2315F05E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2315F0728()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315F080C(uint64_t a1)
{
  sub_2315B2D08(a1, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  return sub_2316067A8();
}

uint64_t sub_2315F0850()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2315CD118();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60570, &qword_231609030);
  sub_231606AC8();
  v8 = *(v12 + 48);
  v9 = sub_2316061C8();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 8 * v5);
  type metadata accessor for Connection(0);
  sub_2315F32A0(&qword_280FE95C8, MEMORY[0x277D60C18]);
  sub_231606AE8();
  *v1 = v12;
  return v10;
}

double sub_2315F0990@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2315CD0A0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E8, &qword_231608FA0);
    sub_231606AC8();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_2315CAB60((*(v14 + 56) + 48 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    sub_231606AE8();
    *v4 = v14;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_2315F0A8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60588, &qword_231609048);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_2315F0B5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60548, &qword_2316098E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

unint64_t *sub_2315F0C44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      a2 = sub_2315F11EC(v15, v9, a1, a2, a3);
      MEMORY[0x231933730](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  v11 = (v16 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2315DC1C0(0, v9, v11);

  v12 = sub_2315F0E1C(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v13 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_2315F0E1C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v48 = a2;
  v63 = a5;
  v61 = a4;
  v49 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607F0, &qword_231609910);
  v6 = *(*(v60 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v60);
  v59 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  v11 = sub_2316061C8();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0;
  v62 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v51 = (v22 + 63) >> 6;
  v52 = v20;
  v57 = v14 + 16;
  v58 = v14;
  v55 = v10;
  v56 = v14 + 8;
  v54 = v16;
  while (2)
  {
    v50 = v17;
    while (1)
    {
      if (!v24)
      {
        v26 = v18;
        while (1)
        {
          v18 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v18 >= v51)
          {
            goto LABEL_22;
          }

          v27 = v52[v18];
          ++v26;
          if (v27)
          {
            v64 = (v27 - 1) & v27;
            v25 = __clz(__rbit64(v27)) | (v18 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v64 = (v24 - 1) & v24;
      v25 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_12:
      v28 = v62;
      v29 = v58;
      v30 = *(v58 + 16);
      v30(v16, v62[6] + *(v58 + 72) * v25, v11);
      v31 = v28[7];
      v32 = v16;
      v53 = v25;
      v33 = *(v31 + 8 * v25);
      v34 = v55;
      v30(v55, v32, v11);
      v36 = v59;
      v35 = v60;
      *(v34 + *(v60 + 48)) = v33;
      sub_2315C9580(v34, v36, &qword_27DD607F0, &qword_231609910);
      v37 = *(v36 + *(v35 + 48));
      swift_retain_n();

      v38 = sub_2316061A8();
      v40 = v39;
      v41 = *(v29 + 8);
      v41(v36, v11);
      if (v38 == v61 && v40 == v63)
      {
        break;
      }

      v43 = sub_231606BD8();

      sub_2315B2F7C(v34, &qword_27DD607F0, &qword_231609910);

      v16 = v54;
      result = (v41)(v54, v11);
      v24 = v64;
      if (v43)
      {
        goto LABEL_19;
      }
    }

    sub_2315B2F7C(v34, &qword_27DD607F0, &qword_231609910);

    v16 = v54;
    result = (v41)(v54, v11);
    v24 = v64;
LABEL_19:
    v44 = v50;
    *(v49 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
    v45 = __OFADD__(v44, 1);
    v17 = v44 + 1;
    if (!v45)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_22:
  v46 = sub_2315F1294(v49, v48, v50, v62);

  return v46;
}

unint64_t *sub_2315F11EC(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_2315F0E1C(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_2315F1294(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = sub_2316061C8();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60800, &unk_231609920);
  result = sub_231606B38();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_2315F32A0(&qword_280FE95C8, MEMORY[0x277D60C18]);
    v44 = v24;

    result = sub_231606758();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_25:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2315F1630(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2315F169C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_2315F16D8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60550, &dword_231609010);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v40 = (&v38 - v4);
  v5 = sub_2316061C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607F8, &qword_231609918);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607F0, &qword_231609910);
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x28223BE20](v14);
  v17 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v39 = &v38 - v22;
  if (v21)
  {
    v42 = v1;
    v43 = v20;
    v44 = v2;
    v23 = v19;
LABEL_7:
    v41 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v23 << 6);
    v25 = v9;
    v26 = v9;
    v27 = v17;
    (*(v6 + 16))(v26, *(v17 + 48) + *(v6 + 72) * v24, v5);
    v28 = *(*(v27 + 56) + 8 * v24);
    v29 = *(v14 + 48);
    (*(v6 + 32))(v13, v25, v5);
    *&v13[v29] = v28;
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);

    v30 = v41;
    v1 = v42;
    v20 = v43;
    v2 = v44;
LABEL_8:
    *v1 = v27;
    v1[1] = v18;
    v1[2] = v20;
    v1[3] = v19;
    v1[4] = v30;
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_2315B2F7C(v13, &qword_27DD607F8, &qword_231609918);
      v31 = v45;
      v32 = 1;
      return __swift_storeEnumTagSinglePayload(v31, v32, 1, v2);
    }

    v33 = v39;
    sub_2315C7354(v13, v39, &qword_27DD607F0, &qword_231609910);
    v34 = *(v2 + 48);
    v35 = v1[5];
    v36 = v40;
    *v40 = v35;
    result = sub_2315C7354(v33, v36 + v34, &qword_27DD607F0, &qword_231609910);
    if (!__OFADD__(v35, 1))
    {
      v1[5] = v35 + 1;
      v37 = v45;
      sub_2315C7354(v36, v45, &qword_27DD60550, &dword_231609010);
      v31 = v37;
      v32 = 0;
      return __swift_storeEnumTagSinglePayload(v31, v32, 1, v2);
    }
  }

  else
  {
    while (1)
    {
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v23 >= ((v20 + 64) >> 6))
      {
        v27 = v17;
        __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
        v30 = 0;
        goto LABEL_8;
      }

      v21 = *(v18 + 8 * v23);
      ++v19;
      if (v21)
      {
        v42 = v1;
        v43 = v20;
        v44 = v2;
        v19 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2315F1A7C(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = *(*(sub_231605E98() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D8, &qword_2316098D8);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v12 = sub_2316061C8();
  v2[17] = v12;
  v13 = *(v12 - 8);
  v2[18] = v13;
  v14 = *(v13 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v15 = sub_231606348();
  v2[5] = v15;
  v2[6] = sub_2315F32A0(&qword_280FE95A0, MEMORY[0x277D61020]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, a1, v15);

  return MEMORY[0x2822009F8](sub_2315F1D0C, 0, 0);
}

uint64_t sub_2315F1D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_64_1();
  a23 = v32;
  a24 = v33;
  a22 = v26;
  OUTLINED_FUNCTION_37_1();
  v34 = OUTLINED_FUNCTION_62_1();
  v35(v34);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v27);
  v39 = *(v31 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_lock);
  v40 = swift_task_alloc();
  v40[2] = v31;
  v40[3] = v29;
  v40[4] = v25;
  v40[5] = v30;
  sub_2315EECA0(sub_2315F32E8);

  sub_2315C9580(v29, v28, &qword_27DD607D0, &qword_2316098B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v27);
  v42 = v26[15];
  if (EnumTagSinglePayload == 1)
  {
    v43 = v26[15];
    OUTLINED_FUNCTION_27_2();
    sub_2315B2F7C(v44, v45, v46);
    OUTLINED_FUNCTION_26_1();
    (*(v24 + 8))(v27, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_33_1();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v56 = OUTLINED_FUNCTION_59_0();
    v57(v56);
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v59 = v26[19];
    v58 = v26[20];
    v60 = v26[17];
    v61 = sub_2316066E8();
    __swift_project_value_buffer(v61, qword_280FE9558);
    v62 = OUTLINED_FUNCTION_44_0();
    a11(v62);
    v63 = sub_2316066C8();
    sub_231606958();
    OUTLINED_FUNCTION_39();
    v65 = os_log_type_enabled(v63, v64);
    v67 = v26[18];
    v66 = v26[19];
    v68 = v26[17];
    if (v65)
    {
      v69 = OUTLINED_FUNCTION_60();
      v70 = OUTLINED_FUNCTION_63();
      a12 = v70;
      *v69 = 136315138;
      OUTLINED_FUNCTION_0_7();
      sub_2315F32A0(v71, v72);
      v73 = OUTLINED_FUNCTION_52_0();
      v75 = v74;
      v76 = *(v67 + 8);
      v77 = OUTLINED_FUNCTION_17_0();
      v78(v77);
      sub_2315B1574(v73, v75, &a12);
      OUTLINED_FUNCTION_30_1();

      *(v69 + 4) = v66;
      OUTLINED_FUNCTION_35_0(&dword_2315AF000, v79, v80, "Sending suggestions to connection for %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x231933730](v70, -1, -1);
      OUTLINED_FUNCTION_29();
    }

    else
    {

      v81 = *(v67 + 8);
      v82 = OUTLINED_FUNCTION_17_0();
      v83(v82);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v26[21] = v84;
    *v84 = v85;
    v84[1] = sub_2315F2058;
    v87 = v26[7];
    v86 = v26[8];
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_33_1();

    return sub_2315EED18();
  }
}

uint64_t sub_2315F2058()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315F213C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  v14 = v12[13];
  v13 = v12[14];
  v16 = v12[11];
  v15 = v12[12];
  v17 = v12[9];
  v18 = v12[10];
  v19 = v12[8];
  sub_231606908();
  v20 = *(v18 + 8);
  v21 = OUTLINED_FUNCTION_26();
  v22(v21);
  (*(v14 + 8))(v13, v15);
  v23 = v12[19];
  v24 = v12[20];
  v25 = v12[17];
  v26 = v12[18];
  v27 = v12[15];
  v28 = v12[14];
  v29 = v12[11];
  v30 = v12[8];
  sub_2315B2F7C(v12[16], &qword_27DD607D0, &qword_2316098B0);
  v31 = *(v26 + 8);
  v32 = OUTLINED_FUNCTION_72();
  v33(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 2);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_58();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_2315F226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a2;
  v8 = *(*(sub_231605E98() - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D8, &qword_2316098D8);
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v16 = sub_2316061C8();
  v4[17] = v16;
  v17 = *(v16 - 8);
  v4[18] = v17;
  v18 = *(v17 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);

  return MEMORY[0x2822009F8](sub_2315F24C8, 0, 0);
}

uint64_t sub_2315F24C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_64_1();
  a23 = v32;
  a24 = v33;
  a22 = v26;
  OUTLINED_FUNCTION_37_1();
  v34 = OUTLINED_FUNCTION_62_1();
  v35(v34);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v27);
  v39 = *(v31 + OBJC_IVAR____TtC22SiriSuggestionsSupport10Connection_lock);
  v40 = swift_task_alloc();
  v40[2] = v31;
  v40[3] = v29;
  v40[4] = v25;
  v40[5] = v30;
  sub_2315EECA0(sub_2315F3280);

  sub_2315C9580(v29, v28, &qword_27DD607D0, &qword_2316098B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v27);
  v42 = v26[15];
  if (EnumTagSinglePayload == 1)
  {
    v43 = v26[15];
    OUTLINED_FUNCTION_27_2();
    sub_2315B2F7C(v44, v45, v46);
    OUTLINED_FUNCTION_26_1();
    (*(v24 + 8))(v27, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_33_1();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v56 = OUTLINED_FUNCTION_59_0();
    v57(v56);
    if (qword_280FE9550 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v59 = v26[19];
    v58 = v26[20];
    v60 = v26[17];
    v61 = sub_2316066E8();
    __swift_project_value_buffer(v61, qword_280FE9558);
    v62 = OUTLINED_FUNCTION_44_0();
    a11(v62);
    v63 = sub_2316066C8();
    sub_231606958();
    OUTLINED_FUNCTION_39();
    v65 = os_log_type_enabled(v63, v64);
    v67 = v26[18];
    v66 = v26[19];
    v68 = v26[17];
    if (v65)
    {
      v69 = OUTLINED_FUNCTION_60();
      v70 = OUTLINED_FUNCTION_63();
      a12 = v70;
      *v69 = 136315138;
      OUTLINED_FUNCTION_0_7();
      sub_2315F32A0(v71, v72);
      v73 = OUTLINED_FUNCTION_52_0();
      v75 = v74;
      v76 = *(v67 + 8);
      v77 = OUTLINED_FUNCTION_17_0();
      v78(v77);
      sub_2315B1574(v73, v75, &a12);
      OUTLINED_FUNCTION_30_1();

      *(v69 + 4) = v66;
      OUTLINED_FUNCTION_35_0(&dword_2315AF000, v79, v80, "Sending suggestions to connection for %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x231933730](v70, -1, -1);
      OUTLINED_FUNCTION_29();
    }

    else
    {

      v81 = *(v67 + 8);
      v82 = OUTLINED_FUNCTION_17_0();
      v83(v82);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v26[21] = v84;
    *v84 = v85;
    v84[1] = sub_2315F2814;
    v87 = v26[7];
    v86 = v26[8];
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_33_1();

    return sub_2315EED18();
  }
}

uint64_t sub_2315F2814()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315F2920()
{
  result = sub_231605B98();
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

uint64_t dispatch thunk of EventDrivenSuggestionsClient.disconnect(for:)()
{
  OUTLINED_FUNCTION_15();
  v2 = *(*v0 + 192);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_58_1(v4);

  return v6(v5);
}

uint64_t dispatch thunk of EventDrivenSuggestionsClient.getSuggestionsForApp(for:)()
{
  OUTLINED_FUNCTION_21();
  v1 = *(*v0 + 200);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v4[1] = sub_2315B4660;
  OUTLINED_FUNCTION_40_1();

  return v7();
}

uint64_t dispatch thunk of EventDrivenSuggestionsClient.submit(event:)()
{
  OUTLINED_FUNCTION_15();
  v2 = *(*v0 + 208);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_58_1(v4);

  return v6(v5);
}

void sub_2315F2D54()
{
  sub_2315F2E8C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_231605B98();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_2316061C8();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2315F2E8C()
{
  if (!qword_280FE85B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD607C8, &unk_2316098A0);
    v0 = sub_2316069A8();
    if (!v1)
    {
      atomic_store(v0, &qword_280FE85B8);
    }
  }
}

uint64_t sub_2315F2F20()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607C8, &unk_2316098A0);
  OUTLINED_FUNCTION_24(v3);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_12(v9);
  *v10 = v11;
  v10[1] = sub_2315B4740;

  return sub_2315F0278(v2, v6, v7, v8, (v0 + 5), v0 + v5);
}

uint64_t sub_2315F3018()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12(v3);
  *v4 = v5;
  v4[1] = sub_2315B4660;

  return sub_2315B2268();
}

uint64_t sub_2315F30C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607D0, &qword_2316098B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315F3134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreFetchedSuggestionEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315F3198()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_2316061C8();
  OUTLINED_FUNCTION_24(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12(v5);
  *v6 = v7;
  v6[1] = sub_2315B4740;
  OUTLINED_FUNCTION_40_1();

  return sub_2315EB500();
}

uint64_t sub_2315F32A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_26_1()
{
  v5 = v2[19];
  v4 = v2[20];
  v7 = v2[17];
  v6 = v2[18];
  v8 = v2[15];
  v9 = v2[14];
  v12 = v2[11];
  v13 = v2[8];
  v10 = v2[16];

  return sub_2315B2F7C(v10, v0, v1);
}

void OUTLINED_FUNCTION_28_1()
{
  v1 = v0[42];
  v8 = v0[39];
  v9 = v0[40];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[33];
  v10 = v0[36];
  v11 = v0[34];
  v6 = v0[30];
  v7 = v0[31];
}

void OUTLINED_FUNCTION_35_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_37_1()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[12];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_46_1()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2048;
  v4 = *(*(v2 + 112) + 16);
}

BOOL OUTLINED_FUNCTION_51_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return sub_231606BC8();
}

uint64_t OUTLINED_FUNCTION_59_0()
{
  result = v0[14];
  v2 = v0[12];
  v3 = *(v0[13] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_67_1(void *a1)
{
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v1;
  a1[5] = v2;

  return sub_231605E98();
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  v2 = v0[23];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];

  return sub_2316066E8();
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
}

uint64_t OUTLINED_FUNCTION_72_0()
{
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];

  return sub_2316066E8();
}

uint64_t OUTLINED_FUNCTION_73()
{
}

void *sub_2315F3588(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = sub_231605DD8();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = v5(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      MEMORY[0x231932CF0](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_231606878();
      }

      result = sub_231606898();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void *sub_2315F36F4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v7[2] = a1;
  sub_2315B4648(a2, (v7 + 3));
  v7[8] = a3;
  v7[9] = a4;
  v7[10] = a5;
  sub_2315B4648(a6, (v7 + 11));
  sub_2315B4648(a7, (v7 + 16));
  return v7;
}

void sub_2315F376C()
{
  OUTLINED_FUNCTION_93();
  v4 = v0;
  v6 = v5;
  OUTLINED_FUNCTION_79_0();
  v8 = v7;
  v36 = *v0;
  v37 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v13);
  v35 = &v33 - v14;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v15 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v15, qword_280FE9578);

  v16 = sub_2316066C8();
  v17 = sub_231606968();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_60();
    v33 = v6;
    v34 = v1;
    v19 = v3;
    v20 = v18;
    v21 = OUTLINED_FUNCTION_63();
    v38 = v21;
    *v20 = 136315138;
    v22 = v37;
    *(v20 + 4) = sub_2315B1574(v37, v8, &v38);
    _os_log_impl(&dword_2315AF000, v16, v17, "executing SiriSuggestionsXPCService suggestNext on request: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_20();
    v3 = v19;
    v6 = v33;
    v1 = v34;
    OUTLINED_FUNCTION_20();
  }

  else
  {

    v22 = v37;
  }

  v23 = v4[2];
  sub_2316068E8();
  v24 = v35;
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_76_0();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v22;
  v29[5] = v8;
  v29[6] = v2;
  v29[7] = v1;
  v29[8] = v23;
  v29[9] = v4;
  v29[10] = v3;
  v29[11] = v6;
  v29[12] = v36;

  sub_2315B2F24(v2, v1);

  v30 = OUTLINED_FUNCTION_5_8();
  sub_2315FD77C(v30, v31, v24, v32, v29);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315F39B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v18;
  *(v8 + 88) = v19;
  *(v8 + 64) = v17;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = sub_231605E98();
  *(v8 + 96) = v9;
  v10 = *(v9 - 8);
  *(v8 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v12 = sub_2316066B8();
  *(v8 + 120) = v12;
  v13 = *(v12 - 8);
  *(v8 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F3AEC, 0, 0);
}

uint64_t sub_2315F3AEC()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[17];
  v2 = sub_2316064E8();
  sub_2316064C8();

  sub_231605FF8();
  v3 = sub_2316064E8();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_83_0();

  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_2315F3BD4;
  v5 = v0[11];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return sub_2315F4480(v10, v8, v9, v6, v7);
}

uint64_t sub_2315F3BD4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[19] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8]();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v3[20] = v9;
    *v9 = v10;
    v9[1] = sub_2315F3D34;
    v11 = v3[14];
    v12 = v3[7];
    v13 = v3[3];
    v14 = v3[4];

    return StatefulSuggestionsClient.suggestNext(requestId:)();
  }
}

uint64_t sub_2315F3D34()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F3E1C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[8];
  v4 = sub_231605E38();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = sub_2315F3588(sub_2315FCA78, v5, v4);
  v0[21] = v6;
  v0[22] = v1;

  v7 = v3[14];
  v8 = v3[15];
  __swift_project_boxed_opaque_existential_1(v3 + 11, v7);
  v9 = *(MEMORY[0x277D55838] + 4);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_2315F3F38;

  return MEMORY[0x2821B7128](v6, v7, v8);
}

uint64_t sub_2315F3F38()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 184);
  v3 = *(v1 + 168);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F403C()
{
  OUTLINED_FUNCTION_49();
  v42 = v0;
  v3 = v0[22];
  v4 = v0[14];
  v5 = v0[12];
  v6 = sub_231604F78();
  OUTLINED_FUNCTION_32(v6);
  v7 = sub_231604F68();
  sub_231604F48();
  OUTLINED_FUNCTION_4_4();
  sub_2315B3174(v8, v9);
  OUTLINED_FUNCTION_53();
  sub_231604F58();
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  if (v3)
  {

    v13 = *(v11 + 8);
    v14 = OUTLINED_FUNCTION_53();
    v15(v14);
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v16 = sub_2316066E8();
    v17 = OUTLINED_FUNCTION_17_5(v16, qword_280FE9578);
    v18 = sub_2316066C8();
    sub_231606978();
    OUTLINED_FUNCTION_65_0();
    if (OUTLINED_FUNCTION_71_1())
    {
      OUTLINED_FUNCTION_60();
      v19 = OUTLINED_FUNCTION_21_2();
      v41 = v19;
      *v10 = 136315138;
      v0[2] = v3;
      v20 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
      v21 = OUTLINED_FUNCTION_89_0();
      sub_2315B1574(v21, v22, &v41);
      OUTLINED_FUNCTION_72_1();
      *(v10 + 4) = v2;
      OUTLINED_FUNCTION_35_1(&dword_2315AF000, v23, v7, "could not suggest next turn info because of: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];
    sub_2315F53D4();
    v27 = OUTLINED_FUNCTION_31_2();
    v25(v27);
  }

  else
  {
    OUTLINED_FUNCTION_75_0();
    v28 = v0[10];
    (v0[9])();
    sub_2315B300C(v1, v2);

    v29 = *(v11 + 8);
    v30 = OUTLINED_FUNCTION_53();
    v31(v30);
  }

  v33 = v0[16];
  v32 = v0[17];
  v35 = v0[14];
  v34 = v0[15];
  sub_231605FF8();
  sub_2316064E8();
  OUTLINED_FUNCTION_60_0();

  v36 = *(v33 + 8);
  v37 = OUTLINED_FUNCTION_36();
  v38(v37);

  OUTLINED_FUNCTION_14();

  return v39();
}

uint64_t sub_2315F42BC()
{
  OUTLINED_FUNCTION_49();
  v27 = v1;
  v4 = v1[19];
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v5 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v5, qword_280FE9578);
  v6 = v4;
  v7 = sub_2316066C8();
  sub_231606978();

  if (OUTLINED_FUNCTION_7())
  {
    OUTLINED_FUNCTION_60();
    v8 = OUTLINED_FUNCTION_21_2();
    v26 = v8;
    *v2 = 136315138;
    v1[2] = v4;
    v9 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v10 = OUTLINED_FUNCTION_89_0();
    sub_2315B1574(v10, v11, &v26);
    OUTLINED_FUNCTION_72_1();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_35_1(&dword_2315AF000, v12, v0, "could not suggest next turn info because of: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v14 = v1[9];
  v13 = v1[10];
  v15 = v1[8];
  sub_2315F53D4();
  v16 = OUTLINED_FUNCTION_31_2();
  v14(v16);

  v18 = v1[16];
  v17 = v1[17];
  v20 = v1[14];
  v19 = v1[15];
  sub_231605FF8();
  sub_2316064E8();
  OUTLINED_FUNCTION_60_0();

  v21 = *(v18 + 8);
  v22 = OUTLINED_FUNCTION_36();
  v23(v22);

  OUTLINED_FUNCTION_14();

  return v24();
}

uint64_t sub_2315F4480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60540, &unk_231609000);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60830, &qword_231609AA8) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F45BC, 0, 0);
}

uint64_t sub_2315F45BC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_2315F8058();
  v5 = *(v4 + 16);
  if (v5)
  {
    v64 = v0[12];
    v65 = v0[14];
    v62 = v0[10];
    v63 = v0[11];
    v60 = v0[8];
    v61 = v0[9];
    v76 = MEMORY[0x277D84F90];
    sub_231604150(0, v5, 0);
    v6 = v76;
    v7 = sub_2315FC1E8(v4);
    v12 = 0;
    v13 = v4 + 64;
    v55 = v8;
    v56 = v5;
    v54 = v4 + 72;
    v58 = v4;
    v59 = v4 + 64;
    v57 = v0;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
    {
      if ((*(v13 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v4 + 36) != v8)
      {
        goto LABEL_27;
      }

      v68 = 1 << v7;
      v69 = v7 >> 6;
      v67 = v8;
      v66 = v9;
      v14 = *(v60 + 48);
      v15 = v0[13];
      v16 = v0[12];
      v75 = v0[11];
      v72 = v0[14];
      v73 = v0[10];
      v17 = v6;
      v18 = *(v4 + 56);
      v19 = (*(v4 + 48) + 16 * v7);
      v20 = v19[1];
      v70 = *v19;
      v21 = v7;
      v22 = sub_2316061F8();
      OUTLINED_FUNCTION_1_0(v22);
      v24 = v23;
      v74 = v21;
      (*(v23 + 16))(v15 + v14, v18 + *(v25 + 72) * v21, v22);
      *v16 = v70;
      *(v64 + 8) = v20;
      v26 = *(v24 + 32);
      v26(&v16[*(v60 + 48)], v15 + v14, v22);
      v71 = *(v60 + 48);
      sub_2315FC964(v16, v75, &qword_27DD60540, &unk_231609000);
      v27 = *(v63 + 8);
      v28 = *(v60 + 48);
      *v72 = *v75;
      *(v65 + 8) = v27;
      sub_2315FC228(v16, v73);
      v29 = *(v62 + 8);

      v26(&v72[v71], v73 + *(v60 + 48), v22);
      (*(v24 + 8))(&v75[v28], v22);
      v31 = *(v17 + 16);
      v30 = *(v17 + 24);
      v6 = v17;
      if (v31 >= v30 >> 1)
      {
        sub_231604150(v30 > 1, v31 + 1, 1);
        v6 = v17;
      }

      v0 = v57;
      v32 = v57[14];
      *(v6 + 16) = v31 + 1;
      sub_2315FC228(v32, v6 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v31);
      v4 = v58;
      v13 = v59;
      v33 = 1 << *(v58 + 32);
      v7 = v74;
      if (v74 >= v33)
      {
        goto LABEL_28;
      }

      v34 = *(v59 + 8 * v69);
      if ((v34 & v68) == 0)
      {
        goto LABEL_29;
      }

      v8 = v67;
      if (*(v58 + 36) != v67)
      {
        goto LABEL_30;
      }

      v35 = v34 & (-2 << (v74 & 0x3F));
      if (v35)
      {
        v33 = __clz(__rbit64(v35)) | v74 & 0x7FFFFFFFFFFFFFC0;
        v36 = v56;
      }

      else
      {
        v37 = v69 << 6;
        v38 = (v54 + 8 * v69);
        v39 = v69 + 1;
        v36 = v56;
        while (v39 < (v33 + 63) >> 6)
        {
          v41 = *v38++;
          v40 = v41;
          v37 += 64;
          ++v39;
          if (v41)
          {
            sub_2315FC348(v74, v67, v66 & 1);
            v33 = __clz(__rbit64(v40)) + v37;
            goto LABEL_19;
          }
        }

        sub_2315FC348(v74, v67, v66 & 1);
      }

LABEL_19:
      v9 = 0;
      ++v12;
      v7 = v33;
      v8 = v55;
      if (v12 == v36)
      {

        goto LABEL_22;
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
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_22:
    v0[16] = v6;
    v42 = v0[15];
    v43 = v0[6];
    v44 = v0[2];
    v45 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60838, &qword_231609AB0);
    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    v50 = swift_allocObject();
    v0[17] = v50;
    v50[2] = v43;
    v50[3] = v44;
    v50[4] = v45;
    v51 = *(MEMORY[0x277D60B28] + 4);

    v52 = swift_task_alloc();
    v0[18] = v52;
    *v52 = v0;
    v52[1] = sub_2315F4B44;
    v8 = v0[15];
    v11 = v0[8];
    v9 = &unk_231609AC0;
    v7 = v6;
    v10 = v50;
  }

  return MEMORY[0x2821C6B08](v7, v8, v9, v10, v11);
}

void sub_2315F4B44()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (!v0)
  {
    v12 = v3[16];
    v11 = v3[17];
    v14 = v3[14];
    v13 = v3[15];
    v16 = v3[12];
    v15 = v3[13];
    v19 = v3 + 10;
    v17 = v3[10];
    v18 = v19[1];

    sub_2315B2F7C(v13, &qword_27DD60830, &qword_231609AA8);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_58();
}

uint64_t sub_2315F4CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v18[0] = a3;
  v18[1] = a2;
  v20 = a4;
  v19 = sub_231605098();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231606158();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605DA8();
  v14 = (*(v10 + 88))(v13, v9);
  v15 = *MEMORY[0x277D60B78];
  result = (*(v10 + 8))(v13, v9);
  v17 = 0;
  if (v14 == v15)
  {
    sub_231605E78();
    v17 = sub_2315F4EBC(a1, v8);
    result = (*(v5 + 8))(v8, v19);
  }

  *v20 = v17;
  return result;
}

uint64_t sub_2315F4EBC(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60868, &qword_231609B88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60870, &qword_231609B90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60878, &qword_231609B98);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60768, &qword_231609570);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v47 - v13;
  v48 = sub_2316065D8();
  v14 = *(v48 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v48);
  v58 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_231606478();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_231605EF8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v47 - v28;
  sub_231605D68();
  v30 = sub_231605EC8();
  v52 = v31;
  v53 = v30;
  v47 = *(v23 + 8);
  v47(v29, v22);
  sub_231605D88();
  v51 = v32;
  sub_231605D78();
  v33 = sub_231606468();
  v49 = v34;
  v50 = v33;
  (*(v18 + 8))(v21, v17);
  (*(v14 + 104))(v58, *MEMORY[0x277D55860], v48);
  v35 = sub_231606428();
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v35);
  v56 = sub_231605068();
  v48 = v36;
  v37 = sub_231605048();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v37);
  v38 = sub_2316066F8();
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v38);
  sub_231605D68();
  sub_231605EE8();
  v47(v27, v22);
  v39 = v57;
  sub_231605D98();
  v40 = sub_231605F78();
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
  v41 = sub_231606648();
  v42 = sub_231606638();
  v61 = v41;
  v62 = MEMORY[0x277D55898];
  v60 = v42;
  v43 = sub_2316065F8();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  return sub_2316065E8();
}

id sub_2315F53D4()
{
  sub_231606A28();

  swift_getErrorValue();
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60828, &qword_231609A70);
  v0 = sub_2316067A8();
  MEMORY[0x231932CB0](v0);

  v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_2315FC030(0xD000000000000023, 0x800000023160B4C0, 1, 0);
}

void sub_2315F54E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_231605018();
  if (a3)
  {
    v7 = sub_231604F88();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_2315F556C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F5668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_78();
  v20 = *(v16 + 72);
  (*(v16 + 64))(0);
  OUTLINED_FUNCTION_77_0();
  v32 = v21;
  v33 = v22;
  sub_231605FF8();
  OUTLINED_FUNCTION_75_0();
  sub_2316064E8();
  OUTLINED_FUNCTION_56_1();

  (*(v18 + 8))(v17, v32);
  (*(v15 + 8))(v14, v33);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_2315F573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  if (qword_280FE9570 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v27 = v22[19];
  v28 = sub_2316066E8();
  v29 = OUTLINED_FUNCTION_17_5(v28, qword_280FE9578);
  v30 = sub_2316066C8();
  sub_231606978();
  OUTLINED_FUNCTION_65_0();
  if (OUTLINED_FUNCTION_71_1())
  {
    v31 = v22[19];
    v32 = OUTLINED_FUNCTION_60();
    v23 = OUTLINED_FUNCTION_63();
    a11 = v23;
    *v32 = 136315138;
    v22[2] = v31;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v34 = OUTLINED_FUNCTION_89_0();
    v36 = sub_2315B1574(v34, v35, &a11);

    *(v32 + 4) = v36;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_17();
  }

  v42 = v22[19];
  v44 = v22[9];
  v43 = v22[10];
  v45 = v22[8];
  sub_2315F53D4();
  OUTLINED_FUNCTION_67_2();
  (v45)();

  OUTLINED_FUNCTION_77_0();
  v57 = v46;
  v58 = v47;
  sub_231605FF8();
  OUTLINED_FUNCTION_75_0();
  sub_2316064E8();
  OUTLINED_FUNCTION_56_1();

  (*(v45 + 8))(v23, v57);
  (*(v44 + 8))(v42, v58);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, v57, v58, a11, a12, a13, a14);
}

uint64_t sub_2315F5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_2315FC964(a3, v22 - v9, &qword_27DD60398, &qword_231609BD0);
  v11 = sub_2316068E8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_2315B2F7C(v10, &qword_27DD60398, &qword_231609BD0);
  }

  else
  {
    sub_2316068D8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2316068A8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2316067C8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2315B2F7C(a3, &qword_27DD60398, &qword_231609BD0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2315B2F7C(a3, &qword_27DD60398, &qword_231609BD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_2315F5BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = *v23;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v40);
  v42 = &a9 - v41;
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  OUTLINED_FUNCTION_78_0();
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v35;
  v47[5] = v33;
  v47[6] = v23;
  v47[7] = v31;
  v47[8] = v29;
  v47[9] = v27;
  v47[10] = v25;
  v47[11] = v36;

  v48 = OUTLINED_FUNCTION_5_8();
  sub_2315F5918(v48, v49, v42, v50, v47);

  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315F5CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v21;
  *(v8 + 56) = v20;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_231606608();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = sub_231606628();
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  v15 = sub_2316066E8();
  *(v8 + 136) = v15;
  v16 = *(v15 - 8);
  *(v8 + 144) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F5E84, 0, 0);
}

uint64_t sub_2315F5E84()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[19];
  v2 = v0[3];
  sub_2316064B8();

  v3 = sub_2316066C8();
  v4 = sub_231606968();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = OUTLINED_FUNCTION_60();
    v27 = OUTLINED_FUNCTION_63();
    *v11 = 136315138;
    v12 = OUTLINED_FUNCTION_59_1();
    *(v11 + 4) = sub_2315B1574(v12, v13, v14);
    _os_log_impl(&dword_2315AF000, v3, v4, "Got autocomplete query: %s on XPC service", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  (*(v7 + 8))(v6, v8);
  v15 = v0[4];
  v16 = v15[15];
  __swift_project_boxed_opaque_existential_1(v15 + 11, v15[14]);
  v17 = *(MEMORY[0x277D55808] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[20] = v18;
  *v18 = v19;
  v18[1] = sub_2315F6024;
  v20 = v0[16];
  v21 = v0[5];
  v22 = v0[6];
  v23 = v0[2];
  v24 = v0[3];
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2821B70F8]();
}

uint64_t sub_2315F6024()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315F6120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4_0();
  v11 = *(v10 + 168);
  v12 = *(v10 + 128);
  v13 = *(v10 + 72);
  sub_231605A98();
  if (v11)
  {
    (*(*(v10 + 112) + 8))(*(v10 + 128), *(v10 + 104));
    OUTLINED_FUNCTION_73_0();
    (*(v14 + 104))(v11, *MEMORY[0x277D55888]);

    OUTLINED_FUNCTION_59_1();
    sub_231606618();
    OUTLINED_FUNCTION_87();
    v15 = OUTLINED_FUNCTION_55_1();
    v16(v15);
  }

  else
  {
    v17 = *(v10 + 128);
    v18 = *(v10 + 104);
    v19 = *(v10 + 112);
    v20 = *(v10 + 64);
    (*(v10 + 56))();
    v21 = OUTLINED_FUNCTION_53();
    sub_2315B300C(v21, v22);
    (*(v19 + 8))(v17, v18);
    v23 = *(v10 + 152);
    v24 = *(v10 + 120);
    v25 = *(v10 + 128);
    v26 = *(v10 + 96);
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_94();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_2315F62F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4_0();
  v13 = v11[21];
  OUTLINED_FUNCTION_73_0();
  (*(v14 + 104))(v10, *MEMORY[0x277D55888]);

  OUTLINED_FUNCTION_59_1();
  sub_231606618();
  OUTLINED_FUNCTION_87();
  if (v10)
  {
    v15 = OUTLINED_FUNCTION_55_1();
    v16(v15);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_45_1();
    v18(v17);
    v19 = sub_2315F53D4();
    v20 = OUTLINED_FUNCTION_53();
    v12(v20);

    v21 = OUTLINED_FUNCTION_53();
    sub_2315B300C(v21, v22);

    v23 = v11[19];
    v24 = v11[15];
    v25 = v11[16];
    v26 = v11[12];
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_94();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

void sub_2315F6540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(void), uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v76 = v33;
  v77 = v34;
  v36 = v35;
  v38 = v37;
  v78 = a23;
  v75 = *v23;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v42);
  v44 = &v73 - v43;
  sub_2315B4568((v23 + 3), v80);
  v45 = v23[10];
  if (sub_2315E96B8(v38, v36, v24[8], v24[9]))
  {
    v74 = a22;
    sub_2316068E8();
    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    sub_2315B4568(v80, v79);
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v32;
    v50[5] = v30;
    v50[6] = v28;
    v50[7] = v26;
    v50[8] = v38;
    v50[9] = v36;
    v51 = v77;
    v50[10] = v76;
    v50[11] = v51;
    sub_2315B4648(v79, (v50 + 12));
    v50[17] = a21;
    v50[18] = v24;
    v50[19] = v75;
    sub_2315B2F24(v32, v30);
    sub_2315FC7EC(v28, v26);

    swift_unknownObjectRetain();

    v52 = OUTLINED_FUNCTION_5_8();
    sub_2315FD77C(v52, v53, v44, v54, v50);

    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v55 = sub_2316066E8();
    OUTLINED_FUNCTION_47(v55, qword_280FE9578);
    v56 = sub_2316066C8();
    v57 = sub_231606968();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v74;
    if (v58)
    {
      v60 = OUTLINED_FUNCTION_33();
      *v60 = 0;
      _os_log_impl(&dword_2315AF000, v56, v57, "Finished in app request setup. Events will flow when ready through the bridge", v60, 2u);
      OUTLINED_FUNCTION_17();
    }

    (v59)(0);
  }

  else
  {
    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v61 = sub_2316066E8();
    OUTLINED_FUNCTION_17_5(v61, qword_280FE9578);

    v62 = sub_2316066C8();
    v63 = sub_231606978();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_91_0();
      *&v79[0] = OUTLINED_FUNCTION_90_0();
      *v64 = 136315394;
      v65 = OUTLINED_FUNCTION_72();
      *(v64 + 4) = sub_2315B1574(v65, v66, v67);
      *(v64 + 12) = 2080;
      sub_231605A88();
      v68 = sub_231605A68();
      v70 = sub_2315B1574(v68, v69, v79);

      *(v64 + 14) = v70;
      _os_log_impl(&dword_2315AF000, v62, v63, "Unauthorised access to query %s suggestions. Check entitlement of %s is set correctly", v64, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_20();
    }

    sub_2315FC0E0();
    v71 = swift_allocError();
    *v72 = 0;
    v72[1] = 0;
    a22();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315F68F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = v31;
  *(v8 + 160) = v29;
  *(v8 + 176) = v30;
  *(v8 + 144) = v28;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 104) = a4;
  v9 = sub_231605E98();
  *(v8 + 200) = v9;
  v10 = *(v9 - 8);
  *(v8 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D0, &unk_231608660) - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60850, &qword_231609B30);
  *(v8 + 232) = v13;
  v14 = *(v13 - 8);
  *(v8 + 240) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60858, &qword_231609B38);
  *(v8 + 256) = v16;
  v17 = *(v16 - 8);
  *(v8 + 264) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v19 = *(*(sub_2316061C8() - 8) + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v20 = sub_2316060C8();
  *(v8 + 288) = v20;
  v21 = *(v20 - 8);
  *(v8 + 296) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v23 = sub_2316061F8();
  *(v8 + 312) = v23;
  v24 = *(v23 - 8);
  *(v8 + 320) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315F6BC8, 0, 0);
}

uint64_t sub_2315F6BC8()
{
  v100 = v0;
  v2 = *(v0 + 192);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = 0;
  v20 = sub_2315F8058();
  v21 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E0, &unk_231609B40);
  v22 = sub_231606B18();
  v23 = 0;
  *(v0 + 336) = v22;
  v24 = v20 + 64;
  v25 = 1 << *(v20 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v20 + 64);
  v28 = (v25 + 63) >> 6;
  v93 = v21;
  v92 = v22 + 64;
  v94 = v22;
  if (v27)
  {
    while (1)
    {
      v29 = __clz(__rbit64(v27));
      v95 = (v27 - 1) & v27;
LABEL_16:
      v21 = v29 | (v23 << 6);
      v32 = *(v0 + 328);
      v33 = *(v0 + 312);
      v34 = *(v20 + 56);
      v1 = v20;
      v35 = (*(v20 + 48) + 16 * v21);
      v36 = v35[1];
      v97 = *v35;
      v5 = v93;
      (*(v93 + 16))(v32, v34 + *(v93 + 72) * v21, v33);

      sub_2316061E8();
      (*(v93 + 8))(v32, v33);
      *(v92 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v37 = (v94[6] + 16 * v21);
      *v37 = v97;
      v37[1] = v36;
      sub_2315CAB60((v0 + 16), (v94[7] + 48 * v21));
      v38 = v94[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        break;
      }

      v94[2] = v40;
      v20 = v1;
      v27 = v95;
      if (!v95)
      {
        goto LABEL_11;
      }
    }

LABEL_34:
    __break(1u);
    OUTLINED_FUNCTION_0_5();
    v6 = sub_2316066E8();
    v7 = OUTLINED_FUNCTION_17_5(v6, qword_280FE9578);
    v8 = sub_2316066C8();
    sub_231606978();
    OUTLINED_FUNCTION_65_0();
    if (OUTLINED_FUNCTION_71_1())
    {
      OUTLINED_FUNCTION_60();
      v9 = OUTLINED_FUNCTION_21_2();
      v99[0] = v9;
      *v21 = 136315138;
      *(v0 + 64) = v5;
      v10 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
      v11 = sub_2316067A8();
      sub_2315B1574(v11, v12, v99);
      OUTLINED_FUNCTION_72_1();
      *(v21 + 4) = v1;
      OUTLINED_FUNCTION_35_1(&dword_2315AF000, v13, v28, "could not suggest next turn info because of: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_1();
    }

    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = sub_2315F53D4();
    v17 = sub_231604F88();

    [v14 connectionErrorWithError_];
    OUTLINED_FUNCTION_36_1();

    OUTLINED_FUNCTION_14();

    return v18();
  }

  else
  {
LABEL_11:
    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v23 >= v28)
      {
        break;
      }

      v31 = *(v24 + 8 * v23);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v95 = (v31 - 1) & v31;
        goto LABEL_16;
      }
    }

    v41 = *(v0 + 128);

    if (v41 >> 60 != 15)
    {
      v43 = *(v0 + 120);
      v42 = *(v0 + 128);
      v44 = sub_231604F38();
      OUTLINED_FUNCTION_32(v44);
      v45 = OUTLINED_FUNCTION_59_1();
      sub_2315B2F24(v45, v46);
      sub_231604F28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60500, &qword_231608FB8);
      sub_2315FC800();
      sub_231604F08();
      v47 = *(v0 + 88);
      v48 = qword_280FE9570;

      if (v48 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v49 = sub_2316066E8();
      OUTLINED_FUNCTION_47(v49, qword_280FE9578);

      v50 = sub_2316066C8();
      v51 = sub_231606968();

      v52 = os_log_type_enabled(v50, v51);
      v53 = *(v0 + 120);
      v54 = *(v0 + 128);
      if (v52)
      {
        v55 = OUTLINED_FUNCTION_60();
        v56 = OUTLINED_FUNCTION_63();
        v99[0] = v56;
        *v55 = 136315138;
        *(v0 + 96) = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60860, &qword_231609B50);
        v98 = v53;
        sub_231606998();

        v57 = OUTLINED_FUNCTION_17_0();
        v60 = sub_2315B1574(v57, v58, v59);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_2315AF000, v50, v51, "Decoded intentToSuggest: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_20();

        v61 = v98;
      }

      else
      {

        v61 = v53;
      }

      sub_2315C95D0(v61, v54);
    }

    if (qword_280FE9570 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v62 = *(v0 + 160);
    v63 = *(v0 + 144);
    v64 = sub_2316066E8();
    *(v0 + 344) = OUTLINED_FUNCTION_47(v64, qword_280FE9578);

    v65 = sub_2316066C8();
    v66 = sub_231606958();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = *(v0 + 160);
      v96 = *(v0 + 152);
      v69 = *(v0 + 136);
      v68 = *(v0 + 144);
      v70 = OUTLINED_FUNCTION_63();
      v99[0] = swift_slowAlloc();
      *v70 = 136315650;
      *(v70 + 4) = sub_2315B1574(v69, v68, v99);
      *(v70 + 12) = 2080;

      v71 = OUTLINED_FUNCTION_68_0();
      v74 = sub_2315B1574(v71, v72, v73);

      *(v70 + 14) = v74;
      *(v70 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
      v75 = sub_231606718();
      v77 = sub_2315B1574(v75, v76, v99);

      *(v70 + 24) = v77;
      _os_log_impl(&dword_2315AF000, v65, v66, "XPC Stream for appBundleId: %s, placementId: %s, entities: %s opened.", v70, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_22_4();
    }

    v78 = *(v0 + 304);
    v79 = *(v0 + 280);
    v81 = *(v0 + 160);
    v80 = *(v0 + 168);
    v83 = *(v0 + 144);
    v82 = *(v0 + 152);
    v84 = *(v0 + 136);

    sub_231606198();

    sub_231606068();
    v85 = v80[3];
    v86 = v80[4];
    __swift_project_boxed_opaque_existential_1(v80, v85);
    v87 = *(MEMORY[0x277D604D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v0 + 352) = v88;
    *v88 = v89;
    v88[1] = sub_2315F7414;
    v90 = *(v0 + 304);
    v91 = *(v0 + 272);

    return MEMORY[0x2821C5D70](v91, v90, v85, v86);
  }
}