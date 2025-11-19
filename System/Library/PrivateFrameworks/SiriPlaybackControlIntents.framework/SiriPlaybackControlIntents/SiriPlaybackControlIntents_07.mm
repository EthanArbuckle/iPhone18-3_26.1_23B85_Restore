uint64_t sub_268952F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for VolumeLevelNeedsValueStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

unint64_t sub_26895301C()
{
  result = qword_2802A62A0;
  if (!qword_2802A62A0)
  {
    type metadata accessor for VolumeLevelNeedsValueStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A62A0);
  }

  return result;
}

uint64_t sub_268953070(uint64_t a1)
{
  v51 = sub_268B37A54();
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v51);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5770, &unk_268B3BDC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v22 = sub_268B357A4();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_268B3BBA0;
  *(v23 + 32) = a1;
  v24 = sub_268B35BD4();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v24);

  v25 = MEMORY[0x26D623520](v23, v11);

  sub_2688C058C(v11, &unk_2802A62D0, &qword_268B3EDD0);
  v50 = v25;
  sub_268B36604();
  v49 = v21;
  sub_2688C058C(v21, &qword_2802A5770, &unk_268B3BDC0);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v22);
  sub_268954254(v19, v21, &qword_2802A5770, &unk_268B3BDC0);
  v26 = v21;
  sub_2688C053C(v21, v16, &qword_2802A5770, &unk_268B3BDC0);
  result = __swift_getEnumTagSinglePayload(v16, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_26895417C();
    v28 = MEMORY[0x26D6259D0](v16);
    (*(*(v22 - 8) + 8))(v16, v22);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = v51;
    v30 = __swift_project_value_buffer(v51, qword_2802CDA10);
    (*(v2 + 16))(v6, v30, v29);
    v31 = v28;
    v32 = sub_268B37A34();
    v33 = sub_268B37F04();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52 = v35;
      *v34 = 136315138;
      v36 = v31;
      v37 = [v36 description];
      v47 = v6;
      v38 = v37;
      v39 = sub_268B37BF4();
      v40 = v2;
      v42 = v41;

      v43 = sub_26892CDB8(v39, v42, &v52);

      *(v34 + 4) = v43;
      _os_log_impl(&dword_2688BB000, v32, v33, "uso NeedsValue: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x26D6266E0](v35, -1, -1);
      v44 = v34;
      v26 = v49;
      MEMORY[0x26D6266E0](v44, -1, -1);

      (*(v40 + 8))(v47, v51);
    }

    else
    {

      (*(v2 + 8))(v6, v51);
    }

    v45 = [objc_allocWithZone(MEMORY[0x277D5F5A8]) initWithReference_];

    sub_2688C058C(v26, &qword_2802A5770, &unk_268B3BDC0);
    return v45;
  }

  return result;
}

uint64_t sub_268953754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_268B37A54();
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v78 - v7;
  v8 = sub_268B35664();
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = *(v94 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v78 - v12;
  v13 = sub_268B355E4();
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v85 = &v78 - v17;
  v18 = sub_268B35504();
  v86 = *(v18 - 8);
  v19 = *(v86 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v84 = &v78 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v78 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5760, &unk_268B3BDB0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v78 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v78 - v35;
  __swift_storeEnumTagSinglePayload(&v78 - v35, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_268B3BBA0;
  *(v37 + 32) = a1;
  v38 = sub_268B35BD4();
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v38);

  v39 = MEMORY[0x26D623520](v37, v26);

  sub_2688C058C(v26, &unk_2802A62D0, &qword_268B3EDD0);
  sub_268B35BE4();
  v40 = sub_268B35C44();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_268B35C34();
  v83 = v39;
  sub_268B356B4();
  sub_2688C058C(v36, &unk_2802A5760, &unk_268B3BDB0);

  __swift_storeEnumTagSinglePayload(v34, 0, 1, v18);
  sub_268954254(v34, v36, &unk_2802A5760, &unk_268B3BDB0);
  sub_2688C053C(v36, v31, &unk_2802A5760, &unk_268B3BDB0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v18);
  v44 = v94;
  v45 = v95;
  v46 = v92;
  v47 = v93;
  if (EnumTagSinglePayload == 1)
  {
    sub_2688C058C(v31, &unk_2802A5760, &unk_268B3BDB0);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v48 = v90;
    v49 = __swift_project_value_buffer(v90, qword_2802CDA10);
    v50 = v89;
    v51 = v82;
    (*(v89 + 16))(v82, v49, v48);

    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v50;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v96[0] = v56;
      *v55 = 136315138;
      v57 = sub_268B36614();
      v59 = sub_26892CDB8(v57, v58, v96);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_2688BB000, v52, v53, "Unable to map graph into protoGraph: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x26D6266E0](v56, -1, -1);
      MEMORY[0x26D6266E0](v55, -1, -1);

      (*(v54 + 8))(v82, v48);
      v45 = v95;
    }

    else
    {

      (*(v50 + 8))(v51, v48);
    }

    sub_2688C058C(v36, &unk_2802A5760, &unk_268B3BDB0);
    return __swift_storeEnumTagSinglePayload(v91, 1, 1, v45);
  }

  else
  {
    v82 = v36;
    v60 = v86;
    v61 = v84;
    (*(v86 + 32))(v84, v31, v18);
    v62 = v85;
    sub_268B355D4();
    sub_268B35654();
    (*(v60 + 16))(v80, v61, v18);
    sub_268B355C4();
    (*(v87 + 16))(v81, v62, v88);
    sub_268B35644();
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v63 = v90;
    v64 = __swift_project_value_buffer(v90, qword_2802CDA10);
    v65 = v89;
    (*(v89 + 16))(v46, v64, v63);
    v66 = sub_268B37A34();
    v67 = sub_268B37F04();
    v68 = os_log_type_enabled(v66, v67);
    v69 = v82;
    if (v68)
    {
      v70 = swift_slowAlloc();
      v71 = v65;
      v72 = swift_slowAlloc();
      v96[0] = v72;
      *v70 = 136315138;
      swift_beginAccess();
      (*(v44 + 16))(v79, v47, v95);
      v73 = sub_268B37C24();
      v75 = sub_26892CDB8(v73, v74, v96);
      v44 = v94;

      *(v70 + 4) = v75;
      v47 = v93;
      _os_log_impl(&dword_2688BB000, v66, v67, "Nlu System Prompted Act: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x26D6266E0](v72, -1, -1);
      MEMORY[0x26D6266E0](v70, -1, -1);

      (*(v71 + 8))(v92, v63);
      v45 = v95;
    }

    else
    {

      (*(v65 + 8))(v46, v63);
    }

    (*(v87 + 8))(v85, v88);
    (*(v86 + 8))(v84, v18);
    sub_2688C058C(v69, &unk_2802A5760, &unk_268B3BDB0);
    swift_beginAccess();
    v77 = v91;
    (*(v44 + 16))(v91, v47, v45);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v45);
    return (*(v44 + 8))(v47, v45);
  }
}

unint64_t sub_26895417C()
{
  result = qword_2802A62F0;
  if (!qword_2802A62F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A62F0);
  }

  return result;
}

uint64_t sub_2689541C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268954254(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_25(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_17_5()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_2@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  **(v3 - 136) = a1;
  v5 = *(v3 - 160);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return type metadata accessor for SettingsIntent();
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return sub_268B350F4();
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return swift_allocError();
}

id SkipContentIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SkipContentIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B36C54();
  v35 = sub_268B36C44();
  sub_268B37204();
  v34 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v42);
  sub_268AD33CC(v41);
  sub_268B36754();
  v33 = sub_268B36734();
  sub_268B36C44();
  OUTLINED_FUNCTION_86_1();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v42, v42[3]);
  OUTLINED_FUNCTION_3_8();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v39 = v1;
  v40 = MEMORY[0x277D5F680];
  *&v38 = v1;
  v13 = type metadata accessor for AnalyticsServiceLogger();
  v37[4] = &off_28795F5E0;
  v37[3] = v13;
  v37[0] = v12;
  v36[4] = &off_287960608;
  v36[3] = v2;
  v36[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v37, v13);
  OUTLINED_FUNCTION_3_8();
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v2);
  OUTLINED_FUNCTION_3_8();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = (v26 - v25);
  (*(v28 + 16))(v26 - v25);
  v29 = *v20;
  v30 = *v27;
  v14[5] = v13;
  v14[6] = &off_28795F5E0;
  v14[2] = v29;
  v14[21] = v2;
  v14[22] = &off_287960608;
  v14[18] = v30;
  sub_2688E6514(v41, (v14 + 7));
  v14[12] = v33;
  sub_2688E6514(&v38, (v14 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);

  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  sub_268B34C64();
  sub_268958494(v35, v34, &v43, v14, v42);
  swift_getObjectType();
  v31 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
  v32 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_26895480C()
{
  OUTLINED_FUNCTION_26();
  v26 = v1;
  v27 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  v18 = *(v9 + 16);
  v19 = OUTLINED_FUNCTION_192();
  v20(v19);
  v21 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v22 = v21 + v11;
  v23 = (v21 + v11) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "handleSkipItem";
  *(v24 + 24) = 14;
  *(v24 + 32) = 2;
  (*(v9 + 32))(v24 + v21, v13, v6);
  *(v24 + v22) = 1;
  v25 = v24 + v23;
  *(v25 + 8) = sub_268958724;
  *(v25 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_268954A64(v26, v27, sub_268958A64, v24);

  (*(v9 + 8))(v15, v6);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268954A64(char *a1, uint64_t *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v79 = a2;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v74 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v74 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268958D98;
  *(v19 + 24) = v18;
  swift_retain_n();
  swift_retain_n();
  v78 = a1;
  v20 = sub_268B18100();
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = v20;
  if (!sub_2688EFD0C(v20))
  {

LABEL_13:
    v37 = a3;

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v17, v38, v7);
    v39 = sub_268B37A34();
    v40 = sub_268B37EE4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2688BB000, v39, v40, "No devices found in SkipContentIntent, returning failure", v41, 2u);
      MEMORY[0x26D6266E0](v41, -1, -1);
    }

    (*(v8 + 8))(v17, v7);
    v42 = sub_268B36EA4();
    v43 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
    v44 = v42;
    v45 = SkipContentIntentResponse.init(code:userActivity:)(5, v42);
    v81[0] = v45;
    v37(v81);
    goto LABEL_18;
  }

  v22 = v79;
  v76 = *(v79 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_aceServiceHelper);
  v77 = a4;
  sub_268921344();
  if (!*(v23 + 16))
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v15, v47, v7);
    v48 = v78;
    v49 = sub_268B37A34();
    v50 = sub_268B37EE4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v78 = v51;
      v79 = swift_slowAlloc();
      v81[0] = v79;
      *v51 = 136315138;
      v80 = sub_268B18100();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
      LODWORD(v76) = v50;
      v52 = sub_268B38094();
      v53 = a3;
      v55 = v54;

      v56 = sub_26892CDB8(v52, v55, v81);
      a3 = v53;

      v57 = v78;
      *(v78 + 4) = v56;
      v58 = v57;
      _os_log_impl(&dword_2688BB000, v49, v76, "Unable to get route ids for the intent devices: %s", v57, 0xCu);
      v59 = v79;
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      MEMORY[0x26D6266E0](v59, -1, -1);
      MEMORY[0x26D6266E0](v58, -1, -1);
    }

    (*(v8 + 8))(v15, v7);
    v60 = sub_268B36EA4();
    v61 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
    v44 = v60;
    v45 = SkipContentIntentResponse.init(code:userActivity:)(5, v60);
    v81[0] = v45;
    a3(v81);
LABEL_18:

LABEL_19:
  }

  v75 = v23;
  v24 = v22;
  v25 = *(v22 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState), *(v22 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState + 24));
  if (sub_2688C3308())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v12, v26, v7);
    v27 = sub_268B37A34();
    v28 = sub_268B37F04();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "Skip content submitting suppress delay feedback", v29, 2u);
      MEMORY[0x26D6266E0](v29, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    sub_268B38004();
    if (qword_2802A5028 != -1)
    {
      swift_once();
    }

    v30 = v79;
    sub_268B37A04();
    v31 = [objc_allocWithZone(MEMORY[0x277D47B38]) init];
    v32 = swift_allocObject();
    v32[2] = v30;
    v32[3] = v21;
    v33 = v78;
    v32[4] = v75;
    v32[5] = v33;
    v32[6] = sub_2688E19F8;
    v32[7] = v19;

    v34 = v76[11];
    __swift_project_boxed_opaque_existential_1(v76 + 7, v76[10]);
    sub_268958E08();
    v35 = v33;
    v36 = v30;
    sub_268B35134();

    goto LABEL_19;
  }

  v62 = swift_allocObject();
  v63 = v77;
  *(v62 + 16) = a3;
  *(v62 + 24) = v63;
  v64 = *__swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_analyticsService), *(v22 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_analyticsService + 24));
  swift_retain_n();
  swift_retain_n();

  sub_268920C54();
  sub_268949478(0x746E6F4370696B73, 0xEB00000000746E65, v65, v21);

  sub_26895761C();
  if (v66)
  {
    v67 = v78;

    v68 = v24;
    v69 = v75;

    sub_268A30B60(v21, 0, v76, v67, v68, v69, 1, sub_268958EDC, v62, v73, v74, v75, v76, v77, v78, v79, v80, v81[0], v81[1], v81[2], v81[3]);
  }

  else
  {

    v70 = v78;

    v71 = v24;
    v72 = v75;

    sub_268957700(v70, v71, v72, 0, a3, v63);
  }
}

uint64_t sub_268955448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v54 = a6;
  v55 = a7;
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v53 = a2;
  v56 = sub_268B37A54();
  v49 = *(v56 - 8);
  v8 = *(v49 + 64);
  v9 = MEMORY[0x28223BE20](v56);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6368, qword_268B3EE78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  v17 = sub_268B351A4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  sub_2688F1FA4(a1, v16, &qword_2802A6368, qword_268B3EE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v18 + 32))(v24, v16, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = v56;
    v26 = __swift_project_value_buffer(v56, qword_2802CDA10);
    v27 = v49;
    (*(v49 + 16))(v48, v26, v25);
    v28 = *(v18 + 16);
    v28(v22, v24, v17);
    v29 = sub_268B37A34();
    v30 = sub_268B37EE4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v46 = v31;
      v47 = swift_slowAlloc();
      *v31 = 138412290;
      sub_268958E4C();
      swift_allocError();
      v28(v32, v22, v17);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = *(v18 + 8);
      v34(v22, v17);
      v35 = v46;
      v36 = v47;
      *(v46 + 1) = v33;
      *v36 = v33;
      _os_log_impl(&dword_2688BB000, v29, v30, "ACE service submission error: %@", v35, 0xCu);
      sub_2688C058C(v36, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v36, -1, -1);
      MEMORY[0x26D6266E0](v35, -1, -1);

      (*(v27 + 8))(v48, v56);
      v34(v24, v17);
    }

    else
    {

      v43 = *(v18 + 8);
      v43(v22, v17);
      (*(v27 + 8))(v48, v25);
      v43(v24, v17);
    }
  }

  else
  {
    sub_2688C058C(v16, &qword_2802A6368, qword_268B3EE78);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v37 = v56;
    v38 = __swift_project_value_buffer(v56, qword_2802CDA10);
    v39 = v49;
    (*(v49 + 16))(v12, v38, v37);
    v40 = sub_268B37A34();
    v41 = sub_268B37F04();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2688BB000, v40, v41, "ACE service submission succeeded", v42, 2u);
      MEMORY[0x26D6266E0](v42, -1, -1);
    }

    (*(v39 + 8))(v12, v37);
  }

  sub_268B37FF4();
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  sub_268B37A04();
  return sub_2689574B8(v50, v51, v52, 0, v54, v55);
}

void sub_268955AB8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_268B36C04();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v41 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v36 = v11[2];
  v37 = v17;
  v36(v16);
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = a1;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "Resolving devices for skip content", v21, 2u);
    v22 = v21;
    a1 = v20;
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = v11[1];
  v23(v16, v10);
  if ((sub_268921060() & 1) != 0 && (v24 = a1, v25 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState + 32), __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState + 24)), a1 = v24, (sub_2688C3240() & 1) == 0))
  {
    v30 = v38;
    (v36)(v38, v37, v10);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "Whole House Audio requests are unsupported on this platform", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    v23(v30, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SkipContentDevicesResolutionResult();
    *(v34 + 32) = sub_268B17B04(2);
    v35 = sub_268B37CE4();
    v29 = v41;
    (v41)[2](v41, v35);
  }

  else
  {
    v26 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceSelector);
    v28 = v39;
    v27 = v40;
    (*(v39 + 104))(v9, *MEMORY[0x277D5F650], v40);
    [a1 mediaType];
    v29 = v41;
    _Block_copy(v41);
    sub_268904AC8();
    (*(v28 + 8))(v9, v27);
  }

  _Block_release(v29);
  _Block_release(v29);
}

