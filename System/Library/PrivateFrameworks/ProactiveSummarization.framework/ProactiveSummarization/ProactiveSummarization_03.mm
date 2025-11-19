uint64_t sub_231CEAF48()
{
  OUTLINED_FUNCTION_57_0();
  v47 = v0;
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[25];
  sub_231DC4B64();
  v7 = OUTLINED_FUNCTION_32_2();
  v8(v7);

  v9 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v10 = OUTLINED_FUNCTION_91_0();
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[32];
  if (v10)
  {
    v14 = v0[25];
    OUTLINED_FUNCTION_9_1();
    v46 = OUTLINED_FUNCTION_17_1();
    *v1 = 136446210;
    v15 = sub_231DDB1E8();
    sub_231CB5000(v15, v16, &v46);
    OUTLINED_FUNCTION_87_0();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v22 = *(v12 + 8);
  v23 = OUTLINED_FUNCTION_33();
  v24(v23);
  v0[21] = &unk_2846F07A0;
  v0[22] = sub_231CC7270();
  *(v0 + 144) = 7;
  v25 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  if (v25)
  {
    v26 = v0[24];
    sub_231E108E0();
    OUTLINED_FUNCTION_8_1();
    if (v28 || (v27 & 1) == 0)
    {
      v29 = v0[30];
      v30 = v0[31];
      v32 = v0[28];
      v31 = v0[29];
      v34 = v0[26];
      v33 = v0[27];
      v35 = v0[24];
      v36 = sub_231E119F0();
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v36);
      (*(v32 + 16))(v29, v35, v33);
      v37 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = 0;
      (*(v32 + 32))(v38 + v37, v29, v33);
      *(v38 + ((v31 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;

      sub_231CEB77C(0, 0, v30, &unk_231E16EA8, v38);
    }
  }

  v39 = v0[26];
  v40 = v0[24];
  v41 = swift_task_alloc();
  v0[35] = v41;
  *(v41 + 16) = v39;
  *(v41 + 24) = v40;
  v42 = swift_task_alloc();
  v0[36] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F0, &qword_231E16E88);
  *v42 = v0;
  v42[1] = sub_231CEB21C;
  v43 = v0[25];
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

void sub_231CEB21C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 280);

    OUTLINED_FUNCTION_31();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_231CEB340()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[13].i64[0];
  v2 = v0[19].i8[8];
  v3 = swift_task_alloc();
  v0[18].i64[1] = v3;
  v3[1] = vextq_s8(v0[12], v0[12], 8uLL);
  v3[2].i64[0] = v1;
  v3[2].i8[8] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[19].i64[0] = v4;
  *v4 = v5;
  v4[1] = sub_231CEB424;
  v6 = v0[12].i64[1];
  OUTLINED_FUNCTION_122_0();

  return sub_231DDB61C();
}

void sub_231CEB424()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 304);
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

uint64_t sub_231CEB534()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  OUTLINED_FUNCTION_178(*(v0 + 184));

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231CEB5C0()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_231E0F950();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CEB664()
{
  OUTLINED_FUNCTION_57_0();
  v1 = v0[2];
  v2 = sub_231E109C0();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v0[2];
    v7 = sub_231E10910();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[4];
      v14 = *(v0[3] + 136);
      sub_231E0F920();
      sub_231D4C3A0(v9, v10, v4, v5, v11);
      (*(v12 + 8))(v11, v13);
    }
  }

  v15 = v0[6];

  OUTLINED_FUNCTION_14_0();

  return v16();
}

uint64_t sub_231CEB77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_231CE6758(a3, v23 - v10);
  v12 = sub_231E119F0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_231CE1118(v11, &qword_27DD75180, &qword_231E13690);
  }

  else
  {
    sub_231E119E0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_231E11920();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_231E116A0() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_231CE1118(a3, &qword_27DD75180, &qword_231E13690);

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

  sub_231CE1118(a3, &qword_27DD75180, &qword_231E13690);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_231CEB9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231CEBA28()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[3];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v2);
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_34_2();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_231CEBB50;
  v9 = v0[4];

  return v11(v9, v2, v3);
}

uint64_t sub_231CEBB50()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CEBC3C()
{
  **(v0 + 16) = *(v0 + 48);
  OUTLINED_FUNCTION_14_0();
  return v1();
}

uint64_t sub_231CEBC68()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 2520) = v1;
  *(v0 + 2152) = v2;
  *(v0 + 2144) = v3;
  *(v0 + 2136) = v4;
  *(v0 + 2128) = v5;
  v6 = sub_231E0F950();
  *(v0 + 2160) = v6;
  OUTLINED_FUNCTION_6(v6);
  *(v0 + 2168) = v7;
  v9 = *(v8 + 64);
  *(v0 + 2176) = OUTLINED_FUNCTION_69();
  *(v0 + 2184) = swift_task_alloc();
  *(v0 + 2192) = swift_task_alloc();
  *(v0 + 2200) = swift_task_alloc();
  *(v0 + 2208) = swift_task_alloc();
  v10 = sub_231E0F4A0();
  *(v0 + 2216) = v10;
  OUTLINED_FUNCTION_6(v10);
  *(v0 + 2224) = v11;
  v13 = *(v12 + 64);
  *(v0 + 2232) = OUTLINED_FUNCTION_55();
  v14 = sub_231E10E30();
  *(v0 + 2240) = v14;
  OUTLINED_FUNCTION_6(v14);
  *(v0 + 2248) = v15;
  v17 = *(v16 + 64);
  *(v0 + 2256) = OUTLINED_FUNCTION_69();
  *(v0 + 2264) = swift_task_alloc();
  *(v0 + 2272) = swift_task_alloc();
  *(v0 + 2280) = swift_task_alloc();
  *(v0 + 2288) = swift_task_alloc();
  *(v0 + 2296) = swift_task_alloc();
  *(v0 + 2304) = swift_task_alloc();
  *(v0 + 2312) = swift_task_alloc();
  *(v0 + 2320) = swift_task_alloc();
  *(v0 + 2328) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0) - 8) + 64);
  *(v0 + 2336) = OUTLINED_FUNCTION_55();
  v19 = sub_231E106A0();
  *(v0 + 2344) = v19;
  OUTLINED_FUNCTION_6(v19);
  *(v0 + 2352) = v20;
  v22 = *(v21 + 64);
  *(v0 + 2360) = OUTLINED_FUNCTION_55();
  v23 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_231CEBECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v30;
  a28 = v31;
  a26 = v28;
  sub_231CC8780();
  OUTLINED_FUNCTION_8_1();
  if (v32)
  {
    v33 = v28[293];
    v34 = v28[292];
    v35 = v28[268];
    sub_231E108F0();
    if (__swift_getEnumTagSinglePayload(v34, 1, v33) == 1)
    {
      v36 = v28[269];
      v37 = v28[267];
      sub_231CE1118(v28[292], &qword_27DD74510, &qword_231E1E2D0);
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_164();
      v28[296] = v38;
      v39 = *(v34 + 24);
      v107 = v34 + 24;
      OUTLINED_FUNCTION_34_2();
      v109 = v40 + *v40;
      v42 = *(v41 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      v28[297] = v43;
      *v43 = v44;
      v43[1] = sub_231CEC370;
      v45 = v28[268];
      v46 = *(v28 + 2520);
      OUTLINED_FUNCTION_31_3();
      OUTLINED_FUNCTION_72_0();
      OUTLINED_FUNCTION_95_1();
    }

    else
    {
      v76 = v28[269];
      v77 = v28[267];
      (*(v28[294] + 32))(v28[295], v28[292], v28[293]);
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_164();
      v28[299] = v78;
      v79 = *(v34 + 32);
      v107 = v34 + 32;
      OUTLINED_FUNCTION_34_2();
      v109 = v80 + *v80;
      v82 = *(v81 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      v28[300] = v83;
      *v83 = v84;
      v83[1] = sub_231CEC488;
      v85 = v28[295];
      v86 = *(v28 + 2520);
      OUTLINED_FUNCTION_31_3();
      OUTLINED_FUNCTION_72_0();
      OUTLINED_FUNCTION_95_1();
    }

    return v55(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, v107, v109, a17, a18, a19, a20);
  }

  else
  {
    v58 = v28[291];
    v59 = v28[281];
    v60 = v28[280];
    v61 = v28[267];
    sub_231DC4B64();
    v62 = OUTLINED_FUNCTION_73_0();
    v63(v62);

    v64 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    v65 = OUTLINED_FUNCTION_176();
    v66 = v28[281];
    v67 = v28[280];
    if (v65)
    {
      v110 = v28[291];
      v68 = v28[267];
      swift_slowAlloc();
      a17 = OUTLINED_FUNCTION_28();
      *v29 = 136446466;
      v69 = sub_231DDB1E8();
      sub_231CB5000(v69, v70, &a17);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_67_1();
      _os_log_impl(v71, v72, v73, v74, v75, 0x12u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();

      (*(v66 + 8))(v110, v67);
    }

    else
    {

      v88 = OUTLINED_FUNCTION_126_0();
      v89(v88);
    }

    v90 = v28[266];
    v28[163] = 0;
    v28[164] = 1;
    OUTLINED_FUNCTION_1_6(v28 + 165);
    OUTLINED_FUNCTION_101_0(v28 + 163, (v28 + 18));
    memcpy(v90, v28 + 18, 0x80uLL);
    OUTLINED_FUNCTION_0_10();
    v101 = v92;
    v102 = v91;
    v103 = v28[279];
    v104 = v28[276];
    v105 = v28[275];
    v106 = v28[274];
    v108 = v28[273];
    v111 = v28[272];

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_95_1();

    return v94(v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v108, v111, a17, a18, a19, a20);
  }
}

uint64_t sub_231CEC370()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v6 = *(v5 + 2376);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v3[298] = v0;

  if (!v0)
  {
    v9 = v3[296];
    memcpy(v3 + 150, v3 + 124, 0x68uLL);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CEC488()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v6 = *(v5 + 2400);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v3[301] = v0;

  if (v0)
  {
    v9 = v3[299];
  }

  else
  {
    v10 = v3[299];
    memcpy(v3 + 98, v3 + 111, 0x68uLL);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231CEC5A8()
{
  v6 = OUTLINED_FUNCTION_156_1();
  v7(v6);
  v8 = *(v1 + 888);
  *(v1 + 2512) = v8;
  memcpy((v1 + 1096), (v1 + 784), 0x68uLL);
  v323 = *(v1 + 2408);
  if ((sub_231CC886C() & 0x100000000) != 0)
  {
    v5 = 0.478;
  }

  else
  {
    OUTLINED_FUNCTION_154_0();
    v9 = *(v0 + 16);
    v10 = OUTLINED_FUNCTION_82();
    v11(v10);

    v12 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    v13 = OUTLINED_FUNCTION_177();
    v14 = *(v1 + 2320);
    v15 = *(v1 + 2248);
    v16 = *(v1 + 2240);
    if (v13)
    {
      OUTLINED_FUNCTION_38_1();
      v3 = OUTLINED_FUNCTION_28();
      *v2 = 136446466;
      v17 = sub_231DDB1E8();
      OUTLINED_FUNCTION_93_0(v17, v18, v19, v20, v21, v22, v23, v24, v278, v283, v288, v293, v298, v303);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_66_1();
      _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v30 = *(v15 + 8);
    v31 = OUTLINED_FUNCTION_70();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_153_0();
  v34 = OUTLINED_FUNCTION_60_1(v33);
  v35(v34);

  v36 = sub_231E10E10();
  v37 = sub_231E11AF0();

  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v1 + 2312);
  v40 = *(v1 + 2248);
  v41 = *(v1 + 2240);
  if (v38)
  {
    v3 = OUTLINED_FUNCTION_106_0();
    v4 = OUTLINED_FUNCTION_67();
    *v3 = 136446722;
    v42 = sub_231DDB1E8();
    OUTLINED_FUNCTION_93_0(v42, v43, v44, v45, v46, v47, v48, v49, v278, v283, v288, v293, v298, v303);

    OUTLINED_FUNCTION_71_1(v50, v51, v52, v53, v54, v55, v56, v57, v279, v284, v289, v294, v299, v304, v308, v311);
    OUTLINED_FUNCTION_169(&dword_231CAE000, v58, v59, "%{public}s Notification urgency: %{BOOL}d; with score: %f");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v60 = *(v40 + 8);
    (v60)(v313, v41);
  }

  else
  {

    v60 = *(v40 + 8);
    (v60)(v39, v41);
  }

  *(v1 + 2440) = v60;
  v61 = &unk_2846F07A0;
  *(v1 + 1904) = &unk_2846F07A0;
  v62 = sub_231CC7270();
  v63 = OUTLINED_FUNCTION_150_0(v62);
  __swift_destroy_boxed_opaque_existential_0((v1 + 1880));
  if ((v63 & 1) == 0 || (v64 = *(v1 + 2144), sub_231E10910(), (*(v1 + 2456) = v65) == 0))
  {
LABEL_19:
    if (v5 >= v8)
    {
      goto LABEL_34;
    }

    v98 = *(v1 + 2144);
    sub_231E108E0();
    OUTLINED_FUNCTION_8_1();
    if (!v100 && (v99 & 1) != 0)
    {
      goto LABEL_34;
    }

    v101 = *(v1 + 2448);
    *(v1 + 1944) = &unk_2846F07A0;
    v102 = OUTLINED_FUNCTION_100_0(v101);
    __swift_destroy_boxed_opaque_existential_0((v1 + 1920));
    if ((v102 & 1) == 0)
    {
      goto LABEL_34;
    }

    v103 = *(v1 + 2144);
    v104 = sub_231E10910();
    if (!v105)
    {
      goto LABEL_34;
    }

    v106 = v104;
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_168();
    sub_231D12834();
    OUTLINED_FUNCTION_144_0();
    v109 = *(v3 + 8);
    v108 = v3 + 8;
    v107 = v109;
    v110 = OUTLINED_FUNCTION_140_0();
    (v109)(v110);
    OUTLINED_FUNCTION_33_3();
    v111 = v323;
    sub_231D4E36C();
    v318 = v106;
    v321 = v109;
    v314 = v60;
    if (v323)
    {
      v324 = v108;
      v309 = 0;
      OUTLINED_FUNCTION_124_0();
      v116 = *v114;
      v117 = *(v1 + 2432);
      v118 = *(v1 + 2424);
      OUTLINED_FUNCTION_40_2();
      v321();
      v119 = OUTLINED_FUNCTION_59_0();
      v118(v119);

      v120 = v111;
      v121 = sub_231E10E10();
      v122 = sub_231E11AD0();

      os_log_type_enabled(v121, v122);
      OUTLINED_FUNCTION_158();
      if (v123)
      {
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_115_0();
        *v117 = 136446466;
        v124 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v124, v125, v126, v127, v128, v129, v130, v131, v278, v121, v288, v106, v298, v117);
        v288 = v60;
        OUTLINED_FUNCTION_117_0();
        OUTLINED_FUNCTION_68_2();
        v132 = _swift_stdlib_bridgeErrorToNSError();
        *(v117 + 14) = v132;
        *v36 = v132;
        OUTLINED_FUNCTION_142_0(&dword_231CAE000, v283, v122, "%{public}s Error accessing urgent notification database: %@");
        sub_231CE1118(v36, &qword_27DD74D30, &unk_231E13480);
        OUTLINED_FUNCTION_49_2();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_14();

        v298(v293, v60);
      }

      else
      {

        (v36)(v106, v60);
      }

      v107 = v321;
      v108 = v324;
    }

    else
    {
      LODWORD(v311) = v113;
      v309 = v112;
      v115 = OUTLINED_FUNCTION_123_0();
      (v107)(v115);
      sub_231E0F920();
      OUTLINED_FUNCTION_171();
      (v107)(*(v1 + 2192), *(v1 + 2160));
    }

    v133 = *(v1 + 2448);
    *(v1 + 1984) = &unk_2846F07A0;
    v134 = OUTLINED_FUNCTION_96_0(v133);
    __swift_destroy_boxed_opaque_existential_0((v1 + 1960));
    if (v134)
    {

LABEL_34:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_24_1((v1 + 1400), v1 + 656);
      v135 = (v1 + 656);
LABEL_35:
      v136 = v36;
      goto LABEL_36;
    }

    if (sub_231CC86C4())
    {
      v139 = OUTLINED_FUNCTION_19_2();
      v140(v139);

      v141 = sub_231E10E10();
      v142 = sub_231E11AF0();

      os_log_type_enabled(v141, v142);
      OUTLINED_FUNCTION_120();
      v143 = *(v1 + 2240);
      if (v144)
      {
        OUTLINED_FUNCTION_47_1();
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_110_0();
        *v36 = 136446210;
        v145 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v145, v146, v147, v148, v149, v150, v151, v152, v278, v283, v288, v293, v298, v134);
        LOBYTE(v61) = v108;
        OUTLINED_FUNCTION_87_0();
        *(v36 + 4) = v108;
        OUTLINED_FUNCTION_94_0(&dword_231CAE000, v153, v154, "%{public}s Bypassing the observation period for urgent notifications");
        __swift_destroy_boxed_opaque_existential_0(v107);
        v107 = v321;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_49_2();

        v303(v298, v143);
      }

      else
      {

        (v134)(v36, v143);
      }

      v60 = v314;
      if (v311)
      {
        goto LABEL_67;
      }
    }

    else if (v311)
    {
      OUTLINED_FUNCTION_12_4();
      v190 = *(v1 + 2288);
      OUTLINED_FUNCTION_46_1();

      v191 = OUTLINED_FUNCTION_11_5();
      (v60)(v191);

      v192 = v190;
      v193 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_105_0();
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_62();
      if (v194)
      {
        OUTLINED_FUNCTION_47_1();
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_110_0();
        *v60 = 136446210;
        v195 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v195, v196, v197, v198, v199, v200, v201, v202, v278, v283, v288, v293, v298, v303);
        OUTLINED_FUNCTION_87_0();
        *(v60 + 4) = v108;
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v203, v204, v205, v206, v207, 0xCu);
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_11();
      }

      v208 = OUTLINED_FUNCTION_9_4();
      v192(v208);
      OUTLINED_FUNCTION_113_1();
      OUTLINED_FUNCTION_112_0();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_18_4(*v193, v193[1], xmmword_231E16E10);
      *(v1 + 1784) = 0;
      *(v1 + 1792) = v111;
      OUTLINED_FUNCTION_1_6((v1 + 1800));
      OUTLINED_FUNCTION_54_2();
      v135 = (v1 + 272);
      goto LABEL_79;
    }

    if (v309 >= sub_231D128E4())
    {
      OUTLINED_FUNCTION_12_4();
      v36 = *(v1 + 2272);
      OUTLINED_FUNCTION_46_1();
      v211 = OUTLINED_FUNCTION_11_5();
      (v60)(v211);

      v212 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_105_0();
      os_log_type_enabled(v212, v61);
      OUTLINED_FUNCTION_64_0();
      if (v213)
      {
        v311 = v36;
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_115_0();
        *v36 = 136446466;
        v214 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v214, v215, v216, v217, v218, v219, v220, v221, v278, v283, v288, v293, v298, v36);
        OUTLINED_FUNCTION_87_0();
        OUTLINED_FUNCTION_61_1();
        *(v36 + 14) = v309;
        OUTLINED_FUNCTION_97_0(&dword_231CAE000, v222, v223, "%{public}s Urgent notification count %ld exceeds frequency threshold allowed");
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_49_2();

        v232 = OUTLINED_FUNCTION_163(v224, v225, v226, v227, v228, v229, v230, v231, v282, v287, v292, v297, v302, v307);
        v233(v232);
      }

      else
      {

        v255 = OUTLINED_FUNCTION_75_0();
        (v36)(v255);
      }

      v256 = *(v1 + 2184);
      v257 = sub_231E0F920();
      OUTLINED_FUNCTION_151_0(v257, v258, v259, v260, v261, v262, v263, v264, v278, v283, v288, v293, v298, v303, v309, v311, v314, v318, v321, v4);
      v265 = OUTLINED_FUNCTION_125_0();
      if (v212)
      {
        v266(v265);

        OUTLINED_FUNCTION_42_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
        v267 = OUTLINED_FUNCTION_155_1();
        OUTLINED_FUNCTION_7_4(v267);
        v269 = *(v268 + 72);
        v270 = OUTLINED_FUNCTION_14_1();
        OUTLINED_FUNCTION_89_0(v270, xmmword_231E138E0);
        v271 = sub_231E10A30();
        OUTLINED_FUNCTION_6_0(v271);
        v273 = *(v272 + 16);
        v274 = OUTLINED_FUNCTION_136_0();
        v275(v274);
        OUTLINED_FUNCTION_85_0();
        OUTLINED_FUNCTION_86_0();
        swift_setDeallocating();
        sub_231CF0D6C();
        *(v1 + 1592) = 0;
        *(v1 + 1600) = 1;
        OUTLINED_FUNCTION_1_6((v1 + 1608));
        OUTLINED_FUNCTION_13_4();
        v135 = (v1 + 16);
        goto LABEL_35;
      }

      v276 = *(v1 + 2136);
      v192 = *(v1 + 2128);
      v266(v265);

      v277 = (v276 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason);
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_18_4(*v277, v277[1], xmmword_231E16E20);
      *(v1 + 1688) = 0;
      *(v1 + 1696) = 1;
      OUTLINED_FUNCTION_1_6((v1 + 1704));
      OUTLINED_FUNCTION_53_2();
      v135 = (v1 + 400);
      goto LABEL_79;
    }

LABEL_67:
    OUTLINED_FUNCTION_99_0();
    sub_231D12978();
    OUTLINED_FUNCTION_144_0();
    v209 = OUTLINED_FUNCTION_140_0();
    (v107)(v209);
    OUTLINED_FUNCTION_33_3();
    sub_231D4F2E8();
    v36 = *(v1 + 2176);
    v210 = *(v1 + 2160);
    v235 = v234;
    v236 = OUTLINED_FUNCTION_90_0();
    (v107)(v236);

    if ((v235 & 1) == 0)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_12_4();
    v237 = *(v1 + 2264);
    OUTLINED_FUNCTION_46_1();
    v238 = OUTLINED_FUNCTION_11_5();
    (v60)(v238);

    v192 = v237;
    v239 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_63_0();
    if (v240)
    {
      OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_110_0();
      *v60 = 136446210;
      v241 = sub_231DDB1E8();
      OUTLINED_FUNCTION_93_0(v241, v242, v243, v244, v245, v246, v247, v248, v278, v283, v288, v293, v298, v303);
      OUTLINED_FUNCTION_87_0();
      *(v60 + 4) = v108;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v249, v250, v251, v252, v253, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();
    }

    v254 = OUTLINED_FUNCTION_9_4();
    v192(v254);
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_18_4(*v239, v239[1], xmmword_231E16E30);
    *(v1 + 1496) = 0;
    *(v1 + 1504) = 0;
    OUTLINED_FUNCTION_1_6((v1 + 1512));
    OUTLINED_FUNCTION_52_2();
    v135 = (v1 + 528);
LABEL_79:
    v136 = v192;
LABEL_36:
    memcpy(v136, v135, 0x80uLL);
    OUTLINED_FUNCTION_0_10();
    OUTLINED_FUNCTION_79_0();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_88_0();

    __asm { BRAA            X1, X16 }
  }

  v36 = v65;
  v66 = *(v1 + 2144);
  v67 = sub_231E109B0();
  if (!v68)
  {
LABEL_18:

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_159(v67, v68);
  v69 = [objc_opt_self() sentenceEmbeddingForLanguage_];
  *(v1 + 2464) = v69;
  if (!v69)
  {

    goto LABEL_18;
  }

  v70 = OUTLINED_FUNCTION_108_0();
  if (sub_231D12FF8() < v70)
  {
    v71 = OUTLINED_FUNCTION_134_0();
    v72(v71);

    v73 = sub_231E10E10();
    v74 = sub_231E11AF0();

    LODWORD(v320) = v74;
    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v1 + 2304);
    v77 = *(v1 + 2248);
    v78 = *(v1 + 2240);
    if (v75)
    {
      v317 = *(v1 + 2304);
      v79 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_115_0();
      *v79 = 136446466;
      v80 = sub_231DDB1E8();
      v88 = OUTLINED_FUNCTION_93_0(v80, v81, v82, v83, v84, v85, v86, v87, v278, v283, v288, v293, v298, v78);
      v300 = v77;
      v89 = v88;

      *(v79 + 4) = v89;
      *(v79 + 12) = 2048;
      *(v79 + 14) = sub_231D12FF8();
      OUTLINED_FUNCTION_147_0(&dword_231CAE000, v90, v91, "%{public}s Truncating notification body content to %ld characters", v92, v93, v94, v95, v280, v285, v290, v295, v300, v305, v308, v311, v313, v317, v320);
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_30();

      v96 = v303;
      v97 = v316;
    }

    else
    {

      v97 = OUTLINED_FUNCTION_18_0();
    }

    (v60)(v97, v96);

    v155 = sub_231D12FF8();
    v156 = sub_231CEF250(v155);
    MEMORY[0x23837CBB0](v156);
    OUTLINED_FUNCTION_149_0();

    *(v1 + 2096) = v73;
    *(v1 + 2104) = v78;
  }

  v157 = OUTLINED_FUNCTION_130_0();
  if (v158)
  {
    v159 = v157;
  }

  else
  {
    v159 = 0;
  }

  v160 = 0xE000000000000000;
  if (v158)
  {
    v161 = v158;
  }

  else
  {
    v161 = 0xE000000000000000;
  }

  v326 = v159;

  MEMORY[0x23837CC20](32, 0xE100000000000000);

  v162 = sub_231E109F0();
  if (v163)
  {
    v164 = v162;
  }

  else
  {
    v164 = 0;
  }

  if (v163)
  {
    v160 = v163;
  }

  MEMORY[0x23837CC20](v164, v160);

  OUTLINED_FUNCTION_172(v165, v166, v167, v168, v169, v170, v171, v172, v278, v283, v288, v293, v298, v303, v308, v311, v313, v316, v320, v323, v326, v161);
  sub_231CE11D8();
  v173 = sub_231E11C30();
  v175 = OUTLINED_FUNCTION_107_0(v173, v174);
  v176(v175);

  sub_231E108E0();
  OUTLINED_FUNCTION_8_1();
  if (!v100 && (v177 & 1) != 0)
  {
    v178 = *(v1 + 2144);
    sub_231E109C0();
  }

  v179 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_56_2(v179, v180, v181, v182, v183, v184, v185, v186, v281, v286, v291, v296, v301, v306, v310, v312, v315, v319, v322, v325);
  v187 = swift_task_alloc();
  *(v1 + 2496) = v187;
  *v187 = v1;
  OUTLINED_FUNCTION_50_2(v187);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_88_0();

  return sub_231DDB61C();
}

