uint64_t sub_227FF0DE8(uint64_t a1)
{
  v3 = *(*v2 + 208);
  v4 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[23];
    v7 = v4[20];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227FF0F48, 0, 0);
  }
}

uint64_t sub_227FF0F48()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v49 = v0[21];
  v52 = v0[20];
  v5 = v0[19];
  v53 = v0[18];
  v54 = v0[28];
  v7 = v0[16];
  v6 = v0[17];
  v46 = v0[15];
  v0[11] = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v0[12] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  v55 = v0 + 8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_227FF9A3C(v7, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  (*(v4 + 16))(v3, v6, v49);
  v9 = sub_22813898C();
  v11 = v10;
  sub_2281388CC();
  v12 = sub_22813895C();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v47 = v15;
  v48 = v14;
  v16 = sub_22813893C();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v50 = v19;
  v51 = v18;
  (*(v4 + 8))(v3, v49);
  *v2 = v9;
  *(v2 + 8) = v11;
  *(v2 + 16) = 0;
  (*(v5 + 32))(v2 + v1[6], v52, v53);
  v20 = (v2 + v1[7]);
  *v20 = v48;
  v20[1] = v47;
  v21 = (v2 + v1[8]);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v2 + v1[9]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v2 + v1[10]);
  *v23 = v51;
  v23[1] = v50;
  v24 = (v2 + v1[11]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *(v2 + v1[12]) = 0;
  type metadata accessor for SharedData();
  v25 = swift_allocObject();
  v0[29] = v25;
  type metadata accessor for SKAssetManager();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  swift_initStackObject();
  v26 = SKAssetManager.init()();
  v27 = type metadata accessor for FilterRules();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = FilterRules.init(assetManager:)(v26);
  if (v54)
  {

    v31 = v0[27];
    sub_227FFA994(v0[25], type metadata accessor for PriorityModelSession.Input);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v55);
    v32 = v0[25];
    v33 = v0[23];
    v34 = v0[20];

    v35 = v0[1];

    return v35();
  }

  else
  {
    v37 = v0[15];
    v38 = *(v25 + 16);
    *(v25 + 16) = v30;

    v39 = *(v25 + 24);
    *(v25 + 24) = v46;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v40 = v0[27];
    v41 = v0[25];
    v0[13] = v25;
    v42 = swift_task_alloc();
    v0[30] = v42;
    v42[2] = v40;
    v42[3] = v41;
    v42[4] = v55;
    v42[5] = v46;
    v43 = *(MEMORY[0x277D85A70] + 4);
    v44 = swift_task_alloc();
    v0[31] = v44;
    sub_228138ACC();
    *v44 = v0;
    v44[1] = sub_227FF1348;
    v45 = v0[14];

    return MEMORY[0x282200908](v45, v0 + 13, &unk_22813B468, v42, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
  }
}

uint64_t sub_227FF1348()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  v4 = *(v2 + 240);

  if (v0)
  {
    v5 = sub_227FF152C;
  }

  else
  {
    v5 = sub_227FF146C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227FF146C()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[20];

  sub_227FFA994(v3, type metadata accessor for PriorityModelSession.Input);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227FF152C()
{
  v1 = v0[29];

  v2 = v0[32];
  v3 = v0[27];
  sub_227FFA994(v0[25], type metadata accessor for PriorityModelSession.Input);

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[20];

  v7 = v0[1];

  return v7();
}

uint64_t sub_227FF15E8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v2[14] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF167C, 0, 0);
}

uint64_t sub_227FF167C()
{
  v1 = v0[12];
  v2 = *(v0[13] + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_sessionCache);
  v0[5] = v0[14];
  v0[6] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_227FF9A3C(v1, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  os_unfair_lock_lock((v2 + 16));
  v4 = sub_228108028((v2 + 24), v0 + 2);
  os_unfair_lock_unlock((v2 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 2);
  v5 = v0[15];
  if (v4)
  {
    v6 = v0[15];

    v7 = v0[1];

    return v7(v4);
  }

  else
  {
    v9 = v0[14];
    sub_227FF9A3C(v0[12], v0[15], type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v10 = v9[7];
    v11 = (v5 + v9[6]);
    v13 = *v11;
    v12 = v11[1];
    v15 = *(v5 + v10);
    v14 = *(v5 + v10 + 8);
    LODWORD(v9) = *(v5 + v9[8]);
    swift_bridgeObjectRetain_n();

    sub_227FFA994(v5, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v0[10] = &type metadata for AnySessionInfo;
    v0[11] = &off_283B5E2B0;
    v16 = swift_allocObject();
    v0[7] = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v12;
    *(v16 + 32) = v15;
    *(v16 + 40) = v14;
    *(v16 + 48) = v9;
    *(v16 + 56) = v15;
    *(v16 + 64) = v14;
    *(v16 + 72) = v9;
    type metadata accessor for PriorityModelSession();
    swift_allocObject();
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_227FF18E4;

    return PriorityModelSession.init(sessionInfo:)((v0 + 7));
  }
}

uint64_t sub_227FF18E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_227FF1A3C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 120);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_227FF1A3C()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_227FF1CD4()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 432) = v4;
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 440) = boxed_opaque_existential_1;
  sub_227FF9A3C(v2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 448) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 456) = v7;
  *(v0 + 464) = v8;
  sub_227FFADC8(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 472) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 480) = v10;
  *(v10 + 16) = sub_227FFB2D4;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = swift_task_alloc();
  *(v0 + 488) = v11;
  *v11 = v0;
  v11[1] = sub_227FF1E88;
  v12 = *(v0 + 304);
  v13 = *(v0 + 312);

  return sub_227FF15E8(v12);
}

uint64_t sub_227FF1E88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 488);
  v5 = *v2;
  v3[62] = a1;
  v3[63] = v1;

  if (v1)
  {
    v3[66] = v1;
    v6 = sub_227FF2C14;
  }

  else
  {
    v6 = sub_227FF1FAC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227FF1FAC()
{
  v1 = v0[37];
  v2 = *(sub_228138A3C() + 16);

  if (v2)
  {
    v42 = v0[57];
    v43 = v0[54];
    v3 = v0[49];
    v4 = v0[47];
    v45 = v0[48];
    v46 = v0[46];
    v47 = v0[45];
    v48 = v0[63];
    v5 = v0[37];
    v44 = v0[38];
    v6 = v0[36];
    sub_228138A3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5B8, &qword_22813B330);
    v7 = sub_228138AAC();
    v8 = *(v7 - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22813A4B0;
    v12 = v11 + v10;
    v13 = v0 + 18;
    (*(v8 + 16))(v12, v6, v7);
    sub_227FED66C(v11, sub_228133B20, MEMORY[0x277D4AFC8]);
    sub_227FFAA00(&qword_27D81E5C0, MEMORY[0x277D4AFC8]);
    sub_228138B9C();
    v0[21] = v43;
    v0[22] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 18);
    sub_227FF9A3C(v44, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    (*(v4 + 16))(v45, v3, v46);
    sub_2280CCE9C(v45, v47);
    if (v48)
    {
      v21 = v0[62];
      v22 = v0[49];
      v23 = v0[46];
      v24 = v0[47];

      (*(v24 + 8))(v22, v23);
      __swift_destroy_boxed_opaque_existential_1Tm_1(v13);
      v0[66] = v48;

      return MEMORY[0x2822009F8](sub_227FF2C14, 0, 0);
    }

    else
    {
      type metadata accessor for SharedData();
      v15 = swift_allocObject();
      v0[67] = v15;
      type metadata accessor for SKAssetManager();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      swift_initStackObject();
      v16 = SKAssetManager.init()();
      v17 = type metadata accessor for FilterRules();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      v20 = FilterRules.init(assetManager:)(v16);
      v32 = v0[57];
      v33 = *(v15 + 16);
      *(v15 + 16) = v20;

      v34 = *(v15 + 24);
      *(v15 + 24) = v42;

      if (qword_2813C8178 != -1)
      {
        swift_once();
      }

      v35 = v0[62];
      v36 = v0[45];
      v0[34] = v15;
      v37 = swift_task_alloc();
      v0[68] = v37;
      v37[2] = v35;
      v37[3] = v36;
      v37[4] = v13;
      v37[5] = v42;
      v38 = *(MEMORY[0x277D85A70] + 4);
      v39 = swift_task_alloc();
      v0[69] = v39;
      *v39 = v0;
      v39[1] = sub_227FF305C;
      v40 = v0[52];
      v50 = v0[50];

      return MEMORY[0x282200908](v40, v0 + 34, &unk_22813B338, v37, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
    }
  }

  else
  {
    v25 = v0[57];
    v26 = v0[38];
    v0[26] = v0[54];
    v0[27] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
    v27 = __swift_allocate_boxed_opaque_existential_1(v0 + 23);
    sub_227FF9A3C(v26, v27, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v28 = swift_task_alloc();
    v0[64] = v28;
    *v28 = v0;
    v28[1] = sub_227FF24FC;
    v29 = v0[62];
    v30 = v0[52];
    v31 = v0[36];

    return sub_2280CB1D4(v30, v31, (v0 + 23), v25);
  }
}

uint64_t sub_227FF24FC()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v6 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = sub_227FF2B9C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1((v2 + 184));
    v4 = sub_227FF2618;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227FF2618()
{
  v1 = *(v0 + 496);

  v2 = *(v0 + 520);
  sub_2281395DC();
  if (v2)
  {
    v3 = v2;
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
    v4 = *(v0 + 456);
    v5 = *(v0 + 440);
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = *(v0 + 320);
    sub_227FFA698(*(v0 + 312) + *(v0 + 448), v5, v3);
    v9 = v3;
    sub_227FFA31C(v5, v4, v3);

    *(v0 + 264) = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v11 = swift_dynamicCast();
    v12 = *(v7 + 56);
    if (v11)
    {
      v13 = *(v0 + 344);
      v14 = *(v0 + 352);
      v15 = *(v0 + 328);
      v16 = *(v0 + 336);
      v17 = *(v0 + 320);
      v12(v17, 0, 1, v15);
      (*(v16 + 32))(v14, v17, v15);
      v18 = *(v16 + 16);
      v18(v13, v14, v15);
      sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v19 = swift_allocError();
      v18(v20, v13, v15);
      v21 = swift_allocObject();
      *(v21 + 16) = 3;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      v22 = sub_227FF9AA4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2EC);

      v23 = *(v16 + 8);
      v23(v13, v15);
      *(v0 + 248) = 3;
      *(v0 + 256) = v22;
      sub_227FE7384();
      v24 = sub_22813999C();
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = swift_allocError();
        *v37 = 3;
        *(v37 + 8) = v22;
      }

      v38 = *(v0 + 352);
      v39 = *(v0 + 328);
      swift_willThrow();

      v23(v38, v39);
      v3 = v25;
    }

    else
    {
      v36 = *(v0 + 320);
      v12(v36, 1, 1, *(v0 + 328));
      sub_227FFB0A0(v36, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v40 = *(v0 + 472);
    v41 = *(v0 + 480);
    v42 = *(v0 + 456);
    v43 = *(v0 + 464);
    v44 = *(v0 + 424);
    v52 = *(v0 + 416);
    v54 = *(v0 + 392);
    v56 = *(v0 + 384);
    v58 = *(v0 + 360);
    v60 = *(v0 + 352);
    v62 = *(v0 + 344);
    v45 = *(v0 + 312);
    v64 = *(v0 + 320);
    v46 = swift_allocObject();
    v46[2] = v3;
    v46[3] = sub_227FFB2D4;
    v46[4] = v40;
    swift_beginAccess();
    v47 = *(v41 + 24);
    *(v41 + 16) = sub_227FFB328;
    *(v41 + 24) = v46;

    v48 = v3;

    swift_willThrow();
    sub_2281324D4(v44, v45 + v43, v41);
    sub_227FFA994(v44, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 64));

    v35 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 480);
    v27 = *(v0 + 456);
    v50 = *(v0 + 464);
    v51 = *(v0 + 472);
    v28 = *(v0 + 440);
    v29 = *(v0 + 416);
    v30 = *(v0 + 424);
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v53 = *(v0 + 392);
    v55 = *(v0 + 384);
    v57 = *(v0 + 360);
    v59 = *(v0 + 352);
    v33 = *(v0 + 312);
    v61 = *(v0 + 344);
    v63 = *(v0 + 320);
    v34 = *(v0 + 280);
    sub_227FFA07C(v33 + *(v0 + 448), v28);
    sub_227FFA31C(v28, v27, 0);
    (*(v31 + 32))(v34, v29, v32);
    sub_2281324D4(v30, v33 + v50, v26);
    sub_227FFA994(v30, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 64));

    v35 = *(v0 + 8);
  }

  return v35();
}

uint64_t sub_227FF2B9C()
{
  v1 = v0[62];

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 23);
  v0[66] = v0[65];

  return MEMORY[0x2822009F8](sub_227FF2C14, 0, 0);
}

uint64_t sub_227FF2C14()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  sub_227FFA698(*(v0 + 312) + *(v0 + 448), v3, v1);
  v7 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 264) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v11 = *(v0 + 344);
    v12 = *(v0 + 352);
    v13 = *(v0 + 328);
    v14 = *(v0 + 336);
    v15 = *(v0 + 320);
    v10(v15, 0, 1, v13);
    (*(v14 + 32))(v12, v15, v13);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v17 = swift_allocError();
    v16(v18, v11, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = 3;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF9AA4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2EC);

    v21 = *(v14 + 8);
    v21(v11, v13);
    *(v0 + 248) = 3;
    *(v0 + 256) = v20;
    sub_227FE7384();
    v22 = sub_22813999C();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = swift_allocError();
      *v25 = 3;
      *(v25 + 8) = v20;
    }

    v26 = *(v0 + 352);
    v27 = *(v0 + 328);
    swift_willThrow();

    v21(v26, v27);
    v1 = v23;
  }

  else
  {
    v24 = *(v0 + 320);
    v10(v24, 1, 1, *(v0 + 328));
    sub_227FFB0A0(v24, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v28 = *(v0 + 472);
  v29 = *(v0 + 480);
  v30 = *(v0 + 456);
  v31 = *(v0 + 464);
  v32 = *(v0 + 424);
  v39 = *(v0 + 416);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 360);
  v43 = *(v0 + 352);
  v44 = *(v0 + 344);
  v33 = *(v0 + 312);
  v45 = *(v0 + 320);
  v34 = swift_allocObject();
  v34[2] = v1;
  v34[3] = sub_227FFB2D4;
  v34[4] = v28;
  swift_beginAccess();
  v35 = *(v29 + 24);
  *(v29 + 16) = sub_227FFB328;
  *(v29 + 24) = v34;

  v36 = v1;

  swift_willThrow();
  sub_2281324D4(v32, v33 + v31, v29);
  sub_227FFA994(v32, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 64));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_227FF305C()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v7 = *v1;
  *(*v1 + 560) = v0;

  v4 = *(v2 + 544);

  if (v0)
  {
    v5 = sub_227FF3758;
  }

  else
  {
    v5 = sub_227FF3180;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227FF3180()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 496);
  v3 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v6 = *(v0 + 360);

  sub_227FFA994(v6, type metadata accessor for PriorityModelSession.Input);
  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 144));

  (*(v5 + 8))(v3, v4);
  v7 = *(v0 + 560);
  sub_2281395DC();
  if (v7)
  {
    v8 = v7;
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
    v9 = *(v0 + 456);
    v10 = *(v0 + 440);
    v11 = *(v0 + 328);
    v12 = *(v0 + 336);
    v13 = *(v0 + 320);
    sub_227FFA698(*(v0 + 312) + *(v0 + 448), v10, v8);
    v14 = v8;
    sub_227FFA31C(v10, v9, v8);

    *(v0 + 264) = v8;
    v15 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v16 = swift_dynamicCast();
    v17 = *(v12 + 56);
    if (v16)
    {
      v18 = *(v0 + 344);
      v19 = *(v0 + 352);
      v20 = *(v0 + 328);
      v21 = *(v0 + 336);
      v22 = *(v0 + 320);
      v17(v22, 0, 1, v20);
      (*(v21 + 32))(v19, v22, v20);
      v23 = *(v21 + 16);
      v23(v18, v19, v20);
      sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v24 = swift_allocError();
      v23(v25, v18, v20);
      v26 = swift_allocObject();
      *(v26 + 16) = 3;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
      v27 = sub_227FF9AA4(v24, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2EC);

      v28 = *(v21 + 8);
      v28(v18, v20);
      *(v0 + 248) = 3;
      *(v0 + 256) = v27;
      sub_227FE7384();
      v29 = sub_22813999C();
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = swift_allocError();
        *v42 = 3;
        *(v42 + 8) = v27;
      }

      v43 = *(v0 + 352);
      v44 = *(v0 + 328);
      swift_willThrow();

      v28(v43, v44);
      v8 = v30;
    }

    else
    {
      v41 = *(v0 + 320);
      v17(v41, 1, 1, *(v0 + 328));
      sub_227FFB0A0(v41, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v45 = *(v0 + 472);
    v46 = *(v0 + 480);
    v47 = *(v0 + 456);
    v48 = *(v0 + 464);
    v49 = *(v0 + 424);
    v57 = *(v0 + 416);
    v59 = *(v0 + 392);
    v61 = *(v0 + 384);
    v63 = *(v0 + 360);
    v65 = *(v0 + 352);
    v67 = *(v0 + 344);
    v50 = *(v0 + 312);
    v69 = *(v0 + 320);
    v51 = swift_allocObject();
    v51[2] = v8;
    v51[3] = sub_227FFB2D4;
    v51[4] = v45;
    swift_beginAccess();
    v52 = *(v46 + 24);
    *(v46 + 16) = sub_227FFB328;
    *(v46 + 24) = v51;

    v53 = v8;

    swift_willThrow();
    sub_2281324D4(v49, v50 + v48, v46);
    sub_227FFA994(v49, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 64));

    v40 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 480);
    v32 = *(v0 + 456);
    v55 = *(v0 + 464);
    v56 = *(v0 + 472);
    v33 = *(v0 + 440);
    v34 = *(v0 + 416);
    v35 = *(v0 + 424);
    v37 = *(v0 + 400);
    v36 = *(v0 + 408);
    v58 = *(v0 + 392);
    v60 = *(v0 + 384);
    v62 = *(v0 + 360);
    v64 = *(v0 + 352);
    v38 = *(v0 + 312);
    v66 = *(v0 + 344);
    v68 = *(v0 + 320);
    v39 = *(v0 + 280);
    sub_227FFA07C(v38 + *(v0 + 448), v33);
    sub_227FFA31C(v33, v32, 0);
    (*(v36 + 32))(v39, v34, v37);
    sub_2281324D4(v35, v38 + v55, v31);
    sub_227FFA994(v35, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 64));

    v40 = *(v0 + 8);
  }

  return v40();
}

uint64_t sub_227FF3758()
{
  v1 = v0[67];

  v2 = v0[70];
  sub_227FFA994(v0[45], type metadata accessor for PriorityModelSession.Input);
  v3 = v0[62];
  v4 = v0[49];
  v5 = v0[46];
  v6 = v0[47];

  (*(v6 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 18);
  v0[66] = v2;

  return MEMORY[0x2822009F8](sub_227FF2C14, 0, 0);
}

uint64_t sub_227FF39AC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  *(v0 + 40) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 48) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 248) = boxed_opaque_existential_1;
  sub_227FF9A3C(v2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 256) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v3 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 264) = v6;
  *(v0 + 272) = v7;
  sub_227FFADC8(v0 + 16, v0 + 56);
  v8 = swift_allocObject();
  *(v0 + 280) = v8;
  sub_227FFA05C((v0 + 56), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = sub_227FFB2D8;
  *(v9 + 24) = v8;

  sub_2281324C4(v3 + v7, v9);
  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  *v10 = v0;
  v10[1] = sub_227FF3B6C;
  v11 = *(v0 + 232);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = *(v0 + 152);

  return sub_227FF45D8(v11, v6, v12, v13, v14);
}

