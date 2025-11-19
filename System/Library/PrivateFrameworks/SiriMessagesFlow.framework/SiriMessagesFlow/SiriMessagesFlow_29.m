uint64_t sub_267DF4704()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267DF472C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  v2 = v1[12];
  if (qword_280228730 != -1)
  {
    OUTLINED_FUNCTION_2_9();
    v1 = *(v0 + 16);
  }

  v3 = qword_280240A10;
  v4 = *__swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  OUTLINED_FUNCTION_10(&dword_267F09FA0);
  v8 = v5;
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_267DF4818;

  return v8(v2, v4, v3);
}

uint64_t sub_267DF4818()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 24);
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

void *sub_267DF4904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2[12];
  v6 = v2[13];
  if (qword_280228730 != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v7 = qword_280240A10;
  v8 = v2[5];
  v9 = v2[6];
  OUTLINED_FUNCTION_62_1(v2 + 2, v8);
  v10 = *(v9 + 8);

  v10(v33, v8, v9);
  v11 = v7;
  v12 = sub_267DF5E80(v5, a2, v6, v33, v7);
  __swift_destroy_boxed_opaque_existential_0(v33);
  sub_267B9AFEC((v3 + 2), v33);
  v13 = qword_2802286F0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  sub_267B9AFEC(qword_2802405A0, v32);
  v14 = type metadata accessor for AppInfoBuilder();
  v15 = OUTLINED_FUNCTION_49();
  __swift_mutable_project_boxed_opaque_existential_1(v32, v32[3]);
  v31[3] = &type metadata for CATProvider;
  v31[4] = &off_2878CE7A0;
  v30[3] = &type metadata for MessagesFeatureFlagsImpl;
  v30[4] = off_2878D1228;
  v29[4] = &off_2878D24C8;
  v29[3] = v14;
  v29[0] = v15;
  v16 = type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy();
  OUTLINED_FUNCTION_27_4(v16);
  v17 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v31, &type metadata for CATProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v30, &type metadata for MessagesFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v14);
  OUTLINED_FUNCTION_23();
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_0();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  v25 = *v23;
  v26 = v5;

  v27 = sub_267DF6184(v26, 0, v6, v33, v25, v12, v11, v17);

  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v27;
}

uint64_t sub_267DF4BB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v3 = OUTLINED_FUNCTION_18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v56 - v6;
  v8 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v16 = v15 - v14;
  v17 = v0[13];
  *(v17 + 96) = 1;
  v18 = v0[42];
  v19 = v1[43];
  __swift_project_boxed_opaque_existential_0(v1 + 39, v18);
  sub_267C31594(9, v18, v19);
  swift_beginAccess();
  sub_267C6AD4C(v17 + 224, __dst, &qword_2802295C8, &qword_267EFDD28);
  v20 = __dst[3];
  result = sub_267B9F98C(__dst, &qword_2802295C8, &qword_267EFDD28);
  if (!v20)
  {
    OUTLINED_FUNCTION_62_1(v1 + 14, v1[17]);
    if (qword_280228770 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &dword_280240CC0, 0x58uLL);
    result = sub_267D623B4(__dst);
    if (result)
    {
      v58 = v16;
      v59 = v10;
      v60 = v8;
      v56[0] = v1[12];
      v83 = 0;
      v81 = 0u;
      v82 = 0u;
      v80 = 0;
      memset(v79, 0, sizeof(v79));
      v22 = [objc_opt_self() sharedAnalytics];
      v23 = [v22 defaultMessageStream];

      v78[3] = sub_267BA9F38(0, &qword_28022A6B0, 0x277D552C8);
      v78[4] = &off_2878D94D8;
      v78[0] = v23;
      v24 = type metadata accessor for ExperimentSignalGatherer();
      v25 = swift_allocObject();
      *(v25 + 16) = 0x4024000000000000;
      v26 = type metadata accessor for ExperimentSignalFactory();
      v27 = OUTLINED_FUNCTION_49();
      v77[3] = v24;
      v77[4] = &off_2878D94E8;
      v76 = &off_2878D94F8;
      v77[0] = v25;
      v75 = v26;
      v74[0] = v27;
      v28 = type metadata accessor for AppSelectionSignalCollector();
      v57 = OUTLINED_FUNCTION_27_4(v28);
      v29 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v77, v24);
      v56[2] = v56;
      OUTLINED_FUNCTION_23();
      v31 = *(v30 + 64);
      MEMORY[0x28223BE20](v32);
      OUTLINED_FUNCTION_0_0();
      v35 = (v34 - v33);
      (*(v36 + 16))(v34 - v33);
      __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
      v56[1] = v56;
      OUTLINED_FUNCTION_23();
      v38 = *(v37 + 64);
      MEMORY[0x28223BE20](v39);
      OUTLINED_FUNCTION_0_0();
      v42 = (v41 - v40);
      (*(v43 + 16))(v41 - v40);
      v44 = *v35;
      v45 = *v42;
      v73[3] = v24;
      v73[4] = &off_2878D94E8;
      v72[4] = &off_2878D94F8;
      v73[0] = v44;
      v72[3] = v26;
      v72[0] = v45;
      *(v29 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_intent) = sub_267EF97C8();
      *(v29 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_appResolutionType) = 9;
      *(v29 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_shadowAppResolution) = 0;
      sub_267B9AFEC(v73, v29 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalGatherer);
      sub_267B9AFEC(v78, v29 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream);
      sub_267B9AFEC(v72, v29 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalFactory);
      sub_267C6AD4C(&v81, v29 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_userDefaults, &qword_280229840, &qword_267EFE9E0);
      sub_267C6AD4C(v79, &v67, &qword_28022A708, &unk_267F01640);
      if (v68)
      {
        sub_267B9A5E8(&v67, &v69);
        v46 = v58;
      }

      else
      {
        if (qword_280228730 != -1)
        {
          OUTLINED_FUNCTION_2_9();
        }

        v47 = qword_280240A10;
        v65 = type metadata accessor for EligibleAppFinder();
        OUTLINED_FUNCTION_3_59();
        v66 = sub_267DF5E38(v48, v49);
        *&v64 = v47;
        v50 = swift_allocObject();
        *(v50 + 16) = 0x4024000000000000;
        v62 = v24;
        v63 = &off_2878D94E8;
        *&v61 = v50;
        v70 = &type metadata for UserPersonaSignalCollector;
        v71 = &off_2878D9498;
        v51 = swift_allocObject();
        *&v69 = v51;

        sub_267EDEDFC(&v64, &v61, (v51 + 16));
        v46 = v58;
        if (v68)
        {
          sub_267B9F98C(&v67, &qword_28022A708, &unk_267F01640);
        }
      }

      sub_267B9A5E8(&v69, v29 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_userPresonaSignalCollector);
      sub_267DF1260(v7);
      v52 = v60;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v60);
      v54 = v59;
      if (EnumTagSinglePayload == 1)
      {
        sub_267EF2D18();
        if (__swift_getEnumTagSinglePayload(v7, 1, v52) != 1)
        {
          sub_267B9F98C(v7, &qword_280229430, &qword_267EFD2C0);
        }
      }

      else
      {
        (*(v59 + 32))(v46, v7, v52);
      }

      v55 = OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_requestID;
      (*(v54 + 32))(v29 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_requestID, v46, v52);
      sub_267DF1490(v29 + v55);
      sub_267D293AC(v29 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_crrCommsAppSelectionJointId);
      sub_267EF2D18();
      sub_267B9F98C(v79, &qword_28022A708, &unk_267F01640);
      sub_267B9F98C(&v81, &qword_280229840, &qword_267EFE9E0);
      __swift_destroy_boxed_opaque_existential_0(v72);
      __swift_destroy_boxed_opaque_existential_0(v73);
      *(v29 + 16) = sub_267EE9EA4;
      *(v29 + 24) = 0;
      __swift_destroy_boxed_opaque_existential_0(v78);
      __swift_destroy_boxed_opaque_existential_0(v74);
      __swift_destroy_boxed_opaque_existential_0(v77);
      *(&v82 + 1) = v57;
      v83 = &off_2878D9520;
      *&v81 = v29;
      swift_beginAccess();
      sub_267BF3128(&v81, v17 + 224, &qword_2802295C8, &qword_267EFDD28);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_267DF534C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_267EF93D8();
  v9 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v10[5] = a1;

  sub_267E8FA18();
}

uint64_t sub_267DF5440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x2822009F8](sub_267DF5460, 0, 0);
}

uint64_t sub_267DF5460()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[7];
  v0[9] = [objc_allocWithZone(MEMORY[0x277D576E0]) init];
  OUTLINED_FUNCTION_62_1((v1 + 232), *(v1 + 256));
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_267DF5514;

  return sub_267EDEFC8();
}

uint64_t sub_267DF5514()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DF5600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 88);
  v16 = *(v14 + 72);
  v17 = *(v14 + 56);
  [v16 setUserPersona_];
  v18 = [*(*(*(v17 + 104) + 136) + 16) smsContext];
  [v18 setUserPersona_];

  v19 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  [v19 setSmsContext_];
  sub_267B9AFEC(v17 + 272, v14 + 16);
  v35 = *(v14 + 48);
  __swift_project_boxed_opaque_existential_0((v14 + 16), *(v14 + 40));
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v22)
  {
    v24 = *(v14 + 64);
    v23 = *(v14 + 72);
    sub_267EF3B18();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v19;

    v26 = v19;
    BYTE4(a11) = 1;
    sub_267EF3B08();
    sub_267EF3848();

    __swift_destroy_boxed_opaque_existential_0((v14 + 16));
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v35, a11, a12, a13, a14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267DF57D0(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;

  sub_267EF3AD8();
  v5 = a3;
  return sub_267EF3AB8();
}

uint64_t sub_267DF581C()
{
  sub_267B9F98C(v0 + 56, &qword_28022AC78, &unk_267F09F80);

  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_1_66();
  return sub_267DF7290(v0 + v2, v3);
}

uint64_t sub_267DF5870()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267B9F98C(v0 + 56, &qword_28022AC78, &unk_267F09F80);

  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_1_66();
  sub_267DF7290(v0 + v2, v3);
  return v0;
}

uint64_t sub_267DF58D0()
{
  sub_267DF5870();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267DF5950()
{
  result = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(319);
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

void sub_267DF5A3C()
{
  sub_267DF5AC4();
  if (v0 <= 0x3F)
  {
    sub_267EF7C38();
    if (v1 <= 0x3F)
    {
      sub_267EF2FC8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_267DF5AC4()
{
  if (!qword_28022C2E8)
  {
    sub_267EF4BA8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C2F0, qword_267F09EA8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022C2E8);
    }
  }
}

uint64_t sub_267DF5B44@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_267C6AD4C(v3 + 56, a1, &qword_28022AC78, &unk_267F09F80);
}

uint64_t sub_267DF5BA0(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_267BF3128(a1, v3 + 56, &qword_28022AC78, &unk_267F09F80);
  return swift_endAccess();
}

uint64_t (*sub_267DF5C04())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_267DF5C68()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267DF1E14();
}

uint64_t sub_267DF5D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_267BAEBEC;

  return sub_267DF5440(a1, v4, v5, v7, v6);
}

uint64_t sub_267DF5E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267DF5E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[3] = type metadata accessor for EligibleAppFinder();
  OUTLINED_FUNCTION_3_59();
  v35[4] = sub_267DF5E38(v9, v10);
  v35[0] = a5;
  v11 = qword_280228818;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v14))
  {
    v15 = OUTLINED_FUNCTION_32();
    *v15 = 0;
    _os_log_impl(&dword_267B93000, v13, v14, "#SeasExperiment: making experiment service for Force-App-Disambiguation", v15, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v16 = sub_267D29748();
  if (v19 == 2 && !(v16 | v17 | v18))
  {
    v25 = 0;
  }

  else
  {
    sub_267DF6BA0(v16, v17, v18, v19);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v21))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v22, v23, "#SeasExperiment: run SeAS in shadow for Force-App-Disambiguation");
      OUTLINED_FUNCTION_32_0();
    }

    sub_267B9AFEC(a4, v34);
    v24 = type metadata accessor for SendMessageAppSelectionService();
    OUTLINED_FUNCTION_27_4(v24);
    swift_allocObject();

    v25 = sub_267CB8280(v34, a3, 1);
  }

  sub_267B9AFEC(a4, v34);
  sub_267B9AFEC(v35, v33);
  v26 = [objc_opt_self() sharedAnalytics];
  v27 = [v26 defaultMessageStream];

  v28 = type metadata accessor for SendMessageAppSelectionExperimentService();
  OUTLINED_FUNCTION_27_4(v28);
  v29 = swift_allocObject();
  v32[3] = sub_267BA9F38(0, &qword_28022A6B0, 0x277D552C8);
  v32[4] = &off_2878D94D8;
  v32[0] = v27;
  *(v29 + qword_28022A6C8) = v25;
  *(v29 + qword_28022A6D0) = a2;
  sub_267B9AFEC(v33, v29 + qword_28022A6D8);
  *(v29 + qword_28022A6E8) = a3;
  sub_267B9AFEC(v34, v29 + qword_28022A6E0);
  sub_267B9AFEC(v32, v29 + qword_28022A6F0);

  v30 = sub_267EF7BC8();
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v30;
}

void *sub_267DF6184(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v89 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_23();
  v79 = v16;
  v80 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v78 = &v76 - v19;
  v20 = sub_267EF7B88();
  v21 = OUTLINED_FUNCTION_18(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_0();
  v81 = v25 - v24;
  sub_267EF68A8();
  OUTLINED_FUNCTION_23();
  v82 = v27;
  v83 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v88 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v33 = OUTLINED_FUNCTION_18(v32);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v77 = &v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v90 = &v76 - v38;
  v127[3] = type metadata accessor for EligibleAppFinder();
  OUTLINED_FUNCTION_3_59();
  v127[4] = sub_267DF5E38(v39, v40);
  v127[0] = a7;
  v126[3] = &type metadata for CATProvider;
  v126[4] = &off_2878CE7A0;
  v125[3] = &type metadata for MessagesFeatureFlagsImpl;
  v125[4] = off_2878D1228;
  v124[3] = type metadata accessor for AppInfoBuilder();
  v124[4] = &off_2878D24C8;
  v124[0] = a5;
  v41 = MEMORY[0x277D84F90];
  *(a8 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_apps) = MEMORY[0x277D84F90];
  *(a8 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_eligibleApps) = v41;
  v42 = (a8 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appName);
  *v42 = 0;
  v42[1] = 0;
  *(a8 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_intent) = a1;
  *(a8 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_previouslyResolvedApp) = a2;
  sub_267B9AFEC(v124, a8 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appInfoBuilder);
  v86 = a6;
  v87 = a4;
  v84 = a1;
  v85 = a2;
  if (a6)
  {

    v43 = a1;
    v44 = a6;
  }

  else
  {
    v45 = v89;
    v47 = a4[3];
    v46 = a4[4];
    OUTLINED_FUNCTION_62_1(a4, v47);
    v48 = *(v46 + 8);

    v49 = a1;
    v48(v112, v47, v46);
    a4 = v87;
    v50 = type metadata accessor for SendMessageAppSelectionService();
    OUTLINED_FUNCTION_27_4(v50);
    swift_allocObject();
    v44 = sub_267CB8280(v112, v45, 0);
  }

  *(a8 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appResolutionService) = v44;
  sub_267B9AFEC(a4, v123);
  sub_267B9AFEC(v126, v122);
  v51 = v80;
  __swift_storeEnumTagSinglePayload(v90, 1, 1, v80);
  sub_267B9AFEC(v125, v121);
  sub_267B9AFEC(v127, v120);
  v52 = sub_267EF8938();

  v53 = sub_267EF8928();
  v119[4] = MEMORY[0x277D5FDD8];
  v119[3] = v52;
  v119[0] = v53;
  v76 = sub_267EF3AA8();
  sub_267EF3838();
  v54 = type metadata accessor for NetworkStatusProvider();
  v55 = OUTLINED_FUNCTION_49();
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v117);
  sub_267EF8668();
  v56 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v57 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  v115 = &off_2878CF540;
  v114 = v57;
  *&v113 = v56;
  v58 = sub_267EF72E8();
  v59 = v88;
  sub_267EF6898();
  ConversationEventStore.init()(v112);
  v60 = type metadata accessor for ShareSheetProvider();
  v61 = OUTLINED_FUNCTION_49();
  __swift_mutable_project_boxed_opaque_existential_1(v122, v122[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v121, v121[3]);
  v110 = &type metadata for CATProvider;
  v111 = &off_2878CE7A0;
  v108[3] = &type metadata for MessagesFeatureFlagsImpl;
  v108[4] = off_2878D1228;
  v107[3] = v54;
  v107[4] = &off_2878D2ED0;
  v107[0] = v55;
  v105 = &type metadata for TTSUtil;
  v106 = &off_2878D0CB0;
  *&v104 = v58;
  *(&v104 + 1) = &off_2878D0918;
  v62 = v83;
  v102 = v83;
  v103 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v101);
  v64 = v82;
  (*(v82 + 16))(boxed_opaque_existential_0, v59, v62);
  v99 = v60;
  v100 = &off_2878D0D48;
  *&v98 = v61;
  a8[7] = v89;
  sub_267B9AFEC(v109, (a8 + 8));
  type metadata accessor for SendMessageCATs();

  sub_267EF7B68();
  OUTLINED_FUNCTION_44_19();
  a8[13] = sub_267EF78E8();
  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  OUTLINED_FUNCTION_44_19();
  *(a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  type metadata accessor for MessagesCATs();
  sub_267EF7B68();
  OUTLINED_FUNCTION_44_19();
  a8[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v109, v110);
  a8[14] = sub_267BB4A3C();
  v65 = v77;
  sub_267C6AD4C(v90, v77, &qword_2802299A8, &unk_267F00CF0);
  if (__swift_getEnumTagSinglePayload(v65, 1, v51) == 1)
  {
    v96 = v62;
    v97 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(&v95);
    sub_267EF6898();
    v66 = sub_267EF8928();
    v94[3] = v52;
    v94[4] = MEMORY[0x277D5FDD8];
    v94[0] = v66;
    sub_267B9AFEC(v123, v93);
    sub_267B9AFEC(&v95, v92);
    sub_267B9AFEC(v94, v91);
    v67 = swift_allocObject();
    sub_267B9A5E8(v93, v67 + 16);
    sub_267B9A5E8(v92, v67 + 56);
    sub_267B9A5E8(v91, v67 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v68 = v78;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v94);
    __swift_destroy_boxed_opaque_existential_0(&v95);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v51);
    v70 = v84;
    v71 = v79;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v65, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v68 = v78;
    v71 = v79;
    (*(v79 + 32))(v78, v65, v51);
    v70 = v84;
  }

  (*(v71 + 32))(a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v68, v51);
  sub_267B9AFEC(v108, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(v119, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v72 = (a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v72 = v76;
  v72[1] = &off_2878D5360;
  sub_267B9AFEC(v118, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v107, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v117, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  v73 = type metadata accessor for SendMessageCATPatternsExecutor(0);
  sub_267EF7B68();
  OUTLINED_FUNCTION_44_19();
  v74 = sub_267EF78E8();
  v96 = v73;
  v97 = &off_2878D1100;

  *&v95 = v74;
  (*(v64 + 8))(v88, v62);
  __swift_destroy_boxed_opaque_existential_0(v117);
  __swift_destroy_boxed_opaque_existential_0(v118);
  sub_267B9F98C(v90, &qword_2802299A8, &unk_267F00CF0);
  __swift_destroy_boxed_opaque_existential_0(v127);
  __swift_destroy_boxed_opaque_existential_0(v124);
  __swift_destroy_boxed_opaque_existential_0(v125);
  __swift_destroy_boxed_opaque_existential_0(v126);
  __swift_destroy_boxed_opaque_existential_0(v119);
  __swift_destroy_boxed_opaque_existential_0(v107);
  __swift_destroy_boxed_opaque_existential_0(v108);
  sub_267B9A5E8(&v95, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  sub_267B9A5E8(&v116, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8(&v113, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8(&v104, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8(&v101, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v112, 0x60uLL);
  sub_267B9A5E8(v120, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8(&v98, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8(v123, (a8 + 2));
  __swift_destroy_boxed_opaque_existential_0(v109);
  __swift_destroy_boxed_opaque_existential_0(v121);
  __swift_destroy_boxed_opaque_existential_0(v122);
  __swift_destroy_boxed_opaque_existential_0(v87);
  return a8;
}

void *sub_267DF6BA0(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_267DF6BFC()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v0[29] = v3;
  v0[30] = v4;
  v5 = type metadata accessor for SmartAppSelectionFeatureImpl();
  v0[31] = v5;
  v0[27] = v5;
  v0[28] = &off_2878D3D60;
  v0[24] = v2;

  return MEMORY[0x2822009F8](sub_267DF6C88, 0, 0);
}

uint64_t sub_267DF6C88()
{
  OUTLINED_FUNCTION_56();
  v3 = v2[29];
  if (sub_267EF9718() & 1) != 0 || (v4 = v2[29], (sub_267EF96E8()))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_27(v7))
    {
      goto LABEL_8;
    }

    v8 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v8);
    v9 = "#SeasExperiment - intent not eligible for forced disambiguation";
LABEL_7:
    _os_log_impl(&dword_267B93000, v6, v1, v9, v0, 2u);
    OUTLINED_FUNCTION_32_0();
LABEL_8:

    __swift_destroy_boxed_opaque_existential_0(v2 + 24);
    v10 = v2[1];

    return v10(0);
  }

  v12 = v2[29];
  if (sub_267D292FC())
  {
    OUTLINED_FUNCTION_62_1(v2 + 24, v2[31]);
    if (qword_280228778 != -1)
    {
      swift_once();
    }

    memcpy(v2 + 2, &dword_280240D18, 0x58uLL);
    v13 = *v12;
    if (!sub_267D623B4((v2 + 2)))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v19 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
      v6 = sub_267EF89F8();
      v20 = sub_267EF95D8();
      if (!OUTLINED_FUNCTION_27(v20))
      {
        goto LABEL_8;
      }

      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v21);
      v9 = "#SeasExperiment - CRR force prompted, but failed enhanced joint prompt rate check for forced disambiguation";
      goto LABEL_7;
    }
  }

  v14 = v2[29];
  if ((sub_267D292FC() & 1) == 0)
  {
    OUTLINED_FUNCTION_62_1(v2 + 24, v2[27]);
    if (qword_280228768 != -1)
    {
      swift_once();
    }

    memcpy(v2 + 13, &dword_280240C68, 0x58uLL);
    v15 = *v14;
    if (!sub_267D623B4((v2 + 13)))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v22 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
      v6 = sub_267EF89F8();
      v23 = sub_267EF95D8();
      if (!OUTLINED_FUNCTION_27(v23))
      {
        goto LABEL_8;
      }

      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v24);
      v9 = "#SeasExperiment - disabled for forced disambiguation";
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_10(&unk_267F09FA8);
  v25 = v16;
  v17 = swift_task_alloc();
  v2[32] = v17;
  *v17 = v2;
  v17[1] = sub_267DF6FA0;
  v18 = v2[30];

  return v25();
}

uint64_t sub_267DF6FA0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 256);
  *v2 = *v0;
  *(v1 + 264) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DF708C()
{
  OUTLINED_FUNCTION_56();
  v1 = sub_267BAF0DC(v0[33]);

  if (v1 <= 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
    v13 = sub_267EF89F8();
    v14 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v14))
    {
      v15 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v15);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_26();
    }

    v11 = 0;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_26();
    }

    type metadata accessor for AppDisambiguationExperiment();
    v11 = OUTLINED_FUNCTION_49();
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v21 = v0[1];

  return v21(v11);
}

uint64_t sub_267DF721C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DF7290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267DF72E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DF734C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_267EF2BA8();
  __swift_allocate_value_buffer(v4, qword_28022C320);
  v5 = __swift_project_value_buffer(v4, qword_28022C320);
  sub_267EF2B88();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_267DF745C()
{
  v0 = sub_267EF3CF8();
  v1 = OUTLINED_FUNCTION_18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_267EF3C88();
  return sub_267EF47A8();
}

uint64_t sub_267DF7500(uint64_t a1, void *a2)
{
  sub_267EF47F8();
  v3 = [a2 catId];
  sub_267EF9028();

  return sub_267EF47D8();
}

uint64_t sub_267DF756C()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DF75F0()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v2[7];
  sub_267EF7AE8();
  sub_267B9AFEC((v2 + 2), (v0 + 2));
  v4 = sub_267EF7118();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  v5 = sub_267DE77AC(v0 + 2, v1);
  v0[10] = v5;
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  OUTLINED_FUNCTION_44_0();
  v7 = sub_267EF3C28();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_267DF7708;

  return sub_267E9D550(v5, v7 & 1);
}

uint64_t sub_267DF7708()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  v5[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = v5[10];

    v5[13] = v3;
    v15 = swift_task_alloc();
    v5[14] = v15;
    *v15 = v9;
    v15[1] = sub_267DF787C;
    v16 = v5[7];
    v17 = v5[8];

    return sub_267DF9110();
  }
}

uint64_t sub_267DF787C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DF7960()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_267DF79C4()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_17();
  v4 = v0[12];

  return v3();
}

