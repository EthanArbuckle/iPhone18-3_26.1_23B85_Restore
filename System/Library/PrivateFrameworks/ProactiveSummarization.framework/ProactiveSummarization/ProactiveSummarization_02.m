uint64_t sub_231CD7598()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (!v0)
  {
    v9 = *(v3 + 184);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CD7698()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 168);

  v2 = *(v0 + 160);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231CD76FC()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];

  sub_231CB4EEC();
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  v10 = v1;
  v11 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_118_0();
  v12 = OUTLINED_FUNCTION_117();
  v13 = v0[25];
  if (v12)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_116(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_97(v15);
    OUTLINED_FUNCTION_40_0(&dword_231CAE000, v16, v17, "Could not write summary with error: %@");
    sub_231CE1118(v14, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v0[19] + 8))(v0[20], v0[18]);
  v18 = v0[20];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_231CD7848()
{
  OUTLINED_FUNCTION_18();
  v1[39] = v2;
  v1[40] = v0;
  v1[37] = v3;
  v1[38] = v4;
  v1[36] = v5;
  v1[34] = v6;
  v1[35] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  v1[41] = OUTLINED_FUNCTION_69();
  v1[42] = swift_task_alloc();
  v11 = sub_231E0FD90();
  v1[43] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[44] = v12;
  v14 = *(v13 + 64);
  v1[45] = OUTLINED_FUNCTION_55();
  v15 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231CD7930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  v13 = *(v12 + 312);
  v14 = *MEMORY[0x277CC2FD8];
  v15 = sub_231E11620();
  v17 = v16;
  v18 = sub_231E10B50();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
  *(v12 + 16) = v18;
  *(v12 + 40) = v19;
  sub_231CE1044((v12 + 16), (v12 + 48));
  v20 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  sub_231CE0DD0((v12 + 48), v15, v17);

  v21 = v20;
  v22 = *MEMORY[0x277CC26C0];
  v23 = sub_231E11620();
  v25 = v24;
  v26 = sub_231E10B40();
  v28 = MEMORY[0x277D837D0];
  if (v27)
  {
    *(v12 + 104) = MEMORY[0x277D837D0];
    *(v12 + 80) = v26;
    *(v12 + 88) = v27;
    sub_231CE1044((v12 + 80), (v12 + 240));
    swift_isUniquelyReferenced_nonNull_native();
    sub_231CE0DD0((v12 + 240), v23, v25);
  }

  else
  {
    v29 = sub_231CE0CA4(v23, v25);
    if (v30)
    {
      v31 = v29;
      swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v20 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74468, &qword_231E15D78);
      v32 = OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_143(v32, v33, v34, v35, v36, v37, v38, v39, v96, v98, v99, v101, v20);
      sub_231CE1044((*(v21 + 56) + 32 * v31), (v12 + 112));
      sub_231E11EB0();
    }

    else
    {
      *(v12 + 112) = 0u;
      *(v12 + 128) = 0u;
    }

    sub_231CE1118(v12 + 112, &dword_27DD741E0, &qword_231E15D70);
  }

  v40 = *(v12 + 312);
  v41 = *MEMORY[0x277CC31B0];
  v42 = sub_231E11620();
  v44 = v43;
  v45 = sub_231E10BA0();
  if (v46)
  {
    *(v12 + 168) = v28;
    *(v12 + 144) = v45;
    *(v12 + 152) = v46;
    sub_231CE1044((v12 + 144), (v12 + 208));
    swift_isUniquelyReferenced_nonNull_native();
    sub_231CE0DD0((v12 + 208), v42, v44);
  }

  else
  {
    v47 = sub_231CE0CA4(v42, v44);
    if (v48)
    {
      v49 = v47;
      swift_isUniquelyReferenced_nonNull_native();
      v102 = v21;
      v21 = *(v21 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74468, &qword_231E15D78);
      v50 = OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_143(v50, v51, v52, v53, v54, v55, v56, v57, v96, v98, v99, v101, v102);
      sub_231CE1044((*(v21 + 56) + 32 * v49), (v12 + 176));
      sub_231E11EB0();
    }

    else
    {
      *(v12 + 176) = 0u;
      *(v12 + 192) = 0u;
    }

    sub_231CE1118(v12 + 176, &dword_27DD741E0, &qword_231E15D70);
  }

  *(v12 + 368) = v21;
  v59 = *(v12 + 336);
  v58 = *(v12 + 344);
  v60 = *(v12 + 312);
  sub_231E10BC0();
  v62 = v61;
  v63 = sub_231CC78C0();
  v100 = *v63;
  *(v12 + 376) = v63[1];

  v64 = sub_231CC78D8();
  v66 = *v64;
  v65 = v64[1];

  sub_231E0FDA0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v58);
  v68 = *(v12 + 360);
  if (EnumTagSinglePayload == 1)
  {
    v70 = *(v12 + 336);
    v69 = *(v12 + 344);
    v71 = *(v12 + 328);
    v72 = *v64;
    v73 = v64[1];
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v69);

    sub_231E0FD10();
    if (__swift_getEnumTagSinglePayload(v70, 1, v69) != 1)
    {
      sub_231CE1118(*(v12 + 336), &qword_27DD74458, &qword_231E15D38);
    }
  }

  else
  {
    (*(*(v12 + 352) + 32))(*(v12 + 360), *(v12 + 336), *(v12 + 344));
  }

  v77 = *(v12 + 320);
  *(v12 + 384) = v62;
  v97 = *(v77 + 16);
  v78 = *(v77 + 32);
  v79 = *(v77 + 40);
  v80 = swift_task_alloc();
  *(v12 + 392) = v80;
  *v80 = v12;
  v80[1] = sub_231CD7DC8;
  v81 = *(v12 + 320);
  v82 = *(v12 + 296);
  v83 = *(v12 + 304);
  v84 = *(v12 + 288);
  v85 = *(v12 + 280);
  v103 = *(v12 + 360);
  OUTLINED_FUNCTION_27_1(*(v12 + 272));
  OUTLINED_FUNCTION_37();

  return sub_231CD73B0(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12);
}

uint64_t sub_231CD7DC8()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[49];
  v3 = v1[48];
  v4 = v1[47];
  v5 = v1[46];
  v6 = v1[45];
  v7 = v1[44];
  v8 = v1[43];
  v9 = *v0;
  OUTLINED_FUNCTION_4();
  *v10 = v9;

  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_70();
  v13(v12);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_106();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CD7F58()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_231CD7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v10[11] = a9;
  v10[12] = v9;
  v10[9] = v11;
  v10[10] = v12;
  v10[7] = v13;
  v10[8] = v14;
  v10[5] = v15;
  v10[6] = v16;
  v10[4] = v17;
  v10[2] = v18;
  v10[3] = v19;
  v10[13] = *v9;
  v20 = sub_231E0FD90();
  v10[14] = v20;
  OUTLINED_FUNCTION_6(v20);
  v10[15] = v21;
  v23 = *(v22 + 64);
  v10[16] = OUTLINED_FUNCTION_69();
  v10[17] = swift_task_alloc();
  v24 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa();
  OUTLINED_FUNCTION_47(v24);
  v26 = *(v25 + 64);
  v10[18] = OUTLINED_FUNCTION_55();
  v27 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v27, v28, v29);
}

uint64_t sub_231CD80C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57_0();
  v14 = v12[7];
  v15 = sub_231E10120();
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v15;
  v18 = v16;
  v19 = sub_231DE8A04(1);
  v13 = v20;
  sub_231CD6294(v19, v20, v17, v18);
  v21 = v19;
  v23 = v22;

  v12[19] = v23;
  if (v23)
  {
    v12[20] = v21;
    v24 = swift_task_alloc();
    v12[21] = v24;
    *v24 = v12;
    v24[1] = sub_231CD82F4;
    v25 = v12[12];
    v26 = v12[5];
    v27 = v12[6];
    v28 = v12[4];
    v29 = v12[3];
    OUTLINED_FUNCTION_27_1(v12[2]);

    return sub_231CD7044();
  }

  else
  {
LABEL_6:
    v31 = v12[16];
    v32 = v12[9];
    v33 = v12[7];
    sub_231E10000();
    v35 = v34;
    sub_231E102F0();
    OUTLINED_FUNCTION_131();
    sub_231E0FD20();
    if (v32)
    {
      v36 = v12[10];
      v37 = v12[11];
      v38 = v12[8];
      v39 = v12[9];
    }

    else
    {
      v40 = v12[12];
      v41 = v40[6];
      v39 = v40[7];
      v36 = v40[8];
      v37 = v40[9];
    }

    v12[22] = v36;
    v12[23] = v39;
    v12[24] = v37;
    v12[25] = v13;
    v12[26] = v35;
    v42 = v37;
    v43 = v36;
    v12[27] = sub_231E11530();
    v44 = swift_task_alloc();
    v12[28] = v44;
    *v44 = v12;
    OUTLINED_FUNCTION_21_1(v44);
    OUTLINED_FUNCTION_27_1(v45);
    OUTLINED_FUNCTION_44();

    return sub_231CD73B0(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
  }
}

uint64_t sub_231CD82F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231CD83D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  v47 = *(v12 + 19);
  v48 = *(v12 + 20);
  v14 = *(v12 + 17);
  v13 = *(v12 + 18);
  v15 = *(v12 + 15);
  v46 = *(v12 + 14);
  v17 = *(v12 + 5);
  v16 = *(v12 + 6);
  v18 = v12[4];
  v19 = *(v12 + 2);
  v20 = *(v12 + 3);
  v21 = *(*(v12 + 12) + 144);
  sub_231E0FD20();
  v22 = sub_231E11530();
  sub_231CD8860(v19, v20, v17, v16, v22, v14, v18);
  v24 = v23;

  (*(v15 + 8))(v14, v46);
  sub_231CC3610(v24, 0, 64, v13);
  (*(*v21 + 128))(v13, v48, v47);

  sub_231CB4E90(v13);
  v25 = *(v12 + 16);
  v26 = *(v12 + 9);
  v27 = *(v12 + 7);
  v49 = sub_231E10000();
  v29 = v28;
  sub_231E102F0();
  OUTLINED_FUNCTION_131();
  sub_231E0FD20();
  if (v26)
  {
    v30 = *(v12 + 10);
    v31 = *(v12 + 11);
    v32 = *(v12 + 8);
    v33 = *(v12 + 9);
  }

  else
  {
    v34 = *(v12 + 12);
    v35 = v34[6];
    v33 = v34[7];
    v30 = v34[8];
    v31 = v34[9];
  }

  *(v12 + 22) = v30;
  *(v12 + 23) = v33;
  *(v12 + 24) = v31;
  *(v12 + 25) = v24;
  *(v12 + 26) = v29;
  v36 = v31;
  v37 = v30;
  v38 = sub_231E11530();
  *(v12 + 27) = v38;
  v39 = swift_task_alloc();
  *(v12 + 28) = v39;
  *v39 = v12;
  OUTLINED_FUNCTION_21_1(v39);
  v41 = OUTLINED_FUNCTION_27_1(v40);

  return sub_231CD73B0(v41, v42, v43, v44, v38, v49, v29, v20, a9, a10, a11, a12);
}

uint64_t sub_231CD8630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_21();
  v16 = v15[28];
  v17 = v15[27];
  v18 = v15[26];
  v37 = v15[25];
  v19 = v15[24];
  v20 = v15[23];
  v21 = v15[22];
  v38 = v15[18];
  v39 = v15[17];
  v22 = v15[16];
  v23 = v15[15];
  v24 = v15[14];
  v25 = *v14;
  OUTLINED_FUNCTION_4();
  *v26 = v25;

  (*(v23 + 8))(v22, v24);

  v27 = *(v25 + 8);
  OUTLINED_FUNCTION_35();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, a12, a13, a14);
}

void sub_231CD8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v96 = a1;
  v97 = a6;
  v103 = a5;
  v100 = a4;
  v101 = a3;
  v99 = a2;
  v8 = sub_231E0F5F0();
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_139();
  v102 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v96 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  v19 = OUTLINED_FUNCTION_47(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_139();
  v98 = v22;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v96 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v96 - v27;
  v29 = sub_231E0FD90();
  v30 = OUTLINED_FUNCTION_24(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_1();
  v37 = v36 - v35;
  sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  (*(v32 + 16))(v37, v97, v29);
  v38 = v96;
  v39 = v11;
  v40 = sub_231CD6B44(v37);
  sub_231CE1054(v38, v28, &qword_27DD74470, &qword_231E17120);
  if (__swift_getEnumTagSinglePayload(v28, 1, v8) != 1)
  {
    v41 = OUTLINED_FUNCTION_90();
    v42(v41, v28, v8);
    sub_231CC1784(0, &unk_2814CAF10, 0x277CCA898);
    v43 = OUTLINED_FUNCTION_69_0();
    v44(v43);
    sub_231E11B60();
    v45 = OUTLINED_FUNCTION_101();
    v46(v45);
  }

  v47 = OUTLINED_FUNCTION_102();
  [v47 v48];

  v49 = type metadata accessor for SummarizerResult();
  sub_231CE1054(v38 + v49[6], v26, &qword_27DD74470, &qword_231E17120);
  if (__swift_getEnumTagSinglePayload(v26, 1, v8) != 1)
  {
    v50 = OUTLINED_FUNCTION_90();
    v51(v50, v26, v8);
    sub_231CC1784(0, &unk_2814CAF10, 0x277CCA898);
    v52 = OUTLINED_FUNCTION_69_0();
    v53(v52);
    sub_231E11B60();
    v54 = OUTLINED_FUNCTION_101();
    v55(v54);
  }

  v56 = OUTLINED_FUNCTION_102();
  [v56 v57];

  v58 = v98;
  sub_231CE1054(v38 + v49[5], v98, &qword_27DD74470, &qword_231E17120);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v8);
  v60 = v99;
  if (EnumTagSinglePayload == 1)
  {
    v61 = 0;
  }

  else
  {
    v62 = OUTLINED_FUNCTION_90();
    v63(v62, v58, v8);
    sub_231CC1784(0, &unk_2814CAF10, 0x277CCA898);
    (*(v39 + 16))(v102, v17, v8);
    v61 = sub_231E11B60();
    (*(v39 + 8))(v17, v8);
  }

  v64 = OUTLINED_FUNCTION_102();
  [v64 v65];

  if ((sub_231DE8F38(*(v60 + 8), *(v60 + 16), *(v60 + 24)) & 1) == 0)
  {
    sub_231DE93AC();
    if (*v60 == 2)
    {
      v66 = 0;
    }

    else
    {
      v66 = sub_231E11910();
    }

    v67 = OUTLINED_FUNCTION_102();
    [v67 v68];

    memcpy(v110, (v60 + 32), sizeof(v110));
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_78();
    sub_231DE9728(v69, v70, v71, v72);
  }

  if (*(v38 + v49[9]))
  {
    v73 = sub_231E11850();
    v74 = sub_231E115F0();
    v75 = OUTLINED_FUNCTION_102();
    [v75 v76];
  }

  [v40 setSummarizationStatus_];
  memcpy(__dst, (v38 + v49[8]), sizeof(__dst));
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_78();
  sub_231DE9728(v77, v78, v79, v80);
  sub_231DE92E8(a7);
  sub_231CE0F84(v101, v40);
  if (v100)
  {
    sub_231CE0FE4(v100, v40);
  }

  v81 = v40;
  v82 = v103 + 64;
  v83 = 1 << *(v103 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v103 + 64);
  v86 = (v83 + 63) >> 6;

  v87 = 0;
  if (v85)
  {
    while (1)
    {
      v88 = v87;
LABEL_25:
      v89 = __clz(__rbit64(v85));
      v85 &= v85 - 1;
      v90 = v89 | (v88 << 6);
      v91 = (*(v103 + 48) + 16 * v90);
      v93 = *v91;
      v92 = v91[1];
      sub_231CB51C4(*(v103 + 56) + 32 * v90, v104);
      *&v105 = v93;
      *(&v105 + 1) = v92;
      sub_231CE1044(v104, &v106);

LABEL_26:
      v108 = v105;
      v109[0] = v106;
      v109[1] = v107;
      if (!*(&v105 + 1))
      {
        break;
      }

      sub_231CE1044(v109, &v105);
      __swift_project_boxed_opaque_existential_0(&v105, *(&v106 + 1));
      v94 = sub_231E120F0();
      __swift_destroy_boxed_opaque_existential_0(&v105);
      v95 = sub_231E115F0();

      [v81 setAttribute:v94 forKey:v95];
      swift_unknownObjectRelease();

      if (!v85)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    while (1)
    {
      v88 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v88 >= v86)
      {
        v85 = 0;
        v106 = 0u;
        v107 = 0u;
        v105 = 0u;
        goto LABEL_26;
      }

      v85 = *(v82 + 8 * v88);
      ++v87;
      if (v85)
      {
        v87 = v88;
        goto LABEL_25;
      }
    }

    __break(1u);
  }
}

uint64_t sub_231CD8F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v10[206] = v9;
  v10[205] = a9;
  v10[204] = v11;
  v10[203] = v12;
  v10[202] = v13;
  v10[201] = v14;
  v10[200] = v15;
  v10[199] = v16;
  v10[198] = v17;
  v10[197] = v18;
  v10[196] = v19;
  v10[207] = *v9;
  v20 = sub_231E106A0();
  v10[208] = v20;
  OUTLINED_FUNCTION_6(v20);
  v10[209] = v21;
  v23 = *(v22 + 64);
  v10[210] = OUTLINED_FUNCTION_55();
  v24 = sub_231E10E30();
  v10[211] = v24;
  OUTLINED_FUNCTION_6(v24);
  v10[212] = v25;
  v27 = *(v26 + 64);
  v10[213] = OUTLINED_FUNCTION_55();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74478, &qword_231E15D98);
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  v10[214] = OUTLINED_FUNCTION_55();
  v31 = sub_231E10BE0();
  v10[215] = v31;
  OUTLINED_FUNCTION_6(v31);
  v10[216] = v32;
  v34 = *(v33 + 64);
  v10[217] = OUTLINED_FUNCTION_55();
  v35 = sub_231E0FD90();
  v10[218] = v35;
  OUTLINED_FUNCTION_6(v35);
  v10[219] = v36;
  v38 = *(v37 + 64);
  v10[220] = OUTLINED_FUNCTION_55();
  v39 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v39, v40, v41);
}

uint64_t sub_231CD915C()
{
  v35 = v0;
  v1 = *(v0 + 1608);
  v2 = sub_231E10560();
  if (!v3)
  {
    v4 = *(v0 + 1608);
    v2 = sub_231E10690();
  }

  *(v0 + 1776) = v3;
  *(v0 + 1768) = v2;
  v5 = *(v0 + 1608);
  sub_231E10560();
  if (v6)
  {

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = *(v0 + 1608);
    v7 = sub_231E10660();
  }

  *(v0 + 1792) = v8;
  *(v0 + 1784) = v7;
  v10 = *(v0 + 1648);
  v11 = *(v0 + 1592);
  v12 = OUTLINED_FUNCTION_25();
  sub_231CD65F4(v12, v13);
  OUTLINED_FUNCTION_81_0();
  *(v0 + 1800) = v14;
  type metadata accessor for SpotlightReader();
  memcpy((v0 + 560), (v10 + 16), 0x80uLL);
  sub_231CE10BC(v0 + 560, v0 + 816);
  *(v0 + 1808) = sub_231DF7564();
  if (*(v11 + 16) >= 2uLL)
  {
    v18 = *(v0 + 1600);
    v19 = *(v0 + 1584);
    v20 = *(v0 + 1576);
    v21 = *(v0 + 1568);
    v22 = *(type metadata accessor for SummarizerResult() + 32);
    memcpy((v0 + 1136), (v21 + v22), 0x60uLL);
    memcpy((v0 + 1448), (v21 + v22), 0x60uLL);
    v23 = *(v20 + 24);
    *(v0 + 1424) = *(v20 + 8);
    *(v0 + 1440) = v23;
    memcpy((v0 + 1040), (v20 + 32), 0x60uLL);
    LOBYTE(v21) = *v20;
    v34[0] = *(v20 + 8);
    LOWORD(v34[1]) = *(v20 + 24);
    memcpy(&v34[1] + 8, (v20 + 32), 0x60uLL);
    *(v0 + 288) = xmmword_231E15CC0;
    *(v0 + 304) = 269;
    memcpy((v0 + 306), (v0 + 1442), 0x66uLL);
    memcpy((v0 + 408), v34, 0x78uLL);
    *(v0 + 528) = v21;
    *(v0 + 536) = v19;
    *(v0 + 544) = v18;
    *(v0 + 552) = 0;
    memcpy((v0 + 16), (v0 + 288), 0x110uLL);
    OUTLINED_FUNCTION_124();
    sub_231CE1054(v24, v25, v26, v27);
    sub_231CD2BC0(v0 + 1424, v0 + 1544);
    OUTLINED_FUNCTION_124();
    sub_231CE1054(v28, v29, v30, v31);

    v32 = swift_task_alloc();
    *(v0 + 1816) = v32;
    *v32 = v0;
    v32[1] = sub_231CD9470;
    v33 = *(v0 + 1648);

    return sub_231CD45F4();
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 1824) = v15;
    *v15 = v0;
    v15[1] = sub_231CD965C;
    OUTLINED_FUNCTION_32_1();
    v16 = *(v0 + 1576);
    OUTLINED_FUNCTION_27_1(*(v0 + 1568));

    return sub_231CD7044();
  }
}