uint64_t sub_231CED3F8()
{
  v6 = *(v1 + 992);
  *(v1 + 2512) = v6;
  memcpy((v1 + 1096), (v1 + 1200), 0x68uLL);
  v321 = *(v1 + 2384);
  if ((sub_231CC886C() & 0x100000000) != 0)
  {
    v5 = 0.478;
  }

  else
  {
    OUTLINED_FUNCTION_154_0();
    v7 = *(v0 + 16);
    v8 = OUTLINED_FUNCTION_82();
    v9(v8);

    v10 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    v11 = OUTLINED_FUNCTION_177();
    v12 = *(v1 + 2320);
    v13 = *(v1 + 2248);
    v14 = *(v1 + 2240);
    if (v11)
    {
      OUTLINED_FUNCTION_38_1();
      v3 = OUTLINED_FUNCTION_28();
      *v2 = 136446466;
      v15 = sub_231DDB1E8();
      OUTLINED_FUNCTION_93_0(v15, v16, v17, v18, v19, v20, v21, v22, v276, v281, v286, v291, v296, v301);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_66_1();
      _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v28 = *(v13 + 8);
    v29 = OUTLINED_FUNCTION_70();
    v30(v29);
  }

  v31 = OUTLINED_FUNCTION_153_0();
  v32 = OUTLINED_FUNCTION_60_1(v31);
  v33(v32);

  v34 = sub_231E10E10();
  v35 = sub_231E11AF0();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v1 + 2312);
  v38 = *(v1 + 2248);
  v39 = *(v1 + 2240);
  if (v36)
  {
    v3 = OUTLINED_FUNCTION_106_0();
    v4 = OUTLINED_FUNCTION_67();
    *v3 = 136446722;
    v40 = sub_231DDB1E8();
    OUTLINED_FUNCTION_93_0(v40, v41, v42, v43, v44, v45, v46, v47, v276, v281, v286, v291, v296, v301);

    OUTLINED_FUNCTION_71_1(v48, v49, v50, v51, v52, v53, v54, v55, v277, v282, v287, v292, v297, v302, v306, v309);
    OUTLINED_FUNCTION_169(&dword_231CAE000, v56, v57, "%{public}s Notification urgency: %{BOOL}d; with score: %f");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v58 = *(v38 + 8);
    (v58)(v311, v39);
  }

  else
  {

    v58 = *(v38 + 8);
    (v58)(v37, v39);
  }

  *(v1 + 2440) = v58;
  v59 = &unk_2846F07A0;
  *(v1 + 1904) = &unk_2846F07A0;
  v60 = sub_231CC7270();
  v61 = OUTLINED_FUNCTION_150_0(v60);
  __swift_destroy_boxed_opaque_existential_0((v1 + 1880));
  if ((v61 & 1) == 0 || (v62 = *(v1 + 2144), sub_231E10910(), (*(v1 + 2456) = v63) == 0))
  {
LABEL_19:
    if (v5 >= v6)
    {
      goto LABEL_34;
    }

    v96 = *(v1 + 2144);
    sub_231E108E0();
    OUTLINED_FUNCTION_8_1();
    if (!v98 && (v97 & 1) != 0)
    {
      goto LABEL_34;
    }

    v99 = *(v1 + 2448);
    *(v1 + 1944) = &unk_2846F07A0;
    v100 = OUTLINED_FUNCTION_100_0(v99);
    __swift_destroy_boxed_opaque_existential_0((v1 + 1920));
    if ((v100 & 1) == 0)
    {
      goto LABEL_34;
    }

    v101 = *(v1 + 2144);
    v102 = sub_231E10910();
    if (!v103)
    {
      goto LABEL_34;
    }

    v104 = v102;
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_168();
    sub_231D12834();
    OUTLINED_FUNCTION_144_0();
    v107 = *(v3 + 8);
    v106 = v3 + 8;
    v105 = v107;
    v108 = OUTLINED_FUNCTION_140_0();
    (v107)(v108);
    OUTLINED_FUNCTION_33_3();
    v109 = v321;
    sub_231D4E36C();
    v316 = v104;
    v319 = v107;
    v312 = v58;
    if (v321)
    {
      v322 = v106;
      v307 = 0;
      OUTLINED_FUNCTION_124_0();
      v114 = *v112;
      v115 = *(v1 + 2432);
      v116 = *(v1 + 2424);
      OUTLINED_FUNCTION_40_2();
      v319();
      v117 = OUTLINED_FUNCTION_59_0();
      v116(v117);

      v118 = v109;
      v119 = sub_231E10E10();
      v120 = sub_231E11AD0();

      os_log_type_enabled(v119, v120);
      OUTLINED_FUNCTION_158();
      if (v121)
      {
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_115_0();
        *v115 = 136446466;
        v122 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v122, v123, v124, v125, v126, v127, v128, v129, v276, v119, v286, v104, v296, v115);
        v286 = v58;
        OUTLINED_FUNCTION_117_0();
        OUTLINED_FUNCTION_68_2();
        v130 = _swift_stdlib_bridgeErrorToNSError();
        *(v115 + 14) = v130;
        *v34 = v130;
        OUTLINED_FUNCTION_142_0(&dword_231CAE000, v281, v120, "%{public}s Error accessing urgent notification database: %@");
        sub_231CE1118(v34, &qword_27DD74D30, &unk_231E13480);
        OUTLINED_FUNCTION_49_2();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_14();

        v296(v291, v58);
      }

      else
      {

        (v34)(v104, v58);
      }

      v105 = v319;
      v106 = v322;
    }

    else
    {
      LODWORD(v309) = v111;
      v307 = v110;
      v113 = OUTLINED_FUNCTION_123_0();
      (v105)(v113);
      sub_231E0F920();
      OUTLINED_FUNCTION_171();
      (v105)(*(v1 + 2192), *(v1 + 2160));
    }

    v131 = *(v1 + 2448);
    *(v1 + 1984) = &unk_2846F07A0;
    v132 = OUTLINED_FUNCTION_96_0(v131);
    __swift_destroy_boxed_opaque_existential_0((v1 + 1960));
    if (v132)
    {

LABEL_34:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_24_1((v1 + 1400), v1 + 656);
      v133 = (v1 + 656);
LABEL_35:
      v134 = v34;
      goto LABEL_36;
    }

    if (sub_231CC86C4())
    {
      v137 = OUTLINED_FUNCTION_19_2();
      v138(v137);

      v139 = sub_231E10E10();
      v140 = sub_231E11AF0();

      os_log_type_enabled(v139, v140);
      OUTLINED_FUNCTION_120();
      v141 = *(v1 + 2240);
      if (v142)
      {
        OUTLINED_FUNCTION_47_1();
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_110_0();
        *v34 = 136446210;
        v143 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v143, v144, v145, v146, v147, v148, v149, v150, v276, v281, v286, v291, v296, v132);
        LOBYTE(v59) = v106;
        OUTLINED_FUNCTION_87_0();
        *(v34 + 4) = v106;
        OUTLINED_FUNCTION_94_0(&dword_231CAE000, v151, v152, "%{public}s Bypassing the observation period for urgent notifications");
        __swift_destroy_boxed_opaque_existential_0(v105);
        v105 = v319;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_49_2();

        v301(v296, v141);
      }

      else
      {

        (v132)(v34, v141);
      }

      v58 = v312;
      if (v309)
      {
        goto LABEL_67;
      }
    }

    else if (v309)
    {
      OUTLINED_FUNCTION_12_4();
      v188 = *(v1 + 2288);
      OUTLINED_FUNCTION_46_1();

      v189 = OUTLINED_FUNCTION_11_5();
      (v58)(v189);

      v190 = v188;
      v191 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_105_0();
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_62();
      if (v192)
      {
        OUTLINED_FUNCTION_47_1();
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_110_0();
        *v58 = 136446210;
        v193 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v193, v194, v195, v196, v197, v198, v199, v200, v276, v281, v286, v291, v296, v301);
        OUTLINED_FUNCTION_87_0();
        *(v58 + 4) = v106;
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v201, v202, v203, v204, v205, 0xCu);
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_11();
      }

      v206 = OUTLINED_FUNCTION_9_4();
      v190(v206);
      OUTLINED_FUNCTION_113_1();
      OUTLINED_FUNCTION_112_0();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_18_4(*v191, v191[1], xmmword_231E16E10);
      *(v1 + 1784) = 0;
      *(v1 + 1792) = v109;
      OUTLINED_FUNCTION_1_6((v1 + 1800));
      OUTLINED_FUNCTION_54_2();
      v133 = (v1 + 272);
      goto LABEL_79;
    }

    if (v307 >= sub_231D128E4())
    {
      OUTLINED_FUNCTION_12_4();
      v34 = *(v1 + 2272);
      OUTLINED_FUNCTION_46_1();
      v209 = OUTLINED_FUNCTION_11_5();
      (v58)(v209);

      v210 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_105_0();
      os_log_type_enabled(v210, v59);
      OUTLINED_FUNCTION_64_0();
      if (v211)
      {
        v309 = v34;
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_115_0();
        *v34 = 136446466;
        v212 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v212, v213, v214, v215, v216, v217, v218, v219, v276, v281, v286, v291, v296, v34);
        OUTLINED_FUNCTION_87_0();
        OUTLINED_FUNCTION_61_1();
        *(v34 + 14) = v307;
        OUTLINED_FUNCTION_97_0(&dword_231CAE000, v220, v221, "%{public}s Urgent notification count %ld exceeds frequency threshold allowed");
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_49_2();

        v230 = OUTLINED_FUNCTION_163(v222, v223, v224, v225, v226, v227, v228, v229, v280, v285, v290, v295, v300, v305);
        v231(v230);
      }

      else
      {

        v253 = OUTLINED_FUNCTION_75_0();
        (v34)(v253);
      }

      v254 = *(v1 + 2184);
      v255 = sub_231E0F920();
      OUTLINED_FUNCTION_151_0(v255, v256, v257, v258, v259, v260, v261, v262, v276, v281, v286, v291, v296, v301, v307, v309, v312, v316, v319, v4);
      v263 = OUTLINED_FUNCTION_125_0();
      if (v210)
      {
        v264(v263);

        OUTLINED_FUNCTION_42_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
        v265 = OUTLINED_FUNCTION_155_1();
        OUTLINED_FUNCTION_7_4(v265);
        v267 = *(v266 + 72);
        v268 = OUTLINED_FUNCTION_14_1();
        OUTLINED_FUNCTION_89_0(v268, xmmword_231E138E0);
        v269 = sub_231E10A30();
        OUTLINED_FUNCTION_6_0(v269);
        v271 = *(v270 + 16);
        v272 = OUTLINED_FUNCTION_136_0();
        v273(v272);
        OUTLINED_FUNCTION_85_0();
        OUTLINED_FUNCTION_86_0();
        swift_setDeallocating();
        sub_231CF0D6C();
        *(v1 + 1592) = 0;
        *(v1 + 1600) = 1;
        OUTLINED_FUNCTION_1_6((v1 + 1608));
        OUTLINED_FUNCTION_13_4();
        v133 = (v1 + 16);
        goto LABEL_35;
      }

      v274 = *(v1 + 2136);
      v190 = *(v1 + 2128);
      v264(v263);

      v275 = (v274 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason);
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_18_4(*v275, v275[1], xmmword_231E16E20);
      *(v1 + 1688) = 0;
      *(v1 + 1696) = 1;
      OUTLINED_FUNCTION_1_6((v1 + 1704));
      OUTLINED_FUNCTION_53_2();
      v133 = (v1 + 400);
      goto LABEL_79;
    }

LABEL_67:
    OUTLINED_FUNCTION_99_0();
    sub_231D12978();
    OUTLINED_FUNCTION_144_0();
    v207 = OUTLINED_FUNCTION_140_0();
    (v105)(v207);
    OUTLINED_FUNCTION_33_3();
    sub_231D4F2E8();
    v34 = *(v1 + 2176);
    v208 = *(v1 + 2160);
    v233 = v232;
    v234 = OUTLINED_FUNCTION_90_0();
    (v105)(v234);

    if ((v233 & 1) == 0)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_12_4();
    v235 = *(v1 + 2264);
    OUTLINED_FUNCTION_46_1();
    v236 = OUTLINED_FUNCTION_11_5();
    (v58)(v236);

    v190 = v235;
    v237 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_63_0();
    if (v238)
    {
      OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_110_0();
      *v58 = 136446210;
      v239 = sub_231DDB1E8();
      OUTLINED_FUNCTION_93_0(v239, v240, v241, v242, v243, v244, v245, v246, v276, v281, v286, v291, v296, v301);
      OUTLINED_FUNCTION_87_0();
      *(v58 + 4) = v106;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v247, v248, v249, v250, v251, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();
    }

    v252 = OUTLINED_FUNCTION_9_4();
    v190(v252);
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_18_4(*v237, v237[1], xmmword_231E16E30);
    *(v1 + 1496) = 0;
    *(v1 + 1504) = 0;
    OUTLINED_FUNCTION_1_6((v1 + 1512));
    OUTLINED_FUNCTION_52_2();
    v133 = (v1 + 528);
LABEL_79:
    v134 = v190;
LABEL_36:
    memcpy(v134, v133, 0x80uLL);
    OUTLINED_FUNCTION_0_10();
    OUTLINED_FUNCTION_79_0();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_88_0();

    __asm { BRAA            X1, X16 }
  }

  v34 = v63;
  v64 = *(v1 + 2144);
  v65 = sub_231E109B0();
  if (!v66)
  {
LABEL_18:

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_159(v65, v66);
  v67 = [objc_opt_self() sentenceEmbeddingForLanguage_];
  *(v1 + 2464) = v67;
  if (!v67)
  {

    goto LABEL_18;
  }

  v68 = OUTLINED_FUNCTION_108_0();
  if (sub_231D12FF8() < v68)
  {
    v69 = OUTLINED_FUNCTION_134_0();
    v70(v69);

    v71 = sub_231E10E10();
    v72 = sub_231E11AF0();

    LODWORD(v318) = v72;
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v1 + 2304);
    v75 = *(v1 + 2248);
    v76 = *(v1 + 2240);
    if (v73)
    {
      v315 = *(v1 + 2304);
      v77 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_115_0();
      *v77 = 136446466;
      v78 = sub_231DDB1E8();
      v86 = OUTLINED_FUNCTION_93_0(v78, v79, v80, v81, v82, v83, v84, v85, v276, v281, v286, v291, v296, v76);
      v298 = v75;
      v87 = v86;

      *(v77 + 4) = v87;
      *(v77 + 12) = 2048;
      *(v77 + 14) = sub_231D12FF8();
      OUTLINED_FUNCTION_147_0(&dword_231CAE000, v88, v89, "%{public}s Truncating notification body content to %ld characters", v90, v91, v92, v93, v278, v283, v288, v293, v298, v303, v306, v309, v311, v315, v318);
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_30();

      v94 = v301;
      v95 = v314;
    }

    else
    {

      v95 = OUTLINED_FUNCTION_18_0();
    }

    (v58)(v95, v94);

    v153 = sub_231D12FF8();
    v154 = sub_231CEF250(v153);
    MEMORY[0x23837CBB0](v154);
    OUTLINED_FUNCTION_149_0();

    *(v1 + 2096) = v71;
    *(v1 + 2104) = v76;
  }

  v155 = OUTLINED_FUNCTION_130_0();
  if (v156)
  {
    v157 = v155;
  }

  else
  {
    v157 = 0;
  }

  v158 = 0xE000000000000000;
  if (v156)
  {
    v159 = v156;
  }

  else
  {
    v159 = 0xE000000000000000;
  }

  v324 = v157;

  MEMORY[0x23837CC20](32, 0xE100000000000000);

  v160 = sub_231E109F0();
  if (v161)
  {
    v162 = v160;
  }

  else
  {
    v162 = 0;
  }

  if (v161)
  {
    v158 = v161;
  }

  MEMORY[0x23837CC20](v162, v158);

  OUTLINED_FUNCTION_172(v163, v164, v165, v166, v167, v168, v169, v170, v276, v281, v286, v291, v296, v301, v306, v309, v311, v314, v318, v321, v324, v159);
  sub_231CE11D8();
  v171 = sub_231E11C30();
  v173 = OUTLINED_FUNCTION_107_0(v171, v172);
  v174(v173);

  sub_231E108E0();
  OUTLINED_FUNCTION_8_1();
  if (!v98 && (v175 & 1) != 0)
  {
    v176 = *(v1 + 2144);
    sub_231E109C0();
  }

  v177 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_56_2(v177, v178, v179, v180, v181, v182, v183, v184, v279, v284, v289, v294, v299, v304, v308, v310, v313, v317, v320, v323);
  v185 = swift_task_alloc();
  *(v1 + 2496) = v185;
  *v185 = v1;
  OUTLINED_FUNCTION_50_2(v185);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_88_0();

  return sub_231DDB61C();
}