void sub_268955F10()
{
  OUTLINED_FUNCTION_26();
  v43 = v0;
  v44 = v1;
  v45 = v3;
  v46 = v2;
  v42 = sub_268B36C04();
  v4 = OUTLINED_FUNCTION_1(v42);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v41 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v40 = *(v15 + 16);
  v40(v22, v23, v12);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_14();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "Resolving devices for skip content", v26, 2u);
    OUTLINED_FUNCTION_12();
  }

  v27 = *(v15 + 8);
  v28 = OUTLINED_FUNCTION_138();
  v27(v28);
  v29 = sub_268921060();
  v30 = v43;
  if ((v29 & 1) != 0 && (v31 = *(v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState + 32), __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState), *(v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v34 = v41;
    v40(v41, v23, v12);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_14();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "Whole House Audio requests are unsupported on this platform", v37, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    (v27)(v34, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_19_4(v38, xmmword_268B3BBA0);
    v38[2].n128_u64[0] = sub_268B17B04(2);
    v44(v38);
  }

  else
  {
    v32 = *(v30 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceSelector);
    v33 = v42;
    (*(v6 + 104))(v11, *MEMORY[0x277D5F650], v42);
    [v46 mediaType];

    sub_268905388();
    (*(v6 + 8))(v11, v33);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689562B4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_141();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v72 - v21;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        v20 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_8_8(v20, qword_2802CDA10);
      v23(v0);

      v24 = sub_268B37A34();
      v25 = sub_268B37F04();
      sub_268958D4C(v7, 1u);
      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_172_0();
        v26 = OUTLINED_FUNCTION_20_6();
        v79 = v26;
        *v22 = 136315138;
        v27 = type metadata accessor for Device();
        v28 = MEMORY[0x26D6256F0](v7, v27);
        OUTLINED_FUNCTION_30_3(v28, v29);
        v77 = v3;
        OUTLINED_FUNCTION_16_7();
        *(v22 + 4) = v11;
        _os_log_impl(&dword_2688BB000, v24, v25, "SkipContentIntentHandler#resolveDevices Disambiguating between devices: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12_8();

        v30 = *(v3 + 8);
        v31 = OUTLINED_FUNCTION_138();
        v32(v31);
        v3 = v77;
      }

      else
      {

        v58 = *(v11 + 8);
        v59 = OUTLINED_FUNCTION_138();
        v60(v59);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v56 = swift_allocObject();
      OUTLINED_FUNCTION_19_4(v56, xmmword_268B3BBA0);
      v57 = sub_268B2CCFC(v7);
    }

    else
    {
      v77 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v43 = __swift_project_value_buffer(v8, qword_2802CDA10);
      v75 = *(v11 + 16);
      v76 = v43;
      v75(v22);
      v44 = sub_268B37A34();
      v45 = sub_268B37EE4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_172_0();
        v74 = v11;
        v47 = v46;
        v73 = swift_slowAlloc();
        v79 = v73;
        *v47 = 136315138;
        v78 = v7 & 1;
        sub_26890C84C();
        v48 = sub_268B384A4();
        v50 = sub_26892CDB8(v48, v49, &v79);

        *(v47 + 4) = v50;
        _os_log_impl(&dword_2688BB000, v44, v45, "SkipContentIntentHandler#resolveDevices Error resolving devices: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        OUTLINED_FUNCTION_12();
        v11 = v74;
        OUTLINED_FUNCTION_12();
      }

      v51 = *(v11 + 8);
      v51(v22, v8);
      v3 = v77;
      if ((v7 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v70 = swift_allocObject();
        OUTLINED_FUNCTION_19_4(v70, xmmword_268B3BBA0);
        v70[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v75)(v16, v76, v8);
      v52 = sub_268B37A34();
      v53 = sub_268B37EE4();
      if (os_log_type_enabled(v52, v53))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v54, v55, "SkipContentIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v51(v16, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v56 = swift_allocObject();
      OUTLINED_FUNCTION_19_4(v56, xmmword_268B3BBA0);
      v57 = sub_268B17B04(1);
    }

    v56[2].n128_u64[0] = v57;
LABEL_32:
    v71 = sub_268B37CE4();
    (*(v3 + 16))(v3, v71);

    _Block_release(v3);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    v20 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_8_8(v20, qword_2802CDA10);
  v33(v1);

  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  sub_268958D4C(v7, 0);
  if (os_log_type_enabled(v34, v35))
  {
    OUTLINED_FUNCTION_172_0();
    v36 = OUTLINED_FUNCTION_20_6();
    v79 = v36;
    *v22 = 136315138;
    v37 = type metadata accessor for Device();
    v38 = MEMORY[0x26D6256F0](v7, v37);
    OUTLINED_FUNCTION_30_3(v38, v39);
    v77 = v3;
    OUTLINED_FUNCTION_16_7();
    *(v22 + 4) = v11;
    _os_log_impl(&dword_2688BB000, v34, v35, "SkipContentIntentHandler#resolveDevices Success resolving devices: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12_8();

    v40 = *(v3 + 8);
    v41 = OUTLINED_FUNCTION_192();
    v42(v41);
    v3 = v77;
  }

  else
  {

    v61 = *(v11 + 8);
    v62 = OUTLINED_FUNCTION_192();
    v63(v62);
  }

  v64 = sub_2688EFD0C(v7);
  if (!v64)
  {
LABEL_30:
    type metadata accessor for SkipContentDevicesResolutionResult();
    goto LABEL_32;
  }

  v65 = v64;
  v79 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v65 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SkipContentDevicesResolutionResult();
    v66 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x26D625BD0](v66, v7);
      }

      else
      {
        v67 = *(v7 + 8 * v66 + 32);
      }

      v68 = v67;
      ++v66;
      sub_268B2CC98(v67);

      sub_268B38214();
      v69 = v79[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v65 != v66);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_268956984()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v63 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      __swift_project_value_buffer(v9, qword_2802CDA10);
      OUTLINED_FUNCTION_1_13();
      v22(v0);

      v23 = sub_268B37A34();
      v24 = sub_268B37F04();
      sub_268958D4C(v8, 1u);
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_172_0();
        v25 = OUTLINED_FUNCTION_20_6();
        v65 = v25;
        *v18 = 136315138;
        v26 = type metadata accessor for Device();
        v27 = MEMORY[0x26D6256F0](v8, v26);
        OUTLINED_FUNCTION_30_3(v27, v28);
        v62 = v9;
        OUTLINED_FUNCTION_16_7();
        *(v18 + 4) = v3;
        _os_log_impl(&dword_2688BB000, v23, v24, "SkipContentIntentHandler#resolveDevices Disambiguating between devices: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12_8();

        (*(v12 + 8))(v0, v62);
      }

      else
      {

        (*(v12 + 8))(v0, v9);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_19_4(v50, xmmword_268B3BBA0);
      v51 = sub_268B2CCFC(v8);
    }

    else
    {
      v62 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v37 = __swift_project_value_buffer(v9, qword_2802CDA10);
      v60 = *(v12 + 16);
      v61 = v37;
      v60(v21);
      v38 = sub_268B37A34();
      v39 = sub_268B37EE4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_172_0();
        v59 = v12;
        v41 = v40;
        v58 = swift_slowAlloc();
        v65 = v58;
        *v41 = 136315138;
        v64 = v8 & 1;
        sub_26890C84C();
        v42 = sub_268B384A4();
        v44 = sub_26892CDB8(v42, v43, &v65);

        *(v41 + 4) = v44;
        _os_log_impl(&dword_2688BB000, v38, v39, "SkipContentIntentHandler#resolveDevices Error resolving devices: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        OUTLINED_FUNCTION_12();
        v12 = v59;
        OUTLINED_FUNCTION_12();
      }

      v45 = *(v12 + 8);
      v45(v21, v9);
      if (v8)
      {
        (v60)(v1, v61, v9);
        v46 = sub_268B37A34();
        v47 = sub_268B37EE4();
        if (os_log_type_enabled(v46, v47))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v48, v49, "SkipContentIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v45(v1, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v50 = swift_allocObject();
        OUTLINED_FUNCTION_19_4(v50, xmmword_268B3BBA0);
        v51 = sub_268B17B04(1);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v50 = swift_allocObject();
        OUTLINED_FUNCTION_19_4(v50, xmmword_268B3BBA0);
        v51 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v50[2].n128_u64[0] = v51;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v9, qword_2802CDA10);
  OUTLINED_FUNCTION_1_13();
  v29(v18);

  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  sub_268958D4C(v8, 0);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_172_0();
    v33 = swift_slowAlloc();
    v65 = v33;
    *v32 = 136315138;
    v34 = type metadata accessor for Device();
    v35 = MEMORY[0x26D6256F0](v8, v34);
    OUTLINED_FUNCTION_30_3(v35, v36);
    v62 = v9;
    OUTLINED_FUNCTION_16_7();
    *(v32 + 4) = v3;
    _os_log_impl(&dword_2688BB000, v30, v31, "SkipContentIntentHandler#resolveDevices Success resolving devices: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v12 + 8))(v18, v62);
  }

  else
  {

    (*(v12 + 8))(v18, v9);
  }

  v52 = sub_2688EFD0C(v8);
  v50 = MEMORY[0x277D84F90];
  if (!v52)
  {
    goto LABEL_32;
  }

  v53 = v52;
  v65 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v53 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SkipContentDevicesResolutionResult();
    v54 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x26D625BD0](v54, v8);
      }

      else
      {
        v55 = *(v8 + 8 * v54 + 32);
      }

      v56 = v55;
      ++v54;
      sub_268B2CC98(v55);

      sub_268B38214();
      v57 = v65[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v53 != v54);
    v50 = v65;
LABEL_32:
    v63(v50);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_268957064(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_86_1();
  type metadata accessor for SkipContentDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_2689570CC(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
  v5 = SkipContentIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268957138(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
  v4 = SkipContentIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689571C4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268957250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_268B36F24();
  v26 = OUTLINED_FUNCTION_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &a9 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &a9 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &a9 - v41;
  sub_2688F1FA4(v24, &a9 - v41, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *(v28 + 32);
    v43(v36, v42, v25);
    sub_268B36EC4();
    v44 = *(v28 + 8);
    v44(v36, v25);
    v43(v20, v34, v25);
    v45 = (*(v28 + 88))(v20, v25);
    if (v45 != *MEMORY[0x277D5F6A0] && v45 != *MEMORY[0x277D5F6B8] && v45 != *MEMORY[0x277D5F6B0] && v45 != *MEMORY[0x277D5F6D0] && v45 != *MEMORY[0x277D5F698])
    {
      v44(v20, v25);
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689574B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *__swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_analyticsService], *&v6[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_analyticsService + 24]);
  sub_268920C54();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_23_6();
  sub_268949478(v16, v17, v15, a1);

  sub_26895761C();
  LOBYTE(v15) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = v7;
  *(v19 + 32) = a2;
  *(v19 + 40) = v15 & 1;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  if (v15)
  {
    v20 = *&v7[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_aceServiceHelper];

    v21 = v7;
    v22 = a3;

    sub_268A31290();
  }

  else
  {

    v23 = v7;
    v24 = a3;
    sub_268957E04();
  }
}

void sub_26895761C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_2688EFD0C(v0);
  v3 = 0;
  while (1)
  {
    v4 = v3;
    if (v2 == v3)
    {
      goto LABEL_12;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = [v5 context];
    if (!v7)
    {

LABEL_12:
      OUTLINED_FUNCTION_23();
      return;
    }

    v8 = v7;
    v9 = [v7 nowPlayingState];

    v3 = v4 + 1;
    if (v9 != 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_268957700(void *a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(char **), uint64_t a6)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v33 = a5;
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_268958EDC;
  *(v16 + 24) = v15;

  v17 = [a1 direction];
  if (v17 == 2)
  {
    v21 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 24]);
    v22 = swift_allocObject();
    v22[2] = sub_268958EA4;
    v22[3] = v16;
    v22[4] = a2;

    v23 = a2;
    sub_268B36E74();
    goto LABEL_5;
  }

  if (v17 == 1)
  {
    v18 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 24]);
    v19 = swift_allocObject();
    v19[2] = sub_268958EA4;
    v19[3] = v16;
    v19[4] = a2;

    v20 = a2;
    sub_268B36E14();
LABEL_5:

    goto LABEL_11;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v24, v10);
  v25 = sub_268B37A34();
  v26 = sub_268B37EE4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "Skip direction not provided in intent, returning failure", v27, 2u);
    MEMORY[0x26D6266E0](v27, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v28 = sub_268B36EA4();
  v29 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
  v30 = v28;
  v31 = SkipContentIntentResponse.init(code:userActivity:)(5, v28);
  v34 = v31;

  v33(&v34);

LABEL_11:
}

void sub_268957B10()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = v1;

  v18 = [v7 direction];
  if (v18 == 2)
  {
    v23 = *&v5[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 24];
    v24 = *&v5[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 32];
    OUTLINED_FUNCTION_31_2(&v5[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController]);
    OUTLINED_FUNCTION_220();
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_7_6(v25);
    v26 = v5;
    OUTLINED_FUNCTION_4_8();
    sub_268B36E74();
    goto LABEL_5;
  }

  if (v18 == 1)
  {
    v19 = *&v5[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 24];
    v20 = *&v5[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 32];
    OUTLINED_FUNCTION_31_2(&v5[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController]);
    OUTLINED_FUNCTION_220();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_7_6(v21);
    v22 = v5;
    OUTLINED_FUNCTION_4_8();
    sub_268B36E14();
LABEL_5:

    OUTLINED_FUNCTION_23();

    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v8, qword_2802CDA10);
  OUTLINED_FUNCTION_1_13();
  v28(v16);
  v29 = sub_268B37A34();
  v30 = sub_268B37EE4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_14();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v29, v30, "Skip direction not provided in intent, returning failure", v31, 2u);
    OUTLINED_FUNCTION_12_8();
  }

  (*(v11 + 8))(v16, v8);
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_86_1();
  v32 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
  v33 = v29;
  v34 = SkipContentIntentResponse.init(code:userActivity:)(5, v29);
  v35 = v34;
  v3(&v35);

  OUTLINED_FUNCTION_23();
}

void sub_268957E04()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = [v5 direction];
  if (v15 == 2)
  {
    v20 = *&v3[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 24];
    v21 = *&v3[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 32];
    OUTLINED_FUNCTION_31_2(&v3[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController]);
    OUTLINED_FUNCTION_220();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_29_3(v22);
    v23 = v3;
    OUTLINED_FUNCTION_4_8();
    sub_268B36E74();
    goto LABEL_5;
  }

  if (v15 == 1)
  {
    v16 = *&v3[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 24];
    v17 = *&v3[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController + 32];
    OUTLINED_FUNCTION_31_2(&v3[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController]);
    OUTLINED_FUNCTION_220();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_29_3(v18);
    v19 = v3;
    OUTLINED_FUNCTION_4_8();
    sub_268B36E14();
LABEL_5:
    OUTLINED_FUNCTION_23();

    return;
  }

  if (qword_2802A4F30 != -1)
  {
    v15 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_8_8(v15, qword_2802CDA10);
  v25(v14);
  v26 = sub_268B37A34();
  v27 = sub_268B37EE4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "Skip direction not provided in intent, returning failure", v28, 2u);
    OUTLINED_FUNCTION_12_8();
  }

  v29 = *(v9 + 8);
  v30 = OUTLINED_FUNCTION_192();
  v31(v30);
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_86_1();
  v32 = objc_allocWithZone(type metadata accessor for SkipContentIntentResponse());
  v33 = v26;
  v34 = SkipContentIntentResponse.init(code:userActivity:)(5, v26);
  v1();

  OUTLINED_FUNCTION_23();
}

void sub_268958234()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  if (qword_2802A4F30 != -1)
  {
    v10 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_8_8(v10, qword_2802CDA10);
  v14(v13);
  v15 = sub_268B37A34();
  v16 = sub_268B37F04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v3 & 1;
    _os_log_impl(&dword_2688BB000, v15, v16, "SkipContentIntentHandler#sharedIntentDirectionHandler prepareForAudioHandoff completed with: %{BOOL}d", v17, 8u);
    OUTLINED_FUNCTION_12();
  }

  v18 = *(v7 + 8);
  v19 = OUTLINED_FUNCTION_138();
  v21 = v20(v19);
  v1(v21);
  OUTLINED_FUNCTION_23();
}

id SkipContentIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SkipContentIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_268958494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v30[3] = type metadata accessor for AnalyticsServiceImpl();
  v30[4] = &off_2879539D0;
  v30[0] = a4;
  sub_26890C900(a3, v29);
  sub_26890C900(v30, v27);
  sub_26890C900(a5, v26);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = v28;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_26892D53C(a2, v29, *v15, v26, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  sub_26890C900(a3, v29);
  sub_26890C900(v30, v27);
  sub_26890C900(a5, v26);
  v18 = v28;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = sub_268958750(a1, v17, v29, *v22, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v24;
}

uint64_t sub_2689586EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268958724(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

id sub_268958750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v29[3] = sub_268B36C54();
  v29[4] = MEMORY[0x277D5F680];
  v29[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v28[3] = v10;
  v28[4] = &off_2879539D0;
  v28[0] = a4;
  v11 = type metadata accessor for SkipContentIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v27[3] = v10;
  v27[4] = &off_2879539D0;
  v27[0] = v18;
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v19 = qword_2802CDB28;
  sub_268B37A14();
  sub_26890C900(v29, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceSelector] = a2;
  sub_26890C900(v27, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_analyticsService]);
  sub_26890C900(a3, v26);
  sub_26890C900(a5, v25);
  type metadata accessor for AceServiceHelper();
  v20 = swift_allocObject();
  sub_2688E6514(v26, v20 + 16);
  sub_2688E6514(v25, v20 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_aceServiceHelper] = v20;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24SkipContentIntentHandler_deviceState]);
  v24.receiver = v12;
  v24.super_class = v11;
  v21 = objc_msgSendSuper2(&v24, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  return v21;
}

uint64_t sub_2689589D0()
{
  v1 = sub_268B37A24();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_268958A64(void *a1)
{
  v3 = *(sub_268B37A24() - 8);
  v4 = ((*(v3 + 80) + 33) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + v4);
  v8 = v1 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v1 + 32);

  return sub_2689589C8(a1);
}

uint64_t type metadata accessor for SkipContentIntentHandler()
{
  result = qword_2802A6358;
  if (!qword_2802A6358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268958B68()
{
  result = sub_268B37A24();
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

uint64_t sub_268958CCC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_268958D1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_268957E04();
}

uint64_t sub_268958D4C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_268958D60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268958D98(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_268958B0C(a1);
}

uint64_t sub_268958DA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_268958E08()
{
  result = qword_2802A5938;
  if (!qword_2802A5938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A5938);
  }

  return result;
}

unint64_t sub_268958E4C()
{
  result = qword_2802A6370;
  if (!qword_2802A6370)
  {
    sub_268B351A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6370);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_6(void *a1)
{
  a1[2] = sub_268958EA4;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t OUTLINED_FUNCTION_8_8(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_268B36EA4();
}

void OUTLINED_FUNCTION_12_8()
{

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_16_7()
{
}

uint64_t OUTLINED_FUNCTION_19_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SkipContentDevicesResolutionResult();
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_3(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v3;
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 88));
}

void sub_2689590FC()
{
  OUTLINED_FUNCTION_26();
  v84 = v1;
  v85 = v0;
  v3 = v2;
  v94 = v4;
  v95 = v5;
  v7 = v6;
  v8 = sub_268B35494();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v91 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_74();
  v92 = v18;
  OUTLINED_FUNCTION_9();
  v90 = type metadata accessor for MediaIntent();
  v19 = OUTLINED_FUNCTION_4(v90);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v96 = v23 - v22;
  OUTLINED_FUNCTION_9();
  v24 = sub_268B35434();
  v25 = OUTLINED_FUNCTION_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v32 = v31 - v30;
  v33 = sub_268B37A54();
  v34 = OUTLINED_FUNCTION_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_20_0();
  v83 = (v39 - v40);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  v89 = v42;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v43);
  v45 = &v80 - v44;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v46 = __swift_project_value_buffer(v33, qword_2802CDA10);
  v47 = *(v36 + 16);
  v86 = v46;
  v87 = v47;
  v88 = v36 + 16;
  (v47)(v45);
  v48 = *(v27 + 16);
  v93 = v3;
  v48(v32, v3, v24);
  v49 = v33;
  v50 = v36;
  v51 = sub_268B37A34();
  v52 = sub_268B37ED4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_172_0();
    v82 = v7;
    v54 = v53;
    v55 = swift_slowAlloc();
    v81 = v50;
    v56 = v55;
    v97 = v55;
    *v54 = 136315138;
    sub_26895F804(&unk_2802A6480, MEMORY[0x277D5C118]);
    v80 = v49;
    v57 = sub_268B38404();
    v59 = v58;
    (*(v27 + 8))(v32, v24);
    v60 = sub_26892CDB8(v57, v59, &v97);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_2688BB000, v51, v52, "LanguageDisambiguationStrategy#actionForInput called with input: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v61 = v80;
    v62 = *(v81 + 8);
    v62(v45, v80);
  }

  else
  {

    (*(v27 + 8))(v32, v24);
    v62 = *(v50 + 8);
    v62(v45, v49);
    v61 = v49;
  }

  v63 = v94 == 0x65676175676E616CLL && v95 == 0xE800000000000000;
  v64 = v96;
  if (!v63 && (sub_268B38444() & 1) == 0)
  {
    goto LABEL_13;
  }

  v65 = v91;
  sub_268B35414();
  v66 = v92;
  sub_26892E840(v65);
  if (__swift_getEnumTagSinglePayload(v66, 1, v90) == 1)
  {
    sub_2688C058C(v66, &qword_2802A59A0, &unk_268B3F0C0);
LABEL_13:
    sub_268B34ED4();
    goto LABEL_26;
  }

  sub_26893207C(v66, v64);
  switch(*(v64 + 24))
  {
    case 2:

      goto LABEL_19;
    case 3:
      goto LABEL_16;
    default:
      v67 = sub_268B38444();

      if (v67)
      {
LABEL_19:
        v87(v89, v86, v61);
        v70 = sub_268B37A34();
        v71 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_19(v71))
        {
          v72 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v72);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v73, v74, "LanguageDisambiguationStrategy#actionForInput intent indicates we should cancel out of disambiguation");
          OUTLINED_FUNCTION_12();
        }

        v62(v89, v61);
        sub_268B34EB4();
      }

      else
      {
LABEL_16:
        sub_2688F0714();
        sub_26895DDF0();
        v69 = v68;

        if (v69)
        {

          sub_268B34EC4();
        }

        else
        {
          v87(v83, v86, v61);
          v75 = sub_268B37A34();
          v76 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_19(v76))
          {
            v77 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v77);
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v78, v79, "LanguageDisambiguationStrategy#actionForInput failed to get language from intent");
            OUTLINED_FUNCTION_12();
          }

          v62(v83, v61);
          sub_268B34ED4();
        }
      }

      sub_26895F7A8(v64);
      break;
  }

LABEL_26:
  OUTLINED_FUNCTION_23();
}

void sub_26895975C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v15 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v9 + 16))(v14, v15, v6);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_14();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "LanguageDisambiguationStrategy#makeDisambiguationItemContainer called", v18, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_6_10();

  (*(v9 + 8))(v14, v6);
  v19 = v5 == v17 && v3 == 0xE800000000000000;
  if (v19 || (OUTLINED_FUNCTION_27_5() & 1) != 0)
  {
    sub_2688F0714();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6408, &qword_268B3EFD8);
    v20 = sub_268B353F4();
    v1(v20, 0);
  }

  else
  {
    sub_2688C2ECC();
    v21 = OUTLINED_FUNCTION_28_5();
    *v22 = 9;
    v1(v21, 1);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689599A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(NSObject *), uint64_t a22)
{
  OUTLINED_FUNCTION_26();
  v142 = v23;
  v147 = v24;
  v152 = v25;
  v153 = v26;
  v145 = v27;
  v134 = *v22;
  v143 = v22;
  v137 = *(v134 + 80);
  v28 = sub_268B35194();
  OUTLINED_FUNCTION_1(v28);
  v138 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_74();
  v136 = v33;
  v139 = v34;
  sub_268B351F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A6298, qword_268B3F620);
  v35 = sub_268B38564();
  v36 = OUTLINED_FUNCTION_1(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_0();
  v149 = v41 - v42;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v43);
  v135 = &v133 - v44;
  OUTLINED_FUNCTION_9();
  v45 = sub_268B35494();
  v46 = OUTLINED_FUNCTION_22(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_0();
  v51 = v50 - v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v55);
  v57 = &v133 - v56;
  v146 = type metadata accessor for MediaIntent();
  v58 = OUTLINED_FUNCTION_4(v146);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_1_0();
  v148 = v62 - v61;
  OUTLINED_FUNCTION_9();
  v63 = sub_268B37A54();
  v64 = OUTLINED_FUNCTION_1(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_20_0();
  v140 = (v69 - v70);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_18();
  v141 = v72;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_18();
  v133 = v74;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_18();
  v144 = v76;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v155 = a22;
  v156 = a21;
  v78 = __swift_project_value_buffer(v63, qword_2802CDA10);
  v79 = *(v66 + 16);
  v150 = v78;
  v151 = v79;
  v157 = v63;
  (v79)(v22);
  v80 = sub_268B37A34();
  v81 = sub_268B37ED4();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = OUTLINED_FUNCTION_14();
    *v82 = 0;
    _os_log_impl(&dword_2688BB000, v80, v81, "LanguageDisambiguationStrategy#parseDisambiguationResult called", v82, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_6_10();

  v83 = *(v66 + 8);
  v84 = v157;
  v154 = v66 + 8;
  v83(v22, v157);
  v85 = v152 == v81 && v153 == 0xE800000000000000;
  if (!v85 && (OUTLINED_FUNCTION_27_5() & 1) == 0)
  {
    v111 = v140;
    v112 = OUTLINED_FUNCTION_19_5();
    v113(v112);
    v89 = sub_268B37A34();
    v114 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v114))
    {
      v115 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v115);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v116, v117, "LanguageDisambiguationStrategy#parseDisambiguationResult parameter is not language");
      OUTLINED_FUNCTION_12();
    }

    v83(v111, v84);
    sub_2688C2ECC();
    v92 = OUTLINED_FUNCTION_28_5();
    v94 = 10;
    goto LABEL_22;
  }

  sub_268B35414();
  sub_26892E840(v51);
  if (__swift_getEnumTagSinglePayload(v57, 1, v146) == 1)
  {
    sub_2688C058C(v57, &qword_2802A59A0, &unk_268B3F0C0);
    v86 = v141;
    v87 = OUTLINED_FUNCTION_19_5();
    v88(v87);
    v89 = sub_268B37A34();
    v90 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v90))
    {
      v91 = OUTLINED_FUNCTION_14();
      *v91 = 0;
      _os_log_impl(&dword_2688BB000, v89, v86, "LanguageDisambiguationStrategy#parseDisambiguationResult failed to create MediaIntent from parse", v91, 2u);
      OUTLINED_FUNCTION_12();
    }

    v83(v86, v84);
    sub_2688C2ECC();
    v92 = OUTLINED_FUNCTION_28_5();
    v94 = 11;
