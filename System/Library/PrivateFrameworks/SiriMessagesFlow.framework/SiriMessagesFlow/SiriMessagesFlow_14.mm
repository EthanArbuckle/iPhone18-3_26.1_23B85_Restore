uint64_t sub_267CB9E14(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000013 && 0x8000000267F0F820 == a2;
  if (v2 || (result = sub_267EF9EA8(), (result & 1) != 0))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_267EF8A08();
    __swift_project_value_buffer(v4, qword_280240FB0);
    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_267B93000, v5, v6, "Pre-warm app selection model for INSendMessageIntent", v7, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    return MEMORY[0x2821B8C50]();
  }

  return result;
}

uint64_t sub_267CB9F30()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_267CB9F90(uint64_t a1, uint64_t a2)
{
  result = sub_267CBA1F0(&qword_28022A688, a2, type metadata accessor for EligibleAppFinder);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267CB9FE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_267EF7CF8();
}

uint64_t sub_267CBA09C(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_267CB9FE8(a1, a2);
}

uint64_t sub_267CBA0A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_267EFCA40;
  sub_267EF7C38();
  *(v4 + 32) = sub_267EF7C08();
  a3(v4);
}

unint64_t sub_267CBA158()
{
  result = qword_28022A698;
  if (!qword_28022A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A698);
  }

  return result;
}

unint64_t sub_267CBA1AC()
{
  result = qword_28022A6B0;
  if (!qword_28022A6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022A6B0);
  }

  return result;
}

uint64_t sub_267CBA1F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_267CBA238()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_2(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_4_25(v6);

  return sub_267CB9470(v8, v9, v10, v11, v3);
}

uint64_t sub_267CBA2DC()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  v4[1] = sub_267CBA544;

  return sub_267CB91FC(v2, v0);
}

uint64_t sub_267CBA36C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_267CBA398()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_12_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_4_25(v8);

  return sub_267E99230();
}

uint64_t sub_267CBA45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A390, &qword_267F00A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267CBA4CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A390, &qword_267F00A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SendMessageAppSelectionExperimentService()
{
  result = qword_28022A6F8;
  if (!qword_28022A6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267CBA5FC(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  if (*(v4 + qword_28022A6C8))
  {
    v9 = *(v4 + qword_28022A6C8);

    sub_267CBA764(v10, a1, a2);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (*(v4 + qword_28022A6D0))
  {
    v13 = *(v4 + qword_28022A6D0);

    sub_267CBB1B4(v14, a3);
  }

  else
  {
    v15 = *(v4 + qword_28022A6D8 + 32);
    __swift_project_boxed_opaque_existential_0((v4 + qword_28022A6D8), *(v4 + qword_28022A6D8 + 24));
    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = a1;
    v16[4] = v12;
    v16[5] = a3;
    v16[6] = a4;

    v17 = a1;

    sub_267EF7CF8();
  }
}

void sub_267CBA764(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130) - 8) + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_26();
  v9 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_267B9AFEC(a3, v12);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  sub_267B9A5E8(v12, (v10 + 6));

  v11 = a2;
  sub_267E8FF18();
}

uint64_t sub_267CBA864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_267CBA888, 0, 0);
}

uint64_t sub_267CBA888()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_267EF7D48();
  *v4 = v0;
  v4[1] = sub_267CBA98C;
  v6 = *(v0 + 16);

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD00000000000001FLL, 0x8000000267F14E20, sub_267CBC400, v2, v5);
}

uint64_t sub_267CBA98C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_267CBAA9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A710, &qword_267F01668);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_267EF7D58();
}

void sub_267CBABFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF7D48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v53 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v47[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A390, &qword_267F00A70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v47[-v16];
  sub_267C2FB6C(a1, &v47[-v16], &qword_28022A390, &qword_267F00A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v5;
    v19 = *v17;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v20 = v4;
    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);
    v22 = v19;
    v23 = sub_267EF89F8();
    v24 = sub_267EF95E8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = sub_267EF9F68();
      v29 = sub_267BA33E8(v27, v28, &v54);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_267B93000, v23, v24, "#SeasExperiment: Run SeAS in shadow, but failed with error: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D60A7B0](v26, -1, -1);
      MEMORY[0x26D60A7B0](v25, -1, -1);
    }

    v30 = *MEMORY[0x277D553E8];
    v31 = sub_267EF7D38();
    v32 = v53;
    (*(*(v31 - 8) + 104))(v53, v30, v31);
    (*(v18 + 104))(v32, *MEMORY[0x277D55410], v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A710, &qword_267F01668);
    sub_267EF93C8();
  }

  else
  {
    (*(v5 + 32))(v13, v17, v4);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v52 = a2;
    v33 = sub_267EF8A08();
    __swift_project_value_buffer(v33, qword_280240FB0);
    v34 = *(v5 + 16);
    v34(v11, v13, v4);
    v35 = sub_267EF89F8();
    v36 = sub_267EF95D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v49 = v37;
      v50 = swift_slowAlloc();
      v54 = v50;
      *v37 = 136315138;
      sub_267CBC488(&qword_2802294E8, MEMORY[0x277D55430]);
      v48 = v36;
      v38 = sub_267EF9E58();
      v51 = v34;
      v39 = v4;
      v41 = v40;
      v42 = *(v5 + 8);
      v42(v11, v39);
      v43 = sub_267BA33E8(v38, v41, &v54);
      v4 = v39;
      v34 = v51;

      v44 = v49;
      *(v49 + 1) = v43;
      v45 = v44;
      _os_log_impl(&dword_267B93000, v35, v48, "#SeasExperiment: Run SeAS in shadow, got result: %s", v44, 0xCu);
      v46 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x26D60A7B0](v46, -1, -1);
      MEMORY[0x26D60A7B0](v45, -1, -1);
    }

    else
    {

      v42 = *(v5 + 8);
      v42(v11, v4);
    }

    v34(v53, v13, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A710, &qword_267F01668);
    sub_267EF93C8();
    v42(v13, v4);
  }
}

uint64_t sub_267CBB1B4(uint64_t a1, void (*a2)(void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A390, &qword_267F00A70);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_26();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);

  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    sub_267EF7C38();
    sub_267CBC488(&qword_28022A060, MEMORY[0x277D55380]);
    v15 = sub_267EF9E58();
    v17 = sub_267BA33E8(v15, v16, &v29);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_267B93000, v10, v11, "#SeasExperiment: select previouslyResolvedApp %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D60A7B0](v14, -1, -1);
    v18 = v13;
    a2 = v12;
    MEMORY[0x26D60A7B0](v18, -1, -1);
  }

  *v2 = a1;
  v19 = *MEMORY[0x277D55428];
  v20 = sub_267EF7D48();
  OUTLINED_FUNCTION_22(v20);
  (*(v21 + 104))(v2, v19);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF0, &qword_267F01650);
  inited = swift_initStackObject();
  v23 = OUTLINED_FUNCTION_1_31(inited, xmmword_267EFCC90);
  v24 = MEMORY[0x277D837D0];
  v23[3].n128_u64[0] = 0xD000000000000012;
  v23[3].n128_u64[1] = 0x8000000267F14E00;
  v23[4].n128_u64[1] = v24;
  v23[5].n128_u64[0] = 0x6C646E7542707061;
  v23[5].n128_u64[1] = 0xEB00000000644965;

  v25 = sub_267CBB4E4();
  inited[7].n128_u64[1] = v24;
  inited[6].n128_u64[0] = v25;
  inited[6].n128_u64[1] = v26;
  v27 = sub_267EF8F28();
  a2(v2, v27);

  return sub_267B9F98C(v2, &qword_28022A390, &qword_267F00A70);
}

uint64_t sub_267CBB4E4()
{
  result = sub_267EF7C18();
  if (!v1)
  {
    result = sub_267EF7C28();
    if (!v2)
    {
      return 0xD000000000000014;
    }
  }

  return result;
}

uint64_t sub_267CBB534(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unint64_t a5)
{
  v98 = a2;
  v89 = a3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A390, &qword_267F00A70);
  OUTLINED_FUNCTION_22(v94);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_26();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0) - 8) + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v13);
  v91 = v86 - v14;
  sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v92 = v16;
  v93 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  v90 = v20 - v19;
  if (qword_280228818 != -1)
  {
LABEL_30:
    OUTLINED_FUNCTION_0();
  }

  v95 = v5;
  v96 = a5;
  v97 = a4;
  v21 = sub_267EF8A08();
  __swift_project_value_buffer(v21, qword_280240FB0);
  a4 = sub_267EF89F8();
  v22 = sub_267EF95D8();
  if (os_log_type_enabled(a4, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_267B93000, a4, v22, "#SeasExperiment: Start SeAS experiment, and ask for app disambiguation", v23, 2u);
    MEMORY[0x26D60A7B0](v23, -1, -1);
  }

  v5 = sub_267BAF0DC(a1);
  v24 = 0;
  a5 = a1 & 0xC000000000000001;
  v100 = MEMORY[0x277D84F90];
  while (v5 != v24)
  {
    if (a5)
    {
      MEMORY[0x26D609870](v24, a1);
    }

    else
    {
      if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v25 = *(a1 + 8 * v24 + 32);
    }

    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    a4 = sub_267EF7C18();
    v28 = v27;

    ++v24;
    if (v28)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = *(v100 + 16);
        sub_267BF4EE8();
        v100 = v33;
      }

      v29 = *(v100 + 16);
      if (v29 >= *(v100 + 24) >> 1)
      {
        sub_267BF4EE8();
        v100 = v34;
      }

      v30 = v100;
      *(v100 + 16) = v29 + 1;
      v31 = v30 + 16 * v29;
      *(v31 + 32) = a4;
      *(v31 + 40) = v28;
      v24 = v26;
    }
  }

  v88 = (v99 + qword_28022A6F0);
  sub_267B9AFEC(v99 + qword_28022A6F0, v122);
  v121 = 0;
  memset(v120, 0, sizeof(v120));
  v35 = type metadata accessor for ExperimentSignalGatherer();
  memset(v118, 0, sizeof(v118));
  v119 = 0;
  OUTLINED_FUNCTION_6_0();
  v36 = swift_allocObject();
  *(v36 + 16) = 0x4024000000000000;
  v37 = type metadata accessor for ExperimentSignalFactory();
  v38 = swift_allocObject();
  v117[4] = &off_2878D94E8;
  v117[3] = v35;
  v117[0] = v36;
  v116 = &off_2878D94F8;
  v115 = v37;
  v114[0] = v38;
  v39 = type metadata accessor for AppSelectionSignalCollector();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v87 = v39;
  v42 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v117, v35);
  v86[1] = v86;
  OUTLINED_FUNCTION_23();
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_0_0();
  v48 = (v47 - v46);
  (*(v49 + 16))(v47 - v46);
  __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
  v86[0] = v86;
  OUTLINED_FUNCTION_23();
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_0_0();
  v55 = (v54 - v53);
  (*(v56 + 16))(v54 - v53);
  v57 = *v48;
  v58 = *v55;
  v113[3] = v35;
  v113[4] = &off_2878D94E8;
  v112[4] = &off_2878D94F8;
  v113[0] = v57;
  v112[3] = v37;
  v112[0] = v58;
  *(v42 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_intent) = sub_267EF97C8();
  *(v42 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_appResolutionType) = 3;
  *(v42 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_shadowAppResolution) = v89;
  sub_267B9AFEC(v113, v42 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalGatherer);
  sub_267B9AFEC(v122, v42 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream);
  sub_267B9AFEC(v112, v42 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalFactory);
  sub_267C2FB6C(v120, v42 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_userDefaults, &qword_280229840, &qword_267EFE9E0);
  sub_267C2FB6C(v118, &v107, &qword_28022A708, &unk_267F01640);
  if (v108)
  {
    sub_267B9A5E8(&v107, &v109);

    v59 = v97;
    v60 = v95;
    v61 = v91;
  }

  else
  {
    v62 = qword_280228730;

    v59 = v97;
    v60 = v95;
    v61 = v91;
    if (v62 != -1)
    {
      swift_once();
    }

    v63 = qword_280240A10;
    v105 = type metadata accessor for EligibleAppFinder();
    v106 = sub_267CBC488(&qword_28022A688, type metadata accessor for EligibleAppFinder);
    *&v104 = v63;
    OUTLINED_FUNCTION_6_0();
    v64 = swift_allocObject();
    *(v64 + 16) = 0x4024000000000000;
    v102 = v35;
    v103 = &off_2878D94E8;
    *&v101 = v64;
    v110 = &type metadata for UserPersonaSignalCollector;
    v111 = &off_2878D9498;
    v65 = swift_allocObject();
    *&v109 = v65;

    sub_267EDEDFC(&v104, &v101, (v65 + 16));
    if (v108)
    {
      sub_267B9F98C(&v107, &qword_28022A708, &unk_267F01640);
    }
  }

  sub_267B9A5E8(&v109, v42 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_userPresonaSignalCollector);
  __swift_project_boxed_opaque_existential_0(v122, v123);
  sub_267C31988(v61);
  v66 = v93;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v93);
  v68 = v90;
  if (EnumTagSinglePayload == 1)
  {
    sub_267EF2D18();
    v69 = __swift_getEnumTagSinglePayload(v61, 1, v66);
    v70 = v92;
    if (v69 != 1)
    {
      sub_267B9F98C(v61, &qword_280229430, &qword_267EFD2C0);
    }
  }

  else
  {
    v70 = v92;
    (*(v92 + 32))(v90, v61, v66);
  }

  v71 = OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_requestID;
  (*(v70 + 32))(v42 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_requestID, v68, v66);
  __swift_project_boxed_opaque_existential_0(v122, v123);
  sub_267C31FF0(v42 + v71);
  sub_267D293AC(v42 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_crrCommsAppSelectionJointId);
  sub_267EF2D18();
  sub_267B9F98C(v118, &qword_28022A708, &unk_267F01640);
  sub_267B9F98C(v120, &qword_280229840, &qword_267EFE9E0);
  __swift_destroy_boxed_opaque_existential_0(v112);
  __swift_destroy_boxed_opaque_existential_0(v113);
  OUTLINED_FUNCTION_6_0();
  v72 = swift_allocObject();
  *(v72 + 16) = v100;
  *(v42 + 16) = sub_267CBC2C4;
  *(v42 + 24) = v72;
  __swift_destroy_boxed_opaque_existential_0(v122);
  __swift_destroy_boxed_opaque_existential_0(v114);
  __swift_destroy_boxed_opaque_existential_0(v117);
  v73 = *(v99 + qword_28022A6E8);
  v123 = v87;
  v124 = &off_2878D9520;
  v122[0] = v42;
  swift_beginAccess();

  sub_267CBC2CC(v122, v73 + 224);
  swift_endAccess();

  v74 = v88[3];
  v75 = v88[4];
  __swift_project_boxed_opaque_existential_0(v88, v74);
  sub_267C31594(3, v74, v75);
  *v60 = a1;
  v76 = *MEMORY[0x277D55420];
  v77 = sub_267EF7D48();
  OUTLINED_FUNCTION_22(v77);
  (*(v78 + 104))(v60, v76);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF0, &qword_267F01650);
  inited = swift_initStackObject();
  v80 = OUTLINED_FUNCTION_1_31(inited, xmmword_267EFCC90);
  v81 = MEMORY[0x277D837D0];
  v80[3].n128_u64[0] = 0xD000000000000014;
  v80[3].n128_u64[1] = 0x8000000267F14DA0;
  v80[4].n128_u64[1] = v81;
  v80[5].n128_u64[0] = 0xD000000000000012;
  v80[5].n128_u64[1] = 0x8000000267F14DC0;

  v83 = sub_267CBBFC8(v82);
  inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  inited[6].n128_u64[0] = v83;
  v84 = sub_267EF8F28();
  (v59)(v60, v84);

  return sub_267B9F98C(v60, &qword_28022A390, &qword_267F00A70);
}

char *sub_267CBBFC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_267BC7934(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v13;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](v5, a1);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          v2 = sub_267EF9A68();
          goto LABEL_3;
        }

        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = sub_267CBB4E4();
      v9 = v8;

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_267BC7934((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      if (v2 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_267CBC160()
{
  v1 = *(v0 + qword_28022A6C8);

  v2 = *(v0 + qword_28022A6D0);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_28022A6D8));
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_28022A6E0));
  v3 = *(v0 + qword_28022A6E8);

  return __swift_destroy_boxed_opaque_existential_0((v0 + qword_28022A6F0));
}

uint64_t sub_267CBC1D4()
{
  v0 = sub_267EF7BD8();
  v1 = *(v0 + qword_28022A6C8);

  v2 = *(v0 + qword_28022A6D0);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_28022A6D8));
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_28022A6E0));
  v3 = *(v0 + qword_28022A6E8);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_28022A6F0));
  return v0;
}

uint64_t sub_267CBC25C()
{
  sub_267CBC1D4();

  return swift_deallocClassInstance();
}

uint64_t sub_267CBC294(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[2];
  return sub_267CBB534(a1, v2, v3, v4, v5);
}

uint64_t sub_267CBC2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295C8, &qword_267EFDD28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267CBC33C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_267BCE5E4;

  return sub_267CBA864(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_267CBC400(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_267CBAA9C(a1);
}

void sub_267CBC40C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A710, &qword_267F01668) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_267CBABFC(a1, v4);
}

uint64_t sub_267CBC488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267CBC510()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_16(v7, xmmword_267EFCDC0);
  v8 = *v0;
  if (*v0)
  {
    v9 = sub_267EF7958();
    v10 = v8;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_38();
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
  }

  *(v7 + 48) = v10;
  *(v7 + 72) = v9;
  *(v7 + 80) = 0xD000000000000011;
  *(v7 + 88) = 0x8000000267F13200;
  v11 = type metadata accessor for SendMessageAskForAudioMessageParameters(0);
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v11[5]);
  v12 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v6);
  if (v13)
  {

    sub_267B9FED8(v6, &unk_28022AE30, &qword_267EFC0B0);
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
  }

  else
  {
    *(v7 + 120) = v12;
    __swift_allocate_boxed_opaque_existential_0((v7 + 96));
    OUTLINED_FUNCTION_2_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_91_6();
    v16();
  }

  OUTLINED_FUNCTION_12_1();
  *(v7 + 128) = 0xD000000000000017;
  *(v7 + 136) = v17;
  v18 = MEMORY[0x277D839B0];
  *(v7 + 144) = 0;
  *(v7 + 168) = v18;
  *(v7 + 176) = 0x70756F7267;
  *(v7 + 184) = 0xE500000000000000;
  v19 = *(v0 + v11[6]);
  if (v19)
  {
    type metadata accessor for MessagesGroup(0);
    v20 = v19;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  *(v7 + 192) = v20;
  OUTLINED_FUNCTION_22_3();
  *(v7 + 216) = v21;
  *(v7 + 224) = v22;
  *(v7 + 232) = 0xE900000000000074;
  v23 = *(v0 + v11[7]);
  if (v23)
  {
    v24 = sub_267EF77C8();
  }

  else
  {
    v24 = 0;
    *(v7 + 248) = 0;
    *(v7 + 256) = 0;
  }

  *(v7 + 240) = v23;
  *(v7 + 264) = v24;

  return v7;
}

