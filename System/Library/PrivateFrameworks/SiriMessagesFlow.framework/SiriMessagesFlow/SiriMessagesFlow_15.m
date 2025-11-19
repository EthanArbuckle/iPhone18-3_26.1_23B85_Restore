void sub_267CCFE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 0x6E65697069636572 || a4 != 0xE900000000000074)
  {
    OUTLINED_FUNCTION_21_9();
  }

  sub_267E664D8();
}

uint64_t sub_267CCFECC()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_267EF43F8();
  v1[9] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267CCFF70()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  v6 = sub_267EF4928();
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_63();
  v10(v9);
  sub_267EF43E8();
  v11 = sub_267E64470(v6, v0 + 2, v1, 0);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_267CD008C()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A858, &unk_267F06BC0);
  v1[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF44C8();
  v1[8] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[9] = v9;
  v11 = *(v10 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CD01AC()
{
  v83 = v0;
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow55SearchForMessagesContactNeedsDisambiguationFlowStrategy_selectedPersons;
  if (!*(*(v0[4] + OBJC_IVAR____TtC16SiriMessagesFlow55SearchForMessagesContactNeedsDisambiguationFlowStrategy_selectedPersons) + 16))
  {
    v42 = 0x8000000267F15510;
    v43 = 0xD000000000000013;
LABEL_18:
    v44 = v0[11];
    v45 = v0[12];
    v46 = v0[10];
    v47 = v0[7];
    sub_267C266B0();
    swift_allocError();
    *v48 = v43;
    v48[1] = v42;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
    goto LABEL_21;
  }

  v80 = v0[4];
  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  sub_267EF4938();
  v7 = sub_267EF44B8();
  v9 = v8;
  v11 = *(v5 + 8);
  v10 = v5 + 8;
  v12 = OUTLINED_FUNCTION_63();
  v79 = v13;
  v13(v12);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v14 = sub_267EF8A08();
  __swift_project_value_buffer(v14, qword_280240FB0);

  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();

  if (os_log_type_enabled(v15, v16))
  {
    v4 = OUTLINED_FUNCTION_48();
    v1 = OUTLINED_FUNCTION_52();
    *&v81 = v1;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(v7, v9, &v81);
    OUTLINED_FUNCTION_57(&dword_267B93000, v17, v18, "#ReadContactDisambiguation Updating intent with resolved %s");
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v19 = v7 == 0x6E65697069636572 && v9 == 0xE900000000000074;
  if (v19 || (sub_267EF9EA8() & 1) != 0)
  {

    v20 = v0[11];
    v21 = OUTLINED_FUNCTION_27_9();
    sub_267EF4938();
    sub_267EF44A8();
    v22 = OUTLINED_FUNCTION_15_16();
    v23(v22);
    v24 = sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    OUTLINED_FUNCTION_29_12(v24, v25, v26, v27, v28, v29, v30, v31, v79, v80);
    v32 = sub_267EF4918();
    sub_267CD22EC(v32, &selRef_recipients);
    v33 = OUTLINED_FUNCTION_54_1();
    v34 = sub_267E71558(v33, v1, v4);

    v35 = sub_267DE8938(v21, v34);
    goto LABEL_12;
  }

  v62 = v7 == 0x7265646E6573 && v9 == 0xE600000000000000;
  if (!v62 && (sub_267EF9EA8() & 1) == 0)
  {
    *&v81 = 0;
    *(&v81 + 1) = 0xE000000000000000;
    sub_267EF9B68();

    *&v81 = 0xD00000000000002FLL;
    *(&v81 + 1) = 0x8000000267F154E0;
    MEMORY[0x26D608E60](v7, v9);

    v42 = *(&v81 + 1);
    v43 = v81;
    goto LABEL_18;
  }

  v63 = v0[10];
  v64 = OUTLINED_FUNCTION_27_9();
  sub_267EF4938();
  sub_267EF44A8();
  v65 = OUTLINED_FUNCTION_15_16();
  v66(v65);
  v67 = sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  OUTLINED_FUNCTION_29_12(v67, v68, v69, v70, v71, v72, v73, v74, v79, v80);
  v75 = sub_267EF4918();
  sub_267CD22EC(v75, &selRef_senders);
  v76 = OUTLINED_FUNCTION_54_1();
  v77 = sub_267E71558(v76, v1, v4);

  v35 = sub_267DE8BAC(v64, v77);
LABEL_12:
  v36 = v35;
  v37 = *(v10 + v2);
  if (*(v37 + 16) && (v38 = *(v37 + 32), sub_267BAF0DC(v38)))
  {
    sub_267BBD0EC(0, (v38 & 0xC000000000000001) == 0, v38);
    if ((v38 & 0xC000000000000001) != 0)
    {
      v78 = v36;

      v41 = MEMORY[0x26D609870](0, v38);
    }

    else
    {
      v39 = *(v38 + 32);
      v40 = v36;
      v41 = v39;
    }

    *(&v82 + 1) = sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    *&v81 = v41;
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
    v50 = v36;
  }

  v52 = v0[11];
  v51 = v0[12];
  v53 = v0[10];
  v55 = v0[6];
  v54 = v0[7];
  v56 = v0[5];
  v57 = v0[2];
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  sub_267EF4388();
  OUTLINED_FUNCTION_63();
  sub_267EF4508();

  v58 = *(v55 + 8);
  v59 = OUTLINED_FUNCTION_63();
  v60(v59);

  OUTLINED_FUNCTION_17();
LABEL_21:

  return v49();
}

uint64_t sub_267CD0724()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_267EF4158();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF44C8();
  v1[13] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[14] = v9;
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CD0818()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  sub_267EF4938();
  v5 = sub_267EF44B8();
  v7 = v6;
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_63();
  v10(v9);
  if (v5 == 0x6E65697069636572 && v7 == 0xE900000000000074)
  {

    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_21_9();
  }

  v13 = v0[12];
  v14 = v0[8];
  v15 = v0[9];
  v16 = sub_267EF4928();
  v17 = sub_267E6466C();
  v0[16] = v17;

  v18 = v15[5];
  v19 = v15[6];
  __swift_project_boxed_opaque_existential_0(v15 + 2, v18);
  (*(v19 + 8))(v18, v19);
  sub_267CD1040(v17, v0 + 2, v12 & 1, v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = sub_267EF8A08();
  __swift_project_value_buffer(v20, qword_280240FB0);
  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_32();
    *v23 = 0;
    _os_log_impl(&dword_267B93000, v21, v22, "#ReadContactDisambiguation prompting for disambiguation", v23, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v24 = v0[8];

  v25 = sub_267EF4908();
  v0[17] = v25;
  v26 = swift_task_alloc();
  v0[18] = v26;
  *v26 = v0;
  v26[1] = sub_267CD0AAC;
  v27 = v0[12];
  v28 = v0[9];
  v29 = v0[7];

  return (sub_267E66A84)(v29, v17, v27, v25);
}

uint64_t sub_267CD0AAC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = v2[18];
  *v4 = *v1;
  *(v3 + 152) = v0;

  v6 = v2[17];
  v7 = v2[16];
  if (v0)
  {

    v8 = sub_267CD0C80;
  }

  else
  {

    v8 = sub_267CD0C0C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267CD0C0C()
{
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_14_18();
  v1(v0);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CD0C80()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_14_18();
  v2(v1);

  OUTLINED_FUNCTION_17();
  v4 = *(v0 + 152);

  return v3();
}

uint64_t sub_267CD0CF4(uint64_t a1, char a2)
{
  if (qword_280228818 != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_0();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);

  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_52();
    v28 = v7;
    *v6 = 136315138;
    v8 = sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v9 = MEMORY[0x26D609000](a1, v8);
    v11 = sub_267BA33E8(v9, v10, &v28);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#ReadContactDisambiguation creating SDAs for contacts %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v28 = MEMORY[0x277D84F90];
  v12 = sub_267BAF0DC(a1);
  for (i = 0; v12 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D609870](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v14 = *(a1 + 8 * i + 32);
    }

    v15 = v14;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v16 = sub_267EF6268();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_267EF6258();
    v19 = sub_267EF6168();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_267EF6158();
    v22 = [v15 displayName];
    sub_267EF9028();

    sub_267EF6148();

    if (a2)
    {
      sub_267EF6218();
    }

    else
    {
      sub_267EF6248();
    }

    v23 = sub_267EF6428();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_267EF6418();
    sub_267EF63E8();

    MEMORY[0x26D608F90]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    sub_267EF9368();
  }

  sub_267BC8938();
}

uint64_t sub_267CD1040@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v79) = a3;
  v81 = a1;
  v84 = a4;
  v5 = sub_267EF53D8();
  v6 = OUTLINED_FUNCTION_58(v5);
  v83 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v11);
  v82 = &v75 - v12;
  OUTLINED_FUNCTION_26_2();
  v13 = sub_267EF2E38();
  v14 = OUTLINED_FUNCTION_58(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCE30;
  if (qword_280228898 != -1)
  {
    swift_once();
  }

  v23 = qword_280241050;
  v24 = sub_267EF54C8();
  v25 = MEMORY[0x277D5E210];
  *(inited + 56) = v24;
  *(inited + 64) = v25;
  *(inited + 32) = v23;
  v26 = qword_280228888;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_280241040;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  *(inited + 104) = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(inited + 72) = v27;
  v28 = qword_280228870;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_280241028;
  *(inited + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229760, &unk_267F004C0);
  *(inited + 144) = sub_267C586C4(&qword_280229768, &qword_280229760, &unk_267F004C0);
  *(inited + 112) = v29;
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  OUTLINED_FUNCTION_54_1();

  sub_267EF3B68();
  type metadata accessor for ContactIdOrBase64PersonIdentifierProvider();
  v31 = swift_initStackObject();
  v32 = v81;
  sub_267E6FE5C(v81, v21, v31, v33, v34, v35, v36, v37, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0], v85[1]);
  v39 = v38;
  (*(v16 + 8))(v21, v13);
  sub_267C37CA8(inited, v39, a2);

  swift_setDeallocating();
  sub_267DB70BC();
  v40 = v82;
  sub_267CD0CF4(v32, v79 & 1);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v41 = sub_267EF8A08();
  v42 = __swift_project_value_buffer(v41, qword_280240FB0);
  v43 = v83;
  v44 = *(v83 + 16);
  v45 = v80;
  v44(v80, v40, v5);
  v79 = v42;
  v46 = sub_267EF89F8();
  v47 = sub_267EF95D8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_48();
    v77 = OUTLINED_FUNCTION_52();
    v86 = v77;
    *v48 = 136315138;
    v49 = v78;
    v44(v78, v45, v5);
    sub_267EF5458();
    v85[3] = v5;
    v85[4] = sub_267CD23C8(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v85);
    v44(boxed_opaque_existential_0, v49, v5);
    v51 = sub_267EF5448();
    v53 = v52;
    v76 = v44;
    v54 = v5;
    v55 = v49;
    v56 = *(v83 + 8);
    v56(v55, v5);
    v56(v45, v5);
    __swift_destroy_boxed_opaque_existential_0(v85);
    v57 = sub_267BA33E8(v51, v53, &v86);
    v40 = v82;

    *(v48 + 4) = v57;
    _os_log_impl(&dword_267B93000, v46, v47, "#ReadContactDisambiguation submitting NLv4 dialog act: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    OUTLINED_FUNCTION_32_0();
    v43 = v83;
    OUTLINED_FUNCTION_32_0();

    v58 = v76;
  }

  else
  {

    v56 = *(v43 + 8);
    v56(v45, v5);
    v58 = v44;
    v54 = v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v59 = *(v43 + 72);
  v60 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_267EFC020;
  v58(v61 + v60, v40, v54);
  sub_267EF4088();
  v62 = sub_267E7151C(v81);

  v63 = sub_267EF89F8();
  v64 = sub_267EF95D8();

  v65 = v54;
  if (os_log_type_enabled(v63, v64))
  {
    v66 = OUTLINED_FUNCTION_48();
    v67 = OUTLINED_FUNCTION_52();
    v85[0] = v67;
    *v66 = 136315138;
    v68 = sub_267EF8AE8();
    v69 = MEMORY[0x26D608FD0](v62, v68);
    v71 = sub_267BA33E8(v69, v70, v85);

    *(v66 + 4) = v71;
    OUTLINED_FUNCTION_57(&dword_267B93000, v72, v73, "#ReadContactDisambiguation Donating RRaaS entities: %s");
    __swift_destroy_boxed_opaque_existential_0(v67);
    v40 = v82;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF4058();
  return (v56)(v40, v65);
}

uint64_t sub_267CD17A4()
{
  v0 = sub_267C4779C();
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow55SearchForMessagesContactNeedsDisambiguationFlowStrategy_selectedPersons);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy()
{
  result = qword_28022A838;
  if (!qword_28022A838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267CD18B4()
{
  type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy();

  JUMPOUT(0x26D602E30);
}

uint64_t sub_267CD1930(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_267CD19CC;

  return sub_267CCFECC();
}

uint64_t sub_267CD19CC(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_15_0();
  *v9 = v8;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_267CD1AD4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CD2410;

  return sub_267CD008C();
}

uint64_t sub_267CD1B80()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CD2410;

  return sub_267CD0724();
}

uint64_t sub_267CD1C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B588] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267CD2410;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_267CD1CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B598] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267CD2410;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_267CD1DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B590] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267CD1E94;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_267CD1E94()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267CD1F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B5A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267CD2410;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_267CD2044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_267CD2094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267CD2410;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267CD2174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy();
  *v15 = v7;
  v15[1] = sub_267CD2410;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_267CD22EC(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v4 = sub_267EF92F8();

  return v4;
}

uint64_t sub_267CD2360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBF0, &unk_267F01C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267CD23C8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_267CD2414(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

uint64_t sub_267CD2424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 40);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;

  sub_267CE9478();
}

void sub_267CD24C0(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - v9;
  v11 = sub_267EF4CC8();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_267EF4228();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v35 - v22);
  sub_267C6D464(a1, &v35 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    v25 = *v23;
    v38(v24);
  }

  else
  {
    (*(v16 + 32))(v19, v23, v15);
    v35 = a3;
    v26 = *(a4 + 32);
    v27 = v26[5];
    v28 = v26[6];
    __swift_project_boxed_opaque_existential_0(v26 + 2, v27);
    (*(v28 + 8))(v42, v27, v28);
    v29 = v26[5];
    v30 = v26[6];
    __swift_project_boxed_opaque_existential_0(v26 + 2, v29);
    (*(v30 + 8))(v41, v29, v30);
    __swift_project_boxed_opaque_existential_0(v41, v41[3]);
    sub_267EF3BC8();
    v31 = sub_267EF4158();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v31);
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_267EF3F68();
    sub_267B9FF34(v39, &unk_28022CF80, &unk_267EFED50);
    sub_267B9FF34(v10, &unk_28022AE40, &unk_267EFCB60);
    __swift_destroy_boxed_opaque_existential_0(v42);
    __swift_destroy_boxed_opaque_existential_0(v41);
    v32 = v26[5];
    v33 = v26[6];
    __swift_project_boxed_opaque_existential_0(v26 + 2, v32);
    (*(v33 + 16))(v42, v32, v33);
    __swift_project_boxed_opaque_existential_0(v42, v42[3]);
    sub_267EF4CB8();
    v34 = swift_allocObject();
    *(v34 + 16) = v38;
    *(v34 + 24) = v35;

    sub_267EF4238();

    (*(v36 + 8))(v14, v37);
    (*(v16 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }
}

void *sub_267CD293C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_267CD296C()
{
  sub_267CD293C();

  return swift_deallocClassInstance();
}

uint64_t sub_267CD29C8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267CD2A7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceOfflineNotificationAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_267CD2AD0()
{
  OUTLINED_FUNCTION_11_22();
  v20 = v0;
  v2 = v1;
  v19 = sub_267EF6A08();
  v3 = OUTLINED_FUNCTION_58(v19);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_267EF9A68())
  {
    if (!i)
    {
LABEL_14:
      OUTLINED_FUNCTION_10_4();
      return;
    }

    v21 = MEMORY[0x277D84F90];
    sub_267C72284();
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v17 = v2;
    v18 = v2 & 0xC000000000000001;
    v16 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18)
      {
        MEMORY[0x26D609870](v12, v2);
      }

      else
      {
        if (v12 >= *(v16 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v2 + 8 * v12 + 32);
      }

      v20();

      v15 = *(v21 + 16);
      if (v15 >= *(v21 + 24) >> 1)
      {
        sub_267C72284();
      }

      *(v21 + 16) = v15 + 1;
      (*(v5 + 32))(v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v10, v19);
      ++v12;
      v2 = v17;
      if (v13 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
}

uint64_t sub_267CD2CD8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v9 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  result = a2();
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return v9;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D609870](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    sub_267EF5988();
    if (v11)
    {
      sub_267EF56B8();
    }

    a3(0);
    sub_267EF5E08();

    ++v6;
    if (v11)
    {
      MEMORY[0x26D608F90](result);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      result = sub_267EF9368();
      v9 = v12;
      v6 = v8;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_267CD2E68(uint64_t a1)
{
  v2 = sub_267EF6A08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = 0;
  v11 = *(a1 + 16);
  v24 = v3 + 16;
  v25 = v11;
  v21 = (v3 + 32);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v25 == v10)
    {

      return v23;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = *(v3 + 72);
    (*(v3 + 16))(v9, a1 + v12 + v13 * v10, v2);
    if (sub_267EF6988())
    {
      result = (*(v3 + 8))(v9, v2);
      ++v10;
    }

    else
    {
      v20 = *v21;
      v20(v22, v9, v2);
      v14 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = *(v14 + 16);
        sub_267C72284();
        v14 = v26;
      }

      v17 = *(v14 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v14 + 24) >> 1)
      {
        v23 = v17 + 1;
        v19 = v17;
        sub_267C72284();
        v18 = v23;
        v17 = v19;
        v14 = v26;
      }

      ++v10;
      *(v14 + 16) = v18;
      v23 = v14;
      result = (v20)(v14 + v12 + v17 * v13, v22, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_267CD30C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_267EF57C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v20 = a1;
  v9 = *(a1 + 16);
  v19 = v4 + 16;
  while (1)
  {
    if (v9 == v8)
    {
      v14 = 1;
      v15 = v18;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v3);
    }

    (*(v4 + 16))(v7, v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v3);
    v10 = sub_267EF57B8();
    if (!v11)
    {
      goto LABEL_9;
    }

    if (v10 == 0xD000000000000016 && v11 == 0x8000000267F0FDD0)
    {
      break;
    }

    v13 = sub_267EF9EA8();

    if (v13)
    {
      goto LABEL_12;
    }

LABEL_9:
    (*(v4 + 8))(v7, v3);
    ++v8;
  }

LABEL_12:
  v15 = v18;
  (*(v4 + 32))(v18, v7, v3);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v3);
}

uint64_t sub_267CD32A4(uint64_t a1)
{
  sub_267B9B050(a1, v3);
  v1 = swift_allocObject();
  sub_267B9A5E8(v3, v1 + 16);
  sub_267EF6C78();
  sub_267BA9F38(0, &qword_280229608, 0x277CD3B68);
  return sub_267EF7058();
}

void sub_267CD334C()
{
  OUTLINED_FUNCTION_11_22();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A870, &unk_267F01F60);
  v4 = OUTLINED_FUNCTION_58(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v32 - v9;
  v11 = sub_267EF52F8();
  if (sub_267BAF0DC(v11))
  {
    sub_267BBD0EC(0, (v11 & 0xC000000000000001) == 0, v11);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D609870](0, v11);
    }

    else
    {
      v12 = *(v11 + 32);
    }

    sub_267B9B050(v2 + 16, v35);
    sub_267B9B050(v2 + 56, v34);
    sub_267B9B050(v2 + 96, v33);
    v13 = swift_allocObject();
    sub_267B9A5E8(v35, v13 + 16);
    sub_267B9A5E8(v34, v13 + 56);
    sub_267B9A5E8(v33, v13 + 96);
    sub_267EF66D8();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    sub_267EF7058();
    v14 = sub_267EF7068();
    *&v35[0] = v12;
    v14(v34, v35);
    if (v1)
    {

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v15 = sub_267EF8A08();
      __swift_project_value_buffer(v15, qword_280240FB0);
      v16 = v1;
      v17 = sub_267EF89F8();
      v18 = sub_267EF95E8();

      if (os_log_type_enabled(v17, v18))
      {
        v36 = v6;
        v19 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v35[0] = v32;
        *v19 = 136315138;
        *&v34[0] = v1;
        v20 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
        v21 = sub_267EF9098();
        v23 = sub_267BA33E8(v21, v22, v35);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_267B93000, v17, v18, "SearchForMessagesUserDialogActTransformer failed with error %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        OUTLINED_FUNCTION_32_0();
        v6 = v36;
        OUTLINED_FUNCTION_32_0();
      }

      swift_willThrow();

      (*(v6 + 8))(v10, v3);
    }

    else
    {

      (*(v6 + 8))(v10, v3);
    }
  }

  else
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = sub_267EF8A08();
    __swift_project_value_buffer(v24, qword_280240FB0);
    v25 = sub_267EF89F8();
    v26 = sub_267EF95E8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_267B93000, v25, v26, "SearchForMessagesUserDialogActTransformer userStartUSOGraph has no tasks", v27, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v28 = sub_267EF71B8();
    sub_267CD9C08(&qword_2802299D8, MEMORY[0x277D61E08]);
    swift_allocError();
    *v29 = 0xD000000000000048;
    v29[1] = 0x8000000267F155D0;
    v30 = *MEMORY[0x277D61E00];
    OUTLINED_FUNCTION_5_0(v28);
    (*(v31 + 104))();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_10_4();
}

uint64_t sub_267CD3838()
{
  sub_267CD3820();

  return swift_deallocClassInstance();
}

void sub_267CD3890()
{
  OUTLINED_FUNCTION_11_22();
  v2 = v1;
  v4 = v3;
  v29 = v5;
  sub_267B9B050(v6, v35);
  sub_267B9B050(v4, v34);
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v7);
  (*(v8 + 8))(v33, v7, v8);
  v9 = v36;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  (*(v14 + 16))(v13 - v12);
  v15 = sub_267EF68A8();
  v31 = v15;
  v32 = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0(v30);
  OUTLINED_FUNCTION_5_0(v15);
  v17 = *(v16 + 32);
  v17();
  type metadata accessor for SearchForMessagesUserDialogActTransformer();
  inited = swift_initStackObject();
  v19 = v31;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_0();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22);
  inited[5] = v15;
  inited[6] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(inited + 2);
  (v17)(boxed_opaque_existential_0, v24, v15);
  sub_267B9A5E8(v34, (inited + 7));
  sub_267B9A5E8(v33, (inited + 12));
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v35);
  sub_267CD334C();
  v28 = v27;
  swift_setDeallocating();
  sub_267CD3820();
  swift_deallocClassInstance();
  if (!v0)
  {
    *v29 = v28;
  }

  OUTLINED_FUNCTION_10_4();
}

uint64_t sub_267CD3B30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A878, &unk_267F01F70);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *a1;
  sub_267EF5CF8();
  if (v35)
  {
    sub_267BC9B04(&v34, v33, &qword_28022AEF0, &qword_267EFCDE0);
    sub_267EF5F48();
    v17 = swift_dynamicCast();
    v30 = a5;
    v31 = v5;
    if (v17)
    {
      goto LABEL_3;
    }

    sub_267EF6318();
    if (swift_dynamicCast())
    {
      v18 = a2;

      sub_267EF5E28();

      v20 = v36;
      v19 = 1;
LABEL_7:

      __swift_destroy_boxed_opaque_existential_0(v33);
      sub_267B9FED8(&v34, &qword_28022AEF0, &qword_267EFCDE0);
      sub_267B9B050(v18, &v34);
      sub_267B9B050(a4, v33);
      sub_267B9B050(a3, v32);
      v21 = swift_allocObject();
      sub_267B9A5E8(&v34, v21 + 16);
      sub_267B9A5E8(v33, v21 + 56);
      sub_267B9A5E8(v32, v21 + 96);
      *(v21 + 136) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A880, &unk_267F01F80);
      sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
      sub_267EF7058();
      v22 = sub_267EF7068();
      (*(v12 + 8))(v15, v11);
      *&v34 = v20;
      v23 = v31;
      v22(v33, &v34);

      if (!v23)
      {
        *v30 = *&v33[0];
      }

      return result;
    }

    sub_267EF61D8();
    if (swift_dynamicCast())
    {
      v18 = a2;

      sub_267EF6338();
      goto LABEL_4;
    }

    sub_267EF65C8();
    if (swift_dynamicCast())
    {
LABEL_3:
      v18 = a2;

      sub_267EF5E28();
LABEL_4:

      v19 = 0;
      v20 = v36;
      goto LABEL_7;
    }

    sub_267EF6108();
    if (swift_dynamicCast())
    {
      v18 = a2;

      sub_267EF54D8();
      goto LABEL_4;
    }

    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v25 = sub_267EF8A08();
  __swift_project_value_buffer(v25, qword_280240FB0);
  v26 = sub_267EF89F8();
  v27 = sub_267EF95C8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_267B93000, v26, v27, "#SearchForMessagesUserDialogActTransformer UsoTask was not a known message reading task, returning empty INSearchForMessagesIntent", v28, 2u);
    MEMORY[0x26D60A7B0](v28, -1, -1);
  }

  *a5 = [objc_allocWithZone(MEMORY[0x277CD4048]) init];
  return sub_267B9FED8(&v34, &qword_28022AEF0, &qword_267EFCDE0);
}