uint64_t sub_227FF3B6C()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_227FF41B0;
  }

  else
  {
    v3 = sub_227FF3C80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227FF3C80()
{
  v1 = *(v0 + 304);
  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = *(v0 + 176);
    sub_227FFA698(*(v0 + 168) + *(v0 + 256), v4, v2);
    v8 = v2;
    sub_227FFA31C(v4, v3, v2);

    *(v0 + 136) = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v10 = swift_dynamicCast();
    v11 = *(v6 + 56);
    if (v10)
    {
      v12 = *(v0 + 200);
      v13 = *(v0 + 208);
      v14 = *(v0 + 184);
      v15 = *(v0 + 192);
      v16 = *(v0 + 176);
      v11(v16, 0, 1, v14);
      (*(v15 + 32))(v13, v16, v14);
      v17 = *(v15 + 16);
      v17(v12, v13, v14);
      sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v18 = swift_allocError();
      v17(v19, v12, v14);
      v20 = swift_allocObject();
      *(v20 + 16) = 3;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      v21 = sub_227FF9AA4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2F0);

      v22 = *(v15 + 8);
      v22(v12, v14);
      *(v0 + 120) = 3;
      *(v0 + 128) = v21;
      sub_227FE7384();
      v23 = sub_22813999C();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = swift_allocError();
        *v36 = 3;
        *(v36 + 8) = v21;
      }

      v37 = *(v0 + 208);
      v38 = *(v0 + 184);
      swift_willThrow();

      v22(v37, v38);
      v2 = v24;
    }

    else
    {
      v35 = *(v0 + 176);
      v11(v35, 1, 1, *(v0 + 184));
      sub_227FFB0A0(v35, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v40 = *(v0 + 280);
    v39 = *(v0 + 288);
    v42 = *(v0 + 264);
    v41 = *(v0 + 272);
    v43 = *(v0 + 240);
    v51 = *(v0 + 232);
    v53 = *(v0 + 208);
    v44 = *(v0 + 168);
    v55 = *(v0 + 200);
    v57 = *(v0 + 176);
    v45 = swift_allocObject();
    v45[2] = v2;
    v45[3] = sub_227FFB2D8;
    v45[4] = v40;
    swift_beginAccess();
    v46 = *(v39 + 24);
    *(v39 + 16) = sub_227FFB32C;
    *(v39 + 24) = v45;

    v47 = v2;

    swift_willThrow();
    sub_2281324D4(v43, v44 + v41, v39);
    sub_227FFA994(v43, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

    v34 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 288);
    v26 = *(v0 + 264);
    v49 = *(v0 + 272);
    v50 = *(v0 + 280);
    v27 = *(v0 + 248);
    v28 = *(v0 + 232);
    v29 = *(v0 + 240);
    v30 = *(v0 + 216);
    v31 = *(v0 + 224);
    v52 = *(v0 + 208);
    v54 = *(v0 + 200);
    v32 = *(v0 + 168);
    v56 = *(v0 + 176);
    v33 = *(v0 + 144);
    sub_227FFA07C(v32 + *(v0 + 256), v27);
    sub_227FFA31C(v27, v26, 0);
    (*(v31 + 32))(v33, v28, v30);
    sub_2281324D4(v29, v32 + v49, v25);
    sub_227FFA994(v29, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

    v34 = *(v0 + 8);
  }

  return v34();
}

uint64_t sub_227FF41B0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  sub_227FFA698(*(v0 + 168) + *(v0 + 256), v3, v1);
  v7 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 136) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v11 = *(v0 + 200);
    v12 = *(v0 + 208);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    v15 = *(v0 + 176);
    v10(v15, 0, 1, v13);
    (*(v14 + 32))(v12, v15, v13);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v17 = swift_allocError();
    v16(v18, v11, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = 3;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF9AA4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2F0);

    v21 = *(v14 + 8);
    v21(v11, v13);
    *(v0 + 120) = 3;
    *(v0 + 128) = v20;
    sub_227FE7384();
    v22 = sub_22813999C();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = swift_allocError();
      *v25 = 3;
      *(v25 + 8) = v20;
    }

    v26 = *(v0 + 208);
    v27 = *(v0 + 184);
    swift_willThrow();

    v21(v26, v27);
    v1 = v23;
  }

  else
  {
    v24 = *(v0 + 176);
    v10(v24, 1, 1, *(v0 + 184));
    sub_227FFB0A0(v24, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v31 = *(v0 + 264);
  v30 = *(v0 + 272);
  v32 = *(v0 + 240);
  v39 = *(v0 + 232);
  v40 = *(v0 + 208);
  v33 = *(v0 + 168);
  v41 = *(v0 + 200);
  v42 = *(v0 + 176);
  v34 = swift_allocObject();
  v34[2] = v1;
  v34[3] = sub_227FFB2D8;
  v34[4] = v29;
  swift_beginAccess();
  v35 = *(v28 + 24);
  *(v28 + 16) = sub_227FFB32C;
  *(v28 + 24) = v34;

  v36 = v1;

  swift_willThrow();
  sub_2281324D4(v32, v33 + v30, v28);
  sub_227FFA994(v32, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_227FF45D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a1;
  v5[15] = a2;
  v7 = sub_228138B8C();
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v9 = *(v8 + 64) + 15;
  v5[20] = swift_task_alloc();
  v10 = *(*(type metadata accessor for PriorityModelSession.Input() - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[22] = v11;
  *v11 = v5;
  v11[1] = sub_227FF4700;

  return sub_227FF15E8(a4);
}

uint64_t sub_227FF4700(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v7 = v3[20];
    v6 = v3[21];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227FF4858, 0, 0);
  }
}

uint64_t sub_227FF4858()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v0[11] = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v0[12] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_227FF9A3C(v7, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  (*(v5 + 16))(v3, v6, v4);
  sub_2280CCB84(v3, v2);
  type metadata accessor for SharedData();
  v10 = swift_allocObject();
  v0[25] = v10;
  type metadata accessor for SKAssetManager();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  swift_initStackObject();
  v11 = SKAssetManager.init()();
  v12 = type metadata accessor for FilterRules();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = FilterRules.init(assetManager:)(v11);
  if (v1)
  {

    v16 = v0[23];
    sub_227FFA994(v0[21], type metadata accessor for PriorityModelSession.Input);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);
    v18 = v0[20];
    v17 = v0[21];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[15];
    v22 = *(v10 + 16);
    *(v10 + 16) = v15;

    v23 = *(v10 + 24);
    *(v10 + 24) = v8;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v24 = v0[23];
    v25 = v0[21];
    v0[13] = v10;
    v26 = swift_task_alloc();
    v0[26] = v26;
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v0 + 8;
    v26[5] = v8;
    v27 = *(MEMORY[0x277D85A70] + 4);
    v28 = swift_task_alloc();
    v0[27] = v28;
    sub_228138ACC();
    *v28 = v0;
    v28[1] = sub_227FF4B5C;
    v29 = v0[14];

    return MEMORY[0x282200908](v29, v0 + 13, &unk_22813B440, v26, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
  }
}

uint64_t sub_227FF4B5C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  v4 = *(v2 + 208);

  if (v0)
  {
    v5 = sub_227FF4D30;
  }

  else
  {
    v5 = sub_227FF4C80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227FF4C80()
{
  v1 = v0[25];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];

  sub_227FFA994(v3, type metadata accessor for PriorityModelSession.Input);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_227FF4D30()
{
  v1 = v0[25];

  v2 = v0[28];
  v3 = v0[23];
  sub_227FFA994(v0[21], type metadata accessor for PriorityModelSession.Input);

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);
  v5 = v0[20];
  v4 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_227FF4F04()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  *(v0 + 40) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 48) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 208) = boxed_opaque_existential_1;
  sub_227FF9A3C(v2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 216) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v3 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 224) = v6;
  *(v0 + 232) = v7;
  sub_227FFADC8(v0 + 16, v0 + 56);
  v8 = swift_allocObject();
  *(v0 + 240) = v8;
  sub_227FFA05C((v0 + 56), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 248) = v9;
  *(v9 + 16) = sub_227FFB2DC;
  *(v9 + 24) = v8;

  sub_2281324C4(v3 + v7, v9);
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_227FF50B4;
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);

  return sub_227FF15E8(v11);
}

uint64_t sub_227FF50B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;

  if (v1)
  {
    *(v4 + 272) = v1;
    v7 = sub_227FF52EC;
  }

  else
  {
    *(v4 + 264) = a1;
    v7 = sub_227FF51DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227FF51DC()
{
  v1 = *(v0 + 264);
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v3 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, 70, sub_227FFB2F8);
  sub_227FE7384();
  v4 = swift_allocError();
  *v5 = 1;
  *(v5 + 8) = v3;
  swift_willThrow();

  *(v0 + 272) = v4;

  return MEMORY[0x2822009F8](sub_227FF52EC, 0, 0);
}

uint64_t sub_227FF52EC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  sub_227FFA698(*(v0 + 152) + *(v0 + 216), v3, v1);
  v7 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 136) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v15 = *(v0 + 160);
    v10(v15, 0, 1, v13);
    (*(v14 + 32))(v12, v15, v13);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v17 = swift_allocError();
    v16(v18, v11, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = 3;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF9AA4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2F4);

    v21 = *(v14 + 8);
    v21(v11, v13);
    *(v0 + 120) = 3;
    *(v0 + 128) = v20;
    sub_227FE7384();
    v22 = sub_22813999C();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = swift_allocError();
      *v26 = 3;
      *(v26 + 8) = v20;
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 192);
    v29 = *(v0 + 168);
    swift_willThrow();

    v21(v28, v29);
  }

  else
  {
    v24 = *(v0 + 272);
    v25 = *(v0 + 160);
    v10(v25, 1, 1, *(v0 + 168));
    sub_227FFB0A0(v25, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
    v23 = *(v0 + 272);
  }

  v30 = *(v0 + 240);
  v31 = *(v0 + 248);
  v33 = *(v0 + 224);
  v32 = *(v0 + 232);
  v34 = *(v0 + 200);
  v41 = *(v0 + 192);
  v42 = *(v0 + 184);
  v35 = *(v0 + 152);
  v43 = *(v0 + 160);
  v36 = swift_allocObject();
  v36[2] = v23;
  v36[3] = sub_227FFB2DC;
  v36[4] = v30;
  swift_beginAccess();
  v37 = *(v31 + 24);
  *(v31 + 16) = sub_227FFB330;
  *(v31 + 24) = v36;

  v38 = v23;

  swift_willThrow();
  sub_2281324D4(v34, v35 + v32, v31);
  sub_227FFA994(v34, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_227FF58A0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  *(v0 + 40) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 48) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 248) = boxed_opaque_existential_1;
  sub_227FF9A3C(v2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 256) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v3 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 264) = v6;
  *(v0 + 272) = v7;
  sub_227FFADC8(v0 + 16, v0 + 56);
  v8 = swift_allocObject();
  *(v0 + 280) = v8;
  sub_227FFA05C((v0 + 56), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = sub_227FFB2E0;
  *(v9 + 24) = v8;

  sub_2281324C4(v3 + v7, v9);
  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  *v10 = v0;
  v10[1] = sub_227FF5A60;
  v11 = *(v0 + 232);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = *(v0 + 152);

  return sub_227FF64CC(v11, v6, v12, v13, v14);
}

uint64_t sub_227FF5A60()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_227FF60A4;
  }

  else
  {
    v3 = sub_227FF5B74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227FF5B74()
{
  v1 = *(v0 + 304);
  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = *(v0 + 176);
    sub_227FFA698(*(v0 + 168) + *(v0 + 256), v4, v2);
    v8 = v2;
    sub_227FFA31C(v4, v3, v2);

    *(v0 + 136) = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v10 = swift_dynamicCast();
    v11 = *(v6 + 56);
    if (v10)
    {
      v12 = *(v0 + 200);
      v13 = *(v0 + 208);
      v14 = *(v0 + 184);
      v15 = *(v0 + 192);
      v16 = *(v0 + 176);
      v11(v16, 0, 1, v14);
      (*(v15 + 32))(v13, v16, v14);
      v17 = *(v15 + 16);
      v17(v12, v13, v14);
      sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v18 = swift_allocError();
      v17(v19, v12, v14);
      v20 = swift_allocObject();
      *(v20 + 16) = 3;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      v21 = sub_227FF9AA4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2FC);

      v22 = *(v15 + 8);
      v22(v12, v14);
      *(v0 + 120) = 3;
      *(v0 + 128) = v21;
      sub_227FE7384();
      v23 = sub_22813999C();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = swift_allocError();
        *v36 = 3;
        *(v36 + 8) = v21;
      }

      v37 = *(v0 + 208);
      v38 = *(v0 + 184);
      swift_willThrow();

      v22(v37, v38);
      v2 = v24;
    }

    else
    {
      v35 = *(v0 + 176);
      v11(v35, 1, 1, *(v0 + 184));
      sub_227FFB0A0(v35, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v40 = *(v0 + 280);
    v39 = *(v0 + 288);
    v42 = *(v0 + 264);
    v41 = *(v0 + 272);
    v43 = *(v0 + 240);
    v51 = *(v0 + 232);
    v53 = *(v0 + 208);
    v44 = *(v0 + 168);
    v55 = *(v0 + 200);
    v57 = *(v0 + 176);
    v45 = swift_allocObject();
    v45[2] = v2;
    v45[3] = sub_227FFB2E0;
    v45[4] = v40;
    swift_beginAccess();
    v46 = *(v39 + 24);
    *(v39 + 16) = sub_227FFB334;
    *(v39 + 24) = v45;

    v47 = v2;

    swift_willThrow();
    sub_2281324D4(v43, v44 + v41, v39);
    sub_227FFA994(v43, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

    v34 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 288);
    v26 = *(v0 + 264);
    v49 = *(v0 + 272);
    v50 = *(v0 + 280);
    v27 = *(v0 + 248);
    v28 = *(v0 + 232);
    v29 = *(v0 + 240);
    v30 = *(v0 + 216);
    v31 = *(v0 + 224);
    v52 = *(v0 + 208);
    v54 = *(v0 + 200);
    v32 = *(v0 + 168);
    v56 = *(v0 + 176);
    v33 = *(v0 + 144);
    sub_227FFA07C(v32 + *(v0 + 256), v27);
    sub_227FFA31C(v27, v26, 0);
    (*(v31 + 32))(v33, v28, v30);
    sub_2281324D4(v29, v32 + v49, v25);
    sub_227FFA994(v29, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

    v34 = *(v0 + 8);
  }

  return v34();
}

uint64_t sub_227FF60A4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  sub_227FFA698(*(v0 + 168) + *(v0 + 256), v3, v1);
  v7 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 136) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v11 = *(v0 + 200);
    v12 = *(v0 + 208);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    v15 = *(v0 + 176);
    v10(v15, 0, 1, v13);
    (*(v14 + 32))(v12, v15, v13);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v17 = swift_allocError();
    v16(v18, v11, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = 3;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF9AA4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2FC);

    v21 = *(v14 + 8);
    v21(v11, v13);
    *(v0 + 120) = 3;
    *(v0 + 128) = v20;
    sub_227FE7384();
    v22 = sub_22813999C();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = swift_allocError();
      *v25 = 3;
      *(v25 + 8) = v20;
    }

    v26 = *(v0 + 208);
    v27 = *(v0 + 184);
    swift_willThrow();

    v21(v26, v27);
    v1 = v23;
  }

  else
  {
    v24 = *(v0 + 176);
    v10(v24, 1, 1, *(v0 + 184));
    sub_227FFB0A0(v24, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v31 = *(v0 + 264);
  v30 = *(v0 + 272);
  v32 = *(v0 + 240);
  v39 = *(v0 + 232);
  v40 = *(v0 + 208);
  v33 = *(v0 + 168);
  v41 = *(v0 + 200);
  v42 = *(v0 + 176);
  v34 = swift_allocObject();
  v34[2] = v1;
  v34[3] = sub_227FFB2E0;
  v34[4] = v29;
  swift_beginAccess();
  v35 = *(v28 + 24);
  *(v28 + 16) = sub_227FFB334;
  *(v28 + 24) = v34;

  v36 = v1;

  swift_willThrow();
  sub_2281324D4(v32, v33 + v30, v28);
  sub_227FFA994(v32, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_227FF64CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a1;
  v5[15] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5B0, &qword_22813B320);
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v9 = *(v8 + 64) + 15;
  v5[20] = swift_task_alloc();
  v10 = *(*(type metadata accessor for PriorityModelSession.Input() - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[22] = v11;
  *v11 = v5;
  v11[1] = sub_227FF6600;

  return sub_227FF15E8(a4);
}

uint64_t sub_227FF6600(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v7 = v3[20];
    v6 = v3[21];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227FF6758, 0, 0);
  }
}

uint64_t sub_227FF6758()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v0[11] = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v0[12] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_227FF9A3C(v7, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  (*(v5 + 16))(v3, v6, v4);
  sub_2280CCE9C(v3, v2);
  if (v1)
  {
    v16 = v0[23];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);
    v18 = v0[20];
    v17 = v0[21];

    v19 = v0[1];

    return v19();
  }

  else
  {
    type metadata accessor for SharedData();
    v10 = swift_allocObject();
    v0[25] = v10;
    type metadata accessor for SKAssetManager();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    swift_initStackObject();
    v11 = SKAssetManager.init()();
    v12 = type metadata accessor for FilterRules();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = FilterRules.init(assetManager:)(v11);
    v21 = v0[15];
    v22 = *(v10 + 16);
    *(v10 + 16) = v15;

    v23 = *(v10 + 24);
    *(v10 + 24) = v8;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v24 = v0[23];
    v25 = v0[21];
    v0[13] = v10;
    v26 = swift_task_alloc();
    v0[26] = v26;
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v0 + 8;
    v26[5] = v8;
    v27 = *(MEMORY[0x277D85A70] + 4);
    v28 = swift_task_alloc();
    v0[27] = v28;
    sub_228138ACC();
    *v28 = v0;
    v28[1] = sub_227FF6A5C;
    v29 = v0[14];

    return MEMORY[0x282200908](v29, v0 + 13, &unk_22813B438, v26, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
  }
}

uint64_t sub_227FF6A5C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  v4 = *(v2 + 208);

  if (v0)
  {
    v5 = sub_227FF6B80;
  }

  else
  {
    v5 = sub_227FFB308;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227FF6B80()
{
  v1 = v0[25];

  v2 = v0[28];
  sub_227FFA994(v0[21], type metadata accessor for PriorityModelSession.Input);
  v3 = v0[23];

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);
  v5 = v0[20];
  v4 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_227FF6D50()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  *(v0 + 40) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 48) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 208) = boxed_opaque_existential_1;
  sub_227FF9A3C(v2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 216) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v3 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 224) = v6;
  *(v0 + 232) = v7;
  sub_227FFADC8(v0 + 16, v0 + 56);
  v8 = swift_allocObject();
  *(v0 + 240) = v8;
  sub_227FFA05C((v0 + 56), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 248) = v9;
  *(v9 + 16) = sub_227FFB2E4;
  *(v9 + 24) = v8;

  sub_2281324C4(v3 + v7, v9);
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_227FF6F00;
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);

  return sub_227FF15E8(v11);
}

uint64_t sub_227FF6F00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;

  if (v1)
  {
    *(v4 + 272) = v1;
    v7 = sub_227FF7138;
  }

  else
  {
    *(v4 + 264) = a1;
    v7 = sub_227FF7028;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227FF7028()
{
  v1 = *(v0 + 264);
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v3 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, 78, sub_227FFB304);
  sub_227FE7384();
  v4 = swift_allocError();
  *v5 = 1;
  *(v5 + 8) = v3;
  swift_willThrow();

  *(v0 + 272) = v4;

  return MEMORY[0x2822009F8](sub_227FF7138, 0, 0);
}

uint64_t sub_227FF7138()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  sub_227FFA698(*(v0 + 152) + *(v0 + 216), v3, v1);
  v7 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 136) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v15 = *(v0 + 160);
    v10(v15, 0, 1, v13);
    (*(v14 + 32))(v12, v15, v13);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v17 = swift_allocError();
    v16(v18, v11, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = 3;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF9AA4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB300);

    v21 = *(v14 + 8);
    v21(v11, v13);
    *(v0 + 120) = 3;
    *(v0 + 128) = v20;
    sub_227FE7384();
    v22 = sub_22813999C();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = swift_allocError();
      *v26 = 3;
      *(v26 + 8) = v20;
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 192);
    v29 = *(v0 + 168);
    swift_willThrow();

    v21(v28, v29);
  }

  else
  {
    v24 = *(v0 + 272);
    v25 = *(v0 + 160);
    v10(v25, 1, 1, *(v0 + 168));
    sub_227FFB0A0(v25, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
    v23 = *(v0 + 272);
  }

  v30 = *(v0 + 240);
  v31 = *(v0 + 248);
  v33 = *(v0 + 224);
  v32 = *(v0 + 232);
  v34 = *(v0 + 200);
  v41 = *(v0 + 192);
  v42 = *(v0 + 184);
  v35 = *(v0 + 152);
  v43 = *(v0 + 160);
  v36 = swift_allocObject();
  v36[2] = v23;
  v36[3] = sub_227FFB2E4;
  v36[4] = v30;
  swift_beginAccess();
  v37 = *(v31 + 24);
  *(v31 + 16) = sub_227FFB338;
  *(v31 + 24) = v36;

  v38 = v23;

  swift_willThrow();
  sub_2281324D4(v34, v35 + v32, v31);
  sub_227FFA994(v34, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t ClassificationRequestHandler.deinit()
{
  v1 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  v2 = sub_22813882C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_227FFA994(v0 + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost, type metadata accessor for Signpost);
  v3 = *(v0 + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_sessionCache);

  return v0;
}

uint64_t ClassificationRequestHandler.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  v2 = sub_22813882C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_227FFA994(v0 + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost, type metadata accessor for Signpost);
  v3 = *(v0 + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_sessionCache);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_227FF76C0(void *a1)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  MEMORY[0x22AAB1970](*a1, a1[1]);
  MEMORY[0x22AAB1970](0xD000000000000015, 0x80000002281443F0);
  v2 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  MEMORY[0x22AAB1970](*(a1 + v2[6]), *(a1 + v2[6] + 8));
  MEMORY[0x22AAB1970](0xD00000000000001FLL, 0x8000000228144410);
  MEMORY[0x22AAB1970](*(a1 + v2[7]), *(a1 + v2[7] + 8));
  MEMORY[0x22AAB1970](0xD00000000000001BLL, 0x8000000228144430);
  v5 = *(a1 + v2[8]);
  v3 = sub_22813998C();
  MEMORY[0x22AAB1970](v3);

  MEMORY[0x22AAB1970](0xD000000000000017, 0x8000000228144450);
  return HIDWORD(v5);
}

uint64_t sub_227FF7824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v3[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF78B8, 0, 0);
}

uint64_t sub_227FF78B8()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_227FF9A3C(v0[8], v1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v3 = v2[7];
  v4 = (v1 + v2[6]);
  v6 = *v4;
  v5 = v4[1];
  v8 = *(v1 + v3);
  v7 = *(v1 + v3 + 8);
  LODWORD(v2) = *(v1 + v2[8]);
  swift_bridgeObjectRetain_n();

  sub_227FFA994(v1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v0[5] = &type metadata for AnySessionInfo;
  v0[6] = &off_283B5E2B0;
  v9 = swift_allocObject();
  v0[2] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  *(v9 + 48) = v2;
  *(v9 + 56) = v8;
  *(v9 + 64) = v7;
  *(v9 + 72) = v2;
  type metadata accessor for PriorityModelSession();
  swift_allocObject();
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_227FF7A2C;

  return PriorityModelSession.init(sessionInfo:)((v0 + 2));
}

uint64_t sub_227FF7A2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_227FF7C54;
  }

  else
  {
    v5 = sub_227FF7B40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_227FF7B40()
{
  v13 = v0;
  v1 = v0[12];
  v2 = v0[7];
  v3 = (*(*(v1 + 56) + 16) + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model);
  v4 = *__swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_22813754C();
  v5 = *(v2 + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_sessionCache);
  v12 = v1;
  v6 = *(v5 + qword_2813C7D90 + 8);
  if (((*(v5 + qword_2813C7D90))(&v12) & 1) == 0 || (v7 = v0[12], v8 = v0[13], os_unfair_lock_lock((v5 + 16)), sub_2281057F0((v5 + 24), v7, v5), os_unfair_lock_unlock((v5 + 16)), !v8))
  {
    v9 = v0[12];
    v10 = v0[10];

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_227FF7C54()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

void *sub_227FF7CB8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 16 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *v11;
        *v8 = *(v11 - 1);
        v8[1] = v12;
        if (!(v10 + v9))
        {

          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 2;
        v8 += 2;
        v13 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_227FF7D98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v40 = &v39 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v39 - v15;
  v17 = sub_2281386FC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v42 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *MEMORY[0x277CCA578];
  v23 = sub_2281392AC();
  v25 = v24;
  *(&v44 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5F0, &unk_22813B420);
  v45 = sub_227FFB100(&qword_2813C6E50, &qword_27D81E5F0, &unk_22813B420);
  *&v43 = v23;
  *(&v43 + 1) = v25;
  LOBYTE(v44) = 3;
  sub_227FFADC8(&v43, v46);
  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v43);
  v46[5] = DynamicType;
  v43 = 0u;
  v44 = 0u;
  sub_228024ABC(&v43, v46);
  v27 = *MEMORY[0x277CCA7E8];
  v28 = sub_2281392AC();
  v30 = v29;
  v31 = a1;
  sub_22805F58C(a1, v28, v30, 3);
  if (!a1)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    return sub_227FFB0A0(v16, &qword_27D81E598, &qword_22813B300);
  }

  v46[0] = a1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v33 = swift_dynamicCast();
  v34 = *(v18 + 56);
  v34(v16, v33 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    return sub_227FFB0A0(v16, &qword_27D81E598, &qword_22813B300);
  }

  v36 = v42;
  (*(v18 + 32))(v42, v16, v17);
  (*(v18 + 16))(v13, v36, v17);
  v34(v13, 0, 1, v17);
  v37 = v40;
  sub_227FC8164(v13, v40, &qword_27D81E598, &qword_22813B300);
  v38 = v41;
  sub_227FC8164(v37, v41, &qword_27D81E598, &qword_22813B300);
  sub_22805F55C(v38, 0xD000000000000019, 0x8000000228144390, 0);
  sub_227FFB0A0(v37, &qword_27D81E598, &qword_22813B300);
  sub_227FF8680(v13, &qword_27D81E600, &qword_22813B430, &qword_27D81E608, sub_228024ABC, sub_22805F52C);

  sub_227FFB0A0(v13, &qword_27D81E598, &qword_22813B300);
  return (*(v18 + 8))(v42, v17);
}

uint64_t sub_227FF820C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v40 = &v39 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v39 - v15;
  v17 = sub_2281386FC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v42 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *MEMORY[0x277CCA578];
  v23 = sub_2281392AC();
  v25 = v24;
  *(&v44 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E618, &qword_22813DE50);
  v45 = sub_227FFB100(&qword_27D81E620, &qword_27D81E618, &qword_22813DE50);
  *&v43 = v23;
  *(&v43 + 1) = v25;
  LOBYTE(v44) = 3;
  sub_227FFADC8(&v43, v46);
  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v43);
  v46[5] = DynamicType;
  v43 = 0u;
  v44 = 0u;
  sub_228024C84(&v43, v46);
  v27 = *MEMORY[0x277CCA7E8];
  v28 = sub_2281392AC();
  v30 = v29;
  v31 = a1;
  sub_22805FA1C(a1, v28, v30, 3);
  if (!a1)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    return sub_227FFB0A0(v16, &qword_27D81E598, &qword_22813B300);
  }

  v46[0] = a1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v33 = swift_dynamicCast();
  v34 = *(v18 + 56);
  v34(v16, v33 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    return sub_227FFB0A0(v16, &qword_27D81E598, &qword_22813B300);
  }

  v36 = v42;
  (*(v18 + 32))(v42, v16, v17);
  (*(v18 + 16))(v13, v36, v17);
  v34(v13, 0, 1, v17);
  v37 = v40;
  sub_227FC8164(v13, v40, &qword_27D81E598, &qword_22813B300);
  v38 = v41;
  sub_227FC8164(v37, v41, &qword_27D81E598, &qword_22813B300);
  sub_22805F7EC(v38, 0xD000000000000019, 0x8000000228144390, 0);
  sub_227FFB0A0(v37, &qword_27D81E598, &qword_22813B300);
  sub_227FF8680(v13, &qword_27D81E628, &qword_22813B460, &qword_27D81E630, sub_228024C84, sub_22805F5BC);

  sub_227FFB0A0(v13, &qword_27D81E598, &qword_22813B300);
  return (*(v18 + 8))(v42, v17);
}

