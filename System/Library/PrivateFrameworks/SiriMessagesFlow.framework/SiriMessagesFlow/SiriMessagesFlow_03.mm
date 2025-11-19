uint64_t sub_267BCEA0C(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267BCEA94()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *(v1 + 440);
  *v4 = *v2;
  *(v3 + 448) = v0;

  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 432);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267BCEBC8()
{
  v1 = *(v0 + 424);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#Gatekeeper returning output");
    OUTLINED_FUNCTION_26();
  }

  v8 = *(v0 + 328);
  v7 = *(v0 + 336);
  v9 = *(v0 + 312);
  v10 = *(v0 + 320);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  v13 = *(v0 + 264);
  v21 = *(v0 + 304);
  v22 = *(v0 + 256);
  v23 = *(v0 + 248);
  v14 = *(v0 + 224);

  v15 = *(v11 + 8);
  v16 = OUTLINED_FUNCTION_68_0();
  v17(v16);
  sub_267B9A5E8((v0 + 96), v14);
  v18 = *(v10 + 8);
  v18(v8, v9);
  v18(v7, v9);

  OUTLINED_FUNCTION_17();

  return v19();
}

uint64_t sub_267BCED24()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267BCEE20()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 240);
  sub_267B9A5E8((v0 + 112), v0 + 72);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_26_0();
  v5(v4);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_0((v0 + 152), v6);
  v8 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 264) = v9;
  *v9 = v10;
  v9[1] = sub_267E1B770;

  return MEMORY[0x2821BB5D0](v0 + 72, v6, v7);
}

uint64_t sub_267BCEF64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  v5 = sub_267EF3CF8();
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3CA8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267BB93FC();
  sub_267EF4818();
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v10 = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_53_0();
  v12(v11, v9);
  OUTLINED_FUNCTION_131(v14);
  sub_267BCF0D8();
  sub_267EF4898();
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_267BCF0E0()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 240);
  *(v0 + 312) = v2;
  v3 = *(v0 + 216);
  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v7 = [v4 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    v8 = OUTLINED_FUNCTION_61_4();
    v11 = sub_267BA33E8(v8, v9, v10);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_210_1();
  OUTLINED_FUNCTION_129_4();
  if (!v17)
  {

LABEL_13:
    v36 = *(v0 + 192);
    if ((sub_267EF4878() & 1) == 0)
    {
      v37 = [*(v0 + 312) visual];
      if (v37)
      {
        OUTLINED_FUNCTION_263_1();
        OUTLINED_FUNCTION_262_1();
        v38 = OUTLINED_FUNCTION_37_1();
        sub_267BBE0DC(v38, v39);
        v37 = sub_267EF47C8();
      }

      else
      {
        v40 = 0;
      }

      OUTLINED_FUNCTION_120_8(v37, v40);
    }

    v41 = OUTLINED_FUNCTION_260_1();
    OUTLINED_FUNCTION_97(v41);
    v42 = sub_267EF4188();
    v43 = OUTLINED_FUNCTION_28_37(v42);
    v44(v43);
    v45 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_7_1();
    sub_267EF3C48();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 360) = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_8_61(v46);
    OUTLINED_FUNCTION_46();

    return sub_267BCF3A4(v48, v49, v50, v51, v52);
  }

  sub_267ED9A8C(v4);
  OUTLINED_FUNCTION_74_0();

  if (v6 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v18 = OUTLINED_FUNCTION_108();
  sub_267BBE0C8(v18, v19);
  *(v0 + 120) = &type metadata for Features;
  v20 = sub_267BAFCAC();
  OUTLINED_FUNCTION_303_0(v20);
  OUTLINED_FUNCTION_381();
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  v21 = *(v0 + 136);
  *(v0 + 328) = v21;
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = *(v0 + 216);
  v21;
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v24))
  {
    v25 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v25);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_89_9(v31);
  *v32 = v33;
  OUTLINED_FUNCTION_26_38(v32);
  OUTLINED_FUNCTION_46();

  return sub_267CA9190();
}

uint64_t OUTLINED_FUNCTION_234_0(__n128 a1)
{
  *(v2 + 24) = v1;
  v1[1] = a1;
  v1[3].n128_u8[0] = 0;

  return swift_task_alloc();
}

uint64_t sub_267BCF3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v9 = *(MEMORY[0x277D5BD48] + 4);
  v12 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v10 = swift_task_alloc();
  *(v5 + 32) = v10;
  *v10 = v5;
  v10[1] = sub_267BF34C8;

  return v12(a1, a2, a3);
}

uint64_t sub_267BCF474(void *a1)
{
  v2 = [a1 messages];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267BCF4EC()
{
  if ((sub_267BD1028() & 1) == 0)
  {
    return 0;
  }

  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FD8();

  v0 = sub_267EF7178();

  return v0 & 1;
}

void sub_267BCF554()
{
  v92 = v0;
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[10];
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state;
  swift_beginAccess();
  sub_267BDA120(v3 + v4, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v0[19] = *v0[18];
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[20] = v6;
      *v6 = v7;
      v6[1] = sub_267C4B0B4;
      v8 = v0[9];
      v9 = v0[10];
LABEL_13:
      OUTLINED_FUNCTION_15();

      sub_267C4B56C();
      return;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v40 = v0[10];
    v41 = sub_267EF8A08();
    __swift_project_value_buffer(v41, qword_280240FB0);

    v42 = sub_267EF89F8();
    v43 = sub_267EF95E8();

    if (os_log_type_enabled(v42, v43))
    {
      v45 = v0[16];
      v44 = v0[17];
      v46 = OUTLINED_FUNCTION_48();
      v47 = swift_slowAlloc();
      v91[0] = v47;
      *v46 = 136315138;
      sub_267BDA120(v3 + v4, v44);
      v48 = sub_267EF9098();
      v50 = sub_267BA33E8(v48, v49, v91);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_267B93000, v42, v43, "#SearchForMessagesHandleIntentFlow execute() called in an unexpected state: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v51 = v0[18];
    v52 = v0[9];
    sub_267EF4018();
    sub_267C4BE04(v51);
    goto LABEL_33;
  }

  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v90 = v0[14];
  v14 = v0[11];
  v15 = v0[12];
  v89 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229698, &unk_267EFDF80) + 48));
  (*(v15 + 32))(v13, v10, v14);
  v16 = *(v15 + 16);
  v16(v11, v13, v14);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_267BDABD0(v11, v3 + v4);
  swift_endAccess();
  v16(v90, v13, v14);
  v17 = (*(v15 + 88))(v90, v14);
  if (v17 == *MEMORY[0x277D5B3E0])
  {
    v18 = OUTLINED_FUNCTION_9_8();
    v19(v18);
    v20 = *v90;
    v0[21] = *v90;
    v21 = *(v90 + 8);
    v0[22] = v21;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v22 = sub_267EF8A08();
    __swift_project_value_buffer(v22, qword_280240FB0);
    v23 = sub_267EF89F8();
    v24 = sub_267EF95C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_267B93000, v23, v24, "#SearchForMessagesHandleIntentFlow handle intent flow completed", v25, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v26 = v0[10];

    sub_267BDA184(v20, v21, *(*(v26 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_searchForMessagesState) + 16));
    v0[23] = v27;
    if (v27)
    {
      v28 = v27;
      v29 = v27;
      v30 = sub_267EF89F8();
      v31 = sub_267EF95D8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_48();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v28;
        v34 = v29;
        _os_log_impl(&dword_267B93000, v30, v31, "#SearchForMessagesHandleIntentFlow relaxing intent to: %@", v32, 0xCu);
        sub_267C142D4(v33);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[24] = v35;
      *v35 = v36;
      v35[1] = sub_267C4B220;
      v37 = v0[9];
      v38 = v0[10];
      goto LABEL_13;
    }

    v83 = v0[15];
    v84 = v0[11];
    v85 = v0[12];
    v86 = v0[9];
    sub_267EF4018();

    (*(v85 + 8))(v83, v84);
LABEL_33:
    OUTLINED_FUNCTION_8_8();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_15();

    __asm { BRAA            X1, X16 }
  }

  if (v17 == *MEMORY[0x277D5B3D8])
  {
    v53 = OUTLINED_FUNCTION_9_8();
    v54(v53);
    v55 = *v90;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v56 = sub_267EF8A08();
    __swift_project_value_buffer(v56, qword_280240FB0);
    v57 = v55;
    v58 = sub_267EF89F8();
    v59 = sub_267EF95E8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_48();
      v61 = swift_slowAlloc();
      v91[0] = v61;
      *v60 = 136315138;
      v0[8] = v55;
      v62 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v63 = sub_267EF9098();
      v65 = sub_267BA33E8(v63, v64, v91);

      *(v60 + 4) = v65;
      OUTLINED_FUNCTION_29_2(&dword_267B93000, v66, v67, "#SearchForMessagesHandleIntentFlow handle intent flow failed: %s");
      __swift_destroy_boxed_opaque_existential_0(v61);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v68 = v0[15];
    v69 = v0[11];
    v70 = v0[12];
    v71 = v0[9];
    sub_267EF4018();

    (*(v70 + 8))(v68, v69);
    goto LABEL_33;
  }

  v72 = v0[15];
  v73 = v0[13];
  v74 = v0[11];
  sub_267EF9B68();

  v91[0] = 0xD000000000000017;
  v91[1] = 0x8000000267F12D90;
  v16(v73, v72, v74);
  v75 = sub_267EF9098();
  MEMORY[0x26D608E60](v75);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v76 = sub_267EF8A08();
  __swift_project_value_buffer(v76, qword_280240FB0);

  v77 = sub_267EF89F8();
  v78 = sub_267EF95E8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = OUTLINED_FUNCTION_48();
    v80 = swift_slowAlloc();
    v91[0] = v80;
    *v79 = 136315138;
    *(v79 + 4) = sub_267BA33E8(0xD000000000000017, 0x8000000267F12D90, v91);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v81, v82, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v80);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF9C98();
  OUTLINED_FUNCTION_15();
}

uint64_t sub_267BCFDD0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state;
  swift_beginAccess();
  sub_267BDA120(v1 + v9, v8);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229670, qword_267EFDED0);
    OUTLINED_FUNCTION_22(v10);
    return (*(v11 + 32))(a1, v8);
  }

  else
  {
    sub_267C4BE60();
    v13 = swift_allocError();
    *v14 = 0;
    v14[1] = 0;
    *a1 = v13;
    *(a1 + 8) = 0;
    v15 = *MEMORY[0x277D5B3D8];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229670, qword_267EFDED0);
    OUTLINED_FUNCTION_22(v16);
    (*(v17 + 104))(a1, v15);
    return sub_267C4BE04(v8);
  }
}

uint64_t sub_267BCFF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 824) = a8;
  *(v8 + 816) = a6;
  *(v8 + 920) = a5;
  *(v8 + 808) = a4;
  *(v8 + 800) = a3;
  *(v8 + 792) = a2;
  *(v8 + 784) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700) - 8) + 64) + 15;
  *(v8 + 832) = swift_task_alloc();
  v11 = sub_267EF2E38();
  *(v8 + 840) = v11;
  v12 = *(v11 - 8);
  *(v8 + 848) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 856) = swift_task_alloc();
  v14 = type metadata accessor for NetworkStatusProvider();
  *(v8 + 864) = v14;
  *(v8 + 136) = v14;
  *(v8 + 144) = &off_2878D2ED0;
  *(v8 + 112) = a7;

  return MEMORY[0x2822009F8](sub_267BD1550, 0, 0);
}

uint64_t sub_267BD009C(uint64_t a1)
{
  v3 = MEMORY[0x277D84F98];
  v28 = MEMORY[0x277D84F98];
  v4 = 0;
  v24 = a1 & 0xC000000000000001;
  v25 = sub_267BAF0DC(a1);
  while (1)
  {
    if (v25 == v4)
    {

      return v3;
    }

    if (v24)
    {
      v5 = MEMORY[0x26D609870](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v27 = v5;
    sub_267D2CE50(&v27, v26);
    if (v1)
    {

      return v3;
    }

    v8 = v26[0];
    v7 = v26[1];
    v10 = sub_267BA9948();
    v11 = v3[2];
    v12 = (v9 & 1) == 0;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_25;
    }

    v13 = v9;
    if (v3[3] < v11 + v12)
    {
      sub_267CFA924();
      v3 = v28;
      v14 = sub_267BA9948();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_27;
      }

      v10 = v14;
    }

    if (v13)
    {

      v17 = (v3[7] + 8 * v10);
      MEMORY[0x26D608F90](v16);
      if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_267EFCA40;
      *(v18 + 32) = v6;
      v3[(v10 >> 6) + 8] |= 1 << v10;
      v19 = (v3[6] + 16 * v10);
      *v19 = v8;
      v19[1] = v7;
      *(v3[7] + 8 * v10) = v18;
      v20 = v3[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_26;
      }

      v3[2] = v22;
    }

    ++v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

void sub_267BD0300(uint64_t a1, uint64_t *a2)
{
  v22 = a2;
  v21 = sub_267EF2D28();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v21);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x277D84F90];
  v7 = sub_267BAF0DC(a1);
  v25 = a1;
  v26 = v7;
  v8 = 0;
  v23 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1 & 0xC000000000000001;
  v9 = (v3 + 8);
  while (1)
  {
    if (v26 == v8)
    {

      return;
    }

    if (v24)
    {
      v10 = MEMORY[0x26D609870](v8, v25);
    }

    else
    {
      if (v8 >= *(v23 + 16))
      {
        goto LABEL_15;
      }

      v10 = *(v25 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = sub_267D606EC();
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v12;
    v14 = [v12 messageID];

    sub_267EF2D08();
    v15 = sub_267EF2CE8();
    v17 = v16;
    v18 = (*v9)(v6, v21);
    v19 = *v22;
    v27[0] = v15;
    v27[1] = v17;
    MEMORY[0x28223BE20](v18);
    *(&v21 - 2) = v27;

    LOBYTE(v15) = sub_267BC2B54();

    if (v15)
    {
      sub_267EF9BD8();
      v20 = *(v28 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    else
    {
LABEL_10:
    }

    ++v8;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_267BD0594()
{
  v105 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 336);
  v5 = *(v0 + 344);
  v6 = sub_267BD0F80();
  v7 = *(v3 + 16);
  v7(v1, v5, v2);
  v8 = *(v3 + 88);
  v9 = OUTLINED_FUNCTION_26_0();
  v11 = v10(v9);
  if (v11 == *MEMORY[0x277D5BCA0])
  {
    v12 = *(v0 + 408);
    (*(*(v0 + 384) + 96))(v12, *(v0 + 376));
    *(v0 + 416) = *v12;
    v13 = v12[1];
    *(v0 + 424) = v13;
    v14 = v12[2];
    *(v0 + 432) = v14;
    if ([v14 code] == 3)
    {
      sub_267BB170C(*(v0 + 352) + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_smsIntent, v0 + 56, &unk_28022BBF0, &unk_267F01C60);
      if (*(v0 + 80))
      {
        sub_267B9A5E8((v0 + 56), v0 + 16);
        v15 = *(v0 + 40);
        v16 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_0((v0 + 16), v15);
        if (sub_267E583B0(v15, v16))
        {
          if (sub_267DD3D30())
          {
            v17 = *(v0 + 360);
            v18 = *(v0 + 368);
            v19 = *(v0 + 352);
            swift_storeEnumTagMultiPayload();
            v20 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
            OUTLINED_FUNCTION_66_3();
            sub_267B9FF94(v18, v19 + v20);
            swift_endAccess();
            sub_267B9AFEC(v0 + 16, v0 + 176);
            v21 = sub_267D2D370();
            sub_267EF7958();
            OUTLINED_FUNCTION_43();

            v23 = sub_267E80518(v22);
            sub_267B9AFEC(v19 + 16, v0 + 216);
            if (qword_2802286F0 != -1)
            {
              OUTLINED_FUNCTION_4_0();
            }

            v24 = *(v0 + 328);
            sub_267B9AFEC(qword_2802405A0, v0 + 256);
            __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, *(v0 + 280));
            v25 = sub_267E33CE4((v0 + 176), v21, v23, (v0 + 216));
            __swift_destroy_boxed_opaque_existential_0((v0 + 256));
            *(v0 + 320) = v25;
            type metadata accessor for ReportMessageCountFlow();
            sub_267BC1DB4(&qword_28022C830, type metadata accessor for ReportMessageCountFlow);
            sub_267EF3FF8();

            __swift_destroy_boxed_opaque_existential_0((v0 + 16));
            goto LABEL_28;
          }
        }

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        sub_267B9F98C(v0 + 56, &unk_28022BBF0, &unk_267F01C60);
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v84 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v84, qword_280240FB0);
      v85 = sub_267EF89F8();
      v86 = sub_267EF95C8();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = OUTLINED_FUNCTION_32();
        *v87 = 0;
        _os_log_impl(&dword_267B93000, v85, v86, "#SearchForMessagesFlow RCH successful, proceeding with reading", v87, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v88 = *(v0 + 352);

      sub_267B9AFEC(v88 + 16, v0 + 96);
      v89 = type metadata accessor for NetworkStatusProvider();
      v90 = OUTLINED_FUNCTION_49();
      *(v0 + 160) = v89;
      *(v0 + 168) = &off_2878D2ED0;
      *(v0 + 136) = v90;
      type metadata accessor for SearchForMessagesFlowSource();
      swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v89);
      OUTLINED_FUNCTION_23();
      v92 = v91;
      v94 = *(v93 + 64);
      v95 = OUTLINED_FUNCTION_2();
      *(v0 + 440) = v95;
      (*(v92 + 16))();
      v96 = *v95;

      v97 = v13;
      v98 = v14;
      v99 = swift_task_alloc();
      *(v0 + 448) = v99;
      *v99 = v0;
      v99[1] = sub_267E31510;
      OUTLINED_FUNCTION_89();

      __asm { BR              X8 }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v46 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v46, qword_280240FB0);
    v47 = v14;
    v48 = sub_267EF89F8();
    v49 = sub_267EF95C8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_48();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      _os_log_impl(&dword_267B93000, v48, v49, "#SearchForMessagesFlow RCHFlow completed but intent response was not successful: %@", v50, 0xCu);
      sub_267B9F98C(v51, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v53 = *(v0 + 328);

    sub_267EF4018();

LABEL_28:
    v67 = *(v0 + 400);
    v66 = *(v0 + 408);
    v68 = *(v0 + 392);
    v69 = *(v0 + 368);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X1, X16 }
  }

  if (v11 == *MEMORY[0x277D5BC98])
  {
    v26 = *(*(v0 + 384) + 8);
    v26(*(v0 + 408), *(v0 + 376));
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = *(v0 + 400);
    v28 = *(v0 + 376);
    v29 = *(v0 + 344);
    v30 = sub_267EF8A08();
    __swift_project_value_buffer(v30, qword_280240FB0);
    v7(v27, v29, v28);
    v31 = sub_267EF89F8();
    v32 = sub_267EF95E8();
    v33 = OUTLINED_FUNCTION_10_2(v32);
    v34 = *(v0 + 400);
    if (v33)
    {
      v102 = v26;
      v35 = *(v0 + 392);
      v36 = *(v0 + 376);
      OUTLINED_FUNCTION_48();
      v103 = OUTLINED_FUNCTION_64_2();
      v104[0] = v103;
      *v29 = 136315138;
      v7(v35, v34, v36);
      v37 = sub_267EF9098();
      v39 = v38;
      v102(v34, v36);
      v40 = sub_267BA33E8(v37, v39, v104);

      *(v29 + 4) = v40;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v103);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {
      v64 = *(v0 + 376);

      v26(v34, v64);
    }

    v65 = *(v0 + 328);
LABEL_27:
    sub_267EF4018();
    goto LABEL_28;
  }

  if (v11 == *MEMORY[0x277D5BCA8])
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v54 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
    v55 = sub_267EF89F8();
    v56 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v56))
    {
      v57 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v57);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v58, v59, v60, v61, v62, 2u);
      OUTLINED_FUNCTION_26();
    }

    v63 = *(v0 + 328);

    goto LABEL_27;
  }

  v72 = *(v0 + 392);
  v73 = *(v0 + 376);
  v74 = *(v0 + 344);
  sub_267EF9B68();

  v104[0] = 0xD00000000000002ELL;
  v104[1] = 0x8000000267F1B980;
  v7(v72, v74, v73);
  OUTLINED_FUNCTION_26_0();
  v75 = sub_267EF9098();
  MEMORY[0x26D608E60](v75);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v76 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v76, qword_280240FB0);

  v77 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v78 = OUTLINED_FUNCTION_55_0();
    v104[0] = v78;
    *v6 = 136315138;
    *(v6 + 4) = sub_267BA33E8(0xD00000000000002ELL, 0x8000000267F1B980, v104);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  sub_267EF9C98();
  OUTLINED_FUNCTION_89();
}

uint64_t sub_267BD0F80()
{
  sub_267BBF30C(v0, v8);
  if (v9)
  {
    sub_267BBF344(v8);
    return 0;
  }

  else
  {
    sub_267B9A5E8(v8, v5);
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v1 = (*(v3 + 312))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return v1;
}

uint64_t sub_267BD1028()
{
  v0 = sub_267EF7198();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FD8();

  sub_267EF71A8();

  (*(v1 + 104))(v5, *MEMORY[0x277D61DD0], v0);
  v8 = sub_267EF7188();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v8 & 1;
    _os_log_impl(&dword_267B93000, v11, v12, "#NetworkStatusProvider: isOffline=%{BOOL}d", v13, 8u);
    MEMORY[0x26D60A7B0](v13, -1, -1);
  }

  return v8 & 1;
}