uint64_t sub_231CEE238()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[312];
  *v4 = *v1;
  v3[313] = v0;

  v6 = v2[311];
  if (v0)
  {
  }

  else
  {
    v8 = v3[310];
    v9 = v3[309];
    v10 = v3[307];

    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231CEE3A0()
{
  OUTLINED_FUNCTION_12_4();
  v3 = *(v0 + 2516);
  v4 = *(v0 + 2296);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2136);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v7 = *(v0 + 2512);
  v8 = OUTLINED_FUNCTION_11_5();
  v1(v8);

  v9 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_105_0();
  v10 = OUTLINED_FUNCTION_91_0();
  v11 = *(v0 + 2464);
  v12 = *(v0 + 2440);
  v13 = *(v0 + 2296);
  v14 = *(v0 + 2248);
  v15 = *(v0 + 2240);
  if (v10)
  {
    v172 = *(v0 + 2440);
    v16 = *(v0 + 2136);
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_160();
    *v13 = 136446722;
    v17 = sub_231DDB1E8();
    OUTLINED_FUNCTION_145_0(v17, v18, v19, v20, v21, v22, v23, v24, v156, v157, v158, v159, v160);
    OUTLINED_FUNCTION_87_0();
    *(v13 + 4) = v2;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v3 < v7;
    *(v13 + 18) = 2048;
    *(v13 + 20) = v7;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v25, v26, v27, v28, v29, 0x1Cu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v172(v13, v15);
  }

  else
  {

    v30 = OUTLINED_FUNCTION_127_0();
    v12(v30);
  }

  v31 = *(v0 + 2104);

  if (v3 >= v7)
  {
    goto LABEL_18;
  }

  v32 = *(v0 + 2504);
  v33 = *(v0 + 2144);
  sub_231E108E0();
  OUTLINED_FUNCTION_8_1();
  if (!v35 && (v34 & 1) != 0)
  {
    goto LABEL_18;
  }

  v36 = *(v0 + 2448);
  *(v0 + 1944) = &unk_2846F07A0;
  v37 = OUTLINED_FUNCTION_100_0(v36);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1920));
  if ((v37 & 1) == 0)
  {
    goto LABEL_18;
  }

  v38 = *(v0 + 2144);
  v39 = sub_231E10910();
  if (!v40)
  {
    goto LABEL_18;
  }

  v41 = v39;
  OUTLINED_FUNCTION_65_1();
  v42 = *(v0 + 2160);
  v43 = *(*(v0 + 2152) + 136);
  sub_231E0F920();
  sub_231D12834();
  OUTLINED_FUNCTION_144_0();
  v46 = *(v2 + 8);
  v45 = v2 + 8;
  v44 = v46;
  v47 = OUTLINED_FUNCTION_18_0();
  (v46)(v47);
  sub_231D4E36C();
  v170 = v41;
  v173 = v46;
  if (v32)
  {
    v163 = 0;
    OUTLINED_FUNCTION_124_0();
    v52 = *v50;
    v53 = *(v0 + 2432);
    v43 = *(v0 + 2424);
    OUTLINED_FUNCTION_40_2();
    v168 = v45;
    v173();
    v54 = OUTLINED_FUNCTION_59_0();
    (v43)(v54);

    v55 = v32;
    v56 = sub_231E10E10();
    v57 = sub_231E11AD0();

    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 2440);
    v9 = *(v0 + 2256);
    v60 = *(v0 + 2248);
    v61 = *(v0 + 2240);
    if (v58)
    {
      v161 = *(v0 + 2440);
      OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_48_2();
      *v43 = 136446466;
      v62 = sub_231DDB1E8();
      OUTLINED_FUNCTION_145_0(v62, v63, v64, v65, v66, v67, v68, v69, v156, v157, v61, v9, v161);
      v157 = v60;
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_68_2();
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v70;
      *v9 = v70;
      OUTLINED_FUNCTION_142_0(&dword_231CAE000, v56, v57, "%{public}s Error accessing urgent notification database: %@");
      sub_231CE1118(v9, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_49_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_14();

      v160(v159, v158);
    }

    else
    {

      v71 = OUTLINED_FUNCTION_90_0();
      v59(v71);
    }

    v45 = v168;
    v41 = v170;
    v44 = v173;
  }

  else
  {
    v166 = v49;
    v163 = v48;
    v51 = OUTLINED_FUNCTION_123_0();
    (v44)(v51);
    sub_231E0F920();
    sub_231D4EC98(v41, v14, v43);
    (v44)(*(v0 + 2192), *(v0 + 2160));
  }

  v72 = *(v0 + 2448);
  *(v0 + 1984) = &unk_2846F07A0;
  v73 = OUTLINED_FUNCTION_96_0(v72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1960));
  if (v73)
  {

LABEL_18:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_24_1((v0 + 1400), v0 + 656);
    v74 = (v0 + 656);
    v75 = v9;
    goto LABEL_19;
  }

  if (sub_231CC86C4())
  {
    v78 = OUTLINED_FUNCTION_19_2();
    v79(v78);

    v80 = sub_231E10E10();
    v81 = sub_231E11AF0();

    os_log_type_enabled(v80, v81);
    OUTLINED_FUNCTION_120();
    v43 = *(v0 + 2240);
    if (v82)
    {
      OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_160();
      *v9 = 136446210;
      v83 = sub_231DDB1E8();
      OUTLINED_FUNCTION_145_0(v83, v84, v85, v86, v87, v88, v89, v90, v156, v157, v43, v9, v73);
      v157 = v14;
      OUTLINED_FUNCTION_87_0();
      *(v9 + 4) = v45;
      OUTLINED_FUNCTION_94_0(&dword_231CAE000, v91, v92, "%{public}s Bypassing the observation period for urgent notifications");
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_49_2();

      v160(v159, v158);
    }

    else
    {

      v112 = OUTLINED_FUNCTION_75_0();
      (v73)(v112);
    }

    if (v166)
    {
      goto LABEL_31;
    }
  }

  else if (v166)
  {
    OUTLINED_FUNCTION_12_4();
    v93 = *(v0 + 2288);
    OUTLINED_FUNCTION_46_1();

    v94 = OUTLINED_FUNCTION_11_5();
    (v41)(v94);

    v95 = v93;
    v96 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_62();
    if (v97)
    {
      OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_160();
      *v41 = 136446210;
      v98 = sub_231DDB1E8();
      OUTLINED_FUNCTION_145_0(v98, v99, v100, v101, v102, v103, v104, v105, v156, v157, v158, v159, v160);
      OUTLINED_FUNCTION_87_0();
      *(v41 + 4) = v45;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v106, v107, v108, v109, v110, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();
    }

    v111 = OUTLINED_FUNCTION_9_4();
    v95(v111);
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_18_4(*v96, v96[1], xmmword_231E16E10);
    *(v0 + 1784) = 0;
    *(v0 + 1792) = v32;
    OUTLINED_FUNCTION_1_6((v0 + 1800));
    OUTLINED_FUNCTION_54_2();
    v74 = (v0 + 272);
    goto LABEL_41;
  }

  if (v163 >= sub_231D128E4())
  {
    OUTLINED_FUNCTION_12_4();
    v115 = *(v0 + 2272);
    OUTLINED_FUNCTION_46_1();
    v116 = OUTLINED_FUNCTION_11_5();
    (v41)(v116);

    v117 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_105_0();
    os_log_type_enabled(v117, v44);
    OUTLINED_FUNCTION_64_0();
    if (v118)
    {
      OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_39_2();
      *v115 = 136446466;
      v119 = sub_231DDB1E8();
      OUTLINED_FUNCTION_145_0(v119, v120, v121, v122, v123, v124, v125, v126, v156, v157, v158, v159, v160);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_61_1();
      *(v115 + 14) = v163;
      OUTLINED_FUNCTION_97_0(&dword_231CAE000, v127, v128, "%{public}s Urgent notification count %ld exceeds frequency threshold allowed");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_49_2();

      (v115)(v162, v43);
    }

    else
    {

      v150 = OUTLINED_FUNCTION_75_0();
      (v115)(v150);
    }

    v151 = *(v0 + 2184);
    sub_231E0F920();
    sub_231D4F620(v170, v14, v151);
    v152 = OUTLINED_FUNCTION_125_0();
    v153 = *(v0 + 2136);
    v95 = *(v0 + 2128);
    v154(v152);

    v155 = (v153 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason);
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_18_4(*v155, v155[1], xmmword_231E16E20);
    *(v0 + 1688) = 0;
    *(v0 + 1696) = 1;
    OUTLINED_FUNCTION_1_6((v0 + 1704));
    OUTLINED_FUNCTION_53_2();
    v74 = (v0 + 400);
    goto LABEL_41;
  }

LABEL_31:
  OUTLINED_FUNCTION_99_0();
  sub_231D12978();
  OUTLINED_FUNCTION_144_0();
  v113 = OUTLINED_FUNCTION_140_0();
  (v44)(v113);
  sub_231D4F2E8();
  v9 = *(v0 + 2176);
  v114 = *(v0 + 2160);
  v130 = v129;
  v131 = OUTLINED_FUNCTION_90_0();
  (v44)(v131);

  if ((v130 & 1) == 0)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_12_4();
  v132 = *(v0 + 2264);
  OUTLINED_FUNCTION_46_1();
  v133 = OUTLINED_FUNCTION_11_5();
  (v41)(v133);

  v95 = v132;
  v134 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_63_0();
  if (v135)
  {
    OUTLINED_FUNCTION_47_1();
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_160();
    *v41 = 136446210;
    v136 = sub_231DDB1E8();
    OUTLINED_FUNCTION_145_0(v136, v137, v138, v139, v140, v141, v142, v143, v156, v157, v158, v159, v160);
    OUTLINED_FUNCTION_87_0();
    *(v41 + 4) = v45;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v144, v145, v146, v147, v148, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v149 = OUTLINED_FUNCTION_9_4();
  v95(v149);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_18_4(*v134, v134[1], xmmword_231E16E30);
  *(v0 + 1496) = 0;
  *(v0 + 1504) = 0;
  OUTLINED_FUNCTION_1_6((v0 + 1512));
  OUTLINED_FUNCTION_52_2();
  v74 = (v0 + 528);
LABEL_41:
  v75 = v95;
LABEL_19:
  memcpy(v75, v74, 0x80uLL);
  OUTLINED_FUNCTION_0_10();
  v164 = *(v0 + 2232);
  v165 = *(v0 + 2208);
  v167 = *(v0 + 2200);
  v169 = *(v0 + 2192);
  v171 = *(v0 + 2184);
  v174 = *(v0 + 2176);

  OUTLINED_FUNCTION_14_0();

  return v76();
}

uint64_t sub_231CEEEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_166();
  v21 = OUTLINED_FUNCTION_156_1();
  v22(v21);
  v23 = *(v20 + 2408);
  OUTLINED_FUNCTION_42_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
  v24 = OUTLINED_FUNCTION_155_1();
  OUTLINED_FUNCTION_7_4(v24);
  v26 = *(v25 + 72);
  v27 = OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_89_0(v27, xmmword_231E138E0);
  v28 = sub_231E10A30();
  OUTLINED_FUNCTION_6_0(v28);
  v30 = *(v29 + 16);
  v31 = OUTLINED_FUNCTION_136_0();
  v32(v31);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_86_0();
  swift_setDeallocating();
  sub_231CF0D6C();
  *(v20 + 1592) = 0;
  *(v20 + 1600) = 1;
  OUTLINED_FUNCTION_1_6((v20 + 1608));
  OUTLINED_FUNCTION_13_4();
  v33 = OUTLINED_FUNCTION_161();
  memcpy(v33, v34, 0x80uLL);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_95_1();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_231CEF088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_166();
  v21 = *(v20 + 2368);

  v22 = *(v20 + 2384);
  OUTLINED_FUNCTION_42_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
  v23 = OUTLINED_FUNCTION_155_1();
  OUTLINED_FUNCTION_7_4(v23);
  v25 = *(v24 + 72);
  v26 = OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_89_0(v26, xmmword_231E138E0);
  v27 = sub_231E10A30();
  OUTLINED_FUNCTION_6_0(v27);
  v29 = *(v28 + 16);
  v30 = OUTLINED_FUNCTION_136_0();
  v31(v30);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_86_0();
  swift_setDeallocating();
  sub_231CF0D6C();
  *(v20 + 1592) = 0;
  *(v20 + 1600) = 1;
  OUTLINED_FUNCTION_1_6((v20 + 1608));
  OUTLINED_FUNCTION_13_4();
  v32 = OUTLINED_FUNCTION_161();
  memcpy(v32, v33, 0x80uLL);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_95_1();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_231CEF250(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_231E11700();
    v1 = sub_231E117C0();

    return v1;
  }

  return result;
}

uint64_t sub_231CEF310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 172) = v15;
  *(v8 + 136) = v14;
  *(v8 + 144) = v16;
  *(v8 + 120) = v13;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 64) = a2;
  v9 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CEF364()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 64);
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v4 = *v3;
  v5 = *v1;
  *(v0 + 152) = v1[1];

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_231CEF458;
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v12 = *(v0 + 72);
  v11 = *(v0 + 80);
  v17 = *(v0 + 144);
  v16 = *(v0 + 172);
  v15 = *(v0 + 136);
  OUTLINED_FUNCTION_121_0();

  return sub_231CE9B24();
}

uint64_t sub_231CEF458()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 160);
  v5 = *(v3 + 152);
  v6 = *v0;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 168) = v9;

  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CEF558()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_146_0();
  *v0 = v2;
  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_231CEF5B4()
{
  OUTLINED_FUNCTION_18();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_231E10E30();
  v1[22] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[23] = v6;
  v8 = *(v7 + 64);
  v1[24] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CEF65C()
{
  OUTLINED_FUNCTION_57_0();
  v33 = v0;
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[20];
  sub_231DC4B64();
  v7 = OUTLINED_FUNCTION_32_2();
  v8(v7);

  v9 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v10 = OUTLINED_FUNCTION_91_0();
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  if (v10)
  {
    v14 = v0[20];
    OUTLINED_FUNCTION_9_1();
    v32 = OUTLINED_FUNCTION_17_1();
    *v1 = 136446210;
    v15 = sub_231DDB1E8();
    sub_231CB5000(v15, v16, &v32);
    OUTLINED_FUNCTION_87_0();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v22 = *(v12 + 8);
  v23 = OUTLINED_FUNCTION_33();
  v24(v23);
  v25 = v0[19];
  v26 = swift_task_alloc();
  v0[25] = v26;
  *(v26 + 16) = *(v0 + 10);
  *(v26 + 32) = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[26] = v27;
  *v27 = v28;
  v27[1] = sub_231CEF7FC;
  v29 = v0[20];
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

void sub_231CEF7FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 208);
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

uint64_t sub_231CEF90C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  OUTLINED_FUNCTION_178(*(v0 + 144));

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231CEF978()
{
  OUTLINED_FUNCTION_18();
  v0[112] = v1;
  v0[111] = v2;
  v0[110] = v3;
  v0[109] = v4;
  v5 = sub_231E10400();
  v0[113] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[114] = v6;
  v8 = *(v7 + 64);
  v0[115] = OUTLINED_FUNCTION_55();
  v9 = sub_231E10E30();
  v0[116] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[117] = v10;
  v12 = *(v11 + 64);
  v0[118] = OUTLINED_FUNCTION_69();
  v0[119] = swift_task_alloc();
  v0[120] = swift_task_alloc();
  v0[121] = swift_task_alloc();
  v0[122] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_231CEFAA4()
{
  sub_231CC8780();
  OUTLINED_FUNCTION_8_1();
  if (!v3)
  {
    v16 = v1[122];
    v17 = v1[117];
    v18 = v1[116];
    v19 = v1[110];
    sub_231DC4B64();
    v20 = OUTLINED_FUNCTION_73_0();
    v21(v20);

    v22 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    v23 = OUTLINED_FUNCTION_176();
    v24 = v1[117];
    v25 = v1[116];
    if (v23)
    {
      v42 = v1[122];
      v26 = v1[110];
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
    v38 = OUTLINED_FUNCTION_8_5();
    memcpy(v38, v1 + 34, 0x80uLL);

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();

    __asm { BRAA            X1, X16 }
  }

  v4 = v1[111];
  v5 = v1[110];
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_164();
  v1[123] = v6;
  v7 = *(v0 + 32);
  OUTLINED_FUNCTION_34_2();
  v41 = v8 + *v8;
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v1[124] = v11;
  *v11 = v12;
  v11[1] = sub_231CEFD60;
  v13 = v1[112];
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_35();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_231CEFD60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v6 = *(v5 + 992);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 1000) = v0;

  if (!v0)
  {
    v9 = *(v3 + 984);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CEFE64()
{
  v4 = *(v0 + 400);
  *(v0 + 1080) = v4;
  v5 = sub_231CC886C();
  if ((v5 & 0x100000000) != 0)
  {
    v9 = 0.478;
  }

  else
  {
    v6 = *(v0 + 968);
    v7 = *(v0 + 936);
    v8 = *(v0 + 928);
    v9 = *&v5;
    v10 = *(v0 + 880);
    sub_231DC4B64();
    v11 = OUTLINED_FUNCTION_32_2();
    v12(v11);

    v13 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    v14 = OUTLINED_FUNCTION_91_0();
    v15 = *(v0 + 968);
    v16 = *(v0 + 936);
    v17 = *(v0 + 928);
    if (v14)
    {
      v18 = *(v0 + 880);
      OUTLINED_FUNCTION_98_0();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_111_0();
      *v1 = 136446466;
      v19 = sub_231DDB1E8();
      OUTLINED_FUNCTION_118_1(v19, v20, v21, v22, v23, v24, v25, v26, v109, v111, v113, v114);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();
    }

    v32 = *(v16 + 8);
    v3 = v16 + 8;
    v33 = OUTLINED_FUNCTION_33();
    v34(v33);
  }

  *(v0 + 1084) = v9;
  v35 = *(v0 + 960);
  v36 = *(v0 + 936);
  v37 = *(v0 + 928);
  v38 = *(v0 + 880);
  v39 = sub_231DC4B64();
  *(v0 + 1008) = v39;
  v40 = *(v36 + 16);
  *(v0 + 1016) = v40;
  *(v0 + 1024) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v119 = v40;
  v121 = v39;
  v40(v35);

  v41 = sub_231E10E10();
  sub_231E11AF0();

  v42 = OUTLINED_FUNCTION_177();
  v43 = *(v0 + 960);
  v44 = *(v0 + 936);
  v45 = *(v0 + 928);
  if (v42)
  {
    v117 = *(v0 + 960);
    v46 = *(v0 + 880);
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_28();
    *v2 = 136446722;
    v47 = sub_231DDB1E8();
    OUTLINED_FUNCTION_118_1(v47, v48, v49, v50, v51, v52, v53, v54, v109, v111, v113, v114);
    OUTLINED_FUNCTION_117_0();
    *(v2 + 4) = v3;
    *(v2 + 12) = 1024;
    *(v2 + 14) = v9 < v4;
    *(v2 + 18) = 2048;
    *(v2 + 20) = v4;
    OUTLINED_FUNCTION_66_1();
    _os_log_impl(v55, v56, v57, v58, v59, 0x1Cu);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    v60 = *(v44 + 8);
    v60(v117, v45);
  }

  else
  {

    v60 = *(v44 + 8);
    v60(v43, v45);
  }

  *(v0 + 1032) = v60;
  *(v0 + 816) = &unk_2846F07A0;
  v61 = sub_231CC7270();
  v62 = OUTLINED_FUNCTION_167(v61);
  __swift_destroy_boxed_opaque_existential_0((v0 + 792));
  if (v62)
  {
    v63 = *(v0 + 896);
    v64 = sub_231E10580();
    *(v0 + 1040) = v65;
    if (v65)
    {
      v66 = v64;
      v67 = v65;
      v68 = [objc_opt_self() sentenceEmbeddingForLanguage_];
      *(v0 + 1048) = v68;
      if (v68)
      {
        v69 = v68;
        v118 = v66;
        v70 = *(v0 + 920);
        v71 = *(v0 + 912);
        v72 = *(v0 + 904);
        v73 = *(v0 + 896);
        sub_231E104F0();
        v74 = sub_231E103E0();
        v115 = v75;
        v116 = v74;
        *(v0 + 1056) = v75;
        (*(v71 + 8))(v70, v72);
        v76 = sub_231E10640();
        *(v0 + 856) = v76;
        *(v0 + 864) = v77;

        v78 = sub_231E116F0();

        if (sub_231D12FF8() < v78)
        {
          v79 = *(v0 + 880);
          v119(*(v0 + 952), v121, *(v0 + 928));

          v80 = sub_231E10E10();
          v81 = sub_231E11AF0();

          v122 = v81;
          v82 = os_log_type_enabled(v80, v81);
          v83 = *(v0 + 952);
          v84 = *(v0 + 936);
          v85 = *(v0 + 928);
          if (v82)
          {
            v120 = *(v0 + 952);
            v86 = *(v0 + 880);
            OUTLINED_FUNCTION_98_0();
            v123 = OUTLINED_FUNCTION_28();
            *v84 = 136446466;
            v87 = sub_231DDB1E8();
            v95 = OUTLINED_FUNCTION_118_1(v87, v88, v89, v90, v91, v92, v93, v94, v123, v111, v84, v115);
            v112 = v85;
            v96 = v95;

            *(v84 + 4) = v96;
            *(v84 + 12) = 2048;
            *(v84 + 14) = sub_231D12FF8();
            OUTLINED_FUNCTION_142_0(&dword_231CAE000, v80, v122, "%{public}s Truncating notification body content to %ld characters");
            __swift_destroy_boxed_opaque_existential_0(v110);
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_14();

            v97 = v112;
            v98 = v120;
          }

          else
          {

            v98 = v83;
            v97 = v85;
          }

          v60(v98, v97);

          v102 = sub_231D12FF8();
          v103 = sub_231CEF250(v102);
          MEMORY[0x23837CBB0](v103);
          OUTLINED_FUNCTION_149_0();

          *(v0 + 856) = v76;
          *(v0 + 864) = v80;
        }

        v104 = *(v0 + 888);
        v105 = *(v0 + 880);
        v106 = swift_task_alloc();
        *(v0 + 1064) = v106;
        v106[2] = v0 + 1080;
        v106[3] = v104;
        v106[4] = v118;
        v106[5] = v67;
        v106[6] = v0 + 856;
        v106[7] = v69;
        v106[8] = v116;
        v106[9] = v115;
        v106[10] = v105;
        v107 = swift_task_alloc();
        *(v0 + 1072) = v107;
        *v107 = v0;
        v107[1] = sub_231CF046C;
        v108 = *(v0 + 880);
        OUTLINED_FUNCTION_28_1();

        return sub_231DDB61C();
      }
    }
  }

  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_22_3();
  v99 = OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_173(v99);

  OUTLINED_FUNCTION_14_0();

  return v100();
}

uint64_t sub_231CF046C()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *(v2 + 1072);
  *v4 = *v1;

  v6 = *(v2 + 1064);
  if (v0)
  {
  }

  else
  {
    v8 = *(v3 + 1056);
    v9 = *(v3 + 1040);

    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_231CF05C4()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1084);
  v5 = *(v0 + 944);
  v6 = *(v0 + 928);
  v7 = *(v0 + 880);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v8 = *(v0 + 1080);
  v9 = OUTLINED_FUNCTION_11_5();
  v2(v9);

  v10 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_105_0();
  v11 = OUTLINED_FUNCTION_91_0();
  v12 = *(v0 + 1048);
  v13 = *(v0 + 1032);
  v14 = *(v0 + 944);
  v15 = *(v0 + 936);
  v16 = *(v0 + 928);
  if (v11)
  {
    v44 = *(v0 + 1032);
    v17 = *(v0 + 880);
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_17_1();
    *v14 = 136446722;
    v18 = sub_231DDB1E8();
    OUTLINED_FUNCTION_174(v18, v19, v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_20_4(v24, v25, v26, v27, v28, v29, v30, v31, v42, v43, v4 < v8);
    *(v14 + 20) = v8;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v32, v33, v34, v35, v36, 0x1Cu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v44(v14, v16);
  }

  else
  {

    v37 = OUTLINED_FUNCTION_127_0();
    v13(v37);
  }

  v38 = *(v0 + 864);

  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_22_3();
  v39 = OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_173(v39);

  OUTLINED_FUNCTION_14_0();

  return v40();
}

uint64_t sub_231CF07AC()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *(v0 + 1000);
  v3 = *(v0 + 984);
  v4 = *(v0 + 896);
  v5 = *(v0 + 880);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
  v6 = type metadata accessor for EntityKind();
  OUTLINED_FUNCTION_7_4(v6);
  v8 = *(v7 + 72);
  v9 = OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_89_0(v9, xmmword_231E138E0);
  v10 = sub_231E106A0();
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
  v14 = OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_178(v14);

  OUTLINED_FUNCTION_14_0();

  return v15();
}

uint64_t sub_231CF0934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v13;
  v8[16] = v14;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  v9 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CF0974()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[12];
  v2 = v0[8];
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v3 = *v2;
  v4 = *v1;
  v0[17] = v1[1];

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_231CF0A5C;
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_81();

  return sub_231CE9B24();
}

uint64_t sub_231CF0A5C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 144);
  v5 = *(v3 + 136);
  v6 = *v0;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 152) = v9;

  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CF0B5C()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 152);
  OUTLINED_FUNCTION_146_0();
  *v0 = v2;
  OUTLINED_FUNCTION_14_0();

  return v3();
}