uint64_t sub_267DF7A28()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DF7AB0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21_27();

  v0[11] = sub_267EC814C();
  sub_267EF7AE8();
  sub_267B9AFEC(v2 + 16, (v0 + 2));
  v3 = sub_267EF7118();
  OUTLINED_FUNCTION_46_11(v3);
  v4 = sub_267DE77AC(v0 + 2, v1);
  OUTLINED_FUNCTION_16_34(v4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_15_34(v5);

  return sub_267E9D3DC(v6, v7, v8);
}

uint64_t sub_267DF7BA4()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  v5[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v15 = v5[11];
    v14 = v5[12];

    v5[15] = v3;
    v16 = swift_task_alloc();
    v5[16] = v16;
    *v16 = v9;
    OUTLINED_FUNCTION_18_31(v16);

    return sub_267DF9110();
  }
}

uint64_t sub_267DF7D18()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DF7DFC()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DF7E84()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21_27();

  v0[11] = sub_267EC814C();
  sub_267EF7AE8();
  sub_267B9AFEC(v2 + 16, (v0 + 2));
  v3 = sub_267EF7118();
  OUTLINED_FUNCTION_46_11(v3);
  v4 = sub_267DE77AC(v0 + 2, v1);
  OUTLINED_FUNCTION_16_34(v4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_15_34(v5);

  return sub_267E9D140(v6, v7, v8);
}

uint64_t sub_267DF7F78()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  v5[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v15 = v5[11];
    v14 = v5[12];

    v5[15] = v3;
    v16 = swift_task_alloc();
    v5[16] = v16;
    *v16 = v9;
    OUTLINED_FUNCTION_18_31(v16);

    return sub_267DF9110();
  }
}

uint64_t sub_267DF80EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DF81D0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_267DF8234()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  OUTLINED_FUNCTION_17();
  v5 = v0[14];

  return v4();
}

uint64_t sub_267DF82A4()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_267EF48A8();
  v1[4] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DF8348()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*(v0 + 24) + 56);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_267DF83D8;

  return sub_267E9EC38();
}

uint64_t sub_267DF83D8()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 48);

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    *(v5 + 64) = v3;
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_267DF8510()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[8];
  v2 = v0[6];
  v3 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v3);
  v0[9] = sub_267EF4188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v4 = OUTLINED_FUNCTION_47_3();
  v0[10] = v4;
  *(v4 + 16) = xmmword_267EFCA40;
  *(v4 + 32) = v1;
  v5 = v1;
  sub_267DF745C();
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD50]);
  v12 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[11] = v7;
  *v7 = v8;
  v7[1] = sub_267DF861C;
  v9 = v0[6];
  v10 = v0[2];

  return v12(v10, v4, v9);
}

uint64_t sub_267DF861C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[6];
  v6 = v1[5];
  v7 = v1[4];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DF879C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_267DF8800()
{
  OUTLINED_FUNCTION_12();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = sub_267EF48A8();
  v1[18] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[19] = v5;
  v7 = *(v6 + 64);
  v1[20] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF83E8();
  v1[21] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[22] = v9;
  v11 = *(v10 + 64);
  v1[23] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF8178();
  v1[24] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[25] = v13;
  v15 = *(v14 + 64);
  v1[26] = OUTLINED_FUNCTION_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v1[27] = v16;
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  v1[28] = OUTLINED_FUNCTION_2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v19);
  v21 = *(v20 + 64);
  v1[29] = OUTLINED_FUNCTION_2();
  v22 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_267DF899C()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[29];
  v2 = v0[16];
  v3 = v0[17];
  type metadata accessor for MessagesApp(0);

  v4 = sub_267EC814C();
  v0[30] = v4;
  v5 = *(v3 + 56);
  sub_267EF7AE8();
  sub_267B9AFEC(v3 + 16, (v0 + 2));
  v6 = sub_267EF7118();
  OUTLINED_FUNCTION_46_11(v6);

  v7 = sub_267DE77AC(v0 + 2, v1);
  v0[31] = v7;
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_267DF8AB0;

  return sub_267E9D6B0(v4, v7);
}

uint64_t sub_267DF8AB0()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v0;
  v6 = v2[32];
  *v4 = *v1;
  v3[33] = v0;

  v7 = v2[31];
  if (v0)
  {
    v8 = v3[30];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DF8BEC()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v23 = v0[13];
  v24 = v0[21];
  v25 = v0[26];
  v26 = v0[20];
  v7 = v0[16];
  v8 = *(v0[17] + 64);
  sub_267C7FD8C(v0[30]);

  sub_267EFA028();
  sub_267DF9A30(v1);
  v9 = sub_267EF7C18();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v0[34] = v23;
  *v5 = v11;
  v5[1] = v12;
  (*(v6 + 104))(v5, *MEMORY[0x277D5D6E8], v24);
  sub_267EF83F8();
  (*(v3 + 104))(v25, *MEMORY[0x277D5D358], v4);
  v13 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v13);
  v0[35] = sub_267EF4188();
  v0[10] = v4;
  v0[11] = sub_267DF9A98();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  (*(v3 + 16))(boxed_opaque_existential_0, v25, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v15 = OUTLINED_FUNCTION_47_3();
  v0[36] = v15;
  *(v15 + 16) = xmmword_267EFCA40;
  *(v15 + 32) = v23;
  v16 = v23;
  sub_267DF745C();
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD40]);
  v27 = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[37] = v18;
  *v18 = v19;
  v18[1] = sub_267DF8E28;
  v20 = v0[20];
  v21 = v0[15];

  return v27(v21, v0 + 7, v15, v20);
}

uint64_t sub_267DF8E28()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = v4[37];
  v6 = v4[36];
  v7 = v4[35];
  v8 = v4[20];
  v9 = v4[19];
  v10 = v4[18];
  v11 = *v0;
  OUTLINED_FUNCTION_5();
  *v12 = v11;

  v13 = *(v9 + 8);
  v14 = OUTLINED_FUNCTION_44_0();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v16 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_267DF8FA4()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 160);

  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_44_0();
  v11(v10);

  OUTLINED_FUNCTION_1();

  return v12();
}

uint64_t sub_267DF906C()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[20];

  OUTLINED_FUNCTION_17();
  v8 = v0[33];

  return v7();
}

uint64_t sub_267DF9110()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_267EF48A8();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF83E8();
  v1[13] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[14] = v9;
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF8178();
  v1[16] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[17] = v13;
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v1[19] = v16;
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  v1[20] = OUTLINED_FUNCTION_2();
  v19 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_267DF9280()
{
  v1 = v0[9];
  OUTLINED_FUNCTION_24_26();
  if (sub_267EF3C18() & 1) != 0 || (OUTLINED_FUNCTION_24_26(), (sub_267EF3BF8()))
  {
    v2 = v0[19];
    v3 = v0[20];
    v4 = *(v0[9] + 64);
    sub_267C7FD6C();
    sub_267EFA028();
    sub_267DF9A30(v3);
    if (qword_2802287F8 != -1)
    {
      swift_once();
    }

    v5 = v0[17];
    v6 = v0[18];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[13];
    v10 = v0[14];
    v33 = v0[8];
    v34 = v0[12];
    v11 = sub_267EF2BA8();
    v12 = __swift_project_value_buffer(v11, qword_28022C320);
    (*(*(v11 - 8) + 16))(v8, v12, v11);
    (*(v10 + 104))(v8, *MEMORY[0x277D5D6E0], v9);
    sub_267EF83F8();
    (*(v5 + 104))(v6, *MEMORY[0x277D5D358], v7);
    v13 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v13);
    v0[21] = sub_267EF4188();
    v0[5] = v7;
    v0[6] = sub_267DF9A98();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    (*(v5 + 16))(boxed_opaque_existential_0, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v15 = OUTLINED_FUNCTION_47_3();
    v0[22] = v15;
    *(v15 + 16) = xmmword_267EFCA40;
    *(v15 + 32) = v33;
    v16 = v33;
    sub_267DF745C();
    OUTLINED_FUNCTION_10(MEMORY[0x277D5BD40]);
    v35 = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[23] = v18;
    *v18 = v19;
    v18[1] = sub_267DF960C;
    v20 = v0[12];
    v21 = v0[7];

    return v35(v21, v0 + 2, v15, v20);
  }

  else
  {
    v23 = v0[12];
    v24 = v0[8];
    v25 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v25);
    v0[24] = sub_267EF4188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v26 = OUTLINED_FUNCTION_47_3();
    v0[25] = v26;
    *(v26 + 16) = xmmword_267EFCA40;
    *(v26 + 32) = v24;
    v27 = v24;
    sub_267DF745C();
    OUTLINED_FUNCTION_10(MEMORY[0x277D5BD50]);
    v36 = v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[26] = v29;
    *v29 = v30;
    v29[1] = sub_267DF9824;
    v31 = v0[12];
    v32 = v0[7];

    return v36(v32, v26, v31);
  }
}

uint64_t sub_267DF960C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = v4[23];
  v6 = v4[22];
  v7 = v4[21];
  v8 = v4[12];
  v9 = v4[11];
  v10 = v4[10];
  v11 = *v0;
  OUTLINED_FUNCTION_5();
  *v12 = v11;

  v13 = *(v9 + 8);
  v14 = OUTLINED_FUNCTION_44_0();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v16 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_267DF9788()
{
  OUTLINED_FUNCTION_56();
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267DF9824()
{
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = v1[26];
  v5 = v1[25];
  v6 = v1[24];
  v7 = v1[12];
  v8 = v1[11];
  v9 = v1[10];
  v10 = *v0;
  *v3 = *v0;

  (*(v8 + 8))(v7, v9);
  v11 = v1[20];
  v12 = v1[18];
  v13 = v1[15];
  v14 = v2[12];

  v15 = v10[1];

  return v15();
}

uint64_t sub_267DF9A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267DF9A98()
{
  result = qword_280229338[0];
  if (!qword_280229338[0])
  {
    sub_267EF8178();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280229338);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SendLocationErrors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267DF9BD8()
{
  result = qword_28022C338;
  if (!qword_28022C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C338);
  }

  return result;
}

void *sub_267DF9C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v9 = (&v22 - v8);
  v10 = sub_267BE6C54(a1);

  v11 = sub_267DF9DC8();

  OUTLINED_FUNCTION_0_60();
  v14 = sub_267DFA5CC(v12, v13);
  v15 = v10[3];
  v10[3] = v11;
  v10[4] = v14;
  swift_unknownObjectRelease();
  v16 = sub_267DFA5CC(&qword_28022C380, type metadata accessor for MessageReadingActionGroup);
  *v9 = a2;
  v9[1] = v16;
  v17 = *MEMORY[0x277D5BF58];
  v18 = sub_267EF4548();
  OUTLINED_FUNCTION_3_60(v18);
  (*(v19 + 104))(v9, v17, a1);
  OUTLINED_FUNCTION_4_55();
  v20 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  OUTLINED_FUNCTION_66_3();
  sub_267C13844(v9, v10 + v20);
  swift_endAccess();

  return v10;
}