uint64_t sub_267BD1254(uint64_t a1)
{
  if (qword_280228818 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v2 = sub_267EF8A08();
    __swift_project_value_buffer(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_267B93000, v3, v4, "#SearchForMessagesFlowSource: In getReadableCheckInMessages", v5, 2u);
      MEMORY[0x26D60A7B0](v5, -1, -1);
    }

    v6 = sub_267BAF0DC(a1);
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      break;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_16:
    v18 = sub_267BD009C(v17);
    v19 = v18;
    v36 = v7;
    v20 = v18 + 64;
    v21 = 1 << *(v18 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v18 + 64);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    while (v23)
    {
      v26 = v25;
LABEL_24:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = v27 | (v26 << 6);
      v29 = (*(v19 + 48) + 16 * v28);
      v30 = *v29;
      v31 = v29[1];
      v32 = *(*(v19 + 56) + 8 * v28);

      sub_267D2D004(v30, v31, v32, &v36);
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        sub_267BD0300(v33, &v36);
        v35 = v34;

        return v35;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v8 = v6;
  v36 = MEMORY[0x277D84F90];
  result = sub_267EF9BF8();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D609870](v10, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = sub_267D606EC();
      if (!v13 || (v14 = v13, v15 = [v13 outputToDictionary], v14, !v15))
      {
        sub_267D2D32C();
        sub_267EF95A8();
      }

      ++v10;
      sub_267EF9BD8();
      v16 = *(v36 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v8 != v10);
    v17 = v36;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_267BD1550()
{
  v167 = v0;
  v2 = *__swift_project_boxed_opaque_existential_0(v0 + 14, v0[108]);
  v153 = sub_267BCF4EC();
  if (v153)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v6);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  v12 = v0[99];
  v13 = v0[98];
  v154 = sub_267EF97C8();
  v0[109] = v154;
  v14 = v0[100];
  if (!v12)
  {

    goto LABEL_11;
  }

  v15 = v0[99];

  v16 = sub_267BCF474(v15);
  if (!v16)
  {
LABEL_11:

    v17 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v17 = v16;
LABEL_12:
  v164 = v0;
  v159 = v0 + 69;
  v161 = v0 + 97;
  *&v165[0] = MEMORY[0x277D84F90];
  v18 = sub_267BAF0DC(v17);
  v19 = 0;
  v20 = v17 & 0xFFFFFFFFFFFFFF8;
  v21 = &off_279C2E000;
  while (v18 != v19)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x26D609870](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_94;
      }

      v22 = *(v17 + 8 * v19 + 32);
    }

    v1 = v22;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:

      v63 = MEMORY[0x26D609870](0, v18);
      goto LABEL_44;
    }

    if ([v22 messageType] == 1000)
    {
    }

    else
    {
      sub_267EF9BD8();
      v23 = *(*&v165[0] + 16);
      OUTLINED_FUNCTION_64_13();
      sub_267EF9C08();
      OUTLINED_FUNCTION_64_13();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    ++v19;
  }

  *v161 = *&v165[0];
  v24 = MEMORY[0x277D84F90];
  if (v12)
  {
    v25 = sub_267BCF474(v164[99]);
    if (v25)
    {
      v18 = v25;
    }

    else
    {
      v18 = v24;
    }
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  *&v165[0] = v24;
  v17 = sub_267BAF0DC(v18);
  v19 = 0;
  v20 = v18 & 0xC000000000000001;
  while (v17 != v19)
  {
    if (v20)
    {
      v26 = MEMORY[0x26D609870](v19, v18);
    }

    else
    {
      if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

      v26 = *(v18 + 8 * v19 + 32);
    }

    v1 = v26;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_95;
    }

    if ([v26 messageType] == 1000 && (objc_msgSend(v164[98], sel_attributes) & 2) != 0)
    {
      sub_267EF9BD8();
      v27 = *(*&v165[0] + 16);
      OUTLINED_FUNCTION_64_13();
      sub_267EF9C08();
      OUTLINED_FUNCTION_64_13();
      sub_267EF9C18();
      v24 = v165;
      sub_267EF9BE8();
    }

    else
    {
    }

    ++v19;
  }

  v21 = v164;
  v28 = v164[107];
  v29 = v164[106];
  v149 = v164[105];
  v30 = v164[102];
  v31 = v164[101];
  v152 = v31;
  v157 = v164[100];
  v32 = *(v164 + 920);
  v151 = *(v164 + 920);

  type metadata accessor for SearchForMessagesFlowSource();
  v33 = OUTLINED_FUNCTION_25_0();
  sub_267BD1254(v33);
  OUTLINED_FUNCTION_25_0();

  sub_267BD057C(v24);
  v34 = v164[97];
  v164[110] = v34;
  v35 = v30[4];
  __swift_project_boxed_opaque_existential_0(v30, v30[3]);
  v36 = *(v35 + 8);
  v37 = OUTLINED_FUNCTION_25_0();
  v38(v37, v35);
  v39 = v164[23];
  __swift_project_boxed_opaque_existential_0(v21 + 19, v21[22]);
  OUTLINED_FUNCTION_25_0();
  sub_267EF3B68();
  sub_267EF42D8();
  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FB8();

  sub_267EF42C8();

  v18 = sub_267BDD444(v34, v157, (v164 + 24), v31, v32, 0, 0, v28, 0, 0, 0);
  __swift_destroy_boxed_opaque_existential_0(v164 + 24);
  (*(v29 + 8))(v28, v149);
  __swift_destroy_boxed_opaque_existential_0(v164 + 19);
  sub_267B9AFEC(v30, (v164 + 29));

  v162 = v154;
  ConversationEventStore.init()((v164 + 2));
  v40 = type metadata accessor for AnnounceHintExperimentController();
  v41 = OUTLINED_FUNCTION_49();
  v164[37] = v40;
  v164[38] = &off_2878CF3F8;
  v164[34] = v41;
  v150 = sub_267EF67F8();
  v155 = [objc_allocWithZone(v150) init];
  v42 = sub_267EF72E8();
  v43 = type metadata accessor for MessageSummaryProvider();
  v44 = OUTLINED_FUNCTION_49();
  v164[42] = &type metadata for MessagesFeatureFlagsImpl;
  v164[43] = off_2878D1228;
  v164[47] = v150;
  v164[48] = &off_2878D78B8;
  v164[44] = v155;
  v164[52] = &type metadata for TTSUtil;
  v164[53] = &off_2878D0CB0;
  v164[49] = v42;
  v164[50] = &off_2878D0918;
  v164[57] = v43;
  v164[58] = &off_2878D8D98;
  v164[54] = v44;
  type metadata accessor for ConversationStateManager();
  v20 = swift_allocObject();
  v164[111] = v20;
  __swift_mutable_project_boxed_opaque_existential_1((v164 + 39), &type metadata for MessagesFeatureFlagsImpl);
  v45 = v164[47];
  v46 = __swift_mutable_project_boxed_opaque_existential_1((v21 + 44), v21[47]);
  OUTLINED_FUNCTION_23();
  v48 = v47;
  v50 = *(v49 + 64);
  v51 = OUTLINED_FUNCTION_2();
  (*(v48 + 16))(v51, v46, v45);
  v52 = __swift_mutable_project_boxed_opaque_existential_1((v21 + 49), v21[52]);
  v53 = v164[57];
  v54 = __swift_mutable_project_boxed_opaque_existential_1((v21 + 54), v21[57]);
  OUTLINED_FUNCTION_23();
  v56 = v55;
  v58 = *(v57 + 64);
  v59 = OUTLINED_FUNCTION_2();
  (*(v56 + 16))(v59, v54, v53);
  v60 = *v51;
  v61 = *v59;
  v62 = *v52;
  v164[62] = &type metadata for MessagesFeatureFlagsImpl;
  v164[63] = off_2878D1228;
  v164[67] = v150;
  v164[68] = &off_2878D78B8;
  v164[64] = v60;
  v164[72] = &type metadata for TTSUtil;
  v164[73] = &off_2878D0CB0;
  v1 = v159;
  *v159 = v62;
  v164[77] = v43;
  v164[78] = &off_2878D8D98;
  v164[74] = v61;
  v17 = v155;
  v63 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D837E0];
  OUTLINED_FUNCTION_66();
  *(v20 + 248) = sub_267EF8F28();
  OUTLINED_FUNCTION_66();
  *(v20 + 256) = sub_267EF8F28();
  OUTLINED_FUNCTION_66();
  *(v20 + 384) = sub_267EF8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229120, &unk_267F0B820);
  OUTLINED_FUNCTION_66();
  v64 = sub_267EF8F28();
  v65 = MEMORY[0x277D84FA0];
  *(v20 + 392) = v64;
  *(v20 + 400) = v65;
  *(v20 + 416) = 0;
  *(v20 + 426) = 0;
  *(v20 + 80) = v151;
  *(v20 + 88) = 0;
  *(v20 + 96) = v157;
  *(v20 + 104) = 0;
  *(v20 + 112) = 0;
  *(v20 + 64) = v162;
  *(v20 + 72) = v152;
  *(v20 + 56) = v18;
  sub_267BEB520((v164 + 2), v20 + 152);
  sub_267BB170C((v164 + 34), v20 + 344, &qword_280229128, &unk_267EFC860);
  sub_267B9AFEC((v164 + 64), v20 + 304);
  sub_267B9AFEC(v159, v20 + 432);
  sub_267B9AFEC((v164 + 74), v20 + 472);
  v66 = sub_267BAF0DC(v18);
  v164[112] = v66;
  if (v66 < 0)
  {
    goto LABEL_97;
  }

  v1 = v66;
  if (v66)
  {
    sub_267BBD0EC(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_98;
    }

    v63 = *(v18 + 32);

LABEL_44:
    v67 = *(v20 + 416);
    *(v20 + 416) = v63;

    goto LABEL_46;
  }

LABEL_46:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229130, &qword_267F0B830);
  *&v165[0] = sub_267EF8F28();
  if (v1)
  {
    v68 = 0;
    v19 = v18 & 0xC000000000000001;
    do
    {
      if (v19)
      {
        v69 = MEMORY[0x26D609870](v68, v18);
      }

      else
      {
        v69 = *(v18 + 8 * v68 + 32);
      }

      v68 = v68 + 1;
      OUTLINED_FUNCTION_83();
      v70 = *(v69 + 24);

      sub_267BE5E38(v71);
    }

    while (v1 != v68);

    v63 = *&v165[0];
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }

  *(v20 + 144) = v63;
  sub_267EF6818();
  v72 = sub_267EF6808();

  sub_267B9EF14((v21 + 2));
  sub_267B9F98C((v21 + 34), &qword_280229128, &unk_267EFC860);
  __swift_destroy_boxed_opaque_existential_0(v21 + 74);
  __swift_destroy_boxed_opaque_existential_0(v159);
  __swift_destroy_boxed_opaque_existential_0(v21 + 64);
  *(v20 + 120) = 0xD000000000000012;
  *(v20 + 128) = 0x8000000267F11DE0;
  *(v20 + 136) = v72;
  sub_267B9A5E8((v21 + 59), v20 + 264);
  *(v20 + 408) = v153 & 1;
  *(v20 + 424) = 0;
  sub_267B9A5E8((v21 + 29), v20 + 16);
  __swift_destroy_boxed_opaque_existential_0(v21 + 54);

  __swift_destroy_boxed_opaque_existential_0(v21 + 49);
  __swift_destroy_boxed_opaque_existential_0(v21 + 44);

  __swift_destroy_boxed_opaque_existential_0(v21 + 39);
  v21[82] = &type metadata for Features;
  v73 = sub_267BAFCAC();
  v21[83] = v73;
  *(v21 + 632) = 12;
  v74 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v21 + 79);
  if (v74)
  {
    v21[87] = &type metadata for Features;
    v21[88] = v73;
    *(v21 + 672) = 13;
    v74 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v21 + 84);
    if (v74)
    {
      v21[92] = &type metadata for Features;
      v21[93] = v73;
      *(v21 + 712) = 28;
      v75 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0(v21 + 89);
      if (v75)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v76 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v76, qword_280240FB0);
        v77 = sub_267EF89F8();
        v78 = sub_267EF95D8();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v79);
          _os_log_impl(&dword_267B93000, v77, v78, "#SearchForMessagesFlowSource creating a summary component for messages to be read.", &type metadata for Features, 2u);
          OUTLINED_FUNCTION_26();
        }

        v80 = v21[100];

        sub_267EF7C18();
        v21[113] = v81;
        v82 = swift_task_alloc();
        v21[114] = v82;
        *v82 = v21;
        v82[1] = sub_267E3302C;
        v83 = OUTLINED_FUNCTION_66();

        return sub_267E2BBA0(v83, v84);
      }
    }
  }

  OUTLINED_FUNCTION_59_16();
  sub_267BE43E8(1);
  if (!v74)
  {
    v104 = v21[110];

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v105 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v105, qword_280240FB0);
    v106 = sub_267EF89F8();
    v107 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v107))
    {
      v108 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v108);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v109, v110, v111, v112, v113, 2u);
      OUTLINED_FUNCTION_26();
    }

    v114 = v21[98];

    v115 = sub_267E2D6E4(v114);
    if (v115)
    {
      v116 = v115;
      if (sub_267BAF0DC(v115))
      {
        OUTLINED_FUNCTION_1_9();
        if (v114)
        {
          v117 = MEMORY[0x26D609870](0, v116);
        }

        else
        {
          v117 = *(v116 + 32);
        }

        v118 = v117;

        goto LABEL_88;
      }
    }

    v118 = 0;
LABEL_88:
    v158 = v21[109];
    v160 = v21[111];
    v126 = v21[104];
    v127 = v21[100];
    v163 = v21[99];
    v128 = v21[98];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_267EFC020;
    [v128 attributes];
    sub_267EF7958();
    v156 = v118;

    sub_267E80518(v130);
    v131 = *(v20 + 32);
    type metadata accessor for ReadingSummaryAction();
    memset(v165, 0, sizeof(v165));
    v166 = 0;
    swift_allocObject();

    v138 = OUTLINED_FUNCTION_49_21(v132, v133, v134, v135, v136, v137, v165);
    OUTLINED_FUNCTION_23_25();
    v141 = sub_267BC1DB4(v139, v140);
    *(v129 + 32) = v138;
    *(v129 + 40) = v141;
    sub_267EF4548();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
    v146 = sub_267EF4338();
    OUTLINED_FUNCTION_97(v146);
    OUTLINED_FUNCTION_50_15();

    OUTLINED_FUNCTION_22_28();
    goto LABEL_89;
  }

  v86 = v21[111];
  v87 = sub_267BE6268();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v88 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v88, qword_280240FB0);
  v89 = sub_267EF89F8();
  v90 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 67109120;
    v91[1] = v87 & 1;
    OUTLINED_FUNCTION_70_11(&dword_267B93000, v92, v93, "#SearchForMessagesFlowSource Initial group is summary? %{BOOL}d");
    OUTLINED_FUNCTION_29_1();
  }

  v94 = v21[111];

  sub_267BE4AD0();
  v95 = type metadata accessor for ConversationActionGroup();
  OUTLINED_FUNCTION_97(v95);

  v96 = OUTLINED_FUNCTION_66();
  sub_267BE6480(v96, v97, 1, 1);
  if ((v87 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_14();
    OUTLINED_FUNCTION_77_8();

    OUTLINED_FUNCTION_18_33();
LABEL_89:
    v125 = sub_267BC1DB4(v119, v120);
    goto LABEL_90;
  }

  v98 = v21[110];
  if ((*(v21[111] + 408) & 1) == 0)
  {
    v121 = v21[110];

    goto LABEL_84;
  }

  v99 = sub_267BF42CC();

  if (v99 == 1)
  {
LABEL_84:

    goto LABEL_85;
  }

  v100 = v21[111];
  v101 = type metadata accessor for DeviceOfflineNotificationActionGroup(0);
  OUTLINED_FUNCTION_97(v101);

  v102 = OUTLINED_FUNCTION_66();
  sub_267E32D98(v102, v103);
LABEL_85:
  v122 = OUTLINED_FUNCTION_48_25();
  OUTLINED_FUNCTION_97(v122);
  OUTLINED_FUNCTION_72_13();

  OUTLINED_FUNCTION_77_8();

  OUTLINED_FUNCTION_24_30();
  v125 = sub_267BC1DB4(v123, v124);
LABEL_90:
  OUTLINED_FUNCTION_44_22(v125);

  v147 = v21[1];
  v148 = v21[103];

  return v147(v148);
}

void sub_267BD2558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    v3 = 0x280228000uLL;
    v4 = qword_280240FB0;
    v5 = 0x280228000;
    do
    {
      v7 = *(v2 - 1);
      v6 = *v2;
      v8 = *(v3 + 2072);

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_267EF8A08();
      __swift_project_value_buffer(v9, v4);

      v10 = sub_267EF89F8();
      v11 = sub_267EF95D8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v4;
        v13 = v3;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_267BA33E8(v7, v6, &v19);
        _os_log_impl(&dword_267B93000, v10, v11, "#RecentInteractionUtils clearing: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x26D60A7B0](v15, -1, -1);
        v16 = v14;
        v3 = v13;
        v4 = v12;
        v5 = 0x280228000uLL;
        MEMORY[0x26D60A7B0](v16, -1, -1);
      }

      if (*(v5 + 1880) != -1)
      {
        swift_once();
      }

      v17 = qword_280240AE8;
      v18 = sub_267EF8FF8();

      [v17 removeObjectForKey_];

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

unint64_t sub_267BD2758()
{
  result = qword_28022AC00;
  if (!qword_28022AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC00);
  }

  return result;
}

uint64_t sub_267BD27AC(uint64_t a1, unint64_t a2)
{
  if (qword_280228818 == -1)
  {
    goto LABEL_2;
  }

LABEL_26:
  OUTLINED_FUNCTION_0();
LABEL_2:
  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  OUTLINED_FUNCTION_98_1();

  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_48();
    v72[0] = OUTLINED_FUNCTION_5_4();
    *v2 = 136315138;
    v7 = a1;
    *(v2 + 4) = sub_267BA33E8(a1, a2, v72);
    OUTLINED_FUNCTION_30_11();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {

    v7 = a1;
  }

  sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);

  v13 = sub_267BF952C(v7, a2);
  v14 = [v13 languageCode];

  v15 = sub_267EF9028();
  v17 = v16;

  v18 = sub_267EF89F8();
  sub_267EF95D8();

  v19 = v7;
  v65 = v17;
  if (OUTLINED_FUNCTION_81_4())
  {
    v20 = OUTLINED_FUNCTION_48();
    v21 = OUTLINED_FUNCTION_52();
    v72[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_267BA33E8(v15, v17, v72);
    OUTLINED_FUNCTION_34_7();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_11_11();
  }

  v27 = [objc_opt_self() availableLanguages];
  v28 = sub_267EF94B8();

  v29 = sub_267EF89F8();
  sub_267EF95D8();

  v67 = v15;
  v68 = v28;
  if (OUTLINED_FUNCTION_99())
  {
    v30 = OUTLINED_FUNCTION_48();
    v31 = OUTLINED_FUNCTION_52();
    v72[0] = v31;
    *v30 = 136315138;
    v32 = sub_267EF94C8();
    v34 = sub_267BA33E8(v32, v33, v72);

    *(v30 + 4) = v34;
    OUTLINED_FUNCTION_45();
    _os_log_impl(v35, v36, v37, v38, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_32_0();
    v28 = v68;
    OUTLINED_FUNCTION_32_0();
  }

  v39 = v17;
  v40 = v28 + 56;
  v41 = 1 << *(v28 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v2 = v42 & *(v28 + 56);
  v43 = (v41 + 63) >> 6;

  v44 = 0;
  for (i = MEMORY[0x277D84F90]; v2; v28 = v68)
  {
LABEL_16:
    v46 = (*(v28 + 48) + ((v44 << 10) | (16 * __clz(__rbit64(v2)))));
    v47 = v46[1];
    v72[0] = *v46;
    v72[1] = v47;

    v48 = a2;
    sub_267BF5414(v72, v67, v39, v19, a2, &v70);

    v49 = v71;
    if (v71)
    {
      v50 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_106_0(isUniquelyReferenced_nonNull_native, v52, v53, i);
        i = v56;
      }

      v54 = *(i + 16);
      if (v54 >= *(i + 24) >> 1)
      {
        sub_267BF4EE8();
        i = v57;
      }

      *(i + 16) = v54 + 1;
      v55 = i + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v49;
      v39 = v65;
      v19 = a1;
    }

    v2 &= v2 - 1;
    a2 = v48;
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v45 >= v43)
    {
      break;
    }

    v2 = *(v40 + 8 * v45);
    ++v44;
    if (v2)
    {
      v44 = v45;
      goto LABEL_16;
    }
  }

  v58 = sub_267EF72E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_267EFCA40;
  sub_267BA9F38(0, &unk_28022A2A0, 0x277D61490);
  *(v59 + 32) = sub_267EF95B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0F0, &qword_267F00450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCC90;
  *(inited + 32) = 1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  *(inited + 40) = i;
  *(inited + 64) = v61;
  *(inited + 72) = 5;
  *(inited + 104) = MEMORY[0x277D839B0];
  *(inited + 80) = 1;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_26_11();
  sub_267BFEA98(v62, v63);
  sub_267EF8F28();
  sub_267EF72D8();
  OUTLINED_FUNCTION_91_3();

  return v58;
}

void OUTLINED_FUNCTION_91_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_91_9()
{

  return sub_267B9F98C(v2 - 224, v0, v1);
}

uint64_t sub_267BD2E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_85_6();
  v13[66] = *(v14 + 56);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_84_5();
  if (v16)
  {

    OUTLINED_FUNCTION_26_0();
    v17 = sub_267BA9948();
    if (v18)
    {
      OUTLINED_FUNCTION_8_33(v17);

      OUTLINED_FUNCTION_53_10();

      OUTLINED_FUNCTION_10_28();
      OUTLINED_FUNCTION_40();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }
  }

  if (OUTLINED_FUNCTION_86_6())
  {
    sub_267BBD0EC(0, (v12 & 0xC000000000000001) == 0, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_111_3();
    }

    else
    {
      v28 = *(v12 + 32);
    }

    v29 = v28;
    v30 = [v28 sender];

    if (v30)
    {
      v31 = OUTLINED_FUNCTION_3_42();
      v32(v31);
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_21_16();

      v33 = OUTLINED_FUNCTION_43_15();
      v34(v33);
      __swift_destroy_boxed_opaque_existential_0(v13 + 2);
    }
  }

  OUTLINED_FUNCTION_22_18();
  v13[69] = v35[2];
  v13[70] = v35[3];
  v36 = v35[4];
  v37 = OUTLINED_FUNCTION_7_31();
  v38(v37);
  OUTLINED_FUNCTION_17_18();
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_47_12(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_5_39(v40);
  OUTLINED_FUNCTION_40();

  return sub_267BD3004();
}

uint64_t sub_267BD3004()
{
  OUTLINED_FUNCTION_12();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v5 = sub_267EF2728();
  v0[10] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v0[11] = v6;
  v8 = *(v7 + 64);
  v0[12] = OUTLINED_FUNCTION_2();
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_267BFD8B0;
  OUTLINED_FUNCTION_61_0();

  return sub_267BD30EC();
}