void sub_267CBC754()
{
  OUTLINED_FUNCTION_48_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_10(v9, v110);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1(v11, v12, v13, v14, v15, v16, v17, v18, v110);
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_22(v20, v21, v22, v23, v24, v25, v26, v27, v110);
  v29 = MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_23(v29, v30, v31, v32, v33, v34, v35, v36, v110);
  v38 = MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18_12(v38, v39, v40, v41, v42, v43, v44, v45, v110);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v50);
  v52 = &v110 - v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_16(v53, xmmword_267F01670);
  v54 = *v1;
  if (*v1)
  {
    sub_267EF7958();
    v55 = v54;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
  }

  *(v53 + 48) = v55;
  OUTLINED_FUNCTION_16_12();
  *(v53 + 72) = v56;
  *(v53 + 80) = v57;
  OUTLINED_FUNCTION_59_7();
  *(v53 + 88) = v58;
  v59 = type metadata accessor for SendMessageAskForPayloadParameters(0);
  OUTLINED_FUNCTION_138(&unk_28022AE30, &qword_267EFC0B0, v59[5]);
  v60 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v52);
  if (v61)
  {

    sub_267B9FED8(v52, &unk_28022AE30, &qword_267EFC0B0);
    *(v53 + 96) = 0u;
    *(v53 + 112) = 0u;
  }

  else
  {
    *(v53 + 120) = v60;
    __swift_allocate_boxed_opaque_existential_0((v53 + 96));
    OUTLINED_FUNCTION_8_9();
    (*(v62 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v53 + 128) = 0xD00000000000001CLL;
  *(v53 + 136) = v63;
  OUTLINED_FUNCTION_143_0(&unk_28022AE30, &qword_267EFC0B0, v59[6]);
  OUTLINED_FUNCTION_7_0(v3);
  v64 = v113;
  if (v61)
  {
    sub_267B9FED8(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v53 + 144) = 0u;
    *(v53 + 160) = 0u;
  }

  else
  {
    *(v53 + 168) = v60;
    __swift_allocate_boxed_opaque_existential_0((v53 + 144));
    OUTLINED_FUNCTION_8_9();
    (*(v65 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v53 + 176) = 0xD000000000000011;
  *(v53 + 184) = v66;
  sub_267BC9B04(v1 + v59[7], v2, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v2);
  v67 = v114;
  if (v61)
  {
    sub_267B9FED8(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v53 + 192) = 0u;
    *(v53 + 208) = 0u;
  }

  else
  {
    *(v53 + 216) = v60;
    __swift_allocate_boxed_opaque_existential_0((v53 + 192));
    OUTLINED_FUNCTION_8_9();
    (*(v68 + 32))();
  }

  OUTLINED_FUNCTION_15_15();
  *(v53 + 224) = v69;
  *(v53 + 232) = 0xEB00000000656D61;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v59[8]);
  OUTLINED_FUNCTION_7_0(v0);
  if (v61)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    *(v53 + 240) = 0u;
    *(v53 + 256) = 0u;
  }

  else
  {
    *(v53 + 264) = v60;
    __swift_allocate_boxed_opaque_existential_0((v53 + 240));
    OUTLINED_FUNCTION_8_9();
    v71 = *(v70 + 32);
    OUTLINED_FUNCTION_178();
    v72();
  }

  OUTLINED_FUNCTION_12_1();
  *(v53 + 272) = 0xD000000000000017;
  *(v53 + 280) = v73;
  v74 = MEMORY[0x277D839B0];
  *(v53 + 288) = 0;
  *(v53 + 312) = v74;
  *(v53 + 320) = 0x70756F7267;
  *(v53 + 328) = 0xE500000000000000;
  v75 = *(v1 + v59[9]);
  if (v75)
  {
    v76 = type metadata accessor for MessagesGroup(0);
    v77 = v75;
  }

  else
  {
    v76 = OUTLINED_FUNCTION_38();
    *(v53 + 344) = 0;
    *(v53 + 352) = 0;
  }

  *(v53 + 336) = v77;
  *(v53 + 360) = v76;
  *(v53 + 368) = 0x6F43796669646F6DLL;
  *(v53 + 376) = 0xEB00000000746E75;
  v78 = v1 + v59[10];
  if (v78[8])
  {
    v79 = 0;
    *(v53 + 392) = 0;
    *(v53 + 400) = 0;
    v80 = 0;
  }

  else
  {
    v80 = *v78;
    v79 = MEMORY[0x277D839F8];
  }

  *(v53 + 384) = v80;
  *(v53 + 408) = v79;
  *(v53 + 416) = 0x64616F6C796170;
  *(v53 + 424) = 0xE700000000000000;
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v59[11]);
  OUTLINED_FUNCTION_7_0(v4);
  if (v61)
  {

    sub_267B9FED8(v4, &unk_28022AE30, &qword_267EFC0B0);
    *(v53 + 432) = 0u;
    *(v53 + 448) = 0u;
  }

  else
  {
    *(v53 + 456) = v60;
    __swift_allocate_boxed_opaque_existential_0((v53 + 432));
    OUTLINED_FUNCTION_8_9();
    (*(v81 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v53 + 464) = 0xD000000000000014;
  *(v53 + 472) = v82;
  v83 = v111;
  sub_267BC9B04(v1 + v59[12], v111, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v83);
  v84 = v112;
  if (v61)
  {
    sub_267B9FED8(v83, &unk_28022AE30, &qword_267EFC0B0);
    *(v53 + 480) = 0u;
    *(v53 + 496) = 0u;
  }

  else
  {
    *(v53 + 504) = v60;
    __swift_allocate_boxed_opaque_existential_0((v53 + 480));
    OUTLINED_FUNCTION_8_9();
    (*(v85 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v53 + 512) = 0xD000000000000013;
  *(v53 + 520) = v86;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v59[13]);
  OUTLINED_FUNCTION_7_0(v84);
  if (v61)
  {
    sub_267B9FED8(v84, &unk_28022AE30, &qword_267EFC0B0);
    *(v53 + 528) = 0u;
    *(v53 + 544) = 0u;
  }

  else
  {
    *(v53 + 552) = v60;
    __swift_allocate_boxed_opaque_existential_0((v53 + 528));
    OUTLINED_FUNCTION_8_9();
    v88 = *(v87 + 32);
    OUTLINED_FUNCTION_178();
    v89();
  }

  OUTLINED_FUNCTION_22_3();
  *(v53 + 560) = v90;
  *(v53 + 568) = 0xE900000000000074;
  v91 = *(v1 + v59[14]);
  if (v91)
  {
    v92 = sub_267EF77C8();
    v93 = v91;
  }

  else
  {
    v92 = OUTLINED_FUNCTION_38();
    *(v53 + 584) = 0u;
  }

  *(v53 + 576) = v93;
  *(v53 + 600) = v92;
  OUTLINED_FUNCTION_12_1();
  *(v53 + 608) = 0xD000000000000012;
  *(v53 + 616) = v94;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v59[15]);
  OUTLINED_FUNCTION_7_0(v64);
  if (v61)
  {

    sub_267B9FED8(v64, &unk_28022AE30, &qword_267EFC0B0);
    *(v53 + 624) = 0u;
    *(v53 + 640) = 0u;
  }

  else
  {
    *(v53 + 648) = v60;
    __swift_allocate_boxed_opaque_existential_0((v53 + 624));
    OUTLINED_FUNCTION_8_9();
    (*(v95 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v53 + 656) = 0xD000000000000011;
  *(v53 + 664) = v96;
  OUTLINED_FUNCTION_143_0(&unk_28022AE30, &qword_267EFC0B0, v59[16]);
  OUTLINED_FUNCTION_7_0(v67);
  v97 = v115;
  if (v61)
  {
    sub_267B9FED8(v67, &unk_28022AE30, &qword_267EFC0B0);
    *(v53 + 672) = 0u;
    *(v53 + 688) = 0u;
  }

  else
  {
    *(v53 + 696) = v60;
    __swift_allocate_boxed_opaque_existential_0((v53 + 672));
    OUTLINED_FUNCTION_8_9();
    (*(v98 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v53 + 704) = 0xD00000000000001ALL;
  *(v53 + 712) = v99;
  v100 = v1 + v59[17];
  if (v100[8])
  {
    v101 = 0;
    *(v53 + 728) = 0u;
    v102 = 0;
  }

  else
  {
    v102 = *v100;
    v101 = MEMORY[0x277D839F8];
  }

  *(v53 + 720) = v102;
  *(v53 + 744) = v101;
  OUTLINED_FUNCTION_188();
  *(v53 + 752) = v103;
  OUTLINED_FUNCTION_186();
  *(v53 + 760) = v104;
  LOBYTE(v104) = *(v1 + v59[18]);
  *(v53 + 792) = v74;
  *(v53 + 768) = v104;
  OUTLINED_FUNCTION_12_1();
  *(v53 + 800) = 0xD000000000000016;
  *(v53 + 808) = v105;
  LOBYTE(v105) = *(v1 + v59[19]);
  *(v53 + 840) = v74;
  *(v53 + 816) = v105;
  OUTLINED_FUNCTION_183();
  *(v53 + 848) = v106;
  *(v53 + 856) = 0xE700000000000000;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v59[20]);
  OUTLINED_FUNCTION_7_0(v97);
  if (v61)
  {
    sub_267B9FED8(v97, &unk_28022AE30, &qword_267EFC0B0);
    *(v53 + 864) = 0u;
    *(v53 + 880) = 0u;
  }

  else
  {
    *(v53 + 888) = v60;
    __swift_allocate_boxed_opaque_existential_0((v53 + 864));
    OUTLINED_FUNCTION_8_9();
    v108 = *(v107 + 32);
    OUTLINED_FUNCTION_178();
    v109();
  }

  OUTLINED_FUNCTION_47();
}

void sub_267CBD07C()
{
  OUTLINED_FUNCTION_48_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v11, v195);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_1(v13, v14, v15, v16, v17, v18, v19, v20, v195);
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_22(v22, v23, v24, v25, v26, v27, v28, v29, v195);
  v31 = MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_23(v31, v32, v33, v34, v35, v36, v37, v38, v195);
  v40 = MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_12(v40, v41, v42, v43, v44, v45, v46, v47, v195);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77_0();
  v204 = v49;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77_0();
  v203 = v51;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_77_0();
  v201 = v54;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_25_2();
  v57 = MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_34_8(v57, v58, v59, v60, v61, v62, v63, v64, v195);
  v66 = MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_33_5(v66, v67, v68, v69, v70, v71, v72, v73, v195);
  v75 = MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_67_2(v75, v76, v77, v78, v79, v80, v81, v82, v195);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_77_0();
  v197 = v84;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_77_0();
  v196 = v86;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_77_0();
  v195 = v88;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v93);
  v95 = &v195 - v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v96 = swift_allocObject();
  OUTLINED_FUNCTION_16(v96, xmmword_267F01680);
  v97 = *v1;
  v202 = v3;
  v200 = v4;
  if (v97)
  {
    sub_267EF7958();
    v98 = v97;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v96 + 56) = 0;
    *(v96 + 64) = 0;
  }

  *(v96 + 48) = v98;
  OUTLINED_FUNCTION_16_12();
  *(v96 + 72) = v99;
  *(v96 + 80) = v100;
  OUTLINED_FUNCTION_59_7();
  *(v96 + 88) = v101;
  v102 = type metadata accessor for SendMessageConfirmAttachmentMessageParameters(0);
  sub_267BC9B04(v1 + v102[5], v95, &unk_28022AE30, &qword_267EFC0B0);
  v103 = sub_267EF79B8();
  OUTLINED_FUNCTION_8_6(v95);
  if (v104)
  {

    sub_267B9FED8(v95, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 96) = 0u;
    *(v96 + 112) = 0u;
  }

  else
  {
    *(v96 + 120) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 96));
    OUTLINED_FUNCTION_17_12();
    (*(v105 + 32))();
  }

  strcpy((v96 + 128), "attachmentType");
  *(v96 + 143) = -18;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v102[6]);
  OUTLINED_FUNCTION_8_6(v2);
  if (v104)
  {
    sub_267B9FED8(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 144) = 0u;
    *(v96 + 160) = 0u;
  }

  else
  {
    *(v96 + 168) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 144));
    OUTLINED_FUNCTION_17_12();
    v107 = *(v106 + 32);
    OUTLINED_FUNCTION_114_2();
    v108();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 176) = 0xD000000000000012;
  *(v96 + 184) = v109;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v102[7]);
  OUTLINED_FUNCTION_8_6(v0);
  v110 = v201;
  if (v104)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 192) = 0u;
    *(v96 + 208) = 0u;
  }

  else
  {
    *(v96 + 216) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 192));
    OUTLINED_FUNCTION_17_12();
    (*(v111 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 224) = 0xD000000000000012;
  *(v96 + 232) = v112;
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v102[8]);
  OUTLINED_FUNCTION_8_6(v6);
  if (v104)
  {
    sub_267B9FED8(v6, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 240) = 0u;
    *(v96 + 256) = 0u;
  }

  else
  {
    *(v96 + 264) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 240));
    OUTLINED_FUNCTION_17_12();
    (*(v113 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 272) = 0xD000000000000016;
  *(v96 + 280) = v114;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v102[9]);
  OUTLINED_FUNCTION_8_6(v5);
  v115 = v197;
  if (v104)
  {
    sub_267B9FED8(v5, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 288) = 0u;
    *(v96 + 304) = 0u;
  }

  else
  {
    *(v96 + 312) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 288));
    OUTLINED_FUNCTION_17_12();
    v117 = *(v116 + 32);
    OUTLINED_FUNCTION_192();
    v118();
  }

  v119 = v199;
  OUTLINED_FUNCTION_12_1();
  *(v96 + 320) = 0xD00000000000001CLL;
  *(v96 + 328) = v120;
  v121 = v195;
  sub_267BC9B04(v1 + v102[10], v195, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_8_6(v121);
  v122 = v198;
  if (v104)
  {
    sub_267B9FED8(v121, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 336) = 0u;
    *(v96 + 352) = 0u;
  }

  else
  {
    *(v96 + 360) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 336));
    OUTLINED_FUNCTION_17_12();
    v124 = *(v123 + 32);
    OUTLINED_FUNCTION_114_2();
    v125();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 368) = 0xD00000000000001DLL;
  *(v96 + 376) = v126;
  v127 = v196;
  sub_267BC9B04(v1 + v102[11], v196, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_8_6(v127);
  if (v104)
  {
    sub_267B9FED8(v127, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 384) = 0u;
    *(v96 + 400) = 0u;
  }

  else
  {
    *(v96 + 408) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 384));
    OUTLINED_FUNCTION_17_12();
    v129 = *(v128 + 32);
    OUTLINED_FUNCTION_114_2();
    v130();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 416) = 0xD000000000000024;
  *(v96 + 424) = v131;
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v102[12]);
  OUTLINED_FUNCTION_8_6(v115);
  v132 = v110;
  if (v104)
  {
    sub_267B9FED8(v115, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 432) = 0u;
    *(v96 + 448) = 0u;
  }

  else
  {
    *(v96 + 456) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 432));
    OUTLINED_FUNCTION_17_12();
    (*(v133 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 464) = 0xD00000000000001BLL;
  *(v96 + 472) = v134;
  v135 = MEMORY[0x277D839B0];
  *(v96 + 480) = *(v1 + v102[13]);
  OUTLINED_FUNCTION_12_1();
  *(v96 + 504) = v135;
  *(v96 + 512) = 0xD000000000000014;
  *(v96 + 520) = v136;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v102[14]);
  OUTLINED_FUNCTION_8_6(v122);
  if (v104)
  {
    sub_267B9FED8(v122, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 528) = 0u;
    *(v96 + 544) = 0u;
  }

  else
  {
    *(v96 + 552) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 528));
    OUTLINED_FUNCTION_17_12();
    v138 = *(v137 + 32);
    OUTLINED_FUNCTION_192();
    v139();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 560) = 0xD000000000000011;
  *(v96 + 568) = v140;
  OUTLINED_FUNCTION_162(&unk_28022AE30, &qword_267EFC0B0, v102[15]);
  OUTLINED_FUNCTION_8_6(v122);
  if (v104)
  {
    sub_267B9FED8(v122, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 576) = 0u;
    *(v96 + 592) = 0u;
  }

  else
  {
    *(v96 + 600) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 576));
    OUTLINED_FUNCTION_17_12();
    v142 = *(v141 + 32);
    OUTLINED_FUNCTION_192();
    v143();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 608) = 0xD000000000000014;
  *(v96 + 616) = v144;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v102[16]);
  OUTLINED_FUNCTION_8_6(v119);
  v145 = v135;
  if (v104)
  {
    sub_267B9FED8(v119, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 624) = 0u;
    *(v96 + 640) = 0u;
  }

  else
  {
    *(v96 + 648) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 624));
    OUTLINED_FUNCTION_17_12();
    (*(v146 + 32))();
  }

  v147 = v204;
  OUTLINED_FUNCTION_15_15();
  *(v96 + 656) = v148;
  OUTLINED_FUNCTION_78_5();
  *(v96 + 664) = v149;
  v150 = v200;
  sub_267BC9B04(v1 + v102[17], v200, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_8_6(v150);
  v151 = v203;
  if (v104)
  {
    sub_267B9FED8(v150, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 672) = 0u;
    *(v96 + 688) = 0u;
  }

  else
  {
    *(v96 + 696) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 672));
    OUTLINED_FUNCTION_17_12();
    (*(v152 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 704) = 0xD000000000000017;
  *(v96 + 712) = v153;
  *(v96 + 744) = v145;
  *(v96 + 720) = 0;
  OUTLINED_FUNCTION_85_4();
  *(v96 + 752) = v154;
  OUTLINED_FUNCTION_175();
  *(v96 + 760) = v155;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v102[18]);
  OUTLINED_FUNCTION_8_6(v132);
  v156 = v206;
  if (v104)
  {
    sub_267B9FED8(v132, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 768) = 0u;
    *(v96 + 784) = 0u;
  }

  else
  {
    *(v96 + 792) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 768));
    OUTLINED_FUNCTION_17_12();
    v158 = *(v157 + 32);
    OUTLINED_FUNCTION_114_2();
    v159();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 800) = 0xD000000000000018;
  *(v96 + 808) = v160;
  LOBYTE(v160) = *(v1 + v102[19]);
  *(v96 + 840) = v145;
  *(v96 + 816) = v160;
  OUTLINED_FUNCTION_197();
  *(v96 + 848) = v161;
  *(v96 + 856) = 0xE800000000000000;
  LOBYTE(v161) = *(v1 + v102[20]);
  *(v96 + 888) = v145;
  *(v96 + 864) = v161;
  OUTLINED_FUNCTION_43_6();
  *(v96 + 896) = v162;
  *(v96 + 904) = 0xE700000000000000;
  v163 = v202;
  sub_267BC9B04(v1 + v102[21], v202, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_8_6(v163);
  if (v104)
  {
    sub_267B9FED8(v163, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 912) = 0u;
    *(v96 + 928) = 0u;
  }

  else
  {
    *(v96 + 936) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 912));
    OUTLINED_FUNCTION_17_12();
    v165 = *(v164 + 32);
    OUTLINED_FUNCTION_114_2();
    v166();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 944) = 0xD000000000000014;
  *(v96 + 952) = v167;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v102[22]);
  OUTLINED_FUNCTION_8_6(v151);
  v168 = v205;
  if (v104)
  {
    sub_267B9FED8(v151, &unk_28022AE30, &qword_267EFC0B0);
    *(v96 + 960) = 0u;
    *(v96 + 976) = 0u;
  }

  else
  {
    *(v96 + 984) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 960));
    OUTLINED_FUNCTION_17_12();
    (*(v169 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 992) = 0xD000000000000021;
  *(v96 + 1000) = v170;
  LOBYTE(v170) = *(v1 + v102[23]);
  *(v96 + 1032) = v145;
  *(v96 + 1008) = v170;
  OUTLINED_FUNCTION_12_1();
  *(v96 + 1040) = 0xD000000000000013;
  *(v96 + 1048) = v171;
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v102[24]);
  OUTLINED_FUNCTION_8_6(v147);
  if (v104)
  {
    sub_267B9FED8(v147, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v96 + 1080) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 1056));
    OUTLINED_FUNCTION_17_12();
    (*(v172 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 1088) = 0xD000000000000012;
  *(v96 + 1096) = v173;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v102[25]);
  OUTLINED_FUNCTION_8_6(v168);
  if (v104)
  {
    sub_267B9FED8(v168, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v96 + 1128) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 1104));
    OUTLINED_FUNCTION_17_12();
    v175 = *(v174 + 32);
    OUTLINED_FUNCTION_114_2();
    v176();
  }

  OUTLINED_FUNCTION_22_3();
  *(v96 + 1136) = v177;
  OUTLINED_FUNCTION_187();
  *(v96 + 1144) = v178;
  v179 = *(v1 + v102[26]);
  *(v96 + 1176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v96 + 1152) = v179;
  OUTLINED_FUNCTION_12_1();
  *(v96 + 1184) = 0xD000000000000014;
  *(v96 + 1192) = v180;
  sub_267BC9B04(v1 + v102[27], v156, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_8_6(v156);
  if (v104)
  {

    sub_267B9FED8(v156, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_184();
  }

  else
  {
    *(v96 + 1224) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 1200));
    OUTLINED_FUNCTION_17_12();
    (*(v181 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v96 + 1232) = 0xD000000000000012;
  *(v96 + 1240) = v182;
  v183 = v207;
  sub_267BC9B04(v1 + v102[28], v207, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_8_6(v183);
  v184 = v208;
  if (v104)
  {
    sub_267B9FED8(v183, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v96 + 1272) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 1248));
    OUTLINED_FUNCTION_17_12();
    (*(v185 + 32))();
  }

  OUTLINED_FUNCTION_64_5();
  *(v96 + 1280) = v186;
  OUTLINED_FUNCTION_63_5();
  *(v96 + 1288) = v187;
  LOBYTE(v187) = *(v1 + v102[29]);
  *(v96 + 1320) = v145;
  *(v96 + 1296) = v187;
  OUTLINED_FUNCTION_37_2();
  *(v96 + 1328) = v188;
  OUTLINED_FUNCTION_62_3();
  *(v96 + 1336) = v189;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v102[30]);
  OUTLINED_FUNCTION_8_6(v184);
  if (v104)
  {
    sub_267B9FED8(v184, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v96 + 1368) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 1344));
    OUTLINED_FUNCTION_17_12();
    v191 = *(v190 + 32);
    OUTLINED_FUNCTION_114_2();
    v192();
  }

  OUTLINED_FUNCTION_183();
  *(v96 + 1376) = v193;
  *(v96 + 1384) = 0xE700000000000000;
  OUTLINED_FUNCTION_113_3(&unk_28022AE30, &qword_267EFC0B0, v102[31]);
  OUTLINED_FUNCTION_8_6(v1);
  if (v104)
  {
    sub_267B9FED8(v1, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v96 + 1416) = v103;
    __swift_allocate_boxed_opaque_existential_0((v96 + 1392));
    OUTLINED_FUNCTION_17_12();
    (*(v194 + 32))();
  }

  OUTLINED_FUNCTION_47();
}