unint64_t sub_231CF0BB8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_231CF0C24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  if ((a4 >> 1) <= a3)
  {
    __break(1u);
  }

  else
  {
    v5 = a2 + 16 * (a4 >> 1);
    result = *(v5 - 16);
    v6 = *(v5 - 8);
  }

  return result;
}

uint64_t sub_231CF0C58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  return v0;
}

uint64_t sub_231CF0C98()
{
  sub_231CF0C58();

  return swift_deallocClassInstance();
}

uint64_t sub_231CF0CCC()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_29_0(v5);

  return sub_231CE8AD4();
}

uint64_t sub_231CF0D6C()
{
  v1 = *(*(type metadata accessor for EntityKind() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

char *sub_231CF0DE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74500, &qword_231E16F30);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_231CF0EE4()
{
  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_29_0(v4);

  return sub_231CEB9FC(v6, v7, v2);
}

uint64_t sub_231CF0F7C()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v1 + 16) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_29_0(v6);

  return sub_231CEBC68();
}

uint64_t sub_231CF102C()
{
  OUTLINED_FUNCTION_29();
  v1 = sub_231E10A30();
  OUTLINED_FUNCTION_6(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38(v5);
  *v6 = v7;
  v6[1] = sub_231CC6BF8;

  return sub_231CEB5C0();
}

uint64_t sub_231CF111C()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_29_0(v5);

  return sub_231CEF978();
}

