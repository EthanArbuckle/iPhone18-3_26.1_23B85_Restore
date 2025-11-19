uint64_t sub_22811B8FC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 280) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 288) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 296) = v7;
  *(v0 + 304) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 312) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = sub_22812D390;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v13 = *v11;
  v12 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v13, v12, inited);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v18 = swift_task_alloc();
  *(v0 + 328) = v18;
  *v18 = v0;
  v18[1] = sub_22811BF44;
  v20 = *(v0 + 216);
  v19 = *(v0 + 224);
  v22 = *(v0 + 200);
  v21 = *(v0 + 208);
  v23 = *(v0 + 192);

  return sub_22811C98C(v23, v7, v21, v19, v20, v22);
}

uint64_t sub_22811BF44()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_22811C56C;
  }

  else
  {
    v3 = sub_22811C058;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22811C058()
{
  v1 = *(v0 + 336);
  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 192);
    v4 = sub_228138F9C();
    (*(*(v4 - 8) + 8))(v3, v4);
    v5 = *(v0 + 296);
    v6 = *(v0 + 280);
    v7 = *(v0 + 240);
    v8 = *(v0 + 248);
    v9 = *(v0 + 232);
    sub_22812C558(*(v0 + 224) + *(v0 + 288), v6, v2);
    v10 = v2;
    sub_22812C1DC(v6, v5, v2);

    *(v0 + 184) = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v12 = swift_dynamicCast();
    v13 = *(v8 + 56);
    if (v12)
    {
      v14 = *(v0 + 256);
      v15 = *(v0 + 264);
      v16 = *(v0 + 240);
      v17 = *(v0 + 248);
      v18 = *(v0 + 232);
      v13(v18, 0, 1, v16);
      (*(v17 + 32))(v15, v18, v16);
      v19 = *(v17 + 16);
      v19(v14, v15, v16);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v20 = swift_allocError();
      v19(v21, v14, v16);
      v22 = swift_allocObject();
      *(v22 + 16) = 7;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0;
      v23 = sub_227FF96D4(v20, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3CC);

      v24 = *(v17 + 8);
      v24(v14, v16);
      *(v0 + 168) = 7;
      *(v0 + 176) = v23;
      sub_227FDB3CC();
      v25 = sub_22813999C();
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = swift_allocError();
        *v38 = 7;
        *(v38 + 8) = v23;
      }

      v39 = *(v0 + 264);
      v40 = *(v0 + 240);
      swift_willThrow();

      v24(v39, v40);
      v2 = v26;
    }

    else
    {
      v37 = *(v0 + 232);
      v13(v37, 1, 1, *(v0 + 240));
      sub_22812D31C(v37, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v41 = *(v0 + 312);
    v42 = *(v0 + 320);
    v44 = *(v0 + 296);
    v43 = *(v0 + 304);
    v45 = *(v0 + 272);
    v51 = *(v0 + 264);
    v52 = *(v0 + 256);
    v46 = *(v0 + 224);
    v54 = *(v0 + 232);
    v47 = swift_allocObject();
    v47[2] = v2;
    v47[3] = sub_22812D390;
    v47[4] = v41;
    swift_beginAccess();
    v48 = *(v42 + 24);
    *(v42 + 16) = sub_22812D444;
    *(v42 + 24) = v47;

    v49 = v2;

    swift_willThrow();
    sub_2281324D4(v45, v46 + v43, v42);
    sub_22812AB78(v45, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v36 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 312);
    v28 = *(v0 + 320);
    v29 = *(v0 + 296);
    v30 = *(v0 + 304);
    v31 = *(v0 + 280);
    v33 = *(v0 + 264);
    v32 = *(v0 + 272);
    v34 = *(v0 + 256);
    v35 = *(v0 + 224);
    v53 = *(v0 + 232);
    sub_22812BF3C(v35 + *(v0 + 288), v31);
    sub_22812C1DC(v31, v29, 0);
    sub_2281324D4(v32, v35 + v30, v28);
    sub_22812AB78(v32, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v36 = *(v0 + 8);
  }

  return v36();
}

uint64_t sub_22811C56C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  sub_22812C558(*(v0 + 224) + *(v0 + 288), v3, v1);
  v7 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 184) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    v15 = *(v0 + 232);
    v10(v15, 0, 1, v13);
    (*(v14 + 32))(v12, v15, v13);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v17 = swift_allocError();
    v16(v18, v11, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = 7;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF96D4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3CC);

    v21 = *(v14 + 8);
    v21(v11, v13);
    *(v0 + 168) = 7;
    *(v0 + 176) = v20;
    sub_227FDB3CC();
    v22 = sub_22813999C();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = swift_allocError();
      *v25 = 7;
      *(v25 + 8) = v20;
    }

    v26 = *(v0 + 264);
    v27 = *(v0 + 240);
    swift_willThrow();

    v21(v26, v27);
    v1 = v23;
  }

  else
  {
    v24 = *(v0 + 232);
    v10(v24, 1, 1, *(v0 + 240));
    sub_22812D31C(v24, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v28 = *(v0 + 312);
  v29 = *(v0 + 320);
  v31 = *(v0 + 296);
  v30 = *(v0 + 304);
  v32 = *(v0 + 272);
  v39 = *(v0 + 264);
  v40 = *(v0 + 256);
  v33 = *(v0 + 224);
  v41 = *(v0 + 232);
  v34 = swift_allocObject();
  v34[2] = v1;
  v34[3] = sub_22812D390;
  v34[4] = v28;
  swift_beginAccess();
  v35 = *(v29 + 24);
  *(v29 + 16) = sub_22812D444;
  *(v29 + 24) = v34;

  v36 = v1;

  swift_willThrow();
  sub_2281324D4(v32, v33 + v30, v29);
  sub_22812AB78(v32, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_22811C98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = sub_228138F9C();
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811CB4C, 0, 0);
}

uint64_t sub_22811CB4C()
{
  v1 = *(v0 + 168);
  v2 = MEMORY[0x22AAB0EC0]();
  v3 = sub_228105284(v2);
  *(v0 + 280) = v3;
  v12 = v3;
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v15 = *(v0 + 248);
  v16 = *(v0 + 256);
  v17 = *(v0 + 232);
  v65 = *(v0 + 240);
  v66 = *(v0 + 152);

  v18 = sub_228136DBC();
  v19 = *(*(v18 - 8) + 56);
  v19(v13, 1, 1, v18);
  v19(v14, 1, 1, v18);
  v19(v16, 1, 1, v18);
  v19(v15, 1, 1, v18);
  v20 = sub_228138E0C();
  (*(*(v20 - 8) + 56))(v65, 1, 1, v20);
  v21 = sub_228138DDC();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  result = sub_228138F4C();
  v23 = *(v12 + 16);
  *(v0 + 288) = v23;
  if (!v23)
  {
    v27 = *(v0 + 272);
    v26 = *(v0 + 280);
    v29 = *(v0 + 256);
    v28 = *(v0 + 264);
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    v34 = *(v0 + 216);

    v35 = *(v0 + 8);
LABEL_2:

    return v35();
  }

  *(v0 + 296) = 0;
  v24 = *(v0 + 280);
  if (!*(v24 + 16))
  {
    __break(1u);
    return result;
  }

  v25 = *(v24 + 32);
  sub_2281395DC();
  v36 = *(v0 + 168);
  v37 = sub_2281388FC();
  if (v25 == 2)
  {
    if (v37)
    {
      v42 = *(v0 + 280);

      v43 = swift_allocObject();
      *(v43 + 16) = 24;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0;
      v40 = sub_22812D3F4;
      v41 = 861;
      goto LABEL_15;
    }

    v48 = *(v0 + 224);
    v49 = *(v0 + 184);
    v50 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    sub_2280EA5AC(*(v49 + *(v50 + 24)), *(v49 + *(v50 + 24) + 8), v48);
  }

  else
  {
    if (v25 != 1)
    {
      sub_22813988C();
      *(v0 + 136) = 0;
      *(v0 + 144) = 0xE000000000000000;
      MEMORY[0x22AAB1970](0xD000000000000021, 0x8000000228148E30);
      *(v0 + 336) = v25;
      sub_2281398EC();
      v46 = *(v0 + 136);
      v47 = *(v0 + 144);
      return sub_2281398FC();
    }

    if (v37)
    {
      v38 = *(v0 + 280);

      v39 = swift_allocObject();
      *(v39 + 16) = 24;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      v40 = sub_22812D3F8;
      v41 = 852;
LABEL_15:
      v44 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, v41, v40);
      sub_227FDB3CC();
      swift_allocError();
      *v45 = 24;
      *(v45 + 8) = v44;
      swift_willThrow();
      (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));
      v5 = *(v0 + 264);
      v4 = *(v0 + 272);
      v7 = *(v0 + 248);
      v6 = *(v0 + 256);
      v9 = *(v0 + 232);
      v8 = *(v0 + 240);
      v11 = *(v0 + 216);
      v10 = *(v0 + 224);

      v35 = *(v0 + 8);
      goto LABEL_2;
    }

    sub_2280EA2E4(*(v0 + 224));
  }

  v51 = *(v0 + 224);
  v53 = *(v0 + 184);
  v52 = *(v0 + 192);
  v54 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F430, &unk_228142EB0);
  v55 = sub_228138BAC();
  v56 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 40) = v56;
  *(v0 + 48) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_22812ABD8(v53, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008((v0 + 16), v51);
  *(v0 + 304) = v58;
  v59 = *(v0 + 184);
  v60 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  *(v0 + 80) = &type metadata for SKMailMessageThread;
  *(v0 + 88) = &protocol witness table for SKMailMessageThread;
  *(v0 + 56) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB30, &qword_22813DA78);
  v61 = swift_allocObject();
  *(v0 + 312) = v61;
  *(v61 + 16) = xmmword_22813A4B0;
  *(v61 + 32) = v25;
  *(v0 + 120) = v56;
  *(v0 + 128) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_22812ABD8(v59, v62, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v63 = swift_task_alloc();
  *(v0 + 320) = v63;
  *v63 = v0;
  v63[1] = sub_22811D298;
  v64 = *(v0 + 216);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v64, v0 + 56, v61, v0 + 96, v60);
}

uint64_t sub_22811D298()
{
  v2 = *v1;
  v3 = (*v1)[40];
  v9 = *v1;
  (*v1)[41] = v0;

  if (v0)
  {
    v4 = v2[39];
    v5 = v2[35];

    v6 = sub_22811DA00;
  }

  else
  {
    v7 = v2[39];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 12);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 7);
    v6 = sub_22811D3D8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22811D3D8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 152);
  v8 = *(v0 + 296) + 1;
  Summary.merge(_:)(v4);

  (*(v6 + 8))(v4, v5);
  result = sub_22812AB78(v3, type metadata accessor for SummarizationSession.Configuration);
  if (v8 == v2)
  {
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    v13 = *(v0 + 256);
    v12 = *(v0 + 264);
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 216);

    v19 = *(v0 + 8);
LABEL_18:

    return v19();
  }

  v20 = *(v0 + 328);
  v21 = *(v0 + 296) + 1;
  *(v0 + 296) = v21;
  v22 = *(v0 + 280);
  if (v21 >= *(v22 + 16))
  {
    __break(1u);
    return result;
  }

  v23 = *(v22 + v21 + 32);
  sub_2281395DC();
  if (v20)
  {
    v24 = *(v0 + 280);
    (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));

LABEL_17:
    v49 = *(v0 + 264);
    v48 = *(v0 + 272);
    v51 = *(v0 + 248);
    v50 = *(v0 + 256);
    v53 = *(v0 + 232);
    v52 = *(v0 + 240);
    v55 = *(v0 + 216);
    v54 = *(v0 + 224);

    v19 = *(v0 + 8);
    goto LABEL_18;
  }

  v25 = *(v0 + 168);
  v26 = sub_2281388FC();
  if (v23 == 2)
  {
    if (v26)
    {
      v31 = *(v0 + 280);

      v32 = swift_allocObject();
      *(v32 + 16) = 24;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0;
      v29 = sub_22812D3F4;
      v30 = 861;
      goto LABEL_12;
    }

    v37 = *(v0 + 224);
    v38 = *(v0 + 184);
    v39 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    sub_2280EA5AC(*(v38 + *(v39 + 24)), *(v38 + *(v39 + 24) + 8), v37);
  }

  else
  {
    if (v23 != 1)
    {
      sub_22813988C();
      *(v0 + 136) = 0;
      *(v0 + 144) = 0xE000000000000000;
      MEMORY[0x22AAB1970](0xD000000000000021, 0x8000000228148E30);
      *(v0 + 336) = v23;
      sub_2281398EC();
      v35 = *(v0 + 136);
      v36 = *(v0 + 144);
      return sub_2281398FC();
    }

    if (v26)
    {
      v27 = *(v0 + 280);

      v28 = swift_allocObject();
      *(v28 + 16) = 24;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      v29 = sub_22812D3F8;
      v30 = 852;
LABEL_12:
      v33 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, v30, v29);
      sub_227FDB3CC();
      swift_allocError();
      *v34 = 24;
      *(v34 + 8) = v33;
      swift_willThrow();
      (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));
      goto LABEL_17;
    }

    sub_2280EA2E4(*(v0 + 224));
  }

  v40 = *(v0 + 224);
  v42 = *(v0 + 184);
  v41 = *(v0 + 192);
  v43 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F430, &unk_228142EB0);
  v44 = sub_228138BAC();
  v45 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 40) = v45;
  *(v0 + 48) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_22812ABD8(v42, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008((v0 + 16), v40);
  *(v0 + 304) = v47;
  v56 = *(v0 + 184);
  v57 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  *(v0 + 80) = &type metadata for SKMailMessageThread;
  *(v0 + 88) = &protocol witness table for SKMailMessageThread;
  *(v0 + 56) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB30, &qword_22813DA78);
  v58 = swift_allocObject();
  *(v0 + 312) = v58;
  *(v58 + 16) = xmmword_22813A4B0;
  *(v58 + 32) = v23;
  *(v0 + 120) = v45;
  *(v0 + 128) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v59 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_22812ABD8(v56, v59, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v60 = swift_task_alloc();
  *(v0 + 320) = v60;
  *v60 = v0;
  v60[1] = sub_22811D298;
  v61 = *(v0 + 216);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v61, v0 + 56, v58, v0 + 96, v57);
}

uint64_t sub_22811DA00()
{
  v1 = v0[38];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[19];

  sub_22812AB78(v2, type metadata accessor for SummarizationSession.Configuration);
  (*(v4 + 8))(v5, v3);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 7);
  v6 = v0[41];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[27];
  v13 = v0[28];

  v15 = v0[1];

  return v15();
}

uint64_t sub_22811DCD8()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 432) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 440) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 448) = v7;
  *(v0 + 456) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 464) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 472) = v10;
  *(v10 + 16) = sub_22812D394;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v12, v13, inited);
  v35 = v7;
  v18 = *(v0 + 416);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F408, &qword_228142D80);
  v22 = sub_228138BAC();
  *(v0 + 168) = v4;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v19, v23, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2E4(v18);
  sub_228111008((v0 + 144), v18);
  *(v0 + 480) = v24;
  v25 = *(v0 + 328);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  v26 = __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  *(v0 + 208) = &type metadata for SKTextMessageThread;
  *(v0 + 216) = &protocol witness table for SKTextMessageThread;
  *(v0 + 184) = v22;
  v27 = MEMORY[0x22AAB1000](v26);
  v28 = sub_228105284(v27);
  *(v0 + 488) = v28;
  v29 = v28;
  v30 = *(v0 + 336);

  *(v0 + 248) = v4;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v31 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v30, v31, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v32 = swift_task_alloc();
  *(v0 + 496) = v32;
  *v32 = v0;
  v32[1] = sub_22811E4D0;
  v33 = *(v0 + 408);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v33, v0 + 184, v29, v0 + 224, v35);
}

uint64_t sub_22811E4D0()
{
  v2 = *v1;
  v3 = (*v1)[62];
  v7 = *v1;
  (*v1)[63] = v0;

  v4 = v2[61];

  if (v0)
  {
    v5 = sub_22811EB54;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 28);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 23);
    v5 = sub_22811E604;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22811E604()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = *(v0 + 312);

  (*(v4 + 32))(v6, v3, v5);
  sub_2281395DC();
  if (v1)
  {
    v7 = v1;
    (*(*(v0 + 400) + 8))(*(v0 + 312), *(v0 + 392));
    v8 = *(v0 + 448);
    v9 = *(v0 + 432);
    v10 = *(v0 + 360);
    v11 = *(v0 + 368);
    v12 = *(v0 + 352);
    sub_22812C558(*(v0 + 344) + *(v0 + 440), v9, v7);
    v13 = v7;
    sub_22812C1DC(v9, v8, v7);

    *(v0 + 304) = v7;
    v14 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v15 = swift_dynamicCast();
    v16 = *(v11 + 56);
    if (v15)
    {
      v17 = *(v0 + 376);
      v18 = *(v0 + 384);
      v19 = *(v0 + 360);
      v20 = *(v0 + 368);
      v21 = *(v0 + 352);
      v16(v21, 0, 1, v19);
      (*(v20 + 32))(v18, v21, v19);
      v22 = *(v20 + 16);
      v22(v17, v18, v19);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v23 = swift_allocError();
      v22(v24, v17, v19);
      v25 = swift_allocObject();
      *(v25 + 16) = 7;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      v26 = sub_227FF96D4(v23, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D0);

      v27 = *(v20 + 8);
      v27(v17, v19);
      *(v0 + 288) = 7;
      *(v0 + 296) = v26;
      sub_227FDB3CC();
      v28 = sub_22813999C();
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = swift_allocError();
        *v41 = 7;
        *(v41 + 8) = v26;
      }

      v42 = *(v0 + 384);
      v43 = *(v0 + 360);
      swift_willThrow();

      v27(v42, v43);
      v7 = v29;
    }

    else
    {
      v40 = *(v0 + 352);
      v16(v40, 1, 1, *(v0 + 360));
      sub_22812D31C(v40, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v44 = *(v0 + 464);
    v45 = *(v0 + 472);
    v47 = *(v0 + 448);
    v46 = *(v0 + 456);
    v48 = *(v0 + 424);
    v54 = *(v0 + 416);
    v55 = *(v0 + 408);
    v57 = *(v0 + 384);
    v59 = *(v0 + 376);
    v49 = *(v0 + 344);
    v61 = *(v0 + 352);
    v50 = swift_allocObject();
    v50[2] = v7;
    v50[3] = sub_22812D394;
    v50[4] = v44;
    swift_beginAccess();
    v51 = *(v45 + 24);
    *(v45 + 16) = sub_22812D448;
    *(v45 + 24) = v50;

    v52 = v7;

    swift_willThrow();
    sub_2281324D4(v48, v49 + v46, v45);
    sub_22812AB78(v48, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v39 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 464);
    v30 = *(v0 + 472);
    v33 = *(v0 + 448);
    v32 = *(v0 + 456);
    v34 = *(v0 + 432);
    v36 = *(v0 + 416);
    v35 = *(v0 + 424);
    v37 = *(v0 + 408);
    v56 = *(v0 + 384);
    v58 = *(v0 + 376);
    v38 = *(v0 + 344);
    v60 = *(v0 + 352);
    sub_22812BF3C(v38 + *(v0 + 440), v34);
    sub_22812C1DC(v34, v33, 0);
    sub_2281324D4(v35, v38 + v32, v30);
    sub_22812AB78(v35, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v39 = *(v0 + 8);
  }

  return v39();
}

uint64_t sub_22811EB54()
{
  v1 = *(v0 + 480);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v2 = *(v0 + 504);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 352);
  sub_22812C558(*(v0 + 344) + *(v0 + 440), v4, v2);
  v8 = v2;
  sub_22812C1DC(v4, v3, v2);

  *(v0 + 304) = v2;
  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v10 = swift_dynamicCast();
  v11 = *(v6 + 56);
  if (v10)
  {
    v12 = *(v0 + 376);
    v13 = *(v0 + 384);
    v14 = *(v0 + 360);
    v15 = *(v0 + 368);
    v16 = *(v0 + 352);
    v11(v16, 0, 1, v14);
    (*(v15 + 32))(v13, v16, v14);
    v17 = *(v15 + 16);
    v17(v12, v13, v14);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v18 = swift_allocError();
    v17(v19, v12, v14);
    v20 = swift_allocObject();
    *(v20 + 16) = 7;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    v21 = sub_227FF96D4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D0);

    v22 = *(v15 + 8);
    v22(v12, v14);
    *(v0 + 288) = 7;
    *(v0 + 296) = v21;
    sub_227FDB3CC();
    v23 = sub_22813999C();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = swift_allocError();
      *v26 = 7;
      *(v26 + 8) = v21;
    }

    v27 = *(v0 + 384);
    v28 = *(v0 + 360);
    swift_willThrow();

    v22(v27, v28);
    v2 = v24;
  }

  else
  {
    v25 = *(v0 + 352);
    v11(v25, 1, 1, *(v0 + 360));
    sub_22812D31C(v25, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v29 = *(v0 + 464);
  v30 = *(v0 + 472);
  v32 = *(v0 + 448);
  v31 = *(v0 + 456);
  v33 = *(v0 + 424);
  v40 = *(v0 + 416);
  v41 = *(v0 + 408);
  v42 = *(v0 + 384);
  v43 = *(v0 + 376);
  v34 = *(v0 + 344);
  v44 = *(v0 + 352);
  v35 = swift_allocObject();
  v35[2] = v2;
  v35[3] = sub_22812D394;
  v35[4] = v29;
  swift_beginAccess();
  v36 = *(v30 + 24);
  *(v30 + 16) = sub_22812D448;
  *(v30 + 24) = v35;

  v37 = v2;

  swift_willThrow();
  sub_2281324D4(v33, v34 + v31, v30);
  sub_22812AB78(v33, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_22811F15C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 432) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 440) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 448) = v7;
  *(v0 + 456) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 464) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 472) = v10;
  *(v10 + 16) = sub_22812D398;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v12, v13, inited);
  v35 = v7;
  v18 = *(v0 + 416);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F410, &qword_228142D90);
  v22 = sub_228138BAC();
  *(v0 + 168) = v4;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v19, v23, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2E4(v18);
  sub_228111008((v0 + 144), v18);
  *(v0 + 480) = v24;
  v25 = *(v0 + 328);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  v26 = __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  *(v0 + 208) = &type metadata for SKUserNotificationThread;
  *(v0 + 216) = &protocol witness table for SKUserNotificationThread;
  *(v0 + 184) = v22;
  v27 = MEMORY[0x22AAB10F0](v26);
  v28 = sub_228105284(v27);
  *(v0 + 488) = v28;
  v29 = v28;
  v30 = *(v0 + 336);

  *(v0 + 248) = v4;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v31 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v30, v31, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v32 = swift_task_alloc();
  *(v0 + 496) = v32;
  *v32 = v0;
  v32[1] = sub_22811F954;
  v33 = *(v0 + 408);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v33, v0 + 184, v29, v0 + 224, v35);
}