uint64_t sub_227FF8680(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(__int128 *, char *), void (*a6)(unint64_t *, unint64_t, unint64_t, uint64_t))
{
  v112 = a6;
  v111 = a5;
  v107 = a3;
  v108 = a4;
  v109 = a1;
  v113 = sub_22813863C();
  v89 = *(v113 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x28223BE20](v113, v8);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22813865C();
  v99 = *(v92 - 8);
  v10 = *(v99 + 64);
  v12 = MEMORY[0x28223BE20](v92, v11);
  v83 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v90 = &v83 - v15;
  v94 = sub_22813867C();
  v93 = *(v94 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v94, v17);
  v95 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2281386AC();
  v97 = *(v98 - 8);
  v19 = *(v97 + 64);
  MEMORY[0x28223BE20](v98, v20);
  v96 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2281386CC();
  v101 = *(v102 - 8);
  v22 = *(v101 + 64);
  MEMORY[0x28223BE20](v102, v23);
  v100 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2281386DC();
  v104 = *(v105 - 8);
  v25 = *(v104 + 64);
  MEMORY[0x28223BE20](v105, v26);
  v103 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = &v83 - v31;
  v110 = sub_2281386FC();
  v33 = *(v110 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v110, v35);
  v106 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5F8, &qword_22813DE20);
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v37 - 8, v39);
  v42 = (&v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v40, v43);
  v46 = (&v83 - v45);
  MEMORY[0x28223BE20](v44, v47);
  v49 = &v83 - v48;
  v50 = v107;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, v107);
  *(&v115 + 1) = v86;
  v84 = sub_227FFB100(v108, a2, v50);
  v116 = v84;
  *&v114 = 0xD00000000000001CLL;
  *(&v114 + 1) = 0x80000002281443B0;
  v87 = 0x80000002281443B0;
  LOBYTE(v115) = 3;
  sub_227FFADC8(&v114, v117);
  __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v114);
  v118 = DynamicType;
  v114 = 0u;
  v115 = 0u;
  v111(&v114, v117);
  v52 = sub_2281385EC();
  (*(*(v52 - 8) + 56))(v49, 1, 1, v52);
  sub_227FC8164(v49, v46, &qword_27D81E5F8, &qword_22813DE20);
  sub_227FC8164(v46, v42, &qword_27D81E5F8, &qword_22813DE20);
  v85 = "safetyErrorHasRegionalSource";
  v108 = v42;
  v53 = v110;
  v112(v42, 0xD00000000000001CLL, 0x80000002281443D0, 2);
  v107 = v46;
  sub_227FFB0A0(v46, &qword_27D81E5F8, &qword_22813DE20);
  v88 = v49;
  sub_227FFB0A0(v49, &qword_27D81E5F8, &qword_22813DE20);
  sub_227FC8164(v109, v32, &qword_27D81E598, &qword_22813B300);
  if ((*(v33 + 48))(v32, 1, v53) == 1)
  {
    return sub_227FFB0A0(v32, &qword_27D81E598, &qword_22813B300);
  }

  v55 = v106;
  (*(v33 + 32))(v106, v32, v53);
  v56 = v103;
  sub_2281386EC();
  v57 = v104;
  v58 = v105;
  if ((*(v104 + 88))(v56, v105) == *MEMORY[0x277D0DB78])
  {
    (*(v57 + 96))(v56, v58);
    v59 = v101;
    v60 = v100;
    v61 = v102;
    (*(v101 + 32))(v100, v56, v102);
    v62 = v96;
    sub_2281386BC();
    v63 = v97;
    v64 = v98;
    if ((*(v97 + 88))(v62, v98) == *MEMORY[0x277D0DA98])
    {
      v109 = v33;
      (*(v63 + 96))(v62, v64);
      (*(v93 + 32))(v95, v62, v94);
      v65 = v90;
      sub_2281385CC();
      v66 = sub_22813864C();
      v67 = *(v99 + 8);
      v99 += 8;
      result = v67(v65, v92);
      v68 = 0;
      v69 = *(v66 + 16);
      v70 = v89;
      v71 = v91;
      while (1)
      {
        if (v69 == v68)
        {

          v76 = v83;
          v75 = v95;
          sub_22813861C();
          v77 = sub_22813864C();
          v67(v76, v92);
          v78 = *(v77 + 16);

          v74 = v78 != 0;
          goto LABEL_13;
        }

        if (v68 >= *(v66 + 16))
        {
          break;
        }

        v72 = v113;
        (*(v70 + 16))(v71, v66 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v68++, v113);
        v73 = sub_22813862C();
        result = (*(v70 + 8))(v71, v72);
        if (v73)
        {

          v74 = 1;
          v75 = v95;
LABEL_13:
          *(&v115 + 1) = v86;
          v116 = v84;
          *&v114 = 0xD00000000000001CLL;
          *(&v114 + 1) = v87;
          LOBYTE(v115) = 3;
          sub_227FFADC8(&v114, v117);
          __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
          v79 = swift_getDynamicType();
          __swift_destroy_boxed_opaque_existential_1Tm_1(&v114);
          v118 = v79;
          *(&v115 + 1) = MEMORY[0x277D839B0];
          LOBYTE(v114) = v74;
          v111(&v114, v117);
          v80 = v88;
          sub_2281385FC();
          v81 = v107;
          sub_227FC8164(v80, v107, &qword_27D81E5F8, &qword_22813DE20);
          v82 = v108;
          sub_227FC8164(v81, v108, &qword_27D81E5F8, &qword_22813DE20);
          v112(v82, 0xD00000000000001CLL, v85 | 0x8000000000000000, 2);
          sub_227FFB0A0(v81, &qword_27D81E5F8, &qword_22813DE20);
          sub_227FFB0A0(v80, &qword_27D81E5F8, &qword_22813DE20);
          (*(v93 + 8))(v75, v94);
          (*(v101 + 8))(v100, v102);
          return (*(v109 + 8))(v106, v110);
        }
      }

      __break(1u);
    }

    else
    {
      (*(v59 + 8))(v60, v61);
      (*(v33 + 8))(v55, v53);
      return (*(v63 + 8))(v62, v64);
    }
  }

  else
  {
    (*(v33 + 8))(v55, v53);
    return (*(v57 + 8))(v56, v58);
  }

  return result;
}

_OWORD *sub_227FF9254(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  *&v29 = a1;
  v30 = MEMORY[0x277D837D0];
  *(&v29 + 1) = a2;
  v8 = *a5;
  v10 = sub_22808CA18(a3);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a4 & 1) != 0)
  {
LABEL_7:
    v16 = *a5;
    if (v14)
    {
LABEL_8:
      v17 = (v16[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm_1(v17);
      return sub_227FE5EAC(&v29, v17);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a4 & 1) == 0)
  {
    sub_22801CA00();
    goto LABEL_7;
  }

  sub_228018B50(v13, a4 & 1);
  v19 = *a5;
  v20 = sub_22808CA18(a3);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E8, &unk_22813C660);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *a5;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_227FC8164(a3, v28, &qword_27D81E5E8, &unk_22813C660);
  v22 = v30;
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v30);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23, v23);
  v26 = (v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_227FF963C(v10, v28, *v26, v26[1], v16);
  return __swift_destroy_boxed_opaque_existential_1Tm_1(&v29);
}

_OWORD *sub_227FF9448(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  *&v29 = a1;
  v30 = MEMORY[0x277D837D0];
  *(&v29 + 1) = a2;
  v8 = *a5;
  v10 = sub_22808CE90(a3);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a4 & 1) != 0)
  {
LABEL_7:
    v16 = *a5;
    if (v14)
    {
LABEL_8:
      v17 = (v16[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm_1(v17);
      return sub_227FE5EAC(&v29, v17);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a4 & 1) == 0)
  {
    sub_22801CE64();
    goto LABEL_7;
  }

  sub_2280193C0(v13, a4 & 1);
  v19 = *a5;
  v20 = sub_22808CE90(a3);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E610, &unk_22813B450);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *a5;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_227FC8164(a3, v28, &qword_27D81E610, &unk_22813B450);
  v22 = v30;
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v30);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23, v23);
  v26 = (v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_227FF963C(v10, v28, *v26, v26[1], v16);
  return __swift_destroy_boxed_opaque_existential_1Tm_1(&v29);
}

_OWORD *sub_227FF963C(unint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v12 = a3;
  v13 = MEMORY[0x277D837D0];
  *(&v12 + 1) = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 48 * a1);
  v7 = a2[2];
  v6[1] = a2[1];
  v6[2] = v7;
  *v6 = *a2;
  result = sub_227FE5EAC(&v12, (a5[7] + 32 * a1));
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_227FF96D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t *))
{
  v34 = sub_227FE41E0(MEMORY[0x277D84F90]);
  v7 = a1;
  sub_227FF7D98(a1);
  if (a5)
  {

    a5(&v34);
    sub_227FCE978(a5);
  }

  if (os_variant_has_internal_ui())
  {
    v8 = sub_22813927C();
    v9 = [v8 lastPathComponent];

    v10 = sub_2281392AC();
    v12 = v11;

    v33[0] = v10;
    v33[1] = v12;
    MEMORY[0x22AAB1970](58, 0xE100000000000000);
    v13 = sub_22813998C();
    MEMORY[0x22AAB1970](v13);

    v14 = v10;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E0, &unk_22813B410);
    v32 = sub_227FFB100(qword_2813C6E58, &qword_27D81E5E0, &unk_22813B410);
    *&v29 = 0x454352554F535F5FLL;
    *(&v29 + 1) = 0xEA00000000005F5FLL;
    v30 = 3;
    sub_227FFADC8(&v29, v33);
    __swift_project_boxed_opaque_existential_1(&v29, v31);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v29);
    v33[5] = DynamicType;
    v31 = MEMORY[0x277D837D0];
    *&v29 = v14;
    *(&v29 + 1) = v12;
    sub_227FE5EAC(&v29, &v27);
    v16 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v16;
    v18 = v28;
    v19 = __swift_mutable_project_boxed_opaque_existential_0(&v27, v28);
    v20 = *(*(v18 - 8) + 64);
    MEMORY[0x28223BE20](v19, v19);
    v22 = (&v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    sub_227FF9254(*v22, v22[1], v33, isUniquelyReferenced_nonNull_native, &v26);
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v27);
    sub_227FFB0A0(v33, &qword_27D81E5E8, &unk_22813C660);
    sub_227FCE978(a5);
    return v26;
  }

  else
  {
    sub_227FCE978(a5);

    return v34;
  }
}

uint64_t sub_227FF99D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FF9A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_227FF9AA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t *))
{
  v34 = sub_227FE4720(MEMORY[0x277D84F90]);
  v7 = a1;
  sub_227FF820C(a1);
  if (a5)
  {

    a5(&v34);
    sub_227FCE978(a5);
  }

  if (os_variant_has_internal_ui())
  {
    v8 = sub_22813927C();
    v9 = [v8 lastPathComponent];

    v10 = sub_2281392AC();
    v12 = v11;

    v33[0] = v10;
    v33[1] = v12;
    MEMORY[0x22AAB1970](58, 0xE100000000000000);
    v13 = sub_22813998C();
    MEMORY[0x22AAB1970](v13);

    v14 = v10;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E530, &unk_22813BFF0);
    v32 = sub_227FFB100(&qword_27D81E538, &qword_27D81E530, &unk_22813BFF0);
    *&v29 = 0x454352554F535F5FLL;
    *(&v29 + 1) = 0xEA00000000005F5FLL;
    v30 = 3;
    sub_227FFADC8(&v29, v33);
    __swift_project_boxed_opaque_existential_1(&v29, v31);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v29);
    v33[5] = DynamicType;
    v31 = MEMORY[0x277D837D0];
    *&v29 = v14;
    *(&v29 + 1) = v12;
    sub_227FE5EAC(&v29, &v27);
    v16 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v16;
    v18 = v28;
    v19 = __swift_mutable_project_boxed_opaque_existential_0(&v27, v28);
    v20 = *(*(v18 - 8) + 64);
    MEMORY[0x28223BE20](v19, v19);
    v22 = (&v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    sub_227FF9448(*v22, v22[1], v33, isUniquelyReferenced_nonNull_native, &v26);
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v27);
    sub_227FFB0A0(v33, &qword_27D81E610, &unk_22813B450);
    sub_227FCE978(a5);
    return v26;
  }

  else
  {
    sub_227FCE978(a5);

    return v34;
  }
}

