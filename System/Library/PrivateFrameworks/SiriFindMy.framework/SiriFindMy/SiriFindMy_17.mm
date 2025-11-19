uint64_t sub_266D87C9C()
{
  v34 = v0;
  if (qword_2800C9430 != -1)
  {
    OUTLINED_FUNCTION_11_33();
  }

  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = v0[27];
  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_2800E64F0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[55];
  v9 = v0[56];
  v11 = v0[54];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    v14 = sub_266DA7FBC();
    v15 = OBJC_IVAR___FindFriendIntentResponse_code;
    swift_beginAccess();
    v16 = *&v14[v15];

    v0[25] = v16;
    v17 = sub_266DAA72C();
    v19 = v18;
    (*(v10 + 8))(v9, v11);
    v20 = sub_266C22A3C(v17, v19, &v33);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_266C08000, v6, v7, "FindFriend.HandleIntentStrategy.makeFailureHandlingIntentResponse() called with response code: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_33_6();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = v0[53];
  v22 = v0[54];
  v24 = v0[27];
  v23 = v0[28];
  sub_266DA900C();
  v25 = sub_266DA7FCC();
  v26 = [v25 friend];

  v27 = [v26 person];
  v28 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_266DA7AFC();
  v29 = sub_266DA8FBC();
  v0[57] = v29;
  v30 = v23[6];
  v31 = swift_task_alloc();
  v0[58] = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_88_0(v31);

  return sub_266CB41E8(v29);
}

uint64_t sub_266D87F88()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 464);
  *v3 = *v1;
  *(v2 + 472) = v6;
  *(v2 + 480) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_266D8808C()
{
  v1 = v0[59];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[40];
  v7 = v0[29];
  v145 = *(v0[28] + 224);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  *v3 = 4;
  *(v3 + 8) = xmmword_266DB2FB0;
  *(v3 + 24) = 0;
  OUTLINED_FUNCTION_40_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v14 = OUTLINED_FUNCTION_101();
  v0[61] = v14;
  *(v14 + 16) = xmmword_266DAE3B0;
  *(v14 + 32) = v1;
  sub_266DA7E5C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_266DA7C7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = v1;
  sub_266DA7BCC();
  if (sub_266C3A14C(v14, v24, v25))
  {
    v26 = OUTLINED_FUNCTION_63();
    sub_266CB9F54(v26, v27, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x26D5F1780](0, v14);
    }

    else
    {
      v28 = *(v14 + 32);
    }

    v29 = v28;
    v30 = [v28 catId];

    sub_266DAA70C();
    v144 = v31;
  }

  else
  {
    v144 = 0;
  }

  v32 = v0[51];
  v33 = v0[49];
  v34 = v0[50];
  v36 = v0[43];
  v35 = v0[44];
  v135 = v0[42];
  v138 = v0[41];
  v37 = v0[39];
  v38 = v0[38];
  v129 = v0[37];
  v132 = v0[40];
  v140 = v0[36];
  v141 = v0[52];
  v142 = v0[29];
  v143 = v0[48];
  sub_266D1CAC8();
  sub_266D1CAC8();
  v39 = *(v36 + 80);
  v40 = swift_allocObject();
  v0[62] = v40;
  *(v40 + 16) = v145;
  sub_266D1CB20();
  sub_266D1CB20();
  (*(v38 + 16))(v37, v132, v129);
  v41 = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_65_2(v41);
  *(v42 + 40) = v43;
  *(v42 + 48) = v144;
  v51 = OUTLINED_FUNCTION_33_11(v42, v44, v45, v46, v47, v48, v49, v50, v126, v129, v132, v135);
  *(v51 + 72) = sub_266C4764C;
  *(v51 + 80) = v40;
  OUTLINED_FUNCTION_111_3(v51, v52, v53, v54, v55, v56, v57, v58, v127, v130, v133, v136, v138);

  OUTLINED_FUNCTION_103_2();
  sub_266DA800C();

  OUTLINED_FUNCTION_45_8(v59, v60, v61, v62, v63, v64, v65, v66, v128, v131, v134, v137, v139, v140, v141);
  sub_266D1CAC8();
  v67 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v67, v68, v142);
  if (v75)
  {
    v69 = v0 + 48;
  }

  else
  {
    v70 = v0[51];
    v72 = v0[47];
    v71 = v0[48];
    v73 = v0[33];
    v74 = v0[29];
    OUTLINED_FUNCTION_8_23();
    sub_266D8C990();
    OUTLINED_FUNCTION_32();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_22_17(v72);
    if (!v75)
    {
      v102 = v0[47];
      v103 = v0[32];
      v104 = v0[33];
      v105 = v0[29];
      OUTLINED_FUNCTION_6_42();
      sub_266D8C990();
      v0[15] = v105;
      OUTLINED_FUNCTION_3_60();
      v108 = sub_266D8CA74(v106, v107);
      OUTLINED_FUNCTION_95_1(v108);
      OUTLINED_FUNCTION_41();
      sub_266D8CAB8();
      v0[20] = v105;
      v0[21] = v40;
      __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD30]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[63] = v109;
      *v109 = v110;
      v109[1] = sub_266D88748;
      v111 = v0[36];
      v112 = v0[26];
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_112();

      __asm { BR              X5 }
    }

    v69 = v0 + 47;
    v76 = v0[33];
    OUTLINED_FUNCTION_0_89();
    sub_266D8C9E8(v77, v78);
  }

  v79 = *v69;
  v80 = v0[52];
  v81 = v0[46];
  v82 = v0[29];
  OUTLINED_FUNCTION_77_2(v79);
  OUTLINED_FUNCTION_32();
  sub_266D1CAC8();
  v83 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, v84, v82);
  v86 = v0[29];
  if (EnumTagSinglePayload == 1)
  {
    v87 = v0[51];
    v88 = v0[45];
    OUTLINED_FUNCTION_77_2(v0[46]);
    OUTLINED_FUNCTION_34_5();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_30_13();
    if (v75)
    {
      sub_266C47654(v0[45], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD50]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[66] = v89;
      *v89 = v90;
      v89[1] = sub_266D88F04;
      v91 = v0[36];
      v92 = v0[26];
      OUTLINED_FUNCTION_112();

      __asm { BR              X3 }
    }

    v115 = v0[45];
    v117 = v0[29];
    v116 = v0[30];
    OUTLINED_FUNCTION_7_36();
    sub_266D8C990();
    v0[5] = v117;
    OUTLINED_FUNCTION_3_60();
    v0[6] = sub_266D8CA74(v118, v119);
    __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_41();
    sub_266D8CAB8();
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD40]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[65] = v120;
    *v120 = v121;
    v120[1] = sub_266D88C78;
    v122 = v0[36];
    v123 = v0[26];
  }

  else
  {
    v95 = v0[31];
    OUTLINED_FUNCTION_6_42();
    sub_266D8C990();
    v0[10] = v86;
    OUTLINED_FUNCTION_3_60();
    v0[11] = sub_266D8CA74(v96, v97);
    __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_50_7();
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD38]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[64] = v98;
    *v98 = v99;
    v98[1] = sub_266D889EC;
    v100 = v0[36];
    v101 = v0[26];
  }

  OUTLINED_FUNCTION_112();

  __asm { BR              X4 }
}

uint64_t sub_266D88748()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *(v4 + 488);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D88850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v30 = v27[62];
  v31 = v27[32];
  v32 = v27[33];

  OUTLINED_FUNCTION_6_42();
  sub_266D8C9E8(v31, v33);
  sub_266D8C9E8(v32, v26);
  v34 = OUTLINED_FUNCTION_9_26();
  v35(v34);
  v36 = OUTLINED_FUNCTION_18_3();
  v37(v36);
  OUTLINED_FUNCTION_61_5();
  sub_266C47654(v38, v39, v40);
  v41 = OUTLINED_FUNCTION_38();
  sub_266C47654(v41, v42, &qword_266DB0080);
  sub_266C47654(v28, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v29, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D889EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *(v4 + 488);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D88AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v29 = *(v26 + 496);
  v30 = *(v26 + 248);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v30, v31);
  v32 = OUTLINED_FUNCTION_9_26();
  v33(v32);
  v34 = OUTLINED_FUNCTION_18_3();
  v35(v34);
  OUTLINED_FUNCTION_61_5();
  sub_266C47654(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_38();
  sub_266C47654(v39, v40, &qword_266DB0080);
  sub_266C47654(v27, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v28, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D88C78()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 520);
  v6 = *(v4 + 488);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D88D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v29 = *(v26 + 496);
  v30 = *(v26 + 240);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v30, v31);
  v32 = OUTLINED_FUNCTION_9_26();
  v33(v32);
  v34 = OUTLINED_FUNCTION_18_3();
  v35(v34);
  OUTLINED_FUNCTION_61_5();
  sub_266C47654(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_38();
  sub_266C47654(v39, v40, &qword_266DB0080);
  sub_266C47654(v27, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v28, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D88F04()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 528);
  v3 = *(v1 + 488);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D89004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v30 = *(v27 + 496);

  v31 = OUTLINED_FUNCTION_9_26();
  v32(v31);
  v33 = OUTLINED_FUNCTION_18_3();
  v34(v33);
  OUTLINED_FUNCTION_61_5();
  sub_266C47654(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_38();
  sub_266C47654(v38, v39, &qword_266DB0080);
  sub_266C47654(v28, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v29, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D89180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  v24 = v22[56];
  v23 = v22[57];
  v25 = v22[52];
  v26 = v22[53];
  v28 = v22[50];
  v27 = v22[51];
  v30 = v22[48];
  v29 = v22[49];
  v32 = v22[46];
  v31 = v22[47];
  v43 = v22[45];
  v44 = v22[42];
  v45 = v22[41];
  v46 = v22[40];
  v47 = v22[39];
  v48 = v22[36];
  v49 = v22[33];
  v50 = v22[32];
  v51 = v22[31];
  v52 = v22[30];

  OUTLINED_FUNCTION_28();
  v33 = v22[60];
  OUTLINED_FUNCTION_25_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, a20, a21, a22);
}

uint64_t sub_266D892BC()
{
  OUTLINED_FUNCTION_22_0();
  v1[43] = v2;
  v1[44] = v0;
  v1[42] = v3;
  v4 = sub_266DA7E5C();
  v1[45] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[46] = v5;
  v7 = *(v6 + 64);
  v1[47] = OUTLINED_FUNCTION_62();
  v8 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v8);
  v10 = *(v9 + 64);
  v1[48] = OUTLINED_FUNCTION_62();
  v11 = type metadata accessor for Snippets();
  v1[49] = v11;
  OUTLINED_FUNCTION_4_3(v11);
  v13 = *(v12 + 64);
  v1[50] = OUTLINED_FUNCTION_64();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v14 = sub_266DA80AC();
  v1[58] = v14;
  OUTLINED_FUNCTION_11_3(v14);
  v1[59] = v15;
  v17 = *(v16 + 64);
  v1[60] = OUTLINED_FUNCTION_64();
  v1[61] = swift_task_alloc();
  v18 = sub_266DA7C0C();
  v1[62] = v18;
  OUTLINED_FUNCTION_11_3(v18);
  v1[63] = v19;
  v21 = *(v20 + 64);
  v1[64] = OUTLINED_FUNCTION_64();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v22);
  v24 = *(v23 + 64);
  v1[67] = OUTLINED_FUNCTION_64();
  v1[68] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v25);
  v27 = *(v26 + 64);
  v1[69] = OUTLINED_FUNCTION_64();
  v1[70] = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v28);
  v1[71] = v29;
  v1[72] = *(v30 + 64);
  v1[73] = OUTLINED_FUNCTION_64();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_266D89620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  if (qword_2800C9430 != -1)
  {
    OUTLINED_FUNCTION_11_33();
  }

  v37 = sub_266DA94AC();
  __swift_project_value_buffer(v37, qword_2800E64F0);
  v38 = sub_266DA948C();
  v39 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v39))
  {
    v40 = OUTLINED_FUNCTION_11();
    *v40 = 0;
    _os_log_impl(&dword_266C08000, v38, v39, "FindFriend.HandleIntentStrategy.makePreHandleIntentOutput() called", v40, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v41 = v36[44];

  v43 = v41[15];
  v42 = v41[16];
  __swift_project_boxed_opaque_existential_1(v41 + 12, v43);
  (*(*(v42 + 8) + 16))(v43);
  v44 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  OUTLINED_FUNCTION_40_3();
  if (sub_266DA7B7C())
  {
    v45 = v41[4];
    __swift_project_boxed_opaque_existential_1(v36[44], v41[3]);
    OUTLINED_FUNCTION_38();
    if (sub_266DA7B7C())
    {
      v46 = v36[86];
      v47 = v36[85];
      v48 = v36[49];
      v49 = v36[44];
      v36[87] = *(v49 + 224);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v48);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v56 = OUTLINED_FUNCTION_101();
      v36[88] = v56;
      *(v56 + 16) = xmmword_266DAE3B0;
      v57 = *(v49 + 48);
      v58 = swift_task_alloc();
      v36[89] = v58;
      *v58 = v36;
      OUTLINED_FUNCTION_88_0(v58);
      OUTLINED_FUNCTION_43_8();

      return sub_266CB5B70(v59);
    }

    else
    {
      v74 = v36[48];
      v75 = v36[43];
      v76 = v36[44];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDE48, &unk_266DBE958);
      v77 = sub_266DA7FCC();
      v78 = [v77 friend];
      v36[97] = v78;

      sub_266DA900C();
      v79 = [v78 person];
      v81 = v41[3];
      v80 = v41[4];
      __swift_project_boxed_opaque_existential_1(v76, v81);
      sub_266DA7AFC();
      v36[98] = sub_266DA8FBC();
      if (v78)
      {
        v82 = sub_266CA1908(v78);
      }

      else
      {
        v82 = 0;
      }

      v36[99] = v82;
      v83 = v36[78];
      v84 = v36[77];
      v85 = v36[49];
      v86 = v36[47];
      v87 = v36[43];
      v88 = v36[44];
      v89 = sub_266DA7FCC();
      v90 = sub_266DA7FBC();
      sub_266D86900(v89, v90, v86);

      v36[100] = *(v88 + 224);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v85);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v97 = OUTLINED_FUNCTION_101();
      v36[101] = v97;
      *(v97 + 16) = xmmword_266DAE3B0;
      v98 = *(v88 + 48);
      v99 = swift_task_alloc();
      v36[102] = v99;
      *v99 = v36;
      OUTLINED_FUNCTION_88_0(v99);
      OUTLINED_FUNCTION_43_8();

      return sub_266CB38D4(v100);
    }
  }

  else
  {
    v62 = sub_266DA948C();
    v63 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v63))
    {
      v64 = OUTLINED_FUNCTION_11();
      *v64 = 0;
      _os_log_impl(&dword_266C08000, v62, v63, "Device is not a watch, sending empty pre handle intent output.", v64, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v65 = v36[42];

    sub_266DA7C4C();
    sub_266DA7C3C();
    OUTLINED_FUNCTION_2_71();

    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_43_8();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
  }
}

uint64_t sub_266D89B80()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 712);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[90] = v0;

  if (v0)
  {
    v11 = v5[86];
    OUTLINED_FUNCTION_84_0(v5[85]);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[91] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266D8A2E0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 744);
  v6 = *(v4 + 704);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D8A3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  v38 = v36[92];
  v70 = v36[85];
  v71 = v36[86];
  v39 = v36[66];
  v41 = v36[62];
  v40 = v36[63];
  v42 = v36[61];
  v44 = v36[58];
  v43 = v36[59];
  v46 = v36[56];
  v45 = v36[57];

  OUTLINED_FUNCTION_54_7();
  sub_266D8C9E8(v46, v47);
  sub_266D8C9E8(v45, v37);
  v48 = *(v43 + 8);
  v49 = OUTLINED_FUNCTION_83();
  v50(v49);
  v51 = *(v40 + 8);
  v52 = OUTLINED_FUNCTION_38();
  v53(v52);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v54, v55, v56);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v57, v58, v59);
  v60 = OUTLINED_FUNCTION_108_4();
  sub_266C47654(v60, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v40 + 8, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v70, v71, a33, a34, a35, a36);
}

uint64_t sub_266D8A608()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 752);
  v6 = *(v4 + 704);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D8A708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_60_2();
  v38 = v37[62];
  v39 = v37[63];
  v40 = v37[61];
  v41 = v37[58];
  v42 = v37[59];
  v43 = v37[55];

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v43, v44);
  v45 = OUTLINED_FUNCTION_22_5();
  v46(v45);
  v47 = *(v39 + 8);
  v48 = OUTLINED_FUNCTION_38();
  v49(v48);
  v50 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v50, v51, v52);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v53, v54, v55);
  v56 = OUTLINED_FUNCTION_108_4();
  sub_266C47654(v56, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v36, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8A900()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 760);
  v6 = *(v4 + 704);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D8AA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_60_2();
  v38 = v37[62];
  v39 = v37[63];
  v40 = v37[61];
  v41 = v37[58];
  v42 = v37[59];
  v43 = v37[54];

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v43, v44);
  v45 = OUTLINED_FUNCTION_22_5();
  v46(v45);
  v47 = *(v39 + 8);
  v48 = OUTLINED_FUNCTION_38();
  v49(v48);
  v50 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v50, v51, v52);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v53, v54, v55);
  v56 = OUTLINED_FUNCTION_108_4();
  sub_266C47654(v56, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v36, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8ABF8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 768);
  v3 = *(v1 + 704);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D8ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_60_2();
  v38 = v37[62];
  v39 = v37[63];
  v40 = v37[61];
  v41 = v37[58];
  v42 = v37[59];

  v43 = *(v42 + 8);
  v44 = OUTLINED_FUNCTION_83();
  v45(v44);
  v46 = *(v39 + 8);
  v47 = OUTLINED_FUNCTION_38();
  v48(v47);
  v49 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v49, v50, v51);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v52, v53, v54);
  v55 = OUTLINED_FUNCTION_108_4();
  sub_266C47654(v55, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v36, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8AEE4()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 816);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[103] = v0;

  if (v0)
  {
    v11 = v5[78];
    OUTLINED_FUNCTION_84_0(v5[77]);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[104] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266D8B65C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 848);
  v6 = *(v4 + 808);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D8B764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  v38 = v36[105];
  v73 = v36[77];
  v74 = v36[78];
  v39 = v36[63];
  v40 = v36[64];
  v41 = v36[62];
  v42 = v36[59];
  v43 = v36[60];
  v44 = v36[58];
  v46 = v36[52];
  v45 = v36[53];

  OUTLINED_FUNCTION_54_7();
  sub_266D8C9E8(v46, v47);
  sub_266D8C9E8(v45, v37);
  v48 = *(v42 + 8);
  v49 = OUTLINED_FUNCTION_83();
  v50(v49);
  v51 = *(v39 + 8);
  v52 = OUTLINED_FUNCTION_38();
  v53(v52);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v54, v55, v56);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v57, v58, v59);
  v60 = OUTLINED_FUNCTION_21_21();
  sub_266C47654(v60, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(&qword_2800CA050, &qword_2800CA048, &unk_266DAFC00);

  v61 = *(v45 + 8);
  v62 = OUTLINED_FUNCTION_40_3();
  v63(v62);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v73, v74, a33, a34, a35, a36);
}

uint64_t sub_266D8B9AC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 856);
  v6 = *(v4 + 808);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D8BAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_73_2();
  v39 = *(v36 + 408);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v39, v40);
  v41 = OUTLINED_FUNCTION_22_5();
  v42(v41);
  v43 = *(v38 + 8);
  v44 = OUTLINED_FUNCTION_38();
  v45(v44);
  v46 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v46, v47, v48);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v49, v50, v51);
  v52 = OUTLINED_FUNCTION_21_21();
  sub_266C47654(v52, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(&qword_2800CA050, &qword_2800CA048, &unk_266DAFC00);

  v53 = *(v39 + 8);
  v54 = OUTLINED_FUNCTION_40_3();
  v55(v54);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8BCC0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 864);
  v6 = *(v4 + 808);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D8BDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_73_2();
  v39 = *(v36 + 400);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v39, v40);
  v41 = OUTLINED_FUNCTION_22_5();
  v42(v41);
  v43 = *(v38 + 8);
  v44 = OUTLINED_FUNCTION_38();
  v45(v44);
  v46 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v46, v47, v48);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v49, v50, v51);
  v52 = OUTLINED_FUNCTION_21_21();
  sub_266C47654(v52, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(&qword_2800CA050, &qword_2800CA048, &unk_266DAFC00);

  v53 = *(v39 + 8);
  v54 = OUTLINED_FUNCTION_40_3();
  v55(v54);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8BFD4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 872);
  v3 = *(v1 + 808);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D8C0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  v37 = v36[105];
  v38 = v36[78];
  v39 = v36[77];
  v41 = v36[63];
  v40 = v36[64];
  v42 = v36[62];
  v44 = v36[59];
  v43 = v36[60];
  v45 = v36[58];

  v46 = *(v44 + 8);
  v47 = OUTLINED_FUNCTION_83();
  v48(v47);
  v49 = *(v41 + 8);
  v50 = OUTLINED_FUNCTION_38();
  v51(v50);
  v52 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v52, v53, v54);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v55, v56, v57);
  v58 = OUTLINED_FUNCTION_21_21();
  sub_266C47654(v58, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(&qword_2800CA050, &qword_2800CA048, &unk_266DAFC00);

  v59 = *(v41 + 16);
  v60 = OUTLINED_FUNCTION_40_3();
  v61(v60);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8C2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v64 = v38[90];
  v39 = v38[88];
  v40 = v38[86];
  v41 = v38[85];
  v42 = v38[84];
  v43 = v38[83];
  v44 = v38[82];
  v45 = v38[81];
  v46 = v38[80];
  v47 = v38[79];
  v48 = v38[78];
  v60 = v38[77];
  v61 = v38[76];
  v62 = v38[75];
  v63 = v38[74];
  v49 = v38[73];
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_48_9(v50);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_16_11();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, v60, v61, v62, v63, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v64, a35, a36, a37, a38);
}

