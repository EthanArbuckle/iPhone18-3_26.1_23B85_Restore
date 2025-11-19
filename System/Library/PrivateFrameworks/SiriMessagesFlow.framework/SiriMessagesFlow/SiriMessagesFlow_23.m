uint64_t sub_267D742D4()
{
  OUTLINED_FUNCTION_12();
  v1[11] = v2;
  v1[12] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BA80, &qword_267F08088);
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v5 = *(v4 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[19] = OUTLINED_FUNCTION_2();
  v9 = type metadata accessor for EditMessageConfirmIntentFlow.State(0);
  v1[20] = v9;
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267D7441C()
{
  v101 = v0;
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[12];
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow28EditMessageConfirmIntentFlow_state;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_1_54();
  sub_267D75F64(v3 + v4, v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v46 = *v0[22];
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v47 = sub_267EF8A08();
    __swift_project_value_buffer(v47, qword_280240FB0);
    v48 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_48();
      v51 = OUTLINED_FUNCTION_52();
      v100 = v51;
      *v50 = 136446210;
      if (v46)
      {
        v52 = 0x74756F68746977;
      }

      else
      {
        v52 = 1752459639;
      }

      if (v46)
      {
        v53 = 0xE700000000000000;
      }

      else
      {
        v53 = 0xE400000000000000;
      }

      v54 = sub_267BA33E8(v52, v53, &v100);

      *(v50 + 4) = v54;
      OUTLINED_FUNCTION_13_31();
      _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_42_0();
    }

    *(*(v0[12] + 88) + 17) = v46;
    v60 = swift_task_alloc();
    v0[24] = v60;
    *v60 = v0;
    v61 = sub_267D74E80;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v23 = v0[17];
    v24 = v0[13];
    v25 = v0[14];
    (*(v25 + 32))(v0[18], v0[22], v24);
    v26 = *(v25 + 16);
    v27 = OUTLINED_FUNCTION_14_30();
    v99 = v28;
    v28(v27);
    v29 = (*(v25 + 88))(v23, v24);
    v30 = *MEMORY[0x277D5BC30];
    v31 = *(v25 + 8);
    v31(v23, v24);
    if (v29 == v30)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v32 = v0[18];
      v33 = v0[16];
      v34 = v0[13];
      v35 = sub_267EF8A08();
      __swift_project_value_buffer(v35, qword_280240FB0);
      v36 = OUTLINED_FUNCTION_14_30();
      v99(v36);
      v37 = sub_267EF89F8();
      sub_267EF95E8();
      OUTLINED_FUNCTION_12_3();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v0[16];
      v41 = v0[13];
      if (v39)
      {
        v42 = OUTLINED_FUNCTION_48();
        v96 = OUTLINED_FUNCTION_52();
        v100 = v96;
        *v42 = 136315138;
        OUTLINED_FUNCTION_7_33(&qword_28022BA88, &qword_28022BA80, &qword_267F08088);
        sub_267EF9E58();
        v43 = OUTLINED_FUNCTION_11_32();
        v41(v43);
        v44 = sub_267BA33E8(v34, v31, &v100);

        *(v42 + 4) = v44;
        v45 = "#EditMessageConfirmIntentFlow confirm intent flow failed: %s";
LABEL_35:
        _os_log_impl(&dword_267B93000, v37, v95, v45, v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v96);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();

LABEL_37:
        v87 = v0[21];
        v88 = v0[18];
        v89 = v0[13];
        v90 = v0[11];
        (v99)(v87, v88, v89);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3();
        sub_267D75FC4(v87, v3 + v4);
        swift_endAccess();
        sub_267EF4018();
        (v41)(v88, v89);
LABEL_38:
        OUTLINED_FUNCTION_25_21();

        OUTLINED_FUNCTION_17();

        return v91();
      }
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v77 = v0[18];
      v78 = v0[15];
      v79 = v0[13];
      v80 = sub_267EF8A08();
      __swift_project_value_buffer(v80, qword_280240FB0);
      v81 = OUTLINED_FUNCTION_14_30();
      v99(v81);
      v37 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_12_3();
      v83 = os_log_type_enabled(v37, v82);
      v40 = v0[15];
      v41 = v0[13];
      if (v83)
      {
        v42 = OUTLINED_FUNCTION_48();
        v96 = OUTLINED_FUNCTION_52();
        v100 = v96;
        *v42 = 136315138;
        OUTLINED_FUNCTION_7_33(&qword_28022BA88, &qword_28022BA80, &qword_267F08088);
        sub_267EF9E58();
        v84 = OUTLINED_FUNCTION_11_32();
        v41(v84);
        v85 = sub_267BA33E8(v79, v31, &v100);

        *(v42 + 4) = v85;
        v45 = "#EditMessageConfirmIntentFlow confirm intent flow completed: %s";
        goto LABEL_35;
      }
    }

    v86 = v41;
    v41 = v31;
    v31(v40, v86);
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v62 = v0[12];
    v63 = sub_267EF8A08();
    __swift_project_value_buffer(v63, qword_280240FB0);

    v64 = sub_267EF89F8();
    v65 = sub_267EF95E8();

    if (os_log_type_enabled(v64, v65))
    {
      v67 = v0[20];
      v66 = v0[21];
      v68 = OUTLINED_FUNCTION_48();
      v69 = OUTLINED_FUNCTION_52();
      v100 = v69;
      *v68 = 136315138;
      OUTLINED_FUNCTION_1_54();
      sub_267D75F64(v3 + v4, v66, v70);
      v71 = sub_267EF9098();
      v73 = sub_267BA33E8(v71, v72, &v100);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_267B93000, v64, v65, "#EditMessageConfirmIntentFlow execute() called in state %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v74 = v0[22];
    v75 = v0[11];
    sub_267EF4018();
    OUTLINED_FUNCTION_0_42();
    sub_267D75EC4(v74, v76);
    goto LABEL_38;
  }

  if (*(*(v0[12] + 88) + 16))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);
    v8 = sub_267EF89F8();
    v9 = sub_267EF95C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v10);
      OUTLINED_FUNCTION_24_21(&dword_267B93000, v11, v12, "#EditMessageConfirmIntentFlow skipping confirmation");
      OUTLINED_FUNCTION_42_0();
    }

    v13 = v0[21];
    v14 = v0[19];
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
    v97 = v0[20];
    v98 = v0[11];

    v18 = *MEMORY[0x277D5BED8];
    v19 = sub_267EF44F8();
    OUTLINED_FUNCTION_22(v19);
    (*(v20 + 104))(v14, v18, v19);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v19);
    v21 = *(v17 + 72);
    sub_267BA9F38(0, &qword_28022A9F0, 0x277CD3BC0);
    v22 = v21;
    sub_267EF4468();
    (*(v15 + 104))(v13, *MEMORY[0x277D5BC38], v16);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66_3();
    sub_267D75FC4(v13, v3 + v4);
    swift_endAccess();
    sub_267EF4018();
    goto LABEL_38;
  }

  v60 = swift_task_alloc();
  v0[23] = v60;
  *v60 = v0;
  v61 = sub_267D74D04;
LABEL_42:
  v60[1] = v61;
  v93 = v0[11];
  v94 = v0[12];

  return sub_267D750D4();
}

uint64_t sub_267D74D04()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267D74DE8()
{
  OUTLINED_FUNCTION_25_21();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D74E80()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267D74F64@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EditMessageConfirmIntentFlow.State(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow28EditMessageConfirmIntentFlow_state;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_1_54();
  sub_267D75F64(v1 + v10, v9, v11);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BA80, &qword_267F08088);
    OUTLINED_FUNCTION_22(v12);
    return (*(v13 + 32))(a1, v9);
  }

  else
  {
    sub_267C4BE60();
    v15 = swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    *a1 = v15;
    *(a1 + 8) = 0;
    v17 = *MEMORY[0x277D5BC30];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BA80, &qword_267F08088);
    OUTLINED_FUNCTION_22(v18);
    (*(v19 + 104))(a1, v17);
    OUTLINED_FUNCTION_0_42();
    return sub_267D75EC4(v9, v20);
  }
}

uint64_t sub_267D750D4()
{
  OUTLINED_FUNCTION_12();
  v1[40] = v2;
  v1[41] = v0;
  v3 = type metadata accessor for EditMessageConfirmIntentFlow.State(0);
  v1[42] = v3;
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v6 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[45] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v1[46] = v9;
  v10 = *(v9 - 8);
  v1[47] = v10;
  v11 = *(v10 + 64);
  v1[48] = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267D751E4()
{
  v64 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 328);
  v3 = v2[8];
  v4 = v2[9];
  v5 = v2[10];
  v6 = sub_267BA9F38(0, &qword_28022A9F0, 0x277CD3BC0);
  sub_267BA9F38(0, &qword_28022A9F8, 0x277CD3BC8);

  v7 = v4;
  v8 = v5;
  sub_267EF4658();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_32();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v6, "#EditMessageConfirmIntentFlow using regular confirm intent flow with confirmintent flowstrategy", v12, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v13 = *(v0 + 360);
  v14 = *(v0 + 328);

  sub_267D75F64(v14 + OBJC_IVAR____TtC16SiriMessagesFlow28EditMessageConfirmIntentFlow_sentMessageContext, v13, type metadata accessor for TimedSentMessageContext);
  sub_267B9AFEC(v14 + 16, v0 + 16);
  v15 = *(v14 + 88);
  v16 = qword_2802286F0;

  if (v16 != -1)
  {
    swift_once();
  }

  v57 = *(v0 + 360);
  v59 = *(v0 + 328);
  v61 = *(v0 + 384);
  sub_267B9AFEC(qword_2802405A0, v0 + 56);
  v17 = type metadata accessor for CommonTemplateProvider();
  v18 = swift_allocObject();
  sub_267EF8668();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, *(v0 + 80));
  *(v0 + 160) = &type metadata for CATProvider;
  *(v0 + 168) = &off_2878CE7A0;
  *(v0 + 200) = v17;
  *(v0 + 208) = &off_2878D2530;
  *(v0 + 176) = v18;
  *(v0 + 240) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 248) = off_2878D1228;
  v19 = type metadata accessor for EditMessageConfirmIntentFlowStrategy();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, &type metadata for CATProvider);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v17);
  OUTLINED_FUNCTION_23();
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_2();
  (*(v25 + 16))(v28, v23, v17);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, *(v0 + 240));
  v29 = *v28;
  v30 = v22 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider;
  *(v30 + 24) = &type metadata for CATProvider;
  *(v30 + 32) = &off_2878CE7A0;
  v31 = (v22 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_commonTemplateProvider);
  v31[3] = v17;
  v31[4] = &off_2878D2530;
  *v31 = v29;
  v32 = v22 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_featureFlags;
  *(v32 + 24) = &type metadata for MessagesFeatureFlagsImpl;
  *(v32 + 32) = off_2878D1228;
  v33 = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse;
  v34 = sub_267EF44F8();
  __swift_storeEnumTagSinglePayload(v22 + v33, 1, 1, v34);
  sub_267C1B4DC(v57, v22 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sentMessageContext);
  *(v22 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_editMessageState) = v15;
  sub_267B9A5E8((v0 + 96), v22 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sharedContextService);
  sub_267B9A5E8((v0 + 16), v22 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  *(v0 + 304) = v22;
  sub_267D75F1C(&qword_28022BA68, type metadata accessor for EditMessageConfirmIntentFlowStrategy);
  v35 = sub_267EF3608();

  v36 = v35(*(v59 + 56), v61);
  if (v36)
  {
    v37 = v36;
    v38 = sub_267EF89F8();
    v39 = sub_267EF95C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v40);
      OUTLINED_FUNCTION_24_21(&dword_267B93000, v41, v42, "#EditMessageConfirmIntentFlow pushing confirm intent flow");
      OUTLINED_FUNCTION_42_0();
    }

    v43 = *(v0 + 376);
    v58 = *(v0 + 368);
    v60 = *(v0 + 384);
    v62 = *(v0 + 360);
    v45 = *(v0 + 344);
    v44 = *(v0 + 352);
    v47 = *(v0 + 328);
    v46 = *(v0 + 336);
    v56 = *(v0 + 320);

    v48 = OBJC_IVAR____TtC16SiriMessagesFlow28EditMessageConfirmIntentFlow_state;
    OUTLINED_FUNCTION_83();
    sub_267D75F64(v47 + v48, v44, type metadata accessor for EditMessageConfirmIntentFlow.State);
    v49 = swift_getEnumCaseMultiPayload() != 4;
    sub_267D75EC4(v44, type metadata accessor for EditMessageConfirmIntentFlow.State);
    *v45 = v49;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66_3();
    sub_267D75FC4(v45, v47 + v48);
    swift_endAccess();
    *(v0 + 312) = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BA70, &qword_267F08080);
    sub_267BC1E20(&qword_28022BA78, &qword_28022BA70, &qword_267F08080);
    sub_267EF3FA8();

    (*(v43 + 8))(v60, v58);

    OUTLINED_FUNCTION_17();

    return v50();
  }

  else
  {
    v52 = sub_267EF89F8();
    v53 = sub_267EF95E8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_48();
      v55 = OUTLINED_FUNCTION_52();
      v63 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_267BA33E8(0xD00000000000002BLL, 0x8000000267F19AF0, &v63);
      _os_log_impl(&dword_267B93000, v52, v53, "Fatal error: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_42_0();
    }

    return sub_267EF9C98();
  }
}

uint64_t sub_267D75928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMessageConfirmIntentFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BA80, &qword_267F08088);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  v9 = OBJC_IVAR____TtC16SiriMessagesFlow28EditMessageConfirmIntentFlow_state;
  swift_beginAccess();
  sub_267D75FC4(v7, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_267D75A30()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  OUTLINED_FUNCTION_4_44(OBJC_IVAR____TtC16SiriMessagesFlow28EditMessageConfirmIntentFlow_sentMessageContext);
  OUTLINED_FUNCTION_0_42();
  return sub_267D75EC4(v0 + v4, v5);
}

uint64_t sub_267D75A8C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  OUTLINED_FUNCTION_4_44(OBJC_IVAR____TtC16SiriMessagesFlow28EditMessageConfirmIntentFlow_sentMessageContext);
  OUTLINED_FUNCTION_0_42();
  sub_267D75EC4(v0 + v4, v5);
  return v0;
}

uint64_t sub_267D75AF4()
{
  sub_267D75A8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267D75B74()
{
  result = type metadata accessor for TimedSentMessageContext(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for EditMessageConfirmIntentFlow.State(319);
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

void sub_267D75C84()
{
  sub_267D75CF8();
  if (v0 <= 0x3F)
  {
    sub_267D75D20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_267D75CF8()
{
  result = qword_28022BA50;
  if (!qword_28022BA50)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_28022BA50);
  }

  return result;
}

void sub_267D75D20()
{
  if (!qword_28022BA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022BA60, qword_267F07FD8);
    v0 = sub_267EF3D98();
    if (!v1)
    {
      atomic_store(v0, &qword_28022BA58);
    }
  }
}

uint64_t sub_267D75DBC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267D742D4();
}

uint64_t sub_267D75EC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267D75F1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267D75F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267D75FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMessageConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D76034()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v3);
  v4 = sub_267EF4CB8();

  sub_267C9B4AC(v4);
  sub_267EF4C78();
  sub_267EF4C88();
  return sub_267EF4C98();
}

void sub_267D76104()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_532();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_459();
  sub_267C6AD4C(v8, v9, &unk_28022AE50, &unk_267EFD130);
  v10 = sub_267EF93F8();
  v11 = OUTLINED_FUNCTION_221();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v1, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    OUTLINED_FUNCTION_5_0(v10);
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_100_0();
    v17(v16);
  }

  v19 = *(v0 + 16);
  v18 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_267B9F98C(v3, &unk_28022AE50, &unk_267EFD130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A418, &qword_267F00AE0);
    OUTLINED_FUNCTION_399();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_267EF93A8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_267EF90C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A418, &qword_267F00AE0);
  OUTLINED_FUNCTION_399();
  swift_task_create();

  sub_267B9F98C(v3, &unk_28022AE50, &unk_267EFD130);

LABEL_9:
  OUTLINED_FUNCTION_47();
}

void sub_267D7635C()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_532();
  v4 = OUTLINED_FUNCTION_68_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_459();
  sub_267C6AD4C(v10, v11, &unk_28022AE50, &unk_267EFD130);
  v12 = sub_267EF93F8();
  v13 = OUTLINED_FUNCTION_221();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v1, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    OUTLINED_FUNCTION_5_0(v12);
    v17 = *(v16 + 8);
    v18 = OUTLINED_FUNCTION_73();
    v19(v18);
  }

  v21 = *(v0 + 16);
  v20 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v21)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_267B9F98C(v3, &unk_28022AE50, &unk_267EFD130);
    OUTLINED_FUNCTION_399();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_267EF93A8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_267EF90C8();

  OUTLINED_FUNCTION_399();
  swift_task_create();
  OUTLINED_FUNCTION_25_0();

  sub_267B9F98C(v3, &unk_28022AE50, &unk_267EFD130);

LABEL_9:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D7659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_267C6AD4C(a3, v23 - v10, &unk_28022AE50, &unk_267EFD130);
  v12 = sub_267EF93F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v11, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_267EF93A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_267EF90C8() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC00, &unk_267F08390);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_267B9F98C(a3, &unk_28022AE50, &unk_267EFD130);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_267B9F98C(a3, &unk_28022AE50, &unk_267EFD130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC00, &unk_267F08390);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_267D7683C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v225 = v2;
  v214 = sub_267EF3868();
  v3 = OUTLINED_FUNCTION_58(v214);
  v213 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v212 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v12);
  v211[1] = v211 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v15 = OUTLINED_FUNCTION_18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  v217 = v18;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v19);
  v220 = v211 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v24);
  v215 = v211 - v25;
  v26 = sub_267EF4C08();
  v27 = OUTLINED_FUNCTION_58(v26);
  v223 = v28;
  v224 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6();
  v216 = v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  v219 = v211 - v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  v222 = v211 - v35;
  v36 = sub_267EF4BE8();
  v37 = OUTLINED_FUNCTION_58(v36);
  v226 = v38;
  v227 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6();
  v218 = v41;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v42);
  v44 = v211 - v43;
  v45 = sub_267EF4BA8();
  v46 = OUTLINED_FUNCTION_58(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_0_0();
  v53 = v52 - v51;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v221 = v44;
  v54 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
  v55 = *(v48 + 16);
  v56 = OUTLINED_FUNCTION_14_1();
  v57(v56);
  v228 = v0;
  v58 = sub_267EF89F8();
  v59 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_495(v59))
  {
    v60 = OUTLINED_FUNCTION_48();
    v61 = OUTLINED_FUNCTION_52();
    v211[0] = v0;
    v62 = v61;
    v231[0] = v61;
    *v60 = 136315138;
    sub_267BC419C(&qword_28022AF50, MEMORY[0x277D5C118]);
    sub_267EF9E58();
    OUTLINED_FUNCTION_76();
    (*(v48 + 8))(v53, v45);
    v63 = OUTLINED_FUNCTION_100_0();
    sub_267BA33E8(v63, v64, v65);
    OUTLINED_FUNCTION_25_0();

    *(v60 + 4) = v53;
    _os_log_impl(&dword_267B93000, v58, v59, "#SendMessageConfirmIntentFlowStrategy received input: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    v1 = v211[0];
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v48 + 8))(v53, v45);
  }

  v66 = v224;
  v67 = v222;
  sub_267EF4B88();
  v68 = v223;
  v69 = *(v223 + 88);
  v70 = OUTLINED_FUNCTION_3();
  v71 = v69(v70);
  v72 = v226;
  v73 = v227;
  if (v71 == *MEMORY[0x277D5C150])
  {
    v74 = *(v68 + 96);
    v75 = OUTLINED_FUNCTION_3();
    v76(v75);
    v77 = v221;
    (*(v72 + 32))(v221, v67, v73);
    v78 = *(v1 + 56);
    if (!*(v78 + 328))
    {
      sub_267EF93F8();
      v67 = v215;
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
      OUTLINED_FUNCTION_94();
      v83 = swift_allocObject();
      OUTLINED_FUNCTION_544(v83);
      v84 = OUTLINED_FUNCTION_402();
      v87 = sub_267D7659C(v84, v85, v67, v86, v66);
      v88 = *(v78 + 328);
      *(v78 + 328) = v87;
    }

    v89 = sub_267EF89F8();
    v90 = sub_267EF95D8();
    v91 = OUTLINED_FUNCTION_36(v90);
    v92 = v220;
    if (v91)
    {
      v93 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v93);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v94, v95, "#SendMessageConfirmIntentFlowStrategy received directInvocation");
      OUTLINED_FUNCTION_26();
    }

    sub_267B9CC04(v77, v92);
    v96 = type metadata accessor for DirectInvocationUseCases();
    OUTLINED_FUNCTION_5_1(v92, 1, v96);
    if (!v97)
    {
      v119 = v217;
      sub_267C6AD4C(v92, v217, &unk_28022BBE0, qword_267EFD030);
      OUTLINED_FUNCTION_66();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 11) < 2)
      {
        sub_267CCEDF4(v119);
        sub_267B9F98C(v92, &unk_28022BBE0, qword_267EFD030);
        sub_267EF3E68();
        (*(v72 + 8))(v77, v73);
        goto LABEL_63;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v149 = sub_267EF8228();
        OUTLINED_FUNCTION_58(v149);
        v150 = v119;
        v152 = v151;
        v154 = (*(v153 + 88))(v150, v149);
        if (v154 == *MEMORY[0x277D5D4E8])
        {
          v155 = *MEMORY[0x277D5BED8];
          v156 = sub_267EF44F8();
          OUTLINED_FUNCTION_22(v156);
          v158 = *(v157 + 104);
          v159 = OUTLINED_FUNCTION_435();
          v160(v159);
          OUTLINED_FUNCTION_9();
          __swift_storeEnumTagSinglePayload(v161, v162, v163, v156);
          v164 = OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_confirmationResponse;
          swift_beginAccess();
          sub_267BF3128(v67, v1 + v164, &qword_280229310, &unk_267EFCF70);
          swift_endAccess();
          sub_267EF3E58();
LABEL_49:
          (*(v72 + 8))(v77, v73);
LABEL_29:
          sub_267B9F98C(v92, &unk_28022BBE0, qword_267EFD030);
          goto LABEL_63;
        }

        if (v154 == *MEMORY[0x277D5D4D8])
        {
          v190 = sub_267EF89F8();
          v191 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v191))
          {
            v192 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v192);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v193, v194, "#SendMessageConfirmIntentFlowStrategy prompt is cancelled by button press");
            OUTLINED_FUNCTION_26();
          }

          sub_267EF3E48();
          goto LABEL_49;
        }

        (*(v152 + 8))(v217, v149);
      }

      else
      {
        sub_267CCEDF4(v119);
      }
    }

    v98 = v218;
    (*(v72 + 16))(v218, v77, v73);
    v99 = sub_267EF89F8();
    v100 = sub_267EF95D8();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = OUTLINED_FUNCTION_48();
      v102 = OUTLINED_FUNCTION_52();
      v231[0] = v102;
      *v101 = 136315138;
      sub_267EF4BC8();
      OUTLINED_FUNCTION_76();
      v103 = OUTLINED_FUNCTION_398();
      (v72)(v103);
      v104 = OUTLINED_FUNCTION_100_0();
      sub_267BA33E8(v104, v105, v106);
      OUTLINED_FUNCTION_25_0();

      *(v101 + 4) = v98;
      _os_log_impl(&dword_267B93000, v99, v100, "#SendMessageConfirmIntentFlowStrategy ignoring direct invocation: %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      v92 = v220;
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      v148 = OUTLINED_FUNCTION_398();
      (v72)(v148);
    }

    sub_267EF3E68();
    (v72)(v221, v73);
    goto LABEL_29;
  }

  v107 = v67;
  v108 = *(v68 + 8);
  v108(v107, v66);
  v109 = v219;
  sub_267EF4B88();
  v110 = v66;
  v111 = (v69)(v109, v66);
  v112 = *MEMORY[0x277D5C168];
  v108(v109, v110);
  if (v111 == v112)
  {
    v113 = sub_267EF89F8();
    v114 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v114))
    {
      v115 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v115);
      v118 = "#SendMessageConfirmIntentFlowStrategy empty input";
LABEL_35:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v116, v117, v118);
      OUTLINED_FUNCTION_26();
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  v121 = v216;
  sub_267EF4B88();
  v122 = sub_267E57DFC(v121, &v229);
  (v108)(v121, v110, v122);
  if (!v230)
  {
    sub_267B9F98C(&v229, &unk_28022BBF0, &unk_267F01C60);
    v113 = sub_267EF89F8();
    v165 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v165))
    {
      v166 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v166);
      v118 = "#SendMessageConfirmIntentFlowStrategy unsupported input";
      goto LABEL_35;
    }

LABEL_36:

    sub_267EF3E68();
    goto LABEL_63;
  }

  sub_267B9A5E8(&v229, v231);
  v123 = *(v1 + 56);
  if (!*(v123 + 328))
  {
    sub_267EF93F8();
    v124 = v215;
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v125, v126, v127, v128);
    OUTLINED_FUNCTION_94();
    v129 = swift_allocObject();
    OUTLINED_FUNCTION_544(v129);
    v130 = OUTLINED_FUNCTION_402();
    v133 = sub_267D7659C(v130, v131, v124, v132, v121);
    v134 = *(v123 + 328);
    *(v123 + 328) = v133;
  }

  v135 = v233;
  __swift_project_boxed_opaque_existential_0(v231, v232);
  v136 = *(v135 + 320);
  v137 = v212;
  v138 = OUTLINED_FUNCTION_38_0();
  v139(v138);
  v140 = v213;
  v141 = v214;
  v142 = (*(v213 + 88))(v137, v214);
  if (v142 == *MEMORY[0x277D5B970])
  {
    v143 = sub_267EF89F8();
    v144 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v144))
    {
      v145 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v145);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v146, v147, "#SendMessageConfirmIntentFlowStrategy request is cancelled");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E48();
  }

  else
  {
    v167 = v142;
    if (v142 == *MEMORY[0x277D5B978])
    {
      v168 = *MEMORY[0x277D5BED8];
      v169 = sub_267EF44F8();
      OUTLINED_FUNCTION_22(v169);
      v171 = *(v170 + 104);
      v172 = OUTLINED_FUNCTION_435();
      v173(v172);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v174, v175, v176, v169);
      v177 = OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_confirmationResponse;
      swift_beginAccess();
      sub_267BF3128(v135, v1 + v177, &qword_280229310, &unk_267EFCF70);
      swift_endAccess();
      sub_267EF3E58();
    }

    else
    {
      v178 = *MEMORY[0x277D5B968];
      v179 = v233;
      __swift_project_boxed_opaque_existential_0(v231, v232);
      if (v167 == v178)
      {
        v180 = *(v179 + 288);
        v181 = OUTLINED_FUNCTION_54();
        v183 = v182(v181, v179);
        v184 = sub_267EF89F8();
        v185 = sub_267EF95D8();
        v186 = OUTLINED_FUNCTION_36(v185);
        if (v183)
        {
          if (v186)
          {
            v187 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v187);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v188, v189, "#SendMessageConfirmIntentFlowStrategy 'no' with fresh verb, ignoring");
            OUTLINED_FUNCTION_26();
          }

          sub_267EF3E68();
        }

        else
        {
          if (v186)
          {
            v205 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v205);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v206, v207, "#SendMessageConfirmIntentFlowStrategy request is rejected");
            OUTLINED_FUNCTION_26();
          }

          sub_267D77A10();
        }
      }

      else
      {
        v195 = *(v179 + 168);
        v196 = OUTLINED_FUNCTION_54();
        v198 = v197(v196, v179);
        v199 = sub_267EF89F8();
        v200 = sub_267EF95D8();
        v201 = OUTLINED_FUNCTION_36(v200);
        if (v198)
        {
          if (v201)
          {
            v202 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v202);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v203, v204, "#SendMessageConfirmIntentFlowStrategy stop requested");
            OUTLINED_FUNCTION_26();
          }

          sub_267D77A10();
        }

        else
        {
          if (v201)
          {
            v208 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v208);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v209, v210, "#SendMessageConfirmIntentFlowStrategy no valid confirmation in the intent, ignoring");
            OUTLINED_FUNCTION_26();
          }

          sub_267EF3E68();
        }

        (*(v140 + 8))(v137, v141);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v231);