uint64_t sub_267BD30EC()
{
  OUTLINED_FUNCTION_12();
  v0[6] = v1;
  v0[7] = v2;
  v3 = sub_267EF2CC8();
  v0[8] = v3;
  v4 = *(v3 - 8);
  v0[9] = v4;
  v5 = *(v4 + 64) + 15;
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267BD31A4()
{
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  v2 = __swift_project_value_buffer(v1, qword_280240FB0);
  v0[11] = v2;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    *v5 = 0;
    _os_log_impl(&dword_267B93000, v3, v4, "DataDetector beginning", v5, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  sub_267EF2CB8();
  sub_267EF2C88();
  v0[12] = v9;
  v10 = *(v7 + 8);
  v0[13] = v10;
  v0[14] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v11 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v12 = sub_267BD346C(2096);
  v25 = v12;
  if (!v12)
  {
    goto LABEL_6;
  }

  v26 = v0[7];
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v0[6] & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

LABEL_6:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v28 = v0[6];
  v29 = v0[7];
  v30 = sub_267EF8FF8();
  v31 = [v25 matchesInString:v30 options:0 range:{0, sub_267EF9138()}];

  sub_267BFCDCC();
  v13 = sub_267EF92F8();

LABEL_7:
  v0[15] = v13;

  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v15))
  {
    v16 = OUTLINED_FUNCTION_48();
    *v16 = 134217984;
    *(v16 + 4) = sub_267BAF0DC(v13);

    _os_log_impl(&dword_267B93000, v14, v2, "DataDetector found %ld matches", v16, 0xCu);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_267BFD69C;
  v19 = v0[6];
  v18 = v0[7];
  OUTLINED_FUNCTION_30_2();

  return sub_267BFCE10(v20, v21, v22);
}

id sub_267BD346C(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_267EF2A78();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t OUTLINED_FUNCTION_36_8()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_36_9()
{
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];
  v8 = v0[10];
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

BOOL OUTLINED_FUNCTION_36_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_36_15()
{
  v2 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_36_16()
{
  v2 = v0[166];
  v3 = v0[137];
  v4 = v0[96];
  v5 = v0[94];

  return sub_267EF8358();
}

__n128 OUTLINED_FUNCTION_36_17(uint64_t a1)
{
  *(v2 + 72) = a1;
  result = *(v2 + 56);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_18()
{
  v2 = v0[48];
  v3 = v0[44];
  v4 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[37];
  v10 = v0[34];
  v11 = v0[31];
}

uint64_t OUTLINED_FUNCTION_36_20(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t *OUTLINED_FUNCTION_36_21()
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 37);
  __swift_destroy_boxed_opaque_existential_0(v1 + 32);
  __swift_destroy_boxed_opaque_existential_0(v1 + 27);
  result = __swift_project_boxed_opaque_existential_0((v0 + 152), *(v0 + 176));
  v3 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_23@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 120) = a2;
  strcpy((result + 128), "autoDownload");
  *(result + 141) = 0;
  *(result + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_25()
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_36_26(char a1@<W8>)
{
  *(v3 + 216) = v2;
  *(v3 + 224) = 0xD000000000000013;
  *(v3 + 232) = v1;
  *(v3 + 264) = v2;
  *(v3 + 240) = a1;
}

uint64_t OUTLINED_FUNCTION_36_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_134()
{
  v1 = v0[27];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  return sub_267C253C4();
}

uint64_t OUTLINED_FUNCTION_134_1()
{
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[88];
  v6 = v0[87];
  v0[157] = v1;
  v0[158] = v2;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  return sub_267EF7958();
}

uint64_t OUTLINED_FUNCTION_134_2()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_134_3()
{
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[34];

  return sub_267EF8A08();
}

uint64_t OUTLINED_FUNCTION_147_1()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 296));
  result = v0;
  v4 = *(v2 - 120);
  v5 = *(v2 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_147_2()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_64_6()
{

  return sub_267EF3848();
}

uint64_t OUTLINED_FUNCTION_64_8()
{
  result = v0[129];
  v3 = v0[126];
  v4 = v0[124];
  v5 = **(v1 - 136);
  return result;
}

double OUTLINED_FUNCTION_64_10()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_64_14@<X0>(unint64_t a1@<X8>)
{

  return sub_267BE8B74((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_64_15()
{
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[45];
  v5 = v0[43];
  v6 = v0[41];
  v7 = v0[23];

  return sub_267EF4918();
}

uint64_t OUTLINED_FUNCTION_251()
{

  return sub_267EF8348();
}

uint64_t sub_267BD3A60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC08, &qword_267F03338);
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267BD2758();
  sub_267EFA088();
  v14 = v3[24];
  v26[15] = 0;
  OUTLINED_FUNCTION_0_25();
  if (!v2)
  {
    v15 = v3[25];
    v26[14] = 1;
    OUTLINED_FUNCTION_0_25();
    v16 = v3[26];
    v26[13] = 2;
    OUTLINED_FUNCTION_0_25();
    v17 = v3[27];
    v26[12] = 3;
    OUTLINED_FUNCTION_0_25();
    v18 = v3[28];
    v26[11] = 4;
    OUTLINED_FUNCTION_0_25();
    v19 = v3[29];
    v26[10] = 5;
    OUTLINED_FUNCTION_0_25();
    v20 = v3[30];
    v26[9] = 6;
    OUTLINED_FUNCTION_0_25();
    v21 = v3[31];
    v26[8] = 7;
    OUTLINED_FUNCTION_0_25();
    v22 = v3[32];
    v26[7] = 8;
    OUTLINED_FUNCTION_0_25();
    v23 = v3[33];
    v26[6] = 9;
    OUTLINED_FUNCTION_0_25();
    v24 = v3[34];
    v26[5] = 10;
    OUTLINED_FUNCTION_0_25();
  }

  return (*(v8 + 8))(v12, v5);
}

void *OUTLINED_FUNCTION_117_1(void *result)
{
  *(v1 + 320) = result;
  result[2] = v4;
  result[3] = v2;
  result[4] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 152) = v2;
  *(v3 - 144) = a2;
  *(v3 - 176) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_3()
{

  return sub_267BF8DEC(v1, v2 + v0);
}

double OUTLINED_FUNCTION_117_4()
{
  result = 0.0;
  *(v0 + 632) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_5()
{
  v1 = *(v0 + 240);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
}

void *OUTLINED_FUNCTION_117_6@<X0>(unint64_t a1@<X8>)
{

  return sub_267BE8B74((a1 > 1), v1, 1);
}

void OUTLINED_FUNCTION_117_7()
{
  *(v3 + v0) = v2;
  v5 = v3 + *(v1 + 32);
  *v5 = v4;
  *(v5 + 8) = 0;
}

BOOL OUTLINED_FUNCTION_117_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_117_10()
{

  return __swift_project_boxed_opaque_existential_0((v1 + 16), v0);
}

uint64_t sub_267BD3DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BD3E4C()
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

uint64_t sub_267BD3F44()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  sub_267BD3FF4();
  OUTLINED_FUNCTION_131_1(v2);
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_135(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_55_2(v4);
  v6 = OUTLINED_FUNCTION_28_2(35);

  return v7(v6);
}

void sub_267BD3FF4()
{
  OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_243();
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v11, v142);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_1(v13, v14, v15, v16, v17, v18, v19, v20, v143);
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_22(v22, v23, v24, v25, v26, v27, v28, v29, v144);
  v31 = MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_23(v31, v32, v33, v34, v35, v36, v37, v38, v145);
  v40 = MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_12(v40, v41, v42, v43, v44, v45, v46, v47, v146);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77_0();
  v148 = v49;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77_0();
  v147 = v51;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_142();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_267F052C0;
  *(v58 + 32) = 0x65646F4368747561;
  *(v58 + 40) = 0xE800000000000000;
  OUTLINED_FUNCTION_178();
  sub_267C2FB6C(v59, v60, v61, &qword_267EFC0B0);
  v62 = sub_267EF79B8();
  OUTLINED_FUNCTION_4_38();
  if (v63)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_294_0();
  }

  else
  {
    *(v58 + 72) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 48));
    OUTLINED_FUNCTION_8_9();
    v65 = *(v64 + 32);
    OUTLINED_FUNCTION_178();
    v66();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 80) = v67 + 1;
  *(v58 + 88) = v68;
  TextComponentParameters = type metadata accessor for SearchForMessagesReadTextComponentParameters(0);
  OUTLINED_FUNCTION_172_0(TextComponentParameters);
  OUTLINED_FUNCTION_50_5(&unk_28022AE30, &qword_267EFC0B0, v70);
  OUTLINED_FUNCTION_7_0(v6);
  if (v63)
  {
    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    *(v58 + 120) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 96));
    OUTLINED_FUNCTION_8_9();
    v72 = *(v71 + 32);
    OUTLINED_FUNCTION_159_0();
    v73();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 128) = 0xD000000000000011;
  *(v58 + 136) = v74;
  OUTLINED_FUNCTION_49_3(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_7_0(v5);
  if (v63)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    *(v58 + 168) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 144));
    OUTLINED_FUNCTION_8_9();
    v76 = *(v75 + 32);
    OUTLINED_FUNCTION_158_1();
    v77();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 176) = 0xD000000000000010;
  *(v58 + 184) = v78;
  v79 = *(v1 + 0x8000000);
  if (v79)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v80 = v79;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v58 + 200) = 0;
    *(v58 + 208) = 0;
  }

  *(v58 + 192) = v80;
  OUTLINED_FUNCTION_119_3();
  *(v58 + 216) = v81;
  *(v58 + 224) = v82;
  *(v58 + 232) = 0xE700000000000000;
  OUTLINED_FUNCTION_48_4(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_7_0(v4);
  if (v63)
  {

    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 240) = 0u;
    *(v58 + 256) = 0u;
  }

  else
  {
    *(v58 + 264) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 240));
    OUTLINED_FUNCTION_8_9();
    v84 = *(v83 + 32);
    OUTLINED_FUNCTION_150_0();
    v85();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 272) = 0xD000000000000013;
  *(v58 + 280) = v86;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, 0x8000000);
  OUTLINED_FUNCTION_7_0(v3);
  if (v63)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 288) = 0u;
    *(v58 + 304) = 0u;
  }

  else
  {
    *(v58 + 312) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 288));
    OUTLINED_FUNCTION_8_9();
    v88 = *(v87 + 32);
    OUTLINED_FUNCTION_136();
    v89();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 320) = 0xD000000000000013;
  *(v58 + 328) = v90;
  OUTLINED_FUNCTION_281(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_7_0(v2);
  if (v63)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 336) = 0u;
    *(v58 + 352) = 0u;
  }

  else
  {
    *(v58 + 360) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 336));
    OUTLINED_FUNCTION_8_9();
    v92 = *(v91 + 32);
    OUTLINED_FUNCTION_271();
    v93();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 368) = 0xD000000000000011;
  *(v58 + 376) = v94;
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, 0x8000000);
  OUTLINED_FUNCTION_4_38();
  if (v63)
  {
    sub_267B9F98C(v147, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 384) = 0u;
    *(v58 + 400) = 0u;
  }

  else
  {
    *(v58 + 408) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 384));
    OUTLINED_FUNCTION_8_9();
    v96 = *(v95 + 32);
    OUTLINED_FUNCTION_178();
    v97();
  }

  OUTLINED_FUNCTION_20_13();
  *(v58 + 416) = v98;
  *(v58 + 424) = v99;
  v100 = *(v1 + 8);
  if (v100)
  {
    type metadata accessor for MessagesDialogContext();
    v101 = v100;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v58 + 440) = 0;
    *(v58 + 448) = 0;
  }

  *(v58 + 432) = v101;
  OUTLINED_FUNCTION_105_5();
  *(v58 + 456) = v102;
  *(v58 + 464) = v103;
  *(v58 + 472) = 0xE600000000000000;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, 0x8000000);
  OUTLINED_FUNCTION_7_0(v148);
  if (v63)
  {

    sub_267B9F98C(v148, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 480) = 0u;
    *(v58 + 496) = 0u;
  }

  else
  {
    *(v58 + 504) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 480));
    OUTLINED_FUNCTION_8_9();
    v105 = *(v104 + 32);
    OUTLINED_FUNCTION_136();
    v106();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 512) = 0xD000000000000017;
  v107 = MEMORY[0x277D839B0];
  *(v58 + 520) = v108;
  *(v58 + 552) = v107;
  *(v58 + 528) = 0;
  OUTLINED_FUNCTION_12_1();
  *(v58 + 560) = 0xD000000000000013;
  *(v58 + 568) = v109;
  LOBYTE(v109) = *v1;
  *(v58 + 600) = v107;
  *(v58 + 576) = v109;
  OUTLINED_FUNCTION_37_10();
  *(v58 + 608) = v110;
  OUTLINED_FUNCTION_36_13();
  *(v58 + 616) = v111;
  LOBYTE(v111) = *v1;
  *(v58 + 648) = v107;
  *(v58 + 624) = v111;
  OUTLINED_FUNCTION_38_13();
  *(v58 + 656) = v112;
  OUTLINED_FUNCTION_171_0();
  *(v58 + 664) = v113;
  LOBYTE(v113) = *(v1 + *"LocationInfo");
  *(v58 + 696) = v107;
  *(v58 + 672) = v113;
  OUTLINED_FUNCTION_304();
  *(v58 + 704) = v114;
  *(v58 + 712) = 0xEC00000064657461;
  *(v58 + 720) = *(v1 + *"tionInfo");
  *(v58 + 744) = v107;
  OUTLINED_FUNCTION_12_1();
  *(v58 + 752) = 0xD000000000000011;
  *(v58 + 760) = v115;
  OUTLINED_FUNCTION_240(&unk_28022AE30, &qword_267EFC0B0, *"Info");
  OUTLINED_FUNCTION_7_0(0xD000000000000011);
  if (v63)
  {
    sub_267B9F98C(0xD000000000000011, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 768) = 0u;
    *(v58 + 784) = 0u;
  }

  else
  {
    *(v58 + 792) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 768));
    OUTLINED_FUNCTION_8_9();
    v117 = *(v116 + 32);
    OUTLINED_FUNCTION_159_0();
    v118();
  }

  OUTLINED_FUNCTION_296();
  *(v58 + 800) = v119;
  *(v58 + 808) = 0xEB00000000746E65;
  LOBYTE(v119) = *(v1 + *"");
  *(v58 + 840) = v107;
  *(v58 + 816) = v119;
  OUTLINED_FUNCTION_12_1();
  *(v58 + 848) = 0xD000000000000017;
  *(v58 + 856) = v120;
  OUTLINED_FUNCTION_281(&unk_28022AE30, &qword_267EFC0B0, 0);
  OUTLINED_FUNCTION_7_0(v149);
  if (v63)
  {
    sub_267B9F98C(v149, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 864) = 0u;
    *(v58 + 880) = 0u;
  }

  else
  {
    *(v58 + 888) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 864));
    OUTLINED_FUNCTION_8_9();
    v122 = *(v121 + 32);
    OUTLINED_FUNCTION_271();
    v123();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 896) = 0xD000000000000013;
  *(v58 + 904) = v124;
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, 0xFFFFFFFF80000000);
  OUTLINED_FUNCTION_4_38();
  if (v63)
  {
    sub_267B9F98C(v150, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 912) = 0u;
    *(v58 + 928) = 0u;
  }

  else
  {
    *(v58 + 936) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 912));
    OUTLINED_FUNCTION_8_9();
    v126 = *(v125 + 32);
    OUTLINED_FUNCTION_178();
    v127();
  }

  OUTLINED_FUNCTION_61_10();
  *(v58 + 944) = v128;
  *(v58 + 952) = 0xE600000000000000;
  v129 = *(v1 + 88);
  if (v129)
  {
    v130 = sub_267EF77C8();
    v131 = v129;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v58 + 960) = v131;
  *(v58 + 984) = v130;
  OUTLINED_FUNCTION_12_1();
  *(v58 + 992) = 0xD000000000000012;
  *(v58 + 1000) = v132;
  OUTLINED_FUNCTION_49_3(&unk_28022AE30, &qword_267EFC0B0, 0);
  OUTLINED_FUNCTION_7_0(v151);
  if (v63)
  {

    sub_267B9F98C(v151, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 1008) = 0u;
    *(v58 + 1024) = 0u;
  }

  else
  {
    *(v58 + 1032) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 1008));
    OUTLINED_FUNCTION_8_9();
    v134 = *(v133 + 32);
    OUTLINED_FUNCTION_158_1();
    v135();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 1040) = 0xD000000000000012;
  *(v58 + 1048) = v136;
  sub_267C2FB6C(v1, v152, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v152);
  if (v63)
  {
    sub_267B9F98C(v152, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 1056) = 0u;
    *(v58 + 1072) = 0u;
  }

  else
  {
    *(v58 + 1080) = v62;
    __swift_allocate_boxed_opaque_existential_0((v58 + 1056));
    OUTLINED_FUNCTION_8_9();
    v138 = *(v137 + 32);
    OUTLINED_FUNCTION_271();
    v139();
  }

  OUTLINED_FUNCTION_35_14();
  *(v58 + 1088) = v140;
  OUTLINED_FUNCTION_34_12();
  *(v58 + 1096) = v141;
  LOBYTE(v141) = *(v1 + 0x8000000);
  *(v58 + 1128) = v107;
  *(v58 + 1104) = v141;
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_266_0()
{
  v2 = v0[44];
  v3 = v0[35];
  v4 = v0[30];

  return sub_267EF4198();
}

uint64_t OUTLINED_FUNCTION_173_1()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_173_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_159()
{
  *(v0 + 216) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 192));
}

uint64_t OUTLINED_FUNCTION_159_1(char a1)
{
  *(v1 + 1384) = a1 & 1;
}

double OUTLINED_FUNCTION_216()
{
  result = 0.0;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_267(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 368);
  v5 = *(v4 + 296);
  *(v4 + 288) = a1;
  *(v4 + 296) = a2;
}

uint64_t *OUTLINED_FUNCTION_169()
{
  *(v0 + 504) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 480));
}

double OUTLINED_FUNCTION_169_0()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_169_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_169_2(uint64_t a1)
{
  *(v1 + 32) = *(a1 + 24);
  v4 = *v2;

  return sub_267BAF0DC(v4);
}

void OUTLINED_FUNCTION_287(uint64_t a1@<X8>)
{
  *(v2 + 176) = v4 - 1;
  *(v2 + 184) = a1;
  v5 = *(v1 + *(v3 + 28));
}

uint64_t OUTLINED_FUNCTION_287_0()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 104);

  return sub_267EF8348();
}

double OUTLINED_FUNCTION_166_0()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_166_1()
{
  v2 = v0[162];
  v3 = v0[149];
  v4 = v0[136];
  v5 = v0[134];

  return sub_267EF8588();
}

void *OUTLINED_FUNCTION_166_2()
{

  return sub_267BE8B74(0, v0, 0);
}

uint64_t *OUTLINED_FUNCTION_166_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[5] = a1;
  v2[6] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2 + 2);
}

void OUTLINED_FUNCTION_229_1()
{
  v1 = *(v0 - 144);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) + 32;
}

double OUTLINED_FUNCTION_129_0()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_129_1(uint64_t a1)
{
  *(v1 + 1272) = a1;
  __swift_storeEnumTagSinglePayload(v2, 0, 1, a1);
  return 0;
}

uint64_t OUTLINED_FUNCTION_129_2()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[16];

  return sub_267EF7C18();
}

void OUTLINED_FUNCTION_129_3()
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_129_4()
{
  v2 = *(v0 + 56);
  *(v1 + 320) = v2;
  v3 = *(v2 + 213);
}

uint64_t sub_267BD4DF4()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[13];
  (*(v0[16] + 96))(v0[15]);
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  (*(v3 + 40))(v2, v3);
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v4);
  v6 = *(MEMORY[0x277D5BF40] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_267C376A8;
  v8 = v0[14];

  return MEMORY[0x2821BB5D0](v8, v4, v5);
}

uint64_t sub_267BD4F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x2822009F8](sub_267BD4DF4, 0, 0);
}

uint64_t sub_267BD4F28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8))();
  sub_267B9AFEC(v3 + 16, a2);
}

uint64_t OUTLINED_FUNCTION_90_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 40);
  return result;
}

void OUTLINED_FUNCTION_156_0()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void sub_267BD5008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v106 = sub_267EF6F58();
  v9 = OUTLINED_FUNCTION_58(v106);
  v105 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v111 = v14 - v13;
  OUTLINED_FUNCTION_26_2();
  v112 = sub_267EF6D88();
  v15 = OUTLINED_FUNCTION_58(v112);
  v110 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_45_0();
  v109 = v20;
  OUTLINED_FUNCTION_26_2();
  v117 = sub_267EF6CD8();
  v21 = OUTLINED_FUNCTION_58(v117);
  v113 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6();
  v116 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_45_0();
  v121 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD78, &qword_267F088D8);
  OUTLINED_FUNCTION_18(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_105();
  v114 = v32;
  OUTLINED_FUNCTION_26_2();
  v33 = sub_267EF6F08();
  v34 = OUTLINED_FUNCTION_58(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_45_0();
  v108 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  v42 = OUTLINED_FUNCTION_18(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_14_33();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_45_0();
  v122 = v46;
  OUTLINED_FUNCTION_26_2();
  v47 = sub_267EF6EA8();
  v48 = OUTLINED_FUNCTION_58(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_0_0();
  v55 = v54 - v53;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v56 = sub_267EF8A08();
  __swift_project_value_buffer(v56, qword_280240FB0);
  v57 = sub_267EF89F8();
  v58 = sub_267EF95D8();
  v59 = OUTLINED_FUNCTION_13_0();
  v104 = v36;
  if (os_log_type_enabled(v59, v60))
  {
    OUTLINED_FUNCTION_14_0();
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_267B93000, v57, v58, "#RecentInteractionUtils Recording read interaction", v61, 2u);
    v8 = v6;
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  sub_267B9A598(a5, v7, &unk_28022BD40, &unk_267F003E0);
  OUTLINED_FUNCTION_18_25();
  if (v62)
  {
    sub_267EF6E98();
    v65 = v117;
    v66 = v121;
    if (v8)
    {

      v8 = 0;
      v63 = 1;
    }

    else
    {
      v63 = 0;
    }

    __swift_storeEnumTagSinglePayload(v122, v63, 1, v47);
    OUTLINED_FUNCTION_18_25();
    if (!v62)
    {
      sub_267B9F98C(v7, &unk_28022BD40, &unk_267F003E0);
    }

    v64 = v122;
  }

  else
  {
    v64 = v122;
    (*(v50 + 32))();
    __swift_storeEnumTagSinglePayload(v122, 0, 1, v47);
    v65 = v117;
    v66 = v121;
  }

  OUTLINED_FUNCTION_18_25();
  if (v62)
  {
    sub_267B9F98C(v64, &unk_28022BD40, &unk_267F003E0);
    v67 = sub_267EF89F8();
    sub_267EF95E8();
    v68 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v68, v69))
    {
      OUTLINED_FUNCTION_14_0();
      v70 = swift_slowAlloc();
      *v70 = 0;
      OUTLINED_FUNCTION_12_28();
      _os_log_impl(v71, v72, v73, v74, v70, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }
  }

  else
  {
    v123 = v55;
    (*(v50 + 32))(v55, v64, v47);
    sub_267EF6CC8();
    sub_267BBD380(a4);
    v100 = v50;
    if (!v75)
    {
      sub_267BBDEAC();
      v66 = v121;
    }

    sub_267EF6C88();

    v76 = *(v113 + 8);
    v76(v116, v65);
    sub_267EF6CB8();
    if (v8)
    {

      v76(v66, v65);
      __swift_storeEnumTagSinglePayload(v114, 1, 1, v33);
      goto LABEL_23;
    }

    v76(v66, v65);
    if (__swift_getEnumTagSinglePayload(v114, 1, v33) == 1)
    {
LABEL_23:
      sub_267B9F98C(v114, &qword_28022BD78, &qword_267F088D8);
      v77 = a4;
      v78 = sub_267EF89F8();
      v79 = sub_267EF95E8();

      if (os_log_type_enabled(v78, v79))
      {
        OUTLINED_FUNCTION_21_0();
        v80 = swift_slowAlloc();
        OUTLINED_FUNCTION_48_7();
        v81 = swift_slowAlloc();
        v124 = v81;
        *v80 = 136315138;
        v82 = sub_267BBD380(v77);
        if (!v83)
        {
          v82 = sub_267BBDEAC();
        }

        v84 = sub_267BA33E8(v82, v83, &v124);

        *(v80 + 4) = v84;
        _os_log_impl(&dword_267B93000, v78, v79, "#RecentInteractionUtils Error finding entity %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();

        (*(v50 + 8))(v123, v47);
      }

      else
      {

        (*(v50 + 8))(v123, v47);
      }

      return;
    }

    (*(v104 + 32))(v108, v114, v33);
    sub_267DAB504(a1, a6);
    (*(v110 + 16))(v107, v109, v112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD60, &qword_267F088C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFC020;
    *(inited + 32) = 0x73746361746E6F63;
    *(inited + 40) = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD68, &qword_267F088D0);
    v86 = *(v104 + 72);
    v87 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_267EFC020;
    v89 = *(v104 + 16);
    v89(v88 + v87, v108, v33);
    *(inited + 48) = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD70, &qword_267F00648);
    sub_267EF8F28();
    sub_267EF6F18();
    v89(v103, v108, v33);
    v90 = sub_267EF89F8();
    v91 = sub_267EF95D8();
    v92 = v55;
    if (os_log_type_enabled(v90, v91))
    {
      OUTLINED_FUNCTION_21_0();
      v93 = swift_slowAlloc();
      OUTLINED_FUNCTION_48_7();
      v120 = swift_slowAlloc();
      v124 = v120;
      *v93 = 136315138;
      v118 = sub_267EF6EC8();
      v95 = v94;
      v96 = *(v104 + 8);
      v96(v103, v33);
      v97 = v96;
      v98 = sub_267BA33E8(v118, v95, &v124);
      v92 = v123;

      *(v93 + 4) = v98;
      _os_log_impl(&dword_267B93000, v90, v91, "#RecentInteractionUtils donating : %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v120);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();

      v99 = v97;
    }

    else
    {

      v99 = *(v104 + 8);
      v99(v103, v33);
    }

    sub_267C167B0();
    (*(v105 + 8))(v111, v106);
    (*(v110 + 8))(v109, v112);
    v99(v108, v33);
    (*(v100 + 8))(v92, v47);
  }
}

id sub_267BD5AF0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_267EF8FF8();

  v2 = [v0 initWithLanguage_];

  return v2;
}

uint64_t sub_267BD5B64()
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

uint64_t sub_267BD5C84()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[22];
  v3 = v0[44];
  v4 = v0[45];
  OUTLINED_FUNCTION_60_9();

  v5 = v0[27];

  v6 = v0[25];

  sub_267B9FF34(v1, &unk_28022AE30, &qword_267EFC0B0);

  v7 = OUTLINED_FUNCTION_18_7();

  return v8(v7);
}

uint64_t sub_267BD5D40()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_267BD5E30()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 1208);
  *v4 = *v1;
  v3[152] = v7;
  v3[153] = v0;

  OUTLINED_FUNCTION_38_8();

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 38);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267BD5F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267BD5FB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267BD6008()
{
  v191 = v0;
  OUTLINED_FUNCTION_23_9();
  v1 = OUTLINED_FUNCTION_105_2();
  *(v0 + 760) = v2;
  v4 = *(v3(v1) + 416);

  if (!v4)
  {
    goto LABEL_20;
  }

  if (!*(v4 + 112))
  {

LABEL_20:
    v8 = *(v0 + 1224);
    goto LABEL_23;
  }

  v5 = *(v4 + 104);
  v6 = *(*(v0 + 1192) + 24);
  if (!v6 || !*(v6 + 32))
  {
    v8 = *(v0 + 1224);
    goto LABEL_9;
  }

  v7 = sub_267BF4920();
  v8 = *(v0 + 1224);
  if (!v7)
  {
LABEL_9:

    goto LABEL_10;
  }

  v9 = *(v0 + 1032);
  v10 = *(v0 + 1008);
  v11 = *(v0 + 992);
  (*(*(v0 + 1024) + 104))(v9, *MEMORY[0x277D5FFB8], *(v0 + 1016));
  sub_267EF6EA8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);

  sub_267EF2CB8();
  v16 = OUTLINED_FUNCTION_117();
  sub_267DA8A74(v16, v17, v18, v19, v9, v10, v11);
  if (v8)
  {
    v20 = *(v0 + 1192);
    v21 = *(v0 + 1168);
    v22 = *(v0 + 1160);
    v23 = *(v0 + 1024);
    v184 = *(v0 + 1016);
    v187 = *(v0 + 1032);
    v183 = *(v0 + 1008);
    v181 = *(v0 + 1216);
    v182 = *(v0 + 992);
    v24 = *(v0 + 976);
    v25 = *(v0 + 968);

    (*(v24 + 8))(v182, v25);
    sub_267BD6C8C(v183, &unk_28022BD40);
    (*(v23 + 8))(v187, v184);
LABEL_30:
    v86 = *(v0 + 1120);
    v87 = *(v0 + 1112);
    v88 = *(v0 + 1096);
    v89 = *(v0 + 1080);
    OUTLINED_FUNCTION_7_18();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_100_3();

    return v90();
  }

  v134 = *(v0 + 1024);
  v186 = *(v0 + 1016);
  v189 = *(v0 + 1032);
  v135 = *(v0 + 1008);
  v136 = *(v0 + 992);
  v137 = *(v0 + 976);
  v138 = *(v0 + 968);

  v139 = *(v137 + 8);
  v140 = OUTLINED_FUNCTION_65_2();
  v141(v140);
  sub_267BD6C8C(v135, &unk_28022BD40);
  (*(v134 + 8))(v189, v186);
  v8 = 0;