uint64_t sub_231CD9470()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 1816);
  v6 = *(v4 + 1800);
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  sub_231CC4F5C(v2 + 288);
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CD9570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_50_0();
  v15 = v13[220];
  v16 = v13[203];
  sub_231E0FD70();
  if (v16)
  {
    OUTLINED_FUNCTION_133();
  }

  else
  {
    OUTLINED_FUNCTION_132();
  }

  v13[231] = v16;
  v13[230] = v14;
  v13[229] = v12;
  v17 = v12;
  v18 = v16;
  v13[232] = sub_231E11530();
  v19 = swift_task_alloc();
  v13[233] = v19;
  *v19 = v13;
  OUTLINED_FUNCTION_25_2(v19);
  OUTLINED_FUNCTION_106();

  return sub_231CD73B0(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_231CD965C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 1824);
  v3 = *(v1 + 1800);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CD975C()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[233];
  v3 = v1[232];
  v4 = v1[231];
  v5 = v1[230];
  v6 = v1[229];
  v7 = v1[224];
  v8 = v1[222];
  v9 = v1[220];
  v10 = v1[219];
  v11 = v1[218];
  v12 = *v0;
  OUTLINED_FUNCTION_4();
  *v13 = v12;

  v14 = *(v10 + 8);
  v15 = OUTLINED_FUNCTION_80();
  v16(v15);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_231CD9B70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 1880);
  v3 = *(v1 + 1872);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CD9F04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 1888);
  v6 = *v0;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  sub_231CD2C1C(v2 + 688);
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231CD9FE8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[226];
  v2 = v0[217];
  v3 = v0[216];
  v4 = v0[215];

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_55_0();

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231CDA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v10[11] = a9;
  v10[12] = v9;
  OUTLINED_FUNCTION_99(v11, v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  OUTLINED_FUNCTION_47(v20);
  v22 = *(v21 + 64);
  v10[13] = OUTLINED_FUNCTION_55();
  v23 = sub_231E0FD90();
  v10[14] = v23;
  OUTLINED_FUNCTION_6(v23);
  v10[15] = v24;
  v26 = *(v25 + 64);
  v10[16] = OUTLINED_FUNCTION_55();
  v27 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v27, v28, v29);
}

uint64_t sub_231CDA15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_59_1();
  v13 = v12[16];
  v15 = v12[13];
  v14 = v12[14];
  v16 = v12[9];
  v17 = v12[7];
  sub_231E10AD0();
  v19 = v18;
  sub_231E10AB0();
  v21 = v20;
  v22 = sub_231CC7FC8();
  v23 = *v22;
  v24 = v22[1];
  OUTLINED_FUNCTION_105();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v14);

  sub_231E0FD10();
  if (v16)
  {
    v28 = v12[10];
    v29 = v12[11];
    v31 = v12[8];
    v30 = v12[9];
  }

  else
  {
    v32 = v12[12];
    v33 = v32[14];
    v30 = v32[15];
    v28 = v32[16];
    v29 = v32[17];
  }

  v12[17] = v28;
  v12[18] = v30;
  v12[19] = v29;
  v12[20] = v21;
  v12[21] = v19;
  v34 = v29;
  v35 = v28;
  v12[22] = sub_231E11530();
  v36 = swift_task_alloc();
  v12[23] = v36;
  *v36 = v12;
  OUTLINED_FUNCTION_21_1(v36);
  OUTLINED_FUNCTION_27_1(v37);
  OUTLINED_FUNCTION_35();

  return sub_231CD73B0(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_231CDA2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_21();
  v14 = v13[23];
  v15 = v13[22];
  v16 = v13[21];
  v17 = v13[20];
  v18 = v13[19];
  v19 = v13[18];
  v20 = v13[17];
  v21 = v13[16];
  v22 = v13[15];
  v23 = v13[14];
  v35 = v13[13];
  v24 = *v12;
  OUTLINED_FUNCTION_4();
  *v25 = v24;

  (*(v22 + 8))(v21, v23);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_44();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_231CDA4E0()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_231E0FD90();
  v1[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CDA588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v15 = v14[2];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v14[7];
    v52 = v14[4];
    v53 = MEMORY[0x277D84F90];
    sub_231E11E30();
    v51 = (v17 + 8);
    v18 = (v15 + 40);
    do
    {
      v19 = v14[8];
      v20 = v14[6];
      v22 = v14[3];
      v21 = v14[4];
      v24 = *(v18 - 1);
      v23 = *v18;

      sub_231E0FD70();
      v25 = sub_231CDA918(v19);
      (*v51)(v19, v20);
      v26 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      OUTLINED_FUNCTION_129();

      v27 = v25;

      [sub_231CE0AF0(v24 v23];

      sub_231E11E10();
      v28 = *(v53 + 16);
      sub_231E11E40();
      sub_231E11E50();
      sub_231E11E20();
      v18 += 2;
      --v16;
    }

    while (v16);
    v29 = v14[5];
    v14[9] = v53;
    v30 = v29[10];
    v31 = v29[11];
    v32 = v29[12];
    v33 = v29[13];
    v34 = swift_task_alloc();
    v14[10] = v34;
    *v34 = v14;
    v34[1] = sub_231CDA790;
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_35();

    return sub_231D5F40C(v35, v36, v37, v38, v39);
  }

  else
  {
    v42 = v14[8];

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_231CDA790()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[9];

    v13 = v3[8];

    OUTLINED_FUNCTION_19();

    return v14();
  }
}

uint64_t sub_231CDA8B4()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_19();
  v4 = v0[11];

  return v3();
}

id sub_231CDA918(uint64_t a1)
{
  v2 = sub_231E0FD90();
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_1();
  v10 = v9 - v8;
  sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  (*(v5 + 16))(v10, a1, v2);
  v11 = sub_231CD6B44(v10);
  v12 = OUTLINED_FUNCTION_122([v11 setSummarizationContentTopic_], sel_setSummarizationContentSynopsis_);
  OUTLINED_FUNCTION_122(v12, sel_setSummarizationContentTopLine_);
  [v11 setUrgencyStatus_];
  OUTLINED_FUNCTION_122([v11 setSummarizationStatus_], sel_setIsUrgent_);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_78();
  sub_231DE9728(v13, v14, v15, v16);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_78();
  sub_231DE9728(v17, v18, v19, v20);
  OUTLINED_FUNCTION_122(v21, sel_setSummarizedIdentifiers_);
  return v11;
}

uint64_t sub_231CDAAA0()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 376) = v2;
  *(v1 + 384) = v0;
  *(v1 + 560) = v3;
  *(v1 + 368) = v4;
  *(v1 + 392) = *v0;
  v5 = sub_231E10E30();
  *(v1 + 400) = v5;
  OUTLINED_FUNCTION_6(v5);
  *(v1 + 408) = v6;
  v8 = *(v7 + 64);
  *(v1 + 416) = OUTLINED_FUNCTION_69();
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  *(v1 + 440) = swift_task_alloc();
  v9 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  *(v1 + 448) = OUTLINED_FUNCTION_55();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231CDABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v14 = v12[46];
  v15 = v12[47];
  v16 = sub_231CDBB24();
  v12[57] = v16;
  v12[58] = v17;
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = v12[48];
    type metadata accessor for SpotlightReader();
    OUTLINED_FUNCTION_145();
    v21 = v12[10];
    v22 = v12[11];
    v23 = v12[12];
    v24 = v12[13];
    OUTLINED_FUNCTION_121();
    v12[59] = sub_231DF7564();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
    v25 = OUTLINED_FUNCTION_123();
    v12[60] = v25;
    *(v25 + 16) = xmmword_231E138E0;
    *(v25 + 32) = v18;
    *(v25 + 40) = v19;

    v26 = swift_task_alloc();
    v12[61] = v26;
    *v26 = v12;
    v26[1] = sub_231CDADDC;
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_44();

    return sub_231DFA158(v27, v28, v29, v30, v31);
  }

  else
  {
    v35 = v12[51];
    v34 = v12[52];
    v36 = v12[50];
    v37 = v12[47];
    sub_231CB4EEC();
    v38 = OUTLINED_FUNCTION_18_2();
    v39(v38);

    v40 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_153();
    v41 = OUTLINED_FUNCTION_85();
    v43 = v12[51];
    v42 = v12[52];
    v44 = v12[50];
    if (v41)
    {
      v46 = v12[46];
      v45 = v12[47];
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a9 = OUTLINED_FUNCTION_28();
      *v13 = 136315138;
      v47 = OUTLINED_FUNCTION_54_0();
      *(v13 + 4) = sub_231CB5000(v47, v48, v49);
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v50, v51, "Unable to obtain message id for notification unique id: %s during transfer");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v52 = *(v43 + 8);
    v53 = OUTLINED_FUNCTION_25();
    v54(v53);
    OUTLINED_FUNCTION_112();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_44();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
  }
}