uint64_t sub_267CD3FEC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, NSObject *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v466 = a5;
  v505 = a4;
  v487 = a3;
  v471 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F8, &qword_267EFDE28);
  isa = v8[-1].isa;
  v9 = *(isa + 8);
  MEMORY[0x28223BE20](v8);
  v462 = &v459 - v10;
  v470 = sub_267EF6098();
  v473 = *(v470 - 8);
  v11 = *(v473 + 64);
  MEMORY[0x28223BE20](v470);
  v13 = &v459 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A888, &qword_267F01F90);
  v14 = *(*(v467 - 8) + 64);
  MEMORY[0x28223BE20](v467);
  v469 = &v459 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A890, &qword_267F01F98);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v465 = &v459 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v472 = &v459 - v21;
  MEMORY[0x28223BE20](v20);
  v468 = &v459 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEE0, &qword_267F01FA0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v490 = (&v459 - v25);
  v496 = sub_267EF57C8();
  v475 = *(v496 - 8);
  v26 = *(v475 + 64);
  MEMORY[0x28223BE20](v496);
  v494 = (&v459 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A898, &qword_267F01FA8);
  v474 = *(v500 - 8);
  v28 = *(v474 + 64);
  MEMORY[0x28223BE20](v500);
  v502 = &v459 - v29;
  v30 = sub_267EF6A08();
  v31 = *(v30 - 8);
  v509 = v30;
  v510 = v31;
  v32 = *(v31 + 8);
  MEMORY[0x28223BE20](v30);
  v507 = (&v459 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v498 = sub_267EF6A88();
  *&v493 = *(v498 - 8);
  v34 = *(v493 + 64);
  MEMORY[0x28223BE20](v498);
  v497 = &v459 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v491 = sub_267EF6B88();
  v488 = *(v491 - 8);
  v36 = *(v488 + 64);
  MEMORY[0x28223BE20](v491);
  *&v492 = &v459 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_267EF6B38();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v486 = &v459 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_267EF2E38();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v504 = &v459 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  *&v503 = &v459 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v512 = &v459 - v48;
  *&v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v49 = *(*(v477 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v477);
  v485 = &v459 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v459 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = (&v459 - v56);
  MEMORY[0x28223BE20](v55);
  v511 = &v459 - v58;
  v59 = sub_267EF6B18();
  v60 = *(v59 - 8);
  v479 = v59;
  v480 = v60;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v495 = &v459 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *a1;
  v64 = a2[3];
  v65 = a2[4];
  v478 = a2;
  __swift_project_boxed_opaque_existential_0(a2, v64);
  v489 = v63;
  if (v63 && sub_267EF59F8())
  {
    sub_267EABD04();
    v499 = v66;
    v506 = v67;
  }

  else
  {
    v499 = 0;
    v506 = 0;
  }

  v68 = v511;
  v481 = sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  v482 = sub_267EF2D28();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v482);
  v69 = sub_267EF6C28();
  __swift_storeEnumTagSinglePayload(v512, 1, 1, v69);
  LODWORD(v483) = OUTLINED_FUNCTION_28_3();
  v484 = sub_267EF6FF8();
  v501 = sub_267EF6FC8();
  if (qword_280228818 != -1)
  {
    goto LABEL_340;
  }

  while (1)
  {
    v70 = sub_267EF8A08();
    v71 = __swift_project_value_buffer(v70, qword_280240FB0);
    sub_267BC9B04(v68, v57, &qword_280229430, &qword_267EFD2C0);
    v72 = v57;
    v73 = v506;

    v508 = v71;
    v74 = sub_267EF89F8();
    v75 = sub_267EF95D8();

    LODWORD(v476) = v75;
    v76 = os_log_type_enabled(v74, v75);
    v464 = v8;
    v461 = v13;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v527 = v78;
      *v77 = 136315394;
      v514[0] = v499;
      v514[1] = v73;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      v79 = sub_267EF9098();
      v81 = sub_267BA33E8(v79, v80, &v527);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      sub_267BC9B04(v72, v54, &qword_280229430, &qword_267EFD2C0);
      v82 = sub_267EF9098();
      v84 = v83;
      sub_267B9FED8(v72, &qword_280229430, &qword_267EFD2C0);
      v85 = sub_267BA33E8(v82, v84, &v527);

      *(v77 + 14) = v85;
      _os_log_impl(&dword_267B93000, v74, v476, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v78, -1, -1);
      MEMORY[0x26D60A7B0](v77, -1, -1);
    }

    else
    {

      sub_267B9FED8(v72, &qword_280229430, &qword_267EFD2C0);
    }

    v68 = v497;
    v86 = v485;
    v87 = v481;
    if (v501 && (sub_267EF6F98(), v88 = sub_267EF37B8(), v57 = v89, , v57))
    {
      v497 = v88;
    }

    else
    {

      v497 = 0;
      v57 = 0xE000000000000000;
    }

    v90 = v506;
    v514[0] = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
    v485 = sub_267EF9098();
    v13 = v91;
    v92 = v487[4];
    __swift_project_boxed_opaque_existential_0(v487, v487[3]);
    sub_267EF3B68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_267EFC020;
    v94 = 0x8000000267F10280;
    v95 = 0xD000000000000013;
    if (v90)
    {
      v95 = v499;
      v94 = v90;
    }

    *(v93 + 32) = v95;
    *(v93 + 40) = v94;
    sub_267BC9B04(v512, v503, &qword_280229428, &unk_267F00E50);
    sub_267BC9B04(v511, v86, &qword_280229430, &qword_267EFD2C0);
    v96 = v482;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, 1, v482);

    if (EnumTagSinglePayload == 1)
    {
      sub_267B9FED8(v86, &qword_280229430, &qword_267EFD2C0);
      v8 = 0;
    }

    else
    {
      sub_267EF2CE8();
      v8 = v98;
      (*(*(v96 - 8) + 8))(v86, v96);
    }

    sub_267EF6B28();
    (*(v488 + 104))(v492, *MEMORY[0x277D56148], v491);
    (*(v493 + 104))(v68, *MEMORY[0x277D560D0], v498);
    sub_267EF6AF8();

    sub_267B9FED8(v512, &qword_280229428, &unk_267F00E50);
    sub_267B9FED8(v511, &qword_280229430, &qword_267EFD2C0);
    if (sub_267EF6FC8())
    {
      sub_267EF6FA8();

      sub_267EF8678();
    }

    sub_267EF6B08();
    v99 = MEMORY[0x277D84F90];
    v527 = MEMORY[0x277D84F90];
    v525 = MEMORY[0x277D84F90];
    v526 = MEMORY[0x277D84F90];
    v523 = MEMORY[0x277D84F90];
    v524 = MEMORY[0x277D84F90];
    if (v489)
    {
      v100 = sub_267EF5C58();
      if (v100)
      {
        v101 = v100;
      }

      else
      {
        v101 = v99;
      }

      v102 = sub_267EF5C78();
      if (v102)
      {
        v99 = v102;
      }
    }

    else
    {
      v101 = MEMORY[0x277D84F90];
    }

    v103 = sub_267E105FC(v101, v99);

    v512 = v103;
    v104 = sub_267BAF0DC(v103);
    if (v104)
    {
      v106 = v104;
      v107 = sub_267EF5C28();
      if (v106 >= 1)
      {
        v57 = v107;
        v108 = 0;
        v109 = (v512 & 0xC000000000000001);
        v511 = MEMORY[0x277D84F90];
        v501 = MEMORY[0x277D84F90];
        v498 = MEMORY[0x277D84F90];
        v506 = (v512 & 0xC000000000000001);
        while (1)
        {
          if (v109)
          {
            v13 = MEMORY[0x26D609870](v108, v512);
          }

          else
          {
            v13 = *(v512 + 8 * v108 + 32);
          }

          sub_267EF5988();
          if (v522)
          {
            sub_267EF56B8();
          }

          sub_267EF5E08();

          if (!v514[0])
          {
            break;
          }

          if (sub_267EAC378())
          {
            goto LABEL_45;
          }

          MEMORY[0x26D608F90](v110);
          v8 = *((v526 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= *((v526 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();

          v511 = v526;
LABEL_61:
          if (v106 == ++v108)
          {
            v114 = v523;
            goto LABEL_64;
          }
        }

        sub_267EF5988();
        if (v522)
        {
          sub_267EF56B8();
        }

        sub_267EF5BC8();
        sub_267EF5E08();

        if (!v514[0])
        {
          sub_267EF5988();
          if (v522)
          {
            sub_267EF56B8();
          }

          sub_267EF5B98();
          sub_267EF5E08();

          if (v514[0])
          {

            MEMORY[0x26D608F90](v113);
            v8 = *((v525 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= *((v525 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();

            v498 = v525;
          }

          else
          {
          }

          goto LABEL_61;
        }

        if ((sub_267EAC390() & 1) == 0)
        {

          MEMORY[0x26D608F90](v112);
          v8 = *((v524 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= *((v524 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();

          v501 = v524;
          goto LABEL_61;
        }

LABEL_45:
        v111 = sub_267EF5988();
        if (v514[0])
        {
          v8 = sub_267EF56B8();
        }

        else
        {
          v8 = 0;
        }

        MEMORY[0x26D608F90](v111);
        if (*(v523 + 2) >= *(v523 + 3) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();

        v109 = v506;
        goto LABEL_61;
      }

      __break(1u);
LABEL_343:
      __break(1u);
      goto LABEL_344;
    }

    v114 = MEMORY[0x277D84F90];
    v501 = MEMORY[0x277D84F90];
    v511 = MEMORY[0x277D84F90];
    v498 = MEMORY[0x277D84F90];
LABEL_64:
    v54 = *(v114 + 2);
    v68 = &unk_267EFC000;
    v504 = v114;
    if (!v54)
    {
      break;
    }

    v115 = 0;
    v499 = MEMORY[0x277D84F90];
    *&v105 = 136315138;
    v492 = v105;
    *&v105 = 138412290;
    v493 = v105;
    v497 = v54;
    while (v115 < *(v114 + 2))
    {
      v116 = &v114[8 * v115];
      v8 = *(v116 + 4);
      if (v8)
      {
        v117 = *(v116 + 4);
        v118 = swift_retain_n();
        v119 = v513;
        v120 = sub_267D270C4(v118, v505);
        v513 = v119;
        if (v119)
        {
          (*(v480 + 8))(v495, v479);
        }

        v123 = v120;
        v13 = v121;
        v57 = v122;

        if (v123)
        {
          if (v123 == 1)
          {
            sub_267EF5C28();

            sub_267EF5E08();
            if (v514[0])
            {

              MEMORY[0x26D608F90](v124);
              v57 = *((v526 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v57 >= *((v526 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_267EF9328();
              }

              sub_267EF9368();

              v511 = v526;
            }

            else
            {
              sub_267EF5BC8();
              sub_267EF5E08();
              if (v514[0])
              {

                MEMORY[0x26D608F90](v140);
                v57 = *((v524 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v57 >= *((v524 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_267EF9328();
                }

                sub_267EF9368();

                v501 = v524;
              }

              else
              {
                sub_267EF5B98();
                sub_267EF5E08();

                if (!v514[0])
                {

                  goto LABEL_89;
                }

                MEMORY[0x26D608F90](v148);
                v57 = *((v525 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v57 >= *((v525 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_267EF9328();
                }

                sub_267EF9368();

                v498 = v525;
              }
            }

            goto LABEL_88;
          }

          *&v503 = v57;
          v506 = v8;
          v134 = v123;
          MEMORY[0x26D608F90]();
          if (*((v527 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v527 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();
          v499 = v527;
          v57 = v134;
          v135 = sub_267EF89F8();
          v8 = sub_267EF95D8();
          if (os_log_type_enabled(v135, v8))
          {
            v136 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            *v136 = v493;
            *(v136 + 4) = v57;
            *v137 = v123;

            _os_log_impl(&dword_267B93000, v135, v8, "#SearchForMessagesNLv4IntentConverter SRR resolved recipient to INPerson: %@", v136, 0xCu);
            sub_267B9FED8(v137, &unk_280229E30, &unk_267EFC270);
            v138 = v137;
            v54 = v497;
            MEMORY[0x26D60A7B0](v138, -1, -1);
            v139 = v136;
            v68 = 0x267EFC000;
            MEMORY[0x26D60A7B0](v139, -1, -1);
          }

          else
          {
          }

LABEL_86:
        }

        else if (v13)
        {
          v506 = v8;
          v125 = swift_retain_n();
          MEMORY[0x26D608F90](v125);
          if (*((v526 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v526 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();
          v511 = v526;
          swift_retain_n();
          v126 = sub_267EF89F8();
          v8 = sub_267EF95D8();
          if (os_log_type_enabled(v126, v8))
          {
            v127 = swift_slowAlloc();
            *&v503 = v57;
            v57 = v127;
            *&v491 = swift_slowAlloc();
            v514[0] = v491;
            *v57 = v492;
            sub_267EF56B8();
            v128 = sub_267EF6758();
            v130 = v129;

            v131 = v128;
            v68 = 0x267EFC000;
            v132 = sub_267BA33E8(v131, v130, v514);
            v54 = v497;

            *(v57 + 4) = v132;

            _os_log_impl(&dword_267B93000, v126, v8, "#SearchForMessagesNLv4IntentConverter SRR resolved recipient to common_Person: %s", v57, 0xCu);
            v133 = v491;
            __swift_destroy_boxed_opaque_existential_0(v491);
            MEMORY[0x26D60A7B0](v133, -1, -1);
            MEMORY[0x26D60A7B0](v57, -1, -1);

            goto LABEL_86;
          }
        }

        else if (v57)
        {
          v506 = v8;

          v141 = sub_267EF89F8();
          v8 = sub_267EF95D8();
          if (os_log_type_enabled(v141, v8))
          {
            v142 = swift_slowAlloc();
            *&v503 = v57;
            v57 = v142;
            v143 = swift_slowAlloc();
            v514[0] = v143;
            *v57 = v492;
            sub_267EF56B8();
            v13 = sub_267EF6758();
            v145 = v144;

            v146 = sub_267BA33E8(v13, v145, v514);
            v68 = 0x267EFC000;

            *(v57 + 4) = v146;
            _os_log_impl(&dword_267B93000, v141, v8, "#SearchForMessagesNLv4IntentConverter SRR resolved recipient to common_Group: %s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v143);
            v147 = v143;
            v54 = v497;
            MEMORY[0x26D60A7B0](v147, -1, -1);
            MEMORY[0x26D60A7B0](v57, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          v149 = sub_267EF89F8();
          v150 = sub_267EF95D8();
          if (os_log_type_enabled(v149, v150))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_267B93000, v149, v150, "#SearchForMessagesNLv4IntentConverter SRR resolved the recipient entity but didn't recognize it", v57, 2u);
            MEMORY[0x26D60A7B0](v57, -1, -1);
          }
        }

LABEL_88:
        v114 = v504;
      }

LABEL_89:
      if (v54 == ++v115)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
LABEL_337:
    __break(1u);
LABEL_338:
    __break(1u);
LABEL_339:
    __break(1u);
LABEL_340:
    swift_once();
  }

LABEL_108:
  v511 = v526;
  if (v526 >> 62)
  {
    v54 = sub_267EF9A68();
  }

  else
  {
    v54 = *((v526 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v151 = v513;
  v57 = MEMORY[0x277D84F90];
  if (!v54)
  {
    goto LABEL_121;
  }

  v514[0] = MEMORY[0x277D84F90];
  sub_267C72284();
  if ((v54 & 0x8000000000000000) != 0)
  {
    goto LABEL_343;
  }

  v152 = 0;
  v57 = v514[0];
  v153 = v511;
  v506 = (v511 & 0xC000000000000001);
  *&v503 = v511 & 0xFFFFFFFFFFFFFF8;
  v68 = (v510 + 32);
  do
  {
    if (v506)
    {
      MEMORY[0x26D609870](v152);
    }

    else
    {
      if (v152 >= *(v503 + 16))
      {
        goto LABEL_335;
      }

      v154 = *(v153 + 8 * v152 + 32);
    }

    v155 = v507;
    sub_267EF5BE8();

    v514[0] = v57;
    v13 = v57[2];
    v8 = (v13 + 1);
    if (v13 >= v57[3] >> 1)
    {
      sub_267C72284();
      v57 = v514[0];
    }

    ++v152;
    v57[2] = v8;
    (*(v510 + 4))(v57 + ((v510[80] + 32) & ~v510[80]) + *(v510 + 9) * v13, v155, v509);
    v153 = v511;
  }

  while (v54 != v152);
  v151 = v513;
  v68 = 0x267EFC000;
LABEL_121:
  v156 = sub_267CD2E68(v57);
  v481 = v525;
  sub_267CD2AD0();
  v157 = v151;
  v159 = sub_267E10614(v156, v158);

  v160 = *(v159 + 16);
  v13 = &unk_267EFC000;
  v484 = v159;
  if (v160)
  {
    v161 = swift_allocObject();
    v161[2].isa = v159;
    v162 = swift_allocObject();
    *(v162 + 16) = sub_267CD9CB8;
    *(v162 + 24) = v161;
    swift_bridgeObjectRetain_n();
    v506 = v161;

    v510 = sub_267EF89F8();
    LODWORD(v507) = sub_267EF95D8();
    v163 = swift_allocObject();
    *(v163 + 16) = 32;
    v164 = swift_allocObject();
    *(v164 + 16) = 8;
    v165 = swift_allocObject();
    *(v165 + 16) = sub_267CD9B50;
    *(v165 + 24) = v162;
    v166 = swift_allocObject();
    *(v166 + 16) = sub_267CD9B60;
    *(v166 + 24) = v165;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFCE30;
    *(inited + 32) = sub_267CD9B58;
    *(inited + 40) = v163;
    *(inited + 48) = sub_267CD9CCC;
    *(inited + 56) = v164;
    *(inited + 64) = sub_267CD9B68;
    *(inited + 72) = v166;
    swift_setDeallocating();

    sub_267DB6FAC();
    if (os_log_type_enabled(v510, v507))
    {
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v513 = v151;
      v170 = v169;
      v514[0] = v169;
      *v168 = 258;
      *(v168 + 2) = 32;

      *(v168 + 3) = 8;

      v8 = v484;

      v172 = MEMORY[0x26D608FD0](v171, v509);
      v174 = v173;

      v175 = sub_267BA33E8(v172, v174, v514);

      *(v168 + 4) = v175;

      v176 = v510;
      _os_log_impl(&dword_267B93000, v510, v507, "#SearchForMessageNLv4IntentConverter calling CRR for recipients: %s", v168, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v170);
      v177 = v170;
      v157 = v513;
      MEMORY[0x26D60A7B0](v177, -1, -1);
      MEMORY[0x26D60A7B0](v168, -1, -1);
    }

    else
    {
      v8 = v484;
    }

    __swift_project_boxed_opaque_existential_0(v478, v478[3]);
    v179 = v495;
    v180 = sub_267EF6888();
    v68 = &unk_267EFC000;
    v13 = 0x267EFC000;
    if (v157)
    {
      (*(v480 + 8))(v179, v479);
    }

    v181 = v180;
    v57 = 0;
    v182 = v527;
    if ((sub_267BAF0DC(v527) & 0x8000000000000000) == 0)
    {
      v183 = sub_267BAF0DC(v181);
      v184 = sub_267BAF0DC(v182);
      v185 = __OFADD__(v184, v183);
      v186 = v184 + v183;
      if (!v185)
      {
        sub_267CA5F78(v186, 1);
        sub_267C73428();
        v157 = 0;
        goto LABEL_131;
      }

LABEL_345:
      __break(1u);
LABEL_346:
      sub_267EF9328();
LABEL_141:
      sub_267EF9368();
LABEL_147:

LABEL_148:
      v205 = MEMORY[0x277D84F90];
      *&v493 = MEMORY[0x277D84F90];
LABEL_152:
      v459 = v205;
      goto LABEL_153;
    }

LABEL_344:
    __break(1u);
    goto LABEL_345;
  }

LABEL_131:
  v476 = v527;
  if (!sub_267BAF0DC(v527))
  {
    v513 = v157;
    v187 = swift_allocObject();
    v57 = v489;
    *(v187 + 16) = v489;
    swift_retain_n();
    v510 = sub_267EF89F8();
    v188 = sub_267EF95D8();
    v189 = swift_allocObject();
    *(v189 + 16) = 32;
    v190 = swift_allocObject();
    *(v190 + 16) = 8;
    v191 = swift_allocObject();
    *(v191 + 16) = sub_267CD9CC8;
    *(v191 + 24) = v187;
    v192 = swift_allocObject();
    *(v192 + 16) = sub_267CD9CC4;
    *(v192 + 24) = v191;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
    v193 = swift_allocObject();
    sub_267EF0E68(v193, 3);
    *v194 = sub_267CD9CCC;
    v194[1] = v189;
    v194[2] = sub_267CD9CCC;
    v194[3] = v190;
    v194[4] = sub_267CD9CB4;
    v194[5] = v192;

    LODWORD(v507) = v188;
    v195 = v188;
    v196 = v510;
    if (os_log_type_enabled(v510, v195))
    {
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v514[0] = v198;
      *v197 = 258;
      *(v197 + 2) = 32;

      *(v197 + 3) = 8;

      v522 = v57;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A880, &unk_267F01F80);
      v199 = sub_267EF9098();
      v201 = sub_267BA33E8(v199, v200, v514);

      *(v197 + 4) = v201;

      v202 = v510;
      _os_log_impl(&dword_267B93000, v510, v507, "#SearchForMessageNLv4IntentConverter no recipients found in %s", v197, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v198);
      MEMORY[0x26D60A7B0](v198, -1, -1);
      v203 = v197;
      v68 = 0x267EFC000;
      MEMORY[0x26D60A7B0](v203, -1, -1);
    }

    else
    {
    }

    v157 = v513;
    v13 = &unk_267EFC000;
  }

  v8 = MEMORY[0x277D84F90];
  v522 = MEMORY[0x277D84F90];
  v520 = MEMORY[0x277D84F90];
  v521 = MEMORY[0x277D84F90];
  v519 = MEMORY[0x277D84F90];
  if (v489)
  {
    v8 = v157;
    if (!sub_267EF5CE8())
    {
      goto LABEL_148;
    }

    sub_267EF56B8();
    sub_267EF5C28();
    sub_267EF5E08();

    if (v514[0])
    {

      if (sub_267EAC378())
      {
        MEMORY[0x26D608F90]();
        v57 = *((v519 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v57 >= *((v519 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_346;
        }

        goto LABEL_141;
      }

      MEMORY[0x26D608F90]();
      v57 = *((v521 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57 >= *((v521 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      *&v493 = v521;

      v205 = MEMORY[0x277D84F90];
      goto LABEL_152;
    }

    sub_267EF56B8();
    sub_267EF5BC8();
    sub_267EF5E08();

    if (v514[0])
    {

      MEMORY[0x26D608F90](v204);
      v57 = *((v524 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57 >= *((v524 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v501 = v524;
      goto LABEL_147;
    }

    sub_267EF56B8();

    sub_267EF5B98();
    sub_267EF5E08();

    if (!v514[0])
    {
      goto LABEL_147;
    }

    MEMORY[0x26D608F90](v344);
    v57 = *((v520 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57 >= *((v520 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_350:
      sub_267EF9328();
    }

    sub_267EF9368();
    v459 = v520;

    *&v493 = MEMORY[0x277D84F90];
LABEL_153:
    v157 = v8;
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    *&v493 = MEMORY[0x277D84F90];
    v459 = MEMORY[0x277D84F90];
  }

  v518 = v8;
  v206 = v519;
  v498 = sub_267BAF0DC(v519);
  v499 = v206;
  if (v498)
  {
    v54 = 0;
    v497 = (v206 & 0xC000000000000001);
    v486 = (v206 & 0xFFFFFFFFFFFFFF8);
    *&v207 = *(v68 + 72);
    v491 = v207;
    v483 = *(v13 + 3632);
    *(&v208 + 1) = *(&v483 + 1);
    *&v208 = 138412290;
    v477 = v208;
    v460 = v8;
    do
    {
      if (v497)
      {
        v13 = MEMORY[0x26D609870](v54, v206);
      }

      else
      {
        if (v54 >= *(v486 + 2))
        {
          goto LABEL_339;
        }

        v13 = *(v206 + 8 * v54 + 32);
      }

      v68 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_336;
      }

      swift_retain_n();
      v209 = sub_267EF89F8();
      v210 = sub_267EF95D8();
      v211 = os_log_type_enabled(v209, v210);
      v510 = v13;
      if (v211)
      {
        v212 = swift_slowAlloc();
        v513 = v157;
        v213 = v212;
        v214 = swift_slowAlloc();
        v506 = v54;
        v507 = v8;
        v215 = v214;
        v514[0] = v214;
        *v213 = v491;
        sub_267EF56B8();
        v216 = sub_267EF6758();
        v218 = v217;

        v219 = sub_267BA33E8(v216, v218, v514);
        v68 = v54 + 1;

        *(v213 + 4) = v219;

        _os_log_impl(&dword_267B93000, v209, v210, "#SearchForMessagesNLv4IntentConverter calling SRR for sender common_Person: %s", v213, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v215);
        v220 = v215;
        v54 = v506;
        v8 = v507;
        MEMORY[0x26D60A7B0](v220, -1, -1);
        v221 = v213;
        v157 = v513;
        MEMORY[0x26D60A7B0](v221, -1, -1);
      }

      else
      {
      }

      v222 = sub_267EF56B8();

      v223 = sub_267D270C4(v222, v505);
      if (v157)
      {
        (*(v480 + 8))(v495, v479);
      }

      v226 = v223;
      v13 = v224;
      v57 = v225;

      if (v226)
      {
        if (v226 == 1)
        {
          MEMORY[0x26D608F90](v227);
          if (*((v521 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v521 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();
          *&v493 = v521;
        }

        else
        {
          *&v503 = v57;
          v513 = 0;
          v243 = v226;
          MEMORY[0x26D608F90]();
          if (*((v522 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v522 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();
          v8 = v522;
          v244 = v243;
          v245 = sub_267EF89F8();
          v57 = sub_267EF95D8();
          if (os_log_type_enabled(v245, v57))
          {
            v246 = swift_slowAlloc();
            v506 = v54;
            v507 = v8;
            v247 = v246;
            v248 = v68;
            v249 = swift_slowAlloc();
            *v247 = v477;
            *(v247 + 4) = v244;
            *v249 = v226;

            _os_log_impl(&dword_267B93000, v245, v57, "#SearchForMessagesNLv4IntentConverter SRR resolved sender to INPerson: %@", v247, 0xCu);
            sub_267B9FED8(v249, &unk_280229E30, &unk_267EFC270);
            v250 = v249;
            v68 = v248;
            MEMORY[0x26D60A7B0](v250, -1, -1);
            v251 = v247;
            v54 = v506;
            v8 = v507;
            MEMORY[0x26D60A7B0](v251, -1, -1);
          }

          else
          {
          }

          v157 = v513;
        }
      }

      else
      {
        if (v13)
        {
          v507 = v8;
          *&v503 = v57;
          v488 = v68;
          v513 = 0;
          v228 = swift_retain_n();
          MEMORY[0x26D608F90](v228);
          if (*((v521 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v521 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();
          *&v493 = v521;
          swift_retain_n();
          *&v492 = sub_267EF89F8();
          v229 = sub_267EF95D8();
          v230 = swift_allocObject();
          *(v230 + 16) = 32;
          v231 = swift_allocObject();
          *(v231 + 16) = 8;
          v232 = swift_allocObject();
          *(v232 + 16) = sub_267CD9BEC;
          *(v232 + 24) = v13;
          v57 = swift_allocObject();
          v57[2] = sub_267CD9CC4;
          v57[3] = v232;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
          v233 = swift_allocObject();
          *(v233 + 16) = v483;
          *(v233 + 32) = sub_267CD9CCC;
          *(v233 + 40) = v230;
          *(v233 + 48) = sub_267CD9CCC;
          *(v233 + 56) = v231;
          *(v233 + 64) = sub_267CD9CB4;
          *(v233 + 72) = v57;
          swift_setDeallocating();

          v485 = v230;

          sub_267DB6FAC();
          LODWORD(v482) = v229;
          if (os_log_type_enabled(v492, v229))
          {
            v234 = swift_slowAlloc();
            v506 = v54;
            v235 = v234;
            v236 = swift_slowAlloc();
            v514[0] = v236;
            *v235 = 258;
            *(v235 + 2) = 32;

            *(v235 + 3) = 8;

            sub_267EF56B8();
            v237 = sub_267EF6758();
            v239 = v238;

            v240 = sub_267BA33E8(v237, v239, v514);

            *(v235 + 4) = v240;

            v241 = v492;
            _os_log_impl(&dword_267B93000, v492, v482, "#SearchForMessagesNLv4IntentConverter SRR resolved sender to common_Person: %s", v235, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v236);
            MEMORY[0x26D60A7B0](v236, -1, -1);
            v242 = v235;
            v54 = v506;
            v8 = v507;
            MEMORY[0x26D60A7B0](v242, -1, -1);

            v157 = v513;
            v206 = v499;
            v68 = v488;
          }

          else
          {

            v157 = v513;
            v206 = v499;
            v68 = v488;
            v8 = v507;
          }

          goto LABEL_182;
        }

        if (v57)
        {
          v506 = v54;
          v507 = v8;
          swift_retain_n();
          *&v492 = sub_267EF89F8();
          LODWORD(v485) = sub_267EF95D8();
          v252 = v57;
          v253 = swift_allocObject();
          *(v253 + 16) = 32;
          v13 = swift_allocObject();
          *(v13 + 16) = 8;
          v254 = swift_allocObject();
          *(v254 + 16) = sub_267CD9CBC;
          *(v254 + 24) = v252;
          v255 = swift_allocObject();
          *(v255 + 16) = sub_267CD9CC4;
          *(v255 + 24) = v254;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
          v256 = swift_allocObject();
          *(v256 + 16) = v483;
          *(v256 + 32) = sub_267CD9CCC;
          *(v256 + 40) = v253;
          *(v256 + 48) = sub_267CD9CCC;
          *(v256 + 56) = v13;
          *(v256 + 64) = sub_267CD9CB4;
          *(v256 + 72) = v255;
          swift_setDeallocating();

          sub_267DB6FAC();
          v257 = os_log_type_enabled(v492, v485);
          *&v503 = v252;
          if (v257)
          {
            v258 = swift_slowAlloc();
            v488 = v68;
            v513 = 0;
            v259 = v258;
            v260 = swift_slowAlloc();
            v514[0] = v260;
            *v259 = 258;
            *(v259 + 2) = 32;

            *(v259 + 3) = 8;

            sub_267EF56B8();
            v261 = sub_267EF6758();
            v13 = v262;

            v263 = sub_267BA33E8(v261, v13, v514);

            *(v259 + 4) = v263;

            v264 = v492;
            _os_log_impl(&dword_267B93000, v492, v485, "#SearchForMessagesNLv4IntentConverter SRR resolved sender to common_Group: %s", v259, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v260);
            MEMORY[0x26D60A7B0](v260, -1, -1);
            v265 = v259;
            v157 = v513;
            v68 = v488;
            MEMORY[0x26D60A7B0](v265, -1, -1);
          }

          else
          {
          }

          MEMORY[0x26D608F90]();
          v8 = v507;
          v57 = v510;
          if (*((v518 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v518 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();
          v460 = v518;

          v206 = v499;
          v54 = v506;
          goto LABEL_182;
        }
      }

      v206 = v499;
LABEL_182:
      ++v54;
    }

    while (v68 != v498);
  }

  v507 = v8;
  v266 = v157;
  v517 = MEMORY[0x277D84F90];
  v516 = MEMORY[0x277D84FA0];
  v267 = v489;
  if (v489)
  {
    if (sub_267EF59F8())
    {
      sub_267EABD04();
      v267 = v268;
      v270 = v269;

      goto LABEL_199;
    }

    v267 = 0;
  }

  v270 = 0;
LABEL_199:
  v271 = swift_allocObject();
  *(v271 + 16) = v267;
  *(v271 + 24) = v270;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A8, &qword_267F01FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8B0, &unk_267F01FD0);
  sub_267EF7048();
  v13 = v518;
  v510 = sub_267BAF0DC(v518);
  v68 = 0;
  v506 = (v13 & 0xC000000000000001);
  *&v492 = v475 + 32;
  *&v491 = v475 + 8;
  v488 = MEMORY[0x277D84F90];
  v498 = v13;
LABEL_200:
  v272 = v266;
  v8 = v490;
  v273 = v496;
  while (v510 != v68)
  {
    v274 = v506;
    sub_267BBD0EC(v68, v506 == 0, v13);
    if (v274)
    {
      v54 = MEMORY[0x26D609870](v68, v13);
    }

    else
    {
      v54 = *(v13 + 8 * v68 + 32);
    }

    v57 = (v68 + 1);
    if (__OFADD__(v68, 1))
    {
      goto LABEL_334;
    }

    v275 = sub_267EF5688();

    sub_267CD30C4(v275, v8);

    if (__swift_getEnumTagSinglePayload(v8, 1, v273) == 1)
    {
      sub_267B9FED8(v8, &qword_28022AEE0, &qword_267F01FA0);
      v276 = sub_267EF7068();
      v514[0] = v54;

      v276(&v515, v514);
      if (v272)
      {

        (*(v474 + 8))(v502, v500);
        (*(v480 + 8))(v495, v479);
      }

      if (v515)
      {
        v266 = 0;
        v294 = v515;
        MEMORY[0x26D608F90]();
        if (*((v517 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v517 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v295 = v517;

        v296 = sub_267BF6698();
        v488 = v295;

        if (v296)
        {
          v297 = sub_267E10680();
          sub_267E1076C(v297, v298);
        }

        ++v68;
        goto LABEL_200;
      }

      v277 = sub_267EF5BB8();
      if (v277)
      {
        v497 = v277;
        v278 = sub_267CD2CD8(v277, sub_267BAF0DC, MEMORY[0x277D5E850]);
        v513 = 0;

        sub_267C9B700(v279);
        v280 = swift_allocObject();
        *(v280 + 16) = v278;
        swift_bridgeObjectRetain_n();
        v505 = sub_267EF89F8();
        LODWORD(v503) = sub_267EF95D8();
        v281 = swift_allocObject();
        *(v281 + 16) = 0;
        v282 = swift_allocObject();
        *(v282 + 16) = 8;
        v283 = swift_allocObject();
        *(v283 + 16) = sub_267CD9B8C;
        *(v283 + 24) = v280;
        v284 = swift_allocObject();
        *(v284 + 16) = sub_267CD9B94;
        *(v284 + 24) = v283;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
        v285 = swift_initStackObject();
        sub_267EF0E68(v285, 3);
        *v286 = sub_267CD9CCC;
        v286[1] = v281;
        v286[2] = sub_267CD9CCC;
        v286[3] = v282;
        v286[4] = sub_267CD9B9C;
        v286[5] = v284;
        *&v493 = v280;

        if (os_log_type_enabled(v505, v503))
        {
          v287 = swift_slowAlloc();
          *v287 = 256;
          *(v287 + 2) = 0;

          *(v287 + 3) = 8;

          v288 = sub_267BAF0DC(v278);

          *(v287 + 4) = v288;

          v289 = v505;
          _os_log_impl(&dword_267B93000, v505, v503, "#SearchForMessagesNLv4IntentConverter sender group has %ld persons", v287, 0xCu);
          v290 = v287;
          v8 = v490;
          MEMORY[0x26D60A7B0](v290, -1, -1);

          v272 = v513;
          v273 = v496;
          v13 = v498;
        }

        else
        {

          swift_bridgeObjectRelease_n();

          v272 = v513;
          v273 = v496;
          v13 = v498;
          v8 = v490;
        }
      }

      else
      {

        v273 = v496;
      }
    }

    else
    {
      v291 = v494;
      (*v492)(v494, v8, v273);
      v292 = sub_267EF57A8();
      sub_267D302A8(v514, v292, v293);

      (*v491)(v291, v273);
    }

    ++v68;
  }

  v510 = v521;
  sub_267CD2AD0();
  v300 = v299;
  v506 = v520;
  sub_267CD2AD0();
  v302 = sub_267E10614(v300, v301);

  if (!*(v302 + 16))
  {
    v509 = v302;
    v68 = 0x267EFD000;
    v323 = v507;
    goto LABEL_230;
  }

  v513 = v272;

  v303 = swift_allocObject();
  v303[2].isa = v302;
  v304 = swift_allocObject();
  *(v304 + 16) = sub_267CD9BA4;
  *(v304 + 24) = v303;
  swift_bridgeObjectRetain_n();
  v507 = v303;

  v305 = sub_267EF89F8();
  LODWORD(v303) = sub_267EF95D8();
  v306 = swift_allocObject();
  *(v306 + 16) = 32;
  v307 = swift_allocObject();
  *(v307 + 16) = 8;
  v308 = swift_allocObject();
  *(v308 + 16) = sub_267CD9CC0;
  *(v308 + 24) = v304;
  v309 = swift_allocObject();
  *(v309 + 16) = sub_267CD9CC4;
  *(v309 + 24) = v308;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
  v310 = swift_initStackObject();
  sub_267EF0E68(v310, 3);
  *v311 = sub_267CD9CCC;
  v311[1] = v306;
  v311[2] = sub_267CD9CCC;
  v311[3] = v307;
  v311[4] = sub_267CD9CB4;
  v311[5] = v309;

  LODWORD(v505) = v303;
  if (os_log_type_enabled(v305, v303))
  {
    v312 = swift_slowAlloc();
    *&v503 = v305;
    v313 = v302;
    v314 = v312;
    v315 = swift_slowAlloc();
    v514[0] = v315;
    *v314 = 258;
    *(v314 + 2) = 32;

    *(v314 + 3) = 8;

    v317 = MEMORY[0x26D608FD0](v316, v509);
    v319 = v318;

    v320 = sub_267BA33E8(v317, v319, v514);

    *(v314 + 4) = v320;

    v321 = v503;
    _os_log_impl(&dword_267B93000, v503, v505, "#SearchForMessageNLv4IntentConverter calling CRR for sender: %s", v314, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v315);
    MEMORY[0x26D60A7B0](v315, -1, -1);
    v322 = v314;
    v302 = v313;
    MEMORY[0x26D60A7B0](v322, -1, -1);
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_0(v478, v478[3]);
  v324 = v495;
  v325 = v513;
  v323 = sub_267EF6888();
  v272 = v325;
  v68 = &unk_267EFD000;
  if (!v325)
  {
    v509 = v302;
LABEL_230:
    v507 = v323;
    if (!sub_267BAF0DC(v323))
    {
      v513 = v272;
      v326 = swift_allocObject();
      v327 = v489;
      *(v326 + 16) = v489;
      swift_retain_n();
      v505 = sub_267EF89F8();
      v328 = sub_267EF95D8();
      v329 = swift_allocObject();
      *(v329 + 16) = 32;
      v330 = swift_allocObject();
      *(v330 + 16) = 8;
      v331 = swift_allocObject();
      *(v331 + 16) = sub_267CD9BD0;
      *(v331 + 24) = v326;
      v332 = swift_allocObject();
      *(v332 + 16) = sub_267CD9CC4;
      *(v332 + 24) = v331;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
      v333 = swift_allocObject();
      sub_267EF0E68(v333, 3);
      *v334 = sub_267CD9CCC;
      v334[1] = v329;
      v334[2] = sub_267CD9CCC;
      v334[3] = v330;
      v334[4] = sub_267CD9CB4;
      v334[5] = v332;

      LODWORD(v503) = v328;
      v335 = v328;
      v336 = v505;
      if (os_log_type_enabled(v505, v335))
      {
        v337 = swift_slowAlloc();
        v338 = swift_slowAlloc();
        v514[0] = v338;
        *v337 = 258;
        *(v337 + 2) = 32;

        *(v337 + 3) = 8;

        v515 = v327;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A880, &unk_267F01F80);
        v339 = sub_267EF9098();
        v341 = sub_267BA33E8(v339, v340, v514);

        *(v337 + 4) = v341;

        v342 = v505;
        _os_log_impl(&dword_267B93000, v505, v503, "#SearchForMessageNLv4IntentConverter no senders found in %s", v337, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v338);
        MEMORY[0x26D60A7B0](v338, -1, -1);
        v343 = v337;
        v68 = 0x267EFD000;
        MEMORY[0x26D60A7B0](v343, -1, -1);
      }

      else
      {
      }

      v272 = v513;
    }

    v345 = v501;
    v54 = sub_267BAF0DC(v501);
    v13 = 0;
    v8 = (v345 & 0xC000000000000001);
    v57 = (v345 & 0xFFFFFFFFFFFFFF8);
    *&v346 = *(v68 + 336);
    v503 = v346;
LABEL_239:
    for (i = v13; ; ++i)
    {
      v13 = v498;
      if (v54 == i)
      {
        break;
      }

      if (v8)
      {
        v68 = MEMORY[0x26D609870](i, v501);
      }

      else
      {
        if (i >= v57[2])
        {
          goto LABEL_338;
        }

        v68 = *(v501 + 8 * i + 32);
      }

      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_337;
      }

      v348 = v272;
      v349 = sub_267EF7068();
      v514[0] = v68;

      v349(&v515, v514);
      v272 = v348;
      if (v348)
      {

        (*(v474 + 8))(v502, v500);
        (*(v480 + 8))(v495, v479);

        goto LABEL_276;
      }

      v350 = v515;
      if (v515)
      {
        swift_beginAccess();
        v505 = v350;
        MEMORY[0x26D608F90]();
        if (*((v517 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v517 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v351 = v517;
        swift_endAccess();
        if (v351 >> 62)
        {
          v352 = sub_267EF9A68();
        }

        else
        {
          v352 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v488 = v351;
        if (v352)
        {
          v353 = v352 - 1;
          if (__OFSUB__(v352, 1))
          {
            __break(1u);
            goto LABEL_348;
          }

          if ((v351 & 0xC000000000000001) == 0)
          {
            if ((v353 & 0x8000000000000000) == 0)
            {
              if (v353 < *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v354 = *(v351 + 8 * v353 + 32);
                goto LABEL_259;
              }

LABEL_349:
              __break(1u);
              goto LABEL_350;
            }

LABEL_348:
            __break(1u);
            goto LABEL_349;
          }

          v354 = MEMORY[0x26D609870](v353, v351);

LABEL_259:
          v355 = sub_267E10680();
          sub_267E1076C(v355, v356);
        }

        v357 = sub_267EF89F8();
        LODWORD(v496) = sub_267EF95D8();
        if (os_log_type_enabled(v357, v496))
        {
          v494 = v357;
          v513 = 0;
          v358 = swift_slowAlloc();
          *&v493 = swift_slowAlloc();
          v514[0] = v493;
          v497 = v358;
          *v358 = v503;

          v359 = sub_267BF6698();

          if (v359)
          {
            v360 = [v359 spokenPhrase];

            v361 = sub_267EF9028();
            v363 = v362;
          }

          else
          {
            v363 = 0xE300000000000000;
            v361 = 7104878;
          }

          v364 = sub_267BA33E8(v361, v363, v514);

          v365 = v497;
          *(v497 + 4) = v364;
          *(v365 + 6) = 2080;

          v366 = sub_267BF6698();

          if (!v366 || (v367 = sub_267E10680(), v369 = v368, v366, !v369))
          {

            v369 = 0xE300000000000000;
            v367 = 7104878;
          }

          v370 = sub_267BA33E8(v367, v369, v514);

          v371 = v497;
          *(v497 + 14) = v370;
          v372 = v494;
          _os_log_impl(&dword_267B93000, v494, v496, "#SearchForMessageNLv4IntentConverter appBundle ID for group name %s is: %s", v371, 0x16u);
          v373 = v493;
          swift_arrayDestroy();
          MEMORY[0x26D60A7B0](v373, -1, -1);
          MEMORY[0x26D60A7B0](v371, -1, -1);

          v272 = v513;
        }

        else
        {
        }

        goto LABEL_239;
      }
    }

    if (v489 && (v374 = sub_267EF5C48()) != 0)
    {
      sub_267CD2CD8(v374, sub_267BAF0DC, MEMORY[0x277D5E390]);

      v375 = sub_267C8F28C();

      v376 = v469;
      v377 = v470;
      v378 = v468;
      if (v375)
      {
        v379 = sub_267CD8F78();

LABEL_280:
        if (sub_267EF59E8())
        {
          v513 = v272;
          sub_267EF6088();

          goto LABEL_283;
        }

LABEL_282:
        v513 = v272;
        __swift_storeEnumTagSinglePayload(v378, 1, 1, v377);
LABEL_283:
        v380 = v467;
        v381 = v472;
        (*(v473 + 104))(v472, *MEMORY[0x277D5EBE8], v377);
        __swift_storeEnumTagSinglePayload(v381, 0, 1, v377);
        v382 = *(v380 + 48);
        sub_267BC9B04(v378, v376, &qword_28022A890, &qword_267F01F98);
        sub_267BC9B04(v381, v376 + v382, &qword_28022A890, &qword_267F01F98);
        if (__swift_getEnumTagSinglePayload(v376, 1, v377) == 1)
        {
          sub_267B9FED8(v381, &qword_28022A890, &qword_267F01F98);
          sub_267B9FED8(v378, &qword_28022A890, &qword_267F01F98);
          if (__swift_getEnumTagSinglePayload(v376 + v382, 1, v377) == 1)
          {
            sub_267B9FED8(v376, &qword_28022A890, &qword_267F01F98);
            v383 = v489;
            v384 = v507;
LABEL_291:
            v392 = sub_267EF89F8();
            v393 = sub_267EF95D8();
            if (os_log_type_enabled(v392, v393))
            {
              v394 = swift_slowAlloc();
              *v394 = 0;

              _os_log_impl(&dword_267B93000, v392, v393, "#SearchForMessageNLv4IntentConverter request to read last message setting attributes to [.read, .unread]", v394, 2u);
              v395 = v394;
              v383 = v489;
              MEMORY[0x26D60A7B0](v395, -1, -1);
            }

            else
            {
            }

            v386 = v466;

            v379 |= 3uLL;
LABEL_295:
            v396 = v476;
            if (sub_267BAF0DC(v476) || *(v516 + 16))
            {
              if ((v386 & 1) == 0)
              {

                if (v383)
                {
                  goto LABEL_306;
                }

LABEL_319:

                v412 = 0;
                v408 = 0;
LABEL_320:

                v414 = sub_267D2F8E4(v413);
                v415 = sub_267C73E0C(v414);

                v416 = sub_267C903B4(v510);
                v417 = objc_allocWithZone(MEMORY[0x277CD4048]);
                v511 = v408;
                v418 = sub_267BC7400(v396, v384, v412, v379, v408, 0, 0, v415, v416);
                v419 = swift_allocObject();
                *(v419 + 16) = v418;
                v420 = v418;
                v421 = sub_267EF89F8();
                v422 = sub_267EF95D8();
                v423 = swift_allocObject();
                *(v423 + 16) = 64;
                v424 = swift_allocObject();
                *(v424 + 16) = 8;
                v425 = swift_allocObject();
                *(v425 + 16) = sub_267CD9BB0;
                *(v425 + 24) = v419;
                v426 = swift_allocObject();
                *(v426 + 16) = sub_267CD9BB8;
                *(v426 + 24) = v425;
                v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
                v427 = swift_initStackObject();
                sub_267EF0E68(v427, 3);
                *v428 = sub_267CD9CCC;
                v428[1] = v423;
                v428[2] = sub_267CD9CCC;
                v428[3] = v424;
                v428[4] = sub_267CD9BC0;
                v428[5] = v426;

                if (os_log_type_enabled(v421, v422))
                {
                  v429 = swift_slowAlloc();
                  LODWORD(v505) = v422;
                  v430 = v429;
                  v431 = swift_slowAlloc();
                  v506 = v421;
                  v432 = v431;
                  *v430 = 258;
                  *(v430 + 2) = 64;

                  *(v430 + 3) = 8;

                  *(v430 + 4) = v420;
                  *v432 = v420;

                  _os_log_impl(&dword_267B93000, v506, v505, "#SearchForMessageNLv4IntentConverter transformed to: %@", v430, 0xCu);
                  sub_267B9FED8(v432, &unk_280229E30, &unk_267EFC270);
                  v433 = v432;
                  v421 = v506;
                  MEMORY[0x26D60A7B0](v433, -1, -1);
                  MEMORY[0x26D60A7B0](v430, -1, -1);
                }

                else
                {
                }

                v434 = sub_267C8F008();

                if (v434)
                {
                  v435 = sub_267E10680();
                  v437 = v436;
                }

                else
                {
                  v435 = 0;
                  v437 = 0;
                }

                sub_267DE88AC(v435, v437);
                v438 = swift_allocObject();
                *(v438 + 16) = v420;
                v439 = v420;
                v440 = sub_267EF89F8();
                v441 = sub_267EF95D8();
                v442 = swift_allocObject();
                *(v442 + 16) = 32;
                v443 = swift_allocObject();
                *(v443 + 16) = 8;
                v444 = swift_allocObject();
                *(v444 + 16) = sub_267CD9BC8;
                *(v444 + 24) = v438;
                v445 = swift_allocObject();
                *(v445 + 16) = sub_267CD9CC4;
                *(v445 + 24) = v444;
                v446 = swift_allocObject();
                sub_267EF0E68(v446, 3);
                *v447 = sub_267CD9CCC;
                v447[1] = v442;
                v447[2] = sub_267CD9CCC;
                v447[3] = v443;
                v447[4] = sub_267CD9CB4;
                v447[5] = v445;

                if (os_log_type_enabled(v440, v441))
                {
                  v448 = swift_slowAlloc();
                  LODWORD(v508) = v441;
                  v449 = v439;
                  v450 = v448;
                  v451 = swift_slowAlloc();
                  v507 = v440;
                  v452 = v451;
                  v514[0] = v451;
                  *v450 = 258;
                  *(v450 + 2) = 32;

                  *(v450 + 3) = 8;

                  v453 = sub_267DE87C0();
                  if (v454)
                  {
                    v455 = v454;
                  }

                  else
                  {
                    v453 = 7104878;
                    v455 = 0xE300000000000000;
                  }

                  v456 = sub_267BA33E8(v453, v455, v514);

                  *(v450 + 4) = v456;

                  v457 = v507;
                  _os_log_impl(&dword_267B93000, v507, v508, "#SearchForMessagesUserDialogActTransformer intent groupAppBundleID to: %s", v450, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v452);
                  MEMORY[0x26D60A7B0](v452, -1, -1);
                  v458 = v450;
                  v439 = v449;
                  MEMORY[0x26D60A7B0](v458, -1, -1);
                }

                else
                {
                }

                (*(v474 + 8))(v502, v500);
                (*(v480 + 8))(v495, v479);

                *v471 = v439;
                return result;
              }

              v397 = 1;
            }

            else
            {
              v397 = sub_267BAF0DC(v488) != 0;
              if ((v386 & 1) == 0)
              {

LABEL_318:
                if (v489)
                {
                  goto LABEL_306;
                }

                goto LABEL_319;
              }
            }

            v398 = v487[4];
            __swift_project_boxed_opaque_existential_0(v487, v487[3]);
            v399 = OUTLINED_FUNCTION_28_3();
            v396 = v476;

            if ((v399 & 1) != 0 && v397)
            {
              v400 = sub_267EF89F8();
              v401 = sub_267EF95D8();
              if (os_log_type_enabled(v400, v401))
              {
                v402 = swift_slowAlloc();
                *v402 = 0;
                _os_log_impl(&dword_267B93000, v400, v401, "#SearchForMessageNLv4IntentConverter request to open a specific conversation setting attributes to [.read, .unread]", v402, 2u);
                MEMORY[0x26D60A7B0](v402, -1, -1);
              }

              v379 |= 3uLL;
              v396 = v476;
              if (!v489)
              {
                goto LABEL_319;
              }

LABEL_306:
              if (sub_267EF5CA8())
              {
                v403 = v462;
                sub_267CD32A4(v487);
                v404 = v464;
                v405 = sub_267EF7068();
                (*(isa + 1))(v403, v404);
                v514[0] = sub_267EF5D28();
                v406 = v513;
                v405(&v515, v514);
                v407 = v406;
                if (v406)
                {

                  v408 = 0;
                  v407 = 0;
                }

                else
                {

                  v408 = v515;
                }

                v409 = v408;
              }

              else
              {
                v408 = 0;
                v407 = v513;
              }

              v513 = v407;

              v410 = sub_267EF5C88();
              if (v411)
              {
                v412 = sub_267CD9168(v410, v411);
              }

              else
              {
                v412 = 0;
              }

              v396 = v476;
              goto LABEL_320;
            }

            goto LABEL_318;
          }
        }

        else
        {
          v385 = v465;
          sub_267BC9B04(v376, v465, &qword_28022A890, &qword_267F01F98);
          if (__swift_getEnumTagSinglePayload(v376 + v382, 1, v377) != 1)
          {
            v510 = v379;
            v387 = v473;
            v388 = v461;
            (*(v473 + 32))(v461, v376 + v382, v377);
            sub_267CD9C08(&qword_28022A8B8, MEMORY[0x277D5EC70]);
            v389 = sub_267EF8FE8();
            v390 = v376;
            v391 = *(v387 + 8);
            v391(v388, v377);
            sub_267B9FED8(v472, &qword_28022A890, &qword_267F01F98);
            sub_267B9FED8(v378, &qword_28022A890, &qword_267F01F98);
            v391(v465, v377);
            v379 = v510;
            sub_267B9FED8(v390, &qword_28022A890, &qword_267F01F98);
            v383 = v489;
            v384 = v507;
            if (v389)
            {
              goto LABEL_291;
            }

LABEL_289:

            v386 = v466;
            goto LABEL_295;
          }

          sub_267B9FED8(v472, &qword_28022A890, &qword_267F01F98);
          sub_267B9FED8(v378, &qword_28022A890, &qword_267F01F98);
          (*(v473 + 8))(v385, v377);
        }

        sub_267B9FED8(v376, &qword_28022A888, &qword_267F01F90);
        v383 = v489;
        v384 = v507;
        goto LABEL_289;
      }
    }

    else
    {

      v376 = v469;
      v377 = v470;
      v378 = v468;
    }

    v379 = sub_267DE86A0(MEMORY[0x277D84F90]);
    if (!v489)
    {
      goto LABEL_282;
    }

    goto LABEL_280;
  }

  (*(v474 + 8))(v502, v500);
  (*(v480 + 8))(v324, v479);

LABEL_276:
}

uint64_t sub_267CD8EE8()
{
  sub_267EF56B8();
  v0 = sub_267EF6758();

  return v0;
}

uint64_t sub_267CD8F34()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A880, &unk_267F01F80);
  return sub_267EF9098();
}

uint64_t sub_267CD8F78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8C0, &unk_267F0AC60);
  v1 = OUTLINED_FUNCTION_18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_60();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  sub_267EF54F8();
  v10 = sub_267EF5518();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    sub_267BC9B04(v9, v6, &qword_28022A8C0, &unk_267F0AC60);
    v12 = *(v10 - 8);
    v13 = (*(v12 + 88))(v6, v10);
    if (v13 == *MEMORY[0x277D5E270])
    {
      v11 = 1;
    }

    else if (v13 == *MEMORY[0x277D5E298])
    {
      v11 = 4;
    }

    else if (v13 == *MEMORY[0x277D5E2C8])
    {
      v11 = 8;
    }

    else if (v13 == *MEMORY[0x277D5E290] || v13 == *MEMORY[0x277D5E268])
    {
      v11 = 2;
    }

    else if (v13 == *MEMORY[0x277D5E288])
    {
      v11 = 3;
    }

    else
    {
      (*(v12 + 8))(v6, v10);
      v11 = 0;
    }
  }

  sub_267B9FED8(v9, &qword_28022A8C0, &unk_267F0AC60);
  return v11;
}

uint64_t sub_267CD9168(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_267EFC020;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return v4;
}

uint64_t sub_267CD91D4()
{
  result = sub_267DE87C0();
  if (!v1)
  {
    return 7104878;
  }

  return result;
}

void sub_267CD9210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_22();
  a19 = v21;
  a20 = v22;
  v140 = v20;
  v24 = v23;
  v26 = v25;
  v125 = v27;
  v28 = sub_267EF6AB8();
  v29 = OUTLINED_FUNCTION_58(v28);
  v141 = v30;
  v142 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_0();
  v139 = v34 - v33;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8C8, &qword_267F01FE0);
  v35 = OUTLINED_FUNCTION_58(v126);
  v128 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_60();
  v124 = (v39 - v40);
  v42 = MEMORY[0x28223BE20](v41);
  v127 = &v124 - v43;
  MEMORY[0x28223BE20](v42);
  v146 = (&v124 - v44);
  OUTLINED_FUNCTION_26_2();
  v45 = sub_267EF6B48();
  v46 = OUTLINED_FUNCTION_58(v45);
  v137 = v47;
  v138 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_0_0();
  v136 = v51 - v50;
  OUTLINED_FUNCTION_26_2();
  v52 = sub_267EF6B58();
  v53 = OUTLINED_FUNCTION_58(v52);
  v134 = v54;
  v135 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_0_0();
  v133 = v58 - v57;
  OUTLINED_FUNCTION_26_2();
  v59 = sub_267EF6B78();
  v60 = OUTLINED_FUNCTION_58(v59);
  v143 = v61;
  v144 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_0_0();
  v145 = v65 - v64;
  OUTLINED_FUNCTION_26_2();
  v66 = sub_267EF2CC8();
  v67 = OUTLINED_FUNCTION_18(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_0_0();
  v131 = v71 - v70;
  OUTLINED_FUNCTION_26_2();
  v72 = sub_267EF2E98();
  v73 = OUTLINED_FUNCTION_18(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_0_0();
  v130 = v77 - v76;
  OUTLINED_FUNCTION_26_2();
  v129 = sub_267EF6BD8();
  v78 = OUTLINED_FUNCTION_58(v129);
  v80 = v79;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_0_0();
  v85 = v84 - v83;
  v86 = sub_267EF2EF8();
  v87 = OUTLINED_FUNCTION_18(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_0_0();
  v90 = sub_267EF2E38();
  v91 = OUTLINED_FUNCTION_18(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_60();
  v95 = MEMORY[0x28223BE20](v94);
  MEMORY[0x28223BE20](v95);
  v132 = *v26;
  v96 = v24[4];
  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  sub_267EF3B68();
  sub_267EF3B68();
  v97 = v145;
  sub_267EF3B68();
  sub_267EF2EE8();
  (*(v80 + 104))(v85, *MEMORY[0x277D56150], v129);
  sub_267EF2E78();
  sub_267EF2CB8();
  v98 = sub_267EF6BF8();
  v99 = *(v98 + 48);
  v100 = *(v98 + 52);
  swift_allocObject();
  v101 = v146;
  v102 = v139;
  sub_267EF6BE8();
  (*(v134 + 104))(v133, *MEMORY[0x277D56138], v135);
  (*(v137 + 104))(v136, *MEMORY[0x277D56120], v138);
  sub_267EF6C58();
  sub_267EF6C78();
  sub_267CD9C08(&qword_28022A8D0, MEMORY[0x277D563F8]);
  sub_267EF8F28();
  sub_267EF6B68();
  sub_267EF6AA8();
  v103 = v140;
  sub_267EF6A98();
  if (v103)
  {

    (*(v141 + 8))(v102, v142);
    (*(v143 + 8))(v97, v144);
  }

  else
  {
    (*(v141 + 8))(v102, v142);
    v105 = v127;
    v104 = v128;
    v106 = *(v128 + 16);
    v107 = v126;
    v106(v127, v101, v126);
    if ((*(v104 + 88))(v105, v107) == *MEMORY[0x277D56080])
    {
      (*(v104 + 96))(v105, v107);
      v108 = v104;
      v109 = *v105;
      v110 = sub_267EF6C68();

      (*(v108 + 8))(v101, v107);
      (*(v143 + 8))(v97, v144);
      *v125 = v110;
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v111 = sub_267EF8A08();
      __swift_project_value_buffer(v111, qword_280240FB0);
      v106(v124, v101, v107);
      v112 = sub_267EF89F8();
      v113 = sub_267EF95E8();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        a10 = v142;
        *v114 = 136315138;
        sub_267CD9C50();
        v115 = sub_267EF9E58();
        v116 = v107;
        v118 = v117;
        v119 = OUTLINED_FUNCTION_6_19();
        v101(v119, v116);
        v120 = sub_267BA33E8(v115, v118, &a10);
        v107 = v116;
        v105 = v127;

        *(v114 + 4) = v120;
        _os_log_impl(&dword_267B93000, v112, v113, "#SearchForMessagesNLIntentTransformer DateTimeResolver returned unexpected recommendation: %s", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v142);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {

        v121 = OUTLINED_FUNCTION_6_19();
        v101(v121, v107);
      }

      v122 = v144;
      sub_267C266B0();
      swift_allocError();
      *v123 = 0xD000000000000033;
      v123[1] = 0x8000000267F15620;
      swift_willThrow();

      v101(v146, v107);
      (*(v143 + 8))(v145, v122);
      v101(v105, v107);
    }
  }

  OUTLINED_FUNCTION_10_4();
}

uint64_t sub_267CD9C08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267CD9C50()
{
  result = qword_28022A8D8;
  if (!qword_28022A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A8C8, &qword_267F01FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A8D8);
  }

  return result;
}

uint64_t sub_267CD9CD0(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_267CD9CF0, 0, 0);
}

uint64_t sub_267CD9CF0()
{
  v35 = v0;
  v1 = v0[21];
  v2 = v1[7];
  v0[22] = v2;
  v3 = v1[8];
  v0[23] = v3;
  v4 = v1[9];
  v0[24] = v4;
  v0[25] = v1[10];
  v0[26] = v1[11];
  if (v3)
  {
    sub_267CDAF0C(v2, v3);
    v5 = qword_280228818;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_267EF8A08();
    v0[27] = __swift_project_value_buffer(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95C8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v9 = 136446466;
      *(v9 + 4) = sub_267BA33E8(v2, v3, &v34);
      *(v9 + 12) = 2082;
      v0[19] = v4;
      sub_267EF7C38();
      sub_267CDAF50(&qword_28022A060, MEMORY[0x277D55380]);
      v10 = sub_267EF9E58();
      v12 = sub_267BA33E8(v10, v11, &v34);

      *(v9 + 14) = v12;
      _os_log_impl(&dword_267B93000, v7, v8, "#SpokenMessagesFlow searching for a message for notification ID %{public}s in %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v13 = v0[21];
    v14 = v13[5];
    v15 = v13[6];
    __swift_project_boxed_opaque_existential_0(v13 + 2, v14);
    (*(v15 + 24))(v14, v15);
    v16 = swift_task_alloc();
    v0[28] = v16;
    *v16 = v0;
    v16[1] = sub_267CDA114;

    return sub_267C86680(v2, v3, v4, (v0 + 7));
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
      v33 = v0[21];
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);

    v19 = sub_267EF89F8();
    v20 = sub_267EF95E8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_48();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      v23 = v1[7];
      v24 = v1[8];
      v25 = v1[9];
      v26 = v1[10];
      v27 = v1[11];
      v0[2] = v23;
      v0[3] = v24;
      v0[4] = v25;
      v0[5] = v26;
      v0[6] = v27;
      sub_267CDAF0C(v23, v24);
      v28 = sub_267EF9098();
      v30 = sub_267BA33E8(v28, v29, &v34);

      *(v21 + 4) = v30;
      _os_log_impl(&dword_267B93000, v19, v20, "#SpokenMessagesFlow: execute() called in an unexpected state: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_32_0();
    }

    v31 = v0[20];
    sub_267EF4018();
    OUTLINED_FUNCTION_17();

    return v32();
  }
}

uint64_t sub_267CDA114()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = v2[28];
  v8 = *v1;
  v3[29] = v5;
  v3[30] = v0;

  __swift_destroy_boxed_opaque_existential_0(v3 + 7);
  if (v0)
  {
    v6 = sub_267CDA7C8;
  }

  else
  {
    v6 = sub_267CDA22C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267CDA22C()
{
  v1 = v0[29];
  v2 = v0[27];

  v3 = sub_267EF89F8();
  v4 = sub_267EF95C8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_48();
    *v7 = 134349056;
    *(v7 + 4) = sub_267BAF0DC(v6);

    OUTLINED_FUNCTION_6_20(&dword_267B93000, v8, v4, "#SpokenMessagesFlow received intent response with %{public}ld message(s), pushing reading flow");
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v9 = v0[29];
  }

  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[21];
  sub_267B9AFEC(v12 + 16, (v0 + 12));
  v13 = *(v12 + 136);
  v14 = *(v12 + 144);
  type metadata accessor for SpokenMessagesFlowSource();
  swift_allocObject();

  v15 = swift_task_alloc();
  v0[31] = v15;
  *v15 = v0;
  v15[1] = sub_267CDA3C4;
  v16 = v0[29];
  v17 = v0[25];
  v18 = v0[26];
  v19 = v0[22];

  return sub_267C124E4(v19, v10, v16, v11, v17, v18, (v0 + 12), v13);
}

uint64_t sub_267CDA3C4(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  v6 = *(v4 + 248);
  v7 = *v2;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 256) = v1;

  if (v1)
  {
    v9 = sub_267CDA678;
  }

  else
  {
    *(v5 + 264) = a1;
    v9 = sub_267CDA4E0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_267CDA4E0()
{
  v1 = v0[33];
  v18 = v0[25];
  v19 = v0[26];
  v2 = v0[24];
  v17 = v0[23];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  sub_267CDAF50(&qword_28022A8E0, type metadata accessor for SpokenMessagesFlowSource);
  sub_267CDAF50(&qword_28022A8E8, type metadata accessor for SpokenMessagesFlowSource);
  v6 = sub_267EF34B8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  swift_retain_n();
  v9 = sub_267EF34A8();
  v10 = v3[7];
  v11 = v3[8];
  v12 = v3[9];
  v13 = v3[10];
  v14 = v3[11];
  *(v3 + 7) = 0u;
  *(v3 + 9) = 0u;
  v3[11] = 0;
  sub_267CDAEC8(v10, v11);
  v0[18] = v9;
  sub_267EF3FF8();

  sub_267CDAEC8(v4, v17);

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267CDA678()
{
  v15 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = swift_slowAlloc();
    v14 = v7;
    OUTLINED_FUNCTION_8_21(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v8 = sub_267EF9098();
    v10 = sub_267BA33E8(v8, v9, &v14);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v11, v5, "#SpokenMessagesFlow: HandleIntent failed: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_9_23();

  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267CDA7C8()
{
  v15 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = swift_slowAlloc();
    v14 = v7;
    OUTLINED_FUNCTION_8_21(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v8 = sub_267EF9098();
    v10 = sub_267BA33E8(v8, v9, &v14);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v11, v5, "#SpokenMessagesFlow: HandleIntent failed: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_9_23();

  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267CDA974()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[11];
  sub_267CDAEC8(v0[7], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v4 = v0[18];
}

uint64_t *sub_267CDA9B4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[11];
  sub_267CDAEC8(v0[7], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v4 = v0[18];

  return v0;
}

uint64_t sub_267CDA9F4()
{
  sub_267CDA9B4();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow06SpokenbC0C5State33_F40BDBB263014468BD0C40EFDBF623BCLLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_267CDAA78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267CDAAC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_267CDAB24(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_267CDAB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267CDAC10;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_267CDAC10(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1);
}

uint64_t sub_267CDAD10(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267CDADAC;

  return sub_267CD9CD0(a1);
}

uint64_t sub_267CDADAC()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267CDAE90()
{
  type metadata accessor for SpokenMessagesFlow();

  return sub_267EF3748();
}

uint64_t sub_267CDAEC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_267CDAF0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_267CDAF50(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_267CDAF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = 0;
  v3[5] = 0;
  v3[2] = a2;
  v3[3] = a3;
  v3[6] = a1;
  return v3;
}

uint64_t sub_267CDAFAC()
{
  v1 = sub_267EF4C08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_267EF4B88();
  sub_267E57DFC(v5, &v66);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_3();
  v8(v7);
  if (v67)
  {
    sub_267BE58F4(&v66, v68);
    OUTLINED_FUNCTION_10_21();
    v9 = v5[45];
    v10 = OUTLINED_FUNCTION_38_0();
    v12 = v11(v10);
    v13 = v0[5];
    v0[4] = v12;
    v0[5] = v14;

    OUTLINED_FUNCTION_10_21();
    v15 = v5[46];
    v16 = OUTLINED_FUNCTION_38_0();
    v17(v16);
    if (v18)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v19 = sub_267EF8A08();
      __swift_project_value_buffer(v19, qword_280240FB0);

      v20 = sub_267EF89F8();
      v21 = sub_267EF95D8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_48();
        v23 = OUTLINED_FUNCTION_52();
        *&v66 = v23;
        *v22 = 136315138;
        v24 = OUTLINED_FUNCTION_3();
        *(v22 + 4) = sub_267BA33E8(v24, v25, v26);
        OUTLINED_FUNCTION_14_5();
        _os_log_impl(v27, v28, v29, v30, v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF4458();
      sub_267EF7C38();
      OUTLINED_FUNCTION_3();
      sub_267EF7C08();
LABEL_8:
      v31 = sub_267EF4438();

LABEL_9:
      __swift_destroy_boxed_opaque_existential_0(v68);
      return v31;
    }

    OUTLINED_FUNCTION_10_21();
    v38 = v5[34];
    v39 = OUTLINED_FUNCTION_38_0();
    if (v40(v39))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v41 = sub_267EF8A08();
      v42 = OUTLINED_FUNCTION_13_8(v41, qword_280240FB0);
      v43 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v43))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v44, v45, "#SearchForMessagesAppResolutionOnDeviceFlowStrategy specified app is not installed, returning noAppFound");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF4458();
      v31 = sub_267EF4408();
      goto LABEL_9;
    }

    v46 = v0[6];
    if (v46)
    {
      sub_267DE87C0();
      if (v47)
      {
        v48 = [v46 speakableGroupNames];
        if (v48)
        {

          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0_10();
            swift_once();
          }

          v49 = sub_267EF8A08();
          __swift_project_value_buffer(v49, qword_280240FB0);

          v50 = sub_267EF89F8();
          v51 = sub_267EF95D8();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = OUTLINED_FUNCTION_48();
            v53 = OUTLINED_FUNCTION_52();
            *&v66 = v53;
            *v52 = 136315138;
            v54 = OUTLINED_FUNCTION_3();
            *(v52 + 4) = sub_267BA33E8(v54, v55, v56);
            OUTLINED_FUNCTION_14_5();
            _os_log_impl(v57, v58, v59, v60, v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v53);
            OUTLINED_FUNCTION_32_0();
            OUTLINED_FUNCTION_32_0();
          }

          sub_267EF7C38();
          OUTLINED_FUNCTION_3();
          sub_267EF7C08();
          sub_267EF4458();
          goto LABEL_8;
        }
      }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v61 = sub_267EF8A08();
    v62 = OUTLINED_FUNCTION_13_8(v61, qword_280240FB0);
    v63 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v63))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v64, v65, "#SearchForMessagesAppResolutionOnDeviceFlowStrategy app not specified, defaulting to Messages app");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF4458();
    sub_267EF7C38();
    sub_267EF7C08();
    goto LABEL_8;
  }

  sub_267CD2360(&v66);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v32 = sub_267EF8A08();
  v33 = OUTLINED_FUNCTION_13_8(v32, qword_280240FB0);
  v34 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v34))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v35, v36, "#SearchForMessagesAppResolutionOnDeviceFlowStrategy received non-NL input, returning noAppFound");
    OUTLINED_FUNCTION_26();
  }

  sub_267EF4458();
  return sub_267EF4408();
}

void sub_267CDB550()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v0 = sub_267EF8A08();
  v1 = OUTLINED_FUNCTION_13_8(v0, qword_280240FB0);
  v2 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_52();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_267BA33E8(0xD000000000000065, 0x8000000267F15920, &v7);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v5, v6, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_6_21();
  __break(1u);
}

uint64_t sub_267CDB670()
{
  v12 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(0xD000000000000062, 0x8000000267F158B0, &v11);
    OUTLINED_FUNCTION_14_5();
    _os_log_impl(v6, v7, v8, v9, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  return OUTLINED_FUNCTION_6_21();
}

void sub_267CDB7B8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v0 = sub_267EF8A08();
  v1 = OUTLINED_FUNCTION_13_8(v0, qword_280240FB0);
  v2 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_52();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_267BA33E8(0xD000000000000067, 0x8000000267F15840, &v7);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v5, v6, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_6_21();
  __break(1u);
}

uint64_t sub_267CDB8D8()
{
  v12 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(0xD000000000000064, 0x8000000267F15780, &v11);
    OUTLINED_FUNCTION_14_5();
    _os_log_impl(v6, v7, v8, v9, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  return OUTLINED_FUNCTION_6_21();
}

uint64_t sub_267CDBA20()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_267CDBA48()
{
  sub_267CDBA20();

  return swift_deallocClassInstance();
}

uint64_t sub_267CDBAA0()
{
  result = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return result;
}

uint64_t sub_267CDBAAC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_267CDBAE0()
{
  v2 = *v0;
  v3 = sub_267CDAFAC();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_267CDBB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B620] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDC6B8;

  return MEMORY[0x2821BA000](a1, a2, a3, a4);
}

uint64_t sub_267CDBC04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_267CDC6B8;

  return sub_267E48E64();
}

uint64_t sub_267CDBCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B630] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDC6B8;

  return MEMORY[0x2821BA010](a1, a2, a3, a4);
}

uint64_t sub_267CDBDB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CDC6B8;

  return sub_267CDB65C();
}

uint64_t sub_267CDBE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C030] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267BCE5E4;

  return MEMORY[0x2821BB9E8](a1, a2, a3, a4);
}

uint64_t sub_267CDBF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C038] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDC6B8;

  return MEMORY[0x2821BB9F0](a1, a2, a3, a4);
}

uint64_t sub_267CDBFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C020] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDC6B8;

  return MEMORY[0x2821BB9D8](a1, a2, a3, a4);
}

uint64_t sub_267CDC088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C028] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDC6B8;

  return MEMORY[0x2821BB9E0](a1, a2, a3, a4);
}

uint64_t sub_267CDC14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5C018] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_267CDC6B8;

  return MEMORY[0x2821BB9D0](a1, a2, a3, a4, a5);
}

uint64_t sub_267CDC228()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CDC6B8;

  return sub_267CDB8C4();
}

uint64_t sub_267CDC2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C078] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDC6B8;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}

uint64_t sub_267CDC378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C080] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDC6B8;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t sub_267CDC43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C070] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDC6B8;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t sub_267CDC500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5C068] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_267CDC6B8;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

uint64_t sub_267CDC634(uint64_t a1)
{
  result = sub_267CDC678(&qword_28022A900);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267CDC678(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchForMessagesAppResolutionOnDeviceFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267CDC6BC@<X0>(uint8_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v67 - v10;
  v12 = sub_267EF4C08();
  v13 = OUTLINED_FUNCTION_58(v12);
  v73 = v14;
  v74 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v72 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_267EF4BA8();
  v19 = OUTLINED_FUNCTION_58(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v26 = sub_267EF8A08();
  v27 = __swift_project_value_buffer(v26, qword_280240FB0);
  (*(v21 + 16))(v25, a1, v18);
  v71 = v27;
  v28 = sub_267EF89F8();
  v29 = sub_267EF95C8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v69 = a1;
    v31 = v30;
    v32 = swift_slowAlloc();
    v70 = a2;
    v68 = v32;
    v77[0] = v32;
    *v31 = 136315138;
    sub_267BC4154(&qword_28022AF50, MEMORY[0x277D5C118]);
    v33 = sub_267EF9E58();
    v34 = v11;
    v35 = v3;
    v37 = v36;
    (*(v21 + 8))(v25, v18);
    v38 = sub_267BA33E8(v33, v37, v77);
    v3 = v35;
    v11 = v34;

    *(v31 + 4) = v38;
    _os_log_impl(&dword_267B93000, v28, v29, "#ReplyConfirmationFlowStrategy received input: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    OUTLINED_FUNCTION_32_0();
    a1 = v69;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v21 + 8))(v25, v18);
  }

  v39 = v72;
  sub_267EF4B88();
  v40 = sub_267E57DFC(v39, &v75);
  (*(v73 + 8))(v39, v74, v40);
  if (v76)
  {
    sub_267BE58F4(&v75, v77);
    v41 = v78;
    v42 = v79;
    __swift_project_boxed_opaque_existential_0(v77, v78);
    v43 = (*(v42 + 384))(v41, v42);
    v44 = sub_267EF89F8();
    v45 = sub_267EF95D8();
    v46 = os_log_type_enabled(v44, v45);
    if (v43 == 2)
    {
      if (v46)
      {
        v61 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v61);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v62, v63, "#ReplyConfirmationFlowStrategy cancelled");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E48();
      return __swift_destroy_boxed_opaque_existential_0(v77);
    }

    if (v43 == 1)
    {
      if (v46)
      {
        v55 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v55);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v56, v57, "#ReplyConfirmationFlowStrategy rejected");
        OUTLINED_FUNCTION_26();
      }

      v50 = MEMORY[0x277D5BED0];
    }

    else
    {
      if (v43)
      {
        if (v46)
        {
          v64 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v64);
          OUTLINED_FUNCTION_3_0(&dword_267B93000, v65, v66, "#ReplyConfirmationFlowStrategy non-confirmation input, ignoring");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E68();
        return __swift_destroy_boxed_opaque_existential_0(v77);
      }

      if (v46)
      {
        v47 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v47);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v48, v49, "#ReplyConfirmationFlowStrategy confirmed");
        OUTLINED_FUNCTION_26();
      }

      v50 = MEMORY[0x277D5BED8];
    }

    v58 = *v50;
    v59 = sub_267EF44F8();
    (*(*(v59 - 8) + 104))(v11, v58, v59);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v59);
    v60 = OBJC_IVAR____TtC16SiriMessagesFlow29ReplyConfirmationFlowStrategy_confirmationResponse;
    swift_beginAccess();
    sub_267CCED84(v11, v3 + v60);
    swift_endAccess();
    sub_267EF3E58();
    return __swift_destroy_boxed_opaque_existential_0(v77);
  }

  sub_267B9FF34(&v75, &unk_28022BBF0, &unk_267F01C60);
  v51 = sub_267EF89F8();
  v52 = sub_267EF95E8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v53);
    _os_log_impl(&dword_267B93000, v51, v52, "#ReplyConfirmationFlowStrategy received non-NL input, ignoring", a1, 2u);
    OUTLINED_FUNCTION_26();
  }

  return sub_267EF3E68();
}

uint64_t sub_267CDCC74(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v2[7] = OUTLINED_FUNCTION_2();

  return MEMORY[0x2822009F8](sub_267CDCD04, 0, 0);
}

uint64_t sub_267CDCD04()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow29ReplyConfirmationFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267CCED14(v2 + v4, v1);
  sub_267EF4B58();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267CDCDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v4[21] = OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  v4[22] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v4[23] = OUTLINED_FUNCTION_2();
  v14 = sub_267EF4228();
  v4[24] = v14;
  v15 = *(v14 - 8);
  v4[25] = v15;
  v16 = *(v15 + 64);
  v4[26] = OUTLINED_FUNCTION_2();

  return MEMORY[0x2822009F8](sub_267CDCEDC, 0, 0);
}

uint64_t sub_267CDCEDC()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  type metadata accessor for SendMessageCATs();
  sub_267EF7B68();
  v0[27] = sub_267EF78E8();
  sub_267EF90F8();
  v5 = sub_267EF79B8();
  OUTLINED_FUNCTION_27_3(v5);
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_267CDCFD4;
  v7 = v0[26];
  v8 = v0[22];

  return sub_267E4A8AC();
}

uint64_t sub_267CDCFD4()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 232) = v0;

  sub_267B9FF34(v4, &unk_28022AE30, &qword_267EFC0B0);

  if (v0)
  {
    v5 = sub_267CDD3A4;
  }

  else
  {
    v5 = sub_267CDD138;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267CDD138()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#ReplyConfirmationFlowStrategy returning reply confirmation prompt");
    OUTLINED_FUNCTION_26();
  }

  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v10 = *(v0 + 168);
  v27 = *(v0 + 184);
  v28 = *(v0 + 176);
  v11 = *(v0 + 160);
  v12 = *(v0 + 136);

  v13 = v11[6];
  __swift_project_boxed_opaque_existential_0(v11 + 2, v11[5]);
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_31();
  v16(v15);
  v17 = v11[6];
  __swift_project_boxed_opaque_existential_0(v11 + 2, v11[5]);
  v18 = *(v17 + 8);
  v19 = OUTLINED_FUNCTION_31();
  v20(v19);
  v21 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_31();
  sub_267EF3BC8();
  sub_267CDD42C(v10);
  v22 = sub_267EF4158();
  OUTLINED_FUNCTION_27_3(v22);
  v23 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v24 = MEMORY[0x277D5C1D8];
  v12[3] = v23;
  v12[4] = v24;
  __swift_allocate_boxed_opaque_existential_0(v12);
  sub_267EF3F58();
  sub_267B9FF34(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v10, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v7 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_17();

  return v25();
}

uint64_t sub_267CDD3A4()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];

  OUTLINED_FUNCTION_17();
  v6 = v0[29];

  return v5();
}

uint64_t sub_267CDD42C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  sub_267EF4148();
  sub_267EF4098();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v16 = swift_allocObject();
  v53 = xmmword_267EFC020;
  *(v16 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v16 + 32) = sub_267BC9500();
  *(v16 + 40) = v17;
  sub_267EF4118();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_267EFCE30;
  *(v18 + 32) = sub_267BB90E4(0);
  *(v18 + 40) = v19;
  *(v18 + 48) = sub_267BB90E4(1);
  *(v18 + 56) = v20;
  *(v18 + 64) = sub_267BB90E4(2);
  *(v18 + 72) = v21;
  sub_267EF4108();
  v22 = sub_267EF6488();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_267EF6478();
  sub_267BBB050();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v25 = sub_267EF8A08();
  __swift_project_value_buffer(v25, qword_280240FB0);
  v26 = *(v5 + 16);
  v54 = v15;
  v26(v13, v15, v2);
  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v52 = a1;
    v30 = v29;
    v50 = v29;
    v51 = swift_slowAlloc();
    v56 = v51;
    *v30 = 136315138;
    v26(v10, v13, v2);
    sub_267EF5458();
    v55[3] = v2;
    v55[4] = sub_267BC4154(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v55);
    v26(boxed_opaque_existential_0, v10, v2);
    v48 = sub_267EF5448();
    v32 = v13;
    v33 = v2;
    v35 = v34;
    v49 = v28;
    v36 = *(v5 + 8);
    v37 = v10;
    v38 = v5;
    v36(v37, v33);
    v36(v32, v33);
    __swift_destroy_boxed_opaque_existential_0(v55);
    v39 = sub_267BA33E8(v48, v35, &v56);

    v40 = v50;
    *(v50 + 4) = v39;
    _os_log_impl(&dword_267B93000, v27, v49, "#ReplyConfirmationFlowStrategy sending system dialog act: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v36 = *(v5 + 8);
    v38 = v5;
    v36(v13, v2);
    v33 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v41 = *(v38 + 72);
  v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v53;
  v44 = v43 + v42;
  v45 = v54;
  v26(v44, v54, v33);
  sub_267EF4088();
  return (v36)(v45, v33);
}

uint64_t sub_267CDD964()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_267B9FF34(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29ReplyConfirmationFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);
  return v0;
}

uint64_t sub_267CDD9AC()
{
  sub_267CDD964();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReplyConfirmationFlowStrategy()
{
  result = qword_28022A910;
  if (!qword_28022A910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267CDDA58()
{
  sub_267C25DD4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267CDDAF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CDE0E8;

  return sub_267CDCC74(a1);
}

uint64_t sub_267CDDB90(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_267CDE0E8;

  return sub_267CDCDA8(a1, v4, v5);
}

uint64_t sub_267CDDC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B658] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ReplyConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267CDE0E8;

  return MEMORY[0x2821BA040](a1, a2, v10, a4);
}

uint64_t sub_267CDDD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B660] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ReplyConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267CDE0E8;

  return MEMORY[0x2821BA048](a1, a2, v10, a4);
}

uint64_t sub_267CDDDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B648] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267CDE0E8;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_267CDDE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B640] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267CDDF34;

  return MEMORY[0x2821BA028](a1, a2, a3);
}

uint64_t sub_267CDDF34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CDE024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B650] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDE0E8;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

id sub_267CDE0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_267EF8FF8();

  v6 = [v4 initWithLanguage:v5 assetType:a3];

  return v6;
}

void sub_267CDE168(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  v3 = 0;
  v4 = 0;
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v7 = [v5 text];
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v7;
    v9 = sub_267EF9028();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!((v12 == 0) | v4 & 1) && ([v6 removeSpaceBefore] & 1) == 0)
    {
      MEMORY[0x26D608E60](32, 0xE100000000000000);
    }

    v13 = [v6 text];
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = v13;
    v15 = sub_267EF9028();
    v17 = v16;

    MEMORY[0x26D608E60](v15, v17);

    v4 = [v6 removeSpaceAfter];

    ++v3;
  }
}

uint64_t sub_267CDE30C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_267CDE394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_267EF4C08();
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_60();
  v74 = v11 - v12;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v13);
  v75 = &v70 - v14;
  v15 = sub_267EF4BA8();
  v16 = OUTLINED_FUNCTION_58(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v23 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
  (*(v18 + 16))(v22, a1, v15);
  v76 = v2;
  v24 = sub_267EF89F8();
  v25 = sub_267EF95C8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_48();
    v72 = a1;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_52();
    v73 = a2;
    v71 = v28;
    v80[0] = v28;
    *v27 = 136315138;
    sub_267CE855C(&qword_28022AF50, MEMORY[0x277D5C118]);
    v29 = sub_267EF9E58();
    v30 = v8;
    v31 = v5;
    v33 = v32;
    v34 = *(v18 + 8);
    v35 = OUTLINED_FUNCTION_109();
    v36(v35);
    v37 = sub_267BA33E8(v29, v33, v80);
    v5 = v31;
    v8 = v30;

    *(v27 + 4) = v37;
    _os_log_impl(&dword_267B93000, v24, v25, "#SendMessageRCHFlowStrategy received input: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  else
  {

    v38 = *(v18 + 8);
    v39 = OUTLINED_FUNCTION_109();
    v40(v39);
  }

  if (*(*(v77 + 56) + 214))
  {
    v41 = v76;
    v42 = sub_267EF89F8();
    v43 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v43))
    {
LABEL_10:

      return sub_267EF3E68();
    }

    v44 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v44);
    v45 = "#SendMessageRCHFlowStrategy intent was already handled, ignoring";
LABEL_9:
    OUTLINED_FUNCTION_48_3(&dword_267B93000, v42, v41, v45);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    goto LABEL_10;
  }

  sub_267EF4B88();
  v47 = *(v8 + 88);
  v48 = OUTLINED_FUNCTION_44_0();
  v50 = v49(v48);
  v51 = *MEMORY[0x277D5C150];
  v52 = *(v8 + 8);
  v53 = OUTLINED_FUNCTION_44_0();
  v52(v53);
  if (v50 == v51)
  {
    return sub_267EF3E58();
  }

  v54 = v74;
  sub_267EF4B88();
  v55 = sub_267E57DFC(v54, &v78);
  (v52)(v54, v5, v55);
  if (!v79)
  {
    sub_267B9F98C(&v78, &unk_28022BBF0, &unk_267F01C60);
    v41 = v76;
    v42 = sub_267EF89F8();
    v64 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v64))
    {
      goto LABEL_10;
    }

    v65 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v65);
    v45 = "#SendMessageRCHFlowStrategy unexpected input, ignoring";
    goto LABEL_9;
  }

  sub_267BE58F4(&v78, v80);
  v56 = v82;
  __swift_project_boxed_opaque_existential_0(v80, v81);
  v57 = *(v56 + 288);
  v58 = OUTLINED_FUNCTION_26_0();
  if ((v59(v58) & 1) != 0 && (v60 = v82, __swift_project_boxed_opaque_existential_0(v80, v81), v61 = *(v60 + 208), v62 = OUTLINED_FUNCTION_26_0(), (v63(v62) & 1) == 0))
  {
    v66 = v76;
    v67 = sub_267EF89F8();
    v68 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v68))
    {
      v69 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v69);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v67, v66, "#SendMessageRCHFlowStrategy unrelated request, ignoring");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    sub_267EF3E68();
  }

  else
  {
    sub_267EF3E58();
  }

  return __swift_destroy_boxed_opaque_existential_0(v80);
}