uint64_t sub_22811F954()
{
  v2 = *v1;
  v3 = (*v1)[62];
  v7 = *v1;
  (*v1)[63] = v0;

  v4 = v2[61];

  if (v0)
  {
    v5 = sub_22811FFD8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 28);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 23);
    v5 = sub_22811FA88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22811FA88()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = *(v0 + 312);

  (*(v4 + 32))(v6, v3, v5);
  sub_2281395DC();
  if (v1)
  {
    v7 = v1;
    (*(*(v0 + 400) + 8))(*(v0 + 312), *(v0 + 392));
    v8 = *(v0 + 448);
    v9 = *(v0 + 432);
    v10 = *(v0 + 360);
    v11 = *(v0 + 368);
    v12 = *(v0 + 352);
    sub_22812C558(*(v0 + 344) + *(v0 + 440), v9, v7);
    v13 = v7;
    sub_22812C1DC(v9, v8, v7);

    *(v0 + 304) = v7;
    v14 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v15 = swift_dynamicCast();
    v16 = *(v11 + 56);
    if (v15)
    {
      v17 = *(v0 + 376);
      v18 = *(v0 + 384);
      v19 = *(v0 + 360);
      v20 = *(v0 + 368);
      v21 = *(v0 + 352);
      v16(v21, 0, 1, v19);
      (*(v20 + 32))(v18, v21, v19);
      v22 = *(v20 + 16);
      v22(v17, v18, v19);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v23 = swift_allocError();
      v22(v24, v17, v19);
      v25 = swift_allocObject();
      *(v25 + 16) = 7;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      v26 = sub_227FF96D4(v23, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D4);

      v27 = *(v20 + 8);
      v27(v17, v19);
      *(v0 + 288) = 7;
      *(v0 + 296) = v26;
      sub_227FDB3CC();
      v28 = sub_22813999C();
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = swift_allocError();
        *v41 = 7;
        *(v41 + 8) = v26;
      }

      v42 = *(v0 + 384);
      v43 = *(v0 + 360);
      swift_willThrow();

      v27(v42, v43);
      v7 = v29;
    }

    else
    {
      v40 = *(v0 + 352);
      v16(v40, 1, 1, *(v0 + 360));
      sub_22812D31C(v40, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v44 = *(v0 + 464);
    v45 = *(v0 + 472);
    v47 = *(v0 + 448);
    v46 = *(v0 + 456);
    v48 = *(v0 + 424);
    v54 = *(v0 + 416);
    v55 = *(v0 + 408);
    v57 = *(v0 + 384);
    v59 = *(v0 + 376);
    v49 = *(v0 + 344);
    v61 = *(v0 + 352);
    v50 = swift_allocObject();
    v50[2] = v7;
    v50[3] = sub_22812D398;
    v50[4] = v44;
    swift_beginAccess();
    v51 = *(v45 + 24);
    *(v45 + 16) = sub_22812D44C;
    *(v45 + 24) = v50;

    v52 = v7;

    swift_willThrow();
    sub_2281324D4(v48, v49 + v46, v45);
    sub_22812AB78(v48, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v39 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 464);
    v30 = *(v0 + 472);
    v33 = *(v0 + 448);
    v32 = *(v0 + 456);
    v34 = *(v0 + 432);
    v36 = *(v0 + 416);
    v35 = *(v0 + 424);
    v37 = *(v0 + 408);
    v56 = *(v0 + 384);
    v58 = *(v0 + 376);
    v38 = *(v0 + 344);
    v60 = *(v0 + 352);
    sub_22812BF3C(v38 + *(v0 + 440), v34);
    sub_22812C1DC(v34, v33, 0);
    sub_2281324D4(v35, v38 + v32, v30);
    sub_22812AB78(v35, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v39 = *(v0 + 8);
  }

  return v39();
}

uint64_t sub_22811FFD8()
{
  v1 = *(v0 + 480);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v2 = *(v0 + 504);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 352);
  sub_22812C558(*(v0 + 344) + *(v0 + 440), v4, v2);
  v8 = v2;
  sub_22812C1DC(v4, v3, v2);

  *(v0 + 304) = v2;
  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v10 = swift_dynamicCast();
  v11 = *(v6 + 56);
  if (v10)
  {
    v12 = *(v0 + 376);
    v13 = *(v0 + 384);
    v14 = *(v0 + 360);
    v15 = *(v0 + 368);
    v16 = *(v0 + 352);
    v11(v16, 0, 1, v14);
    (*(v15 + 32))(v13, v16, v14);
    v17 = *(v15 + 16);
    v17(v12, v13, v14);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v18 = swift_allocError();
    v17(v19, v12, v14);
    v20 = swift_allocObject();
    *(v20 + 16) = 7;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    v21 = sub_227FF96D4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D4);

    v22 = *(v15 + 8);
    v22(v12, v14);
    *(v0 + 288) = 7;
    *(v0 + 296) = v21;
    sub_227FDB3CC();
    v23 = sub_22813999C();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = swift_allocError();
      *v26 = 7;
      *(v26 + 8) = v21;
    }

    v27 = *(v0 + 384);
    v28 = *(v0 + 360);
    swift_willThrow();

    v22(v27, v28);
    v2 = v24;
  }

  else
  {
    v25 = *(v0 + 352);
    v11(v25, 1, 1, *(v0 + 360));
    sub_22812D31C(v25, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v29 = *(v0 + 464);
  v30 = *(v0 + 472);
  v32 = *(v0 + 448);
  v31 = *(v0 + 456);
  v33 = *(v0 + 424);
  v40 = *(v0 + 416);
  v41 = *(v0 + 408);
  v42 = *(v0 + 384);
  v43 = *(v0 + 376);
  v34 = *(v0 + 344);
  v44 = *(v0 + 352);
  v35 = swift_allocObject();
  v35[2] = v2;
  v35[3] = sub_22812D398;
  v35[4] = v29;
  swift_beginAccess();
  v36 = *(v30 + 24);
  *(v30 + 16) = sub_22812D44C;
  *(v30 + 24) = v35;

  v37 = v2;

  swift_willThrow();
  sub_2281324D4(v33, v34 + v31, v30);
  sub_22812AB78(v33, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v38 = *(v0 + 8);

  return v38();
}

void *sub_228120420()
{
  v1 = v0;
  v2 = sub_228138C3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D4B0A8])
  {
    return &unk_283B5B728;
  }

  if (v8 == *MEMORY[0x277D4B098])
  {
    return &unk_283B5B750;
  }

  if (v8 == *MEMORY[0x277D4B0A0])
  {
    return &unk_283B5B728;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = 27;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  v11 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 886, sub_22812D3F0);
  sub_227FDB3CC();
  swift_allocError();
  *v12 = 27;
  *(v12 + 8) = v11;
  swift_willThrow();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_2281207CC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 440) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 448) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 456) = v7;
  *(v0 + 464) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 472) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 480) = v10;
  *(v10 + 16) = sub_22812D39C;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v12, v13, inited);
  v18 = *(v0 + 424);
  v20 = *(v0 + 344);
  v19 = *(v0 + 352);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  *(v0 + 168) = v4;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v21 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v20, v21, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v18);
  sub_228111008((v0 + 144), v18);
  *(v0 + 488) = v22;
  v23 = *(v0 + 416);
  v24 = *(v0 + 336);
  sub_22812AB78(*(v0 + 424), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  sub_228138C2C();
  v25 = sub_228120420();
  *(v0 + 496) = v25;
  v26 = v25;
  v27 = *(v0 + 344);
  v29 = *(v0 + 320);
  v28 = *(v0 + 328);
  (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
  *(v0 + 208) = &type metadata for SKText;
  *(v0 + 216) = &protocol witness table for SKText;
  *(v0 + 184) = v29;
  *(v0 + 192) = v28;
  *(v0 + 248) = v4;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v27, v30, type metadata accessor for SummarizationRequestHandler.RequestInfo);

  v31 = swift_task_alloc();
  *(v0 + 504) = v31;
  *v31 = v0;
  v31[1] = sub_228120FCC;
  v32 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v32, v0 + 184, v26, v0 + 224, v7);
}

uint64_t sub_228120FCC()
{
  v2 = *v1;
  v3 = (*v1)[63];
  v7 = *v1;
  (*v1)[64] = v0;

  v4 = v2[62];

  if (v0)
  {
    v5 = sub_22812164C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 28);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 23);
    v5 = sub_228121100;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228121100()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);

  sub_2281395DC();
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 312);
    v5 = sub_228138F9C();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = *(v0 + 456);
    v7 = *(v0 + 440);
    v8 = *(v0 + 368);
    v9 = *(v0 + 376);
    v10 = *(v0 + 360);
    sub_22812C558(*(v0 + 352) + *(v0 + 448), v7, v3);
    v11 = v3;
    sub_22812C1DC(v7, v6, v3);

    *(v0 + 304) = v3;
    v12 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v13 = swift_dynamicCast();
    v14 = *(v9 + 56);
    if (v13)
    {
      v15 = *(v0 + 384);
      v16 = *(v0 + 392);
      v17 = *(v0 + 368);
      v18 = *(v0 + 376);
      v19 = *(v0 + 360);
      v14(v19, 0, 1, v17);
      (*(v18 + 32))(v16, v19, v17);
      v20 = *(v18 + 16);
      v20(v15, v16, v17);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v21 = swift_allocError();
      v20(v22, v15, v17);
      v23 = swift_allocObject();
      *(v23 + 16) = 7;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_227FF96D4(v21, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D8);

      v25 = *(v18 + 8);
      v25(v15, v17);
      *(v0 + 288) = 7;
      *(v0 + 296) = v24;
      sub_227FDB3CC();
      v26 = sub_22813999C();
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = swift_allocError();
        *v39 = 7;
        *(v39 + 8) = v24;
      }

      v40 = *(v0 + 392);
      v41 = *(v0 + 368);
      swift_willThrow();

      v25(v40, v41);
      v3 = v27;
    }

    else
    {
      v38 = *(v0 + 360);
      v14(v38, 1, 1, *(v0 + 368));
      sub_22812D31C(v38, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v42 = *(v0 + 472);
    v43 = *(v0 + 480);
    v45 = *(v0 + 456);
    v44 = *(v0 + 464);
    v46 = *(v0 + 432);
    v52 = *(v0 + 424);
    v53 = *(v0 + 416);
    v55 = *(v0 + 392);
    v57 = *(v0 + 384);
    v47 = *(v0 + 352);
    v59 = *(v0 + 360);
    v48 = swift_allocObject();
    v48[2] = v3;
    v48[3] = sub_22812D39C;
    v48[4] = v42;
    swift_beginAccess();
    v49 = *(v43 + 24);
    *(v43 + 16) = sub_22812D450;
    *(v43 + 24) = v48;

    v50 = v3;

    swift_willThrow();
    sub_2281324D4(v46, v47 + v44, v43);
    sub_22812AB78(v46, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v37 = *(v0 + 8);
  }

  else
  {
    v29 = *(v0 + 472);
    v28 = *(v0 + 480);
    v31 = *(v0 + 456);
    v30 = *(v0 + 464);
    v32 = *(v0 + 440);
    v34 = *(v0 + 424);
    v33 = *(v0 + 432);
    v35 = *(v0 + 416);
    v54 = *(v0 + 392);
    v56 = *(v0 + 384);
    v36 = *(v0 + 352);
    v58 = *(v0 + 360);
    sub_22812BF3C(v36 + *(v0 + 448), v32);
    sub_22812C1DC(v32, v31, 0);
    sub_2281324D4(v33, v36 + v30, v28);
    sub_22812AB78(v33, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_22812164C()
{
  v1 = *(v0 + 488);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v2 = *(v0 + 512);
  v3 = *(v0 + 456);
  v4 = *(v0 + 440);
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);
  v7 = *(v0 + 360);
  sub_22812C558(*(v0 + 352) + *(v0 + 448), v4, v2);
  v8 = v2;
  sub_22812C1DC(v4, v3, v2);

  *(v0 + 304) = v2;
  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v10 = swift_dynamicCast();
  v11 = *(v6 + 56);
  if (v10)
  {
    v12 = *(v0 + 384);
    v13 = *(v0 + 392);
    v14 = *(v0 + 368);
    v15 = *(v0 + 376);
    v16 = *(v0 + 360);
    v11(v16, 0, 1, v14);
    (*(v15 + 32))(v13, v16, v14);
    v17 = *(v15 + 16);
    v17(v12, v13, v14);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v18 = swift_allocError();
    v17(v19, v12, v14);
    v20 = swift_allocObject();
    *(v20 + 16) = 7;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    v21 = sub_227FF96D4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3D8);

    v22 = *(v15 + 8);
    v22(v12, v14);
    *(v0 + 288) = 7;
    *(v0 + 296) = v21;
    sub_227FDB3CC();
    v23 = sub_22813999C();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = swift_allocError();
      *v26 = 7;
      *(v26 + 8) = v21;
    }

    v27 = *(v0 + 392);
    v28 = *(v0 + 368);
    swift_willThrow();

    v22(v27, v28);
    v2 = v24;
  }

  else
  {
    v25 = *(v0 + 360);
    v11(v25, 1, 1, *(v0 + 368));
    sub_22812D31C(v25, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v29 = *(v0 + 472);
  v30 = *(v0 + 480);
  v32 = *(v0 + 456);
  v31 = *(v0 + 464);
  v33 = *(v0 + 432);
  v40 = *(v0 + 424);
  v41 = *(v0 + 416);
  v42 = *(v0 + 392);
  v43 = *(v0 + 384);
  v34 = *(v0 + 352);
  v44 = *(v0 + 360);
  v35 = swift_allocObject();
  v35[2] = v2;
  v35[3] = sub_22812D39C;
  v35[4] = v29;
  swift_beginAccess();
  v36 = *(v30 + 24);
  *(v30 + 16) = sub_22812D450;
  *(v30 + 24) = v35;

  v37 = v2;

  swift_willThrow();
  sub_2281324D4(v33, v34 + v31, v30);
  sub_22812AB78(v33, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_228121C84()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 448) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 456) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 464) = v7;
  *(v0 + 472) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 488) = v10;
  *(v10 + 16) = sub_22812D3A0;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v12, v13, inited);
  v37 = v7;
  v18 = *(v0 + 432);
  v19 = *(v0 + 416);
  v20 = *(v0 + 336);
  v38 = *(v0 + 344);
  v21 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v22 = sub_22813899C();
  (*(*(v22 - 8) + 16))(v18, v21, v22);
  *(v0 + 168) = v4;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v20, v23, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v19);
  sub_228111008((v0 + 144), v19);
  *(v0 + 496) = v24;
  v25 = *(v0 + 408);
  v26 = *(v0 + 328);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  sub_2281388DC();
  v27 = sub_228120420();
  *(v0 + 504) = v27;
  v28 = v27;
  v30 = *(v0 + 424);
  v29 = *(v0 + 432);
  v31 = *(v0 + 336);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 208) = v30;
  *(v0 + 216) = &protocol witness table for SKMailMessage;
  v32 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
  sub_22812ABD8(v29, v32, type metadata accessor for SKMailMessage);
  *(v0 + 248) = v4;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v33 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v31, v33, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v34 = swift_task_alloc();
  *(v0 + 512) = v34;
  *v34 = v0;
  v34[1] = sub_228122528;
  v35 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v35, v0 + 184, v28, v0 + 224, v37);
}