void sub_267CBE088()
{
  OUTLINED_FUNCTION_48_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v11, v212[0]);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_1(v13, v14, v15, v16, v17, v18, v19, v20, v212[0]);
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_22(v22, v23, v24, v25, v26, v27, v28, v29, v212[0]);
  v31 = MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_23(v31, v32, v33, v34, v35, v36, v37, v38, v212[0]);
  v40 = MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_12(v40, v41, v42, v43, v44, v45, v46, v47, v212[0]);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77_0();
  v219 = v49;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_89_5();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_77_0();
  v217 = v52;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_53_3();
  v55 = MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_68_4(v55, v56, v57, v58, v59, v60, v61, v62, v212[0]);
  v64 = MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_34_8(v64, v65, v66, v67, v68, v69, v70, v71, v212[0]);
  v73 = MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_33_5(v73, v74, v75, v76, v77, v78, v79, v80, v212[0]);
  v82 = MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_67_2(v82, v83, v84, v85, v86, v87, v88, v89, v212[0]);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v94);
  v96 = v212 - v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v97 = swift_allocObject();
  OUTLINED_FUNCTION_16(v97, xmmword_267F01690);
  v98 = *v0;
  v218 = v3;
  v216 = v4;
  if (v98)
  {
    v99 = sub_267EF7958();
    v100 = v98;
  }

  else
  {
    v99 = OUTLINED_FUNCTION_81_5();
  }

  v101 = OUTLINED_FUNCTION_3_24(v99, v100);
  v102 = type metadata accessor for SendMessageConfirmAudioMessageParameters(v101);
  OUTLINED_FUNCTION_147(v102);
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v103);
  v104 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v96);
  if (v105)
  {

    sub_267B9FED8(v96, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    OUTLINED_FUNCTION_161();
    OUTLINED_FUNCTION_2_2();
    v107 = *(v106 + 32);
    OUTLINED_FUNCTION_112_3();
    v108();
  }

  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_12_1();
  *(v97 + 128) = v96;
  *(v97 + 136) = v109;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v4[6]);
  OUTLINED_FUNCTION_0_11(v6);
  v110 = v212[1];
  if (v105)
  {
    sub_267B9FED8(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_2_2();
    v112 = *(v111 + 32);
    OUTLINED_FUNCTION_100_4();
    v113();
  }

  OUTLINED_FUNCTION_12_1();
  *(v97 + 176) = v96;
  *(v97 + 184) = v114;
  OUTLINED_FUNCTION_138(&unk_28022AE30, &qword_267EFC0B0, v4[7]);
  OUTLINED_FUNCTION_0_11(v5);
  v115 = v219;
  if (v105)
  {
    sub_267B9FED8(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_126_2();
  }

  else
  {
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_2_2();
    v117 = *(v116 + 32);
    OUTLINED_FUNCTION_104_3();
    v118();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_179(v119);
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v120);
  OUTLINED_FUNCTION_0_11(v2);
  v121 = v217;
  if (v105)
  {
    sub_267B9FED8(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_127_0();
  }

  else
  {
    OUTLINED_FUNCTION_158_0();
    OUTLINED_FUNCTION_2_2();
    v123 = *(v122 + 32);
    OUTLINED_FUNCTION_74();
    v124();
  }

  OUTLINED_FUNCTION_12_1();
  *(v97 + 272) = v96 + 10;
  *(v97 + 280) = v125;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v4[9]);
  OUTLINED_FUNCTION_0_11(v1);
  v126 = v215;
  if (v105)
  {
    sub_267B9FED8(v1, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_150();
  }

  else
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_2_2();
    v128 = *(v127 + 32);
    OUTLINED_FUNCTION_91_6();
    v129();
  }

  OUTLINED_FUNCTION_12_1();
  *(v97 + 320) = v96 + 11;
  *(v97 + 328) = v130;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v4[10]);
  OUTLINED_FUNCTION_0_11(v110);
  v131 = v214;
  if (v105)
  {
    sub_267B9FED8(v110, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_2_2();
    v133 = *(v132 + 32);
    OUTLINED_FUNCTION_36_5();
    v134();
  }

  OUTLINED_FUNCTION_12_1();
  *(v97 + 368) = v96 + 18;
  *(v97 + 376) = v135;
  v136 = v213;
  sub_267BC9B04(v0 + v4[11], v213, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v136);
  if (v105)
  {
    sub_267B9FED8(v136, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_152();
  }

  else
  {
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_2_2();
    v138 = *(v137 + 32);
    OUTLINED_FUNCTION_36_5();
    v139();
  }

  OUTLINED_FUNCTION_12_1();
  *(v97 + 416) = v96 + 9;
  *(v97 + 424) = v140;
  *(v97 + 432) = *(v0 + v4[12]);
  OUTLINED_FUNCTION_35_11();
  *(v97 + 456) = v142;
  *(v97 + 464) = v141;
  *(v97 + 472) = v143;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v4[13]);
  OUTLINED_FUNCTION_0_11(v131);
  if (v105)
  {
    sub_267B9FED8(v131, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_151();
  }

  else
  {
    OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_2_2();
    v145 = *(v144 + 32);
    OUTLINED_FUNCTION_91_6();
    v146();
  }

  v147 = v115;
  OUTLINED_FUNCTION_12_1();
  *(v97 + 512) = v96 - 1;
  *(v97 + 520) = v148;
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v4[14]);
  OUTLINED_FUNCTION_0_11(v126);
  v149 = v220;
  if (v105)
  {
    sub_267B9FED8(v126, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_149();
  }

  else
  {
    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_2_2();
    v151 = *(v150 + 32);
    OUTLINED_FUNCTION_74();
    v152();
  }

  OUTLINED_FUNCTION_35_11();
  *(v97 + 560) = v153;
  *(v97 + 568) = v154;
  v155 = v216;
  sub_267BC9B04(v0 + v4[15], v216, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v155);
  v156 = MEMORY[0x277D839B0];
  if (v105)
  {
    sub_267B9FED8(v155, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_148();
  }

  else
  {
    OUTLINED_FUNCTION_167();
    OUTLINED_FUNCTION_2_2();
    v158 = *(v157 + 32);
    OUTLINED_FUNCTION_36_5();
    v159();
  }

  OUTLINED_FUNCTION_15_15();
  *(v97 + 608) = v160;
  OUTLINED_FUNCTION_78_5();
  *(v97 + 616) = v161;
  OUTLINED_FUNCTION_138(&unk_28022AE30, &qword_267EFC0B0, v4[16]);
  OUTLINED_FUNCTION_0_11(v121);
  v162 = v149;
  if (v105)
  {
    sub_267B9FED8(v121, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_185();
  }

  else
  {
    OUTLINED_FUNCTION_202_0();
    OUTLINED_FUNCTION_2_2();
    v164 = *(v163 + 32);
    OUTLINED_FUNCTION_104_3();
    v165();
  }

  v166 = v147;
  OUTLINED_FUNCTION_12_1();
  *(v97 + 656) = v96 + 5;
  *(v97 + 664) = v167;
  *(v97 + 696) = v156;
  *(v97 + 672) = 0;
  OUTLINED_FUNCTION_85_4();
  *(v97 + 704) = v168;
  OUTLINED_FUNCTION_175();
  *(v97 + 712) = v169;
  v170 = v218;
  sub_267BC9B04(v0 + v4[17], v218, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v170);
  v171 = v221;
  if (v105)
  {
    sub_267B9FED8(v170, &unk_28022AE30, &qword_267EFC0B0);
    *(v97 + 720) = 0u;
    *(v97 + 736) = 0u;
  }

  else
  {
    *(v97 + 744) = v104;
    __swift_allocate_boxed_opaque_existential_0((v97 + 720));
    OUTLINED_FUNCTION_2_2();
    v173 = *(v172 + 32);
    OUTLINED_FUNCTION_104_3();
    v174();
  }

  *(v97 + 752) = 0x646E657070417369;
  *(v97 + 760) = 0xE800000000000000;
  v175 = *(v0 + v4[18]);
  *(v97 + 792) = v156;
  *(v97 + 768) = v175;
  OUTLINED_FUNCTION_174(0xE800000000000000);
  v176 = *(v0 + v4[19]);
  *(v97 + 840) = v156;
  *(v97 + 816) = v176;
  OUTLINED_FUNCTION_35_11();
  *(v97 + 848) = v177;
  *(v97 + 856) = v178;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v4[20]);
  OUTLINED_FUNCTION_0_11(v166);
  v179 = v222;
  if (v105)
  {
    sub_267B9FED8(v166, &unk_28022AE30, &qword_267EFC0B0);
    *(v97 + 864) = 0u;
    *(v97 + 880) = 0u;
  }

  else
  {
    *(v97 + 888) = v104;
    __swift_allocate_boxed_opaque_existential_0((v97 + 864));
    OUTLINED_FUNCTION_2_2();
    v181 = *(v180 + 32);
    OUTLINED_FUNCTION_100_4();
    v182();
  }

  OUTLINED_FUNCTION_12_1();
  *(v97 + 896) = v96 + 15;
  *(v97 + 904) = v183;
  LOBYTE(v183) = *(v0 + v4[21]);
  *(v97 + 936) = v156;
  *(v97 + 912) = v183;
  OUTLINED_FUNCTION_12_1();
  *(v97 + 944) = v96 + 1;
  *(v97 + 952) = v184;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v4[22]);
  OUTLINED_FUNCTION_0_11(v162);
  if (v105)
  {
    sub_267B9FED8(v162, &unk_28022AE30, &qword_267EFC0B0);
    *(v97 + 960) = 0u;
    *(v97 + 976) = 0u;
  }

  else
  {
    *(v97 + 984) = v104;
    __swift_allocate_boxed_opaque_existential_0((v97 + 960));
    OUTLINED_FUNCTION_2_2();
    v186 = *(v185 + 32);
    OUTLINED_FUNCTION_36_5();
    v187();
  }

  OUTLINED_FUNCTION_12_1();
  *(v97 + 992) = v96;
  *(v97 + 1000) = v188;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v4[23]);
  OUTLINED_FUNCTION_0_11(v171);
  if (v105)
  {
    sub_267B9FED8(v171, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v97 + 1032) = v104;
    __swift_allocate_boxed_opaque_existential_0((v97 + 1008));
    OUTLINED_FUNCTION_2_2();
    v190 = *(v189 + 32);
    OUTLINED_FUNCTION_91_6();
    v191();
  }

  OUTLINED_FUNCTION_22_3();
  *(v97 + 1040) = v192;
  OUTLINED_FUNCTION_187();
  *(v97 + 1048) = v193;
  v194 = *(v0 + v4[24]);
  *(v97 + 1080) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v97 + 1056) = v194;
  OUTLINED_FUNCTION_35_11();
  *(v97 + 1088) = v195;
  *(v97 + 1096) = v196;
  OUTLINED_FUNCTION_138(&unk_28022AE30, &qword_267EFC0B0, v4[25]);
  OUTLINED_FUNCTION_0_11(v179);
  if (v105)
  {

    sub_267B9FED8(v179, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_184();
  }

  else
  {
    *(v97 + 1128) = v104;
    __swift_allocate_boxed_opaque_existential_0((v97 + 1104));
    OUTLINED_FUNCTION_2_2();
    v198 = *(v197 + 32);
    OUTLINED_FUNCTION_104_3();
    v199();
  }

  OUTLINED_FUNCTION_12_1();
  *(v97 + 1136) = v96;
  *(v97 + 1144) = v200;
  OUTLINED_FUNCTION_163(&unk_28022AE30, &qword_267EFC0B0, v4[26]);
  OUTLINED_FUNCTION_0_11(v97 + 1104);
  if (v105)
  {
    sub_267B9FED8(v97 + 1104, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v97 + 1176) = v104;
    __swift_allocate_boxed_opaque_existential_0((v97 + 1152));
    OUTLINED_FUNCTION_2_2();
    v202 = *(v201 + 32);
    OUTLINED_FUNCTION_91_6();
    v203();
  }

  OUTLINED_FUNCTION_64_5();
  *(v97 + 1184) = v204;
  OUTLINED_FUNCTION_63_5();
  *(v97 + 1192) = v205;
  LOBYTE(v205) = *(v0 + v4[27]);
  *(v97 + 1224) = v156;
  *(v97 + 1200) = v205;
  OUTLINED_FUNCTION_12_1();
  *(v97 + 1232) = v96 + 4;
  *(v97 + 1240) = v206;
  LOBYTE(v206) = *(v0 + v4[28]);
  *(v97 + 1272) = v156;
  *(v97 + 1248) = v206;
  OUTLINED_FUNCTION_37_2();
  *(v97 + 1280) = v207;
  OUTLINED_FUNCTION_62_3();
  *(v97 + 1288) = v208;
  OUTLINED_FUNCTION_113_3(&unk_28022AE30, &qword_267EFC0B0, v4[29]);
  OUTLINED_FUNCTION_0_11(v0);
  if (v105)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v97 + 1320) = v104;
    __swift_allocate_boxed_opaque_existential_0((v97 + 1296));
    OUTLINED_FUNCTION_2_2();
    v210 = *(v209 + 32);
    OUTLINED_FUNCTION_182();
    v211();
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267CBEDB8()
{
  OUTLINED_FUNCTION_48_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v11, v209[0]);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_1(v13, v14, v15, v16, v17, v18, v19, v20, v209[0]);
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_22(v22, v23, v24, v25, v26, v27, v28, v29, v209[0]);
  v31 = MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_23(v31, v32, v33, v34, v35, v36, v37, v38, v209[0]);
  v40 = MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_12(v40, v41, v42, v43, v44, v45, v46, v47, v209[0]);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77_0();
  v213 = v49;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_89_5();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_77_0();
  v211 = v52;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_2();
  v55 = MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_68_4(v55, v56, v57, v58, v59, v60, v61, v62, v209[0]);
  v64 = MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_34_8(v64, v65, v66, v67, v68, v69, v70, v71, v209[0]);
  v73 = MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_33_5(v73, v74, v75, v76, v77, v78, v79, v80, v209[0]);
  v82 = MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_67_2(v82, v83, v84, v85, v86, v87, v88, v89, v209[0]);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_77_0();
  v209[0] = v91;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v96);
  v98 = v209 - v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v99 = swift_allocObject();
  OUTLINED_FUNCTION_16(v99, xmmword_267F016A0);
  v100 = *v0;
  v212 = v2;
  v210 = v4;
  if (v100)
  {
    v101 = sub_267EF7958();
    v102 = v100;
  }

  else
  {
    v101 = OUTLINED_FUNCTION_81_5();
  }

  v103 = OUTLINED_FUNCTION_3_24(v101, v102);
  v104 = type metadata accessor for SendMessageConfirmFaceTimeInviteParameters(v103);
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v104[5]);
  v105 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v98);
  if (v106)
  {

    sub_267B9FED8(v98, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    OUTLINED_FUNCTION_161();
    OUTLINED_FUNCTION_2_2();
    v108 = *(v107 + 32);
    OUTLINED_FUNCTION_36_5();
    v109();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 128) = v111;
  *(v99 + 136) = v110;
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v104[6]);
  OUTLINED_FUNCTION_0_11(v6);
  v112 = v214;
  v113 = v209[4];
  if (v106)
  {
    sub_267B9FED8(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_2_2();
    v115 = *(v114 + 32);
    OUTLINED_FUNCTION_112_3();
    v116();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_180();
  *(v99 + 176) = v6;
  *(v99 + 184) = v117;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v104[7]);
  OUTLINED_FUNCTION_0_11(v5);
  if (v106)
  {
    sub_267B9FED8(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_126_2();
  }

  else
  {
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_2_2();
    v119 = *(v118 + 32);
    OUTLINED_FUNCTION_100_4();
    v120();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 224) = v6 + 4;
  *(v99 + 232) = v121;
  OUTLINED_FUNCTION_143_0(&unk_28022AE30, &qword_267EFC0B0, v104[8]);
  OUTLINED_FUNCTION_0_11(v3);
  v122 = v209[1];
  if (v106)
  {
    sub_267B9FED8(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_127_0();
  }

  else
  {
    OUTLINED_FUNCTION_158_0();
    OUTLINED_FUNCTION_2_2();
    v124 = *(v123 + 32);
    OUTLINED_FUNCTION_109_3();
    v125();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 272) = v6 + 10;
  *(v99 + 280) = v126;
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v104[9]);
  OUTLINED_FUNCTION_0_11(v1);
  v127 = v209[3];
  if (v106)
  {
    sub_267B9FED8(v1, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_150();
  }

  else
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_2_2();
    v129 = *(v128 + 32);
    OUTLINED_FUNCTION_74();
    v130();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 320) = v6 + 11;
  *(v99 + 328) = v131;
  v132 = v209[0];
  sub_267BC9B04(v0 + v104[10], v209[0], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v132);
  v133 = v211;
  if (v106)
  {
    sub_267B9FED8(v132, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_2_2();
    v135 = *(v134 + 32);
    OUTLINED_FUNCTION_112_3();
    v136();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_180();
  *(v99 + 368) = v132 + 18;
  *(v99 + 376) = v137;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v104[11]);
  OUTLINED_FUNCTION_0_11(v122);
  if (v106)
  {
    sub_267B9FED8(v122, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_152();
  }

  else
  {
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_2_2();
    v139 = *(v138 + 32);
    OUTLINED_FUNCTION_100_4();
    v140();
  }

  OUTLINED_FUNCTION_35_11();
  *(v99 + 416) = v142;
  *(v99 + 424) = v141;
  OUTLINED_FUNCTION_162(&unk_28022AE30, &qword_267EFC0B0, v104[12]);
  OUTLINED_FUNCTION_0_11(v122);
  if (v106)
  {
    sub_267B9FED8(v122, &unk_28022AE30, &qword_267EFC0B0);
    *(v99 + 432) = 0u;
    *(v99 + 448) = 0u;
  }

  else
  {
    *(v99 + 456) = v105;
    __swift_allocate_boxed_opaque_existential_0((v99 + 432));
    OUTLINED_FUNCTION_2_2();
    v144 = *(v143 + 32);
    OUTLINED_FUNCTION_100_4();
    v145();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 464) = v132 - 1;
  *(v99 + 472) = v146;
  OUTLINED_FUNCTION_143_0(&unk_28022AE30, &qword_267EFC0B0, v104[13]);
  OUTLINED_FUNCTION_0_11(v127);
  if (v106)
  {
    sub_267B9FED8(v127, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_151();
  }

  else
  {
    OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_2_2();
    v148 = *(v147 + 32);
    OUTLINED_FUNCTION_109_3();
    v149();
  }

  OUTLINED_FUNCTION_35_11();
  *(v99 + 512) = v150;
  *(v99 + 520) = v151;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v104[14]);
  OUTLINED_FUNCTION_0_11(v113);
  if (v106)
  {
    sub_267B9FED8(v113, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_149();
  }

  else
  {
    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_2_2();
    v153 = *(v152 + 32);
    OUTLINED_FUNCTION_91_6();
    v154();
  }

  OUTLINED_FUNCTION_15_15();
  *(v99 + 560) = v155;
  *(v99 + 568) = 0xEB00000000656D61;
  v156 = v210;
  sub_267BC9B04(v0 + v104[15], v210, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v156);
  if (v106)
  {
    sub_267B9FED8(v156, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_148();
  }

  else
  {
    OUTLINED_FUNCTION_167();
    OUTLINED_FUNCTION_2_2();
    v158 = *(v157 + 32);
    OUTLINED_FUNCTION_91_6();
    v159();
  }

  *(v99 + 608) = 0x746E65746E6F63;
  *(v99 + 616) = 0xE700000000000000;
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v104[16]);
  OUTLINED_FUNCTION_0_11(v133);
  v160 = v112;
  if (v106)
  {
    sub_267B9FED8(v133, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_185();
  }

  else
  {
    OUTLINED_FUNCTION_202_0();
    OUTLINED_FUNCTION_2_2();
    v162 = *(v161 + 32);
    OUTLINED_FUNCTION_74();
    v163();
  }

  *(v99 + 656) = 0x7453656369766564;
  *(v99 + 664) = 0xEB00000000657461;
  v164 = *(v0 + v104[17]);
  if (v164)
  {
    v165 = sub_267EF7AE8();
    v166 = v164;
  }

  else
  {
    v165 = OUTLINED_FUNCTION_38();
    *(v99 + 680) = 0u;
  }

  v167 = v213;
  *(v99 + 672) = v166;
  *(v99 + 696) = v165;
  OUTLINED_FUNCTION_12_1();
  *(v99 + 704) = v132 + 5;
  *(v99 + 712) = v168;
  v169 = MEMORY[0x277D839B0];
  *(v99 + 744) = MEMORY[0x277D839B0];
  *(v99 + 720) = 0;
  OUTLINED_FUNCTION_85_4();
  *(v99 + 752) = v170;
  OUTLINED_FUNCTION_175();
  *(v99 + 760) = v171;
  v172 = v212;
  sub_267BC9B04(v0 + v104[18], v212, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v172);
  if (v106)
  {

    sub_267B9FED8(v172, &unk_28022AE30, &qword_267EFC0B0);
    *(v99 + 768) = 0u;
    *(v99 + 784) = 0u;
  }

  else
  {
    *(v99 + 792) = v105;
    __swift_allocate_boxed_opaque_existential_0((v99 + 768));
    OUTLINED_FUNCTION_2_2();
    v174 = *(v173 + 32);
    OUTLINED_FUNCTION_74();
    v175();
  }

  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_174(v176);
  OUTLINED_FUNCTION_143_0(&unk_28022AE30, &qword_267EFC0B0, v104[19]);
  OUTLINED_FUNCTION_0_11(v167);
  v177 = v215;
  v178 = v216;
  if (v106)
  {
    sub_267B9FED8(v167, &unk_28022AE30, &qword_267EFC0B0);
    *(v99 + 816) = 0u;
    *(v99 + 832) = 0u;
  }

  else
  {
    *(v99 + 840) = v105;
    __swift_allocate_boxed_opaque_existential_0((v99 + 816));
    OUTLINED_FUNCTION_2_2();
    v180 = *(v179 + 32);
    OUTLINED_FUNCTION_109_3();
    v181();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 848) = v132 + 1;
  *(v99 + 856) = v182;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v104[20]);
  OUTLINED_FUNCTION_0_11(v160);
  if (v106)
  {
    sub_267B9FED8(v160, &unk_28022AE30, &qword_267EFC0B0);
    *(v99 + 864) = 0u;
    *(v99 + 880) = 0u;
  }

  else
  {
    *(v99 + 888) = v105;
    __swift_allocate_boxed_opaque_existential_0((v99 + 864));
    OUTLINED_FUNCTION_2_2();
    v184 = *(v183 + 32);
    OUTLINED_FUNCTION_91_6();
    v185();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 896) = v132;
  *(v99 + 904) = v186;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v104[21]);
  OUTLINED_FUNCTION_0_11(v177);
  if (v106)
  {
    sub_267B9FED8(v177, &unk_28022AE30, &qword_267EFC0B0);
    *(v99 + 912) = 0u;
    *(v99 + 928) = 0u;
  }

  else
  {
    *(v99 + 936) = v105;
    __swift_allocate_boxed_opaque_existential_0((v99 + 912));
    OUTLINED_FUNCTION_2_2();
    v188 = *(v187 + 32);
    OUTLINED_FUNCTION_36_5();
    v189();
  }

  OUTLINED_FUNCTION_22_3();
  *(v99 + 944) = v190;
  OUTLINED_FUNCTION_187();
  *(v99 + 952) = v191;
  v192 = *(v0 + v104[22]);
  *(v99 + 984) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v99 + 960) = v192;
  OUTLINED_FUNCTION_35_11();
  *(v99 + 992) = v193;
  *(v99 + 1000) = v194;
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v104[23]);
  OUTLINED_FUNCTION_0_11(v178);
  if (v106)
  {

    sub_267B9FED8(v178, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_184();
  }

  else
  {
    *(v99 + 1032) = v105;
    __swift_allocate_boxed_opaque_existential_0((v99 + 1008));
    OUTLINED_FUNCTION_2_2();
    v196 = *(v195 + 32);
    OUTLINED_FUNCTION_74();
    v197();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 1040) = v132;
  *(v99 + 1048) = v198;
  OUTLINED_FUNCTION_163(&unk_28022AE30, &qword_267EFC0B0, v104[24]);
  OUTLINED_FUNCTION_0_11(v99 + 1008);
  if (v106)
  {
    sub_267B9FED8(v99 + 1008, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v99 + 1080) = v105;
    __swift_allocate_boxed_opaque_existential_0((v99 + 1056));
    OUTLINED_FUNCTION_2_2();
    v200 = *(v199 + 32);
    OUTLINED_FUNCTION_91_6();
    v201();
  }

  OUTLINED_FUNCTION_64_5();
  *(v99 + 1088) = v202;
  OUTLINED_FUNCTION_63_5();
  *(v99 + 1096) = v203;
  LOBYTE(v203) = *(v0 + v104[25]);
  *(v99 + 1128) = v169;
  *(v99 + 1104) = v203;
  OUTLINED_FUNCTION_37_2();
  *(v99 + 1136) = v204;
  OUTLINED_FUNCTION_62_3();
  *(v99 + 1144) = v205;
  OUTLINED_FUNCTION_113_3(&unk_28022AE30, &qword_267EFC0B0, v104[26]);
  OUTLINED_FUNCTION_0_11(v0);
  if (v106)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v99 + 1176) = v105;
    __swift_allocate_boxed_opaque_existential_0((v99 + 1152));
    OUTLINED_FUNCTION_2_2();
    v207 = *(v206 + 32);
    OUTLINED_FUNCTION_182();
    v208();
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267CBFB30()
{
  OUTLINED_FUNCTION_48_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v11, v229[0]);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_1(v13, v14, v15, v16, v17, v18, v19, v20, v229[0]);
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_22(v22, v23, v24, v25, v26, v27, v28, v29, v229[0]);
  v31 = MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_23(v31, v32, v33, v34, v35, v36, v37, v38, v229[0]);
  v40 = MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_12(v40, v41, v42, v43, v44, v45, v46, v47, v229[0]);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_89_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_77_0();
  v234 = v50;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_77_0();
  v232 = v53;
  OUTLINED_FUNCTION_115();
  v55 = MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_68_4(v55, v56, v57, v58, v59, v60, v61, v62, v229[0]);
  v64 = MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_34_8(v64, v65, v66, v67, v68, v69, v70, v71, v229[0]);
  v73 = MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_33_5(v73, v74, v75, v76, v77, v78, v79, v80, v229[0]);
  v82 = MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_67_2(v82, v83, v84, v85, v86, v87, v88, v89, v229[0]);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_77_0();
  v229[0] = v91;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v96);
  v98 = v229 - v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v99 = swift_allocObject();
  OUTLINED_FUNCTION_16(v99, xmmword_267F016B0);
  v100 = *v0;
  v235 = v2;
  v233 = v3;
  if (v100)
  {
    v101 = sub_267EF7958();
    v102 = v100;
  }

  else
  {
    v101 = OUTLINED_FUNCTION_81_5();
  }

  v103 = OUTLINED_FUNCTION_3_24(v101, v102);
  v104 = type metadata accessor for SendMessageConfirmTextMessageParameters(v103);
  OUTLINED_FUNCTION_147(v104);
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v105);
  v106 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v98);
  if (v107)
  {

    sub_267B9FED8(v98, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    OUTLINED_FUNCTION_161();
    OUTLINED_FUNCTION_2_2();
    v109 = *(v108 + 32);
    OUTLINED_FUNCTION_36_5();
    v110();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 128) = v112;
  *(v99 + 136) = v111;
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v3[6]);
  OUTLINED_FUNCTION_0_11(v6);
  v113 = v231;
  if (v107)
  {
    sub_267B9FED8(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_2_2();
    v115 = *(v114 + 32);
    OUTLINED_FUNCTION_112_3();
    v116();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_180();
  *(v99 + 176) = v6;
  *(v99 + 184) = v117;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v3[7]);
  OUTLINED_FUNCTION_0_11(v5);
  if (v107)
  {
    sub_267B9FED8(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_126_2();
  }

  else
  {
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_2_2();
    v119 = *(v118 + 32);
    OUTLINED_FUNCTION_100_4();
    v120();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_179(v121);
  OUTLINED_FUNCTION_138(&unk_28022AE30, &qword_267EFC0B0, v122);
  OUTLINED_FUNCTION_0_11(v4);
  v123 = v232;
  if (v107)
  {
    sub_267B9FED8(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_127_0();
  }

  else
  {
    OUTLINED_FUNCTION_158_0();
    OUTLINED_FUNCTION_2_2();
    v125 = *(v124 + 32);
    OUTLINED_FUNCTION_104_3();
    v126();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 272) = v6 + 10;
  *(v99 + 280) = v127;
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v3[9]);
  OUTLINED_FUNCTION_0_11(v1);
  v128 = v229[2];
  if (v107)
  {
    sub_267B9FED8(v1, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_150();
  }

  else
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_2_2();
    v130 = *(v129 + 32);
    OUTLINED_FUNCTION_74();
    v131();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 320) = v6 + 11;
  *(v99 + 328) = v132;
  v133 = v229[0];
  sub_267BC9B04(v0 + v3[10], v229[0], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v133);
  v134 = v229[1];
  if (v107)
  {
    sub_267B9FED8(v133, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_2_2();
    v136 = *(v135 + 32);
    OUTLINED_FUNCTION_36_5();
    v137();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 368) = v6 + 18;
  *(v99 + 376) = v138;
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v3[11]);
  OUTLINED_FUNCTION_0_11(v134);
  if (v107)
  {
    sub_267B9FED8(v134, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_152();
  }

  else
  {
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_2_2();
    v140 = *(v139 + 32);
    OUTLINED_FUNCTION_74();
    v141();
  }

  OUTLINED_FUNCTION_140();
  *(v99 + 416) = v142 & 0xFFFFFFFFFFFFLL | 0x646E000000000000;
  *(v99 + 424) = 0xEF64656C62616E45;
  *(v99 + 432) = *(v0 + v3[12]);
  OUTLINED_FUNCTION_12_1();
  *(v99 + 456) = v143;
  *(v99 + 464) = v6 + 9;
  *(v99 + 472) = v144;
  *(v99 + 480) = *(v0 + v3[13]);
  OUTLINED_FUNCTION_35_11();
  *(v99 + 504) = v146;
  *(v99 + 512) = v145;
  *(v99 + 520) = v147;
  OUTLINED_FUNCTION_138(&unk_28022AE30, &qword_267EFC0B0, v3[14]);
  OUTLINED_FUNCTION_0_11(v128);
  v148 = v234;
  if (v107)
  {
    sub_267B9FED8(v128, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_149();
  }

  else
  {
    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_2_2();
    v150 = *(v149 + 32);
    OUTLINED_FUNCTION_104_3();
    v151();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 560) = v6 - 1;
  *(v99 + 568) = v152;
  v153 = v230;
  sub_267BC9B04(v0 + v3[15], v230, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v153);
  if (v107)
  {
    sub_267B9FED8(v153, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_148();
  }

  else
  {
    OUTLINED_FUNCTION_167();
    OUTLINED_FUNCTION_2_2();
    v155 = *(v154 + 32);
    OUTLINED_FUNCTION_104_3();
    v156();
  }

  OUTLINED_FUNCTION_35_11();
  *(v99 + 608) = v157;
  *(v99 + 616) = v158;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v3[16]);
  OUTLINED_FUNCTION_0_11(v113);
  if (v107)
  {
    sub_267B9FED8(v113, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_185();
  }

  else
  {
    OUTLINED_FUNCTION_202_0();
    OUTLINED_FUNCTION_2_2();
    v160 = *(v159 + 32);
    OUTLINED_FUNCTION_91_6();
    v161();
  }

  OUTLINED_FUNCTION_15_15();
  *(v99 + 656) = v162;
  OUTLINED_FUNCTION_78_5();
  *(v99 + 664) = v163;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v3[17]);
  OUTLINED_FUNCTION_0_11(v123);
  v164 = v238;
  if (v107)
  {
    sub_267B9FED8(v123, &unk_28022AE30, &qword_267EFC0B0);
    *(v99 + 672) = 0u;
    *(v99 + 688) = 0u;
  }

  else
  {
    *(v99 + 696) = v106;
    __swift_allocate_boxed_opaque_existential_0((v99 + 672));
    OUTLINED_FUNCTION_2_2();
    v166 = *(v165 + 32);
    OUTLINED_FUNCTION_100_4();
    v167();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 704) = v6 + 5;
  *(v99 + 712) = v168;
  *(v99 + 744) = MEMORY[0x277D839B0];
  *(v99 + 720) = 0;
  OUTLINED_FUNCTION_85_4();
  *(v99 + 752) = v169;
  OUTLINED_FUNCTION_175();
  *(v99 + 760) = v170;
  v171 = v233;
  sub_267BC9B04(v0 + v3[18], v233, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v171);
  v172 = v236;
  if (v107)
  {
    sub_267B9FED8(v171, &unk_28022AE30, &qword_267EFC0B0);
    *(v99 + 768) = 0u;
    *(v99 + 784) = 0u;
  }

  else
  {
    *(v99 + 792) = v106;
    __swift_allocate_boxed_opaque_existential_0((v99 + 768));
    OUTLINED_FUNCTION_2_2();
    v174 = *(v173 + 32);
    OUTLINED_FUNCTION_104_3();
    v175();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_174(v176);
  v177 = *(v0 + v3[19]);
  *(v99 + 840) = MEMORY[0x277D839B0];
  *(v99 + 816) = v177;
  OUTLINED_FUNCTION_197();
  *(v99 + 848) = v178;
  *(v99 + 856) = 0xE800000000000000;
  LOBYTE(v178) = *(v0 + v3[20]);
  *(v99 + 888) = v179;
  *(v99 + 864) = v178;
  OUTLINED_FUNCTION_12_1();
  *(v99 + 896) = v6 - 1;
  *(v99 + 904) = v180;
  LOBYTE(v180) = *(v0 + v3[21]);
  *(v99 + 936) = v181;
  *(v99 + 912) = v180;
  OUTLINED_FUNCTION_12_1();
  *(v99 + 944) = v6 + 14;
  *(v99 + 952) = v182;
  LOBYTE(v182) = *(v0 + v3[22]);
  *(v99 + 984) = v183;
  *(v99 + 960) = v182;
  OUTLINED_FUNCTION_43_6();
  *(v99 + 992) = v184;
  *(v99 + 1000) = 0xE700000000000000;
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v3[23]);
  OUTLINED_FUNCTION_0_11(v148);
  v185 = v164;
  if (v107)
  {
    sub_267B9FED8(v148, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v99 + 1032) = v106;
    __swift_allocate_boxed_opaque_existential_0((v99 + 1008));
    OUTLINED_FUNCTION_2_2();
    v187 = *(v186 + 32);
    OUTLINED_FUNCTION_74();
    v188();
  }

  OUTLINED_FUNCTION_35_11();
  *(v99 + 1040) = v189;
  *(v99 + 1048) = v190;
  v191 = v235;
  sub_267BC9B04(v0 + v3[24], v235, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v191);
  if (v107)
  {
    sub_267B9FED8(v191, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v99 + 1080) = v106;
    __swift_allocate_boxed_opaque_existential_0((v99 + 1056));
    OUTLINED_FUNCTION_2_2();
    v193 = *(v192 + 32);
    OUTLINED_FUNCTION_91_6();
    v194();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 1088) = v6 + 15;
  *(v99 + 1096) = v195;
  LOBYTE(v195) = *(v0 + v3[25]);
  *(v99 + 1128) = MEMORY[0x277D839B0];
  *(v99 + 1104) = v195;
  OUTLINED_FUNCTION_12_1();
  *(v99 + 1136) = v6 + 1;
  *(v99 + 1144) = v196;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v3[26]);
  OUTLINED_FUNCTION_0_11(v172);
  v197 = v237;
  if (v107)
  {
    sub_267B9FED8(v172, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v99 + 1176) = v106;
    __swift_allocate_boxed_opaque_existential_0((v99 + 1152));
    OUTLINED_FUNCTION_2_2();
    v199 = *(v198 + 32);
    OUTLINED_FUNCTION_100_4();
    v200();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 1184) = v6;
  *(v99 + 1192) = v201;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v3[27]);
  OUTLINED_FUNCTION_0_11(v197);
  if (v107)
  {
    sub_267B9FED8(v197, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v99 + 1224) = v106;
    __swift_allocate_boxed_opaque_existential_0((v99 + 1200));
    OUTLINED_FUNCTION_2_2();
    v203 = *(v202 + 32);
    OUTLINED_FUNCTION_91_6();
    v204();
  }

  OUTLINED_FUNCTION_22_3();
  *(v99 + 1232) = v205;
  OUTLINED_FUNCTION_187();
  *(v99 + 1240) = v206;
  v207 = *(v0 + v3[28]);
  *(v99 + 1272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v99 + 1248) = v207;
  OUTLINED_FUNCTION_35_11();
  *(v99 + 1280) = v208;
  *(v99 + 1288) = v209;
  OUTLINED_FUNCTION_138(&unk_28022AE30, &qword_267EFC0B0, v3[29]);
  OUTLINED_FUNCTION_0_11(v185);
  if (v107)
  {

    sub_267B9FED8(v185, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_184();
  }

  else
  {
    *(v99 + 1320) = v106;
    __swift_allocate_boxed_opaque_existential_0((v99 + 1296));
    OUTLINED_FUNCTION_2_2();
    v211 = *(v210 + 32);
    OUTLINED_FUNCTION_104_3();
    v212();
  }

  OUTLINED_FUNCTION_12_1();
  *(v99 + 1328) = v6;
  *(v99 + 1336) = v213;
  OUTLINED_FUNCTION_163(&unk_28022AE30, &qword_267EFC0B0, v3[30]);
  OUTLINED_FUNCTION_0_11(v99 + 1296);
  if (v107)
  {
    sub_267B9FED8(v99 + 1296, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v99 + 1368) = v106;
    __swift_allocate_boxed_opaque_existential_0((v99 + 1344));
    OUTLINED_FUNCTION_2_2();
    v215 = *(v214 + 32);
    OUTLINED_FUNCTION_91_6();
    v216();
  }

  OUTLINED_FUNCTION_64_5();
  *(v99 + 1376) = v217;
  OUTLINED_FUNCTION_63_5();
  *(v99 + 1384) = v218;
  LOBYTE(v218) = *(v0 + v3[31]);
  *(v99 + 1416) = MEMORY[0x277D839B0];
  *(v99 + 1392) = v218;
  OUTLINED_FUNCTION_12_1();
  *(v99 + 1424) = v6 + 4;
  *(v99 + 1432) = v219;
  LOBYTE(v219) = *(v0 + v3[32]);
  *(v99 + 1464) = v220;
  *(v99 + 1440) = v219;
  OUTLINED_FUNCTION_188();
  *(v99 + 1472) = v221;
  OUTLINED_FUNCTION_186();
  *(v99 + 1480) = v222;
  LOBYTE(v222) = *(v0 + v3[33]);
  *(v99 + 1512) = v223;
  *(v99 + 1488) = v222;
  OUTLINED_FUNCTION_37_2();
  *(v99 + 1520) = v224;
  OUTLINED_FUNCTION_62_3();
  *(v99 + 1528) = v225;
  OUTLINED_FUNCTION_113_3(&unk_28022AE30, &qword_267EFC0B0, v3[34]);
  OUTLINED_FUNCTION_0_11(v0);
  if (v107)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v99 + 1560) = v106;
    __swift_allocate_boxed_opaque_existential_0((v99 + 1536));
    OUTLINED_FUNCTION_2_2();
    v227 = *(v226 + 32);
    OUTLINED_FUNCTION_182();
    v228();
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267CC09C4()
{
  OUTLINED_FUNCTION_48_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v11, v182[0]);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_1(v13, v14, v15, v16, v17, v18, v19, v20, v182[0]);
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_22(v22, v23, v24, v25, v26, v27, v28, v29, v182[0]);
  v31 = MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_23(v31, v32, v33, v34, v35, v36, v37, v38, v182[0]);
  v40 = MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_12(v40, v41, v42, v43, v44, v45, v46, v47, v182[0]);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_89_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_77_0();
  v186 = v50;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_77_0();
  v185 = v52;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_2();
  v55 = MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_68_4(v55, v56, v57, v58, v59, v60, v61, v62, v182[0]);
  v64 = MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_34_8(v64, v65, v66, v67, v68, v69, v70, v71, v182[0]);
  v73 = MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_33_5(v73, v74, v75, v76, v77, v78, v79, v80, v182[0]);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v85);
  v87 = v182 - v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v88 = swift_allocObject();
  OUTLINED_FUNCTION_16(v88, xmmword_267F016C0);
  v89 = *v1;
  v187 = v4;
  v184 = v6;
  if (v89)
  {
    v90 = sub_267EF7958();
    v91 = v89;
  }

  else
  {
    v90 = OUTLINED_FUNCTION_81_5();
  }

  v92 = OUTLINED_FUNCTION_3_24(v90, v91);
  v93 = type metadata accessor for SendMessageHoldSendParameters(v92);
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v93[5]);
  v94 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v87);
  if (v95)
  {

    sub_267B9FED8(v87, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    OUTLINED_FUNCTION_161();
    OUTLINED_FUNCTION_2_2();
    v97 = *(v96 + 32);
    OUTLINED_FUNCTION_100_4();
    v98();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 128) = 0xD000000000000012;
  *(v88 + 136) = v99;
  OUTLINED_FUNCTION_143_0(&unk_28022AE30, &qword_267EFC0B0, v93[6]);
  OUTLINED_FUNCTION_0_11(v5);
  if (v95)
  {
    sub_267B9FED8(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_2_2();
    v101 = *(v100 + 32);
    OUTLINED_FUNCTION_109_3();
    v102();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 176) = 0xD000000000000012;
  *(v88 + 184) = v103;
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v93[7]);
  OUTLINED_FUNCTION_0_11(v3);
  v104 = v189;
  v105 = v182[1];
  if (v95)
  {
    sub_267B9FED8(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_126_2();
  }

  else
  {
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_2_2();
    v107 = *(v106 + 32);
    OUTLINED_FUNCTION_74();
    v108();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 224) = 0xD000000000000016;
  *(v88 + 232) = v109;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v93[8]);
  OUTLINED_FUNCTION_0_11(v2);
  v110 = v185;
  if (v95)
  {
    sub_267B9FED8(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_127_0();
  }

  else
  {
    OUTLINED_FUNCTION_158_0();
    OUTLINED_FUNCTION_2_2();
    v112 = *(v111 + 32);
    OUTLINED_FUNCTION_91_6();
    v113();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 272) = 0xD00000000000001CLL;
  *(v88 + 280) = v114;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v93[9]);
  OUTLINED_FUNCTION_0_11(v0);
  if (v95)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_150();
  }

  else
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_2_2();
    v116 = *(v115 + 32);
    OUTLINED_FUNCTION_36_5();
    v117();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 320) = 0xD00000000000001DLL;
  *(v88 + 328) = v118;
  OUTLINED_FUNCTION_162(&unk_28022AE30, &qword_267EFC0B0, v93[10]);
  OUTLINED_FUNCTION_0_11(0xD000000000000012);
  v119 = v186;
  if (v95)
  {
    sub_267B9FED8(0xD000000000000012, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_2_2();
    v121 = *(v120 + 32);
    OUTLINED_FUNCTION_100_4();
    v122();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 368) = 0xD000000000000024;
  *(v88 + 376) = v123;
  OUTLINED_FUNCTION_143_0(&unk_28022AE30, &qword_267EFC0B0, v93[11]);
  OUTLINED_FUNCTION_0_11(v105);
  if (v95)
  {
    sub_267B9FED8(v105, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_152();
  }

  else
  {
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_2_2();
    v125 = *(v124 + 32);
    OUTLINED_FUNCTION_109_3();
    v126();
  }

  v127 = v188;
  OUTLINED_FUNCTION_12_1();
  *(v88 + 416) = 0xD000000000000014;
  *(v88 + 424) = v128;
  v129 = v183;
  sub_267BC9B04(v1 + v93[12], v183, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v129);
  if (v95)
  {
    sub_267B9FED8(v129, &unk_28022AE30, &qword_267EFC0B0);
    *(v88 + 432) = 0u;
    *(v88 + 448) = 0u;
  }

  else
  {
    *(v88 + 456) = v94;
    __swift_allocate_boxed_opaque_existential_0((v88 + 432));
    OUTLINED_FUNCTION_2_2();
    v131 = *(v130 + 32);
    OUTLINED_FUNCTION_109_3();
    v132();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 464) = 0xD000000000000011;
  *(v88 + 472) = v133;
  v134 = v184;
  sub_267BC9B04(v1 + v93[13], v184, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v134);
  if (v95)
  {
    sub_267B9FED8(v134, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_151();
  }

  else
  {
    OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_2_2();
    v136 = *(v135 + 32);
    OUTLINED_FUNCTION_109_3();
    v137();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 512) = 0xD000000000000014;
  *(v88 + 520) = v138;
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v93[14]);
  OUTLINED_FUNCTION_0_11(v110);
  v139 = v104;
  if (v95)
  {
    sub_267B9FED8(v110, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_149();
  }

  else
  {
    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_2_2();
    v141 = *(v140 + 32);
    OUTLINED_FUNCTION_74();
    v142();
  }

  v143 = v127;
  OUTLINED_FUNCTION_15_15();
  *(v88 + 560) = v144;
  OUTLINED_FUNCTION_78_5();
  *(v88 + 568) = v145;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v93[15]);
  OUTLINED_FUNCTION_0_11(v119);
  v146 = v191;
  if (v95)
  {
    sub_267B9FED8(v119, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_148();
  }

  else
  {
    OUTLINED_FUNCTION_167();
    OUTLINED_FUNCTION_2_2();
    v148 = *(v147 + 32);
    OUTLINED_FUNCTION_36_5();
    v149();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 608) = 0xD000000000000017;
  *(v88 + 616) = v150;
  v151 = MEMORY[0x277D839B0];
  *(v88 + 648) = MEMORY[0x277D839B0];
  *(v88 + 624) = 0;
  OUTLINED_FUNCTION_12_1();
  *(v88 + 656) = 0xD000000000000014;
  *(v88 + 664) = v152;
  v153 = v187;
  sub_267BC9B04(v1 + v93[16], v187, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v153);
  if (v95)
  {
    sub_267B9FED8(v153, &unk_28022AE30, &qword_267EFC0B0);
    *(v88 + 672) = 0u;
    *(v88 + 688) = 0u;
  }

  else
  {
    *(v88 + 696) = v94;
    __swift_allocate_boxed_opaque_existential_0((v88 + 672));
    OUTLINED_FUNCTION_2_2();
    v155 = *(v154 + 32);
    OUTLINED_FUNCTION_74();
    v156();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 704) = 0xD000000000000013;
  *(v88 + 712) = v157;
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v93[17]);
  OUTLINED_FUNCTION_0_11(v143);
  v158 = v190;
  if (v95)
  {
    sub_267B9FED8(v143, &unk_28022AE30, &qword_267EFC0B0);
    *(v88 + 720) = 0u;
    *(v88 + 736) = 0u;
  }

  else
  {
    *(v88 + 744) = v94;
    __swift_allocate_boxed_opaque_existential_0((v88 + 720));
    OUTLINED_FUNCTION_2_2();
    v160 = *(v159 + 32);
    OUTLINED_FUNCTION_112_3();
    v161();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 752) = 0xD000000000000012;
  *(v88 + 760) = v162;
  OUTLINED_FUNCTION_143_0(&unk_28022AE30, &qword_267EFC0B0, v93[18]);
  OUTLINED_FUNCTION_0_11(v139);
  if (v95)
  {
    sub_267B9FED8(v139, &unk_28022AE30, &qword_267EFC0B0);
    *(v88 + 768) = 0u;
    *(v88 + 784) = 0u;
  }

  else
  {
    *(v88 + 792) = v94;
    __swift_allocate_boxed_opaque_existential_0((v88 + 768));
    OUTLINED_FUNCTION_2_2();
    v164 = *(v163 + 32);
    OUTLINED_FUNCTION_109_3();
    v165();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_174(v166);
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v93[19]);
  OUTLINED_FUNCTION_0_11(v158);
  if (v95)
  {
    sub_267B9FED8(v158, &unk_28022AE30, &qword_267EFC0B0);
    *(v88 + 816) = 0u;
    *(v88 + 832) = 0u;
  }

  else
  {
    *(v88 + 840) = v94;
    __swift_allocate_boxed_opaque_existential_0((v88 + 816));
    OUTLINED_FUNCTION_2_2();
    v168 = *(v167 + 32);
    OUTLINED_FUNCTION_74();
    v169();
  }

  OUTLINED_FUNCTION_12_1();
  *(v88 + 848) = 0xD000000000000012;
  *(v88 + 856) = v170;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v93[20]);
  OUTLINED_FUNCTION_0_11(v146);
  if (v95)
  {
    sub_267B9FED8(v146, &unk_28022AE30, &qword_267EFC0B0);
    *(v88 + 864) = 0u;
    *(v88 + 880) = 0u;
  }

  else
  {
    *(v88 + 888) = v94;
    __swift_allocate_boxed_opaque_existential_0((v88 + 864));
    OUTLINED_FUNCTION_2_2();
    v172 = *(v171 + 32);
    OUTLINED_FUNCTION_91_6();
    v173();
  }

  OUTLINED_FUNCTION_64_5();
  *(v88 + 896) = v174;
  OUTLINED_FUNCTION_63_5();
  *(v88 + 904) = v175;
  LOBYTE(v175) = *(v1 + v93[21]);
  *(v88 + 936) = v151;
  *(v88 + 912) = v175;
  OUTLINED_FUNCTION_12_1();
  *(v88 + 944) = 0xD000000000000019;
  *(v88 + 952) = v176;
  LOBYTE(v176) = *(v1 + v93[22]);
  *(v88 + 984) = v151;
  *(v88 + 960) = v176;
  OUTLINED_FUNCTION_37_2();
  *(v88 + 992) = v177;
  OUTLINED_FUNCTION_62_3();
  *(v88 + 1000) = v178;
  OUTLINED_FUNCTION_113_3(&unk_28022AE30, &qword_267EFC0B0, v93[23]);
  OUTLINED_FUNCTION_0_11(v1);
  if (v95)
  {
    sub_267B9FED8(v1, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_94_3();
  }

  else
  {
    *(v88 + 1032) = v94;
    __swift_allocate_boxed_opaque_existential_0((v88 + 1008));
    OUTLINED_FUNCTION_2_2();
    v180 = *(v179 + 32);
    OUTLINED_FUNCTION_182();
    v181();
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267CC158C()
{
  OUTLINED_FUNCTION_48_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v11, v95);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_1(v13, v14, v15, v16, v17, v18, v19, v20, v96);
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_22(v22, v23, v24, v25, v26, v27, v28, v29, v97);
  v31 = MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_23(v31, v32, v33, v34, v35, v36, v37, v38, v98);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v44 = swift_allocObject();
  OUTLINED_FUNCTION_16(v44, xmmword_267F016D0);
  v45 = *v1;
  if (*v1)
  {
    v46 = sub_267EF7958();
    v47 = v45;
  }

  else
  {
    v46 = OUTLINED_FUNCTION_81_5();
  }

  v48 = OUTLINED_FUNCTION_3_24(v46, v47);
  v49 = type metadata accessor for SendMessageSentAudioMessageParameters(v48);
  OUTLINED_FUNCTION_147(v49);
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v50);
  v51 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v3);
  if (v52)
  {

    sub_267B9FED8(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    OUTLINED_FUNCTION_161();
    OUTLINED_FUNCTION_2_2();
    v54 = *(v53 + 32);
    OUTLINED_FUNCTION_74();
    v55();
  }

  OUTLINED_FUNCTION_12_1();
  *(v44 + 128) = 0xD000000000000012;
  *(v44 + 136) = v56;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v4[6]);
  OUTLINED_FUNCTION_0_11(v2);
  if (v52)
  {
    sub_267B9FED8(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_2_2();
    v58 = *(v57 + 32);
    OUTLINED_FUNCTION_91_6();
    v59();
  }

  OUTLINED_FUNCTION_12_1();
  *(v44 + 176) = 0xD000000000000012;
  *(v44 + 184) = v60;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v4[7]);
  OUTLINED_FUNCTION_0_11(v0);
  if (v52)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_126_2();
  }

  else
  {
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_2_2();
    v62 = *(v61 + 32);
    OUTLINED_FUNCTION_36_5();
    v63();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_179(v64);
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v65);
  OUTLINED_FUNCTION_0_11(v6);
  if (v52)
  {
    sub_267B9FED8(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_127_0();
  }

  else
  {
    OUTLINED_FUNCTION_158_0();
    OUTLINED_FUNCTION_2_2();
    v67 = *(v66 + 32);
    OUTLINED_FUNCTION_112_3();
    v68();
  }

  OUTLINED_FUNCTION_140();
  *(v44 + 272) = v69 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
  *(v44 + 280) = 0xE800000000000000;
  v70 = MEMORY[0x277D839B0];
  *(v44 + 288) = *(v1 + v4[9]);
  OUTLINED_FUNCTION_15_15();
  *(v44 + 312) = v70;
  *(v44 + 320) = v71;
  OUTLINED_FUNCTION_78_5();
  *(v44 + 328) = v72;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v4[10]);
  OUTLINED_FUNCTION_0_11(v5);
  if (v52)
  {
    sub_267B9FED8(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_2_2();
    v74 = *(v73 + 32);
    OUTLINED_FUNCTION_100_4();
    v75();
  }

  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_12_1();
  *(v44 + 368) = 0xD000000000000013;
  *(v44 + 376) = v76;
  *(v44 + 384) = *(v1 + v4[11]);
  OUTLINED_FUNCTION_12_1();
  *(v44 + 408) = v70;
  *(v44 + 416) = 0xD000000000000017;
  *(v44 + 424) = v77;
  *(v44 + 432) = 0;
  OUTLINED_FUNCTION_191();
  *(v44 + 456) = v70;
  *(v44 + 464) = v78;
  *(v44 + 472) = v0;
  OUTLINED_FUNCTION_138(&unk_28022AE30, &qword_267EFC0B0, v4[12]);
  OUTLINED_FUNCTION_0_11(v99);
  if (v52)
  {
    sub_267B9FED8(v99, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_151();
  }

  else
  {
    OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_2_2();
    v80 = *(v79 + 32);
    OUTLINED_FUNCTION_104_3();
    v81();
  }

  OUTLINED_FUNCTION_190();
  *(v44 + 512) = v82;
  *(v44 + 520) = 0xE700000000000000;
  LOBYTE(v82) = *(v1 + v4[13]);
  *(v44 + 552) = v70;
  *(v44 + 528) = v82;
  OUTLINED_FUNCTION_12_1();
  *(v44 + 560) = 0xD000000000000013;
  *(v44 + 568) = v83;
  sub_267BC9B04(v1 + v4[14], v100, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v100);
  if (v52)
  {
    sub_267B9FED8(v100, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_148();
  }

  else
  {
    OUTLINED_FUNCTION_167();
    OUTLINED_FUNCTION_2_2();
    v85 = *(v84 + 32);
    OUTLINED_FUNCTION_91_6();
    v86();
  }

  OUTLINED_FUNCTION_12_1();
  *(v44 + 608) = 0xD000000000000012;
  *(v44 + 616) = v87;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v4[15]);
  OUTLINED_FUNCTION_0_11(v101);
  if (v52)
  {
    sub_267B9FED8(v101, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_185();
  }

  else
  {
    OUTLINED_FUNCTION_202_0();
    OUTLINED_FUNCTION_2_2();
    v89 = *(v88 + 32);
    OUTLINED_FUNCTION_91_6();
    v90();
  }

  OUTLINED_FUNCTION_37_2();
  *(v44 + 656) = v91;
  *(v44 + 664) = v0 + 6;
  OUTLINED_FUNCTION_164(&unk_28022AE30, &qword_267EFC0B0, v4[16]);
  OUTLINED_FUNCTION_0_11(v0);
  if (v52)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    *(v44 + 672) = 0u;
    *(v44 + 688) = 0u;
  }

  else
  {
    *(v44 + 696) = v51;
    __swift_allocate_boxed_opaque_existential_0((v44 + 672));
    OUTLINED_FUNCTION_2_2();
    v93 = *(v92 + 32);
    OUTLINED_FUNCTION_36_5();
    v94();
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267CC1C0C()
{
  OUTLINED_FUNCTION_48_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v11, v90);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_1(v13, v14, v15, v16, v17, v18, v19, v20, v91);
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_22(v22, v23, v24, v25, v26, v27, v28, v29, v92);
  v31 = MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_23(v31, v32, v33, v34, v35, v36, v37, v38, v93);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v44 = swift_allocObject();
  OUTLINED_FUNCTION_16(v44, xmmword_267EFE4F0);
  v45 = *v1;
  if (*v1)
  {
    v46 = sub_267EF7958();
    v47 = v45;
  }

  else
  {
    v46 = OUTLINED_FUNCTION_81_5();
  }

  v48 = OUTLINED_FUNCTION_3_24(v46, v47);
  v49 = type metadata accessor for SendMessageSentSpecialEmergencyMessageParameters(v48);
  OUTLINED_FUNCTION_147(v49);
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v50);
  v51 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v3);
  if (v52)
  {

    sub_267B9FED8(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    OUTLINED_FUNCTION_161();
    OUTLINED_FUNCTION_2_2();
    v54 = *(v53 + 32);
    OUTLINED_FUNCTION_74();
    v55();
  }

  OUTLINED_FUNCTION_12_1();
  *(v44 + 128) = 0xD000000000000012;
  *(v44 + 136) = v56;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v4[6]);
  OUTLINED_FUNCTION_0_11(v2);
  if (v52)
  {
    sub_267B9FED8(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_2_2();
    v58 = *(v57 + 32);
    OUTLINED_FUNCTION_91_6();
    v59();
  }

  OUTLINED_FUNCTION_12_1();
  *(v44 + 176) = 0xD000000000000012;
  *(v44 + 184) = v60;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v4[7]);
  OUTLINED_FUNCTION_0_11(v0);
  if (v52)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_126_2();
  }

  else
  {
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_2_2();
    v62 = *(v61 + 32);
    OUTLINED_FUNCTION_36_5();
    v63();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_179(v64);
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v65);
  OUTLINED_FUNCTION_0_11(v6);
  if (v52)
  {
    sub_267B9FED8(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_127_0();
  }

  else
  {
    OUTLINED_FUNCTION_158_0();
    OUTLINED_FUNCTION_2_2();
    v67 = *(v66 + 32);
    OUTLINED_FUNCTION_112_3();
    v68();
  }

  OUTLINED_FUNCTION_15_15();
  *(v44 + 272) = v69;
  *(v44 + 280) = 0xEB00000000656D61;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v4[9]);
  OUTLINED_FUNCTION_0_11(v5);
  if (v52)
  {
    sub_267B9FED8(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_150();
  }

  else
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_2_2();
    v71 = *(v70 + 32);
    OUTLINED_FUNCTION_100_4();
    v72();
  }

  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_12_1();
  *(v44 + 320) = 0xD000000000000017;
  *(v44 + 328) = v73;
  v74 = MEMORY[0x277D839B0];
  *(v44 + 336) = 0;
  *(v44 + 360) = v74;
  *(v44 + 368) = 0x7463617265746E69;
  *(v44 + 376) = v0;
  sub_267BC9B04(v1 + v4[10], v94, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v94);
  if (v52)
  {
    sub_267B9FED8(v94, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_152();
  }

  else
  {
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_2_2();
    v76 = *(v75 + 32);
    OUTLINED_FUNCTION_100_4();
    v77();
  }

  OUTLINED_FUNCTION_12_1();
  *(v44 + 416) = 0xD000000000000013;
  *(v44 + 424) = v78;
  OUTLINED_FUNCTION_138(&unk_28022AE30, &qword_267EFC0B0, v4[11]);
  OUTLINED_FUNCTION_0_11(v95);
  if (v52)
  {
    sub_267B9FED8(v95, &unk_28022AE30, &qword_267EFC0B0);
    *(v44 + 432) = 0u;
    *(v44 + 448) = 0u;
  }

  else
  {
    *(v44 + 456) = v51;
    __swift_allocate_boxed_opaque_existential_0((v44 + 432));
    OUTLINED_FUNCTION_2_2();
    v80 = *(v79 + 32);
    OUTLINED_FUNCTION_104_3();
    v81();
  }

  OUTLINED_FUNCTION_12_1();
  *(v44 + 464) = 0xD000000000000012;
  *(v44 + 472) = v82;
  OUTLINED_FUNCTION_119_2(&unk_28022AE30, &qword_267EFC0B0, v4[12]);
  OUTLINED_FUNCTION_0_11(v96);
  if (v52)
  {
    sub_267B9FED8(v96, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_151();
  }

  else
  {
    OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_2_2();
    v84 = *(v83 + 32);
    OUTLINED_FUNCTION_91_6();
    v85();
  }

  OUTLINED_FUNCTION_37_2();
  *(v44 + 512) = v86;
  *(v44 + 520) = v0 + 6;
  OUTLINED_FUNCTION_164(&unk_28022AE30, &qword_267EFC0B0, v4[13]);
  OUTLINED_FUNCTION_0_11(v0);
  if (v52)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_149();
  }

  else
  {
    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_2_2();
    v88 = *(v87 + 32);
    OUTLINED_FUNCTION_36_5();
    v89();
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267CC2234()
{
  OUTLINED_FUNCTION_48_0();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v10 = OUTLINED_FUNCTION_18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_10(v13, v96);
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_1(v15, v16, v17, v18, v19, v20, v21, v22, v97);
  v24 = MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_22(v24, v25, v26, v27, v28, v29, v30, v31, v98);
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_23(v33, v34, v35, v36, v37, v38, v39, v40, v99);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_16(v46, xmmword_267F016E0);
  v47 = *v1;
  if (*v1)
  {
    sub_267EF7958();
    v48 = v47;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
  }

  *(v46 + 48) = v48;
  OUTLINED_FUNCTION_16_12();
  *(v46 + 72) = v49;
  *(v46 + 80) = v50;
  OUTLINED_FUNCTION_59_7();
  *(v46 + 88) = v51;
  v52 = v8(0);
  OUTLINED_FUNCTION_147(v52);
  OUTLINED_FUNCTION_121_2(&unk_28022AE30, &qword_267EFC0B0, v53);
  v54 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v3);
  if (v55)
  {

    sub_267B9FED8(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v46 + 96) = 0u;
    *(v46 + 112) = 0u;
  }

  else
  {
    *(v46 + 120) = v54;
    __swift_allocate_boxed_opaque_existential_0((v46 + 96));
    OUTLINED_FUNCTION_2_2();
    v57 = *(v56 + 32);
    OUTLINED_FUNCTION_74();
    v58();
  }

  OUTLINED_FUNCTION_12_1();
  *(v46 + 128) = 0xD000000000000012;
  *(v46 + 136) = v59;
  sub_267BC9B04(v1 + v4[6], v2, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v2);
  if (v55)
  {
    sub_267B9FED8(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v46 + 144) = 0u;
    *(v46 + 160) = 0u;
  }

  else
  {
    *(v46 + 168) = v54;
    __swift_allocate_boxed_opaque_existential_0((v46 + 144));
    OUTLINED_FUNCTION_2_2();
    (*(v60 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v46 + 176) = 0xD000000000000012;
  *(v46 + 184) = v61;
  OUTLINED_FUNCTION_120_3(&unk_28022AE30, &qword_267EFC0B0, v4[7]);
  OUTLINED_FUNCTION_0_11(v0);
  if (v55)
  {
    sub_267B9FED8(v0, &unk_28022AE30, &qword_267EFC0B0);
    *(v46 + 192) = 0u;
    *(v46 + 208) = 0u;
  }

  else
  {
    *(v46 + 216) = v54;
    __swift_allocate_boxed_opaque_existential_0((v46 + 192));
    OUTLINED_FUNCTION_2_2();
    v63 = *(v62 + 32);
    OUTLINED_FUNCTION_36_5();
    v64();
  }

  OUTLINED_FUNCTION_12_1();
  *(v46 + 224) = 0xD000000000000016;
  *(v46 + 232) = v65;
  OUTLINED_FUNCTION_137(&unk_28022AE30, &qword_267EFC0B0, v4[8]);
  OUTLINED_FUNCTION_0_11(v6);
  if (v55)
  {
    sub_267B9FED8(v6, &unk_28022AE30, &qword_267EFC0B0);
    *(v46 + 240) = 0u;
    *(v46 + 256) = 0u;
  }

  else
  {
    *(v46 + 264) = v54;
    __swift_allocate_boxed_opaque_existential_0((v46 + 240));
    OUTLINED_FUNCTION_2_2();
    v67 = *(v66 + 32);
    OUTLINED_FUNCTION_112_3();
    v68();
  }

  OUTLINED_FUNCTION_140();
  *(v46 + 272) = v69 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
  *(v46 + 280) = 0xE800000000000000;
  v70 = MEMORY[0x277D839B0];
  *(v46 + 288) = *(v1 + v4[9]);
  OUTLINED_FUNCTION_15_15();
  *(v46 + 312) = v70;
  *(v46 + 320) = v71;
  OUTLINED_FUNCTION_78_5();
  *(v46 + 328) = v72;
  OUTLINED_FUNCTION_122_2(&unk_28022AE30, &qword_267EFC0B0, v4[10]);
  OUTLINED_FUNCTION_0_11(v5);
  if (v55)
  {
    sub_267B9FED8(v5, &unk_28022AE30, &qword_267EFC0B0);
    *(v46 + 336) = 0u;
    *(v46 + 352) = 0u;
  }

  else
  {
    *(v46 + 360) = v54;
    __swift_allocate_boxed_opaque_existential_0((v46 + 336));
    OUTLINED_FUNCTION_2_2();
    v74 = *(v73 + 32);
    OUTLINED_FUNCTION_100_4();
    v75();
  }

  OUTLINED_FUNCTION_12_1();
  *(v46 + 368) = 0xD000000000000013;
  *(v46 + 376) = v76;
  *(v46 + 384) = *(v1 + v4[11]);
  OUTLINED_FUNCTION_12_1();
  *(v46 + 408) = v70;
  *(v46 + 416) = 0xD000000000000017;
  *(v46 + 424) = v77;
  *(v46 + 432) = 0;
  OUTLINED_FUNCTION_191();
  *(v46 + 456) = v70;
  *(v46 + 464) = v78;
  *(v46 + 472) = 0xEF617461446E6F69;
  sub_267BC9B04(v1 + v4[12], v100, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v100);
  if (v55)
  {
    sub_267B9FED8(v100, &unk_28022AE30, &qword_267EFC0B0);
    *(v46 + 480) = 0u;
    *(v46 + 496) = 0u;
  }

  else
  {
    *(v46 + 504) = v54;
    __swift_allocate_boxed_opaque_existential_0((v46 + 480));
    OUTLINED_FUNCTION_2_2();
    v80 = *(v79 + 32);
    OUTLINED_FUNCTION_100_4();
    v81();
  }

  OUTLINED_FUNCTION_190();
  *(v46 + 512) = v82;
  *(v46 + 520) = 0xE700000000000000;
  LOBYTE(v82) = *(v1 + v4[13]);
  *(v46 + 552) = v70;
  *(v46 + 528) = v82;
  OUTLINED_FUNCTION_12_1();
  *(v46 + 560) = 0xD000000000000013;
  *(v46 + 568) = v83;
  OUTLINED_FUNCTION_138(&unk_28022AE30, &qword_267EFC0B0, v4[14]);
  OUTLINED_FUNCTION_0_11(v101);
  if (v55)
  {
    sub_267B9FED8(v101, &unk_28022AE30, &qword_267EFC0B0);
    *(v46 + 576) = 0u;
    *(v46 + 592) = 0u;
  }

  else
  {
    *(v46 + 600) = v54;
    __swift_allocate_boxed_opaque_existential_0((v46 + 576));
    OUTLINED_FUNCTION_2_2();
    v85 = *(v84 + 32);
    OUTLINED_FUNCTION_104_3();
    v86();
  }

  OUTLINED_FUNCTION_12_1();
  *(v46 + 608) = 0xD000000000000012;
  *(v46 + 616) = v87;
  sub_267BC9B04(v1 + v4[15], v102, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v102);
  if (v55)
  {
    sub_267B9FED8(v102, &unk_28022AE30, &qword_267EFC0B0);
    *(v46 + 624) = 0u;
    *(v46 + 640) = 0u;
  }

  else
  {
    *(v46 + 648) = v54;
    __swift_allocate_boxed_opaque_existential_0((v46 + 624));
    OUTLINED_FUNCTION_2_2();
    v89 = *(v88 + 32);
    OUTLINED_FUNCTION_74();
    v90();
  }

  strcpy((v46 + 656), "screenshotHint");
  *(v46 + 671) = -18;
  v91 = *(v1 + v4[16]);
  *(v46 + 696) = v70;
  *(v46 + 672) = v91;
  OUTLINED_FUNCTION_37_2();
  *(v46 + 704) = v92;
  *(v46 + 712) = 0xEF617461446E6F6FLL;
  OUTLINED_FUNCTION_164(&unk_28022AE30, &qword_267EFC0B0, v4[17]);
  OUTLINED_FUNCTION_0_11(v70);
  if (v55)
  {
    sub_267B9FED8(v70, &unk_28022AE30, &qword_267EFC0B0);
    *(v46 + 720) = 0u;
    *(v46 + 736) = 0u;
  }

  else
  {
    *(v46 + 744) = v54;
    __swift_allocate_boxed_opaque_existential_0((v46 + 720));
    OUTLINED_FUNCTION_2_2();
    v94 = *(v93 + 32);
    OUTLINED_FUNCTION_36_5();
    v95();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267CC2994()
{
  OUTLINED_FUNCTION_12();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = type metadata accessor for SendMessageAskForAudioMessageParameters(0);
  v0[6] = v5;
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267CC2A14()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[6];
  v2 = v0[7];
  *v2 = 0;
  v3 = v1[5];
  v4 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, v4);
  *(v2 + v1[6]) = 0;
  *(v2 + v1[7]) = 0;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_115_1(v5);
  *v6 = v7;
  v6[1] = sub_267CC2AE8;
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[3];

  return sub_267ED5DA8();
}

uint64_t sub_267CC2AE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC2BE0()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  v2 = sub_267CBC510();
  OUTLINED_FUNCTION_154(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_155(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_108_0(v4);
  v6 = OUTLINED_FUNCTION_28_2(30);

  return v7(v6);
}

uint64_t sub_267CC2C88()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC2DA8()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_146();
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  OUTLINED_FUNCTION_40_7();
  sub_267CC723C(v0, v5);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_267CC2E34()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  OUTLINED_FUNCTION_40_7();
  sub_267CC723C(v1, v5);

  v6 = OUTLINED_FUNCTION_65_4();

  return v7(v6);
}

uint64_t sub_267CC2EC0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_145();
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  OUTLINED_FUNCTION_40_7();
  sub_267CC723C(v0, v5);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_267CC2F4C()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v6 = OUTLINED_FUNCTION_97_5(v4, v5);
  v7 = type metadata accessor for SendMessageAskForPayloadParameters(v6);
  OUTLINED_FUNCTION_79_3(v7);
  v9 = *(v8 + 64);
  v1[6] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267CC2FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_124_1();
  v16 = *(v14 + 105);
  v17 = *(v14 + 104);
  v18 = v15[5];
  sub_267EF79B8();
  OUTLINED_FUNCTION_4_27(v13 + v18);
  OUTLINED_FUNCTION_13_19(v15[11]);
  OUTLINED_FUNCTION_22_11(v15[13]);
  OUTLINED_FUNCTION_22_11(v15[15]);
  OUTLINED_FUNCTION_22_11(v15[16]);
  OUTLINED_FUNCTION_22_11(v15[20]);
  OUTLINED_FUNCTION_173();
  *(v13 + v19) = 0;
  v20 = v13 + v15[10];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v13 + v15[14]) = 0;
  v21 = v13 + v15[17];
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v13 + v15[18]) = v17;
  *(v13 + v15[19]) = v16;
  OUTLINED_FUNCTION_1_3();
  v36 = v22;
  v23 = *(v12 + 4);
  v24 = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_134_0(v24);
  *v25 = v26;
  OUTLINED_FUNCTION_19_0(v25);
  OUTLINED_FUNCTION_165();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, a11, a12);
}