uint64_t sub_231CDADDC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 488);
  *v4 = *v1;
  v3[62] = v7;
  v3[63] = v0;

  if (!v0)
  {
    v9 = v3[59];
    v8 = v3[60];
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CDAEEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_51_0();
  a22 = v24;
  result = sub_231CBA138(*(v24 + 496));
  v30 = *(v24 + 496);
  if (result)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      goto LABEL_40;
    }

    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    for (i = *(v30 + 32); ; i = MEMORY[0x23837D2A0](0))
    {
      v32 = i;
      *(v24 + 512) = i;
      v33 = [i attributeSet];
      v34 = [v33 summarizationStatus];

      if (!v34)
      {
        break;
      }

      v35 = *(v24 + 448);
      sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
      OUTLINED_FUNCTION_156_0();
      v36 = OUTLINED_FUNCTION_152();
      *(v24 + 520) = v36;
      v37 = sub_231CE1178([v32 attributeSet], &selRef_summarizedIdentifiers);
      a12 = v36;
      if (!v37)
      {
        v97 = *(v24 + 496);

        v40 = 0;
        goto LABEL_25;
      }

      v38 = v37;
      a10 = v24;
      v24 = *(v37 + 16);
      if (!v24)
      {
        v24 = a10;
        v98 = *(a10 + 496);

        v40 = MEMORY[0x277D84F90];
LABEL_25:
        v99 = *(v24 + 560);
        v100 = OUTLINED_FUNCTION_119();
        v101 = [v100 urgencyStatus];

        [a12 setUrgencyStatus_];
        v102 = OUTLINED_FUNCTION_119();
        v103 = [v102 isUrgent];

        [a12 setIsUrgent_];
        OUTLINED_FUNCTION_12_2(xmmword_231E13680);
        v104 = OUTLINED_FUNCTION_119();
        v105 = OUTLINED_FUNCTION_2_4();
        sub_231DE9728(v105, v106, v107, v104);

        v108 = OUTLINED_FUNCTION_119();
        v109 = OUTLINED_FUNCTION_1_5();
        sub_231DE9728(v109, v110, v111, v108);

        if (v99 == 5)
        {

          [a12 setSummarizationStatus_];
        }

        else
        {
          v112 = OUTLINED_FUNCTION_119();
          if (sub_231CE1178(v112, &selRef_attachmentCaptions))
          {
            v113 = sub_231E11850();
          }

          else
          {
            v113 = 0;
          }

          [a12 setAttachmentCaptions_];

          if (v40)
          {
            if (*(v40 + 16) >= 2uLL)
            {

              [a12 setSummarizationStatus_];
              goto LABEL_36;
            }

            v114 = OUTLINED_FUNCTION_110();
            v115 = [v114 summarizationStatus];

            [a12 setSummarizationStatus_];
            sub_231E11850();
            OUTLINED_FUNCTION_129();
          }

          else
          {
            v116 = OUTLINED_FUNCTION_110();
            v117 = [v116 summarizationStatus];

            [a12 setSummarizationStatus_];
            v114 = 0;
          }

          [a12 setSummarizedIdentifiers_];

          v118 = OUTLINED_FUNCTION_110();
          v119 = [v118 summarizationContentTopic];

          [a12 setSummarizationContentTopic_];
          v120 = OUTLINED_FUNCTION_110();
          v121 = [v120 summarizationContentTopLine];

          [a12 setSummarizationContentTopLine_];
          v122 = OUTLINED_FUNCTION_110();
          v123 = [v122 summarizationContentSynopsis];

          [a12 setSummarizationContentSynopsis_];
        }

LABEL_36:
        v125 = *(v24 + 368);
        v124 = *(v24 + 376);
        v126 = *(v24 + 24);
        v127 = *(v24 + 32);
        v143 = *(v24 + 40);
        v144 = *(v24 + 16);
        v128 = sub_231CC78B4();
        v129 = *v128;
        v130 = v128[1];
        v131 = objc_allocWithZone(MEMORY[0x277CC34B0]);

        v132 = a12;

        v133 = sub_231CE0AF0(v125, v124, v129, v130, v132);
        *(v24 + 528) = v133;
        [v133 setIsUpdate_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
        v134 = OUTLINED_FUNCTION_76();
        *(v24 + 536) = v134;
        OUTLINED_FUNCTION_48_0(v134, xmmword_231E13420);
        v135 = v133;
        v136 = swift_task_alloc();
        *(v24 + 544) = v136;
        *v136 = v24;
        OUTLINED_FUNCTION_28_0(v136);
        OUTLINED_FUNCTION_124();
        OUTLINED_FUNCTION_37();

        return sub_231D5F40C(v137, v138, v139, v140, v141);
      }

      a13 = MEMORY[0x277D84F90];
      sub_231CC686C(0, v24, 0);
      v39 = 0;
      v40 = a13;
      v41 = (v38 + 40);
      while (v39 < *(v38 + 16))
      {
        v42 = sub_231CD65F4(*(v41 - 1), *v41);
        v26 = v43;
        a13 = v40;
        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_231CC686C((v44 > 1), v45 + 1, 1);
          v40 = a13;
        }

        ++v39;
        *(v40 + 16) = v45 + 1;
        v46 = v40 + 16 * v45;
        *(v46 + 32) = v42;
        *(v46 + 40) = v26;
        v41 += 2;
        if (v24 == v39)
        {
          v24 = a10;
          v96 = *(a10 + 496);

          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_40:
      ;
    }

    a11 = v32;
    v70 = *(v24 + 496);
    v71 = *(v24 + 464);
    v72 = *(v24 + 432);
    v73 = v24;
    v74 = *(v24 + 408);
    v75 = v73[50];
    v76 = v73[47];

    v77 = sub_231CB4EEC();
    (*(v74 + 16))(v72, v77, v75);
    v78 = v73;

    v79 = sub_231E10E10();
    sub_231E11AF0();

    v80 = OUTLINED_FUNCTION_39_0();
    v81 = v73[54];
    v83 = v78[50];
    v82 = v78[51];
    if (v80)
    {
      v85 = v78[46];
      v84 = v78[47];
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_130();
      *v26 = 136446210;
      *(v26 + 4) = sub_231CB5000(v85, v84, &a13);
      OUTLINED_FUNCTION_43_1(&dword_231CAE000, v86, v87, "Not transferring summarization attributes from message to notification (status is unknown); id: %{public}s");
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_31_1();
    }

    (*(v82 + 8))(v81, v83);
  }

  else
  {
    v47 = *(v24 + 464);
    v48 = *(v24 + 424);
    v49 = v24;
    v50 = *(v24 + 408);
    v51 = v49[50];
    v52 = v49[47];

    v53 = sub_231CB4EEC();
    (*(v50 + 16))(v48, v53, v51);

    v54 = sub_231E10E10();
    sub_231E11AF0();

    v55 = OUTLINED_FUNCTION_85();
    v56 = v49[53];
    v57 = v49[50];
    v58 = v49[51];
    if (v55)
    {
      v60 = v49[46];
      v59 = v49[47];
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_134();
      *(v25 + 4) = OUTLINED_FUNCTION_53_0(4.8751e-34, v61, v62, v63, v64);
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v65, v66, "Not transferring summarization attributes from message to notification (no searchable item); id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v67 = *(v58 + 8);
    v68 = OUTLINED_FUNCTION_25();
    v69(v68);
  }

  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37();

  return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDB728()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 544);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 552) = v0;

  if (!v0)
  {
    v9 = *(v3 + 536);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CDB828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v18 = *(v16 + 464);
  v19 = *(v16 + 440);
  v20 = *(v16 + 400);
  v21 = *(v16 + 408);
  sub_231CB4EEC();
  v22 = OUTLINED_FUNCTION_18_2();
  v23(v22);

  v24 = sub_231E10E10();
  sub_231E11AF0();

  v25 = OUTLINED_FUNCTION_85();
  v26 = *(v16 + 528);
  v27 = *(v16 + 512);
  v28 = *(v16 + 464);
  if (v25)
  {
    a10 = *(v16 + 528);
    v29 = *(v16 + 456);
    v30 = *(v16 + 408);
    a11 = *(v16 + 400);
    a12 = *(v16 + 440);
    OUTLINED_FUNCTION_30_1();
    v32 = v31;
    swift_slowAlloc();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_134();
    v37 = OUTLINED_FUNCTION_53_0(4.8751e-34, v33, v34, v35, v36);

    *(v17 + 4) = v37;
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v38, v39, "Transferred summarization attributes from message to notification; id: %{public}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    (*(v30 + 8))(a12, a11);
  }

  else
  {
    v40 = *(v16 + 440);
    v41 = *(v16 + 400);
    v42 = *(v16 + 408);

    v43 = *(v42 + 8);
    v44 = OUTLINED_FUNCTION_25();
    v45(v44);
  }

  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDB9C0()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v2 = v0[58];
  v1 = v0[59];

  v3 = v0[63];
  v4 = v0[60];
  v6 = v0[55];
  v5 = v0[56];
  v8 = v0[53];
  v7 = v0[54];
  v9 = v0[52];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_231CDBA68()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 464);

  v4 = *(v0 + 552);
  v5 = *(v0 + 536);
  v7 = *(v0 + 440);
  v6 = *(v0 + 448);
  v9 = *(v0 + 424);
  v8 = *(v0 + 432);
  v10 = *(v0 + 416);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_231CDBB24()
{
  sub_231CE11D8();
  v0 = sub_231E11C70();
  if (v0[2] == 2)
  {
    v1 = v0[8];
    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[11];

    v5 = MEMORY[0x23837CBB0](v1, v2, v3, v4);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_231CDBBEC()
{
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_91(v1, v2, v3, v4, v5, v6, v7);
  v0[53] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[54] = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_69();
  v0[56] = OUTLINED_FUNCTION_155_0(v12);
  v0[57] = swift_task_alloc();
  v13 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  v0[58] = OUTLINED_FUNCTION_55();
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231CDBCB8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[52];
  v3 = v0[46];
  v2 = v0[47];
  type metadata accessor for SpotlightReader();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_121();
  v0[59] = sub_231DF7564();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v4 = OUTLINED_FUNCTION_123();
  v0[60] = v4;
  *(v4 + 16) = xmmword_231E138E0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_98(v5);

  return sub_231DFA158(v6, v7, v8, v9, v10);
}

uint64_t sub_231CDBDAC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 488);
  *v4 = *v1;
  v3[62] = v7;
  v3[63] = v0;

  if (!v0)
  {
    v9 = v3[59];
    v8 = v3[60];
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_231CDBEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v16 = sub_231CBA138(*(v14 + 496));
  v17 = *(v14 + 496);
  if (v16)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
      v19 = v112;
      v113 = *(v14 + 496);
    }

    else
    {
      OUTLINED_FUNCTION_140();
      if (!v18)
      {
        __break(1u);
        return;
      }

      v19 = *(v17 + 32);
    }

    *(v14 + 512) = v19;

    v20 = OUTLINED_FUNCTION_83_0();
    v21 = [v20 summarizationStatus];

    if (v21 == 1)
    {
      v22 = OUTLINED_FUNCTION_83_0();
      v23 = [v22 urgencyStatus];

      if (v23 == 1)
      {
        v24 = *(v14 + 464);
        v115 = *(v14 + 560);
        sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
        OUTLINED_FUNCTION_156_0();
        v25 = OUTLINED_FUNCTION_152();
        *(v14 + 520) = v25;
        v26 = OUTLINED_FUNCTION_83_0();
        v27 = sub_231CE1178(v26, &selRef_summarizedIdentifiers);
        v28 = OUTLINED_FUNCTION_83_0();
        v29 = [v28 urgencyStatus];

        [v25 setUrgencyStatus_];
        v30 = OUTLINED_FUNCTION_83_0();
        v31 = [v30 isUrgent];

        [v25 setIsUrgent_];
        if (v115 == 5)
        {

          [v25 setSummarizationStatus_];
        }

        else
        {
          v74 = OUTLINED_FUNCTION_83_0();
          v75 = sub_231CE1178(v74, &selRef_attachmentCaptions);
          if (v75)
          {
            v76 = sub_231E11850();
          }

          else
          {
            v76 = 0;
          }

          OUTLINED_FUNCTION_87(v75, sel_setAttachmentCaptions_);

          if (v27)
          {
            if (*(v27 + 16) >= 2uLL)
            {

              [v25 setSummarizationStatus_];
              goto LABEL_27;
            }

            v77 = OUTLINED_FUNCTION_83_0();
            v78 = [v77 summarizationStatus];

            [v25 setSummarizationStatus_];
            sub_231E11850();
            OUTLINED_FUNCTION_141();
          }

          else
          {
            v80 = OUTLINED_FUNCTION_83_0();
            v81 = [v80 summarizationStatus];

            v79 = [v25 setSummarizationStatus_];
            v77 = 0;
          }

          OUTLINED_FUNCTION_87(v79, sel_setSummarizedIdentifiers_);

          v82 = OUTLINED_FUNCTION_83_0();
          v83 = [v82 summarizationContentTopLine];

          OUTLINED_FUNCTION_87(v84, sel_setSummarizationContentTopLine_);
        }

LABEL_27:
        v85 = *(v14 + 368);
        v86 = *(v14 + 376);
        v87 = *(v14 + 24);
        v88 = *(v14 + 32);
        v114 = *(v14 + 40);
        v116 = *(v14 + 16);
        OUTLINED_FUNCTION_12_2(xmmword_231E13680);
        v89 = v19;
        v90 = OUTLINED_FUNCTION_83_0();
        v91 = OUTLINED_FUNCTION_2_4();
        sub_231DE9728(v91, v92, v93, v90);

        v94 = [v89 attributeSet];
        v95 = OUTLINED_FUNCTION_1_5();
        sub_231DE9728(v95, v96, v97, v94);

        v98 = sub_231CC78B4();
        v99 = *v98;
        v100 = v98[1];
        v101 = objc_allocWithZone(MEMORY[0x277CC34B0]);

        v102 = sub_231CE0AF0(v85, v86, v99, v100, v25);
        *(v14 + 528) = v102;
        [v102 setIsUpdate_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
        v103 = OUTLINED_FUNCTION_76();
        *(v14 + 536) = v103;
        OUTLINED_FUNCTION_48_0(v103, xmmword_231E13420);
        v104 = v102;
        v105 = swift_task_alloc();
        *(v14 + 544) = v105;
        *v105 = v14;
        OUTLINED_FUNCTION_28_0(v105);
        OUTLINED_FUNCTION_124();
        OUTLINED_FUNCTION_35();

        sub_231D5F40C(v106, v107, v108, v109, v110);
        return;
      }
    }

    v32 = *(v14 + 448);
    v34 = *(v14 + 424);
    v33 = *(v14 + 432);
    v35 = *(v14 + 376);
    sub_231CB4EEC();
    v36 = *(v33 + 16);
    v37 = OUTLINED_FUNCTION_46_0();
    v38(v37);

    v39 = sub_231E10E10();
    sub_231E11AF0();

    v40 = OUTLINED_FUNCTION_39_0();
    v41 = *(v14 + 448);
    v43 = *(v14 + 424);
    v42 = *(v14 + 432);
    if (v40)
    {
      v45 = *(v14 + 368);
      v44 = *(v14 + 376);
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a10 = v19;
      a11 = OUTLINED_FUNCTION_49_0();
      *(&off_278947000 + 4) = OUTLINED_FUNCTION_52_0(4.8751e-34, a11, v46);
      OUTLINED_FUNCTION_43_1(&dword_231CAE000, v47, v48, "Not transferring summarization attributes from message to notification (status is not succeeded); id: %{public}s");
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_31_1();
    }

    (*(v42 + 8))(v41, v43);
  }

  else
  {
    OUTLINED_FUNCTION_149();
    sub_231CB4EEC();
    v49 = OUTLINED_FUNCTION_136();
    v50(v49);

    v51 = sub_231E10E10();
    sub_231E11AF0();

    v52 = OUTLINED_FUNCTION_85();
    v54 = *(v14 + 432);
    v53 = *(v14 + 440);
    v55 = *(v14 + 424);
    if (v52)
    {
      v57 = *(v14 + 368);
      v56 = *(v14 + 376);
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_28();
      *v15 = 136446210;
      v58 = OUTLINED_FUNCTION_54_0();
      *(v15 + 4) = sub_231CB5000(v58, v59, v60);
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v61, v62, "Not transferring summarization attributes from message to notification (no searchable item); id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v63 = *(v54 + 8);
    v64 = OUTLINED_FUNCTION_25();
    v65(v64);
  }

  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_35();

  v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231CDC510()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 544);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 552) = v0;

  if (!v0)
  {
    v9 = *(v3 + 536);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CDC610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v21 = v16[57];
  v22 = v16[53];
  v23 = v16[54];
  v24 = v16[47];
  sub_231CB4EEC();
  v25 = OUTLINED_FUNCTION_18_2();
  v26(v25);

  v27 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_104();
  if (v28)
  {
    a11 = v18;
    a12 = v17;
    v30 = v16[46];
    v29 = v16[47];
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    a10 = v19;
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_134();
    *(v19 + 4) = OUTLINED_FUNCTION_53_0(4.8751e-34, v31, v32, v33, v34);
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v35, v36, "Transferred summarization attributes from message to notification; id: %{public}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    (*(v20 + 8))(a12, a11);
  }

  else
  {

    v37 = *(v20 + 8);
    v38 = OUTLINED_FUNCTION_80();
    v40(v38, v39);
  }

  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_37();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDC75C()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 376) = v2;
  *(v1 + 384) = v0;
  *(v1 + 640) = v3;
  *(v1 + 368) = v4;
  *(v1 + 392) = *v0;
  v5 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  *(v1 + 400) = OUTLINED_FUNCTION_55();
  v8 = sub_231E10E30();
  *(v1 + 408) = v8;
  OUTLINED_FUNCTION_6(v8);
  *(v1 + 416) = v9;
  v11 = *(v10 + 64);
  *(v1 + 424) = OUTLINED_FUNCTION_69();
  *(v1 + 432) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v1 + 448) = OUTLINED_FUNCTION_155_0(v12);
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 464) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231CDC884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v17 = *(v14 + 376);
  v16 = *(v14 + 384);
  v18 = *(v14 + 368);
  type metadata accessor for SpotlightReader();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_121();
  *(v14 + 472) = sub_231DF7564();
  *(v14 + 480) = sub_231CDBB24();
  *(v14 + 488) = v19;
  if (!v19)
  {
    v28 = *(v14 + 416);
    v27 = *(v14 + 424);
    v29 = *(v14 + 408);
    v30 = *(v14 + 376);
    sub_231CB4EEC();
    v31 = *(v28 + 16);
    v32 = OUTLINED_FUNCTION_46_0();
    v33(v32);

    v34 = sub_231E10E10();
    sub_231E11AE0();

    v35 = OUTLINED_FUNCTION_39_0();
    v36 = *(v14 + 416);
    v37 = *(v14 + 424);
    v38 = *(v14 + 408);
    if (v35)
    {
      a10 = *(v14 + 424);
      v40 = *(v14 + 368);
      v39 = *(v14 + 376);
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_49_0();
      *(v15 + 4) = OUTLINED_FUNCTION_52_0(4.8751e-34, a11, v41);
      OUTLINED_FUNCTION_43_1(&dword_231CAE000, v42, v43, "Unable to obtain notification request id for mail notification id: %{public}s during transfer");
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_31_1();

      (*(v36 + 8))(a10, v38);
    }

    else
    {

      (*(v36 + 8))(v37, v38);
    }

LABEL_11:
    OUTLINED_FUNCTION_71_0();
    v63 = *(v14 + 424);
    v62 = *(v14 + 432);
    v64 = *(v14 + 400);

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();

    return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14);
  }

  v20 = (*(**(*(v14 + 384) + 144) + 136))(*(v14 + 368), *(v14 + 376));
  if (v20)
  {
    v21 = v20;
    *(v14 + 592) = v20;
    v22 = v20;
    if ([v22 summarizationStatus])
    {
      v23 = *(v14 + 400);
      v24 = *(v14 + 640);
      sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
      sub_231E0FD40();
      v25 = sub_231CD6B44(v23);
      *(v14 + 600) = v25;
      [v25 setUrgencyStatus_];
      v26 = [v22 isUrgent];
      OUTLINED_FUNCTION_87(v26, sel_setIsUrgent_);

      if (v24 == 5)
      {
        [v25 setSummarizationStatus_];
      }

      else
      {
        [v25 setSummarizationStatus_];
        v94 = [v22 summarizationContentTopic];
        OUTLINED_FUNCTION_87(v94, sel_setSummarizationContentTopic_);

        v95 = [v22 summarizationContentTopLine];
        OUTLINED_FUNCTION_87(v95, sel_setSummarizationContentTopLine_);

        v96 = [v22 summarizationContentSynopsis];
        OUTLINED_FUNCTION_87(v96, sel_setSummarizationContentSynopsis_);

        v97 = sub_231CE122C(v22, &selRef_summarizedIdentifiers);
        if (v97)
        {
          v98 = sub_231E11850();
        }

        else
        {
          v98 = 0;
        }

        OUTLINED_FUNCTION_87(v97, sel_setSummarizedIdentifiers_);

        v110 = sub_231CE122C(v22, &selRef_attachmentCaptions);
        if (v110)
        {
          v111 = sub_231E11850();
        }

        else
        {
          v111 = 0;
        }

        OUTLINED_FUNCTION_87(v110, sel_setAttachmentCaptions_);
      }

      v113 = *(v14 + 368);
      v112 = *(v14 + 376);
      v114 = *(v14 + 16);
      v115 = *(v14 + 24);
      v116 = *(v14 + 40);
      v139 = *(v14 + 32);
      OUTLINED_FUNCTION_12_2(xmmword_231E13680);
      v117 = v22;
      v118 = OUTLINED_FUNCTION_2_4();
      sub_231DE9728(v118, v119, v120, v21);
      v121 = OUTLINED_FUNCTION_1_5();
      sub_231DE9728(v121, v122, v123, v21);

      v124 = sub_231CC78B4();
      v125 = *v124;
      v126 = v124[1];
      v127 = objc_allocWithZone(MEMORY[0x277CC34B0]);

      v128 = v25;

      v129 = sub_231CE0AF0(v113, v112, v125, v126, v128);
      *(v14 + 608) = v129;
      [v129 setIsUpdate_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
      v130 = OUTLINED_FUNCTION_76();
      *(v14 + 616) = v130;
      OUTLINED_FUNCTION_48_0(v130, xmmword_231E13420);
      v131 = v129;
      v132 = swift_task_alloc();
      *(v14 + 624) = v132;
      *v132 = v14;
      OUTLINED_FUNCTION_28_0(v132);
      OUTLINED_FUNCTION_35();

      return sub_231D5F40C(v133, v134, v135, v136, v137);
    }

    v74 = *(v14 + 488);
    v75 = *(v14 + 440);
    v76 = *(v14 + 408);
    v77 = *(v14 + 416);
    sub_231CB4EEC();
    v78 = *(v77 + 16);
    v79 = OUTLINED_FUNCTION_103();
    v80(v79);

    v81 = sub_231E10E10();
    sub_231E11AF0();

    v82 = OUTLINED_FUNCTION_154();
    v83 = *(v14 + 488);
    if (v82)
    {
      v84 = *(v14 + 472);
      v85 = *(v14 + 480);
      v86 = *(v14 + 416);
      a9 = *(v14 + 408);
      a10 = *(v14 + 440);
      OUTLINED_FUNCTION_30_1();
      v87 = swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_67();
      v89 = OUTLINED_FUNCTION_146(4.8751e-34, a11, v88);

      *(v87 + 4) = v89;
      OUTLINED_FUNCTION_137();
      _os_log_impl(v90, v91, v92, v93, v87, 0xCu);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_30();

      (*(v86 + 8))(a10, a9);
    }

    else
    {
      v103 = *(v14 + 472);
      v104 = *(v14 + 440);
      v105 = *(v14 + 408);
      v106 = *(v14 + 416);

      v107 = *(v106 + 8);
      v108 = OUTLINED_FUNCTION_70();
      v109(v108);
    }

    goto LABEL_11;
  }

  v44 = *(v14 + 464);
  v45 = *(v14 + 408);
  v46 = *(v14 + 416);
  *(v14 + 496) = sub_231CB4EEC();
  *(v14 + 504) = *(v46 + 16);
  *(v14 + 512) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47 = OUTLINED_FUNCTION_46_0();
  v48(v47);

  v49 = sub_231E10E10();
  sub_231E11AF0();

  v50 = OUTLINED_FUNCTION_154();
  v51 = *(v14 + 464);
  v53 = *(v14 + 408);
  v52 = *(v14 + 416);
  if (v50)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_49_0();
    *v51 = 136446210;
    v54 = OUTLINED_FUNCTION_70();
    *(v51 + 4) = sub_231CB5000(v54, v55, v56);
    OUTLINED_FUNCTION_137();
    _os_log_impl(v57, v58, v59, v60, v51, 0xCu);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_31_1();
  }

  v61 = *(v52 + 8);
  v61(v51, v53);
  *(v14 + 520) = v61;
  v99 = swift_task_alloc();
  *(v14 + 528) = v99;
  *v99 = v14;
  v99[1] = sub_231CDD058;
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_35();

  return sub_231DFB0B0(v100, v101);
}

uint64_t sub_231CDD058()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 528);
  *v4 = *v1;
  v3[67] = v7;
  v3[68] = v8;
  v3[69] = v0;

  if (v0)
  {
    v9 = v3[61];
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CDD168()
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v0 + 544);
  v3 = *(v0 + 512);
  (*(v0 + 504))(*(v0 + 456), *(v0 + 496), *(v0 + 408));

  v4 = sub_231E10E10();
  sub_231E11AF0();

  if (OUTLINED_FUNCTION_85())
  {
    v5 = *(v0 + 544);
    v6 = *(v0 + 536);
    v37 = *(v0 + 520);
    v7 = *(v0 + 456);
    v8 = *(v0 + 408);
    v9 = *(v0 + 416);
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_28();
    *v1 = 136446210;
    v10 = OUTLINED_FUNCTION_54_0();
    *(v1 + 4) = sub_231CB5000(v10, v11, v12);
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v13, v14, "Looking up summarized searchable item for mail message id: %{public}s during transfer");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    v15 = OUTLINED_FUNCTION_25();
    v37(v15);
  }

  else
  {
    v16 = *(v0 + 520);
    v17 = *(v0 + 456);
    v18 = *(v0 + 408);
    v19 = *(v0 + 416);

    v20 = OUTLINED_FUNCTION_25();
    v16(v20);
  }

  v21 = *(v0 + 544);
  v22 = *(v0 + 536);
  v24 = *(v0 + 48);
  v23 = *(v0 + 56);
  v25 = *(v0 + 64);
  v26 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v27 = OUTLINED_FUNCTION_123();
  *(v0 + 560) = v27;
  *(v27 + 16) = xmmword_231E138E0;
  *(v27 + 32) = v22;
  *(v27 + 40) = v21;
  v28 = swift_task_alloc();
  *(v0 + 568) = v28;
  *v28 = v0;
  v28[1] = sub_231CDD33C;
  v29 = *(v0 + 472);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_35();

  return sub_231DFA158(v30, v31, v32, v33, v34);
}

uint64_t sub_231CDD33C()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[71];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[72] = v8;
  v3[73] = v0;

  v9 = v2[70];
  if (v0)
  {
    v10 = v3[61];
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231CDD474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v16 = sub_231CBA138(*(v14 + 576));
  v17 = *(v14 + 576);
  if (!v16)
  {
    v26 = *(v14 + 576);

LABEL_10:
    v27 = *(v14 + 512);
    v28 = *(v14 + 488);
    (*(v14 + 504))(*(v14 + 432), *(v14 + 496), *(v14 + 408));

    v29 = sub_231E10E10();
    sub_231E11AF0();

    v30 = OUTLINED_FUNCTION_39_0();
    v31 = *(v14 + 520);
    v32 = *(v14 + 488);
    if (v30)
    {
      v33 = *(v14 + 472);
      v34 = *(v14 + 480);
      v35 = *(v14 + 416);
      a9 = *(v14 + 408);
      a10 = *(v14 + 432);
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_49_0();
      v37 = OUTLINED_FUNCTION_52_0(4.8751e-34, a11, v36);

      *(v15 + 4) = v37;
      OUTLINED_FUNCTION_43_1(&dword_231CAE000, v38, v39, "Not transferring summarization attributes from mail to notification (no attributes); id: %{public}s");
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_31_1();

      v41 = a9;
      v40 = a10;
    }

    else
    {
      v42 = *(v14 + 472);
      v43 = *(v14 + 432);
      v44 = *(v14 + 408);
      v45 = *(v14 + 416);

      v40 = OUTLINED_FUNCTION_25();
    }

    v31(v40, v41);
    goto LABEL_14;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_151();
    v19 = v119;
    v120 = *(v14 + 576);
  }

  else
  {
    OUTLINED_FUNCTION_140();
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = *(v17 + 32);
  }

  v20 = [v19 attributeSet];

  if (!v20)
  {
    goto LABEL_10;
  }

  *(v14 + 592) = v20;
  v21 = v20;
  if ([v21 summarizationStatus])
  {
    v22 = *(v14 + 400);
    v23 = *(v14 + 640);
    sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
    OUTLINED_FUNCTION_156_0();
    v24 = OUTLINED_FUNCTION_152();
    *(v14 + 600) = v24;
    [v24 setUrgencyStatus_];
    v25 = [v21 isUrgent];
    OUTLINED_FUNCTION_96(v25, sel_setIsUrgent_);

    if (v23 == 5)
    {
      [v24 setSummarizationStatus_];
    }

    else
    {
      [v24 setSummarizationStatus_];
      v77 = [v21 summarizationContentTopic];
      OUTLINED_FUNCTION_96(v77, sel_setSummarizationContentTopic_);

      v78 = [v21 summarizationContentTopLine];
      OUTLINED_FUNCTION_96(v78, sel_setSummarizationContentTopLine_);

      v79 = [v21 summarizationContentSynopsis];
      OUTLINED_FUNCTION_96(v79, sel_setSummarizationContentSynopsis_);

      v80 = sub_231CE122C(v21, &selRef_summarizedIdentifiers);
      if (v80)
      {
        sub_231E11850();
        v80 = OUTLINED_FUNCTION_157();
      }

      else
      {
        v79 = 0;
      }

      OUTLINED_FUNCTION_96(v80, sel_setSummarizedIdentifiers_);

      v88 = sub_231CE122C(v21, &selRef_attachmentCaptions);
      if (v88)
      {
        sub_231E11850();
        v88 = OUTLINED_FUNCTION_157();
      }

      else
      {
        v79 = 0;
      }

      OUTLINED_FUNCTION_96(v88, sel_setAttachmentCaptions_);
    }

    v90 = *(v14 + 368);
    v89 = *(v14 + 376);
    v91 = *(v14 + 16);
    v92 = *(v14 + 24);
    v93 = *(v14 + 40);
    v121 = *(v14 + 32);
    OUTLINED_FUNCTION_12_2(xmmword_231E13680);
    v94 = v21;
    v95 = OUTLINED_FUNCTION_2_4();
    sub_231DE9728(v95, v96, v97, v21);
    v98 = OUTLINED_FUNCTION_1_5();
    sub_231DE9728(v98, v99, v100, v21);

    v101 = sub_231CC78B4();
    v102 = *v101;
    v103 = v101[1];
    v104 = objc_allocWithZone(MEMORY[0x277CC34B0]);

    v105 = v24;

    v106 = OUTLINED_FUNCTION_86();
    v109 = sub_231CE0AF0(v106, v107, v108, v103, v105);
    *(v14 + 608) = v109;
    [v109 setIsUpdate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
    v110 = OUTLINED_FUNCTION_76();
    *(v14 + 616) = v110;
    OUTLINED_FUNCTION_48_0(v110, xmmword_231E13420);
    v111 = v109;
    v112 = swift_task_alloc();
    *(v14 + 624) = v112;
    *v112 = v14;
    OUTLINED_FUNCTION_28_0(v112);
    OUTLINED_FUNCTION_35();

    sub_231D5F40C(v113, v114, v115, v116, v117);
    return;
  }

  v57 = *(v14 + 488);
  v58 = *(v14 + 440);
  v59 = *(v14 + 408);
  v60 = *(v14 + 416);
  sub_231CB4EEC();
  v61 = *(v60 + 16);
  v62 = OUTLINED_FUNCTION_103();
  v63(v62);

  v64 = sub_231E10E10();
  sub_231E11AF0();

  v65 = OUTLINED_FUNCTION_154();
  v66 = *(v14 + 488);
  if (v65)
  {
    v67 = *(v14 + 472);
    v68 = *(v14 + 480);
    v69 = *(v14 + 416);
    a9 = *(v14 + 408);
    a10 = *(v14 + 440);
    OUTLINED_FUNCTION_30_1();
    v70 = swift_slowAlloc();
    a11 = OUTLINED_FUNCTION_67();
    v72 = OUTLINED_FUNCTION_146(4.8751e-34, a11, v71);

    *(v70 + 4) = v72;
    OUTLINED_FUNCTION_137();
    _os_log_impl(v73, v74, v75, v76, v70, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_30();

    (*(v69 + 8))(a10, a9);
  }

  else
  {
    v81 = *(v14 + 472);
    v82 = *(v14 + 440);
    v83 = *(v14 + 408);
    v84 = *(v14 + 416);

    v85 = *(v84 + 8);
    v86 = OUTLINED_FUNCTION_70();
    v87(v86);
  }

LABEL_14:
  OUTLINED_FUNCTION_71_0();
  v47 = *(v14 + 424);
  v46 = *(v14 + 432);
  v48 = *(v14 + 400);

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_35();

  v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231CDDAC8()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *(v2 + 624);
  *v4 = *v1;
  *(v3 + 632) = v0;

  v6 = *(v2 + 616);
  if (v0)
  {
    v7 = *(v3 + 488);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231CDDC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_51_0();
  a22 = v24;
  v27 = v24[61];
  v28 = v24[56];
  v29 = v24[51];
  v30 = v24[52];
  sub_231CB4EEC();
  v31 = OUTLINED_FUNCTION_18_2();
  v32(v31);

  v33 = sub_231E10E10();
  v34 = sub_231E11AF0();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v24[76];
  v37 = v24[75];
  v38 = v24[74];
  v39 = v24[61];
  if (v35)
  {
    v40 = v24[60];
    a12 = v24[56];
    v41 = v24[52];
    a10 = v24[59];
    a11 = v24[51];
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    a9 = v36;
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_130();
    *v36 = 136446210;
    v42 = sub_231CB5000(v40, v39, &a13);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_231CAE000, v33, v34, "Transferred summarization attributes from mail to notification; id: %{public}s", v36, 0xCu);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_31_1();

    (*(v41 + 8))(a12, a11);
  }

  else
  {
    v43 = v24[59];
    v44 = v24[56];
    v45 = v24[51];
    v46 = v24[52];

    v47 = *(v46 + 8);
    v48 = OUTLINED_FUNCTION_54_0();
    v49(v48);
  }

  OUTLINED_FUNCTION_71_0();
  v51 = v24[53];
  v50 = v24[54];
  v52 = v24[50];

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDDE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 472);

  v12 = *(v10 + 552);
  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_231CDDEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 472);

  v12 = *(v10 + 584);
  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_231CDDF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 608);
  v12 = *(v10 + 600);
  v13 = *(v10 + 472);

  v14 = *(v10 + 632);
  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_231CDDFEC()
{
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_91(v1, v2, v3, v4, v5, v6, v7);
  v0[53] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[54] = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_69();
  v0[56] = OUTLINED_FUNCTION_155_0(v12);
  v0[57] = swift_task_alloc();
  v13 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  v0[58] = OUTLINED_FUNCTION_55();
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231CDE0B8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[52];
  v3 = v0[46];
  v2 = v0[47];
  type metadata accessor for SpotlightReader();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_121();
  v0[59] = sub_231DF7564();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v4 = OUTLINED_FUNCTION_123();
  v0[60] = v4;
  *(v4 + 16) = xmmword_231E138E0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_98(v5);

  return sub_231DFA158(v6, v7, v8, v9, v10);
}