uint64_t sub_228122528()
{
  v2 = *v1;
  v3 = (*v1)[64];
  v7 = *v1;
  (*v1)[65] = v0;

  v4 = v2[63];

  if (v0)
  {
    v5 = sub_228122BDC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 28);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 23);
    v5 = sub_22812265C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22812265C()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 432);

  sub_22812AB78(v3, type metadata accessor for SKMailMessage);
  sub_2281395DC();
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 312);
    v6 = sub_228138F9C();
    (*(*(v6 - 8) + 8))(v5, v6);
    v7 = *(v0 + 464);
    v8 = *(v0 + 448);
    v9 = *(v0 + 360);
    v10 = *(v0 + 368);
    v11 = *(v0 + 352);
    sub_22812C558(*(v0 + 344) + *(v0 + 456), v8, v4);
    v12 = v4;
    sub_22812C1DC(v8, v7, v4);

    *(v0 + 304) = v4;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v14 = swift_dynamicCast();
    v15 = *(v10 + 56);
    if (v14)
    {
      v16 = *(v0 + 376);
      v17 = *(v0 + 384);
      v18 = *(v0 + 360);
      v19 = *(v0 + 368);
      v20 = *(v0 + 352);
      v15(v20, 0, 1, v18);
      (*(v19 + 32))(v17, v20, v18);
      v21 = *(v19 + 16);
      v21(v16, v17, v18);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v22 = swift_allocError();
      v21(v23, v16, v18);
      v24 = swift_allocObject();
      *(v24 + 16) = 7;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      v25 = sub_227FF96D4(v22, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3DC);

      v26 = *(v19 + 8);
      v26(v16, v18);
      *(v0 + 288) = 7;
      *(v0 + 296) = v25;
      sub_227FDB3CC();
      v27 = sub_22813999C();
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = swift_allocError();
        *v40 = 7;
        *(v40 + 8) = v25;
      }

      v41 = *(v0 + 384);
      v42 = *(v0 + 360);
      swift_willThrow();

      v26(v41, v42);
      v4 = v28;
    }

    else
    {
      v39 = *(v0 + 352);
      v15(v39, 1, 1, *(v0 + 360));
      sub_22812D31C(v39, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v43 = *(v0 + 480);
    v44 = *(v0 + 488);
    v45 = *(v0 + 464);
    v46 = *(v0 + 472);
    v47 = *(v0 + 440);
    v53 = *(v0 + 432);
    v54 = *(v0 + 416);
    v56 = *(v0 + 408);
    v58 = *(v0 + 384);
    v48 = *(v0 + 344);
    v60 = *(v0 + 376);
    v62 = *(v0 + 352);
    v49 = swift_allocObject();
    v49[2] = v4;
    v49[3] = sub_22812D3A0;
    v49[4] = v43;
    swift_beginAccess();
    v50 = *(v44 + 24);
    *(v44 + 16) = sub_22812D454;
    *(v44 + 24) = v49;

    v51 = v4;

    swift_willThrow();
    sub_2281324D4(v47, v48 + v46, v44);
    sub_22812AB78(v47, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v38 = *(v0 + 8);
  }

  else
  {
    v30 = *(v0 + 480);
    v29 = *(v0 + 488);
    v32 = *(v0 + 464);
    v31 = *(v0 + 472);
    v33 = *(v0 + 448);
    v34 = *(v0 + 432);
    v35 = *(v0 + 440);
    v36 = *(v0 + 416);
    v55 = *(v0 + 408);
    v57 = *(v0 + 384);
    v59 = *(v0 + 376);
    v37 = *(v0 + 344);
    v61 = *(v0 + 352);
    sub_22812BF3C(v37 + *(v0 + 456), v33);
    sub_22812C1DC(v33, v32, 0);
    sub_2281324D4(v35, v37 + v31, v29);
    sub_22812AB78(v35, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v38 = *(v0 + 8);
  }

  return v38();
}

uint64_t sub_228122BDC()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 432);

  sub_22812AB78(v2, type metadata accessor for SKMailMessage);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v3 = *(v0 + 520);
  v4 = *(v0 + 464);
  v5 = *(v0 + 448);
  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  v8 = *(v0 + 352);
  sub_22812C558(*(v0 + 344) + *(v0 + 456), v5, v3);
  v9 = v3;
  sub_22812C1DC(v5, v4, v3);

  *(v0 + 304) = v3;
  v10 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if (v11)
  {
    v13 = *(v0 + 376);
    v14 = *(v0 + 384);
    v15 = *(v0 + 360);
    v16 = *(v0 + 368);
    v17 = *(v0 + 352);
    v12(v17, 0, 1, v15);
    (*(v16 + 32))(v14, v17, v15);
    v18 = *(v16 + 16);
    v18(v13, v14, v15);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v19 = swift_allocError();
    v18(v20, v13, v15);
    v21 = swift_allocObject();
    *(v21 + 16) = 7;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3DC);

    v23 = *(v16 + 8);
    v23(v13, v15);
    *(v0 + 288) = 7;
    *(v0 + 296) = v22;
    sub_227FDB3CC();
    v24 = sub_22813999C();
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = swift_allocError();
      *v27 = 7;
      *(v27 + 8) = v22;
    }

    v28 = *(v0 + 384);
    v29 = *(v0 + 360);
    swift_willThrow();

    v23(v28, v29);
    v3 = v25;
  }

  else
  {
    v26 = *(v0 + 352);
    v12(v26, 1, 1, *(v0 + 360));
    sub_22812D31C(v26, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v30 = *(v0 + 480);
  v31 = *(v0 + 488);
  v32 = *(v0 + 464);
  v33 = *(v0 + 472);
  v34 = *(v0 + 440);
  v41 = *(v0 + 432);
  v42 = *(v0 + 416);
  v43 = *(v0 + 408);
  v44 = *(v0 + 384);
  v35 = *(v0 + 344);
  v45 = *(v0 + 376);
  v46 = *(v0 + 352);
  v36 = swift_allocObject();
  v36[2] = v3;
  v36[3] = sub_22812D3A0;
  v36[4] = v30;
  swift_beginAccess();
  v37 = *(v31 + 24);
  *(v31 + 16) = sub_22812D454;
  *(v31 + 24) = v36;

  v38 = v3;

  swift_willThrow();
  sub_2281324D4(v34, v35 + v33, v31);
  sub_22812AB78(v34, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_22812323C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 448) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 456) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 464) = v7;
  *(v0 + 472) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 488) = v10;
  *(v10 + 16) = sub_22812D3A4;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v12, v13, inited);
  v38 = v7;
  v18 = *(v0 + 432);
  v19 = *(v0 + 416);
  v20 = *(v0 + 336);
  v39 = *(v0 + 344);
  v21 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v22 = sub_228138AAC();
  (*(*(v22 - 8) + 16))(v18, v21, v22);
  *(v0 + 168) = v4;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v20, v23, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v19);
  sub_228111008((v0 + 144), v19);
  *(v0 + 496) = v24;
  v25 = *(v0 + 408);
  v26 = *(v0 + 328);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  v27 = __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  MEMORY[0x22AAB0FC0](v27);
  v28 = sub_228120420();
  *(v0 + 504) = v28;
  v29 = v28;
  v31 = *(v0 + 424);
  v30 = *(v0 + 432);
  v32 = *(v0 + 336);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 208) = v31;
  *(v0 + 216) = &protocol witness table for SKTextMessage;
  v33 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
  sub_22812ABD8(v30, v33, type metadata accessor for SKTextMessage);
  *(v0 + 248) = v4;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v34 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v32, v34, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v35 = swift_task_alloc();
  *(v0 + 512) = v35;
  *v35 = v0;
  v35[1] = sub_228123AE0;
  v36 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v36, v0 + 184, v29, v0 + 224, v38);
}

uint64_t sub_228123AE0()
{
  v2 = *v1;
  v3 = (*v1)[64];
  v7 = *v1;
  (*v1)[65] = v0;

  v4 = v2[63];

  if (v0)
  {
    v5 = sub_228124194;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 28);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 23);
    v5 = sub_228123C14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228123C14()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 432);

  sub_22812AB78(v3, type metadata accessor for SKTextMessage);
  sub_2281395DC();
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 312);
    v6 = sub_228138F9C();
    (*(*(v6 - 8) + 8))(v5, v6);
    v7 = *(v0 + 464);
    v8 = *(v0 + 448);
    v9 = *(v0 + 360);
    v10 = *(v0 + 368);
    v11 = *(v0 + 352);
    sub_22812C558(*(v0 + 344) + *(v0 + 456), v8, v4);
    v12 = v4;
    sub_22812C1DC(v8, v7, v4);

    *(v0 + 304) = v4;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v14 = swift_dynamicCast();
    v15 = *(v10 + 56);
    if (v14)
    {
      v16 = *(v0 + 376);
      v17 = *(v0 + 384);
      v18 = *(v0 + 360);
      v19 = *(v0 + 368);
      v20 = *(v0 + 352);
      v15(v20, 0, 1, v18);
      (*(v19 + 32))(v17, v20, v18);
      v21 = *(v19 + 16);
      v21(v16, v17, v18);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v22 = swift_allocError();
      v21(v23, v16, v18);
      v24 = swift_allocObject();
      *(v24 + 16) = 7;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      v25 = sub_227FF96D4(v22, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E0);

      v26 = *(v19 + 8);
      v26(v16, v18);
      *(v0 + 288) = 7;
      *(v0 + 296) = v25;
      sub_227FDB3CC();
      v27 = sub_22813999C();
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = swift_allocError();
        *v40 = 7;
        *(v40 + 8) = v25;
      }

      v41 = *(v0 + 384);
      v42 = *(v0 + 360);
      swift_willThrow();

      v26(v41, v42);
      v4 = v28;
    }

    else
    {
      v39 = *(v0 + 352);
      v15(v39, 1, 1, *(v0 + 360));
      sub_22812D31C(v39, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v43 = *(v0 + 480);
    v44 = *(v0 + 488);
    v45 = *(v0 + 464);
    v46 = *(v0 + 472);
    v47 = *(v0 + 440);
    v53 = *(v0 + 432);
    v54 = *(v0 + 416);
    v56 = *(v0 + 408);
    v58 = *(v0 + 384);
    v48 = *(v0 + 344);
    v60 = *(v0 + 376);
    v62 = *(v0 + 352);
    v49 = swift_allocObject();
    v49[2] = v4;
    v49[3] = sub_22812D3A4;
    v49[4] = v43;
    swift_beginAccess();
    v50 = *(v44 + 24);
    *(v44 + 16) = sub_22812D458;
    *(v44 + 24) = v49;

    v51 = v4;

    swift_willThrow();
    sub_2281324D4(v47, v48 + v46, v44);
    sub_22812AB78(v47, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v38 = *(v0 + 8);
  }

  else
  {
    v30 = *(v0 + 480);
    v29 = *(v0 + 488);
    v32 = *(v0 + 464);
    v31 = *(v0 + 472);
    v33 = *(v0 + 448);
    v34 = *(v0 + 432);
    v35 = *(v0 + 440);
    v36 = *(v0 + 416);
    v55 = *(v0 + 408);
    v57 = *(v0 + 384);
    v59 = *(v0 + 376);
    v37 = *(v0 + 344);
    v61 = *(v0 + 352);
    sub_22812BF3C(v37 + *(v0 + 456), v33);
    sub_22812C1DC(v33, v32, 0);
    sub_2281324D4(v35, v37 + v31, v29);
    sub_22812AB78(v35, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v38 = *(v0 + 8);
  }

  return v38();
}

uint64_t sub_228124194()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 432);

  sub_22812AB78(v2, type metadata accessor for SKTextMessage);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v3 = *(v0 + 520);
  v4 = *(v0 + 464);
  v5 = *(v0 + 448);
  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  v8 = *(v0 + 352);
  sub_22812C558(*(v0 + 344) + *(v0 + 456), v5, v3);
  v9 = v3;
  sub_22812C1DC(v5, v4, v3);

  *(v0 + 304) = v3;
  v10 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if (v11)
  {
    v13 = *(v0 + 376);
    v14 = *(v0 + 384);
    v15 = *(v0 + 360);
    v16 = *(v0 + 368);
    v17 = *(v0 + 352);
    v12(v17, 0, 1, v15);
    (*(v16 + 32))(v14, v17, v15);
    v18 = *(v16 + 16);
    v18(v13, v14, v15);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v19 = swift_allocError();
    v18(v20, v13, v15);
    v21 = swift_allocObject();
    *(v21 + 16) = 7;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E0);

    v23 = *(v16 + 8);
    v23(v13, v15);
    *(v0 + 288) = 7;
    *(v0 + 296) = v22;
    sub_227FDB3CC();
    v24 = sub_22813999C();
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = swift_allocError();
      *v27 = 7;
      *(v27 + 8) = v22;
    }

    v28 = *(v0 + 384);
    v29 = *(v0 + 360);
    swift_willThrow();

    v23(v28, v29);
    v3 = v25;
  }

  else
  {
    v26 = *(v0 + 352);
    v12(v26, 1, 1, *(v0 + 360));
    sub_22812D31C(v26, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v30 = *(v0 + 480);
  v31 = *(v0 + 488);
  v32 = *(v0 + 464);
  v33 = *(v0 + 472);
  v34 = *(v0 + 440);
  v41 = *(v0 + 432);
  v42 = *(v0 + 416);
  v43 = *(v0 + 408);
  v44 = *(v0 + 384);
  v35 = *(v0 + 344);
  v45 = *(v0 + 376);
  v46 = *(v0 + 352);
  v36 = swift_allocObject();
  v36[2] = v3;
  v36[3] = sub_22812D3A4;
  v36[4] = v30;
  swift_beginAccess();
  v37 = *(v31 + 24);
  *(v31 + 16) = sub_22812D458;
  *(v31 + 24) = v36;

  v38 = v3;

  swift_willThrow();
  sub_2281324D4(v34, v35 + v33, v31);
  sub_22812AB78(v34, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2281247F4()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 448) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 456) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 464) = v7;
  *(v0 + 472) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 488) = v10;
  *(v10 + 16) = sub_22812D3A8;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v12, v13, inited);
  v37 = v7;
  v18 = *(v0 + 432);
  v19 = *(v0 + 416);
  v20 = *(v0 + 336);
  v38 = *(v0 + 344);
  v21 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v22 = sub_2281389DC();
  (*(*(v22 - 8) + 16))(v18, v21, v22);
  *(v0 + 168) = v4;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v20, v23, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v19);
  sub_228111008((v0 + 144), v19);
  *(v0 + 496) = v24;
  v25 = *(v0 + 408);
  v26 = *(v0 + 328);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  sub_2281389BC();
  v27 = sub_228120420();
  *(v0 + 504) = v27;
  v28 = v27;
  v30 = *(v0 + 424);
  v29 = *(v0 + 432);
  v31 = *(v0 + 336);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 208) = v30;
  *(v0 + 216) = &off_283B5E1D0;
  v32 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
  sub_22812ABD8(v29, v32, type metadata accessor for SKNoteMessage);
  *(v0 + 248) = v4;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v33 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v31, v33, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v34 = swift_task_alloc();
  *(v0 + 512) = v34;
  *v34 = v0;
  v34[1] = sub_228125098;
  v35 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v35, v0 + 184, v28, v0 + 224, v37);
}

uint64_t sub_228125098()
{
  v2 = *v1;
  v3 = (*v1)[64];
  v7 = *v1;
  (*v1)[65] = v0;

  v4 = v2[63];

  if (v0)
  {
    v5 = sub_22812574C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 28);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 23);
    v5 = sub_2281251CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2281251CC()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 432);

  sub_22812AB78(v3, type metadata accessor for SKNoteMessage);
  sub_2281395DC();
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 312);
    v6 = sub_228138F9C();
    (*(*(v6 - 8) + 8))(v5, v6);
    v7 = *(v0 + 464);
    v8 = *(v0 + 448);
    v9 = *(v0 + 360);
    v10 = *(v0 + 368);
    v11 = *(v0 + 352);
    sub_22812C558(*(v0 + 344) + *(v0 + 456), v8, v4);
    v12 = v4;
    sub_22812C1DC(v8, v7, v4);

    *(v0 + 304) = v4;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v14 = swift_dynamicCast();
    v15 = *(v10 + 56);
    if (v14)
    {
      v16 = *(v0 + 376);
      v17 = *(v0 + 384);
      v18 = *(v0 + 360);
      v19 = *(v0 + 368);
      v20 = *(v0 + 352);
      v15(v20, 0, 1, v18);
      (*(v19 + 32))(v17, v20, v18);
      v21 = *(v19 + 16);
      v21(v16, v17, v18);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v22 = swift_allocError();
      v21(v23, v16, v18);
      v24 = swift_allocObject();
      *(v24 + 16) = 7;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      v25 = sub_227FF96D4(v22, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E4);

      v26 = *(v19 + 8);
      v26(v16, v18);
      *(v0 + 288) = 7;
      *(v0 + 296) = v25;
      sub_227FDB3CC();
      v27 = sub_22813999C();
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = swift_allocError();
        *v40 = 7;
        *(v40 + 8) = v25;
      }

      v41 = *(v0 + 384);
      v42 = *(v0 + 360);
      swift_willThrow();

      v26(v41, v42);
      v4 = v28;
    }

    else
    {
      v39 = *(v0 + 352);
      v15(v39, 1, 1, *(v0 + 360));
      sub_22812D31C(v39, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v43 = *(v0 + 480);
    v44 = *(v0 + 488);
    v45 = *(v0 + 464);
    v46 = *(v0 + 472);
    v47 = *(v0 + 440);
    v53 = *(v0 + 432);
    v54 = *(v0 + 416);
    v56 = *(v0 + 408);
    v58 = *(v0 + 384);
    v48 = *(v0 + 344);
    v60 = *(v0 + 376);
    v62 = *(v0 + 352);
    v49 = swift_allocObject();
    v49[2] = v4;
    v49[3] = sub_22812D3A8;
    v49[4] = v43;
    swift_beginAccess();
    v50 = *(v44 + 24);
    *(v44 + 16) = sub_22812D45C;
    *(v44 + 24) = v49;

    v51 = v4;

    swift_willThrow();
    sub_2281324D4(v47, v48 + v46, v44);
    sub_22812AB78(v47, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v38 = *(v0 + 8);
  }

  else
  {
    v30 = *(v0 + 480);
    v29 = *(v0 + 488);
    v32 = *(v0 + 464);
    v31 = *(v0 + 472);
    v33 = *(v0 + 448);
    v34 = *(v0 + 432);
    v35 = *(v0 + 440);
    v36 = *(v0 + 416);
    v55 = *(v0 + 408);
    v57 = *(v0 + 384);
    v59 = *(v0 + 376);
    v37 = *(v0 + 344);
    v61 = *(v0 + 352);
    sub_22812BF3C(v37 + *(v0 + 456), v33);
    sub_22812C1DC(v33, v32, 0);
    sub_2281324D4(v35, v37 + v31, v29);
    sub_22812AB78(v35, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v38 = *(v0 + 8);
  }

  return v38();
}

uint64_t sub_22812574C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 432);

  sub_22812AB78(v2, type metadata accessor for SKNoteMessage);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v3 = *(v0 + 520);
  v4 = *(v0 + 464);
  v5 = *(v0 + 448);
  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  v8 = *(v0 + 352);
  sub_22812C558(*(v0 + 344) + *(v0 + 456), v5, v3);
  v9 = v3;
  sub_22812C1DC(v5, v4, v3);

  *(v0 + 304) = v3;
  v10 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if (v11)
  {
    v13 = *(v0 + 376);
    v14 = *(v0 + 384);
    v15 = *(v0 + 360);
    v16 = *(v0 + 368);
    v17 = *(v0 + 352);
    v12(v17, 0, 1, v15);
    (*(v16 + 32))(v14, v17, v15);
    v18 = *(v16 + 16);
    v18(v13, v14, v15);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v19 = swift_allocError();
    v18(v20, v13, v15);
    v21 = swift_allocObject();
    *(v21 + 16) = 7;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E4);

    v23 = *(v16 + 8);
    v23(v13, v15);
    *(v0 + 288) = 7;
    *(v0 + 296) = v22;
    sub_227FDB3CC();
    v24 = sub_22813999C();
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = swift_allocError();
      *v27 = 7;
      *(v27 + 8) = v22;
    }

    v28 = *(v0 + 384);
    v29 = *(v0 + 360);
    swift_willThrow();

    v23(v28, v29);
    v3 = v25;
  }

  else
  {
    v26 = *(v0 + 352);
    v12(v26, 1, 1, *(v0 + 360));
    sub_22812D31C(v26, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v30 = *(v0 + 480);
  v31 = *(v0 + 488);
  v32 = *(v0 + 464);
  v33 = *(v0 + 472);
  v34 = *(v0 + 440);
  v41 = *(v0 + 432);
  v42 = *(v0 + 416);
  v43 = *(v0 + 408);
  v44 = *(v0 + 384);
  v35 = *(v0 + 344);
  v45 = *(v0 + 376);
  v46 = *(v0 + 352);
  v36 = swift_allocObject();
  v36[2] = v3;
  v36[3] = sub_22812D3A8;
  v36[4] = v30;
  swift_beginAccess();
  v37 = *(v31 + 24);
  *(v31 + 16) = sub_22812D45C;
  *(v31 + 24) = v36;

  v38 = v3;

  swift_willThrow();
  sub_2281324D4(v34, v35 + v33, v31);
  sub_22812AB78(v34, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_228125D7C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 432) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 440) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 448) = v7;
  *(v0 + 456) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 464) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 472) = v10;
  *(v10 + 16) = sub_22812D3AC;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v12, v13, inited);
  v34 = v7;
  v18 = *(v0 + 416);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F418, &qword_228142DC0);
  v22 = sub_228138BAC();
  *(v0 + 168) = v4;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v19, v23, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v18);
  sub_228111008((v0 + 144), v18);
  *(v0 + 480) = v24;
  v25 = *(v0 + 408);
  v26 = *(v0 + 328);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  sub_22813890C();
  v27 = sub_228120420();
  *(v0 + 488) = v27;
  v28 = v27;
  v29 = *(v0 + 336);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 208) = &type metadata for SKMailMessageThread;
  *(v0 + 216) = &protocol witness table for SKMailMessageThread;
  *(v0 + 184) = v22;
  *(v0 + 248) = v4;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v29, v30, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v31 = swift_task_alloc();
  *(v0 + 496) = v31;
  *v31 = v0;
  v31[1] = sub_2281265A0;
  v32 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v32, v0 + 184, v28, v0 + 224, v34);
}