uint64_t sub_267CDE89C()
{
  OUTLINED_FUNCTION_12();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = sub_267EF4BE8();
  v1[17] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[18] = v5;
  v7 = *(v6 + 64);
  v1[19] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4C08();
  v1[20] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[21] = v9;
  v11 = *(v10 + 64);
  v1[22] = OUTLINED_FUNCTION_50();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CDE9B4()
{
  v97 = v0;
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 128) + 56);
  *(v0 + 208) = v2;
  sub_267D60DE4();
  if (v1)
  {
    v3 = qword_280228818;
    v4 = *(v0 + 120);
    if (v3 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v5 = *(v0 + 200);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 112);
    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    v10 = *(v7 + 16);
    v11 = OUTLINED_FUNCTION_14_1();
    v10(v11);
    v12 = v4;
    v13 = sub_267EF89F8();
    v14 = sub_267EF95D8();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 200);
    if (v15)
    {
      v94 = v10;
      v17 = *(v0 + 192);
      v19 = *(v0 + 160);
      v18 = *(v0 + 168);
      v92 = *(v0 + 120);
      swift_slowAlloc();
      v91 = OUTLINED_FUNCTION_40_2();
      v93 = OUTLINED_FUNCTION_52();
      v96[0] = v93;
      *v14 = 136315394;
      v20 = OUTLINED_FUNCTION_109();
      v94(v20);
      v21 = sub_267EF9098();
      v23 = v22;
      log = v13;
      v24 = *(v18 + 8);
      v24(v16, v19);
      v25 = v21;
      v10 = v94;
      v26 = sub_267BA33E8(v25, v23, v96);

      *(v14 + 4) = v26;
      v27 = v24;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v12;
      *v91 = v92;
      v28 = v12;
      _os_log_impl(&dword_267B93000, log, v14, "#SendMessageRCHFlowStrategy converting %s\nwith current intent: %@", v14, 0x16u);
      sub_267B9F98C(v91, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      __swift_destroy_boxed_opaque_existential_0(v93);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    else
    {
      v54 = *(v0 + 160);
      v55 = *(v0 + 168);

      v27 = *(v55 + 8);
      v27(v16, v54);
    }

    v56 = sub_267EF97C8();

    v57 = *(v2 + 64);
    *(v2 + 64) = v56;
  }

  else
  {
    v29 = *(v2 + 136);

    sub_267C390B0();

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v30 = *(v0 + 184);
    v31 = *(v0 + 160);
    v32 = *(v0 + 168);
    v33 = *(v0 + 112);
    v34 = sub_267EF8A08();
    __swift_project_value_buffer(v34, qword_280240FB0);
    v10 = *(v32 + 16);
    (v10)(v30, v33, v31);
    v35 = sub_267EF89F8();
    sub_267EF95D8();
    v36 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v36, v37))
    {
      v39 = *(v0 + 184);
      v38 = *(v0 + 192);
      v95 = v10;
      v40 = *(v0 + 160);
      v41 = *(v0 + 168);
      OUTLINED_FUNCTION_48();
      v42 = OUTLINED_FUNCTION_64_2();
      v96[0] = v42;
      *v33 = 136315138;
      v43 = OUTLINED_FUNCTION_63();
      v95(v43);
      v44 = sub_267EF9098();
      v46 = v45;
      v47 = v39;
      v27 = *(v41 + 8);
      v27(v47, v40);
      v10 = v95;
      v48 = sub_267BA33E8(v44, v46, v96);

      *(v33 + 4) = v48;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    else
    {
      v58 = *(v0 + 184);
      v59 = *(v0 + 160);
      v60 = *(v0 + 168);

      v27 = *(v60 + 8);
      v61 = OUTLINED_FUNCTION_26_0();
      (v27)(v61);
    }
  }

  v62 = *(v0 + 168);
  (v10)(*(v0 + 176), *(v0 + 112), *(v0 + 160));
  v63 = *(v62 + 88);
  v64 = OUTLINED_FUNCTION_66();
  v66 = v65(v64);
  if (v66 == *MEMORY[0x277D5C128])
  {
    goto LABEL_14;
  }

  if (v66 != *MEMORY[0x277D5C150])
  {
    if (v66 != *MEMORY[0x277D5C160])
    {
      v81 = *(v0 + 168);
      sub_267C266B0();
      OUTLINED_FUNCTION_61_1();
      *v82 = 0xD000000000000042;
      v82[1] = 0x8000000267F15BA0;
      swift_willThrow();
      v27(*(v0 + 176), *(v0 + 160));
      v84 = *(v0 + 192);
      v83 = *(v0 + 200);
      v86 = *(v0 + 176);
      v85 = *(v0 + 184);
      v87 = *(v0 + 152);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_46_0();

      __asm { BRAA            X1, X16 }
    }

LABEL_14:
    v67 = *(v0 + 168) + 8;
    v27(*(v0 + 176), *(v0 + 160));
    v68 = swift_task_alloc();
    *(v0 + 232) = v68;
    *v68 = v0;
    v68[1] = sub_267CDF80C;
    v69 = *(v0 + 120);
    v70 = *(v0 + 128);
    OUTLINED_FUNCTION_66_6(*(v0 + 112));
    OUTLINED_FUNCTION_46_0();

    return sub_267CE2D28();
  }

  v73 = *(v0 + 176);
  v74 = *(v0 + 152);
  v75 = *(v0 + 136);
  v76 = *(v0 + 144);
  (*(*(v0 + 168) + 96))(v73, *(v0 + 160));
  (*(v76 + 32))(v74, v73, v75);
  v77 = swift_task_alloc();
  *(v0 + 216) = v77;
  *v77 = v0;
  v77[1] = sub_267CDF030;
  v78 = *(v0 + 120);
  v79 = *(v0 + 128);
  OUTLINED_FUNCTION_66_6(*(v0 + 152));
  OUTLINED_FUNCTION_46_0();

  return sub_267CE0364();
}