uint64_t sub_227FF9DA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v28[3] = v3;
  v28[4] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_227FF9A3C(a2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FFADC8(v28, v27);
  sub_227FFADC8(v28, v26);
  sub_227FFADC8(v28, v25);
  sub_227FFADC8(v28, v24);
  sub_22810A6C8();
  sub_22810A6D0();
  v5 = sub_22813880C();
  v6 = sub_2281396BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136447234;
    v9 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v10 = *v9;
    v11 = v9[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v27);
    v12 = sub_227FCC340(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = (__swift_project_boxed_opaque_existential_1(v26, v26[3]) + v3[6]);
    v14 = *v13;
    v15 = v13[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v26);
    v16 = sub_227FCC340(v14, v15, &v23);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    v17 = (__swift_project_boxed_opaque_existential_1(v25, v25[3]) + v3[7]);
    v18 = *v17;
    v19 = v17[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
    v20 = sub_227FCC340(v18, v19, &v23);

    *(v7 + 24) = v20;
    *(v7 + 32) = 1026;
    v21 = *(__swift_project_boxed_opaque_existential_1(v24, v24[3]) + v3[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v24);
    *(v7 + 34) = v21;
    *(v7 + 38) = 1026;
    *(v7 + 40) = qos_class_self();
    _os_log_impl(&dword_227FC3000, v5, v6, "Received request [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d, QoS: 0x%{public}x]", v7, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v24);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v27);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v26);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_1(v28);
}

uint64_t sub_227FFA05C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FFA07C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v28[3] = v3;
  v28[4] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_227FF9A3C(a2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FFADC8(v28, v27);
  sub_227FFADC8(v28, v26);
  sub_227FFADC8(v28, v25);
  sub_227FFADC8(v28, v24);
  v5 = sub_22813880C();
  v6 = sub_2281396BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446978;
    v9 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v10 = *v9;
    v11 = v9[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v27);
    v12 = sub_227FCC340(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = (__swift_project_boxed_opaque_existential_1(v26, v26[3]) + v3[6]);
    v14 = *v13;
    v15 = v13[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v26);
    v16 = sub_227FCC340(v14, v15, &v23);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    v17 = (__swift_project_boxed_opaque_existential_1(v25, v25[3]) + v3[7]);
    v18 = *v17;
    v19 = v17[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
    v20 = sub_227FCC340(v18, v19, &v23);

    *(v7 + 24) = v20;
    *(v7 + 32) = 1026;
    v21 = *(__swift_project_boxed_opaque_existential_1(v24, v24[3]) + v3[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v24);
    *(v7 + 34) = v21;
    _os_log_impl(&dword_227FC3000, v5, v6, "Successfully handled [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v24);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v27);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v26);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_1(v28);
}

uint64_t sub_227FFA31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22813828C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v24[3] = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v24[4] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_227FF9A3C(a1, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v13 = sub_22813882C();
  __swift_project_value_buffer(v13, qword_2813C8A08);
  v14 = sub_22813880C();
  v15 = sub_2281396CC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_227FC3000, v14, v15, "Sending Biome event for Classification request", v16, 2u);
    MEMORY[0x22AAB28A0](v16, -1, -1);
  }

  v17 = sub_22813886C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_22813885C();
  MEMORY[0x28223BE20](v20, v21);
  *(&v23 - 4) = v24;
  *(&v23 - 3) = a2;
  *(&v23 - 2) = a3;
  sub_22813884C();
  (*(v7 + 8))(v11, v6);

  return __swift_destroy_boxed_opaque_existential_1Tm_1(v24);
}

uint64_t sub_227FFA698(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v35[3] = v5;
  v35[4] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  sub_227FF9A3C(a2, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FFADC8(v35, v34);
  sub_227FFADC8(v35, v33);
  sub_227FFADC8(v35, v32);
  sub_227FFADC8(v35, v31);
  v7 = a3;
  v8 = sub_22813880C();
  v9 = sub_2281396DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136447234;
    v12 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    v13 = *v12;
    v14 = v12[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v34);
    v15 = sub_227FCC340(v13, v14, &v30);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v16 = (__swift_project_boxed_opaque_existential_1(v33, v33[3]) + v5[6]);
    v17 = *v16;
    v18 = v16[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v33);
    v19 = sub_227FCC340(v17, v18, &v30);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2082;
    v20 = (__swift_project_boxed_opaque_existential_1(v32, v32[3]) + v5[7]);
    v21 = *v20;
    v22 = v20[1];

    __swift_destroy_boxed_opaque_existential_1Tm_1(v32);
    v23 = sub_227FCC340(v21, v22, &v30);

    *(v10 + 24) = v23;
    *(v10 + 32) = 1026;
    LODWORD(v23) = *(__swift_project_boxed_opaque_existential_1(v31, v31[3]) + v5[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v31);
    *(v10 + 34) = v23;
    *(v10 + 38) = 2082;
    swift_getErrorValue();
    v24 = Error.loggingDescription.getter(v28, v29);
    v26 = sub_227FCC340(v24, v25, &v30);

    *(v10 + 40) = v26;
    _os_log_impl(&dword_227FC3000, v8, v9, "Request failed [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d] with error: %{public}s", v10, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v11, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v31);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v34);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v33);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v32);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_1(v35);
}

uint64_t sub_227FFA994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FFAA00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227FFAA48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_227FFB30C;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_15Tm()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_227FFAB4C()
{
  result = qword_27D81E5C8;
  if (!qword_27D81E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E5C8);
  }

  return result;
}

uint64_t sub_227FFABC8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FFAC00()
{
  result = sub_22813882C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Signpost(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_227FFAD40()
{
  result = sub_228136FCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_227FFADC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_227FFAE2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_227FFAEEC;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_227FFAEEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_227FFAFE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_227FFB310;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_227FFB0A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FFB100(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_227FFB174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_227FFB314;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_227FFB234()
{
  v1 = *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_227FF76C0(v2);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientID.clientApplicationID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientID.clientApplicationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_227FFB4C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_227FFB57C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_227FFB660@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1(0) + 20);
  return sub_228137D6C();
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.allowedLanguages.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_227FFB800(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  v1 = a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0) + 28);
  return sub_228137D6C();
}

uint64_t (*sub_227FFBA60(uint64_t a1, uint64_t a2))()
{
  result = nullsub_14;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_227FFBAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FFBC28(&qword_27D81E680, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_227FFBB40(uint64_t a1)
{
  v2 = sub_227FFBC28(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_227FFBBAC()
{
  sub_227FFBC28(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);

  return sub_228137EDC();
}

uint64_t sub_227FFBC28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227FFBCA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_228137FBC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22813A4B0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21888];
  v14 = sub_228137F9C();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_228137FAC();
}

uint64_t sub_227FFBE34()
{
  while (1)
  {
    result = sub_228137DCC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_228137E7C();
    }
  }

  return result;
}

uint64_t sub_227FFBED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_228137F6C(), !v5))
  {
    v11 = v4 + *(a4(0) + 20);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_227FFBF8C(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2281399BC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  sub_228137D7C();
  sub_227FFBC28(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_227FFC0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_227FFC12C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_227FFC1A0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_15;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_227FFC1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FFBC28(&qword_27D81E678, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_227FFC280(uint64_t a1)
{
  v2 = sub_227FFBC28(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_227FFC2EC()
{
  sub_227FFBC28(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);

  return sub_228137EDC();
}

uint64_t sub_227FFC368(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2281399BC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_228137D7C();
  sub_227FFBC28(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_227FFC440()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5BF0);
  __swift_project_value_buffer(v0, qword_2813C5BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "allowed_languages";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "should_skip_language_check";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "recognizer_max_samples";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_227FFC678@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_228137DCC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_228137E4C();
        break;
      case 2:
        sub_228137E0C();
        break;
      case 1:
        sub_228137E5C();
        break;
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_LangCheckConfig.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_228137F5C(), !v1))
  {
    if (*(v0 + 8) != 1 || (result = sub_228137F1C(), !v1))
    {
      if (!*(v0 + 12) || (result = sub_228137F4C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0) + 28);
        return sub_228137D5C();
      }
    }
  }

  return result;
}

uint64_t sub_227FFC8D8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228139AAC();
  a1(0);
  sub_227FFBC28(a2, a3);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_227FFC960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  v2 = a2 + *(a1 + 28);
  return sub_228137D6C();
}

uint64_t sub_227FFC9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_227FFCA24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_227FFCA98(uint64_t a1, uint64_t a2))()
{
  result = nullsub_16;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_227FFCAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FFBC28(&qword_27D81E670, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_227FFCB90@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_227FFCC2C(uint64_t a1)
{
  v2 = sub_227FFBC28(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_227FFCC98()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_227FFCCF0()
{
  sub_227FFBC28(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);

  return sub_228137EDC();
}

uint64_t sub_227FFCD6C()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t _s16SummarizationKit48Com_Apple_Summarizationkit_Proto_LangCheckConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_228037F4C(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0) + 28);
  sub_228137D7C();
  sub_227FFBC28(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FFD368()
{
  result = sub_228137D7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_227FFD3F8()
{
  sub_227FFD494();
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227FFD494()
{
  if (!qword_2813C4680)
  {
    v0 = sub_22813956C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C4680);
    }
  }
}

uint64_t FilterRules.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return FilterRules.init()();
}

uint64_t FilterRules.init()()
{
  v1 = (v0 + qword_2813C8080);
  *v1 = 0x75527265746C6946;
  v1[1] = 0xEB0000000073656CLL;
  v2 = (v0 + qword_2813C8088);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C8070);
  *v3 = 0x73656C755241544FLL;
  v3[1] = 0xE800000000000000;
  v4 = qword_2813C8078;
  v5 = MEMORY[0x277D84F90];
  *(v0 + v4) = sub_227FE50AC(MEMORY[0x277D84F90]);
  v6 = qword_2813C8068;
  *(v0 + v6) = sub_227FE51B0(v5);
  v7 = *v1;
  v8 = v1[1];
  v9 = *v2;
  v10 = v2[1];
  v11 = *v3;
  v12 = v3[1];

  v13 = sub_227FDBD74(v7, v8, v9, v10, v11);
  v14 = v13 + *(*v13 + 96);
  swift_beginAccess();
  if (*(*(v14 + 8) + 16))
  {
    sub_227FFD7D8();
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 20;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    v16 = sub_227FF96D4(0, 0xD00000000000006ALL, 0x80000002281445C0, 26, sub_227FFE830);
    sub_227FDB3CC();
    swift_allocError();
    *v17 = 20;
    *(v17 + 8) = v16;
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_227FFD7D8()
{
  v1 = v0;
  v68 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v2 = *(v68 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v68, v4);
  v71 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v70 = &v62 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v62 - v11;
  v13 = v0 + *(*v0 + 96);
  result = swift_beginAccess();
  v15 = *(v13 + 8);
  v67 = *(v15 + 16);
  if (!v67)
  {
    return result;
  }

  v69 = qword_2813C8068;
  v16 = qword_2813C8078;
  v63 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v66 = v15 + v63;

  v17 = 0;
  v18 = 0;
  v64 = v15;
  v65 = v2;
  while (v18 < *(v15 + 16))
  {
    v72 = *(v2 + 72);
    sub_227FFE9B0(v66 + v72 * v18, v12);
    v19 = &v12[*(v68 + 32)];
    v20 = v19[1];
    if (!v20)
    {
      goto LABEL_16;
    }

    v21 = *v19;
    v22 = v69;
    swift_beginAccess();
    sub_227FFE9B0(v12, v70);

    v23 = *(v1 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v1 + v22);
    v25 = v73;
    *(v1 + v22) = 0x8000000000000000;
    v26 = sub_22808C964(v21, v20);
    v28 = v25[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_36;
    }

    v32 = v27;
    if (v25[3] < v31)
    {
      sub_22801A350(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_22808C964(v21, v20);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_40;
      }

LABEL_10:
      if ((v32 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v36 = v26;
    sub_22801D5BC();
    v26 = v36;
    if ((v32 & 1) == 0)
    {
LABEL_13:
      v35 = v73;
      v73[(v26 >> 6) + 8] |= 1 << v26;
      v37 = (v35[6] + 16 * v26);
      *v37 = v21;
      v37[1] = v20;
      sub_227FFEA84(v70, v35[7] + v26 * v72);
      v38 = v35[2];
      v30 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v30)
      {
        goto LABEL_38;
      }

      v35[2] = v39;
      goto LABEL_15;
    }

LABEL_11:
    v34 = v26;

    v35 = v73;
    sub_227FFEAE8(v70, v73[7] + v34 * v72);
LABEL_15:
    v40 = *(v1 + v69);
    *(v1 + v69) = v35;

    swift_endAccess();
LABEL_16:
    v41 = *v12;
    v42 = v12[8];
    sub_227FFE9B0(v12, v71);
    swift_beginAccess();
    sub_227FFEA74(v17);
    v43 = *(v1 + v16);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v1 + v16);
    v45 = v73;
    *(v1 + v16) = 0x8000000000000000;
    v47 = sub_22808CF24(v41, v42);
    v48 = v45[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_35;
    }

    v51 = v46;
    if (v45[3] >= v50)
    {
      if (v44)
      {
        *(v1 + v16) = v45;
        if (v46)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_22801D44C();
        v45 = v73;
        *(v1 + v16) = v73;
        if (v51)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_22801A094(v50, v44);
      v45 = v73;
      v52 = sub_22808CF24(v41, v42);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_39;
      }

      v47 = v52;
      *(v1 + v16) = v45;
      if (v51)
      {
        goto LABEL_25;
      }
    }

    v45[(v47 >> 6) + 8] |= 1 << v47;
    v54 = v45[6] + 16 * v47;
    *v54 = v41;
    *(v54 + 8) = v42;
    *(v45[7] + 8 * v47) = MEMORY[0x277D84F90];
    v55 = v45[2];
    v30 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v30)
    {
      goto LABEL_37;
    }

    v45[2] = v56;
LABEL_25:
    v57 = v45[7];
    v58 = *(v57 + 8 * v47);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 8 * v47) = v58;
    if ((v59 & 1) == 0)
    {
      v58 = sub_228133AF8(0, v58[2] + 1, 1, v58);
      *(v57 + 8 * v47) = v58;
    }

    v15 = v64;
    v61 = v58[2];
    v60 = v58[3];
    if (v61 >= v60 >> 1)
    {
      v58 = sub_228133AF8(v60 > 1, v61 + 1, 1, v58);
      *(v57 + 8 * v47) = v58;
    }

    v2 = v65;
    ++v18;
    v58[2] = v61 + 1;
    sub_227FFEA84(v71, v58 + v63 + v61 * v72);
    swift_endAccess();
    sub_227FFEA14(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
    v17 = sub_227FFE21C;
    if (v67 == v18)
    {
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  sub_2281399EC();
  __break(1u);
LABEL_40:
  result = sub_2281399EC();
  __break(1u);
  return result;
}

uint64_t FilterRules.__allocating_init(filePath:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return FilterRules.init(filePath:)(a1, a2);
}

uint64_t FilterRules.init(filePath:)(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + qword_2813C8080);
  *v5 = 0x75527265746C6946;
  v5[1] = 0xEB0000000073656CLL;
  v6 = (v2 + qword_2813C8088);
  *v6 = 0x7478746270;
  v6[1] = 0xE500000000000000;
  v7 = (v2 + qword_2813C8070);
  *v7 = 0x73656C755241544FLL;
  v7[1] = 0xE800000000000000;
  v8 = qword_2813C8078;
  v9 = MEMORY[0x277D84F90];
  *(v2 + v8) = sub_227FE50AC(MEMORY[0x277D84F90]);
  v10 = qword_2813C8068;
  *(v2 + v10) = sub_227FE51B0(v9);
  v11 = sub_227FDE070(a1, a2);
  v12 = v11 + *(*v11 + 96);
  swift_beginAccess();
  if (*(*(v12 + 8) + 16))
  {
    sub_227FFD7D8();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 20;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    v14 = sub_227FF96D4(0, 0xD00000000000006ALL, 0x80000002281445C0, 35, sub_227FFEB4C);
    sub_227FDB3CC();
    swift_allocError();
    *v15 = 20;
    *(v15 + 8) = v14;
    swift_willThrow();
  }

  return v11;
}

uint64_t FilterRules.__allocating_init(assetManager:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return FilterRules.init(assetManager:)(a1);
}

uint64_t FilterRules.init(assetManager:)(uint64_t a1)
{
  v3 = (v1 + qword_2813C8080);
  *v3 = 0x75527265746C6946;
  v3[1] = 0xEB0000000073656CLL;
  v4 = (v1 + qword_2813C8088);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v1 + qword_2813C8070);
  *v5 = 0x73656C755241544FLL;
  v5[1] = 0xE800000000000000;
  v6 = qword_2813C8078;
  v7 = MEMORY[0x277D84F90];
  *(v1 + v6) = sub_227FE50AC(MEMORY[0x277D84F90]);
  v8 = qword_2813C8068;
  *(v1 + v8) = sub_227FE51B0(v7);
  v9 = *v3;
  v10 = v3[1];
  v11 = *v4;
  v12 = v4[1];
  v13 = *v5;
  v14 = v5[1];

  v15 = sub_227FE0124(a1, 1, v9, v10, v11, v12, v13, v14);
  v16 = v15 + *(*v15 + 96);
  swift_beginAccess();
  if (*(*(v16 + 8) + 16))
  {
    sub_227FFD7D8();
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = 20;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(0, 0xD00000000000006ALL, 0x80000002281445C0, 50, sub_227FFEB50);
    sub_227FDB3CC();
    swift_allocError();
    *v19 = 20;
    *(v19 + 8) = v18;
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_227FFE22C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v41 = a1;
  v46[3] = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = qword_2813C8078;
  swift_beginAccess();
  v16 = *(v3 + v15);
  if (*(v16 + 16) && (v17 = sub_22808CF24(v13, v14), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    v20 = *(v19 + 16);
    v43 = v20;
    if (v20)
    {
      v42 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v21 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v21 = v41;
      }

      v22 = 7;
      if (((a2 >> 60) & ((v41 & 0x800000000000000) == 0)) != 0)
      {
        v22 = 11;
      }

      v39[1] = v4;
      v40 = (v22 | (v21 << 16));

      v23 = 0;
      while (1)
      {
        if (v23 >= *(v19 + 16))
        {
          __break(1u);
        }

        sub_227FFE9B0(v42 + *(v8 + 72) * v23, v12);
        if (v12[48] != 255)
        {
          v24 = *(v12 + 2);
          v25 = *(v12 + 3);
          v26 = objc_allocWithZone(MEMORY[0x277CCAC68]);
          v27 = sub_22813927C();
          v46[0] = 0;
          v28 = [v26 initWithPattern:v27 options:0 error:v46];

          v29 = v46[0];
          if (!v28)
          {
            v38 = v46[0];

            sub_228136E2C();

            swift_willThrow();
            sub_227FFEA14(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
            break;
          }

          v45 = a2;
          v46[0] = 15;
          v46[1] = v40;
          v44 = v41;
          v30 = v29;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E550, &qword_22813B0F0);
          sub_227FEB294();
          sub_227FDB420();
          v31 = sub_22813973C();
          v33 = v32;
          v34 = sub_22813927C();
          v35 = [v28 firstMatchInString:v34 options:0 range:{v31, v33}];

          if (v35)
          {

            sub_227FFEA14(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
            LOBYTE(v20) = 1;
            break;
          }
        }

        ++v23;
        sub_227FFEA14(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
        if (v43 == v23)
        {

          LOBYTE(v20) = 0;
          break;
        }
      }
    }
  }

  else
  {
    swift_endAccess();
    LOBYTE(v20) = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

uint64_t sub_227FFE5D8()
{
  v1 = *(v0 + qword_2813C8080 + 8);

  v2 = *(v0 + qword_2813C8088 + 8);

  v3 = *(v0 + qword_2813C8070 + 8);

  v4 = *(v0 + qword_2813C8078);

  v5 = *(v0 + qword_2813C8068);
}

uint64_t FilterRules.deinit()
{
  sub_227FFEA14(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + qword_2813C8080 + 8);

  v3 = *(v0 + qword_2813C8088 + 8);

  v4 = *(v0 + qword_2813C8070 + 8);

  v5 = *(v0 + qword_2813C8078);

  v6 = *(v0 + qword_2813C8068);

  return v0;
}

uint64_t FilterRules.__deallocating_deinit()
{
  sub_227FFEA14(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + qword_2813C8080 + 8);

  v3 = *(v0 + qword_2813C8088 + 8);

  v4 = *(v0 + qword_2813C8070 + 8);

  v5 = *(v0 + qword_2813C8078);

  v6 = *(v0 + qword_2813C8068);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_1()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for FilterRules()
{
  result = qword_2813C8058;
  if (!qword_2813C8058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FFE9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FFEA14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FFEA74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_227FFEA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FFEAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FFEB54()
{
  type metadata accessor for SharedData();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E698, &qword_22813BA20);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_228139B5C();
  qword_2813C8B60 = result;
  return result;
}

uint64_t sub_227FFEBC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t Prompt.Rendering.fixedPrompt.getter()
{
  sub_22813788C();
  sub_227FDB420();
  v0 = sub_2281397BC();

  return v0;
}

uint64_t sub_227FFECCC()
{
  v1 = sub_22813805C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v27 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v27 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = v27 - v17;
  sub_22800C8EC();
  v19 = swift_dynamicCastMetatype();
  v20 = *(v2 + 16);
  if (v19)
  {
LABEL_4:
    v20(v15, v0, v1);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10]);
    v21 = sub_22813999C();
    if (v21)
    {
      v22 = v21;
      (*(v2 + 8))(v15, v1);
    }

    else
    {
      v22 = swift_allocError();
      (*(v2 + 32))(v23, v15, v1);
    }

    v24 = sub_228136E1C();

    v25 = NSError.loggingDescription.getter();
    return v25;
  }

  v20(v18, v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E748, &qword_22813BB40);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm_2(v28);
    goto LABEL_4;
  }

  v20(v11, v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E750, &qword_22813BB48);
  if (swift_dynamicCast())
  {
    sub_22800C938(v28, v27);
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v25 = sub_2281399CC();
    __swift_destroy_boxed_opaque_existential_1Tm_2(v27);
  }

  else
  {
    v20(v7, v0, v1);
    v25 = sub_22813930C();
  }

  (*(v2 + 8))(v11, v1);
  return v25;
}

uint64_t sub_227FFF010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *(*(type metadata accessor for SummarizationParameters() - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_22813805C();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v9 = sub_2281376EC();
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = type metadata accessor for ModelBundleIdentifier();
  v4[20] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6D8, &unk_22813BAC0);
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v17 = sub_22813807C();
  v4[26] = v17;
  v18 = *(v17 - 8);
  v4[27] = v18;
  v19 = *(v18 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v20 = sub_22813750C();
  v4[30] = v20;
  v21 = *(v20 - 8);
  v4[31] = v21;
  v22 = *(v21 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FFF2F4, 0, 0);
}

uint64_t sub_227FFF2F4()
{
  v1 = v0[9];
  sub_2280017F4(v0[7], v0[29]);
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_227FFF934;
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  v9 = MEMORY[0x277D84F90];

  return sub_228008880(v5, v4, v8, v9, v6, v2 + 40, v7);
}

uint64_t sub_227FFF934()
{
  v2 = *(*v1 + 272);
  v3 = *v1;
  v3[35] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227FFFC80, 0, 0);
  }

  else
  {
    v4 = *(MEMORY[0x277D0D8F0] + 4);
    v5 = swift_task_alloc();
    v3[36] = v5;
    v6 = sub_22800CA68(&qword_2813C8708, MEMORY[0x277D71A98]);
    v3[37] = v6;
    *v5 = v3;
    v5[1] = sub_227FFFAFC;
    v7 = v3[33];
    v8 = v3[30];
    v9 = v3[25];
    v10 = v3[22];

    return MEMORY[0x282165A80](v7, v8, v10, v6);
  }
}

uint64_t sub_227FFFAFC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v14 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2[23] + 8))(v2[25], v2[22]);
    v4 = sub_228000234;
  }

  else
  {
    v5 = v2[29];
    v6 = v2[26];
    v7 = v2[27];
    v8 = v2[25];
    v9 = v2[22];
    v10 = v2[23];
    v11 = *(v10 + 8);
    v2[39] = v11;
    v2[40] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    v12 = *(v7 + 8);
    v2[41] = v12;
    v2[42] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v5, v6);
    v4 = sub_227FC621C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227FFFC80()
{
  v68 = v0;
  v1 = *(v0 + 280);
  (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);

    (*(v8 + 32))(v6, v5, v7);
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 112);
    v65 = *(v0 + 120);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 56);
    v15 = sub_22813882C();
    __swift_project_value_buffer(v15, qword_2813C8A20);
    sub_227FCAA80(v14, v12, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v14, v13, type metadata accessor for SummarizationParameters);
    v16 = *(v10 + 16);
    v16(v9, v65, v11);
    v17 = sub_22813880C();
    v18 = sub_2281396DC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v22 = *(v0 + 88);
    v63 = *(v0 + 96);
    v23 = *(v0 + 80);
    if (v19)
    {
      v59 = v18;
      v61 = v16;
      v24 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v67[0] = v57;
      *v24 = 136446722;
      *(v0 + 384) = *(v22 + 32);
      v25 = sub_2281392EC();
      v27 = v26;
      log = v17;
      sub_227FCAB98(v22, type metadata accessor for SummarizationParameters);
      v28 = sub_227FCC340(v25, v27, v67);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      *(v0 + 16) = *(v23 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v29 = sub_2281392EC();
      v31 = v30;
      sub_227FCAB98(v23, type metadata accessor for SummarizationParameters);
      v32 = sub_227FCC340(v29, v31, v67);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2082;
      v33 = sub_227FFECCC();
      v35 = v34;
      v36 = *(v20 + 8);
      v36(v21, v63);
      v37 = sub_227FCC340(v33, v35, v67);

      *(v24 + 24) = v37;
      _os_log_impl(&dword_227FC3000, log, v59, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v57, -1, -1);
      v38 = v24;
      v16 = v61;
      MEMORY[0x22AAB28A0](v38, -1, -1);
    }

    else
    {

      v36 = *(v20 + 8);
      v36(v21, v63);
      sub_227FCAB98(v23, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v22, type metadata accessor for SummarizationParameters);
    }

    v39 = *(v0 + 120);
    v40 = *(v0 + 96);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10]);
    v41 = swift_allocError();
    v16(v42, v39, v40);
    v43 = swift_allocObject();
    *(v43 + 16) = 56;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0;
    v44 = sub_227FF96D4(v41, 0xD00000000000006BLL, 0x8000000228144800, 106, sub_22800CBD8);

    sub_227FDB3CC();
    swift_allocError();
    *v45 = 56;
    *(v45 + 8) = v44;
    swift_willThrow();
    v36(v39, v40);
  }

  v47 = *(v0 + 256);
  v46 = *(v0 + 264);
  v49 = *(v0 + 224);
  v48 = *(v0 + 232);
  v51 = *(v0 + 192);
  v50 = *(v0 + 200);
  v52 = *(v0 + 168);
  v53 = *(v0 + 152);
  v58 = *(v0 + 128);
  v60 = *(v0 + 120);
  v62 = *(v0 + 112);
  v64 = *(v0 + 88);
  v66 = *(v0 + 80);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_228000234()
{
  v68 = v0;
  v1 = *(v0 + 304);
  (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);

    (*(v8 + 32))(v6, v5, v7);
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 112);
    v65 = *(v0 + 120);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 56);
    v15 = sub_22813882C();
    __swift_project_value_buffer(v15, qword_2813C8A20);
    sub_227FCAA80(v14, v12, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v14, v13, type metadata accessor for SummarizationParameters);
    v16 = *(v10 + 16);
    v16(v9, v65, v11);
    v17 = sub_22813880C();
    v18 = sub_2281396DC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v22 = *(v0 + 88);
    v63 = *(v0 + 96);
    v23 = *(v0 + 80);
    if (v19)
    {
      v59 = v18;
      v61 = v16;
      v24 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v67[0] = v57;
      *v24 = 136446722;
      *(v0 + 384) = *(v22 + 32);
      v25 = sub_2281392EC();
      v27 = v26;
      log = v17;
      sub_227FCAB98(v22, type metadata accessor for SummarizationParameters);
      v28 = sub_227FCC340(v25, v27, v67);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      *(v0 + 16) = *(v23 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v29 = sub_2281392EC();
      v31 = v30;
      sub_227FCAB98(v23, type metadata accessor for SummarizationParameters);
      v32 = sub_227FCC340(v29, v31, v67);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2082;
      v33 = sub_227FFECCC();
      v35 = v34;
      v36 = *(v20 + 8);
      v36(v21, v63);
      v37 = sub_227FCC340(v33, v35, v67);

      *(v24 + 24) = v37;
      _os_log_impl(&dword_227FC3000, log, v59, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v57, -1, -1);
      v38 = v24;
      v16 = v61;
      MEMORY[0x22AAB28A0](v38, -1, -1);
    }

    else
    {

      v36 = *(v20 + 8);
      v36(v21, v63);
      sub_227FCAB98(v23, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v22, type metadata accessor for SummarizationParameters);
    }

    v39 = *(v0 + 120);
    v40 = *(v0 + 96);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10]);
    v41 = swift_allocError();
    v16(v42, v39, v40);
    v43 = swift_allocObject();
    *(v43 + 16) = 56;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0;
    v44 = sub_227FF96D4(v41, 0xD00000000000006BLL, 0x8000000228144800, 106, sub_22800CBD8);

    sub_227FDB3CC();
    swift_allocError();
    *v45 = 56;
    *(v45 + 8) = v44;
    swift_willThrow();
    v36(v39, v40);
  }

  v47 = *(v0 + 256);
  v46 = *(v0 + 264);
  v49 = *(v0 + 224);
  v48 = *(v0 + 232);
  v51 = *(v0 + 192);
  v50 = *(v0 + 200);
  v52 = *(v0 + 168);
  v53 = *(v0 + 152);
  v58 = *(v0 + 128);
  v60 = *(v0 + 120);
  v62 = *(v0 + 112);
  v64 = *(v0 + 88);
  v66 = *(v0 + 80);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_2280007E8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  v2[45] = v0;

  v5 = v2[43];

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_228000AE8, 0, 0);
  }

  else
  {
    v6 = *(MEMORY[0x277D0D8F0] + 4);
    v7 = swift_task_alloc();
    v2[46] = v7;
    *v7 = v4;
    v7[1] = sub_22800098C;
    v8 = v2[37];
    v9 = v2[32];
    v10 = v2[30];
    v11 = v2[24];
    v12 = v2[22];

    return MEMORY[0x282165A80](v9, v10, v12, v8);
  }
}

uint64_t sub_22800098C()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v12 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = *(v2 + 320);
    (*(v2 + 312))(*(v2 + 192), *(v2 + 176));
    v5 = sub_228001228;
  }

  else
  {
    v7 = *(v2 + 328);
    v6 = *(v2 + 336);
    v8 = *(v2 + 320);
    v9 = *(v2 + 224);
    v10 = *(v2 + 208);
    (*(v2 + 312))(*(v2 + 192), *(v2 + 176));
    v7(v9, v10);
    v5 = sub_2280010B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228000AE8()
{
  v72 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  (*(v0 + 328))(*(v0 + 224), *(v0 + 208));
  (*(v5 + 8))(v3, v4);
  *(v0 + 32) = v1;
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);

    (*(v12 + 32))(v10, v9, v11);
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 112);
    v69 = *(v0 + 120);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 56);
    v19 = sub_22813882C();
    __swift_project_value_buffer(v19, qword_2813C8A20);
    sub_227FCAA80(v18, v16, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v18, v17, type metadata accessor for SummarizationParameters);
    v20 = *(v14 + 16);
    v20(v13, v69, v15);
    v21 = sub_22813880C();
    v22 = sub_2281396DC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 104);
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);
    v67 = *(v0 + 96);
    v27 = *(v0 + 80);
    if (v23)
    {
      v63 = v22;
      v65 = v20;
      v28 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v71[0] = v61;
      *v28 = 136446722;
      *(v0 + 384) = *(v26 + 32);
      v29 = sub_2281392EC();
      v31 = v30;
      log = v21;
      sub_227FCAB98(v26, type metadata accessor for SummarizationParameters);
      v32 = sub_227FCC340(v29, v31, v71);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      *(v0 + 16) = *(v27 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v33 = sub_2281392EC();
      v35 = v34;
      sub_227FCAB98(v27, type metadata accessor for SummarizationParameters);
      v36 = sub_227FCC340(v33, v35, v71);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2082;
      v37 = sub_227FFECCC();
      v39 = v38;
      v40 = *(v24 + 8);
      v40(v25, v67);
      v41 = sub_227FCC340(v37, v39, v71);

      *(v28 + 24) = v41;
      _os_log_impl(&dword_227FC3000, log, v63, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v61, -1, -1);
      v42 = v28;
      v20 = v65;
      MEMORY[0x22AAB28A0](v42, -1, -1);
    }

    else
    {

      v40 = *(v24 + 8);
      v40(v25, v67);
      sub_227FCAB98(v27, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v26, type metadata accessor for SummarizationParameters);
    }

    v43 = *(v0 + 120);
    v44 = *(v0 + 96);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10]);
    v45 = swift_allocError();
    v20(v46, v43, v44);
    v47 = swift_allocObject();
    *(v47 + 16) = 56;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    v48 = sub_227FF96D4(v45, 0xD00000000000006BLL, 0x8000000228144800, 106, sub_22800CBD8);

    sub_227FDB3CC();
    swift_allocError();
    *v49 = 56;
    *(v49 + 8) = v48;
    swift_willThrow();
    v40(v43, v44);
  }

  v51 = *(v0 + 256);
  v50 = *(v0 + 264);
  v53 = *(v0 + 224);
  v52 = *(v0 + 232);
  v55 = *(v0 + 192);
  v54 = *(v0 + 200);
  v56 = *(v0 + 168);
  v57 = *(v0 + 152);
  v62 = *(v0 + 128);
  v64 = *(v0 + 120);
  v66 = *(v0 + 112);
  v68 = *(v0 + 88);
  v70 = *(v0 + 80);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_2280010B4()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  (*(v4 + 8))(v2, v3);
  (*(v4 + 32))(v2, v1, v3);
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[21];
  v17 = v0[19];
  v18 = v0[16];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[10];
  v14 = v0[6];
  sub_2281374FC();
  (*(v7 + 8))(v5, v8);

  v15 = v0[1];

  return v15();
}