uint64_t sub_267CC310C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC3204()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  sub_267CBC754();
  OUTLINED_FUNCTION_131_1(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_135(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_55_2(v4);
  v6 = OUTLINED_FUNCTION_28_2(25);

  return v7(v6);
}

uint64_t sub_267CC32AC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 72);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC33CC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_47_6();
  sub_267CC723C(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267CC3434()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_47_6();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC349C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_47_6();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC3504()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SendMessageAskForRecipientParameters(0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CC357C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 32);
  v2 = sub_267EF79B8();
  OUTLINED_FUNCTION_201(v2);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_195(v3);

  return sub_267ED4394();
}

uint64_t sub_267CC3610()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC3730()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_46_7();
  sub_267CC723C(v2, v4);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267CC37AC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_46_7();
  sub_267CC723C(v2, v3);

  v4 = OUTLINED_FUNCTION_189();

  return v5(v4);
}

uint64_t sub_267CC381C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_46_7();
  sub_267CC723C(v2, v4);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267CC3898()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 116) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v10 = OUTLINED_FUNCTION_99_2(v6, v7, v8, v9);
  v11 = type metadata accessor for SendMessageConfirmAttachmentMessageParameters(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267CC391C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = *(v14 + 48);
  v15 = *(v14 + 56);
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);
  HIDWORD(a10) = *(v14 + 115);
  v37 = *(v14 + 116);
  v19 = *(v14 + 114);
  v20 = *(v14 + 113);
  v21 = *(v14 + 112);
  v22 = v16[5];
  sub_267EF79B8();
  OUTLINED_FUNCTION_5_25(v15 + v22);
  OUTLINED_FUNCTION_12_13(v16[12]);
  OUTLINED_FUNCTION_3_13(v16[17]);
  OUTLINED_FUNCTION_3_13(v16[18]);
  OUTLINED_FUNCTION_3_13(v16[21]);
  OUTLINED_FUNCTION_3_13(v16[22]);
  OUTLINED_FUNCTION_3_13(v16[24]);
  OUTLINED_FUNCTION_3_13(v16[25]);
  OUTLINED_FUNCTION_3_13(v16[27]);
  OUTLINED_FUNCTION_3_13(v16[28]);
  OUTLINED_FUNCTION_3_13(v16[30]);
  OUTLINED_FUNCTION_3_13(v16[31]);
  *v15 = 0;
  OUTLINED_FUNCTION_141_0(v16[13]);
  *(v15 + v16[20]) = v19;
  *(v15 + v16[23]) = BYTE4(a10);
  *(v15 + v16[26]) = v17;
  *(v15 + v16[29]) = v37;

  OUTLINED_FUNCTION_1_3();
  v38 = v23;
  v24 = *(v18 + 4);
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_115_1(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_34_0(v26);
  OUTLINED_FUNCTION_64_3();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v38, a12, a13, a14);
}