uint64_t sub_267CDF030()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 224) = v0;

  if (v0)
  {
    v10 = sub_267CE0030;
  }

  else
  {
    v10 = sub_267CDF138;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_267CDF138()
{
  (*(v1[18] + 8))(v1[19], v1[17]);
  v6 = v1[9];
  v7 = v1[26];
  if (*(v7 + 40))
  {
    goto LABEL_4;
  }

  if (sub_267D60D20())
  {
    v7 = v1[26];
LABEL_4:
    *(*(v7 + 216) + 24) = 1;
  }

  v8 = v1[26];
  v9 = v6;
  sub_267BCE788(v9);
  v101 = v9;
  v10 = sub_267EB7470(v9);
  v11 = 0x280228000;
  if (!v10)
  {
    goto LABEL_52;
  }

  v102 = v1[26];
  sub_267BAF0DC(v10);
  OUTLINED_FUNCTION_40_8();
  *&v12 = 136315138;
  v89 = v12;
  v92 = v2;
  v93 = v13;
  v90 = v4;
  v91 = v3;
  while (1)
  {
    while (1)
    {
      if (v9 == v0)
      {

        v11 = 0x280228000uLL;
LABEL_52:
        if (*(v11 + 2072) == -1)
        {
          goto LABEL_53;
        }

        goto LABEL_70;
      }

      if (v2)
      {
        v14 = MEMORY[0x26D609870](v9, v88);
      }

      else
      {
        if (v9 >= *(v3 + 16))
        {
          goto LABEL_69;
        }

        v14 = *(v4 + 8 * v9);
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_68;
      }

      v94 = v9 + 1;
      v95 = v14;
      v15 = sub_267D28E98();
      HIDWORD(v100) = v9 >= *(v15 + 16) ? 0 : *(v15 + 4 * v9 + 32);

      if (sub_267DEC2A0(v95))
      {
        break;
      }

      ++v9;
    }

    OUTLINED_FUNCTION_67_3();
    if (v17)
    {
      break;
    }

    if (*(v16 + 16))
    {
      goto LABEL_18;
    }

LABEL_39:

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v42 = v1[16];
    v43 = sub_267EF8A08();
    __swift_project_value_buffer(v43, qword_280240FB0);
    OUTLINED_FUNCTION_54();

    v44 = sub_267EF89F8();
    v45 = sub_267EF95D8();

    if (OUTLINED_FUNCTION_116_0())
    {
      OUTLINED_FUNCTION_48();
      v46 = OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_32_10(v46, v47, v48, v49, v50, v51, v52, v53, v87, v88, v89);
      v54 = *(v2 + 192);

      sub_267EF8F08();
      OUTLINED_FUNCTION_73_3();

      v55 = OUTLINED_FUNCTION_63();
      v58 = sub_267BA33E8(v55, v56, v57);

      *(v42 + 4) = v58;
      OUTLINED_FUNCTION_55_6(&dword_267B93000, v44, v45, "#SendMessageRCHFlowStrategy Contact reco scores: %s");
      __swift_destroy_boxed_opaque_existential_0(v5);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v0 = v93;
    v9 = v94;
    v3 = v91;
    v2 = v92;
    v4 = v90;
  }

  if (!sub_267EF9A68())
  {
    goto LABEL_39;
  }

LABEL_18:
  OUTLINED_FUNCTION_62_4();
  while (2)
  {
    if (v99)
    {
      v18 = MEMORY[0x26D609870](v4, v9);
    }

    else
    {
      if (v4 >= *(v96 + 16))
      {
        goto LABEL_67;
      }

      v18 = *(v9 + 8 * v4 + 32);
    }

    v19 = v18;
    v2 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      OUTLINED_FUNCTION_0_10();
      swift_once();
LABEL_53:
      v61 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v61, qword_280240FB0);
      v62 = v101;
      v63 = sub_267EF89F8();
      v64 = sub_267EF95D8();

      if (os_log_type_enabled(v63, v64))
      {
        OUTLINED_FUNCTION_48();
        v65 = OUTLINED_FUNCTION_40_2();
        *v2 = 138412290;
        *(v2 + 4) = v62;
        *v65 = v62;
        v66 = v62;
        OUTLINED_FUNCTION_76_5(&dword_267B93000, v67, v68, "#SendMessageRCHFlowStrategy converted to %@");
        sub_267B9F98C(v65, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v69 = v62;
      v70 = sub_267EF89F8();
      sub_267EF95D8();
      v71 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = OUTLINED_FUNCTION_48();
        *v73 = 134217984;
        v74 = sub_267E76140(v69);
        if (v74)
        {
          v75 = sub_267BAF0DC(v74);
        }

        else
        {
          v75 = 0;
        }

        *(v73 + 4) = v75;
        OUTLINED_FUNCTION_41_8();
        OUTLINED_FUNCTION_55_6(v76, v77, v78, v79);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {

        v70 = v69;
      }

      v80 = v1[24];
      v81 = v1[25];
      v83 = v1[22];
      v82 = v1[23];
      v84 = v1[19];

      [v69 _setLaunchId_];

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_49_9();

      __asm { BRAA            X2, X16 }
    }

    v20 = OUTLINED_FUNCTION_79_4();
    v103 = sub_267DE9B04();
    v22 = v21;

    [v19 recommendation];
    v23 = OUTLINED_FUNCTION_79_4();
    sub_267DE9B04();

    v24 = sub_267D28F5C();
    if (*(v24 + 16))
    {
      v25 = sub_267BA9948();
      v0 = v26;

      if (v0)
      {
        v9 = *(*(v24 + 56) + 8 * v25);

        goto LABEL_29;
      }
    }

    else
    {
    }

    v9 = sub_267EF8F28();
LABEL_29:
    OUTLINED_FUNCTION_48_10();
    v27 = *(v0 + 192);
    swift_isUniquelyReferenced_nonNull_native();
    v28 = OUTLINED_FUNCTION_43_12();
    OUTLINED_FUNCTION_74_3(v28, v29);
    if (v32)
    {
      goto LABEL_65;
    }

    v5 = v30;
    v1 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A9A8, &qword_267F02658);
    if ((OUTLINED_FUNCTION_78_6() & 1) == 0)
    {
LABEL_33:
      if (v1)
      {

        OUTLINED_FUNCTION_24_7();
        v36 = *(v35 + 16);
        OUTLINED_FUNCTION_12_16(v35, v87, v88, v89, *(&v89 + 1), v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, SHIDWORD(v100));
      }

      else
      {
        *(v104 + 8 * (v5 >> 6) + 64) |= 1 << v5;
        v37 = (*(v104 + 48) + 16 * v5);
        *v37 = v103;
        v37[1] = v22;
        OUTLINED_FUNCTION_24_7();
        OUTLINED_FUNCTION_12_16(v38, v87, v88, v89, *(&v89 + 1), v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, SHIDWORD(v100));
        v39 = *(v104 + 16);
        v32 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v32)
        {
          goto LABEL_66;
        }

        *(v104 + 16) = v40;
      }

      OUTLINED_FUNCTION_77_2();

      OUTLINED_FUNCTION_69_3();
      if (v41)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  v33 = sub_267BA9948();
  if ((v1 & 1) == (v34 & 1))
  {
    v5 = v33;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_49_9();

  return sub_267EF9F28();
}

uint64_t sub_267CDF80C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[11] = v1;
  v3[12] = v5;
  v3[13] = v0;
  v7 = *(v6 + 232);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;

  if (v0)
  {
    v11 = v3[24];
    v10 = v3[25];
    v13 = v3[22];
    v12 = v3[23];
    v14 = v3[19];

    OUTLINED_FUNCTION_17();

    return v15();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_267CDF974, 0, 0);
  }
}

uint64_t sub_267CDF974()
{
  v6 = v1[12];
  v7 = v1[26];
  if (*(v7 + 40))
  {
    goto LABEL_4;
  }

  if (sub_267D60D20())
  {
    v7 = v1[26];
LABEL_4:
    *(*(v7 + 216) + 24) = 1;
  }

  v8 = v1[26];
  v9 = v6;
  sub_267BCE788(v9);
  v101 = v9;
  v10 = sub_267EB7470(v9);
  v11 = 0x280228000;
  if (!v10)
  {
    goto LABEL_52;
  }

  v102 = v1[26];
  sub_267BAF0DC(v10);
  OUTLINED_FUNCTION_40_8();
  *&v12 = 136315138;
  v89 = v12;
  v92 = v2;
  v93 = v13;
  v90 = v4;
  v91 = v3;
  while (1)
  {
    while (1)
    {
      if (v9 == v0)
      {

        v11 = 0x280228000uLL;
LABEL_52:
        if (*(v11 + 2072) == -1)
        {
          goto LABEL_53;
        }

        goto LABEL_70;
      }

      if (v2)
      {
        v14 = MEMORY[0x26D609870](v9, v88);
      }

      else
      {
        if (v9 >= *(v3 + 16))
        {
          goto LABEL_69;
        }

        v14 = *(v4 + 8 * v9);
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_68;
      }

      v94 = v9 + 1;
      v95 = v14;
      v15 = sub_267D28E98();
      HIDWORD(v100) = v9 >= *(v15 + 16) ? 0 : *(v15 + 4 * v9 + 32);

      if (sub_267DEC2A0(v95))
      {
        break;
      }

      ++v9;
    }

    OUTLINED_FUNCTION_67_3();
    if (v17)
    {
      break;
    }

    if (*(v16 + 16))
    {
      goto LABEL_18;
    }

LABEL_39:

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v42 = v1[16];
    v43 = sub_267EF8A08();
    __swift_project_value_buffer(v43, qword_280240FB0);
    OUTLINED_FUNCTION_54();

    v44 = sub_267EF89F8();
    v45 = sub_267EF95D8();

    if (OUTLINED_FUNCTION_116_0())
    {
      OUTLINED_FUNCTION_48();
      v46 = OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_32_10(v46, v47, v48, v49, v50, v51, v52, v53, v87, v88, v89);
      v54 = *(v2 + 192);

      sub_267EF8F08();
      OUTLINED_FUNCTION_73_3();

      v55 = OUTLINED_FUNCTION_63();
      v58 = sub_267BA33E8(v55, v56, v57);

      *(v42 + 4) = v58;
      OUTLINED_FUNCTION_55_6(&dword_267B93000, v44, v45, "#SendMessageRCHFlowStrategy Contact reco scores: %s");
      __swift_destroy_boxed_opaque_existential_0(v5);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v0 = v93;
    v9 = v94;
    v3 = v91;
    v2 = v92;
    v4 = v90;
  }

  if (!sub_267EF9A68())
  {
    goto LABEL_39;
  }

LABEL_18:
  OUTLINED_FUNCTION_62_4();
  while (2)
  {
    if (v99)
    {
      v18 = MEMORY[0x26D609870](v4, v9);
    }

    else
    {
      if (v4 >= *(v96 + 16))
      {
        goto LABEL_67;
      }

      v18 = *(v9 + 8 * v4 + 32);
    }

    v19 = v18;
    v2 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      OUTLINED_FUNCTION_0_10();
      swift_once();
LABEL_53:
      v61 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v61, qword_280240FB0);
      v62 = v101;
      v63 = sub_267EF89F8();
      v64 = sub_267EF95D8();

      if (os_log_type_enabled(v63, v64))
      {
        OUTLINED_FUNCTION_48();
        v65 = OUTLINED_FUNCTION_40_2();
        *v2 = 138412290;
        *(v2 + 4) = v62;
        *v65 = v62;
        v66 = v62;
        OUTLINED_FUNCTION_76_5(&dword_267B93000, v67, v68, "#SendMessageRCHFlowStrategy converted to %@");
        sub_267B9F98C(v65, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v69 = v62;
      v70 = sub_267EF89F8();
      sub_267EF95D8();
      v71 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = OUTLINED_FUNCTION_48();
        *v73 = 134217984;
        v74 = sub_267E76140(v69);
        if (v74)
        {
          v75 = sub_267BAF0DC(v74);
        }

        else
        {
          v75 = 0;
        }

        *(v73 + 4) = v75;
        OUTLINED_FUNCTION_41_8();
        OUTLINED_FUNCTION_55_6(v76, v77, v78, v79);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {

        v70 = v69;
      }

      v80 = v1[24];
      v81 = v1[25];
      v83 = v1[22];
      v82 = v1[23];
      v84 = v1[19];

      [v69 _setLaunchId_];

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_49_9();

      __asm { BRAA            X2, X16 }
    }

    v20 = OUTLINED_FUNCTION_79_4();
    v103 = sub_267DE9B04();
    v22 = v21;

    [v19 recommendation];
    v23 = OUTLINED_FUNCTION_79_4();
    sub_267DE9B04();

    v24 = sub_267D28F5C();
    if (*(v24 + 16))
    {
      v25 = sub_267BA9948();
      v0 = v26;

      if (v0)
      {
        v9 = *(*(v24 + 56) + 8 * v25);

        goto LABEL_29;
      }
    }

    else
    {
    }

    v9 = sub_267EF8F28();
LABEL_29:
    OUTLINED_FUNCTION_48_10();
    v27 = *(v0 + 192);
    swift_isUniquelyReferenced_nonNull_native();
    v28 = OUTLINED_FUNCTION_43_12();
    OUTLINED_FUNCTION_74_3(v28, v29);
    if (v32)
    {
      goto LABEL_65;
    }

    v5 = v30;
    v1 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A9A8, &qword_267F02658);
    if ((OUTLINED_FUNCTION_78_6() & 1) == 0)
    {
LABEL_33:
      if (v1)
      {

        OUTLINED_FUNCTION_24_7();
        v36 = *(v35 + 16);
        OUTLINED_FUNCTION_12_16(v35, v87, v88, v89, *(&v89 + 1), v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, SHIDWORD(v100));
      }

      else
      {
        *(v104 + 8 * (v5 >> 6) + 64) |= 1 << v5;
        v37 = (*(v104 + 48) + 16 * v5);
        *v37 = v103;
        v37[1] = v22;
        OUTLINED_FUNCTION_24_7();
        OUTLINED_FUNCTION_12_16(v38, v87, v88, v89, *(&v89 + 1), v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, SHIDWORD(v100));
        v39 = *(v104 + 16);
        v32 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v32)
        {
          goto LABEL_66;
        }

        *(v104 + 16) = v40;
      }

      OUTLINED_FUNCTION_77_2();

      OUTLINED_FUNCTION_69_3();
      if (v41)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  v33 = sub_267BA9948();
  if ((v1 & 1) == (v34 & 1))
  {
    v5 = v33;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_49_9();

  return sub_267EF9F28();
}

uint64_t sub_267CE0030()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[28];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267CE00DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CE00F8()
{
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_116_0())
  {
    v5 = v0[5];
    v6 = OUTLINED_FUNCTION_48();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_267B9F98C(v7, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_267CE0284;
  v15 = v0[5];
  v16 = v0[6];
  v17 = v0[3];
  v18 = v0[4];
  v19 = v0[2];

  return sub_267CA5F80();
}

uint64_t sub_267CE0284()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267CE0364()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_267EF8228();
  v1[30] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[31] = v5;
  v7 = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_50();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v8 = sub_267EF8818();
  v1[35] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[36] = v9;
  v11 = *(v10 + 64);
  v1[37] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF2BA8();
  v1[38] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[39] = v13;
  v15 = *(v14 + 64);
  v1[40] = OUTLINED_FUNCTION_50();
  v1[41] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  v1[42] = OUTLINED_FUNCTION_50();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_267CE050C()
{
  v232 = v0;
  v1 = v0;
  v2 = (v0 + 352);
  v3 = *(v1 + 224);
  sub_267B9CC04(*(v1 + 216), *(v1 + 352));
  if (!v3)
  {
    sub_267C266B0();
    OUTLINED_FUNCTION_61_1();
    *v11 = 0xD00000000000004BLL;
    v11[1] = 0x8000000267F15B00;
    swift_willThrow();
    v4 = v2;
LABEL_6:
    v12 = *v4;
    OUTLINED_FUNCTION_34_9();
    sub_267B9F98C(v13, &unk_28022BBE0, qword_267EFD030);

    OUTLINED_FUNCTION_17();

    return v14();
  }

  v4 = (v1 + 344);
  v5 = *(v1 + 344);
  v6 = *(v1 + 224);
  sub_267C2FB6C(*(v1 + 352), v5, &unk_28022BBE0, qword_267EFD030);
  v7 = type metadata accessor for DirectInvocationUseCases();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    v8 = v6;
LABEL_4:
    v9 = *v2;
    sub_267C266B0();
    OUTLINED_FUNCTION_61_1();
    *v10 = 0xD000000000000044;
    v10[1] = 0x8000000267F15B50;
    swift_willThrow();

    sub_267B9F98C(v9, &unk_28022BBE0, qword_267EFD030);
    goto LABEL_6;
  }

  sub_267C2FB6C(*(v1 + 344), *(v1 + 336), &unk_28022BBE0, qword_267EFD030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v222 = v1;
  switch(EnumCaseMultiPayload)
  {
    case 11:
      v17 = *(v1 + 352);
      v18 = *(v1 + 336);
      v19 = *(v1 + 232);
      v21 = *v18;
      v20 = v18[1];
      v22 = v18[3];
      v23 = v6;
      v26 = sub_267CE17B4(v23, v21, v20, v24, v25, v17);

      v27 = sub_267E76140(v26);
      if (v27)
      {
        v28 = sub_267BAF0DC(v27);

        v29 = v28 != 0;
      }

      else
      {
        v29 = 0;
      }

      v224 = v29;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v227 = v26;
      v171 = sub_267EF8A08();
      __swift_project_value_buffer(v171, qword_280240FB0);
      OUTLINED_FUNCTION_54();

      v172 = sub_267EF89F8();
      sub_267EF95D8();
      v173 = OUTLINED_FUNCTION_13_0();
      v175 = v21 & 0xFFFFFFFFFFFFLL;
      if (os_log_type_enabled(v173, v174))
      {
        v176 = swift_slowAlloc();
        v177 = v176;
        *v176 = 67109376;
        v178 = v20 & 0x2000000000000000;
        v179 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) != 0)
        {
          v180 = HIBYTE(v20) & 0xF;
        }

        else
        {
          v180 = v175;
        }

        v176[1] = v180 == 0;

        *(v177 + 4) = 1024;
        v26 = v23;
        v181 = v224;
        *(v177 + 10) = v224;
        OUTLINED_FUNCTION_41_8();
        _os_log_impl(v182, v183, v184, v185, v177, 0xEu);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();

        v186 = v222;
      }

      else
      {

        v178 = v20 & 0x2000000000000000;
        v179 = HIBYTE(v20) & 0xF;
        v186 = v222;
        v181 = v224;
      }

      sub_267B9F98C(*v2, &unk_28022BBE0, qword_267EFD030);

      if (v178)
      {
        v187 = v179;
      }

      else
      {
        v187 = v175;
      }

      if (v187 != 0 || v181)
      {
        *(*(v186[29] + 56) + 41) = 1;
      }

      goto LABEL_63;
    case 12:
      v92 = *(v1 + 336);
      v26 = *v92;
      v93 = v92[1];
      v94 = v92[3];
      v95 = qword_280228818;
      v96 = v6;
      if (v95 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v97 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v97, qword_280240FB0);

      v98 = sub_267EF89F8();
      sub_267EF95D8();
      v99 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = v101;
        *v101 = 67109120;
        v103 = HIBYTE(v93) & 0xF;
        if ((v93 & 0x2000000000000000) == 0)
        {
          v103 = v26 & 0xFFFFFFFFFFFFLL;
        }

        *(v101 + 1) = v103 == 0;

        OUTLINED_FUNCTION_41_8();
        _os_log_impl(v104, v105, v106, v107, v102, 8u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {
      }

      v160 = *(v1 + 352);
      v161 = v222[29];
      v162 = OUTLINED_FUNCTION_3();
      v227 = sub_267CE17B4(v162, v163, v93, v164, v165, v160);

      OUTLINED_FUNCTION_15_17();

      v77 = &unk_28022BBE0;
      v78 = qword_267EFD030;
      v79 = v160;
      goto LABEL_62;
    case 13:
    case 14:
    case 15:
    case 19:
    case 20:
      goto LABEL_21;
    case 16:
      v54 = *(v1 + 336);
      v55 = *v54;
      v56 = v54[1];
      v57 = qword_280228818;
      v58 = v6;
      if (v57 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v59 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v59, qword_280240FB0);
      v60 = sub_267EF89F8();
      v61 = sub_267EF95D8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_32();
        *v62 = 0;
        _os_log_impl(&dword_267B93000, v60, v61, "#SendMessageRCHFlowStrategy received recipientChangedViaSnippet directInvocation", v62, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v63 = *(v1 + 232);

      v64 = OUTLINED_FUNCTION_64_0();
      v66 = sub_267CE1E1C(v64, v65, v56);
      v26 = *(v1 + 352);
      v169 = v66;
      v170 = *(v1 + 232);

      OUTLINED_FUNCTION_15_17();

      sub_267B9F98C(v26, &unk_28022BBE0, qword_267EFD030);
      v227 = v169;
      goto LABEL_63;
    case 17:
      v80 = *(v1 + 336);
      v26 = *v80;
      v81 = v80[1];
      v82 = qword_280228818;
      v83 = v6;
      if (v82 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v84 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v84, qword_280240FB0);
      v85 = sub_267EF89F8();
      v86 = sub_267EF95D8();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = OUTLINED_FUNCTION_32();
        *v87 = 0;
        _os_log_impl(&dword_267B93000, v85, v86, "#SendMessageRCHFlowStrategy received appChangedViaSnippet directInvocation", v87, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v88 = *(v1 + 352);
      v89 = *(v1 + 232);

      v90 = OUTLINED_FUNCTION_3();
      v227 = sub_267CE28B8(v90, v91, v81);

      OUTLINED_FUNCTION_15_17();

      v77 = &unk_28022BBE0;
      v78 = qword_267EFD030;
      v79 = v88;
      goto LABEL_62;
    case 18:
      v108 = *(v1 + 336);
      v110 = *v108;
      v109 = v108[1];
      v111 = qword_280228818;
      v216 = v6;
      if (v111 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v112 = sub_267EF8A08();
      __swift_project_value_buffer(v112, qword_280240FB0);
      v113 = sub_267EF89F8();
      sub_267EF95C8();
      v114 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v116);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v117, v118, v119, v120, v121, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v122 = *(v1 + 312);
      v123 = *(v1 + 288);
      v124 = *(v1 + 232);

      v125 = *(v124 + 56);
      *(v125 + 168) = 0;
      swift_beginAccess();
      v126 = *(v125 + 152);
      v127 = MEMORY[0x277D84F90];
      v226 = v125;
      *(v125 + 152) = MEMORY[0x277D84F90];

      v229 = v127;
      v230[0] = v110;
      v218 = (v123 + 8);
      v220 = (v122 + 16);
      v230[1] = 0;
      v230[2] = v109;
      v217 = (v122 + 8);
      v230[3] = 0;
      v231 = 0;
      while (1)
      {
        v128 = sub_267D0F108();
        if (!v129)
        {
          break;
        }

        v132 = v131;
        v223 = v130;
        v133 = v222[40];
        v134 = v222[41];
        v135 = v222[37];
        v136 = v222[38];
        v137 = v222[35];
        v222[25] = v128;
        v222[26] = v129;
        sub_267BB5034();
        sub_267EF9958();

        sub_267EF2AD8();

        sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
        (*v220)(v133, v134, v136);
        sub_267EF2AE8();
        OUTLINED_FUNCTION_73_3();
        sub_267EF87D8();
        v138 = sub_267EF8768();
        v140 = v139;
        (*v218)(v135, v137);
        v141 = sub_267E0C800(v133, v134, v136, v138, v140);
        v142 = [objc_opt_self() attachmentWithFile_];
        MEMORY[0x26D608F90]();
        if (*((v229 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v229 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        OUTLINED_FUNCTION_64_0();
        sub_267EF9368();
        v127 = v229;
        swift_beginAccess();
        v143 = *(v226 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v226 + 152) = v143;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v152 = *(v143 + 16);
          sub_267BF4EE8();
          v143 = v153;
          *(v226 + 152) = v153;
        }

        v145 = *(v143 + 16);
        if (v145 >= *(v143 + 24) >> 1)
        {
          sub_267BF4EE8();
          v143 = v154;
        }

        v146 = v222[41];
        v147 = v222[38];
        *(v143 + 16) = v145 + 1;
        v148 = v143 + 16 * v145;
        *(v148 + 32) = v223;
        *(v148 + 40) = v132;
        *(v226 + 152) = v143;
        swift_endAccess();

        v149 = *v217;
        v150 = OUTLINED_FUNCTION_63();
        v151(v150);
      }

      v155 = sub_267EF89F8();
      v156 = sub_267EF95D8();
      v157 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = OUTLINED_FUNCTION_48();
        *v159 = 134217984;
        *(v159 + 4) = sub_267BAF0DC(v127);

        _os_log_impl(&dword_267B93000, v155, v156, "#SendMessageConfirmIntentFlow updating attachment list with %ld files", v159, 0xCu);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {
      }

      v166 = v222[44];

      v26 = v216;
      v167 = sub_267EF97C8();
      v222[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
      v222[15] = v127;
      v227 = v167;
      sub_267ECE290();

      sub_267B9F98C(v166, &unk_28022BBE0, qword_267EFD030);
      v77 = &qword_28022AEF0;
      v78 = &qword_267EFCDE0;
      v79 = (v222 + 15);
      goto LABEL_62;
    case 21:
      v67 = qword_280228818;
      v68 = v6;
      if (v67 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v69 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v69, qword_280240FB0);
      v70 = sub_267EF89F8();
      v26 = sub_267EF95D8();
      v71 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = OUTLINED_FUNCTION_32();
        *v73 = 0;
        _os_log_impl(&dword_267B93000, v70, v26, "#SendMessageRCHFlowStrategy received deviceUnlockedViaSnippet directInvocation", v73, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v74 = *(v1 + 352);
      v75 = *(v1 + 232);

      v76 = *(v75 + 56);
      *(v76 + 213) = 1;
      *(*(v76 + 216) + 24) = 1;
      *(*(v75 + 56) + 213) = 0;
      v227 = sub_267EF97C8();

      v77 = &unk_28022BBE0;
      v78 = qword_267EFD030;
      v79 = v74;
LABEL_62:
      sub_267B9F98C(v79, v77, v78);
      goto LABEL_63;
    default:
      if (EnumCaseMultiPayload != 1)
      {
LABEL_21:
        v52 = *(v1 + 336);
        v53 = v6;
        sub_267CCEDF4(v52);
        goto LABEL_4;
      }

      v30 = *(v1 + 264);
      v31 = *(v1 + 240);
      v32 = *(v1 + 248);
      (*(v32 + 32))(*(v1 + 272), *(v1 + 336), v31);
      v33 = (v32 + 16);
      v34 = *(v32 + 16);
      OUTLINED_FUNCTION_92_2();
      v34();
      v35 = (*(v32 + 88))(v30, v31);
      LODWORD(v31) = *MEMORY[0x277D5D4E0];
      v36 = qword_280228818;
      v37 = v6;
      if (v35 == v31)
      {
        if (v36 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v38 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
        v39 = sub_267EF89F8();
        v40 = sub_267EF95D8();
        v41 = OUTLINED_FUNCTION_13_0();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = OUTLINED_FUNCTION_32();
          *v43 = 0;
          _os_log_impl(&dword_267B93000, v39, v40, "#SendMessageRCHFlowStrategy Modify button pressed -> clearing content and audio message attachment", v43, 2u);
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
        }

        v44 = *(v1 + 232);

        v45 = sub_267EF97C8();
        sub_267B9AFEC(v44 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender, v1 + 16);
        v46 = *(v1 + 48);
        v26 = v1;
        __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        result = sub_267BB41B0(ObjCClassFromMetadata);
        if (!v48)
        {
          __break(1u);
          return result;
        }

        sub_267EF3B18();
        *(swift_allocObject() + 16) = v37;
        v49 = v37;
        LOBYTE(v230[0]) = 1;
        sub_267EF3B08();
        sub_267EF3848();

        __swift_destroy_boxed_opaque_existential_0((v1 + 16));
        *(v1 + 72) = 0u;
        *(v1 + 56) = 0u;
        sub_267ECE290();
        sub_267B9F98C(v1 + 56, &qword_28022AEF0, &qword_267EFCDE0);
        v50 = sub_267E0CA8C(v49);
        v51 = v50;
        if (v50)
        {
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
        }

        else
        {
          *(v1 + 96) = 0;
          *(v1 + 104) = 0;
        }

        v208 = *(v1 + 352);
        v209 = *(v1 + 272);
        v210 = *(v1 + 248);
        v211 = v222[30];
        v212 = v222[29];
        v222[11] = v51;
        v222[14] = v50;
        sub_267ECE290();

        v213 = *(v210 + 8);
        v214 = OUTLINED_FUNCTION_44_0();
        v215(v214);
        sub_267B9F98C(v208, &unk_28022BBE0, qword_267EFD030);
        sub_267B9F98C((v222 + 11), &qword_28022AEF0, &qword_267EFCDE0);
        *(*(v212 + 56) + 40) = 1;
        v227 = v45;
      }

      else
      {
        if (v36 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v188 = *(v1 + 272);
        v189 = *(v1 + 256);
        v190 = *(v1 + 240);
        v191 = sub_267EF8A08();
        __swift_project_value_buffer(v191, qword_280240FB0);
        OUTLINED_FUNCTION_92_2();
        v34();
        v192 = sub_267EF89F8();
        v193 = sub_267EF95D8();
        v194 = os_log_type_enabled(v192, v193);
        v195 = *(v1 + 352);
        v26 = *(v1 + 272);
        v197 = *(v1 + 248);
        v196 = *(v1 + 256);
        v198 = *(v1 + 240);
        if (v194)
        {
          v228 = v37;
          v199 = OUTLINED_FUNCTION_48();
          v225 = v195;
          v200 = OUTLINED_FUNCTION_52();
          v230[0] = v200;
          *v199 = 136315138;
          v219 = v198;
          v221 = v26;
          v201 = sub_267EF8218();
          v26 = v202;
          v203 = OUTLINED_FUNCTION_61_7();
          v33(v203, v204);
          v205 = sub_267BA33E8(v201, v26, v230);

          *(v199 + 4) = v205;
          _os_log_impl(&dword_267B93000, v192, v193, "#SendMessageRCHFlowStrategy Keeping the current intent for button %s", v199, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v200);
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
          v37 = v228;
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();

          v33(v221, v219);
          v206 = v225;
        }

        else
        {

          v207 = OUTLINED_FUNCTION_61_7();
          v33(v207, v198);
          v33(v26, v198);
          v206 = v195;
        }

        sub_267B9F98C(v206, &unk_28022BBE0, qword_267EFD030);
        v33(*(v1 + 264), *(v1 + 240));
        v227 = v37;
      }

LABEL_63:
      OUTLINED_FUNCTION_34_9();
      sub_267B9F98C(v26, &unk_28022BBE0, qword_267EFD030);

      OUTLINED_FUNCTION_4_3();

      result = v168(v227);
      break;
  }

  return result;
}

uint64_t sub_267CE1768(uint64_t *a1)
{
  v1 = *a1;
  sub_267EF7C38();
  sub_267C7A584();
  sub_267EF7C08();
  return sub_267EF3AD8();
}

id sub_267CE17B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_267ED9A2C(a1);
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

  OUTLINED_FUNCTION_47_8();
  v19 = sub_267CE1B04(v15, v16, v17, v18);
  v20 = sub_267EF97C8();
  v46 = MEMORY[0x277D837D0];
  v45[0] = a2;
  v45[1] = a3;

  sub_267ECE290();
  sub_267B9F98C(v45, &qword_28022AEF0, &qword_267EFCDE0);
  if (v13 == a2 && v14 == a3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_47_8();
    v22 = sub_267EF9EA8();

    if (v22 & 1) == 0 && (sub_267EF96D8())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v23 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
      v24 = sub_267EF89F8();
      v25 = sub_267EF95D8();
      v26 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = OUTLINED_FUNCTION_32();
        *v28 = 0;
        _os_log_impl(&dword_267B93000, v24, v25, "#SendMessageRCHFlowStrategy content updated by keyboard, hiding Siri attribution", v28, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      sub_267EF96B8();
    }
  }

  if (!v19)
  {
    v30 = *(v7[7] + 136);

    v31 = 0;
    goto LABEL_30;
  }

  v29 = v19;
  if ([v29 numCharsAdded])
  {
  }

  else
  {
    v32 = [v29 numCharsDeleted];

    if (!v32)
    {
      goto LABEL_25;
    }
  }

  *(v7[7] + 40) = 1;
LABEL_25:
  v33 = *(v7[7] + 136);
  v31 = v29;

  if ([v31 numCharsAdded])
  {
    v34 = v7[5];
    v35 = v7[6];
    __swift_project_boxed_opaque_existential_0(v7 + 2, v34);
    OUTLINED_FUNCTION_70_5();
    v36(v45, v34, v35);
    __swift_project_boxed_opaque_existential_0(v45, v46);
    sub_267EF3BD8();
    v38 = v37;

    if (v38)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
  }

LABEL_30:
  sub_267B9AFEC(v7 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService, v45);
  sub_267C3911C(v20, 1);
  sub_267C3A088();
  sub_267B9F98C(v45, &qword_280229508, &unk_267EFD960);
  v39 = sub_267CE2B94(a6);
  v40 = v20;
  v41 = sub_267C7A584();
  v43 = v42;

  sub_267CE29B0(v39, v41, v43);

  return v40;
}

unint64_t sub_267CE1B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_267EF2E38();
  v11 = OUTLINED_FUNCTION_58(v10);
  v41 = v12;
  v42 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A9A0, &unk_267F02648);
  v18 = OUTLINED_FUNCTION_58(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v43 = a4;
  v44[0] = a3;
  v44[1] = a4;
  v44[5] = a1;
  v44[6] = a2;
  sub_267C7A6BC();
  sub_267EF8FB8();
  v23 = [objc_allocWithZone(MEMORY[0x277D575D0]) init];
  if (!v23)
  {
LABEL_10:
    v38 = *(v20 + 8);
    v39 = OUTLINED_FUNCTION_3();
    v40(v39);
    return v23;
  }

  v24 = *(sub_267EF9D08() + 16);

  if (HIDWORD(v24))
  {
    __break(1u);
    goto LABEL_12;
  }

  [v23 setNumCharsAdded_];
  v26 = *(sub_267EF9D18() + 16);

  if (HIDWORD(v26))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v23 setNumCharsDeleted_];
  v27._countAndFlagsBits = a3;
  v27._object = v43;
  result = String.distanceLevenshtein(between:)(v27);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!HIDWORD(result))
  {
    [v23 setLevenshteinEditDistance_];
    v28 = v5[6];
    __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
    v29 = *(v28 + 8);
    v30 = OUTLINED_FUNCTION_53_0();
    v31(v30, v28);
    __swift_project_boxed_opaque_existential_0(v44, v44[3]);
    OUTLINED_FUNCTION_53_0();
    sub_267EF3B68();
    sub_267BFDCA0();
    v33 = v32;
    (*(v41 + 8))(v16, v42);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v34 = *(v33 + 16) + 1;
    v35 = 56;
    do
    {
      if (!--v34)
      {
        break;
      }

      v36 = *(v33 + v35);
      v35 += 32;
    }

    while (v36 != 1);
    v37 = v34 != 0;

    [v23 setIsEmojiUsed_];
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_267CE1E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v128 = a3;
  v127 = a2;
  v136 = sub_267EF6A08();
  v4 = OUTLINED_FUNCTION_58(v136);
  v131 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v130 = v8;
  v122 = sub_267EF6A88();
  v9 = OUTLINED_FUNCTION_58(v122);
  v121 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v13);
  v119 = sub_267EF6B88();
  v14 = OUTLINED_FUNCTION_58(v119);
  v117 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v18);
  v19 = sub_267EF6B38();
  v20 = OUTLINED_FUNCTION_18(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v23);
  v24 = sub_267EF2E38();
  v25 = OUTLINED_FUNCTION_18(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v135 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v30 = OUTLINED_FUNCTION_18(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_60();
  v133 = v33 - v34;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v35);
  v37 = &v106 - v36;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v38 = OUTLINED_FUNCTION_22(v110);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_60();
  v115 = v41 - v42;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v43);
  v109 = &v106 - v44;
  OUTLINED_FUNCTION_115();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v106 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v106 - v49;
  v51 = sub_267EF6B18();
  v52 = OUTLINED_FUNCTION_58(v51);
  v125 = v53;
  v126 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_0();
  v123 = v56;
  v124 = sub_267EF97C8();
  v57 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver + 24);
  v58 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver + 32);
  v116 = (v3 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver), v57);
  v111 = sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  v60 = v3[5];
  v59 = v3[6];
  v108 = v3;
  __swift_project_boxed_opaque_existential_0(v3 + 2, v60);
  OUTLINED_FUNCTION_70_5();
  v61 = OUTLINED_FUNCTION_109();
  v62(v61);
  sub_267EF2D28();
  OUTLINED_FUNCTION_78();
  v112 = v63;
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
  sub_267EF6C28();
  v134 = v37;
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  OUTLINED_FUNCTION_44_0();
  v113 = OUTLINED_FUNCTION_28_3();
  sub_267EF6FF8();
  v71 = sub_267EF6FC8();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v72 = sub_267EF8A08();
  __swift_project_value_buffer(v72, qword_280240FB0);
  sub_267C2FB6C(v50, v48, &qword_280229430, &qword_267EFD2C0);
  v73 = sub_267EF89F8();
  v74 = sub_267EF95D8();
  v75 = OUTLINED_FUNCTION_13_0();
  v77 = os_log_type_enabled(v75, v76);
  v132 = v50;
  if (v77)
  {
    v78 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v142 = v107;
    *v78 = 136315394;
    v137 = 0;
    v138 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v79 = sub_267EF9098();
    v81 = sub_267BA33E8(v79, v80, &v142);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    sub_267C2FB6C(v48, v109, &qword_280229430, &qword_267EFD2C0);
    v82 = sub_267EF9098();
    v84 = v83;
    sub_267B9F98C(v48, &qword_280229430, &qword_267EFD2C0);
    v85 = sub_267BA33E8(v82, v84, &v142);

    *(v78 + 14) = v85;
    _os_log_impl(&dword_267B93000, v73, v74, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v78, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  else
  {

    sub_267B9F98C(v48, &qword_280229430, &qword_267EFD2C0);
  }

  v86 = v130;
  v87 = v115;
  v114 = v71;
  if (v71 && (sub_267EF6F98(), v88 = sub_267EF37B8(), v90 = v89, , v90))
  {
    v130 = v88;
  }

  else
  {

    v130 = 0;
  }

  v137 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
  sub_267EF9098();
  __swift_project_boxed_opaque_existential_0(&v139, *(&v140 + 1));
  OUTLINED_FUNCTION_53_0();
  sub_267EF3B68();
  sub_267C2FB6C(v134, v133, &qword_280229428, &unk_267F00E50);
  sub_267C2FB6C(v132, v87, &qword_280229430, &qword_267EFD2C0);
  v91 = v112;
  if (__swift_getEnumTagSinglePayload(v87, 1, v112) == 1)
  {
    sub_267B9F98C(v87, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    sub_267EF2CE8();
    (*(*(v91 - 8) + 8))(v87, v91);
  }

  sub_267EF6B28();
  (*(v117 + 104))(v120, *MEMORY[0x277D56148], v119);
  (*(v121 + 104))(v118, *MEMORY[0x277D560D0], v122);
  v92 = v123;
  sub_267EF6AF8();

  sub_267B9F98C(v134, &qword_280229428, &unk_267F00E50);
  sub_267B9F98C(v132, &qword_280229430, &qword_267EFD2C0);
  __swift_destroy_boxed_opaque_existential_0(&v139);
  sub_267EF69F8();

  sub_267EF69B8();
  v93 = __swift_project_boxed_opaque_existential_0(v116, v116[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B00, &unk_267EFEF90);
  v94 = v131;
  v95 = *(v131 + 72);
  v96 = (*(v131 + 80) + 32) & ~*(v131 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_267EFC020;
  (*(v94 + 16))(v97 + v96, v86, v136);
  v98 = v129;
  sub_267EF6888();
  if (v98)
  {
    v99 = v124;
  }

  else
  {
    OUTLINED_FUNCTION_53_0();

    *(&v140 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
    *&v139 = v93;
    v99 = v124;
    sub_267ECE290();
    sub_267B9F98C(&v139, &qword_28022AEF0, &qword_267EFCDE0);
    v100 = *(v108[7] + 136);
    v141 = 0;
    v139 = 0u;
    v140 = 0u;

    sub_267C3911C(v99, 1);
    sub_267C3A088();

    sub_267B9F98C(&v139, &qword_280229508, &unk_267EFD960);
    v101 = v99;
    v102 = sub_267C7A584();
    v104 = v103;

    sub_267CE29B0(23, v102, v104);
  }

  (*(v94 + 8))(v86, v136);
  (*(v125 + 8))(v92, v126);
  return v99;
}

id sub_267CE28B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = sub_267EF97C8();
  v8 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_changeHandler);
  sub_267E81CAC(v7, a2, a3);
  v9 = *(*(v4 + 56) + 136);
  v16 = 0;
  memset(v15, 0, sizeof(v15));

  sub_267C3911C(v7, 1);
  sub_267C3A088();

  sub_267B9F98C(v15, &qword_280229508, &unk_267EFD960);
  v10 = v7;
  v11 = sub_267C7A584();
  v13 = v12;

  sub_267CE29B0(18, v11, v13);

  return v10;
}

uint64_t sub_267CE29B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267B9AFEC(v3 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender, v10);
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v8)
  {
    sub_267EF3B18();
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = v3;

    sub_267EF3B08();
    sub_267EF3848();

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267CE2AFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  sub_267EF7C38();

  sub_267EF7C08();
  sub_267EF3AD8();
  v6 = *(*(*(a4 + 56) + 136) + 16);
  return sub_267EF3AB8();
}

uint64_t sub_267CE2B94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v3 = OUTLINED_FUNCTION_18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_267C2FB6C(a1, &v20 - v10, &unk_28022BBE0, qword_267EFD030);
  v12 = type metadata accessor for DirectInvocationUseCases();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    v13 = OUTLINED_FUNCTION_66();
    sub_267C2FB6C(v13, v14, v15, v16);
    OUTLINED_FUNCTION_26_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      v18 = 133;
LABEL_6:
      sub_267CCEDF4(v8);
      sub_267B9F98C(v11, &unk_28022BBE0, qword_267EFD030);
      return v18;
    }

    if (EnumCaseMultiPayload == 12)
    {
      v18 = 134;
      goto LABEL_6;
    }

    sub_267CCEDF4(v8);
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267CE2D28()
{
  OUTLINED_FUNCTION_12();
  v1[45] = v2;
  v1[46] = v0;
  v1[44] = v3;
  v4 = sub_267EF7008();
  v1[47] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[48] = v5;
  v7 = *(v6 + 64);
  v1[49] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267CE2DD0()
{
  v58 = v0;
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v4 = sub_267EF7068();
  v4(&v57, v3);
  v8 = *(v0 + 352);

  v9 = v57;
  *(v0 + 400) = v57;
  sub_267E57DFC(v8, (v0 + 56));
  if (*(v0 + 80))
  {
    v11 = *(v0 + 360);
    v10 = *(v0 + 368);
    sub_267BE58F4((v0 + 56), v0 + 16);
    OUTLINED_FUNCTION_38_10();
    v12 = *(v1 + 360);
    v13 = OUTLINED_FUNCTION_7_1();
    v15 = v14(v13);
    v16 = (v10 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_appName);
    v17 = *(v10 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_appName + 8);
    *v16 = v15;
    v16[1] = v18;

    if (v11)
    {
      v19 = *(v0 + 360);
      if ([v9 outgoingMessageType])
      {
      }

      else
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v30 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);
        v31 = sub_267EF89F8();
        v32 = sub_267EF95D8();
        v33 = OUTLINED_FUNCTION_13_0();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_31_5(v35);
          OUTLINED_FUNCTION_21_1(&dword_267B93000, v36, v32, "#SendMessageRCHFlowStrategy carrying over outgoing message type from current intent");
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
        }

        v37 = [v19 outgoingMessageType];
        *(v0 + 336) = MEMORY[0x277D83B88];
        *(v0 + 312) = v37;
        sub_267ECE290();

        sub_267B9F98C(v0 + 312, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    v38 = *(v0 + 392);
    v39 = *(v0 + 368);
    v40 = v39[6];
    __swift_project_boxed_opaque_existential_0(v39 + 2, v39[5]);
    v41 = *(v40 + 24);
    v42 = OUTLINED_FUNCTION_44_0();
    v43(v42);
    v44 = v39[6];
    __swift_project_boxed_opaque_existential_0(v39 + 2, v39[5]);
    v45 = *(v44 + 8);
    v46 = OUTLINED_FUNCTION_44_0();
    v47(v46);
    v48 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
    OUTLINED_FUNCTION_44_0();
    v49 = sub_267EF3C28();
    v50 = v39[6];
    __swift_project_boxed_opaque_existential_0(v39 + 2, v39[5]);
    v51 = *(v50 + 8);
    v52 = OUTLINED_FUNCTION_12_0();
    v53(v52);
    v54 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
    OUTLINED_FUNCTION_12_0();
    sub_267EF3B78();
    v55 = swift_task_alloc();
    *(v0 + 408) = v55;
    *v55 = v0;
    v55[1] = sub_267CE3250;
    v56 = *(v0 + 392);

    return sub_267E0BF50(v0 + 16, v9, v0 + 96, v49 & 1, v56);
  }

  else
  {
    sub_267B9F98C(v0 + 56, &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v20 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
    v21 = sub_267EF89F8();
    sub_267EF95E8();
    v22 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_32();
      *v24 = 0;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v25, v26, v27, v28, v24, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    sub_267C266B0();
    OUTLINED_FUNCTION_61_1();
    *v29 = 0xD00000000000001ALL;
    v29[1] = 0x8000000267F15A60;
    swift_willThrow();

    v5 = *(v0 + 392);

    OUTLINED_FUNCTION_17();

    return v6();
  }
}

uint64_t sub_267CE3250()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[52] = v0;

  (*(v3[48] + 8))(v3[49], v3[47]);
  __swift_destroy_boxed_opaque_existential_0(v3 + 12);
  if (v0)
  {
    v9 = sub_267CE389C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 22);
    __swift_destroy_boxed_opaque_existential_0(v3 + 17);
    v9 = sub_267CE33A0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_267CE33A0()
{
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  sub_267EF95D8();
  v5 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v5, v6))
  {
    v1 = OUTLINED_FUNCTION_32();
    *v1 = 0;
    OUTLINED_FUNCTION_45();
    _os_log_impl(v7, v8, v9, v10, v1, 2u);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  OUTLINED_FUNCTION_38_10();
  v11 = *(v1 + 504);
  v12 = OUTLINED_FUNCTION_7_1();
  if (v13(v12))
  {
    OUTLINED_FUNCTION_38_10();
    v14 = *(v1 + 368);
    v15 = OUTLINED_FUNCTION_7_1();
    v16(v15);
    if (v17)
    {

      OUTLINED_FUNCTION_38_10();
      v18 = *(v1 + 368);
      v19 = OUTLINED_FUNCTION_7_1();
      v21 = v20(v19);
      if (!v22)
      {
        goto LABEL_19;
      }

      if (v21 == 0xD000000000000013 && v22 == 0x8000000267F10280)
      {
      }

      else
      {
        v24 = sub_267EF9EA8();

        if ((v24 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    v25 = *__swift_project_boxed_opaque_existential_0((*(v0 + 368) + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_stewieStateMonitor), *(*(v0 + 368) + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_stewieStateMonitor + 24));
    if (sub_267C106F0())
    {
      v26 = sub_267EF89F8();
      v27 = sub_267EF95D8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v28);
        _os_log_impl(&dword_267B93000, v26, v27, "#SendMessageRCHFlowStrategy request is to contact an emergency service while Stewie is active, overriding conversationIdentifier and recipients", v2, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v29 = *(v0 + 400);

      v30 = *MEMORY[0x277D18D18];
      v31 = sub_267EF9028();
      *(v0 + 240) = MEMORY[0x277D837D0];
      *(v0 + 216) = v31;
      *(v0 + 224) = v32;
      sub_267ECE290();
      sub_267B9F98C(v0 + 216, &qword_28022AEF0, &qword_267EFCDE0);
      *(v0 + 248) = 0u;
      *(v0 + 264) = 0u;
      sub_267ECE290();
      v33 = OUTLINED_FUNCTION_64_0();
      sub_267B9F98C(v33, v34, &qword_267EFCDE0);
      *(v0 + 280) = 0u;
      *(v0 + 296) = 0u;
      sub_267ECE290();
      v35 = OUTLINED_FUNCTION_3();
      sub_267B9F98C(v35, v36, &qword_267EFCDE0);
    }
  }

LABEL_19:
  v37 = *(v0 + 360);
  if (v37)
  {
    v38 = *(v0 + 400);
    v39 = *(v0 + 368);
    v40 = v37;
    v41 = sub_267CE53A4(v40, v38, (v0 + 16));

    v42 = *(v0 + 392);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    OUTLINED_FUNCTION_4_3();

    return v43(v41);
  }

  else
  {
    v45 = swift_task_alloc();
    *(v0 + 424) = v45;
    *v45 = v0;
    v45[1] = sub_267CE3738;
    v46 = *(v0 + 368);
    OUTLINED_FUNCTION_66_6(*(v0 + 400));

    return sub_267CE3A48();
  }
}

uint64_t sub_267CE3738()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 424);
  *v2 = *v0;
  *(v1 + 432) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CE3824()
{
  OUTLINED_FUNCTION_12();

  v1 = *(v0 + 432);
  v2 = *(v0 + 392);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_4_3();

  return v3(v1);
}

uint64_t sub_267CE389C()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = v0[52];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = OUTLINED_FUNCTION_54();
  v4 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_116_0())
  {
    v5 = v0[52];
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_64_2();
    v24 = v6;
    *v1 = 136315138;
    v0[43] = v5;
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v8 = sub_267EF9098();
    v10 = sub_267BA33E8(v8, v9, &v24);

    *(v1 + 1) = v10;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0](v16);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0](v17);
  }

  v18 = v0[52];
  v19 = v0[50];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v20 = v0[52];
  v21 = v0[49];

  OUTLINED_FUNCTION_17();

  return v22();
}

uint64_t sub_267CE3A48()
{
  OUTLINED_FUNCTION_12();
  v1[52] = v2;
  v1[53] = v0;
  v1[51] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[54] = OUTLINED_FUNCTION_50();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v7 = sub_267EF2BA8();
  v1[57] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[58] = v8;
  v10 = *(v9 + 64);
  v1[59] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v1[60] = OUTLINED_FUNCTION_2();
  v14 = sub_267EF2E38();
  v1[61] = v14;
  OUTLINED_FUNCTION_30_0(v14);
  v1[62] = v15;
  v17 = *(v16 + 64);
  v1[63] = OUTLINED_FUNCTION_2();
  v18 = sub_267EF7008();
  v1[64] = v18;
  OUTLINED_FUNCTION_30_0(v18);
  v1[65] = v19;
  v21 = *(v20 + 64);
  v1[66] = OUTLINED_FUNCTION_50();
  v1[67] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_267CE3C04()
{
  v232 = v0;
  if (![*(v0 + 408) outgoingMessageType])
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v1 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v1, qword_280240FB0);
    v2 = sub_267EF89F8();
    v3 = sub_267EF95D8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v4);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v2, v3, "#SendMessageRCHFlowStrategy outgoingMessageType is unknown, defaulting to text");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v5 = *(v0 + 408);

    *(v0 + 400) = MEMORY[0x277D83B88];
    *(v0 + 376) = 1;
    sub_267ECE290();
    sub_267B9F98C(v0 + 376, &qword_28022AEF0, &qword_267EFCDE0);
  }

  v6 = *(v0 + 536);
  v7 = *(v0 + 528);
  v8 = *(v0 + 520);
  v9 = *(v0 + 512);
  v10 = *(v0 + 424);
  v11 = v10[6];
  __swift_project_boxed_opaque_existential_0(v10 + 2, v10[5]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_12_0();
  v14(v13);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_12_0();
  sub_267EF3B78();
  (*(v8 + 104))(v7, *MEMORY[0x277D61C48], v9);
  v16 = sub_267C28F38(v6, v7);
  v17 = *(v8 + 8);
  v17(v7, v9);
  v18 = OUTLINED_FUNCTION_26_0();
  (v17)(v18);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v16)
  {
    v19 = *(v0 + 408);
    if (sub_267EF96D8())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v20 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
      v21 = sub_267EF89F8();
      v22 = sub_267EF95D8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v23);
        OUTLINED_FUNCTION_48_3(&dword_267B93000, v21, v22, "#SendMessageRCHFlowStrategy content from Type to Siri, hiding Siri attribution");
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v24 = *(v0 + 408);

      sub_267EF96B8();
    }
  }

  sub_267EF6FF8();
  if (!sub_267EF6FC8())
  {
    goto LABEL_26;
  }

  v25 = sub_267EF6FA8();

  v26 = sub_267EF86A8();
  if (v26)
  {
    v27 = v26;
    v28 = sub_267EF8688();
    if (v28 != 2 && (v28 & 1) != 0)
    {
      v30 = *(v0 + 496);
      v29 = *(v0 + 504);
      v31 = *(v0 + 488);
      v32 = *(v0 + 416);
      v33 = v10;
      v34 = v10[5];
      v35 = v10[6];
      v227 = v33;
      __swift_project_boxed_opaque_existential_0(v33 + 2, v34);
      OUTLINED_FUNCTION_70_5();
      v36 = OUTLINED_FUNCTION_8_22();
      v37(v36);
      v38 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_0((v0 + 176), v38);
      OUTLINED_FUNCTION_8_22();
      sub_267EF3B68();
      v39 = [objc_opt_self() sharedPreferences];
      v40 = OUTLINED_FUNCTION_7_1();
      sub_267CE78A0(v40, v41, v29, v25, 0);
      OUTLINED_FUNCTION_72_4();

      (*(v30 + 8))(v29, v31);
      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (v32)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v42 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v42, qword_280240FB0);

        v43 = sub_267EF89F8();
        v44 = sub_267EF95D8();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = OUTLINED_FUNCTION_48();
          v46 = OUTLINED_FUNCTION_52();
          v231 = v46;
          *v45 = 136642819;
          *(v45 + 4) = sub_267BA33E8(v38, v32, &v231);
          OUTLINED_FUNCTION_41_8();
          _os_log_impl(v47, v48, v49, v50, v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
        }

        v10 = v227;
        v51 = *(v0 + 408);
        *(v0 + 368) = MEMORY[0x277D837D0];
        *(v0 + 344) = v38;
        *(v0 + 352) = v32;
        sub_267ECE290();

        sub_267B9F98C(v0 + 344, &qword_28022AEF0, &qword_267EFCDE0);
      }

      else
      {

        v10 = v227;
      }

      goto LABEL_26;
    }
  }