uint64_t sub_2281265A0()
{
  v2 = *v1;
  v3 = (*v1)[62];
  v7 = *v1;
  (*v1)[63] = v0;

  v4 = v2[61];

  if (v0)
  {
    v5 = sub_228126C20;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 28);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 23);
    v5 = sub_2281266D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2281266D4()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);

  sub_2281395DC();
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 312);
    v5 = sub_228138F9C();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = *(v0 + 448);
    v7 = *(v0 + 432);
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    v10 = *(v0 + 352);
    sub_22812C558(*(v0 + 344) + *(v0 + 440), v7, v3);
    v11 = v3;
    sub_22812C1DC(v7, v6, v3);

    *(v0 + 304) = v3;
    v12 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v13 = swift_dynamicCast();
    v14 = *(v9 + 56);
    if (v13)
    {
      v15 = *(v0 + 376);
      v16 = *(v0 + 384);
      v17 = *(v0 + 360);
      v18 = *(v0 + 368);
      v19 = *(v0 + 352);
      v14(v19, 0, 1, v17);
      (*(v18 + 32))(v16, v19, v17);
      v20 = *(v18 + 16);
      v20(v15, v16, v17);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v21 = swift_allocError();
      v20(v22, v15, v17);
      v23 = swift_allocObject();
      *(v23 + 16) = 7;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_227FF96D4(v21, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E8);

      v25 = *(v18 + 8);
      v25(v15, v17);
      *(v0 + 288) = 7;
      *(v0 + 296) = v24;
      sub_227FDB3CC();
      v26 = sub_22813999C();
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = swift_allocError();
        *v39 = 7;
        *(v39 + 8) = v24;
      }

      v40 = *(v0 + 384);
      v41 = *(v0 + 360);
      swift_willThrow();

      v25(v40, v41);
      v3 = v27;
    }

    else
    {
      v38 = *(v0 + 352);
      v14(v38, 1, 1, *(v0 + 360));
      sub_22812D31C(v38, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v42 = *(v0 + 464);
    v43 = *(v0 + 472);
    v45 = *(v0 + 448);
    v44 = *(v0 + 456);
    v46 = *(v0 + 424);
    v52 = *(v0 + 416);
    v53 = *(v0 + 408);
    v55 = *(v0 + 384);
    v57 = *(v0 + 376);
    v47 = *(v0 + 344);
    v59 = *(v0 + 352);
    v48 = swift_allocObject();
    v48[2] = v3;
    v48[3] = sub_22812D3AC;
    v48[4] = v42;
    swift_beginAccess();
    v49 = *(v43 + 24);
    *(v43 + 16) = sub_22812D460;
    *(v43 + 24) = v48;

    v50 = v3;

    swift_willThrow();
    sub_2281324D4(v46, v47 + v44, v43);
    sub_22812AB78(v46, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v37 = *(v0 + 8);
  }

  else
  {
    v29 = *(v0 + 464);
    v28 = *(v0 + 472);
    v31 = *(v0 + 448);
    v30 = *(v0 + 456);
    v32 = *(v0 + 432);
    v34 = *(v0 + 416);
    v33 = *(v0 + 424);
    v35 = *(v0 + 408);
    v54 = *(v0 + 384);
    v56 = *(v0 + 376);
    v36 = *(v0 + 344);
    v58 = *(v0 + 352);
    sub_22812BF3C(v36 + *(v0 + 440), v32);
    sub_22812C1DC(v32, v31, 0);
    sub_2281324D4(v33, v36 + v30, v28);
    sub_22812AB78(v33, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_228126C20()
{
  v1 = *(v0 + 480);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v2 = *(v0 + 504);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 352);
  sub_22812C558(*(v0 + 344) + *(v0 + 440), v4, v2);
  v8 = v2;
  sub_22812C1DC(v4, v3, v2);

  *(v0 + 304) = v2;
  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v10 = swift_dynamicCast();
  v11 = *(v6 + 56);
  if (v10)
  {
    v12 = *(v0 + 376);
    v13 = *(v0 + 384);
    v14 = *(v0 + 360);
    v15 = *(v0 + 368);
    v16 = *(v0 + 352);
    v11(v16, 0, 1, v14);
    (*(v15 + 32))(v13, v16, v14);
    v17 = *(v15 + 16);
    v17(v12, v13, v14);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v18 = swift_allocError();
    v17(v19, v12, v14);
    v20 = swift_allocObject();
    *(v20 + 16) = 7;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    v21 = sub_227FF96D4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3E8);

    v22 = *(v15 + 8);
    v22(v12, v14);
    *(v0 + 288) = 7;
    *(v0 + 296) = v21;
    sub_227FDB3CC();
    v23 = sub_22813999C();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = swift_allocError();
      *v26 = 7;
      *(v26 + 8) = v21;
    }

    v27 = *(v0 + 384);
    v28 = *(v0 + 360);
    swift_willThrow();

    v22(v27, v28);
    v2 = v24;
  }

  else
  {
    v25 = *(v0 + 352);
    v11(v25, 1, 1, *(v0 + 360));
    sub_22812D31C(v25, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v29 = *(v0 + 464);
  v30 = *(v0 + 472);
  v32 = *(v0 + 448);
  v31 = *(v0 + 456);
  v33 = *(v0 + 424);
  v40 = *(v0 + 416);
  v41 = *(v0 + 408);
  v42 = *(v0 + 384);
  v43 = *(v0 + 376);
  v34 = *(v0 + 344);
  v44 = *(v0 + 352);
  v35 = swift_allocObject();
  v35[2] = v2;
  v35[3] = sub_22812D3AC;
  v35[4] = v29;
  swift_beginAccess();
  v36 = *(v30 + 24);
  *(v30 + 16) = sub_22812D460;
  *(v30 + 24) = v35;

  v37 = v2;

  swift_willThrow();
  sub_2281324D4(v33, v34 + v31, v30);
  sub_22812AB78(v33, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_228127228()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 432) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 440) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 448) = v7;
  *(v0 + 456) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 464) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 472) = v10;
  *(v10 + 16) = sub_22812D3B0;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v12, v13, inited);
  v35 = v7;
  v18 = *(v0 + 416);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F420, &qword_228142DD0);
  v22 = sub_228138BAC();
  *(v0 + 168) = v4;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v19, v23, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2EC(v18);
  sub_228111008((v0 + 144), v18);
  *(v0 + 480) = v24;
  v25 = *(v0 + 408);
  v26 = *(v0 + 328);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  v27 = __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  MEMORY[0x22AAB0FF0](v27);
  v28 = sub_228120420();
  *(v0 + 488) = v28;
  v29 = v28;
  v30 = *(v0 + 336);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 208) = &type metadata for SKTextMessageThread;
  *(v0 + 216) = &protocol witness table for SKTextMessageThread;
  *(v0 + 184) = v22;
  *(v0 + 248) = v4;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v31 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v30, v31, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v32 = swift_task_alloc();
  *(v0 + 496) = v32;
  *v32 = v0;
  v32[1] = sub_228127A4C;
  v33 = *(v0 + 312);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v33, v0 + 184, v29, v0 + 224, v35);
}

uint64_t sub_228127A4C()
{
  v2 = *v1;
  v3 = (*v1)[62];
  v7 = *v1;
  (*v1)[63] = v0;

  v4 = v2[61];

  if (v0)
  {
    v5 = sub_2281280CC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 28);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 23);
    v5 = sub_228127B80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228127B80()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);

  sub_2281395DC();
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 312);
    v5 = sub_228138F9C();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = *(v0 + 448);
    v7 = *(v0 + 432);
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    v10 = *(v0 + 352);
    sub_22812C558(*(v0 + 344) + *(v0 + 440), v7, v3);
    v11 = v3;
    sub_22812C1DC(v7, v6, v3);

    *(v0 + 304) = v3;
    v12 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v13 = swift_dynamicCast();
    v14 = *(v9 + 56);
    if (v13)
    {
      v15 = *(v0 + 376);
      v16 = *(v0 + 384);
      v17 = *(v0 + 360);
      v18 = *(v0 + 368);
      v19 = *(v0 + 352);
      v14(v19, 0, 1, v17);
      (*(v18 + 32))(v16, v19, v17);
      v20 = *(v18 + 16);
      v20(v15, v16, v17);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v21 = swift_allocError();
      v20(v22, v15, v17);
      v23 = swift_allocObject();
      *(v23 + 16) = 7;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_227FF96D4(v21, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3EC);

      v25 = *(v18 + 8);
      v25(v15, v17);
      *(v0 + 288) = 7;
      *(v0 + 296) = v24;
      sub_227FDB3CC();
      v26 = sub_22813999C();
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = swift_allocError();
        *v39 = 7;
        *(v39 + 8) = v24;
      }

      v40 = *(v0 + 384);
      v41 = *(v0 + 360);
      swift_willThrow();

      v25(v40, v41);
      v3 = v27;
    }

    else
    {
      v38 = *(v0 + 352);
      v14(v38, 1, 1, *(v0 + 360));
      sub_22812D31C(v38, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v42 = *(v0 + 464);
    v43 = *(v0 + 472);
    v45 = *(v0 + 448);
    v44 = *(v0 + 456);
    v46 = *(v0 + 424);
    v52 = *(v0 + 416);
    v53 = *(v0 + 408);
    v55 = *(v0 + 384);
    v57 = *(v0 + 376);
    v47 = *(v0 + 344);
    v59 = *(v0 + 352);
    v48 = swift_allocObject();
    v48[2] = v3;
    v48[3] = sub_22812D3B0;
    v48[4] = v42;
    swift_beginAccess();
    v49 = *(v43 + 24);
    *(v43 + 16) = sub_22812D464;
    *(v43 + 24) = v48;

    v50 = v3;

    swift_willThrow();
    sub_2281324D4(v46, v47 + v44, v43);
    sub_22812AB78(v46, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v37 = *(v0 + 8);
  }

  else
  {
    v29 = *(v0 + 464);
    v28 = *(v0 + 472);
    v31 = *(v0 + 448);
    v30 = *(v0 + 456);
    v32 = *(v0 + 432);
    v34 = *(v0 + 416);
    v33 = *(v0 + 424);
    v35 = *(v0 + 408);
    v54 = *(v0 + 384);
    v56 = *(v0 + 376);
    v36 = *(v0 + 344);
    v58 = *(v0 + 352);
    sub_22812BF3C(v36 + *(v0 + 440), v32);
    sub_22812C1DC(v32, v31, 0);
    sub_2281324D4(v33, v36 + v30, v28);
    sub_22812AB78(v33, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_2281280CC()
{
  v1 = *(v0 + 480);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v2 = *(v0 + 504);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 352);
  sub_22812C558(*(v0 + 344) + *(v0 + 440), v4, v2);
  v8 = v2;
  sub_22812C1DC(v4, v3, v2);

  *(v0 + 304) = v2;
  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v10 = swift_dynamicCast();
  v11 = *(v6 + 56);
  if (v10)
  {
    v12 = *(v0 + 376);
    v13 = *(v0 + 384);
    v14 = *(v0 + 360);
    v15 = *(v0 + 368);
    v16 = *(v0 + 352);
    v11(v16, 0, 1, v14);
    (*(v15 + 32))(v13, v16, v14);
    v17 = *(v15 + 16);
    v17(v12, v13, v14);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v18 = swift_allocError();
    v17(v19, v12, v14);
    v20 = swift_allocObject();
    *(v20 + 16) = 7;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    v21 = sub_227FF96D4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3EC);

    v22 = *(v15 + 8);
    v22(v12, v14);
    *(v0 + 288) = 7;
    *(v0 + 296) = v21;
    sub_227FDB3CC();
    v23 = sub_22813999C();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = swift_allocError();
      *v26 = 7;
      *(v26 + 8) = v21;
    }

    v27 = *(v0 + 384);
    v28 = *(v0 + 360);
    swift_willThrow();

    v22(v27, v28);
    v2 = v24;
  }

  else
  {
    v25 = *(v0 + 352);
    v11(v25, 1, 1, *(v0 + 360));
    sub_22812D31C(v25, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v29 = *(v0 + 464);
  v30 = *(v0 + 472);
  v32 = *(v0 + 448);
  v31 = *(v0 + 456);
  v33 = *(v0 + 424);
  v40 = *(v0 + 416);
  v41 = *(v0 + 408);
  v42 = *(v0 + 384);
  v43 = *(v0 + 376);
  v34 = *(v0 + 344);
  v44 = *(v0 + 352);
  v35 = swift_allocObject();
  v35[2] = v2;
  v35[3] = sub_22812D3B0;
  v35[4] = v29;
  swift_beginAccess();
  v36 = *(v30 + 24);
  *(v30 + 16) = sub_22812D464;
  *(v30 + 24) = v35;

  v37 = v2;

  swift_willThrow();
  sub_2281324D4(v33, v34 + v31, v30);
  sub_22812AB78(v33, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_228128514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2281398BC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_228128614, 0, 0);
}

uint64_t sub_228128614()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_2281398CC();
  v7 = sub_227FCAF8C(&qword_2813C45C0, MEMORY[0x277D85928]);
  sub_2281399FC();
  sub_227FCAF8C(&qword_2813C45C8, MEMORY[0x277D858F8]);
  sub_2281398DC();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_227FC75FC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2281287A4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_228128810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_228043AD4(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_228043AD4((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x22AAB0200](*(v13 + 16) & 0x3FLL) > v11)
    {
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v15 = *v3;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = *v3;
        v17 = sub_228137C7C();

        *v3 = v17;
        v15 = v17;
      }

      if (v15)
      {
        v18 = *(v15 + 16);
        v19 = *(*v6 + 16) + ~(*(v15 + 24) >> 6);
        return sub_228137C1C();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_228128E8C(sub_228129F88);
}

uint64_t sub_22812899C(uint64_t a1)
{
  v3 = sub_228136FCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3);
  v9 = v1 + 1;
  v10 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_228043B98(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_228043B98(v12 > 1, v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  result = (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v8, v3);
  v1[1] = v10;
  v15 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    if (MEMORY[0x22AAB0200](*(v15 + 16) & 0x3FLL) > v13)
    {
      v16 = *v1;
      result = swift_isUniquelyReferenced_native();
      v17 = *v1;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v18 = *v1;
        v19 = sub_228137C7C();

        *v1 = v19;
        v17 = v19;
      }

      if (v17)
      {
        v20 = *(v17 + 16);
        v21 = *(*v9 + 16) + ~(*(v17 + 24) >> 6);
        return sub_228137C1C();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return result;
  }

  return sub_228128E8C(sub_228129FD8);
}

unint64_t sub_228128BF8(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_228128E04(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x22AAB0210]())
  {
LABEL_16:
    v13 = sub_228128E04(a1);
    sub_228128E8C(sub_228129F88);
    return v13;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_228137C7C();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_228128F3C(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_228129488(a1, a1 + 1, v4, (v10 + 16));

      return sub_228128E04(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_228128D74@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_227FEA628(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    sub_227FE5EA8((v9 + 32), a2);
    result = memmove((v9 + 32), (v9 + 64), 32 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_228128E04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_227FEA614(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_228128E8C(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = MEMORY[0x22AAB0230](v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = sub_228129F00(v5, v9, 0, v4, a1);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

unint64_t sub_228128F3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v23 = sub_228137BFC();
  sub_228137C4C();
  if (v23)
  {
    v7 = sub_228137C0C();
    while (1)
    {
      result = sub_228137C2C();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_228139AAC();

      sub_22813923C();
      v16 = sub_228139AEC();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_22;
      }

      v19 = v18 & v16;
      if (v6 >= v7)
      {
        break;
      }

      if (v19 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v20 = sub_228137C2C();
      if ((v21 & 1) == 0)
      {
        v8 = ((v18 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v18;
      }

      v6 = a1;
      sub_228137C1C();
LABEL_5:
      sub_228137C4C();
    }

    if (v19 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_228137C1C();
}

unint64_t sub_228129134(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v7 = sub_228136FCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228137BFC();
  *&v30 = a2;
  *(&v30 + 1) = a3;
  *&v31 = a1;
  *(&v31 + 1) = v13;
  *&v32 = v14;
  *(&v32 + 1) = v15;
  v33 = 0;
  sub_228137C4C();
  if (*(&v31 + 1))
  {
    v28[0] = a3;
    v16 = sub_228137C0C();
    v28[1] = v8 + 16;
    while (1)
    {
      v38 = v30;
      v39 = v31;
      v40 = v32;
      v41 = v33;
      result = sub_228137C2C();
      if (v19)
      {
LABEL_24:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v20 = *(v29 + 8);
      if (result >= *(v20 + 16))
      {
        goto LABEL_22;
      }

      v21 = *a2;
      (*(v8 + 16))(v12, v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0]);
      v22 = sub_2281391DC();
      result = (*(v8 + 8))(v12, v7);
      v23 = 1 << *a2;
      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_23;
      }

      v25 = v24 & v22;
      if (a1 >= v16)
      {
        if (v25 < v16)
        {
          goto LABEL_5;
        }
      }

      else if (v25 >= v16)
      {
        goto LABEL_15;
      }

      if (a1 >= v25)
      {
LABEL_15:
        v34 = v30;
        v35 = v31;
        v36 = v32;
        v37 = v33;
        v26 = sub_228137C2C();
        if ((v27 & 1) == 0)
        {
          v17 = ((v24 & ((v26 - (a2[1] >> 6)) >> 63)) + v26 - (a2[1] >> 6)) ^ v24;
        }

        a1 = v35;
        sub_228137C1C();
      }

LABEL_5:
      sub_228137C4C();
      if (!*(&v31 + 1))
      {
        return sub_228137C1C();
      }
    }
  }

  return sub_228137C1C();
}

uint64_t sub_228129488(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x22AAB0200](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (v8)
        {
          v11 = 0;
          while (1)
          {
            v12 = (v10 + 32 + 16 * v11);
            v13 = *v12;
            v14 = v12[1];
            v15 = *a4;
            sub_228139AAC();

            sub_22813923C();
            result = sub_228139AEC();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_228137BFC())
            {
              while (1)
              {
                v16 = sub_228137C2C();
                if ((v17 & 1) == 0 && v16 == v11)
                {
                  break;
                }

                sub_228137C4C();
              }
            }

            result = v11 + v5;
            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_228137C3C();

            if (v11 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_228137BFC();
      v24 = sub_228137C2C();
      if ((v25 & 1) != 0 || v24 >= v8)
      {
LABEL_33:
        result = sub_228137C4C();
LABEL_18:
        v18 = a4[1];
        if (__OFSUB__(v18 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v19 = 1 << *a4;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v22 = (v21 & (((v18 >> 6) - v5) >> 63)) + (v18 >> 6) - v5;
        if (v22 < v21)
        {
          v21 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v22 - v21) << 6);
        return result;
      }

      if (!__OFADD__(v24, v5))
      {
        sub_228137C3C();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_228137BFC();
      v26 = sub_228137C2C();
      if ((v27 & 1) == 0 && v26 >= v4)
      {
        v20 = __OFSUB__(v26, v5);
        result = v26 - v5;
        if (v20)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_228137C3C();
      }

      return sub_228137C4C();
    }

    v4 = a2;
    v23 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x22AAB0200](*a4 & 0x3F);
    if (v23 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      do
      {
        v28 = (a3 + 32 + 16 * v4);
        v29 = *v28;
        v30 = v28[1];
        v31 = *a4;
        sub_228139AAC();

        sub_22813923C();
        result = sub_228139AEC();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_228137BFC())
        {
          while (1)
          {
            v32 = sub_228137C2C();
            if ((v33 & 1) == 0 && v32 == v4)
            {
              break;
            }

            sub_228137C4C();
          }
        }

        sub_228137C3C();
      }

      while (++v4 != v9);
    }
  }

  return result;
}

uint64_t sub_2281298F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_228136FCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14, v17);
  v20 = &v66 - v19;
  v21 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v21 >= 1)
  {
    v22 = *(a3 + 16);
    if (a1 >= (v22 - v21) / 2)
    {
      v67 = a3;
      v40 = v22 - a2;
      if (__OFSUB__(v22, a2))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v72 = v22;
      result = MEMORY[0x22AAB0200](*a4 & 0x3F);
      if (v40 >= result / 3)
      {
LABEL_51:
        v61 = sub_228137BFC();
        *&v73 = a4;
        *(&v73 + 1) = a5;
        *&v74 = 0;
        *(&v74 + 1) = v61;
        *&v75 = v62;
        *(&v75 + 1) = v63;
        v76 = 0;
        while (1)
        {
          v77 = v73;
          v78 = v74;
          v79 = v75;
          v80 = v76;
          v64 = sub_228137C2C();
          if ((v65 & 1) == 0 && v64 >= a2)
          {
            v28 = __OFSUB__(v64, v21);
            result = v64 - v21;
            if (v28)
            {
              goto LABEL_59;
            }

            sub_228137C3C();
          }

          result = sub_228137C4C();
          if (!v74)
          {
            return result;
          }
        }
      }

      if (v72 < a2)
      {
        goto LABEL_69;
      }

      result = v67;
      if (a2 < 0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v72 != a2)
      {
        if (v72 <= a2)
        {
LABEL_71:
          __break(1u);
          return result;
        }

        v70 = v67 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v42 = *(v11 + 16);
        v41 = v11 + 16;
        v68 = *(v41 + 56);
        v69 = v42;
        v71 = v41;
        v43 = (v41 - 8);

        while (1)
        {
          v69(v16, v70 + v68 * a2, v10);
          v44 = *a4;
          sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0]);
          v45 = sub_2281391DC();
          result = (*v43)(v16, v10);
          v46 = 1 << *a4;
          v28 = __OFSUB__(v46, 1);
          v47 = v46 - 1;
          if (v28)
          {
            goto LABEL_60;
          }

          v48 = v47 & v45;
          v49 = sub_228137BFC();
          *&v73 = a4;
          *(&v73 + 1) = a5;
          *&v74 = v48;
          *(&v74 + 1) = v49;
          *&v75 = v50;
          *(&v75 + 1) = v51;
          v76 = 0;
          while (*(&v74 + 1))
          {
            v77 = v73;
            v78 = v74;
            v79 = v75;
            v80 = v76;
            v52 = sub_228137C2C();
            if ((v53 & 1) == 0 && v52 == a2)
            {
              break;
            }

            sub_228137C4C();
          }

          v54 = (a2 + 1);
          v55 = __OFADD__(a2, 1);
          result = a2 - v21;
          if (__OFSUB__(a2, v21))
          {
            goto LABEL_61;
          }

          result = sub_228137C3C();
          if (v55)
          {
            goto LABEL_62;
          }

          ++a2;
          if (v54 == v72)
          {
          }
        }
      }
    }

    else
    {
      a2 = *(a3 + 16);
      result = MEMORY[0x22AAB0200](*a4 & 0x3F);
      if (result / 3 <= a1)
      {
        v56 = sub_228137BFC();
        *&v73 = a4;
        *(&v73 + 1) = a5;
        *&v74 = 0;
        *(&v74 + 1) = v56;
        *&v75 = v57;
        *(&v75 + 1) = v58;
        v76 = 0;
        while (1)
        {
          v77 = v73;
          v78 = v74;
          v79 = v75;
          v80 = v76;
          v59 = sub_228137C2C();
          if ((v60 & 1) == 0 && v59 < a1)
          {
            if (__OFADD__(v59, v21))
            {
              __break(1u);
              goto LABEL_51;
            }

            sub_228137C3C();
          }

          result = sub_228137C4C();
          if (!v74)
          {
            goto LABEL_18;
          }
        }
      }

      if (a1 < 0)
      {
        goto LABEL_67;
      }

      if (a2 < a1)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (a1)
      {
        v23 = *(v11 + 16);
        v71 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v72 = v23;
        v70 = *(v11 + 72);
        v67 = a3;

        v24 = 0;
        while (1)
        {
          v72(v20, v71 + v70 * v24, v10);
          v25 = *a4;
          sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0]);
          v26 = sub_2281391DC();
          result = (*(v11 + 8))(v20, v10);
          v27 = 1 << *a4;
          v28 = __OFSUB__(v27, 1);
          v29 = v27 - 1;
          if (v28)
          {
            break;
          }

          v30 = v29 & v26;
          v31 = sub_228137BFC();
          *&v73 = a4;
          *(&v73 + 1) = a5;
          *&v74 = v30;
          *(&v74 + 1) = v31;
          *&v75 = v32;
          *(&v75 + 1) = v33;
          v76 = 0;
          while (*(&v74 + 1))
          {
            v77 = v73;
            v78 = v74;
            v79 = v75;
            v80 = v76;
            v34 = sub_228137C2C();
            if ((v35 & 1) == 0 && v34 == v24)
            {
              break;
            }

            sub_228137C4C();
          }

          result = v24 + v21;
          if (__OFADD__(v24, v21))
          {
            goto LABEL_58;
          }

          ++v24;
          sub_228137C3C();
          if (v24 == a1)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_18:
      v36 = a4[1];
      if (__OFSUB__(v36 >> 6, v21))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v37 = 1 << *a4;
      v28 = __OFSUB__(v37, 1);
      v38 = v37 - 1;
      if (v28)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v39 = (v38 & (((v36 >> 6) - v21) >> 63)) + (v36 >> 6) - v21;
      if (v39 < v38)
      {
        v38 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v39 - v38) << 6);
    }
  }

  return result;
}

uint64_t sub_228129F00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x22AAB0230](v8);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x22AAB0240](v10, a4);
    a5(a1, v12 + 16, v12 + 32);
    return v12;
  }

  return result;
}

uint64_t sub_22812A074(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_228139AAC();

        sub_22813923C();
        result = sub_228139AEC();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_228137BFC();

        if (v10)
        {
          while (1)
          {
            sub_228137C4C();
          }
        }

        result = sub_228137C3C();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22812A1A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a4;
  v33 = a1;
  v6 = sub_228136FCC();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6, v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  if (a2)
  {
    if ((v41 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v15 = *(v10 + 16);
      v14 = v10 + 16;
      v29 = *(v14 + 56);
      v30 = v15;
      v31 = v14;
      v28 = (v14 - 8);
      v15(v12, v33, v6);
      while (1)
      {
        v16 = *a3;
        sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0]);
        result = sub_2281391DC();
        v17 = 1 << *a3;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
          break;
        }

        v20 = v19 & result;
        v21 = v32;
        v22 = sub_228137BFC();
        v24 = v23;
        v26 = v25;
        (*v28)(v12, v6);
        v34 = a3;
        v35 = v21;
        v36 = v20;
        v37 = v22;
        v38 = v24;
        v39 = v26;
        v40 = 0;
        while (v37)
        {
          sub_228137C4C();
        }

        result = sub_228137C3C();
        if (++v13 == v41)
        {
          return result;
        }

        v30(v12, v33 + v29 * v13, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22812A3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_228139AAC();
  sub_22813923C();
  result = sub_228139AEC();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_228137BFC();
    result = sub_228137C2C();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_2281399BC())
          {
            break;
          }

          sub_228137C4C();
          result = sub_228137C2C();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_22812A508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v32 = a2;
  v8 = sub_228136FCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0]);
  v31[1] = a1;
  result = sub_2281391DC();
  v16 = 1 << *a4;
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = v18 & result;
    v20 = sub_228137BFC();
    *&v37 = a4;
    *(&v37 + 1) = a5;
    *&v38 = v19;
    *(&v38 + 1) = v20;
    *&v39 = v21;
    *(&v39 + 1) = v22;
    v40 = 0;
    v23 = sub_228137C2C();
    if ((v24 & 1) == 0)
    {
      v27 = *(v9 + 16);
      v26 = v9 + 16;
      v25 = v27;
      v28 = *(v26 + 56);
      do
      {
        v25(v13, v32 + v28 * v23, v8);
        sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0]);
        v29 = sub_22813926C();
        (*(v26 - 8))(v13, v8);
        if (v29)
        {
          break;
        }

        sub_228137C4C();
        v33 = v37;
        v34 = v38;
        v35 = v39;
        v36 = v40;
        v23 = sub_228137C2C();
      }

      while ((v30 & 1) == 0);
    }

    return v23;
  }

  return result;
}

uint64_t sub_22812A784(uint64_t result, char a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v11 + 16) > v9)
    {
      v18 = *(v11 + 16);
    }

    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = MEMORY[0x22AAB0230](v9);
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = v16;
        swift_beginAccess();
        v16 = v20;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      if (v17 <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v17;
      }

      goto LABEL_29;
    }
  }

  v16 = MEMORY[0x22AAB0230](v9);
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v21 = *(v11 + 16);
  if (v17 <= v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v17;
  }

  result = MEMORY[0x22AAB0230](*(v11 + 16));
  if (result <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = result;
  }

  if (v23 < v15)
  {
    if (v17 <= v23)
    {
      v19 = v23;
    }

    else
    {
      v19 = v17;
    }

LABEL_29:
    v24 = sub_228129F00(v11, v19, 0, v17, a4);

    *v7 = v24;
    return result;
  }

  if (!v14 || (v25 = *v7, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v26 = *v7;
    if (*v7)
    {
      goto LABEL_34;
    }

LABEL_38:
    if (!v17)
    {
      return result;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (!*v7)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v27 = *v7;
  v26 = sub_228137C7C();

  *v7 = v26;
  if (!v26)
  {
    goto LABEL_38;
  }

LABEL_34:
  result = swift_beginAccess();
  if ((*(v26 + 24) & 0x3FLL) != v17)
  {
    *(v26 + 24) = *(v26 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }

  return result;
}

uint64_t sub_22812A984(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 16) = a1;
  v15 = *a2;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_22812AA64;

  return sub_22810C274(v15, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22812AA64(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_22812AB78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22812ABD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22812AC40(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22812D424;

  return sub_2281114F8(a1, a2, v7, v6);
}

uint64_t sub_22812ACF4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227FCE13C;

  return sub_2281123CC(a1, a2, v7, v6);
}

uint64_t sub_22812ADA8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_22812A784(v3, 0, sub_228043AD4, sub_228129F88);
  v22 = v2;
  sub_228043AB4(0, v3, 0);
  if (!v3)
  {
    return v23;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    sub_227FCAFD4(v5 + 48 * v4, v20, &qword_27D81E380, &unk_228142F80);
    v7 = v20[0];
    v6 = v20[1];
    sub_227FE5EA8(&v21, v19);
    v8 = v23;
    v9 = v24;
    v10 = *(v24 + 16);
    if (!v23)
    {
      break;
    }

    sub_22812A3BC(v7, v6, v9 + 32, v10, (v8 + 16));
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    sub_228128810(v7, v6);
    sub_228029260(v19, v18);
    v22 = v2;
    v17 = *(v2 + 16);
    v16 = *(v2 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_228043AB4((v16 > 1), v17 + 1, 1);

      v2 = v22;
    }

    else
    {
    }

    ++v4;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v19);
    *(v2 + 16) = v17 + 1;
    sub_227FE5EA8(v18, (v2 + 32 * v17 + 32));
    if (v4 == v3)
    {
      return v23;
    }
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  v14 = (v24 + 40);
  while (1)
  {
    result = *(v14 - 1);
    if (result == v7 && *v14 == v6)
    {
      break;
    }

    result = sub_2281399BC();
    if (result)
    {
      break;
    }

    v14 += 2;
    if (!--v10)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22812AFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA0, &qword_22813DAF0);
  v61 = *(v2 - 8);
  v3 = *(v61 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v67 = &v53 - v9;
  v10 = sub_228136FCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v53 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F468, &unk_228142F70);
  v20 = *(v63 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v63, v22);
  v62 = &v53 - v23;
  v24 = MEMORY[0x277D84F90];
  v69 = 0;
  v70 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_22812A784(v25, 0, sub_228043B98, sub_228129FD8);
  v68 = v24;
  sub_228043B58(0, v25, 0);
  v66 = v68;
  v60 = v25;
  if (!v25)
  {
    return v69;
  }

  v26 = 0;
  v59 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v27 = *(v20 + 72);
  v57 = v11 + 32;
  v58 = v27;
  v28 = v11 + 16;
  v64 = v11;
  v29 = (v11 + 8);
  v55 = v28;
  v56 = v7;
  v30 = v19;
  v54 = v19;
  while (1)
  {
    v65 = v26;
    v31 = v59 + v58 * v26;
    v32 = v62;
    sub_227FCAFD4(v31, v62, &qword_27D81F468, &unk_228142F70);
    v33 = v64;
    v34 = *(v63 + 48);
    (*(v64 + 32))(v30, v32, v10);
    sub_227FCCD78(v32 + v34, v67, &qword_27D81EBA0, &qword_22813DAF0);
    v35 = v69;
    v36 = v70 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v37 = *(v70 + 16);
    if (!v69)
    {
      break;
    }

    sub_22812A508(v30, v36, v37, (v35 + 16), v35 + 32);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      goto LABEL_17;
    }

    v41 = v30;
LABEL_10:
    v45 = v56;
    v46 = v67;
LABEL_11:
    sub_22812899C(v41);
    sub_227FCAFD4(v46, v45, &qword_27D81EBA0, &qword_22813DAF0);
    v47 = v66;
    v68 = v66;
    v49 = *(v66 + 16);
    v48 = *(v66 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_228043B58(v48 > 1, v49 + 1, 1);
      v47 = v68;
    }

    v26 = v65 + 1;
    v50 = v46;
    v51 = v47;
    sub_22812D31C(v50, &qword_27D81EBA0, &qword_22813DAF0);
    *(v51 + 16) = v49 + 1;
    v52 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v66 = v51;
    sub_227FCCD78(v45, v51 + v52 + *(v61 + 72) * v49, &qword_27D81EBA0, &qword_22813DAF0);
    v30 = v54;
    (*v29)(v54, v10);
    if (v26 == v60)
    {
      return v69;
    }
  }

  v41 = v30;
  if (!v37)
  {
    v45 = v56;
    v46 = v67;
    goto LABEL_11;
  }

  v42 = *(v64 + 72);
  v43 = *(v64 + 16);
  while (1)
  {
    v43(v16, v36, v10);
    sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0]);
    v44 = sub_22813926C();
    result = (*v29)(v16, v10);
    if (v44)
    {
      break;
    }

    v36 += v42;
    if (!--v37)
    {
      goto LABEL_10;
    }
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_22812B4F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a3 + 16) <= a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  v7 = *(sub_228136FCC() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a4;
  v9 = *v6;
  sub_227FCAF8C(&qword_2813C8778, MEMORY[0x277CC95F0]);
  result = sub_2281391DC();
  v10 = 1 << *v6;
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v15 = v12 & result;
  v16 = sub_228137BFC();
  if (v16)
  {
    goto LABEL_7;
  }

LABEL_5:
  __break(1u);
  do
  {
    sub_228137C4C();
    if (!v16)
    {
      goto LABEL_5;
    }

LABEL_7:
    v13 = sub_228137C2C();
  }

  while ((v14 & 1) != 0 || v13 != a4);
  return v15;
}

uint64_t sub_22812B698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB40, &qword_228142EC0);
  v61 = *(v2 - 8);
  v3 = *(v61 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v67 = &v53 - v9;
  v10 = sub_228136FCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v53 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F450, &qword_228142F38);
  v20 = *(v63 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v63, v22);
  v62 = &v53 - v23;
  v24 = MEMORY[0x277D84F90];
  v69 = 0;
  v70 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_22812A784(v25, 0, sub_228043B98, sub_228129FD8);
  v68 = v24;
  sub_228043D20(0, v25, 0);
  v66 = v68;
  v60 = v25;
  if (!v25)
  {
    return v69;
  }

  v26 = 0;
  v59 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v27 = *(v20 + 72);
  v57 = v11 + 32;
  v58 = v27;
  v28 = v11 + 16;
  v64 = v11;
  v29 = (v11 + 8);
  v55 = v28;
  v56 = v7;
  v30 = v19;
  v54 = v19;
  while (1)
  {
    v65 = v26;
    v31 = v59 + v58 * v26;
    v32 = v62;
    sub_227FCAFD4(v31, v62, &qword_27D81F450, &qword_228142F38);
    v33 = v64;
    v34 = *(v63 + 48);
    (*(v64 + 32))(v30, v32, v10);
    sub_227FCCD78(v32 + v34, v67, &qword_27D81EB40, &qword_228142EC0);
    v35 = v69;
    v36 = v70 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v37 = *(v70 + 16);
    if (!v69)
    {
      break;
    }

    sub_22812A508(v30, v36, v37, (v35 + 16), v35 + 32);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      goto LABEL_17;
    }

    v41 = v30;