uint64_t sub_228001228()
{
  v72 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  (*(v0 + 328))(*(v0 + 224), *(v0 + 208));
  (*(v5 + 8))(v3, v4);
  *(v0 + 32) = v1;
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);

    (*(v12 + 32))(v10, v9, v11);
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 112);
    v69 = *(v0 + 120);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 56);
    v19 = sub_22813882C();
    __swift_project_value_buffer(v19, qword_2813C8A20);
    sub_227FCAA80(v18, v16, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v18, v17, type metadata accessor for SummarizationParameters);
    v20 = *(v14 + 16);
    v20(v13, v69, v15);
    v21 = sub_22813880C();
    v22 = sub_2281396DC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 104);
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);
    v67 = *(v0 + 96);
    v27 = *(v0 + 80);
    if (v23)
    {
      v63 = v22;
      v65 = v20;
      v28 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v71[0] = v61;
      *v28 = 136446722;
      *(v0 + 384) = *(v26 + 32);
      v29 = sub_2281392EC();
      v31 = v30;
      log = v21;
      sub_227FCAB98(v26, type metadata accessor for SummarizationParameters);
      v32 = sub_227FCC340(v29, v31, v71);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      *(v0 + 16) = *(v27 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v33 = sub_2281392EC();
      v35 = v34;
      sub_227FCAB98(v27, type metadata accessor for SummarizationParameters);
      v36 = sub_227FCC340(v33, v35, v71);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2082;
      v37 = sub_227FFECCC();
      v39 = v38;
      v40 = *(v24 + 8);
      v40(v25, v67);
      v41 = sub_227FCC340(v37, v39, v71);

      *(v28 + 24) = v41;
      _os_log_impl(&dword_227FC3000, log, v63, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v61, -1, -1);
      v42 = v28;
      v20 = v65;
      MEMORY[0x22AAB28A0](v42, -1, -1);
    }

    else
    {

      v40 = *(v24 + 8);
      v40(v25, v67);
      sub_227FCAB98(v27, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v26, type metadata accessor for SummarizationParameters);
    }

    v43 = *(v0 + 120);
    v44 = *(v0 + 96);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10]);
    v45 = swift_allocError();
    v20(v46, v43, v44);
    v47 = swift_allocObject();
    *(v47 + 16) = 56;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    v48 = sub_227FF96D4(v45, 0xD00000000000006BLL, 0x8000000228144800, 106, sub_22800CBD8);

    sub_227FDB3CC();
    swift_allocError();
    *v49 = 56;
    *(v49 + 8) = v48;
    swift_willThrow();
    v40(v43, v44);
  }

  v51 = *(v0 + 256);
  v50 = *(v0 + 264);
  v53 = *(v0 + 224);
  v52 = *(v0 + 232);
  v55 = *(v0 + 192);
  v54 = *(v0 + 200);
  v56 = *(v0 + 168);
  v57 = *(v0 + 152);
  v62 = *(v0 + 128);
  v64 = *(v0 + 120);
  v66 = *(v0 + 112);
  v68 = *(v0 + 88);
  v70 = *(v0 + 80);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_2280017F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v48 = sub_2281373DC();
  v46 = *(v48 - 8);
  v5 = *(v46 + 64);
  v7 = MEMORY[0x28223BE20](v48, v6);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v42 - v10;
  v12 = sub_22813791C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ModelBundleIdentifier();
  v18 = *(*(v43 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v43, v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v42 - v24;
  v44 = sub_22800C950(a1);
  v49 = v26;
  v27 = type metadata accessor for PromptManager();
  sub_227FCAA80(v3 + *(v27 + 20), v25, type metadata accessor for ModelBundleIdentifier);
  (*(v13 + 16))(v17, v3 + *(v27 + 24), v12);
  v28 = a1[8];
  v29 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v28);
  v30 = (*(*(v29 + 8) + 8))(v28);
  v31 = v50;
  sub_2280F94B0(v30, v32, v11);
  if (v31)
  {

    (*(v13 + 8))(v17, v12);
    v33 = v25;
    return sub_227FCAB98(v33, type metadata accessor for ModelBundleIdentifier);
  }

  v50 = v11;
  v42 = v12;
  sub_227FCAA80(v25, v22, type metadata accessor for ModelBundleIdentifier);
  if (swift_getEnumCaseMultiPayload() < 2)
  {

    sub_227FCAB98(v22, type metadata accessor for ModelBundleIdentifier);
    v34 = v46;
    v35 = v50;
    v36 = v48;
    (*(v46 + 16))(v45, v50, v48);
    sub_22813806C();
    (*(v34 + 8))(v35, v36);
    (*(v13 + 8))(v17, v42);
    v33 = v25;
    return sub_227FCAB98(v33, type metadata accessor for ModelBundleIdentifier);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v38 = sub_22813882C();
  __swift_project_value_buffer(v38, qword_2813C89F0);
  v39 = sub_22813880C();
  v40 = sub_2281396DC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_227FC3000, v39, v40, ".externalIntelligence is not supported by PromptTemplate extensions", v41, 2u);
    MEMORY[0x22AAB28A0](v41, -1, -1);
  }

  result = sub_2281398FC();
  __break(1u);
  return result;
}

uint64_t sub_228001CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v7 = *MEMORY[0x277CD8990];
    v8 = sub_2281392AC();
    v10 = v9;
    if (v8 == sub_2281392AC() && v10 == v11)
    {
    }

    else
    {
      v13 = sub_2281399BC();

      if ((v13 & 1) == 0)
      {
        return 1;
      }
    }

    v14 = sub_22813948C();
    MEMORY[0x22AAB18D0](v14);

    v15 = sub_2281392FC();
    v17 = v16;

    if (*(a6 + 16))
    {
      v18 = sub_22808C964(v15, v17);
      v20 = v19;

      if (v20)
      {
        sub_2280BDD98(&v22, *(*(a6 + 56) + 8 * v18));
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_228001E18(uint64_t a1, char a2)
{
  *(v3 + 305) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = *(*(type metadata accessor for SummarizationParameters() - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v5 = sub_22813805C();
  *(v3 + 88) = v5;
  v6 = *(v5 - 8);
  *(v3 + 96) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v8 = sub_2281390AC();
  *(v3 + 128) = v8;
  v9 = *(v8 - 8);
  *(v3 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6D8, &unk_22813BAC0);
  *(v3 + 160) = v11;
  v12 = *(v11 - 8);
  *(v3 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v14 = sub_22813807C();
  *(v3 + 184) = v14;
  v15 = *(v14 - 8);
  *(v3 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v17 = *(*(type metadata accessor for ModelBundleIdentifier() - 8) + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v18 = sub_2281377CC();
  *(v3 + 216) = v18;
  v19 = *(v18 - 8);
  *(v3 + 224) = v19;
  v20 = *(v19 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280020E0, 0, 0);
}

uint64_t sub_2280020E0()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[7];
  v4 = v0[8];
  v6 = type metadata accessor for PromptManager();
  sub_227FCAA80(v4 + *(v6 + 20), v2, type metadata accessor for ModelBundleIdentifier);
  sub_2280F8BF4(v2, 0, 1, 0, 1, v1);
  sub_2280017F4(v5, v3);
  v7 = v0[7];
  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_228002770;
  v9 = v0[29];
  v10 = v0[25];
  v11 = v0[22];
  v12 = v0[7];
  v13 = v0[8];
  v14 = MEMORY[0x277D84F90];

  return sub_228008880(v11, v10, v12, v14, v9, v7 + 40, v13);
}

uint64_t sub_228002770()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_228002A70;
  }

  else
  {
    v3 = sub_228002884;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228002884()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 64);
  if (*(v0 + 305) == 1)
  {
    v4 = *(v0 + 152);
    sub_228137D1C();
    *(v0 + 48) = *v3;
    v5 = *(MEMORY[0x277D0D940] + 4);
    v6 = swift_task_alloc();
    *(v0 + 256) = v6;
    v7 = sub_22813755C();
    v8 = sub_22800CA68(&qword_27D81E6F0, MEMORY[0x277D71A98]);
    *v6 = v0;
    v6[1] = sub_22800302C;
    v9 = *(v0 + 152);

    return MEMORY[0x282165AD8](v0 + 48, v7, v8);
  }

  else
  {
    v10 = *(v0 + 144);
    sub_228137D1C();
    *(v0 + 40) = *v3;
    v11 = *(MEMORY[0x277D0D938] + 4);
    v12 = swift_task_alloc();
    *(v0 + 280) = v12;
    v13 = sub_22813755C();
    v14 = sub_22800CA68(&qword_2813C8720, MEMORY[0x277D71A98]);
    *v12 = v0;
    v12[1] = sub_2280032F4;
    v15 = *(v0 + 144);

    return MEMORY[0x282165AD0](v0 + 40, v13, v14);
  }
}

uint64_t sub_228002A70()
{
  v69 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  *(v0 + 32) = v4;
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);

    (*(v11 + 32))(v9, v8, v10);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 104);
    v66 = *(v0 + 112);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 56);
    v18 = sub_22813882C();
    __swift_project_value_buffer(v18, qword_2813C8A20);
    sub_227FCAA80(v17, v15, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v17, v16, type metadata accessor for SummarizationParameters);
    v19 = *(v13 + 16);
    v19(v12, v66, v14);
    v20 = sub_22813880C();
    v21 = sub_2281396DC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    v25 = *(v0 + 80);
    v64 = *(v0 + 88);
    v26 = *(v0 + 72);
    if (v22)
    {
      v61 = v21;
      v62 = v19;
      v27 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68[0] = v60;
      *v27 = 136446722;
      *(v0 + 304) = *(v25 + 32);
      v28 = sub_2281392EC();
      v30 = v29;
      log = v20;
      sub_227FCAB98(v25, type metadata accessor for SummarizationParameters);
      v31 = sub_227FCC340(v28, v30, v68);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      *(v0 + 16) = *(v26 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v32 = sub_2281392EC();
      v34 = v33;
      sub_227FCAB98(v26, type metadata accessor for SummarizationParameters);
      v35 = sub_227FCC340(v32, v34, v68);

      *(v27 + 14) = v35;
      *(v27 + 22) = 2082;
      v36 = sub_227FFECCC();
      v38 = v37;
      v39 = *(v23 + 8);
      v39(v24, v64);
      v40 = sub_227FCC340(v36, v38, v68);

      *(v27 + 24) = v40;
      _os_log_impl(&dword_227FC3000, log, v61, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v60, -1, -1);
      v41 = v27;
      v19 = v62;
      MEMORY[0x22AAB28A0](v41, -1, -1);
    }

    else
    {

      v39 = *(v23 + 8);
      v39(v24, v64);
      sub_227FCAB98(v26, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v25, type metadata accessor for SummarizationParameters);
    }

    v42 = *(v0 + 112);
    v43 = *(v0 + 88);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10]);
    v44 = swift_allocError();
    v19(v45, v42, v43);
    v46 = swift_allocObject();
    *(v46 + 16) = 56;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0;
    v47 = sub_227FF96D4(v44, 0xD00000000000006BLL, 0x8000000228144800, 195, sub_22800C81C);

    sub_227FDB3CC();
    swift_allocError();
    *v48 = 56;
    *(v48 + 8) = v47;
    swift_willThrow();
    v39(v42, v43);
  }

  v49 = *(v0 + 232);
  v51 = *(v0 + 200);
  v50 = *(v0 + 208);
  v52 = *(v0 + 176);
  v54 = *(v0 + 144);
  v53 = *(v0 + 152);
  v56 = *(v0 + 112);
  v55 = *(v0 + 120);
  v63 = *(v0 + 104);
  v65 = *(v0 + 80);
  v67 = *(v0 + 72);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_22800302C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *(*v2 + 136);
  v12 = *v2;
  *(*v2 + 264) = v1;

  v7 = (v6 + 8);
  if (v1)
  {
    (*v7)(v4[19], v4[16]);
    v8 = sub_2280035AC;
  }

  else
  {
    v9 = v4[19];
    v10 = v4[16];
    v4[34] = a1;
    (*v7)(v9, v10);
    v8 = sub_228003198;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_228003198()
{
  v1 = v0[34];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v6 + 8))(v5, v7);
  result = (*(v3 + 8))(v2, v4);
  if (__OFADD__(v1, 12))
  {
    __break(1u);
  }

  else
  {
    v21 = v1 + 12;
    v9 = v0[29];
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[22];
    v14 = v0[18];
    v13 = v0[19];
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[13];
    v18 = v0[10];
    v20 = v0[9];

    v19 = v0[1];

    return v19(v21);
  }

  return result;
}

uint64_t sub_2280032F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *(*v2 + 136);
  v12 = *v2;
  *(*v2 + 288) = v1;

  v7 = (v6 + 8);
  if (v1)
  {
    (*v7)(v4[18], v4[16]);
    v8 = sub_228003B84;
  }

  else
  {
    v9 = v4[18];
    v10 = v4[16];
    v4[37] = a1;
    (*v7)(v9, v10);
    v8 = sub_228003460;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_228003460()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[22];
  v12 = v0[18];
  v11 = v0[19];
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[13];
  v16 = v0[10];
  v19 = v0[9];
  v20 = v0[37];

  v17 = v0[1];

  return v17(v20);
}

uint64_t sub_2280035AC()
{
  v72 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 264);
  *(v0 + 32) = v7;
  v8 = *(v0 + 120);
  v9 = *(v0 + 88);
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);

    (*(v14 + 32))(v12, v11, v13);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 104);
    v69 = *(v0 + 112);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 56);
    v21 = sub_22813882C();
    __swift_project_value_buffer(v21, qword_2813C8A20);
    sub_227FCAA80(v20, v18, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v20, v19, type metadata accessor for SummarizationParameters);
    v22 = *(v16 + 16);
    v22(v15, v69, v17);
    v23 = sub_22813880C();
    v24 = sub_2281396DC();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 80);
    v67 = *(v0 + 88);
    v29 = *(v0 + 72);
    if (v25)
    {
      v64 = v24;
      v65 = v22;
      v30 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v71[0] = v63;
      *v30 = 136446722;
      *(v0 + 304) = *(v28 + 32);
      v31 = sub_2281392EC();
      v33 = v32;
      log = v23;
      sub_227FCAB98(v28, type metadata accessor for SummarizationParameters);
      v34 = sub_227FCC340(v31, v33, v71);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      *(v0 + 16) = *(v29 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v35 = sub_2281392EC();
      v37 = v36;
      sub_227FCAB98(v29, type metadata accessor for SummarizationParameters);
      v38 = sub_227FCC340(v35, v37, v71);

      *(v30 + 14) = v38;
      *(v30 + 22) = 2082;
      v39 = sub_227FFECCC();
      v41 = v40;
      v42 = *(v26 + 8);
      v42(v27, v67);
      v43 = sub_227FCC340(v39, v41, v71);

      *(v30 + 24) = v43;
      _os_log_impl(&dword_227FC3000, log, v64, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v63, -1, -1);
      v44 = v30;
      v22 = v65;
      MEMORY[0x22AAB28A0](v44, -1, -1);
    }

    else
    {

      v42 = *(v26 + 8);
      v42(v27, v67);
      sub_227FCAB98(v29, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v28, type metadata accessor for SummarizationParameters);
    }

    v45 = *(v0 + 112);
    v46 = *(v0 + 88);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10]);
    v47 = swift_allocError();
    v22(v48, v45, v46);
    v49 = swift_allocObject();
    *(v49 + 16) = 56;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    v50 = sub_227FF96D4(v47, 0xD00000000000006BLL, 0x8000000228144800, 195, sub_22800C81C);

    sub_227FDB3CC();
    swift_allocError();
    *v51 = 56;
    *(v51 + 8) = v50;
    swift_willThrow();
    v42(v45, v46);
  }

  v52 = *(v0 + 232);
  v54 = *(v0 + 200);
  v53 = *(v0 + 208);
  v55 = *(v0 + 176);
  v57 = *(v0 + 144);
  v56 = *(v0 + 152);
  v59 = *(v0 + 112);
  v58 = *(v0 + 120);
  v66 = *(v0 + 104);
  v68 = *(v0 + 80);
  v70 = *(v0 + 72);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_228003B84()
{
  v72 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 288);
  *(v0 + 32) = v7;
  v8 = *(v0 + 120);
  v9 = *(v0 + 88);
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);

    (*(v14 + 32))(v12, v11, v13);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 104);
    v69 = *(v0 + 112);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 56);
    v21 = sub_22813882C();
    __swift_project_value_buffer(v21, qword_2813C8A20);
    sub_227FCAA80(v20, v18, type metadata accessor for SummarizationParameters);
    sub_227FCAA80(v20, v19, type metadata accessor for SummarizationParameters);
    v22 = *(v16 + 16);
    v22(v15, v69, v17);
    v23 = sub_22813880C();
    v24 = sub_2281396DC();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 80);
    v67 = *(v0 + 88);
    v29 = *(v0 + 72);
    if (v25)
    {
      v64 = v24;
      v65 = v22;
      v30 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v71[0] = v63;
      *v30 = 136446722;
      *(v0 + 304) = *(v28 + 32);
      v31 = sub_2281392EC();
      v33 = v32;
      log = v23;
      sub_227FCAB98(v28, type metadata accessor for SummarizationParameters);
      v34 = sub_227FCC340(v31, v33, v71);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      *(v0 + 16) = *(v29 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
      v35 = sub_2281392EC();
      v37 = v36;
      sub_227FCAB98(v29, type metadata accessor for SummarizationParameters);
      v38 = sub_227FCC340(v35, v37, v71);

      *(v30 + 14) = v38;
      *(v30 + 22) = 2082;
      v39 = sub_227FFECCC();
      v41 = v40;
      v42 = *(v26 + 8);
      v42(v27, v67);
      v43 = sub_227FCC340(v39, v41, v71);

      *(v30 + 24) = v43;
      _os_log_impl(&dword_227FC3000, log, v64, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v63, -1, -1);
      v44 = v30;
      v22 = v65;
      MEMORY[0x22AAB28A0](v44, -1, -1);
    }

    else
    {

      v42 = *(v26 + 8);
      v42(v27, v67);
      sub_227FCAB98(v29, type metadata accessor for SummarizationParameters);
      sub_227FCAB98(v28, type metadata accessor for SummarizationParameters);
    }

    v45 = *(v0 + 112);
    v46 = *(v0 + 88);
    sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10]);
    v47 = swift_allocError();
    v22(v48, v45, v46);
    v49 = swift_allocObject();
    *(v49 + 16) = 56;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    v50 = sub_227FF96D4(v47, 0xD00000000000006BLL, 0x8000000228144800, 195, sub_22800C81C);

    sub_227FDB3CC();
    swift_allocError();
    *v51 = 56;
    *(v51 + 8) = v50;
    swift_willThrow();
    v42(v45, v46);
  }

  v52 = *(v0 + 232);
  v54 = *(v0 + 200);
  v53 = *(v0 + 208);
  v55 = *(v0 + 176);
  v57 = *(v0 + 144);
  v56 = *(v0 + 152);
  v59 = *(v0 + 112);
  v58 = *(v0 + 120);
  v66 = *(v0 + 104);
  v68 = *(v0 + 80);
  v70 = *(v0 + 72);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_22800415C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_22813807C();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228004220, 0, 0);
}

uint64_t sub_228004220()
{
  v1 = v0[18];
  v2 = v0[15];
  sub_228004954(v0[13] + 56, (v0 + 2));
  sub_2280049B8(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_228004538;
  v4 = v0[18];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[13];

  return sub_228004E74(v7, v4, v8, v5);
}

uint64_t sub_228004538()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_2280046D4;
  }

  else
  {
    v3 = sub_22800464C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22800464C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2280046D4()
{
  v21 = v0;
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[20];
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v2 = sub_22813882C();
  __swift_project_value_buffer(v2, qword_2813C8A20);
  sub_228004954((v0 + 2), (v0 + 7));
  v3 = v1;
  v4 = sub_22813880C();
  v5 = sub_2281396DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v6 = 136446466;
    v9 = v0[10];
    v10 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 7);
    v14 = sub_227FCC340(v11, v13, &v20);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2114;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v16;
    *v7 = v16;
    _os_log_impl(&dword_227FC3000, v4, v5, "Unexpected error encountered for FCC request: %{public}s, error: %{public}@", v6, 0x16u);
    sub_22800C88C(v7, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 7);
  }

  v17 = v0[18];
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 2);

  v18 = v0[1];

  return v18();
}

uint64_t sub_228004954(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280049B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v48 = sub_2281373DC();
  v46 = *(v48 - 8);
  v5 = *(v46 + 64);
  v7 = MEMORY[0x28223BE20](v48, v6);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v43 - v10;
  v12 = sub_22813791C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ModelBundleIdentifier();
  v18 = *(*(v44 - 1) + 64);
  v20 = MEMORY[0x28223BE20](v44, v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v43 - v24;
  v26 = type metadata accessor for PromptManager();
  sub_227FCAA80(v3 + *(v26 + 20), v25, type metadata accessor for ModelBundleIdentifier);
  (*(v13 + 16))(v17, v3 + *(v26 + 24), v12);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = *(v28 + 8);
  v30 = v11;
  v31 = (*(v29 + 8))(v27);
  v32 = v49;
  sub_2280F94B0(v31, v33, v11);
  if (v32)
  {

    (*(v13 + 8))(v17, v12);
    v34 = v25;
    return sub_227FCAB98(v34, type metadata accessor for ModelBundleIdentifier);
  }

  v35 = v45;
  v49 = v12;
  sub_227FCAA80(v25, v22, type metadata accessor for ModelBundleIdentifier);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v44 = "notificationStack";

    sub_227FCAB98(v22, type metadata accessor for ModelBundleIdentifier);
    v36 = v46;
    v37 = v48;
    (*(v46 + 16))(v35, v30, v48);
    sub_22813806C();
    (*(v36 + 8))(v30, v37);
    (*(v13 + 8))(v17, v49);
    v34 = v25;
    return sub_227FCAB98(v34, type metadata accessor for ModelBundleIdentifier);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v39 = sub_22813882C();
  __swift_project_value_buffer(v39, qword_2813C89F0);
  v40 = sub_22813880C();
  v41 = sub_2281396DC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_227FC3000, v40, v41, ".externalIntelligence is not supported by PromptTemplate extensions", v42, 2u);
    MEMORY[0x22AAB28A0](v42, -1, -1);
  }

  result = sub_2281398FC();
  __break(1u);
  return result;
}