uint64_t sub_267DF9DC8()
{
  v1 = *(v0 + 16);
  if (!sub_267E2B4DC())
  {
    v4 = 0;
    v8 = 2;
    goto LABEL_6;
  }

  sub_267BE4AD0();
  sub_267DE1640();
  v3 = v2;

  v4 = sub_267C8F198(v3);

  if (v4)
  {
    sub_267BE4AD0();
    sub_267DE1640();
    v6 = v5;

    v7 = sub_267D3281C(v6);

    if (v7 == 1)
    {
      v8 = 0;
LABEL_6:
      type metadata accessor for ReadingSummaryAction();
      memset(v15, 0, sizeof(v15));
      v16 = 0;
      swift_allocObject();

      return sub_267DEC2BC(v4, 0, 0, v8, v1, 0, v15);
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v15[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_267BA33E8(0xD00000000000005ALL, 0x8000000267F1ACE0, v15);
    _os_log_impl(&dword_267B93000, v11, v12, "Fatal error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D60A7B0](v14, -1, -1);
    MEMORY[0x26D60A7B0](v13, -1, -1);
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

void *sub_267DFA04C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v7 = (v16 - v6);
  v8 = sub_267BE6C54(a1);
  type metadata accessor for ReadingSummaryAction();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  swift_allocObject();
  swift_retain_n();

  v9 = sub_267DEC2BC(1, 0, 0, 2, a1, 0, v16);
  OUTLINED_FUNCTION_0_60();
  v12 = sub_267DFA5CC(v10, v11);
  v13 = v8[3];
  v8[3] = v9;
  v8[4] = v12;
  swift_unknownObjectRelease();
  sub_267CAB4D0(a1, v7);

  v14 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  OUTLINED_FUNCTION_66_3();
  sub_267C13844(v7, v8 + v14);
  swift_endAccess();

  return v8;
}

void *sub_267DFA1D0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v9 = (v18 - v8);
  v10 = sub_267BE6C54(a1);
  type metadata accessor for ReadingSummaryAction();
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  swift_allocObject();

  swift_retain_n();

  v11 = sub_267DEC2BC(2, 0, 0, 2, a1, a2, v18);
  OUTLINED_FUNCTION_0_60();
  v14 = sub_267DFA5CC(v12, v13);
  v15 = v10[3];
  v10[3] = v11;
  v10[4] = v14;
  swift_unknownObjectRelease();
  sub_267CAB4D0(a1, v9);

  v16 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  OUTLINED_FUNCTION_66_3();
  sub_267C13844(v9, v10 + v16);
  swift_endAccess();

  return v10;
}

void *sub_267DFA39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  v13 = (&v29 - v12);
  v14 = sub_267EF7B88();
  v15 = OUTLINED_FUNCTION_18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = sub_267BE6C54(a1);
  v19 = qword_2802286F0;

  if (v19 != -1)
  {
    swift_once();
  }

  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  v20 = sub_267EF78E8();
  type metadata accessor for DeviceOfflineNotificationAction();
  swift_allocObject();
  v21 = sub_267CD2414(a1, v20);
  v22 = sub_267DFA5CC(&qword_28022A868, type metadata accessor for DeviceOfflineNotificationAction);
  v23 = v18[3];
  v18[3] = v21;
  v18[4] = v22;
  swift_unknownObjectRelease();
  *v13 = a2;
  v13[1] = a5;
  v24 = *MEMORY[0x277D5BF58];
  v25 = sub_267EF4548();
  OUTLINED_FUNCTION_3_60(v25);
  (*(v26 + 104))(v13, v24, a5);
  OUTLINED_FUNCTION_4_55();
  v27 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  OUTLINED_FUNCTION_66_3();
  sub_267C13844(v13, v18 + v27);
  swift_endAccess();

  return v18;
}

uint64_t sub_267DFA5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267DFA638@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = result == 0xD000000000000011 && 0x8000000267F11990 == a2;
  if (v6 || (v7 = result, result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v8 = *(v3 + 24);
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v8;
  }

  else
  {
    result = 0xD00000000000001ALL;
    v9 = v7 == 0xD00000000000001ALL && 0x8000000267F119B0 == a2;
    if (v9 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
    {
      v10 = *(v3 + 33);
    }

    else
    {
      result = 0xD000000000000026;
      if (v7 != 0xD000000000000026 || 0x8000000267F119D0 != a2)
      {
        result = OUTLINED_FUNCTION_2_6();
        if ((result & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v10 = *(v3 + 34);
    }

    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v10;
  }

  return result;
}

uint64_t sub_267DFA73C()
{
  v0 = sub_267EF9D38();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_267DFA788(char a1)
{
  result = 0xD000000000000011;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return 0xD000000000000026;
    }
  }

  return result;
}

uint64_t sub_267DFA804@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267DFA73C();
  *a2 = result;
  return result;
}

unint64_t sub_267DFA834@<X0>(unint64_t *a1@<X8>)
{
  result = sub_267DFA788(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267DFA868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267DFA73C();
  *a1 = result;
  return result;
}

uint64_t sub_267DFA89C(uint64_t a1)
{
  v2 = sub_267DFAE00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267DFA8D8(uint64_t a1)
{
  v2 = sub_267DFAE00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267DFA914(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C3A8, &qword_267F0A298);
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267DFAE00();
  sub_267EFA088();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  v19[15] = 0;
  sub_267EF9DD8();
  if (!v2)
  {
    v16 = *(v3 + 33);
    v19[14] = 1;
    sub_267EF9E18();
    v17 = *(v3 + 34);
    v19[13] = 2;
    sub_267EF9E18();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_267DFAA98(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_267DFAAE8(a1);
  return v2;
}

uint64_t sub_267DFAAE8(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C398, &qword_267F0A290);
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - v11;
  *(v1 + 16) = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267DFAE00();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesReadingRequestDialogContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    OUTLINED_FUNCTION_0_61();
    *(v1 + 24) = sub_267EF9D68();
    *(v1 + 32) = v14 & 1;
    v19 = 1;
    OUTLINED_FUNCTION_0_61();
    *(v1 + 33) = sub_267EF9DA8() & 1;
    v18 = 2;
    OUTLINED_FUNCTION_0_61();
    v16 = sub_267EF9DA8();
    (*(v8 + 8))(v12, v5);
    *(v3 + 34) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_267DFAD08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267DFAA98(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267DFADC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessagesReadingRequestDialogContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267DFAE00()
{
  result = qword_28022C3A0;
  if (!qword_28022C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C3A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesReadingRequestDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267DFAF34()
{
  result = qword_28022C3B0;
  if (!qword_28022C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C3B0);
  }

  return result;
}

unint64_t sub_267DFAF8C()
{
  result = qword_28022C3B8;
  if (!qword_28022C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C3B8);
  }

  return result;
}

unint64_t sub_267DFAFE4()
{
  result = qword_28022C3C0;
  if (!qword_28022C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C3C0);
  }

  return result;
}

BOOL sub_267DFB038(unint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        result = (a1 | a3) == 0;
        if (a1 && a3)
        {
          sub_267BA9F38(0, &qword_28022C3C8, 0x277CD3B50);
          sub_267DFB18C(a3, 1u);
          sub_267DFB18C(a1, 1u);
          v7 = sub_267EF9818();
          sub_267DBCBB4(a1, 1u);
          v8 = a3;
          v9 = 1;
LABEL_11:
          sub_267DBCBB4(v8, v9);
          return v7 & 1;
        }

        return result;
      }
    }

    else if (a4 == 2 && !a3)
    {
      return 1;
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  result = (a1 | a3) == 0;
  if (a1 && a3)
  {
    sub_267BA9F38(0, &qword_28022C3C8, 0x277CD3B50);
    sub_267DFB18C(a3, 0);
    sub_267DFB18C(a1, 0);
    v7 = sub_267EF9818();
    sub_267DBCBB4(a1, 0);
    v8 = a3;
    v9 = 0;
    goto LABEL_11;
  }

  return result;
}

id sub_267DFB18C(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow11PaymentTypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_267DFB1BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_267DFB1FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267DFB26C()
{
  OUTLINED_FUNCTION_12();
  v1[72] = v0;
  v1[71] = v2;
  v1[70] = v3;
  v1[69] = v4;
  v1[68] = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v1[73] = swift_task_alloc();
  v7 = sub_267EF2E38();
  v1[74] = v7;
  v8 = *(v7 - 8);
  v1[75] = v8;
  v9 = *(v8 + 64) + 15;
  v1[76] = swift_task_alloc();
  v10 = sub_267EF79B8();
  v1[77] = v10;
  v11 = *(v10 - 8);
  v1[78] = v11;
  v12 = *(v11 + 64) + 15;
  v1[79] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267DFB72C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v7 = v6;
  v8 = *(v6 + 640);
  v9 = *v3;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v7 + 648) = v2;

  if (v2)
  {
    sub_267B9F98C(v7 + 376, &qword_28022B0F0, &qword_267F0E670);
    v11 = sub_267DFC3D8;
  }

  else
  {
    *(v7 + 656) = a2;
    *(v7 + 664) = a1;
    *(v7 + 528) = *(v7 + 16);
    sub_267B9F98C(v7 + 376, &qword_28022B0F0, &qword_267F0E670);
    v11 = sub_267DFB884;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_267DFBB6C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 704);
  *v2 = *v0;
  *(v1 + 712) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DFBC54()
{
  OUTLINED_FUNCTION_32_19();
  v15 = *(v0 + 696);
  v16 = *(v0 + 712);
  v1 = *(v0 + 688);
  v2 = *(v0 + 672);
  v3 = *(v0 + 632);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 560);
  v7 = *(v0 + 544);
  v8 = *(v0 + 680);
  v9 = __swift_project_boxed_opaque_existential_0(*(v0 + 568), *(*(v0 + 568) + 24));
  v17 = *v6;
  sub_267BB8364();
  v10 = swift_task_alloc();
  *(v0 + 720) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v10 + 32) = v2;
  *(v10 + 40) = v3;
  *(v10 + 48) = v8;
  *(v10 + 56) = v1;
  *(v10 + 64) = v4;
  *(v10 + 72) = v15;
  *(v10 + 80) = v16;
  *(v10 + 88) = v7;
  v11 = *v9;
  v12 = swift_task_alloc();
  *(v0 + 728) = v12;
  *v12 = v0;
  v12[1] = sub_267DFBD84;
  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_21_18();

  return sub_267D4694C();
}

uint64_t sub_267DFBD84()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[60] = v1;
  v2[61] = v4;
  v2[62] = v0;
  v6 = *(v5 + 728);
  v7 = *(v5 + 720);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 736) = v0;

  if (v0)
  {
    v11 = sub_267DFBFCC;
  }

  else
  {
    v11 = sub_267DFBEA4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_267DFBEA4()
{
  v4 = v0[89];

  v5 = v0[61];
  v6 = v0[68];
  v7 = *(v6 + 416);
  if (v7)
  {
    v1 = v0[87];
    if (*(v6 + 426))
    {
      v8 = v0[87];
    }

    else
    {
      v10 = *(v7 + 168);

      sub_267C38238();
    }
  }

  else
  {
    v9 = v0[87];
  }

  OUTLINED_FUNCTION_27_26();

  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  (*(v3 + 8))(v7, v1);

  v11 = OUTLINED_FUNCTION_55_1();

  return v12(v11);
}

uint64_t sub_267DFBFCC()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[84];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[73];

  sub_267B9F98C(v8, &unk_28022AE30, &qword_267EFC0B0);
  (*(v6 + 8))(v5, v7);
  v9 = v0[92];
  OUTLINED_FUNCTION_37_19();

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267DFC0BC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[63] = v1;
  v2[64] = v4;
  v2[65] = v0;
  v6 = *(v5 + 752);
  v7 = *(v5 + 744);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 760) = v0;

  if (v0)
  {
    v11 = sub_267DFC2FC;
  }

  else
  {
    v11 = sub_267DFC1DC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_267DFC1DC()
{
  v4 = v0[64];
  v5 = v0[68];
  v6 = *(v5 + 416);
  if (v6)
  {
    v1 = v0[87];
    if (*(v5 + 426))
    {
      v7 = v0[87];
    }

    else
    {
      v9 = *(v6 + 168);

      sub_267C38238();
    }
  }

  else
  {
    v8 = v0[87];
  }

  OUTLINED_FUNCTION_27_26();

  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  (*(v3 + 8))(v6, v1);

  v10 = OUTLINED_FUNCTION_55_1();

  return v11(v10);
}

uint64_t sub_267DFC2FC()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[84];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[73];

  sub_267B9F98C(v7, &unk_28022AE30, &qword_267EFC0B0);
  (*(v5 + 8))(v4, v6);
  v8 = v0[95];
  OUTLINED_FUNCTION_37_19();

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_267DFC3D8()
{
  v1 = *(v0 + 648);
  OUTLINED_FUNCTION_37_19();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267DFC44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 368) = v16;
  *(v9 + 376) = v17;
  *(v9 + 352) = a7;
  *(v9 + 360) = a8;
  *(v9 + 344) = a6;
  *(v9 + 336) = a9;
  *(v9 + 320) = a4;
  *(v9 + 328) = a5;
  *(v9 + 304) = a2;
  *(v9 + 312) = a3;
  *(v9 + 296) = a1;
  v10 = sub_267EF8248();
  *(v9 + 384) = v10;
  v11 = *(v10 - 8);
  *(v9 + 392) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DFC5A0, 0, 0);
}

void sub_267DFC5A0()
{
  v2 = *(v0 + 448);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  SpokenPaymentComponentParameters = type metadata accessor for SearchForMessagesReadSpokenPaymentComponentParameters(0);
  *(v0 + 456) = SpokenPaymentComponentParameters;
  v6 = *(SpokenPaymentComponentParameters + 32);
  sub_267B9F98C(v4 + v6, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v8 = ComponentPatternCommonParameters[5];
  v9 = sub_267EF79B8();
  *(v0 + 464) = v9;
  OUTLINED_FUNCTION_22(v9);
  v84 = v10 + 16;
  v85 = *(v10 + 16);
  v85(v4 + v6, v3 + v8, v9);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  OUTLINED_FUNCTION_43_21();
  v14 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v15 = *(v0 + 440);
  v16 = *(v0 + 448);
  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_24_5(*(SpokenPaymentComponentParameters + 64));
  *(v0 + 272) = *(v6 + ComponentPatternCommonParameters[7]);
  sub_267EF8348();
  v17 = SpokenPaymentComponentParameters;
  v19 = *(v0 + 432);
  v18 = *(v0 + 440);
  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_24_5(v17[17]);
  *(v0 + 280) = *(v6 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_29_0();
  v21 = *(v0 + 424);
  v20 = *(v0 + 432);
  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_24_5(v17[19]);
  *(v0 + 288) = *(v6 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_29_0();
  v66 = *(v0 + 424);
  v67 = *(v0 + 296);
  OUTLINED_FUNCTION_2_42();
  v68 = sub_267BD3DDC(v66, v67 + v17[21]);
  *(v0 + 472) = 0;
  v22 = *(v0 + 312);
  v23 = v22[1];
  if (v23)
  {
    ComponentPatternCommonParameters = *(v0 + 416);
    v67 = *v22;
    v24 = v22[1];

    sub_267EF90F8();

    OUTLINED_FUNCTION_23_23(v25, 0, v26, v27, v28, v29, v30, v31, v75, v77, v79, v81, *(v0 + 312), v84, v85, v9);
  }

  else
  {
    OUTLINED_FUNCTION_23_23(v68, 1, v69, v70, v71, v72, v73, v74, v75, v77, v79, v81, *(v0 + 312), v84, v85, v9);
  }

  sub_267BD3DDC(v1, v14 + v17[14]);
  v32 = v17[13];
  v33 = *(v14 + v32);

  *(v14 + v32) = v6;
  sub_267B9F98C(v14 + v23[15], &unk_28022AE30, &qword_267EFC0B0);
  v34 = OUTLINED_FUNCTION_41_16();
  v35(v34);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v67);
  OUTLINED_FUNCTION_40_17();
  v39 = v23[18];
  v40 = *(v14 + v39);

  *(v14 + v39) = v21;
  sub_267BE855C(v78, v14 + v23[9]);
  v41 = v23[6];
  v42 = *(v14 + v41);

  *(v14 + v41) = ComponentPatternCommonParameters;
  v43 = v23[20];
  v44 = *(v14 + v43);

  *(v14 + v43) = v80;
  v45 = sub_267EF7998();
  OUTLINED_FUNCTION_31_21(v45, v46, v47, v48, v49, v50, v51, v52, v76, v78, v80, v82, v83);
  sub_267D5D40C(v0 + 16, v0 + 136);
  *(v0 + 504) = sub_267DB441C();
  sub_267D5D468(v0 + 16);
  v53 = sub_267BDAF74();
  *(v0 + 129) = v53 & 1;
  if (v53)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v54 = swift_task_alloc();
    *(v0 + 512) = v54;
    *v54 = v0;
    v54[1] = sub_267DFCBB0;
    OUTLINED_FUNCTION_100();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_35_22();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v67)
  {
    v57 = OUTLINED_FUNCTION_1_67();
    v58(v57);
  }

  else
  {
    OUTLINED_FUNCTION_15_35();
    v59 = OUTLINED_FUNCTION_5_53();
    v60(v59);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v61, v62, v63);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_100();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267DFCBB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 512);
  *v2 = *v0;
  *(v1 + 130) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DFCC98()
{
  v1 = *(v0 + 130);
  v2 = *(v0 + 129);
  v3 = *(v0 + 496);
  v4 = *(v0 + 504);
  v6 = *(v0 + 480);
  v5 = *(v0 + 488);
  v19 = *(v0 + 472);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 384);
  sub_267EF7C18();
  sub_267EF8238();
  sub_267EF8348();
  if (v19)
  {
    v10 = OUTLINED_FUNCTION_1_67();
    v11(v10);
  }

  else
  {
    OUTLINED_FUNCTION_15_35();
    v13 = OUTLINED_FUNCTION_5_53();
    v14(v13);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v15, v16, v17);
  }

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267DFCE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 368) = v16;
  *(v9 + 376) = v17;
  *(v9 + 352) = a7;
  *(v9 + 360) = a8;
  *(v9 + 344) = a6;
  *(v9 + 336) = a9;
  *(v9 + 320) = a4;
  *(v9 + 328) = a5;
  *(v9 + 304) = a2;
  *(v9 + 312) = a3;
  *(v9 + 296) = a1;
  v10 = sub_267EF8248();
  *(v9 + 384) = v10;
  v11 = *(v10 - 8);
  *(v9 + 392) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DFCF94, 0, 0);
}

void sub_267DFCF94()
{
  v2 = *(v0 + 448);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  PaymentComponentParameters = type metadata accessor for SearchForMessagesReadPaymentComponentParameters(0);
  *(v0 + 456) = PaymentComponentParameters;
  v6 = *(PaymentComponentParameters + 32);
  sub_267B9F98C(v4 + v6, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v8 = ComponentPatternCommonParameters[5];
  v9 = sub_267EF79B8();
  *(v0 + 464) = v9;
  OUTLINED_FUNCTION_22(v9);
  v84 = v10 + 16;
  v85 = *(v10 + 16);
  v85(v4 + v6, v3 + v8, v9);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  OUTLINED_FUNCTION_43_21();
  v14 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v15 = *(v0 + 440);
  v16 = *(v0 + 448);
  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_24_5(*(PaymentComponentParameters + 68));
  *(v0 + 272) = *(v6 + ComponentPatternCommonParameters[7]);
  sub_267EF8348();
  v17 = PaymentComponentParameters;
  v19 = *(v0 + 432);
  v18 = *(v0 + 440);
  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_24_5(v17[18]);
  *(v0 + 280) = *(v6 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_29_0();
  v21 = *(v0 + 424);
  v20 = *(v0 + 432);
  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_24_5(v17[20]);
  *(v0 + 288) = *(v6 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_29_0();
  v66 = *(v0 + 424);
  v67 = *(v0 + 296);
  OUTLINED_FUNCTION_2_42();
  v68 = sub_267BD3DDC(v66, v67 + v17[21]);
  *(v0 + 472) = 0;
  v22 = *(v0 + 312);
  v23 = v22[1];
  if (v23)
  {
    ComponentPatternCommonParameters = *(v0 + 416);
    v67 = *v22;
    v24 = v22[1];

    sub_267EF90F8();

    OUTLINED_FUNCTION_23_23(v25, 0, v26, v27, v28, v29, v30, v31, v75, v77, v79, v81, *(v0 + 312), v84, v85, v9);
  }

  else
  {
    OUTLINED_FUNCTION_23_23(v68, 1, v69, v70, v71, v72, v73, v74, v75, v77, v79, v81, *(v0 + 312), v84, v85, v9);
  }

  sub_267BD3DDC(v1, v14 + v17[15]);
  v32 = v17[14];
  v33 = *(v14 + v32);

  *(v14 + v32) = v6;
  sub_267B9F98C(v14 + v23[16], &unk_28022AE30, &qword_267EFC0B0);
  v34 = OUTLINED_FUNCTION_41_16();
  v35(v34);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v67);
  OUTLINED_FUNCTION_40_17();
  v39 = v23[19];
  v40 = *(v14 + v39);

  *(v14 + v39) = v21;
  sub_267BE855C(v78, v14 + v23[10]);
  v41 = v23[6];
  v42 = *(v14 + v41);

  *(v14 + v41) = ComponentPatternCommonParameters;
  v43 = v23[9];
  v44 = *(v14 + v43);

  *(v14 + v43) = v80;
  v45 = sub_267EF7998();
  OUTLINED_FUNCTION_31_21(v45, v46, v47, v48, v49, v50, v51, v52, v76, v78, v80, v82, v83);
  sub_267D5D40C(v0 + 16, v0 + 136);
  *(v0 + 504) = sub_267DB441C();
  sub_267D5D468(v0 + 16);
  v53 = sub_267BDAF74();
  *(v0 + 129) = v53 & 1;
  if (v53)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v54 = swift_task_alloc();
    *(v0 + 512) = v54;
    *v54 = v0;
    v54[1] = sub_267DFD5A4;
    OUTLINED_FUNCTION_100();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_35_22();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v67)
  {
    v57 = OUTLINED_FUNCTION_1_67();
    v58(v57);
  }

  else
  {
    OUTLINED_FUNCTION_15_35();
    v59 = OUTLINED_FUNCTION_5_53();
    v60(v59);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v61, v62, v63);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_100();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267DFD5A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 512);
  *v2 = *v0;
  *(v1 + 130) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_267DFD68C(uint64_t a1)
{
  v2 = v1;
  sub_267BE4994(a1, v35);
  if (!v36)
  {
    sub_267B9F98C(v35, &qword_280229910, &unk_267EFEB70);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if (swift_dynamicCast())
  {
    memcpy(__dst, __src, 0x71uLL);
    v4 = *(v1 + 88);
    v3 = *(v1 + 96);
    v5 = __dst[11];
    v6 = __dst[12];
    if (v4 != __dst[11] || v3 != __dst[12])
    {
      v8 = *(v1 + 88);
      v9 = *(v1 + 96);
      if ((sub_267EF9EA8() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v10 = *(v1 + 104);
    v11 = __dst[13];
    if (*(v1 + 112))
    {
      if (*(v1 + 112) == 1)
      {
        if (LOBYTE(__dst[14]) != 1)
        {
          goto LABEL_37;
        }

        if (v10)
        {
          if (!__dst[13])
          {
            goto LABEL_37;
          }

          sub_267BA9F38(0, &qword_28022C3C8, 0x277CD3B50);
          sub_267DFB18C(v11, 1u);
          sub_267DFB18C(v10, 1u);
          v12 = sub_267EF9818();
          sub_267DBCBB4(v10, 1u);
          v13 = v11;
          v14 = 1;
          goto LABEL_19;
        }
      }

      else if (LOBYTE(__dst[14]) != 2)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (LOBYTE(__dst[14]))
      {
        goto LABEL_37;
      }

      if (v10)
      {
        if (!__dst[13])
        {
          goto LABEL_37;
        }

        sub_267BA9F38(0, &qword_28022C3C8, 0x277CD3B50);
        sub_267DFB18C(v11, 0);
        sub_267DFB18C(v10, 0);
        v12 = sub_267EF9818();
        sub_267DBCBB4(v10, 0);
        v13 = v11;
        v14 = 0;
LABEL_19:
        sub_267DBCBB4(v13, v14);
        if ((v12 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_23:
        v15 = *(v2 + 48);
        v16 = __dst[6];
        if (v15)
        {
          if (!__dst[6])
          {
            goto LABEL_37;
          }

          sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
          v17 = v16;
          v18 = v15;
          v19 = sub_267EF9818();

          if ((v19 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (__dst[6])
        {
          goto LABEL_37;
        }

        v20 = __dst[8];
        if (*(v2 + 64))
        {
          if (!LOBYTE(__dst[8]))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (*(v2 + 56) != __dst[7])
          {
            v20 = 1;
          }

          if (v20)
          {
            goto LABEL_37;
          }
        }

        if (__dst[5] == 1)
        {
          v21 = *(v2 + 40);
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            __break(1u);
            return;
          }

          *(v2 + 40) = v23;
          goto LABEL_53;
        }

LABEL_37:
        v24 = *(v2 + 112);
        if (*(v2 + 112))
        {
          v25 = sub_267EF9EA8();

          if (v25)
          {
LABEL_43:
            v27 = *(v2 + 48);
            v28 = __dst[6];
            if (v27)
            {
              if (!__dst[6])
              {
                goto LABEL_54;
              }

              sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
              v29 = v28;
              v30 = v27;
              v31 = sub_267EF9818();

              if ((v31 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            else if (__dst[6])
            {
LABEL_54:
              sub_267D5D468(__dst);
              return;
            }

            v32 = HIBYTE(v3) & 0xF;
            if ((v3 & 0x2000000000000000) == 0)
            {
              v32 = v4 & 0xFFFFFFFFFFFFLL;
            }

            if (v32 || LOBYTE(__dst[14]) < 2u)
            {
              goto LABEL_54;
            }

            *(v2 + 88) = v5;
            *(v2 + 96) = v6;
LABEL_53:
            sub_267BE22E4(__dst[2], (v2 + 16));
            sub_267D5D468(__dst);
            return;
          }

          if (v24 == 2)
          {
            v26 = sub_267EF9EA8();

            if ((v26 & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_43;
          }
        }

        goto LABEL_43;
      }
    }

    if (__dst[13])
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }
}

uint64_t sub_267DFDA78()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_267DFDAA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267DFB26C();
}

unint64_t sub_267DFDBA8(uint64_t a1)
{
  result = sub_267DBCB60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267DFDBD0(uint64_t a1)
{
  result = sub_267DFDBF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267DFDBF8()
{
  result = qword_28022C3D0;
  if (!qword_28022C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C3D0);
  }

  return result;
}

uint64_t sub_267DFDC64()
{
  OUTLINED_FUNCTION_25_30();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_10_37(v1);
  OUTLINED_FUNCTION_43_2();

  return sub_267DFCE40(v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267DFDD08()
{
  OUTLINED_FUNCTION_25_30();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_10_37(v1);
  OUTLINED_FUNCTION_43_2();

  return sub_267DFC44C(v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_267DFDDC4()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v41 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_7_42();
  v6 = sub_267EF5198();
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  v13 = sub_267EF5348();
  v14 = OUTLINED_FUNCTION_58(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_60();
  v40 = v19 - v20;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v21);
  v23 = v39 - v22;
  sub_267EF5338();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v24 = sub_267EF8A08();
  __swift_project_value_buffer(v24, qword_280240FB0);

  v25 = sub_267EF89F8();
  v26 = sub_267EF95D8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39[0] = v12;
    v29 = v28;
    v42 = v28;
    *v27 = 136315138;
    v39[1] = v5;
    v39[2] = v0;
    if (v2)
    {
      v30 = v41;
    }

    else
    {
      v30 = 7104878;
    }

    v31 = v16;
    v32 = v13;
    if (v2)
    {
      v33 = v2;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = sub_267BA33E8(v30, v33, &v42);
    v13 = v32;
    v16 = v31;

    *(v27 + 4) = v34;
    _os_log_impl(&dword_267B93000, v25, v26, "#SendMessageFlow inLanguage %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v35 = v29;
    v12 = v39[0];
    MEMORY[0x26D60A7B0](v35, -1, -1);
    MEMORY[0x26D60A7B0](v27, -1, -1);
  }

  v36 = 0;
  if (v2)
  {
    sub_267DFE6D4();
    v36 = sub_267EF8508();
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  sub_267BC8EDC(v36, v38, v12);

  sub_267EF5328();
  sub_267EF53C8();
  (*(v16 + 16))(v40, v23, v13);
  sub_267EF53B8();
  (*(v16 + 8))(v23, v13);
  OUTLINED_FUNCTION_47();
}

void sub_267DFE0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_7_42();
  v24 = sub_267EF5148();
  v25 = OUTLINED_FUNCTION_18(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_0_0();
  v28 = sub_267EF5318();
  v29 = OUTLINED_FUNCTION_58(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_0();
  v36 = v35 - v34;
  v37 = sub_267EF5248();
  v38 = OUTLINED_FUNCTION_58(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_60();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &a9 - v47;
  sub_267EF5238();
  (*(v31 + 16))(v36, v23, v28);
  sub_267EF5228();
  sub_267EF53C8();
  (*(v40 + 16))(v45, v48, v37);
  sub_267EF53A8();
  sub_267BBB3D0();
  sub_267EF5398();
  (*(v40 + 8))(v48, v37);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DFE344(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_267EF5458();
  v7 = a1(0);
  v11[3] = v7;
  v11[4] = sub_267DFE464(a2, a3);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, v3, v7);
  v9 = sub_267EF5448();
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v9;
}

uint64_t sub_267DFE464(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267DFE4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_7_42();
  v22 = sub_267EF5198();
  v23 = OUTLINED_FUNCTION_18(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v28 = v27 - v26;
  v29 = sub_267EF5348();
  v30 = OUTLINED_FUNCTION_58(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_60();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  sub_267EF5338();
  v41 = sub_267EF6468();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_267EF6458();
  v44 = sub_267EF64E8();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_267EF64D8();
  sub_267EF6668();

  sub_267BC8EDC(0, 0, v28);
  sub_267EF5328();
  sub_267EF53C8();
  (*(v32 + 16))(v37, v40, v29);
  sub_267EF53B8();

  (*(v32 + 8))(v40, v29);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DFE66C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C3E8, &unk_267F0A6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267DFE6D4()
{
  result = qword_28022C3F0;
  if (!qword_28022C3F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022C3F0);
  }

  return result;
}

void sub_267DFE718(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v11 = sub_267EF2E38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();

  v17 = [v16 sharedInstance];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  type metadata accessor for MessagesFlowPluginBase();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = a1;
  v20 = [objc_opt_self() bundleForClass_];
  sub_267EF2DE8();
  v21 = sub_267EF2D48();
  v37 = a2;
  v22 = a6;
  v23 = a3;
  v24 = a4;
  v26 = v25;
  (*(v12 + 8))(v15, v11);
  v44[0] = v21;
  v44[1] = v26;
  v42 = 45;
  v43 = 0xE100000000000000;
  v40 = 95;
  v41 = 0xE100000000000000;
  sub_267BB5034();
  v27 = sub_267EF9938();
  v29 = v28;
  a4 = v24;
  a3 = v23;
  a6 = v22;

  v30 = sub_267DFEA38(a3, a4, v39, v22, v20, v27, v29, v18);
  v32 = v31;

  a1 = v38;
  if (v32)
  {
    v44[0] = v30;
    v44[1] = v32;
    v45 = 0;
    v38(v44);
  }

  else
  {
LABEL_4:
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    sub_267EF9B68();

    strcpy(v44, "No value in ");
    BYTE5(v44[1]) = 0;
    HIWORD(v44[1]) = -5120;
    MEMORY[0x26D608E60](v39, a6);
    MEMORY[0x26D608E60](0x20726F6620, 0xE500000000000000);
    MEMORY[0x26D608E60](a3, a4);
    v33 = v44[0];
    v34 = v44[1];
    sub_267C266B0();
    v35 = swift_allocError();
    *v36 = v33;
    v36[1] = v34;
    v44[0] = v35;
    v44[1] = 0;
    v45 = 1;
    a1(v44);
  }
}

uint64_t sub_267DFEA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_267EF8FF8();
  v11 = sub_267EF8FF8();
  v12 = sub_267EF8FF8();

  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_267EF9028();

  return v14;
}

uint64_t sub_267DFEC50(uint64_t a1)
{
  v1 = a1 - 10;
  result = 0x656E696C66666FLL;
  switch(v1)
  {
    case 0:
      result = 0x616E6E6943736F73;
      break;
    case 1:
      result = 0x617070614B736F73;
      break;
    case 3:
      result = 0x6F7477654E736F73;
      break;
    case 4:
      result = 0x6767697254736F73;
      break;
    case 5:
      return result;
    default:
      result = 0x736F53746F6ELL;
      break;
  }

  return result;
}

uint64_t sub_267DFED14(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_267E00234(a1, sub_267E005BC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_267DFED9C(uint64_t result)
{
  if (result)
  {
    switch(result)
    {
      case 10:
        return 1;
      case 70:
        return 7;
      case 30:
        return 3;
      case 40:
        return 4;
      case 50:
        return 5;
      case 60:
        return 6;
      case 20:
        return 2;
      default:
        return 8;
    }
  }

  return result;
}

uint64_t sub_267DFEE44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267DFED9C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_267DFEE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267DFEE18(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_267DFEEAC()
{
  v10 = sub_267EF9648();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v4 = v3 - v2;
  v5 = sub_267EF9638();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v7 = sub_267EF8EA8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_0_0();
  sub_267C10AB0();
  sub_267EF8E68();
  sub_267C10AF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229048, &unk_267EFC400);
  sub_267BC1E20(&qword_280229050, &qword_280229048, &unk_267EFC400);
  sub_267EF99C8();
  (*(v0 + 104))(v4, *MEMORY[0x277D85260], v10);
  result = sub_267EF9668();
  qword_28022C3F8 = result;
  return result;
}

void sub_267DFF0C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a1 && sub_267BAF0DC(a1) == 1 && sub_267BAF0DC(a1))
  {
    sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D609870](0, a1);
    }

    else
    {
      v10 = *(a1 + 32);
    }

    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = v11;
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *(v12 + 48) = a5;

    v13 = v11;
    sub_267DFF574(sub_267E004C8, v12);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v14 = sub_267EF8A08();
    __swift_project_value_buffer(v14, qword_280240FB0);
    oslog = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, oslog, v15, "ConfirmationSignalContext: Didn't identify single recipient with matching CRR signals to save to DES", v16, 2u);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }
  }
}

uint64_t sub_267DFF2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v10 = sub_267DE9B04();
  v12 = v11;
  swift_beginAccess();
  v13 = *(a2 + 192);

  sub_267C8EB98(v10, v12, v13);
  v15 = v14;

  if (v15)
  {
    a1 = sub_267DFED14(v15, a1);
  }

  swift_isUniquelyReferenced_nonNull_native();
  v29 = a1;
  sub_267BE4A04();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);

  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315394;
    v21 = sub_267EF9098();
    v23 = sub_267BA33E8(v21, v22, &v29);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;

    v24 = sub_267EF8F38();
    v26 = v25;

    v27 = sub_267BA33E8(v24, v26, &v29);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_267B93000, v17, v18, "ConfirmationSignalContext: reason: %s, saving %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v20, -1, -1);
    MEMORY[0x26D60A7B0](v19, -1, -1);
  }

  (*(a6 + 8))(a1, a5, a6);
}

uint64_t sub_267DFF574(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = sub_267EF8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A78, &qword_267EFEEF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_267F02660;
  v6 = sub_267EF4E18();
  v7 = MEMORY[0x277D60278];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  __swift_allocate_boxed_opaque_existential_0((v5 + 32));
  sub_267EF4E08();
  v8 = sub_267EF4E38();
  v9 = MEMORY[0x277D60288];
  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  __swift_allocate_boxed_opaque_existential_0((v5 + 72));
  sub_267EF4E28();
  v10 = sub_267EF4ED8();
  v11 = MEMORY[0x277D602C0];
  *(v5 + 136) = v10;
  *(v5 + 144) = v11;
  __swift_allocate_boxed_opaque_existential_0((v5 + 112));
  sub_267EF4EC8();
  v12 = sub_267EF4DF8();
  v13 = MEMORY[0x277D60260];
  *(v5 + 176) = v12;
  *(v5 + 184) = v13;
  __swift_allocate_boxed_opaque_existential_0((v5 + 152));
  sub_267EF4DE8();
  v14 = sub_267EF4EF8();
  v15 = MEMORY[0x277D602E0];
  *(v5 + 216) = v14;
  *(v5 + 224) = v15;
  __swift_allocate_boxed_opaque_existential_0((v5 + 192));
  sub_267EF4EE8();
  v16 = sub_267EF4F18();
  v17 = MEMORY[0x277D602E8];
  *(v5 + 256) = v16;
  *(v5 + 264) = v17;
  __swift_allocate_boxed_opaque_existential_0((v5 + 232));
  sub_267EF4F08();
  v18 = sub_267EF4EB8();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_267EF4EA8();
  v22 = MEMORY[0x277D602B8];
  *(v5 + 296) = v18;
  *(v5 + 304) = v22;
  *(v5 + 272) = v21;
  v23 = sub_267EF4E58();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_267EF4E48();
  v27 = MEMORY[0x277D60298];
  *(v5 + 336) = v23;
  *(v5 + 344) = v27;
  *(v5 + 312) = v26;
  v28 = sub_267EF4DA8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_267EF4D98();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v31 = sub_267EF8A08();
  __swift_project_value_buffer(v31, qword_280240FB0);
  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_267B93000, v32, v33, "ConfirmationSignalContext: gathering signals", v34, 2u);
    MEMORY[0x26D60A7B0](v34, -1, -1);
  }

  v35 = swift_allocObject();
  v35[2] = v4;
  v35[3] = a1;
  v35[4] = a2;

  sub_267EF4D78();
}

uint64_t sub_267DFF8AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v73 = a4;
  v74 = a3;
  v77 = a2;
  v75 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C400, &unk_267F0A700);
  v4 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v6 = (&v69 - v5);
  v7 = sub_267EF4D68();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v69 - v12;
  v14 = sub_267EF4E88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v71 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v69 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A118, &qword_267F004A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v69 - v26;
  sub_267E004E4(v75, &v69 - v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v23, v27, v14);
    if (qword_280228818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v39 = v72;
    (*(v72 + 32))(v13, v27, v7);
    v40 = v7;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v41 = sub_267EF8A08();
    __swift_project_value_buffer(v41, qword_280240FB0);
    (*(v39 + 16))(v11, v13, v7);
    v42 = sub_267EF89F8();
    v43 = sub_267EF95D8();
    v44 = os_log_type_enabled(v42, v43);
    v70 = v40;
    if (v44)
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      sub_267EF4D48();
      v47 = v46;
      v71 = *(v39 + 8);
      v71(v11, v40);
      *(v45 + 4) = v47 * 1000.0;
      _os_log_impl(&dword_267B93000, v42, v43, "ConfirmationSignalContext: gathered signals in %f ms", v45, 0xCu);
      MEMORY[0x26D60A7B0](v45, -1, -1);
    }

    else
    {

      v71 = *(v39 + 8);
      v71(v11, v40);
    }

    v75 = v13;
    v49 = sub_267EF4D58();
    v15 = v49;
    v50 = v49 + 64;
    v51 = 1 << *(v49 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v23 = v52 & *(v49 + 64);
    v53 = (v51 + 63) >> 6;

    v21 = 0;
    while (v23)
    {
      v54 = v21;
LABEL_19:
      v55 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v14 = v55 | (v54 << 6);
      v56 = *(v15 + 56);
      v57 = (*(v15 + 48) + 16 * v14);
      v58 = *v57;
      v59 = v57[1];
      v60 = sub_267EF4D18();
      v61 = *(v60 - 8);
      v62 = v56 + *(v61 + 72) * v14;
      v63 = *(v76 + 48);
      (*(v61 + 16))(v6 + v63, v62, v60);
      *v6 = v58;
      v6[1] = v59;

      sub_267DFFFE8(v58, v59, v6 + v63, (v77 + 16));
      sub_267E00554(v6);
    }

    while (1)
    {
      v54 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v54 >= v53)
      {

        v71(v75, v70);

        goto LABEL_22;
      }

      v23 = *(v50 + 8 * v54);
      ++v21;
      if (v23)
      {
        v21 = v54;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v28 = sub_267EF8A08();
  __swift_project_value_buffer(v28, qword_280240FB0);
  v29 = *(v15 + 16);
  v29(v21, v23, v14);
  v30 = sub_267EF89F8();
  v31 = sub_267EF95E8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v76 = v23;
    v33 = v78;
    *v32 = 136315138;
    v29(v71, v21, v14);
    v34 = sub_267EF9098();
    v36 = v35;
    v37 = *(v15 + 8);
    v37(v21, v14);
    v38 = sub_267BA33E8(v34, v36, &v78);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_267B93000, v30, v31, "ConfirmationSignalContext: signal gatherer error: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D60A7B0](v33, -1, -1);
    MEMORY[0x26D60A7B0](v32, -1, -1);

    v37(v76, v14);
  }

  else
  {

    v48 = *(v15 + 8);
    v48(v21, v14);
    v48(v23, v14);
  }

LABEL_22:
  v64 = v74;
  v65 = v77;
  swift_beginAccess();
  v66 = *(v65 + 16);

  v64(v67);
}

void sub_267DFFFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_267EF4D18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, a3, v6);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D60170])
  {
    (*(v7 + 96))(v10, v6);
    v11 = *v10;
    swift_beginAccess();
    v12 = *a4;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *a4;
    sub_267BE4A04();
    *a4 = v17;
    swift_endAccess();
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, v14, v15, "ConfirmationSignalContext: Ignoring bundle-dependent signal; can only use independent signals in this context", v16, 2u);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }
  }
}

uint64_t sub_267E00234(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v57 = a5;
  sub_267EDB728(v52);
  v7 = v52[1];
  v8 = v54;
  v9 = v55;
  v47 = v56;
  v48 = v52[0];
  v44 = v53;
  v10 = (v53 + 64) >> 6;

  v45 = a3;

  v46 = v7;
  if (v9)
  {
    while (1)
    {
      v49 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v48 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v48 + 56) + 8 * v13);
      v51[0] = *v14;
      v51[1] = v15;
      v51[2] = v16;

      v47(v50, v51);

      v17 = v50[0];
      v18 = v50[1];
      v19 = v50[2];
      v20 = *v57;
      v28 = sub_267BA9948();
      v29 = *(v20 + 16);
      v30 = (v21 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        break;
      }

      v32 = v21;
      if (*(v20 + 24) >= v31)
      {
        if ((v49 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C408, &unk_267F0A710);
          sub_267EF9C78();
        }
      }

      else
      {
        v33 = v57;
        sub_267CFAB30(v31, v49 & 1, v22, v23, v24, v25, v26, v27, v43, v44, v45, SBYTE4(v45));
        v34 = *v33;
        v35 = sub_267BA9948();
        if ((v32 & 1) != (v36 & 1))
        {
          goto LABEL_24;
        }

        v28 = v35;
      }

      v9 &= v9 - 1;
      v37 = *v57;
      if (v32)
      {

        *(v37[7] + 8 * v28) = v19;
      }

      else
      {
        v37[(v28 >> 6) + 8] |= 1 << v28;
        v38 = (v37[6] + 16 * v28);
        *v38 = v17;
        v38[1] = v18;
        *(v37[7] + 8 * v28) = v19;
        v39 = v37[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v37[2] = v41;
      }

      a4 = 1;
      v8 = v11;
      v7 = v46;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_267C095D8();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v49 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267E004E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A118, &qword_267F004A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E00554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C400, &unk_267F0A700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267E005BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267ED96F4(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfirmationSignalContext.TaskLabel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267E00724()
{
  result = qword_28022C420;
  if (!qword_28022C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C420);
  }

  return result;
}

uint64_t type metadata accessor for MessagesCATsSimple()
{
  result = qword_28022C428;
  if (!qword_28022C428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267E00814(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_267E00834, 0, 0);
}

uint64_t sub_267E00834()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 0x7453656369766564;
  *(v2 + 40) = 0xEB00000000657461;
  v3 = 0;
  if (v1)
  {
    v3 = sub_267EF7AE8();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(MEMORY[0x277D55C70] + 4);
  v8 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_267E00984;
  v6 = v0[3];

  return v8(0xD000000000000011, 0x8000000267F1AEF0, v2);
}

uint64_t sub_267E00984(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_267E00ADC, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_267E00ADC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_267E00B40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267E00B94(a1, a2);
}

uint64_t sub_267E00B94(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF7B88();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_267BB3794(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_267EF79C8();
  (*(v8 + 8))(a2, v2);
  sub_267BB2D24(a1);
  return v16;
}

uint64_t sub_267E00CF0(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF7B88();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_267EF79D8();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_267E00DF8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280228730 != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v2 = qword_280240A10;
  v13 = type metadata accessor for EligibleAppFinder();
  OUTLINED_FUNCTION_24_28();
  v14 = sub_267B9DEEC(v3, v4);
  *&v12 = v2;
  v5 = type metadata accessor for ExperimentSignalGatherer();
  v6 = swift_allocObject();
  *(v6 + 16) = 0x4024000000000000;
  v10 = v5;
  v11 = &off_2878D94E8;
  *&v9 = v6;
  a1[3] = &type metadata for UserPersonaSignalCollector;
  a1[4] = &off_2878D9498;
  OUTLINED_FUNCTION_74_9();
  v7 = swift_allocObject();
  *a1 = v7;

  return sub_267EDEDFC(&v12, &v9, (v7 + 16));
}

void sub_267E00EFC()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v51 = v2;
  v3 = sub_267EF7B88();
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229208, &qword_267EFCB90);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_267EFCE30;
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v8);
  (*(v9 + 8))(&v58, v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs);
  v56 = &type metadata for MessagesFeatureFlagsImpl;
  v57 = &off_2878D1228;
  v11 = type metadata accessor for SendMessageUnsupportedUseCaseCheckFlowStrategy();
  OUTLINED_FUNCTION_74_9();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v55, &type metadata for MessagesFeatureFlagsImpl);
  v12[11] = &type metadata for MessagesFeatureFlagsImpl;
  v12[12] = &off_2878D1228;
  sub_267B9A5E8(&v58, (v12 + 2));
  v12[7] = v10;
  swift_retain_n();
  __swift_destroy_boxed_opaque_existential_0(v55);
  *(v7 + 56) = v11;
  *(v7 + 64) = &off_2878D9278;
  *(v7 + 32) = v12;
  OUTLINED_FUNCTION_62_9();
  v14 = *(v13 + 24);
  v15 = OUTLINED_FUNCTION_10_0();
  v16(v15);
  OUTLINED_FUNCTION_62_9();
  v18 = *(v17 + 8);
  v19 = OUTLINED_FUNCTION_10_0();
  v20(v19);
  v21 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v22 = qword_2802286F0;
  v23 = v21;
  if (v22 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  sub_267B9AFEC(qword_2802405A0, v52);
  __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  v24 = sub_267E09270(&v58, v55, v23);

  __swift_destroy_boxed_opaque_existential_0(v52);
  *(v7 + 96) = type metadata accessor for LocationAccessCheckStrategy();
  *(v7 + 104) = &off_2878D2738;
  *(v7 + 72) = v24;
  OUTLINED_FUNCTION_62_9();
  v26 = *(v25 + 8);
  v27 = OUTLINED_FUNCTION_10_0();
  v28(v27);
  v29 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs);
  sub_267B9AFEC(v1 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags, v55);
  v30 = sub_267BA9F38(0, &qword_28022C3F0, 0x277CDCEB8);
  __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  v53 = &type metadata for MessagesFeatureFlagsImpl;
  v54 = &off_2878D1228;
  v31 = type metadata accessor for LanguageUnsupportedCheckFlowStrategy();
  v32 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v52, &type metadata for MessagesFeatureFlagsImpl);
  v32[16] = &type metadata for MessagesFeatureFlagsImpl;
  v32[17] = &off_2878D1228;
  v32[9] = 0;
  v32[10] = 0;
  sub_267B9A5E8(&v58, (v32 + 2));
  v32[7] = v10;
  v32[8] = v29;
  v33 = MEMORY[0x277D5D990];
  v32[11] = v30;
  v32[12] = v33;

  __swift_destroy_boxed_opaque_existential_0(v52);
  __swift_destroy_boxed_opaque_existential_0(v55);
  *(v7 + 136) = v31;
  *(v7 + 144) = &off_2878D3560;
  *(v7 + 112) = v32;
  if (v51)
  {
    v34 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v35 = v34[1];
    v36 = OUTLINED_FUNCTION_10_3();
    v37(v36);
    v38 = type metadata accessor for NetworkStatusProvider();
    v39 = OUTLINED_FUNCTION_49();
    type metadata accessor for MessagesCATs();
    OUTLINED_FUNCTION_78_15();
    OUTLINED_FUNCTION_18_32();
    v40 = sub_267EF78E8();
    v56 = v38;
    v57 = &off_2878D2ED0;
    v55[0] = v39;
    v41 = type metadata accessor for OfflineCheckFlowStrategy();
    OUTLINED_FUNCTION_74_9();
    v42 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v55, v38);
    OUTLINED_FUNCTION_23();
    v44 = *(v43 + 64);
    MEMORY[0x28223BE20](v45);
    OUTLINED_FUNCTION_0_0();
    v47 = OUTLINED_FUNCTION_28_29(v46);
    v48(v47);
    v49 = *v34;
    v42[10] = v38;
    v42[11] = &off_2878D2ED0;
    v42[7] = v49;
    sub_267B9A5E8(&v58, (v42 + 2));
    v42[12] = v40;
    __swift_destroy_boxed_opaque_existential_0(v55);
    v59 = v41;
    v60 = &off_2878D2580;
    *&v58 = v42;
    sub_267B9A5E8(&v58, v55);
    v52[0] = v7;
    if (*(v7 + 16) >= *(v7 + 24) >> 1)
    {
      sub_267C70ADC();
      v52[0] = v50;
    }

    sub_267C730A8();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E0138C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_267EF93F8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_46_19();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = &unk_267F0AA80;
  v13[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267E01490()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267BCADB0();
}

uint64_t sub_267E0152C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1448);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E01610()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  sub_267BCDB80(v0 + 304);
  __swift_destroy_boxed_opaque_existential_0((v0 + 856));
  OUTLINED_FUNCTION_4_56();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_267E016AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1464);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E01790()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_4_56();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_267E0181C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 1488);
  v5 = *(v2 + 1480);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v3 + 1496) = v0;

  __swift_destroy_boxed_opaque_existential_0((v3 + 776));
  if (v0)
  {
    v8 = sub_267E019F0;
  }

  else
  {
    v8 = sub_267E0194C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267E0194C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();

  v1 = *(v0 + 1336);
  sub_267EF4018();
  __swift_destroy_boxed_opaque_existential_0((v0 + 736));
  OUTLINED_FUNCTION_4_56();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267E019F0()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1472);

  v3 = v1;
  v4 = sub_267EF89F8();
  sub_267EF95E8();

  v5 = OUTLINED_FUNCTION_99();
  v6 = *(v0 + 1496);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_48();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_267B9F98C(v8, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v16 = *(v0 + 1336);
  sub_267EF4018();
  __swift_destroy_boxed_opaque_existential_0((v0 + 736));
  OUTLINED_FUNCTION_4_56();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_267E01B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SendMessageFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*(a1 + 8) == 1)
  {
    *v9 = v10;
  }

  else
  {
    if (!v10)
    {
      sub_267B9AFEC(a3, v9);
      v9[40] = 0;
      swift_storeEnumTagMultiPayload();
      v15 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
      swift_beginAccess();
      v13 = a2 + v15;
      goto LABEL_6;
    }

    *v9 = v10;
  }

  swift_storeEnumTagMultiPayload();
  v11 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  swift_beginAccess();
  v12 = v10;
  v13 = a2 + v11;
LABEL_6:
  sub_267B9DC10(v9, v13);
  return swift_endAccess();
}

uint64_t sub_267E01CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SendMessageFlow.State(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v9 = (v8 - v7);
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  swift_beginAccess();
  sub_267BCACA4(v1 + v10, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    *a1 = *v9;
    *(a1 + 8) = 0;
    v19 = *MEMORY[0x277D5BC98];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229978, &unk_267EFEBD0);
    OUTLINED_FUNCTION_22(v20);
    return (*(v21 + 104))(a1, v19);
  }

  else if (EnumCaseMultiPayload == 8)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C538, &qword_267F0AA48) + 48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229978, &unk_267EFEBD0);
    OUTLINED_FUNCTION_22(v13);
    v15 = *(v14 + 32);
    v16 = OUTLINED_FUNCTION_26_0();
    v17(v16);
    return sub_267B9F98C(v9 + v12, &qword_28022C4A8, &qword_267F0A8E0);
  }

  else
  {
    sub_267C4BE60();
    v22 = swift_allocError();
    *v23 = 0;
    v23[1] = 0;
    *a1 = v22;
    *(a1 + 8) = 0;
    v24 = *MEMORY[0x277D5BC98];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229978, &unk_267EFEBD0);
    OUTLINED_FUNCTION_22(v25);
    (*(v26 + 104))(a1, v24);
    return sub_267B9F118(v9);
  }
}