LABEL_10:
    v45 = v56;
    v46 = v67;
LABEL_11:
    sub_22812899C(v41);
    sub_227FCAFD4(v46, v45, &qword_27D81EB40, &qword_228142EC0);
    v47 = v66;
    v68 = v66;
    v49 = *(v66 + 16);
    v48 = *(v66 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_228043D20(v48 > 1, v49 + 1, 1);
      v47 = v68;
    }

    v26 = v65 + 1;
    v50 = v46;
    v51 = v47;
    sub_22812D31C(v50, &qword_27D81EB40, &qword_228142EC0);
    *(v51 + 16) = v49 + 1;
    v52 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v66 = v51;
    sub_227FCCD78(v45, v51 + v52 + *(v61 + 72) * v49, &qword_27D81EB40, &qword_228142EC0);
    v30 = v54;
    (*v29)(v54, v10);
    if (v26 == v60)
    {
      return v69;
    }
  }

  v41 = v30;
  if (!v37)
  {
    v45 = v56;
    v46 = v67;
    goto LABEL_11;
  }

  v42 = *(v64 + 72);
  v43 = *(v64 + 16);
  while (1)
  {
    v43(v16, v36, v10);
    sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0]);
    v44 = sub_22813926C();
    result = (*v29)(v16, v10);
    if (v44)
    {
      break;
    }

    v36 += v42;
    if (!--v37)
    {
      goto LABEL_10;
    }
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_22812BBD0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_22813939C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_22813948C();
}

uint64_t sub_22812BC80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v28[3] = v3;
  v28[4] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_22812ABD8(a2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812CAE4(v28, v27);
  sub_22812CAE4(v28, v26);
  sub_22812CAE4(v28, v25);
  sub_22812CAE4(v28, v24);
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

    __swift_destroy_boxed_opaque_existential_1Tm_13(v27);
    v12 = sub_227FCC340(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = (__swift_project_boxed_opaque_existential_1(v26, v26[3]) + v3[6]);
    v14 = *v13;
    v15 = v13[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v26);
    v16 = sub_227FCC340(v14, v15, &v23);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    v17 = (__swift_project_boxed_opaque_existential_1(v25, v25[3]) + v3[7]);
    v18 = *v17;
    v19 = v17[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v25);
    v20 = sub_227FCC340(v18, v19, &v23);

    *(v7 + 24) = v20;
    *(v7 + 32) = 1026;
    v21 = *(__swift_project_boxed_opaque_existential_1(v24, v24[3]) + v3[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v24);
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
    __swift_destroy_boxed_opaque_existential_1Tm_13(v24);

    __swift_destroy_boxed_opaque_existential_1Tm_13(v27);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v26);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_13(v28);
}

uint64_t sub_22812BF3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v28[3] = v3;
  v28[4] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_22812ABD8(a2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812CAE4(v28, v27);
  sub_22812CAE4(v28, v26);
  sub_22812CAE4(v28, v25);
  sub_22812CAE4(v28, v24);
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

    __swift_destroy_boxed_opaque_existential_1Tm_13(v27);
    v12 = sub_227FCC340(v10, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = (__swift_project_boxed_opaque_existential_1(v26, v26[3]) + v3[6]);
    v14 = *v13;
    v15 = v13[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v26);
    v16 = sub_227FCC340(v14, v15, &v23);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    v17 = (__swift_project_boxed_opaque_existential_1(v25, v25[3]) + v3[7]);
    v18 = *v17;
    v19 = v17[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v25);
    v20 = sub_227FCC340(v18, v19, &v23);

    *(v7 + 24) = v20;
    *(v7 + 32) = 1026;
    v21 = *(__swift_project_boxed_opaque_existential_1(v24, v24[3]) + v3[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v24);
    *(v7 + 34) = v21;
    _os_log_impl(&dword_227FC3000, v5, v6, "Successfully handled [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v24);

    __swift_destroy_boxed_opaque_existential_1Tm_13(v27);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v26);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_13(v28);
}

uint64_t sub_22812C1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22813828C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v24[3] = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v24[4] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_22812ABD8(a1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v13 = sub_22813882C();
  __swift_project_value_buffer(v13, qword_2813C8A20);
  v14 = sub_22813880C();
  v15 = sub_2281396CC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_227FC3000, v14, v15, "Sending Biome event for Summarization request", v16, 2u);
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

  return __swift_destroy_boxed_opaque_existential_1Tm_13(v24);
}

uint64_t sub_22812C558(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v35[3] = v5;
  v35[4] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  sub_22812ABD8(a2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812CAE4(v35, v34);
  sub_22812CAE4(v35, v33);
  sub_22812CAE4(v35, v32);
  sub_22812CAE4(v35, v31);
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

    __swift_destroy_boxed_opaque_existential_1Tm_13(v34);
    v15 = sub_227FCC340(v13, v14, &v30);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v16 = (__swift_project_boxed_opaque_existential_1(v33, v33[3]) + v5[6]);
    v17 = *v16;
    v18 = v16[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v33);
    v19 = sub_227FCC340(v17, v18, &v30);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2082;
    v20 = (__swift_project_boxed_opaque_existential_1(v32, v32[3]) + v5[7]);
    v21 = *v20;
    v22 = v20[1];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v32);
    v23 = sub_227FCC340(v21, v22, &v30);

    *(v10 + 24) = v23;
    *(v10 + 32) = 1026;
    LODWORD(v23) = *(__swift_project_boxed_opaque_existential_1(v31, v31[3]) + v5[8]);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v31);
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
    __swift_destroy_boxed_opaque_existential_1Tm_13(v31);

    __swift_destroy_boxed_opaque_existential_1Tm_13(v34);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v33);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v32);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_13(v35);
}

unint64_t sub_22812C864()
{
  result = qword_27D81F428;
  if (!qword_27D81F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81F428);
  }

  return result;
}

uint64_t sub_22812C8E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22812C918()
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