LABEL_10:
  OUTLINED_FUNCTION_26_10();
  if ((sub_267BD705C() & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v26 = *(v0 + 408);
  v27 = *(v0 + 416);
  OUTLINED_FUNCTION_126_1((v0 + 384));
  OUTLINED_FUNCTION_42_7(v28);
  v30 = v29(v26, v27);
  if (!sub_267BAF0DC(v30))
  {

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_97_3();
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x26D609870](0, v30);
  }

  else
  {
    v31 = *(v30 + 32);
  }

  v32 = v31;

  v33 = [v32 sender];

  if (!v33)
  {
    goto LABEL_22;
  }

  v34 = *(v0 + 1128);
  v35 = sub_267EF89F8();
  v36 = sub_267EF95D8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_32();
    *v37 = 0;
    _os_log_impl(&dword_267B93000, v35, v36, "#ReadComponentAction First message from sender, recording", v37, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v38 = *(v0 + 1000);
  v39 = *(v0 + 984);

  sub_267EF6EA8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  sub_267EF2CB8();
  v44 = OUTLINED_FUNCTION_117();
  sub_267BD5008(v44, v45, v46, v47, v38, v39);
  if (v8)
  {
    v48 = *(v0 + 1216);
    v49 = *(v0 + 1192);
    v50 = *(v0 + 1168);
    v51 = *(v0 + 1160);
    v185 = *(v0 + 984);
    v188 = *(v0 + 1000);
    v52 = *(v0 + 976);
    v53 = *(v0 + 968);

    (*(v52 + 8))(v185, v53);
    sub_267BD6C8C(v188, &unk_28022BD40);
    goto LABEL_30;
  }

  v142 = *(v0 + 1000);
  v143 = *(v0 + 984);
  v144 = *(v0 + 976);
  v145 = *(v0 + 968);

  (*(v144 + 8))(v143, v145);
  sub_267BD6C8C(v142, &unk_28022BD40);
  v8 = 0;
LABEL_23:
  v54 = *(v0 + 1128);
  v55 = *(v0 + 1216);
  v56 = sub_267EF89F8();
  v57 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_116_0())
  {
    v58 = *(v0 + 1216);
    OUTLINED_FUNCTION_48();
    v190 = OUTLINED_FUNCTION_55_0();
    *v55 = 136315138;
    v59 = [v58 patternId];
    v60 = sub_267EF9028();
    v62 = v61;

    v63 = sub_267BA33E8(v60, v62, &v190);

    *(v55 + 1) = v63;
    _os_log_impl(&dword_267B93000, v56, v57, "#ReadComponentAction pattern %s successfully executed", v55, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_23_9();
  v64 = OUTLINED_FUNCTION_105_2();
  *(v0 + 768) = v65;
  v66(v64);

  v67 = &type metadata for Features;
  *(v0 + 368) = &type metadata for Features;
  v68 = sub_267BAFCAC();
  *(v0 + 376) = v68;
  *(v0 + 344) = 2;
  v69 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 344));
  if ((v69 & 1) == 0)
  {
    OUTLINED_FUNCTION_23_9();
    v70 = *(v0 + 848);
    v71 = *(v0 + 840);
    *(v0 + 776) = *(v0 + 856);
    v73 = *(v72(v71) + 426);

    sub_267C907E8(v71, v70);
    ConversationEventStore.init()(v0 + 16);
    OUTLINED_FUNCTION_92_2();
    sub_267C917B0(v74, v75, v76, 0, v77, 1);

    sub_267B9EF14(v0 + 16);
  }

  v78 = MEMORY[0x277D84F90];
  *(v0 + 784) = MEMORY[0x277D84F90];
  v79 = *(v0 + 456);
  __swift_project_boxed_opaque_existential_0((v0 + 424), *(v0 + 448));
  OUTLINED_FUNCTION_63();
  if ((sub_267EF3C48() & 1) == 0)
  {
    goto LABEL_35;
  }

  v80 = *(v0 + 1216);
  OUTLINED_FUNCTION_54_5();
  sub_267C92460(v81);
  if (v8)
  {
    v82 = *(v0 + 1216);
    v83 = *(v0 + 1192);
    v84 = *(v0 + 1168);
    v85 = *(v0 + 1160);

    goto LABEL_30;
  }

  v93 = v0 + 784;
  MEMORY[0x26D608F90]();
  v94 = *((*(v0 + 784) & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((*(v0 + 784) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v94 >> 1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    OUTLINED_FUNCTION_3();
    sub_267EF9368();
    v8 = 0;
    v78 = *v93;
LABEL_35:
    *(v0 + 1240) = v78;
    *(v0 + 1232) = v8;
    OUTLINED_FUNCTION_23_9();
    v95 = *(v0 + 1128);
    v96 = OUTLINED_FUNCTION_105_2();
    *(v0 + 824) = v97;
    v98(v96);

    *(v0 + 488) = v67;
    *(v0 + 496) = v68;
    *(v0 + 464) = 14;
    v99 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0((v0 + 464));
    v100 = sub_267EF89F8();
    v68 = sub_267EF95D8();
    if (os_log_type_enabled(v100, v68))
    {
      v101 = swift_slowAlloc();
      *v101 = 67109120;
      *(v101 + 4) = v99 & 1;
      _os_log_impl(&dword_267B93000, v100, v68, "#ReadComponentAction multilingualMessageReading feature enabled : %{BOOL}d", v101, 8u);
      OUTLINED_FUNCTION_18_2();
    }

    if (v99)
    {
      OUTLINED_FUNCTION_23_9();
      v102 = OUTLINED_FUNCTION_105_2();
      *(v0 + 808) = v103;
      v105 = *(v104(v102) + 425);

      if (v105 == 1)
      {
        v106 = OUTLINED_FUNCTION_26_10();
        if (sub_267C90620(v106, v107))
        {
          v108 = OUTLINED_FUNCTION_26_10();
          *(v0 + 1248) = sub_267C915F8(v108, v109);
          *(v0 + 1256) = v110;
          if (v110)
          {
            v111 = *(v0 + 1184);
            v112 = *(v0 + 1176);
            v113 = *(v0 + 1112);
            v114 = *(v0 + 1104);
            v115 = *(v0 + 952);
            v116 = *(v0 + 944);
            v117 = OUTLINED_FUNCTION_26_10();
            v118(v117);
            OUTLINED_FUNCTION_78_3();
            if (swift_dynamicCast())
            {
              v119 = *(v0 + 960);
              v120 = *(v0 + 952);
              v121 = *(v0 + 944);
              v122 = OUTLINED_FUNCTION_57_0();
              __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
              OUTLINED_FUNCTION_61_0();
              sub_267C96464();
              v126 = sub_267EF72E8();
              sub_267BA9F38(0, &qword_28022A0A8, 0x277CE2028);
              v127 = *MEMORY[0x277CEF5E0];
              v128 = sub_267EF9028();
              *(v0 + 1264) = sub_267BFEA28(v128, v129, &selRef_initWithBundleIdentifier_);
              ConversationEventStore.init()(v0 + 112);
              v130 = [v126 assistantVoiceMaps];
              v131 = sub_267EF72B8();

              *(v0 + 1272) = sub_267C90434(v131);
              v132 = swift_task_alloc();
              *(v0 + 1280) = v132;
              *v132 = v0;
              v132[1] = sub_267C909A4;
              v192 = &off_2878D0918;
              OUTLINED_FUNCTION_100_3();

              return sub_267C9C508();
            }

            v146 = *(v0 + 952);
            v68 = *(v0 + 944);

            OUTLINED_FUNCTION_78();
            __swift_storeEnumTagSinglePayload(v147, v148, v149, v146);
            sub_267BD6C8C(v68, &qword_28022A090);
          }
        }
      }
    }

    *(v0 + 792) = v78;
    v93 = sub_267BAF0DC(v78);
    if (!v93)
    {
      break;
    }

    v67 = v78 + 2;
    while (!__OFSUB__(v93--, 1))
    {
      if ((v78 & 0xC000000000000001) != 0)
      {
        v151 = OUTLINED_FUNCTION_66();
        v152 = MEMORY[0x26D609870](v151);
      }

      else
      {
        if ((v93 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v94 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v93 >= v94)
        {
          goto LABEL_69;
        }

        v152 = *(&v67->Kind + v93);
      }

      v68 = v152;
      objc_opt_self();
      swift_dynamicCastObjCClass();
      OUTLINED_FUNCTION_98_4();
      if (v0 != -792 || !v93)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    OUTLINED_FUNCTION_8_2(v94);
    sub_267EF9328();
  }

LABEL_58:
  v153 = *(v0 + 1232);
  v154 = swift_task_alloc();
  OUTLINED_FUNCTION_9_16(v154);
  OUTLINED_FUNCTION_119_1();

  if (v153)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_54_5();
      sub_267C93120();
    }
  }

  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_11_17();
  sub_267EF47F8();
  sub_267EF4858();
  v155 = OUTLINED_FUNCTION_56_4();
  v156 = *(MEMORY[0x277D47000](v155) + 88);

  if (!v156)
  {
    v157 = *(v0 + 936);
    v158 = *(v0 + 904);
    v159 = *(v0 + 416);
    __swift_project_boxed_opaque_existential_0((v0 + 384), *(v0 + 408));
    v160 = OUTLINED_FUNCTION_8_16();
    v161(v160);
    OUTLINED_FUNCTION_76();
    sub_267C904F0(v162);
    OUTLINED_FUNCTION_125_1();

    v163 = *(v0 + 448);
    v164 = *(v0 + 456);
    OUTLINED_FUNCTION_40_6();
    sub_267EF3B98();
    *(v0 + 528) = &type metadata for MessagesFeatureFlagsImpl;
    OUTLINED_FUNCTION_69_2(off_2878D1228);

    __swift_destroy_boxed_opaque_existential_0((v0 + 504));
    sub_267EF4158();
    v165 = OUTLINED_FUNCTION_3_19();
    __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
    OUTLINED_FUNCTION_107_0();
    sub_267EF4818();
  }

  OUTLINED_FUNCTION_58_3();
  v169 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v169);
  v170 = sub_267EF4188();
  v171 = OUTLINED_FUNCTION_44_9(v170);
  OUTLINED_FUNCTION_70_4(v171);

  OUTLINED_FUNCTION_51_4();
  v172 = swift_task_alloc();
  v173 = OUTLINED_FUNCTION_83_2(v172);
  *v173 = v174;
  OUTLINED_FUNCTION_3_21(v173);
  OUTLINED_FUNCTION_100_3();

  return sub_267BCF3A4(v175, v176, v177, v178, v179);
}

uint64_t sub_267BD6C8C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_9_12(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t sub_267BD6CE0()
{
  OUTLINED_FUNCTION_89_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_61_0();
  v7(v6);
  return v0;
}

uint64_t sub_267BD6D38()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_97_7();
  sub_267BD6DA0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267BD6DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_93_1()
{
  *v0 = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_93_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = v5[29];
  v8 = v5[30];
  v9 = v5[27];
  v10 = v5[28];

  return sub_267BFF0F4(v9, v10, v7, v8, a5);
}

void OUTLINED_FUNCTION_93_5()
{
  *(v3 - 112) = v0[160];
  v5 = v0[159];
  v6 = v0[143];
  v7 = v0[142];
  *(v3 - 136) = v2;
  *(v3 - 128) = v7;
  v8 = v0[108];
  v9 = v0[106];
  v10 = v0[93];
  *(v3 - 144) = v0[87];
}

uint64_t OUTLINED_FUNCTION_93_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_267BA33E8(a18, v18, a3);
}

uint64_t OUTLINED_FUNCTION_93_7()
{

  return sub_267B9F98C(v2 - 176, v0, v1);
}

uint64_t sub_267BD6EF0()
{
  OUTLINED_FUNCTION_62();
  v2 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[21] = v1;
  v3[22] = v5;
  v3[23] = v0;
  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 552);
  *v8 = *v1;
  *(v9 + 560) = v0;

  OUTLINED_FUNCTION_22_2();
  v11 = *(v10 + 544);
  v12 = *(v2 + 472);
  v13 = *(v2 + 448);

  if (v0)
  {
    v14 = sub_267DDE1FC;
  }

  else
  {
    v14 = sub_267BD5C84;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_267BD705C()
{
  OUTLINED_FUNCTION_16_9();
  *&v52 = v1;
  v4 = *(v3 + 8);
  v5 = *(v4 + 8);
  v5();
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v6, v7);
  v8 = v57;
  OUTLINED_FUNCTION_126_1(&v55);
  v10 = *(v9 + 32);
  v11 = OUTLINED_FUNCTION_75_2();
  v12(v11, v8);
  sub_267BD997C();

  __swift_destroy_boxed_opaque_existential_0(&v55);
  if (v45)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
    }
  }

  else
  {
    sub_267BD6C8C(&v44, &qword_280229910);
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
  }

  v51[0] = v0;
  v13 = (v5)(v2, v4);
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v14, v15);
  v16 = v54;
  OUTLINED_FUNCTION_126_1(&v52);
  v18 = *(v17 + 32);
  v19 = OUTLINED_FUNCTION_75_2();
  v20(v19, v16);
  v21 = v13;
  sub_267BD9E24();

  __swift_destroy_boxed_opaque_existential_0(&v52);
  if (v45)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
    }
  }

  else
  {
    sub_267BD6C8C(&v44, &qword_280229910);
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
  }

  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v22, v23);
  __swift_project_boxed_opaque_existential_0(&v44, v45);
  v24 = OUTLINED_FUNCTION_8_16();
  v25(v24);
  OUTLINED_FUNCTION_76();
  if (sub_267BAF0DC(v26))
  {
    OUTLINED_FUNCTION_97_3();
    if ((v21 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](0, v21);
    }

    else
    {
      v27 = *(v21 + 32);
    }

    OUTLINED_FUNCTION_125_1();

    v28 = [v21 & 0xC000000000000001 sender];
  }

  else
  {

    v28 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(&v44);
  sub_267BD6CE0();
  v29 = v45;
  if (v45)
  {
    v30 = v46;
    OUTLINED_FUNCTION_126_1(&v44);
    OUTLINED_FUNCTION_42_7(v31);
    v29 = v32(v29, v30);
    __swift_destroy_boxed_opaque_existential_0(&v44);
  }

  else
  {
    sub_267BD6C8C(&v44, &qword_280229CE0);
  }

  v50 = v0;
  (v5)(v2, v4);
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v33, v34);
  __swift_project_boxed_opaque_existential_0(&v44, v45);
  v35 = OUTLINED_FUNCTION_6_17();
  v36(v35);
  sub_267BD997C();

  __swift_destroy_boxed_opaque_existential_0(&v44);
  if (v51[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      if (*(v48 + 16) == 1)
      {
        v43 = v49;
        if (v47)
        {
        }

        else
        {
          v42 = sub_267C904B4(v48);

          if (v42 != 1)
          {

            v29 = v42;
          }
        }
      }

      else
      {
        v37 = v49;
      }
    }
  }

  else
  {
    sub_267BD6C8C(v51, &qword_280229910);
  }

  if (!v29)
  {

LABEL_29:
    v40 = 1;
    goto LABEL_30;
  }

  if (!v28)
  {

    goto LABEL_29;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v38 = v28;
  v39 = sub_267EF9818();

  v40 = v39 ^ 1;
LABEL_30:
  sub_267BD6C8C(&v52, &qword_280229CE0);
  sub_267BD6C8C(&v55, &qword_280229CE0);
  return v40 & 1;
}

uint64_t OUTLINED_FUNCTION_155_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 264);
  return *(v2 + 248);
}

void OUTLINED_FUNCTION_146_0()
{
  *(v0 + v1[9]) = v4;
  *(v0 + v1[10]) = v3;
  *(v0 + v1[11]) = v2;
}

uint64_t OUTLINED_FUNCTION_146_2()
{

  return sub_267EF9918();
}

uint64_t sub_267BD7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_267EF89E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = &type metadata for TTSUtil;
  v152 = &off_2878D0CB0;
  v150[0] = a4;
  v150[1] = a5;
  v143 = sub_267EF2D78();
  if (!v15)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v22 = sub_267EF8A08();
    __swift_project_value_buffer(v22, qword_280240FB0);
    v23 = sub_267EF89F8();
    v24 = sub_267EF95D8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_267B93000, v23, v24, "#ContentProcessor.detectContentLanguage locale does not have a language code returning nil and skipping check", v25, 2u);
      MEMORY[0x26D60A7B0](v25, -1, -1);
    }

    v26 = 0;
    goto LABEL_81;
  }

  v16 = v15;
  v136 = a3;
  v140 = v10;
  v141 = v11;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v17 = sub_267EF8A08();
  __swift_project_value_buffer(v17, qword_280240FB0);

  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v144 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_267BA33E8(v143, v16, &v144);
    *(v20 + 12) = 2048;
    *(v20 + 14) = sub_267EF9138();

    _os_log_impl(&dword_267B93000, v18, v19, "#ContentProcessor.detectContentLanguage -- siriLanguageCode is: %s, running language detection for content of length: %ld", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D60A7B0](v21, -1, -1);
    MEMORY[0x26D60A7B0](v20, -1, -1);
  }

  else
  {
  }

  v27 = objc_allocWithZone(MEMORY[0x277CD89E0]);
  v28 = [v27 initWithUnit_];
  sub_267BFE9D0(a1, a2, v28);
  v139 = v28;
  v29 = sub_267EF9588();
  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = *(v29 + 16);
    _os_log_impl(&dword_267B93000, v30, v31, "#ContentProcessor.detectContentLanguage tokens.count is %ld", v32, 0xCu);
    MEMORY[0x26D60A7B0](v32, -1, -1);
  }

  v137 = v29;

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v33 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89B8();
  v34 = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
  v35 = sub_267EF8FF8();
  [v34 processString:v35];

  v138 = v34;
  v36 = sub_267EF9738();
  sub_267EF9688();
  sub_267EF89B8();

  v37 = sub_267EF89F8();
  v38 = sub_267EF95D8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v144 = v40;
    *v39 = 136315138;
    type metadata accessor for NLLanguage(0);
    sub_267BF911C();
    v41 = sub_267EF8F08();
    v43 = sub_267BA33E8(v41, v42, &v144);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_267B93000, v37, v38, "#ContentProcessor generated hypotheses list: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x26D60A7B0](v40, -1, -1);
    MEMORY[0x26D60A7B0](v39, -1, -1);
  }

  v44 = 1 << *(v36 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v36 + 64);
  if (v46)
  {
    v47 = 0;
    v48 = __clz(__rbit64(v46));
    v26 = (v46 - 1) & v46;
    v49 = (v44 + 63) >> 6;
  }

  else
  {
    v50 = 0;
    v49 = (v44 + 63) >> 6;
    do
    {
      v47 = v46 + 1;
      if (v46 + 1 >= v49)
      {

        v100 = sub_267EF89F8();
        v101 = sub_267EF95E8();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&dword_267B93000, v100, v101, "#ContentProcessor did not produce topHypothesis, this shouldn't happen", v102, 2u);
          MEMORY[0x26D60A7B0](v102, -1, -1);
        }

LABEL_71:
        goto LABEL_72;
      }

      v51 = *(v36 + 72 + 8 * v46);
      v50 += 64;
      ++v46;
    }

    while (!v51);
    v26 = (v51 - 1) & v51;
    v48 = __clz(__rbit64(v51)) + v50;
  }

  v52 = *(*(v36 + 48) + 8 * v48);
  v53 = *(*(v36 + 56) + 8 * v48);

  v54 = v52;
  while (v26)
  {
LABEL_32:
    v56 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v57 = v56 | (v47 << 6);
    v58 = *(*(v36 + 56) + 8 * v57);
    if (v53 < v58)
    {
      v38 = *(*(v36 + 48) + 8 * v57);

      v54 = v38;
      v53 = v58;
    }
  }

  while (1)
  {
    v55 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_103;
    }

    if (v55 >= v49)
    {
      break;
    }

    v26 = *(v36 + 64 + 8 * v55);
    ++v47;
    if (v26)
    {
      v47 = v55;
      goto LABEL_32;
    }
  }

  v59 = v54;
  v60 = sub_267EF89F8();
  v61 = sub_267EF95D8();

  v62 = os_log_type_enabled(v60, v61);
  v142 = v59;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v144 = v64;
    *v63 = 136315138;
    v65 = sub_267EF9028();
    v67 = sub_267BA33E8(v65, v66, &v144);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_267B93000, v60, v61, "#ContentProcessor topHypothesis.key is %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x26D60A7B0](v64, -1, -1);
    MEMORY[0x26D60A7B0](v63, -1, -1);
  }

  v144 = sub_267EF9028();
  v145 = v68;
  v148 = 45;
  v149 = 0xE100000000000000;
  sub_267BB5034();
  v69 = sub_267EF98C8();

  if (v69[2])
  {
    v26 = v69[4];
    v70 = v69[5];
  }

  else
  {

    v26 = sub_267EF9028();
    v70 = v71;
  }

  v72 = sub_267EF89F8();
  v73 = sub_267EF95D8();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v144 = v75;
    *v74 = 136315394;
    *(v74 + 4) = sub_267BA33E8(v26, v70, &v144);
    *(v74 + 12) = 2048;
    *(v74 + 14) = v53;
    _os_log_impl(&dword_267B93000, v72, v73, "#ContentProcessor topLanguage prediction is: %s with topScore %f", v74, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x26D60A7B0](v75, -1, -1);
    MEMORY[0x26D60A7B0](v74, -1, -1);
  }

  v76 = v143;
  sub_267BF9174(v36);
  v78 = v77;
  v79 = sub_267EF89F8();
  v80 = sub_267EF95D8();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 134217984;
    *(v81 + 4) = v78;
    _os_log_impl(&dword_267B93000, v79, v80, "#ContentProcessor zh score %f", v81, 0xCu);
    MEMORY[0x26D60A7B0](v81, -1, -1);
  }

  v82 = __swift_project_boxed_opaque_existential_0(v150, v151);
  v83 = *v82;
  v84 = v82[1];
  v85 = sub_267BD27AC(v26, v70);
  v86 = v85;
  if (v85)
  {
  }

  v146 = &type metadata for Features;
  v147 = sub_267BAFCAC();
  LOBYTE(v144) = 14;
  v87 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v144);
  if (v86 && (v87 & 1) != 0 && v78 > 0.9)
  {
    v88 = v26 == v76 && v16 == v70;
    if (!v88 && (sub_267EF9EA8() & 1) == 0)
    {
      v89 = v76 == 6649209 && v16 == 0xE300000000000000;
      if (!v89 && (sub_267EF9EA8() & 1) == 0)
      {

        v38 = sub_267EF89F8();
        v110 = sub_267EF95D8();
        if (os_log_type_enabled(v38, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_267B93000, v38, v110, "#ContentProcessor combined chinese scores are over 90%% and we have a high quality asset for chinese", v111, 2u);
          MEMORY[0x26D60A7B0](v111, -1, -1);
          v112 = v142;
          v113 = v141;
          v114 = v140;
          v115 = v139;
          v116 = v138;
LABEL_104:

          (*(v113 + 8))(v14, v114);
          goto LABEL_81;
        }

LABEL_103:
        v112 = v38;
        v38 = v139;
        v115 = v138;
        v116 = v142;
        v113 = v141;
        v114 = v140;
        goto LABEL_104;
      }
    }
  }

  if (v53 <= 0.95 || (v26 == v76 ? (v90 = v16 == v70) : (v90 = 0), v90 || (sub_267EF9EA8() & 1) != 0))
  {

    v91 = sub_267EF89F8();
    v92 = sub_267EF95D8();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      v94 = "#ContentProcessor different language not detected with confidence, will treat content normally -- returning nil";
      goto LABEL_66;
    }