uint64_t sub_267E01EA0@<X0>(uint64_t *a1@<X8>)
{
  sub_267EF3828();
  result = sub_267EF3818();
  *a1 = result;
  return result;
}

void sub_267E01ED8()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v3 = type metadata accessor for SendMessageFlow.State(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = sub_267EF43F8();
  OUTLINED_FUNCTION_23();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229218, &unk_267EFCBA0);
  v19 = *(sub_267EF3488() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_267EFC020;
  sub_267EF43E8();
  sub_267EF3478();
  (*(v12 + 8))(v18, v10);
  v22 = sub_267EF2F28();

  swift_storeEnumTagMultiPayload();
  v23 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  OUTLINED_FUNCTION_66_3();
  sub_267B9DC10(v9, v0 + v23);
  swift_endAccess();
  v26 = v22;
  sub_267B9AFEC(v2, v25);
  OUTLINED_FUNCTION_46_19();
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  sub_267B9A5E8(v25, v24 + 24);
  sub_267EF3428();

  sub_267EF3FC8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E02144(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SendMessageFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95E8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_267B93000, v11, v12, "#SendMessageFlow error while trying to unlock the device", v13, 2u);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }

    v14 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C538, &qword_267F0AA48) + 48)];
    v15 = *MEMORY[0x277D5BCA8];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229978, &unk_267EFEBD0);
    (*(*(v16 - 8) + 104))(v9, v15, v16);
    *(v14 + 4) = 0;
    *v14 = 0u;
    *(v14 + 1) = 0u;
    v14[40] = -1;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v17 = sub_267EF8A08();
    __swift_project_value_buffer(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    v19 = sub_267EF95C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_267B93000, v18, v19, "#SendMessageFlow device unlocked successfully", v20, 2u);
      MEMORY[0x26D60A7B0](v20, -1, -1);
    }

    sub_267B9AFEC(a3, v9);
    v9[40] = 0;
  }

  swift_storeEnumTagMultiPayload();
  v21 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  swift_beginAccess();
  sub_267B9DC10(v9, a2 + v21);
  return swift_endAccess();
}

uint64_t sub_267E02428()
{
  OUTLINED_FUNCTION_12();
  v1[110] = v0;
  v1[109] = v2;
  v1[108] = v3;
  v4 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64) + 15;
  v1[111] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E024B0()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = *(v0 + 880);
  v11 = *(v0 + 872);

  sub_267B9AFEC(v11, v0 + 16);
  sub_267B9AFEC(v10 + 16, v0 + 56);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v12 = *(v0 + 888);
  type metadata accessor for SendMessageCATs();
  sub_267EF7B68();
  v13 = sub_267EF78E8();
  v14 = [objc_opt_self() sharedService];
  sub_267EF8668();
  v15 = sub_267EF8938();
  v16 = sub_267EF8928();
  v17 = MEMORY[0x277D5FDD8];
  *(v0 + 320) = v15;
  *(v0 + 328) = v17;
  *(v0 + 296) = v16;
  *(v0 + 360) = &type metadata for NowPlayingMediaProvider;
  *(v0 + 368) = &off_2878D3EE8;
  *(v0 + 400) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 408) = &off_2878D1228;
  type metadata accessor for ShareThisFlow();
  v18 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 336, &type metadata for NowPlayingMediaProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 376, &type metadata for MessagesFeatureFlagsImpl);
  *(v0 + 440) = &type metadata for NowPlayingMediaProvider;
  *(v0 + 448) = &off_2878D3EE8;
  *(v0 + 480) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 488) = &off_2878D1228;
  *(v18 + 208) = 0;
  *(v18 + 216) = 0;
  *(v18 + 472) = &type metadata for SiriSuggestionsEngagementDonator;
  *(v18 + 480) = &off_2878D24F8;
  *(v18 + 72) = v14;
  *(v18 + 120) = v13;
  sub_267C266B0();
  v19 = swift_allocError();
  *v20 = 0xD00000000000001DLL;
  v20[1] = 0x8000000267F1B000;
  *(v18 + 56) = v19;
  *(v18 + 64) = 256;
  sub_267B9AFEC(v0 + 16, v18 + 168);
  sub_267C2FB6C(v0 + 96, v18 + 80, &qword_28022ADD8, &unk_267F04200);
  sub_267B9AFEC(v0 + 256, v18 + 128);
  sub_267B9AFEC(v0 + 416, v18 + 224);
  sub_267B9AFEC(v0 + 456, v18 + 264);
  sub_267B9AFEC(v0 + 296, v18 + 304);
  *(v18 + 464) = 0;
  *(v0 + 520) = &type metadata for Features;
  *(v0 + 528) = sub_267BAFCAC();
  *(v0 + 496) = 21;
  LOBYTE(v13) = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  if (v13)
  {
    sub_267C2FB6C(v0 + 216, v0 + 776, &unk_28022ADE0, &qword_267F0AA60);
    if (*(v0 + 800))
    {
      sub_267B9A5E8((v0 + 776), v0 + 736);
    }

    else
    {
      sub_267B9AFEC(v18 + 304, v0 + 816);
      v21 = type metadata accessor for SiriGeneratedResponseProvider();
      v22 = swift_allocObject();
      sub_267B9A5E8((v0 + 816), v22 + 16);
      *(v0 + 760) = v21;
      *(v0 + 768) = &off_2878D04E0;
      *(v0 + 736) = v22;
      if (*(v0 + 800))
      {
        sub_267B9F98C(v0 + 776, &unk_28022ADE0, &qword_267F0AA60);
      }
    }

    v23 = *(v0 + 752);
    *(v18 + 344) = *(v0 + 736);
    *(v18 + 360) = v23;
    *(v18 + 376) = *(v0 + 768);
  }

  else
  {
    *(v18 + 376) = 0;
    *(v18 + 344) = 0u;
    *(v18 + 360) = 0u;
  }

  sub_267C2FB6C(v0 + 136, v0 + 576, &qword_28022C540, &qword_267F0AA50);
  if (*(v0 + 600))
  {
    sub_267B9A5E8((v0 + 576), v0 + 536);
  }

  else
  {
    *(v0 + 560) = sub_267EF8618();
    *(v0 + 568) = &off_2878D2840;
    __swift_allocate_boxed_opaque_existential_0((v0 + 536));
    sub_267EF8608();
    if (*(v0 + 600))
    {
      sub_267B9F98C(v0 + 576, &qword_28022C540, &qword_267F0AA50);
    }
  }

  sub_267B9A5E8((v0 + 536), v18 + 384);
  sub_267C2FB6C(v0 + 176, v0 + 656, &qword_28022C548, &qword_267F0AA58);
  if (*(v0 + 680))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    sub_267B9F98C(v0 + 216, &unk_28022ADE0, &qword_267F0AA60);
    sub_267B9F98C(v0 + 176, &qword_28022C548, &qword_267F0AA58);
    sub_267B9F98C(v0 + 136, &qword_28022C540, &qword_267F0AA50);
    sub_267B9F98C(v0 + 96, &qword_28022ADD8, &unk_267F04200);
    OUTLINED_FUNCTION_69_10();
    sub_267B9A5E8((v0 + 656), v0 + 616);
  }

  else
  {
    *(v0 + 640) = sub_267EF8658();
    *(v0 + 648) = &off_2878D2850;
    __swift_allocate_boxed_opaque_existential_0((v0 + 616));
    sub_267EF8648();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    sub_267B9F98C(v0 + 216, &unk_28022ADE0, &qword_267F0AA60);
    sub_267B9F98C(v0 + 176, &qword_28022C548, &qword_267F0AA58);
    sub_267B9F98C(v0 + 136, &qword_28022C540, &qword_267F0AA50);
    sub_267B9F98C(v0 + 96, &qword_28022ADD8, &unk_267F04200);
    OUTLINED_FUNCTION_69_10();
    if (*(v0 + 680))
    {
      sub_267B9F98C(v0 + 656, &qword_28022C548, &qword_267F0AA58);
    }
  }

  v24 = *(v0 + 888);
  v25 = *(v0 + 880);
  v26 = *(v0 + 872);
  v27 = *(v0 + 864);
  sub_267B9A5E8((v0 + 616), v18 + 424);
  sub_267B9A5E8((v0 + 56), v18 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  *(v0 + 856) = v18;
  sub_267B9AFEC(v26, v0 + 696);
  OUTLINED_FUNCTION_46_19();
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  sub_267B9A5E8((v0 + 696), v28 + 24);
  sub_267B9DEEC(&qword_28022C550, type metadata accessor for ShareThisFlow);

  sub_267EF3FC8();

  OUTLINED_FUNCTION_17();

  return v29();
}

uint64_t sub_267E02B64(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for SendMessageFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  if (*(a1 + 9) == 1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v12 = sub_267EF8A08();
    __swift_project_value_buffer(v12, qword_280240FB0);
    v13 = v10;
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (!os_log_type_enabled(v14, v15))
    {

      sub_267D240BC(v10, v11, 1);
LABEL_26:
      v31 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C538, &qword_267F0AA48) + 48)];
      v32 = *MEMORY[0x277D5BCA8];
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229978, &unk_267EFEBD0);
      (*(*(v33 - 8) + 104))(v9, v32, v33);
      *(v31 + 4) = 0;
      *v31 = 0u;
      *(v31 + 1) = 0u;
      v31[40] = -1;
      goto LABEL_27;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v54[0] = v17;
    *v16 = 136315138;
    v54[5] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v18 = sub_267EF9098();
    v20 = sub_267BA33E8(v18, v19, v54);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_267B93000, v14, v15, "#SendMessageFlow received error from ShareThisFlow: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x26D60A7B0](v17, -1, -1);
    goto LABEL_24;
  }

  if (!v10)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v30 = sub_267EF8A08();
    __swift_project_value_buffer(v30, qword_280240FB0);
    v14 = sub_267EF89F8();
    v22 = sub_267EF95C8();
    if (!os_log_type_enabled(v14, v22))
    {
      goto LABEL_25;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v23 = "#SendMessageFlow screenshot fallback was declined";
LABEL_23:
    _os_log_impl(&dword_267B93000, v14, v22, v23, v16, 2u);
LABEL_24:
    MEMORY[0x26D60A7B0](v16, -1, -1);
LABEL_25:

    goto LABEL_26;
  }

  if (v10 != 1)
  {
    if (v10 == 2)
    {
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v21 = sub_267EF8A08();
      __swift_project_value_buffer(v21, qword_280240FB0);
      v14 = sub_267EF89F8();
      v22 = sub_267EF95C8();
      if (!os_log_type_enabled(v14, v22))
      {
        goto LABEL_25;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v23 = "#SendMessageFlow intent was handled by Expanse";
      goto LABEL_23;
    }

    v36 = *(a1 + 8);
    sub_267D240AC(*a1);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v37 = sub_267EF8A08();
    __swift_project_value_buffer(v37, qword_280240FB0);
    v38 = sub_267EF89F8();
    v39 = sub_267EF95C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_267B93000, v38, v39, "#SendMessageFlow we have attachments from ShareThisFlow", v40, 2u);
      MEMORY[0x26D60A7B0](v40, -1, -1);
    }

    v54[3] = &type metadata for Features;
    v54[4] = sub_267BAFCAC();
    LOBYTE(v54[0]) = 16;
    v41 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v54);
    if (v41)
    {
      v42 = a3[3];
      v43 = a3[4];
      __swift_project_boxed_opaque_existential_0(a3, v42);
      v44 = (*(v43 + 368))(v42, v43);
      if (v45)
      {
        if (v44 == 0xD000000000000013 && v45 == 0x8000000267F10280)
        {
        }

        else
        {
          v47 = sub_267EF9EA8();

          if ((v47 & 1) == 0)
          {
            v48 = sub_267EF89F8();
            v49 = sub_267EF95D8();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              *v50 = 0;
              _os_log_impl(&dword_267B93000, v48, v49, "#SendMessageFlow User requested to share with app that is not Messages app. Required to present a sharesheet instead of a snippet", v50, 2u);
              MEMORY[0x26D60A7B0](v50, -1, -1);
            }

            sub_267B9AFEC(a3, v9);
            *(v9 + 5) = v10;
            goto LABEL_27;
          }
        }
      }
    }

    sub_267D240A0(v10, v11, 0);
    v51 = sub_267EF89F8();
    v52 = sub_267EF95D8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = sub_267BAF0DC(v10);
      sub_267D240BC(v10, v11, 0);
      _os_log_impl(&dword_267B93000, v51, v52, "#SendMessageFlow sharing with Messages app using Siri snippets, attachment count is %ld", v53, 0xCu);
      MEMORY[0x26D60A7B0](v53, -1, -1);
    }

    else
    {
      sub_267D240BC(v10, v11, 0);
    }

    sub_267B9AFEC(a3, v9);
    v9[40] = 0;
    *(v9 + 6) = v10;
    sub_267B9AFEC(a3, (v9 + 56));
    v9[96] = v11 & 1;
    goto LABEL_27;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v24 = sub_267EF8A08();
  __swift_project_value_buffer(v24, qword_280240FB0);
  v25 = sub_267EF89F8();
  v26 = sub_267EF95C8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_267B93000, v25, v26, "#SendMessageFlow ShareThisResult is unsupported, this request is over", v27, 2u);
    MEMORY[0x26D60A7B0](v27, -1, -1);
  }

  sub_267E09FE8();
  v28 = swift_allocError();
  *v29 = xmmword_267F0A870;
  *v9 = v28;