uint64_t sub_231CDE1AC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 488);
  *v4 = *v1;
  v3[62] = v7;
  v3[63] = v0;

  if (!v0)
  {
    v9 = v3[59];
    v8 = v3[60];
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_231CDE2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v17 = sub_231CBA138(*(v14 + 496));
  v18 = *(v14 + 496);
  if (v17)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
      v20 = v113;
      v114 = *(v14 + 496);
    }

    else
    {
      OUTLINED_FUNCTION_140();
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = *(v18 + 32);
    }

    *(v14 + 512) = v20;

    v21 = OUTLINED_FUNCTION_84();
    v22 = [v21 summarizationStatus];

    if (v22 == 1)
    {
      v23 = OUTLINED_FUNCTION_84();
      v24 = [v23 urgencyStatus];

      if (v24 == 1)
      {
        v25 = *(v14 + 464);
        v26 = *(v14 + 560);
        sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
        OUTLINED_FUNCTION_156_0();
        v27 = OUTLINED_FUNCTION_152();
        *(v14 + 520) = v27;
        v28 = OUTLINED_FUNCTION_84();
        v29 = [v28 urgencyStatus];

        [v27 setUrgencyStatus_];
        v30 = OUTLINED_FUNCTION_84();
        v31 = [v30 isUrgent];

        [v27 setIsUrgent_];
        if (v26 == 5)
        {
          [v27 setSummarizationStatus_];
        }

        else
        {
          v74 = OUTLINED_FUNCTION_84();
          v75 = [v74 summarizationStatus];

          [v27 setSummarizationStatus_];
          v76 = OUTLINED_FUNCTION_84();
          v77 = sub_231CE1178(v76, &selRef_summarizedIdentifiers);
          if (v77)
          {
            sub_231E11850();
            v77 = OUTLINED_FUNCTION_157();
          }

          else
          {
            v74 = 0;
          }

          OUTLINED_FUNCTION_96(v77, sel_setSummarizedIdentifiers_);

          v78 = OUTLINED_FUNCTION_84();
          v79 = [v78 summarizationContentTopLine];

          [v27 setSummarizationContentTopLine_];
          v80 = OUTLINED_FUNCTION_84();
          v81 = sub_231CE1178(v80, &selRef_attachmentCaptions);
          if (v81)
          {
            sub_231E11850();
            v81 = OUTLINED_FUNCTION_157();
          }

          else
          {
            v78 = 0;
          }

          OUTLINED_FUNCTION_96(v81, sel_setAttachmentCaptions_);
        }

        v83 = *(v14 + 368);
        v82 = *(v14 + 376);
        v84 = *(v14 + 16);
        v85 = *(v14 + 24);
        v115 = *(v14 + 40);
        v116 = *(v14 + 32);
        OUTLINED_FUNCTION_12_2(xmmword_231E13680);
        v86 = OUTLINED_FUNCTION_84();
        v87 = OUTLINED_FUNCTION_2_4();
        sub_231DE9728(v87, v88, v89, v86);

        v90 = OUTLINED_FUNCTION_110();
        v91 = OUTLINED_FUNCTION_1_5();
        sub_231DE9728(v91, v92, v93, v90);

        v94 = sub_231CC78B4();
        v95 = *v94;
        v96 = v94[1];
        v97 = objc_allocWithZone(MEMORY[0x277CC34B0]);

        v98 = v27;
        v99 = OUTLINED_FUNCTION_86();
        v103 = sub_231CE0AF0(v99, v100, v101, v96, v102);
        *(v14 + 528) = v103;
        [v103 setIsUpdate_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
        v104 = OUTLINED_FUNCTION_76();
        *(v14 + 536) = v104;
        OUTLINED_FUNCTION_48_0(v104, xmmword_231E13420);
        v105 = v103;
        v106 = swift_task_alloc();
        *(v14 + 544) = v106;
        *v106 = v14;
        OUTLINED_FUNCTION_28_0(v106);
        OUTLINED_FUNCTION_35();

        sub_231D5F40C(v107, v108, v109, v110, v111);
        return;
      }
    }

    v32 = *(v14 + 448);
    v34 = *(v14 + 424);
    v33 = *(v14 + 432);
    v35 = *(v14 + 376);
    sub_231CB4EEC();
    v36 = *(v33 + 16);
    v37 = OUTLINED_FUNCTION_46_0();
    v38(v37);

    v39 = sub_231E10E10();
    sub_231E11AF0();

    v40 = OUTLINED_FUNCTION_39_0();
    v41 = *(v14 + 448);
    v43 = *(v14 + 424);
    v42 = *(v14 + 432);
    if (v40)
    {
      v45 = *(v14 + 368);
      v44 = *(v14 + 376);
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a10 = v20;
      a11 = OUTLINED_FUNCTION_49_0();
      *(v16 + 4) = OUTLINED_FUNCTION_52_0(4.8751e-34, a11, v46);
      OUTLINED_FUNCTION_43_1(&dword_231CAE000, v47, v48, "Not transferring summarization attributes from mail to notification (status is not succeeded); id: %{public}s");
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_31_1();
    }

    (*(v42 + 8))(v41, v43);
  }

  else
  {
    OUTLINED_FUNCTION_149();
    sub_231CB4EEC();
    v49 = OUTLINED_FUNCTION_136();
    v50(v49);

    v51 = sub_231E10E10();
    sub_231E11AF0();

    v52 = OUTLINED_FUNCTION_85();
    v54 = *(v14 + 432);
    v53 = *(v14 + 440);
    v55 = *(v14 + 424);
    if (v52)
    {
      v57 = *(v14 + 368);
      v56 = *(v14 + 376);
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_28();
      *v15 = 136446210;
      v58 = OUTLINED_FUNCTION_54_0();
      *(v15 + 4) = sub_231CB5000(v58, v59, v60);
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v61, v62, "Not transferring summarization attributes from mail to notification (no searchable item); id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v63 = *(v54 + 8);
    v64 = OUTLINED_FUNCTION_25();
    v65(v64);
  }

  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_35();

  v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231CDE890()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 544);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 552) = v0;

  if (!v0)
  {
    v9 = *(v3 + 536);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CDE990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v21 = v16[57];
  v22 = v16[53];
  v23 = v16[54];
  v24 = v16[47];
  sub_231CB4EEC();
  v25 = OUTLINED_FUNCTION_18_2();
  v26(v25);

  v27 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_104();
  if (v28)
  {
    a11 = v18;
    a12 = v17;
    v30 = v16[46];
    v29 = v16[47];
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    a10 = v19;
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_134();
    *(v19 + 4) = OUTLINED_FUNCTION_53_0(4.8751e-34, v31, v32, v33, v34);
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v35, v36, "Transferred summarization attributes from mail to notification; id: %{public}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    (*(v20 + 8))(a12, a11);
  }

  else
  {

    v37 = *(v20 + 8);
    v38 = OUTLINED_FUNCTION_80();
    v40(v38, v39);
  }

  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_37();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDEADC()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[59];

  v2 = v0[63];
  v3 = v0[60];
  OUTLINED_FUNCTION_125();

  v4 = OUTLINED_FUNCTION_61_0();

  return v5(v4);
}

uint64_t sub_231CDEB74()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  v3 = *(v0 + 552);
  v4 = *(v0 + 536);
  OUTLINED_FUNCTION_125();

  v5 = OUTLINED_FUNCTION_61_0();

  return v6(v5);
}

uint64_t sub_231CDEC1C()
{
  OUTLINED_FUNCTION_18();
  v1[50] = v2;
  v1[51] = v0;
  v1[48] = v3;
  v1[49] = v4;
  v1[46] = v5;
  v1[47] = v6;
  v1[52] = *v0;
  v7 = sub_231E10E30();
  v1[53] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[54] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_69();
  v1[56] = OUTLINED_FUNCTION_155_0(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  v1[57] = OUTLINED_FUNCTION_69();
  v1[58] = swift_task_alloc();
  v15 = sub_231E0FD90();
  v1[59] = v15;
  OUTLINED_FUNCTION_6(v15);
  v1[60] = v16;
  v18 = *(v17 + 64);
  v1[61] = OUTLINED_FUNCTION_55();
  v19 = sub_231E0F950();
  v1[62] = v19;
  OUTLINED_FUNCTION_6(v19);
  v1[63] = v20;
  v22 = *(v21 + 64);
  v1[64] = OUTLINED_FUNCTION_55();
  v23 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_231CDEDC4()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v1 = v0[64];
  v3 = v0[50];
  v2 = v0[51];
  type metadata accessor for SpotlightReader();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_121();
  v0[65] = sub_231DF7564();
  sub_231D126F0();
  result = sub_231E0F8F0();
  v5 = 0;
  v6 = *(v3 + 16);
  v7 = v3 + 40;
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v0[66] = v8;
  v9 = (v7 + 16 * v5);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_16;
    }

    v11 = *(v9 - 1);
    v12 = *v9;

    v13 = sub_231CDBB24();
    v15 = v14;

    v9 += 2;
    ++v5;
    if (v15)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_231CE0B9C(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_231CE0B9C((v16 > 1), v17 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v5 = v10;
      goto LABEL_2;
    }
  }

  v19 = swift_task_alloc();
  v0[67] = v19;
  *v19 = v0;
  v19[1] = sub_231CDEF80;
  v20 = v0[64];
  v21 = v0[49];
  OUTLINED_FUNCTION_27_1(v0[48]);
  OUTLINED_FUNCTION_44();

  return sub_231DFBC14();
}

uint64_t sub_231CDEF80()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 536);
  v7 = *(v5 + 528);
  v8 = *v1;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  *(v3 + 544) = v10;
  *(v3 + 552) = v11;
  *(v3 + 560) = v0;

  if (!v0)
  {
    *(v3 + 568) = *(v3 + 80);
    *(v3 + 576) = *(v3 + 88);
    *(v3 + 592) = *(v3 + 104);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231CDF0C0()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[69];
  v2 = v0[68];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v3 = OUTLINED_FUNCTION_123();
  v0[75] = v3;
  *(v3 + 16) = xmmword_231E138E0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[76] = v4;
  *v4 = v0;
  v4[1] = sub_231CDF1B0;
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[65];

  return sub_231DFA158(v3, v8, v7, v6, v5);
}

uint64_t sub_231CDF1B0()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[76];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[77] = v8;
  v3[78] = v0;

  v9 = v2[75];
  if (v0)
  {
    v10 = v3[69];
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231CDF2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_51_0();
  a22 = v24;
  v27 = sub_231CBA138(v24[77]);
  v28 = v24[77];
  if (v27)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
      v30 = v145;
      v146 = v24[77];
    }

    else
    {
      OUTLINED_FUNCTION_140();
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = *(v28 + 32);
    }

    v24[79] = v30;

    v31 = OUTLINED_FUNCTION_95_0();
    v32 = [v31 summarizationStatus];

    if (v32)
    {
      v34 = v24[58];
      v33 = v24[59];
      v35 = sub_231CC78D8();
      v36 = *v35;
      v37 = v35[1];

      OUTLINED_FUNCTION_80();
      sub_231E0FDA0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v33);
      v39 = v24[61];
      if (EnumTagSinglePayload == 1)
      {
        v36 = v24[58];
        v40 = v24[59];
        v41 = v24[57];
        v43 = *v35;
        v42 = v35[1];
        OUTLINED_FUNCTION_105();
        __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);

        sub_231E0FD10();
        if (__swift_getEnumTagSinglePayload(v36, 1, v40) != 1)
        {
          sub_231CE1118(v24[58], &qword_27DD74458, &qword_231E15D38);
        }
      }

      else
      {
        v90 = v24[59];
        v91 = v24[58];
        v92 = OUTLINED_FUNCTION_126(v24[60]);
        v93(v92);
      }

      v94 = v24[61];
      sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
      v95 = sub_231CD6B44(v94);
      v24[80] = v95;
      v96 = OUTLINED_FUNCTION_95_0();
      v97 = [v96 summarizationStatus];

      [v95 setSummarizationStatus_];
      v98 = OUTLINED_FUNCTION_95_0();
      v99 = [v98 summarizationContentTopic];

      v100 = OUTLINED_FUNCTION_103();
      [v100 v101];

      v102 = OUTLINED_FUNCTION_95_0();
      v103 = [v102 summarizationContentTopLine];

      v104 = OUTLINED_FUNCTION_103();
      [v104 v105];

      v106 = OUTLINED_FUNCTION_95_0();
      v107 = [v106 summarizationContentSynopsis];

      v108 = OUTLINED_FUNCTION_103();
      [v108 v109];

      v110 = OUTLINED_FUNCTION_95_0();
      if (sub_231CE1178(v110, &selRef_summarizedIdentifiers))
      {
        sub_231E11850();
        OUTLINED_FUNCTION_49();
      }

      else
      {
        v36 = 0;
      }

      v111 = v24[49];
      v112 = v24[50];
      v114 = v24[47];
      v113 = v24[48];
      v115 = v24[46];
      v149 = v24[3];
      v150 = v24[2];
      v147 = v24[5];
      v148 = v24[4];
      [v95 setSummarizedIdentifiers_];

      sub_231DE93AC();
      OUTLINED_FUNCTION_122(v116, sel_setIsUrgent_);
      OUTLINED_FUNCTION_12_2(xmmword_231E13680);
      v117 = OUTLINED_FUNCTION_95_0();
      v118 = OUTLINED_FUNCTION_2_4();
      sub_231DE9728(v118, v119, v120, v117);

      v121 = OUTLINED_FUNCTION_95_0();
      v122 = OUTLINED_FUNCTION_1_5();
      sub_231DE9728(v122, v123, v124, v121);

      v125 = sub_231DE8A04(0);
      sub_231CE1280(v125, v126, v95);
      sub_231CE12E4(v113, v111, v95);
      sub_231CE133C(v112, v95);
      v127 = sub_231CC78C0();
      v128 = *v127;
      v129 = v127[1];
      v130 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      OUTLINED_FUNCTION_141();

      v131 = v95;

      v132 = OUTLINED_FUNCTION_86();
      v135 = sub_231CE0AF0(v132, v133, v134, v129, v131);
      v24[81] = v135;
      [v135 setIsUpdate_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
      v136 = OUTLINED_FUNCTION_76();
      v24[82] = v136;
      OUTLINED_FUNCTION_48_0(v136, xmmword_231E13420);
      v137 = v135;
      v138 = swift_task_alloc();
      v24[83] = v138;
      *v138 = v24;
      OUTLINED_FUNCTION_28_0(v138);
      OUTLINED_FUNCTION_37();

      sub_231D5F40C(v139, v140, v141, v142, v143);
      return;
    }
  }

  else
  {
    v47 = v24[77];
  }

  v48 = v24[69];
  v50 = v24[54];
  v49 = v24[55];
  v51 = v24[53];
  sub_231CB4EEC();
  v52 = OUTLINED_FUNCTION_18_2();
  v53(v52);

  v54 = sub_231E10E10();
  sub_231E11AF0();

  v55 = OUTLINED_FUNCTION_154();
  v56 = v24[69];
  if (v55)
  {
    v57 = v24[68];
    v58 = v24[65];
    v59 = v24[63];
    a11 = v24[62];
    a12 = v24[64];
    v60 = v24[54];
    a9 = v24[53];
    a10 = v24[55];
    OUTLINED_FUNCTION_30_1();
    v61 = swift_slowAlloc();
    a13 = OUTLINED_FUNCTION_67();
    *v61 = 136446210;
    v62 = sub_231CB5000(v57, v56, &a13);

    *(v61 + 4) = v62;
    OUTLINED_FUNCTION_137();
    _os_log_impl(v63, v64, v65, v66, v61, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_30();

    (*(v60 + 8))(a10, a9);
    (*(v59 + 8))(a12, a11);
  }

  else
  {
    v67 = v24[65];
    v69 = v24[63];
    v68 = v24[64];
    v70 = v24[62];
    v72 = v24[54];
    v71 = v24[55];
    v73 = v24[53];

    v74 = *(v72 + 8);
    v75 = OUTLINED_FUNCTION_70();
    v76(v75);
    v77 = *(v69 + 8);
    v78 = OUTLINED_FUNCTION_25();
    v79(v78);
  }

  v80 = v24[64];
  v81 = v24[61];
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37();

  v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDF950()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *(v2 + 664);
  *v4 = *v1;
  *(v3 + 672) = v0;

  v6 = *(v2 + 656);
  if (v0)
  {
    v7 = *(v3 + 552);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231CDFA84()
{
  v40 = v0;
  v1 = v0[69];
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[54];
  sub_231CB4EEC();
  v5 = OUTLINED_FUNCTION_18_2();
  v6(v5);

  v7 = sub_231E10E10();
  v8 = sub_231E11AF0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[81];
  v37 = v10;
  v38 = v0[80];
  v11 = v0[79];
  v12 = v0[69];
  if (v9)
  {
    v13 = v0[68];
    v14 = v0[63];
    v34 = v0[62];
    v35 = v0[64];
    v33 = v0[56];
    v15 = v0[54];
    v31 = v0[65];
    v32 = v0[53];
    OUTLINED_FUNCTION_30_1();
    v16 = swift_slowAlloc();
    v39 = OUTLINED_FUNCTION_67();
    *v16 = 136446210;
    v17 = sub_231CB5000(v13, v12, &v39);

    *(v16 + 4) = v17;
    _os_log_impl(&dword_231CAE000, v7, v8, "Transferred summarization attributes from message to notification stack; id: %{public}s", v16, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_30();

    (*(v15 + 8))(v33, v32);
    (*(v14 + 8))(v35, v34);
  }

  else
  {
    v18 = v0[65];
    v19 = v0[63];
    v36 = v0[64];
    v20 = v0[62];
    v21 = v0[56];
    v23 = v0[53];
    v22 = v0[54];

    v24 = *(v22 + 8);
    v25 = OUTLINED_FUNCTION_80();
    v26(v25);
    (*(v19 + 8))(v36, v20);
  }

  v27 = v0[64];
  v28 = v0[61];
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_14_0();

  return v29();
}

uint64_t sub_231CDFCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 520);

  v12 = *(v10 + 560);
  v13 = OUTLINED_FUNCTION_29_1();
  v14(v13);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_231CDFD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 520);

  v12 = *(v10 + 624);
  v13 = OUTLINED_FUNCTION_29_1();
  v14(v13);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_231CDFE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 648);
  v12 = *(v10 + 640);
  v13 = *(v10 + 520);

  v14 = *(v10 + 672);
  v15 = OUTLINED_FUNCTION_29_1();
  v16(v15);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