LABEL_22:
    OUTLINED_FUNCTION_23_7(v92, v93, v94);
    v156(v89);
    (*(v38 + 8))(v89, v35);
    goto LABEL_29;
  }

  v153 = v83;
  sub_26893207C(v57, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
  sub_268B35244();
  OUTLINED_FUNCTION_153_0();
  sub_26895DDF0();
  v96 = v95;

  if (v96)
  {
    v152 = v38;
    sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
    v97 = sub_268B38054();
    [v96 setDisambiguated_];

    v98 = *(v134 + 96);
    v99 = *(v98 + 16);
    v100 = v96;
    v101 = v137;
    v99(v96, v137, v98);
    v151(v144, v150, v84);
    v102 = v100;
    v103 = sub_268B37A34();
    v104 = sub_268B37F04();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = OUTLINED_FUNCTION_172_0();
      v106 = v35;
      v107 = swift_slowAlloc();
      *v105 = 138412290;
      *(v105 + 4) = v102;
      *v107 = v96;
      v108 = v102;
      _os_log_impl(&dword_2688BB000, v103, v104, "LanguageDisambiguationStrategy#parseDisambiguationResult user selected language: %@", v105, 0xCu);
      sub_2688C058C(v107, &qword_2802A6420, &unk_268B3C680);
      v35 = v106;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v153(v144, v157);
    v109 = (*(v98 + 8))(v101, v98);
    v110 = v109;
    if (v109)
    {
      v109 = type metadata accessor for LanguageOption();
    }

    else
    {
      v159 = 0;
      v160 = 0;
    }

    v128 = v152;
    v158 = v110;
    v161 = v109;
    v129 = v145;
    v130 = v136;
    sub_268B35184();
    v131 = v135;
    v132 = v139;
    sub_268B351E4();
    (*(v138 + 8))(v130, v132);
    swift_storeEnumTagMultiPayload();
    v156(v131);

    (*(v128 + 8))(v131, v35);
  }

  else
  {
    v118 = v133;
    v119 = OUTLINED_FUNCTION_19_5();
    v120(v119);
    v121 = sub_268B37A34();
    v122 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v122))
    {
      v123 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v123);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v124, v125, "LanguageDisambiguationStrategy#parseDisambiguationResult unable to select a language from previous items, returning failure");
      OUTLINED_FUNCTION_12();
    }

    v153(v118, v84);
    sub_2688C2ECC();
    v126 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_23_7(v126, v127, 12);
    v156(v121);
    (*(v38 + 8))(v121, v35);
  }

  sub_26895F7A8(v148);
LABEL_29:
  OUTLINED_FUNCTION_23();
}

void sub_26895A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v23 = v21;
  v68 = v24;
  v69 = v25;
  v62 = v26;
  v73 = v27;
  v29 = v28;
  v66 = v30;
  v67 = v31;
  v65 = *v21;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
  v32 = OUTLINED_FUNCTION_1(v71);
  v64 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_74();
  v70 = v36;
  OUTLINED_FUNCTION_9();
  v37 = sub_268B37A54();
  v38 = OUTLINED_FUNCTION_1(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v45 = v44 - v43;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v46 = __swift_project_value_buffer(v37, qword_2802CDA10);
  (*(v40 + 16))(v45, v46, v37);
  v47 = sub_268B37A34();
  v48 = sub_268B37ED4();
  if (os_log_type_enabled(v47, v48))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v47, v48, "LanguageDisambiguationStrategy.makePromptForDisambiguation() called", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_6_10();

  (*(v40 + 8))(v45, v37);
  v49 = v29 == v22 && v73 == 0xE800000000000000;
  if (v49 || (OUTLINED_FUNCTION_27_5() & 1) != 0)
  {
    (*(v64 + 16))(v70, v62, v71);
    v63 = v29;
    v50 = (*(v64 + 80) + 64) & ~*(v64 + 80);
    v51 = (v35 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = *(v65 + 80);
    *(v55 + 24) = *(v65 + 88);
    *(v55 + 40) = *(v65 + 104);
    *(v55 + 48) = v69;
    *(v55 + 56) = a21;
    (*(v64 + 32))(v55 + v50, v70, v71);
    v56 = (v55 + v51);
    *v56 = v63;
    v56[1] = v73;
    *(v55 + v52) = v67;
    *(v55 + v53) = v68;
    *(v55 + v54) = v23;
    *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v66;
    v57 = v23[15];
    v72 = v23[16];
    __swift_project_boxed_opaque_existential_1(v23 + 12, v57);

    v58 = v67;
    v59 = v68;

    sub_2689CE88C(0xD000000000000025, 0x8000000268B582F0, sub_26895F6D0, v55, v57, v72);
  }

  else
  {
    sub_2688C2ECC();
    v60 = OUTLINED_FUNCTION_28_5();
    *v61 = 13;
    v74[0] = v60;
    v75 = 1;
    v69(v74);
    sub_2688C058C(v74, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_26895A718(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10)
{
  v66 = a6;
  v67 = a8;
  v73 = a7;
  v65 = a5;
  v79 = a4;
  v80 = a3;
  v76 = a2;
  v74 = a1;
  v10 = *a9;
  v78 = a9;
  v64 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v70 = &v62 - v17;
  v77 = sub_268B34E24();
  v69 = *(v77 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v77);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_268B35044();
  v71 = *(v20 - 8);
  v72 = v20;
  v21 = *(v71 + 64);
  MEMORY[0x28223BE20](v20);
  v75 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_268B37A54();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v62 - v30;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v32 = *(*(v63 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v63);
  v35 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v62 - v36;
  sub_2688F1FA4(v74, v31, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v76;
    sub_2688C058C(v31, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v23, qword_2802CDA10);
    v40 = v24;
    (*(v24 + 16))(v27, v39, v23);
    v41 = sub_268B37A34();
    v42 = sub_268B37EE4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "LanguageDisambiguationStrategy.makePromptForDisambiguation Unable to generate dialog.", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    (*(v40 + 8))(v27, v23);
    sub_2688C2ECC();
    v44 = swift_allocError();
    *v45 = -79;
    v81[0] = v44;
    v82 = 1;
    v38(v81);
    return sub_2688C058C(v81, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v74 = a10;
    v62 = v37;
    sub_2689186C8(v31, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
    v47 = sub_268B35244();
    sub_2689E54E0(v47);

    v48 = *(v64 + 80);
    v49 = *(v64 + 104);
    v50 = v14;
    v51 = v73;
    v66 = sub_26894CE44(3, 2, v65, v66, v73, 0, v67, v48, v49);
    v53 = v52;
    v54 = __swift_project_boxed_opaque_existential_1(v78 + 17, v78[20]);
    v56 = v68;
    v55 = v69;
    (*(v69 + 104))(v68, *MEMORY[0x277D5BB60], v77);
    v67 = sub_268B350F4();
    v57 = v70;
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v67);
    v58 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v58);
    sub_26894D438(v74, v56, v51, v57, v66, v53, v50, *v54, v48, v49);

    sub_2688C058C(v50, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v57, &unk_2802A57B0, &unk_268B3CE00);
    (*(v55 + 8))(v56, v77);
    v59 = v62;
    sub_2688F1FA4(v62, v35, &unk_2802A56E0, &unk_268B3CDF0);
    v60 = *&v35[*(v63 + 48)];
    v61 = v75;
    sub_26895AE64();

    (*(v71 + 8))(v61, v72);
    sub_2688C058C(v59, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(*(v67 - 1) + 8))(v35);
  }
}

void sub_26895AE64()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v97 = v2;
  v98 = v3;
  v94 = v5;
  v95 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v92 = v14;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B35044();
  v16 = OUTLINED_FUNCTION_1(v15);
  v89 = v17;
  v90 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v86 = v20;
  v88 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9();
  v100 = sub_268B36A54();
  v21 = OUTLINED_FUNCTION_1(v100);
  v96 = v22;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v87 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v26;
  MEMORY[0x28223BE20](v25);
  v99 = &v80 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v29 = OUTLINED_FUNCTION_1(v28);
  v83 = v30;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v35 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v80 - v37;
  v84 = v39;
  MEMORY[0x28223BE20](v36);
  v41 = &v80 - v40;
  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 16))(v41, v9, v42);
  *&v41[*(v28 + 48)] = v7;
  v45 = v1[30];
  v44 = v1[31];
  v93 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 27, v45);
  v46 = v7;
  if (sub_268B36FA4())
  {
    v47 = v43;
    v81 = v42;
    v48 = v93;
    v82 = v35;
    v91 = v41;
    sub_2688F1FA4(v41, v38, &unk_2802A56E0, &unk_268B3CDF0);
    v49 = *&v38[*(v28 + 48)];
    v50 = [v49 dialog];

    sub_2688EA03C(0, &qword_2802A57D0, 0x277D052B0);
    v51 = sub_268B37CF4();

    if (sub_2688EFD0C(v51))
    {
      sub_2688EFD10(0, (v51 & 0xC000000000000001) == 0, v51);
      v52 = v48;
      if ((v51 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x26D625BD0](0, v51);
      }

      else
      {
        v53 = *(v51 + 32);
      }

      v54 = v53;
      v55 = v81;

      v56 = [v54 fullPrint];

      sub_268B37BF4();
      v58 = v57;
    }

    else
    {

      v58 = 0xE000000000000000;
      v52 = v48;
      v55 = v81;
    }

    (*(v47 + 8))(v38, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
    sub_268B35244();
    v60 = v99;
    sub_26895CF5C();

    v61 = __swift_project_boxed_opaque_existential_1(v52 + 17, v52[20]);
    v62 = v100;
    v101[3] = v100;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
    v64 = *(v96 + 16);
    v64(boxed_opaque_existential_1, v60, v62);
    v65 = *v61;
    sub_268948494(v101);
    sub_2688C058C(v101, &byte_2802A6450, &byte_268B3BE10);
    sub_268B36754();
    if (sub_268B36734())
    {
      OUTLINED_FUNCTION_31_3();
      v94 = v66;
    }

    else
    {
      v94 = sub_268B36744();
      OUTLINED_FUNCTION_31_3();
    }

    v67 = v88;
    v68 = v89;
    v69 = v90;
    (*(v89 + 16))(v88);
    sub_2688F1FA4(v61, v58, &unk_2802A56E0, &unk_268B3CDF0);
    v70 = v87;
    v64(v87, v99, v100);
    v71 = (*(v68 + 80) + 24) & ~*(v68 + 80);
    v72 = (v86 + *(v83 + 80) + v71) & ~*(v83 + 80);
    v73 = v96;
    v74 = (v84 + *(v96 + 80) + v72) & ~*(v96 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v94;
    (*(v68 + 32))(v75 + v71, v67, v69);
    sub_2689186C8(v58, v75 + v72);
    v76 = v100;
    (*(v73 + 32))(v75 + v74, v70, v100);
    v77 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v92, 1, 1, v77);
    v78 = swift_allocObject();
    v78[2] = 0;
    v78[3] = 0;
    v78[4] = &unk_268B3F0A8;
    v78[5] = v75;
    v79 = v98;
    v78[6] = v97;
    v78[7] = v79;

    sub_2688DB634();

    (*(v73 + 8))(v99, v76);
    sub_2688C058C(v91, &unk_2802A56E0, &unk_268B3CDF0);
  }

  else
  {
    sub_2688F1FA4(v41, v35, &unk_2802A56E0, &unk_268B3CDF0);
    v59 = *&v35[*(v28 + 48)];
    sub_26895C174();

    sub_2688C058C(v41, &unk_2802A56E0, &unk_268B3CDF0);
    (*(v43 + 8))(v35, v42);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_26895B5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v5[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v8 = *(*(sub_268B34DA4() - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = sub_268B35374();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v12 = sub_268B367A4();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v15 = sub_268B37A54();
  v5[21] = v15;
  v16 = *(v15 - 8);
  v5[22] = v16;
  v17 = *(v16 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26895B7BC, 0, 0);
}

uint64_t sub_26895B7BC()
{
  v60 = v0;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[8];
  v5 = __swift_project_value_buffer(v2, qword_2802CDA10);
  v57 = *(v3 + 16);
  v57(v1, v5, v2);

  v6 = sub_268B37A34();
  v7 = sub_268B37EC4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  if (v8)
  {
    v54 = v0[21];
    v55 = v5;
    v10 = v0[19];
    v11 = v0[20];
    v52 = v0[18];
    v53 = v0[24];
    v12 = v0[8];
    v13 = OUTLINED_FUNCTION_172_0();
    v14 = swift_slowAlloc();
    v59 = v14;
    *v13 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v15 = sub_268B36784();
    v17 = v16;
    v18 = v11;
    v5 = v55;
    (*(v10 + 8))(v18, v52);
    v19 = sub_26892CDB8(v15, v17, &v59);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2688BB000, v6, v7, "LanguageDisambiguationStrategy.provideOutput with responseMode = %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v20 = *(v9 + 8);
    v20(v53, v54);
  }

  else
  {

    v20 = *(v9 + 8);
    v21 = OUTLINED_FUNCTION_103();
    v20(v21, v22);
  }

  v23 = v0[23];
  v24 = v0[21];
  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[10];
  v56 = *(v0 + 4);
  sub_268B34D64();
  v28 = swift_task_alloc();
  v28[1] = vextq_s8(v56, v56, 8uLL);
  v28[2].i64[0] = v27;
  sub_268B352C4();

  v57(v23, v5, v24);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v31);
    _os_log_impl(&dword_2688BB000, v29, v30, "LanguageDisambiguationStrategy.provideOutput creating confirmationViewOutput using RF 2.0", v25, 2u);
    OUTLINED_FUNCTION_12();
  }

  v33 = v0[22];
  v32 = v0[23];
  v34 = v0[21];
  v36 = v0[12];
  v35 = v0[13];
  v37 = v0[10];
  v38 = v0[11];

  v20(v32, v34);
  v39 = sub_268B35094();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v0[25] = sub_268B35084();
  v42 = sub_268B36A54();
  v0[5] = v42;
  v0[6] = sub_26895F804(&qword_2802A6470, MEMORY[0x277D55560]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v42 - 8) + 16))(boxed_opaque_existential_1, v38, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v44 = swift_allocObject();
  v0[26] = v44;
  *(v44 + 16) = xmmword_268B3BBA0;
  sub_2688F1FA4(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);
  *(v44 + 32) = *(v35 + *(v36 + 48));
  v45 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v45);
  (*(v46 + 8))(v35);
  v47 = *(MEMORY[0x277D5BD38] + 4);
  v58 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
  v48 = swift_task_alloc();
  v0[27] = v48;
  *v48 = v0;
  v48[1] = sub_26895BC6C;
  v49 = v0[17];
  v50 = v0[7];

  return v58(v50, v0 + 2, v44, v49);
}

uint64_t sub_26895BC6C()
{
  OUTLINED_FUNCTION_219();
  v2 = v1;
  v3 = v1[27];
  v4 = v1[26];
  v5 = v1[25];
  v6 = *v0;
  OUTLINED_FUNCTION_89();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);

  return MEMORY[0x2822009F8](sub_26895BDA4, 0, 0);
}

uint64_t sub_26895BDA4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[14];
  v5 = v0[13];
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_222();

  return v6();
}

uint64_t sub_26895BE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v26 = sub_268B34E54();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = sub_268B367A4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v25 - v18;
  v20 = sub_268B35044();
  (*(*(v20 - 8) + 16))(v19, a2, v20);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  sub_268B35314();
  sub_268B35344();
  sub_268B35304();
  sub_268B36714();
  sub_268B36B14();

  sub_268B352D4();
  sub_2688F1FA4(v25, v13, &unk_2802A56E0, &unk_268B3CDF0);
  v21 = *&v13[*(v10 + 56)];
  v22 = [v21 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v23 = sub_268B350F4();
  (*(*(v23 - 8) + 8))(v13, v23);
  (*(v5 + 104))(v8, *MEMORY[0x277D5BC50], v26);
  return sub_268B352E4();
}

void sub_26895C174()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  v15 = &v33[-v14];
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  v20 = &v33[-v19];
  v21 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v21);
  (*(v22 + 16))(v20, v7);
  *&v20[v16[14]] = v5;
  v23 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
  v24 = sub_268B35244();
  sub_26895D2A0(v24);
  v26 = v25;

  v27 = __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
  v35[0] = v26;
  v28 = *v27;

  sub_268948494(v35);
  sub_2688C058C(v35, &byte_2802A6450, &byte_268B3BE10);
  v29 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_268B34CA4();
  v30 = sub_268B35044();
  OUTLINED_FUNCTION_4(v30);
  (*(v31 + 16))(v15, v9, v30);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v30);
  v32 = sub_268B354F4();
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v36 = v32;
  v37 = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v35);
  sub_268B34F34();

  sub_2688C058C(v33, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v15, &qword_2802A57F0, &qword_268B3DDB0);
  v38 = 0;
  v3(v35);
  sub_2688C058C(v20, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v35, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_26895C468()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v29 = v5;
  v30 = v4;
  v7 = v6;
  v9 = v8;
  v31 = v10;
  v11 = sub_268B37A54();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v20 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v14 + 16))(v19, v20, v11);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_14();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "LanguageDisambiguationStrategy.makeFlowCancelledResponse()", v23, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v14 + 8))(v19, v11);
  sub_26890C900((v1 + 7), v32);
  type metadata accessor for DialogProvider();
  inited = swift_initStackObject();
  sub_2688E6514(v32, inited + 16);
  v25 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_268B3BBA0;
    *(v26 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v27 = swift_allocObject();
  v27[2] = v29;
  v27[3] = v3;
  v27[4] = v30;
  v27[5] = v7;
  v27[6] = v9;
  v27[7] = v1;
  v27[8] = v31;
  v27[9] = v26;

  v28 = v9;

  sub_268ABDE34(sub_26895EFE0, v27);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((inited + 16));
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26895C710(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t a9)
{
  v74 = a8;
  v75 = a6;
  v68 = a4;
  v69 = a5;
  v80 = a2;
  v81 = a3;
  v77 = a1;
  v67 = *a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v72 = &v63 - v18;
  v79 = sub_268B34E24();
  v71 = *(v79 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x28223BE20](v79);
  v70 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_268B37A54();
  v66 = *(v21 - 8);
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v63 - v27;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v29 = *(*(v78 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v78);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v63 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v63 - v36;
  sub_2688F1FA4(v77, v28, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v28, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v21, qword_2802CDA10);
    v39 = v66;
    (*(v66 + 16))(v24, v38, v21);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2688BB000, v40, v41, "LanguageDisambiguationStrategy.makeFlowCancelledResponse Unable to generate dialog.", v42, 2u);
      MEMORY[0x26D6266E0](v42, -1, -1);
    }

    (*(v39 + 8))(v24, v21);
    sub_2688C2ECC();
    v43 = swift_allocError();
    *v44 = -70;
    v82[0] = v43;
    v83 = 1;
    v80(v82);
    return sub_2688C058C(v82, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v66 = a9;
    sub_2689186C8(v28, v37);
    v65 = *(v67 + 80);
    v67 = *(v67 + 104);
    v46 = v75;
    v68 = sub_26894CE44(3, 1, v68, v69, v75, 0, 0, v65, v67);
    v48 = v47;
    v64 = __swift_project_boxed_opaque_existential_1(a7 + 17, a7[20]);
    v49 = v70;
    v50 = v71;
    (*(v71 + 104))(v70, *MEMORY[0x277D5BC08], v79);
    sub_2688F1FA4(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);

    v51 = sub_268B350F4();
    v69 = *(v51 - 8);
    v52 = v72;
    (*(v69 + 32))(v72, v35, v51);
    v77 = v51;
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v51);
    v53 = sub_268B34B94();
    v54 = v73;
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v53);
    sub_26894D438(v74, v49, v46, v52, v68, v48, v54, *v64, v65, v67);

    sub_2688C058C(v54, &unk_2802A62B0, &unk_268B3BDF0);
    v55 = v52;
    v56 = v66;
    sub_2688C058C(v55, &unk_2802A57B0, &unk_268B3CE00);
    (*(v50 + 8))(v49, v79);
    v58 = a7[25];
    v57 = a7[26];
    __swift_project_boxed_opaque_existential_1(a7 + 22, v58);
    sub_2688F1FA4(v37, v32, &unk_2802A56E0, &unk_268B3CDF0);
    v59 = *&v32[*(v78 + 48)];
    v60 = sub_268B35044();
    v61 = v76;
    __swift_storeEnumTagSinglePayload(v76, 1, 1, v60);
    if (v56 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      v62 = sub_268B38294();

      v56 = v62;
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    (*(v57 + 32))(v32, v59, v61, v56, v80, v81, v58, v57);

    sub_2688C058C(v61, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v37, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v69 + 8))(v32, v77);
  }
}