LABEL_27:
  swift_storeEnumTagMultiPayload();
  v34 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  swift_beginAccess();
  sub_267B9DC10(v9, a2 + v34);
  return swift_endAccess();
}

uint64_t sub_267E03358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v57 = a2;
  v55 = type metadata accessor for SendMessageFlow.State(0);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229978, &unk_267EFEBD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v49 - v16);
  v18 = *(v8 + 16);
  v18(&v49 - v16, a1, v7);
  v19 = (*(v8 + 88))(v17, v7);
  v20 = *MEMORY[0x277D5BCA0];
  v54 = a1;
  if (v19 == v20)
  {
    (*(v8 + 8))(v17, v7);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95C8();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "#SendMessageFlow RCHFlow completed";
LABEL_6:
    _os_log_impl(&dword_267B93000, v22, v23, v25, v24, 2u);
    MEMORY[0x26D60A7B0](v24, -1, -1);
LABEL_17:

    goto LABEL_18;
  }

  if (v19 == *MEMORY[0x277D5BC98])
  {
    (*(v8 + 96))(v17, v7);
    v26 = *v17;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v27 = sub_267EF8A08();
    __swift_project_value_buffer(v27, qword_280240FB0);
    v28 = v26;
    v22 = sub_267EF89F8();
    v29 = sub_267EF95E8();

    if (!os_log_type_enabled(v22, v29))
    {

      goto LABEL_18;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138543362;
    v32 = v26;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_267B93000, v22, v29, "#SendMessageFlow RCHFlow exited with error: %{public}@", v30, 0xCu);
    sub_267B9F98C(v31, &unk_280229E30, &unk_267EFC270);
    MEMORY[0x26D60A7B0](v31, -1, -1);
    MEMORY[0x26D60A7B0](v30, -1, -1);

    goto LABEL_17;
  }

  if (v19 == *MEMORY[0x277D5BCA8])
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v34 = sub_267EF8A08();
    __swift_project_value_buffer(v34, qword_280240FB0);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95C8();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "#SendMessageFlow RCHFlow cancelled";
    goto LABEL_6;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v39 = sub_267EF8A08();
  __swift_project_value_buffer(v39, qword_280240FB0);
  v18(v15, a1, v7);
  v40 = sub_267EF89F8();
  v53 = sub_267EF95E8();
  if (os_log_type_enabled(v40, v53))
  {
    v41 = swift_slowAlloc();
    v51 = v41;
    v52 = swift_slowAlloc();
    v58 = v52;
    *v41 = 136315138;
    v18(v12, v15, v7);
    v49 = sub_267EF9098();
    v50 = v40;
    v43 = v42;
    v44 = *(v8 + 8);
    v44(v15, v7);
    v45 = sub_267BA33E8(v49, v43, &v58);

    v47 = v50;
    v46 = v51;
    *(v51 + 1) = v45;
    _os_log_impl(&dword_267B93000, v47, v53, "#SendMessageFlow RCHFlow exited with unknown result: %s", v46, 0xCu);
    v48 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x26D60A7B0](v48, -1, -1);
    MEMORY[0x26D60A7B0](v46, -1, -1);
  }

  else
  {

    v44 = *(v8 + 8);
    v44(v15, v7);
  }

  v44(v17, v7);
LABEL_18:
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C538, &qword_267F0AA48) + 48);
  v18(v6, v54, v7);
  sub_267BCCFA4(v56, &v6[v35]);
  swift_storeEnumTagMultiPayload();
  v36 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  v37 = v57;
  swift_beginAccess();
  sub_267B9DC10(v6, v37 + v36);
  return swift_endAccess();
}