LABEL_26:
  v52 = *(*(v0 + 424) + 56);
  v53 = *(v52 + 104);
  if (!v53)
  {
    goto LABEL_79;
  }

  v54 = sub_267BAF0DC(*(v52 + 104));
  if (!v54)
  {
    goto LABEL_79;
  }

  v55 = v54;
  v226 = v52;
  v56 = *(v0 + 416);
  v57 = v56[3];
  v58 = v56[4];
  __swift_project_boxed_opaque_existential_0(v56, v57);
  v59 = *(v58 + 368);

  v224 = v59(v57, v58);
  v225 = v60;
  sub_267BBD0EC(0, (v53 & 0xC000000000000001) == 0, v53);
  if ((v53 & 0xC000000000000001) != 0)
  {
LABEL_116:
    v61 = MEMORY[0x26D609870](0, v53);
  }

  else
  {
    v61 = *(v53 + 32);
  }

  v62 = v61;
  v63 = sub_267D140C0();
  v65 = v64;

  v228 = v10;
  if (v65)
  {
    v66 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v66 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (v66)
    {
      v67 = *(v0 + 408);

      sub_267ED9A2C(v67);
      if (v68)
      {
        OUTLINED_FUNCTION_72_4();
        v69 = *(v0 + 480);
        v229 = *(v0 + 488);
        v70 = v10;
        v72 = v10[5];
        v71 = v10[6];
        __swift_project_boxed_opaque_existential_0(v70 + 2, v72);
        OUTLINED_FUNCTION_70_5();
        v73 = OUTLINED_FUNCTION_109();
        v74(v73);
        v75 = *(v0 + 168);
        __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
        sub_267EF3B68();
        __swift_storeEnumTagSinglePayload(v69, 0, 1, v229);
        OUTLINED_FUNCTION_47_8();
        v63 = sub_267D5E5A0(v76, v77, v78, v79, v58);
        v81 = v80;

        sub_267B9F98C(v69, &unk_28022AF10, &unk_267F001E0);
        __swift_destroy_boxed_opaque_existential_0((v0 + 136));
        v65 = v81;
      }

      v52 = v226;
      v82 = *(v0 + 408);
      *(v0 + 304) = MEMORY[0x277D837D0];
      *(v0 + 280) = v63;
      *(v0 + 288) = v65;
      sub_267ECE290();
      sub_267B9F98C(v0 + 280, &qword_28022AEF0, &qword_267EFCDE0);
      if (sub_267BAF0DC(v53) == 2)
      {
        v83 = *(v0 + 408);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A980, &qword_267F02638);
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_267EFC020;
        v85 = sub_267BF6698();

        *(v84 + 32) = v85;
        *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A988, &qword_267F02640);
        *(v0 + 312) = v84;
        sub_267ECE290();
        sub_267B9F98C(v0 + 312, &qword_28022AEF0, &qword_267EFCDE0);
      }

      else
      {
      }

      v10 = v228;
      v107 = *(v226 + 104);
      *(v226 + 104) = 0;

      goto LABEL_79;
    }
  }

  v86 = 0;
  v10 = &unk_267EFDCC0;
  while (1)
  {
    if (v55 == v86)
    {
      v96 = *(v0 + 448);
      v95 = *(v0 + 456);

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v95);
      v10 = v228;
      goto LABEL_53;
    }

    if ((v53 & 0xC000000000000001) != 0)
    {
      v87 = OUTLINED_FUNCTION_66();
      v88 = MEMORY[0x26D609870](v87);
    }

    else
    {
      if (v86 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_115;
      }

      v88 = *(v53 + 8 * v86 + 32);
    }

    v89 = v88;
    if (__OFADD__(v86, 1))
    {
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v90 = [v88 sharedLink];
    v58 = *(v0 + 456);
    v91 = *(v0 + 440);
    if (v90)
    {
      break;
    }

    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v58);
    sub_267B9F98C(v91, &qword_280229E20, &unk_267EFDCC0);
    ++v86;
  }

  v100 = v90;

  sub_267EF2B48();

  v101 = 1;
  __swift_storeEnumTagSinglePayload(v91, 0, 1, v58);
  sub_267B9F98C(v91, &qword_280229E20, &unk_267EFDCC0);
  v102 = [v89 sharedLink];

  if (v102)
  {
    v103 = *(v0 + 432);
    sub_267EF2B48();

    v101 = 0;
  }

  v10 = v228;
  v105 = *(v0 + 448);
  v104 = *(v0 + 456);
  v106 = *(v0 + 432);
  __swift_storeEnumTagSinglePayload(v106, v101, 1, v104);
  sub_267C26704(v106, v105);
  if (__swift_getEnumTagSinglePayload(v105, 1, v104) == 1)
  {

LABEL_53:
    sub_267B9F98C(*(v0 + 448), &qword_280229E20, &unk_267EFDCC0);
LABEL_71:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v132 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v132, qword_280240FB0);
    v133 = sub_267EF89F8();
    sub_267EF95D8();
    v134 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v136);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v137, v138, v139, v140, v141, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v142 = *(v52 + 104);
    if (v142)
    {
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
    }

    else
    {
      v143 = 0;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0;
    }

    v144 = *(v0 + 408);
    *(v0 + 216) = v142;
    *(v0 + 240) = v143;

    sub_267ECE290();
    sub_267B9F98C(v0 + 216, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_79;
  }

  (*(*(v0 + 464) + 32))(*(v0 + 472), *(v0 + 448), *(v0 + 456));
  if (!v225)
  {
    goto LABEL_70;
  }

  if (v224 == 0xD000000000000013 && v225 == 0x8000000267F10280)
  {

    goto LABEL_70;
  }

  v109 = sub_267EF9EA8();

  if (v109)
  {
LABEL_70:
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    goto LABEL_71;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v110 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v110, qword_280240FB0);
  v111 = sub_267EF89F8();
  sub_267EF95D8();
  v112 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v114);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v115, v116, v117, v118, v119, 2u);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v120 = *(v0 + 408);

  v121 = sub_267ED9A2C(v120);
  if (v122)
  {
    v106 = v121;
    v123 = v122;
    v124 = *(v0 + 480);
    v55 = *(v0 + 488);
    v125 = *(v0 + 472);
    v126 = sub_267EF2AC8();
    v128 = v127;
    v129 = v228[5];
    v130 = v228[6];
    __swift_project_boxed_opaque_existential_0(v228 + 2, v129);
    (*(v130 + 8))(v129, v130);
    v131 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    v10 = v228;
    sub_267EF3B68();
    __swift_storeEnumTagSinglePayload(v124, 0, 1, v55);
    sub_267D5E5A0(v126, v128, v124, v106, v123);
    OUTLINED_FUNCTION_72_4();

    sub_267B9F98C(v124, &unk_28022AF10, &unk_267F001E0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  else
  {
    v215 = *(v0 + 472);
    sub_267EF2AC8();
    OUTLINED_FUNCTION_72_4();
  }

  v217 = *(v0 + 464);
  v216 = *(v0 + 472);
  v218 = *(v0 + 456);
  v219 = *(v0 + 408);
  *(v0 + 272) = MEMORY[0x277D837D0];
  *(v0 + 248) = v55;
  *(v0 + 256) = v106;
  sub_267ECE290();
  v220 = *(v217 + 8);
  v221 = OUTLINED_FUNCTION_26_0();
  v222(v221);
  sub_267B9F98C(v0 + 248, &qword_28022AEF0, &qword_267EFCDE0);
  v52 = v226;
  v223 = *(v226 + 104);
  *(v226 + 104) = 0;

  *(*(v226 + 136) + 32) = 1;
LABEL_79:
  v145 = *(v0 + 408);
  v146 = *(v52 + 200);
  *(v52 + 200) = v145;
  v147 = v145;

  v148 = *(v52 + 200);
  if (v148)
  {
    sub_267D99838(v148);
    if (v149)
    {

      LOBYTE(v148) = 1;
    }

    else
    {
      LOBYTE(v148) = 0;
    }
  }

  v151 = *(v0 + 408);
  v150 = *(v0 + 416);
  *(v52 + 209) = v148;
  v152 = sub_267D2904C();
  v153 = *(v52 + 272);
  *(v52 + 264) = v152;
  *(v52 + 272) = v154;

  v155 = sub_267D29108();
  v156 = *(v52 + 88);
  *(v52 + 88) = v155;

  v157 = *(v150 + 24);
  v158 = *(v150 + 32);
  v159 = OUTLINED_FUNCTION_26_0();
  __swift_project_boxed_opaque_existential_0(v159, v160);
  v161 = *(v158 + 144);
  v162 = OUTLINED_FUNCTION_7_1();
  if (v163(v162))
  {
    goto LABEL_84;
  }

  v167 = *(v150 + 32);
  __swift_project_boxed_opaque_existential_0(*(v0 + 416), *(v150 + 24));
  v168 = *(v167 + 72);
  v169 = OUTLINED_FUNCTION_7_1();
  if ((v170(v169) & 1) == 0)
  {
    goto LABEL_102;
  }

  v171 = *(v150 + 32);
  __swift_project_boxed_opaque_existential_0(*(v0 + 416), *(v150 + 24));
  v172 = *(v171 + 408);
  v173 = OUTLINED_FUNCTION_7_1();
  v175 = v174(v173);
  if (v175 == 37)
  {
LABEL_90:
    v177 = *(v150 + 24);
    v176 = *(v150 + 32);
    __swift_project_boxed_opaque_existential_0(*(v0 + 416), v177);
    v178 = *(v176 + 408);
    v179 = OUTLINED_FUNCTION_54();
    v181 = v180(v179, v176);
    if (v181 == 37)
    {
      goto LABEL_102;
    }

    sub_267D6C0D4(v181);
    if (v183 != 2037277037 || v182 != 0xE400000000000000)
    {
      v185 = sub_267EF9EA8();

      if ((v185 & 1) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_84;
    }

    goto LABEL_111;
  }

  sub_267D6C0D4(v175);
  if (v212 != 6647407 || v211 != 0xE300000000000000)
  {
    v214 = sub_267EF9EA8();

    if (v214)
    {
      goto LABEL_84;
    }

    goto LABEL_90;
  }

LABEL_111:

LABEL_84:
  v164 = sub_267BCEA0C(*(v0 + 408));
  if (v164)
  {
    v165 = sub_267BAF0DC(v164);

    if (v165)
    {
      goto LABEL_102;
    }
  }

  v166 = [*(v0 + 408) speakableGroupName];
  if (v166)
  {

    goto LABEL_102;
  }

  v186 = sub_267D29EC0(*(v0 + 408));
  v188 = sub_267DEAC8C(v186, v187);

  if ((v188 & 1) == 0)
  {
    goto LABEL_102;
  }

  v189 = v10[6];
  __swift_project_boxed_opaque_existential_0(v10 + 2, v10[5]);
  v190 = *(v189 + 8);
  v191 = OUTLINED_FUNCTION_26_0();
  v192(v191);
  v193 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_66();
  v194 = sub_267BCF0D8();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if ((v194 & 1) == 0)
  {
LABEL_102:
    v199 = *(v0 + 424);
    v200 = *(v0 + 408);
    sub_267CE5F0C(v200);
    v230 = *(v0 + 408);
    v201 = *(v0 + 536);
    v202 = *(v0 + 528);
    v203 = *(v0 + 504);
    v205 = *(v0 + 472);
    v204 = *(v0 + 480);
    v207 = *(v0 + 440);
    v206 = *(v0 + 448);
    v208 = *(v0 + 432);
    v209 = v200;

    OUTLINED_FUNCTION_4_3();

    return v210(v230);
  }

  v195 = swift_task_alloc();
  *(v0 + 544) = v195;
  *v195 = v0;
  v195[1] = sub_267CE4C7C;
  v196 = *(v0 + 424);
  v197 = OUTLINED_FUNCTION_66_6(*(v0 + 408));

  return sub_267CE4E70(v197);
}

uint64_t sub_267CE4C7C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 544);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = v3[67];
  v8 = v3[66];
  v9 = v3[63];
  v10 = v3[60];
  v11 = v3[59];
  v12 = v3[56];
  v13 = v3[55];
  v14 = v3[54];

  v15 = *(v5 + 8);

  return v15(a1);
}