void sub_231CDFEF0(void *a1)
{
  v10 = MEMORY[0x277D84F90];
  v1 = sub_231CE139C(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_231CBA138(v1);
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        sub_231CC1784(0, &qword_2814CAEF8, 0x277CC34C8);
        sub_231CE0138();
        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23837D2A0](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_231CE1718(v5);
      if (!v7)
      {
        goto LABEL_16;
      }

      sub_231CC1784(0, &unk_2814CAF10, 0x277CCA898);
      v8 = sub_231CE00C4();
      v9 = [v6 isRichSmartReply];
      [objc_allocWithZone(MEMORY[0x277CC34D0]) initWithResponseText:v8 isRichSmartReply:v9];

      MEMORY[0x23837CD40]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_231E11890();
      }

      sub_231E118C0();
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
}

id sub_231CE00C4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231E115F0();

  v2 = [v0 initWithString_];

  return v2;
}

id sub_231CE0138()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_231CC1784(0, &unk_2814CAF38, 0x277CC34D0);
  v1 = sub_231E11850();

  v2 = [v0 initWithResponses_];

  return v2;
}

uint64_t sub_231CE01C0()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  OUTLINED_FUNCTION_127(v3);
  v4 = sub_231E10E30();
  v1[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_55();
  v8 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

unint64_t sub_231CE0284()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v2 = v0[8];
  v3 = v0[2];
  sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  sub_231E0FD20();
  v4 = sub_231CD6B44(v2);
  v0[9] = v4;
  sub_231CDFEF0(v3);
  v6 = v5;
  [v4 setSmartRepliesResponse_];

  result = sub_231CE139C(v3);
  if (result)
  {
    v8 = v0[3];
    v9 = v0[4];
    sub_231CBA138(result);
    OUTLINED_FUNCTION_141();

    if (v1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [v4 setSmartRepliesStatus_];
    sub_231E10000();
    sub_231E102F0();
    v11 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v12 = OUTLINED_FUNCTION_92(v4);
    v0[10] = v12;
    [v12 setIsUpdate_];
    v13 = v9[6];
    v14 = v9[7];
    v15 = v9[8];
    v16 = v9[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
    v17 = OUTLINED_FUNCTION_76();
    v0[11] = v17;
    OUTLINED_FUNCTION_48_0(v17, xmmword_231E13420);
    v18 = v12;
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_8_3(v19);
    OUTLINED_FUNCTION_66_0();

    return sub_231D5F40C(v20, v21, v22, v23, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231CE043C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CE053C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);

  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_231CE05A8()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  sub_231DC4AB8();
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  v10 = v1;
  v11 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_118_0();
  v12 = OUTLINED_FUNCTION_117();
  v13 = v0[13];
  if (v12)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_116(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_97(v15);
    OUTLINED_FUNCTION_40_0(&dword_231CAE000, v16, v17, "Could not write Smart Replies response with error: %@");
    sub_231CE1118(v14, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v19 = v0[7];
  v18 = v0[8];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_231CE0700()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  OUTLINED_FUNCTION_127(v3);
  v4 = sub_231E10E30();
  v1[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_55();
  v8 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

unint64_t sub_231CE07C4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v2 = v0[8];
  v3 = v0[2];
  sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  sub_231E0FD70();
  v4 = sub_231CD6B44(v2);
  v0[9] = v4;
  sub_231CDFEF0(v3);
  v6 = v5;
  [v4 setSmartRepliesResponse_];

  result = sub_231CE139C(v3);
  if (result)
  {
    v8 = v0[3];
    v9 = v0[4];
    sub_231CBA138(result);
    OUTLINED_FUNCTION_141();

    if (v1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [v4 setSmartRepliesStatus_];
    sub_231E10690();
    sub_231E10660();
    v11 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v12 = OUTLINED_FUNCTION_92(v4);
    v0[10] = v12;
    [v12 setIsUpdate_];
    v13 = v9[10];
    v14 = v9[11];
    v15 = v9[12];
    v16 = v9[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
    v17 = OUTLINED_FUNCTION_76();
    v0[11] = v17;
    OUTLINED_FUNCTION_48_0(v17, xmmword_231E13420);
    v18 = v12;
    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_8_3(v19);
    OUTLINED_FUNCTION_66_0();

    return sub_231D5F40C(v20, v21, v22, v23, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231CE097C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CE0A7C()
{
  memcpy(v3, (v0 + 16), sizeof(v3));
  sub_231CE140C(v3);
  v1 = *(v0 + 144);

  return v0;
}

uint64_t sub_231CE0ABC()
{
  sub_231CE0A7C();

  return swift_deallocClassInstance();
}

id sub_231CE0AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_231E115F0();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_231E115F0();

LABEL_6:
  v10 = [v5 initWithUniqueIdentifier:v8 domainIdentifier:v9 attributeSet:a5];

  return v10;
}

char *sub_231CE0B9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_231CE0CA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_231E12220();
  sub_231E116E0();
  v6 = sub_231E12250();

  return sub_231CE0D1C(a1, a2, v6);
}

unint64_t sub_231CE0D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_231E12100() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_231CE0DD0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_231CE0CA4(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74468, &qword_231E15D78);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_231CE0CA4(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_231E12160();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v17);

    return sub_231CE1044(a1, v17);
  }

  else
  {
    sub_231CE0F18(v11, a2, a3, a1, v16);
  }
}

_OWORD *sub_231CE0F18(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_231CE1044(a4, (a5[7] + 32 * a1));
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

void sub_231CE0F84(uint64_t a1, void *a2)
{
  v3 = sub_231E11850();
  [a2 setSummarizedIdentifiers_];
}

void sub_231CE0FE4(uint64_t a1, void *a2)
{
  v3 = sub_231E11850();
  [a2 setAttachmentCaptions_];
}

_OWORD *sub_231CE1044(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_231CE1054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_231CE1118(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_231CE1178(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_231E11870();

  return v4;
}

unint64_t sub_231CE11D8()
{
  result = qword_2814CAFD8;
  if (!qword_2814CAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CAFD8);
  }

  return result;
}

uint64_t sub_231CE122C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231E11870();

  return v4;
}

void sub_231CE1280(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231E115F0();

  [a3 setCreator_];
}

void sub_231CE12E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231E115F0();
  [a3 setThreadIdentifier_];
}

void sub_231CE133C(uint64_t a1, void *a2)
{
  v3 = sub_231E11850();
  [a2 setProviderDataTypeIdentifiers_];
}

uint64_t sub_231CE139C(void *a1)
{
  v1 = [a1 responses];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231CC1784(0, &qword_2814CAF30, 0x277D6F240);
  v3 = sub_231E11870();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization12FilterResultO6ReasonOSg(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization0B6StatusO(uint64_t a1)
{
  if ((*(a1 + 17) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 17) & 3;
  }
}

uint64_t sub_231CE14BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 272))
    {
      return OUTLINED_FUNCTION_108(*a1 + 2147483646);
    }

    v3 = *(a1 + 256);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_108(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_108(v4);
}

uint64_t sub_231CE150C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 256) = a2;
    }
  }

  return result;
}

uint64_t sub_231CE15BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 120))
    {
      return OUTLINED_FUNCTION_108(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_114(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_108(v3);
}

void sub_231CE1604(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    OUTLINED_FUNCTION_115(a1);
    *v3 = v4;
    if (v5 > v6)
    {
      *(v3 + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(a1 + 120) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_113_0(a1, a2);
    }
  }
}

uint64_t sub_231CE166C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 121))
    {
      return OUTLINED_FUNCTION_108(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_114(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_108(v3);
}

void sub_231CE16B4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    OUTLINED_FUNCTION_115(a1);
    *(v3 + 120) = 0;
    *v3 = v4;
    if (v5 > v6)
    {
      *(v3 + 121) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(a1 + 121) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_113_0(a1, a2);
    }
  }
}

uint64_t sub_231CE1718(void *a1)
{
  v1 = [a1 responseText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

void OUTLINED_FUNCTION_12_2(__n128 a1)
{
  *(v1 + 272) = a1;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
}

double OUTLINED_FUNCTION_21_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6 = *(v2 + 128);
  v7 = *(v2 + 96);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  result = *(v2 + 32);
  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1)
{
  *(a1 + 8) = sub_231CD975C;
  v7 = v3[224];
  v8 = v3[223];
  v9 = v3[222];
  v10 = v3[221];
  v11 = v3[220];
  v12 = v3[206];
  v13 = v3[200];
  v14 = v3[199];
  v15 = v3[198];
  v16 = v3[197];
  v17 = v3[196];
  v6[6] = v1;
  v6[7] = v2;
  v6[4] = v5;
  v6[5] = v4;
  v6[2] = v7;
  v6[3] = v11;
  return v17;
}

void OUTLINED_FUNCTION_31_1()
{

  JUMPOUT(0x23837E1D0);
}

double OUTLINED_FUNCTION_32_1()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1600);
  v3 = *(v0 + 1592);
  return *(v0 + 1584);
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void OUTLINED_FUNCTION_40_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 64);
  v4 = *(v2 + 16);
  return result;
}

void OUTLINED_FUNCTION_43_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 *OUTLINED_FUNCTION_48_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52_0(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_231CB5000(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_53_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_231CB5000(v6, v5, va);
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  v2 = v0[220];
  v3 = v0[217];
  v4 = v0[214];
  v5 = v0[213];
  v6 = v0[210];
}

void OUTLINED_FUNCTION_60_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_68_1()
{
  v1 = v0[226];
  v2 = v0[213];
  v3 = v0[212];
  v4 = v0[211];
  v5 = v0[210];
  v6 = v0[209];
  v7 = v0[208];
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  v2 = v0[57];
  result = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  return result;
}

uint64_t OUTLINED_FUNCTION_73()
{
  v3 = v0[57];
  v2 = v0[58];
  v5 = v0[55];
  v4 = v0[56];
  v7 = v0[53];
  v6 = v0[54];
  v8 = v0[50];
}

void *OUTLINED_FUNCTION_75()
{

  return memcpy((v1 + 16), (v0 + 16), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_77()
{
  v2 = v0[213];
  v3 = v0[212];
  v4 = v0[211];
  v5 = v0[210];
  v6 = v0[209];
  v7 = v0[208];
  v8 = v0[201];

  return sub_231CB4EEC();
}

id OUTLINED_FUNCTION_83_0()
{

  return [v1 (v0 + 116)];
}

id OUTLINED_FUNCTION_84()
{

  return [v1 (v0 + 116)];
}

BOOL OUTLINED_FUNCTION_85()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_87(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 88);
  v4 = *(a1 + 8);
  return v1;
}

void OUTLINED_FUNCTION_89()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 408) = a7;
  *(v8 + 416) = v7;
  *(v8 + 392) = a5;
  *(v8 + 400) = a6;
  *(v8 + 376) = a2;
  *(v8 + 384) = a4;
  *(v8 + 560) = a3;
  *(v8 + 368) = a1;

  return sub_231E10E30();
}

id OUTLINED_FUNCTION_92(void *a1)
{

  return sub_231CE0AF0(v2, v3, v1, v4, a1);
}

id OUTLINED_FUNCTION_93(void *a1)
{

  return sub_231CE0AF0(v3, v4, v2, v1, a1);
}

id OUTLINED_FUNCTION_94()
{

  return sub_231CE0AF0(v3, v2, v0, v1, v4);
}

id OUTLINED_FUNCTION_95_0()
{

  return [v0 (v1 + 116)];
}

id OUTLINED_FUNCTION_96(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_97(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_98(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3[50];
  v5 = v3[51];
  v6 = v3[48];
  v7 = v3[49];
  return v2;
}

uint64_t OUTLINED_FUNCTION_99(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 32) = a9;
  *(v9 + 16) = result;
  *(v9 + 24) = a2;
  return result;
}

void OUTLINED_FUNCTION_104()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[57];
  v5 = v0[53];
  v6 = v0[54];
}

void OUTLINED_FUNCTION_109_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

id OUTLINED_FUNCTION_110()
{

  return [v0 (v1 + 116)];
}

uint64_t OUTLINED_FUNCTION_111()
{
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
}

uint64_t OUTLINED_FUNCTION_112()
{
  v3 = v0[55];
  v2 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[52];
}

double OUTLINED_FUNCTION_115(uint64_t a1)
{
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

id OUTLINED_FUNCTION_116(float a1)
{
  *v2 = a1;

  return v1;
}

BOOL OUTLINED_FUNCTION_117()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_118_0()
{
}

id OUTLINED_FUNCTION_119()
{

  return [v0 (v1 + 116)];
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_231CE10BC(v0 + 16, v0 + 144);
}

id OUTLINED_FUNCTION_122(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_123()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_125()
{
  v2 = v0[57];
  v1 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
}

void OUTLINED_FUNCTION_132()
{
  v1 = v0[78];
  v2 = v0[79];
  v3 = v0[80];
  v4 = v0[81];
}

void OUTLINED_FUNCTION_133()
{
  v1 = v0[205];
  v2 = v0[204];
  v3 = v0[203];
  v4 = v0[202];
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(*(a13 + 48) + 16 * v13 + 8);
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void *OUTLINED_FUNCTION_145()
{

  return memcpy((v1 + 16), (v0 + 16), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_146(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_231CB5000(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_147()
{

  return sub_231E11EA0();
}

void *OUTLINED_FUNCTION_148(int a1, int a2, int a3, void *__src, int a5, int a6, int a7, int a8, uint64_t a9, __int16 a10, char a11, uint64_t a12)
{

  return memcpy(&a12, __src, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_149()
{
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  v5 = v0[47];
}

id OUTLINED_FUNCTION_150(uint64_t a1)
{
  *(v2 + 64) = a1;

  return sub_231DE938C(v1);
}

void OUTLINED_FUNCTION_151()
{

  JUMPOUT(0x23837D2A0);
}

id OUTLINED_FUNCTION_152()
{

  return sub_231CD6B44(v0);
}

uint64_t OUTLINED_FUNCTION_153()
{
}

BOOL OUTLINED_FUNCTION_154()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_155_0(uint64_t a1)
{
  *(v1 + 440) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_231E0FD40();
}

uint64_t OUTLINED_FUNCTION_157()
{
}

uint64_t sub_231CE2244()
{
  v0 = sub_231E10140();
  v2 = sub_231CE227C(v0, v1);

  return v2 & 1;
}

uint64_t sub_231CE227C(uint64_t a1, uint64_t a2)
{
  v4 = sub_231CC7B14();
  if (a2)
  {
    if (*v4 == a1 && v4[1] == a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_231E12100() ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_231CE22E0(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  result = qword_231E167C8[a1];
  v3 = word_231E167F8[a1];
  return result;
}

uint64_t sub_231CE2318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  if (HIBYTE(a3))
  {
    if (HIBYTE(a3) == 1)
    {
      v5 = MEMORY[0x277D421C0];
    }

    else if (a2 | a1 || a3)
    {
      if (a1 != 1 || a2 || a3)
      {
        if (a3)
        {
          v6 = 0;
        }

        else
        {
          v6 = a2 == 0;
        }

        v7 = v6 && a1 == 2;
        v5 = MEMORY[0x277D421C8];
        if (v7)
        {
          v5 = MEMORY[0x277D421E8];
        }
      }

      else
      {
        v5 = MEMORY[0x277D421E0];
      }
    }

    else
    {
      v5 = MEMORY[0x277D421D8];
    }
  }

  else
  {
    v5 = MEMORY[0x277D421D0];
  }

  v8 = *v5;
  v9 = sub_231E0FE20();
  v10 = *(*(v9 - 8) + 104);

  return v10(a4, v8, v9);
}

BOOL sub_231CE2438(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (HIBYTE(a3))
  {
    if (HIBYTE(a3) == 1)
    {
      v6 = 4;
    }

    else if (a2 | a1 || a3)
    {
      if (a1 != 1 || a2 || a3)
      {
        if (a3)
        {
          v7 = 0;
        }

        else
        {
          v7 = a2 == 0;
        }

        v8 = v7 && a1 == 2;
        v6 = 5;
        if (v8)
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 2;
  }

  if (HIBYTE(a6))
  {
    if (HIBYTE(a6) == 1)
    {
      v9 = 4;
    }

    else if (a5 | a4 || a6)
    {
      if (a4 != 1 || a5 || a6)
      {
        if (a6)
        {
          v10 = 0;
        }

        else
        {
          v10 = a5 == 0;
        }

        v11 = v10 && a4 == 2;
        v9 = 5;
        if (v11)
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 2;
  }

  return v6 == v9;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_231CE254C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 18))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 17);
      if (v3 <= 2)
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

uint64_t sub_231CE258C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t sub_231CE25D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 17) = a2;
  return result;
}

void *sub_231CE25FC@<X0>(void *__src@<X4>, char a2@<W0>, uint64_t a3@<X1>, uint64_t a4@<X2>, unsigned int a5@<W3>, uint64_t a6@<X8>)
{
  v6 = a5;
  v11 = a5 >> 8;
  memcpy(&__srca[6], __src, 0x60uLL);
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = v6;
  *(a6 + 25) = v11;
  return memcpy((a6 + 26), __srca, 0x66uLL);
}

uint64_t sub_231CE267C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74480, &qword_231E16838);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v20 - v3;
  v5 = sub_231E0FC90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  if (*(v0 + 25))
  {
    return 0;
  }

  v13 = *(v0 + 8);
  if (!v13)
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    v18 = 0;
    goto LABEL_7;
  }

  v20[1] = *(v0 + 8);
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
  v15 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v4, v15 ^ 1u, 1, v5);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
LABEL_7:
    sub_231CE28F0(v4);
    return 0;
  }

  v16 = *(v6 + 32);
  v16(v12, v4, v5);
  v16(v10, v12, v5);
  v17 = (*(v6 + 88))(v10, v5);
  if (v17 == *MEMORY[0x277D29D50])
  {
    (*(v6 + 8))(v10, v5);
    return 1;
  }

  if (v17 == *MEMORY[0x277D29D40])
  {
    return 1;
  }

  (*(v6 + 8))(v10, v5);
  return 0;
}

uint64_t sub_231CE28F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74480, &qword_231E16838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization13UrgencyStatusO(uint64_t a1)
{
  if ((*(a1 + 17) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 17) & 3;
  }
}

uint64_t sub_231CE297C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 128))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231CE29DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for InMemoryContactNameCache.Result()
{
  result = qword_2814CD580;
  if (!qword_2814CD580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231CE2AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = a3 + *(type metadata accessor for InMemoryContactNameCache.Result() + 20);
  return sub_231E0F920();
}

uint64_t sub_231CE2AE0(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  v5 = MEMORY[0x277D84F90];
  *(result + 40) = 0;
  *(result + 48) = v5;
  *(result + 56) = v5;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void sub_231CE2B38()
{
  os_unfair_lock_lock((v0 + 32));
  sub_231CE2B74((v0 + 40), v0);

  os_unfair_lock_unlock((v0 + 32));
}

unint64_t sub_231CE2B74(void *a1, uint64_t a2)
{
  v90 = a2;
  v3 = sub_231E10E30();
  v4 = OUTLINED_FUNCTION_24(v3);
  v76 = v5;
  v77 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v75 = v9 - v8;
  v89 = sub_231E0F950();
  v10 = OUTLINED_FUNCTION_24(v89);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_139();
  v88 = v15;
  MEMORY[0x28223BE20](v16);
  v87 = &v74 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744B8, &qword_231E16B98);
  v18 = OUTLINED_FUNCTION_12(v82);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_139();
  v80 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v74 - v23);
  v25 = &qword_27DD744C0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744C0, &qword_231E16BA0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_139();
  v91 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v74 - v30;
  v32 = *a1;
  v33 = a1[1];
  v78 = a1;
  v79 = v32;
  v34 = a1[2];
  v92 = *(v34 + 16);
  v81 = v33 + 32;
  v85 = (v12 + 8);
  v86 = (v12 + 16);

  v83 = v33;

  v36 = 0;
  v37 = 0;
  v84 = v24;
  do
  {
    if (v37 >= v92)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744C8, &unk_231E16BA8);
      v50 = v91;
      __swift_storeEnumTagSinglePayload(v91, 1, 1, v52);
    }

    else
    {
      if ((v37 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      if (v37 >= *(v83 + 16))
      {
        goto LABEL_19;
      }

      v38 = v82;
      v39 = *(v82 + 48);
      v40 = (v81 + 16 * v37);
      v41 = v40[1];
      *v24 = *v40;
      v24[1] = v41;
      if (v37 >= *(v34 + 16))
      {
        goto LABEL_20;
      }

      v42 = v25;
      v43 = v38;
      v44 = *(type metadata accessor for InMemoryContactNameCache.Result() - 8);
      sub_231CE3448(v34 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37++, v24 + v39);
      v45 = v80;
      sub_231CE4738(v24, v80, &qword_27DD744B8, &qword_231E16B98);
      v46 = *(v43 + 48);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744C8, &unk_231E16BA8);
      v48 = *(v47 + 48);
      v49 = v45[1];
      v50 = v91;
      *v91 = *v45;
      v50[1] = v49;
      v51 = v45 + v46;
      v25 = v42;
      sub_231CE4600(v51, v50 + v48);
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v47);
    }

    sub_231CE4738(v50, v31, v25, &qword_231E16BA0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744C8, &unk_231E16BA8);
    if (__swift_getEnumTagSinglePayload(v31, 1, v53) == 1)
    {
      goto LABEL_13;
    }

    v54 = *(v31 + 1);

    v55 = &v31[*(v53 + 48)];
    v56 = type metadata accessor for InMemoryContactNameCache.Result();
    v57 = v87;
    v58 = v89;
    (*v86)(v87, v55 + *(v56 + 20), v89);
    sub_231CE3DD8(v55);
    sub_231E0F870();
    v60 = v59;
    v61 = *v85;
    (*v85)(v57, v58);
    v62 = v88;
    sub_231E0F920();
    sub_231E0F870();
    v64 = v63;
    result = v61(v62, v58);
    if (v64 - *(v90 + 24) < v60)
    {
      goto LABEL_13;
    }

    v65 = __OFADD__(v36++, 1);
    v24 = v84;
  }

  while (!v65);
  __break(1u);
LABEL_13:

  if (v36 >= 1)
  {
    v66 = *(v34 + 16);
    v67 = sub_231CB4EEC();
    v69 = v75;
    v68 = v76;
    v70 = v77;
    (*(v76 + 16))(v75, v67, v77);
    v71 = sub_231E10E10();
    v72 = sub_231E11AF0();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 134218240;
      *(v73 + 4) = v36;
      *(v73 + 12) = 2048;
      *(v73 + 14) = v66;
      _os_log_impl(&dword_231CAE000, v71, v72, "InMemoryContactCache: Removing %ld/%ld items", v73, 0x16u);
      MEMORY[0x23837E1D0](v73, -1, -1);
    }

    (*(v68 + 8))(v69, v70);
    return sub_231CE315C(v36);
  }

  return result;
}

unint64_t sub_231CE315C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  if (*(*(v1 + 16) + 16) < result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(v1 + 8) + 16) >= result)
  {
    sub_231CB54B0(0, result);
    return sub_231CE4110(v2);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_231CE31D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_231E10E30();
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for InMemoryContactNameCache.Result();
  v18 = OUTLINED_FUNCTION_12(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_1();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74488, &qword_231E16A60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v33 - v26;
  os_unfair_lock_lock((v4 + 32));
  sub_231CE3448(a1, v27);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v17);

  sub_231CE34AC(v27, a2, a3);
  v28 = *(*(v4 + 56) + 16);
  if (*(v4 + 16) < v28)
  {
    sub_231CE3894(v23);

    sub_231CE3DD8(v23);
    v28 = *(*(v4 + 56) + 16);
  }

  v29 = sub_231CB4EEC();
  (*(v11 + 16))(v16, v29, v8);
  v30 = sub_231E10E10();
  v31 = sub_231E11AF0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = v28;
    _os_log_impl(&dword_231CAE000, v30, v31, "InMemoryContactCache: Adding item, count: %ld", v32, 0xCu);
    MEMORY[0x23837E1D0](v32, -1, -1);
  }

  (*(v11 + 8))(v16, v8);
  os_unfair_lock_unlock((v4 + 32));
}