LABEL_63:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D7765C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_267D776F0;

  return sub_267D78070();
}

uint64_t sub_267D776F0()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_267D77820(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_267D778B4;

  return sub_267D78070();
}

uint64_t sub_267D778B4()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_267D779E4()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_1();
  return v1();
}

void sub_267D77A10()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v94 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  v93 = &v88[-v7];
  v8 = sub_267EF70D8();
  v9 = OUTLINED_FUNCTION_58(v8);
  v92 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v90 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB78, &unk_267F08340);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v18);
  v20 = &v88[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  v22 = OUTLINED_FUNCTION_18(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  v91 = v25;
  OUTLINED_FUNCTION_115();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v88[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v88[-v30];
  v33 = v0[6];
  v32 = v0[7];
  OUTLINED_FUNCTION_103_5(v0 + 2, v0[5]);
  v34 = OUTLINED_FUNCTION_4_1();
  v35(v34);
  v36 = sub_267D60DB0();
  __swift_destroy_boxed_opaque_existential_0(&v95);
  if (!v36)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v38 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
    v39 = sub_267EF89F8();
    v40 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v40))
    {
      goto LABEL_29;
    }

    v41 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v41);
    v44 = "#SendMessageConfirmIntentFlowStrategy request is rejected but it can't hold send, treating as cancel";
    goto LABEL_28;
  }

  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8698();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v31, v37, 1, v8);
  sub_267EF70C8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v8);
  v48 = *(v15 + 48);
  v49 = &unk_267EFDCA0;
  sub_267C6AD4C(v31, v20, &qword_2802295B0, &unk_267EFDCA0);
  sub_267C6AD4C(v29, &v20[v48], &qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_5_1(v20, 1, v8);
  if (v57)
  {
    OUTLINED_FUNCTION_439();
    sub_267B9F98C(v50, v51, v52);
    OUTLINED_FUNCTION_439();
    sub_267B9F98C(v53, v54, v55);
    OUTLINED_FUNCTION_5_1(&v20[v48], 1, v8);
    if (v57)
    {
      sub_267B9F98C(v20, &qword_2802295B0, &unk_267EFDCA0);
LABEL_24:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v85 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v85, qword_280240FB0);
      v39 = sub_267EF89F8();
      v86 = sub_267EF95D8();
      if (!OUTLINED_FUNCTION_36(v86))
      {
        goto LABEL_29;
      }

      v87 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v87);
      v44 = "#SendMessageConfirmIntentFlowStrategy request is rejected in voiceOnly mode, treating as cancel";
LABEL_28:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v42, v43, v44);
      OUTLINED_FUNCTION_26();
LABEL_29:

      sub_267EF3E48();
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  v56 = v91;
  sub_267C6AD4C(v20, v91, &qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_5_1(&v20[v48], 1, v8);
  if (v57)
  {
    OUTLINED_FUNCTION_439();
    sub_267B9F98C(v58, v59, v60);
    OUTLINED_FUNCTION_439();
    sub_267B9F98C(v61, v62, v63);
    (*(v92 + 8))(v56, v8);
LABEL_17:
    sub_267B9F98C(v20, &qword_28022BB78, &unk_267F08340);
    goto LABEL_18;
  }

  v76 = v92;
  v77 = &v20[v48];
  v78 = v90;
  (*(v92 + 32))(v90, v77, v8);
  OUTLINED_FUNCTION_295();
  sub_267BC419C(v79, v80);
  v89 = sub_267EF8FE8();
  v81 = *(v76 + 8);
  v81(v78, v8);
  v49 = &qword_2802295B0;
  sub_267B9F98C(v29, &qword_2802295B0, &unk_267EFDCA0);
  sub_267B9F98C(v31, &qword_2802295B0, &unk_267EFDCA0);
  v82 = OUTLINED_FUNCTION_290();
  (v81)(v82);
  v83 = OUTLINED_FUNCTION_533();
  sub_267B9F98C(v83, v84, &unk_267EFDCA0);
  if (v89)
  {
    goto LABEL_24;
  }

LABEL_18:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v64 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v64, qword_280240FB0);
  v65 = sub_267EF89F8();
  v66 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v66))
  {
    v67 = OUTLINED_FUNCTION_32();
    *v67 = 0;
    _os_log_impl(&dword_267B93000, v65, v49, "#SendMessageConfirmIntentFlowStrategy handling request to generate rejected response", v67, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v68 = *MEMORY[0x277D5BED0];
  v69 = sub_267EF44F8();
  OUTLINED_FUNCTION_22(v69);
  v71 = v93;
  (*(v70 + 104))(v93, v68, v69);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v69);
  v75 = OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267BF3128(v71, v1 + v75, &qword_280229310, &unk_267EFCF70);
  swift_endAccess();
  sub_267EF3E58();
LABEL_30:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D78070()
{
  OUTLINED_FUNCTION_12();
  v1[22] = v0;
  v2 = sub_267EF8498();
  v1[23] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[24] = v3;
  v5 = *(v4 + 64);
  v1[25] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D78114()
{
  OUTLINED_FUNCTION_53();
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_delayedActionCancelCommand;
  v0[26] = OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_delayedActionCancelCommand;
  v3 = *(v1 + v2);
  v0[27] = v3;
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_437();
    if (!v5)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v9);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_460(v10, v11, v12, v13);
      OUTLINED_FUNCTION_29_1();
    }

    v14 = v0[22];

    v15 = v14[6];
    __swift_project_boxed_opaque_existential_0(v14 + 2, v14[5]);
    v16 = *(v15 + 24);
    v17 = OUTLINED_FUNCTION_54();
    v18(v17, v15);
    v19 = v0[21];
    __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
    v20 = *(MEMORY[0x277D5BFB8] + 4);
    v21 = swift_task_alloc();
    v0[28] = v21;
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);
    *v21 = v0;
    v21[1] = sub_267D7889C;
    OUTLINED_FUNCTION_61_0();
  }

  else
  {
    v24 = *(v1 + 56);
    if (*(v24 + 210) != 1 || (v26 = *(v24 + 288), v25 = *(v24 + 296), (v0[31] = v25) == 0))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v49 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v49, qword_280240FB0);
      v50 = sub_267EF89F8();
      v51 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v51))
      {
        v52 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v52);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v53, v54, v55, v56, v57, 2u);
        OUTLINED_FUNCTION_26();
      }

      v58 = v0[25];

      v59 = v0[1];
      OUTLINED_FUNCTION_165();

      __asm { BRAA            X2, X16 }
    }

    __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));

    if (sub_267CC8B28())
    {
      v27 = v0[22];
      v28 = v27[6];
      __swift_project_boxed_opaque_existential_0(v27 + 2, v27[5]);
      v29 = *(v28 + 8);
      v30 = OUTLINED_FUNCTION_54();
      v31(v30, v28);
      v32 = v0[10];
      v33 = v0[11];
      OUTLINED_FUNCTION_131(v0 + 7);
      LOBYTE(v32) = sub_267BF30D0();
      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
      if (v32)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v34 = sub_267EF8A08();
        __swift_project_value_buffer(v34, qword_280240FB0);
        OUTLINED_FUNCTION_43();

        v35 = sub_267EF89F8();
        v36 = sub_267EF95D8();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = OUTLINED_FUNCTION_48();
          OUTLINED_FUNCTION_52();
          *v37 = 136315138;
          v38 = OUTLINED_FUNCTION_64_0();
          *(v37 + 4) = sub_267BA33E8(v38, v39, v40);
          OUTLINED_FUNCTION_45();
          _os_log_impl(v41, v42, v43, v44, v37, 0xCu);
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_32_0();
        }

        v0[15] = sub_267EF8288();
        v0[16] = sub_267BC419C(&qword_28022BBD8, MEMORY[0x277D5D5A0]);
        __swift_allocate_boxed_opaque_existential_0(v0 + 12);
        sub_267EF8278();
        OUTLINED_FUNCTION_10(&unk_267F0EEB0);
        v45 = swift_task_alloc();
        v0[32] = v45;
        *v45 = v0;
        v45[1] = sub_267D78A2C;
        v46 = v0[22];
        OUTLINED_FUNCTION_64_0();
        OUTLINED_FUNCTION_165();

        __asm { BR              X3 }
      }
    }

    v63 = v0[24];
    v62 = v0[25];
    v64 = v0[23];
    v65 = [objc_allocWithZone(MEMORY[0x277D47B48]) init];
    v0[34] = v65;
    v66 = OUTLINED_FUNCTION_64_0();
    sub_267D9976C(v66, v67, v65);
    (*(v63 + 104))(v62, *MEMORY[0x277D5D838], v64);
    v68 = MEMORY[0x277D5D848];
    sub_267BC419C(&qword_28022BBC0, MEMORY[0x277D5D848]);
    sub_267BC419C(&unk_28022BBC8, v68);
    sub_267EF8408();
    (*(v0[24] + 8))(v0[25], v0[23]);
    v69 = OUTLINED_FUNCTION_73();
    sub_267D997C4(v69, v70, v65);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v71 = sub_267EF8A08();
    __swift_project_value_buffer(v71, qword_280240FB0);
    OUTLINED_FUNCTION_43();

    v72 = sub_267EF89F8();
    v73 = sub_267EF95D8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_48();
      v91 = OUTLINED_FUNCTION_52();
      *v74 = 136315138;
      v75 = OUTLINED_FUNCTION_64_0();
      v78 = sub_267BA33E8(v75, v76, v77);

      *(v74 + 4) = v78;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v79, v80, v81, v82, v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_45_2();
    }

    else
    {
    }

    OUTLINED_FUNCTION_427(v0[22]);
    v84 = *(v83 + 24);
    v85 = OUTLINED_FUNCTION_38_0();
    v86(v85);
    v87 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v88 = *(MEMORY[0x277D5BFB8] + 4);
    v89 = swift_task_alloc();
    v0[35] = v89;
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);
    *v89 = v0;
    v89[1] = sub_267D78BB0;
    OUTLINED_FUNCTION_533();
  }

  OUTLINED_FUNCTION_165();

  return MEMORY[0x2821BB6A0](v22);
}

uint64_t sub_267D7889C()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 224);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 240) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D789A8()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 176);

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v4 = *(v3 + v2);
  *(v3 + v2) = 0;

  v5 = *(v0 + 200);

  v6 = OUTLINED_FUNCTION_18_7();

  return v7(v6);
}

uint64_t sub_267D78A2C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[33] = v0;

  v9 = v3[31];

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 12);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D78B3C()
{
  OUTLINED_FUNCTION_12();
  [objc_allocWithZone(MEMORY[0x277D47218]) init];
  v1 = *(v0 + 200);

  v2 = OUTLINED_FUNCTION_18_7();

  return v3(v2);
}

uint64_t sub_267D78BB0()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 280);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v5 + 288) = v0;

  if (!v0)
  {
    *(v5 + 296) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D78CBC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 296);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 200);

  v3 = OUTLINED_FUNCTION_18_7();

  return v4(v3);
}

uint64_t sub_267D78D28()
{
  OUTLINED_FUNCTION_12();

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D78D94()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[33];
  v2 = v0[25];

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D78DF8()
{
  OUTLINED_FUNCTION_12();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 288);
  v2 = *(v0 + 200);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D78E64()
{
  OUTLINED_FUNCTION_12();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v1[8] = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_50();
  v1[10] = swift_task_alloc();
  v7 = sub_267EF44F8();
  v1[11] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D78F48()
{
  OUTLINED_FUNCTION_53();
  v52 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267C6AD4C(v3 + v4, v1, &qword_280229310, &unk_267EFCF70);
  OUTLINED_FUNCTION_5_1(v1, 1, v2);
  if (v5)
  {
    sub_267B9F98C(v0[10], &qword_280229310, &unk_267EFCF70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v9);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_26();
    }

    v15 = v0[13];
    v17 = v0[9];
    v16 = v0[10];

    sub_267C4BE60();
    OUTLINED_FUNCTION_61_1();
    *v18 = 0;
    v18[1] = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = v0[7];
    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);
    OUTLINED_FUNCTION_54();

    v22 = sub_267EF89F8();
    v23 = sub_267EF95D8();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v0[8];
      v24 = v0[9];
      v26 = OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_455();
      *v26 = 136315138;
      sub_267C6AD4C(v3 + v4, v24, &qword_280229310, &unk_267EFCF70);
      OUTLINED_FUNCTION_44_0();
      v27 = sub_267EF9098();
      v29 = sub_267BA33E8(v27, v28, &v51);

      *(v26 + 4) = v29;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_26();
    }

    v35 = v0[12];
    v36 = v0[10];
    v37 = v0[11];
    v38 = v0[9];
    v40 = v0[5];
    v39 = v0[6];
    v41 = *(v35 + 16);
    v42 = OUTLINED_FUNCTION_290();
    v43(v42);
    v44 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
    sub_267EF4668();
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    OUTLINED_FUNCTION_61_0();
    sub_267EF4468();
    v47 = *(v35 + 8);
    v48 = OUTLINED_FUNCTION_44_0();
    v49(v48);

    OUTLINED_FUNCTION_1();
  }

  return v19();
}

uint64_t sub_267D79294()
{
  OUTLINED_FUNCTION_12();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[15] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF4CC8();
  v1[16] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D79368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = *(v13 + 112);
  v15 = *(v14 + 56);
  if (*(v15 + 72) != 1)
  {
    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_0((v14 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(v14 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));
  if ((sub_267CC8B28() & 1) == 0)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_427(*(v13 + 112));
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_38_0();
  v19(v18);
  v21 = *(v13 + 80);
  v20 = *(v13 + 88);
  OUTLINED_FUNCTION_131((v13 + 56));
  OUTLINED_FUNCTION_395();
  LOBYTE(v21) = sub_267BF30D0();
  __swift_destroy_boxed_opaque_existential_0((v13 + 56));
  if (v21)
  {
LABEL_4:
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v13 + 152) = v22;
    *v22 = v23;
    v22[1] = sub_267D79678;
    v24 = *(v13 + 104);
    v25 = *(v13 + 112);
    v26 = *(v13 + 96);
    OUTLINED_FUNCTION_40();

    return sub_267D7BC30();
  }

  else
  {
LABEL_7:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v29 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v32);
      _os_log_impl(&dword_267B93000, v30, v31, "#SendMessageConfirmIntentFlowStrategy skipping prompt, returning empty output", v12, 2u);
      OUTLINED_FUNCTION_26();
    }

    v33 = *(v13 + 136);
    v61 = *(v13 + 144);
    v35 = *(v13 + 120);
    v34 = *(v13 + 128);
    v36 = *(v13 + 104);
    v37 = *(v13 + 112);
    v38 = *(v13 + 96);

    *(v15 + 72) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
    v39 = sub_267EF4668();
    v40 = sub_267EB7470(v39);
    v41 = MEMORY[0x277D84F90];
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

    v43 = sub_267EF4668();
    v44 = [v43 speakableGroupName];

    sub_267D797A0(v42, v44, v35);

    sub_267EF4158();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    *(v13 + 48) = 0;
    *(v13 + 32) = 0u;
    *(v13 + 16) = 0u;
    MEMORY[0x26D603C40](v41, v35, v41, v13 + 16);
    sub_267B9F98C(v13 + 16, &unk_28022CF80, &unk_267EFED50);
    sub_267B9F98C(v35, &unk_28022AE40, &unk_267EFCB60);
    v49 = MEMORY[0x277D5C1D8];
    v38[3] = v34;
    v38[4] = v49;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    (*(v33 + 32))(boxed_opaque_existential_0, v61, v34);
    v51 = *(v13 + 144);
    v52 = *(v13 + 120);

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_40();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, v61, a10, a11, a12);
  }
}

uint64_t sub_267D79678()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v1 + 144);
  v6 = *(v1 + 120);

  v7 = *(v3 + 8);

  return v7();
}

void sub_267D797A0(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void, void, void)@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v124 = &v108[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v108[-v12];
  v13 = sub_267EF8AE8();
  v126 = *(v13 - 8);
  v14 = *(v126 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v122 = &v108[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v113 = &v108[-v17];
  v18 = sub_267EF53D8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v112 = &v108[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v117 = &v108[-v24];
  MEMORY[0x28223BE20](v23);
  v26 = &v108[-v25];
  v27 = v3[5];
  v28 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v27);
  (*(v28 + 8))(v128, v27, v28);
  sub_267EF4148();
  __swift_project_boxed_opaque_existential_0(v128, v129);
  sub_267EF3B98();
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v128);
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v29 = swift_allocObject();
  v116 = xmmword_267EFC020;
  *(v29 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  v125 = a1;
  v115 = a2;
  *(v29 + 32) = sub_267BC9500();
  *(v29 + 40) = v30;
  sub_267EF4118();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_267F00200;
  *(v31 + 32) = sub_267BB90E4(0);
  *(v31 + 40) = v32;
  *(v31 + 48) = sub_267BB90E4(1);
  *(v31 + 56) = v33;
  *(v31 + 64) = sub_267BB90E4(2);
  *(v31 + 72) = v34;
  *(v31 + 80) = sub_267BB90E4(5);
  *(v31 + 88) = v35;
  *(v31 + 96) = sub_267BB90E4(6);
  *(v31 + 104) = v36;
  *(v31 + 112) = sub_267C8F86C(4);
  *(v31 + 120) = v37;
  sub_267EF4108();
  sub_267EF4098();
  v38 = sub_267EF6448();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_267EF6438();
  sub_267BBB050();

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v41 = sub_267EF8A08();
  v42 = __swift_project_value_buffer(v41, qword_280240FB0);
  v43 = v117;
  v120 = *(v19 + 16);
  v120(v117, v26, v18);
  v118 = v42;
  v44 = sub_267EF89F8();
  v45 = sub_267EF95D8();
  v46 = os_log_type_enabled(v44, v45);
  v123 = v13;
  v121 = v19;
  v119 = v26;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v110 = v47;
    v111 = swift_slowAlloc();
    v127 = v111;
    *v47 = 136315138;
    v48 = v112;
    v49 = v120;
    v120(v112, v43, v18);
    sub_267EF5458();
    v109 = v45;
    v129 = v18;
    v130 = sub_267BC419C(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v128);
    v49(boxed_opaque_existential_0, v48, v18);
    v51 = sub_267EF5448();
    v53 = v52;
    v54 = a3;
    v55 = *(v121 + 8);
    (v55)(v48, v18);
    v117 = v55;
    (v55)(v43, v18);
    a3 = v54;
    v13 = v123;
    __swift_destroy_boxed_opaque_existential_0(v128);
    v56 = sub_267BA33E8(v51, v53, &v127);

    v57 = v110;
    *(v110 + 1) = v56;
    _os_log_impl(&dword_267B93000, v44, v109, "#makeContextForConfirmIntent submitting NLv4 dialog act: %s", v57, 0xCu);
    v58 = v111;
    __swift_destroy_boxed_opaque_existential_0(v111);
    MEMORY[0x26D60A7B0](v58, -1, -1);
    v26 = v119;
    v19 = v121;
    MEMORY[0x26D60A7B0](v57, -1, -1);
  }

  else
  {

    v117 = *(v19 + 8);
    (v117)(v43, v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v59 = *(v19 + 72);
  v60 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v116;
  v120((v61 + v60), v26, v18);
  sub_267EF4088();
  v62 = v125;

  v63 = sub_267EF89F8();
  v64 = sub_267EF95D8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 134217984;
    *(v65 + 4) = sub_267BAF0DC(v62);

    _os_log_impl(&dword_267B93000, v63, v64, "#makeContextForConfirmIntent #ReferenceResolution submitting %ld entities to SRR...", v65, 0xCu);
    MEMORY[0x26D60A7B0](v65, -1, -1);
  }

  else
  {
  }

  v66 = sub_267BAF0DC(v62);
  if (v66)
  {
    v67 = v66;
    v128[0] = MEMORY[0x277D84F90];
    sub_267C7263C();
    if (v67 < 0)
    {
      __break(1u);
      return;
    }

    *&v116 = v18;
    v120 = a3;
    v68 = v62;
    v69 = 0;
    v70 = v128[0];
    v71 = v68 & 0xC000000000000001;
    do
    {
      if (v71)
      {
        v72 = MEMORY[0x26D609870](v69, v125);
      }

      else
      {
        v72 = *(v125 + 8 * v69 + 32);
      }

      v73 = v72;
      v74 = v122;
      v75 = sub_267EF8A78();
      v76 = v124;
      __swift_storeEnumTagSinglePayload(v124, 1, 1, v75);
      sub_267BF66B0();

      sub_267B9F98C(v76, &unk_28022BAE0, &unk_267F07D80);
      v128[0] = v70;
      v77 = *(v70 + 16);
      if (v77 >= *(v70 + 24) >> 1)
      {
        sub_267C7263C();
        v70 = v128[0];
      }

      ++v69;
      *(v70 + 16) = v77 + 1;
      v78 = v70 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v77;
      v13 = v123;
      (*(v126 + 32))(v78, v74, v123);
    }

    while (v67 != v69);
    v18 = v116;
  }

  sub_267EF4058();
  v79 = v115;
  if (v115)
  {
    v80 = sub_267EF8A78();
    v81 = v124;
    __swift_storeEnumTagSinglePayload(v124, 1, 1, v80);
    v82 = v114;
    sub_267EB8B0C(v81, v114);
    sub_267B9F98C(v81, &unk_28022BAE0, &unk_267F07D80);
    if (__swift_getEnumTagSinglePayload(v82, 1, v13) != 1)
    {
      (*(v126 + 32))(v113, v82, v13);
      v83 = v79;
      v84 = sub_267EF89F8();
      v85 = sub_267EF95D8();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v88 = v79;
        v89 = v87;
        v127 = v88;
        v128[0] = v87;
        *v86 = 136315138;
        v90 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8B0, &unk_267F01FD0);
        v91 = sub_267EF9098();
        v93 = sub_267BA33E8(v91, v92, v128);

        *(v86 + 4) = v93;
        _os_log_impl(&dword_267B93000, v84, v85, "#makeContextForConfirmIntent #ReferenceResolution submitting Speakable Group: %s to SRR...", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x26D60A7B0](v89, -1, -1);
        MEMORY[0x26D60A7B0](v86, -1, -1);
      }

      v95 = sub_267EF4038();
      if (*v94)
      {
        v96 = v94;
        sub_267C705E4();
        v97 = *(*v96 + 16);
        sub_267C70614(v97);
        v98 = *v96;
        *(v98 + 16) = v97 + 1;
        v99 = v126;
        v100 = v98 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v97;
        v101 = v113;
        (*(v126 + 16))(v100, v113, v13);
        v95(v128, 0);
        (*(v99 + 8))(v101, v13);
      }

      else
      {
        v95(v128, 0);
        (*(v126 + 8))(v113, v13);
      }

      goto LABEL_31;
    }
  }

  else
  {
    v82 = v114;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v13);
  }

  sub_267B9F98C(v82, &qword_2802294B0, &qword_267F001F0);
LABEL_31:
  v102 = [objc_allocWithZone(MEMORY[0x277D47128]) init];
  [v102 setReason_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_267EFCA40;
  *(v103 + 32) = v102;
  v104 = v102;
  sub_267EF40F8();
  v105 = sub_267EF4748();
  v106 = *(v105 + 48);
  v107 = *(v105 + 52);
  swift_allocObject();
  sub_267EF4738();
  if (qword_2802288D0 != -1)
  {
    swift_once();
  }

  sub_267EF5648();
  sub_267EF4708();

  sub_267EF4728();

  sub_267EF4138();

  (v117)(v119, v18);
}

uint64_t sub_267D7A4CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267D7A4F8()
{
  OUTLINED_FUNCTION_56();
  if (*(*(v0[4] + 56) + 210))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v1 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v1, qword_280240FB0);
    v2 = sub_267EF89F8();
    v3 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v3))
    {
      v4 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v4);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_26();
    }

    v10 = v0[2];

    sub_267EF3D38();
    sub_267EF3D28();
    OUTLINED_FUNCTION_1();

    return v11();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_26();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[5] = v22;
    *v22 = v23;
    v22[1] = sub_267C53C1C;
    v24 = v0[3];
    v25 = v0[4];
    v26 = v0[2];

    return sub_267D79294();
  }
}