void sub_26895CF5C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v42 = v2;
  v43 = v3;
  v44 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57E8, &unk_268B3BE60);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v41 = v9;
  OUTLINED_FUNCTION_9();
  v48 = sub_268B36A44();
  v10 = OUTLINED_FUNCTION_1(v48);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v47 = v15 - v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  v46 = &v39 - v18;
  v19 = sub_2688EFD0C(v1);
  v20 = 0;
  v50 = v1 & 0xC000000000000001;
  v21 = v1;
  v22 = v1 & 0xFFFFFFFFFFFFFF8;
  v40 = v12;
  v45 = (v12 + 32);
  v49 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v19 == v20)
    {

      v35 = v44;
      sub_268B36AB4();
      v36 = *MEMORY[0x277D55558];
      v37 = sub_268B36A54();
      OUTLINED_FUNCTION_4(v37);
      (*(v38 + 104))(v35, v36);
      OUTLINED_FUNCTION_23();
      return;
    }

    if (v50)
    {
      v23 = MEMORY[0x26D625BD0](v20, v21);
    }

    else
    {
      if (v20 >= *(v22 + 16))
      {
        goto LABEL_19;
      }

      v23 = *(v21 + 8 * v20 + 32);
    }

    v24 = v23;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    sub_268988504(v23);
    if (!v25)
    {
      goto LABEL_10;
    }

    sub_2689EF3E4(v24);
    if (v26)
    {
      v27 = sub_268B34534();
      __swift_storeEnumTagSinglePayload(v41, 1, 1, v27);
      sub_268B36A34();

      v28 = *v45;
      (*v45)(v46, v47, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = *(v49 + 16);
        sub_2689879FC();
        v49 = v33;
      }

      v29 = *(v49 + 16);
      if (v29 >= *(v49 + 24) >> 1)
      {
        sub_2689879FC();
        v49 = v34;
      }

      v30 = v48;
      v31 = v49;
      *(v49 + 16) = v29 + 1;
      v28((v31 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v29), v46, v30);
      ++v20;
    }

    else
    {

LABEL_10:

      ++v20;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_26895D2A0(uint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  v3 = sub_2688EFD0C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D47A60]) init];
      sub_2688EA03C(0, &unk_2802A6430, 0x277D47AB8);
      v8 = sub_268B37CE4();

      [v7 setItems_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_268B3BBA0;
      *(v9 + 32) = v7;
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v5;
    sub_26895D460(&v11, v1, &v10);

    if (v10)
    {
      MEMORY[0x26D6256C0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_26895D460(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 name];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 languageIdentifier];
    if (v8)
    {
      sub_268B37BF4();

      v8 = [objc_allocWithZone(MEMORY[0x277D47AB8]) init];
      [v8 setTitle_];

      type metadata accessor for DirectInvocationHelper();
      v9 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
      v10 = sub_268B34D34();
      sub_268A69540();
      v12 = v11;

      if (v12 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
        sub_268B38294();
      }

      else
      {
        sub_268B38454();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
      v13 = sub_268B37CE4();

      [v8 setCommands_];
    }

    else
    {
    }
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

void sub_26895D648()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_0();
  v13 = (v11 - v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v71 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  v21 = sub_2688EFD0C(v4);
  if (!v21)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v5, qword_2802CDA10);
    OUTLINED_FUNCTION_8_4();
    v57(v0);
    v58 = sub_268B37A34();
    v59 = sub_268B37EE4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_14();
      *v60 = 0;
      _os_log_impl(&dword_2688BB000, v58, v59, "LanguageDisambiguationStrategy.selectMatch No languages found to choose from. Returning nil", v60, 2u);
      OUTLINED_FUNCTION_12();
    }

    v61 = *(v8 + 8);
    v62 = OUTLINED_FUNCTION_103();
    v63(v62);
    goto LABEL_42;
  }

  v22 = v21;
  v76 = v20;
  v77 = v8;
  v72 = v17;
  v73 = v13;
  v78 = v5;
  v23 = 0;
  v24 = 0;
  v79 = v4;
  v80 = v4 & 0xC000000000000001;
  v82 = MEMORY[0x277D84F90];
  v25 = v4 & 0xFFFFFFFFFFFFFF8;
  while (v22 != v23)
  {
    if (v80)
    {
      v26 = MEMORY[0x26D625BD0](v23, v4);
    }

    else
    {
      if (v23 >= *(v25 + 16))
      {
        goto LABEL_44;
      }

      v26 = *(v4 + 8 * v23 + 32);
    }

    v27 = v26;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (sub_2689EF38C(v26))
    {
      v81[0] = sub_268B37254();
      v81[1] = v28;
      MEMORY[0x28223BE20](v81[0]);
      *(&v71 - 2) = v81;
      LODWORD(v5) = sub_268ACD018();

      if (v5)
      {
        v29 = 1;
        v4 = v79;
        goto LABEL_13;
      }

      v4 = v79;
    }

    v29 = 0;
LABEL_13:
    sub_268988504(v27);
    if (v30)
    {
      sub_268B37C84();
      OUTLINED_FUNCTION_35_2();
      v29 |= v5;
    }

    switch(v2)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_268B38444();
        OUTLINED_FUNCTION_35_2();
        if ((v29 ^ v5))
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      case 5:
        if ((v29 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      default:

        if (v29)
        {
LABEL_19:
          sub_268B38214();
          v5 = *(v82 + 16);
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
        }

        else
        {
LABEL_17:
        }

        ++v23;
        break;
    }
  }

  v24 = v82;
  if (qword_2802A4F30 == -1)
  {
    goto LABEL_25;
  }

LABEL_45:
  OUTLINED_FUNCTION_0_0();
LABEL_25:
  v31 = v78;
  v32 = __swift_project_value_buffer(v78, qword_2802CDA10);
  v33 = v76;
  v34 = v77;
  v35 = *(v77 + 16);
  v74 = v32;
  v75 = v35;
  (v35)(v76);

  v36 = sub_268B37A34();
  v37 = sub_268B37EE4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v38 = 136315394;
    LOBYTE(v82) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6428, &qword_268B3F090);
    v39 = sub_268B38094();
    v41 = sub_26892CDB8(v39, v40, v81);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v42 = type metadata accessor for LanguageOption();
    v43 = MEMORY[0x26D6256F0](v24, v42);
    v45 = sub_26892CDB8(v43, v44, v81);

    *(v38 + 14) = v45;
    _os_log_impl(&dword_2688BB000, v36, v37, "LanguageDisambiguationStrategy.selectMatch mediaOptions after filtering by mediaViewOption: %s: %s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    v34 = v77;
    v31 = v78;
    OUTLINED_FUNCTION_12();
  }

  v46 = *(v34 + 8);
  v46(v33, v31);
  if (sub_2688EFD0C(v24))
  {
    sub_2688EFD10(0, (v24 & 0xC000000000000001) == 0, v24);
    if ((v24 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x26D625BD0](0, v24);
    }

    else
    {
      v47 = *(v24 + 32);
    }

    v48 = v47;
    v49 = v75;

    v50 = v73;
    v49(v73, v74, v31);
    v51 = v48;
    v52 = sub_268B37A34();
    v53 = sub_268B37ED4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_172_0();
      v55 = swift_slowAlloc();
      *v54 = 138543362;
      *(v54 + 4) = v51;
      *v55 = v51;
      v56 = v51;
      _os_log_impl(&dword_2688BB000, v52, v53, "LanguageDisambiguationStrategy.selectMatch Selected: %{public}@", v54, 0xCu);
      sub_2688C058C(v55, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v46(v50, v31);
  }

  else
  {

    v64 = v72;
    v75(v72, v74, v31);
    v65 = sub_268B37A34();
    v66 = sub_268B37EE4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = OUTLINED_FUNCTION_14();
      *v67 = 0;
      _os_log_impl(&dword_2688BB000, v65, v66, "LanguageDisambiguationStrategy.selectMatch no languages matched the requested mediaViewOption. Returning matches.first", v67, 2u);
      OUTLINED_FUNCTION_12();
    }

    v68 = v80;

    v46(v64, v31);
    v69 = v79;
    sub_2688EFD10(0, v68 == 0, v79);
    if (v68)
    {
      MEMORY[0x26D625BD0](0, v69);
    }

    else
    {
      v70 = *(v69 + 32);
    }
  }

LABEL_42:
  OUTLINED_FUNCTION_23();
}

void sub_26895DDF0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = type metadata accessor for MediaIntent();
  sub_26895E3B4(v1, v3 + *(v16 + 36), v17, v18, v19, v20, v21, v22, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  if (v23)
  {
    goto LABEL_2;
  }

  v24 = *(v3 + 16);
  if (v24)
  {
    v60 = *(v3 + 8);
    v65 = v60;
    v66 = v24;
    v63 = 95;
    v64 = 0xE100000000000000;
    v61 = 45;
    v62 = 0xE100000000000000;
    sub_26895EF2C();
    v59 = sub_268B380B4();
    v26 = v25;
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_56;
    }

    while (1)
    {
      __swift_project_value_buffer(v4, qword_2802CDA10);
      OUTLINED_FUNCTION_8_4();
      v27(v15);

      v28 = sub_268B37A34();
      LODWORD(v29) = sub_268B37EC4();

      v30 = os_log_type_enabled(v28, v29);
      v31 = v26;
      v58 = v3;
      if (v30)
      {
        v32 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v65 = v57;
        *v32 = 136446722;
        *(v32 + 4) = sub_26892CDB8(v60, v24, &v65);
        HIDWORD(v56) = v29;
        *(v32 + 12) = 2082;
        *(v32 + 14) = sub_26892CDB8(v59, v31, &v65);
        *(v32 + 22) = 2082;
        v33 = type metadata accessor for LanguageOption();
        v34 = MEMORY[0x26D6256F0](v1, v33);
        v36 = sub_26892CDB8(v34, v35, &v65);

        *(v32 + 24) = v36;
        _os_log_impl(&dword_2688BB000, v28, BYTE4(v56), "Comparing %{public}s and %{public}s against: %{public}s", v32, 0x20u);
        LOBYTE(v29) = v57;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12();
        v26 = v31;
        OUTLINED_FUNCTION_12();
      }

      (*(v7 + 8))(v15, v4);
      v4 = sub_2688EFD0C(v1);
      v37 = 0;
      v7 = v1 & 0xC000000000000001;
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4 == v37)
        {
          v15 = 0;
          v65 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v4 == v15)
            {

              v54 = *(v58 + 2);
              sub_26895D648();

              goto LABEL_2;
            }

            if (v7)
            {
              v46 = MEMORY[0x26D625BD0](v15, v1);
            }

            else
            {
              if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v46 = *(v1 + 8 * v15 + 32);
            }

            v47 = v46;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_54;
            }

            v48 = sub_2689EF3F0(v46);
            if (!v49)
            {
              goto LABEL_38;
            }

            if (v48 == v60 && v49 == v24)
            {
              goto LABEL_45;
            }

            sub_268B38444();
            OUTLINED_FUNCTION_35_2();
            if ((v29 & 1) == 0)
            {
LABEL_38:
              v51 = sub_2689EF3F0(v47);
              if (!v52)
              {
                goto LABEL_44;
              }

              if (v51 == v59 && v52 == v26)
              {
LABEL_45:

                goto LABEL_46;
              }

              sub_268B38444();
              OUTLINED_FUNCTION_35_2();
              if ((v29 & 1) == 0)
              {
LABEL_44:

                goto LABEL_47;
              }
            }

LABEL_46:
            sub_268B38214();
            v29 = *(v65 + 16);
            sub_268B38244();
            sub_268B38254();
            sub_268B38224();
LABEL_47:
            ++v15;
          }
        }

        if (v7)
        {
          v38 = MEMORY[0x26D625BD0](v37, v1);
        }

        else
        {
          if (v37 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v38 = *(v1 + 8 * v37 + 32);
        }

        v26 = v38;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v39 = sub_2689EF3E4(v38);
        if (v40)
        {
          v15 = v40;
          if (v39 == v60 && v40 == v24)
          {

LABEL_51:

            goto LABEL_2;
          }

          LOBYTE(v29) = sub_268B38444();

          if (v29)
          {
            goto LABEL_51;
          }
        }

        ++v37;
        v26 = v31;
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      OUTLINED_FUNCTION_0_0();
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v4, qword_2802CDA10);
  OUTLINED_FUNCTION_8_4();
  v42(v12);
  v43 = sub_268B37A34();
  v44 = sub_268B37F04();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_14();
    *v45 = 0;
    _os_log_impl(&dword_2688BB000, v43, v44, "Intent is missing language, ignoring", v45, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v7 + 8))(v12, v4);
LABEL_2:
  OUTLINED_FUNCTION_23();
}

void sub_26895E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58C0, &unk_268B3F080);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = sub_268B37124();
  v34 = OUTLINED_FUNCTION_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_20_0();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15();
  sub_2688F1FA4(v24, v32, &qword_2802A58C0, &unk_268B3F080);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    sub_2688C058C(v32, &qword_2802A58C0, &unk_268B3F080);
LABEL_17:
    OUTLINED_FUNCTION_23();
    return;
  }

  (*(v36 + 32))(v20, v32, v33);
  (*(v36 + 16))(v41, v20, v33);
  v43 = *(v36 + 88);
  v44 = OUTLINED_FUNCTION_153_0();
  LODWORD(v46) = v45(v44);
  if (v46 == *MEMORY[0x277D5F7A8])
  {
    v47 = *(v36 + 96);
    v48 = OUTLINED_FUNCTION_153_0();
    v49(v48);
    v50 = *v41;
    v46 = sub_2688EFD0C(v26);
    if (v46 < v50)
    {
      goto LABEL_16;
    }

    v56 = __OFSUB__(v50, 1);
    v41 = v50 - 1;
    if (!v56)
    {
LABEL_14:
      sub_2688EFD10(v41, (v26 & 0xC000000000000001) == 0, v26);
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](v41, v26);
      }

      else
      {
        v60 = *(v26 + 8 * v41 + 32);
      }

      goto LABEL_16;
    }

    __break(1u);
  }

  if (v46 != *MEMORY[0x277D5F7B0])
  {
    v57 = *(v36 + 8);
    v58 = OUTLINED_FUNCTION_103();
    v57(v58);
    v59 = OUTLINED_FUNCTION_153_0();
    v57(v59);
    goto LABEL_17;
  }

  v51 = *(v36 + 96);
  v52 = OUTLINED_FUNCTION_153_0();
  v53(v52);
  v54 = *v41;
  v55 = sub_2688EFD0C(v26);
  v56 = __OFSUB__(v55, v54);
  v41 = v55 - v54;
  if (v41 < 0 != v56)
  {
LABEL_16:
    v61 = *(v36 + 8);
    v62 = OUTLINED_FUNCTION_103();
    v63(v62);
    goto LABEL_17;
  }

  if (!v56)
  {
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t *sub_26895E66C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_26895F84C((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  return v0;
}

uint64_t sub_26895E6B4()
{
  sub_26895E66C();

  return MEMORY[0x2821FE8D8](v0, 256, 7);
}

uint64_t sub_26895E700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a6 + 80);
  v16 = *(a6 + 96);
  v13 = type metadata accessor for LanguageDisambiguationStrategy();
  return MEMORY[0x26D622290](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26895E7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a7;
  *(v10 + 24) = a8;

  sub_26895975C();
}

uint64_t sub_26895E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  OUTLINED_FUNCTION_16_8();
  v14 = *(a10 + 80);
  v15 = *(a10 + 96);
  type metadata accessor for LanguageDisambiguationStrategy();
  v12 = OUTLINED_FUNCTION_17_7();
  return a12(v12);
}

uint64_t sub_26895EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t))
{
  OUTLINED_FUNCTION_16_8();
  v13 = *(a9 + 80);
  v14 = *(a9 + 96);
  type metadata accessor for LanguageDisambiguationStrategy();
  v11 = OUTLINED_FUNCTION_17_7();
  return a11(v11);
}

uint64_t sub_26895EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 80);
  v10 = *(a8 + 96);
  type metadata accessor for LanguageDisambiguationStrategy();
  return sub_268B353B4();
}

uint64_t sub_26895EB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C008] + 4);
  v16 = swift_task_alloc();
  *(v7 + 48) = v16;
  v17 = *(a6 + 96);
  *(v7 + 16) = *(a6 + 80);
  *(v7 + 32) = v17;
  v18 = type metadata accessor for LanguageDisambiguationStrategy();
  *v16 = v7;
  v16[1] = sub_26895EC80;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v18, a7);
}

uint64_t sub_26895EC80()
{
  OUTLINED_FUNCTION_219();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_89();
  *v4 = v3;

  OUTLINED_FUNCTION_222();

  return v5();
}

uint64_t sub_26895ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8;
  v17 = *(MEMORY[0x277D5C010] + 4);
  v18 = swift_task_alloc();
  *(v15 + 48) = v18;
  v19 = *(a7 + 96);
  *(v15 + 16) = *(a7 + 80);
  *(v15 + 32) = v19;
  v20 = type metadata accessor for LanguageDisambiguationStrategy();
  *v18 = v15;
  v18[1] = sub_26895F8A0;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v20, a8);
}

unint64_t sub_26895EE90()
{
  result = qword_2802A6400;
  if (!qword_2802A6400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2802A6408, &qword_268B3EFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6400);
  }

  return result;
}

uint64_t sub_26895EEF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26895EF2C()
{
  result = qword_2802A6418;
  if (!qword_2802A6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6418);
  }

  return result;
}

uint64_t sub_26895EF80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26895F014()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v9 = *(*v8 + 80);
  v10 = (v7 + v9) & ~v9;
  v11 = *(*v8 + 64);
  v24 = sub_268B36A54();
  OUTLINED_FUNCTION_1(v24);
  v13 = v12;
  v15 = v14;
  v16 = *(v13 + 80);
  v17 = (v10 + v11 + v16) & ~v16;
  v23 = *(v15 + 64);
  v18 = v4 | v16 | v9;
  v19 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v20 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v20);
  (*(v21 + 8))(v0 + v10);

  (*(v13 + 8))(v0 + v17, v24);

  return MEMORY[0x2821FE8E8](v0, v17 + v23, v18 | 7);
}