uint64_t sub_228004E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_2281375DC();
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  v9 = sub_228136FCC();
  v5[33] = v9;
  v10 = *(v9 - 8);
  v5[34] = v10;
  v11 = *(v10 + 64) + 15;
  v5[35] = swift_task_alloc();
  v12 = type metadata accessor for ModelBundleIdentifier();
  v5[36] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A0, &unk_22813BA60);
  v5[38] = v14;
  v15 = *(v14 - 8);
  v5[39] = v15;
  v16 = *(v15 + 64) + 15;
  v5[40] = swift_task_alloc();
  v17 = sub_22813716C();
  v5[41] = v17;
  v18 = *(v17 - 8);
  v5[42] = v18;
  v19 = *(v18 + 64) + 15;
  v5[43] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v21 = sub_2281390AC();
  v5[45] = v21;
  v22 = *(v21 - 8);
  v5[46] = v22;
  v23 = *(v22 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v24 = sub_22813787C();
  v5[53] = v24;
  v25 = *(v24 - 8);
  v5[54] = v25;
  v26 = *(v25 + 64) + 15;
  v5[55] = swift_task_alloc();
  v27 = sub_22813882C();
  v5[56] = v27;
  v28 = *(v27 - 8);
  v5[57] = v28;
  v29 = *(v28 + 64) + 15;
  v5[58] = swift_task_alloc();
  v30 = *(*(sub_22813759C() - 8) + 64) + 15;
  v5[59] = swift_task_alloc();
  v31 = sub_2281377FC();
  v5[60] = v31;
  v32 = *(v31 - 8);
  v5[61] = v32;
  v33 = *(v32 + 64) + 15;
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280052A8, 0, 0);
}

uint64_t sub_2280052A8()
{
  v100 = v0;
  v91 = v0[63];
  v92 = v0[62];
  v1 = v0[61];
  v2 = v0[59];
  v4 = v0[28];
  v3 = v0[29];
  v95 = v0[27];
  v98 = v0[60];
  sub_228004954(v95 + 56, (v0 + 20));
  v6 = v0[23];
  v5 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v6);
  v7 = sub_22800CC40(v6, *(v5 + 8));
  v8 = v7;
  if ((v7 & 0x100000000) != 0)
  {
    v8 = 0;
  }

  v88 = BYTE4(v7) & 1;
  v89 = v8;
  v9 = *(type metadata accessor for PromptManager() + 24);
  sub_2281378EC();
  v11 = v0[23];
  v10 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v11);
  (*(*(v10 + 8) + 8))(v11);

  sub_2281378FC();
  v13 = v0[23];
  v12 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v13);
  BYTE1(v80) = 1;
  LOBYTE(v80) = v88;
  LOBYTE(v79) = 0;
  v77 = v2;
  v78 = (*(*(v12 + 8) + 24))(v13);
  sub_2281377DC();
  (*(v1 + 16))(v92, v91, v98);
  v14 = sub_22813785C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[64] = sub_22813784C();
  v17 = sub_22800AEEC(v95);
  v19 = v18;
  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v0[56], qword_2813C8A20);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v0[56], qword_2813C4990);
  }

  (*(v0[57] + 16))(v0[58], v20, v0[56]);

  v21 = sub_22813880C();
  v22 = sub_2281396BC();

  v23 = os_log_type_enabled(v21, v22);
  v25 = v0[57];
  v24 = v0[58];
  v26 = v0[56];
  if (v23)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v99[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_227FCC340(v17, v19, v99);
    _os_log_impl(&dword_227FC3000, v21, v22, "Factual consistency threshold identifier: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v28);
    MEMORY[0x22AAB28A0](v28, -1, -1);
    MEMORY[0x22AAB28A0](v27, -1, -1);
  }

  (*(v25 + 8))(v24, v26);
  v29 = v0[55];
  v30 = v0[47];
  v31 = v0[26];
  sub_22813786C();
  *(swift_task_alloc() + 16) = v31;
  sub_2281390BC();

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v32 = v0[48];
  v96 = v0[49];
  v34 = v0[46];
  v33 = v0[47];
  v35 = v0[44];
  v93 = v0[45];
  v36 = v0[42];
  v37 = v0[43];
  v38 = v0[41];
  v39 = v0[27];
  sub_228139B6C();
  sub_228136FEC();
  sub_228136FDC();
  (*(v36 + 8))(v37, v38);
  (*(v36 + 56))(v35, 0, 1, v38);
  v40 = v32;
  sub_22813909C();
  sub_22800C88C(v35, &qword_27D81E6A8, &qword_22813F930);
  v41 = *(v34 + 8);
  v0[65] = v41;
  v0[66] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42 = v93;
  v41(v33, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6B0, &unk_22813BA70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  strcpy((inited + 32), "inputMessage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v45 = *v39;
  v44 = v39[1];
  v46 = MEMORY[0x277D837D0];
  v47 = MEMORY[0x277D42EC0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v47;
  *(inited + 48) = v45;
  *(inited + 56) = v44;
  strcpy((inited + 88), "outputMessage");
  *(inited + 102) = -4864;
  v48 = v39[2];
  v49 = v39[3];
  *(inited + 128) = v46;
  *(inited + 136) = v47;
  *(inited + 104) = v48;
  *(inited + 112) = v49;

  sub_227FE40AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E390, &qword_22813AA08);
  swift_arrayDestroy();
  sub_22800CA68(&qword_2813C4730, MEMORY[0x277D42D78]);
  sub_22813919C();

  v94 = v41;
  v41(v40, v42);
  if (qword_2813C7028 != -1)
  {
    swift_once();
  }

  v50 = v0[37];
  v51 = __swift_project_value_buffer(v0[36], qword_2813C8AD8);
  sub_227FCAA80(v51, v50, type metadata accessor for ModelBundleIdentifier);
  v52 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v53 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v53 = &qword_2813C76F8;
  }

  v54 = *(*v53 + 1344);
  v55 = *(*v53 + 1352);
  v56 = *(*v53 + 1360);
  v57 = *(*v53 + 1368);
  v58 = *(*v53 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v56(v99, v58);

    v59 = v99[0];
  }

  else
  {

    v59 = v55;
  }

  v60 = v0[51];
  v61 = v0[49];
  v62 = v0[50];
  v63 = v0[45];
  v65 = v0[39];
  v64 = v0[40];
  v66 = v0[38];
  v81 = v0[35];
  v82 = v0[34];
  v83 = v0[33];
  v84 = v0[52];
  v85 = v0[32];
  v86 = v0[31];
  v87 = v0[46];
  v90 = v0[30];
  sub_2280F8BF4(v0[37], 2, 0, v59, 0, v64);
  (*(v65 + 104))(v64, *MEMORY[0x277D0E548], v66);
  sub_22813916C();
  (*(v65 + 8))(v64, v66);
  v94(v61, v63);
  v67 = v0[23];
  v68 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v67);
  (*(v68 + 16))(v67, v68);
  sub_22813913C();

  v94(v62, v63);
  v69 = v0[23];
  v70 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v69);
  (*(v70 + 24))(v69, v70);
  sub_22813912C();
  (*(v82 + 8))(v81, v83);
  v94(v60, v63);
  (*(v87 + 16))(v85, v84, v63);
  (*(v86 + 104))(v85, *MEMORY[0x277D71DA8], v90);
  v71 = *(MEMORY[0x277D71CE8] + 4);
  v97 = (*MEMORY[0x277D71CE8] + MEMORY[0x277D71CE8]);
  v72 = swift_task_alloc();
  v0[67] = v72;
  *v72 = v0;
  v72[1] = sub_228005D90;
  v73 = v0[55];
  v74 = v0[32];
  v75 = v0[25];

  return v97(v75, v74, v73);
}

uint64_t sub_228005D90()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  (*(v2[31] + 8))(v2[32], v2[30]);
  if (v0)
  {
    v5 = sub_2280060A8;
  }

  else
  {
    v5 = sub_228005EF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228005EF8()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[61];
  v13 = v0[60];
  v14 = v0[62];
  v15 = v0[59];
  v16 = v0[58];
  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[52];
  v8 = v0[53];
  v17 = v0[51];
  v18 = v0[50];
  v19 = v0[49];
  v20 = v0[48];
  v10 = v0[45];
  v21 = v0[47];
  v22 = v0[44];
  v23 = v0[43];
  v24 = v0[40];
  v25 = v0[37];
  v26 = v0[35];
  v27 = v0[32];

  v2(v9, v10);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v13);
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 20);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2280060A8()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[61];
  v14 = v0[60];
  v15 = v0[62];
  v16 = v0[59];
  v17 = v0[58];
  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[52];
  v8 = v0[53];
  v18 = v0[51];
  v19 = v0[50];
  v20 = v0[49];
  v21 = v0[48];
  v10 = v0[45];
  v22 = v0[47];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[40];
  v26 = v0[37];
  v27 = v0[35];
  v28 = v0[32];

  v2(v9, v10);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v14);
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 20);

  v11 = v0[1];
  v12 = v0[68];

  return v11();
}

uint64_t sub_228006258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[30] = a8;
  v9[31] = v8;
  v9[28] = a6;
  v9[29] = a7;
  v9[26] = a4;
  v9[27] = a5;
  v9[24] = a2;
  v9[25] = a3;
  v9[23] = a1;
  v10 = sub_2281375DC();
  v9[32] = v10;
  v11 = *(v10 - 8);
  v9[33] = v11;
  v12 = *(v11 + 64) + 15;
  v9[34] = swift_task_alloc();
  v13 = sub_22813787C();
  v9[35] = v13;
  v14 = *(v13 - 8);
  v9[36] = v14;
  v15 = *(v14 + 64) + 15;
  v9[37] = swift_task_alloc();
  v16 = *(*(sub_22813759C() - 8) + 64) + 15;
  v9[38] = swift_task_alloc();
  v17 = sub_2281377FC();
  v9[39] = v17;
  v18 = *(v17 - 8);
  v9[40] = v18;
  v19 = *(v18 + 64) + 15;
  v9[41] = swift_task_alloc();
  v9[42] = swift_task_alloc();
  v20 = sub_228136FCC();
  v9[43] = v20;
  v21 = *(v20 - 8);
  v9[44] = v21;
  v22 = *(v21 + 64) + 15;
  v9[45] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A0, &unk_22813BA60);
  v9[46] = v23;
  v24 = *(v23 - 8);
  v9[47] = v24;
  v25 = *(v24 + 64) + 15;
  v9[48] = swift_task_alloc();
  v26 = sub_22813716C();
  v9[49] = v26;
  v27 = *(v26 - 8);
  v9[50] = v27;
  v28 = *(v27 + 64) + 15;
  v9[51] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930) - 8) + 64) + 15;
  v9[52] = swift_task_alloc();
  v30 = sub_2281390AC();
  v9[53] = v30;
  v31 = *(v30 - 8);
  v9[54] = v31;
  v32 = *(v31 + 64) + 15;
  v9[55] = swift_task_alloc();
  v9[56] = swift_task_alloc();
  v9[57] = swift_task_alloc();
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v9[60] = swift_task_alloc();
  v33 = sub_22813807C();
  v9[61] = v33;
  v34 = *(v33 - 8);
  v9[62] = v34;
  v35 = *(v34 + 64) + 15;
  v9[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228006664, 0, 0);
}

uint64_t sub_228006664()
{
  v1 = v0[31];
  sub_228007778(v0[27], v0[63]);
  v2 = v0[63];
  v3 = v0[55];
  sub_228004954(v0[27], (v0 + 18));
  v4 = v0[21];
  v5 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v4);
  sub_22800CC40(v4, *(v5 + 8));
  *(swift_task_alloc() + 16) = v2;
  sub_2281390BC();

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v61 = v0[60];
  v42 = v0[58];
  v43 = v0[59];
  v7 = v0[55];
  v6 = v0[56];
  v8 = v0[54];
  v36 = v0[53];
  v10 = v0[51];
  v9 = v0[52];
  v11 = v0[49];
  v12 = v0[50];
  v38 = v0[57];
  v39 = v0[48];
  v40 = v0[47];
  v41 = v0[46];
  v44 = v0[45];
  v46 = v0[44];
  v47 = v0[43];
  v50 = v8;
  v51 = v0[42];
  v53 = v0[41];
  v52 = v0[40];
  v54 = v0[39];
  v49 = v0[38];
  v57 = v0[37];
  v58 = v0[34];
  v59 = v0[33];
  v60 = v0[32];
  v45 = v0[31];
  v48 = v0[30];
  v55 = v0[28];
  v56 = v0[29];
  v13 = v0[25];
  v37 = v0[26];
  v35 = v0[24];
  sub_228139B6C();
  sub_228136FEC();
  sub_228136FDC();
  (*(v12 + 8))(v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_22813909C();
  sub_22800C88C(v9, &qword_27D81E6A8, &qword_22813F930);
  v14 = *(v8 + 8);
  v0[64] = v14;
  v0[65] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6B0, &unk_22813BA70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  *(inited + 32) = 0x746E6F4372657375;
  v16 = MEMORY[0x277D42EC0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v16;
  *(inited + 40) = 0xEB00000000746E65;
  *(inited + 48) = v35;
  *(inited + 56) = v13;

  sub_227FE40AC(inited);
  swift_setDeallocating();
  sub_22800C88C(inited + 32, &qword_27D81E390, &qword_22813AA08);
  sub_22800CA68(&qword_2813C4730, MEMORY[0x277D42D78]);
  sub_22813919C();

  v14(v6, v36);
  v17 = sub_2281377CC();
  (*(*(v17 - 8) + 16))(v39, v37, v17);
  (*(v40 + 104))(v39, *MEMORY[0x277D0E548], v41);
  sub_22813916C();
  (*(v40 + 8))(v39, v41);
  v14(v38, v36);
  v18 = v0[21];
  v19 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v18);
  (*(v19 + 16))(v18, v19);
  sub_22813913C();

  v14(v42, v36);
  v20 = v0[21];
  v21 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v20);
  (*(v21 + 24))(v20, v21);
  sub_22813912C();
  (*(v46 + 8))(v44, v47);
  v14(v43, v36);
  LODWORD(v11) = *(type metadata accessor for PromptManager() + 24);
  sub_2281378EC();
  v23 = v0[21];
  v22 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v23);
  (*(*(v22 + 8) + 8))(v23);

  sub_2281378FC();
  v25 = v0[21];
  v24 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v25);
  (*(*(v24 + 8) + 24))(v25);
  sub_2281377DC();
  (*(v52 + 16))(v53, v51, v54);
  v26 = sub_22813785C();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v0[66] = sub_22813784C();
  sub_22800A5F0(v55, v56);
  sub_22813786C();
  (*(v50 + 16))(v58, v61, v36);
  (*(v59 + 104))(v58, *MEMORY[0x277D71DA8], v60);
  v29 = *(MEMORY[0x277D71CE8] + 4);
  v62 = (*MEMORY[0x277D71CE8] + MEMORY[0x277D71CE8]);
  v30 = swift_task_alloc();
  v0[67] = v30;
  *v30 = v0;
  v30[1] = sub_228007098;
  v31 = v0[37];
  v32 = v0[34];
  v33 = v0[23];

  return v62(v33, v32, v31);
}

uint64_t sub_228007098()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  if (v0)
  {
    v5 = sub_2280073CC;
  }

  else
  {
    v5 = sub_228007200;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228007200()
{
  v1 = v0[66];
  v2 = v0[63];
  v14 = v0[64];
  v15 = v0[65];
  v3 = v0[62];
  v4 = v0[60];
  v16 = v0[61];
  v17 = v0[59];
  v18 = v0[58];
  v19 = v0[57];
  v20 = v0[56];
  v21 = v0[55];
  v13 = v0[53];
  v22 = v0[52];
  v23 = v0[51];
  v24 = v0[48];
  v25 = v0[45];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[37];
  v26 = v0[41];
  v27 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v28 = v0[34];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  v14(v4, v13);
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 18);
  (*(v3 + 8))(v2, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2280073CC()
{
  v51 = v0;
  v1 = v0[66];
  v42 = v0[64];
  v44 = v0[65];
  v2 = v0[62];
  v46 = v0[61];
  v48 = v0[63];
  v3 = v0[60];
  v4 = v0[53];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[36];
  v9 = v0[37];
  v10 = v0[35];

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v5, v6);
  v42(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 18);
  (*(v2 + 8))(v48, v46);
  v11 = v0[68];
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v12 = v0[27];
  v13 = sub_22813882C();
  __swift_project_value_buffer(v13, qword_2813C8A08);
  sub_228004954(v12, (v0 + 13));
  v14 = v11;
  v15 = sub_22813880C();
  v16 = sub_2281396DC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v50 = v19;
    *v17 = 136446466;
    v20 = v0[16];
    v21 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 13, v20);
    v22 = (*(v21 + 16))(v20, v21);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 13);
    v25 = sub_227FCC340(v22, v24, &v50);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2114;
    v26 = v11;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v27;
    *v18 = v27;
    _os_log_impl(&dword_227FC3000, v15, v16, "Prompt error encountered for request: %{public}s, error: %{public}@", v17, 0x16u);
    sub_22800C88C(v18, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v19);
    MEMORY[0x22AAB28A0](v19, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_2(v0 + 13);
  }

  v28 = v0[63];
  v30 = v0[59];
  v29 = v0[60];
  v31 = v0[57];
  v32 = v0[58];
  v34 = v0[55];
  v33 = v0[56];
  v37 = v0[52];
  v38 = v0[51];
  v39 = v0[48];
  v40 = v0[45];
  v41 = v0[42];
  v43 = v0[41];
  v45 = v0[38];
  v47 = v0[37];
  v49 = v0[34];
  swift_willThrow();

  v35 = v0[1];

  return v35();
}

uint64_t sub_228007778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v48 = sub_2281373DC();
  v46 = *(v48 - 8);
  v5 = *(v46 + 64);
  v7 = MEMORY[0x28223BE20](v48, v6);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v43 - v10;
  v12 = sub_22813791C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ModelBundleIdentifier();
  v18 = *(*(v44 - 1) + 64);
  v20 = MEMORY[0x28223BE20](v44, v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v43 - v24;
  v26 = type metadata accessor for PromptManager();
  sub_227FCAA80(v3 + *(v26 + 20), v25, type metadata accessor for ModelBundleIdentifier);
  (*(v13 + 16))(v17, v3 + *(v26 + 24), v12);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = *(v28 + 8);
  v30 = v11;
  v31 = (*(v29 + 8))(v27);
  v32 = v49;
  sub_2280F94B0(v31, v33, v11);
  if (v32)
  {

    (*(v13 + 8))(v17, v12);
    v34 = v25;
    return sub_227FCAB98(v34, type metadata accessor for ModelBundleIdentifier);
  }

  v35 = v45;
  v49 = v12;
  sub_227FCAA80(v25, v22, type metadata accessor for ModelBundleIdentifier);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v44 = "Template extensions";

    sub_227FCAB98(v22, type metadata accessor for ModelBundleIdentifier);
    v36 = v46;
    v37 = v48;
    (*(v46 + 16))(v35, v30, v48);
    sub_22813806C();
    (*(v36 + 8))(v30, v37);
    (*(v13 + 8))(v17, v49);
    v34 = v25;
    return sub_227FCAB98(v34, type metadata accessor for ModelBundleIdentifier);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v39 = sub_22813882C();
  __swift_project_value_buffer(v39, qword_2813C89F0);
  v40 = sub_22813880C();
  v41 = sub_2281396DC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_227FC3000, v40, v41, ".externalIntelligence is not supported by PromptTemplate extensions", v42, 2u);
    MEMORY[0x22AAB28A0](v42, -1, -1);
  }

  result = sub_2281398FC();
  __break(1u);
  return result;
}

uint64_t sub_228007C34(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v4 = sub_22813716C();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v8 = sub_2281390AC();
  v3[25] = v8;
  v9 = *(v8 - 8);
  v3[26] = v9;
  v10 = *(v9 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v11 = sub_22813807C();
  v3[30] = v11;
  v12 = *(v11 - 8);
  v3[31] = v12;
  v13 = *(v12 + 64) + 15;
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228007DFC, 0, 0);
}

uint64_t sub_228007DFC()
{
  v1 = *(v0 + 160);
  sub_228007778(*(v0 + 152), *(v0 + 256));
  v2 = *(v0 + 256);
  v3 = *(v0 + 216);
  *(swift_task_alloc() + 16) = v2;
  sub_2281390BC();

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  v11 = *(v0 + 168);
  v22 = *(v0 + 232);
  v23 = *(v0 + 160);
  sub_228139B6C();
  sub_228136FEC();
  sub_228136FDC();
  (*(v9 + 8))(v10, v11);
  (*(v9 + 56))(v8, 0, 1, v11);
  sub_22813909C();
  sub_22800C88C(v8, &qword_27D81E6A8, &qword_22813F930);
  v12 = *(v6 + 8);
  *(v0 + 264) = v12;
  *(v0 + 272) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6B0, &unk_22813BA70);
  inited = swift_initStackObject();
  *(inited + 32) = 0x746E6F4372657375;
  v14 = inited + 32;
  *(inited + 16) = xmmword_22813A4B0;
  v15 = MEMORY[0x277D42EC0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v15;
  *(inited + 40) = 0xEB00000000746E65;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  sub_227FE40AC(inited);
  swift_setDeallocating();
  sub_22800C88C(v14, &qword_27D81E390, &qword_22813AA08);
  sub_22800CA68(&qword_2813C4730, MEMORY[0x277D42D78]);
  sub_22813919C();

  v12(v4, v7);
  *(v0 + 144) = *v23;
  v16 = *(MEMORY[0x277D0D938] + 4);
  v17 = swift_task_alloc();
  *(v0 + 280) = v17;
  v18 = sub_22813755C();
  v19 = sub_22800CA68(&qword_2813C8720, MEMORY[0x277D71A98]);
  *v17 = v0;
  v17[1] = sub_2280083B0;
  v20 = *(v0 + 232);

  return MEMORY[0x282165AD0](v0 + 144, v18, v19);
}

uint64_t sub_2280083B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = sub_2280085B8;
  }

  else
  {
    *(v4 + 296) = a1;
    v7 = sub_2280084D8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280084D8()
{
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = *(v0 + 184);
  (*(v0 + 264))(*(v0 + 232), *(v0 + 200));
  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);
  v10 = *(v0 + 296);

  return v9(v10);
}