uint64_t sub_267D7A6C4()
{
  OUTLINED_FUNCTION_12();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[40] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v1[41] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  v1[42] = OUTLINED_FUNCTION_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  v1[43] = OUTLINED_FUNCTION_2();
  v16 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  v1[44] = OUTLINED_FUNCTION_2();
  v19 = sub_267EF48A8();
  v1[45] = v19;
  OUTLINED_FUNCTION_30_0(v19);
  v1[46] = v20;
  v22 = *(v21 + 64);
  v1[47] = OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_267D7A830()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  *(v0 + 384) = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = *(v0 + 376);
  v11 = *(v0 + 344);
  v12 = *(v0 + 352);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);

  v15 = *(v13 + 56);
  *(v0 + 392) = v15;
  *(v15 + 42) = 2;
  *(v15 + 210) = 0;
  sub_267EF3CA8();
  OUTLINED_FUNCTION_294();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  *(v0 + 400) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v16 = sub_267EF4668();
  v17 = sub_267EB7470(v16);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v19 = sub_267EF4668();
  v20 = [v19 speakableGroupName];

  sub_267D797A0(v18, v20, v11);

  sub_267EF4158();
  v21 = OUTLINED_FUNCTION_3_19();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OUTLINED_FUNCTION_107_0();
  sub_267EF4818();
  __swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(v13 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));
  v25 = 0;
  if (sub_267CC8B28())
  {
    OUTLINED_FUNCTION_427(*(v0 + 312));
    v27 = *(v26 + 8);
    v28 = OUTLINED_FUNCTION_38_0();
    v29(v28);
    v31 = *(v0 + 280);
    v30 = *(v0 + 288);
    OUTLINED_FUNCTION_131((v0 + 256));
    OUTLINED_FUNCTION_395();
    v25 = sub_267BF30D0();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  }

  *(v0 + 544) = v25 & 1;
  v32 = *(v0 + 312);
  v33 = v32[6];
  __swift_project_boxed_opaque_existential_0(v32 + 2, v32[5]);
  v34 = *(v33 + 8);
  v35 = OUTLINED_FUNCTION_54();
  v36(v35, v33);
  v37 = *(v0 + 40);
  v38 = *(v0 + 48);
  v39 = OUTLINED_FUNCTION_520();
  __swift_project_boxed_opaque_existential_0(v39, v40);
  OUTLINED_FUNCTION_54();
  v41 = sub_267EF3C28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v41 & 1) != 0 || (v25)
  {
    v50 = *(v0 + 336);
    type metadata accessor for SendMessageCATsSimple();
    sub_267EF7B68();
    *(v0 + 408) = sub_267EF79E8();
    v51 = swift_task_alloc();
    *(v0 + 416) = v51;
    *v51 = v0;
    v51[1] = sub_267D7ABE8;
    OUTLINED_FUNCTION_36_0();

    return sub_267E9D924(v52);
  }

  else
  {
    v43 = *(v0 + 304);
    v42 = *(v0 + 312);
    v44 = __swift_project_boxed_opaque_existential_0((v42 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v42 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
    v45 = swift_task_alloc();
    *(v0 + 480) = v45;
    *(v45 + 16) = v42;
    *(v45 + 24) = v43;
    v46 = *v44;
    v47 = swift_task_alloc();
    *(v0 + 488) = v47;
    *v47 = v0;
    v47[1] = sub_267D7B41C;
    OUTLINED_FUNCTION_36_0();

    return sub_267CC55D8();
  }
}

uint64_t sub_267D7ABE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *(v4 + 408);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v10 + 424) = v9;
  *(v10 + 432) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D7AD00()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 376);
  v3 = [*(v0 + 424) catId];
  sub_267EF9028();
  OUTLINED_FUNCTION_359();

  OUTLINED_FUNCTION_37_1();
  sub_267EF47D8();
  if (v1 == 1)
  {
    v4 = *(v0 + 424);
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = *(v0 + 312);
    v8 = v7[5];
    v9 = v7[6];
    __swift_project_boxed_opaque_existential_0(v7 + 2, v8);
    v10 = *(v9 + 8);
    v11 = v4;
    v10(v8, v9);
    v12 = *(v0 + 240);
    v13 = *(v0 + 248);
    OUTLINED_FUNCTION_131((v0 + 216));
    sub_267BCD18C();
    sub_267EF81F8();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_267EF82A8();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    *(v0 + 200) = sub_267EF84F8();
    OUTLINED_FUNCTION_293();
    *(v0 + 208) = sub_267BC419C(v22, v23);
    __swift_allocate_boxed_opaque_existential_0((v0 + 176));
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_515();
    sub_267EF84E8();
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    OUTLINED_FUNCTION_10(&dword_267F0EEA8);
    v38 = v24;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 440) = v25;
    *v25 = v26;
    v25[1] = sub_267D7AFF0;
    v27 = *(v0 + 376);
    v28 = *(v0 + 312);
    OUTLINED_FUNCTION_515();

    return v38();
  }

  else
  {
    v30 = *(v0 + 424);
    v31 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v31);
    *(v0 + 456) = sub_267EF4188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v32 = swift_allocObject();
    *(v0 + 464) = v32;
    *(v32 + 16) = xmmword_267EFCA40;
    *(v32 + 32) = v30;
    v39 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD50]);
    v33 = v30;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 472) = v34;
    *v34 = v35;
    v34[1] = sub_267D7B218;
    v36 = *(v0 + 376);
    v37 = *(v0 + 296);

    return (v39)(v37, v32, v36);
  }
}

uint64_t sub_267D7AFF0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *(v5 + 424);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v3 + 448) = v0;

  if (!v0)
  {
    sub_267B9F98C(v3 + 176, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D7B120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = *(v12 + 296);

  sub_267B9A5E8((v12 + 136), v14);
  v15 = *(v12 + 384);
  sub_267EF89F8();
  v16 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v16))
  {
    v17 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v17);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_368();
  v23 = *(v13 + 8);
  v24 = OUTLINED_FUNCTION_26_0();
  v25(v24);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_267D7B218()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[59];
  v3 = v1[58];
  v4 = v1[57];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D7B334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  v14 = *(v12 + 384);
  sub_267EF89F8();
  v15 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v15))
  {
    v16 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v16);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_368();
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_26_0();
  v24(v23);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_267D7B41C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 488);
  v6 = *(v4 + 480);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v10 + 496) = v9;
  *(v10 + 504) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D7B534()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = sub_267ED9A8C(*(v0 + 496));
  if (v2 >> 60 == 15)
  {
    v3 = OUTLINED_FUNCTION_402();
  }

  else
  {
    v5 = *(v0 + 376);
    sub_267BBE0C8(v1, v2);
    v3 = sub_267EF47C8();
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 400);
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  v10 = *(v6 + 296);
  *(v6 + 288) = v3;
  *(v6 + 296) = v4;

  v11 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v11);
  *(v0 + 512) = sub_267EF4188();
  OUTLINED_FUNCTION_250();
  *(v0 + 520) = sub_267EF4648();
  v12 = v9[6];
  __swift_project_boxed_opaque_existential_0(v9 + 2, v9[5]);
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_54_1();
  v15(v14, v12);
  OUTLINED_FUNCTION_47_13();
  sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 528) = v16;
  *v16 = v17;
  v16[1] = sub_267D7B724;
  v18 = *(v0 + 496);
  v19 = *(v0 + 376);
  OUTLINED_FUNCTION_125();

  return sub_267BCF3A4(v20, v21, v22, v23, v24);
}

uint64_t sub_267D7B684()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  (*(v0[46] + 8))(v0[47], v0[45]);
  v1 = v0[63];
  OUTLINED_FUNCTION_300_0();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267D7B724()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = v5[66];
  v7 = v5[65];
  v8 = v5[64];
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v3 + 536) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 96));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D7B864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = *(v12 + 296);

  sub_267B9A5E8((v12 + 56), v14);
  v15 = *(v12 + 384);
  sub_267EF89F8();
  v16 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v16))
  {
    v17 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v17);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_368();
  v23 = *(v13 + 8);
  v24 = OUTLINED_FUNCTION_26_0();
  v25(v24);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_267D7B95C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  (*(v0[46] + 8))(v0[47], v0[45]);
  v1 = v0[54];
  OUTLINED_FUNCTION_300_0();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267D7B9FC()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  sub_267B9F98C(v0 + 176, &qword_280229330, &qword_267F092F0);
  v7 = *(v0 + 448);
  OUTLINED_FUNCTION_300_0();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267D7BAC0()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v7 = *(v0 + 536);
  OUTLINED_FUNCTION_300_0();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267D7BB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_267BBD07C;

  return sub_267D86810(a1, a3, 0, 0, 0, 0);
}

uint64_t sub_267D7BC30()
{
  OUTLINED_FUNCTION_12();
  v1[66] = v0;
  v1[65] = v2;
  v1[64] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[67] = OUTLINED_FUNCTION_50();
  v1[68] = swift_task_alloc();
  v7 = sub_267EF4CC8();
  v1[69] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[70] = v8;
  v10 = *(v9 + 64);
  v1[71] = OUTLINED_FUNCTION_50();
  v1[72] = swift_task_alloc();
  v11 = sub_267EF70D8();
  v1[73] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[74] = v12;
  v14 = *(v13 + 64);
  v1[75] = OUTLINED_FUNCTION_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB78, &unk_267F08340);
  v1[76] = v15;
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  v1[77] = OUTLINED_FUNCTION_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_18(v18);
  v20 = *(v19 + 64);
  v1[78] = OUTLINED_FUNCTION_50();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v21 = sub_267EF2D28();
  v1[81] = v21;
  OUTLINED_FUNCTION_30_0(v21);
  v1[82] = v22;
  v24 = *(v23 + 64);
  v1[83] = OUTLINED_FUNCTION_2();
  v25 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_267D7BE2C()
{
  v1 = v0[66];
  v2 = v0[65];
  v0[84] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v3 = sub_267EF4668();
  v0[85] = v3;
  v4 = *(v1 + 56);
  v0[86] = v4;
  LODWORD(v4) = *(v4 + 210);
  v0[62] = 0;
  if (v4 == 1)
  {
    v5 = v3;
    sub_267BA9F38(0, &qword_28022BB80, 0x277D473D0);
    v6 = v5;
    OUTLINED_FUNCTION_22_0();
    v7 = sub_267EF9768();
    sub_267BA9F38(0, &qword_28022BB88, 0x277D47A50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_514(v8, xmmword_267EFCA40);
    v9 = v7;
    v10 = OUTLINED_FUNCTION_107_0();
    v11 = sub_267DA1C44(v10);
    v12 = [objc_allocWithZone(MEMORY[0x277D47A48]) init];
    v0[62] = v12;
    if (v12)
    {
      v13 = v0[83];
      v14 = v0[82];
      v15 = v0[81];
      sub_267EF2D18();
      sub_267EF2CE8();
      v16 = *(v14 + 8);
      v17 = OUTLINED_FUNCTION_100_0();
      v18(v17);
      v19 = OUTLINED_FUNCTION_68_0();
      sub_267E7F030(v19, v20, v12);
      sub_267D9992C(v11, &selRef_aceId);
      if (v21)
      {
        sub_267EF8FF8();
        OUTLINED_FUNCTION_25_0();
      }

      else
      {
        v13 = 0;
      }

      [v12 setDelayedActionAceId_];
    }

    sub_267EF6FF8();
    v85 = v9;
    if (sub_267EF6FC8())
    {
      v24 = v0[80];
      sub_267EF6FA8();

      sub_267EF8698();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = v0[79];
    v27 = v0[77];
    v28 = v0[76];
    v29 = v0[73];
    __swift_storeEnumTagSinglePayload(v0[80], v25, 1, v29);
    sub_267EF7088();
    v30 = OUTLINED_FUNCTION_145_1();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
    v33 = *(v28 + 48);
    v34 = OUTLINED_FUNCTION_533();
    sub_267C6AD4C(v34, v35, &qword_2802295B0, &unk_267EFDCA0);
    sub_267C6AD4C(v26, v27 + v33, &qword_2802295B0, &unk_267EFDCA0);
    v36 = OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_5_1(v36, v37, v29);
    if (!v38)
    {
      v41 = v0[73];
      sub_267C6AD4C(v0[77], v0[78], &qword_2802295B0, &unk_267EFDCA0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27 + v33, 1, v41);
      v43 = v0[80];
      v44 = v0[79];
      v45 = v0[78];
      if (EnumTagSinglePayload != 1)
      {
        v83 = v0[80];
        v84 = v0[77];
        v76 = v0[75];
        v77 = v0[74];
        v78 = v0[73];
        (*(v77 + 32))(v76, v27 + v33, v78);
        OUTLINED_FUNCTION_295();
        sub_267BC419C(v79, v80);
        v82 = sub_267EF8FE8();
        v81 = *(v77 + 8);
        v81(v76, v78);
        sub_267B9F98C(v44, &qword_2802295B0, &unk_267EFDCA0);
        sub_267B9F98C(v83, &qword_2802295B0, &unk_267EFDCA0);
        v81(v45, v78);
        sub_267B9F98C(v84, &qword_2802295B0, &unk_267EFDCA0);
        v9 = v85;
        if (v82)
        {
          v22 = 0;
          v23 = 0;
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v46 = v0[74];
      v47 = v0[73];
      sub_267B9F98C(v0[79], &qword_2802295B0, &unk_267EFDCA0);
      sub_267B9F98C(v43, &qword_2802295B0, &unk_267EFDCA0);
      v48 = *(v46 + 8);
      v49 = OUTLINED_FUNCTION_533();
      v50(v49);
LABEL_18:
      sub_267B9F98C(v0[77], &qword_28022BB78, &unk_267F08340);
      v9 = v85;
LABEL_19:
      v51 = v0[83];
      v52 = v0[82];
      v53 = v0[81];
      sub_267EF2D18();
      v22 = sub_267EF2CE8();
      v23 = v54;
      v55 = *(v52 + 8);
      v56 = OUTLINED_FUNCTION_66();
      v57(v56);
      goto LABEL_20;
    }

    v39 = v0[80];
    v40 = v0[73];
    sub_267B9F98C(v0[79], &qword_2802295B0, &unk_267EFDCA0);
    sub_267B9F98C(v39, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_5_1(v27 + v33, 1, v40);
    if (!v38)
    {
      goto LABEL_18;
    }

    sub_267B9F98C(v0[77], &qword_2802295B0, &unk_267EFDCA0);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0;
  }

LABEL_20:
  v0[91] = v12;
  v0[90] = v11;
  v0[89] = v9;
  v0[88] = v23;
  v0[87] = v22;
  __swift_project_boxed_opaque_existential_0((v0[66] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(v0[66] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));
  if ((sub_267CC8B28() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_561();
  v58 = OUTLINED_FUNCTION_6_4();
  v59(v58);
  v61 = v0[60];
  v60 = v0[61];
  OUTLINED_FUNCTION_131(v0 + 57);
  OUTLINED_FUNCTION_395();
  LOBYTE(v61) = sub_267BF30D0();
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  if (v61)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[92] = v62;
    *v62 = v63;
    OUTLINED_FUNCTION_417(v62);
    OUTLINED_FUNCTION_15();

    return sub_267D81920();
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_561();
    v66 = OUTLINED_FUNCTION_6_4();
    v67(v66);
    v68 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    OUTLINED_FUNCTION_6_4();
    v69 = sub_267EF3C28();
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    if (v69)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[94] = v70;
      *v70 = v71;
      OUTLINED_FUNCTION_417(v70);
      OUTLINED_FUNCTION_15();

      return sub_267D82E00();
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[96] = v73;
      *v73 = v74;
      OUTLINED_FUNCTION_417(v73);
      OUTLINED_FUNCTION_15();

      return sub_267D7EBF4();
    }
  }
}

uint64_t sub_267D7C528()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 736);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 744) = v0;

  if (v0)
  {
    v9 = *(v3 + 704);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D7D1F4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 752);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 760) = v0;

  if (v0)
  {
    v9 = *(v3 + 704);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D7DDC8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 768);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 776) = v0;

  if (v0)
  {
    v9 = *(v3 + 704);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D7E99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_375();

  v26 = *(v15 + 744);
  OUTLINED_FUNCTION_55_12();
  v16 = *(v15 + 536);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t sub_267D7EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_375();

  v26 = *(v15 + 760);
  OUTLINED_FUNCTION_55_12();
  v16 = *(v15 + 536);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t sub_267D7EB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_375();

  v26 = *(v15 + 776);
  OUTLINED_FUNCTION_55_12();
  v16 = *(v15 + 536);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t sub_267D7EBF4()
{
  OUTLINED_FUNCTION_12();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v1[30] = v5;
  v1[31] = v6;
  v1[29] = v7;
  v8 = sub_267EF2CC8();
  v1[36] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[37] = v9;
  v11 = *(v10 + 64);
  v1[38] = OUTLINED_FUNCTION_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_18(v12);
  v14 = *(v13 + 64);
  v1[39] = OUTLINED_FUNCTION_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  v1[40] = OUTLINED_FUNCTION_2();
  v18 = sub_267EF48A8();
  v1[41] = v18;
  OUTLINED_FUNCTION_30_0(v18);
  v1[42] = v19;
  v21 = *(v20 + 64);
  v1[43] = OUTLINED_FUNCTION_2();
  v22 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_267D7ED48()
{
  v134 = v0;
  v1 = v0[43];
  v2 = v0[35];
  v3 = v0[30];
  v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v4 = sub_267EF4668();
  v0[45] = v4;
  sub_267D84D44();
  v5 = v2[7];
  v0[46] = v5;
  v6 = v2[6];
  OUTLINED_FUNCTION_106_2(v2 + 2, v2[5]);
  v7 = OUTLINED_FUNCTION_43();
  v8(v7, v6);
  sub_267ED9AEC(v4, v5, (v0 + 2), v9, v10, v11, v12, v13, v105, v107, v108, v110, v111, v113, v115, v119, v120, v124, v125, v130);
  v15 = v14;
  v0[47] = v14;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v16 = [v4 speakableGroupName];
  if (v16)
  {
    v17 = v16;
    v18 = v0[40];
    v19 = [v16 spokenPhrase];

    sub_267EF9028();
    OUTLINED_FUNCTION_401();
    sub_267EF90F8();
  }

  v20 = v0[40];
  sub_267EF79B8();
  v21 = 1;
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    v26 = v0[39];
    sub_267EF6FA8();

    sub_267EF8698();

    v21 = 0;
  }

  v27 = v0[39];
  v28 = v0[35];
  v29 = sub_267EF70D8();
  __swift_storeEnumTagSinglePayload(v27, v21, 1, v29);
  if (sub_267D84BC4())
  {
    v30 = v0[37];
    v31 = v0[38];
    v32 = v0[35];
    v33 = v0[36];
    v132 = xmmword_267EFD5C0;
    v133 = 4;
    sub_267EF2CB8();
    sub_267C5BD60(&v132, v31);
    v34 = *(v30 + 8);
    v35 = OUTLINED_FUNCTION_68_0();
    v36(v35);
  }

  if (*(v5 + 16) == 4)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v37 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v37, qword_280240FB0);
    v38 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v40);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_460(v41, v42, v43, v44);
      OUTLINED_FUNCTION_29_1();
    }

    v45 = v0[40];
    v46 = v0[35];
    v47 = v0[30];
    v126 = OUTLINED_FUNCTION_317_0();
    v131 = v48;

    v49 = __swift_project_boxed_opaque_existential_0((v46 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v46 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
    v50 = swift_task_alloc();
    v0[48] = v50;
    *(v50 + 16) = v45;
    *(v50 + 24) = v46;
    *(v50 + 32) = v47;
    *(v50 + 40) = v131;
    *(v50 + 56) = v126;
    v51 = *v49;
    v52 = swift_task_alloc();
    v0[49] = v52;
    *v52 = v0;
    v52[1] = sub_267D7F634;
    OUTLINED_FUNCTION_540();

    return sub_267CC4474();
  }

  else
  {
    v55 = sub_267EF96E8();
    v141 = v15;
    if (v55)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v56 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
      v57 = sub_267EF89F8();
      v58 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v58))
      {
        v59 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_454(v59);
        OUTLINED_FUNCTION_340(&dword_267B93000, v60, v58, "#SendMessageConfirmIntentFlowStrategy executing pattern to confirm audio message");
        OUTLINED_FUNCTION_45_2();
      }

      v61 = v0[40];
      v62 = v0[35];
      v63 = v0[30];
      v116 = OUTLINED_FUNCTION_317_0();
      v121 = v64;

      v65 = __swift_project_boxed_opaque_existential_0((v62 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v62 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
      v127 = *(v5 + 280);
      v138 = sub_267D60D20();
      sub_267D60D34();
      v66 = *(v5 + 210);
      sub_267D84B60();
      v67 = swift_task_alloc();
      v0[51] = v67;
      *(v67 + 16) = v61;
      *(v67 + 24) = v62;
      *(v67 + 32) = v63;
      *(v67 + 40) = v121;
      *(v67 + 56) = v116;
      v68 = *v65;
      v69 = swift_task_alloc();
      v0[52] = v69;
      *v69 = v0;
      v69[1] = sub_267D7FB00;
      v140 = v67;
      OUTLINED_FUNCTION_540();

      return sub_267CC3E90();
    }

    else if (sub_267E76140(v4))
    {

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v71 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v71, qword_280240FB0);
      v72 = sub_267EF89F8();
      v73 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v73))
      {
        v74 = OUTLINED_FUNCTION_32();
        *v74 = 0;
        _os_log_impl(&dword_267B93000, v72, v73, "#SendMessageConfirmIntentFlowStrategy executing pattern to confirm message with attachment", v74, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v75 = v0[40];
      v76 = v0[35];
      v77 = v0[30];
      v117 = OUTLINED_FUNCTION_317_0();
      v122 = v78;

      v79 = __swift_project_boxed_opaque_existential_0((v76 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v76 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
      v128 = *(v5 + 280);
      v138 = *(v5 + 211);
      sub_267D60D34();
      v80 = *(v5 + 210);
      v81 = swift_task_alloc();
      v0[54] = v81;
      *(v81 + 16) = v75;
      *(v81 + 24) = v4;
      *(v81 + 32) = v76;
      *(v81 + 40) = v77;
      *(v81 + 48) = v122;
      *(v81 + 64) = v117;
      v82 = *v79;
      v83 = swift_task_alloc();
      v0[55] = v83;
      *v83 = v0;
      v83[1] = sub_267D7FFCC;
      OUTLINED_FUNCTION_540();

      return sub_267CC3898();
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v85 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v85, qword_280240FB0);
      v86 = sub_267EF89F8();
      v87 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_495(v87))
      {
        v88 = OUTLINED_FUNCTION_32();
        *v88 = 0;
        _os_log_impl(&dword_267B93000, v86, v87, "#SendMessageConfirmIntentFlowStrategy executing pattern to confirm text message", v88, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v89 = v0[35];

      v90 = sub_267CA7914();
      if (v90)
      {
        v91 = v0[35];
        sub_267CA7D2C();
      }

      v92 = v0[40];
      v93 = v0[35];
      v94 = v0[30];
      v95 = *(v93 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24);
      v106 = OUTLINED_FUNCTION_317_0();
      v109 = v96;
      v99 = __swift_project_boxed_opaque_existential_0(v97, v98);
      v129 = *(v5 + 212);
      v138 = *(v5 + 280);
      v123 = *(v5 + 211);
      sub_267D60D34();
      v118 = *(v5 + 213);
      v114 = *(v5 + 312) != 0;
      v112 = *(v5 + 210);
      v100 = sub_267D84B60();
      v101 = swift_task_alloc();
      v0[57] = v101;
      *(v101 + 16) = v4;
      *(v101 + 24) = v92;
      *(v101 + 32) = v93;
      *(v101 + 40) = v94;
      *(v101 + 48) = v109;
      *(v101 + 64) = v106;
      v102 = *v99;
      v103 = swift_task_alloc();
      v0[58] = v103;
      *v103 = v0;
      v103[1] = sub_267D80498;
      v139 = &unk_267F082D8;
      v140 = v101;
      v137 = v90 & 1;
      v136 = v100 & 1;
      v135 = v112;
      OUTLINED_FUNCTION_540();

      return sub_267CC4A44();
    }
  }
}

uint64_t sub_267D7F634()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 392);
  v8 = *(v7 + 384);
  v9 = *(v7 + 376);
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v12 + 400) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267D7FA3C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_302_0();
  sub_267B9F98C(v0, &qword_2802295B0, &unk_267EFDCA0);
  v2 = OUTLINED_FUNCTION_130();
  v3(v2);
  v4 = *(v1 + 400);
  OUTLINED_FUNCTION_212_0();
  sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267D7FB00()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 416);
  v8 = *(v7 + 408);
  v9 = *(v7 + 376);
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v12 + 424) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267D7FF08()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_302_0();
  sub_267B9F98C(v0, &qword_2802295B0, &unk_267EFDCA0);
  v2 = OUTLINED_FUNCTION_130();
  v3(v2);
  v4 = *(v1 + 424);
  OUTLINED_FUNCTION_212_0();
  sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267D7FFCC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 440);
  v8 = *(v7 + 432);
  v9 = *(v7 + 376);
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v12 + 448) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267D803D4()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_302_0();
  sub_267B9F98C(v0, &qword_2802295B0, &unk_267EFDCA0);
  v2 = OUTLINED_FUNCTION_130();
  v3(v2);
  v4 = *(v1 + 448);
  OUTLINED_FUNCTION_212_0();
  sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267D80498()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[26] = v1;
  v2[27] = v4;
  v2[28] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 464);
  v8 = *(v7 + 456);
  v9 = *(v7 + 376);
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v12 + 472) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267D808A0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_302_0();
  sub_267B9F98C(v0, &qword_2802295B0, &unk_267EFDCA0);
  v2 = OUTLINED_FUNCTION_130();
  v3(v2);
  v4 = *(v1 + 472);
  OUTLINED_FUNCTION_212_0();
  sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267D80964()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 512);
  v9 = *(v7 + 504);
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v5 + 520) = v0;

  if (!v0)
  {
    *(v5 + 560) = v3 & 1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267D80A90()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v2 = *(v1 + 560);
  v3 = *(v1 + 488);
  v4 = sub_267EF89F8();
  if (v2 == 1)
  {
    v5 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_495(v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v6);
      _os_log_impl(&dword_267B93000, v4, v5, "#SendMessageConfirmIntentFlowStrategy snippet updated, removing visual from pattern execution result", v0, 2u);
      OUTLINED_FUNCTION_26();
    }

    v7 = *(v1 + 480);
    v8 = *(v1 + 344);

    [v7 setVisual_];
    sub_267EF4888();
    v4 = *(v1 + 496);
  }

  else
  {
    v7 = sub_267EF95C8();
    v9 = OUTLINED_FUNCTION_495(v7);
    v10 = *(v1 + 496);
    if (v9)
    {
      v11 = OUTLINED_FUNCTION_32();
      *v11 = 0;
      _os_log_impl(&dword_267B93000, v4, v7, "#SendMessageConfirmIntentFlowStrategy view not available, falling back to dialog", v11, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

  v12 = *(v1 + 344);
  if ((sub_267EF4878() & 1) == 0)
  {
    v13 = [*(v1 + 480) visual];
    if (v13)
    {
      OUTLINED_FUNCTION_489();
      OUTLINED_FUNCTION_359();

      v14 = OUTLINED_FUNCTION_37_1();
      sub_267BBE0DC(v14, v15);
      v13 = sub_267EF47C8();
    }

    else
    {
      v16 = 0;
    }

    OUTLINED_FUNCTION_267(v13, v16);
  }

  v17 = OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_97(v17);
  *(v1 + 528) = sub_267EF4188();
  OUTLINED_FUNCTION_250();
  v18 = sub_267EF4648();
  v19 = OUTLINED_FUNCTION_78_10(v18);
  v20(v19);
  v21 = *(v1 + 80);
  v22 = *(v1 + 88);
  OUTLINED_FUNCTION_53_11((v1 + 56));
  sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 544) = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_39_13(v23);
  OUTLINED_FUNCTION_125();

  return sub_267BCF3A4(v25, v26, v27, v28, v29);
}

uint64_t sub_267D80C70()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = v5[68];
  v7 = v5[67];
  v8 = v5[66];
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v3 + 552) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 56));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D80DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 360);
  v13 = *(v10 + 336);
  v12 = *(v10 + 344);
  v15 = *(v10 + 320);
  v14 = *(v10 + 328);
  v17 = *(v10 + 304);
  v16 = *(v10 + 312);

  sub_267B9F98C(v16, &qword_2802295B0, &unk_267EFDCA0);
  v18 = *(v13 + 8);
  v19 = OUTLINED_FUNCTION_66();
  v20(v19);
  sub_267B9F98C(v15, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_267D80E88()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 480);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 312);

  sub_267B9F98C(v6, &qword_2802295B0, &unk_267EFDCA0);
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_66();
  v9(v8);
  v10 = *(v0 + 520);
  OUTLINED_FUNCTION_212_0();
  sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_267D80F70()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);

  sub_267B9F98C(v5, &qword_2802295B0, &unk_267EFDCA0);
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_66();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v9 = *(v0 + 552);
  OUTLINED_FUNCTION_212_0();
  sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267D81058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_267D81084, 0, 0);
}