uint64_t sub_266D8C4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v39 = v38[99];
  v40 = v38[98];
  v41 = v38[97];
  v43 = v38[46];
  v42 = v38[47];
  v44 = v38[45];

  v45 = *(v43 + 8);
  v46 = OUTLINED_FUNCTION_42();
  v47(v46);
  v73 = v38[103];
  v48 = v38[101];
  v49 = v38[86];
  v50 = v38[85];
  v51 = v38[84];
  v52 = v38[83];
  v53 = v38[82];
  v54 = v38[81];
  v55 = v38[80];
  v56 = v38[79];
  v57 = v38[78];
  v69 = v38[77];
  v70 = v38[76];
  v71 = v38[75];
  v72 = v38[74];
  v58 = v38[73];
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_48_9(v59);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_16_11();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, v69, v70, v71, v72, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v73, a35, a36, a37, a38);
}

uint64_t sub_266D8C69C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D892BC();
}

uint64_t sub_266D8C744()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D82934();
}

uint64_t sub_266D8C7EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266D879D4();
}

uint64_t sub_266D8C894()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C5A320;

  return sub_266D8279C();
}

unint64_t sub_266D8C93C()
{
  result = qword_2800CDE40;
  if (!qword_2800CDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE40);
  }

  return result;
}

uint64_t sub_266D8C990()
{
  OUTLINED_FUNCTION_6_22();
  v2 = v1(0);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return v0;
}

uint64_t sub_266D8C9E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_8_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266D8CA74(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_41();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266D8CAB8()
{
  OUTLINED_FUNCTION_6_22();
  v2 = v1(0);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return v0;
}

uint64_t objectdestroyTm_15()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    OUTLINED_FUNCTION_75();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v76 = v12 + v28;
        v1 = type metadata accessor for Location();
        v77 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v77, v78, v1))
        {
          v79 = v1[7];
          v80 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v80);
          (*(v81 + 8))(&v76[v79]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v76[v1[11]];
          v82 = type metadata accessor for Address();
          v83 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v83, v84, v82))
          {
            sub_266DA919C();
            v85 = OUTLINED_FUNCTION_109();
            v243 = v86;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, v87, v86);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v89, v90, v91, v92, v93, v94, v95, v240, v243);
              (*(v96 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v82[5]);
            OUTLINED_FUNCTION_70(v82[6]);
            v97 = OUTLINED_FUNCTION_70(v82[7]);
            v105 = OUTLINED_FUNCTION_115(v97, v98, v99, v100, v101, v102, v103, v104, v240, v243);
            if (!v105)
            {
              OUTLINED_FUNCTION_20_2(v105, v106, v107, v108, v109, v110, v111, v112, v240, v244);
              (*(v113 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v82[9]);
            OUTLINED_FUNCTION_70(v82[10]);
            OUTLINED_FUNCTION_70(v82[11]);
            v114 = *&v2[v82[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            v61 = OUTLINED_FUNCTION_78();
            if (!__swift_getEnumTagSinglePayload(v61, v62, v3))
            {
              sub_266DA919C();
              v63 = OUTLINED_FUNCTION_78();
              v242 = v64;
              v66 = __swift_getEnumTagSinglePayload(v63, v65, v64);
              if (!v66)
              {
                OUTLINED_FUNCTION_20_2(v66, v67, v68, v69, v70, v71, v72, v73, v240, v242);
                (*(v74 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v240 = v3[8];
              if (!__swift_getEnumTagSinglePayload(&v60[v240], 1, v242))
              {
                (*(*(v242 - 8) + 8))(&v60[v240]);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v75 = *&v60[v3[12]];
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v115 = v12[1];

        v116 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v117);
        }

        v118 = v12[8];

        v119 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v120 = v12[1];

        v121 = v12[3];

        v122 = type metadata accessor for Snippets.Contact();
        v123 = OUTLINED_FUNCTION_98(v122);
        OUTLINED_FUNCTION_8_0(v123);
        (*(v124 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v125 = (v0 + v10);
  v126 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v126, v127, v13))
  {
    OUTLINED_FUNCTION_75();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v152 = *(v125 + 1);

        v153 = *(v125 + 3);

        v154 = type metadata accessor for Snippets.Contact();
        v155 = OUTLINED_FUNCTION_96(v154);
        OUTLINED_FUNCTION_8_0(v155);
        (*(v156 + 8))(v1 + v125);
        v151 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v128 = *v125;
        goto LABEL_73;
      case 4u:
        v135 = *(v125 + 1);

        v136 = *(v125 + 3);

        v137 = *(v125 + 5);

        v138 = *(v125 + 6);

        v139 = &v125[*(type metadata accessor for Friend() + 40)];
        v140 = type metadata accessor for FriendLocation();
        v141 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v141, v142, v140))
        {
          break;
        }

        v143 = *(v139 + 1);

        v144 = &v139[*(v140 + 32)];
LABEL_59:
        v214 = type metadata accessor for Location();
        v215 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v215, v216, v214))
        {
          break;
        }

        v217 = v214[7];
        v218 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v218);
        (*(v219 + 8))(&v144[v217]);
        v220 = *&v144[v214[8] + 8];

        v221 = &v144[v214[11]];
        v222 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v222))
        {
          v223 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v221, 1, v223))
          {
            (*(*(v223 - 8) + 8))(v221, v223);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v224 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v221 + v224, 1, v223))
          {
            (*(*(v223 - 8) + 8))(v221 + v224, v223);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v225 = *(v221 + *(v2 + 12));
        }

        v226 = &v144[v214[12]];
LABEL_72:
        v238 = *(v226 + 1);
LABEL_73:

        break;
      case 5u:
        v163 = *(v125 + 1);

        v164 = *(v125 + 3);

        v165 = *(v125 + 5);

        v166 = *(v125 + 6);

        v167 = &v125[*(type metadata accessor for Friend() + 40)];
        v168 = type metadata accessor for FriendLocation();
        v169 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v169, v170, v168))
        {
          v171 = *(v167 + 1);

          v172 = &v167[*(v168 + 32)];
          v173 = type metadata accessor for Location();
          v174 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v174, v175, v173))
          {
            v176 = v173[7];
            v177 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v177);
            (*(v178 + 8))(&v172[v176]);
            v179 = *&v172[v173[8] + 8];

            v2 = &v172[v173[11]];
            v180 = type metadata accessor for Address();
            v181 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v181, v182, v180))
            {
              sub_266DA919C();
              v183 = OUTLINED_FUNCTION_109();
              v245 = v184;
              v186 = __swift_getEnumTagSinglePayload(v183, v185, v184);
              if (!v186)
              {
                OUTLINED_FUNCTION_20_2(v186, v187, v188, v189, v190, v191, v192, v193, v240, v245);
                (*(v194 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v180[5]);
              OUTLINED_FUNCTION_70(v180[6]);
              v195 = OUTLINED_FUNCTION_70(v180[7]);
              v203 = OUTLINED_FUNCTION_115(v195, v196, v197, v198, v199, v200, v201, v202, v240, v245);
              if (!v203)
              {
                OUTLINED_FUNCTION_20_2(v203, v204, v205, v206, v207, v208, v209, v210, v241, v246);
                (*(v211 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v180[9]);
              OUTLINED_FUNCTION_70(v180[10]);
              OUTLINED_FUNCTION_70(v180[11]);
              v212 = *&v2[v180[12]];
            }

            v213 = *&v172[v173[12] + 8];
          }
        }

        v144 = &v125[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v227 = *(v125 + 1);

        v228 = *(v125 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v125 + 5), v229);
        }

        v230 = *(v125 + 8);

        v231 = *(v125 + 10);
        goto LABEL_73;
      case 7u:
        v157 = *(v125 + 1);

        v158 = *(v125 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v125 + 5), v159);
        }

        v160 = *(v125 + 8);

        v161 = *(v125 + 10);

        v162 = *(v125 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v125 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v145 = *(v125 + 1);

        v146 = *(v125 + 3);

        v147 = type metadata accessor for Snippets.Contact();
        v148 = OUTLINED_FUNCTION_96(v147);
        OUTLINED_FUNCTION_8_0(v148);
        (*(v149 + 8))(v1 + v125);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v150 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v150 + 20));

        v151 = *(v150 + 24);
        goto LABEL_71;
      case 0xAu:
        v232 = *(v125 + 1);

        v233 = *(v125 + 3);

        v234 = type metadata accessor for Snippets.Contact();
        v235 = OUTLINED_FUNCTION_96(v234);
        OUTLINED_FUNCTION_8_0(v235);
        (*(v236 + 8))(v1 + v125);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v237 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v237 + 28));

        v151 = *(v237 + 32);
LABEL_71:
        v226 = &v125[v151];
        goto LABEL_72;
      case 0xBu:
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v129);
        (*(v130 + 8))(v0 + v10);
        v131 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v132 = *(v131 + 20);
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v133);
        (*(v134 + 8))(&v125[v132]);
        if (*&v125[*(v131 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

_BYTE *_s20HandleIntentStrategyV14DialogBehaviorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D8D858()
{
  result = qword_2800CDE50;
  if (!qword_2800CDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_67()
{
  v3 = v0[89];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[78];
  v12 = v0[77];
  v18 = v0[76];
  v19 = v0[75];
  v20 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  v24 = v0[69];
  v25 = v0[68];
  v26 = v0[67];
  v27 = v0[66];
  v28 = v0[65];
  v29 = v0[64];
  v30 = v0[63];
  v31 = v0[62];
  v32 = v0[61];
  v33 = v0[60];
  v34 = v0[57];
  v35 = v0[56];
  v13 = v0[54];
  *(v1 - 136) = v0[55];
  *(v1 - 128) = v13;
  v14 = v0[52];
  *(v1 - 120) = v0[53];
  *(v1 - 112) = v14;
  v15 = v0[47];
  v16 = v0[48];
  *(v1 - 104) = v0[51];
  *(v1 - 96) = v16;
  *(v1 - 88) = v15;
}

uint64_t OUTLINED_FUNCTION_2_71()
{
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[78];
  v12 = v0[77];
  v17 = v0[76];
  v18 = v0[75];
  v19 = v0[74];
  v20 = v0[73];
  v21 = v0[70];
  v22 = v0[69];
  v23 = v0[68];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v27 = v0[64];
  v28 = v0[61];
  v29 = v0[60];
  v30 = v0[57];
  v31 = v0[56];
  v32 = v0[55];
  v33 = v0[54];
  v13 = v0[52];
  *(v1 - 128) = v0[53];
  *(v1 - 120) = v13;
  v14 = v0[50];
  *(v1 - 112) = v0[51];
  *(v1 - 104) = v14;
  v15 = v0[47];
  *(v1 - 96) = v0[48];
  *(v1 - 88) = v15;
}

void OUTLINED_FUNCTION_5_47()
{
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v1 = v0[65];
}

uint64_t OUTLINED_FUNCTION_9_26()
{
  v2 = v0[59];
  v15 = v0[57];
  v16 = v0[56];
  v3 = v0[52];
  v4 = v0[51];
  v17 = v0[53];
  v18 = v0[50];
  v19 = v0[49];
  v20 = v0[48];
  v21 = v0[47];
  v22 = v0[46];
  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[40];
  v23 = v0[45];
  v24 = v0[39];
  v8 = v0[37];
  v9 = v0[38];
  v10 = v0[35];
  v11 = v0[36];
  v12 = v0[33];
  v25 = v0[32];
  *(v1 - 88) = v0[31];
  *(v1 - 80) = v0[30];
  v13 = *(v10 + 8);
  return v11;
}

uint64_t OUTLINED_FUNCTION_11_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_21()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[69];
  result = v0[67];
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[45];
  return result;
}

uint64_t OUTLINED_FUNCTION_27_14@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v4 = v1[93];
  v5 = v1[92];
  v6 = v1[91];
  v7 = v1[90];
  v8 = v1[89];
  v9 = v1[87];
  v10 = v1[86];
  v11 = v1[85];
  v12 = v1[84];
  v13 = v1[83];
  v23 = v1[82];
  v24 = v1[81];
  v25 = v1[80];
  v26 = v1[79];
  v27 = v1[78];
  v28 = v1[77];
  v29 = v1[76];
  v30 = v1[75];
  v31 = v1[73];
  v32 = v1[72];
  v33 = v1[71];
  v34 = v1[70];
  v35 = v1[69];
  v36 = v1[68];
  v37 = v1[67];
  v38 = v1[66];
  v39 = v1[65];
  v40 = v1[64];
  v41 = v1[63];
  v42 = v1[62];
  v43 = v1[61];
  v15 = v1[56];
  v14 = v1[57];
  *(v2 - 168) = v1[60];
  *(v2 - 160) = v14;
  v17 = v1[54];
  v16 = v1[55];
  *(v2 - 152) = v15;
  *(v2 - 144) = v16;
  v19 = v1[52];
  v18 = v1[53];
  *(v2 - 136) = v17;
  *(v2 - 128) = v18;
  v20 = v1[51];
  *(v2 - 120) = v19;
  *(v2 - 112) = v20;
  v21 = v1[47];
  *(v2 - 104) = v1[48];
  *(v2 - 96) = v21;
}

uint64_t OUTLINED_FUNCTION_33_11(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(result + 56) = a12;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_9()
{
  v2 = v0[95];
  v3 = v0[93];
  v4 = v0[92];
  v5 = v0[91];
  v6 = v0[90];
  v7 = v0[89];
  *(v1 - 104) = v0[86];
  *(v1 - 96) = v7;
  v8 = v0[85];
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[57];
  return v0[55];
}

uint64_t OUTLINED_FUNCTION_48_9(uint64_t a1)
{
  v8 = v1[64];
  v9 = v1[61];
  v10 = v1[60];
  v11 = v1[57];
  v12 = v1[56];
  v13 = v1[55];
  v14 = v1[54];
  v4 = v1[52];
  *(v2 - 136) = v1[53];
  *(v2 - 128) = v4;
  v5 = v1[50];
  *(v2 - 120) = v1[51];
  *(v2 - 112) = v5;
  v6 = v1[47];
  *(v2 - 104) = v1[48];
  *(v2 - 96) = v6;
  *(a1 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_49_9()
{
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  *(v1 - 96) = v0[89];
  v6 = v0[86];
  v7 = v0[85];
  v8 = v0[84];
  v9 = v0[83];
  v10 = v0[56];
  return v0[54];
}

uint64_t OUTLINED_FUNCTION_50_7()
{

  return sub_266D8CAB8();
}

uint64_t OUTLINED_FUNCTION_60_2()
{
  result = v0[92];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[66];
  return result;
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_2()
{
  result = v0[105];
  v2 = v0[78];
  v3 = v0[77];
  v5 = v0[63];
  v4 = v0[64];
  v6 = v0[62];
  v8 = v0[59];
  v7 = v0[60];
  v9 = v0[58];
  return result;
}

uint64_t OUTLINED_FUNCTION_77_5()
{

  return sub_266C47654(v1, v0, v2);
}

void OUTLINED_FUNCTION_83_3()
{
  v2 = *(v0 + 712);
  *(v1 - 96) = *(v0 + 688);
  *(v1 - 88) = v2;
}

uint64_t OUTLINED_FUNCTION_87_1()
{
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[49];
  v7 = v0[46];
  v8 = v0[47];
  v9 = v0[45];
}

uint64_t OUTLINED_FUNCTION_88_4()
{
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[53];
  v5 = v0[49];
  v6 = v0[50];
  v7 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[88];
  v4 = v2[87];
  v5 = v2[61];
  return v2[42];
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[101];
  v4 = v2[100];
  v5 = v2[60];
  return v2[42];
}

uint64_t OUTLINED_FUNCTION_117_3()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_118_1()
{
  v3 = *(v1 - 88);

  return sub_266D8C9E8(v0, v3);
}

uint64_t type metadata accessor for SiriFindMyCommonCATsSimple()
{
  result = qword_2800CDE58;
  if (!qword_2800CDE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D8E028()
{
  v1 = *(MEMORY[0x277D55C70] + 4);
  v5 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_266CEE600;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000022, 0x8000000266DC4580, v3);
}

BOOL sub_266D8E0EC()
{
  v0 = sub_266DAAF8C();

  return v0 != 0;
}

BOOL sub_266D8E140@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266D8E0EC();
  *a2 = result;
  return result;
}

void sub_266D8E174(uint64_t a1@<X8>)
{
  strcpy(a1, "genitiveName");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_266D8E198(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_266D8E1B8, 0, 0);
}

uint64_t sub_266D8E1B8()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_266DAE4A0;
  *(v2 + 32) = 0x6E6F73726570;
  *(v2 + 40) = 0xE600000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_266DA900C();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(MEMORY[0x277D55C68] + 4);
  v9 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = sub_266D8E784();
  *v5 = v0;
  v5[1] = sub_266D8E310;
  v7 = v0[3];

  return v9(0xD00000000000001DLL, 0x8000000266DC4560, v2, &type metadata for SiriFindMyCommonCATsSimple.GenitiveNameDialogIds, v6);
}

uint64_t sub_266D8E310(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_266D8E468, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_266D8E468()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_266D8E4CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_266D8E520(a1, a2);
}

uint64_t sub_266D8E520(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA926C();
  v6 = OUTLINED_FUNCTION_37_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_266CEEA6C(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_266DA91AC();
  (*(v8 + 8))(a2, v2);
  sub_266C2A858(a1);
  return v16;
}

uint64_t sub_266D8E67C(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA926C();
  v6 = OUTLINED_FUNCTION_37_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_266DA91BC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

unint64_t sub_266D8E784()
{
  result = qword_2800CDE68;
  if (!qword_2800CDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriFindMyCommonCATsSimple.GenitiveNameDialogIds(_BYTE *result, int a2, int a3)
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

unint64_t sub_266D8E888()
{
  result = qword_2800CDE70;
  if (!qword_2800CDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE70);
  }

  return result;
}

uint64_t sub_266D8E8DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_266D8E91C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D8E980()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2800C91A0 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  v6 = sub_266DA94AC();
  __swift_project_value_buffer(v6, qword_2800E61E0);
  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v8))
  {
    v0 = swift_slowAlloc();
    *v0 = 0;
    _os_log_impl(&dword_266C08000, v7, v8, "SetSharedLocationVisibility.FlowStrategy.actionForInput() called", v0, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  sub_266DA816C();
  sub_266CD6764(v5, v28);
  (*(v2 + 8))(v5, v1);
  sub_266C6F230(v28, v26);
  if (v27 == 1)
  {
    sub_266C6F308(v26);
    sub_266C6F230(v28, v26);
    v9 = sub_266DA948C();
    v10 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      sub_266C6F230(v26, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v13 = sub_266C22A3C(v8, v0, &v25);

      *(v11 + 4) = v13;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v14, v15, "SetSharedLocationVisibility.FlowStrategy.actionForInput() handling task: %s");
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v26, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CBC();
  }

  else
  {
    if (v27 == 255)
    {
      sub_266C3A088(v26, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      sub_266C6F308(v26);
    }

    sub_266C6F230(v28, v26);
    v16 = sub_266DA948C();
    v17 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      sub_266C6F230(v26, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v20 = sub_266C22A3C(v8, v0, &v25);

      *(v18 + 4) = v20;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v21, v22, "SetSharedLocationVisibility.FlowStrategy.actionForInput() ignoring unsupported task: %s");
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v26, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CCC();
  }

  return sub_266C3A088(v28, &qword_2800CA870, &qword_266DB1F08);
}

uint64_t sub_266D8ED84(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_266D8EDA8, 0, 0);
}

uint64_t sub_266D8EDA8()
{
  if (qword_2800C91A0 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E61E0);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "SetSharedLocationVisibility.FlowStrategy.makeIntentFromParse() called", v4, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 152);

  sub_266CD6764(v6, v0 + 16);
  sub_266C6F230(v0 + 16, v0 + 64);
  v7 = *(v0 + 104);
  if (v7 == 1)
  {
    v8 = *(v0 + 160);
    sub_266C0B0D8((v0 + 64), v0 + 112);
    v9 = *(v0 + 160);
    if (v8)
    {
      v10 = *(v0 + 160);
    }

    else
    {
      v10 = [objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntent()) init];
    }

    v14 = *__swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    *(v0 + 88) = &type metadata for SetSharedLocationVisibilityIntentWrapper;
    *(v0 + 96) = &off_287866DF8;
    *(v0 + 64) = v14;
    v15 = *__swift_project_boxed_opaque_existential_1((v0 + 64), &type metadata for SetSharedLocationVisibilityIntentWrapper);
    v16 = v9;
    [v10 setVisibility_];
    __swift_destroy_boxed_opaque_existential_0((v0 + 64));
    v17 = v10;
    v18 = sub_266DA948C();
    v19 = sub_266DAAB0C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_266C08000, v18, v19, "SetSharedLocationVisibility Intent created: %@", v20, 0xCu);
      sub_266C3A088(v21, &qword_2800C9F78, &unk_266DB1430);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_33_6();
    }

    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    OUTLINED_FUNCTION_43_4();

    return v23(v17);
  }

  else
  {
    if (v7 == 255)
    {
      sub_266C3A088(v0 + 64, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      sub_266C6F308(v0 + 64);
    }

    sub_266C4E844();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_266D8F0E8()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D8F1A8, 0, 0);
}

uint64_t sub_266D8F1A8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = **(v0 + 32);
  type metadata accessor for SetSharedLocationVisibilityIntent();

  v7 = v6;
  v8 = v5;
  sub_266DA7A3C();
  sub_266DA7A9C();
  v9 = sub_266DA7A8C();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43_4();

  return v10(v9);
}

uint64_t sub_266D8F29C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266D02CA0;

  return sub_266D8ED84(a1, a2);
}

uint64_t sub_266D8F340()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D03318;

  return sub_266D8F0E8();
}

unint64_t sub_266D8F3E8()
{
  result = qword_2800CDE78;
  if (!qword_2800CDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE78);
  }

  return result;
}

unint64_t sub_266D8F440()
{
  result = qword_2800CDE80;
  if (!qword_2800CDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE80);
  }

  return result;
}