uint64_t sub_2280085B8()
{
  v31 = v0;
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  (*(v0 + 264))(*(v0 + 232), *(v0 + 200));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 288);
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 152);
  v7 = sub_22813882C();
  __swift_project_value_buffer(v7, qword_2813C8A08);
  sub_228004954(v6, v0 + 104);
  v8 = v5;
  v9 = sub_22813880C();
  v10 = sub_2281396DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v11 = 136446466;
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v14);
    v16 = (*(v15 + 16))(v14, v15);
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm_2((v0 + 104));
    v19 = sub_227FCC340(v16, v18, &v30);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2114;
    v20 = v5;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v21;
    *v12 = v21;
    _os_log_impl(&dword_227FC3000, v9, v10, "Prompt error encountered for request: %{public}s, error: %{public}@", v11, 0x16u);
    sub_22800C88C(v12, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v13);
    MEMORY[0x22AAB28A0](v13, -1, -1);
    MEMORY[0x22AAB28A0](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_2((v0 + 104));
  }

  v22 = *(v0 + 256);
  v24 = *(v0 + 224);
  v23 = *(v0 + 232);
  v25 = *(v0 + 216);
  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  swift_willThrow();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_228008880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[59] = a6;
  v7[60] = a7;
  v7[57] = a4;
  v7[58] = a5;
  v7[55] = a2;
  v7[56] = a3;
  v7[54] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6F8, &qword_22813BAE0) - 8) + 64) + 15;
  v7[61] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E700, &qword_22813BAE8);
  v7[62] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[63] = swift_task_alloc();
  v11 = sub_228137CEC();
  v7[64] = v11;
  v12 = *(v11 - 8);
  v7[65] = v12;
  v13 = *(v12 + 64) + 15;
  v7[66] = swift_task_alloc();
  v14 = sub_228137CFC();
  v7[67] = v14;
  v15 = *(v14 - 8);
  v7[68] = v15;
  v16 = *(v15 + 64) + 15;
  v7[69] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E708, &qword_22813BAF0) - 8) + 64) + 15;
  v7[70] = swift_task_alloc();
  v18 = sub_22813872C();
  v7[71] = v18;
  v19 = *(v18 - 8);
  v7[72] = v19;
  v20 = *(v19 + 64) + 15;
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v21 = sub_228136FCC();
  v7[75] = v21;
  v22 = *(v21 - 8);
  v7[76] = v22;
  v23 = *(v22 + 64) + 15;
  v7[77] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A0, &unk_22813BA60);
  v7[78] = v24;
  v25 = *(v24 - 8);
  v7[79] = v25;
  v26 = *(v25 + 64) + 15;
  v7[80] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E710, &qword_22813BAF8);
  v7[81] = v27;
  v28 = *(v27 - 8);
  v7[82] = v28;
  v29 = *(v28 + 64) + 15;
  v7[83] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E718, &qword_22813BB00) - 8) + 64) + 15;
  v7[84] = swift_task_alloc();
  v31 = sub_228137B6C();
  v7[85] = v31;
  v32 = *(v31 - 8);
  v7[86] = v32;
  v33 = *(v32 + 64) + 15;
  v7[87] = swift_task_alloc();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E720, &qword_22813BB08);
  v7[88] = v34;
  v35 = *(v34 - 8);
  v7[89] = v35;
  v36 = *(v35 + 64) + 15;
  v7[90] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E728, &qword_22813BB10) - 8) + 64) + 15;
  v7[91] = swift_task_alloc();
  v38 = sub_22813716C();
  v7[92] = v38;
  v39 = *(v38 - 8);
  v7[93] = v39;
  v40 = *(v39 + 64) + 15;
  v7[94] = swift_task_alloc();
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930) - 8) + 64) + 15;
  v7[95] = swift_task_alloc();
  v42 = sub_2281390AC();
  v7[96] = v42;
  v43 = *(v42 - 8);
  v7[97] = v43;
  v44 = *(v43 + 64) + 15;
  v7[98] = swift_task_alloc();
  v7[99] = swift_task_alloc();
  v7[100] = swift_task_alloc();
  v7[101] = swift_task_alloc();
  v7[102] = swift_task_alloc();
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  v7[105] = swift_task_alloc();
  v7[106] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228008E6C, 0, 0);
}

uint64_t sub_228008E6C()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 440);
  *(swift_task_alloc() + 16) = v2;
  sub_2281390BC();

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v79 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 736);
  v10 = *(v0 + 448);
  v80 = *(v0 + 800);
  v82 = *(v0 + 456);
  sub_228139B6C();
  sub_228136FEC();
  sub_228136FDC();
  (*(v8 + 8))(v7, v9);
  (*(v8 + 56))(v6, 0, 1, v9);
  sub_22813909C();
  sub_22800C88C(v6, &qword_27D81E6A8, &qword_22813F930);
  v11 = *(v5 + 8);
  *(v0 + 856) = v11;
  *(v0 + 864) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v4, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6B0, &unk_22813BA70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = 6516580;
  *(inited + 40) = 0xE300000000000000;
  v14 = *v10;
  v13 = v10[1];
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D42EC0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v16;
  *(inited + 48) = v14;
  *(inited + 56) = v13;
  *(inited + 88) = 0x747865746E6F63;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 128) = v15;
  *(inited + 136) = v16;
  *(inited + 104) = 0;
  *(inited + 112) = 0xE000000000000000;

  sub_227FE40AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E390, &qword_22813AA08);
  swift_arrayDestroy();
  *(v0 + 872) = sub_22800CA68(&qword_2813C4730, MEMORY[0x277D42D78]);
  sub_22813919C();

  v84 = v11;
  v11(v3, v79);
  if (*(v82 + 16))
  {
    v17 = *(v0 + 728);
    v18 = *(v0 + 456);
    sub_22813873C();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v76 = *(v0 + 848);
  v72 = *(v0 + 840);
  v83 = *(v0 + 832);
  v66 = *(v0 + 824);
  v81 = *(v0 + 816);
  v20 = *(v0 + 800);
  v21 = *(v0 + 768);
  v22 = *(v0 + 728);
  v23 = *(v0 + 720);
  v24 = *(v0 + 712);
  v25 = *(v0 + 696);
  v26 = *(v0 + 688);
  v58 = *(v0 + 680);
  v59 = *(v0 + 808);
  v60 = *(v0 + 672);
  v61 = *(v0 + 704);
  v63 = *(v0 + 664);
  v64 = *(v0 + 656);
  v65 = *(v0 + 648);
  v68 = *(v0 + 640);
  v69 = *(v0 + 632);
  v70 = *(v0 + 624);
  v73 = *(v0 + 616);
  v74 = *(v0 + 608);
  v75 = *(v0 + 600);
  v78 = *(v0 + 592);
  v77 = *(v0 + 560);
  v71 = *(v0 + 472);
  v67 = *(v0 + 464);
  v62 = *(v0 + 448);
  v27 = sub_22813874C();
  (*(*(v27 - 8) + 56))(v22, v19, 1, v27);
  sub_22813917C();
  sub_22800C88C(v22, &qword_27D81E728, &qword_22813BB10);
  v84(v20, v21);
  v28 = sub_228137BAC();
  *(v0 + 880) = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  *(v0 + 888) = v30;
  *(v0 + 896) = (v29 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v30(v25, 1, 1, v28);
  *(v0 + 1104) = *MEMORY[0x277D0E5C0];
  v31 = *(v26 + 104);
  *(v0 + 904) = v31;
  *(v0 + 912) = (v26 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v31(v25);
  v32 = sub_228137B4C();
  *(v0 + 920) = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  *(v0 + 928) = v34;
  *(v0 + 936) = (v33 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v34(v60, 1, 1, v32);
  sub_228137BBC();
  v35 = *MEMORY[0x277D0E548];
  *(v0 + 1108) = v35;
  v36 = *(v24 + 104);
  *(v0 + 944) = v36;
  *(v0 + 952) = (v24 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v36(v23, v35, v61);
  sub_22813914C();
  v37 = *(v24 + 8);
  *(v0 + 960) = v37;
  *(v0 + 968) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v23, v61);
  v84(v59, v21);
  v38 = *(type metadata accessor for SummarizationParameters() + 36);
  *(v0 + 1112) = v38;
  v39 = sub_228137A9C();
  *(v0 + 976) = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 16);
  *(v0 + 984) = v41;
  *(v0 + 992) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v63, v62 + v38, v39);
  v42 = *(v64 + 104);
  *(v0 + 1000) = v42;
  *(v0 + 1008) = (v64 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v42(v63, v35, v65);
  sub_22813915C();
  v43 = *(v64 + 8);
  *(v0 + 1016) = v43;
  *(v0 + 1024) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v63, v65);
  v84(v81, v21);
  v44 = sub_2281377CC();
  *(v0 + 1032) = v44;
  v45 = *(v44 - 8);
  v46 = *(v45 + 16);
  *(v0 + 1040) = v46;
  *(v0 + 1048) = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v46(v68, v67, v44);
  v47 = *(v69 + 104);
  *(v0 + 1056) = v47;
  *(v0 + 1064) = (v69 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v47(v68, v35, v70);
  sub_22813916C();
  v48 = *(v69 + 8);
  *(v0 + 1072) = v48;
  *(v0 + 1080) = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v68, v70);
  v84(v66, v21);
  v49 = v71[3];
  v50 = v71[4];
  __swift_project_boxed_opaque_existential_1(v71, v49);
  (*(v50 + 16))(v49, v50);
  sub_22813913C();

  v84(v83, v21);
  v51 = v71[3];
  v52 = v71[4];
  __swift_project_boxed_opaque_existential_1(v71, v51);
  (*(v52 + 24))(v51, v52);
  sub_22813912C();
  (*(v74 + 8))(v73, v75);
  v84(v72, v21);
  v53 = sub_22813871C();
  (*(*(v53 - 8) + 56))(v77, 1, 1, v53);
  sub_22813870C();
  v54 = *(MEMORY[0x277D0E540] + 4);
  v55 = swift_task_alloc();
  *(v0 + 1088) = v55;
  *v55 = v0;
  v55[1] = sub_2280097F8;
  v56 = *(v0 + 488);

  return MEMORY[0x282166B60](v56, 0xD00000000000001CLL, 0x8000000228144870);
}

uint64_t sub_2280097F8()
{
  v2 = *(*v1 + 1088);
  v5 = *v1;
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v3 = sub_22800A234;
  }

  else
  {
    v3 = sub_22800990C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22800990C()
{
  v1 = *(v0 + 488);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E730, &qword_22813BB18);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_22800C88C(v1, &qword_27D81E6F8, &qword_22813BAE0);
  }

  else
  {
    v84 = *(v0 + 1072);
    v86 = *(v0 + 1080);
    v78 = *(v0 + 1056);
    v80 = *(v0 + 1064);
    v74 = *(v0 + 1040);
    v76 = *(v0 + 1048);
    v70 = *(v0 + 1024);
    v72 = *(v0 + 1032);
    v66 = *(v0 + 1008);
    v68 = *(v0 + 1016);
    v64 = *(v0 + 1000);
    v59 = *(v0 + 984);
    v61 = *(v0 + 992);
    v57 = *(v0 + 1112);
    v58 = *(v0 + 976);
    v55 = *(v0 + 960);
    v56 = *(v0 + 968);
    v51 = *(v0 + 944);
    v52 = *(v0 + 952);
    v49 = *(v0 + 1108);
    v46 = *(v0 + 928);
    v47 = *(v0 + 936);
    v45 = *(v0 + 920);
    v42 = *(v0 + 904);
    v43 = *(v0 + 912);
    v41 = *(v0 + 1104);
    v39 = *(v0 + 888);
    v40 = *(v0 + 896);
    v38 = *(v0 + 880);
    v102 = *(v0 + 864);
    v28 = *(v2 + 48);
    v92 = *(v0 + 792);
    v94 = *(v0 + 848);
    v98 = *(v0 + 776);
    v100 = *(v0 + 856);
    v96 = *(v0 + 768);
    v35 = *(v0 + 720);
    v36 = *(v0 + 704);
    v32 = *(v0 + 696);
    v33 = *(v0 + 680);
    v34 = *(v0 + 672);
    v44 = *(v0 + 664);
    v48 = *(v0 + 648);
    v53 = *(v0 + 640);
    v54 = *(v0 + 624);
    v29 = *(v0 + 584);
    v3 = *(v0 + 576);
    v30 = *(v0 + 568);
    v31 = *(v0 + 592);
    v106 = *(v0 + 552);
    v90 = *(v0 + 544);
    v4 = *(v0 + 536);
    v27 = *(v0 + 528);
    v5 = *(v0 + 520);
    v88 = v5;
    v6 = *(v0 + 504);
    v104 = *(v0 + 512);
    v7 = *(v0 + 496);
    v50 = *(v0 + 464);
    v37 = *(v0 + 448);
    v82 = *(v0 + 440);
    v8 = *(v7 + 48);
    v9 = *(v90 + 32);
    v9(v6, v1, v4);
    v10 = v1;
    v11 = *(v5 + 32);
    v11(v6 + v8, v10 + v28, v104);
    v12 = *(v7 + 48);
    v9(v106, v6, v4);
    v11(v27, v6 + v12, v104);
    sub_228137CDC();
    (*(v3 + 8))(v31, v30);
    (*(v3 + 32))(v31, v29, v30);
    sub_227FE40AC(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E738, &unk_22813BB20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22813B480;
    *(inited + 32) = 0xD000000000000074;
    *(inited + 40) = 0x8000000228144890;
    v39(v32, 1, 1, v38);
    v42(v32, v41, v33);
    v46(v34, 1, 1, v45);
    sub_228137BBC();
    v51(v35, v49, v36);
    *(inited + 72) = sub_228137BCC();
    __swift_allocate_boxed_opaque_existential_0Tm((inited + 48));
    sub_228137B1C();
    v55(v35, v36);
    *(inited + 80) = 0xD000000000000063;
    *(inited + 88) = 0x8000000228144910;
    v59(v44, v37 + v57, v58);
    v64(v44, v49, v48);
    *(inited + 120) = v58;
    __swift_allocate_boxed_opaque_existential_0Tm((inited + 96));
    sub_228137AFC();
    v68(v44, v48);
    *(inited + 128) = 0xD00000000000004DLL;
    *(inited + 136) = 0x8000000228144980;
    v74(v53, v50, v72);
    v78(v53, v49, v54);
    *(inited + 168) = v72;
    __swift_allocate_boxed_opaque_existential_0Tm((inited + 144));
    sub_228137B0C();
    v84(v53, v54);
    sub_227FE4858(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E380, &unk_228142F80);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E740, &unk_22813BB30);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_22813A4B0;
    strcpy((v14 + 32), "promptTemplate");
    *(v14 + 47) = -18;
    v15 = sub_22813807C();
    *(v14 + 72) = v15;
    *(v14 + 80) = sub_22800CA68(&qword_2813C4818, MEMORY[0x277D0E698]);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v14 + 48));
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_0Tm, v82, v15);
    sub_227FE4A28(v14);
    swift_setDeallocating();
    sub_22800C88C(v14 + 32, &qword_27D81E3F0, &qword_22813AA60);
    sub_228137CCC();

    (*(v88 + 8))(v27, v104);
    (*(v90 + 8))(v106, v4);
    v100(v94, v96);
    (*(v98 + 32))(v94, v92, v96);
  }

  v17 = *(v0 + 872);
  v62 = *(v0 + 856);
  v63 = *(v0 + 864);
  v18 = *(v0 + 848);
  v65 = *(v0 + 840);
  v67 = *(v0 + 832);
  v69 = *(v0 + 824);
  v71 = *(v0 + 816);
  v73 = *(v0 + 808);
  v75 = *(v0 + 800);
  v19 = *(v0 + 792);
  v20 = *(v0 + 768);
  v77 = *(v0 + 784);
  v79 = *(v0 + 760);
  v81 = *(v0 + 752);
  v83 = *(v0 + 728);
  v85 = *(v0 + 720);
  v87 = *(v0 + 696);
  v89 = *(v0 + 672);
  v91 = *(v0 + 664);
  v93 = *(v0 + 640);
  v95 = *(v0 + 616);
  v21 = *(v0 + 592);
  v97 = *(v0 + 584);
  v22 = *(v0 + 576);
  v60 = *(v0 + 568);
  v99 = *(v0 + 560);
  v101 = *(v0 + 552);
  v103 = *(v0 + 528);
  v105 = *(v0 + 504);
  v23 = *(v0 + 480);
  v107 = *(v0 + 488);
  v24 = *(v0 + 432);
  sub_22813911C();
  *(v0 + 424) = *v23;
  sub_22813755C();
  sub_22813918C();
  v62(v19, v20);
  (*(v22 + 8))(v21, v60);
  v62(v18, v20);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22800A234()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[102];
  v12 = v0[101];
  v13 = v0[100];
  v14 = v0[99];
  v15 = v0[98];
  v8 = v0[96];
  v16 = v0[95];
  v17 = v0[94];
  v18 = v0[91];
  v19 = v0[90];
  v20 = v0[87];
  v21 = v0[84];
  v22 = v0[83];
  v23 = v0[80];
  v24 = v0[77];
  v25 = v0[73];
  v26 = v0[70];
  v27 = v0[69];
  v28 = v0[66];
  v29 = v0[63];
  v30 = v0[61];
  (*(v0[72] + 8))(v0[74], v0[71]);
  v2(v3, v8);

  v9 = v0[1];
  v10 = v0[137];

  return v9();
}

uint64_t sub_22800A438()
{
  v0 = sub_2281390AC();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22813807C();
  sub_22800CA68(&qword_2813C4818, MEMORY[0x277D0E698]);
  sub_2281390DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6B8, &qword_22813BA80);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22813A4B0;
  (*(v2 + 16))(v9 + v8, v6, v0);
  MEMORY[0x22AAB1670](v9);

  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_22800A5F0(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v82 = a2;
  v2 = sub_22813701C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v69 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6C0, &qword_22813BA88);
  v7 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71, v8);
  v73 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v70 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v74 = &v67 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v72 = &v67 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v67 - v32;
  v34 = sub_22813716C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22813713C();
  v79 = *(v40 - 8);
  v80 = v40;
  v41 = *(v79 + 64);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v67 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  sub_228139B6C();
  sub_22813715C();
  (*(v35 + 8))(v39, v34);
  sub_22813710C();
  v45 = *(v3 + 48);
  if (v45(v33, 1, v2) == 1)
  {
    sub_22800C88C(v33, &qword_27D81E328, &qword_2281402C0);
    v77 = sub_22800B714(&qword_2813C49D8, qword_2813C8A08);
    v78 = v46;
  }

  else
  {
    v77 = sub_228136FFC();
    v78 = v47;
    (*(v3 + 8))(v33, v2);
  }

  sub_22813711C();
  v48 = sub_22813708C();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v19, 1, v48) == 1)
  {
    sub_22800C88C(v19, &qword_27D81E580, &unk_2281402B0);
    v75 = sub_22800B938();
    v76 = v50;
  }

  else
  {
    v75 = sub_228136FFC();
    v76 = v51;
    (*(v49 + 8))(v19, v48);
  }

  sub_22813712C();
  v52 = sub_2281370BC();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v14, 1, v52) != 1)
  {
    v67 = sub_228136FFC();
    v68 = v54;
    (*(v53 + 8))(v14, v52);
    v55 = v72;
    sub_22813710C();
    v56 = v74;
    sub_22813700C();
    (*(v3 + 56))(v56, 0, 1, v2);
    v57 = *(v71 + 48);
    v58 = v73;
    sub_22800C790(v55, v73);
    sub_22800C790(v56, v58 + v57);
    if (v45(v58, 1, v2) == 1)
    {
      sub_22800C88C(v56, &qword_27D81E328, &qword_2281402C0);
      sub_22800C88C(v55, &qword_27D81E328, &qword_2281402C0);
      if (v45((v58 + v57), 1, v2) == 1)
      {
        sub_22800C88C(v58, &qword_27D81E328, &qword_2281402C0);
LABEL_21:
        v83 = v81;
        v84 = v82;

        MEMORY[0x22AAB1970](95, 0xE100000000000000);
        MEMORY[0x22AAB1970](v77, v78);

        MEMORY[0x22AAB1970](95, 0xE100000000000000);
        v60 = v67;
        v61 = v68;
        goto LABEL_19;
      }
    }

    else
    {
      v59 = v70;
      sub_22800C790(v58, v70);
      if (v45((v58 + v57), 1, v2) != 1)
      {
        v64 = v69;
        (*(v3 + 32))(v69, v58 + v57, v2);
        sub_22800CA68(&qword_2813C8760, MEMORY[0x277CC9640]);
        v65 = sub_22813926C();
        v66 = *(v3 + 8);
        v66(v64, v2);
        sub_22800C88C(v74, &qword_27D81E328, &qword_2281402C0);
        sub_22800C88C(v55, &qword_27D81E328, &qword_2281402C0);
        v66(v59, v2);
        sub_22800C88C(v58, &qword_27D81E328, &qword_2281402C0);
        if (v65)
        {
          goto LABEL_21;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_22800C88C(v74, &qword_27D81E328, &qword_2281402C0);
      v58 = v73;
      sub_22800C88C(v55, &qword_27D81E328, &qword_2281402C0);
      (*(v3 + 8))(v59, v2);
    }

    sub_22800C88C(v58, &qword_27D81E6C0, &qword_22813BA88);
    goto LABEL_17;
  }

  sub_22800C88C(v14, &qword_27D81E320, &unk_22813A7D0);
LABEL_18:
  v83 = v81;
  v84 = v82;

  MEMORY[0x22AAB1970](95, 0xE100000000000000);
  v60 = v77;
  v61 = v78;
LABEL_19:
  MEMORY[0x22AAB1970](v60, v61);

  MEMORY[0x22AAB1970](95, 0xE100000000000000);
  MEMORY[0x22AAB1970](v75, v76);

  v62 = v83;
  (*(v79 + 8))(v44, v80);
  return v62;
}

uint64_t sub_22800AEEC(uint64_t a1)
{
  v2 = sub_22813701C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6C0, &qword_22813BA88);
  v7 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69, v8);
  v70 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v68 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v64 - v22;
  v25 = MEMORY[0x28223BE20](v21, v24);
  v71 = &v64 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v64 - v28;
  v30 = sub_22813716C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22813713C();
  v78 = *(v36 - 8);
  v79 = v36;
  v37 = *(v78 + 64);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 + 32);
  v42 = *(a1 + 40);
  LOBYTE(v80) = *(a1 + 48);
  v74 = sub_22800BBB4(v41, v42, &v80);
  v75 = v43;
  v76 = v44;
  v77 = v45;
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  sub_228139B6C();
  sub_22813715C();
  (*(v31 + 8))(v35, v30);
  sub_22813710C();
  v46 = *(v3 + 48);
  if (v46(v29, 1, v2) == 1)
  {
    sub_22800C88C(v29, &qword_27D81E328, &qword_2281402C0);
    v72 = sub_22800B714(qword_2813C49E0, qword_2813C8A20);
    v73 = v47;
  }

  else
  {
    v72 = sub_228136FFC();
    v73 = v48;
    (*(v3 + 8))(v29, v2);
  }

  sub_22813712C();
  v49 = sub_2281370BC();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v14, 1, v49) != 1)
  {
    v65 = sub_228136FFC();
    v66 = v51;
    (*(v50 + 8))(v14, v49);
    v52 = v71;
    sub_22813710C();
    sub_22813700C();
    (*(v3 + 56))(v23, 0, 1, v2);
    v53 = v70;
    v54 = *(v69 + 48);
    sub_22800C790(v52, v70);
    sub_22800C790(v23, v53 + v54);
    if (v46(v53, 1, v2) == 1)
    {
      sub_22800C88C(v23, &qword_27D81E328, &qword_2281402C0);
      sub_22800C88C(v52, &qword_27D81E328, &qword_2281402C0);
      if (v46((v53 + v54), 1, v2) == 1)
      {
        sub_22800C88C(v53, &qword_27D81E328, &qword_2281402C0);
LABEL_18:
        v80 = v74;
        v81 = v75;
        MEMORY[0x22AAB1970](95, 0xE100000000000000);
        MEMORY[0x22AAB1970](v76, v77);

        MEMORY[0x22AAB1970](95, 0xE100000000000000);
        MEMORY[0x22AAB1970](v72, v73);

        MEMORY[0x22AAB1970](95, 0xE100000000000000);
        v56 = v65;
        v57 = v66;
        goto LABEL_16;
      }
    }

    else
    {
      v55 = v68;
      sub_22800C790(v53, v68);
      if (v46((v53 + v54), 1, v2) != 1)
      {
        v60 = v67;
        (*(v3 + 32))(v67, v53 + v54, v2);
        sub_22800CA68(&qword_2813C8760, MEMORY[0x277CC9640]);
        v61 = v55;
        v62 = sub_22813926C();
        v63 = *(v3 + 8);
        v63(v60, v2);
        sub_22800C88C(v23, &qword_27D81E328, &qword_2281402C0);
        sub_22800C88C(v71, &qword_27D81E328, &qword_2281402C0);
        v63(v61, v2);
        sub_22800C88C(v53, &qword_27D81E328, &qword_2281402C0);
        if (v62)
        {
          goto LABEL_18;
        }

LABEL_14:

        goto LABEL_15;
      }

      sub_22800C88C(v23, &qword_27D81E328, &qword_2281402C0);
      sub_22800C88C(v71, &qword_27D81E328, &qword_2281402C0);
      (*(v3 + 8))(v55, v2);
    }

    sub_22800C88C(v53, &qword_27D81E6C0, &qword_22813BA88);
    goto LABEL_14;
  }

  sub_22800C88C(v14, &qword_27D81E320, &unk_22813A7D0);