uint64_t sub_26895F208(uint64_t a1)
{
  v3 = v2;
  v5 = sub_268B35044();
  OUTLINED_FUNCTION_19_0(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v10);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = sub_268B36A54();
  OUTLINED_FUNCTION_22(v15);
  v17 = (v12 + v14 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = *(v1 + 16);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_26895F3A8;

  return sub_26895B5C8(a1, v18, v1 + v7, v1 + v12, v1 + v17);
}

uint64_t sub_26895F3A8()
{
  OUTLINED_FUNCTION_219();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_89();
  *v4 = v3;

  OUTLINED_FUNCTION_222();

  return v5();
}

uint64_t sub_26895F48C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26895F4D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26895F3A8;

  return sub_2688DB8EC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_26895F5B4()
{
  OUTLINED_FUNCTION_26();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 56);

  (*(v3 + 8))(v0 + v4, v1);
  v11 = *(v0 + v6 + 8);

  v12 = *(v0 + v9);

  v13 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_26895F6D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6440, &qword_268B3F098);
  OUTLINED_FUNCTION_19_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_26895A718(a1, *(v1 + 48), *(v1 + 56), v1 + v8, *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_26895F7A8(uint64_t a1)
{
  v2 = type metadata accessor for MediaIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26895F804(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_19_5()
{
  result = v0;
  v3 = *(v1 - 184);
  v4 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_7@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  **(v3 - 192) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return sub_268B38444();
}

void OUTLINED_FUNCTION_31_3()
{
  v1 = *(v0 - 200);
  v2 = *(v0 - 168);
  v3 = *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_35_2()
{
}

Swift::String_optional __swiftcall UsoTask_disableSetting_common_MediaItem.verb()()
{
  if (sub_26895F9F8() == 3)
  {
    v0 = UsoTask_disableSetting_common_MediaItem.referencedSetting()();
    if (v0)
    {
      sub_268962A68();
      v2 = v1;
      v3 = v1;

      if (v3 != 24)
      {
        v0 = sub_26893E3F8(v2);
        goto LABEL_8;
      }

      v0 = 0;
    }

    v4 = 0;
  }

  else
  {
    v4 = 0xE300000000000000;
    v0 = 7628147;
  }

LABEL_8:
  result.value._object = v4;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_26895F9F8()
{
  if ((sub_268A9D268() & 0xFE) != 0)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t UsoTask_disableSetting_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_26895FAB8()
{
  v0 = sub_268A9D268();
  if (v0 == 1)
  {
    v1 = 6;
  }

  else
  {
    v1 = 7;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_26895FAEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  inited[1] = xmmword_268B3BBD0;
  inited[2] = xmmword_268B3F0D0;
  inited[3] = xmmword_268B3F0E0;
  UsoTask_disableSetting_common_MediaItem.verb()();
  v1 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v1)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t UsoTask_disableSetting_common_MediaItem.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = UsoTask_disableSetting_common_MediaItem.referencedSetting()();
  if (v16)
  {
    sub_2689633E8();
    if (v17)
    {
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_1_14(v17, qword_2802CDA10);
      v18(v15);
      v19 = sub_268B37A34();
      v20 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v20))
      {
        v21 = OUTLINED_FUNCTION_14();
        *v21 = 0;
        _os_log_impl(&dword_2688BB000, v19, v20, "UsoTask_disableSetting_common_MediaItem#shouldHandle Task is mediaPlayer. Handling in controls", v21, 2u);
        OUTLINED_FUNCTION_12();
      }

      v22 = 0;
    }

    else
    {
      sub_268963658();
      if (v27)
      {
        if (qword_2802A4F30 != -1)
        {
          v27 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_14(v27, qword_2802CDA10);
        v28(v13);
        v29 = sub_268B37A34();
        v30 = sub_268B37F04();
        if (OUTLINED_FUNCTION_196(v30))
        {
          v31 = OUTLINED_FUNCTION_14();
          *v31 = 0;
          _os_log_impl(&dword_2688BB000, v29, v30, "UsoTask_disableSetting_common_MediaItem#shouldHandle Task is settings. Handling in controls", v31, 2u);
          OUTLINED_FUNCTION_12();
        }

        v22 = 2;
        v15 = v13;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v27 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_14(v27, qword_2802CDA10);
        v32(v10);
        v33 = sub_268B37A34();
        v34 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_196(v34))
        {
          v35 = OUTLINED_FUNCTION_14();
          *v35 = 0;
          _os_log_impl(&dword_2688BB000, v33, v34, "UsoTask_disableSetting_common_MediaItem#shouldHandle Task is not mediaPlayer/setting: Not handling in controls", v35, 2u);
          OUTLINED_FUNCTION_12();
        }

        v22 = 3;
        v15 = v10;
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v16 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_1_14(v16, qword_2802CDA10);
    v23(v7);
    v24 = sub_268B37A34();
    v25 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v25))
    {
      v26 = OUTLINED_FUNCTION_14();
      *v26 = 0;
      _os_log_impl(&dword_2688BB000, v24, v25, "UsoTask_disableSetting_common_MediaItem#shouldHandle no referenced setting found in task. Not handling in Controls", v26, 2u);
      OUTLINED_FUNCTION_12();
    }

    v22 = 3;
    v15 = v7;
  }

  result = (*(v3 + 8))(v15, v2);
  *a1 = v22;
  return result;
}

uint64_t sub_2689600D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268960128(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_26896017C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689601D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268960224(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268960278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689602CC()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268960320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268960384()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689603D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_26896043C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689604A0()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268960504(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268960568(uint64_t a1)
{
  result = sub_268960614(&qword_2802A6490);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268960614(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36514();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(v3 + 16);
  return result;
}

void sub_268960AA8()
{
  OUTLINED_FUNCTION_26();
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1_15(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v36 = __swift_project_value_buffer(v0, qword_2802CDA10);
  v37 = *(v9 + 16);
  v37(v1);
  v18 = sub_268B37A34();
  v19 = sub_268B37ED4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_14();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "Checking confirm intent condition", v20, 2u);
    OUTLINED_FUNCTION_12();
  }

  v21 = *(v9 + 8);
  v21(v1, v0);
  v22 = [v5 device];
  if (v22)
  {
    v23 = v22;
    if (sub_268961260(v22))
    {
      (v37)(v3, v36, v0);
      v24 = sub_268B37A34();
      v25 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_196(v25))
      {
        v26 = OUTLINED_FUNCTION_14();
        v2 = v3;
        OUTLINED_FUNCTION_89_1(v26);
        OUTLINED_FUNCTION_2_13(&dword_2688BB000, v27, v25, "Confirm intent condition returning true");
        OUTLINED_FUNCTION_132_0();
      }

      else
      {

        v2 = v3;
      }
    }

    else
    {
      (v37)(v14, v36, v0);
      v32 = sub_268B37A34();
      v33 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_196(v33))
      {
        v34 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_89_1(v34);
        OUTLINED_FUNCTION_2_13(&dword_2688BB000, v35, v33, "Intent indicates confirmation is not necessary");
        OUTLINED_FUNCTION_132_0();
      }

      v2 = v14;
    }
  }

  else
  {
    (v37)(v2, v36, v0);
    v23 = sub_268B37A34();
    v28 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_14_6(v28))
    {
      v29 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v29);
      OUTLINED_FUNCTION_7_7(&dword_2688BB000, v30, v31, "No resolved devices were found in the intent. Skipping confirmation step");
      OUTLINED_FUNCTION_12();
    }
  }

  v21(v2, v0);
  OUTLINED_FUNCTION_23();
}

BOOL sub_268961260(void *a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  if (sub_2689850E8())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v9, v10, v2);
    v11 = sub_268B37A34();
    v12 = sub_268B37F04();
    if (!os_log_type_enabled(v11, v12))
    {
      v14 = 0;
      goto LABEL_13;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "shouldSkipUserConfirmation is set to true. Skipping confirmation step", v13, 2u);
    v14 = 0;
  }

  else
  {
    v15 = sub_2689840D4();
    v14 = sub_268AD3738(v15, &unk_28794EE18);
    sub_2688C063C();
    v16 = sub_268B38054();
    [a1 setConfirmed_];

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v7, v17, v2);
    v11 = sub_268B37A34();
    v18 = sub_268B37ED4();
    if (!os_log_type_enabled(v11, v18))
    {
      v9 = v7;
      goto LABEL_13;
    }

    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v14;
    _os_log_impl(&dword_2688BB000, v11, v18, "ConfirmableIntent.shouldConfirm: %{BOOL}d", v13, 8u);
    v9 = v7;
  }

  MEMORY[0x26D6266E0](v13, -1, -1);
LABEL_13:

  (*(v3 + 8))(v9, v2);
  return v14;
}

void sub_26896155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_268B37A54();
  v31 = OUTLINED_FUNCTION_1_15(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_20_0();
  v38 = (v36 - v37);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v40);
  v42 = &a9 - v41;
  if ((sub_2689850E8() & 1) == 0)
  {
    if (v27())
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      __swift_project_value_buffer(v20, qword_2802CDA10);
      OUTLINED_FUNCTION_1_13();
      v47(v21);
      v48 = sub_268B37A34();
      v49 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v49))
      {
        v50 = OUTLINED_FUNCTION_14();
        *v50 = 0;
        _os_log_impl(&dword_2688BB000, v48, v49, "This is a WHA request. Skipping confirmation", v50, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v33 + 8))(v21, v20);
    }

    else
    {
      v51 = sub_2689840D4();
      if (sub_268AD3738(v51, v25))
      {
        sub_2688C063C();
        v52 = 1;
        v53 = sub_268B38054();
LABEL_16:
        [v29 setConfirmed_];

        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        __swift_project_value_buffer(v20, qword_2802CDA10);
        OUTLINED_FUNCTION_1_13();
        v54(v38);
        v44 = sub_268B37A34();
        v55 = sub_268B37ED4();
        if (!OUTLINED_FUNCTION_196(v55))
        {
          v42 = v38;
          goto LABEL_22;
        }

        v56 = swift_slowAlloc();
        *v56 = 67109120;
        *(v56 + 4) = v52;
        _os_log_impl(&dword_2688BB000, v44, v55, "DeviceQueryableIntent.shouldConfirm: %{BOOL}d", v56, 8u);
        v42 = v38;
        goto LABEL_20;
      }
    }

    sub_2688C063C();
    v53 = sub_268B38054();
    v52 = 0;
    goto LABEL_16;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v20, qword_2802CDA10);
  OUTLINED_FUNCTION_1_13();
  v43(v42);
  v44 = sub_268B37A34();
  v45 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v45))
  {
    v46 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v46);
    _os_log_impl(&dword_2688BB000, v44, v45, "shouldSkipUserConfirmation is set to true. Skipping confirmation step", v29, 2u);
LABEL_20:
    OUTLINED_FUNCTION_12();
  }

LABEL_22:

  (*(v33 + 8))(v42, v20);
  OUTLINED_FUNCTION_23();
}

id sub_2689618EC(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!sub_2688EFD0C(v2))
  {

    return 0;
  }

  sub_2688EFD10(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D625BD0](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

  return v5;
}

void OUTLINED_FUNCTION_2_13(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_7_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_14_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_2689619F4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = sub_268B358D4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  OUTLINED_FUNCTION_4_9();
  v23 = sub_268B35BC4();
  if (v23)
  {
    v24 = v23;
    v25 = *(v23 + 16);
    v66 = v5;
    v67 = v25;
    if (v25)
    {
      v64 = v0;
      v65 = v22;
      v62 = v10;
      v63 = v2;
      v26 = 0;
      v27 = *(v14 + 80);
      OUTLINED_FUNCTION_258();
      v29 = v24 + v28;
      v30 = (v14 + 8);
      while (1)
      {
        if (v26 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        v5 = v11;
        (*(v14 + 16))(v19, v29 + *(v14 + 72) * v26, v11);
        v0 = v19;
        sub_268B358C4();
        if (v31)
        {
          v0 = v31;
          OUTLINED_FUNCTION_6_11();
          v33 = v33 && v32 == 0xEF6E6F6974704F77;
          if (v33)
          {

LABEL_48:

            v55 = v65;
            (*(v14 + 32))(v65, v19, v5);
            sub_268B358C4();
            if (!v56)
            {
LABEL_54:
              (*v30)(v55, v5);
              goto LABEL_58;
            }

            OUTLINED_FUNCTION_6_11();
            if (v33 && v57 == 0xEF6E6F6974704F77)
            {
            }

            else
            {
              v59 = sub_268B38444();

              if ((v59 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            sub_268B358B4();
            sub_2689AD5C0();
            (*v30)(v55, v5);
            goto LABEL_58;
          }

          v34 = sub_268B38444();

          if (v34)
          {
            goto LABEL_48;
          }
        }

        ++v26;
        v11 = v5;
        (*v30)(v19, v5);
        if (v67 == v26)
        {

          v2 = v63;
          v1 = v64;
          v5 = v66;
          v10 = v62;
          goto LABEL_14;
        }
      }
    }

    v5 = v66;
  }

LABEL_14:
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
  (*(v5 + 16))(v10);

  v35 = sub_268B37A34();
  v36 = sub_268B37EE4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_172_0();
    v38 = OUTLINED_FUNCTION_173_0();
    v68 = v1;
    v69 = v38;
    *v37 = 136315138;
    sub_268B35DB4();

    v39 = sub_268B37C24();
    v41 = v10;
    v42 = sub_26892CDB8(v39, v40, &v69);

    *(v37 + 4) = v42;
    OUTLINED_FUNCTION_34_0();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (*(v5 + 8))(v41, v2);
  }

  else
  {

    (*(v5 + 8))(v10, v2);
  }

  v48 = sub_268B35D94();
  if (v49)
  {
    v0 = v48;
    v5 = v49;
    if (v48 != 0x656C746974627573 || v49 != 0xE900000000000073)
    {
      OUTLINED_FUNCTION_103();
      if ((sub_268B38444() & 1) == 0 && (v0 != 25443 || v5 != 0xE200000000000000))
      {
        OUTLINED_FUNCTION_103();
        if ((sub_268B38444() & 1) == 0 && (v0 != 0x63206465736F6C63 || v5 != 0xEF736E6F69747061))
        {
          OUTLINED_FUNCTION_103();
          if ((sub_268B38444() & 1) == 0 && (v0 != 0xD000000000000010 || v5 != 0x8000000268B58340))
          {
            OUTLINED_FUNCTION_103();
            if ((OUTLINED_FUNCTION_37_4() & 1) == 0 && (v0 != 0xD000000000000010 || v5 != 0x8000000268B58360))
            {
              OUTLINED_FUNCTION_103();
              if ((OUTLINED_FUNCTION_37_4() & 1) == 0)
              {
LABEL_60:
                if (v0 != 0x6F69647561 || v5 != 0xE500000000000000)
                {
                  OUTLINED_FUNCTION_103();
                  if ((OUTLINED_FUNCTION_44_1() & 1) == 0 && (v0 != 25697 || v5 != 0xE200000000000000))
                  {
                    OUTLINED_FUNCTION_103();
                    sub_268B38444();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_58:
  OUTLINED_FUNCTION_23();
}

void sub_268962000()
{
  OUTLINED_FUNCTION_26();
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_4();
  v9 = sub_268B358D4();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  if (sub_268B35DA4())
  {
    v21 = sub_268B35FE4();

    if (v21)
    {
      v56 = v20;
      OUTLINED_FUNCTION_4_9();
      v22 = sub_268B35BC4();
      if (v22)
      {
        v23 = v22;
        v57 = *(v22 + 16);
        if (v57)
        {
          v52 = v1;
          v53 = v5;
          v54 = v2;
          v55 = v21;
          v24 = 0;
          v25 = *(v12 + 80);
          OUTLINED_FUNCTION_258();
          v2 = v23 + v26;
          v1 = v12 + 16;
          v5 = v12 + 8;
          while (v24 < *(v23 + 16))
          {
            (*(v12 + 16))(v17, v2 + *(v12 + 72) * v24, v9);
            v27 = sub_268B358C4();
            if (v28)
            {
              if (v27 == 0x6E614C616964656DLL && v28 == 0xED00006567617567)
              {

LABEL_29:

                v51 = v56;
                (*(v12 + 32))(v56, v17, v9);
                sub_268B358B4();

                (*(v12 + 8))(v51, v9);
                goto LABEL_27;
              }

              v21 = sub_268B38444();

              if (v21)
              {
                goto LABEL_29;
              }
            }

            ++v24;
            (*v5)(v17, v9);
            if (v57 == v24)
            {

              v5 = v53;
              v2 = v54;
              v21 = v55;
              v1 = v52;
              goto LABEL_21;
            }
          }

          __break(1u);
        }

        else
        {

LABEL_21:
          if (qword_2802A4F30 == -1)
          {
            goto LABEL_22;
          }
        }

        OUTLINED_FUNCTION_0_0();
LABEL_22:
        OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
        (*(v5 + 16))(v1);

        v38 = sub_268B37A34();
        v39 = sub_268B37EE4();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = OUTLINED_FUNCTION_172_0();
          v41 = v1;
          v42 = OUTLINED_FUNCTION_173_0();
          v58 = v21;
          v59 = v42;
          *v40 = 136315138;
          sub_268B35E14();

          v43 = sub_268B37C24();
          v45 = sub_26892CDB8(v43, v44, &v59);

          *(v40 + 4) = v45;
          OUTLINED_FUNCTION_34_0();
          _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v42);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          (*(v5 + 8))(v41, v2);
        }

        else
        {

          (*(v5 + 8))(v1, v2);
        }

        goto LABEL_27;
      }

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
      (*(v5 + 16))(v0);

      v30 = sub_268B37A34();
      v31 = v5;
      v32 = sub_268B37EE4();

      if (os_log_type_enabled(v30, v32))
      {
        v33 = OUTLINED_FUNCTION_172_0();
        v34 = OUTLINED_FUNCTION_173_0();
        v58 = v21;
        v59 = v34;
        *v33 = 136315138;
        sub_268B35E14();

        v35 = sub_268B37C24();
        v37 = sub_26892CDB8(v35, v36, &v59);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_2688BB000, v30, v32, "UsoEntityCommonSetting#getLanguage couldn't get usoIdentifiers for language: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      (*(v31 + 8))(v0, v2);
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_23();
}

void sub_268962590()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B358D4();
  v1 = OUTLINED_FUNCTION_1(v0);
  v71 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v68 - v18;
  OUTLINED_FUNCTION_4_9();
  v20 = sub_268B35BC4();
  if (v20)
  {
    v21 = v20;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
    OUTLINED_FUNCTION_152();
    v22(v19);

    v23 = sub_268B37A34();
    v24 = sub_268B37F04();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_172_0();
      v70 = v11;
      v26 = v25;
      v27 = OUTLINED_FUNCTION_173_0();
      v69 = v8;
      v28 = v27;
      v72 = v27;
      *v26 = 136315138;
      v29 = MEMORY[0x26D6256F0](v21, v0);
      v31 = sub_26892CDB8(v29, v30, &v72);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2688BB000, v23, v24, "UsoMediaSettingNames: Found identifiers for name: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_12();

      (*(v70 + 8))(v19, v69);
    }

    else
    {

      (*(v11 + 8))(v19, v8);
    }

    v40 = *(v21 + 16);
    if (v40)
    {
      v42 = *(v71 + 16);
      v41 = v71 + 16;
      v70 = 0x8000000268B58320;
      v71 = v42;
      v43 = *(v41 + 64);
      OUTLINED_FUNCTION_258();
      v68[1] = v21;
      v45 = v21 + v44;
      v47 = *(v46 + 56);
      v48 = (v46 - 8);
      v49 = MEMORY[0x277D84F90];
      v69 = v0;
      while (1)
      {
        (v71)(v7, v45, v0);
        sub_268B358C4();
        if (!v50)
        {
          break;
        }

        OUTLINED_FUNCTION_28_6();
        if (v52 == v53 && v51 == v70)
        {
        }

        else
        {
          v55 = OUTLINED_FUNCTION_37_4();

          if ((v55 & 1) == 0)
          {
            break;
          }
        }

        sub_268B358B4();
        v59 = sub_268B382F4();

        v60 = *v48;
        v61 = OUTLINED_FUNCTION_0_1();
        v62(v61);
        if (!v59)
        {
          v63 = 0;
          goto LABEL_26;
        }

        if (v59 == 1)
        {
          v63 = 1;
LABEL_26:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = *(v49 + 16);
            OUTLINED_FUNCTION_30_4();
            sub_2689875D4();
            v49 = v66;
          }

          v64 = *(v49 + 16);
          if (v64 >= *(v49 + 24) >> 1)
          {
            OUTLINED_FUNCTION_30_4();
            sub_2689875D4();
            v49 = v67;
          }

          *(v49 + 16) = v64 + 1;
          *(v49 + v64 + 32) = v63;
          v0 = v69;
        }

LABEL_31:
        v45 += v47;
        if (!--v40)
        {
          goto LABEL_32;
        }
      }

      v56 = *v48;
      v57 = OUTLINED_FUNCTION_0_1();
      v58(v57);
      goto LABEL_31;
    }

LABEL_32:
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
    OUTLINED_FUNCTION_152();
    v32(v16);
    v33 = sub_268B37A34();
    v34 = sub_268B37F04();
    if (os_log_type_enabled(v33, v34))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v11 + 8))(v16, v8);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268962A68()
{
  OUTLINED_FUNCTION_26();
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v111 - v10;
  v129 = sub_268B358D4();
  v12 = OUTLINED_FUNCTION_1(v129);
  v124 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v122 = (v16 - v17);
  OUTLINED_FUNCTION_8();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v111 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v120 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v119 = v24;
  OUTLINED_FUNCTION_8();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v111 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v111 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v111 - v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_4_9();
  v35 = sub_268B35BC4();
  if (!v35)
  {
LABEL_23:
    if (qword_2802A4F30 == -1)
    {
LABEL_24:
      OUTLINED_FUNCTION_82(v3, qword_2802CDA10);
      OUTLINED_FUNCTION_152();
      v55(v1);
      v56 = sub_268B37A34();
      v57 = sub_268B37EE4();
      if (os_log_type_enabled(v56, v57))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_27();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v6 + 8))(v1, v3);
      goto LABEL_29;
    }

LABEL_75:
    OUTLINED_FUNCTION_0_0();
    goto LABEL_24;
  }

  v126 = *(v35 + 16);
  if (!v126)
  {

    goto LABEL_23;
  }

  v117 = v31;
  v118 = v0;
  v113 = v21;
  v114 = v11;
  v115 = v6;
  v116 = v3;
  v1 = 0;
  v123 = 0x8000000268B58380;
  v36 = *(v124 + 80);
  OUTLINED_FUNCTION_258();
  v112 = v38;
  v39 = v37 + v38;
  v127 = (v40 + 8);
  v128 = v40 + 16;
  do
  {
    if (v1 >= *(v37 + 16))
    {
      __break(1u);
LABEL_71:

LABEL_72:

      v109 = v119;
      v110 = v129;
      (v126)(v119, v120, v129);
      sub_2689646F4();
      v31(v109, v110);
      v31(v117, v110);
      goto LABEL_29;
    }

    v3 = v37;
    v125 = *(v124 + 72);
    v41 = *(v124 + 16);
    v41(v34, v39 + v125 * v1, v129);
    sub_268B358C4();
    if (v42)
    {
      OUTLINED_FUNCTION_40_1();
      if (v44 == v45 && v43 == v123)
      {

LABEL_28:

        v64 = *(v124 + 32);
        v63 = v124 + 32;
        v65 = OUTLINED_FUNCTION_16_9();
        v66 = v129;
        v67(v65);
        sub_2689646F4();
        (*(v63 - 24))(v2, v66);
        goto LABEL_29;
      }

      v47 = OUTLINED_FUNCTION_43_3();

      if (v47)
      {
        goto LABEL_28;
      }
    }

    ++v1;
    v31 = *v127;
    (*v127)(v34, v129);
    v37 = v3;
  }

  while (v126 != v1);
  v48 = 0;
  v121 = 0x8000000268B58320;
  OUTLINED_FUNCTION_40_1();
  v51 = v50 - 7;
  v6 = v39;
  while (1)
  {
    if (v48 >= *(v49 + 16))
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v41(v28, v6, v129);
    v52 = sub_268B358C4();
    if (v53)
    {
      break;
    }

LABEL_20:
    ++v48;
    OUTLINED_FUNCTION_31_4();
    (v31)();
    v6 += v125;
    v49 = v3;
    if (v126 == v48)
    {
      goto LABEL_33;
    }
  }

  if (v52 != v51 || v53 != v121)
  {
    v1 = sub_268B38444();

    if (v1)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

LABEL_31:
  v68 = *(v124 + 32);
  v68(v117, v28, v129);
  sub_268B358B4();
  v69 = sub_2689AD474();
  if (v69 == 2)
  {
    goto LABEL_32;
  }

  if ((v69 & 1) == 0)
  {

LABEL_56:

    if (sub_268B35D84())
    {
      OUTLINED_FUNCTION_4_9();
      v99 = sub_268B35BC4();

      if (v99)
      {
        v126 = v68;
        v100 = *(v99 + 16);
        if (v100)
        {
          v101 = 0;
          v102 = v99 + v112;
          do
          {
            if (v101 >= *(v99 + 16))
            {
              __break(1u);
LABEL_77:
              OUTLINED_FUNCTION_0_0();
              goto LABEL_47;
            }

            v41(v120, v102, v129);
            sub_268B358C4();
            if (v103)
            {
              OUTLINED_FUNCTION_40_1();
              if (v105 == v106 && v104 == v123)
              {
                goto LABEL_71;
              }

              v108 = OUTLINED_FUNCTION_43_3();

              if (v108)
              {
                goto LABEL_72;
              }
            }

            ++v101;
            OUTLINED_FUNCTION_31_4();
            (v31)();
            v102 += v125;
          }

          while (v100 != v101);
        }
      }
    }

    OUTLINED_FUNCTION_31_4();
    (v31)();
    goto LABEL_29;
  }

  v95 = OUTLINED_FUNCTION_44_1();

  if (v95)
  {
    goto LABEL_56;
  }

LABEL_32:
  OUTLINED_FUNCTION_31_4();
  (v31)();
LABEL_33:
  v6 = 0;
  OUTLINED_FUNCTION_40_1();
  v1 = v71 - 2;
  v72 = v122;
  while (2)
  {
    if (v6 >= *(v70 + 16))
    {
      __break(1u);
      goto LABEL_74;
    }

    v41(v72, v39, v129);
    v73 = sub_268B358C4();
    if (!v74)
    {
LABEL_44:
      ++v6;
      OUTLINED_FUNCTION_31_4();
      (v31)();
      v39 += v125;
      v70 = v3;
      if (v126 == v6)
      {

        goto LABEL_46;
      }

      continue;
    }

    break;
  }

  if (v73 == v1 && v74 == 0x8000000268B583C0)
  {

    v72 = v122;
  }

  else
  {
    v76 = sub_268B38444();

    v72 = v122;
    if ((v76 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  sub_268B358B4();
  v77 = sub_268B382F4();

  if (v77 >= 2)
  {
    goto LABEL_44;
  }

  v96 = v113;
  v97 = v129;
  (*(v124 + 32))(v113, v72, v129);
  sub_268B358B4();
  v98 = sub_2689AD468();
  v31(v96, v97);
  if (v98 != 2)
  {
    goto LABEL_29;
  }

LABEL_46:
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_77;
  }

LABEL_47:
  v78 = v116;
  OUTLINED_FUNCTION_82(v116, qword_2802CDA10);
  v80 = v114;
  v79 = v115;
  OUTLINED_FUNCTION_152();
  v81(v80);
  v82 = v118;

  v83 = sub_268B37A34();
  v84 = sub_268B37EE4();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = OUTLINED_FUNCTION_172_0();
    v86 = OUTLINED_FUNCTION_173_0();
    v130 = v82;
    v131 = v86;
    *v85 = 136315138;
    sub_268B35DB4();

    v87 = sub_268B37C24();
    v89 = sub_26892CDB8(v87, v88, &v131);

    *(v85 + 4) = v89;
    OUTLINED_FUNCTION_27();
    _os_log_impl(v90, v91, v92, v93, v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v86);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v79 + 8))(v80, v78);
LABEL_29:
  OUTLINED_FUNCTION_23();
}

void sub_2689633E8()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B37A54();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_268B358D4();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_4_9();
  v18 = sub_268B35BC4();
  if (v18)
  {
    v19 = v18;
    v20 = *(v18 + 16);
    if (v20)
    {
      v21 = 0;
      v8 = 0;
      v3 = (v12 + 8);
      while (1)
      {
        if (v20 == v21)
        {
LABEL_13:

          goto LABEL_14;
        }

        if (v21 >= *(v19 + 16))
        {
          break;
        }

        v22 = OUTLINED_FUNCTION_11_8();
        v23(v22);
        v0 = sub_268963AC0(v17);
        ++v21;
        v24 = *v3;
        v25 = OUTLINED_FUNCTION_192();
        v26(v25);
        if (v0)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_2802A4F30 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v0, qword_2802CDA10);
  (v3[2])(v8);
  v27 = sub_268B37A34();
  v28 = sub_268B37EE4();
  if (os_log_type_enabled(v27, v28))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_35_3(&dword_2688BB000, v29, v28, "UsoTaskExtension#validateForMediaPlayerDomain#settingEntity could not get usoIdentifiers for entity");
    OUTLINED_FUNCTION_20_2();
  }

  v30 = v3[1];
  v31 = OUTLINED_FUNCTION_0_1();
  v32(v31);
LABEL_14:
  OUTLINED_FUNCTION_23();
}

void sub_268963658()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B358D4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v18 = (v16 - v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_4();
  sub_268962000();
  if (v23)
  {

    if (qword_2802A4F30 == -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
      (*(v13 + 16))(v18);
      v24 = sub_268B37A34();
      v25 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v25))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_57();
        _os_log_impl(v26, v27, v28, v29, v30, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v13 + 8))(v18, v10);
      goto LABEL_31;
    }

LABEL_34:
    OUTLINED_FUNCTION_0_0();
    goto LABEL_3;
  }

  sub_2689619F4();
  if (v31 != 5)
  {
    if (sub_268932314(v31) == 0x6F69647561 && v32 == 0xE500000000000000)
    {
    }

    else
    {
      v34 = OUTLINED_FUNCTION_44_1();

      if ((v34 & 1) == 0)
      {
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
        (*(v13 + 16))(v0);
        v35 = sub_268B37A34();
        v36 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_115_0(v36))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v37, v38, v39, v40, v41, 2u);
          OUTLINED_FUNCTION_12();
        }

        (*(v13 + 8))(v0, v10);
        goto LABEL_31;
      }
    }
  }

  OUTLINED_FUNCTION_4_9();
  v42 = sub_268B35BC4();
  if (v42)
  {
    v43 = v42;
    v44 = *(v42 + 16);
    if (v44)
    {
      v45 = 0;
      v13 = v4 + 16;
      v18 = (v4 + 8);
      while (1)
      {
        if (v44 == v45)
        {
LABEL_24:

          goto LABEL_31;
        }

        if (v45 >= *(v43 + 16))
        {
          break;
        }

        v46 = OUTLINED_FUNCTION_11_8();
        v47(v46);
        v10 = sub_268963EFC(v9);
        ++v45;
        v48 = *v18;
        v49 = OUTLINED_FUNCTION_192();
        v50(v49);
        if (v10)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
  (*(v13 + 16))(v22);
  v51 = sub_268B37A34();
  v52 = sub_268B37F04();
  if (os_log_type_enabled(v51, v52))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_35_3(&dword_2688BB000, v53, v52, "UsoTaskExtension#validateForSettingsDomain#settingEntity no identifiers found for entity, returning true");
    OUTLINED_FUNCTION_20_2();
  }

  v54 = *(v13 + 8);
  v55 = OUTLINED_FUNCTION_0_1();
  v56(v55);
LABEL_31:
  OUTLINED_FUNCTION_23();
}

BOOL sub_268963AC0(uint64_t a1)
{
  v2 = sub_268B358D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_268B358C4();
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v12;
  v15 = v13;
  v36 = v8;
  v16 = v12 == 0xD000000000000015 && 0x8000000268B583C0 == v13;
  if (v16 || (sub_268B38444() & 1) != 0)
  {

    sub_268B358B4();
    v17 = sub_2689AD468();
    return v17 != 2;
  }

  v19 = v14 == 0xD000000000000010 && 0x8000000268B58320 == v15;
  if (v19 || (sub_268B38444() & 1) != 0)
  {

    sub_268B358B4();
    v17 = sub_2689AD474();
    return v17 != 2;
  }

  if (v14 == 0xD000000000000017 && 0x8000000268B58380 == v15)
  {

    goto LABEL_27;
  }

  v21 = sub_268B38444();

  v8 = v36;
  if (v21)
  {
LABEL_27:
    sub_268B358B4();
    v17 = sub_2689AD480();
    return v17 != 2;
  }

LABEL_20:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (v8[2])(v11, v22, v7);
  (*(v3 + 16))(v6, a1, v2);
  v23 = sub_268B37A34();
  v24 = sub_268B37EE4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = v25;
    v36 = swift_slowAlloc();
    v39 = v36;
    *v25 = 136315138;
    v37 = sub_268B358C4();
    v38 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
    v27 = sub_268B37C24();
    v34 = v24;
    v29 = v28;
    (*(v3 + 8))(v6, v2);
    v30 = sub_26892CDB8(v27, v29, &v39);

    v31 = v35;
    *(v35 + 1) = v30;
    _os_log_impl(&dword_2688BB000, v23, v34, "UsoTaskExtension#validateForMediaPlayerDomain#settingEntity unsupported mediaPlayer namespace: %s", v31, 0xCu);
    v32 = v36;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x26D6266E0](v32, -1, -1);
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  (v8[1])(v11, v7);
  return 0;
}

BOOL sub_268963EFC(uint64_t a1)
{
  v2 = sub_268B358D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_268B358C4();
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v12;
  v15 = v13;
  v36 = v8;
  v16 = v12 == 0xD000000000000011 && 0x8000000268B583A0 == v13;
  if (v16 || (sub_268B38444() & 1) != 0)
  {

    sub_268B358B4();
    v17 = sub_2689AD48C();
    return v17 != 2;
  }

  v19 = v14 == 0xD000000000000010 && 0x8000000268B580B0 == v15;
  if (v19 || (sub_268B38444() & 1) != 0)
  {

    sub_268B358B4();
    v17 = sub_2689AD498();
    return v17 != 2;
  }

  if (v14 == 0x72656765746E69 && v15 == 0xE700000000000000)
  {

    return 1;
  }

  v21 = sub_268B38444();

  v8 = v36;
  if (v21)
  {
    return 1;
  }

LABEL_20:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (v8[2])(v11, v22, v7);
  (*(v3 + 16))(v6, a1, v2);
  v23 = sub_268B37A34();
  v24 = sub_268B37EE4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = v25;
    v36 = swift_slowAlloc();
    v39 = v36;
    *v25 = 136315138;
    v37 = sub_268B358C4();
    v38 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
    v27 = sub_268B37C24();
    v34 = v24;
    v29 = v28;
    (*(v3 + 8))(v6, v2);
    v30 = sub_26892CDB8(v27, v29, &v39);

    v31 = v35;
    *(v35 + 1) = v30;
    _os_log_impl(&dword_2688BB000, v23, v34, "UsoTaskExtension#validateForSettingsDomain#settingEntity unsupported settings namespace: %s", v31, 0xCu);
    v32 = v36;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x26D6266E0](v32, -1, -1);
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  (v8[1])(v11, v7);
  return 0;
}

void sub_268964334()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B37A54();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v55 = &v53 - v11;
  v12 = sub_268B358D4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_4_9();
  v21 = sub_268B35BC4();
  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = v21;
  v56 = *(v21 + 16);
  if (!v56)
  {

LABEL_16:
    if (qword_2802A4F30 != -1)
    {
LABEL_29:
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v1, qword_2802CDA10);
    (*(v4 + 16))(v9);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v35))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_35_3(&dword_2688BB000, v36, v0, "UsoTaskExtension#validateForMediaDomain#settingEntity could not get usoIdentifiers for entity");
      OUTLINED_FUNCTION_20_2();
    }

    (*(v4 + 8))(v9, v1);
    goto LABEL_27;
  }

  v53 = v4;
  v54 = v1;
  v1 = 0;
  v23 = *(v15 + 80);
  OUTLINED_FUNCTION_258();
  v4 = v22 + v24;
  v0 = v15 + 16;
  v9 = v15 + 8;
  while (1)
  {
    if (v1 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    (*(v15 + 16))(v20, v4 + *(v15 + 72) * v1, v12);
    sub_268B358C4();
    if (!v25)
    {
      v31 = OUTLINED_FUNCTION_25_4();
      v32(v31);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_6_11();
    v27 = v27 && v26 == 0xEF6E6F6974704F77;
    if (v27)
    {
      break;
    }

    v28 = sub_268B38444();

    v29 = OUTLINED_FUNCTION_25_4();
    v30(v29);
    if (v28)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v56 == ++v1)
    {
      v33 = 0;
      goto LABEL_22;
    }
  }

  v37 = OUTLINED_FUNCTION_25_4();
  v38(v37);
LABEL_21:
  v33 = 1;
LABEL_22:

  v40 = v53;
  v39 = v54;
  v41 = v55;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v39, qword_2802CDA10);
  (*(v40 + 16))(v41);
  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109120;
    v44[1] = v33;
    OUTLINED_FUNCTION_34_0();
    _os_log_impl(v45, v46, v47, v48, v49, 8u);
    OUTLINED_FUNCTION_12();
  }

  v50 = *(v40 + 8);
  v51 = OUTLINED_FUNCTION_16_9();
  v52(v51);