unint64_t sub_266D8F498()
{
  result = qword_2800CDE88;
  if (!qword_2800CDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_90()
{

  return swift_once();
}

int *Snippets.SetGeoFenceResult.init(contact:latitude:longitude:notifyTitle:notifyMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  sub_266D2B9FC(a1, a6);
  result = type metadata accessor for Snippets.SetGeoFenceResult();
  *(a6 + result[5]) = a7;
  *(a6 + result[6]) = a8;
  v16 = (a6 + result[7]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a6 + result[8]);
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t type metadata accessor for Snippets.SetGeoFenceResult()
{
  result = qword_2800CDEA8;
  if (!qword_2800CDEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Snippets.SetGeoFenceResult.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Snippets.Contact();
  v7 = *(v6 + 24);
  if ((sub_266DA748C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_64(*(v6 + 28));
  v10 = v4 && v8 == v9;
  if (!v10 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for Snippets.SetGeoFenceResult();
  if (*(a1 + v11[5]) != *(a2 + v11[5]))
  {
    return 0;
  }

  v12 = v11;
  if (*(a1 + v11[6]) != *(a2 + v11[6]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_64(v11[7]);
  v15 = v4 && v13 == v14;
  if (!v15 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_64(v12[8]);
  if (v4 && v16 == v17)
  {
    return 1;
  }

  return sub_266DAB17C();
}

uint64_t Snippets.SetGeoFenceResult.latitude.setter(double a1)
{
  result = type metadata accessor for Snippets.SetGeoFenceResult();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Snippets.SetGeoFenceResult.latitude.modify()
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Snippets.SetGeoFenceResult() + 20);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Snippets.SetGeoFenceResult.longitude.setter(double a1)
{
  result = type metadata accessor for Snippets.SetGeoFenceResult();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Snippets.SetGeoFenceResult.longitude.modify()
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Snippets.SetGeoFenceResult() + 24);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Snippets.SetGeoFenceResult.notifyTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for Snippets.SetGeoFenceResult() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Snippets.SetGeoFenceResult.notifyTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippets.SetGeoFenceResult() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Snippets.SetGeoFenceResult.notifyTitle.modify()
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Snippets.SetGeoFenceResult() + 28);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Snippets.SetGeoFenceResult.notifyMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for Snippets.SetGeoFenceResult() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Snippets.SetGeoFenceResult.notifyMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippets.SetGeoFenceResult() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Snippets.SetGeoFenceResult.notifyMessage.modify()
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Snippets.SetGeoFenceResult() + 32);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_266D8FA30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6954796669746F6ELL && a2 == 0xEB00000000656C74;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x654D796669746F6ELL && a2 == 0xED00006567617373)
        {

          return 4;
        }

        else
        {
          v10 = sub_266DAB17C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_266D8FBEC(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x656475746974616CLL;
      break;
    case 2:
      result = 0x64757469676E6F6CLL;
      break;
    case 3:
      result = 0x6954796669746F6ELL;
      break;
    case 4:
      result = 0x654D796669746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266D8FCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D8FA30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D8FCD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266D8FBE4();
  *a1 = result;
  return result;
}

uint64_t sub_266D8FCF8(uint64_t a1)
{
  v2 = sub_266D8FF88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D8FD34(uint64_t a1)
{
  v2 = sub_266D8FF88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.SetGeoFenceResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDE90, &qword_266DBECC0);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D8FF88();
  sub_266DAB36C();
  v26[15] = 0;
  type metadata accessor for Snippets.Contact();
  OUTLINED_FUNCTION_1_68();
  sub_266D9048C(v14, v15);
  OUTLINED_FUNCTION_6_43();
  sub_266DAB11C();
  if (!v2)
  {
    v16 = type metadata accessor for Snippets.SetGeoFenceResult();
    v17 = *(v3 + v16[5]);
    v26[14] = 1;
    OUTLINED_FUNCTION_6_43();
    sub_266DAB10C();
    v18 = *(v3 + v16[6]);
    v26[13] = 2;
    OUTLINED_FUNCTION_6_43();
    sub_266DAB10C();
    v19 = (v3 + v16[7]);
    v20 = *v19;
    v21 = v19[1];
    v26[12] = 3;
    OUTLINED_FUNCTION_6_43();
    sub_266DAB0EC();
    v22 = (v3 + v16[8]);
    v23 = *v22;
    v24 = v22[1];
    v26[11] = 4;
    OUTLINED_FUNCTION_6_43();
    sub_266DAB0EC();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_266D8FF88()
{
  result = qword_2800CDE98;
  if (!qword_2800CDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE98);
  }

  return result;
}

uint64_t Snippets.SetGeoFenceResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37[0] = a2;
  v4 = type metadata accessor for Snippets.Contact();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDEA0, &qword_266DBECC8);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v37[1] = v12;
  v37[2] = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = type metadata accessor for Snippets.SetGeoFenceResult();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_266D8FF88();
  sub_266DAB34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  v43 = 0;
  OUTLINED_FUNCTION_1_68();
  sub_266D9048C(v23, v24);
  sub_266DAB05C();
  sub_266D2B9FC(v9, v20);
  v42 = 1;
  OUTLINED_FUNCTION_2_72();
  sub_266DAB03C();
  *&v20[v15[5]] = v25;
  v41 = 2;
  OUTLINED_FUNCTION_2_72();
  sub_266DAB03C();
  *&v20[v15[6]] = v26;
  v40 = 3;
  OUTLINED_FUNCTION_2_72();
  v27 = sub_266DAB01C();
  v28 = &v20[v15[7]];
  *v28 = v27;
  v28[1] = v29;
  v39 = 4;
  OUTLINED_FUNCTION_2_72();
  v30 = sub_266DAB01C();
  v32 = v31;
  v33 = OUTLINED_FUNCTION_3_61();
  v34(v33);
  v35 = &v20[v15[8]];
  *v35 = v30;
  v35[1] = v32;
  sub_266D90348(v20, v37[0], type metadata accessor for Snippets.SetGeoFenceResult);
  __swift_destroy_boxed_opaque_existential_0(v38);
  return sub_266D903A8();
}

uint64_t sub_266D90348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266D903A8()
{
  v1 = OUTLINED_FUNCTION_7_8();
  v3 = v2(v1);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_266D9048C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266D90530()
{
  result = type metadata accessor for Snippets.Contact();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s17SetGeoFenceResultV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D90698()
{
  result = qword_2800CDEB8;
  if (!qword_2800CDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDEB8);
  }

  return result;
}

unint64_t sub_266D906F0()
{
  result = qword_2800CDEC0;
  if (!qword_2800CDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDEC0);
  }

  return result;
}

unint64_t sub_266D90748()
{
  result = qword_2800CDEC8;
  if (!qword_2800CDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDEC8);
  }

  return result;
}

void sub_266D907E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_266DA85BC();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = sub_266DA869C();
  if (v16)
  {
    v17 = v16;
    v48 = a1;
    v49 = a2;
    v18 = 0;
    v19 = *(v16 + 16);
    for (i = (v9 + 8); ; (*i)(v15, v6))
    {
      if (v19 == v18)
      {

        a2 = v49;
        goto LABEL_8;
      }

      if (v18 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v2 = *(v9 + 16);
      v2(v15, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v6);
      sub_266DA859C();
      v3 = sub_266DAAF8C();

      if (v3 < 5)
      {
        break;
      }

      ++v18;
    }

    v47 = v6;

    if (qword_2800C94A8 == -1)
    {
      goto LABEL_11;
    }

LABEL_27:
    OUTLINED_FUNCTION_0_91();
LABEL_11:
    v24 = sub_266DA94AC();
    __swift_project_value_buffer(v24, qword_2800CDED0);
    v25 = v50;
    v26 = v47;
    v2(v50, v15, v47);
    v27 = sub_266DA948C();
    v28 = sub_266DAAB0C();
    if (os_log_type_enabled(v27, v28))
    {
      v46 = v28;
      v29 = 0xEC0000005F24213ELL;
      v30 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52 = v45;
      *v30 = 136315394;
      v31 = OUTLINED_FUNCTION_15_26();
      a2 = v49;
      switch(v3)
      {
        case 1:
          v31 = OUTLINED_FUNCTION_7_37();
          break;
        case 2:
          v29 = 0xEE005F24213E6C6FLL;
          v31 = OUTLINED_FUNCTION_9_27();
          break;
        case 3:
          v29 = 0xEB000000005F2421;
          v31 = OUTLINED_FUNCTION_6_44();
          break;
        case 4:
          v29 = 0xED00005F24213E72;
          v31 = OUTLINED_FUNCTION_8_24();
          break;
        default:
          break;
      }

      v37 = sub_266C22A3C(v31, v29, &v52);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2080;
      v38 = sub_266DA859C();
      v39 = v25;
      v41 = v40;
      v42 = *i;
      v43 = v47;
      (*i)(v39, v47);
      v44 = sub_266C22A3C(v38, v41, &v52);

      *(v30 + 14) = v44;
      _os_log_impl(&dword_266C08000, v27, v46, "Found valid place label: %s, %s", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();

      v42(v15, v43);
      v22 = 0;
      v23 = 0;
    }

    else
    {

      v36 = *i;
      (*i)(v25, v26);
      v36(v15, v26);
      v22 = 0;
      v23 = 0;
      a2 = v49;
    }
  }

  else
  {
LABEL_8:
    v20 = sub_266DA897C();
    if (v21)
    {
      v3 = v20;
      v22 = v21;

      v23 = 1;
    }

    else
    {
      if (qword_2800C94A8 != -1)
      {
        OUTLINED_FUNCTION_0_91();
      }

      v32 = sub_266DA94AC();
      __swift_project_value_buffer(v32, qword_2800CDED0);
      v33 = sub_266DA948C();
      v34 = sub_266DAAAEC();
      if (os_log_type_enabled(v33, v34))
      {
        v3 = 2;
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_266C08000, v33, v34, "No uso identifier or label for contact trigger contact address", v35, 2u);
        OUTLINED_FUNCTION_6_1();

        v22 = 0;
      }

      else
      {

        v22 = 0;
        v3 = 2;
      }

      v23 = 2;
    }
  }

  *a2 = v3;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
}

void sub_266D90D14(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_2800C94A8 != -1)
  {
    OUTLINED_FUNCTION_0_91();
  }

  v9 = sub_266DA94AC();
  v10 = __swift_project_value_buffer(v9, qword_2800CDED0);

  v11 = sub_266DA948C();
  v12 = sub_266DAAB0C();

  v35 = a1;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v13 = 136315394;
    if (a2)
    {
      v14 = a1;
    }

    else
    {
      v14 = 45;
    }

    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = 0xE100000000000000;
    }

    v16 = sub_266C22A3C(v14, v15, v37);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    if (a4)
    {
      v17 = a3;
    }

    else
    {
      v17 = 45;
    }

    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0xE100000000000000;
    }

    v19 = sub_266C22A3C(v17, v18, v37);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_266C08000, v11, v12, "Creating LocationLabel with personPlaceName: %s, personPlaceReference: %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  if (!a2)
  {

    v25 = sub_266DA948C();
    v26 = sub_266DAAB0C();
    if (os_log_type_enabled(v25, v26))
    {
      v24 = 2;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266C08000, v25, v26, "Person place name missing, defaulting to current location.", v27, 2u);
      OUTLINED_FUNCTION_6_1();

      v23 = 0;
      goto LABEL_30;
    }

LABEL_29:
    v23 = 0;
    v24 = 2;
    goto LABEL_30;
  }

  v20 = v35;
  v21 = v35 == 0xD000000000000010 && 0x8000000266DC1CA0 == a2;
  if (v21 || (OUTLINED_FUNCTION_14_34(), (sub_266DAB17C() & 1) != 0))
  {

    if (a4)
    {
      v22 = sub_266C573DC();
      if (v22 != 2)
      {
        v23 = 0;
        v24 = (v22 & 1) == 0;
LABEL_30:
        v28 = 2;
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

  v29 = 0xEC0000005F24213ELL;

  OUTLINED_FUNCTION_14_34();
  sub_266C5739C();
  OUTLINED_FUNCTION_4_57();
  v30 = v10 | 0x656D6F6800000000;
  switch(v31)
  {
    case 1:
      OUTLINED_FUNCTION_4_57();
      v30 = v30 | 0x6B726F7700000000;
      goto LABEL_37;
    case 2:
      OUTLINED_FUNCTION_11_34();
      OUTLINED_FUNCTION_4_57();
      v30 = v30 | 0x6F68637300000000;
      goto LABEL_37;
    case 3:
      v29 = 0xEB000000005F2421;
      OUTLINED_FUNCTION_4_57();
      v30 = v30 | 0x3E6D796700000000;
      goto LABEL_37;
    case 4:
      OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_4_57();
      v30 = v30 | 0x6568746F00000000;
      goto LABEL_37;
    case 5:
      goto LABEL_38;
    default:
LABEL_37:

      v20 = v30;
      a2 = v29;
LABEL_38:
      OUTLINED_FUNCTION_14_34();
      v32._countAndFlagsBits = sub_266DAA73C();
      DefaultLocationLabel.init(rawValue:)(v32);
      v24 = LOBYTE(v37[0]);
      if (LOBYTE(v37[0]) == 5)
      {
        OUTLINED_FUNCTION_14_34();
        v33 = sub_266DAA73C();
        sub_266D91A18(v33, v34, v37);

        v28 = v38;
        if (v38 == 255)
        {
          v28 = 1;
          v24 = v20;
          v23 = a2;
        }

        else
        {
          v24 = v37[0];
          v23 = v37[1];
        }
      }

      else
      {

        v23 = 0;
        v28 = 0;
      }

      break;
  }

LABEL_31:
  *a5 = v24;
  *(a5 + 8) = v23;
  *(a5 + 16) = v28;
}

unint64_t LocationLabel.rawValue.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v2 = v0[1];

      return v1;
    }

    else
    {
      result = OUTLINED_FUNCTION_12_27();
      if (v1 != 2)
      {
        if (v1)
        {
          v4 = 0x7269656874;
        }

        else
        {
          v4 = 31085;
        }

        if (v1)
        {
          v5 = 0xE500000000000000;
        }

        else
        {
          v5 = 0xE200000000000000;
        }

        MEMORY[0x26D5F1170](v4, v5);

        MEMORY[0x26D5F1170](32, 0xE100000000000000);
        v6 = OUTLINED_FUNCTION_12_27();
        MEMORY[0x26D5F1170](v6);
        return 0;
      }
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_15_26();
    switch(v1)
    {
      case 1:
        result = OUTLINED_FUNCTION_7_37();
        break;
      case 2:
        OUTLINED_FUNCTION_11_34();
        result = OUTLINED_FUNCTION_9_27();
        break;
      case 3:
        result = OUTLINED_FUNCTION_6_44();
        break;
      case 4:
        OUTLINED_FUNCTION_10_25();
        result = OUTLINED_FUNCTION_8_24();
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_266D91274()
{
  v1 = sub_266DA70DC();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  if (*(v0 + 16))
  {
    v12 = *v0;
    v13 = v0[1];
    v14 = *(v0 + 16);
    LocationLabel.rawValue.getter();
  }

  else
  {
    OUTLINED_FUNCTION_5_48();
    switch(v7)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_5_48();
        break;
      default:
        break;
    }

    sub_266DA708C();
    sub_266C680F8();
    sub_266DAAC7C();
    v8 = *(v4 + 8);
    v9 = OUTLINED_FUNCTION_13_11();
    v10(v9);

    sub_266DAA73C();

    MEMORY[0x26D5F1170](0x7373657264646120, 0xE800000000000000);
  }

  sub_266DAA77C();
}

uint64_t LocationLabel.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6._countAndFlagsBits = sub_266DAA73C();
  DefaultLocationLabel.init(rawValue:)(v6);
  v7 = LOBYTE(v13[0]);
  if (LOBYTE(v13[0]) == 5)
  {
    v8 = sub_266DAA73C();
    sub_266D91A18(v8, v9, v13);

    v11 = v14;
    if (v14 == 255)
    {
      v11 = 1;
      v7 = a1;
    }

    else
    {
      v7 = v13[0];
      v12 = v13[1];

      a2 = v12;
    }
  }

  else
  {

    a2 = 0;
    v11 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = a2;
  *(a3 + 16) = v11;
  return result;
}

void sub_266D9156C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 label];
  if (v4)
  {
    v5 = v4;
    v6 = sub_266DAA70C();
    v8 = v7;

    v9._countAndFlagsBits = sub_266DAA73C();
    DefaultLocationLabel.init(rawValue:)(v9);
    v10 = LOBYTE(v25[0]);
    if (LOBYTE(v25[0]) == 5)
    {
      v11 = sub_266DAA73C();
      sub_266D91A18(v11, v12, v25);

      v13 = v26;
      if (v26 == 255)
      {
        v13 = 1;
        v10 = v6;
        v14 = v8;
      }

      else
      {
        v10 = v25[0];
        v14 = v25[1];
      }
    }

    else
    {

      v14 = 0;
      v13 = 0;
    }

    v19 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
    v20 = [a1 value];
    v21 = [v19 stringFromPostalAddress_];

    v22 = sub_266DAA70C();
    v24 = v23;

    *a2 = v10;
    *(a2 + 8) = v14;
    *(a2 + 16) = v13;
    *(a2 + 24) = v22;
    *(a2 + 32) = v24;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    if (qword_2800C94A8 != -1)
    {
      OUTLINED_FUNCTION_0_91();
    }

    v15 = sub_266DA94AC();
    __swift_project_value_buffer(v15, qword_2800CDED0);
    v16 = sub_266DA948C();
    v17 = sub_266DAAAEC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_266C08000, v16, v17, "Contact postal address missing label, could not convert to LabelledLocation", v18, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 0;
    *(a2 + 56) = 1;
  }
}

uint64_t LocationLabel.LocationReference.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7269656874;
  }

  else
  {
    result = 31085;
  }

  *v0;
  return result;
}

uint64_t sub_266D917D0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDED0);
  v1 = __swift_project_value_buffer(v0, qword_2800CDED0);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

SiriFindMy::DefaultLocationLabel_optional __swiftcall DefaultLocationLabel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DefaultLocationLabel.rawValue.getter()
{
  result = 0x656D6F683C21245FLL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_7_37();
      break;
    case 2:
      result = OUTLINED_FUNCTION_9_27();
      break;
    case 3:
      result = OUTLINED_FUNCTION_6_44();
      break;
    case 4:
      result = OUTLINED_FUNCTION_8_24();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266D919C0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_266C1958C();
}

uint64_t sub_266D919F0@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultLocationLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_266D91A18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_2800C94A8 != -1)
  {
    OUTLINED_FUNCTION_0_91();
  }

  v6 = sub_266DA94AC();
  __swift_project_value_buffer(v6, qword_2800CDED0);

  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v9 = 136315138;
    v10 = OUTLINED_FUNCTION_13_11();
    *(v9 + 4) = sub_266C22A3C(v10, v11, v12);
    _os_log_impl(&dword_266C08000, v7, v8, "LocationReference parsing raw value: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  if (a1 == 0xD000000000000010 && 0x8000000266DC1CA0 == a2)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_11();
  if (sub_266DAB17C())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_11();
  v16 = sub_266DAA7CC();
  OUTLINED_FUNCTION_12_27();
  v17 = sub_266DAA7CC();
  if (__OFADD__(v17, 1))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v16 < v17 + 1 || (sub_266DAA87C() & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    v15 = -1;
    goto LABEL_13;
  }

  v18 = sub_266DAA7CC();
  OUTLINED_FUNCTION_12_27();
  v19 = sub_266DAA7CC();
  if (__OFADD__(v18, v19))
  {
    goto LABEL_27;
  }

  if (!__OFSUB__(0, v18 + v19))
  {
    sub_266DAA7EC();
    v20 = sub_266DAA8AC();
    MEMORY[0x26D5F10D0](v20);

    v21 = sub_266DA948C();
    v22 = sub_266DAAB0C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v23 = 136315138;
      v24 = OUTLINED_FUNCTION_13_11();
      *(v23 + 4) = sub_266C22A3C(v24, v25, v26);
      _os_log_impl(&dword_266C08000, v21, v22, "LocationReference parsed prefix: '%s'", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    v27 = sub_266DAAF8C();

    if (v27 == 1)
    {
      v14 = xmmword_266DB3600;
      goto LABEL_11;
    }

    if (!v27)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      goto LABEL_12;
    }

LABEL_10:
    v14 = xmmword_266DAD420;
LABEL_11:
    *a3 = v14;
LABEL_12:
    v15 = 2;
LABEL_13:
    *(a3 + 16) = v15;
    return;
  }

LABEL_28:
  __break(1u);
}