uint64_t sub_267CE4E70(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CE4E84()
{
  sub_267CE77F0(v0[17] + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_contextConversationResolver, (v0 + 2));
  v1 = swift_allocObject();
  v0[18] = v1;
  memcpy((v1 + 16), v0 + 2, 0x50uLL);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = sub_267CE784C;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_267CE4FA8;

  return sub_267C8FFD8(sub_267CE7854, v2);
}

uint64_t sub_267CE4FA8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = v3[20];
  v5 = v3[19];
  v6 = v3[18];
  v7 = *v0;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v11 + 168) = v9;
  *(v11 + 176) = v10;

  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CE50C8()
{
  v1 = v0[22];
  if (v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);

    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[21];
      v6 = OUTLINED_FUNCTION_48();
      v22 = OUTLINED_FUNCTION_52();
      *v6 = 136315138;
      v7 = OUTLINED_FUNCTION_64_0();
      *(v6 + 4) = sub_267BA33E8(v7, v8, v9);
      OUTLINED_FUNCTION_45();
      _os_log_impl(v10, v11, v12, v13, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v14 = v0[21];
    v15 = v0[16];
    v0[15] = MEMORY[0x277D837D0];
    v0[12] = v14;
    v0[13] = v1;
    sub_267ECE290();
    sub_267B9F98C((v0 + 12), &qword_28022AEF0, &qword_267EFCDE0);
  }

  v16 = v0[16];
  sub_267CE5F0C(v16);
  OUTLINED_FUNCTION_17();
  v21 = v17;
  v18 = v16;
  v19 = v0[16];

  return v21(v19);
}

