uint64_t sub_1B8E411A4()
{
  type metadata accessor for Kgqsapipb_ArgInfo(0);
  sub_1B8CD1D90(&qword_1EBABBD78, type metadata accessor for Kgqsapipb_ArgInfo);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_IntentArgInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1[2] + 16) || (type metadata accessor for Kgqsapipb_ArgInfo(0), sub_1B8CD1D90(&qword_1EBABBD78, type metadata accessor for Kgqsapipb_ArgInfo), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), result = sub_1B964C730(), !v0))
    {
      v4 = v1[3];
      v5 = v1[4];
      OUTLINED_FUNCTION_1();
      if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        v7 = *(type metadata accessor for Kgqsapipb_IntentArgInfo(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_IntentArgInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2];
  v8 = v2[2];
  sub_1B8D7C774();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v3[3] == v2[3] && v3[4] == v2[4];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Kgqsapipb_IntentArgInfo(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E4148C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC1B0, type metadata accessor for Kgqsapipb_IntentArgInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4150C(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBF28, type metadata accessor for Kgqsapipb_IntentArgInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4157C()
{
  sub_1B8CD1D90(&qword_1EBABBF28, type metadata accessor for Kgqsapipb_IntentArgInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E41614()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBB58);
  __swift_project_value_buffer(v0, qword_1EBABBB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1B965A5F0;
  v4 = v51 + v3 + v1[14];
  *(v51 + v3) = 1;
  *v4 = "query";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v51 + v3 + v2 + v1[14];
  *(v51 + v3 + v2) = 2;
  *v8 = "result";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v51 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "debug";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v51 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "relaxed";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v51 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "entities";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v51 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasMoreResults";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v51 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "lastIntent";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v51 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "queryFeatures";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v51 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "perfMetrics";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "displayableMetadata";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "nextStart";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "totalResultsCount";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v7();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "intent";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v7();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "intentArgInfo";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v7();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "renderFeatures";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v7();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "fullCardUrl";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v7();
  v37 = (v51 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "result_source";
  *(v38 + 1) = 13;
  v38[16] = 2;
  v39 = *MEMORY[0x1E69AADE8];
  v7();
  v40 = (v51 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "resultType";
  *(v41 + 1) = 10;
  v41[16] = 2;
  v7();
  v42 = (v51 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 23;
  *v43 = "geoEntities";
  *(v43 + 1) = 11;
  v43[16] = 2;
  v7();
  v44 = (v51 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 25;
  *v45 = "electionsResponse";
  *(v45 + 1) = 17;
  v45[16] = 2;
  v7();
  v46 = (v51 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 26;
  *v47 = "nlg_dialog";
  *(v47 + 1) = 10;
  v47[16] = 2;
  v7();
  v48 = (v51 + v3 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 27;
  *v49 = "kg_event_log_message";
  *(v49 + 1) = 20;
  v49[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E41D08()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__queryFeatures;
  Features = type metadata accessor for Kgqsapipb_QueryFeatures(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, Features);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics) = v1;
  v4 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__displayableMetadata;
  v5 = type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount) = 0;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentArgInfo;
  v8 = type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__renderFeatures;
  v10 = type metadata accessor for Kgqsapipb_RenderFeatures(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities) = v1;
  v14 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__electionsResponse;
  v15 = type metadata accessor for Electionspb_ElectionsResponse(0);
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nlgDialog;
  v17 = type metadata accessor for Nlgpb_NlgDialog();
  __swift_storeEnumTagSinglePayload(v0 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__kgEventLogMessage;
  v19 = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  __swift_storeEnumTagSinglePayload(v0 + v18, 1, 1, v19);
  return v0;
}

uint64_t sub_1B8E41ED4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD48, &qword_1B965A648);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v110 = &v86 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD38, &qword_1B965A638);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v108 = &v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD30, &qword_1B965A630);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = &v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD28, &qword_1B965A628);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v102 = &v86 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD20, &qword_1B965A620);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v96 = &v86 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD18, &qword_1B965A618);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v91 = &v86 - v23;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v24 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = v24;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  v86 = (v1 + 56);
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  v87 = (v1 + 72);
  *(v1 + 80) = 0;
  v88 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  v25 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__queryFeatures;
  v89 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__queryFeatures;
  Features = type metadata accessor for Kgqsapipb_QueryFeatures(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, Features);
  v90 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics) = v24;
  v27 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__displayableMetadata;
  v92 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__displayableMetadata;
  v28 = type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  v93 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart) = 0;
  v94 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount) = 0;
  v29 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  v95 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentArgInfo;
  v97 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentArgInfo;
  v31 = type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__renderFeatures;
  v98 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__renderFeatures;
  v33 = type metadata accessor for Kgqsapipb_RenderFeatures(0);
  __swift_storeEnumTagSinglePayload(v1 + v32, 1, 1, v33);
  v34 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  v99 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource;
  v100 = v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource;
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType;
  v101 = v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType;
  *v36 = 0;
  *(v36 + 8) = 1;
  v103 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities) = v24;
  v37 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__electionsResponse;
  v104 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__electionsResponse;
  v38 = type metadata accessor for Electionspb_ElectionsResponse(0);
  __swift_storeEnumTagSinglePayload(v1 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nlgDialog;
  v105 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nlgDialog;
  v40 = type metadata accessor for Nlgpb_NlgDialog();
  __swift_storeEnumTagSinglePayload(v1 + v39, 1, 1, v40);
  v41 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__kgEventLogMessage;
  v107 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__kgEventLogMessage;
  v42 = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  __swift_storeEnumTagSinglePayload(v1 + v41, 1, 1, v42);
  swift_beginAccess();
  v44 = *(a1 + 16);
  v43 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v44;
  *(v1 + 24) = v43;
  swift_beginAccess();
  v45 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v45;

  swift_beginAccess();
  v46 = *(a1 + 40);
  swift_beginAccess();
  v47 = *(v1 + 40);
  *(v1 + 40) = v46;

  swift_beginAccess();
  LOBYTE(v46) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v46;
  swift_beginAccess();
  v49 = *(a1 + 56);
  v48 = *(a1 + 64);
  v50 = v86;
  swift_beginAccess();
  v51 = *(v1 + 64);
  *v50 = v49;
  *(v1 + 64) = v48;

  swift_beginAccess();
  LOBYTE(v50) = *(a1 + 72);
  v52 = v87;
  swift_beginAccess();
  *v52 = v50;
  swift_beginAccess();
  v54 = *(a1 + 80);
  v53 = *(a1 + 88);
  v55 = v88;
  swift_beginAccess();
  v56 = *(v1 + 88);
  *v55 = v54;
  *(v1 + 88) = v53;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics;
  swift_beginAccess();
  v58 = *(a1 + v57);
  v59 = v90;
  swift_beginAccess();
  v60 = *(v1 + v59);
  *(v1 + v59) = v58;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v61 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  swift_beginAccess();
  LODWORD(v61) = *(a1 + v61);
  v62 = v93;
  swift_beginAccess();
  *(v1 + v62) = v61;
  v63 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  swift_beginAccess();
  LODWORD(v63) = *(a1 + v63);
  v64 = v94;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  swift_beginAccess();
  v67 = *v65;
  v66 = v65[1];
  v68 = v95;
  swift_beginAccess();
  v69 = v68[1];
  *v68 = v67;
  v68[1] = v66;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v70 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  swift_beginAccess();
  v72 = *v70;
  v71 = v70[1];
  v73 = v99;
  swift_beginAccess();
  v74 = v73[1];
  *v73 = v72;
  v73[1] = v71;

  v75 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource);
  swift_beginAccess();
  v76 = *v75;
  LOBYTE(v75) = *(v75 + 8);
  v77 = v100;
  swift_beginAccess();
  *v77 = v76;
  *(v77 + 8) = v75;
  v78 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType);
  swift_beginAccess();
  v79 = *v78;
  LOBYTE(v78) = *(v78 + 8);
  v80 = v101;
  swift_beginAccess();
  *v80 = v79;
  *(v80 + 8) = v78;
  v81 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities;
  swift_beginAccess();
  v82 = *(a1 + v81);
  v83 = v103;
  swift_beginAccess();
  v84 = *(v1 + v83);
  *(v1 + v83) = v82;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B8E42AB8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[8];

  v5 = v0[11];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__queryFeatures, &qword_1EBABBD18, &qword_1B965A618);
  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__displayableMetadata, &qword_1EBABBD20, &qword_1B965A620);
  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentArgInfo, &qword_1EBABBD28, &qword_1B965A628);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__renderFeatures, &qword_1EBABBD30, &qword_1B965A630);
  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__electionsResponse, &qword_1EBABBD38, &qword_1B965A638);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nlgDialog, &qword_1EBABBD40, &qword_1B965A640);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__kgEventLogMessage, &qword_1EBABBD48, &qword_1B965A648);
  return v0;
}

uint64_t sub_1B8E42C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E4C21C();
        break;
      case 2:
        sub_1B8E42FE4();
        break;
      case 3:
        sub_1B8E430B0();
        break;
      case 4:
        sub_1B8E4317C();
        break;
      case 5:
        sub_1B8E4C300();
        break;
      case 6:
        sub_1B8E43200();
        break;
      case 7:
        sub_1B8E4C3E4();
        break;
      case 8:
        sub_1B8E43284();
        break;
      case 9:
        sub_1B8E43360();
        break;
      case 10:
        sub_1B8E4343C();
        break;
      case 11:
      case 12:
        sub_1B8E4C684();
        break;
      case 13:
      case 16:
        sub_1B8E4C770();
        break;
      case 14:
        sub_1B8E43518();
        break;
      case 15:
        sub_1B8E435F4();
        break;
      case 17:
        v11 = sub_1B8E53458;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource;
        goto LABEL_15;
      case 18:
        v11 = sub_1B8E53404;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType;
LABEL_15:
        sub_1B8E4C5EC(v12, v13, v14, v15, v16, v11);
        break;
      case 23:
        sub_1B8E436D0();
        break;
      case 25:
        sub_1B8E437AC();
        break;
      case 26:
        sub_1B8E43888();
        break;
      case 27:
        sub_1B8E43964();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E42FE4()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEntity(0);
  sub_1B8CD1D90(&qword_1EBABBF80, type metadata accessor for Kgqsapipb_KGEntity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E430B0()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_DebugInfo(0);
  sub_1B8CD1D90(&qword_1EBABBDF0, type metadata accessor for Kgqsapipb_DebugInfo);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E4317C()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E43200()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E43284()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_QueryFeatures(0);
  sub_1B8CD1D90(&qword_1EBABB8B0, type metadata accessor for Kgqsapipb_QueryFeatures);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E43360()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_PerfMetric(0);
  sub_1B8CD1D90(&qword_1EBABBF68, type metadata accessor for Kgqsapipb_PerfMetric);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E4343C()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  sub_1B8CD1D90(&qword_1EBABBF50, type metadata accessor for Kgqsapipb_DisplayableMetadata);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E43518()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  sub_1B8CD1D90(&qword_1EBABBF28, type metadata accessor for Kgqsapipb_IntentArgInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E435F4()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_RenderFeatures(0);
  sub_1B8CD1D90(&qword_1EBABC010, type metadata accessor for Kgqsapipb_RenderFeatures);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E436D0()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_GeoEntity(0);
  sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E437AC()
{
  swift_beginAccess();
  type metadata accessor for Electionspb_ElectionsResponse(0);
  sub_1B8CD1D90(&qword_1EBABB2A8, type metadata accessor for Electionspb_ElectionsResponse);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E43888()
{
  swift_beginAccess();
  type metadata accessor for Nlgpb_NlgDialog();
  sub_1B8CD1D90(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E43964()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  sub_1B8CD1D90(&qword_1EBABC1E8, type metadata accessor for Kgqsapipb_KGEventLogMessage);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E43A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD48, &qword_1B965A648);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v109 = &v105 - v10;
  v11 = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = &v105 - v16;
  v112 = type metadata accessor for Nlgpb_NlgDialog();
  v17 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD38, &qword_1B965A638);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v113 = &v105 - v21;
  v114 = type metadata accessor for Electionspb_ElectionsResponse(0);
  v22 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v110 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD30, &qword_1B965A630);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v117 = &v105 - v26;
  v118 = type metadata accessor for Kgqsapipb_RenderFeatures(0);
  v27 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v115 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD28, &qword_1B965A628);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v119 = &v105 - v31;
  v120 = type metadata accessor for Kgqsapipb_IntentArgInfo(0);
  v32 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD20, &qword_1B965A620);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v122 = &v105 - v36;
  v125 = type metadata accessor for Kgqsapipb_DisplayableMetadata(0);
  v37 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v121 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD18, &qword_1B965A618);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v105 - v41;
  Features = type metadata accessor for Kgqsapipb_QueryFeatures(0);
  v44 = *(*(Features - 8) + 64);
  MEMORY[0x1EEE9AC00](Features);
  v123 = &v105 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v130 = a1;
  v46 = *(a1 + 16);
  v47 = *(a1 + 24);
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v106 = v11;
    v49 = a4;
  }

  else
  {
    v106 = v11;
    v49 = a4;
  }

  v50 = v130;
  swift_beginAccess();
  if (*(*(v50 + 32) + 16))
  {
    type metadata accessor for Kgqsapipb_KGEntity(0);
    sub_1B8CD1D90(&qword_1EBABBF80, type metadata accessor for Kgqsapipb_KGEntity);

    sub_1B964C730();
    if (v5)
    {
    }

    v5 = 0;
  }

  v51 = v130;
  swift_beginAccess();
  if (*(*(v51 + 40) + 16))
  {
    type metadata accessor for Kgqsapipb_DebugInfo(0);
    sub_1B8CD1D90(&qword_1EBABBDF0, type metadata accessor for Kgqsapipb_DebugInfo);

    v52 = v49;
    sub_1B964C730();
    v124 = v5;
    if (v5)
    {
    }
  }

  else
  {
    v52 = v49;
    v124 = v5;
  }

  v54 = v130;
  swift_beginAccess();
  if (*(v54 + 48) == 1)
  {
    v55 = v124;
    result = sub_1B964C670();
    if (v55)
    {
      return result;
    }

    v124 = 0;
  }

  v56 = v130;
  swift_beginAccess();
  v57 = *(v56 + 64);
  v58 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v58 = *(v56 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v58)
  {
    v59 = *(v56 + 64);

    v60 = v124;
    sub_1B964C700();
    if (v60)
    {
    }

    v124 = 0;
  }

  v61 = v130;
  swift_beginAccess();
  if (*(v61 + 72) == 1)
  {
    v62 = v124;
    result = sub_1B964C670();
    if (v62)
    {
      return result;
    }

    v124 = 0;
  }

  v63 = v130;
  swift_beginAccess();
  v64 = *(v63 + 88);
  v65 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v65 = *(v63 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v65)
  {
    v66 = *(v63 + 88);

    v67 = v124;
    sub_1B964C700();
    if (v67)
    {
    }

    v124 = 0;
    v105 = v52;
  }

  else
  {
    v105 = v52;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v42, 1, Features) == 1)
  {
    sub_1B8D9207C(v42, &qword_1EBABBD18, &qword_1B965A618);
  }

  else
  {
    sub_1B8E46784();
    sub_1B8CD1D90(&qword_1EBABB8B0, type metadata accessor for Kgqsapipb_QueryFeatures);
    v68 = v124;
    sub_1B964C740();
    if (v68)
    {
      return sub_1B8E46834();
    }

    v124 = 0;
    sub_1B8E46834();
  }

  v69 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics;
  v70 = v130;
  swift_beginAccess();
  v71 = v125;
  if (*(*(v70 + v69) + 16))
  {
    type metadata accessor for Kgqsapipb_PerfMetric(0);
    sub_1B8CD1D90(&qword_1EBABBF68, type metadata accessor for Kgqsapipb_PerfMetric);

    v72 = v124;
    sub_1B964C730();
    v124 = v72;
    if (v72)
    {
    }
  }

  swift_beginAccess();
  v73 = v122;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v73, 1, v71) == 1)
  {
    sub_1B8D9207C(v73, &qword_1EBABBD20, &qword_1B965A620);
  }

  else
  {
    sub_1B8E46784();
    sub_1B8CD1D90(&qword_1EBABBF50, type metadata accessor for Kgqsapipb_DisplayableMetadata);
    v74 = v124;
    sub_1B964C740();
    if (v74)
    {
      return sub_1B8E46834();
    }

    v124 = 0;
    sub_1B8E46834();
  }

  v75 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  v76 = v130;
  swift_beginAccess();
  if (*(v76 + v75))
  {
    v77 = v124;
    result = sub_1B964C6C0();
    if (v77)
    {
      return result;
    }

    v124 = 0;
  }

  v78 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  v79 = v130;
  swift_beginAccess();
  if (*(v79 + v78))
  {
    v80 = v124;
    result = sub_1B964C6C0();
    v81 = v80;
    if (v80)
    {
      return result;
    }
  }

  else
  {
    v81 = v124;
  }

  v82 = (v130 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  v85 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v85 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (v85)
  {

    sub_1B964C700();
    if (v81)
    {
    }

    v86 = 0;
  }

  else
  {
    v86 = v81;
  }

  swift_beginAccess();
  v87 = v119;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v87, 1, v120) == 1)
  {
    sub_1B8D9207C(v87, &qword_1EBABBD28, &qword_1B965A628);
  }

  else
  {
    sub_1B8E46784();
    sub_1B8CD1D90(&qword_1EBABBF28, type metadata accessor for Kgqsapipb_IntentArgInfo);
    sub_1B964C740();
    if (v86)
    {
      return sub_1B8E46834();
    }

    v86 = 0;
    sub_1B8E46834();
  }

  swift_beginAccess();
  v88 = v117;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v88, 1, v118) == 1)
  {
    sub_1B8D9207C(v88, &qword_1EBABBD30, &qword_1B965A630);
    v89 = v86;
    goto LABEL_67;
  }

  sub_1B8E46784();
  sub_1B8CD1D90(&qword_1EBABC010, type metadata accessor for Kgqsapipb_RenderFeatures);
  sub_1B964C740();
  v89 = v86;
  if (v86)
  {
    return sub_1B8E46834();
  }

  sub_1B8E46834();