LABEL_77:
    v95 = v91;
    v91 = v139;
    v98 = v138;
    v99 = v142;
LABEL_78:
    v96 = v141;
    v97 = v140;
LABEL_79:

    (*(v96 + 8))(v14, v97);
    goto LABEL_80;
  }

  v103 = v137[2];

  if (!v86 && v103 <= 2)
  {

    v91 = sub_267EF89F8();
    v92 = sub_267EF95D8();
    if (!os_log_type_enabled(v91, v92))
    {
      goto LABEL_77;
    }

    v93 = swift_slowAlloc();
    *v93 = 0;
    v94 = "#ContentProcessor do not apply language treatment, less than 3 tokens, and there is no high quality asset downloaded for the expected language";
LABEL_66:
    _os_log_impl(&dword_267B93000, v91, v92, v94, v93, 2u);
    MEMORY[0x26D60A7B0](v93, -1, -1);
    v95 = v142;
LABEL_67:
    v96 = v141;
    v97 = v140;
    v98 = v139;
    v99 = v138;
    goto LABEL_79;
  }

  v144 = v76;
  v145 = v16;

  MEMORY[0x26D608E60](46, 0xE100000000000000);

  MEMORY[0x26D608E60](v26, v70);

  v105 = v144;
  v106 = v145;
  if (sub_267EF2D48() == 0x4E492D6E65 && v107 == 0xE500000000000000)
  {
  }

  else
  {
    v109 = sub_267EF9EA8();

    if ((v109 & 1) == 0)
    {
      goto LABEL_98;
    }
  }

  v117 = v26 == 26984 && v70 == 0xE200000000000000;
  if (v117 || (sub_267EF9EA8() & 1) != 0)
  {

    v91 = sub_267EF89F8();
    v118 = sub_267EF95D8();
    v119 = os_log_type_enabled(v91, v118);
    v99 = v142;
    if (!v119)
    {
      v95 = v91;
      v91 = v139;
      v98 = v138;
      goto LABEL_78;
    }

    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&dword_267B93000, v91, v118, "#ContentProcessor do not apply language treatment, en-IN siri locale supports hindi", v120, 2u);
    MEMORY[0x26D60A7B0](v120, -1, -1);
    v95 = v99;
    goto LABEL_67;
  }

LABEL_98:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  inited = swift_initStackObject();
  v137 = &v136;
  *(inited + 32) = 0x687A2E657579;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x64692E736DLL;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 16) = xmmword_267EFCC90;
  v144 = v105;
  v145 = v106;
  MEMORY[0x28223BE20](inited);
  *(&v136 - 2) = &v144;
  v122 = sub_267BC2B54();
  swift_setDeallocating();
  sub_267DB7080();

  if (v122)
  {

    v123 = sub_267EF89F8();
    v124 = sub_267EF95D8();

    v125 = os_log_type_enabled(v123, v124);
    v126 = v142;
    if (v125)
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v144 = v128;
      *v127 = 136315394;
      v129 = sub_267BA33E8(v143, v16, &v144);

      *(v127 + 4) = v129;
      *(v127 + 12) = 2080;
      v130 = sub_267BA33E8(v26, v70, &v144);

      *(v127 + 14) = v130;
      _os_log_impl(&dword_267B93000, v123, v124, "#ContentProcessor do not apply language treatment, mapping similar language %s to %s", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v128, -1, -1);
      MEMORY[0x26D60A7B0](v127, -1, -1);

      goto LABEL_71;
    }

LABEL_72:
    (*(v141 + 8))(v14, v140);
LABEL_80:
    v26 = 0;
  }

  else
  {

    v131 = sub_267EF89F8();
    v132 = sub_267EF95D8();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v144 = v134;
      *v133 = 136315138;
      *(v133 + 4) = sub_267BA33E8(v26, v70, &v144);
      _os_log_impl(&dword_267B93000, v131, v132, "#ContentProcessor  very confident result for language %s", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v134);
      MEMORY[0x26D60A7B0](v134, -1, -1);
      MEMORY[0x26D60A7B0](v133, -1, -1);

      v135 = &v153;
    }

    else
    {

      v135 = &v154;
    }

    (*(v141 + 8))(v14, v140);
  }

LABEL_81:
  __swift_destroy_boxed_opaque_existential_0(v150);
  return v26;
}

uint64_t sub_267BD8A98()
{
  OUTLINED_FUNCTION_120_4();
  if (*(v1 + 368))
  {
    v72 = 0;
    OUTLINED_FUNCTION_124_2();
    v5 = 1;
    v6 = *(v1 + 584);
  }

  else
  {
    v68 = *(v1 + 344);
    v70 = *(v1 + 336);
    v7 = *(v1 + 592);
    v8 = qword_280228818;

    if (v8 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v11))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v12, v13, "#SummarizableComponent running language detector");
      OUTLINED_FUNCTION_32_0();
    }

    v14 = *(v1 + 616);
    v15 = *(v1 + 560);
    v16 = *(v1 + 552);
    v17 = *(v1 + 512);
    v66 = *(v1 + 624);
    v67 = *(v1 + 504);
    v3 = *(v1 + 488);
    v18 = *(v1 + 432);

    v19 = v18[5];
    v20 = v18[6];
    __swift_project_boxed_opaque_existential_0(v18 + 2, v19);
    (*(v20 + 8))(v19, v20);
    v21 = *(v1 + 128);
    __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
    sub_267EF3B68();
    v4 = sub_267EF72E8();
    v72 = sub_267BD7730(v16, v15, v17, v4, &off_2878D0918);
    v5 = v22;
    v14(v17, v3);
    __swift_destroy_boxed_opaque_existential_0((v1 + 96));
    v23 = v18[5];
    v24 = v18[6];
    __swift_project_boxed_opaque_existential_0(v18 + 2, v23);
    (*(v24 + 8))(v23, v24);
    v2 = *(v1 + 168);
    __swift_project_boxed_opaque_existential_0((v1 + 136), *(v1 + 160));
    sub_267EF3B68();
    __swift_destroy_boxed_opaque_existential_0((v1 + 136));
    if (v5)
    {
      *(v1 + 280) = &type metadata for Features;
      *(v1 + 288) = sub_267BAFCAC();
      *(v1 + 256) = 14;

      v25 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0((v1 + 256));
      if (v25)
      {
        v3 = v5;
        v26 = *(v1 + 624);
        v27 = *(v1 + 616);
        v28 = *(v1 + 504);
        v29 = *(v1 + 512);
        v30 = *(v1 + 488);
        v31 = *(v1 + 496);
        sub_267EF2D38();
        v32 = OUTLINED_FUNCTION_26_0();
        v27(v32);
        v5 = v3;
        v33 = *(v31 + 32);
        v2 = v31 + 32;
        v33(v28, v29, v30);
      }

      else
      {
      }
    }

    v34 = *(v1 + 504);
    v0 = sub_267BD90E8(v70, v68);
    sub_267D5D300(v1 + 336);
    if (v0)
    {
      sub_267D5D300(v1 + 336);
      v35 = sub_267EF89F8();
      v36 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v36))
      {
        v37 = OUTLINED_FUNCTION_32();
        *v37 = 0;
        _os_log_impl(&dword_267B93000, v35, v36, "#SummarizableComponent Found unspeakable content", v37, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF96A8();
      if (qword_280228820 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v39 = *(v1 + 472);
      v38 = *(v1 + 480);
      v40 = *(v1 + 464);
      sub_267EF89D8();
      OUTLINED_FUNCTION_11_27();
      v0 = 2;
      sub_267EF89A8();
      (*(v39 + 8))(v38, v40);
      v6 = 0;
      v2 = 0;
      v4 = 0;
      v3 = 0;
    }

    else if (v5 < 2)
    {
      OUTLINED_FUNCTION_124_2();
      v6 = *(v1 + 584);
    }

    else
    {

      v41 = sub_267EF89F8();
      v42 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v42))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v43, v44, "#SummarizableComponent content was detected to be in a different language");
        OUTLINED_FUNCTION_32_0();
      }

      v45 = *(v1 + 448);

      sub_267D5D39C(v45, v1 + 216);
      if (*(v1 + 240))
      {
        sub_267B9A5E8((v1 + 216), v1 + 176);
      }

      else
      {
        *(v1 + 200) = &type metadata for TTSUtil;
        *(v1 + 208) = &off_2878D0CB0;
        *(v1 + 176) = v4;
        *(v1 + 184) = &off_2878D0918;
      }

      v46 = sub_267EF89F8();
      v47 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_5_2(v47))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v48, v49, "#TTSUtil userNotificationCenter or eventStore nil");
        OUTLINED_FUNCTION_32_0();
      }

      __swift_destroy_boxed_opaque_existential_0((v1 + 176));
      sub_267D5D300(v1 + 336);
      v4 = 0;
      v0 = 1;
      v3 = 0xE000000000000000;
      v6 = v72;
      v2 = v5;
    }

    v50 = *(v1 + 624);
    (*(v1 + 616))(*(v1 + 504), *(v1 + 488));
  }

  v51 = *(v1 + 432);
  *(v1 + 296) = v6;
  *(v1 + 304) = v2;
  *(v1 + 312) = v4;
  *(v1 + 320) = v3;
  *(v1 + 328) = v0;
  v52 = *(v51 + 416);
  v71 = v5;
  if (v52 && (*(v51 + 426) & 1) == 0)
  {
    v53 = v0;
    v54 = *(v52 + 168);

    sub_267C38238();
    v0 = v53;

    v51 = *(v1 + 432);
  }

  v69 = v0;
  v55 = *(v1 + 544);
  v56 = *(v1 + 536);
  v57 = *(v1 + 528);
  swift_beginAccess();
  sub_267BB7AA0(v6, v2, v4, v3, v0);
  v58 = *(v51 + 248);
  swift_isUniquelyReferenced_nonNull_native();
  v73 = *(v51 + 248);
  sub_267E86ED4();
  *(v51 + 248) = v73;
  swift_endAccess();

  sub_267D5D354(v72, v71);
  v59 = *(v1 + 520);
  v60 = *(v1 + 504);
  v61 = *(v1 + 512);
  v62 = *(v1 + 480);
  v63 = *(v1 + 424);

  *v63 = v6;
  *(v63 + 8) = v2;
  *(v63 + 16) = v4;
  *(v63 + 24) = v3;
  *(v63 + 32) = v69;
  OUTLINED_FUNCTION_1();

  return v64();
}

uint64_t sub_267BD90E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF2728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267BD9420();
  sub_267BD9540();
  v10 = v9;
  if (v9[2] == 1)
  {
    v11 = v9[4];
    v12 = v9[5];
    v13 = v12 - v11;
    if (__OFSUB__(v12, v11))
    {
      __break(1u);
      goto LABEL_17;
    }

    v14 = sub_267EF9138();

    if (v13 == v14)
    {
      if (qword_280228818 == -1)
      {
LABEL_5:
        v15 = sub_267EF8A08();
        __swift_project_value_buffer(v15, qword_280240FB0);
        OUTLINED_FUNCTION_43();

        v16 = sub_267EF89F8();
        sub_267EF95D8();

        if (OUTLINED_FUNCTION_99())
        {
          v17 = OUTLINED_FUNCTION_48();
          v18 = OUTLINED_FUNCTION_52();
          v41[0] = v18;
          *v17 = 136315138;
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE20, &qword_267F08A48);
          v20 = MEMORY[0x26D608FD0](v10, v19);
          v22 = v21;

          v23 = sub_267BA33E8(v20, v22, v41);

          *(v17 + 4) = v23;
          OUTLINED_FUNCTION_20();
          _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

        else
        {
        }

        v30 = 1;
        return v30 & 1;
      }

LABEL_17:
      OUTLINED_FUNCTION_0();
      goto LABEL_5;
    }
  }

  else
  {
  }

  v41[0] = a1;
  v41[1] = a2;
  sub_267DE9348(v8);
  sub_267BB5034();
  OUTLINED_FUNCTION_54_11();
  sub_267EF9908();
  v30 = v29;
  (*(v5 + 8))(v8, v4);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v31 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    v34[1] = v30 & 1;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v35, v36, v37, v38, v39, 8u);
    OUTLINED_FUNCTION_32_0();
  }

  return v30 & 1;
}

uint64_t sub_267BD9420()
{
  v0 = sub_267EF2728();
  v1 = OUTLINED_FUNCTION_58(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  sub_267EF26D8();
  sub_267BB5034();
  sub_267EF98B8();
  (*(v3 + 8))(v8, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  v9 = OUTLINED_FUNCTION_11_28();

  return v9;
}

void sub_267BD9540()
{
  sub_267BA9F38(0, &qword_28022AAA0, 0x277D79988);
  sub_267EF2D48();
  v0 = sub_267BD5AF0();
  v1 = sub_267EF8FF8();
  v2 = [v0 unspeakableRangeOfText_];

  sub_267BA9F38(0, &qword_28022AAA8, 0x277CCAE60);
  v3 = sub_267EF92F8();

  v4 = sub_267BAF0DC(v3);
  v5 = 0;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D609870](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v6 rangeValue];
    v11 = v10;
    v12 = sub_267EF2618();

    ++v5;
    if (v9 != v12)
    {
      v13 = &v9[v11];
      if (__OFADD__(v9, v11))
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v19 + 16);
        sub_267C70730();
        v19 = v17;
      }

      v14 = *(v19 + 16);
      if (v14 >= *(v19 + 24) >> 1)
      {
        sub_267C70730();
        v19 = v18;
      }

      *(v19 + 16) = v14 + 1;
      v15 = v19 + 16 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v13;
      v5 = v8;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_267BD974C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22(AssociatedTypeWitness);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v8 = *(a1 + 32);
  v9 = OUTLINED_FUNCTION_46_2();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if (swift_dynamicCast())
  {
    return sub_267B9A5E8(v20, a2);
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_267BD6C8C(v20, &qword_280229910);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v12 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95E8();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_48();
    *&v20[0] = OUTLINED_FUNCTION_64_2();
    *a1 = 136315138;
    *(a1 + 4) = sub_267BA33E8(0xD00000000000006DLL, 0x8000000267F14400, v20);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_26();
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267BD997C()
{
  OUTLINED_FUNCTION_35_23();
  OUTLINED_FUNCTION_83();
  v2 = v1[49];

  v3 = OUTLINED_FUNCTION_19_35();
  v6 = sub_267BD9AD4(v3, v4, v5);
  v8 = v7;
  v10 = v9;

  OUTLINED_FUNCTION_83();
  v11 = v1[48];

  v12 = sub_267BD9C8C(v8, v10, v11);

  if (v6 < 1)
  {
    *(v0 + 32) = 0;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v14 = v1[7];
    v15 = v14 & 0xC000000000000001;
    sub_267BBD0EC(v12, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v17 = OUTLINED_FUNCTION_33();
      v15 = MEMORY[0x26D609870](v17);
    }

    else
    {
      OUTLINED_FUNCTION_25_31(v14 + 8 * v12);
    }

    OUTLINED_FUNCTION_83();
    v16 = *(v15 + 24);

    if (v6 > *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_267B9AFEC(v16 + 40 * v6 - 8, v0);
    }
  }

  return result;
}

uint64_t sub_267BD9AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_267BA9948(), (v5 & 1) != 0))
  {
    v6 = (*(a3 + 56) + 24 * v4);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];

    return v7;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v11 = sub_267EF8A08();
    __swift_project_value_buffer(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95E8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_267BA33E8(0xD000000000000035, 0x8000000267F1B8E0, &v16);
      _os_log_impl(&dword_267B93000, v12, v13, "Fatal error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x26D60A7B0](v15, -1, -1);
      MEMORY[0x26D60A7B0](v14, -1, -1);
    }

    result = sub_267EF9C98();
    __break(1u);
  }

  return result;
}

uint64_t sub_267BD9C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_267BA9948();
    if (v5)
    {
      return *(*(a3 + 56) + 8 * v4);
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_267BA33E8(0xD000000000000035, 0x8000000267F1B8E0, &v12);
    _os_log_impl(&dword_267B93000, v8, v9, "Fatal error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D60A7B0](v11, -1, -1);
    MEMORY[0x26D60A7B0](v10, -1, -1);
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267BD9E24()
{
  OUTLINED_FUNCTION_35_23();
  OUTLINED_FUNCTION_83();
  v2 = v1[49];

  v3 = OUTLINED_FUNCTION_19_35();
  v6 = sub_267BD9AD4(v3, v4, v5);
  v8 = v7;
  v10 = v9;

  OUTLINED_FUNCTION_83();
  v11 = v1[48];

  v12 = sub_267BD9C8C(v8, v10, v11);

  v13 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_83();
    v14 = v1[7];
    sub_267BBD0EC(v12, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) == 0)
    {
      v15 = *(v14 + 8 * v12 + 32);

      goto LABEL_4;
    }
  }

  v22 = OUTLINED_FUNCTION_37_1();
  v15 = MEMORY[0x26D609870](v22);

LABEL_4:
  OUTLINED_FUNCTION_83();
  v16 = *(v15 + 24);

  v17 = *(v16 + 16);

  if (v13 >= v17)
  {
    *(v0 + 32) = 0;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  else
  {
    v19 = v1[7];
    v20 = v19 & 0xC000000000000001;
    sub_267BBD0EC(v12, (v19 & 0xC000000000000001) == 0, v19);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = MEMORY[0x26D609870](v12, v19);
    }

    else
    {
      OUTLINED_FUNCTION_25_31(v19 + 8 * v12);
    }

    OUTLINED_FUNCTION_83();
    v21 = *(v20 + 24);

    if (v13 < 0)
    {
      __break(1u);
    }

    else if (v13 < *(v21 + 16))
    {
      sub_267B9AFEC(v21 + 40 * v13 + 32, v0);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_267BDA00C()
{
  OUTLINED_FUNCTION_12();
  v1[9] = v2;
  v1[10] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229670, qword_267EFDED0);
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v6 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  v1[16] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267BDA120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267BDA184(void *a1, id a2, char a3)
{
  if ((a3 & 1) != 0 && [a2 code] == 3)
  {
    if (!sub_267C86CD0(a2))
    {
      goto LABEL_6;
    }

    v6 = sub_267C86CD0(a2);
    if (!v6)
    {
      __break(1u);
      return;
    }

    sub_267BAF0DC(v6);
    OUTLINED_FUNCTION_45_3();
    if (!v3)
    {
LABEL_6:
      if (sub_267DA7A98(a1))
      {
        sub_267BC1E68();
        [a1 copy];
        sub_267EF99B8();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_0_45();
        sub_267DE9088();
      }
    }
  }
}

void sub_267BDA27C()
{
  v1 = *(v0 + 353);
  v2 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v26 = *(v0 + 304);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 176);
  sub_267EF7C18();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_19_29();
  sub_267EF8348();
  if (v26)
  {
    OUTLINED_FUNCTION_39_17();
    v10 = *(v0 + 192);
    v24 = *(v0 + 200);
    OUTLINED_FUNCTION_56_15();
    (*(v11 + 8))(v10);
  }

  else
  {
    OUTLINED_FUNCTION_55_14();
    v21 = *(v0 + 232);
    v22 = *(v0 + 224);
    v23 = *(v0 + 216);
    v25 = *(v0 + 208);
    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    OUTLINED_FUNCTION_56_15();
    v14 = *(v0 + 56);
    (*(v15 + 8))(v12);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v1);
    sub_267BD3DDC(v13, v14 + *(v4 + 24));
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267BDA4A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_267BDA4FC(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_267BDA534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A100, &qword_267F00480);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_18_11();

  return sub_267BDA5EC(v3);
}

uint64_t block_destroy_helper_9(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

void sub_267BDA6DC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedPreferences];
  v8[4] = sub_267BDA4FC;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_267BDA4A0;
  v8[3] = &block_descriptor_17;
  v7 = _Block_copy(v8);

  [v6 getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_267BDA7EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267BDA880()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 32);
  v7 = *v0;
  OUTLINED_FUNCTION_5();
  *v8 = v7;

  v9 = *(v2 + 48);
  v10 = *(v7 + 8);

  return v10(v9);
}

uint64_t sub_267BDA980()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 344);
  *v2 = *v0;
  *(v1 + 353) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267BDAA94(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229698, &unk_267EFDF80) + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229670, qword_267EFDED0);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v9[v10] = a3;
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state;
  swift_beginAccess();
  sub_267BDABD0(v9, a2 + v12);
  return swift_endAccess();
}

uint64_t sub_267BDABD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BDAC34()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267BDA00C();
}