SiriFindMy::LocationLabel::LocationReference_optional __swiftcall LocationLabel.LocationReference.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_266D91DEC()
{
  result = qword_2800CDEE8;
  if (!qword_2800CDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDEE8);
  }

  return result;
}

unint64_t sub_266D91E50()
{
  result = qword_2800CDEF0;
  if (!qword_2800CDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDEF0);
  }

  return result;
}

uint64_t sub_266D91EC8@<X0>(uint64_t *a1@<X8>)
{
  result = LocationLabel.LocationReference.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_266D91EF0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  LocationLabel.init(rawValue:)(*a1, a1[1], &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

unint64_t sub_266D91F38@<X0>(unint64_t *a1@<X8>)
{
  result = LocationLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_266D91F60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  return sub_266C19D58();
}

_BYTE *storeEnumTagSinglePayload for DefaultLocationLabel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationLabel.LocationReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266D92150(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D921A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_266D92214(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D92254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_91()
{

  return swift_once();
}

SiriFindMy::DIIdentifier __swiftcall DIIdentifier.init(namespace:id:)(Swift::String a1, Swift::String id)
{
  *v2 = a1;
  v2[1] = id;
  result.id = id;
  result.namespace = a1;
  return result;
}

uint64_t sub_266D923B4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDEF8);
  v1 = __swift_project_value_buffer(v0, qword_2800CDEF8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t DIIdentifier.namespace.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DIIdentifier.namespace.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DIIdentifier.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DIIdentifier.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DIIdentifier.payloadId.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x26D5F1170](v1, v2);
  return v4;
}

id DirectInvocationCodable.asPayload.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266D926BC();
  (*(v5 + 16))(v8, v2, a1);
  return sub_266D92700(v8, a1, a2);
}

unint64_t sub_266D926BC()
{
  result = qword_2800CDF10;
  if (!qword_2800CDF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CDF10);
  }

  return result;
}

id sub_266D92700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  (*(a3 + 32))(v30, a2, a3);
  v7 = v30[2];
  v8 = v30[3];
  v29[0] = v30[0];
  v29[1] = v30[1];

  MEMORY[0x26D5F1170](v7, v8);
  v9 = sub_266DAA6FC();

  v10 = [v6 initWithIdentifier_];

  v11 = sub_266DA701C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = v10;
  sub_266DA700C();
  v15 = *(a3 + 16);
  v20 = sub_266DA6FFC();
  v22 = v21;

  v23 = objc_opt_self();
  v24 = sub_266DA739C();
  sub_266C2BB04(v20, v22);
  v29[0] = 0;
  v25 = [v23 JSONObjectWithData:v24 options:0 error:v29];

  v26 = v29[0];
  if (v25)
  {
    sub_266DAACDC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDD48, &qword_266DBE270);
    if (swift_dynamicCast())
    {
      v16 = v29[0];
      goto LABEL_3;
    }
  }

  else
  {
    v27 = v26;
    v28 = sub_266DA72FC();

    swift_willThrow();
  }

  v16 = sub_266DAA6CC();
LABEL_3:
  sub_266D7C9E4(v16);

  v17 = sub_266DAA69C();

  [v14 setUserData_];

  (*(*(a2 - 8) + 8))(a1, a2);
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

id DirectInvocationCodable.serializeToAceCommand(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = DirectInvocationCodable.asPayload.getter(a2, a3);
  v8 = [v6 runSiriKitExecutorCommandWithContext:a1 payload:v7];

  return v8;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_266D92A94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_266D92AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D92B38()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDF18);
  v1 = __swift_project_value_buffer(v0, qword_2800CDF18);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D92C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266D92C34, 0, 0);
}

uint64_t sub_266D92C34()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_266D9BD30(*(v0 + 16));
    *(v0 + 40) = v3;
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = swift_task_alloc();
      *(v0 + 48) = v6;
      *v6 = v0;
      v6[1] = sub_266D92DDC;
      v7 = *(v0 + 24);
      v8 = *(v0 + 32);

      return sub_266D93028(v4, v5, v7, v8);
    }

    sub_266D9BD18(v1);
    *(v0 + 56) = v10;
    if (v10)
    {
      v11 = sub_266CC909C(v1);
      *(v0 + 64) = v12;
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        v15 = swift_task_alloc();
        *(v0 + 72) = v15;
        *v15 = v0;
        v15[1] = sub_266D92EF0;
        v16 = *(v0 + 24);
        v17 = *(v0 + 32);
        v18 = OUTLINED_FUNCTION_4_4();

        return sub_266D9346C(v18, v19, v13, v14, v20, v21);
      }
    }
  }

  OUTLINED_FUNCTION_4_58();

  return v22(0, 0xF000000000000000);
}

uint64_t sub_266D92DDC()
{
  OUTLINED_FUNCTION_1_69();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  v5 = *(v1 + 40);

  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_4_4();

  return v8(v7);
}

uint64_t sub_266D92EF0()
{
  OUTLINED_FUNCTION_1_69();
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = *(v1 + 56);

  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_4_4();

  return v9(v8);
}

uint64_t sub_266D93028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_266DAA29C();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_266DAA57C();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D93148, 0, 0);
}

uint64_t sub_266D93148()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 48);
  (*(*(v0 + 72) + 104))(*(v0 + 80), *MEMORY[0x277D07CA0], *(v0 + 64));

  CGColorCreateGenericGray(1.0, 1.0);
  sub_266DAA56C();
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA088, &qword_266DAFC60);
  *v6 = v0;
  v6[1] = sub_266D932CC;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000015, 0x8000000266DC45D0, sub_266D943D4, v4, v7);
}

uint64_t sub_266D932CC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_266D933D8, 0, 0);
}

uint64_t sub_266D933D8()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_4_58();

  return v4(v2, v3);
}

uint64_t sub_266D9346C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_266DAA4EC();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = sub_266DAA31C();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v13 = sub_266DAA5DC();
  v6[16] = v13;
  v14 = *(v13 - 8);
  v6[17] = v14;
  v15 = *(v14 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D935EC, 0, 0);
}

uint64_t sub_266D935EC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v14 = *(v0 + 64);
  (*(*(v0 + 112) + 104))(*(v0 + 120), *MEMORY[0x277D07CB8], *(v0 + 104));
  (*(v4 + 104))(v2, *MEMORY[0x277D07CD8], v3);

  sub_266DAA5CC();
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *(v9 + 16) = v14;
  *(v9 + 32) = v1;
  v10 = *(MEMORY[0x277D859E0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA088, &qword_266DAFC60);
  *v11 = v0;
  v11[1] = sub_266D937B8;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000266DC45F0, sub_266D9440C, v9, v12);
}

uint64_t sub_266D937B8()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_266D938C4, 0, 0);
}

uint64_t sub_266D938C4()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[2];
  v4 = v0[3];
  (*(v0[17] + 8))(v0[18], v0[16]);

  OUTLINED_FUNCTION_4_58();

  return v5(v3, v4);
}

uint64_t sub_266D9396C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDF30, &unk_266DBF440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-1] - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v3 + 32))(v9 + v8, v6, v2);

  sub_266DAA24C();

  v11 = v22[2];
  v10 = v22[3];
  swift_beginAccess();
  if (*(v7 + 16))
  {
    sub_266C2BAF0(v11, v10);
  }

  else
  {
    if (qword_2800C94B8 != -1)
    {
      swift_once();
    }

    v12 = sub_266DA94AC();
    __swift_project_value_buffer(v12, qword_2800CDF18);
    sub_266C2BA84(v11, v10);
    v13 = sub_266DA948C();
    v14 = sub_266DAAB0C();
    sub_266C2BAF0(v11, v10);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      if (v10 >> 60 == 15)
      {
        v17 = 7104878;
      }

      else
      {
        v17 = 0x6C696E2D6E6F6ELL;
      }

      v21 = a1;
      if (v10 >> 60 == 15)
      {
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      v19 = sub_266C22A3C(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_266C08000, v13, v14, "Returning image immediately: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D5F2480](v16, -1, -1);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    v22[0] = v11;
    v22[1] = v10;
    sub_266DAA9BC();
  }
}

uint64_t sub_266D93C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDF30, &unk_266DBF440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-1] - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v3 + 32))(v9 + v8, v6, v2);

  sub_266DAA24C();

  v11 = v22[2];
  v10 = v22[3];
  swift_beginAccess();
  if (*(v7 + 16))
  {
    sub_266C2BAF0(v11, v10);
  }

  else
  {
    if (qword_2800C94B8 != -1)
    {
      swift_once();
    }

    v12 = sub_266DA94AC();
    __swift_project_value_buffer(v12, qword_2800CDF18);
    sub_266C2BA84(v11, v10);
    v13 = sub_266DA948C();
    v14 = sub_266DAAB0C();
    sub_266C2BAF0(v11, v10);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      if (v10 >> 60 == 15)
      {
        v17 = 7104878;
      }

      else
      {
        v17 = 0x6C696E2D6E6F6ELL;
      }

      v21 = a1;
      if (v10 >> 60 == 15)
      {
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      v19 = sub_266C22A3C(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_266C08000, v13, v14, "Returning item image immediately: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D5F2480](v16, -1, -1);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    v22[0] = v11;
    v22[1] = v10;
    sub_266DAA9BC();
  }
}

uint64_t sub_266D93FC4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  swift_beginAccess();
  *(a2 + 16) = 1;
  if (v10 == 1)
  {
    if (qword_2800C94B8 != -1)
    {
      OUTLINED_FUNCTION_2_73();
    }

    v11 = sub_266DA94AC();
    __swift_project_value_buffer(v11, qword_2800CDF18);
    v12 = v8;
    v13 = sub_266DA948C();
    v14 = sub_266DAAAEC();
    sub_266D943F4(v8, v9, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v25 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_266DAB23C();
      v19 = sub_266C22A3C(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_266C08000, v13, v14, a5, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D5F2480](v16, -1, -1);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    v25 = xmmword_266DBF390;
  }

  else
  {
    if (qword_2800C94B8 != -1)
    {
      OUTLINED_FUNCTION_2_73();
    }

    v20 = sub_266DA94AC();
    __swift_project_value_buffer(v20, qword_2800CDF18);
    v21 = sub_266DA948C();
    v22 = sub_266DAAB0C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_266C08000, v21, v22, a4, v23, 2u);
      MEMORY[0x26D5F2480](v23, -1, -1);
    }

    *&v25 = v8;
    *(&v25 + 1) = v9;
    sub_266D94400(v8, v9, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDF30, &unk_266DBF440);
  return sub_266DAA9BC();
}

uint64_t sub_266D94244(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_266D942EC;

  return sub_266D92C10(a1, v5, v4);
}

uint64_t sub_266D942EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_1_69();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;

  OUTLINED_FUNCTION_4_58();
  v4 = OUTLINED_FUNCTION_4_4();

  return v5(v4);
}

uint64_t sub_266D943D4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_266D93C98(a1);
}

void sub_266D943F4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_266C2BB04(a1, a2);
  }
}

id sub_266D94400(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_266C2BA98(a1, a2);
  }
}

uint64_t sub_266D9440C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_266D9396C(a1);
}

uint64_t objectdestroy_7Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDF30, &unk_266DBF440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t OUTLINED_FUNCTION_2_73()
{

  return swift_once();
}

uint64_t sub_266D945C8(_BYTE *a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 48) = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0) - 8) + 64) + 15;
  *(v3 + 24) = swift_task_alloc();
  *(v3 + 49) = *a1;

  return MEMORY[0x2822009F8](sub_266D94674, 0, 0);
}

uint64_t sub_266D94674()
{
  *(v0 + 49);
  v2 = *(v0 + 24);
  sub_266DAA77C();

  v3 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_266D947DC;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v0 + 48);

  return sub_266D45044();
}

uint64_t sub_266D947DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  sub_266C55ECC(*(v4 + 24));
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_266D9494C, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_266D9494C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

unint64_t WontPlaySoundReason.rawValue.getter()
{
  result = 0x45636972656E6567;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

SiriFindMy::WontPlaySoundReason_optional __swiftcall WontPlaySoundReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_266D94ABC()
{
  result = qword_2800CDF38;
  if (!qword_2800CDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDF38);
  }

  return result;
}

unint64_t sub_266D94B34@<X0>(unint64_t *a1@<X8>)
{
  result = WontPlaySoundReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WontPlaySoundReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t GEOServicesReverseGeocoder.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA750C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t sub_266D94C9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_266D94D7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_266D94DAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

SiriFindMy::ReverseGeocodingSpokenNeeds sub_266D94E80@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ReverseGeocodingSpokenNeeds.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_266D94EC0@<X0>(uint64_t *a1@<X8>)
{
  result = ReverseGeocodingSpokenNeeds.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_266D94EEC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDF40);
  v1 = __swift_project_value_buffer(v0, qword_2800CDF40);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t GEOServicesReverseGeocoder.reverseGeocodeLocationAsync(_:spokenNeeds:)()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v1[99] = v0;
  v1[93] = v4;
  v1[87] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v6);
  v8 = *(v7 + 64) + 15;
  v1[105] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v9 = type metadata accessor for Location();
  v1[117] = v9;
  OUTLINED_FUNCTION_11_3(v9);
  v1[123] = v10;
  v1[124] = *(v11 + 64);
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v12 = type metadata accessor for GEOServicesReverseGeocoder();
  OUTLINED_FUNCTION_11_3(v12);
  v1[127] = v13;
  v1[128] = *(v14 + 64);
  v1[129] = swift_task_alloc();
  v15 = type metadata accessor for Address();
  v1[130] = v15;
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64) + 15;
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = *v3;

  return MEMORY[0x2822009F8](sub_266D95178, 0, 0);
}

uint64_t sub_266D95178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v43 = v14[134];
  v41 = v14[135];
  v42 = v14[130];
  v15 = v14[129];
  v16 = v14[128];
  v17 = v14[127];
  v18 = v14[126];
  v19 = v14[124];
  v20 = v14[123];
  v21 = v14[93];
  if (v41 == 2)
  {
    v22 = 4;
  }

  else
  {
    v22 = 17;
  }

  v40 = v22;
  sub_266D9610C(v14[99], v15);
  sub_266D9610C(v21, v18);
  v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v24 = (v16 + *(v20 + 80) + v23) & ~*(v20 + 80);
  v25 = swift_allocObject();
  v14[136] = v25;
  sub_266D96164(v15, v25 + v23);
  sub_266D96164(v18, v25 + v24);
  *(v25 + ((v19 + v24 + 3) & 0xFFFFFFFFFFFFFFFCLL)) = v40;
  swift_asyncLet_begin();
  if (v41 == 3)
  {
    v30 = v14[125];
    v31 = v14[93];
    sub_266C29814(0, &qword_2800CA628, 0x277CE41F8);
    OUTLINED_FUNCTION_1_70();
    v32 = OUTLINED_FUNCTION_4_4();
    sub_266D9610C(v32, v33);
    v34 = CLLocation.init(_:)(v30);
    v14[137] = v34;
    v35 = swift_task_alloc();
    v14[138] = v35;
    *v35 = v14;
    v35[1] = sub_266D953F8;
    v36 = v14[133];
    v37 = v14[99];

    return sub_266D961BC(v36, v34, 4);
  }

  else
  {
    v39 = v14[134];

    return MEMORY[0x282200930](v14 + 2, v39, sub_266D9581C, v14 + 82, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_266D953F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v17 = v16;
  OUTLINED_FUNCTION_10_3();
  *v18 = v17;
  v20 = *(v19 + 1104);
  v21 = *v15;
  OUTLINED_FUNCTION_9_2();
  *v22 = v21;
  *(v17 + 1112) = v14;

  if (v14)
  {

    return MEMORY[0x2822009F8](sub_266D95950, 0, 0);
  }

  else
  {

    v27 = *(v17 + 1072);

    return MEMORY[0x282200930](v17 + 16, v27, sub_266D95528, v17 + 848, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_266D95528()
{
  *(v1 + 1120) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_2_8(sub_266D95A70);
  }

  else
  {
    return OUTLINED_FUNCTION_2_8(sub_266D95554);
  }
}

uint64_t sub_266D95554()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[105];
  OUTLINED_FUNCTION_5_49();
  sub_266D9610C(v5, v6);
  sub_266C67BE8(v2, v4, &qword_2800CA038, &unk_266DAFBF0);
  sub_266D7FB28(v2);
  v7 = sub_266DA919C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
  {
    v8 = v0[105];
    sub_266C67BE8(v0[132] + *(v0[130] + 32), v0[111], &qword_2800CA038, &unk_266DAFBF0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v7) != 1)
    {
      sub_266C1825C(v0[105], &qword_2800CA038, &unk_266DAFBF0);
    }
  }

  else
  {
    v9 = v0[111];
    (*(*(v7 - 8) + 32))(v9, v0[105], v7);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v7);
  }

  v10 = v0[132];
  v11 = v0[117];
  v12 = v0[93];
  v13 = v0[87];
  sub_266C64CA4(v0[111], v10 + *(v0[130] + 32));
  OUTLINED_FUNCTION_1_70();
  sub_266D9610C(v12, v13);
  v14 = *(v11 + 44);
  sub_266C1825C(v13 + v14, &qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_5_49();
  sub_266D9610C(v10, v13 + v14);
  OUTLINED_FUNCTION_20_17();
  sub_266D7FB28(v10);
  v15 = OUTLINED_FUNCTION_7_38();

  return MEMORY[0x282200920](v15, v16, v17, v0 + 118);
}

uint64_t sub_266D9574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v13 = v12[136];
  v14 = v12[134];
  v15 = v12[133];
  v16 = v12[132];
  v17 = v12[131];
  v18 = v12[129];
  v19 = v12[126];
  v20 = v12[125];
  v21 = v12[111];
  v22 = v12[105];

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_26_4();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_266D9581C()
{
  *(v1 + 1128) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 16, *(v1 + 1072), sub_266D95B90, v1 + 704);
  }

  else
  {
    return OUTLINED_FUNCTION_2_8(sub_266D95858);
  }
}

uint64_t sub_266D95858()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[117];
  v4 = v0[93];
  v5 = v0[87];
  sub_266D9610C(v0[134], v1);
  OUTLINED_FUNCTION_1_70();
  sub_266D9610C(v4, v5);
  v6 = *(v3 + 44);
  sub_266C1825C(v5 + v6, &qword_2800CC420, &unk_266DB0480);
  sub_266D96164(v1, v5 + v6);
  OUTLINED_FUNCTION_20_17();
  v7 = OUTLINED_FUNCTION_7_38();

  return MEMORY[0x282200920](v7, v8, v9, v0 + 94);
}

uint64_t sub_266D95950()
{
  OUTLINED_FUNCTION_22_0();

  v1 = OUTLINED_FUNCTION_7_38();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 800);
}

uint64_t sub_266D959C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v13 = *(v12 + 1112);
  OUTLINED_FUNCTION_2_74();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_26_4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_266D95A70()
{
  OUTLINED_FUNCTION_22_0();
  sub_266D7FB28(*(v0 + 1064));
  v1 = OUTLINED_FUNCTION_7_38();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 896);
}

uint64_t sub_266D95AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v13 = *(v12 + 1120);
  OUTLINED_FUNCTION_2_74();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_26_4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_266D95BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v13 = *(v12 + 1128);
  OUTLINED_FUNCTION_2_74();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_26_4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t type metadata accessor for GEOServicesReverseGeocoder()
{
  result = qword_2800CDF88;
  if (!qword_2800CDF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D95C9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(type metadata accessor for Location() - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D95D34, 0, 0);
}

uint64_t sub_266D95D34()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_266C29814(0, &qword_2800CA628, 0x277CE41F8);
  OUTLINED_FUNCTION_1_70();
  v3 = OUTLINED_FUNCTION_4_4();
  sub_266D9610C(v3, v4);
  v5 = CLLocation.init(_:)(v2);
  *(v0 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_266D95E18;
  v7 = *(v0 + 72);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_266D961BC(v8, v5, v7);
}

uint64_t sub_266D95E18()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266D95F44, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    OUTLINED_FUNCTION_28();

    return v10();
  }
}

uint64_t sub_266D95F44()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_266D95FA8(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for GEOServicesReverseGeocoder();
  OUTLINED_FUNCTION_11_3(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for Location();
  OUTLINED_FUNCTION_11_3(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v1 + ((*(v13 + 64) + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_266C48BB4;

  return sub_266D95C9C(a1, v1 + v7, v1 + v12, v14);
}

uint64_t sub_266D9610C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_21_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_4_4();
  v9(v8);
  return a2;
}

uint64_t sub_266D96164(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_21_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_4_4();
  v9(v8);
  return a2;
}

uint64_t sub_266D961BC(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_266D961E4, 0, 0);
}

uint64_t sub_266D961E4()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i32[0] = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = type metadata accessor for Address();
  *v4 = v0;
  v4[1] = sub_266D962EC;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000021, 0x8000000266DC4620, sub_266D96890, v2, v5);
}

uint64_t sub_266D962EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266C44228, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    OUTLINED_FUNCTION_28();

    return v10();
  }
}

unint64_t sub_266D96410()
{
  result = qword_2800CDF60;
  if (!qword_2800CDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDF60);
  }

  return result;
}