uint64_t sub_267D81084()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for SendMessageConfirmFaceTimeInviteParameters(0);
  sub_267BE855C(v2, v1 + *(v3 + 72));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_267C1F4C8;
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[4];
  v9 = v0[5];
  v11 = OUTLINED_FUNCTION_66_6(v0[2]);

  return sub_267D8A304(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267D81138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_267D81164, 0, 0);
}

uint64_t sub_267D81164()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for SendMessageConfirmAudioMessageParameters(0);
  sub_267BE855C(v2, v1 + *(v3 + 68));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_267D99FC4;
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[4];
  v9 = v0[5];
  v11 = OUTLINED_FUNCTION_66_6(v0[2]);

  return sub_267D8DDF8(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267D81218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D812E4, 0, 0);
}

uint64_t sub_267D812E4()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for SendMessageConfirmAttachmentMessageParameters(0);
  sub_267BE855C(v2, v3 + v4[18]);
  sub_267D29870();
  if (v5)
  {
    v6 = v0[13];
    sub_267EF90F8();
  }

  v7 = v0[13];
  v8 = v0[5];
  v9 = v0[2];
  v10 = sub_267EF79B8();
  v11 = 1;
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  sub_267BF3128(v7, v9 + v4[6], &unk_28022AE30, &qword_267EFC0B0);
  v15 = *(v8 + 56);
  sub_267ECFBDC();
  OUTLINED_FUNCTION_424();
  switch(v16)
  {
    case 1:
      OUTLINED_FUNCTION_516();
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_517();
      goto LABEL_6;
    case 3:
      goto LABEL_7;
    default:
LABEL_6:
      v17 = v0[12];
      sub_267EF90F8();

      v11 = 0;
LABEL_7:
      v18 = v0[12];
      v19 = v0[4];
      v20 = v0[2];
      __swift_storeEnumTagSinglePayload(v18, v11, 1, v10);
      sub_267BF3128(v18, v20 + v4[31], &unk_28022AE30, &qword_267EFC0B0);
      sub_267ED9A2C(v19);
      if (v21)
      {
        v22 = v0[11];
        sub_267EF90F8();
      }

      v23 = v0[11];
      v24 = v0[2];
      OUTLINED_FUNCTION_521();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v10);
      sub_267BF3128(v23, v24 + v4[21], &unk_28022AE30, &qword_267EFC0B0);
      v28 = swift_task_alloc();
      v0[14] = v28;
      *v28 = v0;
      v28[1] = sub_267D81510;
      v29 = v0[9];
      v30 = v0[10];
      v31 = v0[7];
      v32 = v0[8];
      v34 = v0[5];
      v33 = v0[6];
      OUTLINED_FUNCTION_66_6(v0[2]);
      OUTLINED_FUNCTION_36_0();

      return sub_267D91904(v35, v36, v37, v38, v39, v40);
  }
}

uint64_t sub_267D81510()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1[14];
  v3 = v1[13];
  v4 = v1[12];
  v5 = v1[11];
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267D8164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D81700, 0, 0);
}

uint64_t sub_267D81700()
{
  OUTLINED_FUNCTION_56();
  sub_267ED9A2C(*(v0 + 24));
  if (v1)
  {
    v2 = *(v0 + 88);
    sub_267EF90F8();
  }

  v3 = *(v0 + 88);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  sub_267EF79B8();
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = type metadata accessor for SendMessageConfirmTextMessageParameters(0);
  OUTLINED_FUNCTION_367(&unk_28022AE30, &qword_267EFC0B0, *(v10 + 92));
  sub_267BE855C(v4, v5 + *(v10 + 72));
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_267D81824;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v18 = OUTLINED_FUNCTION_66_6(*(v0 + 16));

  return sub_267D95454(v18, v19, v20, v21, v22, v23);
}

uint64_t sub_267D81824()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267D81920()
{
  OUTLINED_FUNCTION_12();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[22] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v1[27] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[28] = v7;
  v1[29] = *(v8 + 64);
  v1[30] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF84F8();
  v1[31] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[32] = v10;
  v12 = *(v11 + 64);
  v1[33] = OUTLINED_FUNCTION_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_30_0(v13);
  v1[34] = v14;
  v1[35] = *(v15 + 64);
  v1[36] = OUTLINED_FUNCTION_50();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  v1[39] = v16;
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  v1[40] = OUTLINED_FUNCTION_2();
  v19 = sub_267EF48A8();
  v1[41] = v19;
  OUTLINED_FUNCTION_30_0(v19);
  v1[42] = v20;
  v22 = *(v21 + 64);
  v1[43] = OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_267D81B1C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_267EF8A08();
  v1[44] = __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v5);
    OUTLINED_FUNCTION_460(&dword_267B93000, v3, v0, "#SendMessageConfirmIntentFlowStrategy generating SMART output to prompt for confirmation");
    OUTLINED_FUNCTION_29_1();
  }

  v6 = v1[43];
  v8 = v1[26];
  v7 = v1[27];
  v9 = v1[23];

  v1[45] = sub_267EF4668();
  sub_267D84D44();
  v10 = *(v8 + 56);
  v1[46] = v10;
  if (*(v10 + 72) == 1)
  {
    v11 = sub_267EF89F8();
    v12 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v12))
    {
      v13 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v13);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_26();
    }

    *(v10 + 72) = 0;
    v1[50] = 0;
    v19 = v1[45];
    v20 = v1[26];
    v21 = v20[6];
    __swift_project_boxed_opaque_existential_0(v20 + 2, v20[5]);
    v22 = OUTLINED_FUNCTION_116_5();
    v23(v22);
    v24 = v20[14];
    v25 = [v19 speakableGroupName];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 spokenPhrase];
      sub_267EF9028();
      OUTLINED_FUNCTION_530();
    }

    else
    {
      v32 = v1[45];
      v27 = v1[5];
      v33 = v1[6];
      OUTLINED_FUNCTION_53_11(v1 + 2);
      v34 = sub_267EF3C48();
      sub_267BCEA0C(v32);
      if (v34)
      {
        v35 = OUTLINED_FUNCTION_3();
        sub_267DA2578(v35);
      }

      else
      {
        v36 = v1[46];
        sub_267DA2180();
      }

      OUTLINED_FUNCTION_530();
    }

    v37 = OUTLINED_FUNCTION_560();
    v39 = v38;
    v1[53] = v37;
    v1[54] = v38;
    v40 = sub_267EF81F8();
    v41 = OUTLINED_FUNCTION_161_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
    if (v27[210])
    {
      v44 = v1[40];
      v46 = v1[24];
      v45 = v1[25];

      OUTLINED_FUNCTION_402();
      sub_267EF81E8();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v40);
      sub_267BF3128(v44, v39, &qword_28022BB28, &qword_267F082B0);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v1[55] = v50;
    *v50 = v51;
    OUTLINED_FUNCTION_253_0(v50);
    OUTLINED_FUNCTION_125();

    return sub_267CA8174(v52, v53);
  }

  else
  {
    v28 = swift_task_alloc();
    v1[47] = v28;
    *v28 = v1;
    v28[1] = sub_267D81E54;
    v29 = v1[26];
    OUTLINED_FUNCTION_66_6(v1[23]);
    OUTLINED_FUNCTION_125();

    return sub_267D8501C();
  }
}

uint64_t sub_267D81E54()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 376);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v5 + 384) = v0;

  if (!v0)
  {
    *(v5 + 392) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D81F60()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[49];
  v0[50] = v1;
  v2 = v0[45];
  v3 = v0[26];
  v4 = v1;
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
  v6 = OUTLINED_FUNCTION_116_5();
  v7(v6);
  v8 = v3[14];
  v9 = [v2 speakableGroupName];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_530();
  }

  else
  {
    v12 = v0[45];
    v11 = v0[5];
    v13 = v0[6];
    OUTLINED_FUNCTION_53_11(v0 + 2);
    v14 = sub_267EF3C48();
    sub_267BCEA0C(v12);
    if (v14)
    {
      v15 = OUTLINED_FUNCTION_3();
      sub_267DA2578(v15);
    }

    else
    {
      v16 = v0[46];
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_530();
  }

  v17 = OUTLINED_FUNCTION_560();
  v19 = v18;
  v0[53] = v17;
  v0[54] = v18;
  v20 = sub_267EF81F8();
  v21 = OUTLINED_FUNCTION_161_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  if (v11[210])
  {
    v24 = v0[40];
    v26 = v0[24];
    v25 = v0[25];

    OUTLINED_FUNCTION_402();
    sub_267EF81E8();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v20);
    sub_267BF3128(v24, v19, &qword_28022BB28, &qword_267F082B0);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[55] = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_253_0(v30);
  OUTLINED_FUNCTION_30_2();

  return sub_267CA8174(v32, v33);
}

uint64_t sub_267D82128()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 440);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267D8220C()
{
  v25 = v0[54];
  v38 = v0[53];
  v1 = v0[51];
  v42 = v0[52];
  v2 = v0[45];
  v3 = v0[40];
  v4 = v0[37];
  v26 = v0[38];
  v41 = v0[36];
  v37 = v0[35];
  v35 = v0[34];
  v29 = v0[32];
  v27 = v0[33];
  v28 = v0[31];
  v40 = v0[30];
  v34 = v0[29];
  v32 = v0[27];
  v5 = v0[26];
  v30 = v0[28];
  v31 = v0[23];
  v39 = sub_267CA85BC(v2);
  v0[56] = v39;
  v36 = v5;
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v6);
  v8 = *(v7 + 8);
  v33 = v2;

  v8(v6, v7);
  v9 = v0[10];
  v10 = v0[11];
  OUTLINED_FUNCTION_131(v0 + 7);
  sub_267BCD18C();
  sub_267C6AD4C(v25, v3, &qword_28022BB28, &qword_267F082B0);
  sub_267C6AD4C(v26, v4, &qword_28022BB20, &unk_267F092D0);

  OUTLINED_FUNCTION_515();
  sub_267EF84E8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v0[20] = v28;
  OUTLINED_FUNCTION_293();
  v0[21] = sub_267BC419C(v11, v12);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
  (*(v29 + 16))(boxed_opaque_existential_0, v27, v28);
  (*(v30 + 16))(v40, v31, v32);
  sub_267C6AD4C(v26, v41, &qword_28022BB20, &unk_267F092D0);
  v14 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v15 = (v34 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v35 + 80) + v15 + 8) & ~*(v35 + 80);
  v17 = swift_allocObject();
  v0[57] = v17;
  *(v17 + 2) = v33;
  *(v17 + 3) = v42;
  *(v17 + 4) = v1;
  *(v17 + 5) = v36;
  (*(v30 + 32))(&v17[v14], v40, v32);
  *&v17[v15] = v38;
  sub_267BBE184(v41, &v17[v16], &qword_28022BB20, &unk_267F092D0);
  *&v17[(v37 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = v39;
  v18 = v33;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[58] = v19;
  *v19 = v20;
  v19[1] = sub_267D825C8;
  v21 = v0[50];
  v22 = v0[43];
  v23 = v0[26];

  return (sub_267ECA3FC)(v0 + 12, v21, v22, v0 + 17, &unk_267F082C0, v17);
}

uint64_t sub_267D825C8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 464);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[59] = v0;

  if (v0)
  {
    v9 = v3[57];
    v10 = v3[53];
    v11 = v3[50];
  }

  else
  {
    v12 = v3[57];
    v13 = v3[53];
    v14 = v3[50];

    sub_267B9F98C((v3 + 17), &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267D82718()
{
  v1 = *(v0 + 352);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    *v4 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#SendMessageConfirmIntentFlowStrategy returning SMART output", v4, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v5 = *(v0 + 448);
  v6 = *(v0 + 400);
  v7 = *(v0 + 360);
  v8 = *(v0 + 336);
  v9 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = *(v0 + 424);
  v23 = *(v0 + 320);
  v24 = *(v0 + 296);
  v10 = *(v0 + 256);
  v11 = *(v0 + 264);
  v12 = *(v0 + 248);
  v25 = *(v0 + 288);
  v26 = *(v0 + 240);
  v19 = *(v0 + 304);
  v20 = *(v0 + 176);

  v13 = *(v10 + 8);
  v14 = OUTLINED_FUNCTION_16_8();
  v15(v14);
  sub_267B9F98C(v19, &qword_28022BB20, &unk_267F092D0);
  (*(v8 + 8))(v9, v21);
  sub_267B9A5E8((v0 + 96), v20);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_470();

  return v16();
}

uint64_t sub_267D828C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v12 = *(v10 + 336);
  v11 = *(v10 + 344);
  v13 = *(v10 + 328);

  v14 = *(v12 + 8);
  v15 = OUTLINED_FUNCTION_66();
  v16(v15);
  v17 = *(v10 + 384);
  OUTLINED_FUNCTION_423();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_267D82978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 448);
  v38 = *(v12 + 424);
  v14 = *(v12 + 400);
  v16 = *(v12 + 336);
  v15 = *(v12 + 344);
  v17 = *(v12 + 328);
  v18 = *(v12 + 304);
  v19 = *(v12 + 256);
  v20 = *(v12 + 264);
  v21 = *(v12 + 248);

  v22 = *(v19 + 8);
  v23 = OUTLINED_FUNCTION_68_0();
  v24(v23);
  sub_267B9F98C(v18, &qword_28022BB20, &unk_267F092D0);
  v25 = *(v16 + 8);
  v26 = OUTLINED_FUNCTION_37_1();
  v27(v26);
  sub_267B9F98C(v12 + 136, &qword_280229330, &qword_267F092F0);

  v28 = *(v12 + 472);
  OUTLINED_FUNCTION_423();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12);
}

uint64_t sub_267D82AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_267D82B98, 0, 0);
}

uint64_t sub_267D82B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_120_4();
  v23 = v22[19];
  v24 = v22[20];
  v25 = v22[18];
  v26 = v22[15];
  v49 = v22[16];
  v27 = v22[14];
  v51 = v22[17];
  v52 = v22[13];
  v53 = v22[11];
  v54 = v22[12];
  v28 = v22[10];
  v29 = sub_267EF8178();
  v28[3] = v29;
  OUTLINED_FUNCTION_146_1();
  v28[4] = sub_267BC419C(v30, v31);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  v32 = v27[6];
  OUTLINED_FUNCTION_103_5(v27 + 2, v27[5]);
  v33 = OUTLINED_FUNCTION_528();
  v34(v33, v32);
  v35 = v22[5];
  v36 = v22[6];
  OUTLINED_FUNCTION_131(v22 + 2);
  sub_267BCD18C();
  sub_267EF8308();
  sub_267EF82F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  sub_267EF4648();
  sub_267EF7C18();

  sub_267EF82E8();
  OUTLINED_FUNCTION_76();

  swift_beginAccess();
  sub_267C6AD4C(v24, v23, &qword_28022BB28, &qword_267F082B0);
  sub_267C6AD4C(v49, v25, &qword_28022BB20, &unk_267F092D0);

  v37 = v53;
  LOBYTE(a9) = 0;
  OUTLINED_FUNCTION_515();
  sub_267EF84C8();
  __swift_destroy_boxed_opaque_existential_0(v22 + 2);
  v38 = *MEMORY[0x277D5D370];
  OUTLINED_FUNCTION_5_0(v29);
  (*(v39 + 104))(boxed_opaque_existential_0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_93();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v23, v25, v51, a13, v49, boxed_opaque_existential_0, v51, v52, v53, v54, a20, a21, a22);
}

uint64_t sub_267D82E00()
{
  OUTLINED_FUNCTION_12();
  v1[40] = v2;
  v1[41] = v0;
  v1[38] = v3;
  v1[39] = v4;
  v1[37] = v5;
  v6 = sub_267EF8178();
  v1[42] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[43] = v7;
  v9 = *(v8 + 64);
  v1[44] = OUTLINED_FUNCTION_50();
  v1[45] = swift_task_alloc();
  v10 = sub_267EF8488();
  v1[46] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[47] = v11;
  v13 = *(v12 + 64);
  v1[48] = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64);
  v1[49] = OUTLINED_FUNCTION_50();
  v1[50] = swift_task_alloc();
  v17 = sub_267EF81B8();
  v1[51] = v17;
  OUTLINED_FUNCTION_30_0(v17);
  v1[52] = v18;
  v20 = *(v19 + 64);
  v1[53] = OUTLINED_FUNCTION_2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90);
  OUTLINED_FUNCTION_18(v21);
  v23 = *(v22 + 64);
  v1[54] = OUTLINED_FUNCTION_2();
  v24 = sub_267EF8338();
  v1[55] = v24;
  OUTLINED_FUNCTION_30_0(v24);
  v1[56] = v25;
  v27 = *(v26 + 64);
  v1[57] = OUTLINED_FUNCTION_2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v28);
  v30 = *(v29 + 64);
  v1[58] = OUTLINED_FUNCTION_50();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v31 = sub_267EF2BA8();
  v1[61] = v31;
  OUTLINED_FUNCTION_30_0(v31);
  v1[62] = v32;
  v34 = *(v33 + 64);
  v1[63] = OUTLINED_FUNCTION_50();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v35 = sub_267EF84A8();
  v1[66] = v35;
  OUTLINED_FUNCTION_30_0(v35);
  v1[67] = v36;
  v38 = *(v37 + 64);
  v1[68] = OUTLINED_FUNCTION_50();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v39 = sub_267EF48A8();
  v1[72] = v39;
  OUTLINED_FUNCTION_30_0(v39);
  v1[73] = v40;
  v42 = *(v41 + 64);
  v1[74] = OUTLINED_FUNCTION_2();
  v43 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_267D83164()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[74];
  v2 = v0[41];
  v3 = v0[38];
  v0[75] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v0[76] = sub_267EF4668();
  OUTLINED_FUNCTION_243_0();
  sub_267D84D44();
  sub_267EF4868();
  v4 = swift_task_alloc();
  v0[77] = v4;
  *v4 = v0;
  v4[1] = sub_267D8323C;
  v5 = v0[41];
  OUTLINED_FUNCTION_66_6(v0[38]);

  return sub_267D8501C();
}

uint64_t sub_267D8323C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 616);
  *v3 = *v1;
  *(v2 + 624) = v6;
  *(v2 + 632) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267D83340()
{
  v4 = [*(v0 + 624) catId];
  sub_267EF9028();
  OUTLINED_FUNCTION_404();
  OUTLINED_FUNCTION_26_0();
  v5 = sub_267E9AD00();
  if (v5 == 10)
  {
    v50 = sub_267E76140(*(v0 + 608));
    *(v0 + 640) = v50;
    if (v50)
    {
      v51 = *(v0 + 328);
      OUTLINED_FUNCTION_22_21();
      v52 = OUTLINED_FUNCTION_38_0();
      v53(v52);
      v54 = *(v51 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService + 32);
      __swift_project_boxed_opaque_existential_0((v51 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService), *(v51 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService + 24));
      v215 = (OUTLINED_FUNCTION_54() + 24);
      v217 = *v215 + **v215;
      v55 = (*v215)[1];
      v56 = swift_task_alloc();
      *(v0 + 648) = v56;
      *v56 = v0;
      OUTLINED_FUNCTION_71_5(v56);
      OUTLINED_FUNCTION_538();

      __asm { BRAA            X2, X16 }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v92 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v92, qword_280240FB0);
    v93 = sub_267EF89F8();
    v94 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v94))
    {
      v95 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v95);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v96, v97, v98, v99, v100, 2u);
      OUTLINED_FUNCTION_26();
    }

    v59 = *(v0 + 624);
    v60 = *(v0 + 608);

    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_61_1();
    v102 = 0xD00000000000002FLL;
    goto LABEL_50;
  }

  if (v5 == 18)
  {
    v37 = *(v0 + 568);
    v38 = *(v0 + 552);
    v39 = *(v0 + 536);
    v40 = *(v0 + 528);
    v42 = *(v0 + 416);
    v41 = *(v0 + 424);
    v43 = *(v0 + 408);
    v44 = sub_267ED9A2C(*(v0 + 608));
    if (v45)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    (*(v42 + 104))(v41, *MEMORY[0x277D5D410], v43);
    OUTLINED_FUNCTION_68_0();
    sub_267EF81C8();
    (*(v39 + 104))(v38, *MEMORY[0x277D5D868], v40);
    v47 = *(v39 + 32);
    v3 = v39 + 32;
    v48 = OUTLINED_FUNCTION_66();
    v49(v48);
    goto LABEL_36;
  }

  if (v5 != 11)
  {
    v59 = *(v0 + 624);
    v60 = *(v0 + 608);
    sub_267EF9B68();

    v61 = [v59 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_359();

    v62 = OUTLINED_FUNCTION_37_1();
    MEMORY[0x26D608E60](v62);

    sub_267C266B0();
    OUTLINED_FUNCTION_61_1();
    *v63 = 0xD000000000000013;
    v63[1] = 0x8000000267F19BF0;
    goto LABEL_51;
  }

  v6 = sub_267E76140(*(v0 + 608));
  if (!v6)
  {
    v103 = *(v0 + 480);
    v104 = *(v0 + 488);
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
    goto LABEL_46;
  }

  v7 = v6;
  v8 = *(v0 + 496);
  v9 = 0;
  v214 = v6 & 0xC000000000000001;
  v216 = sub_267BAF0DC(v6);
  v208 = v8;
  v210 = (v8 + 32);
  v211 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v216 == v9)
    {
      v65 = *(v0 + 480);
      v64 = *(v0 + 488);

      sub_267C8F020(v211, v65);

      OUTLINED_FUNCTION_5_1(v65, 1, v64);
      if (!v23)
      {
        v66 = *(v0 + 568);
        v67 = *(v0 + 536);
        v68 = *(v0 + 528);
        v40 = *(v0 + 520);
        v70 = *(v0 + 496);
        v69 = *(v0 + 504);
        v71 = *(v0 + 488);
        (*v210)(v40, *(v0 + 480), v71);
        (*(v70 + 16))(v69, v40, v71);
        sub_267EF83C8();
        v72 = *(v70 + 8);
        v73 = OUTLINED_FUNCTION_14_1();
        v74(v73);
        v75 = *(v67 + 104);
        v46 = (v67 + 104);
        v75(v66, *MEMORY[0x277D5D870], v68);
LABEL_36:
        v76 = [OUTLINED_FUNCTION_531() catId];
        sub_267EF9028();

        OUTLINED_FUNCTION_44_0();
        sub_267EF47D8();
        v77 = v46[6];
        __swift_project_boxed_opaque_existential_0(v46 + 2, v46[5]);
        v78 = OUTLINED_FUNCTION_116_5();
        v79(v78);
        v80 = v46[7];
        v81 = v46[14];
        v82 = [v40 speakableGroupName];
        if (v82)
        {
          v83 = v82;
          v84 = [v82 spokenPhrase];
          v85 = sub_267EF9028();
          v212 = v86;
          v213 = v85;
        }

        else
        {
          v40 = *(v0 + 608);
          v87 = *(v0 + 40);
          v88 = *(v0 + 48);
          OUTLINED_FUNCTION_53_11((v0 + 16));
          v77 = sub_267EF3C48();
          sub_267BCEA0C(v40);
          if (v77)
          {
            v89 = OUTLINED_FUNCTION_66();
            v90 = sub_267DA2578(v89);
          }

          else
          {
            sub_267DA2180();
          }

          v212 = v91;
          v213 = v90;
        }

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        sub_267EF6FF8();
        if (sub_267EF6FC8())
        {
          v126 = *(v0 + 400);
          sub_267EF6FA8();
          OUTLINED_FUNCTION_229();

          OUTLINED_FUNCTION_243_0();
          sub_267EF8698();

          v127 = 0;
        }

        else
        {
          v127 = 1;
        }

        v218 = *(v0 + 624);
        v128 = OUTLINED_FUNCTION_275_0();
        __swift_storeEnumTagSinglePayload(v80, v127, 1, v128);
        v129 = *(v80 + 210);
        v130 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_delayedActionCancelCommand);

        v131 = v130;
        sub_267EF4648();
        v132 = sub_267BE84FC();

        sub_267C6AD4C(v80, v40, &qword_2802295B0, &unk_267EFDCA0);
        v133 = OUTLINED_FUNCTION_328_0();
        v141 = OUTLINED_FUNCTION_525(v133, v134, v135, v136, v137, v138, v139, v140, v181, v185, v189, v193);
        v143 = v142(v141);
        v151 = OUTLINED_FUNCTION_543(v143, v144, v145, v146, v147, v148, v149, v150, v182, v186, v190, v194, v197, v200, v203, v206, v208, v210, v212, v213);
        v158 = OUTLINED_FUNCTION_428(v151, *MEMORY[0x277D5D368], v152, v153, v154, v155, v156, v157, v183, v187, v191, v195, v198, v201, v204);
        v159 = v129(v158);
        v167 = OUTLINED_FUNCTION_436(v159, v160, v161, v162, v163, v164, v165, v166, v184, v188, v192, v196, v199, v202, v205, v207, v209);
        v168(v167);
        (v129)(v132, *MEMORY[0x277D5D390], v46);
        v169 = sub_267EF4198();
        OUTLINED_FUNCTION_97(v169);
        *(v0 + 664) = sub_267EF4188();
        *(v0 + 80) = v46;
        OUTLINED_FUNCTION_146_1();
        v172 = sub_267BC419C(v170, v171);
        *(v0 + 88) = v172;
        __swift_allocate_boxed_opaque_existential_0((v0 + 56));
        OUTLINED_FUNCTION_524();
        (v77)();
        *(v0 + 120) = v46;
        *(v0 + 128) = v172;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
        (v77)(boxed_opaque_existential_0, v132, v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        OUTLINED_FUNCTION_94();
        v174 = swift_allocObject();
        *(v0 + 672) = v174;
        *(v174 + 16) = xmmword_267EFCA40;
        *(v174 + 32) = v218;
        OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD30]);
        v176 = v175;
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 680) = v177;
        *v177 = v178;
        OUTLINED_FUNCTION_241_0(v177);
        OUTLINED_FUNCTION_538();

        __asm { BR              X5 }
      }

LABEL_46:
      sub_267B9F98C(*(v0 + 480), &qword_280229E20, &unk_267EFDCC0);
      if (qword_280228818 != -1)
      {
        goto LABEL_64;
      }

      goto LABEL_47;
    }

    if (v214)
    {
      OUTLINED_FUNCTION_406();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_405();
    }

    OUTLINED_FUNCTION_297();
    if (v10)
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      OUTLINED_FUNCTION_0();
LABEL_47:
      v109 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v109, qword_280240FB0);
      v93 = sub_267EF89F8();
      v110 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_10_2(v110))
      {
        v111 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v111);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v112, v113, v114, v115, v116, 2u);
        OUTLINED_FUNCTION_26();
      }

      v59 = *(v0 + 624);
      v60 = *(v0 + 608);

      OUTLINED_FUNCTION_81_6();
      OUTLINED_FUNCTION_61_1();
      v102 = 0xD000000000000023;