uint64_t sub_267CC3A98()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC3B90()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  sub_267CBD07C();
  OUTLINED_FUNCTION_154(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_155(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_90_1(v4);
  v6 = OUTLINED_FUNCTION_28_2(36);

  return v7(v6);
}

uint64_t sub_267CC3C38()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC3D58()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_45_8();
  sub_267CC723C(v1, v2);

  v3 = OUTLINED_FUNCTION_65_4();

  return v4(v3);
}

uint64_t sub_267CC3DC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_45_8();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC3E28()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_45_8();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC3E90()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 32) = v19;
  *(v1 + 40) = v0;
  *(v1 + 117) = v2;
  *(v1 + 116) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v10 = OUTLINED_FUNCTION_99_2(v6, v7, v8, v9);
  v11 = type metadata accessor for SendMessageConfirmAudioMessageParameters(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267CC3F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v18 = *(v14 + 48);
  v17 = *(v14 + 56);
  HIDWORD(a10) = *(v14 + 116);
  v35 = *(v14 + 117);
  v19 = *(v14 + 16);
  v20 = *(v14 + 24);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_5_25(v17 + v16);
  OUTLINED_FUNCTION_12_13(v18[13]);
  OUTLINED_FUNCTION_3_13(v18[17]);
  OUTLINED_FUNCTION_3_13(v18[20]);
  OUTLINED_FUNCTION_3_13(v18[22]);
  OUTLINED_FUNCTION_3_13(v18[23]);
  OUTLINED_FUNCTION_3_13(v18[25]);
  OUTLINED_FUNCTION_3_13(v18[26]);
  OUTLINED_FUNCTION_3_13(v18[29]);
  *v17 = 0;
  *(v17 + v18[12]) = v15;
  OUTLINED_FUNCTION_141_0(v18[18]);
  *(v17 + v18[21]) = a10;
  *(v17 + v18[24]) = v19;
  *(v17 + v18[27]) = BYTE4(a10);
  *(v17 + v18[28]) = v35;

  OUTLINED_FUNCTION_1_3();
  v36 = v21;
  v22 = *(v20 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_115_1(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_34_0(v24);
  OUTLINED_FUNCTION_64_3();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v36, a12, a13, a14);
}

uint64_t sub_267CC407C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC4174()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  sub_267CBE088();
  OUTLINED_FUNCTION_154(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_155(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_90_1(v4);
  v6 = OUTLINED_FUNCTION_28_2(31);

  return v7(v6);
}

uint64_t sub_267CC421C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC433C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_44_10();
  sub_267CC723C(v1, v2);

  v3 = OUTLINED_FUNCTION_65_4();

  return v4(v3);
}

uint64_t sub_267CC43A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_44_10();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC440C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_44_10();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC4474()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 112) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = type metadata accessor for SendMessageConfirmFaceTimeInviteParameters(0);
  *(v1 + 48) = v6;
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC44F8()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 112);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = v2[5];
  sub_267EF79B8();
  OUTLINED_FUNCTION_5_25(v1 + v6);
  OUTLINED_FUNCTION_3_13(v2[12]);
  OUTLINED_FUNCTION_12_13(v2[13]);
  OUTLINED_FUNCTION_3_13(v2[18]);
  OUTLINED_FUNCTION_3_13(v2[19]);
  OUTLINED_FUNCTION_3_13(v2[20]);
  OUTLINED_FUNCTION_3_13(v2[21]);
  OUTLINED_FUNCTION_3_13(v2[23]);
  OUTLINED_FUNCTION_3_13(v2[24]);
  OUTLINED_FUNCTION_3_13(v2[26]);
  *v1 = 0;
  *(v1 + v2[17]) = 0;
  *(v1 + v2[22]) = v4;
  *(v1 + v2[25]) = v3;

  OUTLINED_FUNCTION_1_3();
  v14 = v7;
  v8 = *(v5 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_115_1(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_34_0(v10);

  return v14(v12);
}

uint64_t sub_267CC464C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC4744()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  sub_267CBEDB8();
  OUTLINED_FUNCTION_154(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_155(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_90_1(v4);
  v6 = OUTLINED_FUNCTION_28_2(33);

  return v7(v6);
}

uint64_t sub_267CC47EC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC490C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_43_10();
  sub_267CC723C(v1, v2);

  v3 = OUTLINED_FUNCTION_65_4();

  return v4(v3);
}

uint64_t sub_267CC4974()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_43_10();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC49DC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_43_10();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC4A44()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 32) = v23;
  *(v1 + 40) = v0;
  *(v1 + 121) = v21;
  *(v1 + 120) = v20;
  *(v1 + 119) = v19;
  *(v1 + 16) = v2;
  *(v1 + 24) = v22;
  *(v1 + 118) = v3;
  *(v1 + 117) = v4;
  *(v1 + 116) = v5;
  v10 = OUTLINED_FUNCTION_99_2(v6, v7, v8, v9);
  v11 = type metadata accessor for SendMessageConfirmTextMessageParameters(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267CC4AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  v20 = *(v16 + 48);
  v19 = *(v16 + 56);
  HIDWORD(v38) = *(v16 + 120);
  v39 = *(v16 + 121);
  v21 = *(v16 + 16);
  v22 = *(v16 + 24);
  HIDWORD(v37) = *(v16 + 118);
  LODWORD(v38) = *(v16 + 119);
  HIDWORD(a10) = *(v16 + 116);
  LODWORD(v37) = *(v16 + 117);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_5_25(v19 + v18);
  OUTLINED_FUNCTION_3_13(v20[14]);
  OUTLINED_FUNCTION_3_13(v20[15]);
  OUTLINED_FUNCTION_3_13(v20[16]);
  OUTLINED_FUNCTION_3_13(v20[17]);
  OUTLINED_FUNCTION_3_13(v20[18]);
  OUTLINED_FUNCTION_3_13(v20[23]);
  OUTLINED_FUNCTION_3_13(v20[24]);
  OUTLINED_FUNCTION_3_13(v20[26]);
  OUTLINED_FUNCTION_3_13(v20[27]);
  OUTLINED_FUNCTION_3_13(v20[29]);
  OUTLINED_FUNCTION_3_13(v20[30]);
  OUTLINED_FUNCTION_3_13(v20[34]);
  *v19 = 0;
  *(v19 + v20[12]) = v17;
  OUTLINED_FUNCTION_141_0(v20[13]);
  *(v19 + v20[20]) = a10;
  *(v19 + v20[21]) = BYTE4(a10);
  *(v19 + v20[22]) = v37;
  *(v19 + v20[25]) = BYTE4(v37);
  *(v19 + v20[28]) = v21;
  *(v19 + v20[31]) = v38;
  *(v19 + v20[32]) = BYTE4(v38);
  *(v19 + v20[33]) = v39;

  OUTLINED_FUNCTION_1_3();
  v40 = v23;
  v24 = *(v22 + 4);
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_115_1(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_34_0(v26);
  OUTLINED_FUNCTION_15();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v37, v38, v40, a14, a15, a16);
}