unint64_t sub_266D96468()
{
  result = qword_2800CDF68;
  if (!qword_2800CDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDF68);
  }

  return result;
}

unint64_t sub_266D964C0()
{
  result = qword_2800CDF70;
  if (!qword_2800CDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDF70);
  }

  return result;
}

unint64_t sub_266D96518()
{
  result = qword_2800CDF78;
  if (!qword_2800CDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDF78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy14GeocodingErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D96590(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D965EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_266D9664C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    v2 = a2 - 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_266D966C0()
{
  result = sub_266DA750C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266D9672C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA0, &qword_266DBF870);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  sub_266D96ABC(a3, a2, a4, sub_266D96A44, v14);
}

uint64_t sub_266D9689C(uint64_t a1)
{
  v2 = type metadata accessor for Address();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA8, &unk_266DBF878);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  sub_266C67BE8(a1, &v14 - v8, &qword_2800CDFA8, &unk_266DBF878);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v9;
    v10 = *(v9 + 2);
    sub_266D97820();
    v11 = swift_allocError();
    *v12 = v14;
    *(v12 + 16) = v10;
    v15 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA0, &qword_266DBF870);
    return sub_266DAA9AC();
  }

  else
  {
    sub_266D96164(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA0, &qword_266DBF870);
    return sub_266DAA9BC();
  }
}

uint64_t sub_266D96A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA0, &qword_266DBF870);
  OUTLINED_FUNCTION_4_3(v2);
  v4 = *(v3 + 80);

  return sub_266D9689C(a1);
}

uint64_t sub_266D96ABC(void *a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5)
{
  LODWORD(v52) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA8, &unk_266DBF878);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = sub_266DA750C();
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = [objc_opt_self() sharedService];
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v51 = a4;
  v17 = [v15 defaultTraits];
  if (!v17)
  {

    a4 = v51;
LABEL_10:
    if (qword_2800C94C0 != -1)
    {
      swift_once();
    }

    v38 = sub_266DA94AC();
    __swift_project_value_buffer(v38, qword_2800CDF40);
    v39 = sub_266DA948C();
    v40 = sub_266DAAAEC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_266C08000, v39, v40, "GEOServicesReverseGeocoder: Failed getting GEOMapService or default traits.", v41, 2u);
      MEMORY[0x26D5F2480](v41, -1, -1);
    }

    *v12 = xmmword_266DBF540;
    *(v12 + 2) = 0x8000000266DC4650;
    swift_storeEnumTagMultiPayload();
    a4(v12);
    return sub_266C1825C(v12, &qword_2800CDFA8, &unk_266DBF878);
  }

  v18 = v17;
  [v17 clearDeviceDisplayLanguages];
  v19 = sub_266DA74CC();
  sub_266CC0208(v19, v20, v18, &selRef_addDeviceDisplayLanguage_);
  v48 = a2;
  v21 = sub_266DA74CC();
  sub_266CC0208(v21, v22, v18, &selRef_setDeviceSpokenLocale_);
  sub_266C29814(0, &qword_2800CDFB0, 0x277D0EB80);
  sub_266C29884(a1);
  v49 = v23;
  v24 = [v16 ticketForReverseGeocodeLocation_placeTypeLimit_traits_];
  if (!v24)
  {
    if (qword_2800C94C0 != -1)
    {
      swift_once();
    }

    v42 = sub_266DA94AC();
    __swift_project_value_buffer(v42, qword_2800CDF40);
    v43 = sub_266DA948C();
    v44 = sub_266DAAAEC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_266C08000, v43, v44, "GEOServicesReverseGeocoder: Failed getting ticket", v45, 2u);
      MEMORY[0x26D5F2480](v45, -1, -1);
    }

    *v12 = xmmword_266DBF530;
    *(v12 + 2) = 0x8000000266DC4680;
    swift_storeEnumTagMultiPayload();
    v51(v12);

    return sub_266C1825C(v12, &qword_2800CDFA8, &unk_266DBF878);
  }

  v47 = v24;
  if (qword_2800C94C0 != -1)
  {
    swift_once();
  }

  v25 = sub_266DA94AC();
  __swift_project_value_buffer(v25, qword_2800CDF40);
  v26 = sub_266DA948C();
  v27 = sub_266DAAB0C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v28 = 136315138;
    v53 = v52;
    type metadata accessor for GEOMapItemPlaceType(0);
    v29 = sub_266DAA72C();
    v52 = a5;
    v31 = sub_266C22A3C(v29, v30, aBlock);
    a5 = v52;

    *(v28 + 4) = v31;
    _os_log_impl(&dword_266C08000, v26, v27, "Performing Reverse Geocode for type %s", v28, 0xCu);
    v32 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x26D5F2480](v32, -1, -1);
    MEMORY[0x26D5F2480](v28, -1, -1);
  }

  v33 = v50;
  (*(v50 + 16))(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v13);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v51;
  *(v35 + 24) = a5;
  (*(v33 + 32))(v35 + v34, &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  aBlock[4] = sub_266D97788;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266D976E8;
  aBlock[3] = &block_descriptor_5;
  v36 = _Block_copy(aBlock);

  [v47 submitWithHandler:v36 networkActivity:0];
  _Block_release(v36);

  return swift_unknownObjectRelease();
}

uint64_t sub_266D9711C(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA8, &unk_266DBF878);
  v9 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v11 = v51 - v10;
  v12 = sub_266DA750C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Address();
  v17 = *(*(v52 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v52);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v51 - v22;
  MEMORY[0x28223BE20](v21);
  v54 = v51 - v26;
  if (!a1 || !sub_266C3A14C(a1, v24, v25))
  {
    goto LABEL_7;
  }

  v51[1] = a4;
  sub_266CB9F54(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5F1780](0, a1);
  }

  else
  {
    v27 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  if (a2)
  {
    swift_unknownObjectRelease();
LABEL_7:
    if (qword_2800C94C0 != -1)
    {
      swift_once();
    }

    v28 = sub_266DA94AC();
    __swift_project_value_buffer(v28, qword_2800CDF40);
    v29 = a2;
    v30 = sub_266DA948C();
    v31 = sub_266DAAAEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v56 = a2;
      v57 = v33;
      *v32 = 136315138;
      v34 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFC0, &qword_266DB5C90);
      v35 = sub_266DAA72C();
      v37 = sub_266C22A3C(v35, v36, &v57);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_266C08000, v30, v31, "Reverse Geocoding failed with error: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x26D5F2480](v33, -1, -1);
      MEMORY[0x26D5F2480](v32, -1, -1);
    }

    *v11 = a2;
    *(v11 + 8) = xmmword_266DBF550;
    swift_storeEnumTagMultiPayload();
    v38 = a2;
    a3(v11);
    return sub_266C1825C(v11, &qword_2800CDFA8, &unk_266DBF878);
  }

  (*(v13 + 16))(v16, v53, v12);
  swift_unknownObjectRetain();
  v40 = v54;
  sub_266D80070();
  if (qword_2800C94C0 != -1)
  {
    swift_once();
  }

  v41 = sub_266DA94AC();
  __swift_project_value_buffer(v41, qword_2800CDF40);
  sub_266D9610C(v40, v23);
  v42 = sub_266DA948C();
  v43 = sub_266DAAB0C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v57 = v45;
    *v44 = 136315138;
    sub_266D9610C(v23, v20);
    v46 = sub_266DAA72C();
    v48 = v47;
    sub_266D7FB28(v23);
    v49 = sub_266C22A3C(v46, v48, &v57);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_266C08000, v42, v43, "Got reverse geocode result: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    v50 = v45;
    v40 = v54;
    MEMORY[0x26D5F2480](v50, -1, -1);
    MEMORY[0x26D5F2480](v44, -1, -1);
  }

  else
  {

    sub_266D7FB28(v23);
  }

  sub_266D9610C(v40, v11);
  swift_storeEnumTagMultiPayload();
  a3(v11);
  swift_unknownObjectRelease();
  sub_266C1825C(v11, &qword_2800CDFA8, &unk_266DBF878);
  return sub_266D7FB28(v40);
}

uint64_t sub_266D976E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFB8, &qword_266DBF888);
    v4 = sub_266DAA93C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_266D97788(uint64_t a1, void *a2)
{
  v5 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_266D9711C(a1, a2, v7, v8, v9);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266D97820()
{
  result = qword_2800CDFC8;
  if (!qword_2800CDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDFC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_74()
{
  v2 = v0[136];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[129];
  v8 = v0[126];
  v9 = v0[125];
  v10 = v0[111];
  v11 = v0[105];
}

uint64_t OUTLINED_FUNCTION_20_17()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

void sub_266D97920(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  [v1 setDeviceQuery_];
}

uint64_t sub_266D979A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_71(v16);
  OUTLINED_FUNCTION_1_71(__src);
  if (get_enum_tag_for_layout_string_10SiriFindMy12DeviceSearchV5QueryVSg_0(__src) != 1)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (qword_2800C94C8 != -1)
    {
      swift_once();
    }

    v4 = sub_266DA94AC();
    __swift_project_value_buffer(v4, qword_2800CDFD0);
    memcpy(v14, v16, 0x99uLL);
    sub_266C9CF60(v14, v13);
    v5 = sub_266DA948C();
    v6 = sub_266DAAB0C();
    sub_266C3A088(v16, &qword_2800CDC18, &qword_266DBDCB0);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13[0] = v8;
      *v7 = 136315138;
      v9 = sub_266D67FC4();
      v11 = sub_266C22A3C(v9, v10, v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_266C08000, v5, v6, "Starting tree filter for %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x26D5F2480](v8, -1, -1);
      MEMORY[0x26D5F2480](v7, -1, -1);
    }
  }

  return sub_266D98568(a1, a2, 0);
}

uint64_t sub_266D97B7C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDFD0);
  v1 = __swift_project_value_buffer(v0, qword_2800CDFD0);
  if (qword_2800C90E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2800E6160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_266D97C44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (qword_2800C94D0 != -1)
  {
    OUTLINED_FUNCTION_0_92();
  }

  memcpy(__dst, &qword_2800E6588, 0xB9uLL);
  if (!sub_266D98210(a1, __dst))
  {
    memcpy(v26, &qword_2800E6588, 0xB9uLL);
    if (sub_266D98210(v3, v26))
    {
      OUTLINED_FUNCTION_1_71(__src);
      v6 = a1[3];
      v7 = *a1;
      v8 = a1[1];
      v9 = *(a1 + 16);
      v10 = v24;
      v11 = a1;
      goto LABEL_7;
    }

    v7 = *a1;
    v8 = a1[1];
    v12 = *(a1 + 16);
    if (v3[16] == 255)
    {
      v6 = *(v3 + 3);
      if (v12 != 255)
      {
        *&__src[0] = *(v3 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
        v14 = swift_allocObject();
        v15 = OUTLINED_FUNCTION_3_62(v14, xmmword_266DAE4A0);
        memcpy(v15, a1, 0xB9uLL);
        v23 = v6;
        sub_266D6638C(a1, v24);
        sub_266C744CC(__src, v24, &qword_2800CDFE8, &qword_266DBFB10);
        sub_266C38604(v14);
        sub_266D99240(v24);
        goto LABEL_13;
      }

      *&__src[0] = *(v3 + 3);
      v20 = a1[3];
      *&v24[0] = v6;
      sub_266C744CC(__src, &v23, &qword_2800CDFE8, &qword_266DBFB10);

      sub_266C38604(v21);
      v6 = *&v24[0];
    }

    else
    {
      if (v12 != 255)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
        v6 = swift_allocObject();
        v13 = OUTLINED_FUNCTION_3_62(v6, xmmword_266DB05C0);
        memcpy(v13, v3, 0xB9uLL);
        memcpy(&v6[14], a1, 0xB9uLL);
        sub_266D99240(__src);
        sub_266D6638C(a1, v24);
        sub_266D6638C(v3, v24);
        memcpy(v24, __src, 0x99uLL);
LABEL_13:
        v7 = 0;
        v8 = 0;
LABEL_17:
        v9 = -1;
        goto LABEL_18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
      v16 = swift_allocObject();
      v17 = OUTLINED_FUNCTION_3_62(v16, xmmword_266DAE4A0);
      memcpy(v17, v3, 0xB9uLL);
      v18 = a1[3];
      *&__src[0] = v16;
      sub_266D6638C(v3, v24);

      sub_266C38604(v19);
      v6 = *&__src[0];
    }

    sub_266D99240(v24);
    goto LABEL_17;
  }

  memcpy(__src, v3 + 32, 0x99uLL);
  v6 = *(v3 + 3);
  v7 = *v3;
  v8 = *(v3 + 1);
  v9 = v3[16];
  v10 = v26;
  v11 = v3;
LABEL_7:
  sub_266D6638C(v11, v10);
  memcpy(v24, __src, 0x99uLL);
LABEL_18:
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v6;
  return memcpy((a2 + 32), v24, 0x99uLL);
}

void *sub_266D97F44@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2800C94D0 != -1)
  {
    OUTLINED_FUNCTION_0_92();
  }

  memcpy(__dst, &qword_2800E6588, 0xB9uLL);
  if (sub_266D98210(a1, __dst))
  {
    OUTLINED_FUNCTION_1_71(v22);
    v5 = *(v2 + 24);
    v6 = *v2;
    v7 = *(v2 + 8);
    v8 = *(v2 + 16);
    sub_266D6638C(v2, v23);
    v9 = v22;
LABEL_8:
    memcpy(v19, v9, 0x99uLL);
    goto LABEL_9;
  }

  memcpy(v23, &qword_2800E6588, 0xB9uLL);
  if (sub_266D98210(v2, v23))
  {
    memcpy(__src, a1 + 32, 0x99uLL);
    v5 = *(a1 + 3);
    v6 = *a1;
    v7 = *(a1 + 1);
    v8 = a1[16];
LABEL_7:
    sub_266D6638C(a1, v22);
    v9 = __src;
    goto LABEL_8;
  }

  v11 = *(v2 + 24);
  v12 = *(v11 + 16);
  if (!v12)
  {
    if (a1[16] == 255)
    {
      v6 = *v2;
      v7 = *(v2 + 8);
      v8 = *(v2 + 16);
      v5 = *(a1 + 3);
      sub_266D99240(v22);
      sub_266D6643C(v6, v7, v8);
      memcpy(v19, v22, 0x99uLL);

      goto LABEL_9;
    }

    v6 = *v2;
    v7 = *(v2 + 8);
    v8 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
    v5 = swift_allocObject();
    v16 = OUTLINED_FUNCTION_3_62(v5, xmmword_266DAE4A0);
    memcpy(v16, a1, 0xB9uLL);
    sub_266D99240(__src);
    sub_266D6643C(v6, v7, v8);
    goto LABEL_7;
  }

  v8 = *(v2 + 16);
  v17 = *(v2 + 8);
  v18 = *v2;
  sub_266D6643C(*v2, v17, v8);
  v20 = MEMORY[0x277D84F90];
  sub_266C38A88(0, v12, 0);
  v5 = v20;
  v13 = (v11 + 32);
  do
  {
    memcpy(v22, v13, 0xB9uLL);
    sub_266D6638C(v22, v19);
    sub_266D97F44(__src, a1);
    sub_266D663E8(v22);
    v20 = v5;
    v15 = v5[1].n128_u64[0];
    v14 = v5[1].n128_u64[1];
    if (v15 >= v14 >> 1)
    {
      sub_266C38A88(v14 > 1, v15 + 1, 1);
      v5 = v20;
    }

    v5[1].n128_u64[0] = v15 + 1;
    memcpy(&v5[12 * v15 + 2], __src, 0xB9uLL);
    v13 += 192;
    --v12;
  }

  while (v12);
  sub_266D99240(v19);
  v7 = v17;
  v6 = v18;
LABEL_9:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v5;
  return memcpy((a2 + 32), v19, 0x99uLL);
}

BOOL sub_266D98210(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 255)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = *a2;
    v9 = *(a2 + 8);
    sub_266D66450(*a2, v9, v5);
    v10 = sub_266D30258(v6, v7, v4, v8, v9, v5);
    sub_266D77B70(v8, v9, v5);
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_266D7206C(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_75(v20);
  OUTLINED_FUNCTION_1_71(v19);
  OUTLINED_FUNCTION_2_75(__src);
  OUTLINED_FUNCTION_1_71(&__src[160]);
  OUTLINED_FUNCTION_2_75(v18);
  if (get_enum_tag_for_layout_string_10SiriFindMy12DeviceSearchV5QueryVSg_0(v18) != 1)
  {
    OUTLINED_FUNCTION_1_71(v15);
    if (get_enum_tag_for_layout_string_10SiriFindMy12DeviceSearchV5QueryVSg_0(v15) == 1)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_1_71(v13);
    OUTLINED_FUNCTION_1_71(__dst);
    OUTLINED_FUNCTION_2_75(v21);
    sub_266C744CC(v20, v14, &qword_2800CDC18, &qword_266DBDCB0);
    sub_266C744CC(v19, v14, &qword_2800CDC18, &qword_266DBDCB0);
    v12 = sub_266D67828(v21, __dst);
    sub_266C3A088(v13, &qword_2800CDC18, &qword_266DBDCB0);
    OUTLINED_FUNCTION_2_75(v14);
    sub_266C3A088(v14, &qword_2800CDC18, &qword_266DBDCB0);
    return (v12 & 1) != 0;
  }

  OUTLINED_FUNCTION_1_71(__dst);
  if (get_enum_tag_for_layout_string_10SiriFindMy12DeviceSearchV5QueryVSg_0(__dst) != 1)
  {
LABEL_11:
    memcpy(__dst, __src, 0x139uLL);
    OUTLINED_FUNCTION_4_59(v20, v21);
    OUTLINED_FUNCTION_4_59(v19, v21);
    sub_266C3A088(__dst, &qword_2800CDC20, &qword_266DBDCB8);
    return 0;
  }

  OUTLINED_FUNCTION_2_75(v21);
  OUTLINED_FUNCTION_4_59(v20, v15);
  OUTLINED_FUNCTION_4_59(v19, v15);
  sub_266C3A088(v21, &qword_2800CDC18, &qword_266DBDCB0);
  return 1;
}

uint64_t sub_266D98478(char a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 40);
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 8236;
  }

  if (a1)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  sub_266D66450(*(a2 + 16), *(a2 + 24), *(a2 + 32));
  MEMORY[0x26D5F1170](v3, v4);

  v5 = sub_266DAA72C();
  MEMORY[0x26D5F1170](v5);

  v6 = sub_266D98478(0, v2);
  MEMORY[0x26D5F1170](v6);

  return 0;
}