LABEL_27:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689646F4()
{
  sub_268B358B4();
  v0 = sub_2689AD480();
  if (v0 == 2)
  {
    v1 = sub_268B358B4();
    sub_2689BAB40(v1, v2);
    if (v3)
    {
      return 24;
    }

    else
    {
      return 16;
    }
  }

  else if (v0)
  {
    return 21;
  }

  else
  {
    return 22;
  }
}

void sub_268964750()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = sub_268B35CF4();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v180 = v20 - v19;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64A8, &qword_268B3F278);
  v21 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v182 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  v187 = &v172 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64B0, &qword_268B3F280);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_20_0();
  v176 = v28 - v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  v178 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18();
  v183 = v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  v177 = v35;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18();
  v185 = v37;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18();
  v181 = v39;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18();
  v179 = v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  v184 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  v186 = (&v172 - v45);
  v191 = sub_268B358D4();
  v46 = OUTLINED_FUNCTION_1(v191);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_20_0();
  v190 = (v51 - v52);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v53);
  v55 = &v172 - v54;
  OUTLINED_FUNCTION_4_9();
  v189 = v0;
  v56 = sub_268B35BC4();
  if (!v56)
  {
    if (qword_2802A4F30 == -1)
    {
LABEL_32:
      OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
      (*(v7 + 16))(v12);
      v78 = v189;

      v79 = sub_268B37A34();
      v80 = sub_268B37EE4();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = v3;
        v82 = OUTLINED_FUNCTION_172_0();
        v83 = OUTLINED_FUNCTION_173_0();
        v196 = v83;
        *v82 = 136315138;
        v198 = v78;
        sub_268B35DB4();

        v84 = sub_268B37C24();
        v86 = sub_26892CDB8(v84, v85, &v196);

        *(v82 + 4) = v86;
        OUTLINED_FUNCTION_57();
        _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        OUTLINED_FUNCTION_20_2();
        v3 = v81;
        OUTLINED_FUNCTION_12();
      }

      (*(v7 + 8))(v12, v4);
      goto LABEL_36;
    }