uint64_t sub_231CE3448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryContactNameCache.Result();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CE34AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for InMemoryContactNameCache.Result();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v42 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v13);
  v43 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744B0, &qword_231E16B90);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v23 = *v3;
  v22 = v3[1];
  v42 = a2;
  v52[0] = a2;
  v52[1] = a3;
  v49 = v23;
  v50 = v22;
  v51 = v52;
  v24 = sub_231CC5DC8(sub_231CC6BE0, v48, v22);
  v26 = v25;
  v28 = v27;
  v29 = *(v18 + 56);
  v47 = a1;
  sub_231CE4664(a1, &v21[v29]);
  if (v26)
  {
    if (__swift_getEnumTagSinglePayload(&v21[v29], 1, v7) == 1)
    {
      sub_231CC154C(v47, &qword_27DD74488, &qword_231E16A60);
    }

    else
    {
      v31 = v44;
      sub_231CE4600(&v21[v29], v44);
      sub_231CC5F44(v42, a3, v28);

      v32 = v45;
      sub_231CE3448(v31, v45);
      v35 = v3[2];
      v34 = v3 + 2;
      v33 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v34 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_231CE442C(0, *(v33 + 16) + 1, 1);
        v33 = *v34;
      }

      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_231CE442C(v37 > 1, v38 + 1, 1);
      }

      sub_231CC154C(v47, &qword_27DD74488, &qword_231E16A60);
      sub_231CE3DD8(v31);
      v39 = *v34;
      *(v39 + 16) = v38 + 1;
      result = sub_231CE4600(v32, v39 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v38);
      *v34 = v39;
    }
  }

  else
  {

    if (__swift_getEnumTagSinglePayload(&v21[v29], 1, v7) == 1)
    {
      sub_231CC60A8(v24, v28);

      sub_231CE4178(v24, v15);
      sub_231CC154C(v47, &qword_27DD74488, &qword_231E16A60);
      return sub_231CE3DD8(v15);
    }

    v40 = v43;
    sub_231CE4600(&v21[v29], v43);
    v41 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_231CE4264(v41);
    }

    result = sub_231CC154C(v47, &qword_27DD74488, &qword_231E16A60);
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *(v41 + 16))
    {
      result = sub_231CE46D4(v40, v41 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v24);
      v3[2] = v41;
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_231CE3894(unint64_t result)
{
  if (*(v1[2] + 16))
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      v4 = v1[1];
      v5 = *v1;

      v6 = sub_231CC66B0((v3 + 16), v3 + 32, v3, v4, 0);
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_231CC60A8(0, v6);
    sub_231CE4178(0, v2);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_231CE3950(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 112))();
  os_unfair_lock_lock((v2 + 32));
  sub_231CE39FC((v2 + 40), a1, a2, &v5, &v6);
  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_231CE39FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v29 = a4;
  v35 = a5;
  v8 = type metadata accessor for InMemoryContactNameCache.Result();
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v28 = (v13 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74488, &qword_231E16A60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = *a1;
  v19 = a1[1];
  v34[0] = a2;
  v34[1] = a3;
  v31 = v18;
  v32 = v19;
  v33 = v34;

  sub_231CC5DC8(sub_231CC69D0, v30, v19);
  v21 = v20;

  if (v21)
  {
    sub_231CE45AC();
    v22 = swift_allocError();
    result = swift_willThrow();
    *v29 = v22;
  }

  else
  {
    sub_231CE3C1C(a2, a3, v18, v19, a1[2], v17);
    if (__swift_getEnumTagSinglePayload(v17, 1, v8))
    {
      result = sub_231CC154C(v17, &qword_27DD74488, &qword_231E16A60);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v26 = v28;
      sub_231CE3448(v17, v28);
      sub_231CC154C(v17, &qword_27DD74488, &qword_231E16A60);
      v24 = *v26;
      v25 = v26[1];

      result = sub_231CE3DD8(v26);
    }

    v27 = v35;
    *v35 = v24;
    v27[1] = v25;
  }

  return result;
}

uint64_t sub_231CE3C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v14;
  v8 = sub_231CC5DC8(sub_231CC6BE0, v13, a4);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    sub_231CE4058(v8, a5, a6);
    v10 = 0;
  }

  v11 = type metadata accessor for InMemoryContactNameCache.Result();
  return __swift_storeEnumTagSinglePayload(a6, v10, 1, v11);
}

uint64_t sub_231CE3CBC()
{
  sub_231CC154C(v0 + 40, &qword_27DD74490, &qword_231E16A68);

  return swift_deallocClassInstance();
}

uint64_t sub_231CE3D04(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for InMemoryContactNameCache.Result(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for InMemoryContactNameCache.Result();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231CE3DD8(uint64_t a1)
{
  v2 = type metadata accessor for InMemoryContactNameCache.Result();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231CE3E38()
{
  result = qword_27DD74498;
  if (!qword_27DD74498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74498);
  }

  return result;
}

void sub_231CE3ED8()
{
  sub_231CE3F5C();
  if (v0 <= 0x3F)
  {
    sub_231E0F950();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_231CE3F5C()
{
  if (!qword_2814CAF90)
  {
    v0 = sub_231E11BF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814CAF90);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for InMemoryContactNameCache.InMemoryContactNameCacheError(_BYTE *result, int a2, int a3)
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

unint64_t sub_231CE4058@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(type metadata accessor for InMemoryContactNameCache.Result() - 8);
  v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4;

  return sub_231CE3448(v7, a3);
}

uint64_t sub_231CE4110(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_231CB5794(0, result, *(*v1 + 16));
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_231CE444C(0, result);
}

size_t sub_231CE4178@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_231CE4264(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(type metadata accessor for InMemoryContactNameCache.Result() - 8);
    v9 = *(v8 + 72);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v9 * a1;
    sub_231CE4600(v10, a2);
    result = sub_231CE3D04(v10 + v9, v7 - 1 - a1, v10);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }

  return result;
}

size_t sub_231CE4278(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744A8, &unk_231E16B80);
  v10 = *(type metadata accessor for InMemoryContactNameCache.Result() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for InMemoryContactNameCache.Result() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_231CE3D04(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_231CE442C(size_t a1, int64_t a2, char a3)
{
  result = sub_231CE4278(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_231CE444C(uint64_t result, int64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v12 = v5 + v8;
    }

    else
    {
      v12 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v12 = v5 + v8;
  }

  else
  {
    v12 = v5;
  }

  sub_231CE442C(isUniquelyReferenced_nonNull_native, v12, 1);
  v4 = *v2;
LABEL_15:
  v13 = *(type metadata accessor for InMemoryContactNameCache.Result() - 8);
  v14 = v4 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v15 = *(v13 + 72);
  v16 = v14 + v15 * v6;
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_19:
    *v2 = v4;
    return result;
  }

  v17 = *(v4 + 16);
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_25;
  }

  result = sub_231CE3D04(v14 + v15 * a2, v17 - a2, v16);
  v18 = *(v4 + 16);
  v19 = __OFADD__(v18, v8);
  v20 = v18 - v7;
  if (!v19)
  {
    *(v4 + 16) = v20;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_231CE45AC()
{
  result = qword_2814CB370[0];
  if (!qword_2814CB370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814CB370);
  }

  return result;
}

uint64_t sub_231CE4600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryContactNameCache.Result();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CE4664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74488, &qword_231E16A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CE46D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryContactNameCache.Result();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CE4738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_231CE4798()
{
  OUTLINED_FUNCTION_18();
  v0[11] = v1;
  v2 = sub_231E0F9A0();
  v0[12] = v2;
  OUTLINED_FUNCTION_6(v2);
  v0[13] = v3;
  v5 = *(v4 + 64);
  v0[14] = OUTLINED_FUNCTION_69();
  v0[15] = swift_task_alloc();
  v6 = sub_231E0FB30();
  v0[16] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[17] = v7;
  v9 = *(v8 + 64);
  v0[18] = OUTLINED_FUNCTION_69();
  v0[19] = swift_task_alloc();
  v10 = sub_231E0FAE0();
  v0[20] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[21] = v11;
  v13 = *(v12 + 64);
  v0[22] = OUTLINED_FUNCTION_55();
  v14 = sub_231E0FB00();
  v0[23] = v14;
  OUTLINED_FUNCTION_6(v14);
  v0[24] = v15;
  v17 = *(v16 + 64);
  v0[25] = OUTLINED_FUNCTION_55();
  v18 = sub_231E10340();
  v0[26] = v18;
  OUTLINED_FUNCTION_6(v18);
  v0[27] = v19;
  v21 = *(v20 + 64);
  v0[28] = OUTLINED_FUNCTION_69();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v22 = sub_231E10E30();
  v0[31] = v22;
  OUTLINED_FUNCTION_6(v22);
  v0[32] = v23;
  v25 = *(v24 + 64);
  v0[33] = OUTLINED_FUNCTION_69();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_231CE4F00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 352);
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CE5288()
{
  v29 = v0;
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);

  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 360);
  OUTLINED_FUNCTION_2_5();
  v9 = *(v0 + 224);
  v10 = OUTLINED_FUNCTION_15_4();
  v11(v10);
  v12 = OUTLINED_FUNCTION_10_5();
  (v3)(v12);
  v13 = v8;
  v14 = sub_231E10E10();
  v15 = sub_231E11AD0();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_17_5();
    v28 = OUTLINED_FUNCTION_27_2();
    *v3 = 136446466;
    sub_231E10000();
    v16 = OUTLINED_FUNCTION_26_2();
    v17(v16);
    sub_231CB5000(v1, v2, &v28);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_11_4();
    *(v0 + 80) = v8;
    v18 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
    v19 = sub_231E11680();
    v21 = sub_231CB5000(v19, v20, &v28);

    *(v3 + 14) = v21;
    OUTLINED_FUNCTION_53_1(&dword_231CAE000, v22, v23, "Mail Summarization Feedback donation failed: %{public}s, error: %{public}s");
    OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v27();
  }

  else
  {
    OUTLINED_FUNCTION_31_2();

    (v3)(v2, v15);
    v24 = OUTLINED_FUNCTION_18_0();
    v4(v24);
  }

  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_19();

  return v25();
}

uint64_t sub_231CE54F8()
{
  OUTLINED_FUNCTION_18();
  v0 = *(sub_231E10340() - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CBFF60;

  return sub_231CE4798();
}

uint64_t sub_231CE55B8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = a2(0);
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  if ([objc_opt_self() isInternalBuild] & 1) != 0 || (result = OUTLINED_FUNCTION_155(), (result))
  {
    v19 = sub_231E119F0();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
    (*(v9 + 16))(v13, a1, v6);
    v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    (*(v9 + 32))(v21 + v20, v13, v6);
    sub_231CC3BE0(0, 0, v17, a4, v21);
  }

  return result;
}

uint64_t sub_231CE5774()
{
  OUTLINED_FUNCTION_18();
  v0[11] = v1;
  v2 = sub_231E0F9A0();
  v0[12] = v2;
  OUTLINED_FUNCTION_6(v2);
  v0[13] = v3;
  v5 = *(v4 + 64);
  v0[14] = OUTLINED_FUNCTION_69();
  v0[15] = swift_task_alloc();
  v6 = sub_231E0FB30();
  v0[16] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[17] = v7;
  v9 = *(v8 + 64);
  v0[18] = OUTLINED_FUNCTION_69();
  v0[19] = swift_task_alloc();
  v10 = sub_231E0FAE0();
  v0[20] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[21] = v11;
  v13 = *(v12 + 64);
  v0[22] = OUTLINED_FUNCTION_55();
  v14 = sub_231E0FB00();
  v0[23] = v14;
  OUTLINED_FUNCTION_6(v14);
  v0[24] = v15;
  v17 = *(v16 + 64);
  v0[25] = OUTLINED_FUNCTION_55();
  v18 = sub_231E106A0();
  v0[26] = v18;
  OUTLINED_FUNCTION_6(v18);
  v0[27] = v19;
  v21 = *(v20 + 64);
  v0[28] = OUTLINED_FUNCTION_69();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v22 = sub_231E10E30();
  v0[31] = v22;
  OUTLINED_FUNCTION_6(v22);
  v0[32] = v23;
  v25 = *(v24 + 64);
  v0[33] = OUTLINED_FUNCTION_69();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_231CE5ED4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 352);
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CE625C()
{
  v29 = v0;
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);

  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 360);
  OUTLINED_FUNCTION_2_5();
  v9 = *(v0 + 224);
  v10 = OUTLINED_FUNCTION_15_4();
  v11(v10);
  v12 = OUTLINED_FUNCTION_10_5();
  (v3)(v12);
  v13 = v8;
  v14 = sub_231E10E10();
  v15 = sub_231E11AD0();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_17_5();
    v28 = OUTLINED_FUNCTION_27_2();
    *v3 = 136446466;
    sub_231E10690();
    v16 = OUTLINED_FUNCTION_26_2();
    v17(v16);
    sub_231CB5000(v1, v2, &v28);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_11_4();
    *(v0 + 80) = v8;
    v18 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
    v19 = sub_231E11680();
    v21 = sub_231CB5000(v19, v20, &v28);

    *(v3 + 14) = v21;
    OUTLINED_FUNCTION_53_1(&dword_231CAE000, v22, v23, "Message Summarization Feedback donation failed: %{public}s, error: %{public}s");
    OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v27();
  }

  else
  {
    OUTLINED_FUNCTION_31_2();

    (v3)(v2, v15);
    v24 = OUTLINED_FUNCTION_18_0();
    v4(v24);
  }

  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_19();

  return v25();
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_24(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + v8, v5 | 7);
}

uint64_t sub_231CE658C()
{
  OUTLINED_FUNCTION_18();
  v0 = *(sub_231E106A0() - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;

  return sub_231CE5774();
}

unint64_t sub_231CE6700()
{
  result = qword_2814CBC50;
  if (!qword_2814CBC50)
  {
    sub_231E0F9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBC50);
  }

  return result;
}

uint64_t sub_231CE6758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  v2 = v0[39];
  *(v1 - 88) = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[29];
  v8 = v0[26];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[11];
  return v0[34];
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return MEMORY[0x28215E7F0](a18, 0, 0, 0, a17, v18, 0, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_17_5()
{
  v7 = v0[42];
  v2 = v0[33];
  v10 = v0[41];
  v8 = v0[32];
  v9 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_31_2()
{
  v4 = v1[41];
  v3 = v1[42];
  v6 = v1[32];
  v5 = v1[33];
  v7 = v1[31];
  v8 = v0;
  v9 = v1[27];
  v10 = v1[28];
  v11 = v1[26];
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a22 = a1;
  a19 = v22;

  return MEMORY[0x28215E8A0](&a19);
}

void OUTLINED_FUNCTION_38_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_log_type_t a17)
{

  _os_log_impl(a1, v17, a17, a4, v18, 0x16u);
}

uint64_t OUTLINED_FUNCTION_39_1()
{
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[11];

  return sub_231CB4EEC();
}

void OUTLINED_FUNCTION_40_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_type_t a16)
{

  _os_log_impl(a1, v16, a16, a4, v17, 0xCu);
}