uint64_t sub_266D98568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = 0;
  v9 = *(v3 + 16);
  if (v9 == 255)
  {
  }

  else
  {
    *&v67 = 0;
    v12 = *v4;
    v11 = v4[1];
    v13 = swift_allocObject();
    v68 = &v65;
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    *(v13 + 32) = v9;
    *(v13 + 40) = a3;
    MEMORY[0x28223BE20](v13);
    v62[2] = v12;
    v62[3] = v11;
    v63 = v9;
    v64 = a2;

    sub_266D6643C(v12, v11, v9);
    v8 = v67;
    a1 = sub_266CDAA74(sub_266D99208, v62, a1);
    v5 = v13;
  }

  if (qword_2800C94C8 != -1)
  {
    swift_once();
  }

  v14 = sub_266DA94AC();
  v15 = __swift_project_value_buffer(v14, qword_2800CDFD0);

  sub_266D6638C(v4, v70);

  sub_266D6638C(v4, v70);

  v68 = v15;
  v16 = sub_266DA948C();
  v17 = sub_266DAAB0C();

  v18 = os_log_type_enabled(v16, v17);
  v66 = v5;
  *&v67 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v69[0] = v65;
    *v19 = 136315650;
    v70[0] = 91;
    v70[1] = 0xE100000000000000;
    v20 = sub_266D98478(1, v5);
    MEMORY[0x26D5F1170](v20);

    MEMORY[0x26D5F1170](93, 0xE100000000000000);
    v21 = sub_266C22A3C(v70[0], v70[1], v69);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2048;
    v22 = *(a1 + 16);

    *(v19 + 14) = v22;

    *(v19 + 22) = 2048;
    v23 = *(v4[3] + 16);
    sub_266D663E8(v4);
    *(v19 + 24) = v23;
    sub_266D663E8(v4);
    _os_log_impl(&dword_266C08000, v16, v17, "filterInternal path %s partial results: %ld, children: %ld", v19, 0x20u);
    v24 = v65;
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x26D5F2480](v24, -1, -1);
    MEMORY[0x26D5F2480](v19, -1, -1);
  }

  else
  {
    sub_266D663E8(v4);

    sub_266D663E8(v4);
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = v4[3];
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 32);
      v29 = v66;
      while (1)
      {
        memcpy(v70, v28, 0xB9uLL);
        sub_266D6638C(v70, v69);
        v30 = sub_266D98568(a1, a2, v29);
        sub_266D663E8(v70);
        if (*(v30 + 16))
        {
          break;
        }

        v28 += 192;
        if (!--v27)
        {

          return MEMORY[0x277D84F90];
        }
      }
    }

    else
    {

      v38 = v66;

      v39 = sub_266DA948C();
      v40 = sub_266DAAB0C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *&v67 = swift_slowAlloc();
        v69[0] = v67;
        *v41 = 134218498;
        *(v41 + 4) = *(a1 + 16);

        *(v41 + 12) = 2080;
        v42 = *(a1 + 16);
        if (v42 <= 1)
        {
          v43 = 0;
        }

        else
        {
          v43 = 115;
        }

        if (v42 <= 1)
        {
          v44 = 0xE000000000000000;
        }

        else
        {
          v44 = 0xE100000000000000;
        }

        v45 = sub_266C22A3C(v43, v44, v69);

        *(v41 + 14) = v45;
        *(v41 + 22) = 2080;
        v70[0] = 91;
        v70[1] = 0xE100000000000000;
        v46 = sub_266D98478(1, v38);
        MEMORY[0x26D5F1170](v46);

        MEMORY[0x26D5F1170](93, 0xE100000000000000);
        v47 = sub_266C22A3C(v70[0], v70[1], v69);

        *(v41 + 24) = v47;
        _os_log_impl(&dword_266C08000, v39, v40, "Got %ld result%s on path %s", v41, 0x20u);
        v48 = v67;
        swift_arrayDestroy();
        MEMORY[0x26D5F2480](v48, -1, -1);
        MEMORY[0x26D5F2480](v41, -1, -1);
      }

      else
      {
      }

      v50 = a1 + 32;
      *&v49 = 136315138;
      v67 = v49;
      do
      {
        sub_266C233D0(v50, v70);
        v51 = sub_266DA948C();
        v52 = sub_266DAAB0C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v69[0] = v54;
          *v53 = v67;
          v55 = v70[3];
          v56 = v70[4];
          __swift_project_boxed_opaque_existential_1(v70, v70[3]);
          v57 = sub_266CDA8CC(v55, v56);
          v59 = v58;
          __swift_destroy_boxed_opaque_existential_0(v70);
          v60 = sub_266C22A3C(v57, v59, v69);

          *(v53 + 4) = v60;
          _os_log_impl(&dword_266C08000, v51, v52, "Partial result: %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v54);
          MEMORY[0x26D5F2480](v54, -1, -1);
          MEMORY[0x26D5F2480](v53, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v70);
        }

        v50 += 40;
        --v25;
      }

      while (v25);

      return a1;
    }
  }

  else
  {

    v31 = v66;

    v32 = sub_266DA948C();
    v33 = sub_266DAAB0C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v69[0] = v35;
      *v34 = 136315138;
      v70[0] = 91;
      v70[1] = 0xE100000000000000;
      v36 = sub_266D98478(1, v31);
      MEMORY[0x26D5F1170](v36);

      MEMORY[0x26D5F1170](93, 0xE100000000000000);
      v37 = sub_266C22A3C(v70[0], v70[1], v69);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_266C08000, v32, v33, "Got no results on path %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x26D5F2480](v35, -1, -1);
      MEMORY[0x26D5F2480](v34, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v30;
}

void *sub_266D98D2C()
{
  sub_266D99240(v1);
  qword_2800E6588 = 0;
  unk_2800E6590 = 0;
  byte_2800E6598 = -1;
  qword_2800E65A0 = MEMORY[0x277D84F90];
  return memcpy(&unk_2800E65A8, v1, 0x99uLL);
}

uint64_t sub_266D98D80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  __dst[0] = a1;
  __dst[1] = a2;

  MEMORY[0x26D5F1170](0x2020202020202020, 0xE800000000000000);
  v6 = __dst[1];
  v7 = *(v2 + 24);
  v8 = *(v7 + 16);
  v33 = v8;
  if (v8)
  {
    v31 = v5;
    v32 = v4;
    v9 = __dst[0];
    v38 = 2651;
    v39 = 0xE200000000000000;
    v37 = MEMORY[0x277D84F90];
    sub_266C387DC(0, v8, 0);
    v10 = v37;
    v11 = (v7 + 32);
    v12 = v8;
    do
    {
      memcpy(__dst, v11, 0xB9uLL);
      sub_266D6638C(__dst, &v34);
      v13 = sub_266D98D80(v9, v6);
      v15 = v14;
      sub_266D663E8(__dst);
      v37 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_266C387DC(v16 > 1, v17 + 1, 1);
        v10 = v37;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v11 += 192;
      --v12;
    }

    while (v12);

    v34 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC808, &qword_266DB6BF8);
    sub_266D1731C();
    v19 = sub_266DAA6DC();
    v21 = v20;

    MEMORY[0x26D5F1170](v19, v21);

    MEMORY[0x26D5F1170](93, 0xE100000000000000);
    v23 = v38;
    v22 = v39;
    v5 = v31;
    v4 = v32;
    v3 = v2;
  }

  else
  {

    v22 = 0xE200000000000000;
    v23 = 23899;
  }

  v24 = *(v3 + 16);
  if (v24 == 255)
  {
    v28 = 0xE300000000000000;
    v26 = 7104878;
  }

  else
  {
    v25 = *(v3 + 8);
    v34 = *v3;
    v35 = v25;
    v36 = v24;
    sub_266D66450(v34, v25, v24);
    v26 = sub_266DAA72C();
    v28 = v27;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_266DAADFC();
  MEMORY[0x26D5F1170](v5, v4);
  MEMORY[0x26D5F1170](0xD000000000000019, 0x8000000266DC46A0);
  MEMORY[0x26D5F1170](v26, v28);

  MEMORY[0x26D5F1170](10, 0xE100000000000000);
  MEMORY[0x26D5F1170](v5, v4);
  MEMORY[0x26D5F1170](0x6C69686320202020, 0xEF28203A6E657264);
  v38 = v33;
  v29 = sub_266DAB13C();
  MEMORY[0x26D5F1170](v29);

  MEMORY[0x26D5F1170](8233, 0xE200000000000000);
  MEMORY[0x26D5F1170](v23, v22);

  MEMORY[0x26D5F1170](10, 0xE100000000000000);
  MEMORY[0x26D5F1170](v5, v4);
  MEMORY[0x26D5F1170](125, 0xE100000000000000);
  return v34;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy15SearchCriterionOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0xD)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D99148(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 185))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266D99188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D99254(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_266D992A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_266D992F8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_0_92()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_1_71(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x99uLL);
}

void *OUTLINED_FUNCTION_2_75(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x99uLL);
}

uint64_t OUTLINED_FUNCTION_4_59(uint64_t a1, uint64_t a2)
{

  return sub_266C744CC(a1, a2, v2, v3);
}

_BYTE *storeEnumTagSinglePayload for FriendLocationErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for LabeledLocationResult()
{
  result = qword_2800CDFF0;
  if (!qword_2800CDFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266D994C0()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_266D99534();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_266D99534()
{
  if (!qword_2800CE000)
  {
    type metadata accessor for Location();
    v0 = sub_266DAA97C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800CE000);
    }
  }
}

unint64_t sub_266D99590()
{
  result = qword_2800CE008[0];
  if (!qword_2800CE008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800CE008);
  }

  return result;
}

uint64_t SFMContactDataProvider.withCaching()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SFMCachingContactDataProvider();
  (*(v7 + 16))(v10, v3, a1);
  result = sub_266D9A558(v10, v11, a1, a2);
  a3[3] = v11;
  a3[4] = &protocol witness table for SFMCachingContactDataProvider;
  *a3 = result;
  return result;
}

uint64_t sub_266D99730(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t sub_266D99824(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_266D998CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  v1 = sub_266DAA6CC();
  swift_beginAccess();
  v2 = *(v0 + 56);
  *(v0 + 56) = v1;

  swift_beginAccess();
  memcpy(__dst, (v0 + 64), sizeof(__dst));
  *(v0 + 64) = sub_266D9AE00;
  *(v0 + 72) = v0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;

  return sub_266C3A088(__dst, &qword_2800CE090, &qword_266DBFCC8);
}

uint64_t sub_266D999BC(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

double sub_266D99A18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  if (!*(v3[7] + 16) || (, OUTLINED_FUNCTION_13_11(), sub_266D99E08(), v9 = v8, , (v9 & 1) == 0))
  {
    v10 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v11 = *(v10 + 16);

    v12 = OUTLINED_FUNCTION_13_11();
    v11(v12);
    swift_beginAccess();
    v13 = v3[7];
    swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v3[7];
    sub_266D9A210(v30, a1, a2);
    v3[7] = v25[0];

    swift_endAccess();
  }

  v14 = v3[7];
  if (*(v14 + 16))
  {
    v15 = v4[7];

    OUTLINED_FUNCTION_13_11();
    v16 = sub_266D99E08();
    if (v17)
    {
      v18 = (*(v14 + 56) + (v16 << 6));
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *v18;
      v27 = v21;
      v28 = v20;
      v29 = v19;
      sub_266C744CC(&v26, v25, &qword_2800C9B18, &qword_266DBFC40);

      v22 = v27;
      *a3 = v26;
      a3[1] = v22;
      result = *&v28;
      v24 = v29;
      a3[2] = v28;
      a3[3] = v24;
      return result;
    }
  }

  result = 0.0;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_266D99BC4@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  sub_266D99C14(a1);
  return swift_endAccess();
}

uint64_t sub_266D99C14@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 2);
  v21[0] = *(v1 + 1);
  v21[1] = v4;
  v5 = *(v1 + 4);
  v21[2] = *(v1 + 3);
  v21[3] = v5;
  if (*(&v5 + 1) == 1)
  {
    v6 = *v1;
    v7 = v1[1];
    (*v2)();
    v8 = *(v2 + 2);
    v17[0] = *(v2 + 1);
    v17[1] = v8;
    v9 = *(v2 + 4);
    v17[2] = *(v2 + 3);
    v17[3] = v9;
    sub_266C3A088(v17, &qword_2800CE098, &qword_266DBFCD0);
    v10 = a1[1];
    v18[0] = *a1;
    v18[1] = v10;
    v12 = a1[3];
    v19 = a1[2];
    v11 = v19;
    v20 = v12;
    *(v2 + 1) = v18[0];
    *(v2 + 2) = v10;
    *(v2 + 3) = v11;
    *(v2 + 4) = v12;
    sub_266C744CC(v18, &v16, &qword_2800C9B18, &qword_266DBFC40);
  }

  else
  {
    v13 = *(v1 + 2);
    *a1 = *(v1 + 1);
    a1[1] = v13;
    v14 = *(v1 + 4);
    a1[2] = *(v1 + 3);
    a1[3] = v14;
  }

  return sub_266C744CC(v21, v18, &qword_2800CE098, &qword_266DBFCD0);
}

uint64_t *SFMCachingContactDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[17];

  sub_266D9A7D4(v3, v4, v5, v6, v7, v8, v9, v10);
  return v0;
}

uint64_t SFMCachingContactDataProvider.__deallocating_deinit()
{
  SFMCachingContactDataProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

unint64_t sub_266D99E08()
{
  OUTLINED_FUNCTION_1_72();
  sub_266DAA7BC();
  sub_266DAB2DC();
  v0 = OUTLINED_FUNCTION_13_11();

  return sub_266D99F6C(v0, v1, v2);
}

unint64_t sub_266D99E68()
{
  OUTLINED_FUNCTION_1_72();
  sub_266DAB2CC();
  if (v0)
  {
    sub_266DAA7BC();
  }

  sub_266DAB2DC();
  v1 = OUTLINED_FUNCTION_13_11();

  return sub_266D9A020(v1, v2, v3);
}

unint64_t sub_266D99EE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_266DAAD7C();

  return sub_266D9A0EC(a1, v5);
}

unint64_t sub_266D99F28(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_266DAB29C();

  return sub_266D9A1B0(a1, v4);
}

unint64_t sub_266D99F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266DAB17C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_266D9A020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_266DAB17C() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_266D9A0EC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_266D9AE08(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D5F16F0](v8, a1);
    sub_266CB00BC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_266D9A1B0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_266D9A210(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_266D99E08();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CE0A0, qword_266DBFCD8);
  if ((sub_266DAAEFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_266D99E08();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_266DAB1FC();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7] + (v11 << 6);

    return sub_266D9AE64(a1, v17);
  }

  else
  {
    sub_266D9A48C(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_266D9A34C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_266D99E08();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDC68, &unk_266DBDE10);
  if ((sub_266DAAEFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_266D99E08();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_266DAB1FC();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7] + 248 * v11;

    return sub_266D9AED4(a1, v17);
  }

  else
  {
    sub_266D9A4E4(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_266D9A48C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
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

void *sub_266D9A4E4(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 248 * a1), __src, 0xF2uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_266D9A558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SFMCachingContactDataProvider();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = sub_266D9A668(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

uint64_t sub_266D9A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_266C233D0(v12, a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  *(a2 + 56) = sub_266DAA6CC();
  sub_266C233D0(v12, v11);
  v8 = swift_allocObject();
  sub_266C0B0D8(v11, v8 + 16);
  *(a2 + 64) = sub_266D014EC;
  *(a2 + 72) = v8;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:a2 selector:sel_contactStoreChangedWithNotification_ name:*MEMORY[0x277CBD140] object:0];

  __swift_destroy_boxed_opaque_existential_0(v12);
  return a2;
}

uint64_t sub_266D9A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8 != 1)
  {
    return sub_266D9A7E4(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return a1;
}

uint64_t sub_266D9A7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
  }

  return result;
}

unint64_t sub_266D9A8BC(uint64_t a1)
{
  result = sub_266C3412C();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = sub_266DAAC1C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_266D9A944(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 16) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v9 + 16) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_266D9AAF8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = (&a1[v12 + 16] & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = &a1[v12 + 16] & ~v12;

              __swift_storeEnumTagSinglePayload(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_266D9AE64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_72()
{
  v2 = *(v0 + 40);

  return sub_266DAB2AC();
}

uint64_t sub_266D9AF54(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v106 = a8;
  v99[1] = a5;
  v99[2] = a7;
  v104 = a6;
  v108 = a4;
  v111 = a2;
  v11 = sub_266DA750C();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v109 = v13;
  v110 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v100 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v105 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v20);
  v103 = v99 - v21;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v22);
  v102 = v99 - v23;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v24);
  v101 = v99 - v25;
  OUTLINED_FUNCTION_15_8();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v99 - v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_96_2();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = v99 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = v99 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = v99 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = v99 - v40;
  v42 = type metadata accessor for FindmyDevice.Builder(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_266C62630();
  sub_266C39CC0(a1, &selRef_deviceName);
  v107 = a3;
  if (v46)
  {
    sub_266DAA77C();

    v47 = sub_266DA919C();
    v48 = 0;
  }

  else
  {
    v47 = sub_266DA919C();
    v48 = 1;
  }

  v49 = 1;
  __swift_storeEnumTagSinglePayload(v41, v48, 1, v47);
  v50 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceName;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v41, v45 + v50);
  swift_endAccess();
  sub_266C55ECC(v41);
  sub_266C39CC0(a1, &selRef_emoji);
  if (v51)
  {
    sub_266DAA77C();

    v49 = 0;
  }

  sub_266DA919C();
  OUTLINED_FUNCTION_1_73(v39, v49);
  v52 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emoji;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v39, v45 + v52);
  swift_endAccess();
  sub_266C55ECC(v39);
  sub_266C39CC0(a1, &selRef_productNameSemantic);
  if (v53 || (sub_266C39CC0(a1, &selRef_productName), v54))
  {
    sub_266DAA77C();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  OUTLINED_FUNCTION_1_73(v36, v55);
  v56 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_productName;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v36, v45 + v56);
  swift_endAccess();
  sub_266C55ECC(v36);
  sub_266C39CC0(a1, &selRef_deviceClassSemantic);
  if (v57 || (sub_266C39CC0(a1, &selRef_deviceClass), v58))
  {
    sub_266DAA77C();

    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = 1;
  OUTLINED_FUNCTION_1_73(v33, v59);
  v61 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceClass;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v33, v45 + v61);
  swift_endAccess();
  sub_266C55ECC(v33);
  sub_266C39CC0(a1, &selRef_category);
  if (v62)
  {
    sub_266DAA77C();

    v60 = 0;
  }

  OUTLINED_FUNCTION_1_73(v8, v60);
  v63 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_category;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v8, v45 + v63);
  swift_endAccess();
  sub_266C55ECC(v8);
  *(v45 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isItem) = sub_266CC7C44() & 1;
  DeviceLocality.description.getter([a1 deviceLocality]);
  sub_266DAA77C();

  OUTLINED_FUNCTION_1_73(v29, 0);
  v64 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceLocality;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v29, v45 + v64);
  swift_endAccess();
  sub_266C55ECC(v29);
  sub_266DA900C();
  v65 = [a1 deviceOwner];
  (*(v109 + 16))(v100, v111, v110);
  v66 = sub_266DA8FBC();
  v67 = sub_266C62788(v66);

  v68 = [a1 deviceOwner];
  if (v68)
  {
    v69 = v68;
    v70 = [v68 isMe];
  }

  else
  {
    v70 = 0;
  }

  v71 = v107;
  v72 = v101;
  *(v67 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_ownerIsMe) = v70;
  DeviceSpecificityLevel.description.getter([a1 deviceSpecificityLevel]);
  sub_266DAA77C();

  v73 = 1;
  OUTLINED_FUNCTION_1_73(v29, 0);
  v74 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_specificityLevel;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v29, v67 + v74);
  swift_endAccess();
  sub_266C55ECC(v29);
  sub_266D9B8B0();
  if (v75)
  {
    sub_266DAA77C();

    v73 = 0;
  }

  v76 = v103;
  v77 = 1;
  OUTLINED_FUNCTION_1_73(v72, v73);
  v78 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_conversationalProductName;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v72, v67 + v78);
  swift_endAccess();
  sub_266C55ECC(v72);
  if ((sub_266CC7C44() & 1) == 0)
  {
    v77 = [a1 deviceSpecificityLevel] == 3;
  }

  *(v67 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_displayByName) = v77;
  v79 = [a1 isEarbuds];
  if (v79)
  {
    v80 = v79;
    v81 = [v79 BOOLValue];
  }

  else
  {
    v81 = 0;
  }

  v82 = v105;
  *(v67 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isEarbuds) = v81;
  v83 = [a1 isHeadphones];
  if (v83)
  {
    v84 = v83;
    v85 = [v83 BOOLValue];
  }

  else
  {
    v85 = 0;
  }

  *(v67 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isHeadphones) = v85;
  v86 = v108;
  if (v108 >> 60 == 15)
  {
    v87 = 1;
    v88 = v102;
  }

  else
  {
    sub_266C2BA98(v71, v108);
    sub_266DA73AC();
    sub_266C2BAF0(v71, v86);
    v88 = v102;
    sub_266DAA77C();

    v87 = 0;
  }

  v89 = 1;
  OUTLINED_FUNCTION_1_73(v88, v87);
  v90 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_image;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v88, v67 + v90);
  swift_endAccess();
  sub_266C55ECC(v88);
  if (v104)
  {
    sub_266DAA77C();

    v89 = 0;
  }

  v91 = 1;
  OUTLINED_FUNCTION_1_73(v76, v89);
  v92 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_selectAction;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v76, v67 + v92);
  swift_endAccess();
  sub_266C55ECC(v76);
  if (v106)
  {
    sub_266DAA77C();

    v91 = 0;
  }

  OUTLINED_FUNCTION_1_73(v82, v91);
  v93 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emphasisId;
  OUTLINED_FUNCTION_0_38();
  sub_266CAB3E8(v82, v67 + v93);
  swift_endAccess();
  sub_266C55ECC(v82);
  v94 = type metadata accessor for FindmyDevice(0);
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  swift_allocObject();
  v97 = sub_266C628E8(v67);
  sub_266C2BAF0(v71, v86);

  (*(v109 + 8))(v111, v110);
  return v97;
}

uint64_t sub_266D9B8B0()
{
  if (sub_266CC7C44())
  {
    v1 = &selRef_category;
    return sub_266C39CC0(v0, v1);
  }

  if ([v0 deviceSpecificityLevel] == 1)
  {
    result = sub_266C39CC0(v0, &selRef_deviceClassSemantic);
    if (!v3)
    {
      v1 = &selRef_deviceClass;
      return sub_266C39CC0(v0, v1);
    }
  }

  else
  {
    result = sub_266C39CC0(v0, &selRef_productNameSemantic);
    if (!v4)
    {
      v1 = &selRef_productName;
      return sub_266C39CC0(v0, v1);
    }
  }

  return result;
}

uint64_t sub_266D9B934()
{
  v2 = 0xED000072656E774FLL;
  v3 = sub_266DA919C();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_96_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_266DAADFC();
  v31 = v29;
  v32 = v30;
  MEMORY[0x26D5F1170](0xD000000000000013, 0x8000000266DC4720);
  sub_266C64D14(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName, v17);
  v18 = sub_266DAA72C();
  MEMORY[0x26D5F1170](v18);

  MEMORY[0x26D5F1170](0x6375646F7270203BLL, 0xEB00000000203A74);
  sub_266C64D14(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName, v17);
  v19 = sub_266DAA72C();
  MEMORY[0x26D5F1170](v19);

  MEMORY[0x26D5F1170](0x3A72656E776F203BLL, 0xE900000000000020);
  if (!*(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner))
  {
    goto LABEL_4;
  }

  sub_266DA8FEC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    sub_266C55ECC(v1);
LABEL_4:
    v20 = 0x206E776F6E6B6E55;
    goto LABEL_6;
  }

  v20 = sub_266DA917C();
  v2 = v21;
  (*(v28 + 8))(v1, v3);
LABEL_6:
  MEMORY[0x26D5F1170](v20, v2);

  MEMORY[0x26D5F1170](0x736168706D65203BLL, 0xEE00203A64497369);
  v22 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
  swift_beginAccess();
  sub_266C64D14(v0 + v22, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3))
  {
    sub_266C55ECC(v14);
    v23 = 0x8000000266DC4740;
    v24 = 0xD000000000000012;
  }

  else
  {
    v25 = v28;
    (*(v28 + 16))(v9, v14, v3);
    sub_266C55ECC(v14);
    v24 = sub_266DA917C();
    v23 = v26;
    (*(v25 + 8))(v9, v3);
  }

  MEMORY[0x26D5F1170](v24, v23);

  return v31;
}