uint64_t sub_267CC4CB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC4DA8()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  sub_267CBFB30();
  OUTLINED_FUNCTION_154(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_155(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_90_1(v4);
  v6 = OUTLINED_FUNCTION_28_2(30);

  return v7(v6);
}

uint64_t sub_267CC4E50()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC4F70()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_42_9();
  sub_267CC723C(v1, v2);

  v3 = OUTLINED_FUNCTION_65_4();

  return v4(v3);
}

uint64_t sub_267CC4FD8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_42_9();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC5040()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_42_9();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC50A8()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SendMessageFailureCantMessageParameters(0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CC5120()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 32);
  v2 = sub_267EF79B8();
  OUTLINED_FUNCTION_201(v2);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_195(v3);

  return sub_267CA9AE0();
}

uint64_t sub_267CC51B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC52AC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_166();
  *(v0 + 56) = sub_267BF326C(v2, v3);
  v4 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v5 = OUTLINED_FUNCTION_115_1(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_108_0(v5);
  v7 = OUTLINED_FUNCTION_28_2(30);

  return v8(v7);
}

uint64_t sub_267CC535C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC547C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_41_7();
  sub_267CC723C(v2, v4);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267CC54F4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_41_7();
  sub_267CC723C(v2, v3);

  v4 = OUTLINED_FUNCTION_189();

  return v5(v4);
}