uint64_t sub_231CF11E0()
{
  OUTLINED_FUNCTION_57_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_38(v10);
  *v11 = v12;
  v11[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_44();

  return sub_231CF0934(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_231CF12A0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_231CF1D60(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_231CF142C(v5);
  *a1 = v2;
  return result;
}

char *sub_231CF130C(char *a1, int64_t a2, char a3)
{
  result = sub_231CF132C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_231CF132C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74508, &qword_231E16F38);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_231CF142C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231E120B0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_231E118B0();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_231CF1598(v7, v8, a1, v4);
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
    return sub_231CF1520(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231CF1520(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_231CF1598(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v82 = result;
  v86 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 4;
        v15 = v14;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 2;
          v20 = (v10 < v15) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v15)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v83 = v9;
      if ((result & 1) == 0)
      {
        result = sub_231CF0DE4(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        result = sub_231CF0DE4((v37 > 1), v38 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v39;
      v40 = v8 + 32;
      v41 = (v8 + 32 + 16 * v38);
      *v41 = v7;
      v41[1] = v9;
      __src = *v82;
      if (!*v82)
      {
        goto LABEL_114;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          v43 = (v40 + 16 * (v39 - 1));
          v44 = (v8 + 16 * v39);
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = *(v8 + 32);
            v46 = *(v8 + 40);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_56:
            if (v48)
            {
              goto LABEL_96;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_99;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_104;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v42 = v39 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v39 < 2)
          {
            goto LABEL_98;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_71:
          if (v63)
          {
            goto LABEL_101;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_103;
          }

          if (v70 < v62)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
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
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v74 = (v40 + 16 * (v42 - 1));
          v75 = *v74;
          v76 = (v40 + 16 * v42);
          v77 = v76[1];
          result = sub_231CF1BAC((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), __src);
          if (v5)
          {
          }

          if (v77 < v75)
          {
            goto LABEL_91;
          }

          v78 = v8;
          v79 = *(v8 + 16);
          if (v42 > v79)
          {
            goto LABEL_92;
          }

          *v74 = v75;
          v74[1] = v77;
          if (v42 >= v79)
          {
            goto LABEL_93;
          }

          v39 = v79 - 1;
          result = memmove((v40 + 16 * v42), v76 + 2, 16 * (v79 - 1 - v42));
          *(v78 + 16) = v79 - 1;
          v80 = v79 > 2;
          v8 = v78;
          v5 = 0;
          if (!v80)
          {
            goto LABEL_85;
          }
        }

        v49 = v40 + 16 * v39;
        v50 = *(v49 - 64);
        v51 = *(v49 - 56);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_94;
        }

        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_95;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_97;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_100;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_105;
          }

          if (v47 < v73)
          {
            v42 = v39 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*v82)
  {
    goto LABEL_115;
  }

  sub_231CF1A80(&v86, *v82, a3);
}

uint64_t sub_231CF1A80(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_231CF1D4C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_231CF1BAC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_231CF1BAC(double *a1, double *__dst, double *a3, double *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = __dst;
  v7 = a1;
  v8 = (__dst - a1) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (__src != a1 || &a1[2 * v8] <= __src)
    {
      v11 = OUTLINED_FUNCTION_18_0();
      memmove(v11, v12, v13);
    }

    v14 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 2;
      if (!v17)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 2;
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 2;
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v16;
    goto LABEL_18;
  }

  if (__src != __dst || &__dst[2 * v9] <= __src)
  {
    memmove(__src, __dst, 16 * v9);
  }

  v14 = &v4[2 * v9];
LABEL_25:
  v19 = v6 - 2;
  for (v5 -= 2; v14 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v14 - 2) < *v19)
    {
      v17 = v5 + 2 == v6;
      v6 -= 2;
      if (!v17)
      {
        *v5 = *v19;
        v6 = v19;
      }

      goto LABEL_25;
    }

    if (v14 != v5 + 2)
    {
      *v5 = *(v14 - 1);
    }

    v14 -= 2;
  }

LABEL_38:
  v21 = (v14 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v21])
  {
    memmove(v6, v4, 16 * v21);
  }

  return 1;
}

uint64_t sub_231CF1D74(uint64_t a1)
{
  v2 = type metadata accessor for EntityKind();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231CF1E24()
{
  v1 = *(v0 + 24);
  v23 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v22 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_38(v10);
  *v11 = v12;
  v11[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_35();

  return sub_231CEF310(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_231CF1F0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_38(v8);
  *v9 = v10;
  v9[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_44_2();

  return sub_231CE97B8();
}

double OUTLINED_FUNCTION_1_6@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[115];
  return v0[109];
}

void OUTLINED_FUNCTION_12_4()
{
  v1 = v0[304];
  v2 = v0[303];
  v3 = v0[302];
}

void *OUTLINED_FUNCTION_13_4()
{

  return sub_231CE25FC((v1 + 1592), 2, v0, 0, 0, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_16_5()
{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[113];
  return v0[107];
}

uint64_t OUTLINED_FUNCTION_19_2()
{
  v1 = v0[304];
  v2 = v0[303];
  v3 = v0[302];
  v4 = v0[280];
  v5 = v0[267];
  return v0[285];
}

void *OUTLINED_FUNCTION_22_3()
{

  return sub_231CE25FC((v1 + 696), v0, 1, 0, 0x200u, v1 + 144);
}

void *OUTLINED_FUNCTION_24_1@<X0>(void *a1@<X4>, uint64_t a2@<X8>)
{

  return sub_231CE25FC(a1, v2, 1, 0, 0x200u, a2);
}

uint64_t OUTLINED_FUNCTION_38_1()
{
  v2 = *(v0 + 2136);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_40_2()
{
  v1 = v0[302];
  v2 = v0[282];
  v3 = v0[280];
  v4 = v0[270];
  v5 = v0[267];
}

void OUTLINED_FUNCTION_41_2()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v0 & 1;
}

void OUTLINED_FUNCTION_42_2()
{
  v1 = v0[268];
  v2 = v0[267];
  v3 = v0[266];
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_47_1()
{
  v2 = *(v0 + 2136);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_49_2()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_50_2(uint64_t result)
{
  *(result + 8) = sub_231CEE238;
  v2 = *(v1 + 2136);
  return result;
}

void *OUTLINED_FUNCTION_52_2()
{

  return sub_231CE25FC((v0 + 1496), 2, 49, 0, 0x10Du, v0 + 528);
}

void *OUTLINED_FUNCTION_53_2()
{

  return sub_231CE25FC((v0 + 1688), 2, 48, 0, 0x10Du, v0 + 400);
}

void *OUTLINED_FUNCTION_54_2()
{

  return sub_231CE25FC((v0 + 1784), 2, 47, 0, 0x10Du, v0 + 272);
}

uint64_t OUTLINED_FUNCTION_56_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v23 + 2488) = result;
  *(result + 16) = a15;
  *(result + 24) = v25;
  *(result + 32) = a20;
  *(result + 40) = v20;
  *(result + 48) = v27;
  *(result + 56) = v28;
  *(result + 64) = a16;
  *(result + 72) = a17;
  *(result + 80) = v21;
  *(result + 88) = v22;
  *(result + 96) = v24;
  *(result + 104) = v26;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_1(uint64_t a1)
{
  v3[302] = a1;
  v3[303] = *(v2 + 16);
  v3[304] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

void OUTLINED_FUNCTION_62()
{
  v1 = v0[305];
  v2 = v0[286];
  v3 = v0[281];
  v4 = v0[280];
}

void OUTLINED_FUNCTION_63_0()
{
  v1 = v0[305];
  v2 = v0[283];
  v3 = v0[281];
  v4 = v0[280];
}

void OUTLINED_FUNCTION_64_0()
{
  v1 = v0[305];
  v2 = v0[284];
  v3 = v0[281];
  v4 = v0[280];
}

void OUTLINED_FUNCTION_65_1()
{
  v1 = v0[276];
  v2 = v0[275];
  v3 = v0[271];
}

id OUTLINED_FUNCTION_68_2()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;

  return v0;
}

char *OUTLINED_FUNCTION_69_1()
{
  v2 = *(v0 + 16) + 1;

  return sub_231CF130C(0, v2, 1);
}

double OUTLINED_FUNCTION_71_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  *(v17 + 4) = v16;
  *(v17 + 12) = 1024;
  *(v17 + 14) = a16;
  *(v17 + 18) = 2048;
  result = v18;
  *(v17 + 20) = v18;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_0()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);

  return sub_231DDAFC4();
}

uint64_t OUTLINED_FUNCTION_78_0()
{
  v4 = v0[279];
  v5 = v0[276];
  v6 = v0[275];
  v7 = v0[274];
  v2 = v0[273];
  v8 = v0[272];
}

uint64_t OUTLINED_FUNCTION_79_0()
{
  v4 = v0[279];
  v5 = v0[276];
  v6 = v0[275];
  v7 = v0[274];
  v2 = v0[273];
  v8 = v0[272];
}

uint64_t OUTLINED_FUNCTION_84_0()
{
  v2 = *(v0 + 88);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return sub_231CEAA30(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_87_0()
{
}

BOOL OUTLINED_FUNCTION_91_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_93_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_231CB5000(a1, a2, va);
}

void OUTLINED_FUNCTION_94_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_96_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1992) = a1;
  *(v1 + 1960) = 7;

  return sub_231E0FA80();
}

void OUTLINED_FUNCTION_97_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_98_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99_0()
{
  v2 = v0[275];
  v3 = v0[272];
  v4 = v0[270];

  return sub_231E0F920();
}

uint64_t OUTLINED_FUNCTION_100_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1952) = a1;
  *(v1 + 1920) = 6;

  return sub_231E0FA80();
}

void *OUTLINED_FUNCTION_101_0@<X0>(void *a1@<X4>, uint64_t a2@<X8>)
{

  return sub_231CE25FC(a1, v2, 2, 0, 0x200u, a2);
}

void *OUTLINED_FUNCTION_103_0()
{
  v2 = v0[266];

  return memcpy(v0 + 175, v0 + 138, 0x60uLL);
}

void *OUTLINED_FUNCTION_104_0()
{

  return memcpy((v0 + 696), (v0 + 408), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_105_0()
{
}

uint64_t OUTLINED_FUNCTION_106_0()
{
  v2 = *(v0 + 2136);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1, uint64_t a2)
{
  *(v2 + 2472) = a2;
  v5 = *(v3 + 8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_108_0()
{

  return sub_231E116F0();
}

uint64_t OUTLINED_FUNCTION_116_0()
{
}

uint64_t OUTLINED_FUNCTION_117_0()
{
}

uint64_t OUTLINED_FUNCTION_118_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_231CB5000(a1, a2, va);
}

void OUTLINED_FUNCTION_120()
{
  v1 = v0[305];
  v2 = v0[285];
  v3 = v0[281];
}

uint64_t OUTLINED_FUNCTION_123_0()
{
  result = v0[276];
  v2 = v0[274];
  v3 = v0[270];
  return result;
}

uint64_t OUTLINED_FUNCTION_125_0()
{
  result = *(v0 + 2184);
  v2 = *(v0 + 2160);
  return result;
}

void *OUTLINED_FUNCTION_128_0()
{

  return sub_231CE25FC((v1 + 504), 2, v0, 0, 0, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_129_0()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_130_0()
{
  v2 = v0[279];
  v3 = v0[278];
  v6 = v0[277];
  v4 = v0[268];

  return sub_231E109C0();
}

double OUTLINED_FUNCTION_131_0()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  result = v2;
  *(v0 + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_132_0()
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  return v0;
}

double OUTLINED_FUNCTION_133_0()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  result = v2;
  *(v0 + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_134_0()
{
  v1 = v0[280];
  v2 = v0[267];
  return v0[288];
}

void OUTLINED_FUNCTION_135_0()
{
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[9];
  *(v2 + 32) = v0;
  *(v2 + 24) = 1;
}

uint64_t OUTLINED_FUNCTION_141_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_142_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_143_0()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
}

uint64_t OUTLINED_FUNCTION_144_0()
{

  return sub_231E0F8B0();
}

uint64_t OUTLINED_FUNCTION_145_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_231CB5000(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_146_0()
{
  v2 = *(v0 + 64);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_147_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t a19)
{

  _os_log_impl(a1, v19, a19, a4, v20, 0x16u);
}

uint64_t OUTLINED_FUNCTION_148_0()
{
}

uint64_t OUTLINED_FUNCTION_149_0()
{
}

uint64_t OUTLINED_FUNCTION_150_0(uint64_t a1)
{
  *(v1 + 2448) = a1;
  *(v1 + 1912) = a1;
  *(v1 + 1880) = 7;

  return sub_231E0FA80();
}

void OUTLINED_FUNCTION_151_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_231D4F620(a18, a20, v20);
}

uint64_t OUTLINED_FUNCTION_153_0()
{
  *(v0 + 2516) = v2;
  v3 = *(v0 + 2312);
  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2136);

  return sub_231DC4B64();
}

uint64_t OUTLINED_FUNCTION_154_0()
{
  v2 = v0[290];
  v3 = v0[281];
  v4 = v0[280];
  v5 = v0[267];

  return sub_231DC4B64();
}

uint64_t OUTLINED_FUNCTION_155_1()
{

  return type metadata accessor for EntityKind();
}

uint64_t OUTLINED_FUNCTION_156_1()
{
  result = v0[295];
  v2 = v0[293];
  v3 = *(v0[294] + 8);
  return result;
}

void OUTLINED_FUNCTION_158()
{
  v1 = v0[305];
  v2 = v0[282];
  v3 = v0[281];
  v4 = v0[280];
}

uint64_t OUTLINED_FUNCTION_159(uint64_t result, uint64_t a2)
{
  *(v2 + 2096) = result;
  *(v2 + 2104) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_167(uint64_t a1)
{
  *(v1 + 824) = a1;
  *(v1 + 792) = 7;

  return sub_231E0FA80();
}

uint64_t OUTLINED_FUNCTION_168()
{
  v2 = *(v0 + 2160);
  v3 = *(*(v0 + 2152) + 136);

  return sub_231E0F920();
}

void OUTLINED_FUNCTION_169(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_170()
{
  v1[310] = v0;
  v3 = v1[269];
  v4 = v1[267];

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_171()
{

  sub_231D4EC98(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_172(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v22 + 2112) = a21;
  *(v22 + 2120) = a22;

  return sub_231E0F490();
}

void *OUTLINED_FUNCTION_173(void *a1)
{

  return memcpy(a1, (v1 + 144), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_174(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_231CB5000(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_175(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_231CB5000(a1, a2, va);
}

BOOL OUTLINED_FUNCTION_176()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_177()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_178(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x80uLL);
}

unint64_t sub_231CF2D74(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_231E11D70();
    v1 = 0xD000000000000010;
    v2 = 0x8000000231E2F030;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    v1 = 0x652065646F636544;
    v2 = 0xED000020726F7272;
LABEL_5:
    MEMORY[0x23837CC20](v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
    sub_231E11E90();
    return 0;
  }

  v4 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  result = 0x61746164206F4ELL;
  switch(v4)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231CF2EEC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_231CF2F0C, 0, 0);
}

uint64_t sub_231CF2F0C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_231CF2FFC;
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x8000000231E2EF40, sub_231CF3478, v1, v4);
}

uint64_t sub_231CF2FFC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_231CF3134;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_231CF3118;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_231CF3134()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_231CF3198(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
  v5 = OUTLINED_FUNCTION_24(v29);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v29 - v10;
  v12 = sub_231E106A0();
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[8];
  v20 = a2[9];
  v34 = a2[11];
  v33 = sub_231E115F0();
  sub_231E10690();
  v32 = sub_231E115F0();

  v30 = sub_231E115F0();
  (*(v15 + 16))(v18, a3, v12);
  v21 = v29;
  (*(v7 + 16))(v11, v31, v29);
  v22 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = (v17 + *(v7 + 80) + v22) & ~*(v7 + 80);
  v24 = swift_allocObject();
  (*(v15 + 32))(v24 + v22, v18, v12);
  (*(v7 + 32))(v24 + v23, v11, v21);
  aBlock[4] = sub_231CF4120;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231CF427C;
  aBlock[3] = &block_descriptor_0;
  v25 = _Block_copy(aBlock);

  v26 = v33;
  v27 = v32;
  v28 = v30;
  [v34 provideDataForBundle:v33 identifier:v32 type:v30 completionHandler:v25];
  _Block_release(v25);
}

uint64_t sub_231CF3480(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v153 = a4;
  v154 = a5;
  v150 = a1;
  v151 = a2;
  v7 = sub_231E106A0();
  v8 = OUTLINED_FUNCTION_24(v7);
  v152 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v144 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v144 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v144 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v144 - v24;
  v26 = sub_231E10E30();
  v27 = OUTLINED_FUNCTION_24(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  v33 = MEMORY[0x28223BE20](&v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v33);
  v35 = MEMORY[0x28223BE20](v34);
  v36 = MEMORY[0x28223BE20](v35);
  if (a3)
  {
    v41 = &v144 - v37;
    v42 = a3;
    sub_231CB4EEC();
    OUTLINED_FUNCTION_3_8();
    v43(v41);
    v44 = v152;
    (*(v152 + 16))(v25, v153, v7);
    v45 = a3;
    v46 = v29;
    v47 = sub_231E10E10();
    v48 = sub_231E11AD0();

    v49 = v26;
    if (os_log_type_enabled(v47, v48))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v153 = v49;
      v150 = v51;
      v151 = swift_slowAlloc();
      *&v157[0] = v151;
      *v50 = 136315394;
      sub_231E10690();
      v52 = v7;
      v54 = v53;
      (*(v44 + 8))(v25, v52);
      v55 = OUTLINED_FUNCTION_4_6();
      v57 = sub_231CB5000(v55, v54, v56);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2112;
      v58 = a3;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 14) = v59;
      v60 = v150;
      *v150 = v59;
      _os_log_impl(&dword_231CAE000, v47, v48, "Unable to request full content for message: %s with error %@", v50, 0x16u);
      sub_231CE1118(v60, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_30();
      __swift_destroy_boxed_opaque_existential_0(v151);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v46 + 8))(v41, v153);
    }

    else
    {

      (*(v44 + 8))(v25, v7);
      (*(v46 + 8))(v41, v26);
    }

    sub_231CF43AC();
    v76 = OUTLINED_FUNCTION_7_5();
    *v77 = a3;
LABEL_14:
    *&v157[0] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
    OUTLINED_FUNCTION_1_7();
    return sub_231E11930();
  }

  v148 = v17;
  v147 = v23;
  v149 = v7;
  v61 = v151;
  if (v151 >> 60 == 15)
  {
    v62 = v36;
    sub_231CB4EEC();
    OUTLINED_FUNCTION_3_8();
    v63 = v26;
    v64(v62);
    v65 = v152;
    v66 = v14;
    v67 = v149;
    (*(v152 + 16))(v14, v153, v149);
    v68 = v29;
    v69 = sub_231E10E10();
    v70 = sub_231E11AD0();
    if (os_log_type_enabled(v69, v70))
    {
      OUTLINED_FUNCTION_9_1();
      v151 = OUTLINED_FUNCTION_6_1();
      *&v157[0] = v151;
      *v5 = 136315138;
      sub_231E10690();
      v153 = v63;
      v72 = v71;
      (*(v65 + 8))(v66, v67);
      v73 = OUTLINED_FUNCTION_4_6();
      v75 = sub_231CB5000(v73, v72, v74);

      *(v5 + 4) = v75;
      _os_log_impl(&dword_231CAE000, v69, v70, "No data returned when requesting full content for message: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v151);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v68 + 8))(v62, v153);
    }

    else
    {

      (*(v65 + 8))(v66, v67);
      (*(v29 + 8))(v62, v63);
    }

    sub_231CF43AC();
    v76 = OUTLINED_FUNCTION_7_5();
    *v99 = 0x8000000000000000;
    goto LABEL_14;
  }

  v78 = v40;
  v144 = v39;
  v145 = v38;
  v79 = v29;
  sub_231CC1784(0, &qword_27DD74520, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74528, &unk_231E16F80);
  v80 = swift_allocObject();
  v146 = xmmword_231E138E0;
  *(v80 + 16) = xmmword_231E138E0;
  v81 = sub_231CC1784(0, &qword_2814CAEA8, 0x277CCACA8);
  *(v80 + 32) = v81;
  v82 = swift_allocObject();
  *(v82 + 16) = v146;
  *(v82 + 32) = v81;
  v83 = v150;
  sub_231CF4400(v150, v61);
  v104 = sub_231E11B10();

  if (!v104)
  {
    sub_231CB4EEC();
    OUTLINED_FUNCTION_8_6();
    v84 = v78;
    v85 = v26;
    v86(v78);
    v87 = v152;
    v89 = v148;
    v88 = v149;
    (*(v152 + 16))(v148, v153, v149);
    v90 = sub_231E10E10();
    v91 = sub_231E11AD0();
    if (os_log_type_enabled(v90, v91))
    {
      OUTLINED_FUNCTION_9_1();
      v153 = v84;
      v92 = OUTLINED_FUNCTION_6_1();
      *&v157[0] = v92;
      MEMORY[0] = 136315138;
      v93 = v89;
      sub_231E10690();
      v94 = OUTLINED_FUNCTION_9_5();
      v96 = v95;
      (*(v87 + 8))(v94, v88);
      v97 = OUTLINED_FUNCTION_4_6();
      sub_231CB5000(v97, v96, v98);
      OUTLINED_FUNCTION_9_5();

      MEMORY[4] = v93;
      _os_log_impl(&dword_231CAE000, v90, v91, "Invalid response for full content of message: %s, expecting dictionary", 0, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (v83[1])(v153, v85);
    }

    else
    {

      (*(v87 + 8))(v89, v88);
      (v83[1])(v84, v85);
    }

    sub_231CF43AC();
    v101 = OUTLINED_FUNCTION_7_5();
    v103 = 0x8000000000000000;
    goto LABEL_18;
  }

  *&v155 = 1954047348;
  *(&v155 + 1) = 0xE400000000000000;
  sub_231E11D20();
  sub_231CF4218(v157, v104, &v155);

  sub_231CF4458(v157);
  v105 = v26;
  if (!v156)
  {
    sub_231CE1118(&v155, &dword_27DD741E0, &qword_231E15D70);
    sub_231CB4EEC();
    OUTLINED_FUNCTION_8_6();
    v109 = v144;
    v110(v144);
    v111 = v152;
    v112 = v147;
    v113 = v149;
    (*(v152 + 16))(v147, v153, v149);
    v114 = sub_231E10E10();
    v115 = sub_231E11AD0();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = OUTLINED_FUNCTION_9_1();
      v117 = swift_slowAlloc();
      v153 = v105;
      v118 = v117;
      *&v157[0] = v117;
      *v116 = 136315138;
      v119 = v112;
      sub_231E10690();
      v120 = OUTLINED_FUNCTION_9_5();
      v122 = v121;
      (*(v111 + 8))(v120, v113);
      v123 = OUTLINED_FUNCTION_4_6();
      sub_231CB5000(v123, v122, v124);
      OUTLINED_FUNCTION_9_5();

      *(v116 + 4) = v119;
      _os_log_impl(&dword_231CAE000, v114, v115, "Invalid response for full content of message: %s, expecting 'text' key", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v118);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (v83[1])(v109, v153);
    }

    else
    {

      (*(v111 + 8))(v112, v113);
      (v83[1])(v109, v26);
    }

    sub_231CF43AC();
    v101 = OUTLINED_FUNCTION_7_5();
    v103 = 0x8000000000000010;
LABEL_18:
    *v102 = v103;
    *&v157[0] = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
    OUTLINED_FUNCTION_1_7();
    sub_231E11930();
    return sub_231CF4340(v150, v151);
  }

  sub_231CE1044(&v155, v158);
  sub_231CB51C4(v158, v157);
  v106 = swift_dynamicCast();
  v107 = v79;
  v108 = v153;
  if (v106)
  {
    v157[0] = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
    OUTLINED_FUNCTION_1_7();
    sub_231E11940();
  }

  else
  {
    sub_231CB4EEC();
    OUTLINED_FUNCTION_3_8();
    v125 = v145;
    v126(v145);
    v127 = v152;
    v128 = v20;
    v129 = v149;
    (*(v152 + 16))(v20, v108, v149);
    v130 = v26;
    v131 = v107;
    v132 = sub_231E10E10();
    v133 = sub_231E11AD0();
    if (os_log_type_enabled(v132, v133))
    {
      OUTLINED_FUNCTION_9_1();
      v134 = OUTLINED_FUNCTION_6_1();
      v153 = v130;
      v135 = v134;
      *&v157[0] = v134;
      *v125 = 136315138;
      sub_231E10690();
      v136 = v128;
      v138 = v137;
      (*(v127 + 8))(v136, v129);
      v139 = OUTLINED_FUNCTION_4_6();
      v141 = sub_231CB5000(v139, v138, v140);

      *(v125 + 4) = v141;
      _os_log_impl(&dword_231CAE000, v132, v133, "Invalid type for full content of message: %s, expecting string", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v135);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v131 + 8))(v145, v153);
    }

    else
    {

      (*(v127 + 8))(v128, v129);
      (*(v107 + 8))(v125, v130);
    }

    sub_231CF43AC();
    v142 = OUTLINED_FUNCTION_7_5();
    *v143 = 0x8000000000000018;
    *&v157[0] = v142;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
    OUTLINED_FUNCTION_1_7();
    sub_231E11930();
  }

  sub_231CF4340(v83, v151);
  return __swift_destroy_boxed_opaque_existential_0(v158);
}

uint64_t sub_231CF4120(uint64_t *a1, uint64_t *a2, void *a3)
{
  v7 = *(sub_231E106A0() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78) - 8);
  v11 = v3 + ((v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_231CF3480(a1, a2, a3, v3 + v8, v11);
}

double sub_231CF4218@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_231CF44AC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_231CB51C4(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_231CF427C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_231E0F840();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_231CF4340(v4, v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231CF4340(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_231CF4354(a1, a2);
  }

  return a1;
}

uint64_t sub_231CF4354(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_231CF43AC()
{
  result = qword_27DD7A160[0];
  if (!qword_27DD7A160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD7A160);
  }

  return result;
}

uint64_t sub_231CF4400(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_231CF44AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_231E11D00();

  return sub_231CF44F0(a1, v5);
}

unint64_t sub_231CF44F0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_231CF45B4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x23837D210](v8, a1);
    sub_231CF4458(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t get_enum_tag_for_layout_string_22ProactiveSummarization19MessageContentError33_EF1DB716D889276C42E85C11934D6C90LLO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_231CF4638(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void *sub_231CF468C(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_5_5(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void *sub_231CF46E4(void *a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *a1 & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return OUTLINED_FUNCTION_5_5(a1, v2);
}

uint64_t OUTLINED_FUNCTION_1_7()
{
  result = v0 - 168;
  v2 = *(v0 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return swift_allocError();
}

void sub_231CF4764()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v55 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_104_1();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v55 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - v22;
  sub_231CFE0D8(v2, &v55 - v22, &qword_27DD74530, &qword_231E17080);
  v24 = sub_231E113A0();
  OUTLINED_FUNCTION_28_2(v23);
  if (v25)
  {
    sub_231CC154C(v23, &qword_27DD74530, &qword_231E17080);
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v26 = sub_231E11350();
    v59 = v27;
    v60 = v26;
    OUTLINED_FUNCTION_12_5();
    (*(v28 + 8))(v23, v24);
  }

  sub_231CFE0D8(v2, v21, &qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_28_2(v21);
  if (v25)
  {
    sub_231CC154C(v21, &qword_27DD74530, &qword_231E17080);
    v57 = 0;
    v58 = 0;
  }

  else
  {
    v29 = sub_231E11340();
    v57 = v30;
    v58 = v29;
    OUTLINED_FUNCTION_12_5();
    (*(v31 + 8))(v21, v24);
  }

  sub_231CFE0D8(v2, v0, &qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_28_2(v0);
  if (v25)
  {
    sub_231CC154C(v0, &qword_27DD74530, &qword_231E17080);
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v32 = sub_231E11380();
    v55 = v33;
    v56 = v32;
    OUTLINED_FUNCTION_12_5();
    (*(v34 + 8))(v0, v24);
  }

  sub_231CFE0D8(v2, v17, &qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_28_2(v17);
  if (v25)
  {
    sub_231CC154C(v17, &qword_27DD74530, &qword_231E17080);
    v35 = 0;
    v37 = 0;
  }

  else
  {
    v35 = sub_231E11360();
    v37 = v36;
    OUTLINED_FUNCTION_12_5();
    v39 = *(v38 + 8);
    v40 = OUTLINED_FUNCTION_83();
    v41(v40);
  }

  sub_231CFE0D8(v2, v14, &qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_28_2(v14);
  if (v25)
  {
    sub_231CC154C(v14, &qword_27DD74530, &qword_231E17080);
    v42 = 0;
    v44 = 0;
  }

  else
  {
    v42 = sub_231E11390();
    v44 = v43;
    OUTLINED_FUNCTION_12_5();
    (*(v45 + 8))(v14, v24);
  }

  sub_231CFE0D8(v2, v11, &qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_28_2(v11);
  if (v25)
  {
    v46 = OUTLINED_FUNCTION_102_0();
    sub_231CC154C(v46, v47, &qword_231E17080);
    sub_231CC154C(v11, &qword_27DD74530, &qword_231E17080);
    v48 = 0;
    v50 = 0;
  }

  else
  {
    v48 = sub_231E11370();
    v50 = v49;
    sub_231CC154C(v2, &qword_27DD74530, &qword_231E17080);
    OUTLINED_FUNCTION_12_5();
    (*(v51 + 8))(v11, v24);
  }

  v52 = v59;
  *v4 = v60;
  v4[1] = v52;
  v53 = v57;
  v4[2] = v58;
  v4[3] = v53;
  v54 = v55;
  v4[4] = v56;
  v4[5] = v54;
  v4[6] = v35;
  v4[7] = v37;
  v4[8] = v42;
  v4[9] = v44;
  v4[10] = v48;
  v4[11] = v50;
  OUTLINED_FUNCTION_113();
}

void sub_231CF4BD8()
{
  OUTLINED_FUNCTION_118();
  v4 = sub_231E11180();
  v5 = OUTLINED_FUNCTION_24(v4);
  v41[2] = v6;
  v42 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_139();
  v41[1] = v9;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v10);
  v41[0] = v41 - v11;
  OUTLINED_FUNCTION_3_0();
  v12 = sub_231E106E0();
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v20 = v19 - v18;
  v44 = MEMORY[0x277D84FA0];
  sub_231E106D0();
  OUTLINED_FUNCTION_36_1();
  sub_231CFEB58(v21, v22);
  v43 = v1;
  OUTLINED_FUNCTION_99_1();
  v23 = sub_231E11C90();
  v24 = *(v15 + 8);
  v24(v20, v12);
  if (v23)
  {
    v25 = *MEMORY[0x277D4B058];
    v26 = OUTLINED_FUNCTION_46_2();
    v27 = v42;
    v28(v26);
    OUTLINED_FUNCTION_112_1();
    v29 = *(v2 + 8);
    v2 += 8;
    v29(v0, v27);
  }

  sub_231E106B0();
  OUTLINED_FUNCTION_99_1();
  v30 = sub_231E11C90();
  v24(v20, v12);
  if (v30)
  {
    v31 = *MEMORY[0x277D4B048];
    v32 = OUTLINED_FUNCTION_46_2();
    v33 = v42;
    v34(v32);
    OUTLINED_FUNCTION_112_1();
    (*(v2 + 8))(v0, v33);
  }

  sub_231E106C0();
  OUTLINED_FUNCTION_99_1();
  v35 = sub_231E11C90();
  v24(v20, v12);
  if (v35)
  {
    v36 = *MEMORY[0x277D4B050];
    v37 = OUTLINED_FUNCTION_46_2();
    v38 = v42;
    v39(v37);
    v40 = v41[0];
    sub_231CFCCB0(v41[0], v3);
    (*(v2 + 8))(v40, v38);
  }

  OUTLINED_FUNCTION_113();
}

void *sub_231CF4E98@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a5;
  v85 = __src;
  v86 = a4;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v82 = v12;
  OUTLINED_FUNCTION_3_0();
  v13 = sub_231E0F5E0();
  v14 = OUTLINED_FUNCTION_24(v13);
  v83 = v15;
  v84 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  v22 = OUTLINED_FUNCTION_47(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_139();
  v80 = v25;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_104_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v78 - v28;
  v30 = sub_231E106E0();
  v31 = OUTLINED_FUNCTION_24(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_1();
  sub_231E106D0();
  OUTLINED_FUNCTION_36_1();
  sub_231CFEB58(v36, v37);
  v89 = a3;
  LOBYTE(a3) = sub_231E11C90();
  v38 = *(v33 + 8);
  v39 = OUTLINED_FUNCTION_101_1();
  v87 = v40;
  v40(v39);
  if (a3)
  {
    v79 = a2;
    sub_231E11440();
    v41 = sub_231E0F5F0();
    if (__swift_getEnumTagSinglePayload(v29, 1, v41) == 1)
    {

      sub_231CFEAB0(v85);
      sub_231CC154C(v29, &qword_27DD74470, &qword_231E17120);
      v42 = 1;
      a2 = v79;
LABEL_22:
      sub_231CFEB04();
      swift_allocError();
      *v73 = v42;
      swift_willThrow();
      v74 = OUTLINED_FUNCTION_69_2();
      v75(v74);
      v76 = sub_231E11450();
      OUTLINED_FUNCTION_12(v76);
      return (*(v77 + 8))(a2);
    }

    sub_231E0F5C0();
    (*(*(v41 - 8) + 8))(v29, v41);
    sub_231E0F5D0();
    v43 = OUTLINED_FUNCTION_97_1();
    v44(v43);
    a2 = v79;
    if (v20 <= 0)
    {

      sub_231CFEAB0(v85);
      v42 = 1;
      goto LABEL_22;
    }
  }

  sub_231E106C0();
  v45 = OUTLINED_FUNCTION_117_1();
  v46 = OUTLINED_FUNCTION_101_1();
  v87(v46);
  if (v45)
  {
    sub_231E11430();
    v47 = sub_231E0F5F0();
    if (__swift_getEnumTagSinglePayload(v5, 1, v47) == 1)
    {

      sub_231CFEAB0(v85);
      sub_231CC154C(v5, &qword_27DD74470, &qword_231E17120);
LABEL_19:
      v42 = 2;
      goto LABEL_22;
    }

    sub_231E0F5C0();
    (*(*(v47 - 8) + 8))(v5, v47);
    sub_231E0F5D0();
    v48 = OUTLINED_FUNCTION_97_1();
    v49(v48);
    if (v20 <= 0)
    {

      sub_231CFEAB0(v85);
      goto LABEL_19;
    }
  }

  sub_231E106B0();
  v50 = OUTLINED_FUNCTION_117_1();
  v51 = OUTLINED_FUNCTION_101_1();
  v87(v51);
  v52 = v82;
  if (v50)
  {
    v53 = v80;
    sub_231E11420();
    v54 = sub_231E0F5F0();
    if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
    {

      sub_231CFEAB0(v85);
      sub_231CC154C(v53, &qword_27DD74470, &qword_231E17120);
LABEL_21:
      v42 = 3;
      goto LABEL_22;
    }

    sub_231E0F5C0();
    OUTLINED_FUNCTION_16();
    (*(v55 + 8))(v53, v54);
    v56 = sub_231E0F5D0();
    (*(v83 + 8))(v20, v84);
    if (v56 <= 0)
    {

      sub_231CFEAB0(v85);
      goto LABEL_21;
    }
  }

  v57 = v81;
  sub_231E11420();
  v58 = type metadata accessor for SummarizerResult();
  v59 = v57 + v58[5];
  sub_231E11430();
  v60 = v57 + v58[6];
  sub_231E11440();
  sub_231E11400();
  v61 = sub_231E113C0();
  if (__swift_getEnumTagSinglePayload(v52, 1, v61) == 1)
  {
    v62 = OUTLINED_FUNCTION_69_2();
    v63(v62);
    v64 = sub_231E11450();
    OUTLINED_FUNCTION_12(v64);
    (*(v65 + 8))(a2);
    sub_231CC154C(v52, &qword_27DD74548, &qword_231E170A0);
    v66 = 2;
  }

  else
  {
    v67 = sub_231E113B0();
    v68 = OUTLINED_FUNCTION_69_2();
    v69(v68);
    v70 = sub_231E11450();
    OUTLINED_FUNCTION_12(v70);
    (*(v71 + 8))(a2);
    (*(*(v61 - 8) + 8))(v52, v61);
    v66 = v67 & 1;
  }

  *(v57 + v58[7]) = v66;
  result = memcpy((v57 + v58[8]), __dst, 0x60uLL);
  *(v57 + v58[9]) = v86;
  return result;
}

uint64_t sub_231CF559C()
{
  v0 = swift_allocObject();
  v1 = sub_231E11250();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_231E11240();
  return v0;
}

uint64_t sub_231CF55F0()
{
  v1 = sub_231E11190();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 - v7;
  v10 = *(v0 + 16);
  (*(v4 + 104))(v8 - v7, *MEMORY[0x277D4B078], v1);
  sub_231E111C0();
  return (*(v4 + 8))(v9, v1);
}

void sub_231CF56C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_118();
  a19 = v20;
  a20 = v21;
  v189 = v22;
  v178 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74538, &unk_231E17088);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_1();
  v177 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_1();
  v176 = v35;
  OUTLINED_FUNCTION_3_0();
  v175 = sub_231E0F950();
  v36 = OUTLINED_FUNCTION_24(v175);
  v188 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_1();
  v183 = v41 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74540, &qword_231E23510);
  OUTLINED_FUNCTION_47(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_1();
  v174 = v46;
  OUTLINED_FUNCTION_3_0();
  v194 = sub_231E113F0();
  v47 = OUTLINED_FUNCTION_24(v194);
  v187 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_139();
  v193 = v51;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v52);
  v192 = v166 - v53;
  OUTLINED_FUNCTION_3_0();
  v173 = sub_231E10400();
  v54 = OUTLINED_FUNCTION_24(v173);
  v181 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_4_1();
  v191 = v59 - v58;
  OUTLINED_FUNCTION_3_0();
  v179 = sub_231E10470();
  v60 = OUTLINED_FUNCTION_24(v179);
  v182 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_4_1();
  v184 = v65 - v64;
  OUTLINED_FUNCTION_3_0();
  v195 = sub_231E10F70();
  v66 = OUTLINED_FUNCTION_24(v195);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_139();
  v190 = v71;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v72);
  v74 = v166 - v73;
  v75 = sub_231E0F4A0();
  v76 = OUTLINED_FUNCTION_24(v75);
  v78 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_4_1();
  v83 = v82 - v81;
  v84 = sub_231E10210();
  v85 = OUTLINED_FUNCTION_24(v84);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_4_1();
  v92 = v91 - v90;
  v180 = v25;
  sub_231E10220();
  v93 = sub_231E10200();
  v95 = v94;
  (*(v87 + 8))(v92, v84);
  v96 = MEMORY[0x277D84F90];
  if (v95)
  {
    v196 = v93;
    v197 = v95;
    sub_231E0F490();
    sub_231CE11D8();
    v97 = sub_231E11C30();
    v99 = v98;
    (*(v78 + 8))(v83, v75);

    v100 = HIBYTE(v99) & 0xF;
    if ((v99 & 0x2000000000000000) == 0)
    {
      v100 = v97 & 0xFFFFFFFFFFFFLL;
    }

    if (v100)
    {
      type metadata accessor for GenerativeModelsHandleResolver();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
      v101 = *(v181 + 72);
      v102 = (*(v181 + 80) + 32) & ~*(v181 + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_231E138E0;
      sub_231E100E0();
      sub_231E10150();
      v196 = v103;
      OUTLINED_FUNCTION_0_11();
      sub_231CFDB0C(v104, v105, MEMORY[0x277D42328]);
      v106 = sub_231E090CC();
      sub_231CD1550(v106, v178, v74);

      v96 = sub_231CFDE40(0, 1, 1, MEMORY[0x277D84F90]);
      v108 = *(v96 + 16);
      v107 = *(v96 + 24);
      if (v108 >= v107 >> 1)
      {
        v159 = OUTLINED_FUNCTION_84_1(v107);
        v96 = sub_231CFDE40(v159, v160, v161, v162);
      }

      *(v96 + 16) = v108 + 1;
      (*(v68 + 32))(v96 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v108, v74, v195);
    }

    else
    {
      v96 = MEMORY[0x277D84F90];
    }
  }

  v109 = v189;
  v110 = *(v189 + 16);
  if (v110)
  {
    v172 = type metadata accessor for GenerativeModelsHandleResolver();
    v171 = *(v182 + 16);
    v111 = *(v182 + 80);
    OUTLINED_FUNCTION_79();
    v113 = v109 + v112;
    v170 = *(v114 + 56);
    v169 = v181 + 32;
    v168 = v187 + 16;
    v166[0] = v188 + 32;
    v167 = *MEMORY[0x277D4B3A8];
    v166[4] = v68 + 16;
    v166[3] = v68 + 8;
    v166[2] = v187 + 8;
    v182 = v114;
    v166[1] = v114 - 8;
    do
    {
      v188 = v110;
      v189 = v96;
      v115 = OUTLINED_FUNCTION_70();
      v171(v115);
      v116 = sub_231E10150();
      sub_231E100E0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_231CFDF64(0, *(v116 + 16) + 1, 1, v116);
      }

      v118 = *(v116 + 16);
      v117 = *(v116 + 24);
      if (v118 >= v117 >> 1)
      {
        v155 = OUTLINED_FUNCTION_84_1(v117);
        v116 = sub_231CFDF64(v155, v156, v157, v158);
      }

      *(v116 + 16) = v118 + 1;
      v119 = *(v181 + 80);
      OUTLINED_FUNCTION_79();
      (*(v121 + 32))(v116 + v120 + *(v121 + 72) * v118, v191, v173);

      v122 = sub_231E090CC();
      sub_231E10430();
      sub_231E10420();
      v123 = sub_231E10440();
      if (v124)
      {
        v125 = v123;
      }

      else
      {
        v125 = 0;
      }

      if (v124)
      {
        v126 = v124;
      }

      else
      {
        v126 = 0xE000000000000000;
      }

      v127 = v174;
      *v174 = v125;
      *(v127 + 8) = v126;
      v128 = sub_231E113D0();
      OUTLINED_FUNCTION_12(v128);
      (*(v129 + 104))(v127, v167, v128);
      __swift_storeEnumTagSinglePayload(v127, 0, 1, v128);
      v130 = v192;
      sub_231E113E0();
      v131 = sub_231E10000();
      v185 = v132;
      v186 = v131;
      OUTLINED_FUNCTION_66_2(&a9);
      v133 = v130;
      v134 = v184;
      v135(v193, v133, v194);
      v136 = sub_231E10150();
      MEMORY[0x28223BE20](v136);
      v187 = v122;
      v164 = v122;
      v165 = v178;
      sub_231CD1BA8(sub_231CD1B30, v163, v136);

      v137 = v176;
      sub_231E10410();
      v138 = OUTLINED_FUNCTION_91_1();
      v139 = v175;
      if (__swift_getEnumTagSinglePayload(v138, v140, v175) == 1)
      {
        sub_231E101B0();
        v141 = OUTLINED_FUNCTION_91_1();
        v134 = v184;
        if (__swift_getEnumTagSinglePayload(v141, v142, v139) != 1)
        {
          sub_231CC154C(v137, &dword_27DD74AD0, &qword_231E16C40);
        }
      }

      else
      {
        OUTLINED_FUNCTION_66_2(&v194);
        v143(v183, v137, v139);
      }

      sub_231E102B0();

      sub_231E102D0();
      v144 = sub_231E10450();
      v163[1] = v145;
      v164 = MEMORY[0x277D84F90];
      v163[0] = v144;
      v146 = v190;
      sub_231E10F60();
      OUTLINED_FUNCTION_66_2(&v198);
      v147 = v177;
      v148(v177, v146, v195);
      v96 = v189;
      v149 = *(v189 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v196 = v96;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v149 >= *(v96 + 24) >> 1)
      {
        v96 = sub_231CFDE40(isUniquelyReferenced_nonNull_native, v149 + 1, 1, v96);
        v196 = v96;
      }

      v151 = v179;
      sub_231CFDC98(0, 0, 1, v147);

      OUTLINED_FUNCTION_66_2(&v197);
      v152(v190, v195);
      OUTLINED_FUNCTION_66_2(&v196);
      v153(v192, v194);
      OUTLINED_FUNCTION_66_2(&v195);
      v154(v134, v151);
      v113 += v170;
      v110 = v188 - 1;
    }

    while (v188 != 1);
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231CF61A4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_2(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_120_0(v10);
  v0[22] = v11;
  OUTLINED_FUNCTION_6(v11);
  v0[23] = v12;
  v14 = *(v13 + 64);
  v0[24] = OUTLINED_FUNCTION_55();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_69();
  v0[26] = OUTLINED_FUNCTION_89_1(v18);
  v19 = sub_231E11110();
  v0[27] = v19;
  OUTLINED_FUNCTION_6(v19);
  v0[28] = v20;
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_55();
  v24 = OUTLINED_FUNCTION_119_0(v23);
  v0[30] = v24;
  OUTLINED_FUNCTION_6(v24);
  v0[31] = v25;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_69();
  v29 = OUTLINED_FUNCTION_87_1(v28);
  OUTLINED_FUNCTION_65_2(v29);
  v30 = sub_231E110C0();
  v0[34] = v30;
  OUTLINED_FUNCTION_6(v30);
  v0[35] = v31;
  v33 = *(v32 + 64);
  v0[36] = OUTLINED_FUNCTION_55();
  v34 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_231CF6378()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_71_2();
  sub_231CF4BD8();
  sub_231E110B0();
  v2 = *(v1 + 16);
  type metadata accessor for GenerativeModelsHandleResolver();
  sub_231E10930();
  sub_231E10970();
  OUTLINED_FUNCTION_0_11();
  sub_231CFDB0C(v3, v4, MEMORY[0x277D42328]);
  sub_231E090CC();
  OUTLINED_FUNCTION_98_1();
  sub_231DF2E4C(v5, v6, v7);

  v8 = *(MEMORY[0x277D4B148] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 296) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_63_1(v9);

  return MEMORY[0x2821AB700](v11);
}

uint64_t sub_231CF64A4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v5 = v4[37];
  v6 = v4[29];
  v7 = v4[28];
  v8 = v4[27];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v11 + 304) = v0;

  v12 = OUTLINED_FUNCTION_43_4();
  v13(v12);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CF65F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_2(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_120_0(v10);
  v0[22] = v11;
  OUTLINED_FUNCTION_6(v11);
  v0[23] = v12;
  v14 = *(v13 + 64);
  v0[24] = OUTLINED_FUNCTION_55();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_69();
  v0[26] = OUTLINED_FUNCTION_89_1(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74550, &qword_231E170B0);
  v0[27] = v19;
  OUTLINED_FUNCTION_6(v19);
  v0[28] = v20;
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_55();
  v24 = OUTLINED_FUNCTION_119_0(v23);
  v0[30] = v24;
  OUTLINED_FUNCTION_6(v24);
  v0[31] = v25;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_69();
  v29 = OUTLINED_FUNCTION_87_1(v28);
  OUTLINED_FUNCTION_65_2(v29);
  v30 = sub_231E10A30();
  v0[34] = v30;
  OUTLINED_FUNCTION_6(v30);
  v0[35] = v31;
  v33 = *(v32 + 64);
  v0[36] = OUTLINED_FUNCTION_55();
  v34 = sub_231E11100();
  v0[37] = v34;
  OUTLINED_FUNCTION_6(v34);
  v0[38] = v35;
  v37 = *(v36 + 64);
  v0[39] = OUTLINED_FUNCTION_55();
  v38 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

uint64_t sub_231CF6820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, void (*a12)(uint64_t, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_85_1();
  sub_231CF4BD8();
  v22 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_83();
  sub_231E110B0();
  v23 = *(v19 + 16);
  if (v23)
  {
    v24 = v21[35];
    a12 = *(v24 + 16);
    a13 = v24 + 16;
    OUTLINED_FUNCTION_60_2(v21[15]);
    a10 = v25;
    a11 = v26;
    do
    {
      a12(v21[36], v18, v21[34]);
      v27 = sub_231E10930();

      v28 = MEMORY[0x277D42328];
      sub_231CFDB0C(v27, sub_231CFDF64, MEMORY[0x277D42328]);
      v20 = v22;
      v29 = sub_231E10970();
      a14 = v22;
      sub_231CFDB0C(v29, sub_231CFDF64, v28);

      v30 = *a10;
      v31 = OUTLINED_FUNCTION_70();
      v32(v31);
      v18 += a11;
      --v23;
    }

    while (v23);
  }

  OUTLINED_FUNCTION_109_1();
  v33 = sub_231E090CC();
  v34 = OUTLINED_FUNCTION_110_1(v33);
  *(v34 + 16) = v22;
  *(v34 + 24) = v20;
  OUTLINED_FUNCTION_86_1(sub_231CFE088, v35, v36, MEMORY[0x277D4B000], sub_231CFE4B0, MEMORY[0x277D42428]);

  sub_231E11110();
  sub_231CFEB58(&qword_2814CAFF0, MEMORY[0x277D4B000]);
  OUTLINED_FUNCTION_25();
  sub_231E11140();
  v37 = *(MEMORY[0x277D4B160] + 4);
  v38 = swift_task_alloc();
  v21[41] = v38;
  *v38 = v21;
  OUTLINED_FUNCTION_81_1(v38);
  OUTLINED_FUNCTION_107_1();

  return MEMORY[0x2821AB718](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231CF6A9C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v5 = v4[41];
  v6 = v4[29];
  v7 = v4[28];
  v8 = v4[27];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v11 + 336) = v0;

  v12 = OUTLINED_FUNCTION_43_4();
  v13(v12);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CF6BEC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v33 = a1;
  v34 = a2;
  v32 = a4(0);
  OUTLINED_FUNCTION_24(v32);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
    return v19;
  }

  v35 = MEMORY[0x277D84F90];
  v29 = a5;
  a5(0, v18, 0);
  v19 = v35;
  v20 = a6(0);
  OUTLINED_FUNCTION_6(v20);
  v22 = a3 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v31 = v12 + 32;
  v30 = *(v23 + 72);
  while (1)
  {
    v33(v22);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v35 = v19;
    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    if (v25 >= v24 >> 1)
    {
      v29(v24 > 1, v25 + 1, 1);
      v19 = v35;
    }

    *(v19 + 16) = v25 + 1;
    v26 = *(v12 + 80);
    OUTLINED_FUNCTION_79();
    (*(v12 + 32))(v19 + v27 + *(v12 + 72) * v25, v17, v32);
    v22 += v30;
    if (!--v18)
    {
      return v19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231CF6DF0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_2(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_120_0(v10);
  v0[22] = v11;
  OUTLINED_FUNCTION_6(v11);
  v0[23] = v12;
  v14 = *(v13 + 64);
  v0[24] = OUTLINED_FUNCTION_55();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_69();
  v0[26] = OUTLINED_FUNCTION_89_1(v18);
  v19 = sub_231E11020();
  v0[27] = v19;
  OUTLINED_FUNCTION_6(v19);
  v0[28] = v20;
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_55();
  v24 = OUTLINED_FUNCTION_119_0(v23);
  v0[30] = v24;
  OUTLINED_FUNCTION_6(v24);
  v0[31] = v25;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_69();
  v29 = OUTLINED_FUNCTION_87_1(v28);
  OUTLINED_FUNCTION_65_2(v29);
  v30 = sub_231E10F90();
  v0[34] = v30;
  OUTLINED_FUNCTION_6(v30);
  v0[35] = v31;
  v33 = *(v32 + 64);
  v0[36] = OUTLINED_FUNCTION_55();
  v34 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_231CF6FC4()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_71_2();
  sub_231CF4BD8();
  sub_231E10F80();
  v2 = *(v1 + 16);
  type metadata accessor for GenerativeModelsHandleResolver();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
  v3 = OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_231E138E0;
  sub_231E104F0();
  sub_231E10590();
  OUTLINED_FUNCTION_0_11();
  sub_231CFDB0C(v8, v9, MEMORY[0x277D42328]);
  sub_231E090CC();
  OUTLINED_FUNCTION_98_1();
  sub_231DC2418(v10, v11, v12);

  v13 = *(MEMORY[0x277D4B140] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 296) = v14;
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_63_1(v14);

  return MEMORY[0x2821AB6F8](v16);
}

uint64_t sub_231CF716C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v5 = v4[37];
  v6 = v4[29];
  v7 = v4[28];
  v8 = v4[27];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v11 + 304) = v0;

  v12 = OUTLINED_FUNCTION_43_4();
  v13(v12);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CF72BC()
{
  OUTLINED_FUNCTION_72_1();
  v1 = OUTLINED_FUNCTION_14_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_13_5();
  v4(v3);
  sub_231E11400();
  v5 = sub_231E113C0();
  if (OUTLINED_FUNCTION_29_3(v5) == 1)
  {
    sub_231CC154C(v0[21], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v7 = *(v6 + 8);
    v8 = OUTLINED_FUNCTION_48();
    v9(v8);
  }

  v10 = v0[38];
  v11 = v0[35];
  v24 = v0[34];
  v25 = v0[36];
  v23 = v0[33];
  v12 = v0[31];
  v13 = v0[32];
  v14 = v0[30];
  v15 = v0[26];
  v16 = v0[24];
  v17 = v0[14];
  sub_231CFE0D8(v15, v0[25], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  sub_231CF4E98(v0 + 2, v13, v16, 0, v17);
  sub_231CC154C(v15, &qword_27DD74530, &qword_231E17080);
  (*(v12 + 8))(v23, v14);
  (*(v11 + 8))(v25, v24);
  v18 = v0[36];
  v19 = v0[32];
  v20 = v0[33];
  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_19();

  return v21();
}

uint64_t sub_231CF74B8()
{
  OUTLINED_FUNCTION_47_0();
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = v0[38];
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231CF7580()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_2(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_120_0(v10);
  v0[22] = v11;
  OUTLINED_FUNCTION_6(v11);
  v0[23] = v12;
  v14 = *(v13 + 64);
  v0[24] = OUTLINED_FUNCTION_55();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_69();
  v0[26] = OUTLINED_FUNCTION_89_1(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74558, &qword_231E170C8);
  v0[27] = v19;
  OUTLINED_FUNCTION_6(v19);
  v0[28] = v20;
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_55();
  v24 = OUTLINED_FUNCTION_119_0(v23);
  v0[30] = v24;
  OUTLINED_FUNCTION_6(v24);
  v0[31] = v25;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_69();
  v29 = OUTLINED_FUNCTION_87_1(v28);
  OUTLINED_FUNCTION_65_2(v29);
  v30 = sub_231E106A0();
  v0[34] = v30;
  OUTLINED_FUNCTION_6(v30);
  v0[35] = v31;
  v33 = *(v32 + 64);
  v0[36] = OUTLINED_FUNCTION_55();
  v34 = sub_231E10FD0();
  v0[37] = v34;
  OUTLINED_FUNCTION_6(v34);
  v0[38] = v35;
  v37 = *(v36 + 64);
  v0[39] = OUTLINED_FUNCTION_55();
  v38 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

uint64_t sub_231CF7A68()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v5 = v4[41];
  v6 = v4[29];
  v7 = v4[28];
  v8 = v4[27];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v11 + 336) = v0;

  v12 = OUTLINED_FUNCTION_43_4();
  v13(v12);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CF7BB8()
{
  OUTLINED_FUNCTION_72_1();
  v1 = OUTLINED_FUNCTION_14_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_13_5();
  v4(v3);
  sub_231E11400();
  v5 = sub_231E113C0();
  if (OUTLINED_FUNCTION_29_3(v5) == 1)
  {
    sub_231CC154C(v0[21], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v7 = *(v6 + 8);
    v8 = OUTLINED_FUNCTION_48();
    v9(v8);
  }

  v10 = v0[42];
  v11 = v0[40];
  v12 = v0[38];
  v26 = v0[37];
  v27 = v0[39];
  v13 = v0[32];
  v14 = v0[31];
  v24 = v0[30];
  v25 = v0[33];
  v15 = v0[26];
  v16 = v0[24];
  v17 = v0[14];
  sub_231CFE0D8(v15, v0[25], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  sub_231CF4E98(v0 + 2, v13, v16, 0, v17);

  sub_231CC154C(v15, &qword_27DD74530, &qword_231E17080);
  (*(v14 + 8))(v25, v24);
  (*(v12 + 8))(v27, v26);
  v18 = v0[39];
  v19 = v0[36];
  v21 = v0[32];
  v20 = v0[33];
  OUTLINED_FUNCTION_111_1();

  OUTLINED_FUNCTION_19();

  return v22();
}

uint64_t sub_231CF7DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v14 = v12[39];
  v13 = v12[40];
  v15 = v12[37];
  v16 = v12[38];

  v17 = OUTLINED_FUNCTION_30_3();
  v18(v17);
  v19 = v12[42];
  v20 = v12[39];
  v21 = v12[36];
  v23 = v12[32];
  v22 = v12[33];
  OUTLINED_FUNCTION_111_1();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_44();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_231CF7E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  *(v10 + 296) = a9;
  *(v10 + 304) = v9;
  *(v10 + 673) = v11;
  *(v10 + 672) = v12;
  OUTLINED_FUNCTION_61_2(v13, v14, v15, v16, v17, v12, v11, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  *(v10 + 344) = OUTLINED_FUNCTION_69();
  *(v10 + 352) = swift_task_alloc();
  v22 = sub_231E106E0();
  *(v10 + 360) = v22;
  OUTLINED_FUNCTION_6(v22);
  *(v10 + 368) = v23;
  v25 = *(v24 + 64);
  *(v10 + 376) = OUTLINED_FUNCTION_69();
  *(v10 + 384) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  *(v10 + 392) = OUTLINED_FUNCTION_69();
  *(v10 + 400) = swift_task_alloc();
  *(v10 + 408) = swift_task_alloc();
  v29 = sub_231E10F70();
  *(v10 + 416) = v29;
  OUTLINED_FUNCTION_6(v29);
  *(v10 + 424) = v30;
  v32 = *(v31 + 64);
  *(v10 + 432) = OUTLINED_FUNCTION_69();
  *(v10 + 440) = swift_task_alloc();
  v33 = sub_231E11450();
  *(v10 + 448) = v33;
  OUTLINED_FUNCTION_6(v33);
  *(v10 + 456) = v34;
  v36 = *(v35 + 64);
  *(v10 + 464) = OUTLINED_FUNCTION_69();
  *(v10 + 472) = swift_task_alloc();
  *(v10 + 480) = swift_task_alloc();
  *(v10 + 488) = swift_task_alloc();
  *(v10 + 496) = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_47(v37);
  v39 = *(v38 + 64);
  *(v10 + 504) = OUTLINED_FUNCTION_69();
  *(v10 + 512) = swift_task_alloc();
  *(v10 + 520) = swift_task_alloc();
  v40 = sub_231E10F00();
  *(v10 + 528) = v40;
  OUTLINED_FUNCTION_6(v40);
  *(v10 + 536) = v41;
  v43 = *(v42 + 64);
  *(v10 + 544) = OUTLINED_FUNCTION_69();
  *(v10 + 552) = swift_task_alloc();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v44);
  v46 = *(v45 + 64);
  *(v10 + 560) = OUTLINED_FUNCTION_69();
  *(v10 + 568) = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v47, v48, v49);
}

uint64_t sub_231CF8164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_3();
  v11 = *(v10 + 568);
  v12 = *(v10 + 256);
  sub_231E10080();
  v13 = sub_231E10290();
  v14 = OUTLINED_FUNCTION_91_1();
  if (__swift_getEnumTagSinglePayload(v14, v15, v13) == 1)
  {
LABEL_2:
    v16 = *(v10 + 288);
    sub_231CC154C(*(v10 + 568), &qword_27DD73F98, &unk_231E170E0);
    if (*(v16 + 32))
    {
      v110 = 1;
    }

    else
    {
      v17 = *(v10 + 512);
      v18 = *(v10 + 328);
      v19 = *(v10 + 336);
      v20 = *(v10 + 312);
      v21 = *(v10 + 320);
      sub_231E11120();
      v110 = 0;
    }

    v22 = *(v10 + 504);
    v23 = *(v10 + 512);
    v24 = *(v10 + 432);
    v25 = *(v10 + 296);
    v145 = *(v10 + 544);
    v147 = *(v10 + 304);
    v142 = *(v10 + 672);
    v143 = *(v10 + 673);
    v26 = *(v10 + 272);
    v27 = *(v10 + 256);
    v140 = *(v10 + 280);
    v141 = *(v10 + 264);
    v28 = sub_231E11130();
    __swift_storeEnumTagSinglePayload(v23, v110, 1, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
    v29 = OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_6(v29);
    v31 = *(v30 + 72);
    v32 = OUTLINED_FUNCTION_19_3();
    OUTLINED_FUNCTION_68_3(v32, xmmword_231E138E0);
    sub_231E100E0();
    sub_231E10150();
    OUTLINED_FUNCTION_0_11();
    sub_231CFDB0C(v33, v34, MEMORY[0x277D42328]);
    type metadata accessor for GenerativeModelsHandleResolver();
    v35 = sub_231E090CC();
    *(v10 + 640) = v35;
    sub_231CD1550(v35, v25, v24);

    sub_231CF4BD8();
    v37 = v36;
    sub_231CFE0D8(v23, v22, &qword_27DD74560, &qword_231E170D8);
    MEMORY[0x23837C3F0](v141, v26, v37, v142, v143, v22, MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74568, &qword_231E1C7B0);
    v38 = swift_allocObject();
    *(v10 + 648) = v38;
    *(v38 + 16) = xmmword_231E138E0;
    *(v38 + 32) = sub_231E10F50() & 1;
    v39 = *(v147 + 16);
    v40 = *(MEMORY[0x277D4B138] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v10 + 656) = v41;
    *v41 = v42;
    v41[1] = sub_231CF9004;
    v43 = *(v10 + 544);
    v44 = *(v10 + 472);
    v45 = *(v10 + 432);
LABEL_6:

    return MEMORY[0x2821AB6F0](v44, v45, v43);
  }

  sub_231CFE0D8(*(v10 + 568), *(v10 + 560), &qword_27DD73F98, &unk_231E170E0);
  v46 = *(v13 - 8);
  v47 = v46[11];
  v48 = OUTLINED_FUNCTION_59_0();
  v50 = v49(v48);
  if (v50 == *MEMORY[0x277D42288])
  {
    v51 = *(v10 + 560);
    v52 = v46[12];
    v53 = OUTLINED_FUNCTION_59_0();
    v54(v53);
    *(v10 + 576) = *v51;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v10 + 584) = v55;
    *v55 = v56;
    v55[1] = sub_231CF8910;
    v57 = *(v10 + 296);
    v59 = *(v10 + 280);
    v58 = *(v10 + 288);
    v60 = *(v10 + 264);
    v61 = *(v10 + 272);
    v62 = *(v10 + 248);
    v63 = *(v10 + 256);
    v153 = *(v10 + 304);
    v152 = *(v10 + 673);
    v150 = *(v10 + 672);
    OUTLINED_FUNCTION_39();

    return sub_231CF98F4(v64, v65, v66, v67, v68, v69, v70, v71, a9, SBYTE1(a9), a10);
  }

  v73 = *(v10 + 560);
  if (v50 != *MEMORY[0x277D42290])
  {
    v107 = v46[1];
    v108 = OUTLINED_FUNCTION_59_0();
    v109(v108);
    goto LABEL_2;
  }

  v74 = v46[12];
  v75 = OUTLINED_FUNCTION_59_0();
  v76(v75);
  v77 = *v73;
  *(v10 + 232) = &unk_2846F07A0;
  *(v10 + 240) = sub_231CC7270();
  *(v10 + 208) = 3;
  v78 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0((v10 + 208));
  if ((v78 & 1) == 0)
  {

    goto LABEL_21;
  }

  v79 = *(v77 + 16);

  if (!v79)
  {
LABEL_21:
    v112 = *(v10 + 280);
    v111 = *(v10 + 288);
    sub_231CF4BD8();
    v144 = v113;
    if (*(v111 + 32))
    {
      v138 = 1;
    }

    else
    {
      v114 = *(v10 + 520);
      v115 = *(v10 + 328);
      v116 = *(v10 + 336);
      v117 = *(v10 + 312);
      v118 = *(v10 + 320);
      sub_231E11120();
      v138 = 0;
    }

    v119 = *(v10 + 552);
    v120 = *(v10 + 520);
    v121 = *(v10 + 304);
    v146 = *(v10 + 296);
    v148 = *(v10 + 440);
    v122 = *(v10 + 673);
    v123 = *(v10 + 672);
    v125 = *(v10 + 264);
    v124 = *(v10 + 272);
    v126 = *(v10 + 256);
    v127 = sub_231E11130();
    __swift_storeEnumTagSinglePayload(v120, v138, 1, v127);

    MEMORY[0x23837C3F0](v125, v124, v144, v123, v122, v120, MEMORY[0x277D84F90]);
    v128 = *(v121 + 16);
    type metadata accessor for GenerativeModelsHandleResolver();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
    v129 = OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_6(v129);
    v131 = *(v130 + 72);
    *(OUTLINED_FUNCTION_19_3() + 16) = xmmword_231E138E0;
    sub_231E100E0();
    sub_231E10150();
    OUTLINED_FUNCTION_0_11();
    sub_231CFDB0C(v132, v133, MEMORY[0x277D42328]);
    v134 = sub_231E090CC();
    sub_231CD1550(v134, v146, v148);

    v135 = *(MEMORY[0x277D4B138] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v10 + 624) = v136;
    *v136 = v137;
    v136[1] = sub_231CF8C54;
    v43 = *(v10 + 552);
    v44 = *(v10 + 496);
    v45 = *(v10 + 440);
    goto LABEL_6;
  }

  v80 = *(v10 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74570, &qword_231E170F0);
  v81 = sub_231E10340();
  OUTLINED_FUNCTION_24(v81);
  v83 = v82;
  v85 = *(v84 + 72);
  v86 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v87 = swift_allocObject();
  *(v10 + 600) = v87;
  *(v87 + 16) = xmmword_231E138E0;
  (*(v83 + 16))(v87 + v86, v80, v81);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v10 + 608) = v88;
  *v88 = v89;
  v88[1] = sub_231CF8B4C;
  v90 = *(v10 + 304);
  v91 = *(v10 + 673);
  v92 = *(v10 + 672);
  v93 = *(v10 + 280);
  v94 = *(v10 + 288);
  v95 = *(v10 + 264);
  v96 = *(v10 + 272);
  v97 = *(v10 + 248);
  v151 = *(v10 + 296);
  OUTLINED_FUNCTION_39();

  return sub_231CFAE30(v98, v99, v100, v101, v102, v103, v104, v105, a9);
}

uint64_t sub_231CF8910()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 584);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 592) = v0;

  if (!v0)
  {
    v9 = *(v3 + 576);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CF8A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  sub_231CC154C(v22[71], &qword_27DD73F98, &unk_231E170E0);
  v23 = v22[71];
  v24 = v22[70];
  v25 = v22[69];
  v26 = v22[68];
  v27 = v22[65];
  v29 = v22[63];
  v28 = v22[64];
  v31 = v22[61];
  v30 = v22[62];
  v32 = v22[59];
  v33 = v22[60];
  v34 = v22[58];
  OUTLINED_FUNCTION_11_6();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_231CF8B4C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 608);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 616) = v0;

  if (!v0)
  {
    v9 = *(v3 + 600);
    swift_setDeallocating();
    sub_231CFE3EC();
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CF8C54()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = v1[78];
  *v4 = *v2;
  *(v3 + 632) = v0;

  OUTLINED_FUNCTION_90_1();
  (*(v1[53] + 8))(*(v6 + 440), v1[52]);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CF8DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = v24[61];
  v26 = v24[62];
  OUTLINED_FUNCTION_70_1();
  v27 = OUTLINED_FUNCTION_14_2();
  v28(v27);
  v29 = OUTLINED_FUNCTION_13_5();
  v30(v29);
  sub_231E11400();
  v31 = sub_231E113C0();
  if (OUTLINED_FUNCTION_29_3(v31) == 1)
  {
    sub_231CC154C(v24[44], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v33 = *(v32 + 8);
    v34 = OUTLINED_FUNCTION_48();
    v35(v34);
  }

  v36 = v24[79];
  v37 = v24[61];
  v38 = v24[48];
  v39 = v24[31];
  sub_231CFE0D8(v24[51], v24[50], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  OUTLINED_FUNCTION_58_3(v40, v41, v24 + 14);
  v62 = v36;
  v42 = v24[71];
  v43 = v24[69];
  v44 = v24[67];
  v45 = v24[66];
  v46 = v24[62];
  v47 = v24[56];
  v48 = v24[57];
  sub_231CC154C(v24[51], &qword_27DD74530, &qword_231E17080);
  (*(v48 + 8))(v46, v47);
  (*(v44 + 8))(v43, v45);
  sub_231CC154C(v42, &qword_27DD73F98, &unk_231E170E0);
  v49 = v24[71];
  v50 = v24[70];
  v51 = v24[69];
  v52 = v24[68];
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_11_6();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v62, a21, a22, a23, a24);
}

uint64_t sub_231CF9004()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 656);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 664) = v0;

  if (v0)
  {
    v9 = *(v3 + 648);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CF9104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = v24[80];
  v26 = v24[68];
  v27 = v24[67];
  v28 = v24[66];
  v29 = v24[64];
  v31 = v24[53];
  v30 = v24[54];
  v32 = v24[52];

  v33 = *(v27 + 8);
  v34 = OUTLINED_FUNCTION_48();
  v35(v34);
  v36 = *(v31 + 8);
  v37 = OUTLINED_FUNCTION_70();
  v38(v37);
  sub_231CC154C(v29, &qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_2_7(v24[83]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231CF9268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = v24[59];
  v26 = v24[60];
  v28 = v24[57];
  v27 = v24[58];
  v29 = v24[56];
  v30 = v24[49];
  v31 = v24[46];
  v75 = v24[45];
  v76 = v24[47];
  v32 = v24[43];
  v33 = v24[35];
  (*(v24[67] + 8))(v24[68], v24[66]);
  v34 = *(v28 + 32);
  v35 = OUTLINED_FUNCTION_48();
  v36(v35);
  sub_231E11410();
  v37 = *(v28 + 16);
  v38 = OUTLINED_FUNCTION_102_0();
  v39(v38);
  (*(v31 + 16))(v76, v33, v75);
  sub_231E11400();
  v40 = sub_231E113C0();
  if (__swift_getEnumTagSinglePayload(v32, 1, v40) == 1)
  {
    sub_231CC154C(v24[43], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v42 = *(v41 + 8);
    v43 = OUTLINED_FUNCTION_48();
    v44(v43);
  }

  v45 = v24[83];
  v46 = v24[81];
  v47 = v24[58];
  v48 = v24[47];
  v49 = v24[31];
  sub_231CFE0D8(v24[49], v24[50], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  v50 = sub_231CFAD78(v46);
  sub_231CF4E98(v24 + 2, v47, v48, v50, v49);
  v77 = v45;
  v51 = v24[80];
  v52 = v24[64];
  v53 = v24[60];
  v55 = v24[56];
  v54 = v24[57];
  v57 = v24[53];
  v56 = v24[54];
  v58 = v24[52];
  v59 = v24[49];

  sub_231CC154C(v59, &qword_27DD74530, &qword_231E17080);
  (*(v54 + 8))(v53, v55);
  v60 = OUTLINED_FUNCTION_67_2();
  v61(v60);
  sub_231CC154C(v52, &qword_27DD74560, &qword_231E170D8);
  v62 = v24[71];
  v63 = v24[70];
  v64 = v24[69];
  v65 = v24[68];
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_11_6();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v75, v77, a21, a22, a23, a24);
}

uint64_t sub_231CF9560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = v24[72];
  v26 = v24[71];

  sub_231CC154C(v26, &qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_2_7(v24[74]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231CF9688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = v24[75];
  v26 = v24[71];
  swift_setDeallocating();
  sub_231CFE3EC();
  sub_231CC154C(v26, &qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_2_7(v24[77]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231CF97B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_62_0();
  v25 = v24[71];
  (*(v24[67] + 8))(v24[69], v24[66]);
  sub_231CC154C(v25, &qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_2_7(v24[79]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_51_2();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231CF98F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11)
{
  OUTLINED_FUNCTION_18();
  *(v11 + 176) = v12;
  *(v11 + 184) = a11;
  *(v11 + 521) = a10;
  *(v11 + 520) = a9;
  *(v11 + 160) = v13;
  *(v11 + 168) = v14;
  *(v11 + 144) = v15;
  *(v11 + 152) = v16;
  *(v11 + 128) = v17;
  *(v11 + 136) = v18;
  *(v11 + 120) = v19;
  v20 = v18[1];
  *(v11 + 192) = *v18;
  *(v11 + 208) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v21);
  v23 = *(v22 + 64);
  *(v11 + 224) = OUTLINED_FUNCTION_55();
  v24 = sub_231E106E0();
  *(v11 + 232) = v24;
  OUTLINED_FUNCTION_6(v24);
  *(v11 + 240) = v25;
  v27 = *(v26 + 64);
  *(v11 + 248) = OUTLINED_FUNCTION_55();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  v31 = OUTLINED_FUNCTION_69();
  v32 = OUTLINED_FUNCTION_87_1(v31);
  OUTLINED_FUNCTION_65_2(v32);
  v33 = sub_231E10F00();
  *(v11 + 272) = v33;
  OUTLINED_FUNCTION_6(v33);
  *(v11 + 280) = v34;
  v36 = *(v35 + 64);
  *(v11 + 288) = OUTLINED_FUNCTION_55();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74578, &qword_231E17108);
  *(v11 + 296) = v37;
  OUTLINED_FUNCTION_6(v37);
  *(v11 + 304) = v38;
  v40 = *(v39 + 64);
  *(v11 + 312) = OUTLINED_FUNCTION_55();
  v41 = sub_231E10F40();
  *(v11 + 320) = v41;
  OUTLINED_FUNCTION_6(v41);
  *(v11 + 328) = v42;
  v44 = *(v43 + 64);
  *(v11 + 336) = OUTLINED_FUNCTION_55();
  v45 = sub_231E11450();
  *(v11 + 344) = v45;
  OUTLINED_FUNCTION_6(v45);
  *(v11 + 352) = v46;
  v48 = *(v47 + 64);
  *(v11 + 360) = OUTLINED_FUNCTION_69();
  *(v11 + 368) = swift_task_alloc();
  *(v11 + 376) = swift_task_alloc();
  *(v11 + 384) = swift_task_alloc();
  v49 = sub_231E10F70();
  *(v11 + 392) = v49;
  OUTLINED_FUNCTION_6(v49);
  *(v11 + 400) = v50;
  v52 = *(v51 + 64);
  *(v11 + 408) = OUTLINED_FUNCTION_69();
  *(v11 + 416) = swift_task_alloc();
  v53 = sub_231E10010();
  *(v11 + 424) = v53;
  OUTLINED_FUNCTION_6(v53);
  *(v11 + 432) = v54;
  v56 = *(v55 + 64);
  *(v11 + 440) = OUTLINED_FUNCTION_55();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_47(v57);
  v59 = *(v58 + 64);
  *(v11 + 448) = OUTLINED_FUNCTION_69();
  *(v11 + 456) = swift_task_alloc();
  v60 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v60, v61, v62);
}

uint64_t sub_231CF9C4C()
{
  if (*(v0[17] + 32))
  {
    v83 = 1;
  }

  else
  {
    v1 = v0[57];
    v2 = v0[26];
    v3 = v0[27];
    v4 = v0[24];
    v5 = v0[25];
    sub_231E11120();
    v83 = 0;
  }

  v6 = v0[57];
  v7 = v0[18];
  v8 = v0[16];
  v9 = sub_231E11130();
  __swift_storeEnumTagSinglePayload(v6, v83, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
  v10 = sub_231E10400();
  OUTLINED_FUNCTION_6(v10);
  v12 = *(v11 + 72);
  v14 = *(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_231E138E0;
  sub_231E100E0();
  sub_231E10150();
  OUTLINED_FUNCTION_0_11();
  sub_231CFDB0C(v16, v17, MEMORY[0x277D42328]);
  v0[14] = v15;
  v107 = v0;
  if (v8)
  {
    v95 = v8;
    v18 = v0[16];
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v0[54];
      v21 = *(v20 + 16);
      v20 += 16;
      v99 = v21;
      v22 = v18 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v96 = (v20 - 8);
      v97 = *(v20 + 56);
      v23 = MEMORY[0x277D84F90];
      do
      {
        v24 = v0[55];
        v103 = v107[53];
        v25 = OUTLINED_FUNCTION_83();
        v99(v25);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_231E138E0;
        sub_231E0FF80();

        v27 = v14;
        v28 = MEMORY[0x277D42328];
        sub_231CFDB0C(v26, sub_231CFDF64, MEMORY[0x277D42328]);
        v29 = sub_231E0FF90();
        v30 = v28;
        v14 = v27;
        sub_231CFDB0C(v29, sub_231CFDF64, v30);

        v0 = v107;
        (*v96)(v24, v103);
        v22 += v97;
        --v19;
      }

      while (v19);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_0_11();
    sub_231CFDB0C(v23, v31, MEMORY[0x277D42328]);
    v32 = v0[14];
    v8 = v95;
  }

  v33 = v0[52];
  v35 = v0[18];
  v34 = v0[19];
  type metadata accessor for GenerativeModelsHandleResolver();
  v36 = sub_231E090CC();
  v0[58] = v36;
  sub_231CD1550(v36, v34, v33);
  if (v8 && *(v0[16] + 16))
  {
    v38 = v0[56];
    v37 = v0[57];
    v39 = v0[50];
    v98 = v0[49];
    v100 = v0[52];
    v40 = v0[42];
    v104 = *(v0 + 521);
    v41 = *(v0 + 520);
    v43 = v0[21];
    v42 = v0[22];
    v44 = v0[20];
    v101 = v0[19];
    v102 = v0[16];

    sub_231CF4BD8();
    v46 = v45;
    sub_231CFE0D8(v37, v38, &qword_27DD74560, &qword_231E170D8);
    v47 = MEMORY[0x277D84F90];
    MEMORY[0x23837C430](v44, v43, v46, v41, v104, v38, MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74598, &qword_231E171A0);
    v48 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v105 = *(v39 + 72);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_231E138E0;
    v50 = *(v39 + 16);
    (v50)(v49 + v48, v100, v98);
    v51 = swift_task_alloc();
    *(v51 + 16) = v36;
    *(v51 + 24) = v101;
    v52 = sub_231CF6BEC(sub_231CFE88C, v51, v102, MEMORY[0x277D4AF68], sub_231CFE580, MEMORY[0x277D42240]);

    sub_231CFDB0C(v52, sub_231CFDE40, MEMORY[0x277D4AF68]);
    v53 = sub_231CFE8B4(v49);

    v54 = *(v53 + 16);
    if (v54)
    {
      v55 = v107[50];
      sub_231CFE560(0, v54, 0);
      v56 = v53 + v48;
      v57 = (v55 + 8);
      v58 = v107;
      do
      {
        v59 = v58[51];
        v60 = v58[49];
        OUTLINED_FUNCTION_99_1();
        v50();
        v61 = sub_231E10F50();
        (*v57)(v59, v60);
        v63 = *(v47 + 16);
        v62 = *(v47 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_231CFE560((v62 > 1), v63 + 1, 1);
        }

        *(v47 + 16) = v63 + 1;
        *(v47 + v63 + 32) = v61 & 1;
        v58 = v107;
        v56 += v105;
        --v54;
      }

      while (v54);
    }

    else
    {
      v58 = v107;
    }

    v58[59] = v47;
    v84 = v58[49];
    v85 = v58[39];
    v86 = *(v58[23] + 16);
    OUTLINED_FUNCTION_7_6();
    sub_231CFEB58(v87, v88);
    OUTLINED_FUNCTION_83();
    sub_231E11140();
    v89 = *(MEMORY[0x277D4B150] + 4);
    v90 = swift_task_alloc();
    v58[60] = v90;
    *v90 = v58;
    v90[1] = sub_231CFA410;
    v91 = v58[47];
    v92 = v58[42];
    v93 = v58[39];

    return MEMORY[0x2821AB708](v91, v93, v92);
  }

  else
  {
    v65 = v0[56];
    v64 = v0[57];
    v66 = v0[52];
    v67 = v0[36];
    v68 = *(v0 + 521);
    v69 = *(v0 + 520);
    v70 = v0[22];
    v106 = v0[23];
    v72 = v0[20];
    v71 = v0[21];

    sub_231CF4BD8();
    v74 = v73;
    sub_231CFE0D8(v64, v65, &qword_27DD74560, &qword_231E170D8);
    MEMORY[0x23837C3F0](v72, v71, v74, v69, v68, v65, MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74568, &qword_231E1C7B0);
    v75 = swift_allocObject();
    v0[62] = v75;
    *(v75 + 16) = xmmword_231E138E0;
    *(v75 + 32) = sub_231E10F50() & 1;
    v76 = *(v106 + 16);
    v77 = *(MEMORY[0x277D4B138] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v0[63] = v78;
    *v78 = v79;
    v78[1] = sub_231CFA7BC;
    v80 = v0[52];
    v81 = v0[46];
    v82 = v0[36];

    return MEMORY[0x2821AB6F0](v81, v80, v82);
  }
}

uint64_t sub_231CFA410()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = v5[60];
  v7 = v5[39];
  v8 = v5[38];
  v9 = v5[37];
  v10 = *v1;
  OUTLINED_FUNCTION_4();
  *v11 = v10;
  *(v3 + 488) = v0;

  (*(v8 + 8))(v7, v9);
  if (v0)
  {
    v12 = *(v3 + 472);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231CFA7BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 504);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 512) = v0;

  if (v0)
  {
    v9 = *(v3 + 496);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CFAB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  v41 = v18[61];
  v20 = v18[41];
  v19 = v18[42];
  v21 = v18[40];
  v23 = v18[57];
  v22 = v18[58];
  v24 = v18[52];
  v25 = v18[49];
  v26 = v18[50];

  v27 = *(v20 + 8);
  v28 = OUTLINED_FUNCTION_25();
  v29(v28);
  v30 = OUTLINED_FUNCTION_67_2();
  v31(v30);
  sub_231CC154C(v23, &qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_48_3();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_107_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, v41, a16, a17, a18);
}

uint64_t sub_231CFAC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  v41 = v18[64];
  v20 = v18[35];
  v19 = v18[36];
  v21 = v18[34];
  v23 = v18[57];
  v22 = v18[58];
  v24 = v18[52];
  v25 = v18[49];
  v26 = v18[50];

  v27 = *(v20 + 8);
  v28 = OUTLINED_FUNCTION_25();
  v29(v28);
  v30 = OUTLINED_FUNCTION_67_2();
  v31(v30);
  sub_231CC154C(v23, &qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_48_3();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_107_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, v41, a16, a17, a18);
}

uint64_t sub_231CFAD78(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_10;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_13;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_231CFE878(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_10:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_231CFAE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  *(v10 + 296) = a9;
  *(v10 + 304) = v9;
  *(v10 + 617) = v11;
  *(v10 + 616) = v12;
  OUTLINED_FUNCTION_61_2(v13, v14, v15, v16, v17, v12, v11, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74548, &qword_231E170A0);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  *(v10 + 344) = OUTLINED_FUNCTION_69();
  *(v10 + 352) = swift_task_alloc();
  v22 = sub_231E106E0();
  *(v10 + 360) = v22;
  OUTLINED_FUNCTION_6(v22);
  *(v10 + 368) = v23;
  v25 = *(v24 + 64);
  *(v10 + 376) = OUTLINED_FUNCTION_69();
  *(v10 + 384) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  *(v10 + 392) = OUTLINED_FUNCTION_69();
  *(v10 + 400) = swift_task_alloc();
  *(v10 + 408) = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74578, &qword_231E17108);
  *(v10 + 416) = v29;
  OUTLINED_FUNCTION_6(v29);
  *(v10 + 424) = v30;
  v32 = *(v31 + 64);
  *(v10 + 432) = OUTLINED_FUNCTION_69();
  *(v10 + 440) = swift_task_alloc();
  v33 = sub_231E11450();
  *(v10 + 448) = v33;
  OUTLINED_FUNCTION_6(v33);
  *(v10 + 456) = v34;
  v36 = *(v35 + 64);
  *(v10 + 464) = OUTLINED_FUNCTION_69();
  *(v10 + 472) = swift_task_alloc();
  *(v10 + 480) = swift_task_alloc();
  *(v10 + 488) = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v37);
  v39 = *(v38 + 64);
  *(v10 + 496) = OUTLINED_FUNCTION_55();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  OUTLINED_FUNCTION_47(v40);
  v42 = *(v41 + 64);
  *(v10 + 504) = OUTLINED_FUNCTION_55();
  v43 = sub_231E10340();
  *(v10 + 512) = v43;
  OUTLINED_FUNCTION_6(v43);
  *(v10 + 520) = v44;
  v46 = *(v45 + 64);
  *(v10 + 528) = OUTLINED_FUNCTION_69();
  *(v10 + 536) = swift_task_alloc();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_47(v47);
  v49 = *(v48 + 64);
  *(v10 + 544) = OUTLINED_FUNCTION_55();
  v50 = sub_231E10F40();
  *(v10 + 552) = v50;
  OUTLINED_FUNCTION_6(v50);
  *(v10 + 560) = v51;
  v53 = *(v52 + 64);
  *(v10 + 568) = OUTLINED_FUNCTION_55();
  v54 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v54, v55, v56);
}

uint64_t sub_231CFB72C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = v1[72];
  *v4 = *v2;
  *(v3 + 584) = v0;

  OUTLINED_FUNCTION_90_1();
  (*(v1[53] + 8))(*(v6 + 440), v1[52]);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CFB87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  v23 = v22[60];
  v24 = v22[61];
  OUTLINED_FUNCTION_70_1();
  v25 = OUTLINED_FUNCTION_14_2();
  v26(v25);
  v27 = OUTLINED_FUNCTION_13_5();
  v28(v27);
  sub_231E11400();
  v29 = sub_231E113C0();
  if (OUTLINED_FUNCTION_29_3(v29) == 1)
  {
    sub_231CC154C(v22[44], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v31 = *(v30 + 8);
    v32 = OUTLINED_FUNCTION_48();
    v33(v32);
  }

  v34 = v22[73];
  v35 = v22[60];
  v36 = v22[48];
  v37 = v22[31];
  sub_231CFE0D8(v22[51], v22[50], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  OUTLINED_FUNCTION_58_3(v38, v39, v22 + 14);
  OUTLINED_FUNCTION_44_3();
  v40 = v22[67];
  v41 = v22[65];
  v42 = v22[64];
  v43 = v22[61];
  v45 = v22[56];
  v44 = v22[57];
  sub_231CC154C(v22[51], &qword_27DD74530, &qword_231E17080);
  (*(v44 + 8))(v43, v45);
  v46 = *(v41 + 8);
  v47 = OUTLINED_FUNCTION_70();
  v48(v47);
  v49 = OUTLINED_FUNCTION_30_3();
  v50(v49);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, v34, a19, a20, a21, a22);
}

uint64_t sub_231CFBAAC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = v1[75];
  *v4 = *v2;
  *(v3 + 608) = v0;

  OUTLINED_FUNCTION_90_1();
  (*(v1[53] + 8))(*(v6 + 432), v1[52]);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CFBBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  v23 = v22[58];
  v24 = v22[59];
  v25 = v22[56];
  v26 = v22[57];
  v27 = v22[49];
  v29 = v22[46];
  v28 = v22[47];
  v30 = v22[45];
  v31 = v22[43];
  v32 = v22[35];
  sub_231E11410();
  v33 = OUTLINED_FUNCTION_14_2();
  v34(v33);
  v35 = OUTLINED_FUNCTION_13_5();
  v36(v35);
  sub_231E11400();
  v37 = sub_231E113C0();
  if (OUTLINED_FUNCTION_29_3(v37) == 1)
  {
    sub_231CC154C(v22[43], &qword_27DD74548, &qword_231E170A0);
  }

  else
  {
    sub_231E113B0();
    OUTLINED_FUNCTION_16();
    v39 = *(v38 + 8);
    v40 = OUTLINED_FUNCTION_48();
    v41(v40);
  }

  v42 = v22[76];
  v43 = v22[58];
  v44 = v22[47];
  v45 = v22[31];
  sub_231CFE0D8(v22[49], v22[50], &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  OUTLINED_FUNCTION_58_3(v46, v47, v22 + 2);
  v48 = v22[74];
  OUTLINED_FUNCTION_44_3();
  v49 = v22[59];
  v50 = v22[56];
  v51 = v22[57];
  v52 = v22[49];

  sub_231CC154C(v52, &qword_27DD74530, &qword_231E17080);
  v53 = *(v51 + 8);
  v54 = OUTLINED_FUNCTION_70();
  v55(v54);
  v56 = OUTLINED_FUNCTION_30_3();
  v57(v56);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, v42, a19, a20, a21, a22);
}

uint64_t sub_231CFBE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_44_3();
  (*(v22[65] + 8))(v22[67], v22[64]);
  v23 = OUTLINED_FUNCTION_30_3();
  v24(v23);
  v25 = v22[73];
  OUTLINED_FUNCTION_32_3();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_231CFBF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  v23 = *(v22 + 592);
  OUTLINED_FUNCTION_44_3();

  v24 = OUTLINED_FUNCTION_30_3();
  v25(v24);
  v26 = *(v22 + 608);
  OUTLINED_FUNCTION_32_3();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_231CFC060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_231E10340();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_231CFC108()
{
  OUTLINED_FUNCTION_18();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[16] = v5;
  v6 = sub_231E0F630();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_55();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  v1[22] = OUTLINED_FUNCTION_69();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_69();
  v1[26] = OUTLINED_FUNCTION_89_1(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74590, &qword_231E17128);
  v1[27] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[28] = v17;
  v19 = *(v18 + 64);
  v1[29] = OUTLINED_FUNCTION_55();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74560, &qword_231E170D8);
  OUTLINED_FUNCTION_47(v20);
  v22 = *(v21 + 64);
  v1[30] = OUTLINED_FUNCTION_55();
  v23 = sub_231E11150();
  v1[31] = v23;
  OUTLINED_FUNCTION_6(v23);
  v1[32] = v24;
  v26 = *(v25 + 64);
  v27 = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_65_2(v27);
  v28 = sub_231E11170();
  v1[34] = v28;
  OUTLINED_FUNCTION_6(v28);
  v1[35] = v29;
  v31 = *(v30 + 64);
  v1[36] = OUTLINED_FUNCTION_55();
  v32 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_231CFC314()
{
  v1 = v0[36];
  v2 = v0[30];
  v3 = v0[20];
  v4 = v0[17];
  (*(v0[32] + 104))(v0[33], *MEMORY[0x277D4B030], v0[31]);
  v5 = sub_231E11130();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
  sub_231E11160();
  v6 = *(v3 + 16);
  v7 = sub_231E10AA0();
  v9 = v8;
  v0[37] = v8;
  v10 = *(MEMORY[0x277D4B130] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[38] = v11;
  *v11 = v12;
  v11[1] = sub_231CFC444;
  v13 = v0[36];
  v14 = v0[29];
  v15 = v0[18];
  v16 = v0[19];

  return MEMORY[0x2821AB6E8](v14, v7, v9, v13, v15, v16);
}

uint64_t sub_231CFC444()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *(v1 + 304);
  *v4 = *v2;
  *(v3 + 312) = v0;

  OUTLINED_FUNCTION_90_1();
  v7 = *(v6 + 296);

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231CFC560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_56_3();
  v46 = v22[35];
  v23 = v22[34];
  v47 = v23;
  v48 = v22[36];
  v24 = v22[29];
  v49 = v22[33];
  v50 = v22[30];
  v25 = v22[27];
  v26 = v22[26];
  v27 = v22[23];
  v28 = v22[24];
  v43 = v22[25];
  v29 = v22[21];
  v42 = v22[22];
  v44 = v22[16];
  v45 = v22[28];
  MEMORY[0x23837C6B0](v25);
  v31 = v22[14];
  v30 = v22[15];
  sub_231E111A0();
  v32 = sub_231E0F5F0();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v32);
  sub_231E0F620();
  sub_231E0F600();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v32);
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v32);
  sub_231CFE0D8(v26, v43, &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  sub_231D48A80(v28, v27, v42, 1, v22 + 2, 0, v44);
  sub_231CC154C(v26, &qword_27DD74530, &qword_231E17080);
  (*(v45 + 8))(v24, v25);
  (*(v46 + 8))(v48, v47);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v28, v43, v44, v45, v29, v46, v47, v48, v49, v50, a20, a21, a22);
}

uint64_t sub_231CFC76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v13 = v12[33];
  v15 = v12[29];
  v14 = v12[30];
  v17 = v12[25];
  v16 = v12[26];
  v19 = v12[23];
  v18 = v12[24];
  v20 = v12[22];
  v31 = v12[21];
  (*(v12[35] + 8))(v12[36], v12[34]);

  OUTLINED_FUNCTION_19();
  v21 = v12[39];
  OUTLINED_FUNCTION_44();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

uint64_t sub_231CFC848()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_231CFC8A4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_6_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_6(v1);
  OUTLINED_FUNCTION_66_0();

  return sub_231CF61A4();
}

uint64_t sub_231CFC930()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_6_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_6(v1);
  OUTLINED_FUNCTION_66_0();

  return sub_231CF65F4();
}

uint64_t sub_231CFC9BC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_6_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_6(v1);
  OUTLINED_FUNCTION_66_0();

  return sub_231CF6DF0();
}

uint64_t sub_231CFCA48()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_6_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_6(v1);
  OUTLINED_FUNCTION_66_0();

  return sub_231CF7580();
}

uint64_t sub_231CFCAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_42_3();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_17(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_37_2(v10);
  OUTLINED_FUNCTION_44();

  return sub_231CF7E8C(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

uint64_t sub_231CFCB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_42_3();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_17(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_37_2(v10);
  OUTLINED_FUNCTION_44();

  return sub_231CFAE30(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

uint64_t sub_231CFCBF4()
{
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;

  return sub_231CFC108();
}

BOOL sub_231CFCCB0(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_231E11180();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_231CFEB58(&qword_2814CAFE8, MEMORY[0x277D4B060]);
  v30 = a2;
  v11 = sub_231E11550();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_231CFD2D0(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_231CFEB58(&qword_27DD745B0, MEMORY[0x277D4B060]);
    v17 = sub_231E115D0();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_231CFCF78(uint64_t a1)
{
  v2 = v1;
  v41 = sub_231E11180();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745B8, &qword_231E171B8);
  result = sub_231E11D40();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_231CFD55C(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_231CFEB58(&qword_2814CAFE8, MEMORY[0x277D4B060]);
    result = sub_231E11550();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231CFD2D0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_231E11180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231CFCF78(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231CFD7F4(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_231CFEB58(&qword_2814CAFE8, MEMORY[0x277D4B060]);
      v15 = sub_231E11550();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231CFEB58(&qword_27DD745B0, MEMORY[0x277D4B060]);
        v17 = sub_231E115D0();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_231CFD5C0();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_231E12150();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_231CFD55C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_231E13680;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_231CFD5C0()
{
  v1 = v0;
  v2 = sub_231E11180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745B8, &qword_231E171B8);
  v7 = *v0;
  v8 = sub_231E11D30();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_231CFD7F4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_231E11180();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745B8, &qword_231E171B8);
  v10 = sub_231E11D40();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_231CFEB58(&qword_2814CAFE8, MEMORY[0x277D4B060]);
        result = sub_231E11550();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_231CFDB0C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231CFDC20(result, 1, a2);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_231CFDC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_231CFDC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_231E10F70();
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  v23 = *(result - 8);
  v14 = v9 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v15 = v14 + v11 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v15 + v11 * a3;
  if (v16)
  {
    v17 = *(v9 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = sub_231CFE228(v14 + v11 * a2, v17 - a2, v24, MEMORY[0x277D4AF68]);
      v18 = *(v9 + 16);
      v19 = __OFADD__(v18, v16);
      v20 = v18 + v16;
      if (!v19)
      {
        *(v9 + 16) = v20;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v11 * a3 < 1)
  {
    return sub_231CC154C(a4, &qword_27DD74538, &unk_231E17088);
  }

  for (i = 0; (i & 1) == 0; i = 1)
  {
    result = (*(v23 + 16))(v15, a4, v13);
    v15 += v11;
    if (v15 >= v24)
    {
      return sub_231CC154C(a4, &qword_27DD74538, &unk_231E17088);
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

size_t sub_231CFDE40(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231CFE2F8(v9, a2, &qword_27DD74598, &qword_231E171A0, MEMORY[0x277D4AF68]);
  v11 = *(sub_231E10F70() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231CFE228(a4 + v12, v9, v10 + v12, MEMORY[0x277D4AF68]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_231CFDF64(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231CFE2F8(v9, a2, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328]);
  v11 = *(sub_231E10400() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231CFE228(a4 + v12, v9, v10 + v12, MEMORY[0x277D42328]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_231CFE0D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_59_0();
  v9(v8);
  return a2;
}

char *sub_231CFE134(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74568, &qword_231E1C7B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_231CFE228(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_12(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_102_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_102_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_231CFE2F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231CFE3EC()
{
  v1 = *(*(sub_231E10340() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

void sub_231CFE4B0()
{
  v1 = *v0;
  sub_231CFE5D8();
  *v0 = v2;
}

void sub_231CFE508()
{
  v1 = *v0;
  sub_231CFE5D8();
  *v0 = v2;
}

char *sub_231CFE560(char *a1, int64_t a2, char a3)
{
  result = sub_231CFE784(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_231CFE580()
{
  v1 = *v0;
  sub_231CFE5D8();
  *v0 = v2;
}

void sub_231CFE5D8()
{
  OUTLINED_FUNCTION_118();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_6(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v24 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_79();
  if (v10)
  {
    sub_231CFE228(v8 + v25, v14, v21 + v25, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_113();
}

char *sub_231CFE784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74568, &qword_231E1C7B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

size_t sub_231CFE8B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_231CFE2F8(*(a1 + 16), 0, &qword_27DD74598, &qword_231E171A0, MEMORY[0x277D4AF68]);
  v4 = *(sub_231E10F70() - 8);
  v5 = sub_231CFE9A4(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_231CFE9A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v7 = 0;
LABEL_11:
    v10 = *(a4 + 16);
LABEL_12:
    *v5 = a4;
    v5[1] = v10;
    return v7;
  }

  v7 = a3;
  if (!a3)
  {
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    for (i = 0; ; --i)
    {
      v10 = v6 + i;
      if (!(v6 + i))
      {
        v7 = v6;
        goto LABEL_12;
      }

      if (v10 > *(a4 + 16))
      {
        break;
      }

      v11 = v10 - 1;
      v12 = sub_231E10F70();
      v13 = *(v12 - 8);
      v14 = *(v13 + 72);
      result = (*(v13 + 16))(v8, a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v14 * v11, v12);
      if (v7 + i == 1)
      {
        v10 = v6 + i - 1;
        goto LABEL_12;
      }

      v8 += v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_231CFEB04()
{
  result = qword_2814CBBB0[0];
  if (!qword_2814CBBB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814CBBB0);
  }

  return result;
}

uint64_t sub_231CFEB58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_19_3()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_3()
{
  v2 = v0[71];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v7 = v0[62];
  v6 = v0[63];
  v9 = v0[60];
  v8 = v0[61];
  v11 = v0[58];
  v10 = v0[59];
  v14 = v0[55];
  v15 = v0[54];
  v16 = v0[51];
  v17 = v0[50];
  v18 = v0[49];
  v19 = v0[48];
  v12 = v0[47];
  v20 = v0[44];
  v21 = v0[43];
}

uint64_t OUTLINED_FUNCTION_33_4()
{
  v2 = v0[71];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[62];
  v7 = v0[63];
  v9 = v0[60];
  v8 = v0[61];
  v11 = v0[58];
  v10 = v0[59];
  v14 = v0[55];
  v15 = v0[54];
  v16 = v0[51];
  v17 = v0[50];
  v18 = v0[49];
  v19 = v0[48];
  v12 = v0[47];
  v20 = v0[44];
  v21 = v0[43];
}

uint64_t OUTLINED_FUNCTION_37_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 32) = v2;
  return v3;
}

void OUTLINED_FUNCTION_38_2()
{
  v1 = v0[58];
  v12 = v0[52];
  v13 = v0[57];
  v2 = v0[50];
  v3 = v0[48];
  v11 = v0[49];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[43];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[31];
  v10 = v0[15];
}

void OUTLINED_FUNCTION_44_3()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
}

uint64_t OUTLINED_FUNCTION_47_2()
{
  v3 = v2[33];
  v4 = v2[30];
  v10 = v2[31];
  v6 = v2[28];
  v5 = v2[29];
  v7 = v2[22];
  v8 = *(v1 + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_48_3()
{
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[42];
  v7 = v0[39];
  v8 = v0[36];
  v9 = v0[33];
  v10 = v0[32];
  v5 = v0[31];
  v11 = v0[28];
}