uint64_t sub_267BDACF4(char a1)
{
  result = 0x646E657070417369;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_11_0();
      result = v3 + 9;
      break;
    case 2:
      OUTLINED_FUNCTION_11_0();
      result = v6 | 8;
      break;
    case 3:
      OUTLINED_FUNCTION_11_0();
      result = v7 | 0xC;
      break;
    case 4:
      OUTLINED_FUNCTION_11_0();
      result = v4 + 5;
      break;
    case 5:
      OUTLINED_FUNCTION_11_0();
      result = v8 + 16;
      break;
    case 6:
      result = OUTLINED_FUNCTION_3_29();
      break;
    case 7:
      result = OUTLINED_FUNCTION_4_30();
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      OUTLINED_FUNCTION_11_0();
      result = v5 + 1;
      break;
    case 10:
      OUTLINED_FUNCTION_11_0();
      result = v9 + 3;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267BDAEA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void *OUTLINED_FUNCTION_139_1()
{

  return __swift_project_boxed_opaque_existential_0((v1 - 128), v0);
}

uint64_t sub_267BDAF74()
{
  sub_267EF7C18();
  if (!v0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v16 = sub_267EF8A08();
    __swift_project_value_buffer(v16, qword_280240FB0);
    v6 = sub_267EF89F8();
    v17 = sub_267EF95D8();
    if (os_log_type_enabled(v6, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_267B93000, v6, v17, "#AnnounceSettingsUtils#shouldShowAnnounceButton No app Bundle Identifier found, returning false", v18, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_29;
  }

  v1 = objc_opt_self();
  v2 = [v1 currentNotificationSettingsCenter];
  v3 = sub_267EF8FF8();
  v4 = [v2 notificationSourceWithIdentifier_];

  v5 = [v4 sourceSettings];
  v6 = [v5 notificationSettings];

  if ([v6 carPlaySetting]!= 2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);

    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();

    if (os_log_type_enabled(v20, v21))
    {
      swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_5_4();
      v23 = OUTLINED_FUNCTION_1_68(4.8149e-34, v22);

      *(v4 + 4) = v23;
      v26 = "#AnnounceSettingsUtils#shouldShowAnnounceButton CarPlay banners disabled for bundle=%s, not showing Announce button";
LABEL_17:
      OUTLINED_FUNCTION_22_1(&dword_267B93000, v24, v25, v26);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_32_0();
LABEL_22:
      OUTLINED_FUNCTION_32_0();
LABEL_28:

LABEL_29:
      return 0;
    }

LABEL_27:

    goto LABEL_28;
  }

  v7 = [v1 currentNotificationSettingsCenter];
  v8 = [v7 notificationSystemSettings];

  v9 = [v8 announcementCarPlaySetting];
  if ((v9 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = sub_267EF8A08();
    __swift_project_value_buffer(v27, qword_280240FB0);
    v20 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (!os_log_type_enabled(v20, v28))
    {
      goto LABEL_28;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_267B93000, v20, v28, "#AnnounceSettingsUtils#shouldShowAnnounceButton Announce is disabled, not showing Announce button", v29, 2u);
    goto LABEL_22;
  }

  if ([v6 announcementSetting]!= 2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v30 = sub_267EF8A08();
    __swift_project_value_buffer(v30, qword_280240FB0);

    v20 = sub_267EF89F8();
    v31 = sub_267EF95D8();

    if (os_log_type_enabled(v20, v31))
    {
      swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_5_4();
      v32 = OUTLINED_FUNCTION_1_68(4.8149e-34, v22);

      *(v4 + 4) = v32;
      v26 = "#AnnounceSettingsUtils#shouldShowAnnounceButton Announce is disabled for bundle=%s, not showing Announce button";
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);

  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();

  if (os_log_type_enabled(v11, v12))
  {
    swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_5_4();
    v13 = OUTLINED_FUNCTION_1_68(4.8149e-34, v34);

    *(v4 + 4) = v13;
    OUTLINED_FUNCTION_22_1(&dword_267B93000, v14, v15, "#AnnounceSettingsUtils#shouldShowAnnounceButton all conditions met for bundle=%s, showing Announce button");
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  return 1;
}

id sub_267BDB494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_267EF2CC8();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) != 1)
  {
    v11 = sub_267EF2C48();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v10) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_267EF2C48();
    (*(*(v10 - 8) + 8))(a2, v10);
  }

  v13 = sub_267EF2E98();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v13) != 1)
  {
    v14 = sub_267EF2E58();
    (*(*(v13 - 8) + 8))(a3, v13);
  }

  v15 = sub_267EF2EF8();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v15) != 1)
  {
    v16 = sub_267EF2EC8();
    (*(*(v15 - 8) + 8))(a4, v15);
  }

  v17 = [v5 initWithStartDate:v11 endDate:v12 onCalendar:v14 inTimeZone:v16];

  return v17;
}

id sub_267BDB698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F58, &unk_267EFFCF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C228, &qword_267F09BA8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  v22 = sub_267EF2CC8();
  v23 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v22) != 1)
  {
    sub_267BF9918(a3, v21);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v22);
    v24 = sub_267EF2E98();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v24);
    v25 = sub_267EF2EF8();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v25);
    v26 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v23 = sub_267BDB494(v21, v19, v14, v10);
  }

  if (!a4)
  {
    v27 = 0;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_7:
    v28 = 0;
    goto LABEL_8;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v27 = sub_267EF92D8();

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v28 = sub_267EF92D8();

LABEL_8:
  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = [v29 initWithRecipients:0 senders:v27 searchTerms:0 attributes:v33 dateTimeRange:v23 identifiers:0 notificationIdentifiers:0 speakableGroupNames:0 conversationIdentifiers:v28];

  sub_267B9FF34(a3, &qword_28022BD90, &unk_267EFCDD0);
  return v30;
}

uint64_t sub_267BDB970(void *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v39 - v14;
  OUTLINED_FUNCTION_94();
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v17 = a1[14];
  if (!v17)
  {
    v28 = qword_280228818;

    if (v28 == -1)
    {
LABEL_18:
      v29 = sub_267EF8A08();
      __swift_project_value_buffer(v29, qword_280240FB0);
      v30 = sub_267EF89F8();
      v31 = sub_267EF95D8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_267B93000, v30, v31, "No app conversationID for the Conversation, not searching for new messages to append", v32, 2u);
        MEMORY[0x26D60A7B0](v32, -1, -1);
      }

      v33 = [objc_allocWithZone(MEMORY[0x277CD4050]) initWithCode:3 userActivity:0];
      sub_267C1C27C(v33);
      a4(0);
      goto LABEL_26;
    }

LABEL_29:
    swift_once();
    goto LABEL_18;
  }

  v18 = a1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_267EFC020;
  *(v19 + 32) = v18;
  *(v19 + 40) = v17;

  sub_267DE0D58(v15);
  v20 = sub_267EF2CC8();
  v46 = v15;
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v20);
  v21 = sub_267E2D6E4(a2);
  if (v21)
  {
    v22 = v21;
    v39 = v19;
    v40 = a1;
    v41 = a3;
    v42 = v16;
    v43 = a5;
    v44 = a6;
    v45 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
    v23 = sub_267BAF0DC(v21);
    v24 = 0;
    a4 = (v22 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v23 == v24)
      {

        a3 = v41;
        v16 = v42;
        v19 = v39;
        a1 = v40;
        v27 = v45;
        goto LABEL_22;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x26D609870](v24, v22);
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      [v25 copy];
      sub_267EF99B8();
      swift_unknownObjectRelease();

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      if ((swift_dynamicCast() & 1) != 0 && v47)
      {
        MEMORY[0x26D608F90]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v45 = v48;
        ++v24;
      }

      else
      {
        ++v24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v27 = 0;
LABEL_22:
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  v34 = sub_267BDB698(2, v19, v46, v27);
  v35 = a1[16];
  v33 = v34;
  sub_267EF7C18();
  if (v36)
  {
    v37 = sub_267EF8FF8();
  }

  else
  {
    v37 = 0;
  }

  [v33 _setLaunchId_];

  sub_267BC42D8(a3, v33, sub_267C86E14, v16);
LABEL_26:
}

uint64_t sub_267BDBDEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_267BDBE28(void (*a1)(void), uint64_t a2)
{
  v6 = *(v2 + 40);
  v5 = *(v2 + 48);
  v7 = v5[8];
  v8 = v5[5];
  v9 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v8);
  v10 = *(v9 + 16);
  v11 = v7;
  v10(v13, v8, v9);

  sub_267BDB970(v6, v11, v13, a1, a2, v2);

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_267BDBEF4()
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

uint64_t sub_267BDC014()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_94_4();
  sub_267BD6DA0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267BDC09C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[155];
  *v4 = *v2;
  v3[156] = v0;

  OUTLINED_FUNCTION_76_2();
  v7 = *(v6 + 1232);
  if (!v0)
  {
    v3[157] = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267BDC3FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 352);
  *v3 = *v1;
  *(v2 + 360) = v6;
  *(v2 + 368) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BDC500()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[38];
  sub_267EF3CA8();
  OUTLINED_FUNCTION_11_18();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v4 = *(v2 + 24);
  v48 = *(v4 + 16);
  if (!v48)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_38:
    v0[47] = v7;
    v33 = v0[43];
    v34 = v0[35];
    v35 = v0[36];
    sub_267EF7C18();
    v0[48] = v36;
    v37 = v34[6];
    __swift_project_boxed_opaque_existential_0(v34 + 2, v34[5]);
    v38 = *(v37 + 8);
    v39 = OUTLINED_FUNCTION_68_0();
    v40(v39);
    v41 = v0[16];
    __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
    OUTLINED_FUNCTION_68_0();
    sub_267EF3B98();
    v0[20] = &type metadata for MessagesFeatureFlagsImpl;
    v0[21] = off_2878D1228;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[49] = v42;
    *v42 = v43;
    v42[1] = sub_267BF8490;
    v44 = v0[37];

    return sub_267BF57AC();
  }

  v5 = v0 + 27;
  v47 = v4 + 32;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v45 = v0;
  while (1)
  {
    sub_267B9AFEC(v47 + 40 * v6, (v0 + 7));
    v8 = v0[10];
    v9 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v8);
    v10 = (*(v9 + 16))(v8, v9);

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v49 = v6;
    v11 = v10 >> 62 ? sub_267EF9A68() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v7 >> 62;
    result = v7 >> 62 ? sub_267EF9A68() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = result + v11;
    if (__OFADD__(result, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v51 = v11;
    if (result)
    {
      if (v12)
      {
        goto LABEL_15;
      }

      v15 = v7 & 0xFFFFFFFFFFFFFF8;
      v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v16 >= v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v12)
      {
LABEL_15:
        sub_267EF9A68();
        goto LABEL_16;
      }

      v15 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = *(v15 + 16);
LABEL_16:
    result = sub_267EF9BB8();
    v7 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_17:
    v18 = v16 - *(v15 + 16);
    if (v10 >> 62)
    {
      v20 = sub_267EF9A68();
      if (v20)
      {
        v21 = v20;
        result = sub_267EF9A68();
        if (v18 < result)
        {
          goto LABEL_44;
        }

        if (v21 < 1)
        {
          goto LABEL_46;
        }

        v46 = result;
        sub_267CF6EF8();
        do
        {
          v22 = OUTLINED_FUNCTION_115_6();
          __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
          v24 = OUTLINED_FUNCTION_75_13();
          v26 = sub_267C73FD8(v24, v25, v10);
          v28 = *v27;
          v26(v5, 0);
          OUTLINED_FUNCTION_104_9();
        }

        while (!v29);
        v0 = v45;
        v19 = v46;
        goto LABEL_28;
      }
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        if (v18 < v19)
        {
          goto LABEL_45;
        }

        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        swift_arrayInitWithCopy();
LABEL_28:

        if (v19 < v51)
        {
          goto LABEL_42;
        }

        if (v19 > 0)
        {
          v30 = *(v15 + 16);
          v31 = __OFADD__(v30, v19);
          v32 = v30 + v19;
          if (v31)
          {
            goto LABEL_43;
          }

          *(v15 + 16) = v32;
        }

        goto LABEL_33;
      }
    }

    if (v11 > 0)
    {
      goto LABEL_42;
    }

LABEL_33:
    v6 = v49 + 1;
    if (v49 + 1 == v48)
    {

      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_267BDC968(void *a1)
{
  v1 = [a1 conversationIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

void sub_267BDC9CC()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SearchForMessagesFlow.State(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v43 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = sub_267EF4BA8();
  v14 = OUTLINED_FUNCTION_58(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  (*(v16 + 16))(v21, v3, v13);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_48();
    v41 = v12;
    v26 = v25;
    v27 = swift_slowAlloc();
    v42 = v4;
    v40 = v27;
    v45 = v27;
    *v26 = 136315138;
    sub_267BC1DB4(&qword_28022AF50, MEMORY[0x277D5C118]);
    v28 = sub_267EF9E58();
    v29 = v1;
    v31 = v30;
    (*(v16 + 8))(v21, v13);
    sub_267BA33E8(v28, v31, &v45);
    OUTLINED_FUNCTION_25_0();
    v1 = v29;

    *(v26 + 4) = v28;
    _os_log_impl(&dword_267B93000, v23, v24, "#SearchForMessagesFlow received input %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v4 = v42;
    OUTLINED_FUNCTION_32_0();
    v12 = v41;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v16 + 8))(v21, v13);
  }

  v32 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  OUTLINED_FUNCTION_83();
  sub_267BC0ABC(v1 + v32, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_267B9F658(v12);
  if (EnumCaseMultiPayload)
  {

    v34 = sub_267EF89F8();
    v35 = sub_267EF95D8();

    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_48();
      v36 = OUTLINED_FUNCTION_64_2();
      v44 = v36;
      *v4 = 136315138;
      sub_267BC0ABC(v1 + v32, v43);
      v37 = sub_267EF9098();
      v39 = sub_267BA33E8(v37, v38, &v44);

      *(v4 + 4) = v39;
      _os_log_impl(&dword_267B93000, v34, v35, "#SearchForMessagesFlow input received in state %s, ignoring", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_26();
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t type metadata accessor for SearchForMessagesUnsupportedValueFlowStrategy()
{
  result = qword_28022B468;
  if (!qword_28022B468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267BDCDC8()
{
  OUTLINED_FUNCTION_48_0();
  v64 = v0;
  v2 = v1;
  v67 = v3;
  v5 = v4;
  v70 = v6;
  v71 = v7;
  v9 = v8;
  v11 = v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  OUTLINED_FUNCTION_58(v65);
  v69 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v15);
  v68 = &v62 - v16;
  v17 = sub_267EF7B88();
  v18 = OUTLINED_FUNCTION_18(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v22 = OUTLINED_FUNCTION_18(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_60();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v62 - v29;
  v95 = sub_267EF8938();
  v96 = MEMORY[0x277D5FDD8];
  v63 = v95;
  v94[0] = v5;
  v93[3] = &type metadata for CATProvider;
  v93[4] = &off_2878CE7A0;
  v92[3] = &type metadata for MessagesFeatureFlagsImpl;
  v92[4] = &off_2878D1228;
  v31 = sub_267EF68A8();
  v91[3] = v31;
  v91[4] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v91);
  v33 = *(*(v31 - 8) + 32);
  v33(boxed_opaque_existential_0, v67, v31);
  v67 = v11;
  sub_267B9AFEC(v11, v90);
  sub_267B9AFEC(v93, v89);
  sub_267B9AFEC(v92, v88);
  v66 = v9;
  sub_267BB170C(v9, v30, &qword_28022A660, &unk_267F013A0);
  sub_267B9AFEC(v94, v87);
  sub_267B9AFEC(v91, v86);
  __swift_mutable_project_boxed_opaque_existential_1(v89, v89[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v88, v88[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v86, v86[3]);
  OUTLINED_FUNCTION_23();
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_0_0();
  v38 = OUTLINED_FUNCTION_26_30(v37);
  v39(v38);
  v84 = &type metadata for CATProvider;
  v85 = &off_2878CE7A0;
  v81 = &type metadata for MessagesFeatureFlagsImpl;
  v82 = &off_2878D1228;
  v78 = v31;
  v79 = &off_2878D54D8;
  v40 = __swift_allocate_boxed_opaque_existential_0(&v77);
  v33(v40, v11, v31);
  v41 = v65;
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  *(v2 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v83, v84);
  *(v2 + 64) = sub_267BB4A3C();
  sub_267BB170C(v30, v27, &qword_28022A660, &unk_267F013A0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v41) == 1)
  {
    v76[3] = v31;
    v76[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v76);
    sub_267EF6898();
    v42 = v63;
    v43 = sub_267EF8928();
    v75[3] = v42;
    v75[4] = MEMORY[0x277D5FDD8];
    v75[0] = v43;
    sub_267B9AFEC(v90, v74);
    sub_267B9AFEC(v76, v73);
    sub_267B9AFEC(v75, v72);
    v44 = swift_allocObject();
    sub_267B9A5E8(v74, v44 + 16);
    sub_267B9A5E8(v73, v44 + 56);
    sub_267B9A5E8(v72, v44 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v45 = v68;
    OUTLINED_FUNCTION_99_0();
    sub_267EF7058();
    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v46, v47, v48);
    __swift_destroy_boxed_opaque_existential_0(v67);
    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v49, v50, v51);
    __swift_destroy_boxed_opaque_existential_0(v94);
    OUTLINED_FUNCTION_12_39();
    __swift_destroy_boxed_opaque_existential_0(v75);
    __swift_destroy_boxed_opaque_existential_0(v76);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v41);
    v53 = v69;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v27, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v54, v55, v56);
    __swift_destroy_boxed_opaque_existential_0(v67);
    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v57, v58, v59);
    __swift_destroy_boxed_opaque_existential_0(v94);
    OUTLINED_FUNCTION_12_39();
    v45 = v68;
    v53 = v69;
    (*(v69 + 32))(v68, v27, v41);
  }

  (*(v53 + 32))(v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v45, v41);
  v60 = (v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  v61 = v71;
  *v60 = v70;
  v60[1] = v61;
  sub_267B9A5E8(&v80, v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(v87, v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v77, v2 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v90, v2 + 16);
  __swift_destroy_boxed_opaque_existential_0(v83);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v88);
  __swift_destroy_boxed_opaque_existential_0(v89);
  OUTLINED_FUNCTION_47();
}

uint64_t type metadata accessor for SearchForMessageNeedsConfirmationFlowStrategy()
{
  result = qword_28022C948;
  if (!qword_28022C948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BDD444(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = sub_267EF2CC8();
  OUTLINED_FUNCTION_23();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v22 = (v21 - v20);
  sub_267EF2CB8();
  v23 = v22;
  sub_267EF2C88();
  v25 = v24;
  v61 = *(v16 + 8);
  v61(v22, v14);
  if (qword_280228818 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v26 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);

    v65 = v23;
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v28))
    {
      v29 = OUTLINED_FUNCTION_48();
      *v29 = 134217984;
      *(v29 + 4) = sub_267BAF0DC(a1);

      _os_log_impl(&dword_267B93000, v27, v28, "#ConversationStateBuilder Beginning to create Conversation State for %ld messages", v29, 0xCu);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    if (!sub_267BAF0DC(a1))
    {
      v36 = sub_267EF89F8();
      v37 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_36(v37))
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    v30 = sub_267CF5230(a1, a4, a5);
    if (!sub_267BAF0DC(v30))
    {

      v36 = sub_267EF89F8();
      v38 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_36(v38))
      {
LABEL_12:
        v39 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v39);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v40, v41, v42, v43, v44, 2u);
        OUTLINED_FUNCTION_26();
      }

LABEL_13:

      return MEMORY[0x277D84F90];
    }

    v31 = sub_267BDD9A0(v30);

    v32 = sub_267BDE368(v31, a8, a2, a3, a11 & 1);

    v23 = v65;
    v33 = sub_267EF89F8();
    v34 = sub_267EF95D8();
    v60 = v14;
    v59 = v22;
    if (OUTLINED_FUNCTION_36(v34))
    {
      v35 = OUTLINED_FUNCTION_48();
      *v35 = 134217984;
      *(v35 + 4) = *(v32 + 16);

      _os_log_impl(&dword_267B93000, v33, v65, "#ConversationStateBuilder Created components grouped into %ld conversations", v35, 0xCu);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    a1 = MEMORY[0x277D84F90];
    v68 = MEMORY[0x277D84F90];
    v22 = *(v32 + 16);
    v14 = a7;
    if (!v22)
    {
      break;
    }

    a8 = 0;
    a4 = a10;
    while (a8 < *(v32 + 16))
    {
      v45 = *(v32 + 32 + 8 * a8);
      if (*(v45 + 16))
      {
        type metadata accessor for Conversation();
        swift_allocObject();

        sub_267BE591C(v45, a2, a6, v14, a9, a10);
        v23 = &v68;
        MEMORY[0x26D608F90]();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        a1 = v68;
      }

      else
      {
        v23 = sub_267EF89F8();
        v46 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_5_2(v46))
        {
          v47 = OUTLINED_FUNCTION_32();
          *v47 = 0;
          _os_log_impl(&dword_267B93000, v23, v46, "#ConversationStateBuilder Skipping empty readable components", v47, 2u);
          v14 = a7;
          OUTLINED_FUNCTION_32_0();
        }
      }

      if (v22 == ++a8)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_32:
    OUTLINED_FUNCTION_0();
  }

LABEL_26:

  sub_267EF2CB8();
  sub_267EF2C88();
  v49 = v48;
  v61(v59, v60);

  v50 = sub_267EF89F8();
  v51 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134218240;
    *(v52 + 4) = sub_267BAF0DC(a1);
    *(v52 + 12) = 2048;
    *(v52 + 14) = v49 - v25;

    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
    OUTLINED_FUNCTION_26();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_267BDD9A0(unint64_t isUniquelyReferenced_nonNull_native)
{
  v67 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v66 = v8 - v7;
  if (qword_280228818 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);

    v10 = sub_267EF89F8();
    v11 = sub_267EF95D8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = sub_267BAF0DC(isUniquelyReferenced_nonNull_native);

      _os_log_impl(&dword_267B93000, v10, v11, "#ConversationStateBuilder Beginning to group messages by conversation: %ld messages to be grouped", v12, 0xCu);
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
    v13 = MEMORY[0x277D84F90];
    v14 = sub_267EF8F28();
    v70 = sub_267BAF0DC(isUniquelyReferenced_nonNull_native);
    if (v70)
    {
      break;
    }

    v71 = v13;
LABEL_44:
    isUniquelyReferenced_nonNull_native = 0;
    v50 = *(v71 + 16);
    v51 = (v71 + 40);
    v52 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v50 == isUniquelyReferenced_nonNull_native)
      {

        return v52;
      }

      if (isUniquelyReferenced_nonNull_native >= *(v71 + 16))
      {
        break;
      }

      if (!v14[2])
      {
        goto LABEL_56;
      }

      v53 = *(v51 - 1);
      v3 = *v51;

      v54 = sub_267BA9948();
      v56 = v55;

      if ((v56 & 1) == 0)
      {
        goto LABEL_57;
      }

      v57 = *(v14[7] + 8 * v54);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = *(v52 + 16);
        OUTLINED_FUNCTION_4_7();
        sub_267C70744();
        v52 = v61;
      }

      v59 = *(v52 + 16);
      v58 = *(v52 + 24);
      v3 = (v59 + 1);
      if (v59 >= v58 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v58);
        sub_267C70744();
        v52 = v62;
      }

      *(v52 + 16) = v3;
      *(v52 + 8 * v59 + 32) = v57;
      v51 += 2;
      ++isUniquelyReferenced_nonNull_native;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
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
LABEL_63:
    __break(1u);
LABEL_64:
    OUTLINED_FUNCTION_0();
  }

  v15 = 0;
  v69 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v65 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v71 = MEMORY[0x277D84F90];
  v64 = (v3 + 8);
  v68 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v69)
    {
      v16 = MEMORY[0x26D609870](v15, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v15 >= *(v65 + 16))
      {
        goto LABEL_60;
      }

      v16 = *(isUniquelyReferenced_nonNull_native + 8 * v15 + 32);
    }

    v3 = v16;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_58;
    }

    v17 = sub_267BDC968(v16);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
    }

    else
    {
      sub_267EF2D18();
      v19 = sub_267EF2CE8();
      v20 = v21;
      (*v64)(v66, v67);
    }

    if (!v14[2])
    {
      break;
    }

    OUTLINED_FUNCTION_50_1();
    sub_267BA9948();
    if ((v22 & 1) == 0)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_50_1();
    v23 = sub_267BA9948();
    if (__OFADD__(v14[2], (v24 & 1) == 0))
    {
      goto LABEL_62;
    }

    v25 = v23;
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AAF8, &qword_267F02C70);
    if (sub_267EF9C68())
    {
      OUTLINED_FUNCTION_50_1();
      v27 = sub_267BA9948();
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_65;
      }

      v25 = v27;
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_63;
    }

    v72 = *(v14[7] + 8 * v25);
    v3 = v3;
    MEMORY[0x26D608F90]();
    v29 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v29 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v29);
      sub_267EF9328();
    }

    sub_267EF9368();
    if (v72)
    {

      *(v14[7] + 8 * v25) = v72;
    }

    else
    {

      sub_267CF6F5C(v14[6] + 16 * v25);
      sub_267EF9C88();
    }

    v46 = v15 + 1;

    isUniquelyReferenced_nonNull_native = v68;