LABEL_87:
    OUTLINED_FUNCTION_0_0();
    goto LABEL_32;
  }

  v192 = *(v56 + 16);
  if (!v192)
  {

LABEL_36:
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
    v93 = v3;
    goto LABEL_40;
  }

  v173 = v16;
  v172 = v1;
  v174 = v13;
  v175 = v3;
  v3 = 0;
  v57 = 0x8000000268B58380;
  v58 = *(v48 + 80);
  OUTLINED_FUNCTION_258();
  v12 = v59 + v60;
  v193 = v48 + 16;
  v194 = (v48 + 8);
  v61 = v191;
  v195 = v59;
  do
  {
    if (v3 >= *(v59 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    v62 = *(v48 + 72);
    v1 = *(v48 + 16);
    (v1)(v55, v12 + v62 * v3, v61);
    v7 = v61;
    sub_268B358C4();
    if (v63)
    {
      OUTLINED_FUNCTION_28_6();
      v67 = v66 == v65 + 7 && v64 == 0x8000000268B58380;
      if (v67)
      {

        (*v194)(v55, v191);
LABEL_38:

LABEL_39:
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
        v93 = v175;
LABEL_40:
        v94 = 1;
        goto LABEL_41;
      }

      v7 = sub_268B38444();

      v68 = *v194;
      v61 = v191;
      (*v194)(v55, v191);
      if (v7)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v68 = *v194;
      (*v194)(v55, v61);
    }

    ++v3;
    v59 = v195;
  }

  while (v192 != v3);
  v4 = 0;
  while (1)
  {
    if (v4 >= *(v59 + 16))
    {
      __break(1u);
      goto LABEL_87;
    }

    v3 = v190;
    OUTLINED_FUNCTION_176_0();
    v1();
    sub_268B358C4();
    if (!v69)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_28_6();
    if (v71 == v72 && v70 == 0x8000000268B58320)
    {
    }

    else
    {
      v7 = sub_268B38444();

      if ((v7 & 1) == 0)
      {
LABEL_22:
        v68(v190, v191);
        goto LABEL_29;
      }
    }

    v74 = v190;
    v75 = sub_268B358B4();
    v3 = v76;
    if (v75 == 0x6465657073 && v76 == 0xE500000000000000)
    {
      break;
    }

    v7 = OUTLINED_FUNCTION_44_1();

    v68(v74, v191);
    if (v7)
    {
      goto LABEL_44;
    }

LABEL_29:
    ++v4;
    v12 += v62;
    v59 = v195;
    if (v192 == v4)
    {

      v3 = v175;
      goto LABEL_36;
    }
  }

  v68(v74, v191);
LABEL_44:

  if (!sub_268B35DA4())
  {
    goto LABEL_39;
  }

  v7 = sub_268B35FD4();

  if (!v7)
  {
    goto LABEL_39;
  }

  v95 = sub_2689BABA0();
  if ((v96 & 1) == 0)
  {
    v196 = v95;
    goto LABEL_82;
  }

  v97 = v186;
  sub_268B35CE4();
  v1 = *(v173 + 104);
  v98 = v184;
  v99 = v174;
  (v1)(v184, *MEMORY[0x277D5E7A8], v174);
  OUTLINED_FUNCTION_30_4();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
  v104 = v187;
  v105 = *(v188 + 48);
  v106 = OUTLINED_FUNCTION_16_9();
  sub_268965600(v106, v107);
  sub_268965600(v98, v104 + v105);
  OUTLINED_FUNCTION_3_13(v104);
  if (v67)
  {
    OUTLINED_FUNCTION_176_0();
    sub_2688EF38C(v108, v109, v110);
    v111 = OUTLINED_FUNCTION_16_9();
    v112 = v187;
    sub_2688EF38C(v111, v113, &qword_268B3F280);
    OUTLINED_FUNCTION_3_13(v112 + v105);
    v48 = v182;
    v55 = v183;
    v57 = v185;
    if (v67)
    {
      sub_2688EF38C(v112, &qword_2802A64B0, &qword_268B3F280);
      goto LABEL_72;
    }

    goto LABEL_56;
  }

  v195 = v1;
  v114 = v179;
  sub_268965600(v104, v179);
  OUTLINED_FUNCTION_3_13(v104 + v105);
  v57 = v185;
  if (v115)
  {
    OUTLINED_FUNCTION_176_0();
    sub_2688EF38C(v116, v117, v118);
    v119 = OUTLINED_FUNCTION_16_9();
    v112 = v187;
    sub_2688EF38C(v119, v120, &qword_268B3F280);
    (*(v173 + 8))(v114, v99);
    v48 = v182;
    v55 = v183;
    v1 = v195;
LABEL_56:
    sub_2688EF38C(v112, &qword_2802A64A8, &qword_268B3F278);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_9_8();
  v150 = OUTLINED_FUNCTION_24_6();
  v151(v150);
  sub_268965670();
  v152 = OUTLINED_FUNCTION_36_2();
  v153 = OUTLINED_FUNCTION_18_3(v152);
  v97(v153);
  OUTLINED_FUNCTION_26_4(v98);
  OUTLINED_FUNCTION_26_4(v186);
  (v97)(v114, v174);
  v99 = v174;
  OUTLINED_FUNCTION_26_4(v104);
  v48 = v182;
  v55 = v183;
  v1 = v195;
  if ((v194 & 1) == 0)
  {
LABEL_57:
    v121 = v181;
    sub_268B35CE4();
    (v1)(v57, *MEMORY[0x277D5E7B0], v99);
    OUTLINED_FUNCTION_30_4();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
    v126 = *(v188 + 48);
    sub_268965600(v121, v48);
    sub_268965600(v57, v48 + v126);
    OUTLINED_FUNCTION_3_13(v48);
    if (v67)
    {
      sub_2688EF38C(v57, &qword_2802A64B0, &qword_268B3F280);
      v127 = OUTLINED_FUNCTION_103();
      sub_2688EF38C(v127, v128, &qword_268B3F280);
      OUTLINED_FUNCTION_3_13(v48 + v126);
      if (v67)
      {
        sub_2688EF38C(v48, &qword_2802A64B0, &qword_268B3F280);
        goto LABEL_80;
      }
    }

    else
    {
      v12 = v177;
      sub_268965600(v48, v177);
      OUTLINED_FUNCTION_3_13(v48 + v126);
      if (!v129)
      {
LABEL_79:
        v195 = v7;
        OUTLINED_FUNCTION_9_8();
        v164 = OUTLINED_FUNCTION_24_6();
        v165(v164);
        sub_268965670();
        v166 = OUTLINED_FUNCTION_36_2();
        v167 = OUTLINED_FUNCTION_18_3(v166);
        (v48)(v167);
        OUTLINED_FUNCTION_26_4(v57);
        OUTLINED_FUNCTION_26_4(v181);
        (v48)(v12, v174);
        v99 = v174;
        OUTLINED_FUNCTION_26_4(v48);
        if (v194)
        {
LABEL_80:
          v154 = 0x4000000000000000;
          goto LABEL_81;
        }

LABEL_66:
        sub_268B35CE4();
        v136 = v178;
        (v1)(v178, *MEMORY[0x277D5E7B8], v99);
        OUTLINED_FUNCTION_30_4();
        __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
        v141 = *(v188 + 48);
        v142 = v172;
        sub_268965600(v55, v172);
        sub_268965600(v136, v142 + v141);
        OUTLINED_FUNCTION_3_13(v142);
        if (v67)
        {
          OUTLINED_FUNCTION_176_0();
          sub_2688EF38C(v143, v144, v145);
          OUTLINED_FUNCTION_176_0();
          sub_2688EF38C(v146, v147, v148);
          OUTLINED_FUNCTION_3_13(v142 + v141);
          v149 = v175;
          if (v67)
          {
            sub_2688EF38C(v142, &qword_2802A64B0, &qword_268B3F280);
LABEL_85:
            v196 = 0x3FE0000000000000;
            v197 = 0;
            LOBYTE(v198) = 0;
            sub_2689473F4();
            sub_268B36644();

            v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
            v93 = v149;
            goto LABEL_83;
          }
        }

        else
        {
          v155 = v176;
          sub_268965600(v142, v176);
          OUTLINED_FUNCTION_3_13(v142 + v141);
          if (!v156)
          {
            OUTLINED_FUNCTION_9_8();
            v169 = OUTLINED_FUNCTION_24_6();
            v170(v169);
            sub_268965670();
            LODWORD(v195) = OUTLINED_FUNCTION_36_2();
            v171 = *(v136 + 8);
            v171(v141, v99);
            OUTLINED_FUNCTION_26_4(v136);
            OUTLINED_FUNCTION_26_4(v55);
            v171(v155, v99);
            OUTLINED_FUNCTION_26_4(v142);
            v149 = v175;
            if (v195)
            {
              goto LABEL_85;
            }

LABEL_77:
            v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
            __swift_storeEnumTagSinglePayload(v149, 1, 1, v163);

            goto LABEL_42;
          }

          OUTLINED_FUNCTION_176_0();
          sub_2688EF38C(v157, v158, v159);
          OUTLINED_FUNCTION_176_0();
          sub_2688EF38C(v160, v161, v162);
          (*(v173 + 8))(v155, v99);
          v149 = v175;
        }

        sub_2688EF38C(v142, &qword_2802A64A8, &qword_268B3F278);
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_176_0();
      sub_2688EF38C(v130, v131, v132);
      OUTLINED_FUNCTION_176_0();
      sub_2688EF38C(v133, v134, v135);
      (*(v173 + 8))(v12, v99);
    }

    sub_2688EF38C(v48, &qword_2802A64A8, &qword_268B3F278);
    goto LABEL_66;
  }

LABEL_72:
  v154 = 0x3FF0000000000000;
LABEL_81:
  v196 = v154;
LABEL_82:
  v197 = 0;
  LOBYTE(v198) = 0;
  sub_2689473F4();
  v168 = v175;
  sub_268B36644();

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v93 = v168;
LABEL_83:
  v94 = 0;
LABEL_41:
  __swift_storeEnumTagSinglePayload(v93, v94, 1, v92);
LABEL_42:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268965600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64B0, &qword_268B3F280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_268965670()
{
  result = qword_2802A64B8;
  if (!qword_2802A64B8)
  {
    sub_268B35CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A64B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_8()
{
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v3;
  v5 = *(v1 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_3(int a1)
{
  *(v3 - 128) = a1;
  v4 = *(v2 + 8);
  result = v1;
  v6 = *(v3 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_4(uint64_t a1)
{

  return sub_2688EF38C(a1, v1, v2);
}

void OUTLINED_FUNCTION_35_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return sub_268B37BB4();
}

uint64_t OUTLINED_FUNCTION_37_4()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_268B38444();
}

id sub_26896587C(uint64_t a1)
{
  sub_2689658F4(a1);
  v3 = type metadata accessor for MediaPlayerIntent();
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + *(v3 + 48));
  if (v6 != 26)
  {
    v4 = sub_268942D54(v6);
  }

  v7 = sub_268A7528C(v4, v5);

  return [v1 setMediaType_];
}

uint64_t sub_2689658F4(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v10);
  sub_268965BF8();
  v11 = sub_268B37854();
  v12 = *(v11 + 16);
  if (v12)
  {
    v26 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v25);
      sub_26890C900(v25, v24);
      sub_268AC88F0(v24);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      sub_268B38214();
      v14 = *(v26 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v26;
    v16 = off_28795BC38;
    v17 = type metadata accessor for AddSpeakerIntent();
    v16(v15, v17, &off_28795BC28);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Home Automation entities are empty, skip adding to intent.", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return sub_2688C2F6C(v10);
}

unint64_t sub_268965BF8()
{
  result = qword_2802A58E0;
  if (!qword_2802A58E0)
  {
    type metadata accessor for MediaPlayerIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A58E0);
  }

  return result;
}

id SetRepeatStateIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetRepeatStateIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v33 = sub_268B36C44();
  sub_268B37204();
  v32 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v40);
  sub_268AD33CC(v39);
  sub_268B36754();
  v31 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  OUTLINED_FUNCTION_3_8();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v37 = v0;
  v38 = MEMORY[0x277D5F680];
  *&v36 = v1;
  v13 = type metadata accessor for AnalyticsServiceLogger();
  v35[4] = &off_28795F5E0;
  v35[3] = v13;
  v35[0] = v12;
  v34[4] = &off_287960608;
  v34[3] = v2;
  v34[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v35, v13);
  OUTLINED_FUNCTION_3_8();
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v2);
  OUTLINED_FUNCTION_3_8();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = (v26 - v25);
  (*(v28 + 16))(v26 - v25);
  v29 = *v20;
  v30 = *v27;
  v14[5] = v13;
  v14[6] = &off_28795F5E0;
  v14[2] = v29;
  v14[21] = v2;
  v14[22] = &off_287960608;
  v14[18] = v30;
  sub_2688E6514(v39, (v14 + 7));
  v14[12] = v31;
  sub_2688E6514(&v36, (v14 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);

  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  sub_268B34C64();
  sub_2689688AC(v33, v32, &v41, v14, v40);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268966070()
{
  OUTLINED_FUNCTION_26();
  v24 = v1;
  v25 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  OUTLINED_FUNCTION_15_7();
  v18(v13, v15, v6);
  v19 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v20 = v19 + v11;
  v21 = (v19 + v11) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handleRepeatMedia";
  *(v22 + 24) = 17;
  *(v22 + 32) = 2;
  (*(v9 + 32))(v22 + v19, v13, v6);
  *(v22 + v20) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_2689662C8(v24, v25, sub_268958A64, v22);

  (*(v9 + 8))(v15, v6);
  OUTLINED_FUNCTION_23();
}

void sub_2689662C8(void *a1, uint64_t *a2, void (*a3)(uint64_t **), uint64_t a4)
{
  v84 = a2;
  v7 = sub_268B37084();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v7);
  v85 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v83 = v78 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v78 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v78 - v21;
  v23 = swift_allocObject();
  v88 = a3;
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268958D98;
  *(v24 + 24) = v23;

  v25 = sub_268B18100();
  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = v25;
  if (!sub_2688EFD0C(v25))
  {

LABEL_8:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v20, v34, v10);
    v35 = sub_268B37A34();
    v36 = sub_268B37EE4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2688BB000, v35, v36, "No devices found in SetRepeatStateIntent, returning failure", v37, 2u);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    (*(v11 + 8))(v20, v10);
    v38 = sub_268B36EA4();
    v39 = objc_allocWithZone(type metadata accessor for SetRepeatStateIntentResponse());
    v40 = v38;
    v41 = SetRepeatStateIntentResponse.init(code:userActivity:)(5, v38);
    v90 = v41;
    v88(&v90);

    goto LABEL_20;
  }

  v82 = v23;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v28 = *(v11 + 16);
  v79 = v27;
  v80 = v28;
  v78[1] = v11 + 16;
  (v28)(v22);
  v29 = a1;
  v30 = sub_268B37A34();
  v31 = sub_268B37EC4();
  v32 = os_log_type_enabled(v30, v31);
  v81 = a4;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = [v29 repeatState];

    _os_log_impl(&dword_2688BB000, v30, v31, "Handling repeatState with value: %{public}ld", v33, 0xCu);
    MEMORY[0x26D6266E0](v33, -1, -1);
  }

  else
  {

    v30 = v29;
  }

  v42 = *(v11 + 8);
  v42(v22, v10);
  v43 = [v29 repeatState]- 1;
  if (v43 > 2)
  {

    v80(v15, v79, v10);
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2688BB000, v54, v55, "Uknown repeat mode", v56, 2u);
      MEMORY[0x26D6266E0](v56, -1, -1);
    }

    v42(v15, v10);
    v57 = sub_268B36EA4();
    v58 = objc_allocWithZone(type metadata accessor for SetRepeatStateIntentResponse());
    v59 = v57;
    v60 = SetRepeatStateIntentResponse.init(code:userActivity:)(5, v57);
    v90 = v60;
    v88(&v90);

    goto LABEL_20;
  }

  v78[0] = v42;
  v44 = v85;
  v45 = v86;
  (*(v86 + 104))(v85, **(&unk_279C41CC0 + v43), v87);
  v46 = v84;
  v47 = *__swift_project_boxed_opaque_existential_1((v84 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_analyticsService), *(v84 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_analyticsService + 24));
  sub_268920C54();
  sub_268949478(0x6165706552746573, 0xEE00657461745374, v48, v26);

  v49 = *(v46 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_aceServiceHelper);
  sub_268921344();
  if (*(v50 + 16))
  {
    v51 = *(v46 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_playbackController + 32);
    __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_playbackController), *(v46 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_playbackController + 24));
    sub_26895761C();

    v52 = swift_allocObject();
    v52[2] = sub_2688E19F8;
    v52[3] = v24;
    v52[4] = v46;
    v53 = v46;
    sub_268B36CC4();

    (*(v45 + 8))(v44, v87);

LABEL_20:

    return;
  }

  v61 = v83;
  v80(v83, v79, v10);
  v62 = v29;
  v63 = sub_268B37A34();
  v64 = sub_268B37EE4();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v90 = v84;
    *v65 = 136315138;
    v89 = sub_268B18100();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
    v66 = sub_268B38094();
    v68 = v67;

    v69 = sub_26892CDB8(v66, v68, &v90);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_2688BB000, v63, v64, "Unable to get route ids for the intent devices: %s", v65, 0xCu);
    v70 = v84;
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    MEMORY[0x26D6266E0](v70, -1, -1);
    MEMORY[0x26D6266E0](v65, -1, -1);
  }

  (v78[0])(v61, v10);
  v72 = v86;
  v71 = v87;
  v73 = v85;
  v74 = sub_268B36EA4();
  v75 = objc_allocWithZone(type metadata accessor for SetRepeatStateIntentResponse());
  v76 = v74;
  v77 = SetRepeatStateIntentResponse.init(code:userActivity:)(5, v74);
  v90 = v77;
  v88(&v90);

  (*(v72 + 8))(v73, v71);
}

void sub_268966E30(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_268B36C04();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v41 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v36 = v11[2];
  v37 = v17;
  v36(v16);
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = a1;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v18, v19, "Resolving devices for set repeat state", v21, 2u);
    v22 = v21;
    a1 = v20;
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = v11[1];
  v23(v16, v10);
  if ((sub_268921060() & 1) != 0 && (v24 = a1, v25 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState + 32), __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState + 24)), a1 = v24, (sub_2688C3240() & 1) == 0))
  {
    v30 = v38;
    (v36)(v38, v37, v10);
    v31 = sub_268B37A34();
    v32 = sub_268B37EE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2688BB000, v31, v32, "Whole House Audio requests are unsupported on this platform", v33, 2u);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    v23(v30, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SetRepeatStateDevicesResolutionResult();
    *(v34 + 32) = sub_268B17B04(2);
    v35 = sub_268B37CE4();
    v29 = v41;
    (v41)[2](v41, v35);
  }

  else
  {
    v26 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceSelector);
    v28 = v39;
    v27 = v40;
    (*(v39 + 104))(v9, *MEMORY[0x277D5F650], v40);
    [a1 mediaType];
    v29 = v41;
    _Block_copy(v41);
    sub_268905C1C();
    (*(v28 + 8))(v9, v27);
  }

  _Block_release(v29);
  _Block_release(v29);
}

void sub_268967288()
{
  OUTLINED_FUNCTION_26();
  v42 = v0;
  v43 = v1;
  v44 = v3;
  v45 = v2;
  v41 = sub_268B36C04();
  v4 = OUTLINED_FUNCTION_1(v41);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v40 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v39 = *(v15 + 16);
  v39(v22, v23, v12);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_14();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "Resolving devices for set repeat state", v26, 2u);
    OUTLINED_FUNCTION_12();
  }

  v27 = *(v15 + 8);
  v27(v22, v12);
  v28 = sub_268921060();
  v29 = v42;
  if ((v28 & 1) != 0 && (v30 = *(v42 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState + 32), __swift_project_boxed_opaque_existential_1((v42 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState), *(v42 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v33 = v40;
    v39(v40, v23, v12);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "Whole House Audio requests are unsupported on this platform", v36, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v27(v33, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_12_9(v37, xmmword_268B3BBA0);
    v37[2].n128_u64[0] = sub_268B17B04(2);
    v43(v37);
  }

  else
  {
    v31 = *(v29 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceSelector);
    v32 = v41;
    (*(v6 + 104))(v11, *MEMORY[0x277D5F650], v41);
    [v45 mediaType];

    sub_2689064DC();
    (*(v6 + 8))(v11, v32);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268967630()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v22 = __swift_project_value_buffer(v8, qword_2802CDA10);
      (*(v11 + 16))(v0, v22, v8);

      v23 = sub_268B37A34();
      v24 = sub_268B37F04();
      sub_268958D4C(v7, 1u);
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_172_0();
        v25 = OUTLINED_FUNCTION_20_6();
        v67 = v25;
        *v21 = 136315138;
        v26 = type metadata accessor for Device();
        v27 = MEMORY[0x26D6256F0](v7, v26);
        OUTLINED_FUNCTION_30_3(v27, v28);
        v65 = v3;
        OUTLINED_FUNCTION_16_7();
        *(v21 + 4) = v11;
        _os_log_impl(&dword_2688BB000, v23, v24, "SetRepeatStateIntentHandler#resolveDevices Disambiguating between devices: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        v3[1](v0, v8);
        v3 = v65;
      }

      else
      {

        (*(v11 + 8))(v0, v8);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v49 = swift_allocObject();
      OUTLINED_FUNCTION_12_9(v49, xmmword_268B3BBA0);
      v50 = sub_268B2CCFC(v7);
    }

    else
    {
      v65 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v36 = __swift_project_value_buffer(v8, qword_2802CDA10);
      v63 = *(v11 + 16);
      v64 = v36;
      v63(v21);
      v37 = sub_268B37A34();
      v38 = sub_268B37EE4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_172_0();
        v62 = v11;
        v40 = v39;
        v61 = swift_slowAlloc();
        v67 = v61;
        *v40 = 136315138;
        v66 = v7 & 1;
        sub_26890C84C();
        v41 = sub_268B384A4();
        v43 = sub_26892CDB8(v41, v42, &v67);

        *(v40 + 4) = v43;
        _os_log_impl(&dword_2688BB000, v37, v38, "SetRepeatStateIntentHandler#resolveDevices Error resolving devices: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v61);
        OUTLINED_FUNCTION_12();
        v11 = v62;
        OUTLINED_FUNCTION_12();
      }

      v44 = *(v11 + 8);
      v44(v21, v8);
      v3 = v65;
      if ((v7 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v57 = swift_allocObject();
        OUTLINED_FUNCTION_12_9(v57, xmmword_268B3BBA0);
        v57[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v63)(v16, v64, v8);
      v45 = sub_268B37A34();
      v46 = sub_268B37EE4();
      if (os_log_type_enabled(v45, v46))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v47, v48, "SetRepeatStateIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v44(v16, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v49 = swift_allocObject();
      OUTLINED_FUNCTION_12_9(v49, xmmword_268B3BBA0);
      v50 = sub_268B17B04(1);
    }

    v49[2].n128_u64[0] = v50;
LABEL_32:
    v58 = sub_268B37CE4();
    OUTLINED_FUNCTION_15_7();
    v59(v3, v58);

    _Block_release(v3);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v29 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v11 + 16))(v1, v29, v8);

  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  sub_268958D4C(v7, 0);
  if (os_log_type_enabled(v30, v31))
  {
    OUTLINED_FUNCTION_172_0();
    v32 = OUTLINED_FUNCTION_20_6();
    v67 = v32;
    *v21 = 136315138;
    v33 = type metadata accessor for Device();
    v34 = MEMORY[0x26D6256F0](v7, v33);
    OUTLINED_FUNCTION_30_3(v34, v35);
    v65 = v3;
    OUTLINED_FUNCTION_16_7();
    *(v21 + 4) = v11;
    _os_log_impl(&dword_2688BB000, v30, v31, "SetRepeatStateIntentHandler#resolveDevices Success resolving devices: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v3[1](v1, v8);
    v3 = v65;
  }

  else
  {

    (*(v11 + 8))(v1, v8);
  }

  v51 = sub_2688EFD0C(v7);
  if (!v51)
  {
LABEL_30:
    type metadata accessor for SetRepeatStateDevicesResolutionResult();
    goto LABEL_32;
  }

  v52 = v51;
  v67 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v52 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetRepeatStateDevicesResolutionResult();
    v53 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x26D625BD0](v53, v7);
      }

      else
      {
        v54 = *(v7 + 8 * v53 + 32);
      }

      v55 = v54;
      ++v53;
      sub_268B2CC98(v54);

      sub_268B38214();
      v56 = v67[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v52 != v53);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_268967D34()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v63 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      __swift_project_value_buffer(v9, qword_2802CDA10);
      OUTLINED_FUNCTION_15_7();
      v22(v0);

      v23 = sub_268B37A34();
      v24 = sub_268B37F04();
      sub_268958D4C(v8, 1u);
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_172_0();
        v25 = OUTLINED_FUNCTION_20_6();
        v65 = v25;
        *v18 = 136315138;
        v26 = type metadata accessor for Device();
        v27 = MEMORY[0x26D6256F0](v8, v26);
        OUTLINED_FUNCTION_30_3(v27, v28);
        v62 = v9;
        OUTLINED_FUNCTION_16_7();
        *(v18 + 4) = v3;
        _os_log_impl(&dword_2688BB000, v23, v24, "SetRepeatStateIntentHandler#resolveDevices Disambiguating between devices: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v12 + 8))(v0, v62);
      }

      else
      {

        (*(v12 + 8))(v0, v9);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_12_9(v50, xmmword_268B3BBA0);
      v51 = sub_268B2CCFC(v8);
    }

    else
    {
      v62 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v37 = __swift_project_value_buffer(v9, qword_2802CDA10);
      v60 = *(v12 + 16);
      v61 = v37;
      v60(v21);
      v38 = sub_268B37A34();
      v39 = sub_268B37EE4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_172_0();
        v59 = v12;
        v41 = v40;
        v58 = swift_slowAlloc();
        v65 = v58;
        *v41 = 136315138;
        v64 = v8 & 1;
        sub_26890C84C();
        v42 = sub_268B384A4();
        v44 = sub_26892CDB8(v42, v43, &v65);

        *(v41 + 4) = v44;
        _os_log_impl(&dword_2688BB000, v38, v39, "SetRepeatStateIntentHandler#resolveDevices Error resolving devices: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        OUTLINED_FUNCTION_12();
        v12 = v59;
        OUTLINED_FUNCTION_12();
      }

      v45 = *(v12 + 8);
      v45(v21, v9);
      if (v8)
      {
        (v60)(v1, v61, v9);
        v46 = sub_268B37A34();
        v47 = sub_268B37EE4();
        if (os_log_type_enabled(v46, v47))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v48, v49, "SetRepeatStateIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v45(v1, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v50 = swift_allocObject();
        OUTLINED_FUNCTION_12_9(v50, xmmword_268B3BBA0);
        v51 = sub_268B17B04(1);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v50 = swift_allocObject();
        OUTLINED_FUNCTION_12_9(v50, xmmword_268B3BBA0);
        v51 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v50[2].n128_u64[0] = v51;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v9, qword_2802CDA10);
  OUTLINED_FUNCTION_15_7();
  v29(v18);

  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  sub_268958D4C(v8, 0);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_172_0();
    v33 = swift_slowAlloc();
    v65 = v33;
    *v32 = 136315138;
    v34 = type metadata accessor for Device();
    v35 = MEMORY[0x26D6256F0](v8, v34);
    OUTLINED_FUNCTION_30_3(v35, v36);
    v62 = v9;
    OUTLINED_FUNCTION_16_7();
    *(v32 + 4) = v3;
    _os_log_impl(&dword_2688BB000, v30, v31, "SetRepeatStateIntentHandler#resolveDevices Success resolving devices: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v12 + 8))(v18, v62);
  }

  else
  {

    (*(v12 + 8))(v18, v9);
  }

  v52 = sub_2688EFD0C(v8);
  v50 = MEMORY[0x277D84F90];
  if (!v52)
  {
    goto LABEL_32;
  }

  v53 = v52;
  v65 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v53 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetRepeatStateDevicesResolutionResult();
    v54 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x26D625BD0](v54, v8);
      }

      else
      {
        v55 = *(v8 + 8 * v54 + 32);
      }

      v56 = v55;
      ++v54;
      sub_268B2CC98(v55);

      sub_268B38214();
      v57 = v65[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v53 != v54);
    v50 = v65;
LABEL_32:
    v63(v50);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_268968420(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetRepeatStateDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_26896848C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetRepeatStateIntentResponse());
  v5 = SetRepeatStateIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_2689684F8(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetRepeatStateIntentResponse());
  v4 = SetRepeatStateIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_268968584(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268968610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_268B36F24();
  v26 = OUTLINED_FUNCTION_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &a9 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &a9 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &a9 - v39;
  sub_26893B66C(v24, &a9 - v39);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *(v28 + 32);
    v41(v36, v40, v25);
    sub_268B36EC4();
    v42 = *(v28 + 8);
    v42(v36, v25);
    v41(v20, v34, v25);
    if ((*(v28 + 88))(v20, v25) != *MEMORY[0x277D5F6B0])
    {
      v42(v20, v25);
    }
  }

  OUTLINED_FUNCTION_23();
}

id SetRepeatStateIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetRepeatStateIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2689688AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v30[3] = type metadata accessor for AnalyticsServiceImpl();
  v30[4] = &off_2879539D0;
  v30[0] = a4;
  sub_26890C900(a3, v29);
  sub_26890C900(v30, v27);
  sub_26890C900(a5, v26);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = v28;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_26892D53C(a2, v29, *v15, v26, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  sub_26890C900(a3, v29);
  sub_26890C900(v30, v27);
  sub_26890C900(a5, v26);
  v18 = v28;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = sub_268968B3C(a1, v17, v29, *v22, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v24;
}

uint64_t sub_268968B04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_268968B3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v28[3] = sub_268B36C54();
  v28[4] = MEMORY[0x277D5F680];
  v28[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v27[3] = v10;
  v27[4] = &off_2879539D0;
  v27[0] = a4;
  v11 = type metadata accessor for SetRepeatStateIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v26[3] = v10;
  v26[4] = &off_2879539D0;
  v26[0] = v18;
  sub_26890C900(v28, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceSelector] = a2;
  sub_26890C900(v26, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_analyticsService]);
  sub_26890C900(a3, v25);
  sub_26890C900(a5, v24);
  type metadata accessor for AceServiceHelper();
  v19 = swift_allocObject();
  sub_2688E6514(v25, v19 + 16);
  sub_2688E6514(v24, v19 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_aceServiceHelper] = v19;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents27SetRepeatStateIntentHandler_deviceState]);
  v23.receiver = v12;
  v23.super_class = v11;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v20;
}