LABEL_15:
  v80 = v74;
  v81 = v75;
  MEMORY[0x22AAB1970](95, 0xE100000000000000);
  MEMORY[0x22AAB1970](v76, v77);

  MEMORY[0x22AAB1970](95, 0xE100000000000000);
  v56 = v72;
  v57 = v73;
LABEL_16:
  MEMORY[0x22AAB1970](v56, v57);

  v58 = v80;
  (*(v78 + 8))(v40, v79);
  return v58;
}

uint64_t sub_22800B714(void *a1, uint64_t a2)
{
  v4 = sub_22813882C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, a2);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_2813C4990);
  }

  (*(v5 + 16))(v9, v10, v4);
  v11 = sub_22813880C();
  v12 = sub_2281396DC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_227FC3000, v11, v12, "InferenceLocale's language code is nil.", v13, 2u);
    MEMORY[0x22AAB28A0](v13, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  return 0x4C6E776F6E6B6E55;
}

uint64_t sub_22800B938()
{
  v0 = sub_22813882C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_2813C8A08);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v0, qword_2813C4990);
  }

  (*(v1 + 16))(v5, v6, v0);
  v7 = sub_22813880C();
  v8 = sub_2281396DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_227FC3000, v7, v8, "InferenceLocale's region code is nil.", v9, 2u);
    MEMORY[0x22AAB28A0](v9, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  return 0x526E776F6E6B6E55;
}

uint64_t type metadata accessor for PromptManager()
{
  result = qword_2813C7B60;
  if (!qword_2813C7B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22800BBB4(ValueMetadata *a1, uint64_t a2, unsigned __int8 *a3)
{
  v56 = a1;
  v4 = sub_22813882C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6C8, &qword_22813BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813BA30;
  v54 = type metadata accessor for SKMailMessage();
  *(inited + 32) = v54;
  *(inited + 40) = 0x7373654D6C69616DLL;
  *(inited + 48) = 0xEB00000000656761;
  *(inited + 56) = &type metadata for SKMailMessageThread;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000002281438C0;
  *(inited + 80) = type metadata accessor for SKTextMessage();
  *(inited + 88) = 0x7373654D74786574;
  *(inited + 96) = 0xEB00000000656761;
  *(inited + 104) = &type metadata for SKTextMessageThread;
  *(inited + 112) = 0x7373654D74786574;
  *(inited + 120) = 0xEB00000000656761;
  *(inited + 128) = type metadata accessor for SKUserNotification();
  strcpy((inited + 136), "notification");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = &type metadata for SKUserNotificationThread;
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000002281446D0;
  *(inited + 176) = type metadata accessor for SKNoteMessage();
  *(inited + 184) = 0x7373654D65746F6ELL;
  *(inited + 192) = 0xEB00000000656761;
  *(inited + 200) = &type metadata for SKText;
  *(inited + 208) = 0x7478655465657266;
  *(inited + 216) = 0xE800000000000000;
  *(inited + 224) = &type metadata for SKTextChunk;
  *(inited + 232) = 0x7478655465657266;
  *(inited + 240) = 0xE800000000000000;
  v12 = sub_227FE3F98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6D0, &qword_22813BA98);
  swift_arrayDestroy();
  v55 = v12;
  v53 = v4;
  v52 = v5;
  v51 = v9;
  if (v10 == 2)
  {
  }

  else
  {
    v13 = sub_2281399BC();

    v14 = v56;
    if ((v13 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v15 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  HIDWORD(v50) = byte_2813C4629;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v16 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v16 = &qword_2813C76F8;
  }

  v17 = *(*v16 + 392);
  v18 = *(*v16 + 400);
  v20 = *(*v16 + 408);
  v19 = *(*v16 + 416);
  v21 = *(*v16 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v22 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v20(v57, v21);

    v18 = LOBYTE(v57[0]);
  }

  else
  {
  }

  v12 = v55;
  if (v18 && v54 == v56)
  {
    goto LABEL_32;
  }

  if (HIDWORD(v50))
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v23 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v23 = &qword_2813C76F8;
  }

  v24 = *(*v23 + 432);
  v25 = *(*v23 + 440);
  v27 = *(*v23 + 448);
  v26 = *(*v23 + 456);
  v28 = *(*v23 + 2208);

  if (v22)
  {
    v27(v57, v28);

    v25 = LOBYTE(v57[0]);
  }

  else
  {
  }

  v12 = v55;
  v14 = v56;
  if (v25)
  {
    v14 = v56;
    if (v56 == &type metadata for SKMailMessageThread)
    {
LABEL_32:
      v14 = &type metadata for SKText;
    }
  }

LABEL_33:
  if (v10)
  {
    v29 = sub_2281399BC();

    if ((v29 & 1) == 0 || v56 != &type metadata for SKUserNotificationThread)
    {
      goto LABEL_64;
    }
  }

  else
  {

    if (v56 != &type metadata for SKUserNotificationThread)
    {
      goto LABEL_64;
    }
  }

  v30 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v31 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v31 = &qword_2813C76F8;
  }

  v32 = *(*v31 + 1680);
  v33 = *(*v31 + 1688);
  v34 = *(*v31 + 1696);
  v35 = *(*v31 + 1704);
  v36 = *(*v31 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v34(v57, v36);

    v12 = v55;
    if (v57[0])
    {
      goto LABEL_64;
    }
  }

  else
  {

    v12 = v55;
    if (v33)
    {
      goto LABEL_64;
    }
  }

  v37 = v53;
  v38 = v52;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v37, qword_2813C8A20);
  v40 = v51;
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v37, qword_2813C4990);
  }

  (*(v38 + 16))(v40, v39, v37);
  v41 = sub_22813880C();
  v42 = sub_2281396BC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_227FC3000, v41, v42, "Received request to summarize a UserNotification stack using style .topic; falling back to .topLine because InternalSettings.current.notificationStackTopicSummariesEnabled is false", v43, 2u);
    MEMORY[0x22AAB28A0](v43, -1, -1);
  }

  (*(v38 + 8))(v40, v37);
LABEL_64:
  v44 = 0x546E776F6E6B6E55;
  if (v12[2])
  {
    v45 = sub_22808C9DC(v14);
    if (v46)
    {
      v47 = (v12[7] + 16 * v45);
      v44 = *v47;
      v48 = v47[1];
    }
  }

  return v44;
}

uint64_t sub_22800C790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22800C88C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_22800C8EC()
{
  result = qword_2813C45E0;
  if (!qword_2813C45E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C45E0);
  }

  return result;
}

uint64_t sub_22800C938(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_22800C950(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  LOBYTE(v11) = *(a1 + 32);
  v3 = sub_22800BBB4(v2, v1, &v11);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_22813988C();

  v11 = 0xD00000000000001BLL;
  v12 = 0x8000000228144150;
  MEMORY[0x22AAB1970](v3, v5);

  MEMORY[0x22AAB1970](46, 0xE100000000000000);
  MEMORY[0x22AAB1970](v7, v9);

  return v11;
}

uint64_t objectdestroyTm_2()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22800CA68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22800CAE4()
{
  result = sub_22813755C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ModelBundleIdentifier();
    if (v2 <= 0x3F)
    {
      result = sub_22813791C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22800CC40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = v4();
  v6 = (*(a2 + 24))(a1, a2);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v4)(a1, a2);
  }

  return v7 | ((v5 == v6) << 32);
}

uint64_t static GMSModelInfo.fetchModelInfo(for:onBehalfOfRequest:updatingIfNeededWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22800CD1C, 0, 0);
}

uint64_t sub_22800CD1C()
{
  if (qword_2813C73E8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22800CDEC;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_228011668(v4, v5, v2, v3);
}

uint64_t sub_22800CDEC()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *GMSModelInfo.supportedLanguages.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v22 - v6;
  v8 = (v1 + *(type metadata accessor for GMSModelInfo(0) + 20));
  v9 = *v8;
  v10 = v8[1];
  sub_22813721C();
  v11 = sub_22801354C(v9);
  v13 = v12;
  if (v11 == sub_22813746C() && v13 == v14)
  {

    (*(v3 + 8))(v7, v2);
    return sub_22800EF50(0xD000000000000012, 0x80000002281449D0);
  }

  v16 = sub_2281399BC();

  (*(v3 + 8))(v7, v2);
  if (v16)
  {
    return sub_22800EF50(0xD000000000000012, 0x80000002281449D0);
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v17 = sub_22813882C();
  __swift_project_value_buffer(v17, qword_2813C89F0);
  v18 = sub_22813880C();
  v19 = sub_2281396EC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    MEMORY[0x22AAB28A0](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_22800D130()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E768, &qword_22813BBD8);
  __swift_allocate_value_buffer(v0, qword_2813C8B38);
  v1 = __swift_project_value_buffer(v0, qword_2813C8B38);
  v2 = sub_22813744C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t GMSModelInfo.executionEnvironment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228138CFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GMSModelInfo.modelIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for GMSModelInfo(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GMSModelInfo.tokenizerIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for GMSModelInfo(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GMSModelInfo.baseModelIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for GMSModelInfo(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GMSModelInfo.draftModelIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for GMSModelInfo(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GMSModelInfo.modelVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for GMSModelInfo(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GMSModelInfo.tokenizerVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for GMSModelInfo(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GMSModelInfo.baseModelVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for GMSModelInfo(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GMSModelInfo.draftModelVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for GMSModelInfo(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t GMSModelInfo.userDefinedFields.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E768, &qword_22813BBD8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15 - v4;
  v6 = sub_22813744C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C7E58 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_2813C8B38);
  sub_227FCA9B0(v12, v5, &qword_27D81E768, &qword_22813BBD8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_227FCAC58(v5, &qword_27D81E768, &qword_22813BBD8);
    v13 = *(v0 + *(type metadata accessor for GMSModelInfo(0) + 52));
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    v13 = sub_22813743C();
    if (!v13)
    {
      v13 = sub_227FE3C84(MEMORY[0x277D84F90]);
    }

    (*(v7 + 8))(v11, v6);
  }

  return v13;
}

uint64_t sub_22800D644(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for GMSModelInfo(0) + 52);
  v5 = *(a2 + v4);

  *(a2 + v4) = v3;
  return result;
}

uint64_t GMSModelInfo.lastUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GMSModelInfo(0) + 56);
  v4 = sub_228136F8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL GMSModelInfo.isStale.getter()
{
  v1 = v0 + *(type metadata accessor for GMSModelInfo(0) + 56);
  sub_228136F4C();
  v3 = v2;
  v4 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v5 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v5 = &qword_2813C76F8;
  }

  v6 = *(*v5 + 1960);
  v7 = *(*v5 + 1968);
  v8 = *(*v5 + 1976);
  v9 = *(*v5 + 1984);
  v10 = *(*v5 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v8(&v12, v10);

    v7 = v12;
  }

  else
  {
  }

  return v7 <= -v3;
}

double GMSModelInfo.staleness.getter()
{
  v1 = v0 + *(type metadata accessor for GMSModelInfo(0) + 56);
  sub_228136F4C();
  return -v2;
}

uint64_t sub_22800D958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v54 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v55 = &v54 - v11;
  v58 = sub_228138CFC();
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v58, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v54 - v25;
  v27 = type metadata accessor for ModelBundleIdentifier();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_227FCAAE8(a1, v31, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v55;
      v33 = v56;
      v35 = v57;
      (*(v56 + 32))(v55, v31, v57);
      v36 = v54;
      (*(v33 + 16))(v54, v34, v35);
      (*(v12 + 104))(v16, *MEMORY[0x277D4B348], v58);
      v37 = v59;
      sub_228015A70(v59, v61);
      sub_22800E288(v36, v16, v61, a3);
      __swift_destroy_boxed_opaque_existential_1Tm_3(v37);
      sub_228013E6C(v60, type metadata accessor for ModelBundleIdentifier);
      return (*(v33 + 8))(v34, v35);
    }

    else
    {
      sub_2281380CC();
      sub_2281380BC();
      v40 = sub_227FEB424();
      v56 = v41;
      v57 = v40;

      (*(v12 + 104))(a3, *MEMORY[0x277D4B350], v58);
      v42 = type metadata accessor for GMSModelInfo(0);
      v43 = (a3 + v42[6]);
      v44 = (a3 + v42[7]);
      v45 = (a3 + v42[8]);
      v46 = (a3 + v42[9]);
      v47 = (a3 + v42[10]);
      v48 = (a3 + v42[11]);
      v49 = v42[13];
      v50 = (a3 + v42[12]);
      *(a3 + v49) = 0;
      v51 = a3 + v42[14];
      sub_228136F6C();
      __swift_destroy_boxed_opaque_existential_1Tm_3(v59);
      result = sub_228013E6C(v60, type metadata accessor for ModelBundleIdentifier);
      v52 = (a3 + v42[5]);
      v53 = v56;
      *v52 = v57;
      v52[1] = v53;
      *v46 = 0;
      v46[1] = 0;
      *v43 = 0;
      v43[1] = 0;
      *v47 = 0;
      v47[1] = 0;
      *v44 = 0;
      v44[1] = 0;
      *v48 = 0;
      v48[1] = 0;
      *v45 = 0;
      v45[1] = 0;
      *v50 = 0;
      v50[1] = 0;
      *(a3 + v49) = 0;
    }
  }

  else
  {
    (*(v18 + 32))(v26, v31, v17);
    (*(v18 + 16))(v23, v26, v17);
    (*(v12 + 104))(v16, *MEMORY[0x277D4B358], v58);
    v39 = v59;
    sub_228015A70(v59, v61);
    sub_22800DE78(v23, v16, v61, a3);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v39);
    sub_228013E6C(v60, type metadata accessor for ModelBundleIdentifier);
    return (*(v18 + 8))(v26, v17);
  }

  return result;
}

uint64_t sub_22800DE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for SignpostToken(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v54 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GMSModelInfo(0);
  v18 = (a4 + v17[6]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a4 + v17[7]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a4 + v17[8]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a4 + v17[9]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (a4 + v17[10]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a4 + v17[11]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a4 + v17[12]);
  *v24 = 0;
  v24[1] = 0;
  *(a4 + v17[13]) = 0;
  if (qword_2813C4910 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Signpost(0);
  v53 = __swift_project_value_buffer(v25, qword_2813C8888);
  sub_228015A70(a3, v56);
  v50 = a3;
  v51 = *(v8 + 16);
  v51(v12, a1, v7);
  v26 = *(v8 + 80);
  v45 = v12;
  v47 = (v26 + 56) & ~v26;
  v27 = swift_allocObject();
  v48 = v9;
  v28 = v27;
  sub_227FCF218(v56, v27 + 16);
  v52 = v8;
  v49 = *(v8 + 32);
  v29 = v12;
  v30 = v7;
  v49(v28 + ((v26 + 56) & ~v26), v29, v7);
  sub_22812F68C(sub_228015C3C, v54);

  v31 = a4 + v17[14];
  sub_228136F6C();
  v46 = sub_228138CFC();
  v32 = *(v46 - 8);
  (*(v32 + 16))(a4, v55, v46);
  v33 = a1;
  v34 = sub_22813746C();
  v35 = (a4 + v17[5]);
  *v35 = v34;
  v35[1] = v36;
  sub_2280147C4(a4);
  v37 = v50;
  sub_228015A70(v50, v56);
  v38 = v45;
  v51(v45, v33, v30);
  v39 = v47;
  v40 = swift_allocObject();
  sub_227FCF218(v56, v40 + 16);
  v41 = v40 + v39;
  v42 = v30;
  v49(v41, v38, v30);
  v43 = v54;
  sub_2281317B8(v54, sub_228015998);

  __swift_destroy_boxed_opaque_existential_1Tm_3(v37);
  (*(v32 + 8))(v55, v46);
  (*(v52 + 8))(v33, v42);
  return sub_228013E6C(v43, type metadata accessor for SignpostToken);
}

uint64_t sub_22800E288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for SignpostToken(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v54 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GMSModelInfo(0);
  v18 = (a4 + v17[6]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a4 + v17[7]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a4 + v17[8]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a4 + v17[9]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (a4 + v17[10]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a4 + v17[11]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a4 + v17[12]);
  *v24 = 0;
  v24[1] = 0;
  *(a4 + v17[13]) = 0;
  if (qword_2813C4910 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Signpost(0);
  v53 = __swift_project_value_buffer(v25, qword_2813C8888);
  sub_228015A70(a3, v56);
  v50 = a3;
  v51 = *(v8 + 16);
  v51(v12, a1, v7);
  v26 = *(v8 + 80);
  v45 = v12;
  v47 = (v26 + 56) & ~v26;
  v27 = swift_allocObject();
  v48 = v9;
  v28 = v27;
  sub_227FCF218(v56, v27 + 16);
  v52 = v8;
  v49 = *(v8 + 32);
  v29 = v12;
  v30 = v7;
  v49(v28 + ((v26 + 56) & ~v26), v29, v7);
  sub_22812F68C(sub_228015C40, v54);

  v31 = a4 + v17[14];
  sub_228136F6C();
  v46 = sub_228138CFC();
  v32 = *(v46 - 8);
  (*(v32 + 16))(a4, v55, v46);
  v33 = a1;
  v34 = sub_22813746C();
  v35 = (a4 + v17[5]);
  *v35 = v34;
  v35[1] = v36;
  sub_2280147C4(a4);
  v37 = v50;
  sub_228015A70(v50, v56);
  v38 = v45;
  v51(v45, v33, v30);
  v39 = v47;
  v40 = swift_allocObject();
  sub_227FCF218(v56, v40 + 16);
  v41 = v40 + v39;
  v42 = v30;
  v49(v41, v38, v30);
  v43 = v54;
  sub_2281317B8(v54, sub_228015AD4);

  __swift_destroy_boxed_opaque_existential_1Tm_3(v37);
  (*(v32 + 8))(v55, v46);
  (*(v52 + 8))(v33, v42);
  return sub_228013E6C(v43, type metadata accessor for SignpostToken);
}

unint64_t sub_22800E698(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22813988C();

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 16))(v7, v8);
  MEMORY[0x22AAB1970](v9);

  MEMORY[0x22AAB1970](0xD000000000000013, 0x8000000228144AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = sub_22813746C();
  MEMORY[0x22AAB1970](v10);

  MEMORY[0x22AAB1970](93, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_22800E7C0()
{
  v1 = v0;
  v78 = sub_228136F8C();
  v76 = *(v78 - 8);
  v2 = *(v76 + 64);
  MEMORY[0x28223BE20](v78, v3);
  v77 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22813760C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22813762C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22813767C();
  v17 = sub_22813761C();
  (*(v12 + 8))(v16, v11);
  v86 = *(v17 + 16);
  if (!v86)
  {

    v62 = 0;
    return v62 & 1;
  }

  v18 = sub_227FE3C84(MEMORY[0x277D84F90]);
  v19 = 0;
  v84 = v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v85 = v0;
  v82 = (v6 + 8);
  v83 = v6 + 16;
  v80 = v6;
  v81 = v5;
  v79 = v17;
  while (v19 < *(v17 + 16))
  {
    (*(v6 + 16))(v10, v84 + *(v6 + 72) * v19, v5);
    v20 = sub_2281375FC();
    if (v21)
    {
      v22 = v21;
      v87 = v20;
      v23 = sub_2281375EC();
      v25 = v24;
      if (sub_22813942C())
      {
        if (sub_22813936C() < 0)
        {
          goto LABEL_40;
        }

        sub_22813939C();
        v26 = sub_22813948C();
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v23 = MEMORY[0x22AAB18D0](v26, v28, v30, v32);
        v25 = v33;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v18;
      v36 = sub_22808C964(v23, v25);
      v37 = v18[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_39;
      }

      v40 = v35;
      if (v18[3] >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v5 = v81;
          if ((v35 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_22801C6E4();
          v5 = v81;
          if ((v40 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_2280185D8(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_22808C964(v23, v25);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_42;
        }

        v36 = v41;
        v5 = v81;
        if ((v40 & 1) == 0)
        {
LABEL_19:
          v18 = v88;
          v88[(v36 >> 6) + 8] |= 1 << v36;
          v45 = (v18[6] + 16 * v36);
          *v45 = v23;
          v45[1] = v25;
          v46 = (v18[7] + 16 * v36);
          *v46 = v87;
          v46[1] = v22;
          (*v82)(v10, v5);
          v47 = v18[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_41;
          }

          v18[2] = v49;
          goto LABEL_21;
        }
      }

      v18 = v88;
      v43 = (v88[7] + 16 * v36);
      v44 = v43[1];
      *v43 = v87;
      v43[1] = v22;

      (*v82)(v10, v5);
LABEL_21:
      v1 = v85;
      v17 = v79;
      v6 = v80;
      goto LABEL_4;
    }

    (*v82)(v10, v5);
LABEL_4:
    if (v86 == ++v19)
    {

      v50 = type metadata accessor for GMSModelInfo(0);
      v51 = v18[2];
      v87 = v50;
      if (v51 && (v52 = v50, v53 = sub_22808C964(*(v1 + *(v50 + 20)), *(v1 + *(v50 + 20) + 8)), (v54 & 1) != 0))
      {
        v55 = (v18[7] + 16 * v53);
        v57 = *v55;
        v56 = v55[1];
        v58 = (v1 + *(v52 + 36));
        v59 = v58[1];

        *v58 = v57;
        v58[1] = v56;
        v60 = v77;
        sub_228136F6C();
        v61 = v76;
        (*(v76 + 40))(v1 + *(v52 + 56), v60, v78);
        v62 = 1;
      }

      else
      {
        v62 = 0;
        v61 = v76;
      }

      KeyPath = swift_getKeyPath();
      v92[0] = swift_getKeyPath();
      v92[1] = swift_getKeyPath();
      v92[2] = swift_getKeyPath();
      v92[3] = swift_getKeyPath();
      v63 = 0;
      v92[4] = swift_getKeyPath();
      v64 = (v61 + 40);
      while (1)
      {
        v65 = *&v90[v63 * 8 + 32];
        v66 = v92[v63];

        swift_getAtKeyPath();
        if (!v89)
        {
          goto LABEL_27;
        }

        if (!v18[2])
        {

          goto LABEL_28;
        }

        v67 = sub_22808C964(v88, v89);
        v69 = v68;

        if (v69)
        {
          v70 = (v18[7] + 16 * v67);
          v71 = v70[1];
          v88 = *v70;
          v89 = v71;

          v72 = v85;
          swift_setAtWritableKeyPath();
          v73 = v77;
          sub_228136F6C();

          (*v64)(v72 + *(v87 + 56), v73, v78);
          v62 = 1;
        }

        else
        {
LABEL_27:
        }

LABEL_28:
        v63 += 2;
        if (v63 == 6)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E7F8, &qword_22813BDE8);
          swift_arrayDestroy();
          return v62 & 1;
        }
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_2281399EC();
  __break(1u);
  return result;
}