LABEL_67:
  v90 = (v130 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  swift_beginAccess();
  v91 = *v90;
  v92 = v90[1];
  v93 = HIBYTE(v92) & 0xF;
  if ((v92 & 0x2000000000000000) == 0)
  {
    v93 = v91 & 0xFFFFFFFFFFFFLL;
  }

  if (v93)
  {

    sub_1B964C700();
    if (v89)
    {
    }
  }

  v94 = (v130 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource);
  swift_beginAccess();
  if (!*v94 || (v95 = *(v94 + 8), v128 = *v94, v129 = v95, sub_1B8E53458(), result = sub_1B964C680(), !v89))
  {
    v96 = (v130 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType);
    swift_beginAccess();
    if (!*v96 || (v97 = *(v96 + 8), v126 = *v96, v127 = v97, sub_1B8E53404(), result = sub_1B964C680(), !v89))
    {
      v98 = v89;
      v99 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities;
      v100 = v130;
      swift_beginAccess();
      if (*(*(v100 + v99) + 16))
      {
        type metadata accessor for Kgqsapipb_GeoEntity(0);
        sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity);

        sub_1B964C730();

        if (v98)
        {
          return result;
        }

        v98 = 0;
      }

      v101 = v113;
      swift_beginAccess();
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v101, 1, v114) == 1)
      {
        v102 = v98;
        sub_1B8D9207C(v101, &qword_1EBABBD38, &qword_1B965A638);
      }

      else
      {
        sub_1B8E46784();
        sub_1B8CD1D90(&qword_1EBABB2A8, type metadata accessor for Electionspb_ElectionsResponse);
        sub_1B964C740();
        v102 = v98;
        result = sub_1B8E46834();
        if (v98)
        {
          return result;
        }
      }

      swift_beginAccess();
      v103 = v111;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v103, 1, v112) == 1)
      {
        sub_1B8D9207C(v103, &qword_1EBABBD40, &qword_1B965A640);
      }

      else
      {
        sub_1B8E46784();
        sub_1B8CD1D90(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog);
        sub_1B964C740();
        result = sub_1B8E46834();
        if (v102)
        {
          return result;
        }
      }

      swift_beginAccess();
      v104 = v109;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v104, 1, v106) == 1)
      {
        return sub_1B8D9207C(v104, &qword_1EBABBD48, &qword_1B965A648);
      }

      else
      {
        sub_1B8E46784();
        sub_1B8CD1D90(&qword_1EBABC1E8, type metadata accessor for Kgqsapipb_KGEventLogMessage);
        sub_1B964C740();
        return sub_1B8E46834();
      }
    }
  }

  return result;
}