uint64_t OUTLINED_FUNCTION_41_1()
{
}

void OUTLINED_FUNCTION_43_2()
{
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
}

uint64_t OUTLINED_FUNCTION_49_1()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_53_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_55_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_2@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_59_2()
{

  return sub_231E120D0();
}

unint64_t sub_231CE6BA8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_231CE6BC8(uint64_t a1, unsigned __int8 a2)
{
  sub_231E12220();
  MEMORY[0x23837D730](a2);
  return sub_231E12250();
}

unint64_t sub_231CE6C0C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231CE6BA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_231CE6C38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231CE6BB8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_231CE6C64(unsigned __int8 a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_231CE6CB4(a1, a2);
  return v7;
}

uint64_t sub_231CE6CB4(unsigned __int8 a1, char a2)
{
  v5 = a1;
  v6 = sub_231E10E30();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_executionDates) = MEMORY[0x277D84F90];
  v14 = v2 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenThermalState;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenIsLowPowerMode) = 2;
  v15 = OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenDate;
  v16 = sub_231E0F950();
  __swift_storeEnumTagSinglePayload(v2 + v15, 1, 1, v16);
  *(v2 + 112) = a1;
  if (v5 == 2)
  {
    v17 = sub_231CB4EEC();
  }

  else
  {
    v17 = sub_231DC4AB8();
  }

  (*(v9 + 16))(v13, v17, v6);
  (*(v9 + 32))(v2 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker__logger, v13, v6);
  if (*(v2 + 112) == 2)
  {
    v18 = sub_231D12534();
  }

  else
  {
    v18 = sub_231D125C8();
  }

  *(v2 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_maxallowedExecutionsPerMinute) = v18;
  *(v2 + 113) = a2 & 1;
  return v2;
}

uint64_t sub_231CE6E50()
{
  v1 = v0;
  v2 = sub_231E0F950();
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  if (*(v0 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenThermalState + 8) == 1)
  {
    v13 = [objc_opt_self() processInfo];
    v14 = [v13 thermalState];
  }

  else
  {
    v14 = *(v0 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenThermalState);
  }

  sub_231CE72E0(v10);
  sub_231E0F8B0();
  v39 = *(v5 + 8);
  v40 = v2;
  v15 = v39(v10, v2);
  MEMORY[0x28223BE20](v15);
  *(&v37 - 2) = v12;
  v16 = OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_executionDates;
  swift_beginAccess();
  v17 = sub_231CE7850(sub_231CE7400, (&v37 - 4));
  v18 = *(*(v1 + v16) + 16);
  if (v18 < v17)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_231CE7CC4(v17, v18);
    swift_endAccess();
    v19 = *(*(v1 + v16) + 16);
    switch(v14)
    {
      case 0uLL:
        goto LABEL_15;
      case 1uLL:
        goto LABEL_7;
      case 2uLL:
      case 3uLL:
        if (*(v1 + 112) != 2)
        {
          goto LABEL_11;
        }

LABEL_7:
        if (v19 < *(v1 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_maxallowedExecutionsPerMinute))
        {
LABEL_15:
          v30 = *(v1 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenIsLowPowerMode);
          if (v30 == 2)
          {
            v31 = [objc_opt_self() processInfo];
            LOBYTE(v30) = [v31 isLowPowerModeEnabled];
          }

          v23 = 0;
          if (*(v1 + 113) == 1 && (v30 & 1) != 0)
          {
            if (v19 >= *(v1 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_maxallowedExecutionsPerMinute))
            {
              v23 = 44;
            }

            else
            {
              v23 = 0;
            }
          }

          sub_231CE72E0(v10);
          sub_231CE7508();
          v32 = *(*(v1 + v16) + 16);
          sub_231CE7554(v32);
          v33 = *(v1 + v16);
          *(v33 + 16) = v32 + 1;
          v34 = v10;
          v35 = v40;
          (*(v5 + 32))(v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v32, v34, v40);
          *(v1 + v16) = v33;
          v24 = v35;
        }

        else
        {
          v20 = sub_231E10E10();
          v21 = sub_231E11AF0();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&dword_231CAE000, v20, v21, "Item is not eligible for execution (summarization / smartReplies) (thermal state >= fair)", v22, 2u);
            MEMORY[0x23837E1D0](v22, -1, -1);
          }

LABEL_11:
          v23 = 28;
          v24 = v40;
        }

        v39(v12, v24);
        result = v23;
        break;
      default:
        v25 = sub_231E10E10();
        v26 = sub_231E11AE0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v38 = v19;
          v28 = v27;
          *v27 = 134217984;
          *(v27 + 4) = v14;
          _os_log_impl(&dword_231CAE000, v25, v26, "Unhandled thermal state: %ld", v27, 0xCu);
          v29 = v28;
          v19 = v38;
          MEMORY[0x23837E1D0](v29, -1, -1);
        }

        goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_231CE72E0@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_0_9();
  v6 = OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenDate;
  swift_beginAccess();
  sub_231CE82A8(v1 + v6, v2);
  v7 = sub_231E0F950();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return (*(*(v7 - 8) + 32))(a1, v2, v7);
  }

  sub_231E0F920();
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_231CE7DF4(v2);
  }

  return result;
}