uint64_t sub_22812CA48()
{
  result = sub_228136FCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22812CAD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22812CAE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22812CB68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22812D428;

  return sub_22812A984(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_22Tm()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22812CC9C()
{
  v1 = *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_228110C4C(v2);
}

uint64_t sub_22812CCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22812CD64(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_228136FCC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22812D42C;

  return sub_228109354(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_330Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v24 = *(*v3 + 64);
  v6 = sub_228136FCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v2 + 16);
  swift_unknownObjectRelease();
  v11 = *(v2 + 32);

  v12 = *(v2 + v5 + 8);

  v13 = *(v2 + v5 + 24);

  v14 = *(v2 + v5 + 48);

  v15 = v3[15];
  v16 = type metadata accessor for ModelBundleIdentifier();
  if (!(*(*(v16 - 8) + 48))(v2 + v5 + v15, 1, v16))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v18 = &qword_27D81E790;
      v19 = &unk_228142600;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      v18 = &qword_27D81E760;
      v19 = &qword_22813BBD0;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    (*(*(v20 - 8) + 8))(v2 + v5 + v15, v20);
  }

LABEL_7:
  v21 = v4 | v8;
  v22 = (v5 + v24 + v8) & ~v8;
  (*(v7 + 8))(v2 + v22, v6);

  return MEMORY[0x2821FE8E8](v2, v22 + v9, v21 | 7);
}

uint64_t sub_22812D12C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_228136FCC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_227FCE138;

  return sub_228108EDC(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_22812D2B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22812D31C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t LLMUrgencyClassifier.__allocating_init(sessionInfo:configuration:contextSizeOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22812D538;

  return LLMUrgencyClassifier.init(sessionInfo:configuration:contextSizeOverride:)(a1, v9, a3, a4 & 1);
}

uint64_t sub_22812D538(uint64_t a1)
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

uint64_t LLMUrgencyClassifier.init(sessionInfo:configuration:contextSizeOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 144) = a4;
  *(v5 + 96) = a1;
  return MEMORY[0x2822009F8](sub_22812D660, 0, 0);
}

uint64_t sub_22812D660()
{
  sub_22812F0E0(*(v0 + 96), v0 + 16);
  v1 = type metadata accessor for GMSClassificationModelEngine();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_22812D718;

  return sub_2280A2528(v0 + 16);
}

uint64_t sub_22812D718(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_22812D904;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_22812D840;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22812D840()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 144);
  v5 = *(v0 + 96);
  *(v2 + 16) = v1;
  *(v0 + 80) = &type metadata for LLMUrgencyClassifier.TokenCounter;
  *(v0 + 88) = &off_283B60800;
  *(v0 + 56) = v1;

  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_22812D9A8((v0 + 56), v2 + 24);
  *(v2 + 64) = v3;
  *(v2 + 72) = v4 & 1;
  v6 = *(v0 + 8);
  v7 = *(v0 + 112);

  return v6(v7);
}

uint64_t sub_22812D904()
{
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(*(v0 + 96));
  type metadata accessor for LLMUrgencyClassifier();
  swift_deallocPartialClassInstance();
  v2 = *(v0 + 8);
  v3 = *(v0 + 128);

  return v2();
}

uint64_t sub_22812D9A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22812D9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return MEMORY[0x2822009F8](sub_22812D9E8, 0, 0);
}

uint64_t sub_22812D9E8()
{
  v1 = v0[9];
  v2 = 1 << *(v1 + 16);
  if ((v2 & 9) != 0)
  {
    v3 = sub_2281359AC(v1, v0[11], v0[12]);
  }

  else if ((v2 & 0x12) != 0)
  {
    v3 = sub_228135B1C(v1, v0[11], v0[12]);
  }

  else
  {
    v3 = sub_228135DAC(v1, v0[11], v0[12]);
  }

  v5 = v3;
  v6 = v4;
  v0[14] = v4;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_22812DAE0;
  v8 = v0[13];
  v9 = v0[10];

  return sub_22812DFF4(v5, v6, v9);
}

uint64_t sub_22812DAE0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *(*v3 + 112);
  v9 = *v3;

  if (v2)
  {
    v10 = *(v9 + 8);

    return v10(0);
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;

    return MEMORY[0x2822009F8](sub_22812DC5C, 0, 0);
  }
}

uint64_t sub_22812DC5C()
{
  v0[2] = v0[17];
  v1 = v0[13];
  v2 = v0[9];
  v0[3] = v0[16];
  v0[4] = 10;
  v0[5] = 0xE100000000000000;
  v0[6] = 4091452;
  v0[7] = 0xE300000000000000;
  sub_227FDB420();
  v3 = sub_2281397BC();
  v5 = v4;

  v0[18] = v5;
  v6 = *(v1 + 16);
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v11 = 0xD000000000000011;
      v13 = "mailMessageThread";
    }

    else
    {
      if (v9 == 4)
      {
        v10 = 0x80000002281438E0;
        v11 = 0xD000000000000012;
        goto LABEL_14;
      }

      v11 = 0xD000000000000011;
      v13 = "textMessageThread";
    }

    v10 = (v13 - 32) | 0x8000000000000000;
  }

  else
  {
    v10 = 0xEB00000000656761;
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = 0xEC0000006E6F6974;
        v11 = 0x6163696669746F6ELL;
        goto LABEL_14;
      }

      v12 = 1954047348;
    }

    else
    {
      v12 = 1818845549;
    }

    v11 = v12 | 0x7373654D00000000;
  }

LABEL_14:
  v0[19] = v10;
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_22812DE80;
  v15 = v0[10];
  v16 = v0[8];

  return sub_2280A39A4(v16, v3, v5, v7, v8, v15, v11, v10);
}

uint64_t sub_22812DE80(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;

  v7 = *(v4 + 152);
  v8 = *(v4 + 144);

  v9 = *(v6 + 8);
  if (v1)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1 & 1;
  }

  return v9(v10);
}

uint64_t sub_22812DFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_2281377CC();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22812E0B8, 0, 0);
}

uint64_t sub_22812E0B8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = *(v0[21] + 16);
  v0[25] = v4;
  sub_22812F0E0(v4 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner, (v0 + 13));
  __swift_project_boxed_opaque_existential_1(v0 + 13, v0[16]);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_samplingParameters, v3);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_22812E1C4;
  v6 = v0[24];
  v7 = v0[20];

  return sub_228007C34(v6, v7);
}

uint64_t sub_22812E1C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 184);
  v7 = *(*v2 + 176);
  v10 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_22812E4C8;
  }

  else
  {
    v8 = sub_22812E338;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22812E338()
{
  v1 = v0[21];
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  if (*(v1 + 72) == 1)
  {
    v2 = *__swift_project_boxed_opaque_existential_1((v0[25] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model), *(v0[25] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model + 24));
    v3 = *(MEMORY[0x277D71A10] + 4);
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_22812E534;

    return MEMORY[0x2821D9808]();
  }

  v5 = *(v1 + 64);
  v6 = *(v0[25] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_maximumOutputTokens);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v0[27];
  v10 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x2821D9808]();
  }

  v11 = v0[20];
  sub_22812F0E0(v0[21] + 24, (v0 + 2));
  sub_22812F0E0(v11, (v0 + 7));
  v0[12] = 0;
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_22812E778;
  v14 = v0[18];
  v13 = v0[19];

  return sub_227FE83EC(v14, v13, v10);
}

uint64_t sub_22812E4C8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v1 = v0[28];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22812E534(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 192);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 240) = a1;

    return MEMORY[0x2822009F8](sub_22812E688, 0, 0);
  }
}

void sub_22812E688()
{
  v1 = v0[30];
  v2 = *(v0[25] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_maximumOutputTokens);
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v0[27];
  v6 = v4 - v5;
  if (__OFSUB__(v4, v5))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v0[20];
  sub_22812F0E0(v0[21] + 24, (v0 + 2));
  sub_22812F0E0(v7, (v0 + 7));
  v0[12] = 0;
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_22812E778;
  v10 = v0[18];
  v9 = v0[19];

  sub_227FE83EC(v10, v9, v6);
}

uint64_t sub_22812E778(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 248);
  v8 = *v3;
  *(*v3 + 256) = v2;

  if (v2)
  {
    v9 = sub_22812E920;
  }

  else
  {
    *(v6 + 264) = a2;
    *(v6 + 272) = a1;
    v9 = sub_22812E8AC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22812E8AC()
{
  v1 = v0[24];
  sub_22812F144((v0 + 2));

  v2 = v0[1];
  v4 = v0[33];
  v3 = v0[34];

  return v2(v3, v4);
}

uint64_t sub_22812E920()
{
  sub_22812F144((v0 + 2));
  v1 = v0[32];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t LLMUrgencyClassifier.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t sub_22812E9BC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22812E9E4, 0, 0);
}

uint64_t sub_22812E9E4()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model + 24));
  v1 = off_283B5ECA0;
  v2 = sub_22813755C();
  v8 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22812EB3C;
  v6 = v0[2];
  v5 = v0[3];

  return (v8)(v6, v5, v2, &off_283B5EC90);
}