void sub_1B8E44E08()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_145_2();
  v277 = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  v4 = OUTLINED_FUNCTION_59_1(v277);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v271 = v7;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC1F8, &qword_1B965C6F8);
  OUTLINED_FUNCTION_59_1(v273);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD48, &qword_1B965A648);
  v12 = OUTLINED_FUNCTION_183(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  v274 = v15;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_266_0();
  v276 = v17;
  OUTLINED_FUNCTION_201();
  v281 = type metadata accessor for Nlgpb_NlgDialog();
  v18 = OUTLINED_FUNCTION_59_1(v281);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21();
  v272 = v21;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC200, &qword_1B965C700);
  OUTLINED_FUNCTION_59_1(v278);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_185();
  v284 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  v27 = OUTLINED_FUNCTION_183(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44_0();
  v279 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_266_0();
  v280 = v32;
  v33 = OUTLINED_FUNCTION_201();
  v286 = type metadata accessor for Electionspb_ElectionsResponse(v33);
  v34 = OUTLINED_FUNCTION_59_1(v286);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21();
  v275 = v37;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC208, &qword_1B965C708);
  OUTLINED_FUNCTION_59_1(v282);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_185();
  v287 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD38, &qword_1B965A638);
  v43 = OUTLINED_FUNCTION_183(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44_0();
  v283 = v46;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_266_0();
  v285 = v48;
  v49 = OUTLINED_FUNCTION_201();
  v292 = type metadata accessor for Kgqsapipb_RenderFeatures(v49);
  v50 = OUTLINED_FUNCTION_59_1(v292);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_21();
  v288 = v53;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC210, &qword_1B965C710);
  OUTLINED_FUNCTION_59_1(v291);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_185();
  v294 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD30, &qword_1B965A630);
  v59 = OUTLINED_FUNCTION_183(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44_0();
  v290 = v62;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_266_0();
  v295 = v64;
  v65 = OUTLINED_FUNCTION_201();
  v297 = type metadata accessor for Kgqsapipb_IntentArgInfo(v65);
  v66 = OUTLINED_FUNCTION_59_1(v297);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_21();
  v289 = v69;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC218, &qword_1B965C718);
  OUTLINED_FUNCTION_59_1(v296);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_185();
  v298 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD28, &qword_1B965A628);
  v75 = OUTLINED_FUNCTION_183(v74);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_44_0();
  v293 = v78;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_266_0();
  v305 = v80;
  v81 = OUTLINED_FUNCTION_201();
  v303 = type metadata accessor for Kgqsapipb_DisplayableMetadata(v81);
  v82 = OUTLINED_FUNCTION_59_1(v303);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_21();
  v299 = v85;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC220, &qword_1B965C720);
  OUTLINED_FUNCTION_59_1(v301);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_185();
  v304 = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD20, &qword_1B965A620);
  v91 = OUTLINED_FUNCTION_183(v90);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_44_0();
  v300 = v94;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_266_0();
  v302 = v96;
  v97 = OUTLINED_FUNCTION_201();
  Features = type metadata accessor for Kgqsapipb_QueryFeatures(v97);
  v99 = OUTLINED_FUNCTION_59_1(Features);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_21();
  v306 = v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC228, &qword_1B965C728);
  OUTLINED_FUNCTION_59_1(v103);
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_185();
  v307 = v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD18, &qword_1B965A618);
  v109 = OUTLINED_FUNCTION_183(v108);
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_181_1();
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v267 - v113;
  OUTLINED_FUNCTION_521();
  v116 = v1[2];
  v115 = v1[3];
  OUTLINED_FUNCTION_521();
  v117 = v116 == v0[2] && v115 == v0[3];
  if (!v117 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v270 = v2;
  OUTLINED_FUNCTION_521();
  v118 = v1[4];
  OUTLINED_FUNCTION_521();
  v119 = v0[4];

  sub_1B8D88934();
  v120 = v1;
  v121 = v0;
  OUTLINED_FUNCTION_225_1();

  if ((v0 & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521();
  v122 = v120[5];
  OUTLINED_FUNCTION_521();
  v123 = v0[5];

  sub_1B8D7AE40();
  v125 = v124;

  if ((v125 & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521();
  v126 = *(v120 + 48);
  OUTLINED_FUNCTION_521();
  if (v126 != *(v121 + 48))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521();
  v127 = v120[7];
  v128 = v120[8];
  OUTLINED_FUNCTION_521();
  v129 = v127 == v121[7] && v128 == v121[8];
  if (!v129 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521();
  v130 = *(v120 + 72);
  OUTLINED_FUNCTION_521();
  if (v130 != *(v121 + 72))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521();
  v131 = v120[10];
  v132 = v120[11];
  OUTLINED_FUNCTION_521();
  v133 = v131 == v121[10] && v132 == v121[11];
  if (!v133 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521();
  v268 = v120;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v134 = *(v103 + 48);
  v135 = v307;
  sub_1B8D92024();
  v269 = v121;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v135);
  if (v117)
  {
    sub_1B8D9207C(v114, &qword_1EBABBD18, &qword_1B965A618);
    OUTLINED_FUNCTION_37_0(v135 + v134);
    v136 = v268;
    if (v117)
    {
      sub_1B8D9207C(v135, &qword_1EBABBD18, &qword_1B965A618);
      v137 = v269;
      goto LABEL_36;
    }

LABEL_32:
    sub_1B8D9207C(v135, &qword_1EBABC228, &qword_1B965C728);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_491();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v135 + v134);
  v136 = v268;
  if (v138)
  {
    sub_1B8D9207C(v114, &qword_1EBABBD18, &qword_1B965A618);
    sub_1B8E46834();
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_17_6();
  v139 = v306;
  sub_1B8E46784();
  v140 = *(Features + 20);
  if (*(v3 + v140) != *(v139 + v140))
  {
    v141 = *(v3 + v140);

    v142 = OUTLINED_FUNCTION_543();
    sub_1B8E30B60(v142, v143);
    OUTLINED_FUNCTION_225_1();

    if ((&qword_1B965A618 & 1) == 0)
    {
      sub_1B8E46834();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v167, v168, v169);
      OUTLINED_FUNCTION_217_0();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v170, v171, v172);
      goto LABEL_17;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v144, v145);
  v146 = sub_1B964C850();
  sub_1B8E46834();
  sub_1B8D9207C(v114, &qword_1EBABBD18, &qword_1B965A618);
  sub_1B8E46834();
  sub_1B8D9207C(v135, &qword_1EBABBD18, &qword_1B965A618);
  v137 = v269;
  if ((v146 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_36:
  v147 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics;
  OUTLINED_FUNCTION_521();
  v148 = *(v136 + v147);
  v149 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__perfMetrics;
  OUTLINED_FUNCTION_521();
  v150 = *(v137 + v149);

  OUTLINED_FUNCTION_543();
  sub_1B8D88988();
  v152 = v151;

  if ((v152 & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521();
  v153 = v302;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v154 = *(v301 + 48);
  v155 = v304;
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v156 = OUTLINED_FUNCTION_538();
  v157 = v303;
  OUTLINED_FUNCTION_178(v156, v158, v303);
  if (v117)
  {
    sub_1B8D9207C(v153, &qword_1EBABBD20, &qword_1B965A620);
    OUTLINED_FUNCTION_37_0(v155 + v154);
    v159 = v305;
    if (v117)
    {
      sub_1B8D9207C(v155, &qword_1EBABBD20, &qword_1B965A620);
      v161 = v268;
      v160 = v269;
      goto LABEL_57;
    }

LABEL_45:
    v164 = &qword_1EBABC220;
    v165 = &qword_1B965C720;
LABEL_46:
    v166 = v155;
LABEL_47:
    sub_1B8D9207C(v166, v164, v165);
    goto LABEL_17;
  }

  v162 = v300;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v155 + v154);
  v159 = v305;
  if (v163)
  {
    sub_1B8D9207C(v153, &qword_1EBABBD20, &qword_1B965A620);
    OUTLINED_FUNCTION_234_1();
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_16_10();
  v173 = v299;
  sub_1B8E46784();
  v174 = *v162 == *v173 && v162[1] == v173[1];
  if (!v174 && (sub_1B964C9F0() & 1) == 0)
  {
    sub_1B8E46834();
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v193, v194, v195);
    sub_1B8E46834();
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v196, v197, v198);
    goto LABEL_17;
  }

  v175 = *(v157 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v176, v177);
  v178 = sub_1B964C850();
  sub_1B8E46834();
  OUTLINED_FUNCTION_180_2(v153);
  OUTLINED_FUNCTION_196();
  sub_1B8E46834();
  v179 = OUTLINED_FUNCTION_275();
  sub_1B8D9207C(v179, v180, &qword_1B965A620);
  v161 = v268;
  v160 = v269;
  if ((v178 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_57:
  v181 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  OUTLINED_FUNCTION_521();
  LODWORD(v181) = *(v161 + v181);
  v182 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__nextStart;
  OUTLINED_FUNCTION_521();
  if (v181 != *(v160 + v182))
  {
    goto LABEL_17;
  }

  v183 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  OUTLINED_FUNCTION_521();
  LODWORD(v183) = *(v161 + v183);
  v184 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__totalResultsCount;
  OUTLINED_FUNCTION_521();
  if (v183 != *(v160 + v184))
  {
    goto LABEL_17;
  }

  v185 = (v161 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  OUTLINED_FUNCTION_521();
  v186 = *v185;
  v187 = v185[1];
  v188 = (v269 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intent);
  OUTLINED_FUNCTION_521();
  v189 = v186 == *v188 && v187 == v188[1];
  if (!v189 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v190 = *(v296 + 48);
  v155 = v298;
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v191 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v191, v192, v297);
  if (v117)
  {
    sub_1B8D9207C(v159, &qword_1EBABBD28, &qword_1B965A628);
    OUTLINED_FUNCTION_37_0(v155 + v190);
    if (v117)
    {
      sub_1B8D9207C(v155, &qword_1EBABBD28, &qword_1B965A628);
      goto LABEL_76;
    }

    goto LABEL_73;
  }

  v199 = v293;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v155 + v190);
  if (v200)
  {
    sub_1B8D9207C(v159, &qword_1EBABBD28, &qword_1B965A628);
    OUTLINED_FUNCTION_234_1();
LABEL_73:
    v164 = &qword_1EBABC218;
    v165 = &qword_1B965C718;
    goto LABEL_46;
  }

  v201 = v289;
  sub_1B8E46784();
  v202 = static Kgqsapipb_IntentArgInfo.== infix(_:_:)(v199, v201);
  OUTLINED_FUNCTION_128();
  sub_1B8E46834();
  OUTLINED_FUNCTION_180_2(v159);
  sub_1B8E46834();
  v203 = OUTLINED_FUNCTION_275();
  sub_1B8D9207C(v203, v204, &qword_1B965A628);
  if ((v202 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_76:
  OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_224_1(v291);
  v155 = v294;
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v205 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v205, v206, v292);
  if (v117)
  {
    sub_1B8D9207C(v295, &qword_1EBABBD30, &qword_1B965A630);
    OUTLINED_FUNCTION_37_0(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v155);
    if (v117)
    {
      sub_1B8D9207C(v155, &qword_1EBABBD30, &qword_1B965A630);
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v155);
  if (v207)
  {
    sub_1B8D9207C(v295, &qword_1EBABBD30, &qword_1B965A630);
    sub_1B8E46834();
    v155 = v294;
LABEL_84:
    v164 = &qword_1EBABC210;
    v165 = &qword_1B965C710;
    goto LABEL_46;
  }

  v208 = v294;
  sub_1B8E46784();
  v209 = OUTLINED_FUNCTION_275();
  v211 = static Kgqsapipb_RenderFeatures.== infix(_:_:)(v209, v210);
  OUTLINED_FUNCTION_128();
  sub_1B8E46834();
  OUTLINED_FUNCTION_180_2(v295);
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_180_2(v208);
  if ((v211 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_86:
  v212 = (v268 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  OUTLINED_FUNCTION_521();
  v213 = *v212;
  v214 = v212[1];
  v215 = (v269 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__fullCardURL);
  OUTLINED_FUNCTION_521();
  v216 = v213 == *v215 && v214 == v215[1];
  if (!v216 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  v217 = (v268 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultSource);
  OUTLINED_FUNCTION_521();
  v218 = *v217;
  v219 = *(v217 + 8);
  OUTLINED_FUNCTION_521();
  v220 = OUTLINED_FUNCTION_220_1();
  if (!sub_1B8D92198(v220, v221, v222))
  {
    goto LABEL_17;
  }

  v223 = (v268 + OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__resultType);
  OUTLINED_FUNCTION_521();
  v224 = *v223;
  v225 = *(v223 + 8);
  OUTLINED_FUNCTION_521();
  v226 = OUTLINED_FUNCTION_220_1();
  if (!sub_1B8D92198(v226, v227, v228))
  {
    goto LABEL_17;
  }

  v229 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities;
  v230 = v268;
  OUTLINED_FUNCTION_521();
  v231 = *(v230 + v229);
  v232 = OBJC_IVAR____TtCV10PegasusAPI22Kgqsapipb_KGDBResponseP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__geoEntities;
  v233 = v269;
  OUTLINED_FUNCTION_521();
  v234 = *(v233 + v232);

  OUTLINED_FUNCTION_543();
  sub_1B8D7D760();
  LOBYTE(v233) = v235;

  if ((v233 & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_224_1(v282);
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v236 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v236, v237, v286);
  if (v117)
  {
    sub_1B8D9207C(v285, &qword_1EBABBD38, &qword_1B965A638);
    OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v287, 1, v286);
    if (v117)
    {
      sub_1B8D9207C(v287, &qword_1EBABBD38, &qword_1B965A638);
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  v238 = v287;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v238, 1, v286);
  if (v239)
  {
    sub_1B8D9207C(v285, &qword_1EBABBD38, &qword_1B965A638);
    sub_1B8E46834();
LABEL_102:
    v164 = &qword_1EBABC208;
    v165 = &qword_1B965C708;
    v166 = v287;
    goto LABEL_47;
  }

  v240 = v287;
  sub_1B8E46784();
  OUTLINED_FUNCTION_275();
  v241 = static Electionspb_ElectionsResponse.== infix(_:_:)();
  OUTLINED_FUNCTION_128();
  sub_1B8E46834();
  OUTLINED_FUNCTION_180_2(v285);
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_180_2(v240);
  if ((v241 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_104:
  OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_224_1(v278);
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v242 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v242, v243, v281);
  if (!v117)
  {
    v244 = v284;
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v244, 1, v281);
    if (!v245)
    {
      v246 = v284;
      sub_1B8E46784();
      v247 = OUTLINED_FUNCTION_275();
      v249 = static Nlgpb_NlgDialog.== infix(_:_:)(v247, v248);
      OUTLINED_FUNCTION_128();
      sub_1B8E46834();
      OUTLINED_FUNCTION_180_2(v280);
      OUTLINED_FUNCTION_217_0();
      OUTLINED_FUNCTION_180_2(v246);
      if (v249)
      {
        goto LABEL_114;
      }

      goto LABEL_17;
    }

    sub_1B8D9207C(v280, &qword_1EBABBD40, &qword_1B965A640);
    sub_1B8E46834();
    goto LABEL_112;
  }

  sub_1B8D9207C(v280, &qword_1EBABBD40, &qword_1B965A640);
  OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v284, 1, v281);
  if (!v117)
  {
LABEL_112:
    v164 = &qword_1EBABC200;
    v165 = &qword_1B965C700;
    v166 = v284;
    goto LABEL_47;
  }

  sub_1B8D9207C(v284, &qword_1EBABBD40, &qword_1B965A640);
LABEL_114:
  OUTLINED_FUNCTION_221_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_224_1(v273);
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_98_3();
  v250 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v250, v251, v277);
  if (!v117)
  {
    v252 = v270;
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v252, 1, v277);
    if (!v253)
    {
      OUTLINED_FUNCTION_23_6();
      v257 = v271;
      sub_1B8E46784();
      v258 = *(v277 + 20);
      if (*(v274 + v258) == *(v257 + v258))
      {
        goto LABEL_126;
      }

      v259 = *(v274 + v258);

      v260 = OUTLINED_FUNCTION_543();
      sub_1B8E5DB18(v260, v261);
      OUTLINED_FUNCTION_225_1();

      if (&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed)
      {
LABEL_126:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_18();
        sub_1B8CD1D90(v262, v263);
        sub_1B964C850();

        sub_1B8E46834();
        OUTLINED_FUNCTION_180_2(v276);
        OUTLINED_FUNCTION_196();
        sub_1B8E46834();
        OUTLINED_FUNCTION_180_2(v270);
        goto LABEL_18;
      }

      sub_1B8E46834();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v264, v265, v266);
      sub_1B8E46834();
      OUTLINED_FUNCTION_176_2();
      goto LABEL_123;
    }

    sub_1B8D9207C(v276, &qword_1EBABBD48, &qword_1B965A648);
    sub_1B8E46834();
LABEL_122:
    v254 = &qword_1EBABC1F8;
    v255 = &qword_1B965C6F8;
    v256 = v270;
LABEL_123:
    sub_1B8D9207C(v256, v254, v255);
    goto LABEL_18;
  }

  sub_1B8D9207C(v276, &qword_1EBABBD48, &qword_1B965A648);
  OUTLINED_FUNCTION_178(&OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + v270, 1, v277);
  if (!v117)
  {
    goto LABEL_122;
  }

  sub_1B8D9207C(v270, &qword_1EBABBD48, &qword_1B965A648);
LABEL_18:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E46784()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E467DC()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E46834()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B8E46964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC1A8, type metadata accessor for Kgqsapipb_KGDBResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E469E4(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABAFD0, type metadata accessor for Kgqsapipb_KGDBResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E46A54()
{
  sub_1B8CD1D90(&qword_1EBABAFD0, type metadata accessor for Kgqsapipb_KGDBResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E46AD4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBB78);
  __swift_project_value_buffer(v0, qword_1EBABBB78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "KGQS";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WEB";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KNOSIS";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E46D00()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBB90);
  __swift_project_value_buffer(v0, qword_1EBABBB90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 0;
  *v4 = "UNKNOWN";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 1;
  *v8 = "SINGLE_ENTITY";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "FOOD_NUTRITION_GENERIC_FACT";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "FOOD_NUTRITION_SPECIFIC_NUTRIENT";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "DICTIONARY";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ELECTION";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "COVID";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "SOUND";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "EVENT";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PARENT_CHILD";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CHILD_ENTITY_HAS_LOCALIZED_CLAIMS";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "LOCALIZE_WITHIN_RENDER_LOCALIZATION";
  *(v28 + 1) = 35;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_DisplayableMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Kgqsapipb_DisplayableMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v1 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v3 = *(type metadata accessor for Kgqsapipb_DisplayableMetadata(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_DisplayableMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Kgqsapipb_DisplayableMetadata(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E47378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC1A0, type metadata accessor for Kgqsapipb_DisplayableMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E473F8(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBF50, type metadata accessor for Kgqsapipb_DisplayableMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E47468()
{
  sub_1B8CD1D90(&qword_1EBABBF50, type metadata accessor for Kgqsapipb_DisplayableMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E47500()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBBC0);
  __swift_project_value_buffer(v0, qword_1EBABBBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_PerfMetric.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Kgqsapipb_PerfMetric.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v0))
    {
      v4 = *(type metadata accessor for Kgqsapipb_PerfMetric(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Kgqsapipb_PerfMetric.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Kgqsapipb_PerfMetric(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E4791C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC198, type metadata accessor for Kgqsapipb_PerfMetric);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4799C(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBF68, type metadata accessor for Kgqsapipb_PerfMetric);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E47A0C()
{
  sub_1B8CD1D90(&qword_1EBABBF68, type metadata accessor for Kgqsapipb_PerfMetric);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E47AA4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBBD8);
  __swift_project_value_buffer(v0, qword_1EBABBBD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "wikidata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wikipedia";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parent";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "attributes";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "features";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "additionalEntityInfo";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8E47E4C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8E47F00();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8E47FB4();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8E48054();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B8E48108();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E47E4C()
{
  v0 = *(type metadata accessor for Kgqsapipb_KGEntity(0) + 32);
  type metadata accessor for Kgqsapipb_Entity(0);
  sub_1B8CD1D90(&qword_1EBABBDC8, type metadata accessor for Kgqsapipb_Entity);
  return sub_1B964C580();
}

uint64_t sub_1B8E47F00()
{
  v0 = *(type metadata accessor for Kgqsapipb_KGEntity(0) + 36);
  type metadata accessor for Kgqsapipb_Thing(0);
  sub_1B8CD1D90(&qword_1EBABBDC0, type metadata accessor for Kgqsapipb_Thing);
  return sub_1B964C580();
}

uint64_t sub_1B8E47FB4()
{
  type metadata accessor for Kgqsapipb_Claim(0);
  sub_1B8CD1D90(&qword_1EBABBDA0, type metadata accessor for Kgqsapipb_Claim);
  return sub_1B964C570();
}

uint64_t sub_1B8E48054()
{
  v0 = *(type metadata accessor for Kgqsapipb_KGEntity(0) + 40);
  type metadata accessor for Kgqsapipb_EntityFeatures(0);
  sub_1B8CD1D90(&qword_1EBABBDB8, type metadata accessor for Kgqsapipb_EntityFeatures);
  return sub_1B964C580();
}

uint64_t sub_1B8E48108()
{
  sub_1B964C280();
  type metadata accessor for Kgqsapipb_AttributeStore(0);
  sub_1B8CD1D90(&qword_1EBABBDA8, type metadata accessor for Kgqsapipb_AttributeStore);
  sub_1B8CD1D90(&qword_1EBABBDB0, type metadata accessor for Kgqsapipb_AttributeStore);
  return sub_1B964C3A0();
}

void Kgqsapipb_KGEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD60, &unk_1B965A660);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v41 = v9;
  v10 = OUTLINED_FUNCTION_201();
  v40 = type metadata accessor for Kgqsapipb_EntityFeatures(v10);
  v11 = OUTLINED_FUNCTION_59_1(v40);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD58, &qword_1B965A658);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_231_1();
  v42 = type metadata accessor for Kgqsapipb_Thing(0);
  v18 = OUTLINED_FUNCTION_59_1(v42);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD50, &qword_1B965A650);
  OUTLINED_FUNCTION_183(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_22_3();
  v26 = type metadata accessor for Kgqsapipb_Entity(v25);
  v27 = OUTLINED_FUNCTION_59_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v30 = OUTLINED_FUNCTION_186_1();
  v43 = type metadata accessor for Kgqsapipb_KGEntity(v30);
  v31 = v43[8];
  sub_1B8D92024();
  v32 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v32, v33, v26) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBABBD50, &qword_1B965A650);
    v34 = v1;
  }

  else
  {
    sub_1B8E46784();
    sub_1B8CD1D90(&qword_1EBABBDC8, type metadata accessor for Kgqsapipb_Entity);
    sub_1B964C740();
    v34 = v1;
    sub_1B8E46834();
    if (v1)
    {
      goto LABEL_17;
    }
  }

  v35 = v43[9];
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v3, 1, v42) == 1)
  {
    sub_1B8D9207C(v3, &qword_1EBABBD58, &qword_1B965A658);
  }

  else
  {
    sub_1B8E46784();
    sub_1B8CD1D90(&qword_1EBABBDC0, type metadata accessor for Kgqsapipb_Thing);
    v1 = v34;
    sub_1B964C740();
    OUTLINED_FUNCTION_275();
    sub_1B8E46834();
    if (v34)
    {
      goto LABEL_17;
    }
  }

  if (*v4 != 1 || (v1 = v34, sub_1B964C670(), !v34))
  {
    if (!*(*(v4 + 8) + 16) || (type metadata accessor for Kgqsapipb_Claim(0), OUTLINED_FUNCTION_131_2(), sub_1B8CD1D90(v36, v37), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_230_1(), sub_1B964C730(), (v34 = v1) == 0))
    {
      v38 = v43[10];
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v41, 1, v40) == 1)
      {
        sub_1B8D9207C(v41, &qword_1EBABBD60, &unk_1B965A660);
      }

      else
      {
        sub_1B8E46784();
        sub_1B8CD1D90(&qword_1EBABBDB8, type metadata accessor for Kgqsapipb_EntityFeatures);
        OUTLINED_FUNCTION_230_1();
        sub_1B964C740();
        v34 = v1;
        sub_1B8E46834();
        if (v1)
        {
          goto LABEL_17;
        }
      }

      if (!*(*(v4 + 16) + 16) || (sub_1B964C280(), type metadata accessor for Kgqsapipb_AttributeStore(0), sub_1B8CD1D90(&qword_1EBABBDA8, type metadata accessor for Kgqsapipb_AttributeStore), sub_1B8CD1D90(&qword_1EBABBDB0, type metadata accessor for Kgqsapipb_AttributeStore), sub_1B964C5E0(), !v34))
      {
        v39 = v4 + v43[7];
        sub_1B964C290();
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_272_0();
}

void static Kgqsapipb_KGEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v93 = type metadata accessor for Kgqsapipb_EntityFeatures(0);
  v6 = OUTLINED_FUNCTION_59_1(v93);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v90 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD60, &unk_1B965A660);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_185();
  v91 = v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBDD0, &qword_1B965A680);
  OUTLINED_FUNCTION_59_1(v92);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_185();
  v94 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v98 = type metadata accessor for Kgqsapipb_Thing(v19);
  v20 = OUTLINED_FUNCTION_59_1(v98);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  v95 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD58, &qword_1B965A658);
  OUTLINED_FUNCTION_183(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_185();
  v96 = v28;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBDD8, &qword_1B965A688);
  OUTLINED_FUNCTION_59_1(v97);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_185();
  v99 = v32;
  v33 = OUTLINED_FUNCTION_201();
  v34 = type metadata accessor for Kgqsapipb_Entity(v33);
  v35 = OUTLINED_FUNCTION_59_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD50, &qword_1B965A650);
  OUTLINED_FUNCTION_183(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_231_1();
  v45 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBDE0, &unk_1B965A690) - 8);
  v46 = *(*v45 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v47);
  v48 = OUTLINED_FUNCTION_31_2();
  v100 = type metadata accessor for Kgqsapipb_KGEntity(v48);
  v49 = v100[8];
  v50 = v45[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v51)
  {
    OUTLINED_FUNCTION_37_0(v0 + v50);
    if (v51)
    {
      sub_1B8D9207C(v0, &qword_1EBABBD50, &qword_1B965A650);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v50);
  if (v51)
  {
    sub_1B8E46834();
LABEL_9:
    v52 = &qword_1EBABBDE0;
    v53 = &unk_1B965A690;
LABEL_10:
    v54 = v0;
LABEL_24:
    sub_1B8D9207C(v54, v52, v53);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_22_6();
  sub_1B8E46784();
  v55 = *(v34 + 20);
  if (*(v1 + v55) != *(v40 + v55))
  {
    v56 = *(v1 + v55);

    sub_1B8E6EBC8();
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      sub_1B8E46834();
      sub_1B8E46834();
      v52 = &qword_1EBABBD50;
      v53 = &qword_1B965A650;
      goto LABEL_10;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v59, v60);
  v61 = sub_1B964C850();
  sub_1B8E46834();
  sub_1B8E46834();
  sub_1B8D9207C(v0, &qword_1EBABBD50, &qword_1B965A650);
  if ((v61 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v62 = v100[9];
  v63 = *(v97 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  v64 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v64, v65, v98);
  if (v51)
  {
    OUTLINED_FUNCTION_178(v99 + v63, 1, v98);
    if (v51)
    {
      sub_1B8D9207C(v99, &qword_1EBABBD58, &qword_1B965A658);
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v99 + v63, 1, v98);
  if (v66)
  {
    sub_1B8E46834();
LABEL_22:
    v52 = &qword_1EBABBDD8;
    v53 = &qword_1B965A688;
LABEL_23:
    v54 = v99;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_21_5();
  sub_1B8E46784();
  v67 = *(v98 + 20);
  v68 = *(v96 + v67);
  v69 = *(v95 + v67);
  if (v68 != v69 && (sub_1B8E8B8CC(v68, v69) & 1) == 0)
  {
    sub_1B8E46834();
    OUTLINED_FUNCTION_182();
    sub_1B8E46834();
    v52 = &qword_1EBABBD58;
    v53 = &qword_1B965A658;
    goto LABEL_23;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v70, v71);
  OUTLINED_FUNCTION_461();
  v72 = sub_1B964C850();
  sub_1B8E46834();
  OUTLINED_FUNCTION_128();
  sub_1B8E46834();
  sub_1B8D9207C(v99, &qword_1EBABBD58, &qword_1B965A658);
  if ((v72 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  if (*v5 != *v3)
  {
    goto LABEL_25;
  }

  v73 = *(v5 + 1);
  v74 = *(v3 + 1);
  sub_1B8D7C6CC();
  if ((v75 & 1) == 0)
  {
    goto LABEL_25;
  }

  v76 = v100[10];
  v77 = *(v92 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  v78 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v78, v79, v93);
  if (!v51)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v94 + v77, 1, v93);
    if (!v86)
    {
      OUTLINED_FUNCTION_20_2();
      sub_1B8E46784();
      if (*v91 == *v90)
      {
        v87 = *(v93 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_18();
        sub_1B8CD1D90(v88, v89);
        LOBYTE(v87) = sub_1B964C850();
        sub_1B8E46834();
        OUTLINED_FUNCTION_217_0();
        sub_1B8D9207C(v94, &qword_1EBABBD60, &unk_1B965A660);
        if ((v87 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }

      sub_1B8E46834();
      sub_1B8E46834();
      v52 = &qword_1EBABBD60;
      v53 = &unk_1B965A660;
      goto LABEL_44;
    }

    sub_1B8E46834();
LABEL_43:
    v52 = &qword_1EBABBDD0;
    v53 = &qword_1B965A680;
LABEL_44:
    v54 = v94;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_178(v94 + v77, 1, v93);
  if (!v51)
  {
    goto LABEL_43;
  }

  sub_1B8D9207C(v94, &qword_1EBABBD60, &unk_1B965A660);
LABEL_36:
  v80 = *(v5 + 2);
  v81 = *(v3 + 2);
  sub_1B8DB2224();
  if (v82)
  {
    v83 = v100[7];
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_18();
    sub_1B8CD1D90(v84, v85);
    sub_1B964C850();
  }

LABEL_25:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E4916C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC190, type metadata accessor for Kgqsapipb_KGEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E491EC(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBF80, type metadata accessor for Kgqsapipb_KGEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4925C()
{
  sub_1B8CD1D90(&qword_1EBABBF80, type metadata accessor for Kgqsapipb_KGEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E492DC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBBF0);
  __swift_project_value_buffer(v0, qword_1EBABBBF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SONGS";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ALBUMS";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CONCERTS";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RELATED_ENTITIES";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "TV_EXTRA_CONTENT";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RELEASED_ALBUMS_IN_LAST_60_DAYS";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E49608()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBC08);
  __swift_project_value_buffer(v0, qword_1EBABBC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attributes";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "debugInfo";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Kgqsapipb_AttributeStore.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8E498A8();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8E4E644();
    }
  }
}

uint64_t sub_1B8E498A8()
{
  v0 = *(type metadata accessor for Kgqsapipb_AttributeStore(0) + 24);
  type metadata accessor for Kgqsapipb_DebugInfo(0);
  sub_1B8CD1D90(&qword_1EBABBDF0, type metadata accessor for Kgqsapipb_DebugInfo);
  return sub_1B964C580();
}

void Kgqsapipb_AttributeStore.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9A78, &qword_1B96507A0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_186_1();
  v8 = type metadata accessor for Kgqsapipb_DebugInfo(v7);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  if (!*(*v0 + 16) || (type metadata accessor for Kgqsapipb_Claim(0), OUTLINED_FUNCTION_131_2(), sub_1B8CD1D90(v12, v13), OUTLINED_FUNCTION_231(), sub_1B964C730(), !v1))
  {
    v14 = type metadata accessor for Kgqsapipb_AttributeStore(0);
    v15 = *(v14 + 24);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9A78, &qword_1B96507A0);
LABEL_6:
      v18 = v0 + *(v14 + 20);
      OUTLINED_FUNCTION_491();
      sub_1B964C290();
      goto LABEL_7;
    }

    sub_1B8E46784();
    OUTLINED_FUNCTION_129_1();
    sub_1B8CD1D90(v16, v17);
    sub_1B964C740();
    sub_1B8E46834();
    if (!v1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_272_0();
}

void static Kgqsapipb_AttributeStore.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  v5 = type metadata accessor for Kgqsapipb_DebugInfo(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9A78, &qword_1B96507A0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9A80, &qword_1B96507A8);
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v19 = *v1;
  v20 = *v0;
  sub_1B8D7C6CC();
  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

  v39 = type metadata accessor for Kgqsapipb_AttributeStore(0);
  v22 = *(v39 + 24);
  v23 = *(v13 + 48);
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v18);
  if (v24)
  {
    OUTLINED_FUNCTION_37_0(&v18[v23]);
    if (v24)
    {
      sub_1B8D9207C(v18, &qword_1EBAB9A78, &qword_1B96507A0);
LABEL_16:
      v35 = *(v39 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_18();
      sub_1B8CD1D90(v36, v37);
      sub_1B964C850();
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v18[v23]);
  if (v24)
  {
    OUTLINED_FUNCTION_234_1();
LABEL_10:
    v25 = &qword_1EBAB9A80;
    v26 = &qword_1B96507A8;
LABEL_11:
    sub_1B8D9207C(v18, v25, v26);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_19_4();
  sub_1B8E46784();
  v27 = *(v5 + 20);
  v28 = *(v3 + v27);
  v29 = *(v2 + v27);
  if (v28 != v29)
  {
    v30 = *(v3 + v27);

    v31 = sub_1B8E4D1E4(v28, v29);

    if (!v31)
    {
      sub_1B8E46834();
      sub_1B8E46834();
      v25 = &qword_1EBAB9A78;
      v26 = &qword_1B96507A0;
      goto LABEL_11;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v32, v33);
  v34 = sub_1B964C850();
  sub_1B8E46834();
  sub_1B8E46834();
  sub_1B8D9207C(v18, &qword_1EBAB9A78, &qword_1B96507A0);
  if (v34)
  {
    goto LABEL_16;
  }

LABEL_12:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E49F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC188, type metadata accessor for Kgqsapipb_AttributeStore);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E49FF4(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBDA8, type metadata accessor for Kgqsapipb_AttributeStore);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4A064()
{
  sub_1B8CD1D90(&qword_1EBABBDA8, type metadata accessor for Kgqsapipb_AttributeStore);

  return sub_1B964C5D0();
}

uint64_t Kgqsapipb_EntityFeatures.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }
  }

  return result;
}

uint64_t Kgqsapipb_EntityFeatures.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
  {
    v3 = *(type metadata accessor for Kgqsapipb_EntityFeatures(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_EntityFeatures.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v2 = *(type metadata accessor for Kgqsapipb_EntityFeatures(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v3, v4);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E4A308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC180, type metadata accessor for Kgqsapipb_EntityFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4A388(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBDB8, type metadata accessor for Kgqsapipb_EntityFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4A3F8()
{
  sub_1B8CD1D90(&qword_1EBABBDB8, type metadata accessor for Kgqsapipb_EntityFeatures);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4A490()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBC38);
  __swift_project_value_buffer(v0, qword_1EBABBC38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "wikidataId";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "wikipediaId";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "thumbnailUrl";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ontologyPaths";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "entitySyn";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_EntityInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B8E4A854();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E4A854()
{
  type metadata accessor for Kgqsapipb_OntologyPath(0);
  sub_1B8CD1D90(&qword_1EBABB878, type metadata accessor for Kgqsapipb_OntologyPath);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_EntityInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        v10 = v1[6];
        v11 = v1[7];
        OUTLINED_FUNCTION_1();
        if (!v12 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
        {
          v13 = v1[8];
          v14 = v1[9];
          OUTLINED_FUNCTION_1();
          if (!v15 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
          {
            if (!*(v1[10] + 16) || (type metadata accessor for Kgqsapipb_OntologyPath(0), sub_1B8CD1D90(&qword_1EBABB878, type metadata accessor for Kgqsapipb_OntologyPath), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), result = sub_1B964C730(), !v0))
            {
              v16 = v1[11];
              v17 = v1[12];
              OUTLINED_FUNCTION_1();
              if (!v18 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
              {
                v19 = *(type metadata accessor for Kgqsapipb_EntityInfo(0) + 44);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_EntityInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = v3[10];
  v14 = v2[10];
  sub_1B8D7CD18();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = v3[11] == v2[11] && v3[12] == v2[12];
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for Kgqsapipb_EntityInfo(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v18, v19);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E4AC34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC178, type metadata accessor for Kgqsapipb_EntityInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4ACB4(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBFB8, type metadata accessor for Kgqsapipb_EntityInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4AD24()
{
  sub_1B8CD1D90(&qword_1EBABBFB8, type metadata accessor for Kgqsapipb_EntityInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4ADBC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBC50);
  __swift_project_value_buffer(v0, qword_1EBABBC50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B965A600;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "code";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "description";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "messages";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "pattern";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "dbQueryPattern";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "encodedIntent";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "maxPopularityScore";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "queryEntities";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "fedPatterns";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "intentFeatures";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "canonResultId";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "quality";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "productionRules";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "referEntityIdx";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "encodedContext";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "encodedIntentProto";
  *(v36 + 1) = 18;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "maxEntityScore";
  *(v38 + 1) = 14;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "algorithm";
  *(v40 + 1) = 9;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "intentName";
  *(v42 + 1) = 10;
  v42[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E4B3EC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_57_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B8E4B43C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = v1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = v1;
  *(v0 + 112) = v1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentFeatures;
  v3 = type metadata accessor for Kgqsapipb_IntentFeatures(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID) = 0;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx) = 0;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore) = 0;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B8E4B540(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD68, &unk_1B965A670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81 = &v74 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = MEMORY[0x1E69E7CC0];
  *(v1 + 56) = 0;
  v75 = (v1 + 56);
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = v6;
  *(v1 + 80) = 0;
  v76 = (v1 + 80);
  *(v1 + 96) = 0;
  v77 = (v1 + 96);
  *(v1 + 104) = v6;
  v78 = (v1 + 104);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 112) = v6;
  v79 = (v1 + 112);
  v7 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentFeatures;
  v8 = type metadata accessor for Kgqsapipb_IntentFeatures(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v80 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID) = 0;
  v9 = v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality;
  v82 = v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality;
  *v9 = 0;
  *(v9 + 8) = 1;
  v83 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules) = v6;
  v84 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx) = 0;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
  v85 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
  v86 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v87 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore) = 0;
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
  v88 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
  v89 = (v1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  swift_beginAccess();
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v15;
  *(v1 + 24) = v14;
  swift_beginAccess();
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v16;
  *(v1 + 40) = v17;

  swift_beginAccess();
  v18 = *(a1 + 48);
  swift_beginAccess();
  v19 = *(v1 + 48);
  *(v1 + 48) = v18;

  swift_beginAccess();
  v21 = *(a1 + 56);
  v20 = *(a1 + 64);
  v22 = v75;
  swift_beginAccess();
  v23 = *(v1 + 64);
  *v22 = v21;
  *(v1 + 64) = v20;

  swift_beginAccess();
  v24 = *(a1 + 72);
  swift_beginAccess();
  v25 = *(v1 + 72);
  *(v1 + 72) = v24;

  swift_beginAccess();
  v27 = *(a1 + 80);
  v26 = *(a1 + 88);
  v28 = v76;
  swift_beginAccess();
  v29 = *(v1 + 88);
  *v28 = v27;
  *(v1 + 88) = v26;

  swift_beginAccess();
  v30 = *(a1 + 96);
  v31 = v77;
  swift_beginAccess();
  *v31 = v30;
  swift_beginAccess();
  v32 = *(a1 + 104);
  v33 = v78;
  swift_beginAccess();
  v34 = *v33;
  *v33 = v32;

  swift_beginAccess();
  v35 = *(a1 + 112);
  v36 = v79;
  swift_beginAccess();
  v37 = *v36;
  *v36 = v35;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = v80;
  swift_beginAccess();
  *(v1 + v40) = v39;
  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = v82;
  swift_beginAccess();
  *v43 = v42;
  *(v43 + 8) = v41;
  v44 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
  swift_beginAccess();
  v45 = *(a1 + v44);
  v46 = v83;
  swift_beginAccess();
  v47 = *(v1 + v46);
  *(v1 + v46) = v45;

  v48 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
  swift_beginAccess();
  LODWORD(v48) = *(a1 + v48);
  v49 = v84;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  v53 = v85;
  swift_beginAccess();
  v54 = v53[1];
  *v53 = v52;
  v53[1] = v51;

  v55 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];
  v58 = v86;
  swift_beginAccess();
  v59 = v58[1];
  *v58 = v57;
  v58[1] = v56;

  v60 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  swift_beginAccess();
  v61 = *(a1 + v60);
  v62 = v87;
  swift_beginAccess();
  *(v1 + v62) = v61;
  v63 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
  swift_beginAccess();
  v65 = *v63;
  v64 = v63[1];
  v66 = v88;
  swift_beginAccess();
  v67 = v66[1];
  *v66 = v65;
  v66[1] = v64;

  v68 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
  swift_beginAccess();
  v70 = *v68;
  v69 = v68[1];

  v71 = v89;
  swift_beginAccess();
  v72 = v71[1];
  *v71 = v70;
  v71[1] = v69;

  return v1;
}

void *sub_1B8E4BCA0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[13];

  v8 = v0[14];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentFeatures, &qword_1EBABBD68, &unk_1B965A670);
  v9 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules);

  v10 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext + 8);

  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto + 8);

  v12 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm + 8);

  v13 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName + 8);

  return v0;
}

uint64_t sub_1B8E4BD90(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B8E4BE40()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v20 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  v15 = *(v0 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = v5(0);
    OUTLINED_FUNCTION_57_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_40_0();
    v17 = v20(v19);
    *(v6 + v14) = v17;
  }

  v2(v17, v12, v10, v8);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8E4BEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E4C21C();
        continue;
      case 2:
        sub_1B8DC46F4();
        continue;
      case 3:
        sub_1B8E4C27C();
        continue;
      case 4:
        sub_1B8E4C300();
        continue;
      case 5:
        sub_1B8E4C360();
        continue;
      case 6:
        sub_1B8E4C3E4();
        continue;
      case 7:
        sub_1B8DD5A0C();
        continue;
      case 8:
        sub_1B8E4C444();
        continue;
      case 9:
        sub_1B8E16C58();
        continue;
      case 10:
        sub_1B8E4C510();
        continue;
      case 11:
        v11 = MEMORY[0x1E69AACA8];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
        goto LABEL_19;
      case 12:
        sub_1B8E4C5EC(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality, sub_1B8E5335C);
        continue;
      case 13:
        v11 = MEMORY[0x1E69AACB8];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
        goto LABEL_19;
      case 14:
        sub_1B8E4C684();
        continue;
      case 15:
      case 16:
      case 18:
      case 19:
        sub_1B8E4C770();
        continue;
      case 17:
        v11 = MEMORY[0x1E69AACD0];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
LABEL_19:
        sub_1B8E4C6E8(v12, v13, v14, v15, v16, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E4C21C()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  sub_1B964C530();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8E4C27C()
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E4C300()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  sub_1B964C530();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8E4C360()
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E4C3E4()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  sub_1B964C530();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8E4C444()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_EntityInfo(0);
  sub_1B8CD1D90(&qword_1EBABBFB8, type metadata accessor for Kgqsapipb_EntityInfo);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E4C510()
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_IntentFeatures(0);
  sub_1B8CD1D90(&qword_1EBABB918, type metadata accessor for Kgqsapipb_IntentFeatures);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E4C5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_134_2();
  v8 = *v7;
  OUTLINED_FUNCTION_131();
  v9 = swift_beginAccess();
  a6(v9);
  sub_1B964C420();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8E4C684()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  sub_1B964C4A0();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8E4C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_134_2();
  v10 = v9;
  v12 = *v11;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(v10 + v12, v7, v6);
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8E4C770()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  sub_1B964C530();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8E4C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_145_2();
  v9 = *(v5 + *(v8(0) + 20));
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E4C878(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD68, &unk_1B965A670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v47 - v6;
  v51 = type metadata accessor for Kgqsapipb_IntentFeatures(0);
  v8 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(a1 + 40);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {
    v15 = *(a1 + 48);

    sub_1B964C6E0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 64);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = *(a1 + 64);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 72) + 16))
  {
    v19 = *(a1 + 72);

    sub_1B964C6E0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v20 = *(a1 + 88);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = *(a1 + 88);

    sub_1B964C700();
    if (!v1)
    {

      goto LABEL_27;
    }
  }

LABEL_27:
  swift_beginAccess();
  if (*(a1 + 96) == 0.0 || (result = sub_1B964C6B0(), !v1))
  {
    swift_beginAccess();
    v48 = *(a1 + 104);
    if (*(v48 + 16))
    {
      type metadata accessor for Kgqsapipb_EntityInfo(0);
      sub_1B8CD1D90(&qword_1EBABBFB8, type metadata accessor for Kgqsapipb_EntityInfo);

      sub_1B964C730();
      if (v1)
      {
      }
    }

    swift_beginAccess();
    if (*(*(a1 + 112) + 16))
    {
      v24 = *(a1 + 112);

      sub_1B964C6E0();
      if (v1)
      {
      }
    }

    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v7, 1, v51) == 1)
    {
      sub_1B8D9207C(v7, &qword_1EBABBD68, &unk_1B965A670);
    }

    else
    {
      sub_1B8E46784();
      sub_1B8CD1D90(&qword_1EBABB918, type metadata accessor for Kgqsapipb_IntentFeatures);
      sub_1B964C740();
      result = sub_1B8E46834();
      if (v1)
      {
        return result;
      }
    }

    v25 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
    swift_beginAccess();
    if (!*(a1 + v25) || (result = sub_1B964C6D0(), !v1))
    {
      v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality);
      swift_beginAccess();
      if (!*v26 || (v27 = *(v26 + 8), v49 = *v26, v50 = v27, sub_1B8E5335C(), result = sub_1B964C680(), !v1))
      {
        v28 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
        swift_beginAccess();
        if (!*(*(a1 + v28) + 16) || (, sub_1B964C6E0(), result = , !v1))
        {
          v29 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
          swift_beginAccess();
          if (!*(a1 + v29) || (result = sub_1B964C6C0(), !v1))
          {
            v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
            swift_beginAccess();
            v31 = *v30;
            v32 = v30[1];
            v33 = HIBYTE(v32) & 0xF;
            if ((v32 & 0x2000000000000000) == 0)
            {
              v33 = v31 & 0xFFFFFFFFFFFFLL;
            }

            if (!v33 || (, sub_1B964C700(), result = , !v2))
            {
              v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
              swift_beginAccess();
              v35 = *v34;
              v36 = v34[1];
              v37 = HIBYTE(v36) & 0xF;
              if ((v36 & 0x2000000000000000) == 0)
              {
                v37 = v35 & 0xFFFFFFFFFFFFLL;
              }

              if (!v37 || (, sub_1B964C700(), result = , !v2))
              {
                v38 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
                swift_beginAccess();
                if (*(a1 + v38) == 0.0 || (result = sub_1B964C6F0(), !v2))
                {
                  v39 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
                  swift_beginAccess();
                  v40 = *v39;
                  v41 = v39[1];
                  v42 = HIBYTE(v41) & 0xF;
                  if ((v41 & 0x2000000000000000) == 0)
                  {
                    v42 = v40 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v42 || (, sub_1B964C700(), result = , !v2))
                  {
                    v43 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
                    result = swift_beginAccess();
                    v44 = *v43;
                    v45 = v43[1];
                    v46 = HIBYTE(v45) & 0xF;
                    if ((v45 & 0x2000000000000000) == 0)
                    {
                      v46 = v44 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v46)
                    {

                      sub_1B964C700();
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

  return result;
}

uint64_t sub_1B8E4D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = *(v7(0) + 20);
  if (*(v5 + v8) != *(v4 + v8))
  {
    v9 = *(v5 + v8);

    v10 = OUTLINED_FUNCTION_177_1();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v12, v13);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B8E4D1E4(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for Kgqsapipb_IntentFeatures(0);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC1E0, &qword_1B965C6F0);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_185();
  v84 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD68, &unk_1B965A670);
  v16 = OUTLINED_FUNCTION_183(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_181_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v82 - v20;
  OUTLINED_FUNCTION_521();
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  v24 = v23 == *(a2 + 16) && v22 == *(a2 + 24);
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  OUTLINED_FUNCTION_521();
  v27 = v25 == *(a2 + 32) && v26 == *(a2 + 40);
  if (!v27 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v28 = *(a1 + 48);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v28, *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v29 = *(a1 + 56);
  v30 = *(a1 + 64);
  OUTLINED_FUNCTION_521();
  v31 = v29 == *(a2 + 56) && v30 == *(a2 + 64);
  if (!v31 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v32 = *(a1 + 72);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v32, *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v33 = *(a1 + 80);
  v34 = *(a1 + 88);
  OUTLINED_FUNCTION_521();
  v35 = v33 == *(a2 + 80) && v34 == *(a2 + 88);
  if (!v35 && (OUTLINED_FUNCTION_209_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v36 = *(a1 + 96);
  OUTLINED_FUNCTION_521();
  if (v36 != *(a2 + 96))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v37 = *(a1 + 104);
  OUTLINED_FUNCTION_521();
  v38 = *(a2 + 104);

  sub_1B8D88B28();
  v83 = v39;

  if ((v83 & 1) == 0)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_521();
  v40 = *(a1 + 112);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v40, *(a2 + 112)) & 1) == 0)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v41 = *(v10 + 48);
  v42 = v84;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v42, 1, v6);
  if (!v24)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v42 + v41, 1, v6);
    if (!v43)
    {
      sub_1B8E46784();
      v44 = static Kgqsapipb_IntentFeatures.== infix(_:_:)(v3, v2);
      OUTLINED_FUNCTION_186();
      sub_1B8E46834();
      sub_1B8D9207C(v21, &qword_1EBABBD68, &unk_1B965A670);
      OUTLINED_FUNCTION_275();
      sub_1B8E46834();
      sub_1B8D9207C(v42, &qword_1EBABBD68, &unk_1B965A670);
      if (v44)
      {
        goto LABEL_36;
      }

LABEL_62:

      return 0;
    }

    sub_1B8D9207C(v21, &qword_1EBABBD68, &unk_1B965A670);
    sub_1B8E46834();
LABEL_34:
    sub_1B8D9207C(v42, &qword_1EBABC1E0, &qword_1B965C6F0);
    goto LABEL_62;
  }

  sub_1B8D9207C(v21, &qword_1EBABBD68, &unk_1B965A670);
  OUTLINED_FUNCTION_178(v42 + v41, 1, v6);
  if (!v24)
  {
    goto LABEL_34;
  }

  sub_1B8D9207C(v42, &qword_1EBABBD68, &unk_1B965A670);
LABEL_36:
  v45 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  OUTLINED_FUNCTION_521();
  v46 = *(a1 + v45);
  v47 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__canonResultID;
  OUTLINED_FUNCTION_521();
  if (v46 != *(a2 + v47))
  {
    goto LABEL_62;
  }

  v48 = a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality;
  OUTLINED_FUNCTION_521();
  v49 = *v48;
  v50 = *(v48 + 8);
  v51 = a2 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__quality;
  OUTLINED_FUNCTION_521();
  v52 = *(v51 + 8);
  if (!sub_1B8D92198(v49, v50, *v51))
  {
    goto LABEL_62;
  }

  v53 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
  OUTLINED_FUNCTION_521();
  v54 = *(a1 + v53);
  v55 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__productionRules;
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v54, *(a2 + v55)) & 1) == 0)
  {
    goto LABEL_62;
  }

  v56 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
  OUTLINED_FUNCTION_521();
  LODWORD(v56) = *(a1 + v56);
  v57 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__referEntityIdx;
  OUTLINED_FUNCTION_521();
  if (v56 != *(a2 + v57))
  {
    goto LABEL_62;
  }

  v58 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedContext);
  OUTLINED_FUNCTION_521();
  v59 = *v58;
  v60 = v58[1];
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_219_1();
  if (!v24 || v60 != v61)
  {
    OUTLINED_FUNCTION_177_1();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v63 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__encodedIntentProto);
  OUTLINED_FUNCTION_521();
  v64 = *v63;
  v65 = v63[1];
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_219_1();
  if (!v24 || v65 != v66)
  {
    OUTLINED_FUNCTION_177_1();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v68 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  OUTLINED_FUNCTION_521();
  v69 = *(a1 + v68);
  v70 = OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__maxEntityScore;
  OUTLINED_FUNCTION_521();
  if (v69 != *(a2 + v70))
  {
    goto LABEL_62;
  }

  v71 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__algorithm);
  OUTLINED_FUNCTION_521();
  v72 = *v71;
  v73 = v71[1];
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_219_1();
  if (!v24 || v73 != v74)
  {
    OUTLINED_FUNCTION_177_1();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v76 = (a1 + OBJC_IVAR____TtCV10PegasusAPI19Kgqsapipb_DebugInfoP33_23D6278756D1E310BBF8DFE8374EBB5013_StorageClass__intentName);
  OUTLINED_FUNCTION_521();
  v77 = *v76;
  v78 = v76[1];
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_219_1();
  if (!v24 || v78 != v79)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B964C9F0();
    OUTLINED_FUNCTION_225_1();

    return (v77 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1B8E4DA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC170, type metadata accessor for Kgqsapipb_DebugInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4DA84(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBDF0, type metadata accessor for Kgqsapipb_DebugInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4DAF4()
{
  sub_1B8CD1D90(&qword_1EBABBDF0, type metadata accessor for Kgqsapipb_DebugInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4DB74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBC70);
  __swift_project_value_buffer(v0, qword_1EBABBC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BAD";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MEDIUM";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GOOD";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E4DDE4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBC88);
  __swift_project_value_buffer(v0, qword_1EBABBC88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intent";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "canonResultId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "queryId";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGDebugContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }
}

uint64_t Kgqsapipb_KGDebugContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!v1[2] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
    {
      v4 = v1[3];
      v5 = v1[4];
      OUTLINED_FUNCTION_1();
      if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        v7 = *(type metadata accessor for Kgqsapipb_KGDebugContext(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_KGDebugContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (v3[2] != v2[2])
  {
    return 0;
  }

  v7 = v3[3] == v2[3] && v3[4] == v2[4];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Kgqsapipb_KGDebugContext(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E4E284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC168, type metadata accessor for Kgqsapipb_KGDebugContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4E304(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBFE0, type metadata accessor for Kgqsapipb_KGDebugContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4E374()
{
  sub_1B8CD1D90(&qword_1EBABBFE0, type metadata accessor for Kgqsapipb_KGDebugContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4E424(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D050;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v16);
  (*(v17 + 104))(v14, v15);
  return sub_1B964C760();
}

void Kgqsapipb_DebugInfoContainer.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8E4E644();
    }
  }
}

void sub_1B8E4E644()
{
  OUTLINED_FUNCTION_273_0();
  v0(0);
  v1 = OUTLINED_FUNCTION_128();
  sub_1B8CD1D90(v1, v2);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Kgqsapipb_DebugInfoContainer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Kgqsapipb_DebugInfo(0), OUTLINED_FUNCTION_129_1(), sub_1B8CD1D90(v2, v3), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), result = sub_1B964C730(), !v1))
  {
    v5 = *(type metadata accessor for Kgqsapipb_DebugInfoContainer(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_DebugInfoContainer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  sub_1B8D7AE40();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Kgqsapipb_DebugInfoContainer(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E4E898(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC160, type metadata accessor for Kgqsapipb_DebugInfoContainer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4E918(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBFF8, type metadata accessor for Kgqsapipb_DebugInfoContainer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4E988()
{
  sub_1B8CD1D90(&qword_1EBABBFF8, type metadata accessor for Kgqsapipb_DebugInfoContainer);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4EA14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBCB8);
  __swift_project_value_buffer(v0, qword_1EBABBCB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "hasMapCoordinates";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "latitude";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "longitude";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isAnyDisputed";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "slideInTitle";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "hasInstantAnswer";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "answerType";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "isSiriJrSnippetPresent";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_RenderFeatures.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 6:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B8E4EE4C();
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_RenderFeatures.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v1 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v0 = v2) == 0))
  {
    if (*(v3 + 4) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), (v0 = v2) == 0))
    {
      if (*(v3 + 8) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), (v0 = v2) == 0))
      {
        if (*(v3 + 12) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v0 = v2) == 0))
        {
          v5 = *(v3 + 16);
          v6 = *(v3 + 24);
          OUTLINED_FUNCTION_1();
          if (!v7 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), (v0 = v2) == 0))
          {
            if (*(v3 + 32) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v0 = v2) == 0))
            {
              if (!*(v3 + 40) || (v9 = *(v3 + 40), v10 = *(v3 + 48), sub_1B8E5090C(), v2 = v0, result = sub_1B964C680(), !v0))
              {
                if (*(v3 + 49) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v2))
                {
                  v8 = *(type metadata accessor for Kgqsapipb_RenderFeatures(0) + 48);
                  return OUTLINED_FUNCTION_8_1();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_RenderFeatures.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 32) != *(v2 + 32))
  {
    return 0;
  }

  v9 = *(v2 + 48);
  if (!sub_1B8D92198(*(v3 + 40), *(v3 + 48), *(v2 + 40)) || *(v3 + 49) != *(v2 + 49))
  {
    return 0;
  }

  v11 = *(type metadata accessor for Kgqsapipb_RenderFeatures(0) + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E4F1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC158, type metadata accessor for Kgqsapipb_RenderFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4F274(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABC010, type metadata accessor for Kgqsapipb_RenderFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4F2E4()
{
  sub_1B8CD1D90(&qword_1EBABC010, type metadata accessor for Kgqsapipb_RenderFeatures);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4F364()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBCD0);
  __swift_project_value_buffer(v0, qword_1EBABBCD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FOOD_NUTRITION_GENERIC_FACT";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FOOD_NUTRITION_SPECIFIC_NUTRIENT";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DICTIONARY";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ELECTION";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E4F624()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBCE8);
  __swift_project_value_buffer(v0, qword_1EBABBCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localizedName";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "placetype";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "containers";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_GeoEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8E4F91C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E4F91C()
{
  type metadata accessor for Kgqsapipb_GeoEntity(0);
  sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_GeoEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        if (!*(v1[6] + 16) || (type metadata accessor for Kgqsapipb_GeoEntity(0), sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), result = sub_1B964C730(), !v0))
        {
          v10 = *(type metadata accessor for Kgqsapipb_GeoEntity(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_GeoEntity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[6];
  v12 = v2[6];
  sub_1B8D7D760();
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for Kgqsapipb_GeoEntity(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v15, v16);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E4FC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC150, type metadata accessor for Kgqsapipb_GeoEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4FCBC(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4FD2C()
{
  sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4FDC4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBD00);
  __swift_project_value_buffer(v0, qword_1EBABBD00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B9656CE0;
  v4 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v4 = "audio_bytes";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v27 + v3 + v2 + v1[14];
  *(v27 + v3 + v2) = 2;
  *v8 = "sample_rate";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v27 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "format_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v27 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "format_flags";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v27 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "bytes_per_packet";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v27 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "frames_per_packet";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v27 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "bytes_per_frame";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  v19 = (v27 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "channels_per_frame";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v27 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "bits_per_channel";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v7();
  v23 = (v27 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "reserved";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v25 = *MEMORY[0x1E69AADC8];
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGSound.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_KGSound.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (sub_1B8D99EA8(*v0, *(v2 + 8)) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6F0(), !v1))
    {
      if (!*(v2 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        if (!*(v2 + 28) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
        {
          if (!*(v2 + 32) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
          {
            if (!*(v2 + 36) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
            {
              if (!*(v2 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
              {
                if (!*(v2 + 44) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                {
                  if (!*(v2 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                  {
                    if (!*(v2 + 52) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                    {
                      v4 = *(type metadata accessor for Kgqsapipb_KGSound(0) + 56);
                      return OUTLINED_FUNCTION_8_1();
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

  return result;
}

uint64_t static Kgqsapipb_KGSound.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((MEMORY[0x1BFADC060](*v2, *(v1 + 8), *v0, *(v0 + 8)) & 1) == 0 || *(v1 + 16) != *(v0 + 16) || *(v1 + 24) != *(v0 + 24) || *(v1 + 28) != *(v0 + 28) || *(v1 + 32) != *(v0 + 32) || *(v1 + 36) != *(v0 + 36) || *(v1 + 40) != *(v0 + 40) || *(v1 + 44) != *(v0 + 44) || *(v1 + 48) != *(v0 + 48) || *(v1 + 52) != *(v0 + 52))
  {
    return 0;
  }

  v3 = *(type metadata accessor for Kgqsapipb_KGSound(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  sub_1B8CD1D90(v4, v5);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E50560()
{
  OUTLINED_FUNCTION_145_2();
  sub_1B964CA70();
  v0(0);
  v1 = OUTLINED_FUNCTION_461();
  sub_1B8CD1D90(v1, v2);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E5063C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC148, type metadata accessor for Kgqsapipb_KGSound);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E506BC(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABC038, type metadata accessor for Kgqsapipb_KGSound);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E5072C()
{
  sub_1B8CD1D90(&qword_1EBABC038, type metadata accessor for Kgqsapipb_KGSound);

  return sub_1B964C5D0();
}

unint64_t sub_1B8E5090C()
{
  result = qword_1EBABBE20;
  if (!qword_1EBABBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBE20);
  }

  return result;
}

unint64_t sub_1B8E50964()
{
  result = qword_1EBABBE48;
  if (!qword_1EBABBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBE48);
  }

  return result;
}

unint64_t sub_1B8E509BC()
{
  result = qword_1EBABBE50;
  if (!qword_1EBABBE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBE50);
  }

  return result;
}

unint64_t sub_1B8E50A14()
{
  result = qword_1EBABBE58;
  if (!qword_1EBABBE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBE58);
  }

  return result;
}

unint64_t sub_1B8E50A6C()
{
  result = qword_1EBABBE60;
  if (!qword_1EBABBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBE60);
  }

  return result;
}

unint64_t sub_1B8E50AC4()
{
  result = qword_1EBABBE68;
  if (!qword_1EBABBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBE68);
  }

  return result;
}

unint64_t sub_1B8E50B1C()
{
  result = qword_1EBABBE70;
  if (!qword_1EBABBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBE70);
  }

  return result;
}

unint64_t sub_1B8E50BD4()
{
  result = qword_1EBABBE98;
  if (!qword_1EBABBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBE98);
  }

  return result;
}

unint64_t sub_1B8E50C2C()
{
  result = qword_1EBABBEA0;
  if (!qword_1EBABBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBEA0);
  }

  return result;
}

unint64_t sub_1B8E50C84()
{
  result = qword_1EBABBEA8;
  if (!qword_1EBABBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBEA8);
  }

  return result;
}

unint64_t sub_1B8E50D0C()
{
  result = qword_1EBABBEC0;
  if (!qword_1EBABBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBEC0);
  }

  return result;
}

unint64_t sub_1B8E50D64()
{
  result = qword_1EBABBEC8;
  if (!qword_1EBABBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBEC8);
  }

  return result;
}

unint64_t sub_1B8E50DBC()
{
  result = qword_1EBABBED0;
  if (!qword_1EBABBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBED0);
  }

  return result;
}

unint64_t sub_1B8E50E44()
{
  result = qword_1EBABBEE8;
  if (!qword_1EBABBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBEE8);
  }

  return result;
}

unint64_t sub_1B8E50E9C()
{
  result = qword_1EBABBEF0;
  if (!qword_1EBABBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBEF0);
  }

  return result;
}

unint64_t sub_1B8E50EF4()
{
  result = qword_1EBABBEF8;
  if (!qword_1EBABBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABBEF8);
  }

  return result;
}

void sub_1B8E52080()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8E52230(319, &qword_1EBABC058, type metadata accessor for Kgqsapipb_Span, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E5216C()
{
  sub_1B8E52230(319, &qword_1EBABC060, type metadata accessor for Kgqsapipb_ArgInfo, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E52230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B8E52378()
{
  sub_1B8E52230(319, &qword_1EBABC088, type metadata accessor for Kgqsapipb_Claim, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B8E5252C();
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B8E52230(319, &qword_1EBABC098, type metadata accessor for Kgqsapipb_Entity, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B8E52230(319, &qword_1EBABC0A0, type metadata accessor for Kgqsapipb_Thing, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1B8E52230(319, &qword_1EBABC0A8, type metadata accessor for Kgqsapipb_EntityFeatures, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B8E5252C()
{
  if (!qword_1EBABC090)
  {
    type metadata accessor for Kgqsapipb_AttributeStore(255);
    v0 = sub_1B964C7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBABC090);
    }
  }
}

void sub_1B8E525CC()
{
  sub_1B8E52230(319, &qword_1EBABC088, type metadata accessor for Kgqsapipb_Claim, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8E52230(319, &qword_1EBABC0C0, type metadata accessor for Kgqsapipb_DebugInfo, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8E526FC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_107_0();
    return 0;
  }

  return result;
}

void sub_1B8E52778()
{
  sub_1B8E52230(319, &qword_1EBABB938, type metadata accessor for Kgqsapipb_OntologyPath, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_149Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_231();

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v12);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8E52928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_139Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_140Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8E52A90()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E52B44()
{
  sub_1B8E52230(319, &qword_1EBABC118, type metadata accessor for Kgqsapipb_DebugInfo, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8E52C20()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E52CFC()
{
  sub_1B8E52230(319, &qword_1EBABC130, type metadata accessor for Kgqsapipb_GeoEntity, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8E52DF0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E52E9C()
{
  sub_1B8E52230(319, &qword_1ED9CCF40, type metadata accessor for Kgqsapipb_QueryFeatures, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_1B8E52230(319, &qword_1ED9CC3D0, type metadata accessor for Kgqsapipb_DisplayableMetadata, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_1B8E52230(319, &qword_1ED9CCFA0, type metadata accessor for Kgqsapipb_IntentArgInfo, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_1B8E52230(319, &qword_1ED9CCC80, type metadata accessor for Kgqsapipb_RenderFeatures, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_1B8E52230(319, &qword_1ED9CC3E8, type metadata accessor for Electionspb_ElectionsResponse, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_1B8E52230(319, &qword_1ED9CD910, type metadata accessor for Nlgpb_NlgDialog, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_1B8E52230(319, &qword_1ED9CC9B0, type metadata accessor for Kgqsapipb_KGEventLogMessage, MEMORY[0x1E69E6720]);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B8E53240()
{
  sub_1B8E52230(319, &qword_1ED9CCC98, type metadata accessor for Kgqsapipb_IntentFeatures, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B8E5335C()
{
  result = qword_1EBABC1C0;
  if (!qword_1EBABC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABC1C0);
  }

  return result;
}

unint64_t sub_1B8E533B0()
{
  result = qword_1EBABC1C8;
  if (!qword_1EBABC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABC1C8);
  }

  return result;
}

unint64_t sub_1B8E53404()
{
  result = qword_1EBABC1D0;
  if (!qword_1EBABC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABC1D0);
  }

  return result;
}

unint64_t sub_1B8E53458()
{
  result = qword_1EBABC1D8;
  if (!qword_1EBABC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABC1D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_15()
{
  result = *v0;
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Kgqsapipb_DebugInfo(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_29_5()
{
  result = type metadata accessor for Kgqsapipb_KGDBResponse(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_32_6()
{
  result = type metadata accessor for Kgqsapipb_KGDBResponse(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_3()
{
  result = type metadata accessor for Kgqsapipb_DebugInfo(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_1()
{
  v0 = type metadata accessor for Kgqsapipb_DebugInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_2(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 64) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_1()
{
  v0 = type metadata accessor for Kgqsapipb_KGDBResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56_2(uint64_t a1)
{
  result = type metadata accessor for Kgqsapipb_KGDBResponse(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_57_2()
{
  *(v1 + v4) = v0;
  __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 72) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_98_3()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_115_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_137_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_141_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_144_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_145_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_148_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_167_2(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Kgqsapipb_KGDBResponse(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_177_2()
{

  return sub_1B8E46784();
}

uint64_t OUTLINED_FUNCTION_180_2(uint64_t a1)
{

  return sub_1B8D9207C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_185_1()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  return 0;
}

uint64_t OUTLINED_FUNCTION_190_2()
{

  return sub_1B8E46784();
}

uint64_t OUTLINED_FUNCTION_206_1()
{
  v2 = *(*(v0 + 64) + *(v0 + 72));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_207_1()
{
  v2 = *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_209_1()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_216_1(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_217_0()
{

  return sub_1B8E46834();
}

uint64_t OUTLINED_FUNCTION_220_1()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_234_1()
{

  return sub_1B8E46834();
}

uint64_t OUTLINED_FUNCTION_235_1()
{

  return sub_1B8D92024();
}

uint64_t Kgqsapipb_PrimaryName.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_PrimaryName.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Kgqsapipb_PrimaryName.locale.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_PrimaryName.locale.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Kgqsapipb_PrimaryName.description_p.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_PrimaryName.description_p.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Kgqsapipb_PrimaryName.shortAbstract.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_PrimaryName.shortAbstract.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Kgqsapipb_PrimaryName.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_PrimaryName(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_PrimaryName.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v3 = v1 + *(type metadata accessor for Kgqsapipb_PrimaryName(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.valueLocales.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.qualifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.unknownFields.getter()
{
  v0 = *(type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0) + 36);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(v2) + 36);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_ClaimValues(0);
  *(v1 + 48) = sub_1B964C7B0();
  v3 = v1 + *(type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_ClaimValues.localeBasedClaimValues.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Kgqsapipb_ClaimValues.unknownFields.getter()
{
  v0 = *(type metadata accessor for Kgqsapipb_ClaimValues(0) + 20);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Kgqsapipb_ClaimValues.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_ClaimValues(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Kgqsapipb_ClaimValues.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_ClaimValues(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_ClaimValues.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Kgqsapipb_ClaimValues(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_RenderLocalization.primaryname.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Kgqsapipb_RenderLocalization.propToClaimValuesMap.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1B8E545B4(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t sub_1B8E54660()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 32);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Kgqsapipb_RenderLocalization.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_RenderLocalization(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_RenderLocalization.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_ClaimValues(0);
  v1[3] = sub_1B964C7B0();
  v1[4] = 0;
  v2 = v1 + *(type metadata accessor for Kgqsapipb_RenderLocalization(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E54788()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC230);
  __swift_project_value_buffer(v0, qword_1EBABC230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "short_abstract";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_PrimaryName.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_PrimaryName.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v13 = v2[6];
        v14 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v16 = *(type metadata accessor for Kgqsapipb_PrimaryName(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_PrimaryName.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Kgqsapipb_PrimaryName(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_19();
  sub_1B8CD1DD8(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E54CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1DD8(&qword_1EBABC370, type metadata accessor for Kgqsapipb_PrimaryName);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E54D44(uint64_t a1)
{
  v2 = sub_1B8CD1DD8(&qword_1EBABC2B8, type metadata accessor for Kgqsapipb_PrimaryName);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E54DB4()
{
  sub_1B8CD1DD8(&qword_1EBABC2B8, type metadata accessor for Kgqsapipb_PrimaryName);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E54E50()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC248);
  __swift_project_value_buffer(v0, qword_1EBABC248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "locale";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value_type_code";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "value_locales";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "qualifiers";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8E551B4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E551B4()
{
  sub_1B964C280();
  type metadata accessor for Kgqsapipb_ClaimValues(0);
  sub_1B8CD1DD8(&qword_1EBABC298, type metadata accessor for Kgqsapipb_ClaimValues);
  sub_1B8CD1DD8(&qword_1EBABC2A0, type metadata accessor for Kgqsapipb_ClaimValues);
  return sub_1B964C3A0();
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = *v0;
  v5 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v8 = *(v2 + 16);
    v9 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v10 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      if (!*(v2 + 32) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6C0(), !v1))
      {
        if (!*(*(v2 + 40) + 16) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6E0(), !v1))
        {
          if (!*(*(v2 + 48) + 16) || (sub_1B964C280(), type metadata accessor for Kgqsapipb_ClaimValues(0), OUTLINED_FUNCTION_11_11(), sub_1B8CD1DD8(v11, v3), OUTLINED_FUNCTION_13_6(&qword_1EBABC2A0), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v1))
          {
            v12 = *(type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_LocaleBasedClaimValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 32) != *(v2 + 32))
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v3 + 40), *(v2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(v3 + 48);
  v9 = *(v2 + 48);
  sub_1B8DB0EA4();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_19();
  sub_1B8CD1DD8(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E555A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1DD8(&qword_1EBABC368, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E55620(uint64_t a1)
{
  v2 = sub_1B8CD1DD8(&qword_1EBABC2B0, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E55690()
{
  sub_1B8CD1DD8(&qword_1EBABC2B0, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E5571C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC260);
  __swift_project_value_buffer(v0, qword_1EBABC260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "locale_based_claim_values";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Kgqsapipb_ClaimValues.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8E558F4();
    }
  }

  return result;
}

uint64_t sub_1B8E558F4()
{
  type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0);
  sub_1B8CD1DD8(&qword_1EBABC2B0, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_ClaimValues.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0), sub_1B8CD1DD8(&qword_1EBABC2B0, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
  {
    v3 = *(type metadata accessor for Kgqsapipb_ClaimValues(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_ClaimValues.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1B8D78208();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Kgqsapipb_ClaimValues(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_19();
  sub_1B8CD1DD8(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E55B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1DD8(&qword_1EBABC360, type metadata accessor for Kgqsapipb_ClaimValues);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E55C04(uint64_t a1)
{
  v2 = sub_1B8CD1DD8(&qword_1EBABC298, type metadata accessor for Kgqsapipb_ClaimValues);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E55C74()
{
  sub_1B8CD1DD8(&qword_1EBABC298, type metadata accessor for Kgqsapipb_ClaimValues);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E55D10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC278);
  __swift_project_value_buffer(v0, qword_1EBABC278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primaryname";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "prop_to_claim_values_map";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "updated_timestamp";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_RenderLocalization.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8E56024();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8E560C4();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E56024()
{
  type metadata accessor for Kgqsapipb_PrimaryName(0);
  sub_1B8CD1DD8(&qword_1EBABC2B8, type metadata accessor for Kgqsapipb_PrimaryName);
  return sub_1B964C570();
}

uint64_t sub_1B8E560C4()
{
  sub_1B964C280();
  type metadata accessor for Kgqsapipb_ClaimValues(0);
  sub_1B8CD1DD8(&qword_1EBABC298, type metadata accessor for Kgqsapipb_ClaimValues);
  sub_1B8CD1DD8(&qword_1EBABC2A0, type metadata accessor for Kgqsapipb_ClaimValues);
  return sub_1B964C3A0();
}

uint64_t Kgqsapipb_RenderLocalization.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = *v0;
  v5 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    if (!*(v2[2] + 16) || (type metadata accessor for Kgqsapipb_PrimaryName(0), sub_1B8CD1DD8(&qword_1EBABC2B8, type metadata accessor for Kgqsapipb_PrimaryName), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
    {
      if (!*(v2[3] + 16) || (sub_1B964C280(), type metadata accessor for Kgqsapipb_ClaimValues(0), OUTLINED_FUNCTION_11_11(), sub_1B8CD1DD8(v8, v3), OUTLINED_FUNCTION_13_6(&qword_1EBABC2A0), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v1))
      {
        if (!v2[4] || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6D0(), !v1))
        {
          v9 = *(type metadata accessor for Kgqsapipb_RenderLocalization(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_RenderLocalization.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2];
  v8 = v2[2];
  sub_1B8D7AC54();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v3[3];
  v11 = v2[3];
  sub_1B8DB0EA4();
  if ((v12 & 1) == 0 || v3[4] != v2[4])
  {
    return 0;
  }

  v13 = *(type metadata accessor for Kgqsapipb_RenderLocalization(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_19();
  sub_1B8CD1DD8(v14, v15);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E56464(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD1DD8(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E56548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1DD8(&qword_1EBABC358, type metadata accessor for Kgqsapipb_RenderLocalization);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E565C8(uint64_t a1)
{
  v2 = sub_1B8CD1DD8(&qword_1EBABC300, type metadata accessor for Kgqsapipb_RenderLocalization);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E56638()
{
  sub_1B8CD1DD8(&qword_1EBABC300, type metadata accessor for Kgqsapipb_RenderLocalization);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E56B60()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E56C08()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B8E56CC4();
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8E56CC4()
{
  if (!qword_1EBABC330)
  {
    type metadata accessor for Kgqsapipb_ClaimValues(255);
    v0 = sub_1B964C7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBABC330);
    }
  }
}

void sub_1B8E56D54()
{
  sub_1B8E56EEC(319, &qword_1EBABC348, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E56E1C()
{
  sub_1B8E56EEC(319, &qword_1EBABC350, type metadata accessor for Kgqsapipb_PrimaryName);
  if (v0 <= 0x3F)
  {
    sub_1B8E56CC4();
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8E56EEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C910();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_13_6(unint64_t *a1)
{

  return sub_1B8CD1DD8(a1, v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  if (qword_1EBAB6310 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABC398;
}

uint64_t Kgqsapipb_KGEventLogMessage.provider.getter()
{
  OUTLINED_FUNCTION_8_11();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E570A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGEventLogMessage.provider.setter();
}

void Kgqsapipb_KGEventLogMessage.provider.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_30_9();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E5B2FC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.provider.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_5(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E571B0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v4)
  {
    v5 = *(v1 + 64);

    OUTLINED_FUNCTION_461();
    Kgqsapipb_KGEventLogMessage.provider.setter();
    v6 = *(v1 + 56);
  }

  else
  {
    v7 = *(v1 + 72);
    v8 = *(v1 + 64);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 72);
      v13 = *(v1 + 64);
      OUTLINED_FUNCTION_15_8();
      v14 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B8E5B2FC(v14);
      OUTLINED_FUNCTION_168(v15);
    }

    OUTLINED_FUNCTION_18();
    v16 = *(v11 + 24);
    *(v11 + 16) = v3;
    *(v11 + 24) = v2;
  }

  free(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.typeOfSpeakableAnswer.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_11();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4();
  v6 = *(v4 + 40);
  *a1 = *(v4 + 32);
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B8E572A4@<X0>(uint64_t a1@<X8>)
{
  result = Kgqsapipb_KGEventLogMessage.typeOfSpeakableAnswer.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_1B8E572E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  Kgqsapipb_KGEventLogMessage.typeOfSpeakableAnswer.setter();
}

void Kgqsapipb_KGEventLogMessage.typeOfSpeakableAnswer.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_30_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E5B2FC(v8);
    *(v2 + v1) = v7;
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.typeOfSpeakableAnswer.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_8_11();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 40);
  v3[9] = *(v5 + 32);
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E5740C(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 72);
  v4 = *(v1 + 84);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v1 + 84);
    v11 = *(v1 + 88);
    OUTLINED_FUNCTION_15_8();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E5B2FC(v12);
    *(v11 + v10) = v9;
  }

  OUTLINED_FUNCTION_18();
  *(v9 + 32) = v3;
  *(v9 + 40) = v6;

  free(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.speakableAnswer.getter()
{
  OUTLINED_FUNCTION_8_11();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E57500(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGEventLogMessage.speakableAnswer.setter();
}

void Kgqsapipb_KGEventLogMessage.speakableAnswer.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_30_9();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E5B2FC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 56);
  *(v5 + 48) = v2;
  *(v5 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.speakableAnswer.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_5(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E5760C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v4)
  {
    v5 = *(v1 + 64);

    OUTLINED_FUNCTION_461();
    Kgqsapipb_KGEventLogMessage.speakableAnswer.setter();
    v6 = *(v1 + 56);
  }

  else
  {
    v7 = *(v1 + 72);
    v8 = *(v1 + 64);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 72);
      v13 = *(v1 + 64);
      OUTLINED_FUNCTION_15_8();
      v14 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B8E5B2FC(v14);
      OUTLINED_FUNCTION_168(v15);
    }

    OUTLINED_FUNCTION_18();
    v16 = *(v11 + 56);
    *(v11 + 48) = v3;
    *(v11 + 56) = v2;
  }

  free(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.intentArgInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_8_11();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = MEMORY[0x1E69E7CC0];
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBABC4D0, &unk_1B965CDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_11();
    return sub_1B8E5BE30();
  }

  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.intentArgInfo.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_30_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E5B2FC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_7_11();
  sub_1B8E5BE30();
  v10 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Kgqsapipb_KGEventLogMessage.IntentArgInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + *(type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.intentArgInfo.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_8_11();
  v12 = *(v1 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = MEMORY[0x1E69E7CC0];
    v14 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v6, &qword_1EBABC4D0, &unk_1B965CDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_11();
    sub_1B8E5BE30();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E57B04(uint64_t *a1)
{
  v1 = *a1;

  Kgqsapipb_KGEventLogMessage.parentIds.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.parentIds.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8E57BCC(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_11();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4();
  v6 = *(v4 + v5);
}

void sub_1B8E57C10(uint64_t *a1)
{
  v1 = *a1;

  Kgqsapipb_KGEventLogMessage.childIds.setter();
}

void sub_1B8E57C48()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_313();
  v5 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(v4) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E5B2FC(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = *v3;
  OUTLINED_FUNCTION_9_3();
  v12 = *(v8 + v11);
  *(v8 + v11) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.childIds.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E57D50(uint64_t *a1)
{
  v1 = *a1;

  Kgqsapipb_KGEventLogMessage.fbr.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.fbr.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E57E18(uint64_t *a1)
{
  v1 = *a1;

  Kgqsapipb_KGEventLogMessage.valueTypeMapListProto.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.valueTypeMapListProto.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E57EE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGEventLogMessage.entitiesReceivedFromKg.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.entitiesReceivedFromKg.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_6_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8E57FC0(void *a1)
{
  OUTLINED_FUNCTION_8_11();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_288();
}

void sub_1B8E58014(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGEventLogMessage.entitiesSentToKg.setter();
}

void sub_1B8E58060()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = v1;
  OUTLINED_FUNCTION_16();
  v6 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  v7 = *(v1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E5B2FC(v10);
    *(v5 + v6) = v9;
  }

  v11 = (v9 + *v4);
  OUTLINED_FUNCTION_18();
  v12 = v11[1];
  *v11 = v2;
  v11[1] = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.entitiesSentToKg.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_6_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E5817C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGEventLogMessage.lastIntentReceivedFromKg.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.lastIntentReceivedFromKg.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_6_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E5825C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGEventLogMessage.lastIntentSentToKg.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.lastIntentSentToKg.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_6_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E5833C(uint64_t *a1)
{
  v1 = *a1;

  Kgqsapipb_KGEventLogMessage.attributesRecognized.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.attributesRecognized.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.partialResults.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.numberOfResults.getter()
{
  OUTLINED_FUNCTION_8_11();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Kgqsapipb_KGEventLogMessage.numberOfResults.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E5B2FC(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  result = OUTLINED_FUNCTION_9_3();
  *(v7 + v9) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.numberOfResults.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[9] = v1;
  OUTLINED_FUNCTION_8_11();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  OUTLINED_FUNCTION_68_0();
  *(v3 + 20) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E585A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 72);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 72);
    OUTLINED_FUNCTION_15_8();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8E5B2FC(v11);
    OUTLINED_FUNCTION_168(v12);
  }

  v13 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  OUTLINED_FUNCTION_18();
  *(v8 + v13) = v3;

  free(v1);
}

uint64_t sub_1B8E58654(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_11();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4();
  return *(v4 + v5);
}

void sub_1B8E586A0()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_30_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E5B2FC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *v3;
  OUTLINED_FUNCTION_9_3();
  *(v7 + v10) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.grpcapi.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E58770(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    OUTLINED_FUNCTION_15_8();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E5B2FC(v13);
    *(v12 + v11) = v10;
  }

  v14 = *a3;
  OUTLINED_FUNCTION_18();
  *(v10 + v14) = v7;

  free(v4);
}

uint64_t Kgqsapipb_KGEventLogMessage.successful.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.noValueFound.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.someValueFound.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.pireneResult.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E58A2C(uint64_t *a1)
{
  v1 = *a1;

  Kgqsapipb_KGEventLogMessage.newsResults.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.newsResults.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E58AF4(uint64_t *a1)
{
  v1 = *a1;

  Kgqsapipb_KGEventLogMessage.kgDebugList.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.kgDebugList.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E58BB0(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    v7 = v3;
    v8 = *(v1 + 56);

    v7(v9);
    v10 = *(v1 + 48);
  }

  else
  {
    v11 = v2;
    v12 = *(v1 + 64);
    v13 = *(v1 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v1 + 64);
      v18 = *(v1 + 56);
      OUTLINED_FUNCTION_15_8();
      v19 = OUTLINED_FUNCTION_40_0();
      v20 = sub_1B8E5B2FC(v19);
      OUTLINED_FUNCTION_168(v20);
    }

    v21 = *v11;
    OUTLINED_FUNCTION_18();
    v22 = *(v16 + v21);
    *(v16 + v21) = v5;
  }

  free(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.isDisputedResponse.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.nlgDialogInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_8_11();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Nlgpb_NlgDialog();
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_28_5();
    v13 = a1 + *(v11 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBABBD40, &qword_1B965A640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_12();
    return sub_1B8E5BE30();
  }

  return result;
}

uint64_t sub_1B8E58DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  sub_1B8E5BE88();
  return a7(v7);
}

uint64_t Kgqsapipb_KGEventLogMessage.nlgDialogInfo.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_30_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E5B2FC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_11_12();
  sub_1B8E5BE30();
  v10 = type metadata accessor for Nlgpb_NlgDialog();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Kgqsapipb_KGEventLogMessage.nlgDialogInfo.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Nlgpb_NlgDialog();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_8_11();
  v12 = *(v1 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    v14 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v6, &qword_1EBABBD40, &qword_1B965A640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_12();
    sub_1B8E5BE30();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E59110(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8E5BE88();
    a3(v5);
    sub_1B8E5BEE0();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t sub_1B8E591EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  OUTLINED_FUNCTION_8_11();
  v18 = *(v5 + v17);
  v19 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v20 = a4(0);
  OUTLINED_FUNCTION_178(v16, 1, v20);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  sub_1B8D9207C(v16, v6, v4);
  return v22;
}

uint64_t sub_1B8E592F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_16();
  v8 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79();
  v15 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  v16 = *(v4 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v19 = OUTLINED_FUNCTION_40_0();
    *(v8 + v15) = sub_1B8E5B2FC(v19);
  }

  v20 = a3(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v20);
  v21 = *a4;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void sub_1B8E593F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGEventLogMessage.catID.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.catID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_6_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.isWebExtractedFact.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

double Kgqsapipb_KGEventLogMessage.eventVersion.getter()
{
  OUTLINED_FUNCTION_8_11();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Kgqsapipb_KGEventLogMessage.eventVersion.setter(double a1)
{
  v3 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v6 = sub_1B8E5B2FC(v6);
    *(v1 + v3) = v6;
  }

  v7 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  result = OUTLINED_FUNCTION_9_3();
  *(v6 + v7) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.eventVersion.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_8_11();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  OUTLINED_FUNCTION_68_0();
  v3[9] = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E59684(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 72);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 88);
    v10 = *(v1 + 80);
    OUTLINED_FUNCTION_15_8();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E5B2FC(v11);
    *(v10 + v9) = v8;
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  OUTLINED_FUNCTION_18();
  *(v8 + v12) = v3;

  free(v1);
}

void sub_1B8E59740(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_KGEventLogMessage.eventType.setter();
}

uint64_t Kgqsapipb_KGEventLogMessage.eventType.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_6_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E59814(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = v5;
    v8 = *(v1 + 64);

    v9 = OUTLINED_FUNCTION_461();
    v7(v9);
    v10 = *(v1 + 56);
  }

  else
  {
    v11 = v4;
    v12 = *(v1 + 72);
    v13 = *(v1 + 64);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v1 + 72);
      v18 = *(v1 + 64);
      OUTLINED_FUNCTION_15_8();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = sub_1B8E5B2FC(v19);
      *(v18 + v17) = v16;
    }

    v20 = (v16 + *v11);
    OUTLINED_FUNCTION_18();
    v21 = v20[1];
    *v20 = v3;
    v20[1] = v2;
  }

  free(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Kgqsapipb_KGEventLogMessage.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

unint64_t Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xD;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8E599F4@<X0>(uint64_t *a1@<X8>)
{
  result = Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E59A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E63208();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Kgqsapipb_KGEventLogMessage.ArgInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.IntentArgInfo.args.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B8E59BC4()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8E59C4C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Kgqsapipb_KGEventLogMessage.IntentArgInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0);
  *(v1 + 16) = sub_1B964C7B0();
  v2 = v1 + *(type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.description_p.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.description_p.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.source.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.source.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.url.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.punchoutUri.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.punchoutUri.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_28_5();
  *(a1 + 64) = 0;
  *(a1 + 72) = v2;
  v3 = a1 + *(type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.messages.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.pattern.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.pattern.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.dbQueryPattern.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.queryEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(v0) + 52);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(v0) + 52);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(v0) + 52);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E5A72C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v4 = v1 + *(v3(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_28_5();
  v2 = MEMORY[0x1E69E7CC0];
  a1[8] = 0;
  a1[9] = v3;
  a1[10] = v2;
  a1[11] = 0;
  a1[12] = v3;
  a1[13] = v2;
  a1[14] = v2;
  v4 = a1 + *(type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(0) + 52);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_18();
  off_1EBABC378 = a1;
}

uint64_t (*static Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8E5A894@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E5A8D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC380);
  __swift_project_value_buffer(v0, qword_1EBABC380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1B965CDB0;
  v4 = v62 + v3 + v1[14];
  *(v62 + v3) = 1;
  *v4 = "provider";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v62 + v3 + v2 + v1[14];
  *(v62 + v3 + v2) = 2;
  *v8 = "typeOfSpeakableAnswer";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v62 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "speakableAnswer";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v62 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "intentArgInfo";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v62 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "parentIds";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v62 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "childIds";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v62 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "fbr";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v7();
  v19 = (v62 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "valueTypeMapListProto";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v62 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "entitiesReceivedFromKG";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v7();
  v23 = (v62 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "entitiesSentToKG";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v62 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "lastIntentReceivedFromKG";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v62 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "lastIntentSentToKG";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v62 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "attributesRecognized";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v7();
  v31 = (v62 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "partialResults";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v62 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "numberOfResults";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v62 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "grpcapi";
  *(v36 + 1) = 7;
  v36[16] = 2;
  v7();
  v37 = (v62 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "successful";
  *(v38 + 1) = 10;
  v38[16] = 2;
  v7();
  v39 = (v62 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "noValueFound";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v62 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "someValueFound";
  *(v42 + 1) = 14;
  v42[16] = 2;
  v7();
  v43 = (v62 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "pireneResult";
  *(v44 + 1) = 12;
  v44[16] = 2;
  v7();
  v45 = (v62 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "newsResults";
  *(v46 + 1) = 11;
  v46[16] = 2;
  v7();
  v47 = (v62 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "kgDebugList";
  *(v48 + 1) = 11;
  v48[16] = 2;
  v7();
  v49 = (v62 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "isDisputedResponse";
  *(v50 + 1) = 18;
  v50[16] = 2;
  v7();
  v51 = (v62 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "nlgDialogInfo";
  *(v52 + 1) = 13;
  v52[16] = 2;
  v7();
  v53 = (v62 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "catID";
  *(v54 + 1) = 5;
  v54[16] = 2;
  v7();
  v55 = (v62 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "isWebExtractedFact";
  *(v56 + 1) = 18;
  v56[16] = 2;
  v7();
  v57 = (v62 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 49;
  *v58 = "eventVersion";
  *(v58 + 1) = 12;
  v58[16] = 2;
  v7();
  v59 = (v62 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 50;
  *v60 = "eventType";
  *(v60 + 1) = 9;
  v60[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E5B0F0()
{
  OUTLINED_FUNCTION_15_8();
  result = sub_1B8E5B140();
  qword_1EBABC398 = result;
  return result;
}

uint64_t sub_1B8E5B140()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo;
  v2 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto) = v3;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse) = 0;
  v8 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo;
  v9 = type metadata accessor for Nlgpb_NlgDialog();
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion) = 0;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B8E5B2FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v129 = v106 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v106[1] = v106 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo;
  v106[0] = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo;
  v10 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds;
  v12 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds) = MEMORY[0x1E69E7CC0];
  v107 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds) = v12;
  v108 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr) = v12;
  v109 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto) = v12;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  v110 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  v111 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  v112 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v113 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized) = v12;
  v114 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults) = 0;
  v115 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults) = 0;
  v116 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi) = 0;
  v117 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful) = 0;
  v118 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound) = 0;
  v119 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound) = 0;
  v120 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult) = 0;
  v121 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults) = v12;
  v17 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList) = v12;
  v122 = v17;
  v123 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse) = 0;
  v18 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo;
  v124 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo;
  v19 = type metadata accessor for Nlgpb_NlgDialog();
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
  v125 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v126 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact) = 0;
  v127 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion) = 0;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
  v128 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v22;
  *(v1 + 24) = v23;
  swift_beginAccess();
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v24;
  *(v1 + 40) = v25;
  swift_beginAccess();
  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v26;
  *(v1 + 56) = v27;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds;
  swift_beginAccess();
  v29 = *(a1 + v28);
  swift_beginAccess();
  v30 = *(v1 + v11);
  *(v1 + v11) = v29;

  v31 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v107;
  swift_beginAccess();
  v34 = *(v1 + v33);
  *(v1 + v33) = v32;

  v35 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = v108;
  swift_beginAccess();
  v38 = *(v1 + v37);
  *(v1 + v37) = v36;

  v39 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = v109;
  swift_beginAccess();
  v42 = *(v1 + v41);
  *(v1 + v41) = v40;

  v43 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg);
  swift_beginAccess();
  v44 = *v43;
  v45 = v43[1];
  swift_beginAccess();
  v46 = v13[1];
  *v13 = v44;
  v13[1] = v45;

  v47 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  swift_beginAccess();
  v48 = *v47;
  v49 = v47[1];
  v50 = v110;
  swift_beginAccess();
  v51 = v50[1];
  *v50 = v48;
  v50[1] = v49;

  v52 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  swift_beginAccess();
  v54 = *v52;
  v53 = v52[1];
  v55 = v111;
  swift_beginAccess();
  v56 = v55[1];
  *v55 = v54;
  v55[1] = v53;

  v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];
  v60 = v112;
  swift_beginAccess();
  v61 = v60[1];
  *v60 = v59;
  v60[1] = v58;

  v62 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized;
  swift_beginAccess();
  v63 = *(a1 + v62);
  v64 = v113;
  swift_beginAccess();
  v65 = *(v1 + v64);
  *(v1 + v64) = v63;

  v66 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults;
  swift_beginAccess();
  LOBYTE(v66) = *(a1 + v66);
  v67 = v114;
  swift_beginAccess();
  *(v1 + v67) = v66;
  v68 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  swift_beginAccess();
  LODWORD(v68) = *(a1 + v68);
  v69 = v115;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi;
  swift_beginAccess();
  LOBYTE(v70) = *(a1 + v70);
  v71 = v116;
  swift_beginAccess();
  *(v1 + v71) = v70;
  v72 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful;
  swift_beginAccess();
  LOBYTE(v72) = *(a1 + v72);
  v73 = v117;
  swift_beginAccess();
  *(v1 + v73) = v72;
  v74 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound;
  swift_beginAccess();
  LOBYTE(v74) = *(a1 + v74);
  v75 = v118;
  swift_beginAccess();
  *(v1 + v75) = v74;
  v76 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound;
  swift_beginAccess();
  LOBYTE(v76) = *(a1 + v76);
  v77 = v119;
  swift_beginAccess();
  *(v1 + v77) = v76;
  v78 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult;
  swift_beginAccess();
  LOBYTE(v78) = *(a1 + v78);
  v79 = v120;
  swift_beginAccess();
  *(v1 + v79) = v78;
  v80 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults;
  swift_beginAccess();
  v81 = *(a1 + v80);
  v82 = v121;
  swift_beginAccess();
  v83 = *(v1 + v82);
  *(v1 + v82) = v81;

  v84 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList;
  swift_beginAccess();
  v85 = *(a1 + v84);
  v86 = v122;
  swift_beginAccess();
  v87 = *(v1 + v86);
  *(v1 + v86) = v85;

  v88 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse;
  swift_beginAccess();
  LOBYTE(v88) = *(a1 + v88);
  v89 = v123;
  swift_beginAccess();
  *(v1 + v89) = v88;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v90 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
  swift_beginAccess();
  v92 = *v90;
  v91 = v90[1];
  v93 = v125;
  swift_beginAccess();
  v94 = v93[1];
  *v93 = v92;
  v93[1] = v91;

  v95 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact;
  swift_beginAccess();
  LOBYTE(v95) = *(a1 + v95);
  v96 = v126;
  swift_beginAccess();
  *(v1 + v96) = v95;
  v97 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  swift_beginAccess();
  v98 = *(a1 + v97);
  v99 = v127;
  swift_beginAccess();
  *(v1 + v99) = v98;
  v100 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
  swift_beginAccess();
  v102 = *v100;
  v101 = v100[1];

  v103 = v128;
  swift_beginAccess();
  v104 = v103[1];
  *v103 = v102;
  v103[1] = v101;

  return v1;
}

uint64_t sub_1B8E5BE30()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E5BE88()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E5BEE0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B8E5BFF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo, &qword_1EBABC4D0, &unk_1B965CDC0);
  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds);

  v4 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds);

  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr);

  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto);

  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg + 8);

  v10 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg + 8);

  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized);

  v12 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults);

  v13 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo, &qword_1EBABBD40, &qword_1B965A640);
  v14 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID + 8);

  v15 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType + 8);

  return v0;
}

uint64_t sub_1B8E5C144()
{
  v0 = sub_1B8E5BFF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Kgqsapipb_KGEventLogMessage.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Kgqsapipb_KGEventLogMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B8E5B2FC(v9);
  }

  OUTLINED_FUNCTION_24_3();
  return sub_1B8E5C234(v10, v11, v12, v13);
}

uint64_t sub_1B8E5C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C();
        continue;
      case 2:
        sub_1B8E5C4F4();
        continue;
      case 3:
        sub_1B8DC4778();
        continue;
      case 4:
        sub_1B8E5C588();
        continue;
      case 5:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds;
        goto LABEL_25;
      case 6:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds;
        goto LABEL_25;
      case 7:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr;
        goto LABEL_25;
      case 8:
        sub_1B8E5C664();
        continue;
      case 9:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg;
        goto LABEL_30;
      case 10:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg;
        goto LABEL_30;
      case 11:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg;
        goto LABEL_30;
      case 12:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg;
        goto LABEL_30;
      case 13:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized;
LABEL_25:
        v14 = MEMORY[0x1E69AACB8];
        goto LABEL_26;
      case 14:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults;
        goto LABEL_33;
      case 15:
        sub_1B8E5C740();
        continue;
      case 16:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi;
        goto LABEL_33;
      case 17:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful;
        goto LABEL_33;
      case 18:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound;
        goto LABEL_33;
      case 19:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound;
        goto LABEL_33;
      case 20:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult;
        goto LABEL_33;
      case 21:
        sub_1B8E5C7CC();
        continue;
      case 22:
        sub_1B8E5C8A8();
        continue;
      case 23:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse;
        goto LABEL_33;
      case 24:
        sub_1B8E5C984();
        continue;
      case 25:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID;
        goto LABEL_30;
      case 26:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact;
LABEL_33:
        sub_1B8E5CA60(a2, a1, a3, a4, v12);
        break;
      case 49:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
        v14 = MEMORY[0x1E69AACD0];
LABEL_26:
        sub_1B8E5CABC(a2, a1, a3, a4, v13, v14);
        break;
      case 50:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType;
LABEL_30:
        sub_1B8E5CB50(a2, a1, a3, a4, v11);
        break;
      default:
        continue;
    }
  }
}