uint64_t OUTLINED_FUNCTION_1_73(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void *sub_266D9BD54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *a1;
  v4 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    v5 = v30;
    sub_266D99240(v32);
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_266D9BFD4(a1, v17);
    sub_266D9C280(a1, v18);
    sub_266D97F44(v18, v19);
    sub_266D663E8(v18);
    sub_266D663E8(v17);
    if (*(a1 + 72))
    {
      if (qword_2800C94D0 != -1)
      {
        swift_once();
      }

      memcpy(__dst, &qword_2800E6588, 0xB9uLL);
      v10 = __dst[3];
      v11 = __dst[0];
      v12 = __dst[1];
      v13 = __dst[2];
      sub_266D6638C(__dst, v26);
      memcpy(__src, &__dst[4], 0x99uLL);
    }

    else
    {
      v11 = *(a1 + 64);
      sub_266D99240(__src);
      v12 = 0;
      v10 = MEMORY[0x277D84F90];
      v13 = 4;
    }

    v15[0] = v11;
    v15[1] = v12;
    LOBYTE(v15[2]) = v13;
    v15[3] = v10;
    memcpy(&v15[4], __src, 0x99uLL);
    memcpy(__dst, v15, 0xB9uLL);
    sub_266D97F44(__dst, v20);
    sub_266D663E8(v15);
    sub_266D663E8(v19);
    sub_266D9C5CC(a1, v21);
    sub_266D97F44(v21, v22);
    sub_266D663E8(v21);
    sub_266D663E8(v20);
    sub_266D9C888(a1, v23);
    sub_266D97F44(v23, v24);
    sub_266D663E8(v23);
    sub_266D663E8(v22);
    sub_266D9C98C(a1, a2, v25);
    sub_266D97F44(v25, v26);
    sub_266D663E8(v25);
    sub_266D663E8(v24);
    memcpy(v32, v29, 0x99uLL);
    v7 = v28;
    v5 = v26[0];
    v4 = v26[1];
    v6 = v27;
  }

  memcpy(v15, v32, 0x99uLL);
  sub_266CAA834(&v30, __src);
  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  return memcpy((a3 + 32), v15, 0x99uLL);
}

void *sub_266D9BFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 48);
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_266D99240(v10);
    __src[0] = v4;
    __src[1] = v3;
    LOBYTE(__src[2]) = 1;
    __src[3] = MEMORY[0x277D84F90];
    memcpy(&__src[4], v10, 0x99uLL);
    memcpy(__dst, __src, 0xB9uLL);
    v12[0] = v4;
    v12[1] = v3;
    LOBYTE(v12[2]) = 2;
    v12[3] = MEMORY[0x277D84F90];
    memcpy(&v12[4], v10, 0x99uLL);
    memcpy(v15, v12, 0xB9uLL);
    v6 = qword_2800C94D0;
    swift_bridgeObjectRetain_n();
    if (v6 != -1)
    {
      swift_once();
    }

    memcpy(v16, &qword_2800E6588, 0xB9uLL);
    if (sub_266D98210(v15, v16))
    {
      sub_266D663E8(v12);
      memcpy(v17, v10, sizeof(v17));
      v7 = MEMORY[0x277D84F90];
      v8 = 1;
    }

    else
    {
      memcpy(v14, &qword_2800E6588, 0xB9uLL);
      if (sub_266D98210(__dst, v14))
      {
        sub_266D663E8(__src);
        memcpy(v17, v10, sizeof(v17));
        v7 = MEMORY[0x277D84F90];
        v8 = 2;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
        v7 = swift_allocObject();
        v7[1] = xmmword_266DB05C0;
        memcpy(v7 + 2, __dst, 0xB9uLL);
        memcpy(v7 + 14, v15, 0xB9uLL);
        memcpy(v17, v10, sizeof(v17));
        v4 = 0;
        v3 = 0;
        v8 = -1;
      }
    }
  }

  else
  {
LABEL_9:
    if (qword_2800C94D0 != -1)
    {
      swift_once();
    }

    memcpy(v16, &qword_2800E6588, 0xB9uLL);
    v7 = v16[3];
    v4 = v16[0];
    v3 = v16[1];
    v8 = v16[2];
    sub_266D6638C(v16, v15);
    memcpy(v17, &v16[4], sizeof(v17));
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  return memcpy((a2 + 32), v17, 0x99uLL);
}

void *sub_266D9C280@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[2];
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = a1[10];
      if (!v6 || !*(v6 + 16))
      {
        sub_266D99240(__src);
        v21[0] = v4;
        v21[1] = v3;
        LOBYTE(v21[2]) = 3;
        v11 = MEMORY[0x277D84F90];
        v21[3] = MEMORY[0x277D84F90];
        memcpy(&v21[4], __src, 0x99uLL);
        memcpy(v29, v21, 0xB9uLL);
        v22[0] = v4;
        v22[1] = v3;
        LOBYTE(v22[2]) = 1;
        v22[3] = MEMORY[0x277D84F90];
        memcpy(&v22[4], __src, 0x99uLL);
        memcpy(v31, v22, 0xB9uLL);
        v12 = qword_2800C94D0;
        swift_bridgeObjectRetain_n();
        if (v12 != -1)
        {
          swift_once();
        }

        memcpy(__dst, &qword_2800E6588, 0xB9uLL);
        if (sub_266D98210(v31, __dst))
        {
          sub_266D663E8(v22);
          v13 = MEMORY[0x277D84F90];
          v14 = 3;
        }

        else
        {
          memcpy(v30, &qword_2800E6588, 0xB9uLL);
          if (!sub_266D98210(v29, v30))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
            v13 = swift_allocObject();
            v13[1] = xmmword_266DB05C0;
            memcpy(v13 + 2, v29, 0xB9uLL);
            memcpy(v13 + 14, v31, 0xB9uLL);
            v15 = 0;
            v16 = 0;
            v14 = -1;
            goto LABEL_18;
          }

          sub_266D663E8(v21);
          v13 = MEMORY[0x277D84F90];
          v14 = 1;
        }

        v15 = v4;
        v16 = v3;
LABEL_18:
        v18[0] = v15;
        v18[1] = v16;
        LOBYTE(v18[2]) = v14;
        v18[3] = v13;
        memcpy(&v18[4], __src, 0x99uLL);
        memcpy(v28, v18, sizeof(v28));
        v19[0] = v4;
        v19[1] = v3;
        LOBYTE(v19[2]) = 2;
        v19[3] = v11;
        memcpy(&v19[4], __src, 0x99uLL);
        memcpy(v27, v19, 0xB9uLL);

        sub_266D97C44(v27, v23);
        sub_266D663E8(v19);
        sub_266D663E8(v18);
        memcpy(v33, v26, sizeof(v33));
        v7 = v25;
        v8 = v23[0];
        v9 = v23[1];
        v10 = v24;
        goto LABEL_19;
      }
    }
  }

  if (qword_2800C94D0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_2800E6588, 0xB9uLL);
  v7 = __dst[3];
  v8 = __dst[0];
  v9 = __dst[1];
  v10 = __dst[2];
  sub_266D6638C(__dst, v31);
  memcpy(v33, &__dst[4], sizeof(v33));
LABEL_19:
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v7;
  return memcpy((a2 + 32), v33, 0x99uLL);
}

void *sub_266D9C5CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = a1[4];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 && ((v6 = a1[10]) == 0 || !*(v6 + 16)))
  {
    sub_266D99240(v11);
    v12[0] = v4;
    v12[1] = v3;
    LOBYTE(v12[2]) = 11;
    v12[3] = MEMORY[0x277D84F90];
    memcpy(&v12[4], v11, 0x99uLL);
    memcpy(v14, v12, 0xB9uLL);
    v13[0] = v4;
    v13[1] = v3;
    LOBYTE(v13[2]) = 2;
    v13[3] = MEMORY[0x277D84F90];
    memcpy(&v13[4], v11, 0x99uLL);
    memcpy(v16, v13, 0xB9uLL);
    v10 = qword_2800C94D0;
    swift_bridgeObjectRetain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_2800E6588, 0xB9uLL);
    if (sub_266D98210(v16, __dst))
    {
      sub_266D663E8(v13);
      memcpy(__src, v11, sizeof(__src));
      v7 = MEMORY[0x277D84F90];
      v8 = 11;
    }

    else
    {
      memcpy(v15, &qword_2800E6588, 0xB9uLL);
      if (sub_266D98210(v14, v15))
      {
        sub_266D663E8(v12);
        memcpy(__src, v11, sizeof(__src));
        v7 = MEMORY[0x277D84F90];
        v8 = 2;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
        v7 = swift_allocObject();
        v7[1] = xmmword_266DB05C0;
        memcpy(v7 + 2, v14, 0xB9uLL);
        memcpy(v7 + 14, v16, 0xB9uLL);
        memcpy(__src, v11, sizeof(__src));
        v4 = 0;
        v3 = 0;
        v8 = -1;
      }
    }
  }

  else
  {
LABEL_7:
    if (qword_2800C94D0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_2800E6588, 0xB9uLL);
    v7 = __dst[3];
    v4 = __dst[0];
    v3 = __dst[1];
    v8 = __dst[2];
    sub_266D6638C(__dst, v16);
    memcpy(__src, &__dst[4], sizeof(__src));
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  return memcpy((a2 + 32), __src, 0x99uLL);
}

void *sub_266D9C888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  if (v3 && *(v3 + 16))
  {

    sub_266CB89BC(v4);
    v6 = v5;
    sub_266D99240(v11);
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v9 = 12;
  }

  else
  {
    if (qword_2800C94D0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_2800E6588, 0xB9uLL);
    v8 = __dst[3];
    v6 = __dst[0];
    v7 = __dst[1];
    v9 = __dst[2];
    sub_266D6638C(__dst, v11);
    memcpy(v11, &__dst[4], 0x99uLL);
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  return memcpy((a2 + 32), v11, 0x99uLL);
}

void *sub_266D9C98C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 152);
  v5 = *(a1 + 96) == 1 || v4 == 2;
  if (!v5 && (v4 & 1) != 0)
  {
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
    (*(v7 + 8))(v23, v6, v7);
    v8 = 0;
    v9 = v24;
    v10 = -1;
    if (v24)
    {
      v11 = 0;
      if (v23[1])
      {
        v8 = v23[0];
        v10 = 2;
      }
    }

    else
    {
      v11 = 0;
    }

    sub_266D99240(__src);
    v21[0] = 0;
    v21[1] = 0;
    LOBYTE(v21[2]) = 13;
    v15 = MEMORY[0x277D84F90];
    v21[3] = MEMORY[0x277D84F90];
    memcpy(&v21[4], __src, 0x99uLL);
    memcpy(v32, v21, 0xB9uLL);
    v22[0] = v8;
    v22[1] = v11;
    LOBYTE(v22[2]) = v10;
    v22[3] = MEMORY[0x277D84F90];
    memcpy(&v22[4], __src, 0x99uLL);
    memcpy(v31, v22, 0xB9uLL);
    sub_266D97C44(v31, v25);
    sub_266D663E8(v22);
    sub_266D663E8(v21);
    if (v9)
    {
      v9 = v23[2];
      v16 = v23[3];

      sub_266C24A30(v23);
      if (v16)
      {
        v17 = 2;
LABEL_17:
        v19[0] = v9;
        v19[1] = v16;
        LOBYTE(v19[2]) = v17;
        v19[3] = v15;
        memcpy(&v19[4], __src, 0x99uLL);
        memcpy(v30, v19, 0xB9uLL);
        sub_266D97C44(v30, &v26);
        sub_266D663E8(v19);
        sub_266D663E8(v25);
        memcpy(__dst, v29, sizeof(__dst));
        v12 = v28;
        v13 = v26;
        v14 = v27;
        goto LABEL_18;
      }

      v9 = 0;
    }

    else
    {
      v16 = 0;
    }

    v17 = -1;
    goto LABEL_17;
  }

  sub_266D9CBD4(a1);
  memcpy(__dst, &v32[2], sizeof(__dst));
  v12 = *(&v32[1] + 1);
  v13 = v32[0];
  v14 = v32[1];
LABEL_18:
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v12;
  return memcpy((a3 + 32), __dst, 0x99uLL);
}

void *sub_266D9CBD4(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1[12];
  if (v4 == 1)
  {
    if (qword_2800C94D0 != -1)
    {
      swift_once();
    }

    memcpy(v61, &qword_2800E6588, 0xB9uLL);
    v5 = v61[3];
    v6 = v61[0];
    v7 = v61[1];
    v8 = v61[2];
    sub_266D6638C(v61, v60);
    memcpy(__dst, &v61[4], sizeof(__dst));
  }

  else
  {
    v10 = v1[13];
    v9 = v1[14];
    v11 = v1[16];
    v12 = v1[18];
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v1[17];
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_266D99240(__src);
      v54[0] = v13;
      v54[1] = v12;
      LOBYTE(v54[2]) = 6;
      v15 = MEMORY[0x277D84F90];
      v54[3] = MEMORY[0x277D84F90];
      memcpy(&v54[4], __src, 0x99uLL);
      memcpy(v61, v54, 0xB9uLL);
      v55[0] = v13;
      v55[1] = v12;
      LOBYTE(v55[2]) = 8;
      v55[3] = MEMORY[0x277D84F90];
      memcpy(&v55[4], __src, 0x99uLL);
      memcpy(v60, v55, 0xB9uLL);
      swift_bridgeObjectRetain_n();
      sub_266D97F44(v60, v57);
      sub_266D663E8(v55);
      sub_266D663E8(v54);
      v56[0] = v13;
      v56[1] = v12;
      LOBYTE(v56[2]) = 2;
      v56[3] = v15;
      memcpy(&v56[4], __src, 0x99uLL);
      memcpy(v59, v56, 0xB9uLL);

      sub_266D97C44(v59, v58);
      sub_266D663E8(v56);
      sub_266D663E8(v57);
      memcpy(__dst, &v58[4], sizeof(__dst));
      v5 = v58[3];
      v6 = v58[0];
      v7 = v58[1];
      v8 = v58[2];
    }

    else
    {
LABEL_10:
      v30 = v1[15];
      if (v4)
      {
        v16 = v1[11];
      }

      else
      {
        v16 = 0;
      }

      if (v4)
      {
        v17 = 6;
      }

      else
      {
        v17 = -1;
      }

      if (v4)
      {
        v18 = 5;
      }

      else
      {
        v18 = -1;
      }

      sub_266D99240(v39);
      v40[0] = v16;
      v40[1] = v4;
      LOBYTE(v40[2]) = v18;
      v19 = MEMORY[0x277D84F90];
      v40[3] = MEMORY[0x277D84F90];
      memcpy(&v40[4], v39, 0x99uLL);
      memcpy(v61, v40, 0xB9uLL);
      v31 = v16;
      v41[0] = v16;
      v41[1] = v4;
      LOBYTE(v41[2]) = v17;
      v41[3] = MEMORY[0x277D84F90];
      memcpy(&v41[4], v39, 0x99uLL);
      memcpy(v60, v41, 0xB9uLL);
      swift_bridgeObjectRetain_n();
      sub_266D97C44(v60, v42);
      sub_266D663E8(v41);
      sub_266D663E8(v40);
      if (v9)
      {
        v20 = v10;
      }

      else
      {
        v20 = 0;
      }

      if (v9)
      {
        v21 = 6;
      }

      else
      {
        v21 = -1;
      }

      v37[0] = v20;
      v37[1] = v9;
      if (v9)
      {
        v22 = 5;
      }

      else
      {
        v22 = -1;
      }

      LOBYTE(v37[2]) = v22;
      v37[3] = v19;
      memcpy(&v37[4], v39, 0x99uLL);
      memcpy(v59, v37, 0xB9uLL);
      v38[0] = v20;
      v38[1] = v9;
      LOBYTE(v38[2]) = v21;
      v38[3] = v19;
      memcpy(&v38[4], v39, 0x99uLL);
      memcpy(v58, v38, 0xB9uLL);
      swift_bridgeObjectRetain_n();
      sub_266D97C44(v58, v43);
      sub_266D663E8(v38);
      sub_266D663E8(v37);
      if (v11)
      {
        v23 = 7;
        v24 = 8;
        v25 = 2;
        v26 = v30;
      }

      else
      {
        v26 = 0;
        v25 = -1;
        v24 = -1;
        v23 = -1;
      }

      v35[0] = v26;
      v35[1] = v11;
      LOBYTE(v35[2]) = v23;
      v35[3] = v19;
      memcpy(&v35[4], v39, 0x99uLL);
      memcpy(v57, v35, 0xB9uLL);
      v36[0] = v26;
      v36[1] = v11;
      LOBYTE(v36[2]) = v24;
      v36[3] = v19;
      memcpy(&v36[4], v39, 0x99uLL);
      memcpy(v56, v36, 0xB9uLL);
      swift_bridgeObjectRetain_n();
      sub_266D97C44(v56, v44);
      sub_266D663E8(v36);
      sub_266D663E8(v35);
      sub_266D97C44(v43, v45);
      sub_266D663E8(v42);
      sub_266D663E8(v43);
      sub_266D97F44(v45, v46);
      sub_266D663E8(v44);
      sub_266D663E8(v45);
      if (v4)
      {
        v27 = 2;
      }

      else
      {
        v27 = -1;
      }

      v34[0] = v31;
      v34[1] = v4;
      LOBYTE(v34[2]) = v27;
      v34[3] = v19;
      memcpy(&v34[4], v39, 0x99uLL);
      memcpy(v55, v34, 0xB9uLL);

      sub_266D97C44(v55, v47);
      sub_266D663E8(v34);
      sub_266D663E8(v46);
      if (v9)
      {
        v28 = 2;
      }

      else
      {
        v28 = -1;
      }

      v33[0] = v20;
      v33[1] = v9;
      LOBYTE(v33[2]) = v28;
      v33[3] = v19;
      memcpy(&v33[4], v39, 0x99uLL);
      memcpy(v54, v33, 0xB9uLL);

      sub_266D97C44(v54, v48);
      sub_266D663E8(v33);
      sub_266D663E8(v47);
      v32[0] = v26;
      v32[1] = v11;
      LOBYTE(v32[2]) = v25;
      v32[3] = v19;
      memcpy(&v32[4], v39, 0x99uLL);
      memcpy(__src, v32, 0xB9uLL);

      sub_266D97C44(__src, v49);
      sub_266D663E8(v32);
      sub_266D663E8(v48);
      memcpy(__dst, v52, sizeof(__dst));
      v5 = v51;
      v6 = v49[0];
      v7 = v49[1];
      v8 = v50;
    }
  }

  *v3 = v6;
  *(v3 + 8) = v7;
  *(v3 + 16) = v8;
  *(v3 + 24) = v5;
  return memcpy((v3 + 32), __dst, 0x99uLL);
}

uint64_t sub_266D9D248(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_74(a1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v13 = OUTLINED_FUNCTION_0_93(v5, v6, v7, v8, v9, v10, v11, v12, v23);
  v14(v13);
  if (sub_266DAB15C())
  {
    v15 = OUTLINED_FUNCTION_3_63();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_4_60();
    v15 = OUTLINED_FUNCTION_2_76(v17, v18);
  }

  v16(v15);
  v19 = sub_266DA72EC();

  v20 = [v19 domain];
  v21 = sub_266DAA70C();

  return v21;
}

id sub_266D9D360(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_74(a1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v13 = OUTLINED_FUNCTION_0_93(v5, v6, v7, v8, v9, v10, v11, v12, v22);
  v14(v13);
  if (sub_266DAB15C())
  {
    v15 = OUTLINED_FUNCTION_3_63();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_4_60();
    v15 = OUTLINED_FUNCTION_2_76(v17, v18);
  }

  v16(v15);
  v19 = sub_266DA72EC();

  v20 = [v19 code];
  return v20;
}

uint64_t OUTLINED_FUNCTION_2_76(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_60()
{

  return swift_allocError();
}

uint64_t sub_266D9D4F0()
{
  v1 = v0;
  v2 = *__swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  if (sub_266D1E0B4())
  {
    return 1;
  }

  v4 = *__swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  return sub_266D1E0E8() & 1;
}

uint64_t sub_266D9D548(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_266D9D568, 0, 0);
}

uint64_t sub_266D9D568()
{
  v1 = *(v0 + 104);
  if (sub_266D9D4F0())
  {
    if (qword_2800C9110 != -1)
    {
      OUTLINED_FUNCTION_53();
    }

    v2 = sub_266DA94AC();
    __swift_project_value_buffer(v2, &unk_2800E61A8);
    v3 = sub_266DA948C();
    v4 = sub_266DAAB0C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      OUTLINED_FUNCTION_32_1(&dword_266C08000, v6, v7, "[CheckAppInstalledFlow] App is installed or device is watch with at least one installed: passing.");
      MEMORY[0x26D5F2480](v5, -1, -1);
    }

    v8 = *(v0 + 96);
    v9 = *(v0 + 104);

    *(v9 + 16) = 0;
    sub_266DA7D7C();
  }

  else
  {
    if (qword_2800C9110 != -1)
    {
      OUTLINED_FUNCTION_53();
    }

    v10 = sub_266DA94AC();
    __swift_project_value_buffer(v10, &unk_2800E61A8);
    v11 = sub_266DA948C();
    v12 = sub_266DAAB0C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      OUTLINED_FUNCTION_32_1(&dword_266C08000, v14, v15, "[CheckAppInstalledFlow] App is NOT installed: failing.");
      MEMORY[0x26D5F2480](v13, -1, -1);
    }

    v16 = *(v0 + 96);
    v17 = *(v0 + 104);

    *(v17 + 16) = 1;
    sub_266C233D0(v17 + 104, v0 + 16);
    sub_266C233D0(v17 + 64, v0 + 56);
    v18 = swift_allocObject();
    sub_266C0B0D8((v0 + 56), v18 + 16);
    v19 = sub_266DA75FC();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    *(v0 + 16) = sub_266DA75EC();
    sub_266DA7D5C();
  }

  OUTLINED_FUNCTION_28();

  return v22();
}