LABEL_41:
    ++v15;
    if (v46 == v70)
    {
      goto LABEL_44;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = *(v71 + 16);
    OUTLINED_FUNCTION_4_7();
    sub_267BF4EE8();
    v71 = v48;
  }

  v31 = *(v71 + 16);
  v30 = *(v71 + 24);
  if (v31 >= v30 >> 1)
  {
    OUTLINED_FUNCTION_8_2(v30);
    sub_267BF4EE8();
    v71 = v49;
  }

  *(v71 + 16) = v31 + 1;
  v32 = v71 + 16 * v31;
  *(v32 + 32) = v19;
  *(v32 + 40) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_267EFCA40;
  *(v33 + 32) = v3;
  v3 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_50_1();
  v34 = sub_267BA9948();
  if (__OFADD__(v14[2], (v35 & 1) == 0))
  {
    goto LABEL_59;
  }

  v36 = v34;
  v37 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AAF8, &qword_267F02C70);
  if ((sub_267EF9C68() & 1) == 0)
  {
LABEL_34:
    if (v37)
    {
      v40 = v14[7];
      v41 = *(v40 + 8 * v36);
      *(v40 + 8 * v36) = v33;
    }

    else
    {
      v14[(v36 >> 6) + 8] |= 1 << v36;
      v42 = (v14[6] + 16 * v36);
      *v42 = v19;
      v42[1] = v20;
      *(v14[7] + 8 * v36) = v33;
      v43 = v14[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_61;
      }

      v14[2] = v45;
    }

    isUniquelyReferenced_nonNull_native = v68;
    v46 = v15 + 1;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_50_1();
  v38 = sub_267BA9948();
  if ((v37 & 1) == (v39 & 1))
  {
    v36 = v38;
    goto LABEL_34;
  }

LABEL_65:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267BDE080(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  swift_bridgeObjectRetain_n();
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    v11 = sub_267EF9098();
    v13 = sub_267BA33E8(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    v14 = sub_267BAF0DC(a1);

    *(v9 + 14) = v14;

    _os_log_impl(&dword_267B93000, v7, v8, "#SearchForMessagesFlowSource Applying reading qualifier: %s for %ld messages", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D60A7B0](v10, -1, -1);
    MEMORY[0x26D60A7B0](v9, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return a1;
    }

    sub_267C6EFF4(a2, a1);
    OUTLINED_FUNCTION_0_29();
    if ((a3 & 1) == 0)
    {
      goto LABEL_15;
    }

    sub_267EF9ED8();
    swift_unknownObjectRetain_n();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = MEMORY[0x277D84F90];
    }

    v16 = *(v15 + 16);

    v17 = (a3 >> 1) - a2;
    if (!__OFSUB__(a3 >> 1, a2))
    {
LABEL_19:
      if (v16 == v17)
      {
        a1 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!a1)
        {
          a1 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }

        return a1;
      }

      swift_unknownObjectRelease();
LABEL_15:
      sub_267C73A14();
      a1 = v18;
LABEL_22:
      swift_unknownObjectRelease();
      return a1;
    }

    __break(1u);
  }

  sub_267D2E59C(a2, a1);
  OUTLINED_FUNCTION_0_29();
  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_267EF9ED8();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x277D84F90];
  }

  v16 = *(v19 + 16);

  v17 = (a3 >> 1) - a2;
  if (!__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_267BDE368(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = a2;
  v10 = MEMORY[0x277D84F90];
  v11 = (a1 + 32);
  do
  {
    v12 = *v11;

    v14 = sub_267BE6CAC(v13, v9, a3, a4, a5 & 1);

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v15 = sub_267EF8A08();
    __swift_project_value_buffer(v15, qword_280240FB0);

    v16 = sub_267EF89F8();
    v17 = sub_267EF95D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = a3;
      v19 = a4;
      v20 = a5;
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v14[2];

      _os_log_impl(&dword_267B93000, v16, v17, "#ConversationStateBuilder Created %ld component(s)", v21, 0xCu);
      v22 = v21;
      a5 = v20;
      a4 = v19;
      a3 = v18;
      v9 = a2;
      MEMORY[0x26D60A7B0](v22, -1, -1);
    }

    else
    {
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = *(v10 + 16);
      sub_267BE58F8();
      v10 = v25;
    }

    v23 = *(v10 + 16);
    if (v23 >= *(v10 + 24) >> 1)
    {
      sub_267BE58F8();
      v10 = v26;
    }

    *(v10 + 16) = v23 + 1;
    *(v10 + 8 * v23 + 32) = v14;
    ++v11;
    --v5;
  }

  while (v5);
  return v10;
}

uint64_t sub_267BDE58C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a5)
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_267BE6A64(v14, a3, a4, a5);
  return sub_267EF9BE8();
}