uint64_t sub_267CC5560()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_41_7();
  sub_267CC723C(v2, v4);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267CC55D8()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v6 = OUTLINED_FUNCTION_97_5(v4, v5);
  v7 = type metadata accessor for SendMessageHoldSendParameters(v6);
  OUTLINED_FUNCTION_79_3(v7);
  v9 = *(v8 + 64);
  v1[6] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267CC5654()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_124_1();
  v4 = *(v2 + 105);
  v5 = *(v2 + 104);
  v6 = v3[5];
  sub_267EF79B8();
  OUTLINED_FUNCTION_4_27(v1 + v6);
  OUTLINED_FUNCTION_22_11(v3[9]);
  OUTLINED_FUNCTION_22_11(v3[10]);
  OUTLINED_FUNCTION_13_19(v3[11]);
  OUTLINED_FUNCTION_22_11(v3[13]);
  OUTLINED_FUNCTION_22_11(v3[14]);
  OUTLINED_FUNCTION_22_11(v3[15]);
  OUTLINED_FUNCTION_22_11(v3[16]);
  OUTLINED_FUNCTION_22_11(v3[17]);
  OUTLINED_FUNCTION_22_11(v3[18]);
  OUTLINED_FUNCTION_22_11(v3[19]);
  OUTLINED_FUNCTION_22_11(v3[20]);
  OUTLINED_FUNCTION_22_11(v3[23]);
  *v1 = 0;
  *(v1 + v3[21]) = v5;
  *(v1 + v3[22]) = v4;
  OUTLINED_FUNCTION_1_3();
  v14 = v7;
  v8 = *(v0 + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_134_0(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_19_0(v10);

  return v14(v12);
}

uint64_t sub_267CC57B0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC58A8()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  sub_267CC09C4();
  OUTLINED_FUNCTION_131_1(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_135(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_55_2(v4);
  v6 = OUTLINED_FUNCTION_28_2(20);

  return v7(v6);
}

uint64_t sub_267CC5950()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 72);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC5A70()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_39_8();
  sub_267CC723C(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267CC5AD8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_39_8();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC5B40()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_39_8();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC5BA8()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 107) = v4;
  *(v1 + 106) = v5;
  v8 = OUTLINED_FUNCTION_97_5(v6, v7);
  v9 = type metadata accessor for SendMessageSentAttachmentMessageParameters(v8);
  OUTLINED_FUNCTION_79_3(v9);
  v11 = *(v10 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CC5C2C()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_118_4();
  OUTLINED_FUNCTION_4_27(v1 + v7);
  OUTLINED_FUNCTION_13_19(v2[10]);
  OUTLINED_FUNCTION_22_11(v2[14]);
  OUTLINED_FUNCTION_22_11(v2[15]);
  OUTLINED_FUNCTION_22_11(v2[17]);
  OUTLINED_FUNCTION_173();
  *(v1 + v8) = v6;
  *(v1 + v2[11]) = v5;
  *(v1 + v2[13]) = v4;
  *(v1 + v2[16]) = v3;
  OUTLINED_FUNCTION_1_3();
  v16 = v9;
  v10 = *(v0 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_134_0(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_19_0(v12);

  return v16(v14);
}

uint64_t sub_267CC5D48()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC5E40()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  sub_267CC2234();
  OUTLINED_FUNCTION_131_1(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_135(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_55_2(v4);
  v6 = OUTLINED_FUNCTION_28_2(33);

  return v7(v6);
}

uint64_t sub_267CC5EFC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 72);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC601C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_38_9();
  sub_267CC723C(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267CC6084()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_38_9();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC60EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_38_9();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC6154()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 106) = v4;
  v7 = OUTLINED_FUNCTION_97_5(v5, v6);
  v8 = type metadata accessor for SendMessageSentAudioMessageParameters(v7);
  OUTLINED_FUNCTION_79_3(v8);
  v10 = *(v9 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC61D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_124_1();
  v16 = v14[106];
  v17 = v14[105];
  v18 = v14[104];
  v19 = v15[5];
  sub_267EF79B8();
  OUTLINED_FUNCTION_4_27(v13 + v19);
  OUTLINED_FUNCTION_13_19(v15[10]);
  OUTLINED_FUNCTION_22_11(v15[14]);
  OUTLINED_FUNCTION_22_11(v15[15]);
  OUTLINED_FUNCTION_22_11(v15[16]);
  OUTLINED_FUNCTION_173();
  *(v13 + v20) = v18;
  *(v13 + v15[11]) = v17;
  *(v13 + v15[13]) = v16;
  OUTLINED_FUNCTION_1_3();
  v35 = v21;
  v22 = *(v12 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_134_0(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_19_0(v24);
  OUTLINED_FUNCTION_165();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, a11, a12);
}

uint64_t sub_267CC62E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC63E0()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  sub_267CC158C();
  OUTLINED_FUNCTION_131_1(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_135(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_55_2(v4);
  v6 = OUTLINED_FUNCTION_28_2(28);

  return v7(v6);
}

uint64_t sub_267CC6488()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 72);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC65A8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_37_5();
  sub_267CC723C(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267CC6610()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_37_5();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC6678()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_37_5();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC66E0()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for SendMessageSentSpecialEmergencyMessageParameters(0);
  OUTLINED_FUNCTION_79_3(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267CC675C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_124_1();
  *v1 = 0;
  v3 = v2[5];
  sub_267EF79B8();
  OUTLINED_FUNCTION_4_27(v1 + v3);
  OUTLINED_FUNCTION_22_11(v2[9]);
  OUTLINED_FUNCTION_22_11(v2[10]);
  OUTLINED_FUNCTION_13_19(v2[11]);
  OUTLINED_FUNCTION_22_11(v2[13]);
  OUTLINED_FUNCTION_1_3();
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_134_0(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_19_0(v6);
  OUTLINED_FUNCTION_30_2();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267CC6850()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC6948()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  sub_267CC1C0C();
  OUTLINED_FUNCTION_131_1(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_135(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_55_2(v4);
  v6 = OUTLINED_FUNCTION_28_2(39);

  return v7(v6);
}

uint64_t sub_267CC69F0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 72);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC6B10()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_49_8();
  sub_267CC723C(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267CC6B78()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_49_8();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC6BE0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_49_8();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC6C48()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 107) = v4;
  *(v1 + 106) = v5;
  v8 = OUTLINED_FUNCTION_97_5(v6, v7);
  v9 = type metadata accessor for SendMessageSentTextMessageParameters(v8);
  OUTLINED_FUNCTION_79_3(v9);
  v11 = *(v10 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CC6CCC()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_118_4();
  OUTLINED_FUNCTION_4_27(v1 + v7);
  OUTLINED_FUNCTION_13_19(v2[10]);
  OUTLINED_FUNCTION_22_11(v2[14]);
  OUTLINED_FUNCTION_22_11(v2[15]);
  OUTLINED_FUNCTION_22_11(v2[17]);
  OUTLINED_FUNCTION_173();
  *(v1 + v8) = v6;
  *(v1 + v2[11]) = v5;
  *(v1 + v2[13]) = v4;
  *(v1 + v2[16]) = v3;
  OUTLINED_FUNCTION_1_3();
  v16 = v9;
  v10 = *(v0 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_134_0(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_19_0(v12);

  return v16(v14);
}

uint64_t sub_267CC6DE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CC6EE0()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  sub_267CC2234();
  OUTLINED_FUNCTION_131_1(v2);
  v3 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_135(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_55_2(v4);
  v6 = OUTLINED_FUNCTION_28_2(27);

  return v7(v6);
}

uint64_t sub_267CC6F9C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 72);
  v9 = *v2;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CC70BC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_48_8();
  sub_267CC723C(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267CC7124()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_48_8();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC718C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_48_8();
  sub_267CC723C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CC723C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_267CC7470()
{
  sub_267CC83D0(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_267CC83D0(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267CC75A0()
{
  sub_267CC83D0(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_267CC83D0(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267CC76C4()
{
  sub_267CC83D0(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_105_4();
    sub_267CC83D0(319, v1, v2, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267CC77EC()
{
  sub_267CC83D0(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_267CC83D0(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_267CC83D0(319, &qword_2802297E8, type metadata accessor for MessagesGroup, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_267CC83D0(319, &qword_2802297F0, MEMORY[0x277D55B70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267CC7988()
{
  OUTLINED_FUNCTION_105_4();
  sub_267CC83D0(319, v0, v1, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_267CC7A3C()
{
  sub_267CC83D0(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267CC83D0(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_267CC83D0(319, &qword_2802297E8, type metadata accessor for MessagesGroup, MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_267CC7C20();
      if (v8 > 0x3F)
      {
        return v7;
      }

      sub_267CC83D0(319, &qword_2802297F0, MEMORY[0x277D55B70], MEMORY[0x277D83D88]);
      if (v9 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_267CC7C20()
{
  if (!qword_28022A7A8)
  {
    v0 = sub_267EF9888();
    if (!v1)
    {
      atomic_store(v0, &qword_28022A7A8);
    }
  }
}

uint64_t sub_267CC7C98()
{
  sub_267CC83D0(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267CC83D0(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_267CC83D0(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_267CC7E70()
{
  sub_267CC83D0(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267CC83D0(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_267CC83D0(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_267CC8034()
{
  sub_267CC83D0(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267CC83D0(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_267CC83D0(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_267CC81FC()
{
  sub_267CC83D0(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267CC83D0(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_267CC83D0(319, &qword_28022A7F0, MEMORY[0x277D55C80], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_267CC83D0(319, &qword_280229808, MEMORY[0x277D55B70], MEMORY[0x277D83940]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_267CC83D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_74Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_index_75Tm(void *result, unsigned int a2, int a3)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
    v3 = OUTLINED_FUNCTION_15_2();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  return result;
}

void sub_267CC8578()
{
  sub_267CC83D0(319, &qword_2802297E0, MEMORY[0x277D55C08], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_267CC83D0(319, &qword_280229098, MEMORY[0x277D55C48], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_130_1()
{
  v8 = v0[115];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[112];
  v6 = *(v1 + 20);

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_137@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267BC9B04(v3 + a3, v4, a1, a2);
}

double OUTLINED_FUNCTION_151()
{
  result = 0.0;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;
  return result;
}

double OUTLINED_FUNCTION_152()
{
  result = 0.0;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  return result;
}

double OUTLINED_FUNCTION_153()
{
  result = 0.0;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_161()
{
  *(v0 + 120) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 96));
}

uint64_t OUTLINED_FUNCTION_162@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v4 - 176);

  return sub_267BC9B04(v3 + a3, v6, a1, a2);
}

uint64_t OUTLINED_FUNCTION_163@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v4 - 96);

  return sub_267BC9B04(v3 + a3, v6, a1, a2);
}

uint64_t OUTLINED_FUNCTION_164@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v4 - 88);

  return sub_267BC9B04(v3 + a3, v6, a1, a2);
}

uint64_t *OUTLINED_FUNCTION_167()
{
  *(v0 + 600) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 576));
}

uint64_t *OUTLINED_FUNCTION_168()
{
  *(v0 + 552) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 528));
}

uint64_t *OUTLINED_FUNCTION_170_0()
{
  *(v0 + 408) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 384));
}

uint64_t *OUTLINED_FUNCTION_171()
{
  *(v0 + 360) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 336));
}

uint64_t *OUTLINED_FUNCTION_172()
{
  *(v0 + 312) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 288));
}

double OUTLINED_FUNCTION_184()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

double OUTLINED_FUNCTION_185()
{
  result = 0.0;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_195(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_201(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t *OUTLINED_FUNCTION_202_0()
{
  *(v0 + 648) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 624));
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267CC8AD4()
{
  result = qword_28022A808;
  if (!qword_28022A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A808);
  }

  return result;
}

uint64_t sub_267CC8B28()
{
  v5 = &type metadata for Features;
  v0 = sub_267BAFCAC();
  v6 = v0;
  LOBYTE(v4[0]) = 18;
  v1 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (v1)
  {
    v5 = &type metadata for Features;
    v6 = v0;
    LOBYTE(v4[0]) = 19;
    v2 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_267CC8BB8(uint64_t *a1, char a2, unint64_t a3)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  sub_267BA2E04(a1, &v42);
  v8 = v3;
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  if (os_log_type_enabled(v9, v10))
  {
    v39 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136315906;
    v13 = [v8 typeName];
    v14 = sub_267EF9028();
    v16 = v15;

    v17 = sub_267BA33E8(v14, v16, &v41);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    sub_267BA2E04(&v42, v40);
    v18 = sub_267EF9098();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    v21 = sub_267BA33E8(v18, v20, &v41);

    *(v11 + 14) = v21;
    *(v11 + 22) = 2080;
    v22 = sub_267ECEB58();
    v23 = [v22 facadePropertyName];

    if (!v23)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v24 = sub_267EF9028();
    v26 = v25;

    v27 = sub_267BA33E8(v24, v26, &v41);

    *(v11 + 24) = v27;
    *(v11 + 32) = 2048;
    a3 = v39;
    *(v11 + 34) = v39;
    _os_log_impl(&dword_267B93000, v9, v10, "#%s Setting multi-cardinal value %s for slot %s at multicardinal index %ld", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v12, -1, -1);
    MEMORY[0x26D60A7B0](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v42);
  }

  v28 = sub_267ECEB58();
  v29 = [v28 valueStyle];

  if (v29 == 3)
  {
    sub_267ECE880();
    if (v44)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A828, &unk_267F01C50);
      if (swift_dynamicCast())
      {
        v30 = v40[0];
        if (*(v40[0] + 16) > 1uLL)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((a3 & 0x8000000000000000) == 0)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_267D60040(v30);
            v30 = v32;
            if ((a3 & 0x8000000000000000) == 0)
            {
LABEL_13:
              if (*(v30 + 16) > a3)
              {
                __swift_assign_boxed_opaque_existential_0((v30 + 32 * a3 + 32), a1);
LABEL_18:
                v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A828, &unk_267F01C50);
                v42 = v30;
                sub_267ECE290();
                return sub_267B9FF34(&v42, &qword_28022AEF0, &qword_267EFCDE0);
              }

              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_267B9FF34(&v42, &qword_28022AEF0, &qword_267EFCDE0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229AD0, &qword_267EFEF60);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_267EFC020;
    sub_267BA2E04(a1, v30 + 32);
    goto LABEL_18;
  }

LABEL_23:
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_267EF9B68();
  MEMORY[0x26D608E60](0x20746F6C53, 0xE500000000000000);
  LOBYTE(v40[0]) = a2;
  sub_267EF9C58();
  MEMORY[0x26D608E60](0xD000000000000016, 0x8000000267F15400);
  v33 = v42;
  v34 = v43;

  v35 = sub_267EF89F8();
  v36 = sub_267EF95E8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_267BA33E8(v33, v34, &v42);
    _os_log_impl(&dword_267B93000, v35, v36, "Fatal error: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x26D60A7B0](v38, -1, -1);
    MEMORY[0x26D60A7B0](v37, -1, -1);
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267CC9148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_267EF3868();
  v7 = OUTLINED_FUNCTION_58(v6);
  v169 = v8;
  v170 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v168 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v14 = OUTLINED_FUNCTION_18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v161 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v20 = OUTLINED_FUNCTION_18(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v176 = &v161 - v23;
  OUTLINED_FUNCTION_26_2();
  v167 = sub_267EF8228();
  v24 = OUTLINED_FUNCTION_58(v167);
  v166 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6();
  v164 = v28;
  MEMORY[0x28223BE20](v29);
  v165 = &v161 - v30;
  OUTLINED_FUNCTION_26_2();
  v175 = sub_267EF4C08();
  v31 = OUTLINED_FUNCTION_58(v175);
  v179 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6();
  v173 = v35;
  MEMORY[0x28223BE20](v36);
  v174 = &v161 - v37;
  OUTLINED_FUNCTION_26_2();
  v38 = sub_267EF4BE8();
  v39 = OUTLINED_FUNCTION_58(v38);
  v171 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_0_0();
  v178 = v44 - v43;
  OUTLINED_FUNCTION_26_2();
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

  v54 = sub_267EF8A08();
  v55 = __swift_project_value_buffer(v54, qword_280240FB0);
  v56 = *(v48 + 16);
  v177 = a1;
  v56(v53, a1, v45);
  v172 = v55;
  v57 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = OUTLINED_FUNCTION_48();
    v163 = a2;
    v60 = v59;
    v61 = OUTLINED_FUNCTION_52();
    v162 = v3;
    v161 = v61;
    v182[0] = v61;
    *v60 = 136315138;
    sub_267CCEE50(&qword_28022AF50, MEMORY[0x277D5C118]);
    v62 = sub_267EF9E58();
    v63 = v38;
    v64 = v18;
    v66 = v65;
    (*(v48 + 8))(v53, v45);
    v67 = sub_267BA33E8(v62, v66, v182);
    v18 = v64;
    v38 = v63;

    *(v60 + 4) = v67;
    _os_log_impl(&dword_267B93000, v57, a1, "#SendMessageNeedsConfirmationFlowStrategy received input: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v161);
    v3 = v162;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v48 + 8))(v53, v45);
  }

  v68 = v174;
  sub_267EF4B88();
  v69 = v179;
  v70 = v175;
  v71 = (*(v179 + 88))(v68, v175);
  v72 = v178;
  v73 = v176;
  if (v71 == *MEMORY[0x277D5C150])
  {
    (*(v69 + 96))(v68, v70);
    v74 = v68;
    v75 = v171;
    (*(v171 + 32))(v72, v74, v38);
    sub_267B9CC04(v72, v73);
    v76 = type metadata accessor for DirectInvocationUseCases();
    if (__swift_getEnumTagSinglePayload(v73, 1, v76) == 1)
    {
      (*(v75 + 8))(v72, v38);
      sub_267B9FF34(v73, &unk_28022BBE0, qword_267EFD030);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v77 = v166;
        v78 = v165;
        v79 = v167;
        (*(v166 + 32))(v165, v73, v167);
        v80 = v164;
        (*(v77 + 16))(v164, v78, v79);
        v81 = (*(v77 + 88))(v80, v79);
        if (v81 == *MEMORY[0x277D5D4F8])
        {
          v82 = v172;
          v83 = sub_267EF89F8();
          v84 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v84))
          {
            v85 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v85);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v86, v87, "#SendMessageNeedsConfirmationFlowStrategy request is confirmed");
            OUTLINED_FUNCTION_26();
          }

          v88 = *MEMORY[0x277D5BED8];
          v89 = sub_267EF44F8();
          OUTLINED_FUNCTION_16_13(v89);
          v91 = *(v90 + 104);
          v92 = OUTLINED_FUNCTION_37_6();
          v93(v92);
          OUTLINED_FUNCTION_9();
          __swift_storeEnumTagSinglePayload(v94, v95, v96, v82);
          v97 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageNeedsConfirmationFlowStrategy_confirmationResponse;
          swift_beginAccess();
          sub_267CCED84(v18, v3 + v97);
          swift_endAccess();
          sub_267EF3E58();
        }

        else
        {
          v144 = v81;
          v145 = *MEMORY[0x277D5D510];
          v146 = sub_267EF89F8();
          if (v144 != v145)
          {
            v153 = sub_267EF95E8();
            if (OUTLINED_FUNCTION_36(v153))
            {
              v154 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v154);
              OUTLINED_FUNCTION_17_0(&dword_267B93000, v155, v156, "#SendMessageNeedsConfirmationFlowStrategy unsupported direct invocation");
              OUTLINED_FUNCTION_26();
            }

            sub_267EF3E68();
            v157 = *(v166 + 8);
            v158 = v167;
            v157(v165, v167);
            v159 = OUTLINED_FUNCTION_47_7();
            v160(v159);
            return (v157)(v164, v158);
          }

          v147 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v147))
          {
            v148 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v148);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v149, v150, "#SendMessageNeedsConfirmationFlowStrategy request is cancelled");
            OUTLINED_FUNCTION_26();
          }

          sub_267EF3E48();
        }

        (*(v166 + 8))(v165, v167);
        v151 = OUTLINED_FUNCTION_47_7();
        return v152(v151);
      }

      (*(v75 + 8))(v72, v38);
      sub_267CCEDF4(v73);
    }

    v69 = v179;
  }

  else
  {
    (*(v69 + 8))(v68, v70);
  }

  v98 = v173;
  sub_267EF4B88();
  v99 = sub_267E57DFC(v98, &v180);
  (*(v69 + 8))(v98, v70, v99);
  if (v181)
  {
    sub_267BE58F4(&v180, v182);
    v100 = v182[4];
    v101 = __swift_project_boxed_opaque_existential_0(v182, v182[3]);
    v102 = *(v100 + 320);
    v103 = v168;
    v104 = v101;
    v105 = OUTLINED_FUNCTION_26_0();
    v106(v105);
    v107 = (*(v169 + 88))(v103, v170);
    if (v107 == *MEMORY[0x277D5B970])
    {
      v108 = sub_267EF89F8();
      v109 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v109))
      {
        v110 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v110);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v111, v112, "#SendMessageNeedsConfirmationFlowStrategy request is cancelled");
        OUTLINED_FUNCTION_26();
      }
    }

    else
    {
      if (v107 == *MEMORY[0x277D5B978])
      {
        v119 = *MEMORY[0x277D5BED8];
        v120 = sub_267EF44F8();
        OUTLINED_FUNCTION_16_13(v120);
        v122 = *(v121 + 104);
        v123 = OUTLINED_FUNCTION_37_6();
        v124(v123);
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v125, v126, v127, v104);
        v128 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageNeedsConfirmationFlowStrategy_confirmationResponse;
        OUTLINED_FUNCTION_48_9();
        sub_267CCED84(v18, v3 + v128);
        swift_endAccess();
        sub_267EF3E58();
        return __swift_destroy_boxed_opaque_existential_0(v182);
      }

      if (v107 != *MEMORY[0x277D5B968])
      {
        v139 = sub_267EF89F8();
        v140 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v140))
        {
          v141 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v141);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v142, v143, "#SendMessageNeedsConfirmationFlowStrategy no valid confirmation in the intent, ignoring");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E68();
        (*(v169 + 8))(v168, v170);
        return __swift_destroy_boxed_opaque_existential_0(v182);
      }

      v129 = *MEMORY[0x277D5BED0];
      v130 = sub_267EF44F8();
      OUTLINED_FUNCTION_16_13(v130);
      v132 = *(v131 + 104);
      v133 = OUTLINED_FUNCTION_37_6();
      v134(v133);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v104);
      v138 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageNeedsConfirmationFlowStrategy_confirmationResponse;
      OUTLINED_FUNCTION_48_9();
      sub_267CCED84(v18, v3 + v138);
      swift_endAccess();
    }

    sub_267EF3E48();
    return __swift_destroy_boxed_opaque_existential_0(v182);
  }

  sub_267B9FF34(&v180, &unk_28022BBF0, &unk_267F01C60);
  v113 = sub_267EF89F8();
  v114 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v114))
  {
    v115 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v115);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v116, v117, "#SendMessageNeedsConfirmationFlowStrategy unsupported input");
    OUTLINED_FUNCTION_26();
  }

  return sub_267EF3E68();
}

uint64_t sub_267CC9CB4()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = sub_267EF4C08();
  v1[14] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[15] = v6;
  v8 = *(v7 + 64);
  v1[16] = OUTLINED_FUNCTION_50();
  v1[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v1[18] = v9;
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  v1[19] = OUTLINED_FUNCTION_50();
  v1[20] = swift_task_alloc();
  v12 = sub_267EF44F8();
  v1[21] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = OUTLINED_FUNCTION_50();
  v1[24] = swift_task_alloc();
  v16 = sub_267EF44C8();
  v1[25] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v1[26] = v17;
  v19 = *(v18 + 64);
  v1[27] = OUTLINED_FUNCTION_50();
  v1[28] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v1[29] = v20;
  OUTLINED_FUNCTION_30_0(v20);
  v1[30] = v21;
  v23 = *(v22 + 64);
  v1[31] = OUTLINED_FUNCTION_50();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_267CC9ED4()
{
  v188 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[12];
  v7 = sub_267EF8A08();
  v8 = __swift_project_value_buffer(v7, qword_280240FB0);
  v9 = *(v5 + 16);
  v9(v2, v6, v4);
  v9(v1, v6, v4);
  v180 = v9;
  v9(v3, v6, v4);
  v184 = v8;
  v10 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[33];
  v14 = v0[34];
  v15 = v0[32];
  v17 = v0[29];
  v16 = v0[30];
  if (v12)
  {
    v164 = v0[28];
    v166 = v0[26];
    v168 = v0[25];
    v18 = OUTLINED_FUNCTION_52();
    v171 = swift_slowAlloc();
    v187[0] = swift_slowAlloc();
    *v18 = 136315650;
    log = v10;
    v0[9] = sub_267EF4908();
    sub_267EF7C38();
    sub_267CCEE50(&qword_28022A060, MEMORY[0x277D55380]);
    v19 = sub_267EF9E58();
    v21 = v20;

    v22 = *(v16 + 8);
    v22(v14, v17);
    v23 = sub_267BA33E8(v19, v21, v187);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = v13;
    sub_267EF4938();
    v25 = sub_267EF44B8();
    v27 = v26;
    (*(v166 + 8))(v164, v168);
    v22(v24, v17);
    v28 = sub_267BA33E8(v25, v27, v187);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2112;
    v29 = sub_267EF4928();
    v30 = OUTLINED_FUNCTION_63();
    v177 = v22;
    (v22)(v30);
    *(v18 + 24) = v29;
    *v171 = v29;
    _os_log_impl(&dword_267B93000, log, v1, "#SendMessageNeedsConfirmationFlowStrategy parseConfirmationResponse app: %s parameterName: %s intentResolutionResult: %@", v18, 0x20u);
    sub_267B9FF34(v171, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {

    v31 = *(v16 + 8);
    v31(v15, v17);
    v32 = OUTLINED_FUNCTION_63();
    (v31)(v32);
    v177 = v31;
    v31(v14, v17);
  }

  v33 = v0[20];
  v34 = v0[21];
  v35 = v0[13];
  v36 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageNeedsConfirmationFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267CCED14(v35 + v36, v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_267B9FF34(v0[20], &qword_280229310, &unk_267EFCF70);
    v37 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v39);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267C4BE60();
    OUTLINED_FUNCTION_61_1();
    *v45 = 0;
    v45[1] = 0;
    swift_willThrow();
    goto LABEL_18;
  }

  v46 = v0[28];
  v47 = v0[29];
  v48 = v0[25];
  v49 = v0[26];
  v50 = v0[12];
  (*(v0[22] + 32))(v0[24], v0[20], v0[21]);
  sub_267EF4938();
  sub_267EF44B8();
  v51 = *(v49 + 8);
  v52 = OUTLINED_FUNCTION_26_0();
  v54 = v53;
  (v53)(v52);
  v55 = sub_267C7C240();
  v175 = v54;
  if (v55 == 9)
  {
    v180(v0[31], v0[12], v0[29]);
    v56 = v184;
    v57 = sub_267EF89F8();
    v58 = sub_267EF95E8();
    v59 = OUTLINED_FUNCTION_36(v58);
    v60 = v0[30];
    v61 = v0[31];
    v62 = v0[29];
    if (v59)
    {
      v63 = v0[28];
      v172 = v0[25];
      v64 = OUTLINED_FUNCTION_48();
      v185 = OUTLINED_FUNCTION_52();
      v187[0] = v185;
      *v64 = 136315138;
      v181 = v56;
      sub_267EF4938();
      v65 = sub_267EF44B8();
      v67 = v66;
      v175(v63, v172);
      v68 = OUTLINED_FUNCTION_68_0();
      v177(v68);
      v69 = sub_267BA33E8(v65, v67, v187);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_267B93000, v57, v181, "#SendMessageNeedsConfirmationFlowStrategy unknown parameter: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v185);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v82 = OUTLINED_FUNCTION_68_0();
      v177(v82);
    }

    v84 = v0[28];
    v83 = v0[29];
    v86 = v0[24];
    v85 = v0[25];
    v87 = v0[21];
    v88 = v0[22];
    v89 = v0[12];
    sub_267EF4938();
    v90 = sub_267EF44B8();
    v92 = v91;
    v93 = OUTLINED_FUNCTION_26_0();
    (v175)(v93);
    sub_267C4BE60();
    OUTLINED_FUNCTION_61_1();
    *v94 = v90;
    v94[1] = v92;
    swift_willThrow();
    v95 = *(v88 + 8);
    v96 = OUTLINED_FUNCTION_44_0();
    v97(v96);
LABEL_18:
    v103 = v0[33];
    v102 = v0[34];
    v105 = v0[31];
    v104 = v0[32];
    v107 = v0[27];
    v106 = v0[28];
    v109 = v0[23];
    v108 = v0[24];
    v110 = v0[19];
    v111 = v0[20];
    v179 = v0[17];
    v183 = v0[16];

    OUTLINED_FUNCTION_17();
    goto LABEL_19;
  }

  v70 = v55;
  v173 = v35;
  v71 = v0[29];
  v72 = v0[17];
  v73 = v0[14];
  v74 = v0[15];
  v76 = v0[11];
  v75 = v0[12];
  v182 = sub_267EF4918();
  sub_267EF4B88();
  v77 = *(v74 + 88);
  v78 = OUTLINED_FUNCTION_26_0();
  LODWORD(v75) = v79(v78);
  LODWORD(v76) = *MEMORY[0x277D5C150];
  v80 = *(v74 + 8);
  v81 = OUTLINED_FUNCTION_26_0();
  v80(v81);
  if (v75 == v76)
  {
    v178 = [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  }

  else
  {
    v98 = v0[16];
    v99 = v0[13];
    v100 = v0[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
    v101 = sub_267EF7068();
    sub_267EF4B88();
    v101(v187, v98);
    v114 = v0[16];
    v115 = v0[14];

    (v80)(v114, v115);
    v178 = v187[0];
  }

  v116 = v0[24];
  v117 = v0[22];
  (*(v117 + 104))(v0[23], *MEMORY[0x277D5BED8], v0[21]);
  LOBYTE(v116) = sub_267EF44E8();
  v118 = *(v117 + 8);
  v119 = OUTLINED_FUNCTION_26_0();
  v169 = v120;
  (v120)(v119);
  if (v116)
  {
    v121 = v0[29];
    v122 = v0[27];
    v123 = v0[25];
    v124 = v0[12];
    v125 = sub_267EF4928();
    v126 = [v125 itemToConfirm];

    sub_267EF99B8();
    swift_unknownObjectRelease();
    sub_267EF4938();
    v127 = sub_267EF44A8();
    v129 = v128;
    v175(v122, v123);
    if (v129)
    {
      v130 = 0;
    }

    else
    {
      v130 = v127;
    }

    v131 = sub_267EF4918();
    v132 = sub_267CCE234(v70, v0 + 2, v130, v131);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v133 = v132;
    sub_267ECE5F0();
    v134 = v133;
    v135 = sub_267EF89F8();
    v136 = sub_267EF95D8();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = OUTLINED_FUNCTION_48();
      v138 = swift_slowAlloc();
      *v137 = 138412290;
      *(v137 + 4) = v134;
      *v138 = v134;
      _os_log_impl(&dword_267B93000, v135, v136, "#SendMessageNeedsConfirmationFlowStrategy updated intent after confirm response: %@", v137, 0xCu);
      sub_267B9FF34(v138, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      v135 = v134;
    }

    v182 = v134;
  }

  v139 = v0[13];

  v140 = sub_267EF89F8();
  v141 = sub_267EF95D8();

  if (os_log_type_enabled(v140, v141))
  {
    v143 = v0[18];
    v142 = v0[19];
    v144 = OUTLINED_FUNCTION_48();
    v145 = OUTLINED_FUNCTION_52();
    v187[0] = v145;
    *v144 = 136315138;
    sub_267CCED14(v173 + v36, v142);
    OUTLINED_FUNCTION_44_0();
    v146 = sub_267EF9098();
    v148 = sub_267BA33E8(v146, v147, v187);

    *(v144 + 4) = v148;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v149, v150, v151, v152, v153, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v145);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  v154 = v173;
  v156 = v0[33];
  v155 = v0[34];
  v161 = v0[32];
  v162 = v0[31];
  v163 = v0[28];
  v165 = v0[27];
  v157 = v0[24];
  v167 = v0[23];
  v158 = v0[21];
  v174 = v0[20];
  v176 = v0[17];
  v186 = v0[16];
  v159 = v0[10];
  sub_267CCED14(v154 + v36, v0[19]);
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  v160 = v182;
  sub_267EF4758();

  v169(v157, v158);

  OUTLINED_FUNCTION_1();
LABEL_19:

  return v112();
}

uint64_t sub_267CCAB44()
{
  OUTLINED_FUNCTION_12();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v1[29] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[30] = v6;
  v8 = *(v7 + 64);
  v1[31] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  v1[32] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF4228();
  v1[33] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[34] = v13;
  v15 = *(v14 + 64);
  v1[35] = OUTLINED_FUNCTION_2();
  v16 = sub_267EF44C8();
  v1[36] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v1[37] = v17;
  v19 = *(v18 + 64);
  v1[38] = OUTLINED_FUNCTION_50();
  v1[39] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_267CCACCC()
{
  v85 = v0;
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[29];
  v5 = v0[27];
  sub_267EF4938();
  sub_267EF44B8();
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_26_0();
  v6(v7);
  v8 = sub_267C7C240();
  if (v8 == 9)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = v0[30];
    v9 = v0[31];
    v11 = v0[29];
    v12 = v0[27];
    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    (*(v10 + 16))(v9, v12, v11);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (os_log_type_enabled(v14, v15))
    {
      v82 = v6;
      v16 = v0[39];
      v18 = v0[30];
      v17 = v0[31];
      v19 = v0[29];
      v79 = v19;
      v80 = v0[36];
      v20 = OUTLINED_FUNCTION_48();
      v81 = OUTLINED_FUNCTION_52();
      v84 = v81;
      *v20 = 136315138;
      v21 = v17;
      sub_267EF4938();
      v22 = sub_267EF44B8();
      v24 = v23;
      v25 = v16;
      v6 = v82;
      (v82)(v25, v80);
      (*(v18 + 8))(v21, v79);
      v26 = sub_267BA33E8(v22, v24, &v84);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_267B93000, v14, v15, "#SendMessageNeedsConfirmationFlowStrategy unknown parameter: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
      v48 = v0[30];
      v47 = v0[31];
      v49 = v0[29];

      (*(v48 + 8))(v47, v49);
    }

    v50 = v0[39];
    v51 = v0[36];
    v52 = v0[29];
    v53 = v0[27];
    sub_267EF4938();
    v54 = sub_267EF44B8();
    v56 = v55;
    v57 = OUTLINED_FUNCTION_26_0();
    v6(v57);
    sub_267C4BE60();
    OUTLINED_FUNCTION_61_1();
    *v58 = v54;
    v58[1] = v56;
    goto LABEL_34;
  }

  v27 = v8;
  if (sub_267C7C28C(v8) == 0x6E65697069636572 && v28 == 0xE900000000000074)
  {
  }

  else
  {
    v30 = sub_267EF9EA8();

    if ((v30 & 1) == 0)
    {
      v31 = v0[38];
      v32 = v0[36];
      v33 = v0[29];
      v34 = v6;
      v35 = v0[27];
      v83 = v0[26];
      sub_267EF4938();
      v36 = sub_267EF44A8();
      v38 = v37;
      v34(v31, v32);
      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v36;
      }

      v40 = sub_267EF4918();
      v0[45] = sub_267CCE234(v27, v83, v39, v40);

      v0[46] = sub_267EF4908();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[47] = v41;
      *v41 = v42;
      v41[1] = sub_267CCB618;
      v43 = v0[35];
      v44 = v0[28];
      OUTLINED_FUNCTION_89();

      return sub_267CCCDFC();
    }
  }

  sub_267BA2E04(v0[26], (v0 + 12));
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  if (!swift_dynamicCast())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v63 = v0[26];
    v64 = sub_267EF8A08();
    __swift_project_value_buffer(v64, qword_280240FB0);
    sub_267BA2E04(v63, (v0 + 16));
    v65 = sub_267EF89F8();
    v66 = sub_267EF95E8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = OUTLINED_FUNCTION_48();
      v68 = OUTLINED_FUNCTION_52();
      v84 = v68;
      *v67 = 136315138;
      sub_267BA2E04((v0 + 16), (v0 + 20));
      sub_267EF9098();
      __swift_destroy_boxed_opaque_existential_0(v0 + 16);
      v69 = OUTLINED_FUNCTION_63();
      v72 = sub_267BA33E8(v69, v70, v71);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_267B93000, v65, v66, "#SendMessageNeedsConfirmationFlowStrategy unsupported item to confirm from pattern: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    }

    sub_267C266B0();
    OUTLINED_FUNCTION_61_1();
    *v76 = 0xD00000000000001BLL;
    v76[1] = 0x8000000267F15460;
LABEL_34:
    swift_willThrow();
    OUTLINED_FUNCTION_29_11();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X1, X16 }
  }

  v59 = v0[28];
  v0[40] = v0[24];
  __swift_project_boxed_opaque_existential_0((v59 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(v59 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[41] = v60;
    *v60 = v61;
    OUTLINED_FUNCTION_39_9(v60);
    OUTLINED_FUNCTION_89();

    return sub_267CCC634();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[43] = v73;
    *v73 = v74;
    OUTLINED_FUNCTION_39_9(v73);
    OUTLINED_FUNCTION_89();

    return sub_267CCBAB4();
  }
}

uint64_t sub_267CCB398()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 336) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CCB490()
{
  OUTLINED_FUNCTION_56();

  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 280);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);

  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_267CCB520()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 352) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CCB618()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *(v2 + 376);
  *v4 = *v1;
  *(v3 + 384) = v0;

  v6 = *(v2 + 368);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267CCB73C()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v22 = *(v0 + 264);
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);
  v7 = v5[5];
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v7);
  (*(v8 + 8))(v7, v8);
  sub_267CCDCE4(v4);
  sub_267EF4158();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = sub_267EF4CC8();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v14 = MEMORY[0x277D5C1D8];
  v6[3] = v13;
  v6[4] = v14;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F38();

  sub_267B9FF34(v0 + 56, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v3 + 8))(v2, v22);
  v16 = *(v0 + 304);
  v15 = *(v0 + 312);
  v17 = *(v0 + 280);
  v19 = *(v0 + 248);
  v18 = *(v0 + 256);

  OUTLINED_FUNCTION_1();

  return v20();
}

uint64_t sub_267CCB904()
{
  OUTLINED_FUNCTION_62();

  v1 = *(v0 + 336);
  OUTLINED_FUNCTION_29_11();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CCB994()
{
  OUTLINED_FUNCTION_62();

  v1 = *(v0 + 352);
  OUTLINED_FUNCTION_29_11();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CCBA24()
{
  OUTLINED_FUNCTION_62();

  v1 = *(v0 + 384);
  OUTLINED_FUNCTION_29_11();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CCBAB4()
{
  OUTLINED_FUNCTION_12();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_267EF48A8();
  v1[11] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF8428();
  v1[14] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = OUTLINED_FUNCTION_50();
  v1[17] = swift_task_alloc();
  v13 = sub_267EF7D78();
  v1[18] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v1[19] = v14;
  v16 = *(v15 + 64);
  v1[20] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_267CCBC04()
{
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[20];
  v1 = v0[15];
  v29 = v0[17];
  v30 = v0[16];
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[10];
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  sub_267EF4908();
  sub_267EF7C18();

  sub_267EF78A8();
  v5 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
  OUTLINED_FUNCTION_21_8();
  v6 = OUTLINED_FUNCTION_63();
  v7(v6);
  sub_267EF7878();
  v8 = v4[5];
  v9 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v8);
  OUTLINED_FUNCTION_21_8();
  v10(v8, v9);
  v11 = sub_267EF7E68();
  OUTLINED_FUNCTION_97(v11);
  v0[22] = sub_267EF7E18();
  (*(v25 + 104))(v27, *MEMORY[0x277D564D0], v26);
  v12 = *MEMORY[0x277D5D720];
  v13 = *(v1 + 104);
  v13(v29, v12, v2);
  v28 = sub_267EF8418();
  v15 = v14;
  v0[23] = v14;
  v16 = *(v1 + 8);
  v16(v29, v2);
  v13(v30, v12, v2);
  v17 = sub_267EF8418();
  v19 = v18;
  v0[24] = v18;
  v16(v30, v2);
  v20 = *(MEMORY[0x277D56530] + 4);
  v21 = swift_task_alloc();
  v0[25] = v21;
  *v21 = v0;
  v21[1] = sub_267CCBE98;
  v22 = v0[20];
  v23 = v0[8];

  return MEMORY[0x2821B9180](v23, v22, v28, v15, v17, v19);
}

uint64_t sub_267CCBE98()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[24];
  v7 = v4[23];
  v8 = v4[20];
  v9 = v4[19];
  v10 = v4[18];
  v11 = *v1;
  OUTLINED_FUNCTION_5();
  *v12 = v11;
  *(v14 + 208) = v13;
  *(v14 + 216) = v0;

  v15 = *(v9 + 8);
  v16 = OUTLINED_FUNCTION_44_0();
  v17(v16);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267CCC02C()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[26];
  v2 = sub_267EF8A08();
  v0[28] = __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  LOBYTE(v1) = sub_267EF95D8();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[26];
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_52();
    *v6 = 136315138;
    v8 = [v5 patternId];
    sub_267EF9028();

    v9 = OUTLINED_FUNCTION_68_0();
    v12 = sub_267BA33E8(v9, v10, v11);

    *(v6 + 4) = v12;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_26();
  }

  v18 = v0[21];
  v19 = v0[13];
  v21 = v0[9];
  v20 = v0[10];
  sub_267CCDBC4();
  v22 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v22);
  v0[29] = sub_267EF4188();
  v23 = sub_267EF4908();
  v0[30] = v23;
  v24 = v20[6];
  __swift_project_boxed_opaque_existential_0(v20 + 2, v20[5]);
  v25 = *(v24 + 8);
  v26 = OUTLINED_FUNCTION_63();
  v27(v26);
  v28 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_44_0();
  v29 = sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[31] = v30;
  *v30 = v31;
  v30[1] = sub_267CCC284;
  v32 = v0[26];
  v33 = v0[13];
  v34 = v0[7];

  return sub_267BCF3A4(v34, v32, v33, v23, v29 & 1);
}

uint64_t sub_267CCC284()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = v5[31];
  v7 = v5[30];
  v8 = v5[29];
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v3 + 256) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CCC3C4()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[28];
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[26];
  v6 = v0[22];
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_32();
    *v7 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#SendMessageNeedsConfirmationFlowStrategy returning output", v7, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  else
  {

    v5 = v2;
  }

  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_1();

  return v11();
}

uint64_t sub_267CCC4EC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[22];

  v2 = v0[27];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267CCC578()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[26];
  v2 = v0[22];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v6 = v0[32];
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[13];

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267CCC634()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_267EF8428();
  v1[6] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_50();
  v1[9] = swift_task_alloc();
  v9 = sub_267EF7D78();
  v1[10] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  v13 = sub_267EF48A8();
  v1[13] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v1[14] = v14;
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_267CCC784()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = sub_267EF8A08();
  v2[16] = __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v6);
    _os_log_impl(&dword_267B93000, v4, v0, "#SendMessageNeedsConfirmationFlowStrategy generating SMART output for recipient confirmation", v1, 2u);
    OUTLINED_FUNCTION_26();
  }

  v7 = v2[11];
  v34 = v2[15];
  v35 = v2[10];
  v36 = v2[12];
  v38 = v2[9];
  v8 = v2[7];
  v41 = v2[8];
  v10 = v2[5];
  v9 = v2[6];
  v11 = v2[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  sub_267EF4908();
  sub_267EF7C18();

  sub_267EF78A8();
  v13 = v10[5];
  v12 = v10[6];
  __swift_project_boxed_opaque_existential_0(v10 + 2, v13);
  OUTLINED_FUNCTION_21_8();
  v14(v13, v12);
  sub_267EF7878();
  v15 = v10[6];
  __swift_project_boxed_opaque_existential_0(v10 + 2, v10[5]);
  OUTLINED_FUNCTION_21_8();
  v16 = OUTLINED_FUNCTION_68_0();
  v17(v16);
  v18 = sub_267EF7E98();
  OUTLINED_FUNCTION_97(v18);
  v2[17] = sub_267EF7E88();
  sub_267CCDBC4();
  (*(v7 + 104))(v36, *MEMORY[0x277D564D0], v35);
  v19 = *MEMORY[0x277D5D720];
  v20 = *(v8 + 104);
  v20(v38, v19, v9);
  v37 = sub_267EF8418();
  v22 = v21;
  v2[18] = v21;
  v23 = *(v8 + 8);
  v23(v38, v9);
  v20(v41, v19, v9);
  v24 = sub_267EF8418();
  v26 = v25;
  v2[19] = v25;
  v23(v41, v9);
  v27 = *(MEMORY[0x277D56568] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v2[20] = v28;
  *v28 = v29;
  v28[1] = sub_267CCCABC;
  v30 = v2[12];
  v31 = v2[2];
  v32 = v2[3];
  v40 = v2[15];

  return MEMORY[0x2821B91C8](v31, v32, v30, v37, v22, v24, v26, 0);
}

uint64_t sub_267CCCABC()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[19];
  v7 = v4[18];
  v8 = v4[12];
  v9 = v4[11];
  v10 = v4[10];
  v11 = *v1;
  OUTLINED_FUNCTION_5();
  *v12 = v11;
  *(v13 + 168) = v0;

  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_44_0();
  v16(v15);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_267CCCC4C()
{
  v1 = v0[16];
  v2 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v14 = v0[12];
  v13 = v0[13];
  v16 = v0[8];
  v15 = v0[9];

  v17 = *(v12 + 8);
  v18 = OUTLINED_FUNCTION_26_0();
  v19(v18);

  OUTLINED_FUNCTION_1();

  return v20();
}

uint64_t sub_267CCCD4C()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[8];
  v6 = v0[9];

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_17();
  v9 = v0[21];

  return v8();
}

uint64_t sub_267CCCDFC()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 136) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_50();
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267CCCEB0()
{
  v63 = v0;
  v1 = *(v0 + 136);
  if (v1 == 1)
  {
    v16 = *(*(v0 + 32) + 104);
    v17 = [*(v0 + 24) speakableGroupName];
    if (v17)
    {
      v18 = v17;
      v19 = *(v0 + 48);
      v20 = [v17 spokenPhrase];

      sub_267EF9028();
      sub_267EF90F8();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v39 = *(v0 + 48);
    v40 = sub_267EF79B8();
    __swift_storeEnumTagSinglePayload(v39, v21, 1, v40);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 104) = v41;
    *v41 = v42;
    v41[1] = sub_267CCD6C0;
    v43 = *(v0 + 48);
    OUTLINED_FUNCTION_45_9();
    OUTLINED_FUNCTION_91_0();

    return sub_267E4AAAC();
  }

  else if (v1 == 2)
  {
    v5 = *(*(v0 + 32) + 104);
    [*(v0 + 24) outgoingMessageType];
    OUTLINED_FUNCTION_23_10();
    v6 = *(v0 + 40);
    sub_267EF90F8();

    sub_267EF79B8();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 120) = v11;
    *v11 = v12;
    v11[1] = sub_267CCD844;
    v13 = *(v0 + 40);
    OUTLINED_FUNCTION_45_9();
    OUTLINED_FUNCTION_91_0();

    return sub_267E4A6C4();
  }

  else
  {
    if (v1 != 3)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v22 = sub_267EF8A08();
      __swift_project_value_buffer(v22, qword_280240FB0);
      v23 = sub_267EF89F8();
      sub_267EF95E8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 136);
        v26 = OUTLINED_FUNCTION_48();
        v27 = OUTLINED_FUNCTION_52();
        v62 = v27;
        *v26 = 136315138;
        v28 = sub_267C7C28C(v25);
        v30 = sub_267BA33E8(v28, v29, &v62);

        *(v26 + 4) = v30;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      sub_267CCECC0();
      OUTLINED_FUNCTION_61_1();
      *v36 = 4;
      swift_willThrow();
      OUTLINED_FUNCTION_43_11();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_91_0();

      __asm { BRAA            X1, X16 }
    }

    sub_267ED9A2C(*(v0 + 24));
    if (v2)
    {
      v3 = *(v0 + 64);
      sub_267EF90F8();

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v45 = *(v0 + 64);
    v46 = *(v0 + 32);
    v47 = sub_267EF79B8();
    __swift_storeEnumTagSinglePayload(v45, v4, 1, v47);
    v48 = *(v46 + 104);
    if (*(*(v46 + 56) + 16) - 2 >= 4)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 72) = v58;
      *v58 = v59;
      v58[1] = sub_267CCD410;
      v60 = *(v0 + 64);
      OUTLINED_FUNCTION_45_9();
      OUTLINED_FUNCTION_91_0();

      return sub_267E4A8AC();
    }

    else
    {
      [*(v0 + 24) outgoingMessageType];
      OUTLINED_FUNCTION_23_10();
      v49 = *(v0 + 56);
      sub_267EF90F8();

      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v47);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 88) = v53;
      *v53 = v54;
      v53[1] = sub_267CCD59C;
      v56 = *(v0 + 56);
      v55 = *(v0 + 64);
      OUTLINED_FUNCTION_45_9();
      OUTLINED_FUNCTION_91_0();

      return sub_267E4A290();
    }
  }
}