uint64_t sub_266D9D7B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266D9D7D0, 0, 0);
}

uint64_t sub_266D9D7D0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_266D25D18;
  v5 = *(v0 + 16);

  return sub_266CA23EC();
}

uint64_t sub_266D9D87C()
{
  type metadata accessor for CheckAppInstalledFlow();
  sub_266CE8070();
  return sub_266DA79AC();
}

uint64_t *sub_266D9D8D8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  return v0;
}

uint64_t sub_266D9D910()
{
  sub_266D9D8D8();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_266D9D98C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C4716C;

  return sub_266D9D548(a1);
}

uint64_t sub_266D9DA28()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_266C4716C;

  return sub_266D9D7B0(v3, v0 + 16);
}

void *sub_266D9DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_266CAB510(0);
  v8 = v7;
  v9 = sub_266CAB510(1);
  v11 = v10;
  v12 = sub_266CAB510(4);
  v14 = v13;
  a3[3] = a1;
  a3[4] = a2;
  v15 = swift_allocObject();
  *a3 = v15;
  v15[5] = &type metadata for BaseNLContextProvider;
  v15[6] = &off_287861AA0;
  result = swift_allocObject();
  v15[2] = result;
  result[2] = 0x746361746E6F63;
  result[3] = 0xE700000000000000;
  result[4] = v6;
  result[5] = v8;
  result[6] = v9;
  result[7] = v11;
  result[8] = v12;
  result[9] = v14;
  v15[7] = 0x49746361746E6F63;
  v15[8] = 0xE900000000000064;
  v15[9] = 0xD000000000000010;
  v15[10] = 0x8000000266DC23D0;
  return result;
}

uint64_t objectdestroyTm_16()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266D9DC70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C29DCC;

  return sub_266D9DD10(a1, a2);
}

uint64_t sub_266D9DD10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266D9DD30, 0, 0);
}

uint64_t sub_266D9DD30()
{
  v25 = v0;
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v2 = sub_266DA7FBC();
  if (qword_2800C93D8 != -1)
  {
    swift_once();
  }

  v3 = sub_266DA94AC();
  __swift_project_value_buffer(v3, qword_2800E6498);
  v4 = v2;
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v23[0] = v8;
    *v7 = 136315138;
    v9 = v4;
    v10 = [v9 description];
    v11 = sub_266DAA70C();
    v13 = v12;

    v14 = sub_266C22A3C(v11, v13, v23);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_266C08000, v5, v6, "Handling continueInApp response: %s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  v15 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_266DAE3B0;
  v17 = [v4 device];
  v18 = sub_266D9DFB4(v17);

  *(v16 + 32) = v18;
  v19 = sub_266DA820C();
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v20 = MEMORY[0x277D5C1D8];
  v15[3] = v19;
  v15[4] = v20;
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_266DA81FC();

  v21 = v0[1];

  return v21();
}

id sub_266D9DFB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_266D2D3C0(a1, v5);
  v7 = sub_266DA737C();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    v8 = sub_266DA732C();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  [v6 setPunchOutUri_];

  return v6;
}

BOOL sub_266D9E0D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v0 = sub_266DA7FBC();
  v1 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  swift_beginAccess();
  v2 = *&v0[v1];

  return v2 == 2;
}

uint64_t sub_266D9E148(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266CF5964;

  return sub_266D9DD10(a1, a2);
}

uint64_t sub_266D9E1E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266CF5964;

  return sub_266D9DC70(a1, a2);
}

uint64_t sub_266D9E28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B3F8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266CF5964;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

unint64_t sub_266D9E344()
{
  result = qword_2800CE0A8;
  if (!qword_2800CE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0A8);
  }

  return result;
}

unint64_t sub_266D9E39C()
{
  result = qword_2800CE0B0;
  if (!qword_2800CE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0B0);
  }

  return result;
}

unint64_t sub_266D9E3F4()
{
  result = qword_2800CE0B8;
  if (!qword_2800CE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0B8);
  }

  return result;
}

uint64_t type metadata accessor for SiriFindMyExampleUtteranceCATsSimple()
{
  result = qword_2800CE0C0;
  if (!qword_2800CE0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D9E4D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_266D9E528(a1, a2);
}

uint64_t sub_266D9E528(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA926C();
  v6 = OUTLINED_FUNCTION_37_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_266CEEA6C(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_266DA91AC();
  (*(v8 + 8))(a2, v2);
  sub_266C2A858(a1);
  return v16;
}

uint64_t sub_266D9E684(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA926C();
  v6 = OUTLINED_FUNCTION_37_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_266DA91BC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

id FindDeviceAndPlaySoundIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FindDeviceAndPlaySoundDevicesUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 11) < 0xFFFFFFFFFFFFFFF6)
  {
    return 0;
  }

  return result;
}

id sub_266D9E820@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceQuery];
  *a2 = result;
  return result;
}

void sub_266D9E85C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 devices];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DeviceDetail();
    v5 = sub_266DAA93C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_266D9E8CC(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for DeviceDetail();
    v3 = sub_266DAA91C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDevices_];
}

id FindDeviceAndPlaySoundIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindDeviceAndPlaySoundIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FindDeviceAndPlaySoundIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FindDeviceAndPlaySoundIntent.init(coder:)(void *a1)
{
  DeviceAndPlaySoundIntent = type metadata accessor for FindDeviceAndPlaySoundIntent();
  v9 = OUTLINED_FUNCTION_0_94(DeviceAndPlaySoundIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindDeviceAndPlaySoundIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266DAA6FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id FindDeviceAndPlaySoundIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  DeviceAndPlaySoundIntent = type metadata accessor for FindDeviceAndPlaySoundIntent();
  v12 = OUTLINED_FUNCTION_0_94(DeviceAndPlaySoundIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id FindDeviceAndPlaySoundIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_75();

  v3 = sub_266DAA6FC();

  if (v1)
  {
    v4 = sub_266DAA69C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id FindDeviceAndPlaySoundIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_75();

  v3 = sub_266DAA6FC();

  if (v1)
  {
    v4 = sub_266DAA69C();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for FindDeviceAndPlaySoundIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t FindDeviceAndPlaySoundIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 8 && result >= 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266D9EE40@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FindDeviceAndPlaySoundIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_266D9EE74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 needsConfirmPlaySound];
  *a2 = result;
  return result;
}

id sub_266D9EEB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 device];
  *a2 = result;
  return result;
}

uint64_t sub_266D9EF10()
{
  v1 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266D9EF7C(uint64_t a1)
{
  v3 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id FindDeviceAndPlaySoundIntentResponse.init()()
{
  *&v0[OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindDeviceAndPlaySoundIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FindDeviceAndPlaySoundIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code) = 0;
  DeviceAndPlaySoundIntentResponse = type metadata accessor for FindDeviceAndPlaySoundIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(DeviceAndPlaySoundIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindDeviceAndPlaySoundIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id FindDeviceAndPlaySoundIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code) = 0;
  DeviceAndPlaySoundIntentResponse = type metadata accessor for FindDeviceAndPlaySoundIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(DeviceAndPlaySoundIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindDeviceAndPlaySoundIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id FindDeviceAndPlaySoundIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for FindDeviceAndPlaySoundIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266D9F468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FindDeviceAndPlaySoundDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_266D9F49C(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id FindDeviceAndPlaySoundDevicesResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id FindDeviceAndPlaySoundDevicesResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for FindDeviceAndPlaySoundDevicesResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266D9F6FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266D9F738()
{
  result = qword_2800CE0D8;
  if (!qword_2800CE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0D8);
  }

  return result;
}

unint64_t sub_266D9F790()
{
  result = qword_2800CE0E0;
  if (!qword_2800CE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_75()
{

  return sub_266DAA6FC();
}

uint64_t FindFriendFriendUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

id FindFriendIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_266D9F970()
{
  v1 = [v0 friend];

  return v1;
}

void sub_266D9F9A8(void *a1)
{
  [v1 setFriend_];
}

id sub_266D9F9F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 friend];
  *a2 = result;
  return result;
}

id FindFriendIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindFriendIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FindFriendIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FindFriendIntent.init(coder:)(void *a1)
{
  FriendIntent = type metadata accessor for FindFriendIntent();
  v9 = OUTLINED_FUNCTION_0_94(FriendIntent, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindFriendIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266DAA6FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id FindFriendIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  FriendIntent = type metadata accessor for FindFriendIntent();
  v12 = OUTLINED_FUNCTION_0_94(FriendIntent, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id FindFriendIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_75();

  v3 = sub_266DAA6FC();

  if (v1)
  {
    v4 = sub_266DAA69C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id FindFriendIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_75();

  v3 = sub_266DAA6FC();

  if (v1)
  {
    v4 = sub_266DAA69C();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for FindFriendIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t FindFriendIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266D9FF08@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FindFriendIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_266D9FF3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 friendLocation];
  *a2 = result;
  return result;
}

id sub_266D9FF78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userLocation];
  *a2 = result;
  return result;
}

uint64_t sub_266D9FFD8()
{
  v1 = OBJC_IVAR___FindFriendIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266DA0044(uint64_t a1)
{
  v3 = OBJC_IVAR___FindFriendIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *FindFriendIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___FindFriendIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id FindFriendIntentResponse.init()()
{
  *&v0[OBJC_IVAR___FindFriendIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindFriendIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FindFriendIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___FindFriendIntentResponse_code) = 0;
  FriendIntentResponse = type metadata accessor for FindFriendIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(FriendIntentResponse, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindFriendIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id FindFriendIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___FindFriendIntentResponse_code) = 0;
  FriendIntentResponse = type metadata accessor for FindFriendIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(FriendIntentResponse, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id FindFriendIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id FindFriendIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___FindFriendIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for FindFriendIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266DA0530@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FindFriendFriendUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id FindFriendFriendResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id FindFriendFriendResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for FindFriendFriendResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA0778(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266DA07B4()
{
  result = qword_2800CE0F0;
  if (!qword_2800CE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0F0);
  }

  return result;
}

unint64_t sub_266DA080C()
{
  result = qword_2800CE0F8;
  if (!qword_2800CE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE0F8);
  }

  return result;
}

id SetSharedLocationVisibilityIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetSharedLocationVisibilityIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetSharedLocationVisibilityIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetSharedLocationVisibilityIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetSharedLocationVisibilityIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetSharedLocationVisibilityIntent();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSharedLocationVisibilityIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266DAA6FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetSharedLocationVisibilityIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetSharedLocationVisibilityIntent();
  v12 = OUTLINED_FUNCTION_0_94(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetSharedLocationVisibilityIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_75();

  v3 = sub_266DAA6FC();

  if (v1)
  {
    v4 = sub_266DAA69C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SetSharedLocationVisibilityIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_75();

  v3 = sub_266DAA6FC();

  if (v1)
  {
    v4 = sub_266DAA69C();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetSharedLocationVisibilityIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SetSharedLocationVisibilityIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_266DA0E84@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetSharedLocationVisibilityIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266DA0EDC()
{
  v1 = OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266DA0F48(uint64_t a1)
{
  v3 = OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetSharedLocationVisibilityIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetSharedLocationVisibilityIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetSharedLocationVisibilityIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code) = 0;
  v13 = type metadata accessor for SetSharedLocationVisibilityIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSharedLocationVisibilityIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetSharedLocationVisibilityIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code) = 0;
  v13 = type metadata accessor for SetSharedLocationVisibilityIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetSharedLocationVisibilityIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetSharedLocationVisibilityIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetSharedLocationVisibilityIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetSharedLocationVisibilityIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_266DA1428(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266DA1464()
{
  result = qword_2800CE108;
  if (!qword_2800CE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE108);
  }

  return result;
}

uint64_t SetGeoFenceFriendUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

id SetGeoFenceIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_266DA15C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notifyMe];
  *a2 = result;
  return result;
}

id sub_266DA1604@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notifyOnce];
  *a2 = result;
  return result;
}

id sub_266DA1640@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 location];
  *a2 = result;
  return result;
}

id SetGeoFenceIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetGeoFenceIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetGeoFenceIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetGeoFenceIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetGeoFenceIntent();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetGeoFenceIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266DAA6FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetGeoFenceIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetGeoFenceIntent();
  v12 = OUTLINED_FUNCTION_0_94(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetGeoFenceIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_75();

  v3 = sub_266DAA6FC();

  if (v1)
  {
    v4 = sub_266DAA69C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SetGeoFenceIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_75();

  v3 = sub_266DAA6FC();

  if (v1)
  {
    v4 = sub_266DAA69C();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetGeoFenceIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SetGeoFenceIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA1B58@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetGeoFenceIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266DA1BB0()
{
  v1 = OBJC_IVAR___SetGeoFenceIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266DA1C1C(uint64_t a1)
{
  v3 = OBJC_IVAR___SetGeoFenceIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetGeoFenceIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetGeoFenceIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetGeoFenceIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetGeoFenceIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetGeoFenceIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetGeoFenceIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetGeoFenceIntentResponse_code) = 0;
  v13 = type metadata accessor for SetGeoFenceIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetGeoFenceIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetGeoFenceIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetGeoFenceIntentResponse_code) = 0;
  v13 = type metadata accessor for SetGeoFenceIntentResponse();
  v9 = OUTLINED_FUNCTION_0_94(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetGeoFenceIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetGeoFenceIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetGeoFenceIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266DAA69C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetGeoFenceIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266DA2108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetGeoFenceFriendUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

BOOL sub_266DA2200@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetGeoFenceLocationUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id _s10SiriFindMy33SetGeoFenceFriendResolutionResultC14JSONDictionary6intentACSgSDySSypG_So8INIntentCtcfC_0(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id sub_266DA22DC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_266DAA69C();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_266DA2430(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266DA246C()
{
  result = qword_2800CE118;
  if (!qword_2800CE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE118);
  }

  return result;
}

unint64_t sub_266DA24C4()
{
  result = qword_2800CE120;
  if (!qword_2800CE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE120);
  }

  return result;
}

unint64_t sub_266DA251C()
{
  result = qword_2800CE128;
  if (!qword_2800CE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE128);
  }

  return result;
}

unint64_t DeviceLocality.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA26A0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeviceLocality.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_266DA26D4(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id sub_266DA2760(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id DeviceLocalityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceLocalityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceLocalityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id DeviceLocalityResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceLocalityResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266DA29E0()
{
  result = qword_2800CE130;
  if (!qword_2800CE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE130);
  }

  return result;
}

unint64_t DeviceSpecificityLevel.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA2A98@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeviceSpecificityLevel.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id DeviceSpecificityLevelResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceSpecificityLevelResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceSpecificityLevelResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id DeviceSpecificityLevelResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceSpecificityLevelResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266DA2D40()
{
  result = qword_2800CE138;
  if (!qword_2800CE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE138);
  }

  return result;
}

unint64_t SharedLocationVisibility.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA2DF8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SharedLocationVisibility.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SharedLocationVisibilityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SharedLocationVisibilityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SharedLocationVisibilityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id SharedLocationVisibilityResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedLocationVisibilityResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266DA30A0()
{
  result = qword_2800CE140;
  if (!qword_2800CE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE140);
  }

  return result;
}

unint64_t GeoFenceTrigger.init(rawValue:)(unint64_t result)
{
  if (result > 5 || result == 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA3160@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GeoFenceTrigger.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id GeoFenceTriggerResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id GeoFenceTriggerResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for GeoFenceTriggerResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id GeoFenceTriggerResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeoFenceTriggerResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266DA3408()
{
  result = qword_2800CE148;
  if (!qword_2800CE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE148);
  }

  return result;
}

unint64_t GeoFenceAction.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266DA34C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GeoFenceAction.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id GeoFenceActionResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id GeoFenceActionResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for GeoFenceActionResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id GeoFenceActionResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeoFenceActionResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266DA3768()
{
  result = qword_2800CE150;
  if (!qword_2800CE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CE150);
  }

  return result;
}

id sub_266DA380C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceDetailResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266DA3870(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266DA3968();

    sub_266DAAF2C();
  }

  else
  {

    sub_266DAB1AC();
    sub_266DA3968();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266DA3968();
  v2 = sub_266DAA91C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___DeviceDetailResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_266DA3968()
{
  result = qword_2800CE158;
  if (!qword_2800CE158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CE158);
  }

  return result;
}

id sub_266DA39AC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceDetailResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id sub_266DA3A10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isEarbuds];
  *a2 = result;
  return result;
}

id sub_266DA3A4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isHeadphones];
  *a2 = result;
  return result;
}

id sub_266DA3A88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isThisDevice];
  *a2 = result;
  return result;
}

id sub_266DA3AC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 canPlaySound];
  *a2 = result;
  return result;
}

void sub_266DA3B00(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_266DAA70C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_266DA3B64(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_266DAA6FC();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

id DeviceDetail.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id DeviceDetail.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for DeviceDetail();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id DeviceDetail.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeviceDetail.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeviceDetail();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DeviceDetailResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceDetailResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceDetailResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA42F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_95()
{

  return sub_266DAAF1C();
}

id sub_266DA4474@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceOwner];
  *a2 = result;
  return result;
}

void sub_266DA44B0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 deviceTypeCategories];
  if (v3)
  {
    v4 = v3;
    v5 = sub_266DAA93C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_266DA4518(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_266DAA91C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDeviceTypeCategories_];
}

id DeviceQuery.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id DeviceQuery.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for DeviceQuery();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id DeviceQuery.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeviceQuery.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeviceQuery();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266DA48D8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceQueryResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266DA498C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266DA3968();

    sub_266DAAF2C();
  }

  else
  {

    sub_266DAB1AC();
    sub_266DA3968();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266DA3968();
  v2 = sub_266DAA91C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___DeviceQueryResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_266DA4AF0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceQueryResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id DeviceQueryResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceQueryResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceQueryResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA4E6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_96()
{

  return sub_266DAAF1C();
}

id sub_266DA4F44(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SpeakableLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266DA4FA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266DA3968();

    sub_266DAAF2C();
  }

  else
  {

    sub_266DAB1AC();
    sub_266DA3968();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266DA3968();
  v2 = sub_266DAA91C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SpeakableLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_266DA50A0(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SpeakableLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id sub_266DA5104@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 name];
  *a2 = result;
  return result;
}

id sub_266DA5140@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locality];
  *a2 = result;
  return result;
}

id sub_266DA517C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isCoarse];
  *a2 = result;
  return result;
}

void sub_266DA51B8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 areasOfInterest];
  if (v3)
  {
    v4 = v3;
    v5 = sub_266DAA93C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_266DA5220(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_266DAA91C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAreasOfInterest_];
}

id SpeakableLocation.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id SpeakableLocation.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for SpeakableLocation();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id SpeakableLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SpeakableLocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpeakableLocation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SpeakableLocationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SpeakableLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SpeakableLocationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA59B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_97()
{

  return sub_266DAAF1C();
}

id sub_266DA5AEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 person];
  *a2 = result;
  return result;
}

id sub_266DA5B28(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INFriendResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266DA5B8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266DA3968();

    sub_266DAAF2C();
  }

  else
  {

    sub_266DAB1AC();
    sub_266DA3968();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266DA3968();
  v2 = sub_266DAA91C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___INFriendResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_266DA5C84(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INFriendResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id sub_266DA5CE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sharesLocation];
  *a2 = result;
  return result;
}

id sub_266DA5D24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 followsMyLocation];
  *a2 = result;
  return result;
}

id INFriend.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id INFriend.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for INFriend();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id INFriend.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INFriend.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INFriend();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id INFriendResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id INFriendResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for INFriendResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA6484(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_98()
{

  return sub_266DAAF1C();
}

id sub_266DA655C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isProactiveLocation];
  *a2 = result;
  return result;
}

id sub_266DA6598@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locateInProgress];
  *a2 = result;
  return result;
}

id sub_266DA65D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isInaccurate];
  *a2 = result;
  return result;
}

id INFriendLocation.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id INFriendLocation.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_76();
  if (v2)
  {
    v3 = sub_266DAA6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266DAA6FC();

  if (v1)
  {
    v5 = sub_266DAA6FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for INFriendLocation();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id INFriendLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INFriendLocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INFriendLocation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266DA6960(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INFriendLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266DA6A14(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266DA3968();

    sub_266DAAF2C();
  }

  else
  {

    sub_266DAB1AC();
    sub_266DA3968();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266DA3968();
  v2 = sub_266DAA91C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___INFriendLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_266DA6B78(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INFriendLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id INFriendLocationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266DAA69C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id INFriendLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266DAA69C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for INFriendLocationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266DA6EF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_99()
{

  return sub_266DAAF1C();
}