uint64_t sub_231CE7430()
{
  v1 = OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker__logger;
  v2 = sub_231E10E30();
  OUTLINED_FUNCTION_12(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_executionDates);

  sub_231CE7DF4(v0 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenDate);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_231CE74B4()
{
  sub_231CE7430();

  return MEMORY[0x282200960](v0);
}

size_t sub_231CE7508()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231CE7594(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_231CE7554(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_231CE7594(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

size_t sub_231CE7594(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_231CE7680(v8, v7);
  v10 = *(sub_231E0F950() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_231CE777C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_231CE7680(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD74DD0, &qword_231E16E00);
  v4 = *(sub_231E0F950() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231CE777C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_231E0F950(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_231E0F950();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231CE7850(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = sub_231E0F950();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = *v4;
  result = sub_231CE7BE0(a1, a2, *v4);
  if (!v3)
  {
    v46 = a2;
    v47 = v16;
    v51 = v7;
    if (v19)
    {
      return *(v17 + 16);
    }

    else
    {
      v41 = v4;
      v53 = result;
      v20 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v54 = 0;
        v21 = v50;
        v22 = v51;
        v49 = v50 + 16;
        v44 = v14;
        v45 = (v50 + 8);
        v42 = (v50 + 40);
        v43 = v11;
        v23 = v47;
        while (1)
        {
          v24 = *(v17 + 16);
          if (v20 == v24)
          {
            return v53;
          }

          if (v20 >= v24)
          {
            break;
          }

          v25 = v17;
          v48 = (*(v21 + 80) + 32) & ~*(v21 + 80);
          v26 = v17 + v48;
          v27 = *(v21 + 72);
          v55 = v20;
          v28 = *(v21 + 16);
          v52 = v27 * v20;
          v28(v23, v17 + v48 + v27 * v20, v22);
          v29 = v54;
          v30 = a1;
          v31 = a1(v23);
          v54 = v29;
          if (v29)
          {
            return (*v45)(v23, v22);
          }

          v32 = v31;
          result = (*v45)(v23, v22);
          if (v32)
          {
            a1 = v30;
            v21 = v50;
            v22 = v51;
            v23 = v47;
            v17 = v25;
            v33 = v55;
          }

          else
          {
            v33 = v55;
            if (v55 == v53)
            {
              a1 = v30;
              v21 = v50;
              v22 = v51;
              v23 = v47;
            }

            else
            {
              if ((v53 & 0x8000000000000000) != 0)
              {
                goto LABEL_26;
              }

              v34 = *(v25 + 16);
              if (v53 >= v34)
              {
                goto LABEL_27;
              }

              v35 = v27 * v53;
              v36 = v51;
              result = (v28)(v44, v26 + v35, v51);
              if (v55 >= v34)
              {
                goto LABEL_28;
              }

              v37 = v26 + v52;
              v38 = v43;
              v28(v43, v37, v36);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_231CE8294(v25);
              }

              a1 = v30;
              v39 = v25 + v48;
              v40 = *v42;
              v22 = v51;
              result = (*v42)(v25 + v48 + v35, v38, v51);
              v23 = v47;
              if (v55 >= *(v25 + 16))
              {
                goto LABEL_29;
              }

              result = v40(v39 + v52, v44, v22);
              v33 = v55;
              *v41 = v25;
              v21 = v50;
            }

            v17 = v25;
            ++v53;
          }

          v20 = v33 + 1;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_231CE7BE0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_231E0F950() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

int64_t sub_231CE7CC4(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_231CE822C(result, 1);
  v8 = *v2;
  v9 = *(sub_231E0F950() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_231CE777C(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_231CE7DF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231CE7E60()
{
  result = qword_27DD744E0;
  if (!qword_27DD744E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD744E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComputationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ComputationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for PowerTracker()
{
  result = qword_2814CE190;
  if (!qword_2814CE190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231CE806C()
{
  v0 = sub_231E10E30();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_231CE8184();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_231CE8184()
{
  if (!qword_2814CD0F8)
  {
    sub_231E0F950();
    v0 = sub_231E11BF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814CD0F8);
    }
  }
}

void type metadata accessor for ThermalState()
{
  if (!qword_27DD744E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DD744E8);
    }
  }
}

size_t sub_231CE822C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_231CE7594(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_231CE82A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CE8318(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_231CE8380(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_231CE8380(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  sub_231CE8434(a1, v5 + 16);
  sub_231CE8434(a2, v5 + 56);
  sub_231CE8434(a3, v5 + 96);
  *(v5 + 136) = a4;
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v5 + 144) = v11;
  return v5;
}

uint64_t sub_231CE8434(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_231CE8498()
{
  OUTLINED_FUNCTION_18();
  v1[60] = v2;
  v1[61] = v0;
  v1[58] = v3;
  v1[59] = v4;
  v5 = sub_231E10E30();
  v1[62] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[63] = v6;
  v8 = *(v7 + 64);
  v1[64] = OUTLINED_FUNCTION_69();
  v1[65] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CE854C()
{
  v66 = v0;
  v2 = *(v0 + 520);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 480);
  v6 = sub_231DC4B64();
  v7 = *(v3 + 16);
  v7(v2, v6, v4);

  v8 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_148_0();
  v9 = OUTLINED_FUNCTION_176();
  v10 = *(v0 + 520);
  v12 = *(v0 + 496);
  v11 = *(v0 + 504);
  if (v9)
  {
    v62 = *(v0 + 520);
    v13 = *(v0 + 480);
    OUTLINED_FUNCTION_9_1();
    v63 = v7;
    v14 = OUTLINED_FUNCTION_28();
    __src[0] = v14;
    *v6 = 136446210;
    v15 = sub_231DDB1E8();
    OUTLINED_FUNCTION_174(v15, v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_117_0();
    *(v6 + 4) = &off_231E13000;
    OUTLINED_FUNCTION_67_1();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v7 = v63;
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v26 = *(v11 + 8);
    v26(v62, v12);
  }

  else
  {

    v26 = *(v11 + 8);
    v26(v10, v12);
  }

  v27 = *(v0 + 472);
  sub_231E10250();
  OUTLINED_FUNCTION_8_1();
  if (v29 || (v28 & 1) == 0)
  {
    v49 = *(v0 + 472);
    v50 = swift_task_alloc();
    *(v0 + 528) = v50;
    *(v50 + 16) = *(v0 + 480);
    *(v50 + 32) = v49;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v0 + 536) = v51;
    *v51 = v52;
    v51[1] = sub_231CE88E4;
    v53 = *(v0 + 480);
    OUTLINED_FUNCTION_122_0();

    return sub_231DDB61C();
  }

  else
  {
    v30 = *(v0 + 480);
    v7(*(v0 + 512), v6, *(v0 + 496));

    v31 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    v32 = OUTLINED_FUNCTION_91_0();
    v34 = *(v0 + 504);
    v33 = *(v0 + 512);
    v35 = *(v0 + 496);
    if (v32)
    {
      v64 = *(v0 + 512);
      v36 = *(v0 + 480);
      OUTLINED_FUNCTION_9_1();
      __src[0] = OUTLINED_FUNCTION_17_1();
      *v1 = 136446210;
      v37 = sub_231DDB1E8();
      OUTLINED_FUNCTION_174(v37, v38, v39, v40, v41, v42);
      OUTLINED_FUNCTION_87_0();
      *(v1 + 4) = v7;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();

      v48 = v64;
    }

    else
    {

      v48 = v33;
    }

    v26(v48, v35);
    *(v0 + 272) = xmmword_231E13680;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    sub_231CE25FC((v0 + 272), 1, 1, 0, 0x200u, v0 + 16);
    v55 = *(v0 + 40);
    v56 = *(v0 + 16);
    v57 = *(v0 + 520);
    v58 = *(v0 + 512);
    v59 = *(v0 + 464);
    memcpy(__src + 6, (v0 + 48), 0x60uLL);
    v60 = *(v0 + 24);
    *v59 = v56;
    *(v59 + 8) = v60;
    *(v59 + 24) = v55;
    memcpy((v59 + 26), __src, 0x66uLL);

    OUTLINED_FUNCTION_19();

    return v61();
  }
}

void sub_231CE88E4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 536);
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_31();

    MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_231CE89F4()
{
  v12 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  memcpy((v0 + 368), (v0 + 176), 0x60uLL);

  v6 = *(v0 + 520);
  v7 = *(v0 + 512);
  v8 = *(v0 + 464);
  memcpy(&__src[6], (v0 + 368), 0x60uLL);
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  memcpy((v8 + 26), __src, 0x66uLL);

  OUTLINED_FUNCTION_19();

  return v9();
}

uint64_t sub_231CE8AD4()
{
  OUTLINED_FUNCTION_18();
  v0[110] = v1;
  v0[109] = v2;
  v0[108] = v3;
  v0[107] = v4;
  v5 = sub_231E10E30();
  v0[111] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[112] = v6;
  v8 = *(v7 + 64);
  v0[113] = OUTLINED_FUNCTION_69();
  v0[114] = swift_task_alloc();
  v0[115] = swift_task_alloc();
  v0[116] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_231CE8BA8()
{
  sub_231CC8780();
  OUTLINED_FUNCTION_8_1();
  if (!v3)
  {
    v16 = v1[116];
    v17 = v1[112];
    v18 = v1[111];
    v19 = v1[108];
    sub_231DC4B64();
    v20 = OUTLINED_FUNCTION_73_0();
    v21(v20);

    v22 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    v23 = OUTLINED_FUNCTION_176();
    v24 = v1[112];
    v25 = v1[111];
    if (v23)
    {
      v42 = v1[116];
      v26 = v1[108];
      swift_slowAlloc();
      OUTLINED_FUNCTION_28();
      *v2 = 136446466;
      v27 = sub_231DDB1E8();
      OUTLINED_FUNCTION_175(v27, v28, v29, v30);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_67_1();
      _os_log_impl(v31, v32, v33, v34, v35, 0x12u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();

      (*(v24 + 8))(v42, v25);
    }

    else
    {

      v36 = OUTLINED_FUNCTION_126_0();
      v37(v36);
    }

    v1[75] = 0;
    v1[76] = 1;
    OUTLINED_FUNCTION_1_6(v1 + 77);
    OUTLINED_FUNCTION_101_0(v1 + 75, (v1 + 34));
    v38 = OUTLINED_FUNCTION_16_5();
    memcpy(v38, v1 + 34, 0x80uLL);

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();

    __asm { BRAA            X1, X16 }
  }

  v4 = v1[109];
  v5 = v1[108];
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_164();
  v1[117] = v6;
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_34_2();
  v41 = v8 + *v8;
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v1[118] = v11;
  *v11 = v12;
  v11[1] = sub_231CE8E54;
  v13 = v1[110];
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_35();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_231CE8E54()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v6 = *(v5 + 944);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 952) = v0;

  if (!v0)
  {
    v9 = *(v3 + 936);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CE8F58()
{
  v2 = *(v0 + 400);
  *(v0 + 1024) = v2;
  v3 = sub_231CC886C();
  if ((v3 & 0x100000000) != 0)
  {
    v7 = 0.478;
  }

  else
  {
    v4 = *(v0 + 920);
    v5 = *(v0 + 896);
    v6 = *(v0 + 888);
    v7 = *&v3;
    v8 = *(v0 + 864);
    sub_231DC4B64();
    v9 = OUTLINED_FUNCTION_32_2();
    v10(v9);

    v11 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    v12 = OUTLINED_FUNCTION_91_0();
    v13 = *(v0 + 920);
    v14 = *(v0 + 896);
    v15 = *(v0 + 888);
    if (v12)
    {
      v16 = *(v0 + 864);
      OUTLINED_FUNCTION_98_0();
      OUTLINED_FUNCTION_17_1();
      *v1 = 136446466;
      v17 = sub_231DDB1E8();
      OUTLINED_FUNCTION_175(v17, v18, v19, v20);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();
    }

    v26 = *(v14 + 8);
    v27 = OUTLINED_FUNCTION_33();
    v28(v27);
  }

  *(v0 + 1028) = v7;
  v29 = *(v0 + 912);
  v30 = *(v0 + 896);
  v31 = *(v0 + 888);
  v32 = *(v0 + 864);
  *(v0 + 960) = sub_231DC4B64();
  *(v0 + 968) = *(v30 + 16);
  *(v0 + 976) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33 = OUTLINED_FUNCTION_82();
  v34(v33);

  v35 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v36 = OUTLINED_FUNCTION_91_0();
  v37 = *(v0 + 912);
  v38 = *(v0 + 896);
  v39 = *(v0 + 888);
  if (v36)
  {
    v40 = *(v0 + 864);
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_17_1();
    *v1 = 136446722;
    v41 = sub_231DDB1E8();
    OUTLINED_FUNCTION_175(v41, v42, v43, v44);
    v45 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_20_4(v45, v46, v47, v48, v49, v50, v51, v52, v78, v79, v7 < v2);
    *(v1 + 20) = v2;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v53, v54, v55, v56, v57, 0x1Cu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v58 = *(v38 + 8);
  v59 = OUTLINED_FUNCTION_33();
  v58(v59);
  *(v0 + 984) = v58;
  *(v0 + 816) = &unk_2846F07A0;
  v60 = sub_231CC7270();
  v61 = OUTLINED_FUNCTION_167(v60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 792));
  if (v61)
  {
    v62 = *(v0 + 880);
    v63 = sub_231E10140();
    *(v0 + 992) = v64;
    if (v64)
    {
      v65 = v63;
      v66 = v64;
      v67 = [objc_opt_self() sentenceEmbeddingForLanguage_];
      *(v0 + 1000) = v67;
      if (v67)
      {
        v68 = v67;
        v69 = *(v0 + 880);
        v70 = *(v0 + 872);
        v71 = *(v0 + 864);
        v72 = swift_task_alloc();
        *(v0 + 1008) = v72;
        v72[2] = v0 + 1024;
        v72[3] = v70;
        v72[4] = v65;
        v72[5] = v66;
        v72[6] = v69;
        v72[7] = v68;
        v72[8] = v71;
        v73 = swift_task_alloc();
        *(v0 + 1016) = v73;
        *v73 = v0;
        v73[1] = sub_231CE9324;
        v74 = *(v0 + 864);
        OUTLINED_FUNCTION_28_1();

        return sub_231DDB61C();
      }
    }
  }

  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_22_3();
  v76 = OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_173(v76);

  OUTLINED_FUNCTION_14_0();

  return v77();
}

uint64_t sub_231CE9324()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *(v2 + 1016);
  *v4 = *v1;

  v6 = *(v2 + 1008);
  if (v0)
  {
  }

  else
  {
    v8 = *(v3 + 992);

    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_231CE9470()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 960);
  v4 = *(v0 + 1028);
  v5 = *(v0 + 904);
  v6 = *(v0 + 888);
  v7 = *(v0 + 864);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v8 = *(v0 + 1024);
  v9 = OUTLINED_FUNCTION_11_5();
  v2(v9);

  v10 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_105_0();
  v11 = OUTLINED_FUNCTION_91_0();
  v12 = *(v0 + 1000);
  v13 = *(v0 + 984);
  v14 = *(v0 + 904);
  v15 = *(v0 + 896);
  v16 = *(v0 + 888);
  if (v11)
  {
    v43 = *(v0 + 984);
    v17 = *(v0 + 864);
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_17_1();
    *v14 = 136446722;
    v18 = sub_231DDB1E8();
    OUTLINED_FUNCTION_174(v18, v19, v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_20_4(v24, v25, v26, v27, v28, v29, v30, v31, v41, v42, v4 < v8);
    *(v14 + 20) = v8;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v32, v33, v34, v35, v36, 0x1Cu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v43(v14, v16);
  }

  else
  {

    v37 = OUTLINED_FUNCTION_127_0();
    v13(v37);
  }

  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_22_3();
  v38 = OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_173(v38);

  OUTLINED_FUNCTION_14_0();

  return v39();
}

uint64_t sub_231CE9640()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 880);
  v5 = *(v0 + 864);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
  v6 = type metadata accessor for EntityKind();
  OUTLINED_FUNCTION_7_4(v6);
  v8 = *(v7 + 72);
  v9 = OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_89_0(v9, xmmword_231E138E0);
  v10 = sub_231E10340();
  OUTLINED_FUNCTION_6_0(v10);
  (*(v11 + 16))(v9 + v1, v4);
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_59_0();
  sub_231CEAA30(v12, v13, v9);
  swift_setDeallocating();
  sub_231CF0D6C();
  *(v0 + 504) = 0;
  *(v0 + 512) = 1;
  OUTLINED_FUNCTION_1_6((v0 + 520));
  OUTLINED_FUNCTION_128_0();
  v14 = OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_178(v14);

  OUTLINED_FUNCTION_14_0();

  return v15();
}

uint64_t sub_231CE97B8()
{
  OUTLINED_FUNCTION_18();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v0[9] = v5;
  v0[10] = v6;
  v0[8] = v7;
  v8 = sub_231E10400();
  v0[15] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[16] = v9;
  v11 = *(v10 + 64);
  v0[17] = OUTLINED_FUNCTION_55();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231CE9868()
{
  OUTLINED_FUNCTION_57_0();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[8];
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v6 = *v5;
  sub_231E102D0();
  v0[18] = v7;
  sub_231E100E0();
  sub_231E103E0();
  v0[19] = v8;
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_70();
  v11(v10);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_231CE9990;
  v13 = v0[13];
  v14 = v0[14];
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_81();

  return sub_231CE9B24();
}

uint64_t sub_231CE9990()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = v3[20];
  v5 = v3[19];
  v6 = v3[18];
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v9 + 168) = v10;

  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231CE9AAC()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 64);
  OUTLINED_FUNCTION_43_3();
  *v3 = v1;

  OUTLINED_FUNCTION_14_0();

  return v4();
}

uint64_t sub_231CE9B24()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 88) = v22;
  *(v1 + 96) = v0;
  *(v1 + 180) = v21;
  *(v1 + 72) = v2;
  *(v1 + 80) = v20;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 176) = v9;
  *(v1 + 16) = v10;
  v11 = sub_231E10E30();
  *(v1 + 104) = v11;
  OUTLINED_FUNCTION_6(v11);
  *(v1 + 112) = v12;
  v14 = *(v13 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_69();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231CE9C3C()
{
  v246 = v0;
  v1 = sub_231CC8C34();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v1;
  }

  v4 = COERCE_DOUBLE(sub_231CC8C64());
  if (v5)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v4;
  }

  v7 = sub_231CC8C94();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_231DBCD4C(v7);
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  if (!sub_231E11AA0())
  {
    goto LABEL_17;
  }

  v13 = *(v0 + 72);
  v14 = *(v0 + 80);
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = *(*(v0 + 96) + 136);
  v18 = sub_231D4B9C8();
  v242 = v3;
  v19 = *(v18 + 16);
  v20 = MEMORY[0x277D84F90];
  v243 = v18;
  v241 = v19;
  if (v19)
  {
    v245[0] = MEMORY[0x277D84F90];
    sub_231CF130C(0, v19, 0);
    v20 = v245[0];
    v21 = (v18 + 48);
    do
    {
      v22 = *(v21 - 2);
      v23 = *(v21 - 1);
      v24 = *v21;

      v25 = OUTLINED_FUNCTION_70();
      sub_231DBCE10(v25, v26, v27);
      v28 = nullsub_1(v24);
      v30 = v29;
      v31 = v28;

      v245[0] = v20;
      v33 = *(v20 + 2);
      v32 = *(v20 + 3);
      if (v33 >= v32 >> 1)
      {
        v35 = OUTLINED_FUNCTION_45_0(v32);
        sub_231CF130C(v35, v33 + 1, 1);
        v20 = v245[0];
      }

      v21 += 3;
      *(v20 + 2) = v33 + 1;
      v34 = &v20[16 * v33];
      *(v34 + 4) = v30;
      *(v34 + 5) = v31;
      --v19;
    }

    while (v19);
  }

  v245[0] = v20;

  sub_231CF12A0(v245);
  v46 = *(v0 + 168);
  v48 = *(v0 + 104);
  v47 = *(v0 + 112);
  v49 = *(v0 + 88);

  v50 = v245[0];

  v237 = sub_231DC4B64();
  v238 = *(v47 + 16);
  v238(v46);

  v51 = sub_231E10E10();
  v52 = sub_231E11AF0();

  v239 = v52;
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 168);
  v55 = *(v0 + 104);
  v56 = *(v0 + 112);
  if (v53)
  {
    v236 = *(v0 + 168);
    v57 = *(v0 + 88);
    v234 = *(v0 + 104);
    v58 = OUTLINED_FUNCTION_98_0();
    v49 = OUTLINED_FUNCTION_67();
    v245[0] = v49;
    *v58 = 136446466;
    v59 = sub_231DDB1E8();
    v67 = OUTLINED_FUNCTION_118_1(v59, v60, v61, v62, v63, v64, v65, v66, v234, v236, v237, v238);

    *(v58 + 4) = v67;
    *(v58 + 12) = 2050;
    v68 = *(v50 + 2);

    *(v58 + 14) = v68;

    _os_log_impl(&dword_231CAE000, v51, v239, "%{public}s Found %{public}ld samples in urgency feedback", v58, 0x16u);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_30();

    v69 = *(v56 + 8);
    v71 = v233;
    v70 = v235;
  }

  else
  {

    v69 = *(v56 + 8);
    v70 = v54;
    v71 = v55;
  }

  v240 = v69;
  *&result = COERCE_DOUBLE((v69)(v70, v71));
  v73 = *(v50 + 2);
  v74 = &dword_231E16000;
  if (!v73)
  {
    if (v242 <= 0 && (*(v0 + 180) & 1) == 0)
    {
      goto LABEL_44;
    }

    v98 = MEMORY[0x277D84F90];
LABEL_32:

    v99 = *(v98 + 2);
    if (v99)
    {
      v100 = 40;
      v101 = *(v98 + 2);
      v74 = &dword_231E16000;
      do
      {
        OUTLINED_FUNCTION_138_0(v100);
      }

      while (!v102);

      v103 = 0.0 / v99;
      if (v103 > 0.9 || v103 < 0.1)
      {
        v104 = *(v0 + 152);
        OUTLINED_FUNCTION_143_0();

        v105 = OUTLINED_FUNCTION_76_0();
        v106(v105);

        v107 = sub_231E10E10();
        sub_231E11AF0();
        OUTLINED_FUNCTION_116_0();
        v108 = OUTLINED_FUNCTION_91_0();
        v109 = *(v0 + 152);
        v110 = *(v0 + 104);
        v111 = *(v0 + 112);
        if (!v108)
        {
LABEL_40:

          v125 = v109;
LABEL_41:
          v240(v125, v110);
          goto LABEL_18;
        }

LABEL_39:
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_111_0();
        *v9 = 136446210;
        v112 = sub_231DDB1E8();
        OUTLINED_FUNCTION_118_1(v112, v113, v114, v115, v116, v117, v118, v119, v233, v235, v237, v238);
        OUTLINED_FUNCTION_87_0();
        *(v9 + 4) = v49;
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v120, v121, v122, v123, v124, 0xCu);
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_11();
        goto LABEL_40;
      }
    }

    else
    {

      v74 = &dword_231E16000;
    }

LABEL_69:
    if ((*(v0 + 180) & 1) != 0 || !*(v0 + 40) || (v150 = *(v0 + 64), v151 = *(v0 + 32), v152 = *(v0 + 40), (v153 = sub_231E11AA0()) == 0))
    {

LABEL_74:

LABEL_17:
      v36 = *(v0 + 176);
      goto LABEL_18;
    }

    v154 = v153;
    v155 = *(v0 + 24);
    v156 = *(v0 + 32);
    v157 = *(v0 + 16);
    sub_231D4CA04();
    if ((v159 & 1) != 0 || v158 <= 0.0 || v158 > 0.5)
    {

      goto LABEL_74;
    }

    v180 = MEMORY[0x277D84F90];
    v181 = v241;
    if (v241)
    {
      v245[0] = MEMORY[0x277D84F90];
      sub_231CF130C(0, v241, 0);
      v180 = v245[0];
      v49 = v243 + 48;
      do
      {
        v182 = v181;
        v183 = *(v49 - 16);
        v184 = *(v49 - 8);
        v185 = *v49;

        sub_231DBCE10(v154, v183, v9 & 1);
        v186 = nullsub_1(v185);
        v188 = v187;
        v189 = v186;

        v245[0] = v180;
        v191 = *(v180 + 2);
        v190 = *(v180 + 3);
        if (v191 >= v190 >> 1)
        {
          v193 = OUTLINED_FUNCTION_45_0(v190);
          sub_231CF130C(v193, v191 + 1, 1);
          v180 = v245[0];
        }

        v49 += 24;
        *(v180 + 2) = v191 + 1;
        v192 = &v180[16 * v191];
        *(v192 + 4) = v188;
        *(v192 + 5) = v189;
        v181 = v182 - 1;
      }

      while (v182 != 1);
      v74 = &dword_231E16000;
    }

    v245[0] = v180;

    sub_231CF12A0(v245);

    v194 = v245[0];
    v195 = *(v245[0] + 2);
    if (v195)
    {
      v196 = v245[0] + 40;
      v197 = MEMORY[0x277D84F90];
      v198 = *(v74 + 449);
      v9 = *(v245[0] + 2);
      do
      {
        v199 = *(v196 - 1);
        if (v199 < v198)
        {
          v200 = *v196;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v245[0] = v197;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_69_1();
            v197 = v245[0];
          }

          v49 = *(v197 + 2);
          v202 = *(v197 + 3);
          if (v49 >= v202 >> 1)
          {
            v204 = OUTLINED_FUNCTION_45_0(v202);
            sub_231CF130C(v204, v49 + 1, 1);
            v197 = v245[0];
          }

          *(v197 + 2) = v49 + 1;
          v203 = &v197[16 * v49];
          *(v203 + 4) = v199;
          *(v203 + 5) = v200;
        }

        v196 += 16;
        --v9;
      }

      while (v9);
    }

    else
    {
      v197 = MEMORY[0x277D84F90];
    }

    v205 = *(v197 + 2);
    if (v205)
    {

      v206 = 0.0;
      v207 = 40;
      do
      {
        v206 = v206 + *&v197[v207];
        v207 += 16;
        --v205;
      }

      while (v205);
      v208 = *(v197 + 2);

      v209 = v206 / v208;
      if (v209 <= 0.9 && v209 >= 0.1)
      {
        goto LABEL_17;
      }

      v210 = *(v0 + 136);
      v211 = OUTLINED_FUNCTION_132_0();
      v212(v211);

      v107 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_116_0();
      v213 = OUTLINED_FUNCTION_91_0();
      v109 = *(v0 + 136);
      v110 = *(v0 + 104);
      v214 = *(v0 + 112);
      if (!v213)
      {
        goto LABEL_40;
      }
    }

    else
    {

      if (v195)
      {
        v215 = v6 * 0.5;
        v216 = (v194 + 40);
        v217 = MEMORY[0x277D84F90];
        do
        {
          v218 = *(v216 - 1);
          if (v218 < v215)
          {
            v9 = *v216;
            v219 = swift_isUniquelyReferenced_nonNull_native();
            v245[0] = v217;
            if ((v219 & 1) == 0)
            {
              OUTLINED_FUNCTION_69_1();
              v217 = v245[0];
            }

            v221 = *(v217 + 2);
            v220 = *(v217 + 3);
            if (v221 >= v220 >> 1)
            {
              v223 = OUTLINED_FUNCTION_45_0(v220);
              sub_231CF130C(v223, v221 + 1, 1);
              v217 = v245[0];
            }

            *(v217 + 2) = v221 + 1;
            v222 = &v217[16 * v221];
            *(v222 + 4) = v218;
            *(v222 + 5) = v9;
          }

          v216 += 2;
          --v195;
        }

        while (v195);
      }

      else
      {
        v217 = MEMORY[0x277D84F90];
      }

      v224 = *(v217 + 2);
      if (!v224)
      {

        goto LABEL_17;
      }

      v225 = 40;
      v226 = *(v217 + 2);
      do
      {
        OUTLINED_FUNCTION_138_0(v225);
      }

      while (!v102);

      v227 = 0.0 / v224;
      if (v227 <= 0.9 && v227 >= 0.1)
      {
        goto LABEL_17;
      }

      v228 = *(v0 + 128);
      v229 = OUTLINED_FUNCTION_132_0();
      v230(v229);

      v107 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_116_0();
      v231 = OUTLINED_FUNCTION_91_0();
      v109 = *(v0 + 128);
      v110 = *(v0 + 104);
      v232 = *(v0 + 112);
      if (!v231)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_39;
  }

  if (*(v50 + 4) < 0.01)
  {
    v75 = *(v50 + 5);
    v76 = *(v0 + 160);
    OUTLINED_FUNCTION_143_0();

    v77 = OUTLINED_FUNCTION_76_0();
    v78(v77);

    v79 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    v80 = OUTLINED_FUNCTION_91_0();
    v81 = *(v0 + 160);
    v82 = *(v0 + 104);
    v83 = *(v0 + 112);
    if (v80)
    {
      OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_111_0();
      *v75 = 136446210;
      v84 = sub_231DDB1E8();
      OUTLINED_FUNCTION_118_1(v84, v85, v86, v87, v88, v89, v90, v91, v233, v235, v237, v238);
      OUTLINED_FUNCTION_87_0();
      *(v75 + 4) = v49;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_30();
    }

    v97 = OUTLINED_FUNCTION_9_4();
    (v240)(v97);
LABEL_18:
    v38 = *(v0 + 160);
    v37 = *(v0 + 168);
    v40 = *(v0 + 144);
    v39 = *(v0 + 152);
    v42 = *(v0 + 128);
    v41 = *(v0 + 136);
    v43 = *(v0 + 120);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_179();

    __asm { BRAA            X1, X16 }
  }

  if (v73 < v242 || *(v0 + 180))
  {
    v143 = (v50 + 40);
    v98 = MEMORY[0x277D84F90];
    do
    {
      v144 = *(v143 - 1);
      if (v144 < v6 * 0.5)
      {
        v49 = *v143;
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v245[0] = v98;
        if ((v145 & 1) == 0)
        {
          OUTLINED_FUNCTION_69_1();
          v98 = v245[0];
        }

        v147 = *(v98 + 2);
        v146 = *(v98 + 3);
        if (v147 >= v146 >> 1)
        {
          v149 = OUTLINED_FUNCTION_45_0(v146);
          sub_231CF130C(v149, v147 + 1, 1);
          v98 = v245[0];
        }

        *(v98 + 2) = v147 + 1;
        v148 = &v98[16 * v147];
        *(v148 + 4) = v144;
        *(v148 + 5) = v49;
      }

      v143 += 2;
      --v73;
    }

    while (v73);
    goto LABEL_32;
  }

LABEL_44:
  if (v242 < 0)
  {
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v126 = sub_231CF0BB8(0, v242, v50);
  v128 = v127;
  v130 = v129;
  v132 = v131;

  *&result = COERCE_DOUBLE(sub_231CF0C24(v126, v128, v130, v132));
  if ((v133 & 1) != 0 || (v6 >= 0.0 ? (v134 = v6 <= *&result) : (v134 = 0), v134))
  {
LABEL_57:
    swift_unknownObjectRelease();
    goto LABEL_69;
  }

  v135 = v132 >> 1;
  v136 = 0.0;
  v137 = (v132 >> 1) - v130;
  if (v132 >> 1 == v130)
  {
LABEL_54:
    v140 = __OFSUB__(v135, v130);
    v141 = v135 - v130;
    if (!v140)
    {
      v142 = v136 / v141;
      if (v142 > 0.9 || v142 < 0.1)
      {
        v160 = *(v0 + 144);
        OUTLINED_FUNCTION_143_0();

        v161 = OUTLINED_FUNCTION_76_0();
        v162(v161);

        v163 = sub_231E10E10();
        sub_231E11AF0();
        OUTLINED_FUNCTION_116_0();
        v164 = OUTLINED_FUNCTION_91_0();
        v165 = *(v0 + 144);
        v110 = *(v0 + 104);
        v166 = *(v0 + 112);
        if (v164)
        {
          v244 = *(v0 + 144);
          OUTLINED_FUNCTION_84_0();
          OUTLINED_FUNCTION_17_1();
          OUTLINED_FUNCTION_111_0();
          *v9 = 136446210;
          v167 = sub_231DDB1E8();
          OUTLINED_FUNCTION_118_1(v167, v168, v169, v170, v171, v172, v173, v174, v233, v235, v237, v238);
          OUTLINED_FUNCTION_87_0();
          *(v9 + 4) = v49;
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v175, v176, v177, v178, v179, 0xCu);
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_11();

          swift_unknownObjectRelease();
          v125 = v244;
        }

        else
        {
          swift_unknownObjectRelease();

          v125 = v165;
        }

        goto LABEL_41;
      }

      goto LABEL_57;
    }

    goto LABEL_127;
  }

  if ((v132 >> 1) > v130)
  {
    v138 = (v128 + 16 * v130 + 8);
    do
    {
      v139 = *v138;
      v138 += 2;
      v136 = v136 + v139;
      --v137;
    }

    while (v137);
    goto LABEL_54;
  }

LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_231CEAA30(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EntityKind();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_231E10E30();
  v15 = OUTLINED_FUNCTION_24(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_231DC4B64();
  (*(v17 + 16))(v21, v22, v14);

  v23 = a1;

  v24 = sub_231E10E10();
  v25 = sub_231E11AD0();

  if (os_log_type_enabled(v24, v25))
  {
    v56 = v9;
    v59 = v25;
    v61 = v24;
    v62 = v21;
    v26 = OUTLINED_FUNCTION_67();
    v27 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v64 = v58;
    *v26 = 136446722;
    v28 = sub_231DDB1E8();
    v30 = sub_231CB5000(v28, v29, &v64);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2112;
    v31 = a1;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v32;
    v57 = v27;
    *v27 = v32;
    v60 = v26;
    *(v26 + 22) = 2080;
    v33 = *(a3 + 16);
    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v52 = v17;
      v53 = v14;
      v54 = a1;
      v55 = a2;
      v63 = MEMORY[0x277D84F90];
      sub_231CC686C(0, v33, 0);
      v34 = v63;
      v35 = a3 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v36 = *(v56 + 72);
      do
      {
        sub_231CD3AE0(v35, v13);
        sub_231DBD6D4();
        v38 = v37;
        v40 = v39;
        sub_231CF1D74(v13);
        v63 = v34;
        v42 = *(v34 + 16);
        v41 = *(v34 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_231CC686C((v41 > 1), v42 + 1, 1);
          v34 = v63;
        }

        *(v34 + 16) = v42 + 1;
        v43 = v34 + 16 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        v35 += v36;
        --v33;
      }

      while (v33);
      a1 = v54;
      v17 = v52;
      v14 = v53;
    }

    MEMORY[0x23837CD80](v34, MEMORY[0x277D837D0]);

    v44 = OUTLINED_FUNCTION_59_0();
    v47 = sub_231CB5000(v44, v45, v46);

    v48 = v60;
    *(v60 + 24) = v47;
    v49 = v61;
    _os_log_impl(&dword_231CAE000, v61, v59, "%{public}s Urgency determination failed with error: %@; for: %s", v48, 0x20u);
    sub_231CE1118(v57, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v17 + 8))(v62, v14);
  }

  else
  {

    (*(v17 + 8))(v21, v14);
  }

  return sub_231DDB4B4(a1);
}

uint64_t sub_231CEAE1C()
{
  OUTLINED_FUNCTION_18();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v5 = sub_231E10A30();
  v1[27] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[28] = v6;
  v1[29] = *(v7 + 64);
  v1[30] = OUTLINED_FUNCTION_55();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690) - 8) + 64);
  v1[31] = OUTLINED_FUNCTION_55();
  v9 = sub_231E10E30();
  v1[32] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[33] = v10;
  v12 = *(v11 + 64);
  v1[34] = OUTLINED_FUNCTION_55();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13, v14, v15);
}