uint64_t sub_267E03A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v208 = a4;
  v222 = a1;
  v223 = a3;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v214 = *(v221 - 1);
  v5 = *(v214 + 64);
  MEMORY[0x28223BE20](v221);
  v210 = &v198 - v6;
  v7 = sub_267EF7B88();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v215 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_267EF68A8();
  v220 = *(v211 - 8);
  v10 = *(v220 + 64);
  MEMORY[0x28223BE20](v211);
  v219 = &v198 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v209 = &v198 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v225 = &v198 - v17;
  MEMORY[0x28223BE20](v16);
  v226 = &v198 - v18;
  v19 = sub_267EF49A8();
  v217 = *(v19 - 8);
  v218 = v19;
  v20 = *(v217 + 8);
  MEMORY[0x28223BE20](v19);
  v216 = (&v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_267EF42F8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v227 = &v198 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_267EF44C8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v207 = &v198 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v212 = &v198 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v213 = &v198 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v198 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v198 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  sub_267EF4938();
  sub_267EF44B8();
  v42 = *(v26 + 8);
  v40 = v26 + 8;
  v41 = v42;
  v224 = v25;
  v42(v38, v25);
  v43 = sub_267EF4918();
  v44 = sub_267EF4908();
  v46 = sub_267E07B20(v44, v45, v43);

  v228 = a2;
  if (v46)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v47 = sub_267EF8A08();
    __swift_project_value_buffer(v47, qword_280240FB0);
    v48 = v46;
    v49 = sub_267EF89F8();
    v50 = sub_267EF95C8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v290[0] = v52;
      *v51 = 136446210;
      v53 = sub_267EF9028();
      v55 = sub_267BA33E8(v53, v54, v290);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_267B93000, v49, v50, "#SendMessageFlow Detected unset relationship %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x26D60A7B0](v52, -1, -1);
      MEMORY[0x26D60A7B0](v51, -1, -1);
    }

    sub_267EF42E8();
    type metadata accessor for SendMessageState();
    swift_allocObject();
    v225 = sub_267BC963C(2);
    sub_267B9AFEC(v223 + 16, v290);
    v226 = v48;
    if (qword_2802286F0 != -1)
    {
      swift_once();
    }

    sub_267B9AFEC(qword_2802405A0, v251);
    v56 = type metadata accessor for UnsetRelationshipTemplatesWrapper();
    v57 = swift_allocObject();
    v58 = v216;
    sub_267EF4998();
    sub_267EF8938();
    v224 = sub_267EF8928();
    v223 = sub_267EF3AA8();
    __swift_mutable_project_boxed_opaque_existential_1(v251, v251[3]);
    v301 = &type metadata for CATProvider;
    v302 = &off_2878CE7A0;
    v298 = v56;
    v299 = &off_2878CF9B8;
    v297[0] = v57;
    v59 = v218;
    v295 = v218;
    v296 = &off_2878CF9A0;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v294);
    v61 = v217;
    (*(v217 + 2))(boxed_opaque_existential_0, v58, v59);
    v293[3] = &type metadata for MessagesFeatureFlagsImpl;
    v293[4] = &off_2878D1228;
    v62 = type metadata accessor for SendMessageUnsetRelationshipFlowStrategy();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    v65 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v300, v301);
    v66 = v298;
    v67 = __swift_mutable_project_boxed_opaque_existential_1(v297, v298);
    v221 = &v198;
    v68 = *(*(v66 - 8) + 64);
    MEMORY[0x28223BE20](v67);
    v70 = (&v198 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v71 + 16))(v70);
    v72 = v295;
    v73 = __swift_mutable_project_boxed_opaque_existential_1(v294, v295);
    v74 = *(*(v72 - 8) + 64);
    MEMORY[0x28223BE20](v73);
    v76 = &v198 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v77 + 16))(v76);
    __swift_mutable_project_boxed_opaque_existential_1(v293, &type metadata for MessagesFeatureFlagsImpl);
    v78 = sub_267E0954C(v227, v225, v290, *v70, v76, v224, v223, &off_2878D5360, v65);
    (*(v61 + 1))(v58, v59);
    __swift_destroy_boxed_opaque_existential_0(v293);
    __swift_destroy_boxed_opaque_existential_0(v294);
    __swift_destroy_boxed_opaque_existential_0(v297);
    __swift_destroy_boxed_opaque_existential_0(v300);
    __swift_destroy_boxed_opaque_existential_0(v251);
    *&v290[0] = v78;
    sub_267BA9F38(0, &qword_280229718, 0x277CD4080);
    sub_267B9DEEC(&qword_28022C528, type metadata accessor for SendMessageUnsetRelationshipFlowStrategy);
    v79 = sub_267EF35F8();
    v80 = v79(v222, v228);

    return v80;
  }

  v81 = v213;
  sub_267EF4938();
  v82 = sub_267EF44B8();
  v84 = v83;
  v41(v36, v224);
  v85 = v82 == 0x6E65697069636572 && v84 == 0xE900000000000074;
  v86 = v39;
  if (v85)
  {

    v88 = v220;
  }

  else
  {
    v87 = sub_267EF9EA8();

    v88 = v220;
    if ((v87 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  sub_267EF4938();
  v89 = sub_267EF44A8();
  v91 = v90;
  v41(v81, v224);
  if ((v91 & 1) != 0 || (v92 = sub_267EF4918(), (v93 = sub_267EB7470(v92)) == 0) || (v94 = sub_267EB0E0C(v89, v93), , !v94))
  {
LABEL_23:
    v217 = v41;
    v218 = v40;
    v227 = v86;
    sub_267B9AFEC(v223 + 16, v300);
    __swift_storeEnumTagSinglePayload(v226, 1, 1, v221);
    v97 = sub_267EF8938();
    v98 = sub_267EF8928();
    v298 = v97;
    v299 = MEMORY[0x277D5FDD8];
    v198 = v97;
    v297[0] = v98;
    v213 = sub_267EF3AA8();
    sub_267EF3838();
    v99 = type metadata accessor for NetworkStatusProvider();
    v100 = swift_allocObject();
    sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
    sub_267BF0A00(v293);
    sub_267EF8668();
    v101 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
    v102 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
    v291[4] = &off_2878CF540;
    v291[3] = v102;
    v291[0] = v101;
    v103 = sub_267EF72E8();
    v104 = v219;
    sub_267EF6898();
    ConversationEventStore.init()(v290);
    if (qword_280228730 != -1)
    {
      swift_once();
    }

    v105 = qword_280240A10;
    v201 = qword_280240A10;
    v289[3] = type metadata accessor for EligibleAppFinder();
    v289[4] = sub_267B9DEEC(&qword_28022A688, type metadata accessor for EligibleAppFinder);
    v289[0] = v105;
    v106 = type metadata accessor for ShareSheetProvider();
    v107 = swift_allocObject();
    v287 = &type metadata for CATProvider;
    v288 = &off_2878CE7A0;
    v284 = &type metadata for MessagesFeatureFlagsImpl;
    v285 = &off_2878D1228;
    v282 = &off_2878D2ED0;
    v281 = v99;
    v280[0] = v100;
    v278 = &type metadata for TTSUtil;
    v279 = &off_2878D0CB0;
    v277[0] = v103;
    v277[1] = &off_2878D0918;
    v200 = v99;
    v108 = v211;
    v275 = v211;
    v276 = &off_2878D54D8;
    v109 = __swift_allocate_boxed_opaque_existential_0(v274);
    (*(v88 + 16))(v109, v104, v108);
    v273[4] = &off_2878D0D48;
    v273[3] = v106;
    v273[0] = v107;
    v110 = type metadata accessor for SendMessageUnsupportedValueFlowStrategy();
    v111 = *(v110 + 48);
    v112 = *(v110 + 52);
    v223 = v110;
    v113 = v88;
    v114 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v286, v287);
    __swift_mutable_project_boxed_opaque_existential_1(v283, v284);
    v115 = v281;
    v116 = __swift_mutable_project_boxed_opaque_existential_1(v280, v281);
    v216 = &v198;
    v117 = *(*(v115 - 8) + 64);
    MEMORY[0x28223BE20](v116);
    v119 = (&v198 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v120 + 16))(v119);
    v121 = __swift_mutable_project_boxed_opaque_existential_1(v277, v278);
    v122 = v275;
    v123 = __swift_mutable_project_boxed_opaque_existential_1(v274, v275);
    v206 = &v198;
    v124 = *(*(v122 - 8) + 64);
    MEMORY[0x28223BE20](v123);
    v126 = &v198 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v127 + 16))(v126);
    v128 = __swift_mutable_project_boxed_opaque_existential_1(v273, v106);
    v205 = &v198;
    v129 = *(*(v106 - 8) + 64);
    MEMORY[0x28223BE20](v128);
    v131 = (&v198 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v132 + 16))(v131);
    v133 = *v119;
    v134 = *v131;
    v135 = *v121;
    v272[3] = &type metadata for CATProvider;
    v272[4] = &off_2878CE7A0;
    v271[3] = &type metadata for MessagesFeatureFlagsImpl;
    v271[4] = &off_2878D1228;
    v270[4] = &off_2878D2ED0;
    v270[3] = v99;
    v270[0] = v133;
    v268 = &type metadata for TTSUtil;
    v269 = &off_2878D0CB0;
    v267 = v135;
    v266[3] = v108;
    v266[4] = &off_2878D54D8;
    v136 = __swift_allocate_boxed_opaque_existential_0(v266);
    v199 = *(v113 + 32);
    v137 = v108;
    v199(v136, v126, v108);
    v265[4] = &off_2878D0D48;
    v265[3] = v106;
    v265[0] = v134;
    sub_267B9AFEC(v300, v264);
    sub_267B9AFEC(v272, v263);
    sub_267C2FB6C(v226, v225, &qword_2802299A8, &unk_267F00CF0);
    sub_267B9AFEC(v271, v262);
    sub_267B9AFEC(v297, v261);
    sub_267B9AFEC(v294, v260);
    sub_267B9AFEC(v270, v258);
    sub_267B9AFEC(v293, v257);
    sub_267B9AFEC(v292, v256);
    sub_267B9AFEC(v291, v255);
    sub_267B9AFEC(&v267, v254);
    sub_267B9AFEC(v266, v252);
    sub_267BEB520(v290, v251);
    sub_267B9AFEC(v289, v250);
    sub_267B9AFEC(v265, v248);
    __swift_mutable_project_boxed_opaque_existential_1(v263, v263[3]);
    __swift_mutable_project_boxed_opaque_existential_1(v262, v262[3]);
    v138 = v259;
    v139 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
    v204 = &v198;
    v140 = *(*(v138 - 8) + 64);
    MEMORY[0x28223BE20](v139);
    v142 = (&v198 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v143 + 16))(v142);
    v144 = __swift_mutable_project_boxed_opaque_existential_1(v254, v254[3]);
    v145 = v253;
    v146 = __swift_mutable_project_boxed_opaque_existential_1(v252, v253);
    v203 = &v198;
    v147 = *(*(v145 - 8) + 64);
    MEMORY[0x28223BE20](v146);
    v149 = &v198 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v150 + 16))(v149);
    v151 = v249;
    v152 = __swift_mutable_project_boxed_opaque_existential_1(v248, v249);
    v202 = &v198;
    v153 = *(*(v151 - 8) + 64);
    MEMORY[0x28223BE20](v152);
    v155 = (&v198 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v156 + 16))(v155);
    v157 = *v142;
    v158 = *v155;
    v159 = *v144;
    v246 = &type metadata for CATProvider;
    v247 = &off_2878CE7A0;
    v244[3] = &type metadata for MessagesFeatureFlagsImpl;
    v244[4] = &off_2878D1228;
    v243[4] = &off_2878D2ED0;
    v243[3] = v200;
    v243[0] = v157;
    v241 = &type metadata for TTSUtil;
    v242 = &off_2878D0CB0;
    v240 = v159;
    v238 = v137;
    v239 = &off_2878D54D8;
    v160 = __swift_allocate_boxed_opaque_existential_0(&v237);
    v199(v160, v149, v137);
    v235 = v106;
    v236 = &off_2878D0D48;
    *&v234 = v158;
    v114[7] = v208;
    sub_267B9AFEC(v245, (v114 + 8));
    type metadata accessor for SendMessageCATs();

    sub_267EF7B68();
    v114[13] = sub_267EF78E8();
    type metadata accessor for SendMessageCATsSimple();
    sub_267EF7B68();
    *(v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
    type metadata accessor for MessagesCATs();
    sub_267EF7B68();
    v114[15] = sub_267EF78E8();
    __swift_project_boxed_opaque_existential_0(v245, v246);
    v114[14] = sub_267BB4A3C();
    v161 = v209;
    sub_267C2FB6C(v225, v209, &qword_2802299A8, &unk_267F00CF0);
    v162 = v221;
    if (__swift_getEnumTagSinglePayload(v161, 1, v221) == 1)
    {
      v233[3] = v137;
      v233[4] = &off_2878D54D8;
      __swift_allocate_boxed_opaque_existential_0(v233);
      sub_267EF6898();
      v163 = v198;
      v164 = sub_267EF8928();
      v232[3] = v163;
      v232[4] = MEMORY[0x277D5FDD8];
      v232[0] = v164;
      sub_267B9AFEC(v264, v231);
      sub_267B9AFEC(v233, v230);
      sub_267B9AFEC(v232, v229);
      v165 = swift_allocObject();
      sub_267B9A5E8(v231, v165 + 16);
      sub_267B9A5E8(v230, v165 + 56);
      sub_267B9A5E8(v229, v165 + 96);
      sub_267EF4C08();
      sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
      v166 = v210;
      v162 = v221;
      sub_267EF7058();
      __swift_destroy_boxed_opaque_existential_0(v232);
      __swift_destroy_boxed_opaque_existential_0(v233);
      v85 = __swift_getEnumTagSinglePayload(v161, 1, v162) == 1;
      v167 = v161;
      v168 = v228;
      v169 = v224;
      v170 = v217;
      if (!v85)
      {
        sub_267B9F98C(v167, &qword_2802299A8, &unk_267F00CF0);
      }
    }

    else
    {
      v166 = v210;
      (*(v214 + 32))(v210, v161, v162);
      v168 = v228;
      v169 = v224;
      v170 = v217;
    }

    (*(v214 + 32))(v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v166, v162);
    sub_267B9AFEC(v244, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
    sub_267B9AFEC(v261, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
    v171 = (v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
    *v171 = v213;
    v171[1] = &off_2878D5360;
    sub_267B9AFEC(v260, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
    sub_267B9AFEC(v243, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
    sub_267B9AFEC(v257, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
    v172 = type metadata accessor for SendMessageCATPatternsExecutor(0);
    sub_267EF7B68();
    v173 = sub_267EF78E8();
    v174 = (v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
    v174[3] = v172;
    v174[4] = &off_2878D1100;
    *v174 = v173;
    __swift_destroy_boxed_opaque_existential_0(v257);
    __swift_destroy_boxed_opaque_existential_0(v260);
    __swift_destroy_boxed_opaque_existential_0(v261);
    sub_267B9F98C(v225, &qword_2802299A8, &unk_267F00CF0);
    sub_267B9EF14(v290);
    (*(v220 + 8))(v219, v137);
    __swift_destroy_boxed_opaque_existential_0(v292);
    __swift_destroy_boxed_opaque_existential_0(v293);
    __swift_destroy_boxed_opaque_existential_0(v294);
    sub_267B9F98C(v226, &qword_2802299A8, &unk_267F00CF0);
    __swift_destroy_boxed_opaque_existential_0(v300);
    __swift_destroy_boxed_opaque_existential_0(v289);
    __swift_destroy_boxed_opaque_existential_0(v291);
    __swift_destroy_boxed_opaque_existential_0(v297);
    __swift_destroy_boxed_opaque_existential_0(v265);
    __swift_destroy_boxed_opaque_existential_0(v266);
    __swift_destroy_boxed_opaque_existential_0(&v267);
    __swift_destroy_boxed_opaque_existential_0(v270);
    __swift_destroy_boxed_opaque_existential_0(v271);
    __swift_destroy_boxed_opaque_existential_0(v272);
    __swift_destroy_boxed_opaque_existential_0(v243);
    __swift_destroy_boxed_opaque_existential_0(v244);
    sub_267B9A5E8(v256, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
    sub_267B9A5E8(v255, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
    sub_267B9A5E8(&v240, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
    sub_267B9A5E8(&v237, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
    memcpy(v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v251, 0x60uLL);
    sub_267B9A5E8(v250, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
    sub_267B9A5E8(&v234, v114 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
    sub_267B9A5E8(v264, (v114 + 2));
    __swift_destroy_boxed_opaque_existential_0(v245);
    __swift_destroy_boxed_opaque_existential_0(v248);
    __swift_destroy_boxed_opaque_existential_0(v252);
    __swift_destroy_boxed_opaque_existential_0(v254);
    __swift_destroy_boxed_opaque_existential_0(v258);
    __swift_destroy_boxed_opaque_existential_0(v262);
    __swift_destroy_boxed_opaque_existential_0(v263);
    __swift_destroy_boxed_opaque_existential_0(v273);
    __swift_destroy_boxed_opaque_existential_0(v274);
    __swift_destroy_boxed_opaque_existential_0(v277);
    __swift_destroy_boxed_opaque_existential_0(v280);
    __swift_destroy_boxed_opaque_existential_0(v283);
    __swift_destroy_boxed_opaque_existential_0(v286);
    v175 = v212;
    sub_267EF4938();
    v176 = sub_267EF44B8();
    v178 = v177;
    v170(v175, v169);
    if (v176 == 0xD000000000000013 && 0x8000000267F0FDB0 == v178)
    {
    }

    else
    {
      v180 = sub_267EF9EA8();

      if ((v180 & 1) == 0)
      {
        v181 = v207;
        sub_267EF4938();
        v182 = sub_267EF44B8();
        v184 = v183;
        v170(v181, v169);
        if (v182 == 0x6E65697069636572 && v184 == 0xE900000000000074)
        {
        }

        else
        {
          v186 = sub_267EF9EA8();

          if ((v186 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        v190 = sub_267EF4928();
        v191 = [v190 unsupportedReason];

        if (v191 != 1)
        {
LABEL_46:
          *&v290[0] = v114;
          sub_267B9DEEC(&qword_28022C510, type metadata accessor for SendMessageUnsupportedValueFlowStrategy);
          v187 = sub_267EF35E8();
          goto LABEL_42;
        }
      }
    }

    *&v290[0] = v114;
    sub_267B9DEEC(&qword_28022C510, type metadata accessor for SendMessageUnsupportedValueFlowStrategy);
    v187 = sub_267EF35D8();
LABEL_42:
    v188 = v187;

    v80 = v188(v222, v168);

    return v80;
  }

  if (![v94 isMe] || (sub_267DEB278() & 1) != 0 || (v95 = sub_267EF4928(), v96 = objc_msgSend(v95, sel_unsupportedReason), v95, v96))
  {

    goto LABEL_23;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v192 = sub_267EF8A08();
  __swift_project_value_buffer(v192, qword_280240FB0);
  v193 = sub_267EF89F8();
  v194 = sub_267EF95C8();
  if (os_log_type_enabled(v193, v194))
  {
    v195 = swift_slowAlloc();
    *v195 = 0;
    _os_log_impl(&dword_267B93000, v193, v194, "#SendMessageFlow Detected no meCard", v195, 2u);
    MEMORY[0x26D60A7B0](v195, -1, -1);
  }

  sub_267B9AFEC(v223 + 16, v290);
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  sub_267B9AFEC(qword_2802405A0, v251);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C518, &qword_267F0AA30);
  v196 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v251, v251[3]);
  v197 = sub_267E09464(v290, v196, type metadata accessor for MessagesCATsSimple, MEMORY[0x277D55C78]);
  __swift_destroy_boxed_opaque_existential_0(v251);
  *&v290[0] = v197;
  sub_267BC1E20(&qword_28022C520, &qword_28022C518, &qword_267F0AA30);
  v80 = sub_267EF36F8();

  return v80;
}

uint64_t sub_267E05740(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v220 = a4;
  v222 = a3;
  v226 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v223 = *(v5 - 8);
  v6 = *(v223 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v214 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v217 = &v207 - v9;
  v10 = sub_267EF7B88();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v224 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_267EF68A8();
  v231 = *(v225 - 8);
  v13 = *(v231 + 64);
  v14 = MEMORY[0x28223BE20](v225);
  v215 = &v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v228 = &v207 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v213 = (&v207 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v218 = &v207 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v219 = (&v207 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v216 = (&v207 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v229 = (&v207 - v28);
  MEMORY[0x28223BE20](v27);
  v230 = &v207 - v29;
  v30 = sub_267EF44C8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v207 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v207 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v227 = a2;
  sub_267EF4938();
  v38 = sub_267EF44B8();
  v40 = v39;
  v41 = *(v31 + 8);
  v41(v37, v30);
  v42 = v38 == 0x6E65697069636572 && v40 == 0xE900000000000074;
  v221 = v5;
  if (v42 || (sub_267EF9EA8() & 1) != 0)
  {

    sub_267B9AFEC((v220 + 2), v330);
    __swift_storeEnumTagSinglePayload(v230, 1, 1, v5);
    v43 = sub_267EF8938();
    v44 = sub_267EF8928();
    v328 = v43;
    v329 = MEMORY[0x277D5FDD8];
    v207 = v43;
    v327[0] = v44;
    v218 = sub_267EF3AA8();
    sub_267EF3838();
    v45 = type metadata accessor for NetworkStatusProvider();
    v46 = swift_allocObject();
    sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
    sub_267BF0A00(v325);
    sub_267EF8668();
    v47 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
    v48 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
    v323 = &off_2878CF540;
    v322 = v48;
    v321[0] = v47;
    v49 = sub_267EF72E8();
    v50 = v228;
    sub_267EF6898();
    ConversationEventStore.init()(&v319);
    if (qword_280228730 != -1)
    {
      swift_once();
    }

    v51 = qword_280240A10;
    v210 = qword_280240A10;
    v317 = type metadata accessor for EligibleAppFinder();
    v318 = sub_267B9DEEC(&qword_28022A688, type metadata accessor for EligibleAppFinder);
    v316[0] = v51;
    v52 = type metadata accessor for ShareSheetProvider();
    v53 = swift_allocObject();
    v314 = &type metadata for CATProvider;
    v315 = &off_2878CE7A0;
    v311 = &type metadata for MessagesFeatureFlagsImpl;
    v312 = &off_2878D1228;
    v309 = &off_2878D2ED0;
    v308 = v45;
    v307[0] = v46;
    v305 = &type metadata for TTSUtil;
    v306 = &off_2878D0CB0;
    v303 = v49;
    v304 = &off_2878D0918;
    v209 = v45;
    v54 = v225;
    v301 = v225;
    v302 = &off_2878D54D8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v300);
    v56 = v231;
    (*(v231 + 16))(boxed_opaque_existential_0, v50, v54);
    v299 = &off_2878D0D48;
    v298 = v52;
    v297[0] = v53;
    v57 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    v220 = v57;
    v60 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v313, v314);
    __swift_mutable_project_boxed_opaque_existential_1(v310, v311);
    v61 = v308;
    v62 = __swift_mutable_project_boxed_opaque_existential_1(v307, v308);
    v219 = &v207;
    v63 = *(*(v61 - 8) + 64);
    MEMORY[0x28223BE20](v62);
    v65 = (&v207 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v65);
    v67 = __swift_mutable_project_boxed_opaque_existential_1(&v303, v305);
    v68 = v301;
    v69 = __swift_mutable_project_boxed_opaque_existential_1(v300, v301);
    v215 = &v207;
    v70 = *(*(v68 - 8) + 64);
    MEMORY[0x28223BE20](v69);
    v72 = &v207 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v72);
    v74 = __swift_mutable_project_boxed_opaque_existential_1(v297, v52);
    v214 = &v207;
    v75 = *(*(v52 - 8) + 64);
    MEMORY[0x28223BE20](v74);
    v77 = (&v207 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v78 + 16))(v77);
    v79 = *v65;
    v80 = *v77;
    v81 = *v67;
    v295 = &type metadata for CATProvider;
    v296 = &off_2878CE7A0;
    v292 = &type metadata for MessagesFeatureFlagsImpl;
    v293 = &off_2878D1228;
    v290 = &off_2878D2ED0;
    v289 = v45;
    v288[0] = v79;
    v286 = &type metadata for TTSUtil;
    v287 = &off_2878D0CB0;
    v285 = v81;
    v283 = v54;
    v284 = &off_2878D54D8;
    v82 = __swift_allocate_boxed_opaque_existential_0(v282);
    v208 = *(v56 + 32);
    v83 = v54;
    v208(v82, v72, v54);
    v281 = &off_2878D0D48;
    v280 = v52;
    v279[0] = v80;
    *(v60 + OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons) = MEMORY[0x277D84F90];
    sub_267B9AFEC(v330, v278);
    sub_267B9AFEC(v294, v276);
    sub_267C2FB6C(v230, v229, &qword_2802299A8, &unk_267F00CF0);
    sub_267B9AFEC(v291, v274);
    sub_267B9AFEC(v327, v273);
    sub_267B9AFEC(v326, v272);
    sub_267B9AFEC(v288, v270);
    sub_267B9AFEC(v325, v269);
    sub_267B9AFEC(v324, v268);
    sub_267B9AFEC(v321, v267);
    sub_267B9AFEC(&v285, v265);
    sub_267B9AFEC(v282, v263);
    sub_267BEB520(&v319, v262);
    sub_267B9AFEC(v316, v261);
    sub_267B9AFEC(v279, v259);
    __swift_mutable_project_boxed_opaque_existential_1(v276, v277);
    __swift_mutable_project_boxed_opaque_existential_1(v274, v275);
    v84 = v271;
    v85 = __swift_mutable_project_boxed_opaque_existential_1(v270, v271);
    v213 = &v207;
    v86 = *(*(v84 - 8) + 64);
    MEMORY[0x28223BE20](v85);
    v88 = (&v207 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v89 + 16))(v88);
    v90 = __swift_mutable_project_boxed_opaque_existential_1(v265, v266);
    v91 = v264;
    v92 = __swift_mutable_project_boxed_opaque_existential_1(v263, v264);
    v212 = &v207;
    v93 = *(*(v91 - 8) + 64);
    MEMORY[0x28223BE20](v92);
    v95 = &v207 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v96 + 16))(v95);
    v97 = v260;
    v98 = __swift_mutable_project_boxed_opaque_existential_1(v259, v260);
    v211 = &v207;
    v99 = *(*(v97 - 8) + 64);
    MEMORY[0x28223BE20](v98);
    v101 = (&v207 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v102 + 16))(v101);
    v103 = *v88;
    v104 = *v101;
    v105 = *v90;
    v257 = &type metadata for CATProvider;
    v258 = &off_2878CE7A0;
    v254 = &type metadata for MessagesFeatureFlagsImpl;
    v255 = &off_2878D1228;
    v252 = &off_2878D2ED0;
    v251 = v209;
    v250[0] = v103;
    v248 = &type metadata for TTSUtil;
    v249 = &off_2878D0CB0;
    v247 = v105;
    v245 = v83;
    v246 = &off_2878D54D8;
    v106 = __swift_allocate_boxed_opaque_existential_0(&v244);
    v208(v106, v95, v83);
    v242 = v52;
    v243 = &off_2878D0D48;
    *&v241 = v104;
    v60[7] = v222;
    sub_267B9AFEC(v256, (v60 + 8));
    type metadata accessor for SendMessageCATs();

    sub_267EF7B68();
    v60[13] = sub_267EF78E8();
    type metadata accessor for SendMessageCATsSimple();
    sub_267EF7B68();
    *(v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
    type metadata accessor for MessagesCATs();
    sub_267EF7B68();
    v60[15] = sub_267EF78E8();
    __swift_project_boxed_opaque_existential_0(v256, v257);
    v60[14] = sub_267BB4A3C();
    v107 = v216;
    sub_267C2FB6C(v229, v216, &qword_2802299A8, &unk_267F00CF0);
    v108 = v221;
    if (__swift_getEnumTagSinglePayload(v107, 1, v221) == 1)
    {
      v239 = v83;
      v240 = &off_2878D54D8;
      __swift_allocate_boxed_opaque_existential_0(v238);
      sub_267EF6898();
      v109 = v207;
      v110 = sub_267EF8928();
      v236 = v109;
      v237 = MEMORY[0x277D5FDD8];
      v235[0] = v110;
      sub_267B9AFEC(v278, v234);
      sub_267B9AFEC(v238, v233);
      sub_267B9AFEC(v235, v232);
      v111 = swift_allocObject();
      sub_267B9A5E8(v234, v111 + 16);
      sub_267B9A5E8(v233, v111 + 56);
      sub_267B9A5E8(v232, v111 + 96);
      sub_267EF4C08();
      sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
      v112 = v217;
      sub_267EF7058();
      __swift_destroy_boxed_opaque_existential_0(v235);
      __swift_destroy_boxed_opaque_existential_0(v238);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v107, 1, v108);
      v114 = v223;
      if (EnumTagSinglePayload != 1)
      {
        sub_267B9F98C(v107, &qword_2802299A8, &unk_267F00CF0);
      }
    }

    else
    {
      v114 = v223;
      v112 = v217;
      (*(v223 + 32))(v217, v107, v108);
    }

    (*(v114 + 32))(v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v112, v108);
    sub_267B9AFEC(v253, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
    sub_267B9AFEC(v273, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
    v115 = (v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
    *v115 = v218;
    v115[1] = &off_2878D5360;
    sub_267B9AFEC(v272, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
    sub_267B9AFEC(v250, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
    sub_267B9AFEC(v269, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
    v116 = type metadata accessor for SendMessageCATPatternsExecutor(0);
    sub_267EF7B68();
    v117 = sub_267EF78E8();
    v118 = (v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
    v118[3] = v116;
    v118[4] = &off_2878D1100;
    *v118 = v117;
    __swift_destroy_boxed_opaque_existential_0(v269);
    __swift_destroy_boxed_opaque_existential_0(v272);
    __swift_destroy_boxed_opaque_existential_0(v273);
    sub_267B9F98C(v229, &qword_2802299A8, &unk_267F00CF0);
    sub_267B9EF14(&v319);
    (*(v231 + 8))(v228, v83);
    __swift_destroy_boxed_opaque_existential_0(v324);
    __swift_destroy_boxed_opaque_existential_0(v325);
    __swift_destroy_boxed_opaque_existential_0(v326);
    sub_267B9F98C(v230, &qword_2802299A8, &unk_267F00CF0);
    __swift_destroy_boxed_opaque_existential_0(v330);
    __swift_destroy_boxed_opaque_existential_0(v316);
    __swift_destroy_boxed_opaque_existential_0(v321);
    __swift_destroy_boxed_opaque_existential_0(v327);
    __swift_destroy_boxed_opaque_existential_0(v279);
    __swift_destroy_boxed_opaque_existential_0(v282);
    __swift_destroy_boxed_opaque_existential_0(&v285);
    __swift_destroy_boxed_opaque_existential_0(v288);
    __swift_destroy_boxed_opaque_existential_0(v291);
    __swift_destroy_boxed_opaque_existential_0(v294);
    __swift_destroy_boxed_opaque_existential_0(v250);
    __swift_destroy_boxed_opaque_existential_0(v253);
    sub_267B9A5E8(v268, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
    sub_267B9A5E8(v267, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
    sub_267B9A5E8(&v247, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
    sub_267B9A5E8(&v244, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
    memcpy(v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v262, 0x60uLL);
    sub_267B9A5E8(v261, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
    sub_267B9A5E8(&v241, v60 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
    sub_267B9A5E8(v278, (v60 + 2));
    __swift_destroy_boxed_opaque_existential_0(v256);
    __swift_destroy_boxed_opaque_existential_0(v259);
    __swift_destroy_boxed_opaque_existential_0(v263);
    __swift_destroy_boxed_opaque_existential_0(v265);
    __swift_destroy_boxed_opaque_existential_0(v270);
    __swift_destroy_boxed_opaque_existential_0(v274);
    __swift_destroy_boxed_opaque_existential_0(v276);
    __swift_destroy_boxed_opaque_existential_0(v297);
    __swift_destroy_boxed_opaque_existential_0(v300);
    __swift_destroy_boxed_opaque_existential_0(&v303);
    __swift_destroy_boxed_opaque_existential_0(v307);
    __swift_destroy_boxed_opaque_existential_0(v310);
    __swift_destroy_boxed_opaque_existential_0(v313);
    v319 = v60;
    sub_267B9DEEC(&qword_28022C508, type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy);
    v119 = sub_267EF35B8();
    goto LABEL_31;
  }

  if (v38 == 0xD000000000000012 && 0x8000000267F0FD90 == v40)
  {
    goto LABEL_23;
  }

  v121 = sub_267EF9EA8();

  if ((v121 & 1) == 0)
  {
    v319 = 0;
    v320 = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD00000000000003ALL, 0x8000000267F1AF90);
    sub_267EF4938();
    v122 = sub_267EF44B8();
    v124 = v123;
    v41(v35, v30);
    MEMORY[0x26D608E60](v122, v124);

    v5 = v319;
    v125 = v320;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v126 = sub_267EF8A08();
    __swift_project_value_buffer(v126, qword_280240FB0);

    v127 = sub_267EF89F8();
    v128 = sub_267EF95E8();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v319 = v130;
      *v129 = 136315138;
      *(v129 + 4) = sub_267BA33E8(v5, v125, &v319);
      _os_log_impl(&dword_267B93000, v127, v128, "Fatal error: %s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v130);
      MEMORY[0x26D60A7B0](v130, -1, -1);
      MEMORY[0x26D60A7B0](v129, -1, -1);
    }

    sub_267EF9C98();
    __break(1u);
LABEL_23:
  }

  sub_267B9AFEC((v220 + 2), v330);
  __swift_storeEnumTagSinglePayload(v219, 1, 1, v5);
  v131 = sub_267EF8938();
  v132 = sub_267EF8928();
  v328 = v131;
  v329 = MEMORY[0x277D5FDD8];
  v207 = v131;
  v327[0] = v132;
  v228 = sub_267EF3AA8();
  sub_267EF3838();
  v133 = type metadata accessor for NetworkStatusProvider();
  v134 = swift_allocObject();
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v325);
  sub_267EF8668();
  v135 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v136 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  v323 = &off_2878CF540;
  v322 = v136;
  v321[0] = v135;
  v137 = sub_267EF72E8();
  v138 = v215;
  sub_267EF6898();
  ConversationEventStore.init()(&v319);
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  v139 = qword_280240A10;
  v210 = qword_280240A10;
  v317 = type metadata accessor for EligibleAppFinder();
  v318 = sub_267B9DEEC(&qword_28022A688, type metadata accessor for EligibleAppFinder);
  v316[0] = v139;
  v140 = type metadata accessor for ShareSheetProvider();
  v141 = swift_allocObject();
  v314 = &type metadata for CATProvider;
  v315 = &off_2878CE7A0;
  v311 = &type metadata for MessagesFeatureFlagsImpl;
  v312 = &off_2878D1228;
  v309 = &off_2878D2ED0;
  v308 = v133;
  v307[0] = v134;
  v305 = &type metadata for TTSUtil;
  v306 = &off_2878D0CB0;
  v303 = v137;
  v304 = &off_2878D0918;
  v209 = v133;
  v142 = v225;
  v301 = v225;
  v302 = &off_2878D54D8;
  v143 = __swift_allocate_boxed_opaque_existential_0(v300);
  (*(v231 + 16))(v143, v138, v142);
  v299 = &off_2878D0D48;
  v298 = v140;
  v297[0] = v141;
  v144 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy();
  v145 = *(v144 + 48);
  v146 = *(v144 + 52);
  v230 = v144;
  v147 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v313, v314);
  __swift_mutable_project_boxed_opaque_existential_1(v310, v311);
  v148 = v308;
  v149 = __swift_mutable_project_boxed_opaque_existential_1(v307, v308);
  v229 = &v207;
  v150 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v152 = (&v207 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v153 + 16))(v152);
  v154 = __swift_mutable_project_boxed_opaque_existential_1(&v303, v305);
  v155 = v301;
  v156 = __swift_mutable_project_boxed_opaque_existential_1(v300, v301);
  v220 = &v207;
  v157 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v159 = &v207 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v160 + 16))(v159);
  v161 = __swift_mutable_project_boxed_opaque_existential_1(v297, v140);
  v217 = &v207;
  v162 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v164 = (&v207 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v165 + 16))(v164);
  v166 = *v152;
  v167 = *v164;
  v168 = *v154;
  v295 = &type metadata for CATProvider;
  v296 = &off_2878CE7A0;
  v292 = &type metadata for MessagesFeatureFlagsImpl;
  v293 = &off_2878D1228;
  v290 = &off_2878D2ED0;
  v289 = v133;
  v288[0] = v166;
  v286 = &type metadata for TTSUtil;
  v287 = &off_2878D0CB0;
  v285 = v168;
  v283 = v142;
  v284 = &off_2878D54D8;
  v169 = __swift_allocate_boxed_opaque_existential_0(v282);
  v208 = *(v231 + 32);
  v208(v169, v159, v142);
  v281 = &off_2878D0D48;
  *(v147 + OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_selectedGroupName) = 0;
  v280 = v140;
  v279[0] = v167;
  *(v147 + OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict) = 0;
  sub_267B9AFEC(v330, v278);
  sub_267B9AFEC(v294, v276);
  sub_267C2FB6C(v219, v218, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v291, v274);
  sub_267B9AFEC(v327, v273);
  sub_267B9AFEC(v326, v272);
  sub_267B9AFEC(v288, v270);
  sub_267B9AFEC(v325, v269);
  sub_267B9AFEC(v324, v268);
  sub_267B9AFEC(v321, v267);
  sub_267B9AFEC(&v285, v265);
  sub_267B9AFEC(v282, v263);
  sub_267BEB520(&v319, v262);
  sub_267B9AFEC(v316, v261);
  sub_267B9AFEC(v279, v259);
  __swift_mutable_project_boxed_opaque_existential_1(v276, v277);
  __swift_mutable_project_boxed_opaque_existential_1(v274, v275);
  v170 = v271;
  v171 = __swift_mutable_project_boxed_opaque_existential_1(v270, v271);
  v216 = &v207;
  v172 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v174 = (&v207 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v175 + 16))(v174);
  v176 = __swift_mutable_project_boxed_opaque_existential_1(v265, v266);
  v177 = v264;
  v178 = __swift_mutable_project_boxed_opaque_existential_1(v263, v264);
  v212 = &v207;
  v179 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v181 = &v207 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v182 + 16))(v181);
  v183 = v260;
  v184 = __swift_mutable_project_boxed_opaque_existential_1(v259, v260);
  v211 = &v207;
  v185 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v187 = (&v207 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v188 + 16))(v187);
  v189 = *v174;
  v190 = *v187;
  v191 = *v176;
  v257 = &type metadata for CATProvider;
  v258 = &off_2878CE7A0;
  v254 = &type metadata for MessagesFeatureFlagsImpl;
  v255 = &off_2878D1228;
  v252 = &off_2878D2ED0;
  v251 = v209;
  v250[0] = v189;
  v248 = &type metadata for TTSUtil;
  v249 = &off_2878D0CB0;
  v247 = v191;
  v245 = v142;
  v246 = &off_2878D54D8;
  v192 = __swift_allocate_boxed_opaque_existential_0(&v244);
  v208(v192, v181, v142);
  v242 = v140;
  v243 = &off_2878D0D48;
  *&v241 = v190;
  v147[7] = v222;
  sub_267B9AFEC(v256, (v147 + 8));
  type metadata accessor for SendMessageCATs();

  sub_267EF7B68();
  v147[13] = sub_267EF78E8();
  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  *(v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  type metadata accessor for MessagesCATs();
  sub_267EF7B68();
  v147[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v256, v257);
  v147[14] = sub_267BB4A3C();
  v193 = v213;
  sub_267C2FB6C(v218, v213, &qword_2802299A8, &unk_267F00CF0);
  v194 = v221;
  if (__swift_getEnumTagSinglePayload(v193, 1, v221) == 1)
  {
    v239 = v142;
    v240 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v238);
    sub_267EF6898();
    v195 = v207;
    v196 = sub_267EF8928();
    v236 = v195;
    v237 = MEMORY[0x277D5FDD8];
    v235[0] = v196;
    sub_267B9AFEC(v278, v234);
    sub_267B9AFEC(v238, v233);
    sub_267B9AFEC(v235, v232);
    v197 = swift_allocObject();
    sub_267B9A5E8(v234, v197 + 16);
    sub_267B9A5E8(v233, v197 + 56);
    sub_267B9A5E8(v232, v197 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v198 = v214;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v235);
    __swift_destroy_boxed_opaque_existential_0(v238);
    v199 = __swift_getEnumTagSinglePayload(v193, 1, v194);
    v200 = v223;
    if (v199 != 1)
    {
      sub_267B9F98C(v193, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v200 = v223;
    v198 = v214;
    (*(v223 + 32))(v214, v193, v194);
  }

  (*(v200 + 32))(v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v198, v194);
  sub_267B9AFEC(v253, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(v273, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v201 = (v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v201 = v228;
  v201[1] = &off_2878D5360;
  sub_267B9AFEC(v272, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v250, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v269, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  v202 = type metadata accessor for SendMessageCATPatternsExecutor(0);
  sub_267EF7B68();
  v203 = sub_267EF78E8();
  v204 = (v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  v204[3] = v202;
  v204[4] = &off_2878D1100;
  *v204 = v203;
  __swift_destroy_boxed_opaque_existential_0(v269);
  __swift_destroy_boxed_opaque_existential_0(v272);
  __swift_destroy_boxed_opaque_existential_0(v273);
  sub_267B9F98C(v218, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9EF14(&v319);
  (*(v231 + 8))(v215, v142);
  __swift_destroy_boxed_opaque_existential_0(v324);
  __swift_destroy_boxed_opaque_existential_0(v325);
  __swift_destroy_boxed_opaque_existential_0(v326);
  sub_267B9F98C(v219, &qword_2802299A8, &unk_267F00CF0);
  __swift_destroy_boxed_opaque_existential_0(v330);
  __swift_destroy_boxed_opaque_existential_0(v316);
  __swift_destroy_boxed_opaque_existential_0(v321);
  __swift_destroy_boxed_opaque_existential_0(v327);
  __swift_destroy_boxed_opaque_existential_0(v279);
  __swift_destroy_boxed_opaque_existential_0(v282);
  __swift_destroy_boxed_opaque_existential_0(&v285);
  __swift_destroy_boxed_opaque_existential_0(v288);
  __swift_destroy_boxed_opaque_existential_0(v291);
  __swift_destroy_boxed_opaque_existential_0(v294);
  __swift_destroy_boxed_opaque_existential_0(v250);
  __swift_destroy_boxed_opaque_existential_0(v253);
  sub_267B9A5E8(v268, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8(v267, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8(&v247, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8(&v244, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v262, 0x60uLL);
  sub_267B9A5E8(v261, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8(&v241, v147 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8(v278, (v147 + 2));
  __swift_destroy_boxed_opaque_existential_0(v256);
  __swift_destroy_boxed_opaque_existential_0(v259);
  __swift_destroy_boxed_opaque_existential_0(v263);
  __swift_destroy_boxed_opaque_existential_0(v265);
  __swift_destroy_boxed_opaque_existential_0(v270);
  __swift_destroy_boxed_opaque_existential_0(v274);
  __swift_destroy_boxed_opaque_existential_0(v276);
  __swift_destroy_boxed_opaque_existential_0(v297);
  __swift_destroy_boxed_opaque_existential_0(v300);
  __swift_destroy_boxed_opaque_existential_0(&v303);
  __swift_destroy_boxed_opaque_existential_0(v307);
  __swift_destroy_boxed_opaque_existential_0(v310);
  __swift_destroy_boxed_opaque_existential_0(v313);
  v319 = v147;
  sub_267B9DEEC(&qword_28022C500, type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy);
  v119 = sub_267EF35B8();
LABEL_31:

  v205 = v119(v226, v227);

  return v205;
}

id sub_267E07B20(uint64_t a1, uint64_t a2, void *a3)
{
  if ((sub_267BE84FC() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_267BCEA0C(a3);
  if (v4)
  {
    v5 = v4;
    if (sub_267BAF0DC(v4))
    {
      sub_267BBD0EC(0, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D609870](0, v5);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v7 = v6;

      v8 = [v7 relationship];

      if (v8)
      {
        return v8;
      }
    }

    else
    {
    }
  }

  v9 = [a3 sender];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v8 = [v9 relationship];

  if (!v8)
  {
    return 0;
  }

  return v8;
}

uint64_t sub_267E07C1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a3;
  v50 = a5;
  v53 = a4;
  v7 = sub_267EF4BA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = *(v8 + 16);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v12;
  v11();
  sub_267B9AFEC(a6 + 16, v83);
  v13 = type metadata accessor for SiriKitFlowFactoryImpl();
  memset(v81, 0, sizeof(v81));
  v82 = 0;
  v14 = swift_allocObject();
  sub_267E00DF8(v79);
  sub_267EF3838();
  v15 = [objc_opt_self() sharedAnalytics];
  v16 = [v15 defaultMessageStream];

  v76 = sub_267BA9F38(0, &qword_28022A6B0, 0x277D552C8);
  v77 = &off_2878D94D8;
  *&v75 = v16;
  v17 = v80;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v74[3] = v13;
  v74[4] = &off_2878CFE90;
  v74[0] = v14;
  v72 = &type metadata for MessagesFeatureFlagsImpl;
  v73 = &off_2878D1228;
  v69 = &type metadata for UserPersonaSignalCollector;
  v70 = &off_2878D9498;
  v68[0] = swift_allocObject();
  memcpy((v68[0] + 16), v21, 0x58uLL);
  v23 = type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v74, v13);
  v28 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  v32 = v69;
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  v34 = *(v32[-1].Description + 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v49 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v49;
  (*(v37 + 16))(v36);
  v39 = *v30;
  v66 = v13;
  v67 = &off_2878CFE90;
  *&v65 = v39;
  v63 = &type metadata for MessagesFeatureFlagsImpl;
  v64 = &off_2878D1228;
  v60 = &type metadata for UserPersonaSignalCollector;
  v61 = &off_2878D9498;
  v40 = v50;
  *&v59 = swift_allocObject();
  memcpy((v59 + 16), v36, 0x58uLL);
  *(v26 + 56) = 0u;
  *(v26 + 72) = 0u;
  *(v26 + 88) = 0;
  *(v26 + 96) = v38;
  *(v26 + 104) = v40;
  sub_267C2FB6C(v81, &v54, &qword_28022C530, &qword_267F0AA38);
  if (v55)
  {
    v41 = v38;

    sub_267B9F98C(v81, &qword_28022C530, &qword_267F0AA38);
    sub_267B9A5E8(&v54, &v56);
  }

  else
  {
    v42 = qword_280228780;
    v43 = v38;

    if (v42 != -1)
    {
      swift_once();
    }

    v44 = qword_280240D70;
    v57 = type metadata accessor for SmartAppSelectionFeatureImpl();
    v58 = &off_2878D3D60;
    *&v56 = v44;

    sub_267B9F98C(v81, &qword_28022C530, &qword_267F0AA38);
    if (v55)
    {
      sub_267B9F98C(&v54, &qword_28022C530, &qword_267F0AA38);
    }
  }

  sub_267B9A5E8(&v56, v26 + 112);
  v45 = v26 + OBJC_IVAR____TtC16SiriMessagesFlow42SendMessageAppResolutionAndPreRCHCheckFlow_state;
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C318, &qword_267F0AA40) + 48);
  (*(v8 + 32))(v45, v51, v52);
  *(v45 + v46) = v53;
  type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow.State(0);
  swift_storeEnumTagMultiPayload();
  sub_267B9A5E8(&v65, v26 + 152);
  sub_267B9A5E8(&v62, v26 + 192);
  sub_267B9A5E8(&v59, v26 + 232);
  sub_267B9A5E8(&v78, v26 + 272);
  sub_267B9A5E8(&v75, v26 + 312);
  sub_267B9A5E8(v83, v26 + 16);

  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v71);
  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_destroy_boxed_opaque_existential_0(v79);
  *&v83[0] = v26;
  sub_267B9DEEC(&qword_28022C2F8, type metadata accessor for SendMessageAppResolutionAndPreRCHCheckFlow);
  v47 = sub_267EF36F8();

  return v47;
}

uint64_t sub_267E082A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = a8;
  v67 = a2;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v13 = sub_267EF8A08();
  v14 = __swift_project_value_buffer(v13, qword_280240FB0);
  v15 = a3;
  swift_retain_n();
  v16 = v15;

  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();

  if (os_log_type_enabled(v17, v18))
  {
    v64 = v14;
    v65 = a7;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v79 = v20;
    *v19 = 136315906;
    *(v19 + 4) = sub_267BA33E8(a4, a5, &v79);
    *(v19 + 12) = 2080;
    *&v77[0] = a6;
    type metadata accessor for INResolutionResultCode(0);
    v21 = sub_267EF9098();
    v23 = v16;
    v24 = sub_267BA33E8(v21, v22, &v79);

    *(v19 + 14) = v24;
    v16 = v23;
    *(v19 + 22) = 1024;
    v25 = sub_267D29748();
    if (v28 == 2 && !(v25 | v26 | v27))
    {
      v29 = 0;
    }

    else
    {
      sub_267DF6BA0(v25, v26, v27, v28);
      v29 = 1;
    }

    a7 = v65;

    *(v19 + 24) = v29;
    *(v19 + 28) = 1024;
    v30 = *(a7 + 96);

    *(v19 + 30) = v30;

    _os_log_impl(&dword_267B93000, v17, v18, "#SendMessageFlow (makeAppResolutionFlowBeforeNextResolveFlowProducer) parameterName:%s, resolutionResultCode:%s, hasRecipientsOrGroupName:%{BOOL}d, isAppSelectedByUser:%{BOOL}d", v19, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v20, -1, -1);
    MEMORY[0x26D60A7B0](v19, -1, -1);
  }

  else
  {
  }

  v31 = a4 == 0x6E65697069636572 && a5 == 0xE900000000000074;
  if (v31 || (sub_267EF9EA8()) && (a6 != 4 ? (v32 = a6 == 1) : (v32 = 1), v32 && ((v33 = sub_267D29748(), v36 != 2) || v33 | v34 | v35)))
  {
    v37 = a7;
    sub_267DF6BA0(v33, v34, v35, v36);
    v38 = sub_267EF89F8();
    v39 = sub_267EF95D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_267B93000, v38, v39, "#SendMessasgeFlow (makeAppResolutionFlowBeforeNextResolveFlowProducer) recipient is present after prompt and app was not selected, trying to resolve app again", v40, 2u);
      MEMORY[0x26D60A7B0](v40, -1, -1);
    }

    sub_267B9AFEC(v66 + 16, &v79);
    v41 = type metadata accessor for SiriKitFlowFactoryImpl();
    memset(v77, 0, sizeof(v77));
    v78 = 0;
    v76[3] = v41;
    v76[4] = &off_2878CFE90;
    v76[0] = swift_allocObject();
    ResolveFlow = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow(0);
    v43 = *(ResolveFlow + 48);
    v44 = *(ResolveFlow + 52);
    v45 = swift_allocObject();
    v46 = __swift_mutable_project_boxed_opaque_existential_1(v76, v41);
    v47 = *(*(v41 - 8) + 64);
    MEMORY[0x28223BE20](v46);
    v49 = (&v64 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49);
    v51 = *v49;
    v74 = v41;
    v75 = &off_2878CFE90;
    *&v73 = v51;
    v52 = v45 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride;
    *v52 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = 0;
    *(v45 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_sendMessageState) = v37;
    sub_267C2FB6C(v77, &v68, &qword_28022C530, &qword_267F0AA38);
    if (v69)
    {

      sub_267B9F98C(v77, &qword_28022C530, &qword_267F0AA38);
      sub_267B9A5E8(&v68, &v70);
    }

    else
    {
      v57 = qword_280228780;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = qword_280240D70;
      v59 = type metadata accessor for SmartAppSelectionFeatureImpl();
      v72 = &off_2878D3D60;
      v71 = v59;
      *&v70 = v58;

      sub_267B9F98C(v77, &qword_28022C530, &qword_267F0AA38);
      if (v69)
      {
        sub_267B9F98C(&v68, &qword_28022C530, &qword_267F0AA38);
      }
    }

    sub_267B9A5E8(&v70, v45 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_smartAppSelectionFeature);
    sub_267B9A5E8(&v73, v45 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_siriKitFlowFactory);
    v60 = (v45 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state);
    v61 = v67;
    *v60 = v16;
    v60[1] = v61;
    type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
    swift_storeEnumTagMultiPayload();
    sub_267B9A5E8(&v79, v45 + 16);
    v62 = v16;

    __swift_destroy_boxed_opaque_existential_0(v76);
    *&v79 = v45;
    sub_267B9DEEC(&qword_28022AC70, type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow);
    v56 = sub_267EF36F8();
  }

  else
  {
    v53 = sub_267EF89F8();
    v54 = sub_267EF95D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_267B93000, v53, v54, "#SendMessageFlow (makeAppResolutionFlowBeforeNextResolveFlowProducer)  skipping app resolution before next resolve flow", v55, 2u);
      MEMORY[0x26D60A7B0](v55, -1, -1);
    }

    return 0;
  }

  return v56;
}

uint64_t sub_267E0899C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v7 = sub_267EF4648();
  v8 = sub_267EF4668();
  v9 = sub_267EF4638();
  sub_267B9AFEC(a4 + 16, v26);
  v10 = [objc_opt_self() sharedPreferences];
  v24 = sub_267BA9F38(0, &unk_28022A3B0, 0x277CEF368);
  v25 = &off_2878D7790;
  *&v23 = v10;
  v11 = sub_267EF3618();
  sub_267EF3838();
  ConversationEventStore.init()(__src);
  v20[3] = &type metadata for MessagesFeatureFlagsImpl;
  v20[4] = &off_2878D1228;
  v12 = type metadata accessor for SendMessageConfirmIntentFlow(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v20, &type metadata for MessagesFeatureFlagsImpl);
  v16 = v15 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_featureFlags;
  *(v16 + 24) = &type metadata for MessagesFeatureFlagsImpl;
  *(v16 + 32) = &off_2878D1228;
  type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  swift_storeEnumTagMultiPayload();
  *(v15 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_childFlowFactory) = a1;
  *(v15 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_app) = v7;
  *(v15 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent) = v8;
  *(v15 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intentResponse) = v9;
  *(v15 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) = a3;
  sub_267B9A5E8(&v23, v15 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences);
  v17 = (v15 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_confirmIntentFlowHelper);
  *v17 = v11;
  v17[1] = &off_2878D7778;
  sub_267B9A5E8(&v22, v15 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_siriKitEventSender);
  memcpy((v15 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_conversationEventStore), __src, 0x60uLL);
  sub_267B9A5E8(v26, v15 + 16);

  __swift_destroy_boxed_opaque_existential_0(v20);
  __src[0] = v15;
  sub_267B9DEEC(&qword_28022C4F8, type metadata accessor for SendMessageConfirmIntentFlow);
  v18 = sub_267EF36F8();

  return v18;
}

uint64_t sub_267E08C18()
{
  sub_267B9F118(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory));
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider));
  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags));
}

uint64_t sub_267E08C94()
{
  result = type metadata accessor for SendMessageFlow.State(319);
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

void sub_267E08D40()
{
  sub_267E08DEC();
  if (v0 <= 0x3F)
  {
    sub_267E08E78();
    if (v1 <= 0x3F)
    {
      sub_267C1B358();
      if (v2 <= 0x3F)
      {
        sub_267E08F94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_267E08DEC()
{
  if (!qword_28022C488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229210, &qword_267EFCB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A440, &qword_267F02630);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022C488);
    }
  }
}

void sub_267E08E78()
{
  if (!qword_28022C490)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C498, &qword_267F0A8D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28022BBF0, &unk_267F01C60);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_28022C490);
    }
  }
}

void sub_267E08F94()
{
  if (!qword_28022C4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229978, &unk_267EFEBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C4A8, &qword_267F0A8E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022C4A0);
    }
  }
}

uint64_t sub_267E0901C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267E09058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_267E09184(uint64_t *a1, uint64_t a2)
{
  v4 = sub_267EF7B88();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v9 = &type metadata for CATProvider;
  v10 = &off_2878CE7A0;
  sub_267B9AFEC(a1, a2 + 16);
  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  *(a2 + 56) = sub_267EF79E8();
  __swift_project_boxed_opaque_existential_0(v8, v9);
  v6 = sub_267BB4A3C();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(a2 + 64) = v6;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return a2;
}

uint64_t sub_267E09270(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v16 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  v17 = &off_2878CF540;
  *&v15 = a3;
  v14[3] = &type metadata for CATProvider;
  v14[4] = &off_2878CE7A0;
  type metadata accessor for LocationAccessCheckStrategy();
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for CATProvider);
  v13[3] = &type metadata for CATProvider;
  v13[4] = &off_2878CE7A0;
  sub_267B9AFEC(a1, v6 + 16);
  sub_267B9AFEC(a2, v6 + 56);
  sub_267B9AFEC(a2, v12);
  sub_267B9AFEC(v13, v11);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  v10[3] = &type metadata for CATProvider;
  v10[4] = &off_2878CE7A0;
  type metadata accessor for LocationErrorResponseFactory();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v10, &type metadata for CATProvider);
  v8 = sub_267E09184(v12, v7);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v10);
  __swift_destroy_boxed_opaque_existential_0(v11);
  *(v6 + 96) = v8;
  sub_267B9A5E8(&v15, v6 + 104);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v6;
}

uint64_t sub_267E093CC(__int128 *a1)
{
  v4[3] = &type metadata for MessagesFeatureFlagsImpl;
  v4[4] = &off_2878D1228;
  type metadata accessor for SendMessageFollowupOfferFlow();
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v4, &type metadata for MessagesFeatureFlagsImpl);
  *(v2 + 80) = &type metadata for MessagesFeatureFlagsImpl;
  *(v2 + 88) = &off_2878D1228;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0;
  *(v2 + 136) = 2;
  sub_267B9A5E8(a1, v2 + 16);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2;
}

uint64_t sub_267E09464(__int128 *a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, void))
{
  v8 = sub_267EF7B88();
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v14 = v13 - v12;
  v17 = &type metadata for CATProvider;
  v18 = &off_2878CE7A0;
  a3(0);
  sub_267EF7B68();
  *(a2 + 56) = a4(v14, 0);
  __swift_project_boxed_opaque_existential_0(v16, v17);
  *(a2 + 64) = sub_267BB4A3C();
  sub_267B9A5E8(a1, a2 + 16);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return a2;
}

char *sub_267E0954C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v69 = a7;
  v70 = a8;
  v73 = a3;
  v64 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v13);
  v67 = &v59 - v15;
  v16 = sub_267EF7B88();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_267EF68A8();
  v61 = *(v18 - 8);
  v62 = v18;
  v19 = *(v61 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v74 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v59 - v26;
  v115 = sub_267EF8938();
  v116 = MEMORY[0x277D5FDD8];
  v60 = v115;
  v114[0] = a6;
  v113[3] = &type metadata for CATProvider;
  v113[4] = &off_2878CE7A0;
  v112[3] = type metadata accessor for UnsetRelationshipTemplatesWrapper();
  v112[4] = &off_2878CF9B8;
  v112[0] = a4;
  v28 = sub_267EF49A8();
  v111[3] = v28;
  v111[4] = &off_2878CF9A0;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v111);
  (*(*(v28 - 8) + 32))(boxed_opaque_existential_0, a5, v28);
  v110[3] = &type metadata for MessagesFeatureFlagsImpl;
  v110[4] = &off_2878D1228;
  *&a9[OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_selectedPerson] = 0;
  v30 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_relationshipLabel;
  v31 = sub_267EF42F8();
  v65 = *(v31 - 8);
  v66 = v31;
  v32 = *(v65 + 16);
  v71 = a1;
  v32(&a9[v30], a1);
  sub_267B9AFEC(v112, &a9[OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipTemplateProviding]);
  sub_267B9AFEC(v111, &a9[OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageUnsetRelationshipFlowStrategy_unsetRelationshipResponses]);
  sub_267B9AFEC(v73, v109);
  sub_267B9AFEC(v113, v108);
  v72 = v27;
  v63 = v13;
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v13);
  sub_267B9AFEC(v110, v107);
  sub_267B9AFEC(v114, v106);
  sub_267EF3838();
  v33 = type metadata accessor for NetworkStatusProvider();
  v34 = swift_allocObject();
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v104);
  sub_267EF8668();
  v35 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v36 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  v102 = &off_2878CF540;
  v101 = v36;
  *&v100 = v35;
  v37 = sub_267EF72E8();
  sub_267EF6898();
  ConversationEventStore.init()(v99);
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  v38 = qword_280240A10;
  v97 = type metadata accessor for EligibleAppFinder();
  v98 = sub_267B9DEEC(&qword_28022A688, type metadata accessor for EligibleAppFinder);
  *&v96 = v38;
  v39 = type metadata accessor for ShareSheetProvider();
  v40 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v108, v108[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v107, v107[3]);
  v94 = &type metadata for CATProvider;
  v95 = &off_2878CE7A0;
  v92[3] = &type metadata for MessagesFeatureFlagsImpl;
  v92[4] = &off_2878D1228;
  v91[3] = v33;
  v91[4] = &off_2878D2ED0;
  v91[0] = v34;
  v89 = &type metadata for TTSUtil;
  v90 = &off_2878D0CB0;
  *&v88 = v37;
  *(&v88 + 1) = &off_2878D0918;
  v41 = v62;
  v86 = v62;
  v87 = &off_2878D54D8;
  v42 = __swift_allocate_boxed_opaque_existential_0(&v85);
  v43 = v61;
  (*(v61 + 16))(v42, v21, v41);
  v83 = v39;
  v84 = &off_2878D0D48;
  *&v82 = v40;
  *(a9 + 7) = v64;
  sub_267B9AFEC(v93, (a9 + 64));
  type metadata accessor for SendMessageCATs();

  sub_267EF7B68();
  *(a9 + 13) = sub_267EF78E8();
  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  *&a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple] = sub_267EF79E8();
  type metadata accessor for MessagesCATs();
  sub_267EF7B68();
  *(a9 + 15) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v93, v94);
  *(a9 + 14) = sub_267BB4A3C();
  v44 = v74;
  sub_267C2FB6C(v72, v74, &qword_2802299A8, &unk_267F00CF0);
  v45 = v44;
  v46 = v63;
  if (__swift_getEnumTagSinglePayload(v45, 1, v63) == 1)
  {
    v80 = v41;
    v81 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(&v79);
    sub_267EF6898();
    v47 = v46;
    v48 = v60;
    v49 = sub_267EF8928();
    v78[3] = v48;
    v78[4] = MEMORY[0x277D5FDD8];
    v78[0] = v49;
    sub_267B9AFEC(v109, v77);
    sub_267B9AFEC(&v79, v76);
    sub_267B9AFEC(v78, v75);
    v50 = swift_allocObject();
    sub_267B9A5E8(v77, v50 + 16);
    sub_267B9A5E8(v76, v50 + 56);
    sub_267B9A5E8(v75, v50 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v46 = v47;
    v51 = v67;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v78);
    __swift_destroy_boxed_opaque_existential_0(&v79);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, 1, v46);
    v53 = v68;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v74, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v51 = v67;
    v53 = v68;
    (*(v68 + 32))(v67, v74, v46);
  }

  (*(v53 + 32))(&a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer], v51, v46);
  sub_267B9AFEC(v92, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags]);
  sub_267B9AFEC(v106, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver]);
  v54 = &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider];
  v55 = v70;
  *v54 = v69;
  *(v54 + 1) = v55;
  sub_267B9AFEC(v105, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender]);
  sub_267B9AFEC(v91, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider]);
  sub_267B9AFEC(v104, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults]);
  v56 = type metadata accessor for SendMessageCATPatternsExecutor(0);
  sub_267EF7B68();
  v57 = sub_267EF78E8();
  v80 = v56;
  v81 = &off_2878D1100;

  *&v79 = v57;
  __swift_destroy_boxed_opaque_existential_0(v73);
  (*(v65 + 8))(v71, v66);
  (*(v43 + 8))(v21, v41);
  __swift_destroy_boxed_opaque_existential_0(v104);
  __swift_destroy_boxed_opaque_existential_0(v105);
  __swift_destroy_boxed_opaque_existential_0(v106);
  sub_267B9F98C(v72, &qword_2802299A8, &unk_267F00CF0);
  __swift_destroy_boxed_opaque_existential_0(v114);
  __swift_destroy_boxed_opaque_existential_0(v110);
  __swift_destroy_boxed_opaque_existential_0(v111);
  __swift_destroy_boxed_opaque_existential_0(v112);
  __swift_destroy_boxed_opaque_existential_0(v113);
  __swift_destroy_boxed_opaque_existential_0(v91);
  __swift_destroy_boxed_opaque_existential_0(v92);
  sub_267B9A5E8(&v79, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns]);
  sub_267B9A5E8(&v103, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService]);
  sub_267B9A5E8(&v100, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService]);
  sub_267B9A5E8(&v88, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil]);
  sub_267B9A5E8(&v85, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver]);
  memcpy(&a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore], v99, 0x60uLL);
  sub_267B9A5E8(&v96, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder]);
  sub_267B9A5E8(&v82, &a9[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider]);
  sub_267B9A5E8(v109, (a9 + 16));
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v107);
  __swift_destroy_boxed_opaque_existential_0(v108);
  return a9;
}