uint64_t sub_22812EB3C(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t dispatch thunk of LLMUrgencyClassifier.__allocating_init(sessionInfo:configuration:contextSizeOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *(v4 + 104);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22812ED84;

  return (v14)(a1, a2, a3, a4 & 1);
}

uint64_t sub_22812ED84(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of LLMUrgencyClassifier.performInference(input:requestInfo:eventTimeBucketName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 112);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22812EFD4;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_22812EFD4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22812F0E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22812F1E0()
{
  result = sub_22813877C();
  if (v1 <= 0x3F)
  {
    result = sub_2281387EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22812F2BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22812F2F4()
{
  result = sub_2281387AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22812F370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v5 = sub_22813877C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v39[-v13];
  v15 = *(type metadata accessor for Signpost(0) + 20);
  sub_22813879C();
  sub_22813875C();
  v16 = *a1;
  v45 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = sub_22813879C();
  v19 = sub_22813970C();
  result = sub_22813974C();
  v44 = v17;
  if ((result & 1) == 0)
  {

LABEL_11:
    (*(v6 + 16))(v11, v14, v5);
    v33 = sub_2281387EC();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = sub_2281387DC();
    v37 = v45;
    *a3 = v16;
    *(a3 + 8) = v37;
    *(a3 + 16) = v44;
    v38 = type metadata accessor for SignpostToken(0);
    (*(v6 + 32))(a3 + *(v38 + 20), v14, v5);

    *(a3 + *(v38 + 24)) = v36;
    return result;
  }

  v42 = v11;
  v43 = v5;
  v41 = v16;
  v40 = v19;
  if ((v17 & 1) == 0)
  {
    if (v16)
    {
      v21 = v16;
LABEL_10:
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = v23;
      *v22 = 136446210;
      v24 = v46;
      swift_beginAccess();
      v26 = *(v24 + 16);
      v25 = *(v24 + 24);

      v28 = v26(v27);
      v30 = v29;

      v31 = sub_227FCC340(v28, v30, &v47);

      *(v22 + 4) = v31;
      v32 = sub_22813876C();
      _os_signpost_emit_with_name_impl(&dword_227FC3000, v18, v40, v32, v21, "%{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAB28A0](v23, -1, -1);
      MEMORY[0x22AAB28A0](v22, -1, -1);

      v11 = v42;
      v5 = v43;
      v16 = v41;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v16 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v16 & 0xFFFFF800) != 0xD800)
  {
    if (v16 >> 16 <= 0x10)
    {
      v21 = &v48;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22812F68C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v4 = sub_22813877C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v33 - v11;
  v13 = *(type metadata accessor for Signpost(0) + 20);
  sub_22813879C();
  sub_22813875C();
  v14 = *v2;
  v39 = *(v2 + 8);
  v15 = *(v2 + 16);

  v16 = sub_22813879C();
  v17 = sub_22813970C();
  result = sub_22813974C();
  v38 = v15;
  if ((result & 1) == 0)
  {

    v19 = v14;
LABEL_11:
    (*(v5 + 16))(v37, v12, v4);
    v27 = sub_2281387EC();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_2281387DC();
    v31 = v39;
    *a2 = v19;
    *(a2 + 8) = v31;
    *(a2 + 16) = v38;
    v32 = type metadata accessor for SignpostToken(0);
    result = (*(v5 + 32))(a2 + *(v32 + 20), v12, v4);
    *(a2 + *(v32 + 24)) = v30;
    return result;
  }

  v35 = v4;
  if ((v15 & 1) == 0)
  {

    if (v14)
    {
      v19 = v14;
      v20 = v17;
      v34 = v19;
LABEL_10:
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 136446210;
      v23 = v36();
      v25 = sub_227FCC340(v23, v24, &v40);

      *(v21 + 4) = v25;
      v26 = sub_22813876C();
      _os_signpost_emit_with_name_impl(&dword_227FC3000, v16, v20, v26, v34, "%{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AAB28A0](v22, -1, -1);
      MEMORY[0x22AAB28A0](v21, -1, -1);

      v4 = v35;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v14 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  if ((v14 & 0xFFFFF800) != 0xD800)
  {
    if (v14 >> 16 <= 0x10)
    {
      v20 = v17;

      v34 = &v40;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22812F9A4(uint64_t (*a1)(void))
{
  v3 = sub_22813877C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for Signpost(0) + 20);
  sub_22813879C();
  sub_22813875C();
  v10 = *v1;
  v11 = *(v1 + 16);

  v12 = sub_22813879C();
  v13 = sub_22813971C();
  result = sub_22813974C();
  if ((result & 1) == 0)
  {

    return (*(v4 + 8))(v8, v3);
  }

  HIDWORD(v22) = v13;
  if ((v11 & 1) == 0)
  {

    if (v10)
    {
      v15 = a1;
LABEL_10:
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      v18 = v15();
      v20 = sub_227FCC340(v18, v19, &v23);

      *(v16 + 4) = v20;
      v21 = sub_22813876C();
      _os_signpost_emit_with_name_impl(&dword_227FC3000, v12, BYTE4(v22), v21, v10, "%{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AAB28A0](v17, -1, -1);
      MEMORY[0x22AAB28A0](v16, -1, -1);

      return (*(v4 + 8))(v8, v3);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v10 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v10 & 0xFFFFF800) != 0xD800)
  {
    if (v10 >> 16 <= 0x10)
    {
      v15 = a1;

      v10 = &v23;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22812FBFC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8888);
  v1 = __swift_project_value_buffer(v0, qword_2813C8888);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.fetchModelInfo.modelCatalog";
  *(v1 + 8) = 35;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22812FCE4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8840);
  v1 = __swift_project_value_buffer(v0, qword_2813C8840);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.fetchModelInfo.cache";
  *(v1 + 8) = 28;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22812FDCC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8858);
  v1 = __swift_project_value_buffer(v0, qword_2813C8858);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.inputCompressorCall";
  *(v1 + 8) = 27;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22812FEB4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C88A0);
  v1 = __swift_project_value_buffer(v0, qword_2813C88A0);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.truncateCall";
  *(v1 + 8) = 20;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22812FF9C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C87B0);
  v1 = __swift_project_value_buffer(v0, qword_2813C87B0);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.chunkText";
  *(v1 + 8) = 17;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130084()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8870);
  v1 = __swift_project_value_buffer(v0, qword_2813C8870);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent";
  *(v1 + 8) = 26;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22813016C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C87E0);
  v1 = __swift_project_value_buffer(v0, qword_2813C87E0);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent.unsupportedEmojiRemoval";
  *(v1 + 8) = 50;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130254()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C87F8);
  v1 = __swift_project_value_buffer(v0, qword_2813C87F8);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent.specialCharacterRemoval";
  *(v1 + 8) = 50;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22813033C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8810);
  v1 = __swift_project_value_buffer(v0, qword_2813C8810);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent.personEmojiProcessing";
  *(v1 + 8) = 48;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130424()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8828);
  v1 = __swift_project_value_buffer(v0, qword_2813C8828);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent.URLReplacement";
  *(v1 + 8) = 41;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22813050C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C87C8);
  v1 = __swift_project_value_buffer(v0, qword_2813C87C8);
  if (qword_2813C4750 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C4758);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "general.sanitizeRawContent.consecutiveWhitespaceProcessing";
  *(v1 + 8) = 58;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281305F4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8990);
  v1 = __swift_project_value_buffer(v0, qword_2813C8990);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.summarizationRequest";
  *(v1 + 8) = 34;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281306DC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C89A8);
  v1 = __swift_project_value_buffer(v0, qword_2813C89A8);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.contentPreprocessing";
  *(v1 + 8) = 34;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281307C4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8978);
  v1 = __swift_project_value_buffer(v0, qword_2813C8978);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.contentPostprocessing";
  *(v1 + 8) = 35;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281308AC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8948);
  v1 = __swift_project_value_buffer(v0, qword_2813C8948);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.supportedLanguageCheck";
  *(v1 + 8) = 36;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130994()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8930);
  v1 = __swift_project_value_buffer(v0, qword_2813C8930);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.inputSafetyDenyListCheck";
  *(v1 + 8) = 38;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130A7C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8918);
  v1 = __swift_project_value_buffer(v0, qword_2813C8918);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.inputSafetyContentSanitizerCheck";
  *(v1 + 8) = 46;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130B64()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C89D8);
  v1 = __swift_project_value_buffer(v0, qword_2813C89D8);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.modelRunCall";
  *(v1 + 8) = 26;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130C4C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C89C0);
  v1 = __swift_project_value_buffer(v0, qword_2813C89C0);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.modelResultLogging";
  *(v1 + 8) = 32;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130D34()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8960);
  v1 = __swift_project_value_buffer(v0, qword_2813C8960);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.finalSafetyEvaluation";
  *(v1 + 8) = 35;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130E1C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_27D823258);
  v1 = __swift_project_value_buffer(v0, qword_27D823258);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.prewarm";
  *(v1 + 8) = 21;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130F04()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_27D823270);
  v1 = __swift_project_value_buffer(v0, qword_27D823270);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.retry.tooManyTokens.oneShot";
  *(v1 + 8) = 41;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228130FEC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_27D823288);
  v1 = __swift_project_value_buffer(v0, qword_27D823288);
  if (qword_2813C47F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47F8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "summarization.retry.tooManyTokens.chunked";
  *(v1 + 8) = 41;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281310D4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C88D0);
  v1 = __swift_project_value_buffer(v0, qword_2813C88D0);
  if (qword_2813C47D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47D8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "classification.classificationRequest";
  *(v1 + 8) = 36;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281311BC()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C88E8);
  v1 = __swift_project_value_buffer(v0, qword_2813C88E8);
  if (qword_2813C47D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47D8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "classification.llmClassifierCall";
  *(v1 + 8) = 32;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_2281312A4()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C8900);
  v1 = __swift_project_value_buffer(v0, qword_2813C8900);
  if (qword_2813C47D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47D8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "classification.dateExtraction";
  *(v1 + 8) = 29;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_22813138C()
{
  v0 = type metadata accessor for Signpost(0);
  __swift_allocate_value_buffer(v0, qword_2813C88B8);
  v1 = __swift_project_value_buffer(v0, qword_2813C88B8);
  if (qword_2813C47D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2281387AC();
  v3 = __swift_project_value_buffer(v2, qword_2813C47D8);
  result = (*(*(v2 - 8) + 16))(v1 + *(v0 + 20), v3, v2);
  *v1 = "classification.prewarm";
  *(v1 + 8) = 22;
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_228131474(uint64_t a1)
{
  v2 = sub_2281387BC();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22813877C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for Signpost(0) + 20);
  v29 = *a1;
  v14 = *(a1 + 16);
  v15 = *(a1 + *(type metadata accessor for SignpostToken(0) + 24));
  v16 = sub_22813879C();
  sub_2281387CC();
  v17 = sub_2281396FC();
  result = sub_22813974C();
  if ((result & 1) == 0)
  {

    return (*(v8 + 8))(v12, v7);
  }

  if (v14)
  {
    if (!(v29 >> 32))
    {
      if ((v29 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v29 >> 16 <= 0x10)
      {
        v19 = v7;
        v29 = &v31;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v29)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v7;
LABEL_10:
  v20 = v17;

  sub_2281387FC();

  v21 = v28;
  if ((*(v28 + 88))(v6, v2) == *MEMORY[0x277D85B00])
  {
    v22 = 0;
    v23 = 0;
    v24 = "[Error] Interval already ended";
  }

  else
  {
    (*(v21 + 8))(v6, v2);
    v24 = "%{public}s";
    v23 = 2;
    v22 = 1;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v30 = v26;
  *v25 = v23;
  *(v25 + 1) = v22;
  *(v25 + 2) = 2082;
  *(v25 + 4) = sub_227FCC340(0, 0xE000000000000000, &v30);
  v27 = sub_22813876C();
  _os_signpost_emit_with_name_impl(&dword_227FC3000, v16, v20, v27, v29, v24, v25, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v26);
  MEMORY[0x22AAB28A0](v26, -1, -1);
  MEMORY[0x22AAB28A0](v25, -1, -1);

  return (*(v8 + 8))(v12, v19);
}

uint64_t sub_2281317B8(uint64_t a1, uint64_t (*a2)(void))
{
  v36 = a2;
  v35 = sub_2281387BC();
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22813877C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for Signpost(0) + 20);
  v14 = *a1;
  v15 = *(a1 + 16);
  v16 = *(a1 + *(type metadata accessor for SignpostToken(0) + 24));

  v17 = sub_22813879C();
  sub_2281387CC();
  v34 = sub_2281396FC();
  result = sub_22813974C();
  if ((result & 1) == 0)
  {

    return (*(v8 + 8))(v12, v7);
  }

  v32 = v7;
  if (v15)
  {
    if (!(v14 >> 32))
    {
      if ((v14 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v14 >> 16 <= 0x10)
      {

        v19 = &v37;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
LABEL_10:

  sub_2281387FC();

  v20 = v33;
  v21 = v35;
  v22 = v8;
  if ((*(v33 + 88))(v6, v35) == *MEMORY[0x277D85B00])
  {
    v23 = 0;
    v24 = 0;
    v25 = "[Error] Interval already ended";
  }

  else
  {
    (*(v20 + 8))(v6, v21);
    v25 = "%{public}s";
    v24 = 2;
    v23 = 1;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v37 = v27;
  *v26 = v24;
  *(v26 + 1) = v23;
  *(v26 + 2) = 2082;
  v28 = v36();
  v30 = sub_227FCC340(v28, v29, &v37);

  *(v26 + 4) = v30;
  v31 = sub_22813876C();
  _os_signpost_emit_with_name_impl(&dword_227FC3000, v17, v34, v31, v19, v25, v26, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v27);
  MEMORY[0x22AAB28A0](v27, -1, -1);
  MEMORY[0x22AAB28A0](v26, -1, -1);

  return (*(v22 + 8))(v12, v32);
}

uint64_t sub_228131B4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000013, 0x80000002281490C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  sub_2281398EC();
  v3 = MEMORY[0x22AAB1970](8251, 0xE200000000000000);
  v4 = a2(v3);
  MEMORY[0x22AAB1970](v4);

  return 0;
}

uint64_t sub_228131CB0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_22813882C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2281387AC();
  __swift_allocate_value_buffer(v13, a2);
  __swift_project_value_buffer(v13, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v12, v14, v7);
  return sub_22813878C();
}

uint64_t sub_228131DFC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22813882C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22813881C();
}

uint64_t sub_228131E78()
{
  v0 = sub_22813882C();
  __swift_allocate_value_buffer(v0, qword_2813C4778);
  __swift_project_value_buffer(v0, qword_2813C4778);
  return sub_22813881C();
}

uint64_t sub_228131EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v4 = sub_2281387BC();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22813877C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(type metadata accessor for Signpost(0) + 20);
  v41 = *a1;
  v16 = *(a1 + 16);
  v17 = *(a1 + *(type metadata accessor for SignpostToken(0) + 24));
  v18 = sub_22813879C();
  sub_2281387CC();
  v19 = sub_2281396FC();
  result = sub_22813974C();
  if ((result & 1) == 0)
  {

    return (*(v10 + 8))(v14, v9);
  }

  v38 = v19;
  if (v16)
  {
    if (!(v41 >> 32))
    {
      if ((v41 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v41 >> 16 <= 0x10)
      {
        v21 = v9;
        v41 = &v43;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v41)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v9;
LABEL_10:

  sub_2281387FC();

  v22 = v39;
  if ((*(v39 + 88))(v8, v4) == *MEMORY[0x277D85B00])
  {
    v23 = 0;
    v24 = 0;
    v25 = "[Error] Interval already ended";
  }

  else
  {
    (*(v22 + 8))(v8, v4);
    v25 = "%{public}s";
    v24 = 2;
    v23 = 1;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v42 = v27;
  *v26 = v24;
  *(v26 + 1) = v23;
  *(v26 + 2) = 2082;
  v28 = v40;
  swift_beginAccess();
  v30 = *(v28 + 16);
  v29 = *(v28 + 24);

  v32 = v30(v31);
  v34 = v33;

  v35 = sub_227FCC340(v32, v34, &v42);

  *(v26 + 4) = v35;
  v36 = sub_22813876C();
  _os_signpost_emit_with_name_impl(&dword_227FC3000, v18, v38, v36, v41, v25, v26, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v27);
  MEMORY[0x22AAB28A0](v27, -1, -1);
  MEMORY[0x22AAB28A0](v26, -1, -1);

  return (*(v10 + 8))(v14, v21);
}

char *sub_22813228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28 = a5;
  v11 = type metadata accessor for SignpostToken(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  v29 = a1;
  sub_22812F370(a1, v16, v15);
  v17 = *a4;
  v18 = *(a4 + 8);

  v19 = sub_2280A9734(1, v17, v18);
  v30 = v20;

  if (v6)
  {
    v21 = swift_allocObject();
    v21[2] = v6;
    v21[3] = a2;
    v21[4] = a3;
    swift_beginAccess();
    v22 = *(v16 + 24);
    *(v16 + 16) = sub_2281324A4;
    *(v16 + 24) = v21;

    v23 = v6;

    swift_willThrow();
    sub_228131EF8(v15, v29, v16);
    sub_227FEA5B8(v15);
  }

  else
  {
    v25 = v28;
    v24 = v29;
    if ((*a4 != v19 || *(a4 + 8) != v30) && (sub_2281399BC() & 1) == 0)
    {
      sub_2280A660C(4u, v25);
    }

    sub_228131EF8(v15, v24, v16);
    sub_227FEA5B8(v15);
  }

  return v19;
}

uint64_t sub_2281324DC(uint64_t *a1)
{
  v2 = sub_22813713C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v22 - v10;
  v12 = sub_22813716C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];

  sub_228136FDC();
  sub_22813715C();
  (*(v13 + 8))(v17, v12);
  sub_22813715C();
  LOBYTE(v18) = sub_228100F00(v8);
  v20 = *(v3 + 8);
  v20(v8, v2);
  v20(v11, v2);
  return v18 & 1;
}

uint64_t Error.loggingDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = v31 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v31 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = v31 - v18;
  swift_getDynamicType();
  sub_22800C8EC();
  v20 = swift_dynamicCastMetatype();
  v21 = *(v4 + 16);
  if (!v20)
  {
    v21(v19, v2, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E748, &qword_22813BB40);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm_14(v34);
      goto LABEL_4;
    }

    v21(v12, v2, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F470, &qword_228143078);
    if (swift_dynamicCast())
    {
      sub_227FD51C0(v34, v31);
      v28 = v32;
      v29 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v30 = (*(v29 + 8))(v28, v29);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E750, &qword_22813BB48);
      if (!swift_dynamicCast())
      {
        v21(v8, v2, a1);
        v26 = sub_22813930C();
        goto LABEL_15;
      }

      sub_227FD51C0(v34, v31);
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v30 = sub_2281399CC();
    }

    v26 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm_14(v31);
LABEL_15:
    (*(v4 + 8))(v12, a1);
    return v26;
  }

LABEL_4:
  v21(v16, v2, a1);
  v22 = sub_22813999C();
  if (v22)
  {
    v23 = v22;
    (*(v4 + 8))(v16, a1);
  }

  else
  {
    v23 = swift_allocError();
    (*(v4 + 32))(v24, v16, a1);
  }

  v25 = sub_228136E1C();

  v26 = NSError.loggingDescription.getter();
  return v26;
}

uint64_t NSError.loggingDescription.getter()
{
  v1 = v0;
  v39[0] = 0x6E69616D6F64;
  v39[1] = 0xE600000000000000;
  v2 = [v0 domain];
  v3 = sub_2281392AC();
  v5 = v4;

  v6 = MEMORY[0x277D837D0];
  v39[2] = v3;
  v39[3] = v5;
  v39[5] = MEMORY[0x277D837D0];
  v39[6] = 1701080931;
  v39[7] = 0xE400000000000000;
  v39[8] = [v1 code];
  v39[11] = MEMORY[0x277D83B88];
  v39[12] = 0x7470697263736564;
  v39[13] = 0xEB000000006E6F69;
  v36 = 34;
  v37 = 0xE100000000000000;
  v7 = [v1 localizedDescription];
  v8 = sub_2281392AC();
  v10 = v9;

  MEMORY[0x22AAB1970](v8, v10);

  MEMORY[0x22AAB1970](34, 0xE100000000000000);
  v39[14] = 34;
  v39[15] = 0xE100000000000000;
  v39[17] = v6;
  v39[18] = 0x6F666E4972657375;
  v39[19] = 0xE800000000000000;
  v11 = [v1 userInfo];
  v12 = sub_2281391BC();

  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = sub_228132EF4();
    v16 = MEMORY[0x277D837D0];
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v39[22] = 0;
  }

  v39[20] = v14;
  v39[21] = v15;
  v39[23] = v16;
  v39[24] = 0xD000000000000010;
  v39[25] = 0x8000000228149410;
  result = sub_228133308();
  if (v18)
  {
    v19 = MEMORY[0x277D837D0];
  }

  else
  {
    result = 0;
    v19 = 0;
    v39[28] = 0;
  }

  v20 = 0;
  v39[26] = result;
  v39[27] = v18;
  v39[29] = v19;
  v32 = MEMORY[0x277D84F90];
LABEL_8:
  v21 = 5;
  if (v20 > 5)
  {
    v21 = v20;
  }

  v22 = -v21;
  v23 = &v39[6 * v20++];
  while (v22 + v20 != 1)
  {
    sub_228133534(v23, &v36, &qword_27D81F478, &qword_228143080);
    v24 = v36;
    v25 = v37;
    sub_228133534(&v38, &v33, &qword_27D81E830, &unk_22813C630);
    if (v34)
    {
      sub_227FE5EA8(&v33, v35);
      *&v33 = 0;
      *(&v33 + 1) = 0xE000000000000000;
      MEMORY[0x22AAB1970](v24, v25);
      MEMORY[0x22AAB1970](8250, 0xE200000000000000);
      sub_2281398EC();
      v26 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm_14(v35);
      sub_228135900(&v36, &qword_27D81F478, &qword_228143080);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2281338C0(0, *(v32 + 16) + 1, 1, v32);
        v32 = result;
      }

      v28 = *(v32 + 16);
      v27 = *(v32 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_2281338C0((v27 > 1), v28 + 1, 1, v32);
        v32 = result;
      }

      *(v32 + 16) = v28 + 1;
      *(v32 + 16 * v28 + 32) = v26;
      if (v20 == 5)
      {
LABEL_20:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F478, &qword_228143080);
        swift_arrayDestroy();
        v36 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
        sub_228059C14();
        v29 = sub_22813925C();
        v31 = v30;

        v36 = 91;
        v37 = 0xE100000000000000;
        MEMORY[0x22AAB1970](v29, v31);

        MEMORY[0x22AAB1970](93, 0xE100000000000000);
        return v36;
      }

      goto LABEL_8;
    }

    sub_228135900(&v33, &qword_27D81E830, &unk_22813C630);
    result = sub_228135900(&v36, &qword_27D81F478, &qword_228143080);
    ++v20;
    v23 += 6;
    if (v20 == 6)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228132EF4()
{
  v1 = [v0 userInfo];
  v2 = sub_2281391BC();

  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v39 = v2;
  v40 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
LABEL_11:
      v10 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
      v12 = *v10;
      v11 = v10[1];
      v13 = qword_2813C45E8;

      if (v13 != -1)
      {
        swift_once();
      }

      v6 &= v6 - 1;
      v14 = off_2813C45F0;
      if (*(off_2813C45F0 + 2))
      {
        v15 = *(off_2813C45F0 + 5);
        sub_228139AAC();
        sub_22813923C();
        v16 = sub_228139AEC();
        v17 = -1 << v14[32];
        v18 = v16 & ~v17;
        if ((*&v14[((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v18))
        {
          break;
        }
      }

LABEL_22:
      v22 = v40;
      *&v41[0] = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_228043AD4(0, *(v40 + 16) + 1, 1);
        v22 = *&v41[0];
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_228043AD4((v23 > 1), v24 + 1, 1);
        v22 = *&v41[0];
      }

      *(v22 + 16) = v24 + 1;
      v40 = v22;
      v25 = v22 + 16 * v24;
      *(v25 + 32) = v12;
      *(v25 + 40) = v11;
      v2 = v39;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(v14 + 6) + 16 * v18);
      v21 = *v20 == v12 && v20[1] == v11;
      if (v21 || (sub_2281399BC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*&v14[((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v18) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v2 = v39;
  }

  while (v6);
  while (1)
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);

      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    v8 = (v8 + 1);
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  *&v45[0] = v40;

  sub_22813461C(v45);

  v8 = *&v45[0];
  v42 = sub_22812ADA8(MEMORY[0x277D84F90]);
  v43 = v26;
  v44 = v27;
  v28 = v8[2];
  if (v28)
  {
    v29 = 0;
    v30 = v8 + 5;
    while (v29 < v8[2])
    {
      if (*(v2 + 16))
      {
        v32 = *(v30 - 1);
        v31 = *v30;

        v33 = sub_22808C964(v32, v31);
        if (v34)
        {
          sub_228029260(*(v2 + 56) + 32 * v33, v41);
          sub_227FE5EA8(v41, v45);
          sub_228029260(v45, v41);
          sub_228106F98(v41, v32, v31);
          __swift_destroy_boxed_opaque_existential_1Tm_14(v45);
        }

        else
        {
        }
      }

      ++v29;
      v30 += 2;
      if (v28 == v29)
      {
        v35 = v43;
        v36 = v44;
        goto LABEL_38;
      }
    }

    goto LABEL_40;
  }

  v35 = v26;
  v36 = v27;
LABEL_38:

  v37 = sub_228135654(v35, v36);

  return v37;
}

uint64_t sub_228133308()
{
  v1 = [v0 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v2 = sub_22813951C();

  v3 = *(v2 + 16);

  if (!v3)
  {
    return 0;
  }

  v4 = [v0 underlyingErrors];
  v5 = sub_22813951C();

  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    sub_228043AD4(0, v6, 0);
    v7 = 32;
    do
    {
      v8 = *(v5 + v7);
      swift_getErrorValue();
      v9 = v8;
      v10 = Error.loggingDescription.getter(v21, v22);
      v12 = v11;

      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_228043AD4((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      v15 = v20 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_228059C14();
  v17 = sub_22813925C();
  v19 = v18;

  MEMORY[0x22AAB1970](v17, v19);

  MEMORY[0x22AAB1970](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_228133534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22813359C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  strcpy((inited + 32), "NSDescription");
  *(inited + 16) = xmmword_22813C6B0;
  *(inited + 46) = -4864;
  v1 = *MEMORY[0x277CCA068];
  *(inited + 48) = sub_2281392AC();
  *(inited + 56) = v2;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 64) = sub_2281392AC();
  *(inited + 72) = v4;
  v5 = *MEMORY[0x277CCA7E8];
  *(inited + 80) = sub_2281392AC();
  *(inited + 88) = v6;
  v7 = *MEMORY[0x277CCA578];
  *(inited + 96) = sub_2281392AC();
  *(inited + 104) = v8;
  v9 = sub_228028A68(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_2813C45F0 = v9;
  return result;
}

char *sub_2281336C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E958, &qword_22813C678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_2281337BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E568, &qword_22813B108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2281338C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2281339CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB28, &qword_22813DA70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_228133BC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F4C0, &qword_2281430D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228133CE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF78, &unk_22813FCE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_228133DEC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F4A8, &qword_2281430B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECD0, &qword_22813E1D8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_4(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECD0, &qword_22813E1D8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_228133FDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F4B8, &qword_2281430C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_2281340D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB88, &qword_22813DAD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2281341E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_4(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2281342E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F4A0, &qword_2281430B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_228134440(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_4(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_22813461C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_227FEA614(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_228134688(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_228134688(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22813997C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22813954C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22813497C(v7, v8, a1, v4);
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
    return sub_228134780(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228134780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v28 - v12;
  v29 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v39 = sub_22813716C();
    v15 = *(v39 - 8);
    v16 = *(v15 + 56);
    v33 = v15 + 56;
    v34 = v16;
    v17 = v14;
    v18 = (v14 + 16 * a3);
    v19 = a1 - a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v20 = (v17 + 16 * a3);
    v21 = *v20;
    v22 = v20[1];
    v30 = v19;
    v23 = v19;
    while (1)
    {
      v24 = *(v18 - 2);
      v25 = *(v18 - 1);
      v37 = v21;
      v38 = v22;
      v35 = v24;
      v36 = v25;
      v34(v13, 1, 1, v39);
      sub_227FDB420();

      v26 = sub_2281397CC();
      sub_228135900(v13, &qword_27D81E6A8, &qword_22813F930);

      if (v26 != -1)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + 2;
        v19 = v30 - 1;
        if (v32 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      v21 = *v18;
      v22 = v18[1];
      *v18 = *(v18 - 1);
      *(v18 - 1) = v22;
      *(v18 - 2) = v21;
      v18 -= 2;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22813497C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9 - 8, v11);
  v125 = &v112 - v13;
  v14 = a3[1];
  if (v14 >= 1)
  {
    v112 = a4;
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v113 = a3;
    v117 = a1;
    while (1)
    {
      v17 = v15;
      if (v15 + 1 >= v14)
      {
        v31 = v15 + 1;
      }

      else
      {
        v121 = v14;
        v114 = v16;
        v115 = v5;
        v18 = *a3;
        v19 = (*a3 + 16 * (v15 + 1));
        v20 = *v19;
        v21 = v19[1];
        v22 = 16 * v15;
        v23 = (v18 + 16 * v15);
        v24 = *v23;
        v25 = v23[1];
        v128 = v20;
        v129 = v21;
        v126 = v24;
        v127 = v25;
        v26 = sub_22813716C();
        v27 = *(v26 - 8);
        v28 = v125;
        v122 = *(v27 + 56);
        v123 = v26;
        v120 = (v27 + 56);
        v122(v125, 1, 1);
        sub_227FDB420();

        v124 = sub_2281397CC();
        sub_228135900(v28, &qword_27D81E6A8, &qword_22813F930);

        v116 = v15;
        v29 = v15 + 2;
        v30 = v23 + 5;
        while (1)
        {
          v31 = v121;
          if (v121 == v29)
          {
            break;
          }

          v32 = v125;
          v33 = v124 == -1;
          v34 = *v30;
          v35 = *(v30 - 3);
          v36 = *(v30 - 2);
          v128 = *(v30 - 1);
          v129 = v34;
          v126 = v35;
          v127 = v36;
          (v122)(v125, 1, 1, v123);

          v37 = sub_2281397CC();
          sub_228135900(v32, &qword_27D81E6A8, &qword_22813F930);

          ++v29;
          v30 += 2;
          if (((v33 ^ (v37 != -1)) & 1) == 0)
          {
            v31 = v29 - 1;
            break;
          }
        }

        v17 = v116;
        if (v124 == -1)
        {
          a3 = v113;
          if (v31 < v116)
          {
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
            return result;
          }

          if (v116 < v31)
          {
            v38 = 0;
            v39 = 16 * v31;
            v40 = v116;
            v16 = v114;
            v5 = v115;
            v41 = v117;
            do
            {
              if (v40 != v31 + v38 - 1)
              {
                v46 = *a3;
                if (!*a3)
                {
                  goto LABEL_129;
                }

                v42 = (v46 + v22);
                v43 = v46 + v39;
                v44 = *v42;
                v45 = v42[1];
                *v42 = *(v43 - 16);
                *(v43 - 16) = v44;
                *(v43 - 8) = v45;
              }

              ++v40;
              --v38;
              v39 -= 16;
              v22 += 16;
            }

            while (v40 < v31 + v38);
            a1 = v41;
            goto LABEL_22;
          }

          v5 = v115;
        }

        else
        {
          v5 = v115;
          a3 = v113;
        }

        v16 = v114;
        a1 = v117;
      }

LABEL_22:
      v47 = a3[1];
      if (v31 >= v47)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v31, v17))
      {
        goto LABEL_121;
      }

      if (v31 - v17 >= v112)
      {
        goto LABEL_31;
      }

      if (__OFADD__(v17, v112))
      {
        goto LABEL_122;
      }

      if (v17 + v112 >= v47)
      {
        v48 = a3[1];
      }

      else
      {
        v48 = v17 + v112;
      }

      if (v48 < v17)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (v31 == v48)
      {
LABEL_31:
        v15 = v31;
        if (v31 < v17)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v114 = v16;
        v115 = v5;
        v95 = *a3;
        v124 = sub_22813716C();
        v96 = *(v124 - 8);
        v97 = *(v96 + 56);
        v122 = (v96 + 56);
        v123 = v97;
        v98 = (v95 + 16 * v31);
        v116 = v17;
        v99 = v17 - v31;
        v118 = v48;
        do
        {
          v120 = v98;
          v121 = v31;
          v100 = (v95 + 16 * v31);
          v101 = *v100;
          v102 = v100[1];
          v119 = v99;
          do
          {
            v103 = *(v98 - 2);
            v104 = *(v98 - 1);
            v128 = v101;
            v129 = v102;
            v126 = v103;
            v127 = v104;
            v105 = v125;
            v123(v125, 1, 1, v124);
            sub_227FDB420();

            v106 = sub_2281397CC();
            sub_228135900(v105, &qword_27D81E6A8, &qword_22813F930);

            if (v106 != -1)
            {
              break;
            }

            if (!v95)
            {
              goto LABEL_126;
            }

            v101 = *v98;
            v102 = v98[1];
            *v98 = *(v98 - 1);
            *(v98 - 1) = v102;
            *(v98 - 2) = v101;
            v98 -= 2;
          }

          while (!__CFADD__(v99++, 1));
          v31 = v121 + 1;
          v98 = v120 + 2;
          v15 = v118;
          v99 = v119 - 1;
        }

        while (v121 + 1 != v118);
        v16 = v114;
        v5 = v115;
        a3 = v113;
        v17 = v116;
        a1 = v117;
        if (v118 < v116)
        {
          goto LABEL_120;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2281337BC(0, *(v16 + 2) + 1, 1, v16);
        v16 = result;
      }

      v50 = *(v16 + 2);
      v49 = *(v16 + 3);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        result = sub_2281337BC((v49 > 1), v50 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 2) = v51;
      v52 = &v16[16 * v50];
      *(v52 + 4) = v17;
      *(v52 + 5) = v15;
      v53 = *a1;
      if (!*a1)
      {
        goto LABEL_130;
      }

      if (v50)
      {
        while (1)
        {
          a1 = v51 - 1;
          if (v51 >= 4)
          {
            break;
          }

          if (v51 == 3)
          {
            v54 = *(v16 + 4);
            v55 = *(v16 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_51:
            if (v57)
            {
              goto LABEL_109;
            }

            v70 = &v16[16 * v51];
            v72 = *v70;
            v71 = *(v70 + 1);
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_112;
            }

            v76 = &v16[16 * a1 + 32];
            v78 = *v76;
            v77 = *(v76 + 1);
            v64 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v64)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v74, v79))
            {
              goto LABEL_116;
            }

            if (v74 + v79 >= v56)
            {
              if (v56 < v79)
              {
                a1 = v51 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          v80 = &v16[16 * v51];
          v82 = *v80;
          v81 = *(v80 + 1);
          v64 = __OFSUB__(v81, v82);
          v74 = v81 - v82;
          v75 = v64;
LABEL_65:
          if (v75)
          {
            goto LABEL_111;
          }

          v83 = &v16[16 * a1];
          v85 = *(v83 + 4);
          v84 = *(v83 + 5);
          v64 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v64)
          {
            goto LABEL_114;
          }

          if (v86 < v74)
          {
            goto LABEL_3;
          }

LABEL_72:
          v91 = a1 - 1;
          if (a1 - 1 >= v51)
          {
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
            goto LABEL_127;
          }

          v92 = *&v16[16 * v91 + 32];
          v93 = *&v16[16 * a1 + 40];
          sub_228135200((*a3 + 16 * v92), (*a3 + 16 * *&v16[16 * a1 + 32]), (*a3 + 16 * v93), v53);
          if (v5)
          {
          }

          if (v93 < v92)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_227FEAF6C(v16);
          }

          if (v91 >= *(v16 + 2))
          {
            goto LABEL_106;
          }

          v94 = &v16[16 * v91];
          *(v94 + 4) = v92;
          *(v94 + 5) = v93;
          v130 = v16;
          result = sub_227FEAEE0(a1);
          v16 = v130;
          v51 = *(v130 + 2);
          if (v51 <= 1)
          {
            goto LABEL_3;
          }
        }

        v58 = &v16[16 * v51 + 32];
        v59 = *(v58 - 64);
        v60 = *(v58 - 56);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_107;
        }

        v63 = *(v58 - 48);
        v62 = *(v58 - 40);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_108;
        }

        v65 = &v16[16 * v51];
        v67 = *v65;
        v66 = *(v65 + 1);
        v64 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v64)
        {
          goto LABEL_110;
        }

        v64 = __OFADD__(v56, v68);
        v69 = v56 + v68;
        if (v64)
        {
          goto LABEL_113;
        }

        if (v69 >= v61)
        {
          v87 = &v16[16 * a1 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v64 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v64)
          {
            goto LABEL_117;
          }

          if (v56 < v90)
          {
            a1 = v51 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_51;
      }

LABEL_3:
      v14 = a3[1];
      a1 = v117;
      if (v15 >= v14)
      {
        goto LABEL_93;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_93:
  a1 = *a1;
  if (!a1)
  {
    goto LABEL_131;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_124:
    result = sub_227FEAF6C(v16);
    v16 = result;
  }

  v130 = v16;
  v108 = *(v16 + 2);
  if (v108 >= 2)
  {
    while (*a3)
    {
      v109 = *&v16[16 * v108];
      v110 = *&v16[16 * v108 + 24];
      sub_228135200((*a3 + 16 * v109), (*a3 + 16 * *&v16[16 * v108 + 16]), (*a3 + 16 * v110), a1);
      if (v5)
      {
      }

      if (v110 < v109)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_227FEAF6C(v16);
      }

      if (v108 - 2 >= *(v16 + 2))
      {
        goto LABEL_119;
      }

      v111 = &v16[16 * v108];
      *v111 = v109;
      *(v111 + 1) = v110;
      v130 = v16;
      result = sub_227FEAEE0(v108 - 1);
      v16 = v130;
      v108 = *(v130 + 2);
      if (v108 <= 1)
      {
      }
    }

    goto LABEL_128;
  }
}

uint64_t sub_228135200(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = (&v42 - v11);
  v13 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 4;
  v15 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 4;
  if (v14 >= v15 >> 4)
  {
    v18 = a4;
    if (a4 != a2 || &a2[16 * v16] <= a4)
    {
      memmove(a4, a2, 16 * v16);
    }

    v21 = &a4[16 * v16];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v53 = v12;
      v47 = sub_22813716C();
      v28 = *(v47 - 8);
      v29 = *(v28 + 56);
      v45 = v28 + 56;
      v46 = v29;
      v43 = a1;
      v48 = v18;
      do
      {
        v44 = a2 - 16;
        v30 = a3 - 16;
        v31 = v21;
        while (1)
        {
          a3 = v30;
          v32 = v30 + 16;
          v33 = *(v21 - 2);
          v34 = *(v21 - 1);
          v21 -= 16;
          v35 = *(a2 - 2);
          v36 = *(a2 - 1);
          v37 = a2;
          v51 = v33;
          v52 = v34;
          v49 = v35;
          v50 = v36;
          v38 = v53;
          (v46)(v53, 1, 1, v47);
          sub_227FDB420();

          v39 = sub_2281397CC();
          sub_228135900(v38, &qword_27D81E6A8, &qword_22813F930);

          if (v39 == -1)
          {
            break;
          }

          if (v32 != v31)
          {
            *a3 = *v21;
          }

          v30 = a3 - 16;
          v31 = v21;
          v18 = v48;
          a2 = v37;
          if (v21 <= v48)
          {
            goto LABEL_39;
          }
        }

        v40 = v44;
        if (v32 != v37)
        {
          *a3 = *v44;
        }

        v18 = v48;
        v21 = v31;
        if (v31 <= v48)
        {
          break;
        }

        a2 = v40;
      }

      while (v40 > v43);
      a2 = v40;
    }
  }

  else
  {
    if (a4 != a1 || &a1[16 * v14] <= a4)
    {
      memmove(a4, a1, 16 * v14);
    }

    v17 = &a4[16 * v14];
    v18 = a4;
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v46 = a3;
      v19 = sub_22813716C();
      v20 = *(v19 - 8);
      v53 = *(v20 + 56);
      v47 = v20 + 56;
      v21 = v17;
      while (1)
      {
        v22 = *(a2 + 1);
        v23 = *v18;
        v24 = *(v18 + 1);
        v51 = *a2;
        v52 = v22;
        v49 = v23;
        v50 = v24;
        v53(v12, 1, 1, v19);
        sub_227FDB420();

        v25 = sub_2281397CC();
        sub_228135900(v12, &qword_27D81E6A8, &qword_22813F930);

        if (v25 != -1)
        {
          break;
        }

        v26 = a2;
        v27 = a1 == a2;
        a2 += 16;
        if (!v27)
        {
          goto LABEL_14;
        }

LABEL_15:
        a1 += 16;
        if (v18 >= v21 || a2 >= v46)
        {
          a2 = a1;
          goto LABEL_39;
        }
      }

      v26 = v18;
      v27 = a1 == v18;
      v18 += 16;
      if (v27)
      {
        goto LABEL_15;
      }

LABEL_14:
      *a1 = *v26;
      goto LABEL_15;
    }

    a2 = a1;
    v21 = v17;
  }

LABEL_39:
  if (a2 != v18 || a2 >= &v18[(v21 - v18 + (v21 - v18 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(a2, v18, 16 * ((v21 - v18) / 16));
  }

  return 1;
}

uint64_t sub_228135654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 6109787;
  }

  v26 = 91;
  v27 = 0xE100000000000000;
  v16 = a1 + 32;
  v15 = a2 + 32;

  v4 = 0;
  v5 = 1;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D84F70] + 8;
  while (1)
  {
    if (v4 >= v2)
    {
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      goto LABEL_9;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v4 >= *(a1 + 16))
    {
      goto LABEL_16;
    }

    v11 = (v16 + 16 * v4);
    v12 = v11[1];
    *&v19 = *v11;
    *(&v19 + 1) = v12;
    sub_228029260(v15 + 32 * v4++, v20);
    v18[0] = v20[0];
    v18[1] = v20[1];
    v21 = v19;
    sub_227FE5EA8(v18, &v22);

LABEL_9:
    v24 = v21;
    v25[0] = v22;
    v25[1] = v23;
    v13 = *(&v21 + 1);
    if (!*(&v21 + 1))
    {

      MEMORY[0x22AAB1970](93, 0xE100000000000000);
      return v26;
    }

    v14 = v24;
    sub_227FE5EA8(v25, &v21);
    if ((v5 & 1) == 0)
    {
      MEMORY[0x22AAB1970](8236, 0xE200000000000000);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA8, &qword_22813DAF8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22813A4B0;
    *(v8 + 56) = v6;
    *(v8 + 32) = v14;
    *(v8 + 40) = v13;

    sub_22813981C();

    MEMORY[0x22AAB1970](8250, 0xE200000000000000);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22813A4B0;
    *(v9 + 56) = v7;
    v10 = swift_allocObject();
    *(v9 + 32) = v10;
    sub_228029260(&v21, v10 + 16);
    sub_22813981C();

    result = __swift_destroy_boxed_opaque_existential_1Tm_14(&v21);
    v5 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_228135900(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228135960()
{
  v0 = sub_228028A68(&unk_283B5B560);
  result = swift_arrayDestroy();
  qword_2813C6C68 = v0;
  return result;
}

uint64_t sub_2281359AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PriorityModelSession.Input();
  v7 = (a1 + *(v6 + 28));
  v8 = *v7;
  v9 = v7[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    MEMORY[0x22AAB1970]();
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x656C746974627553, 0xEA0000000000203ALL);
  }

  if (a3)
  {
    MEMORY[0x22AAB1970](a2, a3);
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x6D6954746E657645, 0xEB00000000203A65);
  }

  MEMORY[0x22AAB1970](*(a1 + *(v6 + 40)), *(a1 + *(v6 + 40) + 8));
  MEMORY[0x22AAB1970](0x203A79646F42, 0xE600000000000000);

  return 0xA5D6C69616D455BLL;
}

uint64_t sub_228135B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2813C6C60 != -1)
  {
    swift_once();
  }

  v6 = qword_2813C6C68;
  v7 = type metadata accessor for PriorityModelSession.Input();
  v8 = sub_2280EAEE0(*(a1 + v7[11]), *(a1 + v7[11] + 8), v6);
  v9 = (a1 + v7[8]);
  v10 = *v9;
  v11 = v9[1];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 && ((*(a1 + v7[12]) | v8) & 1) == 0)
  {
    MEMORY[0x22AAB1970]();
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x203A656C746954, 0xE700000000000000);
  }

  v13 = (a1 + v7[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && (*(a1 + v7[12]) & 1) == 0)
  {
    MEMORY[0x22AAB1970]();
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x656C746974627553, 0xEA0000000000203ALL);
  }

  if (*(a1 + v7[12]))
  {
    v17 = "CommunicationFlag: False\n";
  }

  else
  {
    v17 = "underlyingErrors";
  }

  if (*(a1 + v7[12]))
  {
    v18 = 0xD000000000000018;
  }

  else
  {
    v18 = 0xD000000000000019;
  }

  MEMORY[0x22AAB1970](v18, v17 | 0x8000000000000000);
  if (a3)
  {
    MEMORY[0x22AAB1970](a2, a3);
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x6D6954746E657645, 0xEB00000000203A65);
  }

  MEMORY[0x22AAB1970](*(a1 + v7[10]), *(a1 + v7[10] + 8));
  MEMORY[0x22AAB1970](0x203A79646F42, 0xE600000000000000);

  return 0x63696669746F4E5BLL;
}

unint64_t sub_228135DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    MEMORY[0x22AAB1970](a2, a3);
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    MEMORY[0x22AAB1970](0x6D6954746E657645, 0xEB00000000203A65);
  }

  v4 = type metadata accessor for PriorityModelSession.Input();
  MEMORY[0x22AAB1970](*(a1 + *(v4 + 40)), *(a1 + *(v4 + 40) + 8));
  MEMORY[0x22AAB1970](0x203A79646F42, 0xE600000000000000);

  return 0xD000000000000023;
}

uint64_t TwoPassInferenceConfiguration.__allocating_init(assetManager:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return TwoPassInferenceConfiguration.init(assetManager:)(a1);
}

uint64_t TwoPassInferenceConfiguration.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return TwoPassInferenceConfiguration.init()();
}

uint64_t TwoPassInferenceConfiguration.init()()
{
  v1 = (v0 + qword_2813C6378);
  *v1 = 0xD000000000000016;
  v1[1] = 0x8000000228149470;
  v2 = (v0 + qword_2813C6380);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C6370);
  *v3 = 0x73656C755241544FLL;
  v3[1] = 0xE800000000000000;
  v4 = MEMORY[0x277D84F90];
  *(v0 + qword_2813C6368) = MEMORY[0x277D84F90];
  v5 = qword_2813C6360;
  *(v0 + v5) = sub_227FE3D98(v4);
  v6 = *v1;
  v7 = v1[1];
  v8 = *v2;
  v9 = v2[1];
  v10 = *v3;
  v11 = v3[1];

  v12 = sub_227FDC9A8(v6, v7, v8, v9, v10);
  v13 = v12 + *(*v12 + 96);
  swift_beginAccess();
  if (*(*(v13 + 8) + 16))
  {
    sub_228136118();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = 26;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    v15 = sub_227FF96D4(0, 0xD00000000000007CLL, 0x8000000228149490, 35, sub_2281369AC);
    sub_227FDB3CC();
    swift_allocError();
    *v16 = 26;
    *(v16 + 8) = v15;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_228136118()
{
  v1 = v0;
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v0 + *(*v0 + 96);
  swift_beginAccess();
  v9 = *(v8 + 8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v55 = MEMORY[0x277D84F90];
    sub_228043BDC(0, v10, 0);
    v11 = v55;
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_228136B04(v12, v7);
      v14 = *v7;

      sub_228136B68(v7, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
      v55 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_228043BDC((v15 > 1), v16 + 1, 1);
        v11 = v55;
      }

      *(v11 + 16) = v16 + 1;
      *(v11 + 8 * v16 + 32) = v14;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  v17 = qword_2813C6368;
  v18 = *(v1 + qword_2813C6368);
  *(v1 + qword_2813C6368) = v11;

  v19 = *(v1 + v17);
  v20 = *(v19 + 16);
  v53 = qword_2813C6360;
  v50 = v19;

  v49 = v20;
  if (!v20)
  {
  }

  v21 = 0;
  v48 = v50 + 32;
  v22 = v53;
  while (1)
  {
    if (v21 >= *(v50 + 16))
    {
      goto LABEL_30;
    }

    v52 = *(*(v48 + 8 * v21) + 16);
    if (v52)
    {
      break;
    }

LABEL_9:
    if (++v21 == v49)
    {
    }
  }

  v24 = 0;
  v25 = (v23 + 40);
  v51 = v23;
  while (v24 < *(v23 + 16))
  {
    v29 = *(v25 - 1);
    v28 = *v25;
    swift_beginAccess();

    v30 = *(v1 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v1 + v22);
    v32 = v54;
    v33 = v1;
    *(v1 + v22) = 0x8000000000000000;
    v34 = sub_22808C964(v29, v28);
    v36 = v32[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_28;
    }

    v40 = v35;
    if (v32[3] < v39)
    {
      sub_22801A38C(v39, isUniquelyReferenced_nonNull_native);
      v34 = sub_22808C964(v29, v28);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_31;
      }

LABEL_21:
      if (v40)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v45 = v34;
    sub_22801D5F8();
    v34 = v45;
    if (v40)
    {
LABEL_13:
      v26 = v34;

      v27 = v54;
      *(v54[7] + 8 * v26) = v21;
      goto LABEL_14;
    }

LABEL_22:
    v27 = v54;
    v54[(v34 >> 6) + 8] |= 1 << v34;
    v42 = (v27[6] + 16 * v34);
    *v42 = v29;
    v42[1] = v28;
    *(v27[7] + 8 * v34) = v21;
    v43 = v27[2];
    v38 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v38)
    {
      goto LABEL_29;
    }

    v27[2] = v44;
LABEL_14:
    ++v24;
    v1 = v33;
    *(v33 + v53) = v27;
    swift_endAccess();
    v25 += 2;
    v23 = v51;
    if (v52 == v24)
    {

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_2281399EC();
  __break(1u);
  return result;
}

uint64_t TwoPassInferenceConfiguration.init(assetManager:)(uint64_t a1)
{
  v3 = (v1 + qword_2813C6378);
  *v3 = 0xD000000000000016;
  v3[1] = 0x8000000228149470;
  v4 = (v1 + qword_2813C6380);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v1 + qword_2813C6370);
  *v5 = 0x73656C755241544FLL;
  v5[1] = 0xE800000000000000;
  v6 = MEMORY[0x277D84F90];
  *(v1 + qword_2813C6368) = MEMORY[0x277D84F90];
  v7 = qword_2813C6360;
  *(v1 + v7) = sub_227FE3D98(v6);
  v8 = *v3;
  v9 = v3[1];
  v10 = *v4;
  v11 = v4[1];
  v12 = *v5;
  v13 = v5[1];

  v14 = sub_227FE01EC(a1, 1, v8, v9, v10, v11, v12, v13);
  v15 = v14 + *(*v14 + 96);
  swift_beginAccess();
  if (*(*(v15 + 8) + 16))
  {
    sub_228136118();
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = 26;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    v17 = sub_227FF96D4(0, 0xD00000000000007CLL, 0x8000000228149490, 50, sub_228136BC8);
    sub_227FDB3CC();
    swift_allocError();
    *v18 = 26;
    *(v18 + 8) = v17;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_228136754()
{
  v1 = *(v0 + qword_2813C6378 + 8);

  v2 = *(v0 + qword_2813C6380 + 8);

  v3 = *(v0 + qword_2813C6370 + 8);

  v4 = *(v0 + qword_2813C6368);

  v5 = *(v0 + qword_2813C6360);
}

uint64_t TwoPassInferenceConfiguration.deinit()
{
  sub_228136B68(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + qword_2813C6378 + 8);

  v3 = *(v0 + qword_2813C6380 + 8);

  v4 = *(v0 + qword_2813C6370 + 8);

  v5 = *(v0 + qword_2813C6368);

  v6 = *(v0 + qword_2813C6360);

  return v0;
}

uint64_t TwoPassInferenceConfiguration.__deallocating_deinit()
{
  sub_228136B68(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + qword_2813C6378 + 8);

  v3 = *(v0 + qword_2813C6380 + 8);

  v4 = *(v0 + qword_2813C6370 + 8);

  v5 = *(v0 + qword_2813C6368);

  v6 = *(v0 + qword_2813C6360);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_18()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for TwoPassInferenceConfiguration()
{
  result = qword_2813C6350;
  if (!qword_2813C6350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228136B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228136B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}