uint64_t sub_267CE5274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267CE77F0(a3, v7);
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  memcpy(v5 + 4, v7, 0x50uLL);

  sub_267E7C0CC(sub_267CE7894, v5);
}

uint64_t sub_267CE5310(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_267CE785C, v6);
}

void *sub_267CE53A4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v221 = a2;
  v7 = sub_267EF7008();
  v8 = OUTLINED_FUNCTION_58(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v219 - v17;
  v220 = a1;
  v19 = sub_267EF97C8();
  v21 = v4[5];
  v20 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v21);
  (*(v20 + 8))(v222, v21, v20);
  __swift_project_boxed_opaque_existential_0(v222, v222[3]);
  sub_267EF3B78();
  (*(v10 + 104))(v15, *MEMORY[0x277D61C58], v7);
  LOBYTE(a1) = sub_267C28F38(v18, v15);
  v22 = *(v10 + 8);
  v22(v15, v7);
  v22(v18, v7);
  __swift_destroy_boxed_opaque_existential_0(v222);
  if (a1)
  {
    v23 = *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_changeHandler);
    v24 = a3[3];
    v25 = a3[4];
    __swift_project_boxed_opaque_existential_0(a3, v24);
    v26 = (*(v25 + 368))(v24, v25);
    sub_267E80A08(v221, v19, v26, v27, 1);

    *(v4[7] + 40) = 0;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v28 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v28, qword_280240FB0);
    v29 = sub_267EF89F8();
    sub_267EF95D8();
    v30 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_32();
      *v32 = 0;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v33, v34, v35, v36, v32, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    return v19;
  }

  v37 = v19;
  v38 = a3[3];
  v39 = a3[4];
  v40 = OUTLINED_FUNCTION_14_1();
  __swift_project_boxed_opaque_existential_0(v40, v41);
  v42 = *(v39 + 424);
  v43 = OUTLINED_FUNCTION_12_0();
  v45 = v44(v43);
  v46 = *(v45 + 16);
  v47 = v46 == 0;
  if (v46)
  {
    v48 = *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_changeHandler);
    sub_267E819A0(v45, v19);

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v49 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v49, qword_280240FB0);
    v50 = sub_267EF89F8();
    v51 = sub_267EF95D8();
    v52 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_31_5(v54);
      OUTLINED_FUNCTION_21_1(&dword_267B93000, v55, v51, "#SendMessageRCHFlowStrategy remove request");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }
  }

  else
  {
  }

  v56 = a3[3];
  v57 = a3[4];
  v58 = OUTLINED_FUNCTION_14_1();
  __swift_project_boxed_opaque_existential_0(v58, v59);
  v60 = *(v57 + 296);
  v61 = OUTLINED_FUNCTION_17_2();
  v63 = v62(v61);
  v219 = v4;
  if (v63)
  {
    goto LABEL_16;
  }

  v64 = a3[3];
  v65 = a3[4];
  v66 = OUTLINED_FUNCTION_14_1();
  __swift_project_boxed_opaque_existential_0(v66, v67);
  v68 = *(v65 + 272);
  v69 = OUTLINED_FUNCTION_17_2();
  if (v70(v69) & 1) != 0 || (v143 = a3[3], v144 = a3[4], v145 = OUTLINED_FUNCTION_14_1(), __swift_project_boxed_opaque_existential_0(v145, v146), v147 = *(v144 + 304), v148 = OUTLINED_FUNCTION_17_2(), (v149(v148)))
  {
LABEL_16:
    v71 = 0;
  }

  else
  {
    v150 = v221;
    if ([v221 outgoingMessageType])
    {
      v151 = [v150 outgoingMessageType];
      v71 = v151 == [v220 outgoingMessageType];
    }

    else
    {
      v71 = 1;
    }

    v19 = v37;
  }

  OUTLINED_FUNCTION_11_23();
  v73 = *(v72 + 152);
  v74 = OUTLINED_FUNCTION_17_2();
  if ((v75(v74) & 1) == 0)
  {
    OUTLINED_FUNCTION_11_23();
    v110 = *(v109 + 72);
    v111 = OUTLINED_FUNCTION_17_2();
    if (v112(v111) & 1) == 0 || (OUTLINED_FUNCTION_11_23(), v114 = *(v113 + 160), v115 = OUTLINED_FUNCTION_17_2(), ((v116(v115) | v71)))
    {
      v117 = a3[3];
      v118 = a3[4];
      v119 = OUTLINED_FUNCTION_14_1();
      __swift_project_boxed_opaque_existential_0(v119, v120);
      v121 = *(v118 + 160);
      v122 = OUTLINED_FUNCTION_12_0();
      if (v123(v122))
      {
        goto LABEL_34;
      }

      v152 = a3[3];
      v153 = a3[4];
      v154 = OUTLINED_FUNCTION_14_1();
      __swift_project_boxed_opaque_existential_0(v154, v155);
      v156 = *(v153 + 72);
      v157 = OUTLINED_FUNCTION_12_0();
      if ((v158(v157) & 1) == 0)
      {
        goto LABEL_47;
      }

      v159 = a3[3];
      v160 = a3[4];
      v161 = OUTLINED_FUNCTION_14_1();
      __swift_project_boxed_opaque_existential_0(v161, v162);
      v163 = *(v160 + 296);
      v164 = OUTLINED_FUNCTION_12_0();
      if (v165(v164))
      {
LABEL_34:
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v124 = sub_267EF8A08();
        __swift_project_value_buffer(v124, qword_280240FB0);
        v125 = sub_267EF89F8();
        v126 = sub_267EF95D8();
        v127 = OUTLINED_FUNCTION_13_0();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_31_5(v129);
          OUTLINED_FUNCTION_21_1(&dword_267B93000, v130, v126, "#SendMessageRCHFlowStrategy append request");
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
        }

        OUTLINED_FUNCTION_11_23();
        v132 = *(v131 + 104);
        v133 = OUTLINED_FUNCTION_17_2();
        if (v134(v133))
        {
          OUTLINED_FUNCTION_11_23();
          v136 = *(v135 + 72);
          v137 = OUTLINED_FUNCTION_17_2();
          if (v138(v137))
          {
            goto LABEL_63;
          }
        }

        v139 = a3[3];
        v140 = a3[4];
        __swift_project_boxed_opaque_existential_0(a3, v139);
        v141 = sub_267E58398(v139, v140);
        if (v141)
        {
          v142 = v141;
          sub_267EC4E04();
          OUTLINED_FUNCTION_54();
        }

        else
        {
          v142 = MEMORY[0x277D84F90];
        }

        v198 = *(v142 + 16);

        if (v198)
        {
LABEL_63:
          v199 = sub_267EF89F8();
          v200 = sub_267EF95D8();
          v201 = OUTLINED_FUNCTION_13_0();
          if (os_log_type_enabled(v201, v202))
          {
            v203 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v203);
            OUTLINED_FUNCTION_21_1(&dword_267B93000, v204, v200, "#SendMessageRCHFlowStrategy 'no send' request, clearing existing recipients");
            OUTLINED_FUNCTION_11_19();
            MEMORY[0x26D60A7B0]();
          }

          OUTLINED_FUNCTION_59_8();
          sub_267B9F98C(v222, &qword_28022AEF0, &qword_267EFCDE0);
        }

        v166 = v219;
        v205 = *(v219 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_changeHandler);
        sub_267E81224(v221, v19);
      }

      else
      {
LABEL_47:
        v166 = v219;
        if (!v46)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0_10();
            swift_once();
          }

          v167 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v167, qword_280240FB0);
          v168 = sub_267EF89F8();
          v169 = sub_267EF95C8();
          v170 = OUTLINED_FUNCTION_13_0();
          if (os_log_type_enabled(v170, v171))
          {
            v172 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v172);
            OUTLINED_FUNCTION_21_1(&dword_267B93000, v173, v169, "#SendMessageRCHFlowStrategy follow-up request without modifying the original intent");
            OUTLINED_FUNCTION_11_19();
            MEMORY[0x26D60A7B0]();
          }
        }
      }

      goto LABEL_67;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v76 = sub_267EF8A08();
  __swift_project_value_buffer(v76, qword_280240FB0);
  v77 = sub_267EF89F8();
  v78 = sub_267EF95D8();
  v79 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_31_5(v81);
    OUTLINED_FUNCTION_21_1(&dword_267B93000, v82, v78, "#SendMessageRCHFlowStrategy modify request");
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v83 = a3[3];
  v84 = a3[4];
  v85 = OUTLINED_FUNCTION_14_1();
  __swift_project_boxed_opaque_existential_0(v85, v86);
  v87 = *(v84 + 72);
  v88 = OUTLINED_FUNCTION_8_22();
  if (v89(v88) & 1) != 0 || (v90 = a3[3], v91 = a3[4], v92 = OUTLINED_FUNCTION_14_1(), __swift_project_boxed_opaque_existential_0(v92, v93), v94 = *(v91 + 152), v95 = OUTLINED_FUNCTION_8_22(), (v96(v95)))
  {
    v97 = a3[3];
    v98 = a3[4];
    v99 = OUTLINED_FUNCTION_14_1();
    __swift_project_boxed_opaque_existential_0(v99, v100);
    v101 = *(v98 + 352);
    v102 = OUTLINED_FUNCTION_8_22();
    v104 = v103(v102);
    if (v104 != 35)
    {
      sub_267D6C8B0(v104);
      if (v106 == 0x746361746E6F63 && v105 == 0xE700000000000000)
      {
      }

      else
      {
        v108 = sub_267EF9EA8();

        if ((v108 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      v174 = sub_267EF89F8();
      v175 = sub_267EF95D8();
      v176 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v178);
        OUTLINED_FUNCTION_21_1(&dword_267B93000, v179, v175, "#SendMessageRCHFlowStrategy modify contact request, clearing recipient and preserving content");
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      OUTLINED_FUNCTION_59_8();
      sub_267B9F98C(v222, &qword_28022AEF0, &qword_267EFCDE0);
      sub_267D291CC(0);
      v47 = 0;
    }
  }

LABEL_57:
  v166 = v219;
  v180 = *(v219 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_changeHandler);
  v181 = a3[3];
  v182 = a3[4];
  v183 = OUTLINED_FUNCTION_14_1();
  __swift_project_boxed_opaque_existential_0(v183, v184);
  v185 = *(v182 + 272);
  v186 = OUTLINED_FUNCTION_8_22();
  if (v187(v186))
  {
    v188 = a3[3];
    v189 = a3[4];
    v190 = OUTLINED_FUNCTION_14_1();
    __swift_project_boxed_opaque_existential_0(v190, v191);
    v192 = *(v189 + 368);
    v193 = OUTLINED_FUNCTION_8_22();
    v195 = v194(v193);
    v197 = v196;
  }

  else
  {
    v195 = 0;
    v197 = 0;
  }

  sub_267E80A08(v221, v19, v195, v197, v47);

LABEL_67:
  if (sub_267BCEA0C(v19))
  {

    v206 = v166[7];
    if (*(v206 + 88))
    {
      v207 = *(v206 + 88);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v207 = sub_267EF8F28();
    }

    v208 = sub_267D29108();
    if (!v208)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v208 = sub_267EF8F28();
    }

    v209 = sub_267CDE30C(v208, v207, sub_267EDA984, sub_267CE7058);
    sub_267D291CC(v209);
  }

  v210 = v166[7];
  v211 = sub_267D2904C();
  v212 = v210[34];
  v210[33] = v211;
  v210[34] = v213;

  sub_267CE60E4(v220, v19);
  v214 = sub_267D29108();
  v215 = v210[11];
  v210[11] = v214;

  v216 = sub_267D28F5C();
  v217 = sub_267D28F5C();
  sub_267CDE30C(v217, v216, sub_267E19614, sub_267CE6DA4);
  sub_267D29264();
  return v19;
}