unint64_t sub_267E09FE8()
{
  result = qword_28022C558;
  if (!qword_28022C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C558);
  }

  return result;
}

uint64_t objectdestroy_71Tm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  OUTLINED_FUNCTION_46_19();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

BOOL sub_267E0A09C()
{
  sub_267E0A12C();
  v0 = *MEMORY[0x277CC1F60];
  v1 = sub_267EF8FF8();

  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v0, v1, 0);

  if (!PreferredIdentifierForTag)
  {
    return 0;
  }

  v3 = UTTypeConformsTo(PreferredIdentifierForTag, *MEMORY[0x277CC20B0]);

  return v3 != 0;
}

unint64_t sub_267E0A12C()
{
  sub_267EF2AB8();
  v0 = *MEMORY[0x277CC1F58];
  v1 = sub_267EF8FF8();

  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v0, v1, 0);

  if (!PreferredIdentifierForTag)
  {
    return 0xD000000000000018;
  }

  v3 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *MEMORY[0x277CC1F60]);
  if (!v3)
  {

    return 0xD000000000000018;
  }

  v4 = v3;
  v5 = sub_267EF9028();

  return v5;
}

uint64_t sub_267E0A1E8(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x2822009F8](sub_267E0A208, 0, 0);
}

uint64_t sub_267E0A208()
{
  v2 = v1[17];
  OUTLINED_FUNCTION_7_43();
  v3 = *(v0 + 368);
  v4 = OUTLINED_FUNCTION_38_0();
  v5(v4);
  if (v6)
  {
LABEL_2:

    goto LABEL_3;
  }

  v18 = v1[17];
  OUTLINED_FUNCTION_7_43();
  v19 = *(v0 + 368);
  v20 = OUTLINED_FUNCTION_38_0();
  v0 = v21(v20);
  v23 = v22;
  v24 = v18 + OBJC_IVAR____TtC16SiriMessagesFlow34EditMessageRequestSupportCheckFlow_sentMessageContext;
  v25 = *(v24 + *(type metadata accessor for TimedSentMessageContext(0) + 24));
  v26 = sub_267EF7C18();
  if (v23)
  {
    if (v27)
    {
      if (v0 != v26 || v23 != v27)
      {
        v0 = sub_267EF9EA8();

        if ((v0 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_3;
      }

      goto LABEL_2;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v27)
  {
    goto LABEL_20;
  }

LABEL_3:
  OUTLINED_FUNCTION_7_43();
  v7 = *(v0 + 296);
  v8 = OUTLINED_FUNCTION_38_0();
  if ((v9(v8) & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = sub_267EF8A08();
    v1[18] = __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95C8();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v13, v14, "#EditMessageRequestCheckFlow unsupported request");
      OUTLINED_FUNCTION_32_0();
    }

    v15 = swift_task_alloc();
    v1[19] = v15;
    *v15 = v1;
    v15[1] = sub_267E0A510;
    v16 = v1[17];

    return sub_267E0AB70();
  }

LABEL_21:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v29 = sub_267EF8A08();
  __swift_project_value_buffer(v29, qword_280240FB0);
  v30 = sub_267EF89F8();
  v31 = sub_267EF95C8();
  if (os_log_type_enabled(v30, v31))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v32, v33, "#EditMessageRequestCheckFlow supported request");
    OUTLINED_FUNCTION_32_0();
  }

  v34 = v1[16];
  v35 = v1[17];

  *(v35 + 56) = 0;
  sub_267EF4018();
  OUTLINED_FUNCTION_17();

  return v36();
}

uint64_t sub_267E0A510()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 152);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    v7 = sub_267E0A86C;
  }

  else
  {
    v7 = sub_267E0A614;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E0A614()
{
  v1 = v0[17];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_38_0();
  v5(v4);
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v6);
  v8 = *(MEMORY[0x277D5BF40] + 4);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_267E0A700;

  return MEMORY[0x2821BB5D0](v0 + 2, v6, v7);
}