uint64_t sub_268968D64()
{
  v1 = sub_268B37A24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_268968ED8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268968F10()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_12_9(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SetRepeatStateDevicesResolutionResult();
}

id sub_268968F84()
{
  result = [objc_allocWithZone(type metadata accessor for ResumeMediaIntentHandler()) init];
  qword_2802CD908 = result;
  return result;
}

uint64_t sub_268968FB8()
{
  v10 = sub_268B37F44();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37F34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268B37B14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v11 = MEMORY[0x277D84F90];
  sub_26896ACD0(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268B37F74();
  qword_2802CD910 = result;
  return result;
}

uint64_t sub_26896920C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v75 = a2;
  v2 = sub_268B35434();
  v3 = OUTLINED_FUNCTION_1(v2);
  v67 = v4;
  v68 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v66 = v8 - v7;
  v9 = sub_268B35494();
  v10 = OUTLINED_FUNCTION_1(v9);
  v71 = v11;
  v72 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v73 = v14;
  MEMORY[0x28223BE20](v15);
  v76 = &v66 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v66 - v19;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v69 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v70 = &v66 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v66 - v31;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v34 = *(v24 + 16);
  v34(v32, v33, v21);
  v35 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "ResumeMediaFlowStrategy#actionForInput called", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v24 + 8);
  v38(v32, v21);
  v39 = v76;
  v40 = v74;
  sub_268B35414();
  sub_26893BA8C(v39);
  v41 = type metadata accessor for MediaPlayerIntent();
  LODWORD(v39) = __swift_getEnumTagSinglePayload(v20, 1, v41);
  sub_2688C2E64(v20);
  if (v39 == 1)
  {
    v42 = v69;
    v34(v69, v33, v21);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "ResumeMediaFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v45, 2u);
      OUTLINED_FUNCTION_12();
    }

    v38(v42, v21);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_4_10();
    return sub_268B34ED4();
  }

  else
  {
    v69 = (v24 + 8);
    v47 = v73;
    sub_268B35414();
    v49 = v71;
    v48 = v72;
    v50 = (*(v71 + 88))(v47, v72);
    if (v50 == *MEMORY[0x277D5C128] || v50 == *MEMORY[0x277D5C150] || v50 == *MEMORY[0x277D5C148] || v50 == *MEMORY[0x277D5C160])
    {
      (*(v49 + 8))(v47, v48);
      return sub_268B34EC4();
    }

    else
    {
      v34(v70, v33, v21);
      v54 = v66;
      v55 = v67;
      v56 = v68;
      (*(v67 + 16))(v66, v40, v68);
      v57 = sub_268B37A34();
      v58 = sub_268B37EE4();
      if (os_log_type_enabled(v57, v58))
      {
        v60 = v54;
        v61 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v77 = v74;
        *v61 = 136315138;
        sub_268B35414();
        v62 = sub_268B37C24();
        v64 = v63;
        (*(v55 + 8))(v60, v56);
        v65 = sub_26892CDB8(v62, v64, &v77);
        v48 = v72;

        *(v61 + 4) = v65;
        _os_log_impl(&dword_2688BB000, v57, v58, "ResumeMediaFlowStrategy#actionForInput received unsupported parse type %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);
        v49 = v71;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v55 + 8))(v54, v56);
      }

      v38(v70, v21);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_1_16();
      OUTLINED_FUNCTION_4_10();
      sub_268B34ED4();
      return (*(v49 + 8))(v73, v48);
    }
  }
}

uint64_t sub_2689698A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v41 = a3;
  v42 = a2;
  v5 = sub_268B37AB4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v47 = v7;
  v48 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = sub_268B37B14();
  v14 = OUTLINED_FUNCTION_1(v13);
  v45 = v15;
  v46 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_268B35494();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4D68 != -1)
  {
    swift_once();
  }

  v40 = qword_2802CD910;
  (*(v24 + 16))(&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v26 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v24 + 32))(v31 + v28, v27, v21);
  v32 = (v31 + v29);
  v33 = v42;
  v35 = v43;
  v34 = v44;
  *v32 = v41;
  v32[1] = v34;
  *(v31 + v30) = v33;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_26896ABC4;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_1;
  v36 = _Block_copy(aBlock);
  v37 = v33;

  sub_268B37AE4();
  v49 = MEMORY[0x277D84F90];
  sub_26896ACD0(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v38 = v48;
  sub_268B38124();
  MEMORY[0x26D625950](0, v20, v12, v36);
  _Block_release(v36);
  (*(v47 + 8))(v12, v38);
  (*(v45 + 8))(v20, v46);
}

void sub_268969C68(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t *a4, void *a5)
{
  v67 = a5;
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v69 = a1;
  v71 = sub_268B35494();
  v75 = *(v71 - 8);
  v5 = *(v75 + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v63 - v12;
  v68 = type metadata accessor for MediaPlayerIntent();
  v14 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v70 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v63 = v18[2];
  v64 = v24;
  v63(v23);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v9;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "ResumeMediaFlowStrategy#makeIntentFromParse called", v31, 2u);
    v32 = v31;
    v9 = v30;
    v18 = v29;
    v17 = v28;
    v16 = v27;
    MEMORY[0x26D6266E0](v32, -1, -1);
  }

  v65 = v18[1];
  v65(v23, v17);
  v33 = *(v75 + 16);
  v34 = v69;
  v35 = v71;
  v33(v9, v69, v71);
  sub_26893BC0C(v9, 1, v36, v37, v38, v39, v40, v41, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  if (__swift_getEnumTagSinglePayload(v13, 1, v68) == 1)
  {
    sub_2688C2E64(v13);
    (v63)(v70, v64, v17);
    v42 = v66;
    v33(v66, v34, v35);
    v43 = v35;
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v76 = v74;
      *v46 = 136315138;
      v33(v9, v42, v43);
      v47 = sub_268B37C24();
      v49 = v48;
      (*(v75 + 8))(v42, v43);
      v50 = sub_26892CDB8(v47, v49, &v76);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v44, v45, "ResumeMediaFlowStrategy#makeIntentFromParse received unexpected parse: %s", v46, 0xCu);
      v51 = v74;
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x26D6266E0](v51, -1, -1);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    else
    {

      (*(v75 + 8))(v42, v35);
    }

    v65(v70, v17);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v53 = swift_allocError();
    *v54 = 45;
    v72(v53, 1);
  }

  else
  {
    sub_2688C0464(v13, v16);
    if (v74)
    {
      v52 = v74;
    }

    else
    {
      v52 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
    }

    v55 = v74;
    sub_2689A8C9C(v16);
    v56 = v67;
    v57 = v67[5];
    v58 = v67[6];
    __swift_project_boxed_opaque_existential_1(v67 + 2, v57);
    v59 = v16;
    v60 = swift_allocObject();
    v61 = v73;
    v60[2] = v72;
    v60[3] = v61;
    v60[4] = v52;
    v62 = v52;

    sub_268AD35F4(v62, &off_287953B28, (v56 + 7), sub_26896ACC4, v60, v57, v58);

    sub_2688C2F6C(v59);
  }
}

uint64_t sub_26896A308(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "ResumeMediaFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_26896A500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896A590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_26896A5DC()
{
  if (qword_2802A4D60 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD908;

  return v1;
}

uint64_t sub_26896A638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896A6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896A710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896A77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_26896A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_26896A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_26896A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_26896AA5C(uint64_t a1, uint64_t a2)
{
  result = sub_26896ACD0(&qword_2802A64F0, a2, type metadata accessor for ResumeMediaFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26896AAFC()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

void sub_26896ABC4()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = *(v5 + 8);

  sub_268969C68(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26896AC84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26896ACD0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_10()
{

  return static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
}

id sub_26896AD58()
{
  if (qword_2802A4ED8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9B8;
  qword_2802CD918 = qword_2802CD9B8;

  return v1;
}

void sub_26896ADBC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v42 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_268B37A54();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v41 = (v17 - v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v43 = v3;
  v44 = v10;
  v20 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v37 = *(v14 + 16);
  v38 = v20;
  v37(v0);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v23);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v21, v22, "SetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse called");
    OUTLINED_FUNCTION_12();
  }

  v24 = *(v14 + 8);
  v24(v0, v11);
  v25 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v39 = v6;

  v40 = v8;

  if (sub_268B34CB4())
  {
    v26 = [objc_allocWithZone(MEMORY[0x277D47818]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6510, &unk_268B3F610);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_268B3BBC0;
    v28 = *MEMORY[0x277D48950];
    v29 = sub_268B37BF4();
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 32) = v29;
    *(v27 + 40) = v30;
    sub_268A823BC(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_268B3BBA0;
    *(v31 + 32) = v26;
    v32 = v26;
    v33 = v40;
    sub_26896B16C(v31, 0, v39, v1, v40, v44, v42, v43);
  }

  else
  {
    (v37)(v41, v38, v11);
    v34 = sub_268B37A34();
    v35 = sub_268B37ED4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v36);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v34, v35, "VolumeControlsViewProvider#makeAceViewsForHandle Not macOS, skip rendering volume snippet");
      OUTLINED_FUNCTION_12();
    }

    v24(v41, v11);
    v33 = v40;
    sub_26896B16C(MEMORY[0x277D84F90], 0, v39, v1, v40, v44, v42, v43);
  }

  OUTLINED_FUNCTION_23();
}

void sub_26896B16C(uint64_t a1, char a2, char *a3, void *a4, char *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v94 = a6;
  v95 = a8;
  v93 = a7;
  v96 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v88 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v92 = &v88 - v21;
  v22 = sub_268B34E24();
  v23 = *(v22 - 8);
  v90 = v22;
  v91 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_268B37A54();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    a1 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v32 = OBJC_IVAR___SetVolumeLevelIntentResponse_code;
  swift_beginAccess();
  v33 = *&a3[v32];
  if (v33 == 101)
  {
    v34 = swift_allocObject();
    v45 = v95;
    v46 = v96;
    v34[2] = a4;
    v34[3] = v46;
    v47 = v93;
    v48 = v94;
    v34[4] = a3;
    v34[5] = v48;
    v34[6] = v47;
    v34[7] = v45;
    v34[8] = a1;
    v39 = "HandleIntentStrategy";
    v40 = a4[5];
    v41 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v40);

    v49 = v46;
    v50 = a3;

    v44 = sub_26896F630;
    goto LABEL_8;
  }

  if (v33 == 100)
  {
    v34 = swift_allocObject();
    v35 = v95;
    v36 = v96;
    v34[2] = a4;
    v34[3] = v36;
    v37 = v93;
    v38 = v94;
    v34[4] = a3;
    v34[5] = v38;
    v34[6] = v37;
    v34[7] = v35;
    v34[8] = a1;
    v39 = "VolumeControls#AlreadyAtMinimum";
    v40 = a4[5];
    v41 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v40);

    v42 = v36;
    v43 = a3;

    v44 = sub_26896F6A8;
LABEL_8:
    sub_2689CE88C(0xD00000000000001FLL, v39 | 0x8000000000000000, v44, v34, v40, v41);

    return;
  }

  v51 = [a3 volumeLevel];
  if (v51)
  {
    v31 = v96;
    v26 = v51;
    v20 = sub_2689B8400();
    v92 = v26;
    [v26 doubleValue];
    v53 = round(v52);
    if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v53 > -9.22337204e18)
    {
      if (v53 < 9.22337204e18)
      {
        if (v20 && (v54 = [v20 context]) != 0)
        {
          v55 = v54;
          v56 = [v54 nowPlayingState] == 1;

          LODWORD(v90) = v56 << 8;
        }

        else
        {
          LODWORD(v90) = 0;
        }

        v91 = v53;
        v57 = [v96 volumeLevel];
        if (v57)
        {
          v58 = v57;
          v59 = [v57 volumeSettingState] == 5;

          v60 = v59 << 16;
        }

        else
        {
          v60 = 0;
        }

        v69 = [v96 volumeLevel];
        v70 = v69;
        if (v69)
        {
          v71 = [v69 volumeSettingState] == 1;

          LODWORD(v70) = v71 << 24;
        }

        v72 = swift_allocObject();
        v74 = v95;
        v73 = v96;
        v72[2] = a4;
        v72[3] = v73;
        v75 = v93;
        v76 = v94;
        v72[4] = a3;
        v72[5] = v76;
        v72[6] = v75;
        v72[7] = v74;
        v72[8] = a1;

        v77 = v73;
        v78 = a3;

        sub_268A32664(v91, v60 | v90 | v70, 1, sub_26896F618, v72);

        return;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_2802A4F30 != -1)
  {
LABEL_36:
    swift_once();
  }

  v61 = __swift_project_value_buffer(v27, qword_2802CDA10);
  (*(v28 + 16))(v31, v61, v27);
  v62 = sub_268B37A34();
  v63 = sub_268B37EE4();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v89 = v62;
    v65 = v64;
    *v64 = 0;
    _os_log_impl(&dword_2688BB000, v89, v63, "SetVolumeLevelHandleIntentStrategy#makeIntentHandledResponse Did not receive volume level from response", v64, 2u);
    v66 = v65;
    v62 = v89;
    MEMORY[0x26D6266E0](v66, -1, -1);
  }

  (*(v28 + 8))(v31, v27);
  v67 = sub_268B36E84();
  if (!v68)
  {
    sub_268947F08();
  }

  v89 = v67;
  v79 = v90;
  v80 = __swift_project_boxed_opaque_existential_1(a4 + 12, a4[15]);
  (*(v91 + 104))(v26, *MEMORY[0x277D5BC00], v79);
  v81 = sub_268B350F4();
  v82 = v92;
  __swift_storeEnumTagSinglePayload(v92, 1, 1, v81);
  v83 = *MEMORY[0x277D5B908];
  v84 = sub_268B34B94();
  (*(*(v84 - 8) + 104))(v15, v83, v84);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v84);
  v85 = *v80;
  sub_2688F1FA4(v82, v20, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v20, 1, v81) == 1)
  {
    sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(*(v81 - 8) + 8))(v20, v81);
  }

  sub_2688E2B50();

  sub_2688C058C(v15, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v92, &unk_2802A57B0, &unk_268B3CE00);
  (*(v91 + 8))(v26, v79);
  sub_2688C2ECC();
  v86 = swift_allocError();
  *v87 = 103;
  v97[0] = v86;
  v98 = 1;
  v93(v97);
  sub_2688C058C(v97, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_26896BA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const char *a21, const char *a22, char a23)
{
  OUTLINED_FUNCTION_26();
  v118 = v24;
  v136 = v26;
  v137 = v25;
  v130 = v27;
  v134 = v29;
  v135 = v28;
  v31 = v30;
  v127 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v133 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v39 = OUTLINED_FUNCTION_22(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_78();
  v131 = v43;
  OUTLINED_FUNCTION_9();
  v132 = sub_268B34E24();
  v44 = OUTLINED_FUNCTION_1(v132);
  v129 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_0();
  v128 = v49 - v48;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v50 = OUTLINED_FUNCTION_4(v121);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_78();
  v122 = v54;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v126);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v57);
  v59 = (&v118 - v58);
  v60 = sub_268B37A54();
  v61 = OUTLINED_FUNCTION_1(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_20_0();
  v68 = v66 - v67;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v70 = __swift_project_value_buffer(v60, qword_2802CDA10);
  v71 = *(v63 + 16);
  v120 = v70;
  v119 = v71;
  (v71)(v23);
  v72 = sub_268B37A34();
  v73 = sub_268B37ED4();
  if (os_log_type_enabled(v72, v73))
  {
    v123 = v68;
    v74 = OUTLINED_FUNCTION_14();
    *v74 = 0;
    v68 = v123;
    _os_log_impl(&dword_2688BB000, v72, v73, a21, v74, 2u);
    OUTLINED_FUNCTION_12();
  }

  v77 = *(v63 + 8);
  v75 = v63 + 8;
  v76 = v77;
  v77(v23, v60);
  sub_2688F1FA4(v127, v59, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v78 = *v59;
    v119(v68, v120, v60);
    v79 = v78;
    v80 = sub_268B37A34();
    v81 = sub_268B37EE4();

    if (os_log_type_enabled(v80, v81))
    {
      v127 = a22;
      v82 = swift_slowAlloc();
      v123 = v68;
      v83 = v82;
      v84 = swift_slowAlloc();
      v138 = v78;
      v139[0] = v84;
      *v83 = 136446210;
      v85 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
      v86 = sub_268B37C24();
      v126 = v75;
      v88 = sub_26892CDB8(v86, v87, v139);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_2688BB000, v80, v81, v127, v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v76(v123, v60);
    }

    else
    {

      v76(v68, v60);
    }

    sub_268B36E84();
    if (!v96)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v99 = OUTLINED_FUNCTION_22_5();
    (*(v129 + 104))(v128, *MEMORY[0x277D5BC00], v132);
    v100 = sub_268B350F4();
    v101 = v131;
    __swift_storeEnumTagSinglePayload(v131, 1, 1, v100);
    v102 = *MEMORY[0x277D5B8E0];
    v103 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v103);
    (*(v104 + 104))(v133, v102, v103);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v103);
    v108 = *v99;
    v109 = v125;
    sub_2688F1FA4(v101, v125, &unk_2802A57B0, &unk_268B3CE00);
    v110 = OUTLINED_FUNCTION_17_8();
    if (__swift_getEnumTagSinglePayload(v110, v111, v100) == 1)
    {
      sub_2688C058C(v109, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      OUTLINED_FUNCTION_20_7();
      (*(v112 + 8))(v109, v100);
    }

    v113 = v128;
    v114 = v133;
    sub_2688E2B50();

    sub_2688C058C(v114, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v131, &unk_2802A57B0, &unk_268B3CE00);
    (*(v129 + 8))(v113, v132);
    v115 = *OUTLINED_FUNCTION_22_5();
    sub_268948308(MEMORY[0x277D84F90]);
    v139[0] = v78;
    v140 = 1;
    v116 = v78;
    v130(v139);

    sub_2688C058C(v139, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v89 = v122;
    sub_2689186C8(v59, v122);
    v90 = v135[21];
    __swift_project_boxed_opaque_existential_1(v135 + 17, v135[20]);
    v91 = sub_268B36FA4();
    v92 = v124;
    sub_2688F1FA4(v89, v124, &unk_2802A56E0, &unk_268B3CDF0);
    v93 = *(v121 + 48);
    v94 = *(v92 + v93);
    if (v91)
    {
      v95 = *(v92 + v93);
      sub_26896C360();
    }

    else
    {
      sub_26896CEBC(v92, v94, v137, v31, v134, v118, a23 & 1, v130, v136, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
    }

    sub_2688C058C(v89, &unk_2802A56E0, &unk_268B3CDF0);
    v97 = sub_268B350F4();
    OUTLINED_FUNCTION_4(v97);
    (*(v98 + 8))(v92);
  }

  OUTLINED_FUNCTION_23();
}