LABEL_50:
      *v101 = v102;
      v101[1] = v93;
LABEL_51:
      swift_willThrow();

      v117 = *(v0 + 592);
      v118 = *(v0 + 584);
      v119 = *(v0 + 576);
      v120 = *(v0 + 568);
      v121 = *(v0 + 560);
      OUTLINED_FUNCTION_213_0();
      OUTLINED_FUNCTION_296_0(v122);
      v123(v117);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_538();

      __asm { BRAA            X1, X16 }
    }

    v11 = [v2 audioMessageFile];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    v13 = [v11 fileURL];

    if (v13)
    {
      v14 = *(v0 + 464);
      sub_267EF2B48();

      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    v16 = *(v0 + 488);
    v18 = *(v0 + 464);
    v17 = *(v0 + 472);

    OUTLINED_FUNCTION_48_18();
    OUTLINED_FUNCTION_255();
    sub_267BBE184(v19, v20, v21, v22);
    OUTLINED_FUNCTION_92_6();
    if (v23)
    {
LABEL_18:
      v24 = *(v0 + 472);
      OUTLINED_FUNCTION_288();
      sub_267B9F98C(v25, v26, v27);
      ++v9;
    }

    else
    {
      v28 = *v210;
      (*v210)(*(v0 + 512), *(v0 + 472), *(v0 + 488));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = *(v211 + 16);
        sub_267C70BD8();
        v211 = v35;
      }

      v31 = *(v211 + 16);
      v30 = *(v211 + 24);
      if (v31 >= v30 >> 1)
      {
        OUTLINED_FUNCTION_91_8(v30);
        sub_267C70BD8();
        v211 = v36;
      }

      v32 = *(v0 + 512);
      v33 = *(v0 + 488);
      *(v211 + 16) = v31 + 1;
      v28(v211 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v31, v32, v33);
      v9 = v1;
    }
  }

  v3 = *(v0 + 488);
  v15 = *(v0 + 472);

  OUTLINED_FUNCTION_168_1();
  goto LABEL_18;
}

uint64_t sub_267D83EB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 648);
  *v2 = *v0;
  *(v1 + 656) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D83F98()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 640);
  OUTLINED_FUNCTION_221();
  sub_267EF8458();

  if (*(v0 + 240))
  {
    v3 = *(v0 + 656);
    v4 = *(v0 + 432);
    sub_267B9A5E8((v0 + 216), v0 + 176);
    sub_267B9B050(v0 + 176, v0 + 256);
    sub_267EF8328();

    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  else
  {
    v5 = *(v0 + 656);
    v6 = *(v0 + 432);
    v7 = *(v0 + 440);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));

    sub_267B9F98C(v0 + 216, &qword_28022BB10, &qword_267EFDCF0);
    OUTLINED_FUNCTION_169_1();
  }

  v8 = *(v0 + 432);
  OUTLINED_FUNCTION_5_1(v8, 1, *(v0 + 440));
  if (v9)
  {
    sub_267B9F98C(v8, &unk_28022BB00, &unk_267EFCF90);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v12))
    {
      v13 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v13);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_26();
    }

    v19 = *(v0 + 624);
    v20 = *(v0 + 608);

    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_61_1();
    *v21 = 0xD00000000000002FLL;
    v21[1] = v11;
    swift_willThrow();

    v22 = *(v0 + 592);
    v23 = *(v0 + 584);
    v24 = *(v0 + 576);
    v25 = *(v0 + 568);
    v26 = *(v0 + 560);
    OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_296_0(v27);
    v28(v22);

    OUTLINED_FUNCTION_17();

    return v29();
  }

  else
  {
    v31 = *(v0 + 608);
    v32 = *(v0 + 560);
    v33 = *(v0 + 448);
    v34 = *(v33 + 32);
    OUTLINED_FUNCTION_439();
    v35();
    v36 = *(v33 + 16);
    v37 = OUTLINED_FUNCTION_44_0();
    v38(v37);
    v39 = [v31 content];
    if (v39)
    {
      v40 = v39;
      v161 = sub_267EF9028();
      v42 = v41;
    }

    else
    {
      v161 = 0;
      v42 = 0;
    }

    v43 = *(v0 + 568);
    v44 = *(v0 + 560);
    v45 = *(v0 + 536);
    v46 = *(v0 + 528);
    v48 = *(v0 + 448);
    v47 = *(v0 + 456);
    v49 = *(v0 + 440);
    v50 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB18, &unk_267F082A0) + 48));
    v51 = *(v48 + 8);
    v52 = OUTLINED_FUNCTION_68_0();
    v53(v52);
    *v50 = v161;
    v50[1] = v42;
    (*(v45 + 104))(v44, *MEMORY[0x277D5D860], v46);
    v55 = *(v45 + 32);
    v54 = v45 + 32;
    v56 = OUTLINED_FUNCTION_37_1();
    v57(v56);
    v58 = [OUTLINED_FUNCTION_531() catId];
    sub_267EF9028();

    OUTLINED_FUNCTION_44_0();
    sub_267EF47D8();
    v59 = v47[6];
    __swift_project_boxed_opaque_existential_0(v47 + 2, v47[5]);
    v60 = OUTLINED_FUNCTION_116_5();
    v61(v60);
    v62 = v47[7];
    v63 = v47[14];
    v64 = [v43 speakableGroupName];
    if (v64)
    {
      v65 = v64;
      v66 = [v64 spokenPhrase];
      v67 = sub_267EF9028();
      v159 = v68;
      v160 = v67;
    }

    else
    {
      v43 = *(v0 + 608);
      v69 = *(v0 + 40);
      v70 = *(v0 + 48);
      OUTLINED_FUNCTION_53_11((v0 + 16));
      v59 = sub_267EF3C48();
      sub_267BCEA0C(v43);
      if (v59)
      {
        v71 = OUTLINED_FUNCTION_66();
        v72 = sub_267DA2578(v71);
      }

      else
      {
        sub_267DA2180();
      }

      v159 = v73;
      v160 = v72;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_267EF6FF8();
    if (sub_267EF6FC8())
    {
      v74 = *(v0 + 400);
      sub_267EF6FA8();
      OUTLINED_FUNCTION_229();

      OUTLINED_FUNCTION_243_0();
      sub_267EF8698();

      v75 = 0;
    }

    else
    {
      v75 = 1;
    }

    v162 = *(v0 + 624);
    v76 = OUTLINED_FUNCTION_275_0();
    __swift_storeEnumTagSinglePayload(v62, v75, 1, v76);
    v77 = *(v62 + 210);
    v78 = *(v54 + OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_delayedActionCancelCommand);

    v79 = v78;
    sub_267EF4648();
    v80 = sub_267BE84FC();

    sub_267C6AD4C(v62, v43, &qword_2802295B0, &unk_267EFDCA0);
    v81 = OUTLINED_FUNCTION_328_0();
    v89 = OUTLINED_FUNCTION_525(v81, v82, v83, v84, v85, v86, v87, v88, v129, v133, v137, v141);
    v91 = v90(v89);
    v99 = OUTLINED_FUNCTION_543(v91, v92, v93, v94, v95, v96, v97, v98, v130, v134, v138, v142, v145, v148, v151, v154, v156, v158, v159, v160);
    v106 = OUTLINED_FUNCTION_428(v99, *MEMORY[0x277D5D368], v100, v101, v102, v103, v104, v105, v131, v135, v139, v143, v146, v149, v152);
    v107 = v77(v106);
    v115 = OUTLINED_FUNCTION_436(v107, v108, v109, v110, v111, v112, v113, v114, v132, v136, v140, v144, v147, v150, v153, v155, v157);
    v116(v115);
    (v77)(v80, *MEMORY[0x277D5D390], v47);
    v117 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v117);
    *(v0 + 664) = sub_267EF4188();
    *(v0 + 80) = v47;
    OUTLINED_FUNCTION_146_1();
    v120 = sub_267BC419C(v118, v119);
    *(v0 + 88) = v120;
    __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    OUTLINED_FUNCTION_524();
    (v59)();
    *(v0 + 120) = v47;
    *(v0 + 128) = v120;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
    (v59)(boxed_opaque_existential_0, v80, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v122 = swift_allocObject();
    *(v0 + 672) = v122;
    *(v122 + 16) = xmmword_267EFCA40;
    *(v122 + 32) = v162;
    OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD30]);
    v124 = v123;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 680) = v125;
    *v125 = v126;
    v127 = OUTLINED_FUNCTION_241_0(v125);

    return v128(v127);
  }
}

uint64_t sub_267D846B0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = v4[85];
  v6 = v4[84];
  v7 = v4[83];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D847DC()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 584);
  v20 = *(v0 + 576);
  v21 = *(v0 + 592);
  v22 = *(v0 + 560);
  v23 = *(v0 + 552);
  v3 = *(v0 + 536);
  v18 = *(v0 + 528);
  v19 = *(v0 + 568);
  v24 = *(v0 + 544);
  v25 = *(v0 + 520);
  v26 = *(v0 + 512);
  v27 = *(v0 + 504);
  v28 = *(v0 + 480);
  v29 = *(v0 + 472);
  v30 = *(v0 + 464);
  v31 = *(v0 + 456);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v17 = *(v0 + 400);
  v34 = *(v0 + 392);
  v4 = *(v0 + 376);
  v16 = *(v0 + 384);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  v9 = *(v0 + 336);

  v10 = *(v7 + 8);
  v10(v8, v9);
  v10(v6, v9);
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_401();
  v13(v12);
  sub_267B9F98C(v17, &qword_2802295B0, &unk_267EFDCA0);
  (*(v3 + 8))(v19, v18);
  (*(v2 + 8))(v21, v20);

  OUTLINED_FUNCTION_1();

  return v14();
}

uint64_t sub_267D84A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_120_4();

  v52 = *(v22 + 632);
  v23 = *(v22 + 592);
  v24 = *(v22 + 584);
  v25 = *(v22 + 576);
  v26 = *(v22 + 568);
  v27 = *(v22 + 560);
  OUTLINED_FUNCTION_213_0();
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v45 = *(v22 + 432);
  v46 = *(v22 + 424);
  v47 = *(v22 + 400);
  v48 = *(v22 + 392);
  v31 = *(v22 + 384);
  v49 = v31;
  v50 = *(v22 + 360);
  v51 = *(v22 + 352);
  (*(v32 + 8))(v23);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_93();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, a20, a21, a22);
}

uint64_t sub_267D84B60()
{
  v1 = *(v0 + 56);
  if ((sub_267D60D34() & 1) != 0 || *(v1 + 312))
  {
    return 1;
  }

  v3 = *(v1 + 200);
  if (v3)
  {
    sub_267D9992C(v3, &selRef_content);
    if (v4)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_267D84BC4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_6();
  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8698();

    v6 = sub_267EF70D8();
    v7 = 0;
  }

  else
  {
    v6 = sub_267EF70D8();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v7, 1, v6);
  v8 = v0[7];
  if (*(v8 + 210) == 1)
  {
    v9 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v10 = *(v9 + 8);
    v11 = OUTLINED_FUNCTION_54_1();
    v12(v11, v9);
    v13 = sub_267C990A8(v1, v15, v8);
    __swift_destroy_boxed_opaque_existential_0(v15);
    sub_267B9F98C(v1, &qword_2802295B0, &unk_267EFDCA0);
  }

  else
  {
    sub_267B9F98C(v1, &qword_2802295B0, &unk_267EFDCA0);
    v13 = 0;
  }

  return v13 & 1;
}

void sub_267D84D44()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD8, &qword_267F08298);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_6();
  v7 = sub_267EF4298();
  v8 = OUTLINED_FUNCTION_58(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v19);
  v21 = &v44[-1] - v20;
  v22 = sub_267EF3CF8();
  v23 = OUTLINED_FUNCTION_18(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3C98();
  OUTLINED_FUNCTION_294();
  sub_267EF47A8();
  sub_267EF47F8();
  v26 = *(v0[7] + 210);
  sub_267EF4858();
  v27 = sub_267BCEA0C(v2);
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v29 = [v2 speakableGroupName];
  sub_267D797A0(v28, v29, v21);

  sub_267EF4158();
  v30 = OUTLINED_FUNCTION_72_9();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_267EF4818();
  v34 = v0[6];
  OUTLINED_FUNCTION_103_5(v0 + 2, v0[5]);
  v35 = OUTLINED_FUNCTION_4_1();
  v36(v35);
  OUTLINED_FUNCTION_131(v44);
  sub_267BCF0D8();
  sub_267EF4898();
  __swift_destroy_boxed_opaque_existential_0(v44);
  sub_267EF42A8();
  sub_267EF4288();
  v37 = *(v10 + 16);
  v38 = OUTLINED_FUNCTION_37_1();
  v39(v38);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v7);
  sub_267EF4828();
  (*(v10 + 8))(v15, v7);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D8501C()
{
  OUTLINED_FUNCTION_12();
  v1[22] = v2;
  v1[23] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[24] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[25] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF2CC8();
  v1[26] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[27] = v10;
  v12 = *(v11 + 64);
  v1[28] = OUTLINED_FUNCTION_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  v1[29] = OUTLINED_FUNCTION_50();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_267D85180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10, char a11, char a12, char a13)
{
  v153 = v13;
  v14 = v13[22];
  v15 = v13[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v16 = sub_267EF4668();
  v13[36] = v16;
  v18 = v15[6];
  v17 = v15[7];
  __swift_project_boxed_opaque_existential_0(v15 + 2, v15[5]);
  v19 = OUTLINED_FUNCTION_116_5();
  v20(v19);
  sub_267ED9AEC(v16, v17, (v13 + 2), v21, v22, v23, v24, v25, v140, v141, v142, v143, v146, *(&v146 + 1), v147, v148, v149, v150, v151, v152);
  v13[37] = v26;
  __swift_destroy_boxed_opaque_existential_0(v13 + 2);
  v27 = [v16 speakableGroupName];
  if (v27)
  {
    v28 = v27;
    v29 = v13[35];
    v30 = [v27 spokenPhrase];

    sub_267EF9028();
    sub_267EF90F8();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v13[35];
  v33 = v13[23];
  sub_267EF79B8();
  OUTLINED_FUNCTION_389(v32, v31);
  v160 = sub_267D84BC4();
  if (v160)
  {
    v144 = v16;
    v34 = v13[27];
    v35 = v13[28];
    v36 = v13[26];
    v37 = v13[23];
    v146 = xmmword_267EFD5C0;
    LOBYTE(v147) = 4;
    sub_267EF2CB8();
    sub_267C5BD60(&v146, v35);
    (*(v34 + 8))(v35, v36);
    v16 = v144;
  }

  if (*(v17 + 16) == 4)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v38 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
    v39 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v41);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_460(v42, v43, v44, v45);
      OUTLINED_FUNCTION_29_1();
    }

    v46 = v13[25];

    type metadata accessor for SendMessageCATsSimple();
    sub_267EF7B68();
    v13[38] = sub_267EF79E8();
    sub_267ED9A2C(v16);
    if (v47)
    {
      v48 = v13[34];
      sub_267EF90F8();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v62 = v13[24];
    OUTLINED_FUNCTION_389(v13[34], v49);
    sub_267EF7AE8();
    v63 = v15[6];
    OUTLINED_FUNCTION_103_5(v15 + 2, v15[5]);
    v64 = OUTLINED_FUNCTION_4_1();
    v65(v64);
    sub_267EF7118();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    v13[39] = sub_267DE77AC(&v146, v62);
    v70 = swift_task_alloc();
    v13[40] = v70;
    *v70 = v13;
    v70[1] = sub_267D85B8C;
    v71 = v13[35];
    OUTLINED_FUNCTION_66_6(v13[34]);
    OUTLINED_FUNCTION_470();

    return sub_267E9DB80();
  }

  if (sub_267EF96E8())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v50 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v50, qword_280240FB0);
    v51 = sub_267EF89F8();
    v52 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v52))
    {
      v53 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_454(v53);
      OUTLINED_FUNCTION_340(&dword_267B93000, v54, v52, "#SendMessageConfirmIntentFlowStrategy executing CAT to confirm audio message");
      OUTLINED_FUNCTION_45_2();
    }

    v55 = v13[25];
    v56 = v13[23];

    type metadata accessor for SendMessageCATsSimple();
    sub_267EF7B68();
    v13[42] = sub_267EF79E8();
    sub_267D84B60();
    v57 = *(v17 + 210);
    v58 = *(v17 + 280);
    sub_267D60D20();
    sub_267D60D34();
    v59 = swift_task_alloc();
    v13[43] = v59;
    *v59 = v13;
    v59[1] = sub_267D85DD8;
    OUTLINED_FUNCTION_66_6(v13[35]);
    OUTLINED_FUNCTION_470();

    return sub_267E9C0F0();
  }

  if (sub_267E76140(v16))
  {

LABEL_29:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v73 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
    v74 = sub_267EF89F8();
    v75 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v75))
    {
      v76 = OUTLINED_FUNCTION_32();
      *v76 = 0;
      _os_log_impl(&dword_267B93000, v74, v75, "#SendMessageConfirmIntentFlowStrategy executing CAT to confirm message with attachment", v76, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v77 = v13[25];

    type metadata accessor for SendMessageCATsSimple();
    sub_267EF7B68();
    v13[45] = sub_267EF79E8();
    sub_267ED9A2C(v16);
    if (v78)
    {
      v79 = v13[33];
      sub_267EF90F8();

      v80 = 0;
    }

    else
    {
      v80 = 1;
    }

    v81 = 1;
    OUTLINED_FUNCTION_389(v13[33], v80);
    sub_267D29870();
    if (v82)
    {
      v83 = v13[32];
      sub_267EF90F8();

      v81 = 0;
    }

    v84 = 1;
    OUTLINED_FUNCTION_389(v13[32], v81);
    sub_267ECFBDC();
    OUTLINED_FUNCTION_424();
    switch(v85)
    {
      case 1:
        OUTLINED_FUNCTION_516();
        goto LABEL_41;
      case 2:
        OUTLINED_FUNCTION_517();
        goto LABEL_41;
      case 3:
        goto LABEL_42;
      default:
LABEL_41:
        v86 = v13[31];
        sub_267EF90F8();

        v84 = 0;
LABEL_42:
        OUTLINED_FUNCTION_389(v13[31], v84);
        sub_267D60D34();
        v87 = *(v17 + 210);
        v88 = *(v17 + 211);
        v89 = *(v17 + 280);
        v90 = swift_task_alloc();
        v13[46] = v90;
        *v90 = v13;
        v90[1] = sub_267D85FFC;
        v91 = v13[35];
        v92 = v13[32];
        v93 = v13[33];
        v94 = v13[31];
        v155 = v160 & 1;
        v154 = v89;
        OUTLINED_FUNCTION_66_6(v93);
        OUTLINED_FUNCTION_470();

        result = sub_267E9BA28(v95, v96, v97, v98, v99, v100, v101, v102, a9);
        break;
    }

    return result;
  }

  swift_beginAccess();
  if (*(*(v17 + 152) + 16) || *(*(v17 + 160) + 16))
  {
    goto LABEL_29;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v104 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v104, qword_280240FB0);
  v105 = sub_267EF89F8();
  v106 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_495(v106))
  {
    v107 = OUTLINED_FUNCTION_32();
    *v107 = 0;
    _os_log_impl(&dword_267B93000, v105, v106, "#SendMessageConfirmIntentFlowStrategy executing CAT to confirm text message", v107, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v108 = v13[23];

  v145 = sub_267CA7914();
  if (v145)
  {
    v109 = v13[23];
    sub_267CA7D2C();
  }

  v110 = v13[25];
  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  v13[48] = sub_267EF79E8();
  sub_267ED9A2C(v16);
  if (v111)
  {
    v112 = v13[30];
    sub_267EF90F8();

    v113 = 0;
  }

  else
  {
    v113 = 1;
  }

  v114 = 1;
  OUTLINED_FUNCTION_389(v13[30], v113);
  v115 = [v16 speakableGroupName];
  if (v115)
  {
    v116 = v115;
    v117 = v13[29];
    v118 = [v115 spokenPhrase];

    sub_267EF9028();
    OUTLINED_FUNCTION_252_0();
    sub_267EF90F8();

    v114 = 0;
  }

  v119 = v13[22];
  v120 = v13[23];
  OUTLINED_FUNCTION_389(v13[29], v114);
  sub_267EF7958();
  v121 = sub_267EF4648();
  v13[49] = sub_267E80518(v121);
  sub_267D84B60();
  v122 = *(v17 + 212);
  v123 = *(v17 + 211);
  v124 = *(v17 + 280);
  LOBYTE(v119) = sub_267D60D34();
  v125 = *(v17 + 210);
  v126 = *(v17 + 312) != 0;
  v127 = *(v17 + 213);
  v128 = swift_task_alloc();
  v13[50] = v128;
  *v128 = v13;
  v128[1] = sub_267D86270;
  v129 = v13[29];
  v130 = v13[30];
  v159 = v127;
  v158 = v126;
  v157 = v145 & 1;
  v156 = v125;
  v155 = v119 & 1;
  v154 = v160 & 1;
  OUTLINED_FUNCTION_66_6(v130);
  OUTLINED_FUNCTION_470();

  return sub_267E9CA20(v131, v132, v133, v134, v135, v136, v137, v138, a9, SHIBYTE(a9), a10, a11, a12, a13);
}

uint64_t sub_267D85B8C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 320);
  v8 = v7[39];
  v9 = v7[38];
  v10 = v7[37];
  v11 = v7[34];
  v12 = *v1;
  OUTLINED_FUNCTION_5();
  *v13 = v12;
  *(v14 + 328) = v0;

  sub_267B9F98C(v11, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267D85DD8()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v3[13] = v1;
  v3[14] = v5;
  v3[15] = v0;
  v6 = v2[43];
  *v4 = *v1;
  v3[44] = v0;

  v7 = v2[42];
  v8 = v2[37];
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D85FFC()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[16] = v1;
  v2[17] = v4;
  v2[18] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 368);
  v8 = v7[45];
  v9 = v7[37];
  v10 = v7[33];
  v11 = v7[32];
  v12 = v7[31];
  v13 = *v1;
  OUTLINED_FUNCTION_5();
  *v14 = v13;
  *(v15 + 376) = v0;

  OUTLINED_FUNCTION_394();
  sub_267B9F98C(v16, v17, v18);
  OUTLINED_FUNCTION_394();
  sub_267B9F98C(v19, v20, v21);
  v22 = OUTLINED_FUNCTION_64_0();
  sub_267B9F98C(v22, v23, &qword_267EFC0B0);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_267D86270()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[19] = v1;
  v2[20] = v4;
  v2[21] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *(v5 + 400);
  v8 = v7[49];
  v9 = v7[48];
  v10 = v7[37];
  v11 = v7[30];
  v12 = v7[29];
  v13 = *v1;
  OUTLINED_FUNCTION_5();
  *v14 = v13;
  *(v15 + 408) = v0;

  OUTLINED_FUNCTION_394();
  sub_267B9F98C(v16, v17, v18);
  OUTLINED_FUNCTION_394();
  sub_267B9F98C(v19, v20, v21);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_267D864E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = *(v15 + 328);
  OUTLINED_FUNCTION_99_6();
  sub_267B9F98C(v14, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267D865AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = *(v15 + 352);
  OUTLINED_FUNCTION_99_6();
  sub_267B9F98C(v14, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267D86678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = *(v15 + 376);
  OUTLINED_FUNCTION_99_6();
  sub_267B9F98C(v14, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267D86744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = *(v15 + 408);
  OUTLINED_FUNCTION_99_6();
  sub_267B9F98C(v14, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267D86810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[93] = v6;
  v7[92] = a6;
  v7[91] = a5;
  v7[90] = a4;
  v7[89] = a3;
  v7[88] = a2;
  v7[87] = a1;
  v8 = sub_267EF8368();
  v7[94] = v8;
  v9 = *(v8 - 8);
  v7[95] = v9;
  v10 = *(v9 + 64) + 15;
  v7[96] = swift_task_alloc();
  v11 = sub_267EF81B8();
  v7[97] = v11;
  v12 = *(v11 - 8);
  v7[98] = v12;
  v13 = *(v12 + 64) + 15;
  v7[99] = swift_task_alloc();
  v14 = sub_267EF81D8();
  v7[100] = v14;
  v15 = *(v14 - 8);
  v7[101] = v15;
  v16 = *(v15 + 64) + 15;
  v7[102] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v7[103] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v7[104] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90) - 8) + 64) + 15;
  v7[105] = swift_task_alloc();
  v20 = sub_267EF8228();
  v7[106] = v20;
  v21 = *(v20 - 8);
  v7[107] = v21;
  v22 = *(v21 + 64) + 15;
  v7[108] = swift_task_alloc();
  v23 = sub_267EF8578();
  v7[109] = v23;
  v24 = *(v23 - 8);
  v7[110] = v24;
  v25 = *(v24 + 64) + 15;
  v7[111] = swift_task_alloc();
  v26 = sub_267EF8248();
  v7[112] = v26;
  v27 = *(v26 - 8);
  v7[113] = v27;
  v28 = *(v27 + 64) + 15;
  v7[114] = swift_task_alloc();
  v29 = sub_267EF8488();
  v7[115] = v29;
  v30 = *(v29 - 8);
  v7[116] = v30;
  v31 = *(v30 + 64) + 15;
  v7[117] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0) - 8) + 64) + 15;
  v7[118] = swift_task_alloc();
  v7[119] = swift_task_alloc();
  v33 = sub_267EF83D8();
  v7[120] = v33;
  v34 = *(v33 - 8);
  v7[121] = v34;
  v35 = *(v34 + 64) + 15;
  v7[122] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64) + 15;
  v7[123] = swift_task_alloc();
  v7[124] = swift_task_alloc();
  v7[125] = swift_task_alloc();
  v37 = sub_267EF2BA8();
  v7[126] = v37;
  v38 = *(v37 - 8);
  v7[127] = v38;
  v39 = *(v38 + 64) + 15;
  v7[128] = swift_task_alloc();
  v7[129] = swift_task_alloc();
  v7[130] = swift_task_alloc();
  v40 = sub_267EF82D8();
  v7[131] = v40;
  v41 = *(v40 - 8);
  v7[132] = v41;
  v42 = *(v41 + 64) + 15;
  v7[133] = swift_task_alloc();
  v43 = sub_267EF8598();
  v7[134] = v43;
  v44 = *(v43 - 8);
  v7[135] = v44;
  v45 = *(v44 + 64) + 15;
  v7[136] = swift_task_alloc();
  v46 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v7[137] = swift_task_alloc();
  v7[138] = swift_task_alloc();
  v7[139] = swift_task_alloc();
  v7[140] = swift_task_alloc();
  v7[141] = swift_task_alloc();
  v7[142] = swift_task_alloc();
  v7[143] = swift_task_alloc();
  v7[144] = swift_task_alloc();
  v7[145] = swift_task_alloc();
  v7[146] = swift_task_alloc();
  v7[147] = swift_task_alloc();
  v7[148] = swift_task_alloc();
  v7[149] = swift_task_alloc();
  v7[150] = swift_task_alloc();
  v7[151] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D86E80, 0, 0);
}