uint64_t sub_267BDE638(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_267EF9A68();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_267BDE6DC(void *a1)
{
  v1 = [a1 referencedCommands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A400, &qword_267F08350);
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267BDE748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
    while (2)
    {
      v19 = v4;
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v11 = v7;
      do
      {
        v12 = *v11;
        v13 = v9;
        v14 = v12;
        v15 = sub_267BDE844(v13, v14);

        if (!v15)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v16 = *v11;
        v9 = *(v11 + 8);
        *v11 = v9;
        *(v11 + 8) = v16;
        v11 -= 8;
      }

      while (!__CFADD__(v10++, 1));
      v4 = v19 + 1;
      v7 += 8;
      --v8;
      if (v19 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

BOOL sub_267BDE844(void (*a1)(void), void *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = OUTLINED_FUNCTION_6_55(v11, v36);
  v13 = OUTLINED_FUNCTION_4_6(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_70();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_3_83();
  if (v21)
  {
    v22 = v21;
    v37 = a1;
    sub_267EF2C98();

    v23 = OUTLINED_FUNCTION_5_70();
    a1(v23);
    v24 = [a2 (v3 + 1583)];
    if (v24)
    {
      v25 = v24;
      sub_267EF2C98();

      (a1)(v4, v5, v2);
      sub_267EF2C88();
      v27 = v26;
      sub_267EF2C88();
      v28 = OUTLINED_FUNCTION_8_58();
      v4(v28);
      v29 = OUTLINED_FUNCTION_100_1();
      v4(v29);
      return v27 < v6;
    }

    v31 = *(v15 + 8);
    v32 = OUTLINED_FUNCTION_100_1();
    v33(v32);
  }

  v34 = [a1 (v3 + 1583)];
  if (v34)
  {
    v35 = v34;
    sub_267EF2C98();

    OUTLINED_FUNCTION_1_86(v38, 0);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_86(v38, 1);
    if (qword_280228820 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    sub_267EF95D8();
    sub_267EF8998();
    return 1;
  }
}

char *sub_267BDEADC(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
  v2 = MEMORY[0x277D84F90];
  v19 = OUTLINED_FUNCTION_12_17();
  v18 = OUTLINED_FUNCTION_12_17();
  v16 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];
  v3 = sub_267BAF0DC(a1);
  v4 = a1 & 0xC000000000000001;
  if (v3)
  {
    while (!__OFSUB__(v3--, 1))
    {
      if (v4)
      {
        v6 = MEMORY[0x26D609870](v3, a1);
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 32 + 8 * v3);
      }

      v7 = v6;
      v15 = v6;
      sub_267BE5258(&v15, &v19, &v16, &v17, &v18);

      if (!v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_10:
    v15 = v2;
    if (a1 >> 62)
    {
LABEL_26:
      v8 = sub_267EF9A68();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v8 != i; ++i)
    {
      if (v4)
      {
        v10 = MEMORY[0x26D609870](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v10 = *(a1 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v10;
      sub_267BE704C(&v14, &v17, &v16, &v19, &v15, &v18);
    }
  }

  v12 = sub_267BDED24(v15, &v17);

  return v12;
}

uint64_t sub_267BDECD8(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_267EF9328();
  }

  return result;
}

char *sub_267BDED04(char *a1, int64_t a2, char a3)
{
  result = sub_267BE55F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_267BDED24(unint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_267EF9A68())
  {
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v4;
    }

    v32 = MEMORY[0x277D84F90];
    result = sub_267BDED04(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v6 = 0;
    v28 = i;
    v29 = v2 & 0xC000000000000001;
    v4 = v32;
    v27 = v2 & 0xFFFFFFFFFFFFFF8;
    v26 = v2 + 32;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v31 = v4;
      if (v29)
      {
        v8 = MEMORY[0x26D609870]();
      }

      else
      {
        if (v6 >= *(v27 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v26 + 8 * v6);
      }

      v9 = *a2;
      v10 = v8;

      v11 = [v10 identifier];
      v12 = sub_267EF9028();
      v14 = v13;

      if (*(v9 + 16))
      {
        v15 = *(v9 + 40);
        sub_267EF9FC8();
        sub_267EF9128();
        v16 = sub_267EFA018();
        v17 = ~(-1 << *(v9 + 32));
        do
        {
          v18 = v16 & v17;
          v19 = (1 << (v16 & v17)) & *(v9 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8));
          v20 = v19 != 0;
          if (!v19)
          {
            break;
          }

          v21 = (*(v9 + 48) + 16 * v18);
          if (*v21 == v12 && v21[1] == v14)
          {
            break;
          }

          v23 = sub_267EF9EA8();
          v16 = v18 + 1;
        }

        while ((v23 & 1) == 0);
      }

      else
      {
        v20 = 0;
      }

      v4 = v31;
      v2 = *(v31 + 16);
      v24 = *(v31 + 24);
      if (v2 >= v24 >> 1)
      {
        sub_267BDED04((v24 > 1), v2 + 1, 1);
        v4 = v31;
      }

      *(v4 + 16) = v2 + 1;
      v25 = v4 + 16 * v2;
      *(v25 + 32) = v10;
      *(v25 + 40) = v20;
      v6 = v7;
      if (v7 == v28)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_267BDEF8C(void *a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v433 = a5;
  v430 = a4;
  v438 = a3;
  LODWORD(v431) = a2;
  v426 = type metadata accessor for ImageComponent();
  v6 = *(*(v426 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v426);
  v428 = &v425 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v427 = &v425 - v9;
  v10 = type metadata accessor for SafetySessionComponent();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v425 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v425 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v425 - v19;
  v21 = sub_267EF2BA8();
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v425 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_267EF2728();
  v440 = *(v26 - 8);
  v441 = v26;
  v27 = *(v440 + 64);
  MEMORY[0x28223BE20](v26);
  v439 = &v425 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_267EF2D28();
  v448 = *(v446 - 8);
  v29 = *(v448 + 64);
  MEMORY[0x28223BE20](v446);
  v445 = &v425 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_267EF2E38();
  v443 = *(v31 - 8);
  v444 = v31;
  v32 = v443[8];
  MEMORY[0x28223BE20](v31);
  v434 = (&v425 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v437 = type metadata accessor for TextComponent();
  v34 = *(*(v437 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v437);
  v429 = &v425 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v432 = &v425 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v436 = &v425 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v442 = &v425 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v435 = &v425 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v425 - v45;
  v469[0] = MEMORY[0x277D84F90];
  *&v447 = a1;
  v47 = [a1 messageType];
  switch(v47)
  {
    case 0uLL:
      sub_267BB8214(v447);
      if (!v171)
      {
        goto LABEL_72;
      }

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v172 = sub_267EF8A08();
      __swift_project_value_buffer(v172, qword_280240FB0);
      v173 = sub_267EF89F8();
      v174 = sub_267EF95D8();
      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        *v175 = 0;
        _os_log_impl(&dword_267B93000, v173, v174, "#ConversationStateBuilder: Unspecified messageType with content, treating as a text message", v175, 2u);
        MEMORY[0x26D60A7B0](v175, -1, -1);
      }

      goto LABEL_61;
    case 1uLL:
LABEL_61:
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v176 = sub_267EF8A08();
      __swift_project_value_buffer(v176, qword_280240FB0);
      v177 = sub_267EF89F8();
      v178 = sub_267EF95D8();
      v179 = os_log_type_enabled(v177, v178);
      v180 = v447;
      v181 = v434;
      if (v179)
      {
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&dword_267B93000, v177, v178, "#ConversationStateBuilder: Received a text message", v182, 2u);
        MEMORY[0x26D60A7B0](v182, -1, -1);
      }

      v183 = sub_267BB8214(v180);
      if (v184)
      {
        v185 = v183;
      }

      else
      {
        v185 = 0;
      }

      v186 = 0xE000000000000000;
      if (v184)
      {
        v186 = v184;
      }

      v442 = v186;
      v187 = sub_267BE56FC(v180);
      if (v187)
      {
        v188 = sub_267BE2128(v187);
      }

      else
      {
        v188 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v302 = swift_allocObject();
      *(v302 + 16) = xmmword_267EFCA40;
      *(v302 + 32) = v180;
      v303 = v180;
      v304 = sub_267BE2268(v302);
      v306 = v305;
      v307 = [v303 sender];
      v308 = [v303 messageEffectType];
      (v443[2])(v181, v438, v444);
      sub_267BE28D0(v303, &selRef_translatedToLanguage);
      v310 = v309;
      if (v309)
      {
      }

      *v46 = 0;
      *(v46 + 1) = 0;
      v311 = v442;
      *(v46 + 2) = v185;
      *(v46 + 3) = v311;
      *(v46 + 4) = v188;
      *(v46 + 5) = v304;
      *(v46 + 6) = v306;
      v312 = v445;
      sub_267EF2D18();
      v313 = sub_267EF2CE8();
      v315 = v314;
      (*(v448 + 8))(v312, v446);
      *(v46 + 7) = v313;
      *(v46 + 8) = v315;
      *(v46 + 9) = v307;
      *(v46 + 10) = v308;
      *(v46 + 44) = 0;
      v316 = v437;
      (v443[4])(&v46[*(v437 + 48)], v181, v444);
      *&v46[v316[13]] = 0x4024000000000000;
      *&v46[v316[14]] = 0x4034000000000000;
      v317 = &v46[v316[15]];
      *(v317 + 4) = 0;
      *v317 = 0u;
      *(v317 + 1) = 0u;
      v46[v316[16]] = v310 != 0;
      v318 = v435;
      sub_267BE2990(v46, v435, type metadata accessor for TextComponent);
      sub_267BE2AD0();
      v320 = v319;
      v321 = *(v319 + 16);
      if (v321 >= *(v319 + 24) >> 1)
      {
        sub_267BE2AD0();
        v320 = v410;
      }

      v458 = v316;
      v459 = sub_267BE2AF4(&qword_28022BE88, 255, type metadata accessor for TextComponent);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v456);
      sub_267BE2990(v318, boxed_opaque_existential_0, type metadata accessor for TextComponent);
      *(v320 + 16) = v321 + 1;
      sub_267B9A5E8(&v456, v320 + 40 * v321 + 32);
      sub_267BE2B3C(v318, type metadata accessor for TextComponent);
      v469[0] = v320;
      v150 = v46;
      goto LABEL_140;
    case 2uLL:
      v194 = v447;
      v195 = [v447 sender];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v196 = swift_allocObject();
      *(v196 + 16) = xmmword_267EFCA40;
      *(v196 + 32) = v194;
      v197 = v194;
      v198 = sub_267BE2268(v196);
      v200 = v199;
      v201 = [v197 messageEffectType];
      v202 = v445;
      sub_267EF2D18();
      v203 = sub_267EF2CE8();
      v205 = v204;
      (*(v448 + 8))(v202, v446);
      sub_267BE2AD0();
      v207 = v206;
      v208 = *(v206 + 16);
      v209 = v208 + 1;
      if (v208 >= *(v206 + 24) >> 1)
      {
        sub_267BE2AD0();
        v207 = v411;
      }

      v455[0] = 0;
      v458 = &type metadata for AudioComponent;
      v459 = sub_267DB6C84();
      v210 = swift_allocObject();
      *&v456 = v210;
      *(v210 + 16) = v195;
      *(v210 + 24) = v198;
      *(v210 + 32) = v200;
      *(v210 + 40) = v203;
      *(v210 + 48) = v205;
      *(v210 + 56) = v201;
      *(v210 + 64) = v455[0];
      *(v210 + 65) = 0;
      v211 = v207 + 40 * v208;
      goto LABEL_125;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x1BuLL:
    case 0x1CuLL:
      goto LABEL_2;
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0x12uLL:
      goto LABEL_72;
    case 0xFuLL:
      v458 = &type metadata for Features;
      v459 = sub_267BAFCAC();
      LOBYTE(v456) = 4;
      v225 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0(&v456);
      v226 = v447;
      if ((v225 & 1) != 0 && (sub_267BE84FC() & 1) != 0 && (v227 = sub_267E51BAC(v226)) != 0 && (v228 = sub_267BAF0DC(v227), , v228 == 1))
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v229 = sub_267EF8A08();
        __swift_project_value_buffer(v229, qword_280240FB0);
        v230 = sub_267EF89F8();
        v231 = sub_267EF95D8();
        v232 = os_log_type_enabled(v230, v231);
        v234 = v426;
        v233 = v427;
        if (v232)
        {
          v235 = swift_slowAlloc();
          *v235 = 0;
          _os_log_impl(&dword_267B93000, v230, v231, "#ConversationStateBuilder creating a media image component", v235, 2u);
          MEMORY[0x26D60A7B0](v235, -1, -1);
        }

        v236 = sub_267BB8214(v226);
        if (v237)
        {
          v238 = v236;
        }

        else
        {
          v238 = 0;
        }

        if (v237)
        {
          v239 = v237;
        }

        else
        {
          v239 = 0xE000000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v240 = swift_allocObject();
        *(v240 + 16) = xmmword_267EFCA40;
        *(v240 + 32) = v226;
        v241 = v226;
        v242 = sub_267BE2268(v240);
        v244 = v243;
        v245 = [v241 sender];
        v246 = [v241 messageEffectType];
        (v443[2])(v233 + SLODWORD(v234[3].Kind), v438, v444);
        *v233 = 0;
        *(v233 + 8) = 0;
        *(v233 + 16) = v238;
        *(v233 + 24) = v239;
        *(v233 + 32) = 0;
        *(v233 + 40) = v242;
        *(v233 + 48) = v244;
        v247 = v445;
        sub_267EF2D18();
        v248 = sub_267EF2CE8();
        v250 = v249;
        (*(v448 + 8))(v247, v446);
        *(v233 + 56) = v248;
        *(v233 + 64) = v250;
        *(v233 + 72) = v245;
        *(v233 + 80) = v246;
        *(v233 + 88) = 0;
        v251 = v428;
        sub_267BE2990(v233, v428, type metadata accessor for ImageComponent);
        sub_267BE2AD0();
        v253 = v252;
        v254 = *(v252 + 16);
        if (v254 >= *(v252 + 24) >> 1)
        {
          sub_267BE2AD0();
          v253 = v419;
        }

        v458 = v234;
        v459 = sub_267BE2AF4(&qword_28022BE98, 255, type metadata accessor for ImageComponent);
        v255 = __swift_allocate_boxed_opaque_existential_0(&v456);
        sub_267BE2990(v251, v255, type metadata accessor for ImageComponent);
        *(v253 + 16) = v254 + 1;
        sub_267B9A5E8(&v456, v253 + 40 * v254 + 32);
        sub_267BE2B3C(v251, type metadata accessor for ImageComponent);
        v469[0] = v253;
        sub_267BE2B3C(v233, type metadata accessor for ImageComponent);
      }

      else
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v268 = sub_267EF8A08();
        __swift_project_value_buffer(v268, qword_280240FB0);
        v269 = v226;
        v270 = sub_267EF89F8();
        v271 = sub_267EF95D8();
        if (os_log_type_enabled(v270, v271))
        {
          v272 = -1;
          v273 = swift_slowAlloc();
          *v273 = 134217984;
          v274 = [v269 numberOfAttachments];
          if (v274)
          {
            v275 = v274;
            v272 = [v274 integerValue];
          }

          *(v273 + 4) = v272;

          _os_log_impl(&dword_267B93000, v270, v271, "#ConversationStateBuilder iamge type, number of attachments %ld", v273, 0xCu);
          MEMORY[0x26D60A7B0](v273, -1, -1);
        }

        else
        {

          v270 = v269;
        }

        sub_267CF53E8(v269, &v456);
        v323 = v458;
        v324 = v459;
        v325 = __swift_mutable_project_boxed_opaque_existential_1(&v456, v458);
        v326 = *(v323[-1].Description + 8);
        MEMORY[0x28223BE20](v325);
        v328 = &v425 - ((v327 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v329 + 16))(v328);
        sub_267BE2B94(v328, v469, v323, v324);
        __swift_destroy_boxed_opaque_existential_0(&v456);
      }

      v330 = sub_267BB8214(v226);
      if (!v331)
      {
        return v469[0];
      }

      v332 = v330;
      v333 = v331;
      *&v456 = v330;
      *(&v456 + 1) = v331;
      v334 = v439;
      sub_267EF26D8();
      sub_267BB5034();
      v335 = sub_267EF9918();
      v337 = v336;
      (*(v440 + 8))(v334, v441);

      v338 = HIBYTE(v337) & 0xF;
      if ((v337 & 0x2000000000000000) == 0)
      {
        v338 = v335 & 0xFFFFFFFFFFFFLL;
      }

      if (!v338)
      {
        goto LABEL_152;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v339 = swift_allocObject();
      *(v339 + 16) = xmmword_267EFCA40;
      *(v339 + 32) = v226;
      v340 = v226;
      v341 = sub_267BE2268(v339);
      v343 = v342;
      v344 = [v340 sender];
      v345 = [v340 messageEffectType];
      v346 = v437;
      v347 = v432;
      (v443[2])(&v432[*(v437 + 48)], v438, v444);
      v348 = v347 + v346[15];
      *(v348 + 32) = 0;
      *v348 = 0u;
      *(v348 + 16) = 0u;
      *v347 = 0;
      *(v347 + 8) = 0;
      *(v347 + 16) = v332;
      *(v347 + 24) = v333;
      *(v347 + 32) = 0;
      *(v347 + 40) = v341;
      *(v347 + 48) = v343;
      v349 = v445;
      sub_267EF2D18();
      v350 = sub_267EF2CE8();
      v352 = v351;
      (*(v448 + 8))(v349, v446);
      *(v347 + 56) = v350;
      *(v347 + 64) = v352;
      *(v347 + 72) = v344;
      *(v347 + 80) = v345;
      *(v347 + 88) = 0;
      *(v347 + v346[13]) = 0x4024000000000000;
      *(v347 + v346[14]) = 0x4034000000000000;
      *(v347 + v346[16]) = 0;
      v353 = v429;
      sub_267BE2990(v347, v429, type metadata accessor for TextComponent);
      v354 = v469[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v414 = *(v354 + 16);
        sub_267BE2AD0();
        v354 = v415;
      }

      v355 = *(v354 + 16);
      if (v355 >= *(v354 + 24) >> 1)
      {
        sub_267BE2AD0();
        v354 = v416;
      }

      v458 = v346;
      v459 = sub_267BE2AF4(&qword_28022BE88, 255, type metadata accessor for TextComponent);
      v356 = __swift_allocate_boxed_opaque_existential_0(&v456);
      sub_267BE2990(v353, v356, type metadata accessor for TextComponent);
      *(v354 + 16) = v355 + 1;
      sub_267B9A5E8(&v456, v354 + 40 * v355 + 32);
      sub_267BE2B3C(v353, type metadata accessor for TextComponent);
      v469[0] = v354;
      v150 = v432;
      goto LABEL_140;
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
      v68 = v447;
      v69 = sub_267D60610();
      if (v70 == 0xFF)
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v420 = sub_267EF8A08();
        __swift_project_value_buffer(v420, qword_280240FB0);
        v421 = sub_267EF89F8();
        v422 = sub_267EF95E8();
        if (os_log_type_enabled(v421, v422))
        {
          v423 = swift_slowAlloc();
          v424 = swift_slowAlloc();
          *&v456 = v424;
          *v423 = 136315138;
          *(v423 + 4) = sub_267BA33E8(0xD00000000000003FLL, 0x8000000267F1BE20, &v456);
          _os_log_impl(&dword_267B93000, v421, v422, "Fatal error: %s", v423, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v424);
          MEMORY[0x26D60A7B0](v424, -1, -1);
          MEMORY[0x26D60A7B0](v423, -1, -1);
        }

        sub_267EF9C98();
        __break(1u);
        JUMPOUT(0x267BE1CB8);
      }

      v71 = v69;
      v72 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_267EFCA40;
      *(v73 + 32) = v68;
      v74 = v68;
      *&v447 = sub_267BE2268(v73);
      v444 = v75;
      v443 = [v74 sender];
      v442 = [v74 messageEffectType];
      if (v72 >= 2u && (v76 = sub_267BB8214(v74), v77))
      {
        v78 = v76;
        v79 = v77;
      }

      else
      {
        v78 = 0;
        v79 = 0xE000000000000000;
      }

      v95 = v445;
      sub_267EF2D18();
      v96 = sub_267EF2CE8();
      v98 = v97;
      (*(v448 + 8))(v95, v446);
      sub_267BE2AD0();
      v100 = v99;
      v101 = *(v99 + 16);
      if (v101 >= *(v99 + 24) >> 1)
      {
        sub_267BE2AD0();
        v100 = v407;
      }

      v455[0] = 0;
      v458 = &type metadata for PaymentComponent;
      v459 = sub_267DBCBC8();
      v102 = swift_allocObject();
      *&v456 = v102;
      *(v102 + 16) = 0;
      *(v102 + 24) = 0;
      v103 = v444;
      *(v102 + 32) = v447;
      *(v102 + 40) = v103;
      *(v102 + 48) = xmmword_267EFC050;
      v104 = v442;
      *(v102 + 64) = v443;
      *(v102 + 72) = v104;
      *(v102 + 80) = v455[0];
      *(v102 + 81) = 0;
      *(v102 + 88) = v96;
      *(v102 + 96) = v98;
      *(v102 + 104) = v78;
      *(v102 + 112) = v79;
      *(v102 + 120) = v71;
      *(v102 + 128) = v72;
      *(v100 + 16) = v101 + 1;
      sub_267B9A5E8(&v456, v100 + 40 * v101 + 32);
      v469[0] = v100;
      return v469[0];
    case 0x19uLL:
      v151 = v447;
      v152 = [v447 linkMetadata];
      if (!v152)
      {
        v152 = [objc_allocWithZone(MEMORY[0x277CD3DF0]) init];
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v153 = sub_267EF8A08();
        __swift_project_value_buffer(v153, qword_280240FB0);
        v154 = sub_267EF89F8();
        v155 = sub_267EF95E8();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&dword_267B93000, v154, v155, "#ConversationStateBuilder linkMetadata for link message is nil", v156, 2u);
          MEMORY[0x26D60A7B0](v156, -1, -1);
        }
      }

      sub_267CF5620(v151, v433, &v456);
      if (v458)
      {
        sub_267B9A5E8(&v456, &v452);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v157 = swift_allocObject();
        *(v157 + 16) = xmmword_267EFCA40;
        *(v157 + 32) = v151;
        v158 = v151;
        v159 = sub_267BE2268(v157);
        v161 = v160;
        v162 = [v158 sender];
        v163 = [v158 messageEffectType];
        sub_267B9AFEC(&v452, v466);
        v465 = off_2878D1228;
        *&v456 = v159;
        *(&v456 + 1) = v161;
        v457 = 1;
        v458 = v162;
        v459 = v163;
        v460 = 0;
        v464 = &type metadata for MessagesFeatureFlagsImpl;
        v461 = v152;
        v164 = v445;
        sub_267EF2D18();
        v165 = sub_267EF2CE8();
        v167 = v166;
        (*(v448 + 8))(v164, v446);
        v462 = v165;
        v463 = v167;
        v468 = 3;
        sub_267C1023C(&v456, v455);
        sub_267BE2AD0();
        v169 = v168;
        v170 = *(v168 + 16);
        if (v170 >= *(v168 + 24) >> 1)
        {
          sub_267BE2AD0();
          v169 = v412;
        }

        v450 = &unk_2878CE588;
        v451 = sub_267C100F0();
        *&v449 = swift_allocObject();
        sub_267C1023C(v455, v449 + 16);
        *(v169 + 16) = v170 + 1;
        sub_267B9A5E8(&v449, v169 + 40 * v170 + 32);
        sub_267C10274(v455);
        v469[0] = v169;
        __swift_destroy_boxed_opaque_existential_0(&v452);
        goto LABEL_26;
      }

      sub_267B9F98C(&v456, &qword_280228F90, &qword_267EFC0A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v357 = swift_allocObject();
      *(v357 + 16) = xmmword_267EFCA40;
      *(v357 + 32) = v151;
      v358 = v151;
      v359 = sub_267BE2268(v357);
      v361 = v360;
      v362 = [v358 sender];
      v363 = [v358 messageEffectType];
      v464 = &type metadata for MessagesFeatureFlagsImpl;
      v465 = off_2878D1228;
      *&v456 = v359;
      *(&v456 + 1) = v361;
      v457 = 1;
      v458 = v362;
      v459 = v363;
      v460 = 0;
      v364 = v445;
      sub_267EF2D18();
      v365 = sub_267EF2CE8();
      v367 = v366;
      (*(v448 + 8))(v364, v446);
      v461 = v365;
      v462 = v367;
      v463 = v152;
      sub_267D68B34(&v456, v455);
      sub_267BE2AD0();
      v369 = v368;
      v370 = *(v368 + 16);
      if (v370 >= *(v368 + 24) >> 1)
      {
        sub_267BE2AD0();
        v369 = v417;
      }

      v453 = &type metadata for LinkComponent;
      v454 = sub_267D689E8();
      *&v452 = swift_allocObject();
      sub_267D68B34(v455, v452 + 16);
      *(v369 + 16) = v370 + 1;
      sub_267B9A5E8(&v452, v369 + 40 * v370 + 32);
      sub_267C6AC38(v455);
      v469[0] = v369;
      sub_267C6AC38(&v456);
      return v469[0];
    case 0x1AuLL:
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v212 = sub_267EF8A08();
      __swift_project_value_buffer(v212, qword_280240FB0);
      v213 = sub_267EF89F8();
      v214 = sub_267EF95C8();
      v215 = os_log_type_enabled(v213, v214);
      v216 = v447;
      if (v215)
      {
        v217 = swift_slowAlloc();
        *v217 = 0;
        _os_log_impl(&dword_267B93000, v213, v214, "#ConversationStateBuilder reaction type message received", v217, 2u);
        MEMORY[0x26D60A7B0](v217, -1, -1);
      }

      v218 = [v216 reaction];
      if (!v218 || (v219 = v218, v220 = [v218 reactionType], v219, v220 != *MEMORY[0x277CD44E8]))
      {
        v290 = sub_267CF5A04(v216);
        if (v291 != -1)
        {
          v292 = v291;
          v444 = v290;
          v293 = [v216 referencedMessage];
          if (!v293 || (v294 = v293, v295 = [v293 messageType], v294, v295 != 1))
          {
            v296 = [v216 referencedMessage];
            if (!v296)
            {
              goto LABEL_157;
            }

            v297 = v296;
            v298 = [v296 messageType];

            if (v298 != 21)
            {
              goto LABEL_157;
            }
          }

          v299 = [v216 referencedMessage];
          if (v299 && (v300 = sub_267BBE6F8(v299), v301))
          {
            v442 = v301;
            v443 = v300;
          }

          else
          {
LABEL_157:

            v442 = 0xE000000000000000;
            v443 = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
          v371 = swift_allocObject();
          *(v371 + 16) = xmmword_267EFCA40;
          *(v371 + 32) = v216;
          v372 = v216;
          v373 = sub_267BE2268(v371);
          v375 = v374;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE40, &unk_267F08CB0);
          v376 = swift_allocObject();
          *(v376 + 16) = xmmword_267EFC020;
          *(v376 + 32) = [v372 sender];
          *&v456 = MEMORY[0x277D84F90];
          *(&v456 + 1) = MEMORY[0x277D84FA0];
          sub_267D29F84(v376, &v456);
          swift_setDeallocating();
          sub_267DB6FC0();
          v447 = v456;
          v377 = [v372 referencedMessage];
          v378 = v445;
          sub_267EF2D18();
          v379 = sub_267EF2CE8();
          v381 = v380;
          (*(v448 + 8))(v378, v446);
          sub_267BE2AD0();
          v383 = v382;
          v384 = *(v382 + 16);
          if (v384 >= *(v382 + 24) >> 1)
          {
            sub_267BE2AD0();
            v383 = v413;
          }

          v455[0] = v292 & 1;
          v458 = &type metadata for ReactionComponent;
          v459 = sub_267C77294();
          v385 = swift_allocObject();
          *&v456 = v385;
          *(v385 + 16) = 0;
          *(v385 + 24) = 0;
          v386 = v442;
          *(v385 + 32) = v443;
          *(v385 + 40) = v386;
          *(v385 + 48) = 0;
          *(v385 + 56) = v373;
          v387 = v444;
          *(v385 + 64) = v375;
          *(v385 + 72) = v387;
          *(v385 + 80) = v455[0];
          *(v385 + 88) = v447;
          *(v385 + 104) = v377;
          *(v385 + 112) = v379;
          *(v385 + 120) = v381;
          *(v385 + 128) = 0;
          *(v383 + 16) = v384 + 1;
          sub_267B9A5E8(&v456, v383 + 40 * v384 + 32);
          v469[0] = v383;
        }

        return v469[0];
      }

      v221 = sub_267EF89F8();
      v222 = sub_267EF95C8();
      if (!os_log_type_enabled(v221, v222))
      {
        goto LABEL_114;
      }

      v223 = swift_slowAlloc();
      *v223 = 0;
      v224 = "#ConversationStateBuilder skip reading custom acknowledgement";
      goto LABEL_113;
    default:
      v425 = v25;
      v434 = v10;
      v435 = v22;
      v432 = v16;
      v433 = v21;
      if ((v47 - 1001) < 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_267EFCA40;
        v81 = v447;
        *(v80 + 32) = v447;
        v82 = v81;
        v83 = sub_267BE2268(v80);
        v85 = v84;
        v86 = [v82 sender];
        v87 = [v82 messageEffectType];
        memset(v466, 0, sizeof(v466));
        v467 = 0;
        LOBYTE(v82) = sub_267C0FE90([v82 messageType]);
        v465 = off_2878D1228;
        *&v456 = v83;
        *(&v456 + 1) = v85;
        v457 = 1;
        v458 = v86;
        v459 = v87;
        v460 = 0;
        v464 = &type metadata for MessagesFeatureFlagsImpl;
        v461 = 0;
        v88 = v445;
        sub_267EF2D18();
        v89 = sub_267EF2CE8();
        v91 = v90;
        (*(v448 + 8))(v88, v446);
        v462 = v89;
        v463 = v91;
        v468 = v82;
        sub_267C1023C(&v456, v455);
        sub_267BE2AD0();
        v93 = v92;
        v94 = *(v92 + 16);
        if (v94 >= *(v92 + 24) >> 1)
        {
          sub_267BE2AD0();
          v93 = v408;
        }

        v453 = &unk_2878CE588;
        v454 = sub_267C100F0();
        *&v452 = swift_allocObject();
        sub_267C1023C(v455, v452 + 16);
        *(v93 + 16) = v94 + 1;
        sub_267B9A5E8(&v452, v93 + 40 * v94 + 32);
        sub_267C10274(v455);
        v469[0] = v93;
LABEL_26:
        sub_267C10274(&v456);
        return v469[0];
      }

      if ((v47 - 1004) < 2)
      {
        goto LABEL_2;
      }

      if (v47 != 1000)
      {
        if (v47 == 1100)
        {
LABEL_2:
          v48 = v447;
          v49 = sub_267D70D78([v447 messageType]);
          if (v49 == 18)
          {
            if (qword_280228818 != -1)
            {
              swift_once();
            }

            v50 = sub_267EF8A08();
            __swift_project_value_buffer(v50, qword_280240FB0);
            v51 = v48;
            v52 = sub_267EF89F8();
            v53 = sub_267EF95E8();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              *v54 = 134217984;
              *(v54 + 4) = [v51 messageType];

              _os_log_impl(&dword_267B93000, v52, v53, "#ConversationStateBuilder Failed to convert ungroupable message type to GenericCountableComponent: %ld", v54, 0xCu);
              MEMORY[0x26D60A7B0](v54, -1, -1);
            }

            else
            {
            }
          }

          else
          {
            v55 = v49;
            if (qword_280228818 != -1)
            {
              swift_once();
            }

            v56 = sub_267EF8A08();
            __swift_project_value_buffer(v56, qword_280240FB0);
            v57 = v48;
            v58 = sub_267EF89F8();
            v59 = sub_267EF95D8();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = -1;
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              *&v456 = v62;
              *v61 = 136315394;
              v63 = INMessageType.description.getter([v57 messageType]);
              v65 = sub_267BA33E8(v63, v64, &v456);

              *(v61 + 4) = v65;
              *(v61 + 12) = 2048;
              v66 = [v57 numberOfAttachments];
              if (v66)
              {
                v67 = v66;
                v60 = [v66 integerValue];
              }

              else
              {
                v67 = v57;
              }

              *(v61 + 14) = v60;
              _os_log_impl(&dword_267B93000, v58, v59, "#ConversationStateBuilder %s, number of attachments %ld", v61, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v62);
              MEMORY[0x26D60A7B0](v62, -1, -1);
              MEMORY[0x26D60A7B0](v61, -1, -1);
            }

            else
            {
            }

            v105 = [v57 numberOfAttachments];
            if (v105)
            {
              v106 = v105;
              *&v447 = [v105 integerValue];
            }

            else
            {
              *&v447 = 1;
            }

            v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
            v107 = swift_allocObject();
            v431 = xmmword_267EFCA40;
            *(v107 + 16) = xmmword_267EFCA40;
            *(v107 + 32) = v57;
            v108 = v57;
            v109 = sub_267BE2268(v107);
            v434 = v110;
            v435 = v109;
            v111 = [v108 sender];
            v112 = [v108 messageEffectType];
            v113 = v445;
            sub_267EF2D18();
            v114 = sub_267EF2CE8();
            v116 = v115;
            v117 = *(v448 + 8);
            v448 += 8;
            v433 = v117;
            v117(v113, v446);
            sub_267BE2AD0();
            v119 = v118;
            v120 = *(v118 + 16);
            if (v120 >= *(v118 + 24) >> 1)
            {
              sub_267BE2AD0();
              v119 = v405;
            }

            v455[0] = 0;
            v458 = &type metadata for GenericCountableComponent;
            v459 = sub_267C82888();
            v121 = swift_allocObject();
            *&v456 = v121;
            *(v121 + 16) = v55;
            v122 = v434;
            v123 = v435;
            *(v121 + 24) = v447;
            *(v121 + 32) = v123;
            *(v121 + 40) = v122;
            *(v121 + 48) = v114;
            *(v121 + 56) = v116;
            *(v121 + 64) = v111;
            *(v121 + 72) = v112;
            *(v121 + 80) = v455[0];
            *(v121 + 81) = 0;
            *(v119 + 16) = v120 + 1;
            sub_267B9A5E8(&v456, v119 + 40 * v120 + 32);
            v469[0] = v119;
            v124 = sub_267BB8214(v108);
            if (v125)
            {
              v126 = v124;
              v127 = v125;
              *&v456 = v124;
              *(&v456 + 1) = v125;
              v128 = v439;
              sub_267EF26D8();
              sub_267BB5034();
              v129 = sub_267EF9918();
              v131 = v130;
              (*(v440 + 8))(v128, v441);

              v132 = HIBYTE(v131) & 0xF;
              if ((v131 & 0x2000000000000000) == 0)
              {
                v132 = v129 & 0xFFFFFFFFFFFFLL;
              }

              if (v132)
              {
                v133 = swift_allocObject();
                *(v133 + 16) = v431;
                *(v133 + 32) = v108;
                v134 = v108;
                v135 = sub_267BE2268(v133);
                v137 = v136;
                v138 = [v134 sender];
                v139 = [v134 messageEffectType];
                v140 = v437;
                v141 = v442;
                (v443[2])(&v442[*(v437 + 48)], v438, v444);
                v142 = v141 + v140[15];
                *(v142 + 32) = 0;
                *v142 = 0u;
                *(v142 + 16) = 0u;
                *v141 = 0;
                *(v141 + 8) = 0;
                *(v141 + 16) = v126;
                *(v141 + 24) = v127;
                *(v141 + 32) = 0;
                *(v141 + 40) = v135;
                *(v141 + 48) = v137;
                v143 = v445;
                sub_267EF2D18();
                v144 = sub_267EF2CE8();
                v146 = v145;
                v433(v143, v446);
                *(v141 + 56) = v144;
                *(v141 + 64) = v146;
                *(v141 + 72) = v138;
                *(v141 + 80) = v139;
                *(v141 + 88) = 0;
                *(v141 + v140[13]) = 0x4024000000000000;
                *(v141 + v140[14]) = 0x4034000000000000;
                *(v141 + v140[16]) = 0;
                v147 = v436;
                sub_267BE2990(v141, v436, type metadata accessor for TextComponent);
                v148 = *(v119 + 16);
                if (v148 >= *(v119 + 24) >> 1)
                {
                  sub_267BE2AD0();
                  v119 = v406;
                }

                v458 = v140;
                v459 = sub_267BE2AF4(&qword_28022BE88, 255, type metadata accessor for TextComponent);
                v149 = __swift_allocate_boxed_opaque_existential_0(&v456);
                sub_267BE2990(v147, v149, type metadata accessor for TextComponent);
                *(v119 + 16) = v148 + 1;
                sub_267B9A5E8(&v456, v119 + 40 * v148 + 32);
                sub_267BE2B3C(v147, type metadata accessor for TextComponent);
                v469[0] = v119;
                v150 = v442;
LABEL_140:
                sub_267BE2B3C(v150, type metadata accessor for TextComponent);
              }

              else
              {
LABEL_152:
              }
            }
          }
        }

        else
        {
LABEL_72:
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v189 = sub_267EF8A08();
          __swift_project_value_buffer(v189, qword_280240FB0);
          v190 = v447;
          v191 = sub_267EF89F8();
          v192 = sub_267EF95D8();
          if (os_log_type_enabled(v191, v192))
          {
            v193 = swift_slowAlloc();
            *v193 = 134217984;
            *(v193 + 4) = [v190 messageType];

            _os_log_impl(&dword_267B93000, v191, v192, "#ConversationStateBuilder Unhandled message type: %ld, adding generic message in place", v193, 0xCu);
            MEMORY[0x26D60A7B0](v193, -1, -1);
          }

          else
          {

            v191 = v190;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
          v276 = swift_allocObject();
          *(v276 + 16) = xmmword_267EFCA40;
          *(v276 + 32) = v190;
          v277 = v190;
          v278 = sub_267BE2268(v276);
          v280 = v279;
          v281 = [v277 sender];
          v282 = [v277 messageEffectType];
          v283 = v445;
          sub_267EF2D18();
          v284 = sub_267EF2CE8();
          v286 = v285;
          (*(v448 + 8))(v283, v446);
          sub_267BE2AD0();
          v207 = v287;
          v288 = *(v287 + 16);
          v209 = v288 + 1;
          if (v288 >= *(v287 + 24) >> 1)
          {
            sub_267BE2AD0();
            v207 = v409;
          }

          v455[0] = 0;
          v458 = &type metadata for GenericCountableComponent;
          v459 = sub_267C82888();
          v289 = swift_allocObject();
          *&v456 = v289;
          *(v289 + 16) = 6;
          *(v289 + 24) = 1;
          *(v289 + 32) = v278;
          *(v289 + 40) = v280;
          *(v289 + 48) = v284;
          *(v289 + 56) = v286;
          *(v289 + 64) = v281;
          *(v289 + 72) = v282;
          *(v289 + 80) = v455[0];
          *(v289 + 81) = 0;
          v211 = v207 + 40 * v288;
LABEL_125:
          *(v207 + 16) = v209;
          sub_267B9A5E8(&v456, v211 + 32);
          v469[0] = v207;
        }

        return v469[0];
      }

      v256 = v14;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v257 = sub_267EF8A08();
      __swift_project_value_buffer(v257, qword_280240FB0);
      v258 = sub_267EF89F8();
      v259 = sub_267EF95D8();
      v260 = os_log_type_enabled(v258, v259);
      v261 = v434;
      v262 = v425;
      if (v260)
      {
        v263 = swift_slowAlloc();
        *v263 = 0;
        _os_log_impl(&dword_267B93000, v258, v259, "#ConversationStateBuilder: Received a safety monitor message", v263, 2u);
        MEMORY[0x26D60A7B0](v263, -1, -1);
      }

      sub_267BB8214(v447);
      v264 = v435;
      if (v265)
      {
        sub_267EF2B88();

        v266 = v433;
        if (__swift_getEnumTagSinglePayload(v20, 1, v433) != 1)
        {
          (*(v264 + 32))(v262, v20, v266);
          v388 = v447;
          v389 = [v447 sender];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
          v390 = swift_allocObject();
          *(v390 + 16) = xmmword_267EFCA40;
          *(v390 + 32) = v388;
          v391 = v388;
          v392 = sub_267BE2268(v390);
          v394 = v393;
          Kind_high = SHIDWORD(v261[2].Kind);
          v396 = v432;
          (*(v264 + 16))(&v432[Kind_high], v425, v266);
          v397 = v445;
          sub_267EF2D18();
          v398 = sub_267EF2CE8();
          v400 = v399;
          (*(v448 + 8))(v397, v446);
          *v396 = 0;
          *(v396 + 8) = v389;
          *(v396 + 16) = 0;
          *(v396 + 24) = 1;
          *(v396 + 32) = v392;
          *(v396 + 40) = v394;
          *(v396 + 48) = v398;
          *(v396 + 56) = v400;
          sub_267BE2990(v396, v256, type metadata accessor for SafetySessionComponent);
          sub_267BE2AD0();
          v402 = v401;
          v403 = *(v401 + 16);
          if (v403 >= *(v401 + 24) >> 1)
          {
            sub_267BE2AD0();
            v402 = v418;
          }

          v458 = v434;
          v459 = sub_267BE2AF4(&qword_280229F48, 255, type metadata accessor for SafetySessionComponent);
          v404 = __swift_allocate_boxed_opaque_existential_0(&v456);
          sub_267BE2990(v256, v404, type metadata accessor for SafetySessionComponent);
          *(v402 + 16) = v403 + 1;
          sub_267B9A5E8(&v456, v402 + 40 * v403 + 32);
          sub_267BE2B3C(v256, type metadata accessor for SafetySessionComponent);
          v469[0] = v402;
          sub_267BE2B3C(v432, type metadata accessor for SafetySessionComponent);
          (*(v435 + 8))(v425, v433);
          return v469[0];
        }

        sub_267B9F98C(v20, &qword_280229E20, &unk_267EFDCC0);
      }

      v221 = sub_267EF89F8();
      v222 = sub_267EF95E8();
      if (os_log_type_enabled(v221, v222))
      {
        v223 = swift_slowAlloc();
        *v223 = 0;
        v224 = "#ConversationStateBuilder: Message content is empty or content is not a valid URL";
LABEL_113:
        _os_log_impl(&dword_267B93000, v221, v222, v224, v223, 2u);
        MEMORY[0x26D60A7B0](v223, -1, -1);
      }

LABEL_114:

      return MEMORY[0x277D84F90];
  }
}

uint64_t sub_267BE1D2C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 82, 7);
}

uint64_t sub_267BE1D7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  }

  return MEMORY[0x2821FE8E8](v0, 169, 7);
}

uint64_t sub_267BE1DEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  sub_267DBCBB4(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_267BE1E60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_267BE1ED8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 72);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_267BE1F38()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 66, 7);
}

uint64_t type metadata accessor for SafetySessionComponent()
{
  result = qword_280229F18;
  if (!qword_280229F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ImageComponent()
{
  result = qword_28022CA00;
  if (!qword_28022CA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267BE2020()
{
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_12_8();
  if (v7)
  {
    OUTLINED_FUNCTION_2_21();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_18_10();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_24_4(v8);
  if (v3)
  {
    OUTLINED_FUNCTION_50_6(v11, v12, v13, v14, v15, v16);
    v17 = OUTLINED_FUNCTION_37_3();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_14_14();
    OUTLINED_FUNCTION_41_5(v18);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_48_5();
  if (v1)
  {
    if (v17 != v0 || v5 + 8 * v2 <= v4)
    {
      v20 = OUTLINED_FUNCTION_68_0();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_19();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_25_9();
  }

  OUTLINED_FUNCTION_60_2();
}