uint64_t sub_267E0A700()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 168);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 176) = v0;

  if (v0)
  {
    v7 = sub_267E0A9B8;
  }

  else
  {
    v7 = sub_267E0A804;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E0A804()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[16];
  sub_267EF4018();
  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E0A86C()
{
  v20 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    OUTLINED_FUNCTION_11_40(4.8149e-34);
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[14];
    v11 = sub_267EF9F68();
    v13 = sub_267BA33E8(v11, v12, &v19);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_11_9(&dword_267B93000, v14, v15, "#EditMessageRequestCheckFlow Unable to make response %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v16 = v0[16];
  sub_267EF4018();
  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t sub_267E0A9B8()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[22];
  v2 = v0[18];
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    OUTLINED_FUNCTION_11_40(4.8149e-34);
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[14];
    v11 = sub_267EF9F68();
    v13 = sub_267BA33E8(v11, v12, &v19);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_11_9(&dword_267B93000, v14, v15, "#EditMessageRequestCheckFlow Unable to make response %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v16 = v0[16];
  sub_267EF4018();
  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t sub_267E0AB70()
{
  OUTLINED_FUNCTION_12();
  v1[32] = v2;
  v1[33] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  v4 = *(*(sub_267EF7B88() - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v5 = sub_267EF4228();
  v1[36] = v5;
  v6 = *(v5 - 8);
  v1[37] = v6;
  v7 = *(v6 + 64) + 15;
  v1[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E0AC90, 0, 0);
}

uint64_t sub_267E0AC90()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[35];
  type metadata accessor for EditMessageCATs();
  sub_267EF7B68();
  v0[39] = sub_267EF78E8();
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_267E0AD50;
  v3 = v0[38];

  return sub_267D24940();
}

uint64_t sub_267E0AD50()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 320);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (v0)
  {
    v7 = sub_267E0B234;
  }

  else
  {
    v8 = *(v3 + 312);

    v7 = sub_267E0AE5C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E0AE5C()
{
  v1 = *(v0 + 264);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_38_0();
  v5(v4);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_38_0();
  if (sub_267EF3C18())
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    v7 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v8 = *(v7 + 8);
    v9 = OUTLINED_FUNCTION_38_0();
    v10(v9);
    v11 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_38_0();
    v12 = sub_267EF3BF8();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v13 = *(v0 + 328);
  v14 = *(v0 + 264);
  sub_267B9AFEC(v14 + OBJC_IVAR____TtC16SiriMessagesFlow34EditMessageRequestSupportCheckFlow_catProvider, v0 + 216);
  v15 = v14[11];
  v16 = v14[12];
  __swift_project_boxed_opaque_existential_0(v14 + 8, v15);
  v17 = (*(v16 + 368))(v15, v16);
  v19 = 0xD000000000000013;
  if (v18)
  {
    v19 = v17;
    v20 = v18;
  }

  else
  {
    v20 = 0x8000000267F10280;
  }

  v21 = sub_267DA0F10((v0 + 216), v19, v20);
  if (v13)
  {
    v23 = *(v0 + 296);
    v22 = *(v0 + 304);
    v24 = *(v0 + 288);

    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    (*(v23 + 8))(v22, v24);
    v25 = *(v0 + 304);
    v26 = *(v0 + 272);
    v27 = *(v0 + 280);

    OUTLINED_FUNCTION_17();
    goto LABEL_11;
  }

  v29 = v21;
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_267EFCA40;
  *(v30 + 32) = v29;
LABEL_10:
  v31 = *(v0 + 296);
  v32 = *(v0 + 304);
  v48 = *(v0 + 288);
  v49 = *(v0 + 280);
  v33 = *(v0 + 272);
  v34 = *(v0 + 256);
  v35 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v36 = *(v35 + 8);
  v37 = OUTLINED_FUNCTION_31();
  v38(v37);
  v39 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v40 = *(v39 + 8);
  v41 = OUTLINED_FUNCTION_31();
  v42(v41);
  v43 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_31();
  sub_267EF3BC8();
  v44 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v44);
  v45 = sub_267EF4CC8();
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  v46 = MEMORY[0x277D5C1D8];
  v34[3] = v45;
  v34[4] = v46;
  __swift_allocate_boxed_opaque_existential_0(v34);
  sub_267EF3F98();

  sub_267B9FF34(v0 + 176, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v33, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  (*(v31 + 8))(v32, v48);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  OUTLINED_FUNCTION_17();
LABEL_11:

  return v28();
}

uint64_t sub_267E0B234()
{
  v1 = v0[39];

  v2 = v0[41];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267E0B2B8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow34EditMessageRequestSupportCheckFlow_sentMessageContext);
  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow34EditMessageRequestSupportCheckFlow_catProvider));
}

uint64_t sub_267E0B2F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow34EditMessageRequestSupportCheckFlow_sentMessageContext);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow34EditMessageRequestSupportCheckFlow_catProvider));
  return v0;
}

uint64_t sub_267E0B33C()
{
  sub_267E0B2F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditMessageRequestSupportCheckFlow()
{
  result = qword_28022C5B8;
  if (!qword_28022C5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267E0B3E8()
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267E0B49C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BAEBEC;

  return sub_267E0A1E8(a1);
}

uint64_t sub_267E0B570()
{
  sub_267E0B5C8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_267E0B5C8()
{
  if (!qword_28022C5D8)
  {
    sub_267E0B610();
    if (!v1)
    {
      atomic_store(v0, &qword_28022C5D8);
    }
  }
}

void sub_267E0B610()
{
  if (!qword_28022BF18)
  {
    sub_267EF8198();
    v0 = sub_267EF9888();
    if (!v1)
    {
      atomic_store(v0, &qword_28022BF18);
    }
  }
}

uint64_t sub_267E0B668(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF8198();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BF88, &qword_267F09120);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C5E0, &qword_267F0ABE0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v33 - v23;
  v25 = *(v22 + 56);
  sub_267E0BAE4(a1, &v33 - v23);
  sub_267E0BAE4(a2, &v24[v25]);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
  switch(__swift_getEnumTagSinglePayload(v24, 9, v26))
  {
    case 1u:
      if (OUTLINED_FUNCTION_0_63() == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    case 2u:
      if (OUTLINED_FUNCTION_0_63() != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    case 3u:
      if (OUTLINED_FUNCTION_0_63() != 3)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    case 4u:
      if (OUTLINED_FUNCTION_0_63() != 4)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    case 5u:
      if (OUTLINED_FUNCTION_0_63() != 5)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    case 6u:
      if (OUTLINED_FUNCTION_0_63() != 6)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    case 7u:
      if (OUTLINED_FUNCTION_0_63() != 7)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    case 8u:
      if (OUTLINED_FUNCTION_0_63() == 8)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    case 9u:
      if (OUTLINED_FUNCTION_0_63() != 9)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    default:
      sub_267E0BAE4(v24, v19);
      if (OUTLINED_FUNCTION_0_63())
      {
        sub_267B9FF34(v19, &qword_280229920, &unk_267F0ABD0);
LABEL_22:
        sub_267B9FF34(v24, &qword_28022C5E0, &qword_267F0ABE0);
        return 0;
      }

      v28 = *(v12 + 48);
      sub_267E0BB48(v19, v15);
      sub_267E0BB48(&v24[v25], &v15[v28]);
      OUTLINED_FUNCTION_2_5(v15);
      if (v29)
      {
        OUTLINED_FUNCTION_2_5(&v15[v28]);
        if (v29)
        {
          sub_267B9FF34(v15, &qword_280229920, &unk_267F0ABD0);
          goto LABEL_21;
        }
      }

      else
      {
        sub_267E0BBB8(v15, v11);
        OUTLINED_FUNCTION_2_5(&v15[v28]);
        if (!v29)
        {
          v30 = v34;
          (*(v34 + 32))(v7, &v15[v28], v4);
          sub_267E0BC28();
          v31 = sub_267EF8FE8();
          v32 = *(v30 + 8);
          v32(v7, v4);
          v32(v11, v4);
          sub_267B9FF34(v15, &qword_280229920, &unk_267F0ABD0);
          if ((v31 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_21:
          sub_267BA1B7C(v24);
          return 1;
        }

        (*(v34 + 8))(v11, v4);
      }

      sub_267B9FF34(v15, &qword_28022BF88, &qword_267F09120);
LABEL_33:
      sub_267BA1B7C(v24);
      return 0;
  }
}

uint64_t sub_267E0BAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E0BB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E0BBB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_267E0BC28()
{
  result = qword_28022BF98;
  if (!qword_28022BF98)
  {
    sub_267EF8198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BF98);
  }

  return result;
}

uint64_t sub_267E0BC80()
{
  OUTLINED_FUNCTION_101();
  v1 = sub_267EF2BA8();
  v2 = OUTLINED_FUNCTION_58(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v28 = sub_267EF89E8();
  v10 = OUTLINED_FUNCTION_58(v28);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v17 = v16 - v15;
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v18 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  OUTLINED_FUNCTION_9_43();
  sub_267BA9F38(0, &qword_28022C5F8, 0x277CE63D8);
  (*(v4 + 16))(v9, v0, v1);
  v19 = sub_267E0DB18(v9);
  [v19 duration];
  Seconds = CMTimeGetSeconds(&time);
  sub_267EF9688();
  OUTLINED_FUNCTION_9_43();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v21 = sub_267EF8A08();
  __swift_project_value_buffer(v21, qword_280240FB0);
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_28_3();
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  v24 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 68157952;
    *(v26 + 4) = 2;
    *(v26 + 8) = 2048;
    *(v26 + 10) = Seconds;
    _os_log_impl(&dword_267B93000, v22, v23, "#AudioMessageUtils audio message duration: %.*f sec", v26, 0x12u);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  (*(v12 + 8))(v17, v28);
  return *&Seconds;
}

uint64_t sub_267E0BF50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = a5;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = sub_267EF2BA8();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E0C030, 0, 0);
}

uint64_t sub_267E0C030()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  if ((*(v3 + 432))(v2, v3) != 2)
  {
    v4 = v0[4];
    if ((sub_267EF96E8() & 1) == 0)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v29 = sub_267EF8A08();
      __swift_project_value_buffer(v29, qword_280240FB0);
      v23 = sub_267EF89F8();
      v24 = sub_267EF95D8();
      v30 = OUTLINED_FUNCTION_13_0();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_14_0();
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "#AudioMessageUtils No need to extract speech since neither NL intent nor SK intent are for an audio message";
      goto LABEL_16;
    }
  }

  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_0(v0[3], v5);
  (*(v6 + 400))(v5, v6);
  if (v7)
  {
    v8 = v0[6];
    v9 = v0[3];

    sub_267E0D20C();
    v11 = v10;
    v13 = v1[3];
    v12 = v1[4];
    __swift_project_boxed_opaque_existential_0(v9, v13);
    v14 = (*(v12 + 456))(v13, v12);
    v16 = v14 + v11;
    if (__CFADD__(v14, v11))
    {
      __break(1u);
    }

    else
    {
      v17 = v15 + v11;
      if (!__CFADD__(v15, v11))
      {
        v18 = swift_task_alloc();
        v0[12] = v18;
        *v18 = v0;
        v18[1] = sub_267E0C334;
        v19 = v0[11];
        v20 = v0[5];

        return sub_267DEE34C(v19, v16, v17, 1, v20);
      }
    }

    __break(1u);
  }

  else if (qword_280228818 == -1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_10();
  swift_once();
LABEL_10:
  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  v25 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_14_0();
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "#AudioMessageUtils No need to extract speech since message contents are nil";
LABEL_16:
    _os_log_impl(&dword_267B93000, v23, v24, v28, v27, 2u);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

LABEL_17:

  v33 = v0[10];
  v32 = v0[11];
  v34 = v0[9];

  v35 = v0[1];

  return v35();
}

uint64_t sub_267E0C334()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_267E0C788;
  }

  else
  {
    v3 = sub_267E0C448;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_267E0C448()
{
  v44 = v0;
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    sub_267E0CF58(*(v0 + 32), v1);
    (*(v3 + 8))(v1, v2);
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);
    sub_267CF2988(*(v0 + 80));
    if (v4)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v6 = *(v0 + 88);
      v8 = *(v0 + 64);
      v7 = *(v0 + 72);
      v9 = *(v0 + 56);
      v10 = sub_267EF8A08();
      __swift_project_value_buffer(v10, qword_280240FB0);
      (*(v8 + 16))(v7, v6, v9);
      v11 = v4;
      v12 = sub_267EF89F8();
      v13 = sub_267EF95E8();

      v14 = os_log_type_enabled(v12, v13);
      v16 = *(v0 + 64);
      v15 = *(v0 + 72);
      v17 = *(v0 + 56);
      if (v14)
      {
        v42 = v13;
        v18 = swift_slowAlloc();
        v43[0] = swift_slowAlloc();
        *v18 = 136315394;
        sub_267E0E96C();
        v19 = sub_267EF9E58();
        v21 = v20;
        v22 = OUTLINED_FUNCTION_10_38();
        (v12)(v22);
        v23 = v12;
        v24 = sub_267BA33E8(v19, v21, v43);

        *(v18 + 4) = v24;
        *(v18 + 12) = 2080;
        *(v0 + 16) = v4;
        v25 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
        v26 = sub_267EF9098();
        v28 = sub_267BA33E8(v26, v27, v43);

        *(v18 + 14) = v28;
        _os_log_impl(&dword_267B93000, v12, v42, "#AudioMessageUtils Cannot copy audio message file at %s. Proceeding without copy. error: %s", v18, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {

        v34 = OUTLINED_FUNCTION_10_38();
        (v12)(v34);
        v23 = v12;
      }

      v35 = *(v0 + 88);
      v36 = *(v0 + 56);
      sub_267E0CF58(*(v0 + 32), v35);

      (v23)(v35, v36);
    }

    else
    {
      v29 = *(v0 + 80);
      v30 = *(v0 + 88);
      v31 = *(v0 + 56);
      v32 = *(v0 + 64);
      sub_267E0CF58(*(v0 + 32), v29);
      v33 = *(v32 + 8);
      v33(v29, v31);
      v33(v30, v31);
    }
  }

  v38 = *(v0 + 80);
  v37 = *(v0 + 88);
  v39 = *(v0 + 72);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_267E0C788()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

id sub_267E0C800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_267EF2AF8();
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_267EF8FF8();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_267EF8FF8();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() fileWithFileURL:v8 filename:v9 typeIdentifier:v10];

  v12 = sub_267EF2BA8();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id sub_267E0C910()
{
  OUTLINED_FUNCTION_101();
  v1 = sub_267EF89E8();
  v2 = OUTLINED_FUNCTION_58(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v10 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  OUTLINED_FUNCTION_16_35();
  v11 = sub_267E0DBB0(v0);
  if ((v12 & 1) == 0)
  {
    sub_267BA9F38(0, &qword_28022A0B0, 0x277D47B10);
    v13 = sub_267BF88F4();
    [v13 setAudioData_];
    sub_267EF9688();
    OUTLINED_FUNCTION_16_35();
    sub_267C095E0(v11);
    v11 = v13;
  }

  (*(v4 + 8))(v9, v1);
  return v11;
}

uint64_t sub_267E0CA8C(uint64_t a1)
{
  if (qword_280228818 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v2 = sub_267EF8A08();
    __swift_project_value_buffer(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    sub_267EF95D8();
    v4 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_14_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v6, v7, "Clearing out audioMessageFile attachments. Keeping all other attachments");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v8 = sub_267E76140(a1);
    v9 = MEMORY[0x277D84F90];
    if (!v8)
    {
      break;
    }

    a1 = v8;
    v18 = MEMORY[0x277D84F90];
    v10 = sub_267BAF0DC(v8);
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        v9 = v18;
        goto LABEL_17;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D609870](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(a1 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v14 = [v12 audioMessageFile];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        sub_267EF9BD8();
        v16 = *(v18 + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

LABEL_17:
  if (!sub_267BAF0DC(v9))
  {

    return 0;
  }

  return v9;
}

uint64_t sub_267E0CC68(int a1)
{
  v1 = MEMORY[0x277D48B40];
  v2 = MEMORY[0x277D48B58];
  if (a1 == 1869641075)
  {
    v2 = MEMORY[0x277D48B50];
  }

  if (a1 != 1819304813)
  {
    v1 = v2;
  }

  if (a1 == 778924083)
  {
    v1 = MEMORY[0x277D48B48];
  }

  v3 = *v1;
  return sub_267EF9028();
}

id sub_267E0CCC0(void *a1)
{
  v2 = sub_267EF2D28();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267EF2D18();
  v12 = sub_267EF2CE8();
  v14 = v13;
  (*(v5 + 8))(v10, v2);
  sub_267BF89FC(v12, v14, v11);
  v15 = [a1 streamDescription];
  v16 = *v15;
  v17 = v15[3];
  v19 = v15[4];
  v18 = v15[5];
  v21 = v15[6];
  v20 = v15[7];
  v23 = v15[8];
  v22 = v15[9];
  v24 = sub_267E0CC68(v15[2]);
  sub_267E0F35C(v24, v25, v11);
  v26 = sub_267EFA048();
  [v11 setFormatID_];

  v27 = sub_267EFA048();
  [v11 setBitsPerChannel_];

  v28 = sub_267EFA048();
  [v11 setBytesPerFrame_];

  v29 = sub_267EFA048();
  [v11 setBytesPerPacket_];

  v30 = sub_267EFA048();
  [v11 setChannelsPerFrame_];

  v31 = sub_267EFA048();
  [v11 setFormatFlags_];

  v32 = sub_267EFA048();
  [v11 setFramesPerPacket_];

  v33 = sub_267EFA048();
  [v11 setReserved_];

  v34 = sub_267EF9478();
  [v11 setSampleRate_];

  return v11;
}

void sub_267E0CF58(void *a1, uint64_t a2)
{
  v4 = sub_267EF8818();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  v13 = sub_267EF2BA8();
  v14 = OUTLINED_FUNCTION_58(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
  (*(v16 + 16))(v21, a2, v13);
  v22 = sub_267EF2AE8();
  v24 = v23;
  sub_267EF87C8();
  v25 = sub_267EF8768();
  v27 = v26;
  (*(v7 + 8))(v12, v4);
  v28 = sub_267E0C800(v21, v22, v24, v25, v27);
  v29 = [objc_opt_self() attachmentWithAudioMessageFile_];

  v30 = sub_267E0CA8C(a1);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v31 = v30;
  }

  v35 = v31;
  v32 = v29;
  MEMORY[0x26D608F90]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_267EF9328();
  }

  sub_267EF9368();
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v33 = sub_267EF92D8();

  v34 = sub_267EF8FF8();
  [a1 setValue:v33 forKey:v34];
}

void sub_267E0D20C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C5E8, &qword_267F0ABF8);
  OUTLINED_FUNCTION_101();
  v0 = sub_267EF7008();
  OUTLINED_FUNCTION_58(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_267EFCC90;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277D61C70], v0);
  v8(v7 + v4, *MEMORY[0x277D61CA0], v0);
  v9 = sub_267C9B248();
  swift_setDeallocating();
  sub_267DB70D0();
  if (!v9)
  {
    return;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  v11 = sub_267EF89F8();
  sub_267EF95D8();
  v12 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_14_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_28_11(&dword_267B93000, v14, v15, "#AudioMessageUtils inputOrigin is voice trigger, checking voiceTriggerEventInfo for audio offset");
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  sub_267EF6FF8();
  if (!sub_267EF6FC8())
  {
    return;
  }

  sub_267EF6FA8();

  v16 = sub_267EF86D8();

  if (!v16)
  {
    return;
  }

  v17 = sub_267C8ED40(0xD000000000000013, 0x8000000267F1B0E0, v16);
  v19 = v18;
  if (!v18)
  {

    return;
  }

  v20 = v17;
  v21 = sub_267C8ED40(0xD000000000000012, 0x8000000267F1B100, v16);
  v23 = v22;

  if (!v23)
  {
    goto LABEL_85;
  }

  v24 = HIBYTE(v19) & 0xF;
  v25 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v26 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_85;
  }

  if ((v19 & 0x1000000000000000) == 0)
  {
    if ((v19 & 0x2000000000000000) != 0)
    {
      if (v20 == 43)
      {
        if (!v24)
        {
LABEL_103:
          __break(1u);
          return;
        }

        if (v24 != 1)
        {
          OUTLINED_FUNCTION_14_39();
          while (1)
          {
            OUTLINED_FUNCTION_3_63();
            if (!v30 && v29)
            {
              break;
            }

            OUTLINED_FUNCTION_12_37();
            if (!v30)
            {
              break;
            }

            OUTLINED_FUNCTION_8_48();
            if (v29)
            {
              break;
            }

            OUTLINED_FUNCTION_11_41();
            if (v30)
            {
              goto LABEL_83;
            }
          }
        }
      }

      else if (v20 == 45)
      {
        if (!v24)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        if (v24 != 1)
        {
          OUTLINED_FUNCTION_14_39();
          while (1)
          {
            OUTLINED_FUNCTION_3_63();
            if (!v30 && v29)
            {
              break;
            }

            OUTLINED_FUNCTION_12_37();
            if (!v30)
            {
              break;
            }

            v29 = 10 * v20 >= v33;
            v20 = 10 * v20 - v33;
            if (!v29)
            {
              break;
            }

            OUTLINED_FUNCTION_11_41();
            if (v30)
            {
              goto LABEL_83;
            }
          }
        }
      }

      else if (v24)
      {
        v20 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_3_63();
          if (!v30 && v29)
          {
            break;
          }

          OUTLINED_FUNCTION_12_37();
          if (!v30)
          {
            break;
          }

          OUTLINED_FUNCTION_8_48();
          if (v29)
          {
            break;
          }

          OUTLINED_FUNCTION_11_41();
          if (v30)
          {
            goto LABEL_83;
          }
        }
      }

      goto LABEL_82;
    }

    if ((v20 & 0x1000000000000000) != 0)
    {
      v27 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v27 = sub_267EF9BC8();
    }

    v28 = *v27;
    if (v28 == 43)
    {
      if (v25 < 1)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      if (v25 == 1)
      {
        goto LABEL_82;
      }

      v20 = 0;
      if (v27)
      {
        while (1)
        {
          OUTLINED_FUNCTION_3_63();
          if (!v30 && v29)
          {
            goto LABEL_82;
          }

          OUTLINED_FUNCTION_12_37();
          if (!v30)
          {
            goto LABEL_82;
          }

          OUTLINED_FUNCTION_8_48();
          if (v29)
          {
            goto LABEL_82;
          }

          OUTLINED_FUNCTION_11_41();
          if (v30)
          {
            goto LABEL_83;
          }
        }
      }
    }

    else if (v28 == 45)
    {
      if (v25 < 1)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v25 == 1)
      {
        goto LABEL_82;
      }

      v20 = 0;
      if (v27)
      {
        while (1)
        {
          OUTLINED_FUNCTION_3_63();
          if (!v30 && v29)
          {
            goto LABEL_82;
          }

          OUTLINED_FUNCTION_12_37();
          if (!v30)
          {
            goto LABEL_82;
          }

          v29 = 10 * v20 >= v31;
          v20 = 10 * v20 - v31;
          if (!v29)
          {
            goto LABEL_82;
          }

          OUTLINED_FUNCTION_11_41();
          if (v30)
          {
            goto LABEL_83;
          }
        }
      }
    }

    else
    {
      if (!v25)
      {
LABEL_82:
        v20 = 0;
        v32 = 1;
        goto LABEL_83;
      }

      v20 = 0;
      if (v27)
      {
        do
        {
          v34 = *v27 - 48;
          if (v34 > 9)
          {
            goto LABEL_82;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            goto LABEL_82;
          }

          v29 = __CFADD__(10 * v20, v34);
          v20 = 10 * v20 + v34;
          if (v29)
          {
            goto LABEL_82;
          }

          ++v27;
        }

        while (--v25);
      }
    }

    v32 = 0;
LABEL_83:
    v35 = v32;
    goto LABEL_84;
  }

  v20 = sub_267E0E9C4(v20, v19, 10);
  v35 = v48;
LABEL_84:

  if (v35)
  {
LABEL_85:

    return;
  }

  v36 = sub_267E0D820(v21, v23);
  if ((v37 & 1) == 0)
  {
    v38 = v36;
    v39 = sub_267EF89F8();
    v40 = sub_267EF95D8();
    v41 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134218240;
      *(v43 + 4) = v20;
      *(v43 + 12) = 2048;
      *(v43 + 14) = v38;
      _os_log_impl(&dword_267B93000, v39, v40, "#AudioMessageUtils there are extraSamplesAtStart: %llu at hardwareSampleRate: %llu", v43, 0x16u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    if (is_mul_ok(v20, 0x3E8uLL))
    {
      if (v38)
      {
        v44 = 1000 * v20 / v38;
        v45 = sub_267EF89F8();
        v46 = sub_267EF95D8();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 134217984;
          *(v47 + 4) = v44;
          _os_log_impl(&dword_267B93000, v45, v46, "#AudioMessageUtils there are extraAudioSamplesAtStartInMs: %llu", v47, 0xCu);
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_100;
  }
}