void *sub_267D86E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_426();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v58 = OUTLINED_FUNCTION_490(v57);
  v59 = OUTLINED_FUNCTION_343(v58);
  v60 = OUTLINED_FUNCTION_74_6(v59);
  v61(v60);
  OUTLINED_FUNCTION_173_0();
  v62 = [v52 speakableGroupName];
  v257 = v56;
  v258 = v52;
  if (v62)
  {
    v63 = v62;
    v49 = [v62 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_308_0();
  }

  else
  {
    OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_503();
    if (v54)
    {
      v64 = OUTLINED_FUNCTION_73();
      sub_267DA2578(v64);
    }

    else
    {
      OUTLINED_FUNCTION_333();
    }

    OUTLINED_FUNCTION_308_0();
  }

  OUTLINED_FUNCTION_134_1();
  v65 = OUTLINED_FUNCTION_485();
  sub_267E80518(v65);
  OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_269();
  v66 = sub_267EF79B8();
  v67 = OUTLINED_FUNCTION_129_1(v66);
  v68 = type metadata accessor for SendMessageHoldSendParameters(v67);
  v69 = OUTLINED_FUNCTION_441(v68);
  OUTLINED_FUNCTION_474(&unk_28022AE30, &qword_267EFC0B0, *(v69 + 60));
  OUTLINED_FUNCTION_481();
  OUTLINED_FUNCTION_445();
  v71 = OUTLINED_FUNCTION_268(v70);
  OUTLINED_FUNCTION_332(v71);
  *(v50 + 656) = v55;
  sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
  OUTLINED_FUNCTION_334();
  *(v50 + 1296) = v49;
  if (v49)
  {
    OUTLINED_FUNCTION_480();

    goto LABEL_9;
  }

  v83 = *(v50 + 1200);
  v84 = *(v50 + 696);
  v85 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v48);
  OUTLINED_FUNCTION_477(&unk_28022AE30, &qword_267EFC0B0, v54[17]);
  OUTLINED_FUNCTION_22_21();
  v88 = OUTLINED_FUNCTION_38_0();
  v89(v88);
  v90 = *(v50 + 80);
  v91 = *(v50 + 88);
  OUTLINED_FUNCTION_52_10((v50 + 56));
  if (sub_267EF3C18())
  {
    *(v50 + 600) = &type metadata for Features;
    v92 = sub_267BAFCAC();
    OUTLINED_FUNCTION_257_0(v92);
    OUTLINED_FUNCTION_319();
    if (v83)
    {
      v93 = swift_task_alloc();
      v94 = OUTLINED_FUNCTION_429(v93);
      *v94 = v95;
      OUTLINED_FUNCTION_172_1(v94);
      OUTLINED_FUNCTION_195_0();

      return sub_267CA7E0C(v96);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v50 + 56));
  }

  v98 = OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_307_0([v83 attachments]);
  if ((v98 & 1) == 0)
  {
    if (!v90)
    {
      v146 = [*(v50 + 1224) content];
      if (v146)
      {
        LOBYTE(v83) = v146;
        sub_267EF9028();
        OUTLINED_FUNCTION_404();
      }

      else
      {
        OUTLINED_FUNCTION_306();
      }

      v155 = OUTLINED_FUNCTION_26_23();
      v156(v155);
      OUTLINED_FUNCTION_47_13();
      sub_267EF3C28();
      OUTLINED_FUNCTION_381();
      if (v83)
      {
        OUTLINED_FUNCTION_73_7();
        v157 = *MEMORY[0x277D5D410];
        v158 = OUTLINED_FUNCTION_152_1();
        v159(v158);
        OUTLINED_FUNCTION_119_4();
        sub_267EF81C8();
        OUTLINED_FUNCTION_143();
        if (!v98)
        {
          v167 = OUTLINED_FUNCTION_63_8();
          v168(v167);
          v51 = 92;
          goto LABEL_68;
        }

        a17 = v98;
        v160 = *(v50 + 1288);
        v161 = OUTLINED_FUNCTION_31_17();
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_143();
        if (!v98)
        {
          v169 = OUTLINED_FUNCTION_62_6();
          v170(v169);
          v51 = 64;
          goto LABEL_68;
        }

        a17 = v98;
        v160 = *(v50 + 1288);
        v161 = OUTLINED_FUNCTION_30_22();
      }

      (*(v162 + 8))(v161);

      goto LABEL_9;
    }

    v118 = *(v50 + 744);
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    *(v50 + 1360) = OUTLINED_FUNCTION_353();

    OUTLINED_FUNCTION_22_21();
    v119 = OUTLINED_FUNCTION_38_0();
    v120(v119);
    OUTLINED_FUNCTION_28_24(OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
    v259 = v121 + *v121;
    v123 = *(v122 + 4);
    v124 = swift_task_alloc();
    v125 = OUTLINED_FUNCTION_305_0(v124);
    *v125 = v126;
    OUTLINED_FUNCTION_65_7(v125);
    OUTLINED_FUNCTION_195_0();

    return v129(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v257, v259, a43, a44, a45, a46, a47, a48);
  }

  if (!v90)
  {
    OUTLINED_FUNCTION_261_0();
    OUTLINED_FUNCTION_169_1();
LABEL_49:
    sub_267B9F98C(*(v50 + 1000), &qword_280229E20, &unk_267EFDCC0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v136 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v136, qword_280240FB0);
    sub_267EF89F8();
    v137 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v137))
    {
      v138 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v138);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v139, v140, v141, v142, v143, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_81_6();
    v144 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_153_1(v144, v145);
    OUTLINED_FUNCTION_472();

    goto LABEL_9;
  }

  v99 = *(v50 + 1016);
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v100 = OUTLINED_FUNCTION_353();

  v101 = sub_267BAF0DC(v100);
  OUTLINED_FUNCTION_37_14(v101);
  a39 = MEMORY[0x277D84F90];
  v51 = &qword_280229E20;
  v102 = &unk_267EFDCC0;
  while (1)
  {
    OUTLINED_FUNCTION_301_0();
    if (v103)
    {
      break;
    }

    if (v257)
    {
      OUTLINED_FUNCTION_406();
    }

    else
    {
      OUTLINED_FUNCTION_154_0();
      if (v104)
      {
        goto LABEL_101;
      }

      OUTLINED_FUNCTION_405();
    }

    OUTLINED_FUNCTION_297();
    if (v105)
    {
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v106 = [v54 audioMessageFile];
    if (!v106)
    {
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_168_1();
      goto LABEL_34;
    }

    v107 = v106;
    v56 = [v106 fileURL];

    if (v56)
    {
      OUTLINED_FUNCTION_410();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    OUTLINED_FUNCTION_264_0();
    OUTLINED_FUNCTION_48_18();
    v51 = &qword_280229E20;
    OUTLINED_FUNCTION_255();
    sub_267BBE184(v108, v109, v110, v111);
    OUTLINED_FUNCTION_92_6();
    if (v103)
    {
LABEL_34:
      OUTLINED_FUNCTION_263_0();
      ++v53;
    }

    else
    {
      v112 = OUTLINED_FUNCTION_64_8();
      (v90)(v112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_132_1();
        a39 = v116;
      }

      OUTLINED_FUNCTION_101_6();
      if (v104)
      {
        OUTLINED_FUNCTION_91_8(v114);
        sub_267C70BD8();
        a39 = v117;
      }

      v115 = OUTLINED_FUNCTION_11_33();
      (v90)(v115);
      v53 = v52;
      v51 = &qword_280229E20;
    }
  }

  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_282_0();

  OUTLINED_FUNCTION_105_7();
  if (v103)
  {
    v135 = *(v50 + 1256);

    goto LABEL_49;
  }

  v147 = OUTLINED_FUNCTION_9_36();
  v148(v147);
  v149 = OUTLINED_FUNCTION_98_6();
  v150(v149);
  OUTLINED_FUNCTION_279_0();
  OUTLINED_FUNCTION_170_1();
  if (&unk_267EFDCC0)
  {
    a17 = &unk_267EFDCC0;
    OUTLINED_FUNCTION_46_14();

    v151 = OUTLINED_FUNCTION_151_0();
    v152(v151);
    v153 = OUTLINED_FUNCTION_14_26();
    v154(v153);
    goto LABEL_9;
  }

  v163 = OUTLINED_FUNCTION_27_21();
  v164(v163);
  v165 = OUTLINED_FUNCTION_130();
  v166(v165);
  v51 = 32;
LABEL_68:
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_373(&unk_28022AE30, &qword_267EFC0B0, v171);
  v172 = sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    OUTLINED_FUNCTION_387();
    OUTLINED_FUNCTION_229();

    OUTLINED_FUNCTION_243_0();
    sub_267EF8698();
  }

  v173 = OUTLINED_FUNCTION_226_0();
  v174 = OUTLINED_FUNCTION_4_45(v173);
  v175(v174);
  v176 = *(v50 + 160);
  v102 = *(v50 + 168);
  OUTLINED_FUNCTION_52_10((v50 + 136));
  sub_267EF3C48();
  OUTLINED_FUNCTION_382();
  if ((v172 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_30();
    OUTLINED_FUNCTION_369();
    v185 = v55;
    v186 = v54;
    v100 = sub_267EF4648();
    sub_267BE84FC();
    v187 = OUTLINED_FUNCTION_366();
    OUTLINED_FUNCTION_379(v187, v188, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_224_0();
    if (v102)
    {
      a17 = v102;
      OUTLINED_FUNCTION_32_13();
      v189 = *(v50 + 920);
      goto LABEL_98;
    }

    v190 = OUTLINED_FUNCTION_8_38();
    v191(v190);
    OUTLINED_FUNCTION_58_7();
    OUTLINED_FUNCTION_367(&unk_28022AE30, &qword_267EFC0B0, v192);
    OUTLINED_FUNCTION_259_0();
LABEL_86:
    OUTLINED_FUNCTION_43_16();
    v193 = *MEMORY[0x277D5D508];
    v194 = OUTLINED_FUNCTION_210_0();
    (v54)(v194);
    v195 = OUTLINED_FUNCTION_12_26();
    v196(v195);
    OUTLINED_FUNCTION_380();
    v197 = OUTLINED_FUNCTION_42_16();
    (v53)(v197);
    *(v50 + 664) = v51;
    sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_223();
    OUTLINED_FUNCTION_82_5();
    OUTLINED_FUNCTION_41_13();
    OUTLINED_FUNCTION_349(&unk_28022AE30, &qword_267EFC0B0, *(v217 + 76));
    v218 = *MEMORY[0x277D5D4E8];
    v219 = OUTLINED_FUNCTION_184_1();
    v220(v219);
    v221 = v52[5];
    v222 = v52[6];
    v223 = OUTLINED_FUNCTION_16_24(v52 + 2);
    v224(v223);
    OUTLINED_FUNCTION_414();
    v225 = OUTLINED_FUNCTION_69_5();
    v226(v225);
    *(v50 + 672) = v221;
    OUTLINED_FUNCTION_345();
    v227 = *(v50 + 1288);
    OUTLINED_FUNCTION_0_43();

    sub_267B9F98C(v100, &qword_2802295B0, &unk_267EFDCA0);
    v253 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_556(v253, v254, v255);
    OUTLINED_FUNCTION_330_0(&unk_28022AE30, &qword_267EFC0B0, v256);

    OUTLINED_FUNCTION_1();
    goto LABEL_10;
  }

  v100 = OUTLINED_FUNCTION_225();
  v177 = sub_267BDAF74();
  OUTLINED_FUNCTION_159_1(v177);
  v178 = [v102 recipients];
  v179 = MEMORY[0x277D84F90];
  if (!v178)
  {
    goto LABEL_89;
  }

  v100 = v178;
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  OUTLINED_FUNCTION_110_0();
  v180 = sub_267EF92F8();

  v181 = sub_267BAF0DC(v180);
  if (!v181)
  {

    goto LABEL_89;
  }

  result = OUTLINED_FUNCTION_61_11(v181);
  if ((v102 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_45_14();
  do
  {
    if (v52)
    {
      v182 = OUTLINED_FUNCTION_68_0();
      v183 = MEMORY[0x26D609870](v182);
    }

    else
    {
      v183 = OUTLINED_FUNCTION_370();
    }

    v100 = v183;
    sub_267BBD380(v183);
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_68_7();
    if (v104)
    {
      OUTLINED_FUNCTION_117_6(v184);
      v179 = a43;
    }

    OUTLINED_FUNCTION_33_11();
  }

  while (!v103);

  v51 = v257;
LABEL_89:
  *(v50 + 1344) = v179;
  if (v51)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v259 = v198;
    v199 = swift_task_alloc();
    v200 = OUTLINED_FUNCTION_271_0(v199);
    *v200 = v201;
    OUTLINED_FUNCTION_139_0(v200);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_195_0();

    return v129(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v257, v259, a43, a44, a45, a46, a47, a48);
  }

  OUTLINED_FUNCTION_51_10();
  OUTLINED_FUNCTION_234();
  v203 = 0xE000000000000000;
  if (!v103)
  {
    v203 = v202;
  }

  a9 = v203;
  OUTLINED_FUNCTION_18_23();
  sub_267EF8238();
  OUTLINED_FUNCTION_228_0();
  if (!v102)
  {
    v204 = OUTLINED_FUNCTION_3_46();
    v205(v204);
    v206 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_292(v206, v207, v208);
    OUTLINED_FUNCTION_348(&unk_28022AE30, &qword_267EFC0B0, v209);
    OUTLINED_FUNCTION_258_0();
    v210 = v56;
    v211 = v53;
    v100 = OUTLINED_FUNCTION_412();
    sub_267BE84FC();
    v212 = OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_407(v212, v213, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_56_11(v214);
    sub_267EF8348();
LABEL_102:
    OUTLINED_FUNCTION_70_8();
    v257 = v228;
    v229 = OUTLINED_FUNCTION_23_18();
    v230(v229);
    OUTLINED_FUNCTION_59_11();
    OUTLINED_FUNCTION_413(&unk_28022AE30, &qword_267EFC0B0, v231);
    v232 = *MEMORY[0x277D5D4E0];
    v233 = OUTLINED_FUNCTION_102_4();
    v258 = v234;
    (v234)(v233);
    v235 = OUTLINED_FUNCTION_14_31();
    v236(v235);
    OUTLINED_FUNCTION_362();
    v237 = OUTLINED_FUNCTION_57_10();
    (v53)(v237);
    *(v50 + 680) = v51;
    v238 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_509();
    if (v102)
    {
      a17 = v102;
      OUTLINED_FUNCTION_150_1();

      goto LABEL_99;
    }

    OUTLINED_FUNCTION_85_7();
    v239 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_433(v239, v240, v241);
    OUTLINED_FUNCTION_349(&unk_28022AE30, &qword_267EFC0B0, *(v242 + 56));
    v243 = *MEMORY[0x277D5D4D8];
    v244 = OUTLINED_FUNCTION_283_0();
    v245(v244);
    v246 = OUTLINED_FUNCTION_13_32();
    v247(v246);
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_457();
    v248();
    *(v50 + 688) = v51;
    OUTLINED_FUNCTION_341();
    OUTLINED_FUNCTION_114_5();
    v249 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_363(v249, v250, v251);
    OUTLINED_FUNCTION_372(&unk_28022AE30, &qword_267EFC0B0, v252);
    v54 = v258;
    goto LABEL_86;
  }

  a17 = v102;
  OUTLINED_FUNCTION_20_20();
LABEL_98:

  v215 = OUTLINED_FUNCTION_127_3();
  v216(v215);
LABEL_99:
  sub_267B9F98C(v100, &qword_2802295B0, &unk_267EFDCA0);
LABEL_9:
  OUTLINED_FUNCTION_5_44();
  a18 = v73;
  a19 = v72;
  OUTLINED_FUNCTION_6_38();
  a32 = *(v50 + 952);
  OUTLINED_FUNCTION_1_55();

  OUTLINED_FUNCTION_17();
LABEL_10:
  OUTLINED_FUNCTION_195_0();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v257, v258, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_267D87E78()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 1304);
  *v2 = *v0;
  OUTLINED_FUNCTION_504(v5);
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void *sub_267D87F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void (*a41)(void), void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_451();
  if (v57)
  {
    OUTLINED_FUNCTION_77_5();
  }

  else
  {
    v49 = *(v51 + 1232);
    sub_267EF7C18();
    if (!v58)
    {
      OUTLINED_FUNCTION_7_7();
    }
  }

  OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_449();
  if (v50)
  {
    v59 = OUTLINED_FUNCTION_76_7();
    v60(v59);

LABEL_7:

    goto LABEL_12;
  }

  v61 = OUTLINED_FUNCTION_38_16();
  v62(v61);
  v63 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_431(v63, v64, v65);
  OUTLINED_FUNCTION_500(&unk_28022AE30, &qword_267EFC0B0, v66);
  v67 = OUTLINED_FUNCTION_104_5();
  v68(v67);
  sub_267DA1EB4();
  OUTLINED_FUNCTION_320_0();
  OUTLINED_FUNCTION_444();
  if (v70)
  {
    v71 = 0xE000000000000000;
  }

  else
  {
    v71 = v69;
  }

  v72 = v48;
  OUTLINED_FUNCTION_484();
  v73 = v52;
  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_499();
  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_167_0();
  v83 = *v53;
  v84 = OUTLINED_FUNCTION_37_1();
  v85(v84);
  v86 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v49);
  OUTLINED_FUNCTION_475(&unk_28022AE30, &qword_267EFC0B0, v71[18]);
  v89 = OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_307_0([v49 attachments]);
  if ((v89 & 1) == 0)
  {
    if (!v48)
    {
      v137 = [*(v51 + 1224) content];
      if (v137)
      {
        LOBYTE(v49) = v137;
        sub_267EF9028();
        OUTLINED_FUNCTION_404();
      }

      else
      {
        OUTLINED_FUNCTION_306();
      }

      v146 = OUTLINED_FUNCTION_26_23();
      v147(v146);
      OUTLINED_FUNCTION_47_13();
      sub_267EF3C28();
      OUTLINED_FUNCTION_381();
      if (v49)
      {
        OUTLINED_FUNCTION_73_7();
        v148 = *MEMORY[0x277D5D410];
        v149 = OUTLINED_FUNCTION_152_1();
        v150(v149);
        OUTLINED_FUNCTION_119_4();
        sub_267EF81C8();
        OUTLINED_FUNCTION_143();
        if (!v89)
        {
          v158 = OUTLINED_FUNCTION_63_8();
          v159(v158);
          v52 = 92;
          goto LABEL_65;
        }

        a42 = v89;
        v151 = *(v51 + 1288);
        v152 = OUTLINED_FUNCTION_31_17();
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_143();
        if (!v89)
        {
          v160 = OUTLINED_FUNCTION_62_6();
          v161(v160);
          v52 = 64;
          goto LABEL_65;
        }

        a42 = v89;
        v151 = *(v51 + 1288);
        v152 = OUTLINED_FUNCTION_30_22();
      }

      (*(v153 + 8))(v152);

      goto LABEL_12;
    }

    v108 = *(v51 + 744);
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    *(v51 + 1360) = OUTLINED_FUNCTION_353();

    OUTLINED_FUNCTION_22_21();
    v109 = OUTLINED_FUNCTION_38_0();
    v110(v109);
    OUTLINED_FUNCTION_28_24(OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
    v247 = v111 + *v111;
    v113 = *(v112 + 4);
    v114 = swift_task_alloc();
    v115 = OUTLINED_FUNCTION_305_0(v114);
    *v115 = v116;
    OUTLINED_FUNCTION_65_7(v115);
    OUTLINED_FUNCTION_195_0();

    return v119(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v247, a43, a44, a45, a46, a47, a48);
  }

  if (!v48)
  {
    OUTLINED_FUNCTION_261_0();
    OUTLINED_FUNCTION_169_1();
LABEL_46:
    sub_267B9F98C(*(v51 + 1000), &qword_280229E20, &unk_267EFDCC0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v126 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v126, qword_280240FB0);
    sub_267EF89F8();
    v127 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v127))
    {
      v128 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v128);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v129, v130, v131, v132, v133, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_81_6();
    v134 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_153_1(v134, v135);
    OUTLINED_FUNCTION_408(v136);

    goto LABEL_7;
  }

  v90 = *(v51 + 1016);
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v91 = OUTLINED_FUNCTION_353();

  v92 = sub_267BAF0DC(v91);
  OUTLINED_FUNCTION_37_14(v92);
  a39 = MEMORY[0x277D84F90];
  v52 = &qword_280229E20;
  v93 = &unk_267EFDCC0;
  while (1)
  {
    OUTLINED_FUNCTION_301_0();
    if (v70)
    {
      break;
    }

    if (a41)
    {
      OUTLINED_FUNCTION_406();
    }

    else
    {
      OUTLINED_FUNCTION_154_0();
      if (v94)
      {
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_405();
    }

    OUTLINED_FUNCTION_297();
    if (v95)
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v96 = [v54 audioMessageFile];
    if (!v96)
    {
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_168_1();
      goto LABEL_31;
    }

    v97 = v96;
    v56 = [v96 fileURL];

    if (v56)
    {
      OUTLINED_FUNCTION_410();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    OUTLINED_FUNCTION_264_0();
    OUTLINED_FUNCTION_48_18();
    v52 = &qword_280229E20;
    OUTLINED_FUNCTION_255();
    sub_267BBE184(v98, v99, v100, v101);
    OUTLINED_FUNCTION_92_6();
    if (v70)
    {
LABEL_31:
      OUTLINED_FUNCTION_263_0();
      v71 = (v71 + 1);
    }

    else
    {
      v102 = OUTLINED_FUNCTION_64_8();
      (v48)(v102);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_132_1();
        a39 = v106;
      }

      OUTLINED_FUNCTION_101_6();
      if (v94)
      {
        OUTLINED_FUNCTION_91_8(v104);
        sub_267C70BD8();
        a39 = v107;
      }

      v105 = OUTLINED_FUNCTION_11_33();
      (v48)(v105);
      v71 = v53;
      v52 = &qword_280229E20;
    }
  }

  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_282_0();

  OUTLINED_FUNCTION_105_7();
  if (v70)
  {
    v125 = *(v51 + 1256);

    goto LABEL_46;
  }

  v138 = OUTLINED_FUNCTION_9_36();
  v139(v138);
  v140 = OUTLINED_FUNCTION_98_6();
  v141(v140);
  OUTLINED_FUNCTION_279_0();
  OUTLINED_FUNCTION_170_1();
  if (&unk_267EFDCC0)
  {
    a42 = &unk_267EFDCC0;
    OUTLINED_FUNCTION_46_14();

    v142 = OUTLINED_FUNCTION_151_0();
    v143(v142);
    v144 = OUTLINED_FUNCTION_14_26();
    v145(v144);
    goto LABEL_12;
  }

  v154 = OUTLINED_FUNCTION_27_21();
  v155(v154);
  v156 = OUTLINED_FUNCTION_130();
  v157(v156);
  v52 = 32;
LABEL_65:
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_373(&unk_28022AE30, &qword_267EFC0B0, v162);
  v163 = sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    OUTLINED_FUNCTION_387();
    OUTLINED_FUNCTION_229();

    OUTLINED_FUNCTION_243_0();
    sub_267EF8698();
  }

  v164 = OUTLINED_FUNCTION_226_0();
  v165 = OUTLINED_FUNCTION_4_45(v164);
  v166(v165);
  v167 = *(v51 + 160);
  v93 = *(v51 + 168);
  OUTLINED_FUNCTION_52_10((v51 + 136));
  sub_267EF3C48();
  OUTLINED_FUNCTION_382();
  if ((v163 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_30();
    OUTLINED_FUNCTION_369();
    v176 = v55;
    v177 = v54;
    v91 = sub_267EF4648();
    sub_267BE84FC();
    v178 = OUTLINED_FUNCTION_366();
    OUTLINED_FUNCTION_379(v178, v179, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_224_0();
    if (v93)
    {
      a42 = v93;
      OUTLINED_FUNCTION_32_13();
      v180 = *(v51 + 920);
      goto LABEL_95;
    }

    v181 = OUTLINED_FUNCTION_8_38();
    v182(v181);
    OUTLINED_FUNCTION_58_7();
    OUTLINED_FUNCTION_367(&unk_28022AE30, &qword_267EFC0B0, v183);
    OUTLINED_FUNCTION_259_0();
LABEL_83:
    OUTLINED_FUNCTION_43_16();
    v184 = *MEMORY[0x277D5D508];
    v185 = OUTLINED_FUNCTION_210_0();
    (v54)(v185);
    v186 = OUTLINED_FUNCTION_12_26();
    v187(v186);
    OUTLINED_FUNCTION_380();
    v188 = OUTLINED_FUNCTION_42_16();
    (v71)(v188);
    *(v51 + 664) = v52;
    sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_223();
    OUTLINED_FUNCTION_81_8();
    OUTLINED_FUNCTION_41_13();
    OUTLINED_FUNCTION_349(&unk_28022AE30, &qword_267EFC0B0, *(v208 + 76));
    v209 = *MEMORY[0x277D5D4E8];
    v210 = OUTLINED_FUNCTION_185_1();
    v211(v210);
    v212 = v53[5];
    v213 = v53[6];
    v214 = OUTLINED_FUNCTION_16_24(v53 + 2);
    v215(v214);
    OUTLINED_FUNCTION_414();
    v216 = OUTLINED_FUNCTION_69_5();
    v217(v216);
    *(v51 + 672) = v212;
    OUTLINED_FUNCTION_344();
    v218 = *(v51 + 1288);
    OUTLINED_FUNCTION_0_43();

    sub_267B9F98C(v91, &qword_2802295B0, &unk_267EFDCA0);
    v243 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_556(v243, v244, v245);
    OUTLINED_FUNCTION_330_0(&unk_28022AE30, &qword_267EFC0B0, v246);

    OUTLINED_FUNCTION_1();
    goto LABEL_13;
  }

  v91 = OUTLINED_FUNCTION_225();
  v168 = sub_267BDAF74();
  OUTLINED_FUNCTION_159_1(v168);
  v169 = [v93 recipients];
  v170 = MEMORY[0x277D84F90];
  if (!v169)
  {
    goto LABEL_86;
  }

  v91 = v169;
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  OUTLINED_FUNCTION_110_0();
  v171 = sub_267EF92F8();

  v172 = sub_267BAF0DC(v171);
  if (!v172)
  {

    goto LABEL_86;
  }

  result = OUTLINED_FUNCTION_61_11(v172);
  if ((v93 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_45_14();
  do
  {
    if (a42)
    {
      v173 = OUTLINED_FUNCTION_68_0();
      v174 = MEMORY[0x26D609870](v173);
    }

    else
    {
      v174 = OUTLINED_FUNCTION_370();
    }

    v91 = v174;
    sub_267BBD380(v174);
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_68_7();
    if (v94)
    {
      OUTLINED_FUNCTION_117_6(v175);
      v170 = a43;
    }

    OUTLINED_FUNCTION_33_11();
  }

  while (!v70);

  v52 = a41;
LABEL_86:
  *(v51 + 1344) = v170;
  if (v52)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v247 = v189;
    v190 = swift_task_alloc();
    v191 = OUTLINED_FUNCTION_271_0(v190);
    *v191 = v192;
    OUTLINED_FUNCTION_139_0(v191);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_195_0();

    return v119(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v247, a43, a44, a45, a46, a47, a48);
  }

  OUTLINED_FUNCTION_51_10();
  OUTLINED_FUNCTION_234();
  v194 = 0xE000000000000000;
  if (!v70)
  {
    v194 = v193;
  }

  a9 = v194;
  OUTLINED_FUNCTION_18_23();
  sub_267EF8238();
  OUTLINED_FUNCTION_228_0();
  if (!v93)
  {
    v195 = OUTLINED_FUNCTION_3_46();
    v196(v195);
    v197 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_292(v197, v198, v199);
    OUTLINED_FUNCTION_348(&unk_28022AE30, &qword_267EFC0B0, v200);
    OUTLINED_FUNCTION_258_0();
    v201 = v56;
    v202 = v71;
    v91 = OUTLINED_FUNCTION_412();
    sub_267BE84FC();
    v203 = OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_407(v203, v204, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_56_11(v205);
    sub_267EF8348();
LABEL_99:
    OUTLINED_FUNCTION_70_8();
    v219 = OUTLINED_FUNCTION_23_18();
    v220(v219);
    OUTLINED_FUNCTION_59_11();
    OUTLINED_FUNCTION_413(&unk_28022AE30, &qword_267EFC0B0, v221);
    v222 = *MEMORY[0x277D5D4E0];
    v223 = OUTLINED_FUNCTION_102_4();
    a41 = v224;
    v224(v223);
    v225 = OUTLINED_FUNCTION_14_31();
    v226(v225);
    OUTLINED_FUNCTION_362();
    v227 = OUTLINED_FUNCTION_57_10();
    (v71)(v227);
    *(v51 + 680) = v52;
    v228 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_506();
    a42 = v93;
    if (v93)
    {
      OUTLINED_FUNCTION_150_1();

      goto LABEL_96;
    }

    OUTLINED_FUNCTION_107_5();
    v229 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_434(v229, v230, v231);
    OUTLINED_FUNCTION_330_0(&unk_28022AE30, &qword_267EFC0B0, *(v232 + 56));
    v233 = *MEMORY[0x277D5D4D8];
    v234 = OUTLINED_FUNCTION_284_0();
    v235(v234);
    v236 = OUTLINED_FUNCTION_13_32();
    v237(v236);
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_156();
    v238();
    *(v51 + 688) = v52;
    OUTLINED_FUNCTION_186_1();
    a42 = 0;
    OUTLINED_FUNCTION_114_5();
    v239 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_363(v239, v240, v241);
    OUTLINED_FUNCTION_372(&unk_28022AE30, &qword_267EFC0B0, v242);
    v54 = a41;
    goto LABEL_83;
  }

  a42 = v93;
  OUTLINED_FUNCTION_20_20();
LABEL_95:

  v206 = OUTLINED_FUNCTION_127_3();
  v207(v206);
LABEL_96:
  sub_267B9F98C(v91, &qword_2802295B0, &unk_267EFDCA0);
LABEL_12:
  OUTLINED_FUNCTION_2_46();

  OUTLINED_FUNCTION_160_0();
LABEL_13:
  OUTLINED_FUNCTION_195_0();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_267D88E48()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 1352);
  *v2 = *v0;
  OUTLINED_FUNCTION_497(v5);
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D88F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_376();
  OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_95_6();
  OUTLINED_FUNCTION_234();
  v53 = 0xE000000000000000;
  if (!v54)
  {
    v53 = v52;
  }

  v143 = v53;
  OUTLINED_FUNCTION_18_23();
  sub_267EF8238();
  OUTLINED_FUNCTION_233();
  sub_267EF8348();
  if (a41)
  {
    OUTLINED_FUNCTION_20_20();

    v71 = OUTLINED_FUNCTION_127_3();
    v72(v71);
    sub_267B9F98C(v46, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_29_18();

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v55 = OUTLINED_FUNCTION_35_15();
    v56(v55);
    v57 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_292(v57, v58, v59);
    OUTLINED_FUNCTION_348(&unk_28022AE30, &qword_267EFC0B0, v60);
    OUTLINED_FUNCTION_338();
    v61 = v51;
    v62 = v50;
    OUTLINED_FUNCTION_478();
    sub_267BE84FC();
    v63 = OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_496(v63, v64, &qword_2802295B0, &unk_267EFDCA0);
    v65.n128_f64[0] = OUTLINED_FUNCTION_231_0();
    OUTLINED_FUNCTION_80_5(v65, v66, v67, v68, a39, v69, v70);
    sub_267EF8348();
    v82 = OUTLINED_FUNCTION_50_13();
    v83(v82);
    OUTLINED_FUNCTION_59_11();
    OUTLINED_FUNCTION_501(&unk_28022AE30, &qword_267EFC0B0, v84);
    v85 = *MEMORY[0x277D5D4E0];
    v86 = OUTLINED_FUNCTION_135_0();
    v87(v86);
    v88 = OUTLINED_FUNCTION_14_31();
    v89(v88);
    OUTLINED_FUNCTION_362();
    v90 = OUTLINED_FUNCTION_179_1();
    (v50)(v90);
    v47[85] = v48;
    v91 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_507();
    OUTLINED_FUNCTION_96_6();
    v92 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_430(v92, v93, v94);
    OUTLINED_FUNCTION_339(&unk_28022AE30, &qword_267EFC0B0, *(v95 + 56));
    v96 = *MEMORY[0x277D5D4D8];
    v97 = OUTLINED_FUNCTION_188_1();
    v98(v97);
    v99 = *(v91 + 40);
    v100 = *(v91 + 48);
    v101 = OUTLINED_FUNCTION_15_28((v91 + 16));
    v102(v101);
    OUTLINED_FUNCTION_388();
    v103 = OUTLINED_FUNCTION_109_6();
    (v50)(v103, 0);
    v47[86] = v99;
    OUTLINED_FUNCTION_342();
    OUTLINED_FUNCTION_280_0();
    v104 = OUTLINED_FUNCTION_145_1();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, a38);
    OUTLINED_FUNCTION_473(&unk_28022AE30, &qword_267EFC0B0, *(v91 + 48));
    OUTLINED_FUNCTION_137_1();
    v107 = *MEMORY[0x277D5D508];
    v108 = OUTLINED_FUNCTION_162_0();
    v109(v108);
    v110 = a38[5];
    v111 = a38[6];
    OUTLINED_FUNCTION_54_10(a38 + 2);
    v112 = OUTLINED_FUNCTION_89_8();
    v113(v112);
    OUTLINED_FUNCTION_486();
    v114 = OUTLINED_FUNCTION_180_1();
    v111(v114);
    v47[83] = v110;
    OUTLINED_FUNCTION_327_0();
    a41 = 0;
    OUTLINED_FUNCTION_108_5();
    v115 = OUTLINED_FUNCTION_72_9();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, a38);
    OUTLINED_FUNCTION_330_0(&unk_28022AE30, &qword_267EFC0B0, *(v91 + 76));
    v118 = *MEMORY[0x277D5D4E8];
    v119 = OUTLINED_FUNCTION_162_0();
    v120(v119);
    v121 = v51[5];
    v122 = v51[6];
    v123 = OUTLINED_FUNCTION_16_24(v51 + 2);
    v124(v123);
    OUTLINED_FUNCTION_512();
    v125 = OUTLINED_FUNCTION_181_1();
    v126(v125);
    v47[84] = v121;
    OUTLINED_FUNCTION_346();
    v127 = v47[161];
    OUTLINED_FUNCTION_19_23();
    a10 = v129;
    a11 = v128;
    OUTLINED_FUNCTION_237();
    a12 = v131;
    a13 = v130;
    OUTLINED_FUNCTION_230_0();
    a14 = v133;
    a15 = v132;
    OUTLINED_FUNCTION_236();
    a16 = v135;
    a17 = v134;
    OUTLINED_FUNCTION_235();
    a18 = v137;
    a19 = v136;
    v138 = v47[140];
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_60_7();

    sub_267B9F98C(a38, &qword_2802295B0, &unk_267EFDCA0);
    v139 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_556(v139, v140, v141);
    OUTLINED_FUNCTION_330_0(&unk_28022AE30, &qword_267EFC0B0, v142);

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_384();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, v143, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_267D895A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 1368);
  *v2 = *v0;
  OUTLINED_FUNCTION_494(v5);
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void *sub_267D89680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, unint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_165_0();

  if (v51[65])
  {
    OUTLINED_FUNCTION_177_0();
    OUTLINED_FUNCTION_493();

    __swift_destroy_boxed_opaque_existential_0(v51 + 57);
  }

  else
  {
    OUTLINED_FUNCTION_492();
    sub_267B9F98C((v51 + 62), &qword_28022BB10, &qword_267EFDCF0);
    sub_267EF8338();
    v56 = OUTLINED_FUNCTION_161_0();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  }

  OUTLINED_FUNCTION_337();
  v60 = OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_110(v60);
  if (v61)
  {
    __swift_destroy_boxed_opaque_existential_0(v51 + 52);
    sub_267B9F98C(v49, &unk_28022BB00, &unk_267EFCF90);
    OUTLINED_FUNCTION_265_0();
LABEL_10:
    v72 = v51[157];

    sub_267B9F98C(v48, &qword_28022BB10, &qword_267EFDCF0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v73 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
    sub_267EF89F8();
    v74 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v74))
    {
      v75 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v75);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v76, v77, v78, v79, v80, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_81_6();
    v81 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_178_1(v81, v82, 47);

    goto LABEL_28;
  }

  sub_267EF8318();
  OUTLINED_FUNCTION_217_0();
  v63 = *(v62 + 8);
  v64 = OUTLINED_FUNCTION_108();
  v65(v64);
  if (!v51[50])
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_335();
  OUTLINED_FUNCTION_476();

  v66 = OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_548(v66, v67, v68);
  OUTLINED_FUNCTION_511(&unk_28022AE30, &qword_267EFC0B0, v69);
  OUTLINED_FUNCTION_126_4();
  if (v50)
  {
    v70 = v51[161];
    OUTLINED_FUNCTION_94_6();

    __swift_destroy_boxed_opaque_existential_0(v51 + 42);
LABEL_27:
    a42 = v50;
LABEL_28:
    OUTLINED_FUNCTION_2_46();

    OUTLINED_FUNCTION_160_0();
LABEL_29:
    OUTLINED_FUNCTION_195_0();

    return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
  }

  v83 = v51[160];
  v84 = v51[159];
  v85 = v51[156];
  v86 = v51[139];
  v87 = v51[104];
  v88 = v51[103];
  v89 = v51[87];
  v90 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  OUTLINED_FUNCTION_491(&unk_28022AE30, &qword_267EFC0B0, v83[6]);
  sub_267C7FEC8();
  OUTLINED_FUNCTION_107_0();
  sub_267EFA028();
  OUTLINED_FUNCTION_76();
  sub_267B9F98C(v87, &qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_438();
  if (v61)
  {
    v50 = 0xE000000000000000;
  }

  else
  {
    v50 = v83;
  }

  v94 = [OUTLINED_FUNCTION_440() content];
  if (v94)
  {
    v85 = v94;
    sub_267EF9028();
    OUTLINED_FUNCTION_510();
  }

  else
  {
    v83 = 0;
  }

  v95 = OUTLINED_FUNCTION_90_6();
  v96(v95);
  v97 = v51[15];
  v98 = v51[16];
  __swift_project_boxed_opaque_existential_0(v51 + 12, v97);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3C28();
  OUTLINED_FUNCTION_381();
  if (v85)
  {
    OUTLINED_FUNCTION_144_0();
    v99 = *MEMORY[0x277D5D410];
    v100 = OUTLINED_FUNCTION_276_0();
    v101(v100);
    OUTLINED_FUNCTION_281_0();
    OUTLINED_FUNCTION_252_0();
    OUTLINED_FUNCTION_350();
    if (v50)
    {
      v102 = v51[161];
      v103 = OUTLINED_FUNCTION_31_17();
LABEL_26:
      (*(v104 + 8))(v103);

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_274_0();
    v115 = 92;
  }

  else
  {
    OUTLINED_FUNCTION_84_6();
    OUTLINED_FUNCTION_260_0();
    if (v50)
    {
      v102 = v51[161];
      v103 = OUTLINED_FUNCTION_30_22();
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_272_0();
    v115 = 64;
  }

  v116 = OUTLINED_FUNCTION_176(v114);
  v117(v116);
  v118 = *v85;
  v51[167] = 0;
  v119 = v51[160];
  OUTLINED_FUNCTION_79_8();
  OUTLINED_FUNCTION_373(&unk_28022AE30, &qword_267EFC0B0, *(v119 + v115));
  v120 = sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    OUTLINED_FUNCTION_387();
    OUTLINED_FUNCTION_229();

    OUTLINED_FUNCTION_243_0();
    sub_267EF8698();
  }

  v121 = OUTLINED_FUNCTION_226_0();
  v122 = OUTLINED_FUNCTION_4_45(v121);
  v123(v122);
  v124 = v51[20];
  v50 = v51[21];
  OUTLINED_FUNCTION_52_10(v51 + 17);
  sub_267EF3C48();
  OUTLINED_FUNCTION_382();
  if ((v120 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_30();
    OUTLINED_FUNCTION_369();
    v135 = v54;
    v136 = v98;
    v137 = sub_267EF4648();
    sub_267BE84FC();
    v138 = OUTLINED_FUNCTION_366();
    OUTLINED_FUNCTION_379(v138, v139, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_224_0();
    if (v50)
    {
      OUTLINED_FUNCTION_32_13();
      v140 = v51[115];

      v141 = OUTLINED_FUNCTION_155_1();
      v142(v141);
      sub_267B9F98C(v137, &qword_2802295B0, &unk_267EFDCA0);
      goto LABEL_27;
    }

    v143 = OUTLINED_FUNCTION_8_38();
    v144(v143);
    OUTLINED_FUNCTION_58_7();
    OUTLINED_FUNCTION_367(&unk_28022AE30, &qword_267EFC0B0, v145);
    OUTLINED_FUNCTION_259_0();
LABEL_52:
    OUTLINED_FUNCTION_43_16();
    v146 = *MEMORY[0x277D5D508];
    v147 = OUTLINED_FUNCTION_210_0();
    (v98)(v147);
    v148 = OUTLINED_FUNCTION_12_26();
    v149(v148);
    OUTLINED_FUNCTION_380();
    v150 = OUTLINED_FUNCTION_42_16();
    (v97)(v150);
    v51[83] = v119;
    sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_223();
    a42 = 0;
    OUTLINED_FUNCTION_83_6();
    OUTLINED_FUNCTION_41_13();
    OUTLINED_FUNCTION_349(&unk_28022AE30, &qword_267EFC0B0, *(v179 + 76));
    v180 = *MEMORY[0x277D5D4E8];
    v181 = OUTLINED_FUNCTION_278_0();
    v182(v181);
    v183 = MEMORY[0x28];
    v184 = OUTLINED_FUNCTION_16_24(0x10);
    v185(v184);
    OUTLINED_FUNCTION_513();
    v186 = OUTLINED_FUNCTION_182_1();
    v187(v186);
    v51[84] = v183;
    OUTLINED_FUNCTION_287_0();
    v188 = v51[161];
    OUTLINED_FUNCTION_0_43();

    sub_267B9F98C(v137, &qword_2802295B0, &unk_267EFDCA0);
    v209 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_556(v209, v210, v211);
    OUTLINED_FUNCTION_330_0(&unk_28022AE30, &qword_267EFC0B0, v212);

    OUTLINED_FUNCTION_1();
    goto LABEL_29;
  }

  v125 = OUTLINED_FUNCTION_225();
  v126 = sub_267BDAF74();
  OUTLINED_FUNCTION_159_1(v126);
  v127 = [v50 recipients];
  v128 = MEMORY[0x277D84F90];
  if (v127)
  {
    v125 = v127;
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    OUTLINED_FUNCTION_110_0();
    v129 = sub_267EF92F8();

    v130 = sub_267BAF0DC(v129);
    if (v130)
    {
      result = OUTLINED_FUNCTION_61_11(v130);
      if ((v50 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_45_14();
      do
      {
        if (a42)
        {
          v131 = OUTLINED_FUNCTION_68_0();
          v132 = MEMORY[0x26D609870](v131);
        }

        else
        {
          v132 = OUTLINED_FUNCTION_370();
        }

        v125 = v132;
        sub_267BBD380(v132);
        OUTLINED_FUNCTION_383();
        OUTLINED_FUNCTION_68_7();
        if (v134)
        {
          OUTLINED_FUNCTION_117_6(v133);
          v128 = a43;
        }

        OUTLINED_FUNCTION_33_11();
      }

      while (!v61);

      v119 = a41;
    }

    else
    {
    }
  }

  v51[168] = v128;
  if ((v119 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_10();
    OUTLINED_FUNCTION_234();
    v164 = 0xE000000000000000;
    if (!v61)
    {
      v164 = v163;
    }

    a9 = v164;
    OUTLINED_FUNCTION_18_23();
    sub_267EF8238();
    OUTLINED_FUNCTION_228_0();
    a42 = v50;
    if (v50)
    {
      OUTLINED_FUNCTION_24_22();
      v165 = v51[112];

      v166 = OUTLINED_FUNCTION_155_1();
      v167(v166);
      sub_267B9F98C(v125, &qword_2802295B0, &unk_267EFDCA0);
      goto LABEL_28;
    }

    v168 = OUTLINED_FUNCTION_34_14();
    v169(v168);
    v170 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_292(v170, v171, v172);
    OUTLINED_FUNCTION_348(&unk_28022AE30, &qword_267EFC0B0, v173);
    OUTLINED_FUNCTION_488();
    v174 = v55;
    v175 = v54;
    v137 = OUTLINED_FUNCTION_479();
    sub_267BE84FC();
    v176 = OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_487(v176, v177, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_115_4(v178);
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_175_0();
    v189 = OUTLINED_FUNCTION_49_13();
    v190(v189);
    v191 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_400(v191, v192, v193);
    OUTLINED_FUNCTION_348(&unk_28022AE30, &qword_267EFC0B0, v194);
    v195 = *MEMORY[0x277D5D4E0];
    v196 = OUTLINED_FUNCTION_136_0();
    (v83)(v196);
    v119 = MEMORY[0x28];
    v97 = MEMORY[0x30];
    v197 = OUTLINED_FUNCTION_17_21(0x10);
    v198(v197);
    OUTLINED_FUNCTION_362();
    OUTLINED_FUNCTION_66_11();
    OUTLINED_FUNCTION_453();
    v97();
    v51[85] = v119;
    sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_508();
    OUTLINED_FUNCTION_93_5();
    v199 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_432(v199, v200, v201);
    OUTLINED_FUNCTION_336(&unk_28022AE30, &qword_267EFC0B0, *(v202 + 56));
    v203 = *MEMORY[0x277D5D4D8];
    v204 = OUTLINED_FUNCTION_285_0();
    (v83)(v204);
    v205 = OUTLINED_FUNCTION_13_32();
    v206(v205);
    OUTLINED_FUNCTION_505();
    v207 = OUTLINED_FUNCTION_147_1();
    v208(v207);
    v51[86] = v119;
    OUTLINED_FUNCTION_186_1();
    OUTLINED_FUNCTION_114_5();
    v213 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_363(v213, v214, v215);
    OUTLINED_FUNCTION_372(&unk_28022AE30, &qword_267EFC0B0, v216);
    v98 = a41;
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_10(&dword_267F00478);
  v217 = v151;
  v152 = swift_task_alloc();
  v153 = OUTLINED_FUNCTION_271_0(v152);
  *v153 = v154;
  OUTLINED_FUNCTION_139_0(v153);
  OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_195_0();

  return v157(v155, v156, v157, v158, v159, v160, v161, v162, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v217, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_267D8A304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[93] = v6;
  v7[92] = a6;
  v7[91] = a5;
  v7[90] = a4;
  v7[89] = a3;
  v7[88] = a2;
  v7[87] = a1;
  v8 = sub_267EF8368();
  v7[94] = v8;
  v9 = *(v8 - 8);
  v7[95] = v9;
  v10 = *(v9 + 64) + 15;
  v7[96] = swift_task_alloc();
  v11 = sub_267EF81B8();
  v7[97] = v11;
  v12 = *(v11 - 8);
  v7[98] = v12;
  v13 = *(v12 + 64) + 15;
  v7[99] = swift_task_alloc();
  v14 = sub_267EF81D8();
  v7[100] = v14;
  v15 = *(v14 - 8);
  v7[101] = v15;
  v16 = *(v15 + 64) + 15;
  v7[102] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v7[103] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v7[104] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90) - 8) + 64) + 15;
  v7[105] = swift_task_alloc();
  v20 = sub_267EF8228();
  v7[106] = v20;
  v21 = *(v20 - 8);
  v7[107] = v21;
  v22 = *(v21 + 64) + 15;
  v7[108] = swift_task_alloc();
  v23 = sub_267EF8578();
  v7[109] = v23;
  v24 = *(v23 - 8);
  v7[110] = v24;
  v25 = *(v24 + 64) + 15;
  v7[111] = swift_task_alloc();
  v26 = sub_267EF8248();
  v7[112] = v26;
  v27 = *(v26 - 8);
  v7[113] = v27;
  v28 = *(v27 + 64) + 15;
  v7[114] = swift_task_alloc();
  v29 = sub_267EF8488();
  v7[115] = v29;
  v30 = *(v29 - 8);
  v7[116] = v30;
  v31 = *(v30 + 64) + 15;
  v7[117] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0) - 8) + 64) + 15;
  v7[118] = swift_task_alloc();
  v7[119] = swift_task_alloc();
  v33 = sub_267EF83D8();
  v7[120] = v33;
  v34 = *(v33 - 8);
  v7[121] = v34;
  v35 = *(v34 + 64) + 15;
  v7[122] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64) + 15;
  v7[123] = swift_task_alloc();
  v7[124] = swift_task_alloc();
  v7[125] = swift_task_alloc();
  v37 = sub_267EF2BA8();
  v7[126] = v37;
  v38 = *(v37 - 8);
  v7[127] = v38;
  v39 = *(v38 + 64) + 15;
  v7[128] = swift_task_alloc();
  v7[129] = swift_task_alloc();
  v7[130] = swift_task_alloc();
  v40 = sub_267EF82D8();
  v7[131] = v40;
  v41 = *(v40 - 8);
  v7[132] = v41;
  v42 = *(v41 + 64) + 15;
  v7[133] = swift_task_alloc();
  v43 = sub_267EF8598();
  v7[134] = v43;
  v44 = *(v43 - 8);
  v7[135] = v44;
  v45 = *(v44 + 64) + 15;
  v7[136] = swift_task_alloc();
  v46 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v7[137] = swift_task_alloc();
  v7[138] = swift_task_alloc();
  v7[139] = swift_task_alloc();
  v7[140] = swift_task_alloc();
  v7[141] = swift_task_alloc();
  v7[142] = swift_task_alloc();
  v7[143] = swift_task_alloc();
  v7[144] = swift_task_alloc();
  v7[145] = swift_task_alloc();
  v7[146] = swift_task_alloc();
  v7[147] = swift_task_alloc();
  v7[148] = swift_task_alloc();
  v7[149] = swift_task_alloc();
  v7[150] = swift_task_alloc();
  v7[151] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D8A974, 0, 0);
}

void *sub_267D8A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_426();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v58 = OUTLINED_FUNCTION_490(v57);
  v59 = OUTLINED_FUNCTION_343(v58);
  v60 = OUTLINED_FUNCTION_74_6(v59);
  v61(v60);
  OUTLINED_FUNCTION_173_0();
  v62 = [v52 speakableGroupName];
  v257 = v56;
  v258 = v52;
  if (v62)
  {
    v63 = v62;
    v49 = [v62 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_308_0();
  }

  else
  {
    OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_503();
    if (v54)
    {
      v64 = OUTLINED_FUNCTION_73();
      sub_267DA2578(v64);
    }

    else
    {
      OUTLINED_FUNCTION_333();
    }

    OUTLINED_FUNCTION_308_0();
  }

  OUTLINED_FUNCTION_134_1();
  v65 = OUTLINED_FUNCTION_485();
  sub_267E80518(v65);
  OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_269();
  v66 = sub_267EF79B8();
  v67 = OUTLINED_FUNCTION_129_1(v66);
  v68 = type metadata accessor for SendMessageConfirmFaceTimeInviteParameters(v67);
  v69 = OUTLINED_FUNCTION_441(v68);
  OUTLINED_FUNCTION_474(&unk_28022AE30, &qword_267EFC0B0, *(v69 + 60));
  OUTLINED_FUNCTION_481();
  OUTLINED_FUNCTION_445();
  v71 = OUTLINED_FUNCTION_268(v70);
  OUTLINED_FUNCTION_332(v71);
  *(v50 + 656) = v55;
  sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
  OUTLINED_FUNCTION_334();
  *(v50 + 1296) = v49;
  if (v49)
  {
    OUTLINED_FUNCTION_480();

    goto LABEL_9;
  }

  v83 = *(v50 + 1200);
  v84 = *(v50 + 696);
  v85 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v48);
  OUTLINED_FUNCTION_477(&unk_28022AE30, &qword_267EFC0B0, v54[20]);
  OUTLINED_FUNCTION_22_21();
  v88 = OUTLINED_FUNCTION_38_0();
  v89(v88);
  v90 = *(v50 + 80);
  v91 = *(v50 + 88);
  OUTLINED_FUNCTION_52_10((v50 + 56));
  if (sub_267EF3C18())
  {
    *(v50 + 600) = &type metadata for Features;
    v92 = sub_267BAFCAC();
    OUTLINED_FUNCTION_257_0(v92);
    OUTLINED_FUNCTION_319();
    if (v83)
    {
      v93 = swift_task_alloc();
      v94 = OUTLINED_FUNCTION_429(v93);
      *v94 = v95;
      OUTLINED_FUNCTION_172_1(v94);
      OUTLINED_FUNCTION_195_0();

      return sub_267CA7E0C(v96);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v50 + 56));
  }

  v98 = OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_307_0([v83 attachments]);
  if ((v98 & 1) == 0)
  {
    if (!v90)
    {
      v146 = [*(v50 + 1224) content];
      if (v146)
      {
        LOBYTE(v83) = v146;
        sub_267EF9028();
        OUTLINED_FUNCTION_404();
      }

      else
      {
        OUTLINED_FUNCTION_306();
      }

      v155 = OUTLINED_FUNCTION_26_23();
      v156(v155);
      OUTLINED_FUNCTION_47_13();
      sub_267EF3C28();
      OUTLINED_FUNCTION_381();
      if (v83)
      {
        OUTLINED_FUNCTION_73_7();
        v157 = *MEMORY[0x277D5D410];
        v158 = OUTLINED_FUNCTION_152_1();
        v159(v158);
        OUTLINED_FUNCTION_119_4();
        sub_267EF81C8();
        OUTLINED_FUNCTION_143();
        if (!v98)
        {
          v167 = OUTLINED_FUNCTION_63_8();
          v168(v167);
          v51 = 104;
          goto LABEL_68;
        }

        a17 = v98;
        v160 = *(v50 + 1288);
        v161 = OUTLINED_FUNCTION_31_17();
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_143();
        if (!v98)
        {
          v169 = OUTLINED_FUNCTION_62_6();
          v170(v169);
          v51 = 76;
          goto LABEL_68;
        }

        a17 = v98;
        v160 = *(v50 + 1288);
        v161 = OUTLINED_FUNCTION_30_22();
      }

      (*(v162 + 8))(v161);

      goto LABEL_9;
    }

    v118 = *(v50 + 744);
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    *(v50 + 1360) = OUTLINED_FUNCTION_353();

    OUTLINED_FUNCTION_22_21();
    v119 = OUTLINED_FUNCTION_38_0();
    v120(v119);
    OUTLINED_FUNCTION_28_24(OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
    v259 = v121 + *v121;
    v123 = *(v122 + 4);
    v124 = swift_task_alloc();
    v125 = OUTLINED_FUNCTION_305_0(v124);
    *v125 = v126;
    OUTLINED_FUNCTION_65_7(v125);
    OUTLINED_FUNCTION_195_0();

    return v129(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v257, v259, a43, a44, a45, a46, a47, a48);
  }

  if (!v90)
  {
    OUTLINED_FUNCTION_261_0();
    OUTLINED_FUNCTION_169_1();
LABEL_49:
    sub_267B9F98C(*(v50 + 1000), &qword_280229E20, &unk_267EFDCC0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v136 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v136, qword_280240FB0);
    sub_267EF89F8();
    v137 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v137))
    {
      v138 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v138);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v139, v140, v141, v142, v143, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_81_6();
    v144 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_153_1(v144, v145);
    OUTLINED_FUNCTION_472();

    goto LABEL_9;
  }

  v99 = *(v50 + 1016);
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v100 = OUTLINED_FUNCTION_353();

  v101 = sub_267BAF0DC(v100);
  OUTLINED_FUNCTION_37_14(v101);
  a39 = MEMORY[0x277D84F90];
  v51 = &qword_280229E20;
  v102 = &unk_267EFDCC0;
  while (1)
  {
    OUTLINED_FUNCTION_301_0();
    if (v103)
    {
      break;
    }

    if (v257)
    {
      OUTLINED_FUNCTION_406();
    }

    else
    {
      OUTLINED_FUNCTION_154_0();
      if (v104)
      {
        goto LABEL_101;
      }

      OUTLINED_FUNCTION_405();
    }

    OUTLINED_FUNCTION_297();
    if (v105)
    {
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v106 = [v54 audioMessageFile];
    if (!v106)
    {
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_168_1();
      goto LABEL_34;
    }

    v107 = v106;
    v56 = [v106 fileURL];

    if (v56)
    {
      OUTLINED_FUNCTION_410();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    OUTLINED_FUNCTION_264_0();
    OUTLINED_FUNCTION_48_18();
    v51 = &qword_280229E20;
    OUTLINED_FUNCTION_255();
    sub_267BBE184(v108, v109, v110, v111);
    OUTLINED_FUNCTION_92_6();
    if (v103)
    {
LABEL_34:
      OUTLINED_FUNCTION_263_0();
      ++v53;
    }

    else
    {
      v112 = OUTLINED_FUNCTION_64_8();
      (v90)(v112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_132_1();
        a39 = v116;
      }

      OUTLINED_FUNCTION_101_6();
      if (v104)
      {
        OUTLINED_FUNCTION_91_8(v114);
        sub_267C70BD8();
        a39 = v117;
      }

      v115 = OUTLINED_FUNCTION_11_33();
      (v90)(v115);
      v53 = v52;
      v51 = &qword_280229E20;
    }
  }

  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_282_0();

  OUTLINED_FUNCTION_105_7();
  if (v103)
  {
    v135 = *(v50 + 1256);

    goto LABEL_49;
  }

  v147 = OUTLINED_FUNCTION_9_36();
  v148(v147);
  v149 = OUTLINED_FUNCTION_98_6();
  v150(v149);
  OUTLINED_FUNCTION_279_0();
  OUTLINED_FUNCTION_170_1();
  if (&unk_267EFDCC0)
  {
    a17 = &unk_267EFDCC0;
    OUTLINED_FUNCTION_46_14();

    v151 = OUTLINED_FUNCTION_151_0();
    v152(v151);
    v153 = OUTLINED_FUNCTION_14_26();
    v154(v153);
    goto LABEL_9;
  }

  v163 = OUTLINED_FUNCTION_27_21();
  v164(v163);
  v165 = OUTLINED_FUNCTION_130();
  v166(v165);
  v51 = 32;
LABEL_68:
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_373(&unk_28022AE30, &qword_267EFC0B0, v171);
  v172 = sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    OUTLINED_FUNCTION_387();
    OUTLINED_FUNCTION_229();

    OUTLINED_FUNCTION_243_0();
    sub_267EF8698();
  }

  v173 = OUTLINED_FUNCTION_226_0();
  v174 = OUTLINED_FUNCTION_4_45(v173);
  v175(v174);
  v176 = *(v50 + 160);
  v102 = *(v50 + 168);
  OUTLINED_FUNCTION_52_10((v50 + 136));
  sub_267EF3C48();
  OUTLINED_FUNCTION_382();
  if ((v172 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_30();
    OUTLINED_FUNCTION_369();
    v185 = v55;
    v186 = v54;
    v100 = sub_267EF4648();
    sub_267BE84FC();
    v187 = OUTLINED_FUNCTION_366();
    OUTLINED_FUNCTION_379(v187, v188, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_224_0();
    if (v102)
    {
      a17 = v102;
      OUTLINED_FUNCTION_32_13();
      v189 = *(v50 + 920);
      goto LABEL_98;
    }

    v190 = OUTLINED_FUNCTION_8_38();
    v191(v190);
    OUTLINED_FUNCTION_58_7();
    OUTLINED_FUNCTION_367(&unk_28022AE30, &qword_267EFC0B0, v192);
    OUTLINED_FUNCTION_259_0();
LABEL_86:
    OUTLINED_FUNCTION_43_16();
    v193 = *MEMORY[0x277D5D508];
    v194 = OUTLINED_FUNCTION_210_0();
    (v54)(v194);
    v195 = OUTLINED_FUNCTION_12_26();
    v196(v195);
    OUTLINED_FUNCTION_380();
    v197 = OUTLINED_FUNCTION_42_16();
    (v53)(v197);
    *(v50 + 664) = v51;
    sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_223();
    OUTLINED_FUNCTION_82_5();
    OUTLINED_FUNCTION_41_13();
    OUTLINED_FUNCTION_349(&unk_28022AE30, &qword_267EFC0B0, *(v217 + 92));
    v218 = *MEMORY[0x277D5D4E8];
    v219 = OUTLINED_FUNCTION_184_1();
    v220(v219);
    v221 = v52[5];
    v222 = v52[6];
    v223 = OUTLINED_FUNCTION_16_24(v52 + 2);
    v224(v223);
    OUTLINED_FUNCTION_414();
    v225 = OUTLINED_FUNCTION_69_5();
    v226(v225);
    *(v50 + 672) = v221;
    OUTLINED_FUNCTION_345();
    v227 = *(v50 + 1288);
    OUTLINED_FUNCTION_0_43();

    sub_267B9F98C(v100, &qword_2802295B0, &unk_267EFDCA0);
    v253 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_557(v253, v254, v255);
    OUTLINED_FUNCTION_330_0(&unk_28022AE30, &qword_267EFC0B0, v256);

    OUTLINED_FUNCTION_1();
    goto LABEL_10;
  }

  v100 = OUTLINED_FUNCTION_225();
  v177 = sub_267BDAF74();
  OUTLINED_FUNCTION_159_1(v177);
  v178 = [v102 recipients];
  v179 = MEMORY[0x277D84F90];
  if (!v178)
  {
    goto LABEL_89;
  }

  v100 = v178;
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  OUTLINED_FUNCTION_110_0();
  v180 = sub_267EF92F8();

  v181 = sub_267BAF0DC(v180);
  if (!v181)
  {

    goto LABEL_89;
  }

  result = OUTLINED_FUNCTION_61_11(v181);
  if ((v102 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_45_14();
  do
  {
    if (v52)
    {
      v182 = OUTLINED_FUNCTION_68_0();
      v183 = MEMORY[0x26D609870](v182);
    }

    else
    {
      v183 = OUTLINED_FUNCTION_370();
    }

    v100 = v183;
    sub_267BBD380(v183);
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_68_7();
    if (v104)
    {
      OUTLINED_FUNCTION_117_6(v184);
      v179 = a43;
    }

    OUTLINED_FUNCTION_33_11();
  }

  while (!v103);

  v51 = v257;
LABEL_89:
  *(v50 + 1344) = v179;
  if (v51)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v259 = v198;
    v199 = swift_task_alloc();
    v200 = OUTLINED_FUNCTION_271_0(v199);
    *v200 = v201;
    OUTLINED_FUNCTION_138_0(v200);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_195_0();

    return v129(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v257, v259, a43, a44, a45, a46, a47, a48);
  }

  OUTLINED_FUNCTION_51_10();
  OUTLINED_FUNCTION_234();
  v203 = 0xE000000000000000;
  if (!v103)
  {
    v203 = v202;
  }

  a9 = v203;
  OUTLINED_FUNCTION_18_23();
  sub_267EF8238();
  OUTLINED_FUNCTION_228_0();
  if (!v102)
  {
    v204 = OUTLINED_FUNCTION_3_46();
    v205(v204);
    v206 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_292(v206, v207, v208);
    OUTLINED_FUNCTION_348(&unk_28022AE30, &qword_267EFC0B0, v209);
    OUTLINED_FUNCTION_258_0();
    v210 = v56;
    v211 = v53;
    v100 = OUTLINED_FUNCTION_412();
    sub_267BE84FC();
    v212 = OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_407(v212, v213, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_56_11(v214);
    sub_267EF8348();
LABEL_102:
    OUTLINED_FUNCTION_70_8();
    v257 = v228;
    v229 = OUTLINED_FUNCTION_23_18();
    v230(v229);
    OUTLINED_FUNCTION_59_11();
    OUTLINED_FUNCTION_413(&unk_28022AE30, &qword_267EFC0B0, v231);
    v232 = *MEMORY[0x277D5D4E0];
    v233 = OUTLINED_FUNCTION_102_4();
    v258 = v234;
    (v234)(v233);
    v235 = OUTLINED_FUNCTION_14_31();
    v236(v235);
    OUTLINED_FUNCTION_362();
    v237 = OUTLINED_FUNCTION_57_10();
    (v53)(v237);
    *(v50 + 680) = v51;
    v238 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_509();
    if (v102)
    {
      a17 = v102;
      OUTLINED_FUNCTION_150_1();

      goto LABEL_99;
    }

    OUTLINED_FUNCTION_85_7();
    v239 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_433(v239, v240, v241);
    OUTLINED_FUNCTION_349(&unk_28022AE30, &qword_267EFC0B0, *(v242 + 56));
    v243 = *MEMORY[0x277D5D4D8];
    v244 = OUTLINED_FUNCTION_283_0();
    v245(v244);
    v246 = OUTLINED_FUNCTION_13_32();
    v247(v246);
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_457();
    v248();
    *(v50 + 688) = v51;
    OUTLINED_FUNCTION_341();
    OUTLINED_FUNCTION_114_5();
    v249 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_363(v249, v250, v251);
    OUTLINED_FUNCTION_372(&unk_28022AE30, &qword_267EFC0B0, v252);
    v54 = v258;
    goto LABEL_86;
  }

  a17 = v102;
  OUTLINED_FUNCTION_20_20();
LABEL_98:

  v215 = OUTLINED_FUNCTION_127_3();
  v216(v215);
LABEL_99:
  sub_267B9F98C(v100, &qword_2802295B0, &unk_267EFDCA0);
LABEL_9:
  OUTLINED_FUNCTION_5_44();
  a18 = v73;
  a19 = v72;
  OUTLINED_FUNCTION_6_38();
  a32 = *(v50 + 952);
  OUTLINED_FUNCTION_1_55();

  OUTLINED_FUNCTION_17();
LABEL_10:
  OUTLINED_FUNCTION_195_0();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v257, v258, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_267D8B96C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 1304);
  *v2 = *v0;
  OUTLINED_FUNCTION_504(v5);
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void *sub_267D8BA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void (*a41)(void), void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_451();
  if (v57)
  {
    OUTLINED_FUNCTION_77_5();
  }

  else
  {
    v49 = *(v51 + 1232);
    sub_267EF7C18();
    if (!v58)
    {
      OUTLINED_FUNCTION_7_7();
    }
  }

  OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_449();
  if (v50)
  {
    v59 = OUTLINED_FUNCTION_76_7();
    v60(v59);

LABEL_7:

    goto LABEL_12;
  }

  v61 = OUTLINED_FUNCTION_38_16();
  v62(v61);
  v63 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_431(v63, v64, v65);
  OUTLINED_FUNCTION_500(&unk_28022AE30, &qword_267EFC0B0, v66);
  v67 = OUTLINED_FUNCTION_104_5();
  v68(v67);
  sub_267DA1EB4();
  OUTLINED_FUNCTION_320_0();
  OUTLINED_FUNCTION_444();
  if (v70)
  {
    v71 = 0xE000000000000000;
  }

  else
  {
    v71 = v69;
  }

  v72 = v48;
  OUTLINED_FUNCTION_484();
  v73 = v52;
  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_499();
  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_167_0();
  v83 = *v53;
  v84 = OUTLINED_FUNCTION_37_1();
  v85(v84);
  v86 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v49);
  OUTLINED_FUNCTION_475(&unk_28022AE30, &qword_267EFC0B0, v71[21]);
  v89 = OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_307_0([v49 attachments]);
  if ((v89 & 1) == 0)
  {
    if (!v48)
    {
      v137 = [*(v51 + 1224) content];
      if (v137)
      {
        LOBYTE(v49) = v137;
        sub_267EF9028();
        OUTLINED_FUNCTION_404();
      }

      else
      {
        OUTLINED_FUNCTION_306();
      }

      v146 = OUTLINED_FUNCTION_26_23();
      v147(v146);
      OUTLINED_FUNCTION_47_13();
      sub_267EF3C28();
      OUTLINED_FUNCTION_381();
      if (v49)
      {
        OUTLINED_FUNCTION_73_7();
        v148 = *MEMORY[0x277D5D410];
        v149 = OUTLINED_FUNCTION_152_1();
        v150(v149);
        OUTLINED_FUNCTION_119_4();
        sub_267EF81C8();
        OUTLINED_FUNCTION_143();
        if (!v89)
        {
          v158 = OUTLINED_FUNCTION_63_8();
          v159(v158);
          v52 = 104;
          goto LABEL_65;
        }

        a42 = v89;
        v151 = *(v51 + 1288);
        v152 = OUTLINED_FUNCTION_31_17();
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_143();
        if (!v89)
        {
          v160 = OUTLINED_FUNCTION_62_6();
          v161(v160);
          v52 = 76;
          goto LABEL_65;
        }

        a42 = v89;
        v151 = *(v51 + 1288);
        v152 = OUTLINED_FUNCTION_30_22();
      }

      (*(v153 + 8))(v152);

      goto LABEL_12;
    }

    v108 = *(v51 + 744);
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    *(v51 + 1360) = OUTLINED_FUNCTION_353();

    OUTLINED_FUNCTION_22_21();
    v109 = OUTLINED_FUNCTION_38_0();
    v110(v109);
    OUTLINED_FUNCTION_28_24(OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
    v247 = v111 + *v111;
    v113 = *(v112 + 4);
    v114 = swift_task_alloc();
    v115 = OUTLINED_FUNCTION_305_0(v114);
    *v115 = v116;
    OUTLINED_FUNCTION_65_7(v115);
    OUTLINED_FUNCTION_195_0();

    return v119(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v247, a43, a44, a45, a46, a47, a48);
  }

  if (!v48)
  {
    OUTLINED_FUNCTION_261_0();
    OUTLINED_FUNCTION_169_1();
LABEL_46:
    sub_267B9F98C(*(v51 + 1000), &qword_280229E20, &unk_267EFDCC0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v126 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v126, qword_280240FB0);
    sub_267EF89F8();
    v127 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v127))
    {
      v128 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v128);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v129, v130, v131, v132, v133, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_81_6();
    v134 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_153_1(v134, v135);
    OUTLINED_FUNCTION_408(v136);

    goto LABEL_7;
  }

  v90 = *(v51 + 1016);
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v91 = OUTLINED_FUNCTION_353();

  v92 = sub_267BAF0DC(v91);
  OUTLINED_FUNCTION_37_14(v92);
  a39 = MEMORY[0x277D84F90];
  v52 = &qword_280229E20;
  v93 = &unk_267EFDCC0;
  while (1)
  {
    OUTLINED_FUNCTION_301_0();
    if (v70)
    {
      break;
    }

    if (a41)
    {
      OUTLINED_FUNCTION_406();
    }

    else
    {
      OUTLINED_FUNCTION_154_0();
      if (v94)
      {
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_405();
    }

    OUTLINED_FUNCTION_297();
    if (v95)
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v96 = [v54 audioMessageFile];
    if (!v96)
    {
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_168_1();
      goto LABEL_31;
    }

    v97 = v96;
    v56 = [v96 fileURL];

    if (v56)
    {
      OUTLINED_FUNCTION_410();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    OUTLINED_FUNCTION_264_0();
    OUTLINED_FUNCTION_48_18();
    v52 = &qword_280229E20;
    OUTLINED_FUNCTION_255();
    sub_267BBE184(v98, v99, v100, v101);
    OUTLINED_FUNCTION_92_6();
    if (v70)
    {
LABEL_31:
      OUTLINED_FUNCTION_263_0();
      v71 = (v71 + 1);
    }

    else
    {
      v102 = OUTLINED_FUNCTION_64_8();
      (v48)(v102);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_132_1();
        a39 = v106;
      }

      OUTLINED_FUNCTION_101_6();
      if (v94)
      {
        OUTLINED_FUNCTION_91_8(v104);
        sub_267C70BD8();
        a39 = v107;
      }

      v105 = OUTLINED_FUNCTION_11_33();
      (v48)(v105);
      v71 = v53;
      v52 = &qword_280229E20;
    }
  }

  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_282_0();

  OUTLINED_FUNCTION_105_7();
  if (v70)
  {
    v125 = *(v51 + 1256);

    goto LABEL_46;
  }

  v138 = OUTLINED_FUNCTION_9_36();
  v139(v138);
  v140 = OUTLINED_FUNCTION_98_6();
  v141(v140);
  OUTLINED_FUNCTION_279_0();
  OUTLINED_FUNCTION_170_1();
  if (&unk_267EFDCC0)
  {
    a42 = &unk_267EFDCC0;
    OUTLINED_FUNCTION_46_14();

    v142 = OUTLINED_FUNCTION_151_0();
    v143(v142);
    v144 = OUTLINED_FUNCTION_14_26();
    v145(v144);
    goto LABEL_12;
  }

  v154 = OUTLINED_FUNCTION_27_21();
  v155(v154);
  v156 = OUTLINED_FUNCTION_130();
  v157(v156);
  v52 = 32;
LABEL_65:
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_373(&unk_28022AE30, &qword_267EFC0B0, v162);
  v163 = sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    OUTLINED_FUNCTION_387();
    OUTLINED_FUNCTION_229();

    OUTLINED_FUNCTION_243_0();
    sub_267EF8698();
  }

  v164 = OUTLINED_FUNCTION_226_0();
  v165 = OUTLINED_FUNCTION_4_45(v164);
  v166(v165);
  v167 = *(v51 + 160);
  v93 = *(v51 + 168);
  OUTLINED_FUNCTION_52_10((v51 + 136));
  sub_267EF3C48();
  OUTLINED_FUNCTION_382();
  if ((v163 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_30();
    OUTLINED_FUNCTION_369();
    v176 = v55;
    v177 = v54;
    v91 = sub_267EF4648();
    sub_267BE84FC();
    v178 = OUTLINED_FUNCTION_366();
    OUTLINED_FUNCTION_379(v178, v179, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_224_0();
    if (v93)
    {
      a42 = v93;
      OUTLINED_FUNCTION_32_13();
      v180 = *(v51 + 920);
      goto LABEL_95;
    }

    v181 = OUTLINED_FUNCTION_8_38();
    v182(v181);
    OUTLINED_FUNCTION_58_7();
    OUTLINED_FUNCTION_367(&unk_28022AE30, &qword_267EFC0B0, v183);
    OUTLINED_FUNCTION_259_0();
LABEL_83:
    OUTLINED_FUNCTION_43_16();
    v184 = *MEMORY[0x277D5D508];
    v185 = OUTLINED_FUNCTION_210_0();
    (v54)(v185);
    v186 = OUTLINED_FUNCTION_12_26();
    v187(v186);
    OUTLINED_FUNCTION_380();
    v188 = OUTLINED_FUNCTION_42_16();
    (v71)(v188);
    *(v51 + 664) = v52;
    sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_223();
    OUTLINED_FUNCTION_81_8();
    OUTLINED_FUNCTION_41_13();
    OUTLINED_FUNCTION_349(&unk_28022AE30, &qword_267EFC0B0, *(v208 + 92));
    v209 = *MEMORY[0x277D5D4E8];
    v210 = OUTLINED_FUNCTION_185_1();
    v211(v210);
    v212 = v53[5];
    v213 = v53[6];
    v214 = OUTLINED_FUNCTION_16_24(v53 + 2);
    v215(v214);
    OUTLINED_FUNCTION_414();
    v216 = OUTLINED_FUNCTION_69_5();
    v217(v216);
    *(v51 + 672) = v212;
    OUTLINED_FUNCTION_344();
    v218 = *(v51 + 1288);
    OUTLINED_FUNCTION_0_43();

    sub_267B9F98C(v91, &qword_2802295B0, &unk_267EFDCA0);
    v243 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_557(v243, v244, v245);
    OUTLINED_FUNCTION_330_0(&unk_28022AE30, &qword_267EFC0B0, v246);

    OUTLINED_FUNCTION_1();
    goto LABEL_13;
  }

  v91 = OUTLINED_FUNCTION_225();
  v168 = sub_267BDAF74();
  OUTLINED_FUNCTION_159_1(v168);
  v169 = [v93 recipients];
  v170 = MEMORY[0x277D84F90];
  if (!v169)
  {
    goto LABEL_86;
  }

  v91 = v169;
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  OUTLINED_FUNCTION_110_0();
  v171 = sub_267EF92F8();

  v172 = sub_267BAF0DC(v171);
  if (!v172)
  {

    goto LABEL_86;
  }

  result = OUTLINED_FUNCTION_61_11(v172);
  if ((v93 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_45_14();
  do
  {
    if (a42)
    {
      v173 = OUTLINED_FUNCTION_68_0();
      v174 = MEMORY[0x26D609870](v173);
    }

    else
    {
      v174 = OUTLINED_FUNCTION_370();
    }

    v91 = v174;
    sub_267BBD380(v174);
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_68_7();
    if (v94)
    {
      OUTLINED_FUNCTION_117_6(v175);
      v170 = a43;
    }

    OUTLINED_FUNCTION_33_11();
  }

  while (!v70);

  v52 = a41;
LABEL_86:
  *(v51 + 1344) = v170;
  if (v52)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v247 = v189;
    v190 = swift_task_alloc();
    v191 = OUTLINED_FUNCTION_271_0(v190);
    *v191 = v192;
    OUTLINED_FUNCTION_138_0(v191);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_195_0();

    return v119(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v247, a43, a44, a45, a46, a47, a48);
  }

  OUTLINED_FUNCTION_51_10();
  OUTLINED_FUNCTION_234();
  v194 = 0xE000000000000000;
  if (!v70)
  {
    v194 = v193;
  }

  a9 = v194;
  OUTLINED_FUNCTION_18_23();
  sub_267EF8238();
  OUTLINED_FUNCTION_228_0();
  if (!v93)
  {
    v195 = OUTLINED_FUNCTION_3_46();
    v196(v195);
    v197 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_292(v197, v198, v199);
    OUTLINED_FUNCTION_348(&unk_28022AE30, &qword_267EFC0B0, v200);
    OUTLINED_FUNCTION_258_0();
    v201 = v56;
    v202 = v71;
    v91 = OUTLINED_FUNCTION_412();
    sub_267BE84FC();
    v203 = OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_407(v203, v204, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_56_11(v205);
    sub_267EF8348();
LABEL_99:
    OUTLINED_FUNCTION_70_8();
    v219 = OUTLINED_FUNCTION_23_18();
    v220(v219);
    OUTLINED_FUNCTION_59_11();
    OUTLINED_FUNCTION_413(&unk_28022AE30, &qword_267EFC0B0, v221);
    v222 = *MEMORY[0x277D5D4E0];
    v223 = OUTLINED_FUNCTION_102_4();
    a41 = v224;
    v224(v223);
    v225 = OUTLINED_FUNCTION_14_31();
    v226(v225);
    OUTLINED_FUNCTION_362();
    v227 = OUTLINED_FUNCTION_57_10();
    (v71)(v227);
    *(v51 + 680) = v52;
    v228 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    OUTLINED_FUNCTION_506();
    a42 = v93;
    if (v93)
    {
      OUTLINED_FUNCTION_150_1();

      goto LABEL_96;
    }

    OUTLINED_FUNCTION_107_5();
    v229 = OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_434(v229, v230, v231);
    OUTLINED_FUNCTION_330_0(&unk_28022AE30, &qword_267EFC0B0, *(v232 + 56));
    v233 = *MEMORY[0x277D5D4D8];
    v234 = OUTLINED_FUNCTION_284_0();
    v235(v234);
    v236 = OUTLINED_FUNCTION_13_32();
    v237(v236);
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_156();
    v238();
    *(v51 + 688) = v52;
    OUTLINED_FUNCTION_186_1();
    a42 = 0;
    OUTLINED_FUNCTION_114_5();
    v239 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_363(v239, v240, v241);
    OUTLINED_FUNCTION_372(&unk_28022AE30, &qword_267EFC0B0, v242);
    v54 = a41;
    goto LABEL_83;
  }

  a42 = v93;
  OUTLINED_FUNCTION_20_20();
LABEL_95:

  v206 = OUTLINED_FUNCTION_127_3();
  v207(v206);
LABEL_96:
  sub_267B9F98C(v91, &qword_2802295B0, &unk_267EFDCA0);
LABEL_12:
  OUTLINED_FUNCTION_2_46();

  OUTLINED_FUNCTION_160_0();
LABEL_13:
  OUTLINED_FUNCTION_195_0();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}