uint64_t sub_267CCD410()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267CCD508()
{
  OUTLINED_FUNCTION_56();
  sub_267B9FF34(v0[8], &unk_28022AE30, &qword_267EFC0B0);
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_267CCD59C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *(v4 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 96) = v0;

  sub_267B9FF34(v6, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267CCD6C0()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v2[13];
  v6 = *v1;
  *v4 = *v1;
  v3[14] = v0;

  sub_267B9FF34(v2[6], &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v11 = v3[7];
    v10 = v3[8];
    v14 = v3 + 5;
    v12 = v3[5];
    v13 = v14[1];

    v15 = v6[1];

    return v15();
  }
}

uint64_t sub_267CCD844()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *(v5 + 40);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  v3[16] = v0;

  sub_267B9FF34(v7, &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v14 = v3[7];
    v13 = v3[8];
    v17 = v3 + 5;
    v15 = v3[5];
    v16 = v17[1];

    OUTLINED_FUNCTION_1();

    return v18();
  }
}

uint64_t sub_267CCD9B4()
{
  OUTLINED_FUNCTION_56();
  sub_267B9FF34(*(v0 + 64), &unk_28022AE30, &qword_267EFC0B0);
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_43_11();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CCDA44()
{
  OUTLINED_FUNCTION_56();
  sub_267B9FF34(*(v0 + 64), &unk_28022AE30, &qword_267EFC0B0);
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_43_11();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CCDAD4()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_43_11();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CCDB4C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_43_11();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CCDBC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1 = OUTLINED_FUNCTION_18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - v4;
  v6 = sub_267EF3CF8();
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3C98();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267CCDCE4(v5);
  sub_267EF4158();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  return sub_267EF4818();
}

uint64_t sub_267CCDCE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_267EF53D8();
  v4 = OUTLINED_FUNCTION_58(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6();
  v56 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_68_0();
  v19(v18);
  sub_267EF4148();
  __swift_project_boxed_opaque_existential_0(v59, v60);
  OUTLINED_FUNCTION_68_0();
  sub_267EF3B98();
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v59);
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v20 = swift_allocObject();
  v57 = xmmword_267EFC020;
  *(v20 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v20 + 32) = sub_267BC9500();
  *(v20 + 40) = v21;
  sub_267EF4118();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_267F00200;
  *(v22 + 32) = sub_267BB90E4(0);
  *(v22 + 40) = v23;
  *(v22 + 48) = sub_267BB90E4(1);
  *(v22 + 56) = v24;
  *(v22 + 64) = sub_267BB90E4(2);
  *(v22 + 72) = v25;
  *(v22 + 80) = sub_267BB90E4(5);
  *(v22 + 88) = v26;
  *(v22 + 96) = sub_267BB90E4(6);
  *(v22 + 104) = v27;
  *(v22 + 112) = sub_267C8F86C(4);
  *(v22 + 120) = v28;
  sub_267EF4108();
  sub_267EF4098();
  v29 = sub_267EF6448();
  OUTLINED_FUNCTION_97(v29);
  sub_267EF6438();
  sub_267BBB050();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v30 = sub_267EF8A08();
  __swift_project_value_buffer(v30, qword_280240FB0);
  v31 = *(v6 + 16);
  v31(v13, v15, v3);
  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_48();
    v52 = v34;
    v53 = OUTLINED_FUNCTION_52();
    v58 = v53;
    *v34 = 136315138;
    v35 = v56;
    v31(v56, v13, v3);
    sub_267EF5458();
    v51 = v33;
    v60 = v3;
    v61 = sub_267CCEE50(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
    v31(boxed_opaque_existential_0, v35, v3);
    v37 = sub_267EF5448();
    v54 = a1;
    v55 = v15;
    v39 = v38;
    v40 = v35;
    v41 = *(v6 + 8);
    v50 = v31;
    v41(v40, v3);
    v41(v13, v3);
    __swift_destroy_boxed_opaque_existential_0(v59);
    v42 = sub_267BA33E8(v37, v39, &v58);
    v15 = v55;

    v43 = v52;
    *(v52 + 1) = v42;
    _os_log_impl(&dword_267B93000, v32, v51, "#SendMessageNeedsConfirmationFlowStrategy submitting NLv4 dialog act: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v44 = v50;
  }

  else
  {

    v41 = *(v6 + 8);
    v44 = v31;
    v41(v13, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v45 = *(v6 + 72);
  v46 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v57;
  v44(v47 + v46, v15, v3);
  sub_267EF4088();
  return (v41)(v15, v3);
}

uint64_t sub_267CCE234(unsigned __int8 a1, uint64_t *a2, unint64_t a3, id a4)
{
  v6 = a1;
  [a4 copy];
  sub_267EF99B8();
  swift_unknownObjectRelease();
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  swift_dynamicCast();
  if (v6)
  {
    sub_267BA2E04(a2, v9);
    sub_267ECE290();
    sub_267B9FF34(v9, &qword_28022AEF0, &qword_267EFCDE0);
  }

  else
  {
    sub_267CC8BB8(a2, 0, a3);
  }

  return v8;
}

void sub_267CCE368()
{
  sub_267C25DD4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267CCE464()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267CC9CB4();
}

uint64_t sub_267CCE518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4E0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageNeedsConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BA83C4;

  return MEMORY[0x2821B9E10](a1, a2, v10, a4);
}

uint64_t sub_267CCE5E0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267CCAB44();
}

uint64_t sub_267CCE694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B4F0] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageNeedsConfirmationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9E28](a1, a2, a3, v12, a5);
}

uint64_t sub_267CCE764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B500] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageNeedsConfirmationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9E38](a1, a2, a3, v12, a5);
}

uint64_t sub_267CCE834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4F8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageNeedsConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9E30](a1, a2, v10, a4);
}

uint64_t sub_267CCE8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B508] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageNeedsConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9E40](a1, a2, v10, a4);
}

uint64_t sub_267CCE9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B4E8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SendMessageNeedsConfirmationFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, v14, a6);
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;

        *v3 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v16, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v16, v4);
      }
    }
  }

  return result;
}

unint64_t sub_267CCECC0()
{
  result = qword_28022A830;
  if (!qword_28022A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A830);
  }

  return result;
}

uint64_t sub_267CCED14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267CCED84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267CCEDF4(uint64_t a1)
{
  v2 = type metadata accessor for DirectInvocationUseCases();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267CCEE50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267CCEEA0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v176 = a3;
  v5 = sub_267EF44C8();
  v6 = OUTLINED_FUNCTION_58(v5);
  v172 = v7;
  v173 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v10);
  v171 = &v166 - v11;
  OUTLINED_FUNCTION_26_2();
  v12 = sub_267EF4C08();
  v13 = OUTLINED_FUNCTION_58(v12);
  v178 = v14;
  v179 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  v174 = v17;
  MEMORY[0x28223BE20](v18);
  v177 = &v166 - v19;
  OUTLINED_FUNCTION_26_2();
  v20 = sub_267EF4BE8();
  v21 = OUTLINED_FUNCTION_58(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_0();
  *&v180 = v27 - v26;
  OUTLINED_FUNCTION_26_2();
  v28 = sub_267EF4BA8();
  v29 = OUTLINED_FUNCTION_58(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_0();
  v36 = v35 - v34;
  if (qword_280228818 != -1)
  {
    goto LABEL_103;
  }

  while (1)
  {
    v37 = sub_267EF8A08();
    v38 = __swift_project_value_buffer(v37, qword_280240FB0);
    (*(v31 + 16))(v36, a1, v28);
    v181 = v38;
    v39 = sub_267EF89F8();
    v40 = sub_267EF95C8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_48();
      v169 = v23;
      v42 = v41;
      v167 = OUTLINED_FUNCTION_52();
      v184[0] = v167;
      *v42 = 136315138;
      sub_267CD23C8(&qword_28022AF50, MEMORY[0x277D5C118]);
      v43 = sub_267EF9E58();
      v168 = a1;
      v44 = v20;
      v45 = a2;
      v47 = v46;
      (*(v31 + 8))(v36, v28);
      sub_267BA33E8(v43, v47, v184);
      OUTLINED_FUNCTION_54_1();
      a2 = v45;
      v20 = v44;

      *(v42 + 4) = v43;
      _os_log_impl(&dword_267B93000, v39, v40, "#ReadContactDisambiguation received input: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v167);
      OUTLINED_FUNCTION_32_0();
      v23 = v169;
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      (*(v31 + 8))(v36, v28);
    }

    sub_267EF4B88();
    v48 = v178;
    v49 = *(v178 + 88);
    v50 = OUTLINED_FUNCTION_25_12();
    if (v51(v50) == *MEMORY[0x277D5C150])
    {
      v52 = *(v48 + 96);
      v53 = OUTLINED_FUNCTION_25_12();
      v54(v53);
      v55 = v23[4];
      v56 = OUTLINED_FUNCTION_63();
      v57(v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
      v58 = sub_267EF4928();
      sub_267EF4908();
      v59 = v175;
      sub_267E65334();
      v61 = v60;

      if (v61)
      {
        v62 = v61;
        v63 = sub_267EF89F8();
        v64 = sub_267EF95D8();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = OUTLINED_FUNCTION_48();
          v181 = OUTLINED_FUNCTION_52();
          v184[0] = v181;
          *v65 = 136315138;
          v66 = v62;
          v67 = [v66 description];
          v68 = v23;
          v69 = v20;
          v70 = sub_267EF9028();
          v72 = v71;

          v73 = v70;
          v20 = v69;
          v23 = v68;
          v59 = v175;
          v74 = sub_267BA33E8(v73, v72, v184);

          *(v65 + 4) = v74;
          _os_log_impl(&dword_267B93000, v63, v64, "#ReadContactDisambiguation Selected person %s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v181);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297A8, &unk_267EFEFA0);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_267EFC020;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_267EFCA40;
        *(v76 + 32) = v62;
        *(v75 + 32) = v76;
        v77 = *(v59 + OBJC_IVAR____TtC16SiriMessagesFlow55SearchForMessagesContactNeedsDisambiguationFlowStrategy_selectedPersons);
        *(v59 + OBJC_IVAR____TtC16SiriMessagesFlow55SearchForMessagesContactNeedsDisambiguationFlowStrategy_selectedPersons) = v75;
        v78 = v62;

        sub_267EF3E58();
      }

      else
      {
        v89 = sub_267EF89F8();
        v90 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v90))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v91, v92, "#ReadContactDisambiguation selection not found from direct invocation");
          OUTLINED_FUNCTION_32_0();
        }

        sub_267EF3E68();
      }

      (v23[1])(v180, v20);
      return;
    }

    v79 = *(v48 + 8);
    v80 = OUTLINED_FUNCTION_25_12();
    v79(v80);
    v81 = v174;
    sub_267EF4B88();
    sub_267E57DFC(v81, &v182);
    v82 = OUTLINED_FUNCTION_25_12();
    v79(v82);
    if (!v183)
    {
      sub_267CD2360(&v182);
      v93 = sub_267EF89F8();
      v94 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v94))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v95, v96, "#ReadContactDisambiguation Not a messages intent");
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF3E68();
      return;
    }

    sub_267BE58F4(&v182, v184);
    v83 = v185;
    v84 = v186;
    __swift_project_boxed_opaque_existential_0(v184, v185);
    if ((*(v84 + 96))(v83, v84))
    {
      v85 = sub_267EF89F8();
      v86 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v86))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v87, v88, "#ReadContactDisambiguation Intent cancelled");
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF3E48();
      goto LABEL_101;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
    v97 = v171;
    *&v180 = a2;
    sub_267EF4938();
    v98 = sub_267EF44B8();
    v100 = v99;
    v101 = v173;
    v178 = *(v172 + 8);
    (v178)(v97, v173);
    if (v98 == 0x6E65697069636572 && v100 == 0xE900000000000074)
    {

      v36 = 1;
    }

    else
    {
      v36 = OUTLINED_FUNCTION_21_9();
    }

    v103 = v175;
    v104 = *(v175 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver + 24);
    v105 = *(v175 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver + 32);
    __swift_project_boxed_opaque_existential_0((v175 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver), v104);
    LODWORD(v179) = v36;
    v106 = sub_267EBE490(v184, (v36 & 1), v104, v105);
    v107 = OBJC_IVAR____TtC16SiriMessagesFlow55SearchForMessagesContactNeedsDisambiguationFlowStrategy_selectedPersons;
    v108 = *(v103 + OBJC_IVAR____TtC16SiriMessagesFlow55SearchForMessagesContactNeedsDisambiguationFlowStrategy_selectedPersons);
    *(v103 + OBJC_IVAR____TtC16SiriMessagesFlow55SearchForMessagesContactNeedsDisambiguationFlowStrategy_selectedPersons) = v106;

    if (!*(*(v103 + v107) + 16))
    {
      break;
    }

    v109 = sub_267EF89F8();
    v20 = sub_267EF95D8();

    if (!os_log_type_enabled(v109, v20))
    {
      goto LABEL_100;
    }

    a1 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v182 = v28;
    *a1 = 136315394;
    if (v179)
    {
      v110 = 0x6E65697069636572;
    }

    else
    {
      v110 = 0x7265646E6573;
    }

    if (v179)
    {
      a2 = 0xE900000000000074;
    }

    else
    {
      a2 = 0xE600000000000000;
    }

    sub_267BA33E8(v110, a2, &v182);

    OUTLINED_FUNCTION_11_21();
    v31 = 0;
    v111 = MEMORY[0x277D84F90];
LABEL_37:
    v23 = &selRef_personTypes;
    while (1)
    {
      if (v36 == v31)
      {

        v140 = MEMORY[0x26D608FD0](v111, MEMORY[0x277D837D0]);
        v142 = v141;

        v143 = sub_267BA33E8(v140, v142, &v182);

        *(a1 + 14) = v143;
        v144 = "ReadContactDisambiguation# Found %s persons %s in SRR";
        goto LABEL_99;
      }

      if (v31 >= *(a2 + 16))
      {
        break;
      }

      v112 = *(a2 + 8 * v31 + 32);
      if (v112 >> 62)
      {
        if (v112 < 0)
        {
          v114 = *(a2 + 8 * v31 + 32);
        }

        v113 = sub_267EF9A68();
      }

      else
      {
        v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v31;
      if (v113)
      {
        LODWORD(v181) = v20;
        *&v180 = v28;
        if ((v112 & 0xC000000000000001) != 0)
        {

          v116 = MEMORY[0x26D609870](0, v112);
        }

        else
        {
          if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_105;
          }

          v115 = *(v112 + 32);

          v116 = v115;
        }

        v117 = v116;
        v118 = [v116 displayName];

        v20 = sub_267EF9028();
        v28 = v119;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_20_9();
          v111 = v120;
        }

        if (*(v111 + 16) >= *(v111 + 24) >> 1)
        {
          OUTLINED_FUNCTION_18_13();
          v111 = v121;
        }

        OUTLINED_FUNCTION_12_14();
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_103:
    OUTLINED_FUNCTION_0();
  }

  v177 = v107;
  v122 = sub_267EF89F8();
  v123 = sub_267EF95D8();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = OUTLINED_FUNCTION_32();
    *v124 = 0;
    _os_log_impl(&dword_267B93000, v122, v123, "#ReadContactDisambiguation No RRaaS results, falling back to local resolution", v124, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v125 = sub_267EF4928();
  v126 = v170;
  sub_267EF4938();
  v127 = sub_267EF44B8();
  v129 = v128;
  (v178)(v126, v101);
  sub_267CCFE44(v184, v125, v127, v129);
  v131 = v130;

  v132 = sub_267BAF0DC(v131);
  if (!v132)
  {

    v135 = MEMORY[0x277D84F90];
LABEL_70:
    v145 = v177;
    v146 = *&v177[v103];
    *&v177[v103] = v135;

    v147 = v179;
    if (*(*&v145[v103] + 16))
    {

      v109 = sub_267EF89F8();
      LODWORD(v20) = sub_267EF95D8();

      if (os_log_type_enabled(v109, v20))
      {
        a1 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *&v182 = v148;
        *a1 = 136315394;
        if (v147)
        {
          v149 = 0x6E65697069636572;
        }

        else
        {
          v149 = 0x737265646E6573;
        }

        if (v147)
        {
          v150 = 0xEA00000000007374;
        }

        else
        {
          v150 = 0xE700000000000000;
        }

        sub_267BA33E8(v149, v150, &v182);

        OUTLINED_FUNCTION_11_21();
        v151 = 0;
        v152 = MEMORY[0x277D84F90];
        while (v147 != v151)
        {
          if (v151 >= *(v150 + 16))
          {
            __break(1u);
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v153 = *(v150 + 8 * v151 + 32);
          if (v153 >> 62)
          {
            if (v153 < 0)
            {
              v155 = *(v150 + 8 * v151 + 32);
            }

            v154 = sub_267EF9A68();
          }

          else
          {
            v154 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v151;
          if (v154)
          {
            LODWORD(v181) = v20;
            *&v180 = v148;
            if ((v153 & 0xC000000000000001) != 0)
            {

              v157 = MEMORY[0x26D609870](0, v153);
            }

            else
            {
              if (!*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_107;
              }

              v156 = *(v153 + 32);

              v157 = v156;
            }

            v20 = v157;
            v158 = [v157 displayName];

            LODWORD(v20) = sub_267EF9028();
            v148 = v159;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_20_9();
              v152 = v160;
            }

            if (*(v152 + 16) >= *(v152 + 24) >> 1)
            {
              OUTLINED_FUNCTION_18_13();
              v152 = v161;
            }

            OUTLINED_FUNCTION_12_14();
          }
        }

        v162 = MEMORY[0x26D608FD0](v152, MEMORY[0x277D837D0]);
        v164 = v163;

        v165 = sub_267BA33E8(v162, v164, &v182);

        *(a1 + 14) = v165;
        v144 = "#ReadContactDisambiguation Found %s in SmsIntent: %s";
LABEL_99:
        _os_log_impl(&dword_267B93000, v109, v20, v144, a1, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

LABEL_100:

      sub_267EF3E58();
    }

    else
    {
      sub_267EF3E68();
    }

LABEL_101:
    __swift_destroy_boxed_opaque_existential_0(v184);
    return;
  }

  v133 = v132;
  *&v182 = MEMORY[0x277D84F90];
  sub_267C724EC();
  if ((v133 & 0x8000000000000000) == 0)
  {
    v134 = 0;
    v135 = v182;
    v180 = xmmword_267EFCA40;
    do
    {
      if ((v131 & 0xC000000000000001) != 0)
      {
        v136 = MEMORY[0x26D609870](v134, v131);
      }

      else
      {
        v136 = *(v131 + 8 * v134 + 32);
      }

      v137 = v136;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v138 = swift_allocObject();
      *(v138 + 16) = v180;
      *(v138 + 32) = v137;
      *&v182 = v135;
      v139 = *(v135 + 16);
      if (v139 >= *(v135 + 24) >> 1)
      {
        sub_267C724EC();
        v135 = v182;
      }

      ++v134;
      *(v135 + 16) = v139 + 1;
      *(v135 + 8 * v139 + 32) = v138;
    }

    while (v133 != v134);

    v103 = v175;
    goto LABEL_70;
  }

LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
}