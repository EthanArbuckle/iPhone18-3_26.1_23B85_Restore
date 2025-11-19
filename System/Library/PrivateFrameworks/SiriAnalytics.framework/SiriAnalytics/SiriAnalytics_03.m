id sub_1D98A53E4()
{
  v1 = v0[52];
  v25 = sub_1D990DA00();
  v0[90] = v25;
  result = [objc_allocWithZone(MEMORY[0x1E69CF470]) init];
  v0[91] = result;
  if (result)
  {
    v3 = result;
    v23 = v0[88];
    v4 = v0[85];
    v6 = v0[62];
    v5 = v0[63];
    v7 = v0[57];
    v8 = v0[51];
    v9 = v0[52];
    v10 = v0[59] + 15;
    sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
    v11 = swift_task_alloc();
    v6(v11, v4, v7);
    v12 = sub_1D98B5B94(v11);

    [v3 setClockIdentifier_];

    sub_1D9881858();
    v14 = sub_1D98B0EC0(v4, v13);
    LOBYTE(v11) = v15;

    if (v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    [v3 setMessageCount_];
    v17 = *(v9 + *(v8 + 32));
    v18 = swift_task_alloc();
    *(v18 + 16) = v4;
    v19 = sub_1D98A2E80(MEMORY[0x1E69E7CC8], sub_1D98A1570, v18, v17);
    v0[92] = v24;

    v20 = sub_1D990E35C(v19);

    sub_1D98AB214(v20, v3);
    [v25 setPreprocessorSessionStartStatsReported_];
    v21 = swift_task_alloc();
    v0[93] = v21;
    *v21 = v0;
    v21[1] = sub_1D98A5624;
    v22 = v0[52];

    return sub_1D990DDE8(v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D98A5624()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 744);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D98A5710, 0, 0);
}

uint64_t sub_1D98A5710()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 720);
  v2 = *(v0 + 416);
  v3 = *(v0 + 280);

  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  v4 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D98A5790()
{
  v159 = v2;
  v4 = *(v2 + 712);
  v5 = *(v2 + 688);
  v6 = *(v2 + 680);
  OUTLINED_FUNCTION_139();
  v7();
  if (v0 == v5)
  {
    v8 = *(v2 + 672);

    v9 = *(v2 + 736);
    OUTLINED_FUNCTION_144();
    *(v2 + 752) = sub_1D992B104();
    OUTLINED_FUNCTION_161(&qword_1ED8BF060);
    sub_1D992B5B4();
    if (v1 == 1)
    {
      v10 = *(v2 + 640);

      sub_1D98E9E5C();
    }

    OUTLINED_FUNCTION_82();
    v11 = *(v2 + 352);
    v12 = *(v2 + 280);
    v13 = mach_absolute_time();
    v158[0] = 0;
    MonotonicTimestamp.init(cpuTicks:clockType:)(v13, v158);
    *(v2 + 768) = *(v3 + *(v11 + 20));
    OUTLINED_FUNCTION_3_10();
    sub_1D98AB6A4();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_123(v14);

    v15 = v12;
    v16 = OUTLINED_FUNCTION_72();
    sub_1D98E4DC0(v16, v17, v18, v19);
    OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_36_2();
    sub_1D98DCECC(v20, v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_97();
    sub_1D98811F8(2);
    swift_endAccess();
    v26 = *(v154 + 16);
    *(v2 + 792) = sub_1D992B394();
    if (v156)
    {
      OUTLINED_FUNCTION_105();

      sub_1D98A8BC4("Begin processing reason:");

      OUTLINED_FUNCTION_11_4();
      v28 = *(v2 + 424);
      v27 = *(v2 + 432);
      OUTLINED_FUNCTION_25_1();
      v29 = OUTLINED_FUNCTION_84();
      v30(v29);

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_53();

      __asm { BRAA            X1, X16 }
    }

    v46 = sub_1D992B4B4();
    OUTLINED_FUNCTION_74(v46);
    v47 = OUTLINED_FUNCTION_79();
    if (__swift_getEnumTagSinglePayload(v47, v48, 0) == 1)
    {
      OUTLINED_FUNCTION_89();
      sub_1D98F63BC();
      OUTLINED_FUNCTION_88();
      sub_1D98811F8(4);
      swift_endAccess();
      OUTLINED_FUNCTION_0_25();
      v49 = OUTLINED_FUNCTION_49();
      sub_1D98AB648(v49, v50, v51);
      v52 = swift_task_alloc();
      *(v2 + 856) = v52;
      *v52 = v2;
      OUTLINED_FUNCTION_10_6(v52);
      OUTLINED_FUNCTION_53();

      return sub_1D990D23C();
    }

    else
    {
      v54 = *(v2 + 312);
      v56 = *(v54 + 32);
      v55 = v54 + 32;
      v56(*(v2 + 336), *(v2 + 344), *(v2 + 304));
      v57 = *(v2 + 456);
      v58 = mach_absolute_time();
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      OUTLINED_FUNCTION_9(v59);
      v61 = *(v60 + 64) + 15;
      v62 = swift_task_alloc();
      v63 = OUTLINED_FUNCTION_147(v62);
      if (qword_1ECB47DD0 != -1)
      {
        v63 = OUTLINED_FUNCTION_63();
      }

      v64 = v58 == -1 || qword_1ECB47DC8 == HIDWORD(qword_1ECB47DC8);
      if (v64 || !is_mul_ok(v58, qword_1ECB47DC8) || HIDWORD(qword_1ECB47DC8))
      {
        v65 = OUTLINED_FUNCTION_103();
        v66 = OUTLINED_FUNCTION_92();
        sub_1D9866D34(v66, v67, &qword_1ECB481D0, &qword_1D992F9F0);
        swift_task_alloc();
        v68 = swift_task_alloc();
        OUTLINED_FUNCTION_95();
        sub_1D9866D34(v69, v70, v71, &qword_1D992F9F0);
        OUTLINED_FUNCTION_55();
        if (v64)
        {
          v72 = OUTLINED_FUNCTION_116();
          v73(v72);
          OUTLINED_FUNCTION_90();
          OUTLINED_FUNCTION_91();
          OUTLINED_FUNCTION_55();
          if (!v64)
          {
            sub_1D986B804(v68, &qword_1ECB481D0, &qword_1D992F9F0);
          }
        }

        else
        {
          v74 = *(v2 + 456);
          v75 = *(v2 + 464);
          OUTLINED_FUNCTION_90();
          OUTLINED_FUNCTION_91();
          v76 = *(v75 + 32);
          v77 = OUTLINED_FUNCTION_33();
          v78(v77);
        }

        OUTLINED_FUNCTION_151();
        v79 = OUTLINED_FUNCTION_135();
        v80(v79);

        OUTLINED_FUNCTION_37_1(v81, v82, v83, v84, v85, v86, v87, v88, v127, v130, v133, v136, v139, v143, v146, v149, v152, v55, 0);

        v89 = *(&qword_1ECB481D0 + *(v55 + 20));
        OUTLINED_FUNCTION_3_10();
        sub_1D98AB6A4();
        v90 = OUTLINED_FUNCTION_39_1();
        v91 = OUTLINED_FUNCTION_18_2();
        __swift_storeEnumTagSinglePayload(v91, v92, v93, v90);
        v94 = *(v65 + 16);
        v95 = OUTLINED_FUNCTION_113();
        v96(v95);
        sub_1D98AB364();
        OUTLINED_FUNCTION_41_1();
        v97 = swift_allocObject();
        v105 = OUTLINED_FUNCTION_77(v97, v98, v99, v100, v101, v102, v103, v104, v128, v131, v134, v137, v140, v144, v147, v150, v153, v155, v157);
        v107 = v106(v105);
        v115 = OUTLINED_FUNCTION_83(v107, v108, v109, v110, v111, v112, v113, v114, v129, v132, v135, v138, v141, v145, v148, v151);
        sub_1D9866D34(v115, v142, &qword_1ECB48BB0, &qword_1D9930970);
        __swift_getEnumTagSinglePayload(v142, 1, v90);
        OUTLINED_FUNCTION_122();

        v116 = *(v2 + 288);
        if (v90 == 1)
        {
          sub_1D986B804(*(v2 + 288), &qword_1ECB48BB0, &qword_1D9930970);
        }

        else
        {
          sub_1D992B864();
          OUTLINED_FUNCTION_112();
          (*(v117 + 8))(v116);
        }

        v119 = *(v55 + 16);
        v118 = *(v55 + 24);
        swift_unknownObjectRetain();

        if (v119)
        {
          swift_getObjectType();
          sub_1D992B814();
          OUTLINED_FUNCTION_115();
          swift_unknownObjectRelease();
        }

        sub_1D986B804(*(v2 + 296), &qword_1ECB48BB0, &qword_1D9930970);
        OUTLINED_FUNCTION_0_0();
        v120 = swift_allocObject();
        OUTLINED_FUNCTION_12_5(v120);
        if (v121)
        {
          OUTLINED_FUNCTION_98();
        }

        *(v2 + 840) = OUTLINED_FUNCTION_15_3();
        v122 = *(MEMORY[0x1E69E86B0] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        *(v2 + 848) = v123;
        *v123 = v124;
        OUTLINED_FUNCTION_13_2(v123);
        OUTLINED_FUNCTION_64();
        OUTLINED_FUNCTION_53();
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DA20](v63);
    }
  }

  else
  {
    v33 = *(v2 + 736);
    v34 = *(v2 + 712) + 1;
    *(v2 + 712) = v34;
    *(v2 + 704) = v33;
    v35 = *(v2 + 504);
    v36 = *(v2 + 440);
    v37 = *(v2 + 416);
    (*(v2 + 496))(*(v2 + 680), *(v2 + 672) + ((*(v2 + 1080) + 32) & ~*(v2 + 1080)) + *(v2 + 696) * v34, *(v2 + 456));
    OUTLINED_FUNCTION_0_25();
    v38 = OUTLINED_FUNCTION_50();
    v41 = sub_1D98AB648(v38, v39, v40);
    OUTLINED_FUNCTION_40_0(v41);
    OUTLINED_FUNCTION_53();

    return MEMORY[0x1EEE6DFA0](v42, v43, v44);
  }
}

uint64_t sub_1D98A5EE4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1[106];
  v3 = v1[105];
  v4 = v1[35];
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98A5FF8()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 336);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  sub_1D992B4A4();
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_49();
  v7(v6);
  v8 = *(v0 + 832);
  v9 = *(v0 + 824);
  *(v0 + 1090) = 0;
  *(v0 + 816) = v8;
  *(v0 + 808) = v9;
  v10 = *(v0 + 800);
  v11 = *(v0 + 344);
  v12 = *(v0 + 304);
  sub_1D992B4C4();
  v13 = OUTLINED_FUNCTION_79();
  if (__swift_getEnumTagSinglePayload(v13, v14, v12) == 1)
  {
    OUTLINED_FUNCTION_89();
    sub_1D98F63BC();
    OUTLINED_FUNCTION_88();
    sub_1D98811F8(4);
    swift_endAccess();
    OUTLINED_FUNCTION_0_25();
    v15 = OUTLINED_FUNCTION_49();
    sub_1D98AB648(v15, v16, v17);
    v18 = swift_task_alloc();
    *(v0 + 856) = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_10_6(v18);

    return sub_1D990D23C();
  }

  else
  {
    v50 = *(*(v0 + 312) + 32);
    v50(*(v0 + 336), *(v0 + 344), *(v0 + 304));
    *(v0 + 832) = v8;
    *(v0 + 824) = v9;
    v48 = *(v0 + 640);
    v49 = *(v0 + 624);
    v21 = *(v0 + 328);
    v20 = *(v0 + 336);
    v23 = *(v0 + 312);
    v22 = *(v0 + 320);
    v24 = *(v0 + 304);
    v44 = v24;
    v45 = *(v0 + 296);
    v46 = *(v0 + 432);
    v47 = *(v0 + 288);
    v51 = *(v0 + 776);
    v52 = *(v0 + 280);
    v25 = sub_1D992B874();
    v26 = OUTLINED_FUNCTION_18_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
    (*(v23 + 16))(v21, v20, v24);
    v29 = sub_1D98AB364();
    v30 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v31 = (v22 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 2) = v52;
    *(v34 + 3) = v29;
    *(v34 + 4) = v52;
    v50(&v34[v30], v21, v44);
    *&v34[v31] = v46;
    *&v34[v32] = v48;
    *&v34[v33] = v51;
    *&v34[(v33 + 15) & 0xFFFFFFFFFFFFFFF8] = v49;
    sub_1D9866D34(v45, v47, &qword_1ECB48BB0, &qword_1D9930970);
    __swift_getEnumTagSinglePayload(v47, 1, v25);
    OUTLINED_FUNCTION_122();

    v35 = *(v0 + 288);
    if (v47 == 1)
    {
      sub_1D986B804(*(v0 + 288), &qword_1ECB48BB0, &qword_1D9930970);
    }

    else
    {
      sub_1D992B864();
      (*(*(v25 - 8) + 8))(v35, v25);
    }

    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    swift_unknownObjectRetain();

    if (v37)
    {
      swift_getObjectType();
      sub_1D992B814();
      OUTLINED_FUNCTION_115();
      swift_unknownObjectRelease();
    }

    sub_1D986B804(*(v0 + 296), &qword_1ECB48BB0, &qword_1D9930970);
    OUTLINED_FUNCTION_0_0();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_12_5(v38);
    if (v39)
    {
      OUTLINED_FUNCTION_98();
    }

    *(v0 + 840) = OUTLINED_FUNCTION_15_3();
    v40 = *(MEMORY[0x1E69E86B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 848) = v41;
    *v41 = v42;
    OUTLINED_FUNCTION_13_2();
    v43 = OUTLINED_FUNCTION_64();

    return MEMORY[0x1EEE6DA20](v43);
  }
}

uint64_t sub_1D98A63FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1[107];
  v3 = v1[53];
  v4 = v1[35];
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  v7 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98A6514()
{
  v135 = v0;
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  v5 = *(v0 + 472) + 15;
  OUTLINED_FUNCTION_0_25();
  sub_1D98AB648(v6, v4, v7);
  sub_1D98814A4();
  v9 = v8;
  *(v0 + 864) = v8;
  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  *(v0 + 872) = swift_task_alloc();
  v10 = *(v9 + 16);
  *(v0 + 880) = v10;
  if (v10)
  {
    v11 = *(v0 + 456);
    v12 = *(v0 + 464);
    *(v0 + 1084) = *(v12 + 80);
    OUTLINED_FUNCTION_130(v12);
    *(v0 + 888) = v13;
    *(v0 + 896) = 0;
    v14 = *(v0 + 864);
    v15 = *(v0 + 504);
    v16 = *(v0 + 440);
    v17 = *(v0 + 424);
    (*(v0 + 496))();
    OUTLINED_FUNCTION_0_25();
    v18 = OUTLINED_FUNCTION_50();
    sub_1D98AB648(v18, v19, v20);
    v21 = swift_task_alloc();
    *(v0 + 904) = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_31_3(v21);
    OUTLINED_FUNCTION_42();

    return sub_1D990D594(v22);
  }

  OUTLINED_FUNCTION_86();
  v25 = mach_absolute_time();
  LOBYTE(v129) = 0;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v25, &v129);
  v124 = *(v9 + *(v4 + 20));
  OUTLINED_FUNCTION_3_10();
  sub_1D98AB6A4();
  OUTLINED_FUNCTION_69();
  sub_1D992BD64();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_51();
  sub_1D98AB648(v1, v5, v26);
  sub_1D9881BC8();
  OUTLINED_FUNCTION_45();
  sub_1D98AB6A4();
  *(v0 + 248) = v5;
  sub_1D992BF34();
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_124();
  v27 = OUTLINED_FUNCTION_94();
  v29 = sub_1D98AB648(v27, v28, 0xD000000000000010);
  sub_1D98816F8(v29, v30, v31, v32, v33, v34, v35, v36, v121, v122, v123, v124, v126, v127, v129, v130, v131, v132, v133, v134);
  sub_1D98AB6A4();
  OUTLINED_FUNCTION_133();
  sub_1D992BF34();
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_2();
  sub_1D98DCECC(v37, v38, v39, v40, v41, v42);

  if (*(v128 + 136))
  {
    v43 = *(v0 + 768);
    if (v125 < v43)
    {
      __break(1u);
    }

    else if (((v125 - v43) & 0x8000000000000000) == 0)
    {
      if (*(v0 + 1090))
      {
        v1 = 0;
LABEL_12:
        v46 = *(v0 + 440);
        v47 = *(v0 + 424);
        v48 = *(v0 + 272);
        OUTLINED_FUNCTION_0_25();
        sub_1D98AB648(v49, v47, v50);
        sub_1D9881BC8();
        v2 = v51;
        OUTLINED_FUNCTION_1_18();
        sub_1D98AB6A4();
        sub_1D990E940(v48);
        v52 = sub_1D992B614();

        OUTLINED_FUNCTION_99(v53, sel_trackMessageStreamProcessed_timeToFirstMessage_messageCount_processingReason_failureReason_);

        goto LABEL_13;
      }

      v44 = *(v0 + 816);
      v45 = *(v0 + 808);
      v1 = v44 - v45;
      if (v44 >= v45)
      {
        if ((v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_13:
  v54 = *(v0 + 776);
  v55 = *(v0 + 536);
  OUTLINED_FUNCTION_69();
  sub_1D992BD64();
  OUTLINED_FUNCTION_121();
  *(v0 + 264) = *(*(v54 + 48) + 16);
  sub_1D992BF34();
  OUTLINED_FUNCTION_115();

  v129 = v0 + 264;
  v130 = v1;
  OUTLINED_FUNCTION_124();
  v56 = v130;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_2();
  sub_1D986A454(v57, v58, v59, v60, v61, v62);

  OUTLINED_FUNCTION_43_0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48900, &qword_1D9931E90);
  OUTLINED_FUNCTION_9(v63);
  *(v0 + 920) = *(v64 + 64);
  *(v0 + 928) = swift_task_alloc();

  swift_task_alloc();
  if (v1)
  {
    v65 = 0;
LABEL_18:
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_109();
    (*"First pass analysis running")();
    v68 = *(*(v55 + 56) + 8 * v2);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    v70 = OUTLINED_FUNCTION_59(v69);
    v71(v70, v1, v56);
    v72 = OUTLINED_FUNCTION_23_4();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v69);

    v75 = v68;
    v76 = v128;
    v56 = v65;
  }

  else
  {
    OUTLINED_FUNCTION_137();
    while (1)
    {
      v65 = v56 + 1;
      if (v56 + 1 >= v66)
      {
        break;
      }

      v1 = *(v67 + 8 * v56++);
      if (v1)
      {
        goto LABEL_18;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    v117 = OUTLINED_FUNCTION_18_2();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
    v76 = 0;
  }

  *(v0 + 944) = v56;
  *(v0 + 936) = v76;
  v77 = *(v0 + 928);
  v78 = OUTLINED_FUNCTION_50();
  sub_1D98AB298(v78, v79);

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
  OUTLINED_FUNCTION_28_2(v80);
  if (v81)
  {
    OUTLINED_FUNCTION_7_7();

    sub_1D992BAC4();
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_29_3();

    v82 = OUTLINED_FUNCTION_49();
    (v1)(v82);

    sub_1D98A8BC4("First pass analysis running");

    OUTLINED_FUNCTION_5_10();
    v83 = OUTLINED_FUNCTION_26_3();
    v84(v83);

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_42();

    __asm { BRAA            X1, X16 }
  }

  v87 = *(v0 + 928);
  v88 = *(v0 + 544);
  v89 = *(v0 + 536);
  v91 = *(v0 + 464);
  v90 = *(v0 + 472);
  v92 = *(v0 + 456);
  v93 = OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_17_2(v93);
  v94 = *(v91 + 32);
  OUTLINED_FUNCTION_95();
  v95();
  OUTLINED_FUNCTION_56();
  v96 = *(v0 + 208);

  OUTLINED_FUNCTION_57(0xD00000000000001FLL);
  OUTLINED_FUNCTION_156();

  v97 = *(v0 + 184);
  v98 = *(v0 + 192);
  OUTLINED_FUNCTION_36_2();
  sub_1D986A454(v99, v100, v101, v102, v103, v104);

  v105 = [objc_allocWithZone(MEMORY[0x1E69CED38]) init];
  OUTLINED_FUNCTION_155(v105, sel_setPreProcessorInfo_);

  if ([v56 preProcessorInfo])
  {
    [v105 setPreProcessorTriggerReason_];
  }

  v107 = sub_1D992AE04();
  OUTLINED_FUNCTION_6(v107);
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_159();
  sub_1D992ADC4();
  v110 = OUTLINED_FUNCTION_24_2();
  v112 = v111(v110);
  OUTLINED_FUNCTION_154(v112, sel_setMessageCreationTimeSince1970_);

  v113 = swift_task_alloc();
  v114 = OUTLINED_FUNCTION_125(v113);
  *v114 = v115;
  OUTLINED_FUNCTION_6_10(v114);
  OUTLINED_FUNCTION_42();

  return sub_1D98E2FA8();
}

uint64_t sub_1D98A6CB4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1[113];
  v3 = v1[53];
  v4 = v1[35];
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  OUTLINED_FUNCTION_1_18();
  sub_1D98AB6A4();
  v7 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98A6DCC()
{
  v131 = v2;
  v5 = *(v2 + 896);
  v6 = *(v2 + 880);
  v7 = *(v2 + 872);
  OUTLINED_FUNCTION_139();
  v8();
  if (v0 != v6)
  {
    v30 = *(v2 + 896) + 1;
    *(v2 + 896) = v30;
    v31 = *(v2 + 504);
    v32 = *(v2 + 440);
    v33 = *(v2 + 424);
    (*(v2 + 496))(*(v2 + 872), *(v2 + 864) + ((*(v2 + 1084) + 32) & ~*(v2 + 1084)) + *(v2 + 888) * v30, *(v2 + 456));
    OUTLINED_FUNCTION_0_25();
    v34 = OUTLINED_FUNCTION_50();
    sub_1D98AB648(v34, v35, v36);
    v37 = swift_task_alloc();
    *(v2 + 904) = v37;
    *v37 = v2;
    OUTLINED_FUNCTION_31_3();
    OUTLINED_FUNCTION_42();

    return sub_1D990D594(v38);
  }

  v9 = *(v2 + 864);

  OUTLINED_FUNCTION_86();
  v10 = mach_absolute_time();
  LOBYTE(v125) = 0;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v10, &v125);
  v120 = *(v6 + *(v0 + 20));
  OUTLINED_FUNCTION_3_10();
  sub_1D98AB6A4();
  OUTLINED_FUNCTION_69();
  sub_1D992BD64();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_51();
  sub_1D98AB648(v3, v1, v11);
  sub_1D9881BC8();
  OUTLINED_FUNCTION_45();
  sub_1D98AB6A4();
  *(v2 + 248) = v1;
  sub_1D992BF34();
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_124();
  v12 = OUTLINED_FUNCTION_94();
  v14 = sub_1D98AB648(v12, v13, 0xD000000000000010);
  sub_1D98816F8(v14, v15, v16, v17, v18, v19, v20, v21, v117, v118, v119, v120, v122, v123, v125, v126, v127, v128, v129, v130);
  sub_1D98AB6A4();
  OUTLINED_FUNCTION_133();
  sub_1D992BF34();
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_2();
  sub_1D98DCECC(v22, v23, v24, v25, v26, v27);

  if (*(v124 + 136))
  {
    v29 = *(v2 + 768);
    if (v121 < v29)
    {
      __break(1u);
    }

    else if (((v121 - v29) & 0x8000000000000000) == 0)
    {
      if (*(v2 + 1090))
      {
        v3 = 0;
LABEL_12:
        v42 = *(v2 + 440);
        v43 = *(v2 + 424);
        v44 = *(v2 + 272);
        OUTLINED_FUNCTION_0_25();
        sub_1D98AB648(v45, v43, v46);
        sub_1D9881BC8();
        v4 = v47;
        OUTLINED_FUNCTION_1_18();
        sub_1D98AB6A4();
        sub_1D990E940(v44);
        v48 = sub_1D992B614();

        OUTLINED_FUNCTION_99(v49, sel_trackMessageStreamProcessed_timeToFirstMessage_messageCount_processingReason_failureReason_);

        goto LABEL_13;
      }

      v40 = *(v2 + 816);
      v41 = *(v2 + 808);
      v3 = v40 - v41;
      if (v40 >= v41)
      {
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_13:
  v50 = *(v2 + 776);
  v51 = *(v2 + 536);
  OUTLINED_FUNCTION_69();
  sub_1D992BD64();
  OUTLINED_FUNCTION_121();
  *(v2 + 264) = *(*(v50 + 48) + 16);
  sub_1D992BF34();
  OUTLINED_FUNCTION_115();

  v125 = v2 + 264;
  v126 = v3;
  OUTLINED_FUNCTION_124();
  v52 = v126;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_36_2();
  sub_1D986A454(v53, v54, v55, v56, v57, v58);

  OUTLINED_FUNCTION_43_0();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48900, &qword_1D9931E90);
  OUTLINED_FUNCTION_9(v59);
  *(v2 + 920) = *(v60 + 64);
  *(v2 + 928) = swift_task_alloc();

  swift_task_alloc();
  if (v3)
  {
    v61 = 0;
LABEL_18:
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_109();
    (*"First pass analysis running")();
    v64 = *(*(v51 + 56) + 8 * v4);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    v66 = OUTLINED_FUNCTION_59(v65);
    v67(v66, v3, v52);
    v68 = OUTLINED_FUNCTION_23_4();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v65);

    v71 = v64;
    v72 = v124;
    v52 = v61;
  }

  else
  {
    OUTLINED_FUNCTION_137();
    while (1)
    {
      v61 = v52 + 1;
      if (v52 + 1 >= v62)
      {
        break;
      }

      v3 = *(v63 + 8 * v52++);
      if (v3)
      {
        goto LABEL_18;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    v113 = OUTLINED_FUNCTION_18_2();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
    v72 = 0;
  }

  *(v2 + 944) = v52;
  *(v2 + 936) = v72;
  v73 = *(v2 + 928);
  v74 = OUTLINED_FUNCTION_50();
  sub_1D98AB298(v74, v75);

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
  OUTLINED_FUNCTION_28_2(v76);
  if (v77)
  {
    OUTLINED_FUNCTION_7_7();

    sub_1D992BAC4();
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_29_3();

    v78 = OUTLINED_FUNCTION_49();
    (v3)(v78);

    sub_1D98A8BC4("First pass analysis running");

    OUTLINED_FUNCTION_5_10();
    v79 = OUTLINED_FUNCTION_26_3();
    v80(v79);

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_42();

    __asm { BRAA            X1, X16 }
  }

  v83 = *(v2 + 928);
  v84 = *(v2 + 544);
  v85 = *(v2 + 536);
  v87 = *(v2 + 464);
  v86 = *(v2 + 472);
  v88 = *(v2 + 456);
  v89 = OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_17_2(v89);
  v90 = *(v87 + 32);
  OUTLINED_FUNCTION_95();
  v91();
  OUTLINED_FUNCTION_56();
  v92 = *(v2 + 208);

  OUTLINED_FUNCTION_57(0xD00000000000001FLL);
  OUTLINED_FUNCTION_156();

  v93 = *(v2 + 184);
  v94 = *(v2 + 192);
  OUTLINED_FUNCTION_36_2();
  sub_1D986A454(v95, v96, v97, v98, v99, v100);

  v101 = [objc_allocWithZone(MEMORY[0x1E69CED38]) init];
  OUTLINED_FUNCTION_155(v101, sel_setPreProcessorInfo_);

  if ([v52 preProcessorInfo])
  {
    [v101 setPreProcessorTriggerReason_];
  }

  v103 = sub_1D992AE04();
  OUTLINED_FUNCTION_6(v103);
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_159();
  sub_1D992ADC4();
  v106 = OUTLINED_FUNCTION_24_2();
  v108 = v107(v106);
  OUTLINED_FUNCTION_154(v108, sel_setMessageCreationTimeSince1970_);

  v109 = swift_task_alloc();
  v110 = OUTLINED_FUNCTION_125(v109);
  *v110 = v111;
  OUTLINED_FUNCTION_6_10(v110);
  OUTLINED_FUNCTION_42();

  return sub_1D98E2FA8();
}

uint64_t sub_1D98A7548()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v4 = *(v3 + 968);
  v5 = *(v3 + 280);
  v6 = *v0;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  *(v9 + 976) = v8;

  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

id sub_1D98A7644()
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_134();
  if (*(v0 + 976))
  {
    v1 = [*(v0 + 960) preProcessorInfo];
    if (v1)
    {
      v2 = v1;
      v3 = *(v0 + 480);
      v4 = *(v0 + 456);
      sub_1D9882D14(&qword_1ED8BF058);
      [v2 setBootSessionUUIDChanged_];
    }

    else
    {
    }
  }

  else
  {
    v5 = *(v0 + 952);
    v6 = *(v0 + 544);
    v48 = *(v0 + 536);
    v7 = *(v0 + 456);
    *(v0 + 232) = 0;
    *(v0 + 240) = 0xE000000000000000;
    sub_1D992BD64();
    v8 = *(v0 + 240);

    *(v0 + 216) = 0xD00000000000001ALL;
    *(v0 + 224) = 0x80000001D9939510;
    v9 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v9);

    v10 = *(v0 + 216);
    v11 = *(v0 + 224);
    OUTLINED_FUNCTION_36_2();
    sub_1D98DCEB4(v12, v13, v14, v15, v16, v17);
  }

  v18 = *(v0 + 952);
  v20 = *(v0 + 496);
  v19 = *(v0 + 504);
  v21 = *(v0 + 472);
  v22 = *(v0 + 456);
  v23 = OUTLINED_FUNCTION_20();
  v20(v23, v18, v22);
  v24 = mach_absolute_time();
  SiriAnalyticsMachAbsoluteTimeGetNanoseconds(v24);
  v25 = objc_allocWithZone(sub_1D992B164());
  v26 = sub_1D992B144();
  *(v0 + 984) = v26;

  result = [objc_allocWithZone(MEMORY[0x1E69CED28]) init];
  *(v0 + 992) = result;
  if (result)
  {
    v28 = result;
    v29 = *(v0 + 752);
    v31 = *(v0 + 496);
    v30 = *(v0 + 504);
    v32 = *(v0 + 456);
    v33 = *(v0 + 280);
    v34 = *(v0 + 472) + 15;
    [result setRedactionSummaryReported_];
    v35 = swift_task_alloc();
    *(v0 + 1000) = v35;
    sub_1D992AE74();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    OUTLINED_FUNCTION_9(v36);
    v38 = *(v37 + 64);
    v39 = OUTLINED_FUNCTION_20();
    v31(v39, v35, v32);
    OUTLINED_FUNCTION_76();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v32);
    objc_allocWithZone(v29);
    v43 = v26;
    v44 = v28;
    *(v0 + 1008) = sub_1D992B0A4();

    *(v0 + 1016) = *(v33 + 176);
    v45 = swift_task_alloc();
    *(v0 + 1024) = v45;
    *v45 = v0;
    OUTLINED_FUNCTION_5_8(v45);
    OUTLINED_FUNCTION_106();

    return sub_1D98BF3EC(v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D98A7984()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 1024);
  v3 = *(v1 + 280);
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D98A7A7C()
{
  OUTLINED_FUNCTION_18();
  v0[129] = *(v0[35] + 192);
  v1 = swift_task_alloc();
  v0[130] = v1;
  *v1 = v0;
  v1[1] = sub_1D98A7B14;
  v2 = OUTLINED_FUNCTION_93(v0[126]);

  return sub_1D987C088(v2);
}

uint64_t sub_1D98A7B14()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 1040);
  v3 = *(v1 + 280);
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1D98A7C0C()
{
  v3 = *(v0 + 1008);
  v4 = *(v0 + 952);
  v5 = *(v0 + 760);
  *(v0 + 1048) = *(*(v0 + 280) + 184);
  sub_1D98D4378(v3);
  v6 = OUTLINED_FUNCTION_49();
  v8 = sub_1D98B3970(v6, v7);
  *(v0 + 1056) = v8;
  if (v8)
  {
    v9 = swift_task_alloc();
    *(v0 + 1064) = v9;
    *v9 = v0;
    v9[1] = sub_1D98A80FC;
    v10 = *(v0 + 1016);
    OUTLINED_FUNCTION_58();

    sub_1D98BF3EC(v11);
  }

  else
  {
    v13 = *(v0 + 960);

    v14 = *(v0 + 992);
    OUTLINED_FUNCTION_102();

    v15 = OUTLINED_FUNCTION_92();
    v1(v15);
    v16 = OUTLINED_FUNCTION_49();
    v1(v16);

    v17 = *(v0 + 944);
    v18 = *(v0 + 936);
    v19 = *(v0 + 920);
    OUTLINED_FUNCTION_20();
    if (v18)
    {
      v20 = *(v0 + 912);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_110();
      v2();
      v24 = *(*(v20 + 56) + 8 * v1);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
      v25 = OUTLINED_FUNCTION_59(v14);
      v26(v25, v18, v4);
      v27 = OUTLINED_FUNCTION_23_4();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v14);

      v30 = v24;
      v31 = v71;
LABEL_11:
      *(v0 + 944) = v17;
      *(v0 + 936) = v31;
      v32 = *(v0 + 928);
      v33 = OUTLINED_FUNCTION_50();
      sub_1D98AB298(v33, v34);

      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
      OUTLINED_FUNCTION_28_2(v35);
      if (v36)
      {
        OUTLINED_FUNCTION_7_7();

        sub_1D992BAC4();
        OUTLINED_FUNCTION_164();
        OUTLINED_FUNCTION_29_3();

        v37 = OUTLINED_FUNCTION_49();
        (v14)(v37);

        sub_1D98A8BC4(v70);

        OUTLINED_FUNCTION_5_10();
        v38 = OUTLINED_FUNCTION_26_3();
        v39(v38);

        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_58();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_107();
      v42 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_17_2(v42);
      v43 = v14[4];
      OUTLINED_FUNCTION_95();
      v44();
      OUTLINED_FUNCTION_56();
      v45 = *(v0 + 208);

      OUTLINED_FUNCTION_57(0xD00000000000001FLL);
      OUTLINED_FUNCTION_156();

      v46 = *(v0 + 184);
      v47 = *(v0 + 192);
      OUTLINED_FUNCTION_36_2();
      sub_1D986A454(v48, v49, v50, v51, v52, v53);

      v54 = [objc_allocWithZone(MEMORY[0x1E69CED38]) init];
      OUTLINED_FUNCTION_155(v54, sel_setPreProcessorInfo_);

      if ([v18 preProcessorInfo])
      {
        [v54 setPreProcessorTriggerReason_];
      }

      v56 = sub_1D992AE04();
      OUTLINED_FUNCTION_6(v56);
      v58 = *(v57 + 64);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_159();
      sub_1D992ADC4();
      v59 = OUTLINED_FUNCTION_24_2();
      v61 = v60(v59);
      OUTLINED_FUNCTION_154(v61, sel_setMessageCreationTimeSince1970_);

      v62 = swift_task_alloc();
      v63 = OUTLINED_FUNCTION_125(v62);
      *v63 = v64;
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_58();

      sub_1D98E2FA8();
    }

    else
    {
      while (!__OFADD__(v17, 1))
      {
        OUTLINED_FUNCTION_131();
        if (v22 == v23)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
          v66 = OUTLINED_FUNCTION_18_2();
          __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
          v31 = 0;
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_132(v21);
      }

      __break(1u);
    }
  }
}

uint64_t sub_1D98A80FC()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = v1[133];
  v5 = v1[132];
  v6 = *v0;
  *v3 = *v0;

  v7 = swift_task_alloc();
  v2[134] = v7;
  *v7 = v6;
  v7[1] = sub_1D98A8248;
  v8 = v1[129];

  return sub_1D987C088(v5);
}

uint64_t sub_1D98A8248()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 1072);
  v3 = *(v1 + 280);
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1D98A8340()
{
  v3 = *(v0 + 1048);
  v4 = *(v0 + 992);
  v5 = *(v0 + 984);
  v6 = *(v0 + 960);
  sub_1D98D4378(*(v0 + 1056));

  v7 = *(v0 + 1056);
  OUTLINED_FUNCTION_102();

  v8 = OUTLINED_FUNCTION_92();
  v1(v8);
  v9 = OUTLINED_FUNCTION_49();
  v1(v9);

  v10 = *(v0 + 944);
  v11 = *(v0 + 936);
  v12 = *(v0 + 920);
  OUTLINED_FUNCTION_20();
  if (v11)
  {
    v13 = *(v0 + 912);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_110();
    v2();
    v17 = *(*(v13 + 56) + 8 * v1);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    v18 = OUTLINED_FUNCTION_59(v7);
    v19(v18, v11, v4);
    v20 = OUTLINED_FUNCTION_23_4();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v7);

    v23 = v17;
    v24 = v64;
LABEL_7:
    *(v0 + 944) = v10;
    *(v0 + 936) = v24;
    v25 = *(v0 + 928);
    v26 = OUTLINED_FUNCTION_50();
    sub_1D98AB298(v26, v27);

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    OUTLINED_FUNCTION_28_2(v28);
    if (v29)
    {
      OUTLINED_FUNCTION_7_7();

      sub_1D992BAC4();
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_29_3();

      v30 = OUTLINED_FUNCTION_49();
      (v7)(v30);

      sub_1D98A8BC4(v63);

      OUTLINED_FUNCTION_5_10();
      v31 = OUTLINED_FUNCTION_26_3();
      v32(v31);

      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_58();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_107();
    v35 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_17_2(v35);
    v36 = v7[4];
    OUTLINED_FUNCTION_95();
    v37();
    OUTLINED_FUNCTION_56();
    v38 = *(v0 + 208);

    OUTLINED_FUNCTION_57(0xD00000000000001FLL);
    OUTLINED_FUNCTION_156();

    v39 = *(v0 + 184);
    v40 = *(v0 + 192);
    OUTLINED_FUNCTION_36_2();
    sub_1D986A454(v41, v42, v43, v44, v45, v46);

    v47 = [objc_allocWithZone(MEMORY[0x1E69CED38]) init];
    OUTLINED_FUNCTION_155(v47, sel_setPreProcessorInfo_);

    if ([v11 preProcessorInfo])
    {
      [v47 setPreProcessorTriggerReason_];
    }

    v49 = sub_1D992AE04();
    OUTLINED_FUNCTION_6(v49);
    v51 = *(v50 + 64);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_159();
    sub_1D992ADC4();
    v52 = OUTLINED_FUNCTION_24_2();
    v54 = v53(v52);
    OUTLINED_FUNCTION_154(v54, sel_setMessageCreationTimeSince1970_);

    v55 = swift_task_alloc();
    v56 = OUTLINED_FUNCTION_125(v55);
    *v56 = v57;
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_58();

    sub_1D98E2FA8();
  }

  else
  {
    while (!__OFADD__(v10, 1))
    {
      OUTLINED_FUNCTION_131();
      if (v15 == v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
        v59 = OUTLINED_FUNCTION_18_2();
        __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
        v24 = 0;
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_132(v14);
    }

    __break(1u);
  }
}

uint64_t sub_1D98A87A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_143();
  v17 = v16[73];
  v18 = v16[72];
  v19 = v16[55];

  sub_1D98A8BC4(v19);

  v20 = v16[75];
  v21 = v16[70];
  v22 = v16[69];
  v23 = v16[60];
  v24 = v16[57];
  v26 = v16[53];
  v25 = v16[54];
  OUTLINED_FUNCTION_25_1();
  v27 = OUTLINED_FUNCTION_62();
  v28(v27);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_24();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D98A88B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_143();
  v17 = v16[80];
  v18 = v16[78];
  v19 = v16[72];
  v20 = v16[55];

  sub_1D98A8BC4(v20);

  v21 = v16[83];
  v22 = v16[70];
  v23 = v16[69];
  v24 = v16[60];
  v25 = v16[57];
  v27 = v16[53];
  v26 = v16[54];
  OUTLINED_FUNCTION_25_1();
  v28 = OUTLINED_FUNCTION_62();
  v29(v28);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_24();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D98A89C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D98A89E4, a2, 0);
}

uint64_t sub_1D98A89E4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 24) + 168);
  *(v0 + 48) = 0;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1D98A8A84;
  v3 = OUTLINED_FUNCTION_93(*(v0 + 16));

  return sub_1D990575C(v3, (v0 + 48));
}

uint64_t sub_1D98A8A84()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_17();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    v9 = *(v3 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D98A8BA0, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_1D98A8BA0()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 40);
  return v2();
}

void sub_1D98A8BC4(uint64_t a1)
{
  v2 = type metadata accessor for PreprocessorTelemetry(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8BF440 != -1)
  {
    swift_once();
  }

  if (byte_1ED8BFBD1 == 1)
  {
    swift_beginAccess();
    sub_1D98AB648(a1, v5, type metadata accessor for PreprocessorTelemetry);
    sub_1D98A0F54(v5);
    sub_1D98AB6A4();
  }
}

void sub_1D98A8CC8(uint64_t a1)
{
  if ([*(a1 + *(type metadata accessor for StagedMessage() + 24)) anyEventType] == 8)
  {
    v1 = sub_1D98FCA0C();
    if (v1)
    {
      v2 = v1;
      swift_beginAccess();
      sub_1D9903AC0();
      swift_endAccess();
    }
  }
}

void sub_1D98A8D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PreprocessorCounterKey(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreprocessorTelemetry(0);
  v10 = swift_projectBox();
  v11 = type metadata accessor for StagedMessage();
  v12 = *(a1 + *(v11 + 20));
  if (v12)
  {
    v13 = *(a1 + *(v11 + 24));
    v36 = v12;
    v14 = [v13 unwrap];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1D992AE84();
      v35 = a3;
      v17 = v16;
      v34 = &v32;
      v18 = *(v16 - 8);
      v32 = v9;
      v19 = v18;
      v20 = *(v18 + 64);
      MEMORY[0x1EEE9AC00](v16);
      v33 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
      v21 = &v32 - v33;
      sub_1D992B134();
      v22 = [v13 anyEventType];
      v23 = sub_1D992BB44();
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      swift_beginAccess();
      (*(v19 + 16))(v8, v21, v17);
      v26 = &v8[*(v5 + 20)];
      *v26 = v22;
      *(v26 + 1) = v25;
      v27 = v10 + *(v32 + 32);
      sub_1D9887FAC();
      sub_1D98AB6A4();
      swift_endAccess();
      v28 = *(v19 + 8);
      v29 = v28(v21, v17);
      MEMORY[0x1EEE9AC00](v29);
      v30 = &v32 - v33;
      sub_1D992B134();
      sub_1D992B154();
      sub_1D98EA244();

      v28(v30, v17);
    }

    else
    {
      v31 = v36;
    }
  }
}

uint64_t sub_1D98A9050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a5;
  v8[13] = a7;
  v8[11] = a4;
  v10 = *(*(type metadata accessor for StagedMessage() - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  type metadata accessor for PreprocessorTelemetry(0);
  v8[17] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1D98A910C, a4, 0);
}

uint64_t sub_1D98A910C()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F0, &qword_1D992FB38);
  sub_1D992B4E4();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_97();
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1D98A9204;
  v7 = v0[17];
  v8 = v0[13];
  v9 = v0[11];
  OUTLINED_FUNCTION_93(v0[16]);

  return sub_1D98A9320();
}

uint64_t sub_1D98A9204()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 128);
  v7 = *v0;
  OUTLINED_FUNCTION_17();
  *v8 = v7;

  swift_endAccess();
  swift_endAccess();
  swift_endAccess();
  OUTLINED_FUNCTION_52();
  sub_1D98AB6A4();

  OUTLINED_FUNCTION_25();

  return v9();
}

uint64_t sub_1D98A9320()
{
  OUTLINED_FUNCTION_18();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[16] = v5;
  v1[17] = v6;
  v7 = type metadata accessor for PreprocessorResultCounterKey(0);
  v1[22] = v7;
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  v1[23] = OUTLINED_FUNCTION_20();
  v10 = sub_1D992B1E4();
  v1[24] = v10;
  OUTLINED_FUNCTION_23(v10);
  v1[25] = v11;
  v13 = *(v12 + 64);
  v1[26] = OUTLINED_FUNCTION_20();
  v14 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D98A93F0()
{
  v1 = v0[16];
  v2 = type metadata accessor for StagedMessage();
  v3 = v2;
  v4 = *(v1 + *(v2 + 20));
  v0[27] = v4;
  if (v4)
  {
    v5 = *(v1 + *(v2 + 24));
    v0[28] = v5;
    v6 = v4;
    v7 = [v5 unwrap];
    if (!v7 || (v8 = v7, v9 = sub_1D992BB44(), v11 = v10, v8, (v11 & 1) != 0))
    {
      v9 = 0;
    }

    v0[29] = v9;
    v12 = swift_task_alloc();
    v0[30] = v12;
    *v12 = v0;
    v12[1] = sub_1D98A9644;
    v13 = v0[19];

    return sub_1D98E4E88(v6, v5);
  }

  else
  {
    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
      v1 = v0[16];
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD00000000000001FLL, 0x80000001D9939230);
    [*(v1 + *(v3 + 24)) anyEventType];
    v15 = sub_1D992BAE4();
    MEMORY[0x1DA739C30](v15);

    MEMORY[0x1DA739C30](0xD000000000000029, 0x80000001D9939250);
    sub_1D98DCEB4(0, 0xE000000000000000, 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

    OUTLINED_FUNCTION_162();

    OUTLINED_FUNCTION_25();

    return v16();
  }
}

uint64_t sub_1D98A9644()
{
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *(v2 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_16();
  *v7 = v6;
  *(v10 + 248) = v8;
  *(v10 + 256) = v9;
  *(v10 + 320) = v11;
  *(v10 + 264) = v0;

  v12 = *(v2 + 168);
  OUTLINED_FUNCTION_141();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D98A9770()
{
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 320);
  v7 = OUTLINED_FUNCTION_35_2();
  sub_1D98AB058(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_35_2();
  v13 = sub_1D98E53EC(v10, v11, v12);
  v14 = OUTLINED_FUNCTION_35_2();
  sub_1D98AB0A8(v14, v15, v16);
  if (v13)
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 208);
    v19 = *(v0 + 216);
    v20 = *(v0 + 200);
    v236 = *(v0 + 232);
    v237 = *(v0 + 192);
    v21 = *(v0 + 176);
    v22 = *(v0 + 184);
    v242 = *(v0 + 136);
    v23 = sub_1D992AE84();
    OUTLINED_FUNCTION_6(v23);
    v25 = v24;
    v27 = *(v26 + 64);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_160();
    LODWORD(v19) = [v17 anyEventType];
    sub_1D992B1C4();
    (*(v25 + 16))(v22, v1, v23);
    v28 = v22 + v21[5];
    *v28 = v19;
    *(v28 + 8) = v236;
    (*(v20 + 16))(v22 + v21[6], v18, v237);
    *(v22 + v21[7]) = 0;
    v29 = v242 + *(type metadata accessor for PreprocessorTelemetry(0) + 36);
    sub_1D98880F0();
    OUTLINED_FUNCTION_2_17();
    sub_1D98AB6A4();
    (*(v20 + 8))(v18, v237);
    (*(v25 + 8))(v1, v23);

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v31 = *(v0 + 248);
    v30 = *(v0 + 256);
    v32 = *(v0 + 320);
    OUTLINED_FUNCTION_68();
    sub_1D992BD64();
    v245 = v247;
    v246 = v249;
    MEMORY[0x1DA739C30](0xD00000000000001CLL, 0x80000001D9939310);
    v33 = OUTLINED_FUNCTION_94();
    v35 = sub_1D98E5594(v33, v34, v32);
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      [*(v0 + 224) anyEventType];
      v248 = sub_1D992BAE4();
      v250 = v109;
      MEMORY[0x1DA739C30](0x776F6E6B6E753C2ELL, 0xEA00000000003E6ELL);
      v35 = v248;
      v37 = v250;
    }

    v111 = *(v0 + 248);
    v110 = *(v0 + 256);
    v112 = *(v0 + 216);
    v113 = *(v0 + 320);
    MEMORY[0x1DA739C30](v35, v37);

    MEMORY[0x1DA739C30](0xD000000000000026, 0x80000001D9939370);
    v114 = OUTLINED_FUNCTION_94();
    sub_1D98E5708(v114, v115, v113);
    *(v0 + 120) = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488F8, &qword_1D9931E78);
    v117 = sub_1D992B6A4();
    MEMORY[0x1DA739C30](v117);

    sub_1D986A454(v245, v246, 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

    v106 = OUTLINED_FUNCTION_94();
    v108 = v113;
    goto LABEL_24;
  }

  v38 = *(v0 + 248);
  v39 = *(v0 + 256);
  v41 = *(v0 + 200);
  v40 = *(v0 + 208);
  v42 = *(v0 + 192);
  v43 = *(v0 + 320);
  sub_1D992B1D4();
  v44 = sub_1D98E5A14(v40, v38, v39, v43);
  v46 = v45;
  v48 = v47;
  *(v0 + 272) = v44;
  *(v0 + 280) = v45;
  v51 = *(v41 + 8);
  v50 = v41 + 8;
  v49 = v51;
  *(v0 + 288) = v51;
  *(v0 + 296) = v50 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v52 = OUTLINED_FUNCTION_33();
  v51(v52);
  if (!v44)
  {
LABEL_11:
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_146();
    v69 = OUTLINED_FUNCTION_120();
    (v2)(v69);
    if (v50)
    {
      v244 = v44;
      if ((v49 & 1) == 0)
      {
        v156 = *(v0 + 216);
        v157 = *(v0 + 128);
        v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        OUTLINED_FUNCTION_9(v158);
        v160 = *(v159 + 64);
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_13_0();
        v161 = sub_1D992AE84();
        v162 = *(v161 - 8);
        v163 = v162[2];
        v164 = OUTLINED_FUNCTION_27();
        v165(v164);
        OUTLINED_FUNCTION_76();
        __swift_storeEnumTagSinglePayload(v166, v167, v168, v161);
        v169 = objc_allocWithZone(sub_1D992B104());
        v170 = v50;
        v171 = v156;
        v172 = v170;
        OUTLINED_FUNCTION_113();
        v241 = v173;
        v174 = sub_1D992B0A4();

        v175 = sub_1D992B0C4();
        if (v175)
        {
          v176 = v175;
          v177 = *(v0 + 216);
          v178 = *(v0 + 144);
          v179 = v162[8];
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_160();
          sub_1D98E97BC();
          v180 = OUTLINED_FUNCTION_108();
          v181(v180);

          OUTLINED_FUNCTION_153();
          v182 = *(v0 + 88);
          sub_1D992B0F4();
        }

        OUTLINED_FUNCTION_33_2();
        v183 = *(v46 + 8);
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_152();
        [v171 anyEventType];
        sub_1D992B1B4();
        v184 = OUTLINED_FUNCTION_136();
        v186 = v185(v184);
        v194 = OUTLINED_FUNCTION_46(v186, v187, v188, v189, v190, v191, v192, v193, v205, v208);
        v195(v194);
        v196 = OUTLINED_FUNCTION_150();
        OUTLINED_FUNCTION_148(v196, v197, v198, v199, v200, v201, v202, v203, v207, v210, v211, v213, v216);
        sub_1D98AB0A8(v223, v226, SBYTE4(v218));

        OUTLINED_FUNCTION_2_17();
        sub_1D98AB6A4();
        v204 = OUTLINED_FUNCTION_33();
        v229(v204);
        (*(v46 + 1))(v174, v220);

        goto LABEL_25;
      }

      v70 = OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_6(v70);
      v72 = v71;
      v74 = *(v73 + 64);
      OUTLINED_FUNCTION_20();

      v233 = v50;
      sub_1D992B134();
      [v223 anyEventType];
      sub_1D992B1B4();
      v75 = OUTLINED_FUNCTION_114();
      v77 = v76(v75);
      v85 = OUTLINED_FUNCTION_54(v77, v78, v79, v80, v81, v82, v83, v84, v205, v208, v211, v213, v216, v218, v220, v223, v226);
      v86(v85);
      *(v49 + *(p_info + 7)) = 0;
      v87 = type metadata accessor for PreprocessorTelemetry(0);
      OUTLINED_FUNCTION_149(v87, v88, v89, v90, v91, v92, v93, v94, v206, v209, v212, v214, v217, v219, v221, v224, v227, v229, v231);
      OUTLINED_FUNCTION_2_17();
      sub_1D98AB6A4();
      v235(v40, v50);
      v95 = *(v72 + 8);
      v96 = OUTLINED_FUNCTION_72();
      v97(v96);

      if (qword_1ED8BD6F0 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v98 = *(v0 + 248);
      v239 = *(v0 + 256);
      v99 = *(v0 + 216);
      v100 = *(v0 + 320);
      OUTLINED_FUNCTION_68();
      sub_1D992BD64();
      MEMORY[0x1DA739C30](0xD00000000000001CLL, 0x80000001D9939310);
      v101 = [v233 qualifiedMessageName];
      v102 = sub_1D992B624();
      v104 = v103;

      MEMORY[0x1DA739C30](v102, v104);

      MEMORY[0x1DA739C30](0xD000000000000017, 0x80000001D9939330);
      *(v0 + 104) = v244;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488F8, &qword_1D9931E78);
      v105 = sub_1D992B6A4();
      MEMORY[0x1DA739C30](v105);

      sub_1D986A454(v247, v249, 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

      v106 = v98;
      v107 = v239;
      v108 = v100;
    }

    else
    {
      v152 = *(v0 + 248);
      v153 = *(v0 + 256);
      v154 = *(v0 + 320);

      v106 = OUTLINED_FUNCTION_35_2();
    }

LABEL_24:
    sub_1D98AB0A8(v106, v107, v108);
LABEL_25:
    OUTLINED_FUNCTION_162();

    OUTLINED_FUNCTION_25();

    return v155();
  }

  v243 = v49;
  if (v48)
  {
    v220 = *(v0 + 216);
    v223 = *(v0 + 224);
    v226 = *(v0 + 208);
    v229 = *(v0 + 232);
    v53 = *(v0 + 200);
    v54 = *(v0 + 176);
    v2 = *(v0 + 184);
    v231 = *(v0 + 192);
    v232 = *(v0 + 136);
    v55 = sub_1D992AE84();
    OUTLINED_FUNCTION_6(v55);
    v57 = v56;
    v59 = *(v58 + 64);
    v60 = OUTLINED_FUNCTION_20();
    v238 = v46;

    v235 = v44;
    sub_1D992B134();
    v61 = [v223 anyEventType];
    sub_1D992B1D4();
    (*(v57 + 16))(v2, v60, v55);
    v62 = &v2[v54[5]];
    *v62 = v61;
    *(v62 + 1) = v229;
    (*(v53 + 16))(&v2[v54[6]], v226, v231);
    v2[v54[7]] = 0;
    v63 = &v232[*(type metadata accessor for PreprocessorTelemetry(0) + 36)];
    sub_1D98880F0();
    OUTLINED_FUNCTION_2_17();
    sub_1D98AB6A4();
    v243(v226, v231);
    (*(v57 + 8))(v60, v55);
    p_info = SiriAnalyticsUnifiedBiomeStream.info;

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v40 = qword_1ECB49658;
    OUTLINED_FUNCTION_68();
    sub_1D992BD64();
    v49 = 0xD00000000000001CLL;
    MEMORY[0x1DA739C30](0xD00000000000001CLL, 0x80000001D9939310);
    v46 = v235;
    v64 = [v235 qualifiedMessageName];
    v65 = sub_1D992B624();
    v67 = v66;

    MEMORY[0x1DA739C30](v65, v67);

    MEMORY[0x1DA739C30](0xD000000000000018, 0x80000001D9939350);
    *(v0 + 112) = v238;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488F8, &qword_1D9931E78);
    v68 = sub_1D992B6A4();
    MEMORY[0x1DA739C30](v68);

    v44 = v40;
    sub_1D986A454(v247, v249, 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

    goto LABEL_11;
  }

  v118 = *(v0 + 216);
  v119 = *(v0 + 160);
  v120 = *(v0 + 128);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v121);
  v123 = *(v122 + 64);
  OUTLINED_FUNCTION_20();
  v124 = sub_1D992AE84();
  v125 = *(v124 - 8);
  v126 = *(v125 + 16);
  v127 = OUTLINED_FUNCTION_94();
  v234 = v128;
  v128(v127);
  OUTLINED_FUNCTION_76();
  v240 = v124;
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v124);
  objc_allocWithZone(sub_1D992B104());
  v132 = v118;
  v133 = v44;
  v134 = sub_1D992B0A4();
  *(v0 + 304) = v134;

  if (*v119)
  {
    v135 = *(v0 + 160);
    v136 = *(v135 + 40);
    v137 = *(v135 + 8);
    v138 = *(v135 + 24);
    *(v0 + 16) = *v119;
    *(v0 + 24) = v137;
    *(v0 + 40) = v138;
    *(v0 + 56) = v136;
    sub_1D9903C78();
  }

  v139 = *(v0 + 224);
  v141 = *(v0 + 208);
  v140 = *(v0 + 216);
  v142 = *(v0 + 200);
  v222 = *(v0 + 232);
  v225 = *(v0 + 192);
  v143 = *(v0 + 176);
  v144 = *(v0 + 184);
  v230 = *(v0 + 168);
  v145 = *(v125 + 64) + 15;
  v228 = *(v0 + 136);
  swift_task_alloc();
  OUTLINED_FUNCTION_160();
  LODWORD(v140) = [v139 anyEventType];
  sub_1D992B1D4();
  v146 = OUTLINED_FUNCTION_72();
  v234(v146);
  v147 = v144 + v143[5];
  *v147 = v140;
  *(v147 + 8) = v222;
  (*(v142 + 16))(v144 + v143[6], v141, v225);
  *(v144 + v143[7]) = 1;
  v148 = v228 + *(type metadata accessor for PreprocessorTelemetry(0) + 36);
  sub_1D98880F0();
  OUTLINED_FUNCTION_2_17();
  sub_1D98AB6A4();
  v243(v141, v225);
  (*(v125 + 8))(v125, v240);

  v149 = *(v230 + 176);
  v150 = swift_task_alloc();
  *(v0 + 312) = v150;
  *v150 = v0;
  OUTLINED_FUNCTION_5_8(v150);

  return sub_1D98BF3EC(v134);
}

uint64_t sub_1D98AA52C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 312);
  v3 = *(v1 + 168);
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D98AA624()
{
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);

  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_146();
  v8 = OUTLINED_FUNCTION_120();
  v3(v8);
  if (!v5)
  {
    v48 = *(v0 + 248);
    v49 = *(v0 + 256);
    v50 = *(v0 + 320);

    v45 = OUTLINED_FUNCTION_35_2();
LABEL_7:
    sub_1D98AB0A8(v45, v46, v47);
    goto LABEL_11;
  }

  v129 = v7;
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_6(v9);
    v11 = v10;
    v13 = *(v12 + 64);
    OUTLINED_FUNCTION_20();

    v125 = v5;
    sub_1D992B134();
    [v119 anyEventType];
    sub_1D992B1B4();
    v14 = OUTLINED_FUNCTION_114();
    v16 = v15(v14);
    v24 = OUTLINED_FUNCTION_54(v16, v17, v18, v19, v20, v21, v22, v23, v102, v105, v108, v110, v113, v115, v117, v119, v121);
    v25(v24);
    *(v6 + *(v4 + 28)) = 0;
    v26 = type metadata accessor for PreprocessorTelemetry(0);
    OUTLINED_FUNCTION_149(v26, v27, v28, v29, v30, v31, v32, v33, v103, v106, v109, v111, v114, v116, v118, v120, v122, v123, v124);
    OUTLINED_FUNCTION_2_17();
    sub_1D98AB6A4();
    v126(v1, v5);
    v34 = *(v11 + 8);
    v35 = OUTLINED_FUNCTION_72();
    v36(v35);

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v37 = *(v0 + 248);
    v127 = *(v0 + 256);
    v38 = *(v0 + 216);
    v39 = *(v0 + 320);
    OUTLINED_FUNCTION_68();
    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD00000000000001CLL, 0x80000001D9939310);
    v40 = [v125 qualifiedMessageName];
    v41 = sub_1D992B624();
    v43 = v42;

    MEMORY[0x1DA739C30](v41, v43);

    MEMORY[0x1DA739C30](0xD000000000000017, 0x80000001D9939330);
    *(v0 + 104) = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488F8, &qword_1D9931E78);
    v44 = sub_1D992B6A4();
    MEMORY[0x1DA739C30](v44);

    sub_1D986A454(v130, v131, 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

    v45 = v37;
    v46 = v127;
    v47 = v39;
    goto LABEL_7;
  }

  v51 = *(v0 + 216);
  v52 = *(v0 + 128);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_13_0();
  v56 = sub_1D992AE84();
  v57 = *(v56 - 8);
  v58 = v57[2];
  v59 = OUTLINED_FUNCTION_27();
  v60(v59);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v56);
  v64 = objc_allocWithZone(sub_1D992B104());
  v65 = v5;
  v66 = v51;
  v67 = v65;
  OUTLINED_FUNCTION_113();
  v128 = v68;
  v69 = sub_1D992B0A4();

  v70 = sub_1D992B0C4();
  if (v70)
  {
    v71 = v70;
    v72 = *(v0 + 216);
    v73 = *(v0 + 144);
    v74 = v57[8];
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_160();
    sub_1D98E97BC();
    v75 = OUTLINED_FUNCTION_108();
    v76(v75);

    OUTLINED_FUNCTION_153();
    v77 = *(v0 + 88);
    sub_1D992B0F4();
  }

  OUTLINED_FUNCTION_33_2();
  v78 = *(v2 + 64);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_152();
  [v66 anyEventType];
  sub_1D992B1B4();
  v79 = OUTLINED_FUNCTION_136();
  v81 = v80(v79);
  v89 = OUTLINED_FUNCTION_46(v81, v82, v83, v84, v85, v86, v87, v88, v102, v105);
  v90(v89);
  v91 = OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_148(v91, v92, v93, v94, v95, v96, v97, v98, v104, v107, v108, v110, v113);
  sub_1D98AB0A8(v119, v121, SBYTE4(v115));

  OUTLINED_FUNCTION_2_17();
  sub_1D98AB6A4();
  v99 = OUTLINED_FUNCTION_33();
  v123(v99);
  (*(v2 + 8))(v69);

LABEL_11:
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_25();

  return v100();
}

uint64_t sub_1D98AAB3C()
{
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v1 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
  sub_1D992BD64();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1DA739C30](0xD000000000000022, 0x80000001D99392E0);
  [v2 anyEventType];
  v4 = sub_1D992BAE4();
  MEMORY[0x1DA739C30](v4);

  MEMORY[0x1DA739C30](0x206F742065756420, 0xE800000000000000);
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(v0[8], v0[9], 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D98AACF4()
{
  OUTLINED_FUNCTION_18();
  v0[6] = v1;
  v0[7] = v2;
  v3 = type metadata accessor for StagedMessage();
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_20();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D0, &qword_1D992FB18);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_20();
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D98AAD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_134();
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v14 = v12[6];
  v13 = v12[7];
  sub_1D98DCECC(0xD00000000000001BLL, 0x80000001D9939170, 0xD000000000000062, 0x80000001D9939190, 0xD00000000000002DLL, 0x80000001D9939200);
  _s28MessageStagingStreamIteratorCMa();
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  *(inited + 24) = 0;

  while (1)
  {
    v16 = v12[9];
    sub_1D987A5E0(v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
    v19 = v12[8];
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    sub_1D98AB308(v12[9] + *(v17 + 48), v12[8], type metadata accessor for StagedMessage);
    v20 = *(v14 + 16);
    if (v20)
    {
      v21 = (v14 + 40);
      do
      {
        v22 = v12[8];
        v23 = *(v21 - 1);
        v24 = *v21;

        v25 = objc_autoreleasePoolPush();
        v23(v22);

        objc_autoreleasePoolPop(v25);
        v21 += 2;
        --v20;
      }

      while (v20);
    }

    v26 = v12[8];
    OUTLINED_FUNCTION_52();
    sub_1D98AB6A4();
  }

  swift_setDeallocating();
  sub_1D987A7F4();
  OUTLINED_FUNCTION_0_0();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_106();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_1D98AAF7C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 152);

  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);

  v8 = *(v0 + 200);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D98AB008()
{
  sub_1D98AAF7C();

  return MEMORY[0x1EEE6DEF0](v0);
}

id sub_1D98AB058(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1D98AB0A8(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {

    v3 = vars8;
  }
}

unint64_t sub_1D98AB0E4(unint64_t *a1, void *a2, unint64_t *a3, unint64_t *a4)
{
  result = sub_1D9903E98(*a3, a3[1], *a4, a4[1]);
  *a1 = result;
  a1[1] = v7;
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_1D98AB11C()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_8(v1);
  v2 = OUTLINED_FUNCTION_27();

  return sub_1D98A89C8(v2, v3);
}

unint64_t sub_1D98AB1B0()
{
  result = qword_1ECB47BF0[0];
  if (!qword_1ECB47BF0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB49160, &qword_1D9934540);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECB47BF0);
  }

  return result;
}

void sub_1D98AB214(uint64_t a1, void *a2)
{
  sub_1D986E35C(0, &qword_1ECB47918, 0x1E69CF400);
  v3 = sub_1D992B7A4();

  [a2 setAnyEventTypeStatistics_];
}

uint64_t sub_1D98AB298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48900, &qword_1D9931E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98AB308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

unint64_t sub_1D98AB364()
{
  result = qword_1ECB47FA0;
  if (!qword_1ECB47FA0)
  {
    type metadata accessor for Preprocessor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47FA0);
  }

  return result;
}

uint64_t sub_1D98AB3B8()
{
  OUTLINED_FUNCTION_134();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F0, &qword_1D992FB38);
  OUTLINED_FUNCTION_23(v3);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = *(v0 + v6);
  v13 = *(v0 + v7);
  v14 = *(v0 + v8);
  v15 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1D989EB64;
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_106();

  return sub_1D98A9050(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1D98AB518(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D98AB584()
{
  result = qword_1ED8BD8E8;
  if (!qword_1ED8BD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD8E8);
  }

  return result;
}

unint64_t sub_1D98AB5CC()
{
  result = qword_1ED8BD688;
  if (!qword_1ED8BD688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48830, &qword_1D9931B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD688);
  }

  return result;
}

uint64_t sub_1D98AB648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

uint64_t sub_1D98AB6A4()
{
  v1 = OUTLINED_FUNCTION_13_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1D98AB6F8()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1D98692C4;
  OUTLINED_FUNCTION_129();

  return sub_1D98A350C(v8, v9, v10, v11);
}

_BYTE *storeEnumTagSinglePayload for Preprocessor.Steps(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D98AB884()
{
  result = qword_1ECB48910;
  if (!qword_1ECB48910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48910);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return sub_1D992B2A4();
}

uint64_t OUTLINED_FUNCTION_32_3(uint64_t a1)
{
  *(a1 + 8) = sub_1D98A4A60;
  v3 = *(v2 + 280);
  return v1;
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v21 + *(v19 + 20)) = a19;
  *(v21 + *(v19 + 24)) = 0;

  return sub_1D98AB308(v21, v20, type metadata accessor for MonotonicTimestamp);
}

void OUTLINED_FUNCTION_43_0()
{
  v2 = *(v1 + 48);
  *(v0 + 912) = v2;
  v3 = *(v2 + 32);
  *(v0 + 1091) = v3;
  v4 = -1;
  if (1 << v3 < 64)
  {
    v4 = ~(-1 << (1 << v3));
  }

  v5 = v4 & *(v2 + 64);
}

uint64_t OUTLINED_FUNCTION_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = v13 + *(v12 + 20);
  *v14 = v11;
  *(v14 + 8) = a10;
  v15 = *(v10 + 16);
  return v13 + *(v12 + 24);
}

uint64_t OUTLINED_FUNCTION_47()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = sub_1D98AB510;
  *(v5 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = v17 + *(v20 + 20);
  *v21 = v18;
  *(v21 + 8) = a17;
  v22 = *(v19 + 16);
  return v17 + *(v20 + 24);
}

uint64_t OUTLINED_FUNCTION_56()
{
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xE000000000000000;

  return sub_1D992BD64();
}

uint64_t OUTLINED_FUNCTION_57@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 184) = a1;
  *(v1 + 192) = v2;

  return sub_1D992BF34();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v2 + 32);
  return v1;
}

uint64_t OUTLINED_FUNCTION_60()
{
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[58];
  v5 = v0[57];
  v6 = (v0[59] + 15) & 0xFFFFFFFFFFFFFFF0;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_61()
{
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[58];
  v5 = v0[57];
  v6 = (v0[59] + 15) & 0xFFFFFFFFFFFFFFF0;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_62()
{
  v2 = v1[43];
  v4 = v1[42];
  v5 = v1[41];
  v6 = v1[37];
  v7 = v1[36];
  return v0;
}

uint64_t OUTLINED_FUNCTION_73()
{
  v11 = v0[36];
  v12 = v0[37];
  v8 = v0[28];
  v9 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v6 = v0[22];
  v5 = v0[23];
  v10 = v0[17];

  return sub_1D992AE84();
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1)
{
  *(v1 + 800) = a1;
  *(v1 + 1090) = 1;
  *(v1 + 808) = 0u;
  v3 = *(v1 + 344);
  v4 = *(v1 + 304);

  return sub_1D992B4C4();
}

char *OUTLINED_FUNCTION_77(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a1[2] = a19;
  a1[3] = v20;
  a1[4] = a19;
  return a1 + v19;
}

void OUTLINED_FUNCTION_82()
{
  v1[95] = v0;
  v2 = v1[79];
  v6 = v1[72];
  v3 = v1[67];
  v4 = v1[55];
  v5 = v1[47];
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  result = a11;
  *(v16 + v18) = a12;
  *(v16 + v19) = a14;
  *(v16 + v20) = a16;
  *(v16 + v17) = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_84()
{
  v2 = v1[43];
  v4 = v1[42];
  v5 = v1[41];
  v6 = v1[37];
  v7 = v1[36];
  return v0;
}

uint64_t OUTLINED_FUNCTION_85(void *a1)
{
  *(v4 + 624) = a1;
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v2;
  a1[6] = v6;
  a1[7] = 0;
  *(v4 + 632) = *(v7 + 120);

  return type metadata accessor for MetadataExtractor();
}

uint64_t OUTLINED_FUNCTION_86()
{
  v2 = v0[109];
  v3 = v0[67];
  v4 = v0[55];
  v5 = v0[53];
  v6 = v0[47];
  v7 = v0[44];
  v9 = v0[35];
}

uint64_t OUTLINED_FUNCTION_88()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_89()
{
  v2 = v0[100];
  v3 = v0[72];
  v4 = v0[55];
  v5 = v0[53];
}

uint64_t OUTLINED_FUNCTION_90()
{

  return sub_1D986B804(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_1D986B804(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_97()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_98()
{
  v1[7] = 0;
  v1[8] = 0;
  v1[9] = v0;
  v1[10] = v2;
}

id OUTLINED_FUNCTION_99(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_100()
{
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 320);

  return sub_1D992B1B4();
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_1D98AB518(v0);
}

void OUTLINED_FUNCTION_102()
{
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[119];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[57];
}

uint64_t OUTLINED_FUNCTION_103()
{
  v2 = *(v0 + 456);
  v3 = *(v0 + 472) + 15;

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_104()
{
  v6 = v2[6];
  v5 = v2[7];
  v8 = v2[4];
  v7 = v2[5];
  v9 = v2[3];
  v1[2] = v3;
  v1[3] = v9;
  v1[4] = v8;
  v1[5] = v7;
  v1[6] = v6;
  v1[7] = v5;

  return v0;
}

uint64_t OUTLINED_FUNCTION_105()
{
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[78];
  v5 = v0[72];
  v6 = v0[55];
}

void OUTLINED_FUNCTION_107()
{
  v1 = v0[116];
  v2 = v0[68];
  v3 = v0[67];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[57];
}

uint64_t OUTLINED_FUNCTION_116()
{
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[61];
  v5 = v0[57];
  return v1;
}

uint64_t OUTLINED_FUNCTION_121()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_122()
{

  return swift_retain_n();
}

id OUTLINED_FUNCTION_123(uint64_t a1)
{
  *(v2 + 776) = a1;
  *(v2 + 784) = *(v1 + 128);
  v5 = *(v1 + 144);

  return v3;
}

void OUTLINED_FUNCTION_124()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_127(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

void OUTLINED_FUNCTION_139()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[57];
}

__n128 OUTLINED_FUNCTION_140()
{
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_144()
{
  v2 = *(v0 + 680);
  v3 = *(v0 + 1089);
  v4 = *(v0 + 456);
}

uint64_t OUTLINED_FUNCTION_145()
{

  return sub_1D992B5B4();
}

void *OUTLINED_FUNCTION_146()
{

  return sub_1D98E5A14(v2, v0, v1, v3);
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

unint64_t OUTLINED_FUNCTION_148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13 + *(a1 + 36);

  return sub_1D98880F0();
}

unint64_t OUTLINED_FUNCTION_149(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = a19 + *(a1 + 36);

  return sub_1D98880F0();
}

uint64_t OUTLINED_FUNCTION_150()
{
  *(v1 + *(v0 + 28)) = 1;

  return type metadata accessor for PreprocessorTelemetry(0);
}

uint64_t OUTLINED_FUNCTION_151()
{
  v2 = v0[57];
  v3 = v0[58];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
}

uint64_t OUTLINED_FUNCTION_152()
{

  return sub_1D992B134();
}

uint64_t OUTLINED_FUNCTION_153()
{
  *(v1 + 96) = v0;

  return sub_1D992B014();
}

id OUTLINED_FUNCTION_154(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_156()
{

  JUMPOUT(0x1DA739C30);
}

void OUTLINED_FUNCTION_157()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_158()
{
  v2 = *(v0 + 272);

  return sub_1D990EA18(v2);
}

uint64_t OUTLINED_FUNCTION_159()
{

  return sub_1D992ADF4();
}

uint64_t OUTLINED_FUNCTION_160()
{

  return sub_1D992B134();
}

uint64_t OUTLINED_FUNCTION_161(unint64_t *a1)
{

  return sub_1D9882D14(a1);
}

uint64_t OUTLINED_FUNCTION_162()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
}

uint64_t OUTLINED_FUNCTION_163()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_164()
{

  return sub_1D992B2B4();
}

id MonotonicTimestamp.write(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MonotonicTimestamp();
  [a1 writeUint64:*(v2 + *(v4 + 20)) forTag:1];
  sub_1D992B9F4();
  return [a1 writeUint32:*(v2 + *(v4 + 24)) forTag:3];
}

uint64_t static MonotonicTimestamp.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = type metadata accessor for MonotonicTimestamp();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(&v34 - v10, 1, 1, v12);
  v52 = 0;
  v53 = 1;
  v55 = 2;
  v48 = &v34 - v10;
  v49 = a1;
  v50 = &v52;
  v51 = &v55;
  sub_1D98ACC4C();
  v13 = sub_1D992B964();
  if (!v2)
  {
    v44 = v4;
    v45 = v7;
    v46 = &v34;
    v14 = *(v12 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v13);
    MEMORY[0x1EEE9AC00](v16);
    v17 = &v34 - v10;
    sub_1D9879FF8(v11, v17);
    OUTLINED_FUNCTION_0_26(v17);
    if (v18)
    {
      sub_1D987625C(v17);
LABEL_9:
      v20 = sub_1D992B484();
      sub_1D98ACFA8(&qword_1ECB479C0, MEMORY[0x1E6999BC0]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E6999BA8], v20);
      swift_willThrow();
      return sub_1D987625C(v11);
    }

    v42 = *(v14 + 32);
    v43 = v14 + 32;
    v19 = v42(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v12);
    if (v53 == 1)
    {
      (*(v14 + 8))(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
      goto LABEL_9;
    }

    v40 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = v14;
    if (v55 == 2)
    {
      (*(v41 + 8))(v40, v12);
      goto LABEL_9;
    }

    v54 = v55;
    v39 = &v34;
    v38 = v52;
    v23 = MEMORY[0x1EEE9AC00](v19);
    v24 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v25 = v40;
    v35 = *(v41 + 16);
    v35(&v34 - v24, v40, v12, v23);
    v26 = __swift_storeEnumTagSinglePayload(&v34 - v24, 0, 1, v12);
    v37 = &v34;
    MEMORY[0x1EEE9AC00](v26);
    v27 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = &v34;
    MEMORY[0x1EEE9AC00](v28);
    v29 = &v34 - v24;
    sub_1D9879FF8(&v34 - v24, &v34 - v24);
    OUTLINED_FUNCTION_0_26(&v34 - v24);
    if (v18)
    {
      v34 = &v34 - v24;
      v31 = v47;
      v32 = v44;
      v33 = v45;
      if (qword_1ECB47FB0 != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v12, qword_1ECB496F0);
      (v35)(v27, v30, v12);
      sub_1D987625C(v34);
      (*(v41 + 8))(v40, v12);
      OUTLINED_FUNCTION_0_26(v29);
      if (!v18)
      {
        sub_1D987625C(v29);
      }
    }

    else
    {
      sub_1D987625C(&v34 - v24);
      (*(v41 + 8))(v25, v12);
      v42(v27, &v34 - v24, v12);
      v31 = v47;
      v32 = v44;
      v33 = v45;
    }

    v42(v33, v27, v12);
    *(v33 + *(v32 + 20)) = v38;
    *(v33 + *(v32 + 24)) = v54 & 1;
    sub_1D98ACCA0(v33, v31);
  }

  return sub_1D987625C(v11);
}

id sub_1D98ACB2C(_BYTE *a1, uint64_t a2, id a3, uint64_t a4, _BYTE *a5)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v6 - 8);
      v9 = &v13 - v8;
      sub_1D992B9B4();
      return sub_1D98901A0(v9, a2);
    }

    else
    {
      result = [a3 readUint32];
      if (result <= 1u)
      {
        *a5 = result;
      }
    }
  }

  else
  {
    result = [a3 readUint64];
    *a4 = result;
    *(a4 + 8) = 0;
  }

  return result;
}

unint64_t sub_1D98ACC4C()
{
  result = qword_1ECB47D90;
  if (!qword_1ECB47D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47D90);
  }

  return result;
}

uint64_t sub_1D98ACCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimestamp();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *_s9ProtoTagsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D98ACF54()
{
  result = qword_1ECB48920;
  if (!qword_1ECB48920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48920);
  }

  return result;
}

uint64_t sub_1D98ACFA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D98AD038()
{
  sub_1D992AE84();
  if (v0 <= 0x3F)
  {
    sub_1D98AD290(319, &qword_1ECB47A08, MEMORY[0x1E69CE6A8]);
    if (v1 <= 0x3F)
    {
      sub_1D992B1A4();
      if (v2 <= 0x3F)
      {
        sub_1D9894860(319, &qword_1ECB47890, &qword_1ECB48748, &qword_1D9931430);
        if (v3 <= 0x3F)
        {
          sub_1D992AE04();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D98AD180()
{
  sub_1D98AD290(319, &qword_1ED8BF690, MEMORY[0x1EEE788B8]);
  if (v0 <= 0x3F)
  {
    sub_1D9894860(319, &qword_1ECB479B0, &qword_1ECB48740, &qword_1D99313F0);
    if (v1 <= 0x3F)
    {
      sub_1D9894860(319, &qword_1ED8BD8E0, &qword_1ECB48700, &qword_1D9931330);
      if (v2 <= 0x3F)
      {
        sub_1D98AD290(319, &qword_1ECB47A08, MEMORY[0x1E69CE6A8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D98AD290(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D992BC04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D98AD2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v11 = sub_1D9889410(0x64695F6B636F6C63, 0xE800000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_11(v11);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  v17 = v16 == 4 && (v15 | v14) == 0;
  if (v17)
  {
    goto LABEL_12;
  }

  if (v16 == 3)
  {
    sub_1D987BA38(v14, v15);
  }

  else
  {
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  v235 = v14;
  v236 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48930, &unk_1D9932130);
  if ((OUTLINED_FUNCTION_17_3() & 1) == 0 || (v18 = v238, v238 >> 60 == 15))
  {
LABEL_12:

LABEL_13:
    v19 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v19, 1, v4);
  }

  v21 = v237;
  v22 = sub_1D992AE84();
  v234 = v214;
  v23 = OUTLINED_FUNCTION_6(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_26_4();
  v30 = (v28 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v233 = v214;
  OUTLINED_FUNCTION_9(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_20_0();
  v231 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_19_0();
  sub_1D992AD64();
  v36 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19_1(v36, v37, v22);
  if (v17)
  {
    sub_1D9866358(v21, v18);

    sub_1D986B804(v14, &qword_1ECB481D0, &qword_1D992F9F0);
LABEL_18:
    v19 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v19, 1, v4);
  }

  v229 = v18;
  v230 = v21;
  v232 = v25;
  v40 = *(v25 + 32);
  v39 = (v25 + 32);
  v38 = v40;
  v40(v30, v14, v22);
  if (!*(a1 + 16) || (OUTLINED_FUNCTION_31_4(), OUTLINED_FUNCTION_30_2(), v43 = sub_1D9889410(v41, v42), (v44 & 1) == 0))
  {
    sub_1D9866358(v230, v229);

    v68 = OUTLINED_FUNCTION_4_9();
    v69(v68);
    goto LABEL_13;
  }

  v228 = v38;
  v233 = v39;
  OUTLINED_FUNCTION_3_11(v43);
  v46 = *v45;
  v47 = v45[1];
  v48 = *(v45 + 16);
  v49 = OUTLINED_FUNCTION_1_19();
  sub_1D986C8B8(v49, v50, v51);
  v52 = OUTLINED_FUNCTION_1_19();
  v55 = sub_1D98927C4(v52, v53, v54);
  v56 = OUTLINED_FUNCTION_1_19();
  sub_1D986C908(v56, v57, v58);
  v59 = v230;
  v227 = v55;
  if ((v55 & 0x100000000) != 0)
  {
    v70 = OUTLINED_FUNCTION_4_9();
    v71(v70);
    OUTLINED_FUNCTION_18_3();
    goto LABEL_13;
  }

  if (!*(a1 + 16) || (v60 = OUTLINED_FUNCTION_31_4(), v62 = sub_1D9889410(v60, v61), (v63 & 1) == 0))
  {
    OUTLINED_FUNCTION_18_3();
    v72 = OUTLINED_FUNCTION_4_9();
    v73(v72);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_11(v62);
  v65 = *v64;
  v66 = *(v64 + 8);
  v67 = *(v64 + 16);
  if (v67 == 4 && !(v66 | v65))
  {
    goto LABEL_38;
  }

  if (v67 == 3)
  {
    sub_1D987BA38(v65, v66);
  }

  else
  {
    v65 = 0;
    v66 = 0xF000000000000000;
  }

  v235 = v65;
  v236 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48930, &unk_1D9932130);
  if ((OUTLINED_FUNCTION_17_3() & 1) == 0)
  {
LABEL_38:
    v74 = v232;
    goto LABEL_39;
  }

  v74 = v232;
  if (v238 >> 60 == 15)
  {
LABEL_39:
    (*(v74 + 8))(v30, v22);
    OUTLINED_FUNCTION_18_3();
    goto LABEL_13;
  }

  v226 = v214;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x1EEE9AC00](v75);
  v77 = v214 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_33_3();
  v223 = v78;
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_0_27();
  v224 = v80;
  v225 = v81;
  sub_1D992AD64();
  v82 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19_1(v82, v83, v22);
  if (v17)
  {
    v84 = OUTLINED_FUNCTION_4_9();
    v85(v84);
    OUTLINED_FUNCTION_8_7(v59, v229);
    sub_1D986B804(v65, &qword_1ECB481D0, &qword_1D992F9F0);
    v19 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v19, 1, v4);
  }

  v220 = v77;
  v221 = v30;
  v222 = v22;
  v228(v77, v65, v22);
  v86 = sub_1D992AE04();
  v219 = v214;
  v223 = v86;
  v87 = OUTLINED_FUNCTION_6(v86);
  v218 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_13();
  v217 = v92 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  OUTLINED_FUNCTION_9(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v96);
  v98 = v214 - v97;
  if (!*(a1 + 16) || (v99 = OUTLINED_FUNCTION_16_4(0x61657263u), (v100 & 1) == 0))
  {
    OUTLINED_FUNCTION_8_7(v230, v229);
    v116 = OUTLINED_FUNCTION_14_4();
    (v65)(v116);
    (v65)(v221, a1);
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v223);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_3_11(v99);
  v102 = *v101;
  v103 = *(v101 + 8);
  v104 = *(v101 + 16);
  v105 = OUTLINED_FUNCTION_1_19();
  sub_1D986C8B8(v105, v106, v107);
  v108 = OUTLINED_FUNCTION_1_19();
  sub_1D9892670(v108, v109, v110, v111);
  v112 = OUTLINED_FUNCTION_1_19();
  sub_1D986C908(v112, v113, v114);
  OUTLINED_FUNCTION_19_1(v98, 1, v223);
  if (v17)
  {
    OUTLINED_FUNCTION_8_7(v230, v229);
    v115 = OUTLINED_FUNCTION_14_4();
    v102(v115);
    (v102)(v221, a1);
LABEL_46:
    sub_1D986B804(v98, &qword_1ECB48710, &qword_1D9931340);
    goto LABEL_18;
  }

  v117 = v218;
  v118 = v217;
  v119 = v223;
  (*(v218 + 32))(v217, v98, v223);
  v121 = v232 + 16;
  v120 = *(v232 + 16);
  v122 = v222;
  v120(v10, v221, v222);
  (*(v117 + 16))(v10 + v4[8], v118, v119);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_0_27();
  v216 = v121;
  v215 = v120;
  v120(v119, v220, v122);
  v124 = sub_1D992B1A4();
  v125 = objc_allocWithZone(v124);
  *(v10 + v4[6]) = sub_1D992B184();
  if (*(a1 + 16))
  {
    v126 = sub_1D9889410(0xD000000000000018, 0x80000001D99368D0);
    if (v127)
    {
      OUTLINED_FUNCTION_3_11(v126);
      v129 = *v128;
      v130 = v128[1];
      v131 = *(v128 + 16);
      v132 = OUTLINED_FUNCTION_1_19();
      sub_1D986C8B8(v132, v133, v134);
      v135 = OUTLINED_FUNCTION_1_19();
      v138 = sub_1D98927C4(v135, v136, v137);
      v139 = OUTLINED_FUNCTION_1_19();
      sub_1D986C908(v139, v140, v141);
      if ((v138 & 0x100000000) == 0)
      {
        if (*(a1 + 16))
        {
          v142 = sub_1D9889410(0xD000000000000011, 0x80000001D99368F0);
          if (v143)
          {
            OUTLINED_FUNCTION_3_11(v142);
            v145 = *v144;
            v146 = *(v144 + 8);
            v147 = *(v144 + 16);
            if (v147 != 4 || v146 | v145)
            {
              if (v147 == 3)
              {
                sub_1D987BA38(v145, v146);
              }

              else
              {
                v145 = 0;
                v146 = 0xF000000000000000;
              }

              v235 = v145;
              v236 = v146;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48930, &unk_1D9932130);
              if (OUTLINED_FUNCTION_17_3())
              {
                v148 = v238;
                if (v238 >> 60 != 15)
                {
                  v227 = v214;
                  OUTLINED_FUNCTION_13_3();
                  MEMORY[0x1EEE9AC00](v149);
                  v151 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
                  v152 = v214 - v151;
                  OUTLINED_FUNCTION_33_3();
                  v214[1] = v153;
                  MEMORY[0x1EEE9AC00](v154);
                  OUTLINED_FUNCTION_0_27();
                  v231 = v155;
                  sub_1D992AD64();
                  v156 = OUTLINED_FUNCTION_10();
                  OUTLINED_FUNCTION_19_1(v156, v157, v222);
                  if (!v17)
                  {
                    v228(v214 - v151, v145, v222);
                    OUTLINED_FUNCTION_33_3();
                    v233 = v206;
                    v208 = MEMORY[0x1EEE9AC00](v207);
                    v209 = v214 - v151;
                    v210 = v214 - v151;
                    v211 = v222;
                    v215(v209, v210, v222, v208);
                    v212 = objc_allocWithZone(v124);
                    v213 = sub_1D992B184();
                    sub_1D9866358(v231, v148);
                    (*(v232 + 8))(v152, v211);
                    *(v10 + v4[5]) = v213;
                    goto LABEL_63;
                  }

                  sub_1D9866358(v231, v148);
                  sub_1D986B804(v145, &qword_1ECB481D0, &qword_1D992F9F0);
                }
              }
            }
          }
        }
      }
    }
  }

  *(v10 + v4[5]) = 0;
LABEL_63:
  if (*(a1 + 16))
  {
    v158 = OUTLINED_FUNCTION_16_4(0x72617473u);
    if (v159)
    {
      OUTLINED_FUNCTION_3_11(v158);
      v161 = *v160;
      v162 = v160[1];
      v163 = *(v160 + 16);
      v164 = OUTLINED_FUNCTION_1_19();
      sub_1D986C8B8(v164, v165, v166);
      v167 = OUTLINED_FUNCTION_1_19();
      v170 = sub_1D9892528(v167, v168, v169);
      v172 = v171;
      v173 = OUTLINED_FUNCTION_1_19();
      sub_1D986C908(v173, v174, v175);
      if (v172)
      {
        v176 = 0;
      }

      else
      {
        v176 = v170;
      }

      v233 = v176;
    }

    else
    {
      v233 = 0;
      v172 = 1;
    }

    if (*(a1 + 16))
    {
      v177 = sub_1D9889410(0x6E6F5F6465646E65, 0xE800000000000000);
      if (v178)
      {
        OUTLINED_FUNCTION_3_11(v177);
        v180 = *v179;
        v181 = v179[1];
        v182 = *(v179 + 16);
        v183 = OUTLINED_FUNCTION_11_5();
        sub_1D986C8B8(v183, v184, v185);

        v186 = OUTLINED_FUNCTION_11_5();
        v189 = sub_1D9892528(v186, v187, v188);
        v191 = v190;
        sub_1D9866358(v230, v229);
        sub_1D9866358(v224, v225);
        v192 = OUTLINED_FUNCTION_11_5();
        sub_1D986C908(v192, v193, v194);
        v195 = OUTLINED_FUNCTION_9_6();
        v196(v195);
        v197 = *(v232 + 8);
        v198 = v222;
        v197(v220, v222);
        v197(v221, v198);
        if (v191)
        {
          v199 = 0;
        }

        else
        {
          v199 = v189;
        }

        goto LABEL_77;
      }
    }
  }

  else
  {
    v233 = 0;
    v172 = 1;
  }

  OUTLINED_FUNCTION_8_7(v230, v229);
  v200 = OUTLINED_FUNCTION_9_6();
  v201(v200);
  v202 = *(v232 + 8);
  v203 = v222;
  v202(v220, v222);
  v202(v221, v203);
  v199 = 0;
  v191 = 1;
LABEL_77:
  if (v172 & 1) != 0 && (v191)
  {
    v204 = v10 + v4[7];
    *v204 = 0;
    *(v204 + 8) = 0;
    *(v204 + 16) = 0;
    *(v204 + 24) = 256;
  }

  else
  {
    v205 = v10 + v4[7];
    *v205 = v233;
    *(v205 + 8) = v172 & 1;
    *(v205 + 16) = v199;
    *(v205 + 24) = v191 & 1;
    *(v205 + 25) = 0;
  }

  sub_1D98AEF4C(v10, a2);
  v19 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v19, 1, v4);
}

uint64_t sub_1D98ADF28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48738, &qword_1D9932140);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9931BF0;
  *(v2 + 32) = 0x64695F6B636F6C63;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 4;
  v3 = sub_1D992AE34();
  *(v2 + 56) = xmmword_1D9931230;
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  *(v2 + 88) = 3;
  strcpy((v2 + 96), "component_name");
  *(v2 + 111) = -18;
  *(v2 + 112) = 2;
  v5 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v6 = *(v0 + v5[6]);
  v7 = sub_1D992B174();
  *(v2 + 120) = xmmword_1D9932060;
  *(v2 + 136) = v7;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  strcpy((v2 + 160), "component_id");
  *(v2 + 173) = 0;
  *(v2 + 174) = -5120;
  *(v2 + 176) = 4;
  v8 = sub_1D992AE84();
  v9 = OUTLINED_FUNCTION_6(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v56 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v56 - v56;
  sub_1D992B194();
  v15 = sub_1D992AE34();
  v17 = v16;
  v57 = *(v11 + 8);
  v57(v14, v8);
  *(v2 + 184) = xmmword_1D9932070;
  *(v2 + 200) = v15;
  *(v2 + 208) = v17;
  *(v2 + 216) = 3;
  *(v2 + 224) = 0x5F64657461657263;
  *(v2 + 232) = 0xEA00000000006E6FLL;
  *(v2 + 240) = 3;
  v18 = v5[8];
  v19 = sub_1D992AE04();
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  (*(v22 + 16))(v26 - v25, v1 + v18, v19);
  sub_1D992ADC4();
  v28 = v27;
  v29 = *(v22 + 8);
  v30 = OUTLINED_FUNCTION_28_1();
  v31(v30);
  *(v2 + 248) = xmmword_1D9931240;
  *(v2 + 264) = v28;
  *(v2 + 272) = 0;
  *(v2 + 280) = 2;
  v32 = *(v1 + v5[5]);
  if (v32)
  {
    v33 = v32;
    v34 = sub_1D992B174();
    sub_1D98BD920();
    v2 = v35;
    *(v35 + 16) = 5;
    *(v35 + 288) = 0xD000000000000018;
    *(v35 + 296) = 0x80000001D99368D0;
    *(v35 + 304) = 258;
    *(v35 + 312) = 0xD000000000000018;
    *(v35 + 320) = 0x80000001D99368D0;
    *(v35 + 328) = v34;
    *(v35 + 336) = 0;
    *(v35 + 344) = 1;
    MEMORY[0x1EEE9AC00](v35);
    v36 = &v56 - v56;
    sub_1D992B194();
    v37 = sub_1D992AE34();
    v39 = v38;
    v57(v36, v8);
    v40 = *(v2 + 16);
    if (v40 >= *(v2 + 24) >> 1)
    {
      sub_1D98BD920();
      v2 = v53;
    }

    *(v2 + 16) = v40 + 1;
    v41 = v2 + (v40 << 6);
    *(v41 + 32) = 0xD000000000000011;
    *(v41 + 40) = 0x80000001D99368F0;
    *(v41 + 48) = 260;
    *(v41 + 56) = 0xD000000000000011;
    *(v41 + 64) = 0x80000001D99368F0;
    *(v41 + 72) = v37;
    *(v41 + 80) = v39;
    *(v41 + 88) = 3;
  }

  v42 = (v1 + v5[7]);
  if ((*(v42 + 25) & 1) == 0)
  {
    v43 = v42[2];
    v44 = *(v42 + 24);
    if ((v42[1] & 1) == 0)
    {
      v45 = *v42;
      v46 = *(v2 + 16);
      if (v46 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_3();
        v2 = v54;
      }

      *(v2 + 16) = v46 + 1;
      v47 = v2 + (v46 << 6);
      *(v47 + 32) = 0x5F64657472617473;
      *(v47 + 40) = 0xEA00000000006E6FLL;
      *(v47 + 48) = 258;
      v48 = v59;
      *(v47 + 50) = v58;
      *(v47 + 54) = v48;
      *(v47 + 56) = xmmword_1D9931260;
      *(v47 + 72) = v45;
      *(v47 + 80) = 0;
      *(v47 + 88) = 1;
    }

    if ((v44 & 1) == 0)
    {
      v49 = *(v2 + 16);
      if (v49 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_3();
        v2 = v55;
      }

      *(v2 + 16) = v49 + 1;
      v50 = v2 + (v49 << 6);
      *(v50 + 32) = 0x6E6F5F6465646E65;
      *(v50 + 40) = 0xE800000000000000;
      *(v50 + 48) = 258;
      v51 = v61;
      *(v50 + 50) = v60;
      *(v50 + 54) = v51;
      *(v50 + 56) = xmmword_1D9931270;
      *(v50 + 72) = v43;
      *(v50 + 80) = 0;
      *(v50 + 88) = 1;
    }
  }

  return v2;
}

uint64_t sub_1D98AE44C()
{
  v2 = v0;
  OUTLINED_FUNCTION_22_3();
  v119 = v3;
  v120 = 0;
  v121 = v3;
  v4 = sub_1D992AE84();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_4();
  v12 = v10 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866DE0(v0, v0, &qword_1ECB481D0, &qword_1D992F9F0);
  v17 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19_1(v17, v18, v4);
  v117 = v4;
  if (v63)
  {
    sub_1D986B804(v0, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_21_3();
    v20(v19);
    v21 = sub_1D992AE34();
    v23 = v22;
    v0 = &v119;
    sub_1D986F118(v1, 0xE800000000000000, 61, 0xE100000000000000, v21, v22, 3);
    sub_1D987106C(v21, v23);
    (*(v7 + 8))(v12, v4);
  }

  v24 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  v25 = *(v2 + *(v24 + 20));
  v113 = v7;
  v114 = v24;
  if (v25)
  {
    v26 = *(v25 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    if (v26)
    {
      v112 = v2;
      v118 = MEMORY[0x1E69E7CC0];
      sub_1D98B9860();
      v27 = v118;
      v1 = v7 + 16;
      v28 = *(v7 + 16);
      v29 = v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v115 = *(v7 + 72);
      v116 = v28;
      v30 = (v7 + 8);
      do
      {
        OUTLINED_FUNCTION_13_3();
        MEMORY[0x1EEE9AC00](v31);
        OUTLINED_FUNCTION_0_27();
        v116(&v118, v29, v117);
        v32 = sub_1D992AE34();
        v34 = v33;
        (*v30)(&v118, v117);
        v118 = v27;
        v35 = *(v27 + 16);
        if (v35 >= *(v27 + 24) >> 1)
        {
          sub_1D98B9860();
          v27 = v118;
        }

        *(v27 + 16) = v35 + 1;
        v36 = v27 + 24 * v35;
        *(v36 + 32) = v32;
        *(v36 + 40) = v34;
        *(v36 + 48) = 3;
        v29 += v115;
        --v26;
      }

      while (v26);
      v2 = v112;
      v24 = v114;
      OUTLINED_FUNCTION_22_3();
    }

    v0 = &v119;
    sub_1D987B5CC(v1, 0xE800000000000000, 0, v27);
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v116 = v110;
  v38 = OUTLINED_FUNCTION_5(v37);
  v40 = *(v39 + 64);
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v42 = *(v24 + 24);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
  OUTLINED_FUNCTION_9(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866DE0(v2 + v42, v0, &qword_1ECB48708, &qword_1D9931338);
  v47 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19_1(v47, v48, v37);
  if (v63)
  {
    sub_1D986B804(v0, &qword_1ECB48708, &qword_1D9931338);
    v50 = v113;
    v49 = v114;
  }

  else
  {
    v112 = v2;
    sub_1D98AEFB0(v0, v110 - v41);
    v51 = sub_1D992AE04();
    v111 = v110;
    v52 = OUTLINED_FUNCTION_6(v51);
    v110[0] = v53;
    v55 = *(v54 + 64);
    MEMORY[0x1EEE9AC00](v52);
    v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
    v57 = v110 - v56;
    v110[1] = v40;
    MEMORY[0x1EEE9AC00](v58);
    v59 = v110 - v41;
    v115 = v110 - v41;
    sub_1D9866DE0(v110 - v41, v110 - v41, &qword_1ECB48700, &qword_1D9931330);
    v60 = *(v37 + 48);
    v61 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_19_1(v61, v62, v51);
    v64 = v37;
    if (v63)
    {
      sub_1D986B804(&v59[v60], &qword_1ECB48710, &qword_1D9931340);
      sub_1D986B804(v59, &qword_1ECB48710, &qword_1D9931340);
      v76 = v110[0];
    }

    else
    {
      v65 = v110[0];
      v66 = OUTLINED_FUNCTION_21_3();
      v67(v66);
      v68 = sub_1D986B804(&v59[v60], &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v68);
      v59 = v110 - v56;
      v69 = OUTLINED_FUNCTION_20_2(v65);
      v70(v69);
      sub_1D992ADC4();
      v71 = *(v65 + 8);
      v72 = OUTLINED_FUNCTION_28_1();
      v71(v72);
      v73 = OUTLINED_FUNCTION_7_8();
      sub_1D986F118(v73, v74, 15678, 0xE200000000000000, v75, 0, 2);
      (v71)(v57, v51);
      v76 = v65;
    }

    OUTLINED_FUNCTION_33_3();
    v111 = v77;
    MEMORY[0x1EEE9AC00](v78);
    v79 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v80);
    OUTLINED_FUNCTION_0_27();
    v81 = v115;
    sub_1D9866DE0(v115, v59, &qword_1ECB48700, &qword_1D9931330);
    v82 = *(v64 + 48);
    OUTLINED_FUNCTION_19_1(&v59[v82], 1, v51);
    if (v63)
    {
      sub_1D986B804(v81, &qword_1ECB48700, &qword_1D9931330);
      sub_1D986B804(&v59[v82], &qword_1ECB48710, &qword_1D9931340);
      sub_1D986B804(v59, &qword_1ECB48710, &qword_1D9931340);
    }

    else
    {
      (*(v76 + 32))(v110 - v79, &v59[v82], v51);
      v83 = sub_1D986B804(v59, &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v83);
      v84 = OUTLINED_FUNCTION_20_2(v76);
      v85(v84);
      sub_1D992ADC4();
      v86 = *(v76 + 8);
      v87 = OUTLINED_FUNCTION_28_1();
      v86(v87);
      v88 = OUTLINED_FUNCTION_7_8();
      sub_1D986F118(v88, v89, 15676, 0xE200000000000000, v90, 0, 2);
      (v86)(v110 - v79, v51);
      sub_1D986B804(v81, &qword_1ECB48700, &qword_1D9931330);
    }

    v2 = v112;
    v50 = v113;
    v49 = v114;
  }

  if (*(v2 + *(v49 + 28)))
  {
    OUTLINED_FUNCTION_13_3();
    MEMORY[0x1EEE9AC00](v91);
    v93 = v110 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    v95 = v94;
    sub_1D992B194();
    v96 = sub_1D992AE34();
    v98 = v97;
    (*(v50 + 8))(v93, v117);
    v99 = OUTLINED_FUNCTION_32_4();
    sub_1D986F118(v99, v100, v101, v102, v96, v98, 3);
    sub_1D987106C(v96, v98);
    sub_1D992B174();
    OUTLINED_FUNCTION_30_2();
    v103 = OUTLINED_FUNCTION_32_4();
    sub_1D986F118(v103, v104, v105, v106, v107, 0, 1);
  }

  v108 = sub_1D986FC08(v119, v120);

  return v108;
}

uint64_t sub_1D98AED20@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for SQLDelete;
  a1[4] = &off_1F5516CC0;
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  v2[7] = v3;
  v2[8] = &off_1F5516E40;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 4);
  v5 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1, 1, 1, v5);
  v6 = boxed_opaque_existential_1 + v3[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v8 = *(v7 + 48);
  v9 = sub_1D992AE04();
  v10 = __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  sub_1D992ADF4();
  sub_1D992AD94();
  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_28_1();
  v15(v14);
  __swift_storeEnumTagSinglePayload(v6 + v8, 0, 1, v9);
  result = __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  *(boxed_opaque_existential_1 + v3[5]) = 0;
  *(boxed_opaque_existential_1 + v3[7]) = 0;
  v2[2] = 0xD000000000000015;
  v2[3] = 0x80000001D9937450;
  return result;
}

uint64_t sub_1D98AEF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98AEFB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98AF0C0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t sub_1D98AF0DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  OUTLINED_FUNCTION_3();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1D98D1E08();

  return sub_1D988C380(v3);
}

uint64_t sub_1D98AF1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D98AF1FC, 0, 0);
}

uint64_t sub_1D98AF1FC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    type metadata accessor for FirstUnlockObserver();
    sub_1D98AFDB0();
    v4 = sub_1D992B814();

    return MEMORY[0x1EEE6DFA0](sub_1D98AF2E0, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1D98AF2E0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 56);
  sub_1D98AF364();

  return MEMORY[0x1EEE6DFA0](sub_1D98AF34C, 0, 0);
}

void sub_1D98AF364()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48938, &unk_1D99321F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 48) = 1;
    if (qword_1ECB47AB8 != -1)
    {
      swift_once();
    }

    sub_1D986A454(0xD000000000000016, 0x80000001D9939610, 0xD000000000000063, 0x80000001D9939630, 0x5574737269466E6FLL, 0xEF29286B636F6C6ELL);
    if (*(v0 + 32))
    {
      v7 = *(v0 + 32);

      sub_1D9900810();

      v8 = *(v0 + 32);
    }

    *(v0 + 32) = 0;

    if (*(v0 + 40))
    {
      v9 = *(v0 + 40);

      sub_1D9900810();

      v10 = *(v0 + 40);
    }

    *(v0 + 40) = 0;

    v11 = *(v0 + 24);
    v12 = *(v11 + 16);
    if (v12)
    {
      v20 = v0;
      v15 = *(v3 + 16);
      v13 = v3 + 16;
      v14 = v15;
      v16 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v17 = *(v13 + 56);

      do
      {
        v14(v6, v16, v2);
        sub_1D992B834();
        (*(v13 - 8))(v6, v2);
        v16 += v17;
        --v12;
      }

      while (v12);

      v1 = v20;
      v18 = *(v20 + 24);
    }

    *(v1 + 24) = MEMORY[0x1E69E7CC0];
  }
}

void sub_1D98AF5CC()
{
  if (!v0[4])
  {
    v1 = v0;
    if (!v0[5])
    {
      v2 = v0[2];
      OUTLINED_FUNCTION_3();
      v3 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for DarwinNotificationObserver();
      swift_allocObject();
      v4 = v2;
      v5 = sub_1D99004B4(0xD000000000000025, 0x80000001D99395E0, v4, sub_1D98AFE0C, v3);
      v6 = v1[4];
      v1[4] = v5;

      OUTLINED_FUNCTION_3();
      v7 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for DeviceLockStateNotificationObserver();
      swift_allocObject();
      v8 = sub_1D98FCCA4(v4, sub_1D98AFE18, v7);
      v9 = v1[5];
      v1[5] = v8;
    }
  }
}

uint64_t sub_1D98AF72C()
{
  if (qword_1ECB47B30 != -1)
  {
    swift_once();
  }

  v0 = *(*qword_1ECB49688 + 136);

  LOBYTE(v0) = *v0(v1);

  if ((v0 & 1) == 0)
  {
    result = MKBDeviceUnlockedSinceBoot();
    if (result != 1)
    {
      return result;
    }

    v3 = *(*qword_1ECB49688 + 136);

    *v3(v4) = 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D98AF0DC();
  }

  return result;
}

uint64_t sub_1D98AF854(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  result = (*(v2 + 8))(v1, v2);
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1D98AF0DC();
    }
  }

  return result;
}

uint64_t sub_1D98AF8E4()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v0;
  type metadata accessor for FirstUnlockObserver();
  v1[3] = sub_1D98AFDB0();
  v3 = sub_1D992B814();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D98AF968, v3, v2);
}

uint64_t sub_1D98AF968()
{
  if (qword_1ECB47B30 != -1)
  {
    swift_once();
  }

  v1 = *(*qword_1ECB49688 + 136);

  LOBYTE(v1) = *v1(v2);

  if (v1)
  {
    goto LABEL_6;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v3 = *(*qword_1ECB49688 + 136);

    *v3(v4) = 1;

LABEL_6:
    v5 = v0[1];

    return v5();
  }

  v8 = v0[2];
  v7 = v0[3];
  sub_1D98AF5CC();
  v9 = *(MEMORY[0x1E69E88D0] + 4);
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_1D98AFB48;
  v11 = v0[2];

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1D98AFB48()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](j__OUTLINED_FUNCTION_0_28, v4, v3);
}

uint64_t sub_1D98AFC68(uint64_t a1, uint64_t a2)
{
  sub_1D987B978();
  v4 = *(*(a2 + 24) + 16);
  sub_1D987BA08(v4);
  v5 = *(a2 + 24);
  *(v5 + 16) = v4 + 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48938, &unk_1D99321F8);
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a1, v6);
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1D98AFD1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t sub_1D98AFD54()
{
  sub_1D98AFD1C();

  return swift_deallocClassInstance();
}

unint64_t sub_1D98AFDB0()
{
  result = qword_1ECB47D50;
  if (!qword_1ECB47D50)
  {
    type metadata accessor for FirstUnlockObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47D50);
  }

  return result;
}

uint64_t sub_1D98AFE20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D98AFED4;

  return sub_1D98AF1DC(a1, v4, v5, v6);
}

uint64_t sub_1D98AFED4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for RootLogicalClock()
{
  result = qword_1ECB47E08;
  if (!qword_1ECB47E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D98B0038()
{
  sub_1D992AE84();
  if (v0 <= 0x3F)
  {
    sub_1D98B00E0();
    if (v1 <= 0x3F)
    {
      sub_1D98B0130();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D98B00E0()
{
  if (!qword_1ECB47E18[0])
  {
    v0 = sub_1D992BC04();
    if (!v1)
    {
      atomic_store(v0, qword_1ECB47E18);
    }
  }
}

void sub_1D98B0130()
{
  if (!qword_1ECB47978)
  {
    sub_1D992AE84();
    sub_1D9882D14(&qword_1ED8BF060);
    v0 = sub_1D992B944();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB47978);
    }
  }
}

void sub_1D98B01E0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D992AE54() & 1) == 0)
  {
    return;
  }

  v4 = type metadata accessor for RootLogicalClock();
  v5 = v4[5];
  if ((sub_1D992AE54() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return;
  }

  v6 = v4[8];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 16);
  v9 = a2 + v6;
  if (v8)
  {
    if (!*(v9 + 16))
    {
      return;
    }

    goto LABEL_14;
  }

  if ((*(v9 + 16) & 1) == 0 && *v7 == *v9 && v7[1] == *(v9 + 8))
  {
LABEL_14:
    v11 = v4[9];
    v12 = *(a1 + v11);
    v13 = *(a2 + v11);

    sub_1D98B02CC(v12, v13);
  }
}

void sub_1D98B02CC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a1 + 56);
      v35 = a1 + 56;
      v5 = 1 << *(a1 + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & v4;
      v8 = sub_1D992AE84();
      v40 = &v33;
      v9 = *(v8 - 8);
      v10 = *(v9 + 64);
      v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
      v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = 0;
      v34 = (v5 + 63) >> 6;
      v47 = v9 + 16;
      v48 = v12;
      v45 = a2 + 56;
      v46 = (v9 + 8);
      v38 = v9;
      v39 = v3;
      v36 = v9 + 32;
      v37 = v13;
      if (v7)
      {
        while (2)
        {
          v15 = __clz(__rbit64(v7));
          v41 = (v7 - 1) & v7;
LABEL_13:
          v18 = *(v9 + 72);
          v19 = *(v3 + 48) + v18 * (v15 | (v14 << 6));
          v43 = *(v9 + 16);
          v44 = v18;
          v20 = v43(v13, v19, v8, v11);
          v42 = &v33;
          v21 = MEMORY[0x1EEE9AC00](v20);
          v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 32))(v23, v13, v8, v21);
          v24 = *(a2 + 40);
          sub_1D9882D14(&qword_1ED8BF060);
          v25 = sub_1D992B5C4();
          v26 = ~(-1 << *(a2 + 32));
          do
          {
            v27 = v25 & v26;
            if (((*(v45 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
            {
              (*v46)(v23, v8);
              return;
            }

            v28 = MEMORY[0x1EEE9AC00](v25);
            v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
            (v43)(v30, *(a2 + 48) + v27 * v44, v8, v28);
            sub_1D9882D14(&qword_1ED8BF058);
            v31 = sub_1D992B5F4();
            v32 = *v46;
            (*v46)(v30, v8);
            v25 = v27 + 1;
          }

          while ((v31 & 1) == 0);
          v32(v23, v8);
          v7 = v41;
          v9 = v38;
          v3 = v39;
          v13 = v37;
          if (v41)
          {
            continue;
          }

          break;
        }
      }

      v16 = v14;
      while (1)
      {
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v14 >= v34)
        {
          return;
        }

        v17 = *(v35 + 8 * v14);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v41 = (v17 - 1) & v17;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

id MessageStoreShim.init(prefs:)(void *a1)
{
  type metadata accessor for MessageStoreConcrete();
  v3 = a1;
  *&v1[OBJC_IVAR___SiriAnalyticsMessageStore_underlying] = sub_1D98B0728(v3);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MessageStoreShim();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

uint64_t sub_1D98B0728(void *a1)
{
  v2 = type metadata accessor for ResourceType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersistentStorage();
  v6 = sub_1D992AD44();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1D98F97F8();
  v13 = type metadata accessor for DataVault();
  v14 = objc_allocWithZone(v13);
  (*(v9 + 16))(v14 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, &v19 - v12, v6);
  v19.receiver = v14;
  v19.super_class = v13;
  v15 = objc_msgSendSuper2(&v19, sel_init);
  (*(v9 + 8))(&v19 - v12, v6);
  sub_1D98CB418(v5);

  MEMORY[0x1EEE9AC00](v16);
  sub_1D98C601C(&v19 - v12);
  sub_1D98876F0(v5);
  type metadata accessor for MessageStoreConcrete();
  v17 = swift_allocObject();
  sub_1D98B0AD0(&v19 - v12, a1);
  return v17;
}

id MessageStoreShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MessageStoreShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageStoreShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98B0AD0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D992AD44();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v14, a1, v6, v12);
  v15 = objc_allocWithZone(SiriAnalyticsUnifiedBiomeStream);
  v16 = sub_1D98B0D80(v14, a2);
  (*(v9 + 8))(a1, v6);
  *(v3 + 16) = v16;
  return v3;
}

void sub_1D98B0BDC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v4 = sub_1D98682F0(a1);
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA73A2C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    sub_1D98B0E18();
    sub_1D992BA14();
    MEMORY[0x1DA739CE0]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D992B7D4();
    }

    sub_1D992B7F4();
  }

  sub_1D98B0E18();
  v7 = sub_1D992B7A4();

  [v3 sendEvents_];
}

uint64_t sub_1D98B0D48()
{

  return swift_deallocClassInstance();
}

id sub_1D98B0D80(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D992ACD4();
  v7 = [v3 initWithReadWriteStorageURL:v6 prefs:a2];

  v8 = sub_1D992AD44();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

unint64_t sub_1D98B0E18()
{
  result = qword_1ED8BD660;
  if (!qword_1ED8BD660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BD660);
  }

  return result;
}

double sub_1D98B0E5C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D98896FC(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1D986A8BC(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D98B0EC0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D9889568();
  if (v3)
  {
    return OUTLINED_FUNCTION_11_6(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98B0F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1D9889738(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_11_6(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98B0F68(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D9889568();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_6(v2);
}

void *sub_1D98B0FB4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D98898F4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 56) + 24 * v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  v9 = v6;
  return v6;
}

void *sub_1D98B1028(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D9889568();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1D98B1070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1D988B5F0(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    sub_1D98B3900(v8 + *(*(v9 - 8) + 72) * v7, a3);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

void *sub_1D98B113C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1D992BE74();

    if (v4)
    {
      sub_1D992B1A4();
      OUTLINED_FUNCTION_17_4();
      return v9;
    }
  }

  else if (*(a2 + 16) && (v5 = sub_1D9889858(), (v6 & 1) != 0))
  {
    v4 = *(*(a2 + 56) + 8 * v5);
    v7 = v4;
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t sub_1D98B11E0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1D992BE74();

    if (v3)
    {
      type metadata accessor for ComponentClusterMetadata();
      OUTLINED_FUNCTION_17_4();
      return v7;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1D9889858();
    if (v6)
    {
      OUTLINED_FUNCTION_11_6(v5);
    }
  }

  return 0;
}

uint64_t sub_1D98B127C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D9889568();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_6(v2);
}

uint64_t sub_1D98B12C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D986B804(a1, &qword_1ECB48950, &unk_1D9932320);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48950, &unk_1D9932320);
    v9 = *(*(v8 - 8) + 64);
    MEMORY[0x1EEE9AC00](v8 - 8);
    v11 = &v25 - v10;
    v12 = *v3;
    v13 = sub_1D988B5F0(a2);
    if (v14)
    {
      v15 = v13;
      v16 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v26 = *v3;
      v17 = *(v26 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48850, &qword_1D9931B78);
      sub_1D992BE34();
      v18 = v26;
      sub_1D989E778(*(v26 + 56) + *(*(v6 - 8) + 72) * v15, v11);
      type metadata accessor for SISchemaDeviceSensitivityState(0);
      sub_1D98B3794(&qword_1ECB47908, type metadata accessor for SISchemaDeviceSensitivityState);
      sub_1D992BE44();
      v19 = 0;
      *v3 = v18;
    }

    else
    {
      v19 = 1;
    }

    __swift_storeEnumTagSinglePayload(v11, v19, 1, v6);
    return sub_1D986B804(v11, &qword_1ECB48950, &unk_1D9932320);
  }

  else
  {
    v20 = *(*(v6 - 8) + 64);
    MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
    v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D989E778(a1, v22);
    v23 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1D989E1B0(v22, a2);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1D98B152C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48958, &unk_1D9932360);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  OUTLINED_FUNCTION_6(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_1D986B804(a1, &qword_1ECB48958, &unk_1D9932360);
    sub_1D98B2DE0(v11);
    v20 = sub_1D992AE84();
    OUTLINED_FUNCTION_5(v20);
    (*(v21 + 8))(a2);
    v22 = OUTLINED_FUNCTION_34_0();
    return sub_1D986B804(v22, v23, &unk_1D9932360);
  }

  else
  {
    (*(v14 + 32))(v19, a1, v12);
    v25 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = *v3;
    sub_1D989E558(v19, a2);
    *v3 = v29;
    v26 = sub_1D992AE84();
    OUTLINED_FUNCTION_5(v26);
    return (*(v27 + 8))(a2);
  }
}

BOOL sub_1D98B1728(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

id SensitiveConditionsLedger.init(clockIdentifier:metastore:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_starts] = MEMORY[0x1E69E7CC8];
  v5 = OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_clockIdentifier;
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_metastore] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SensitiveConditionsLedger();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for SensitiveConditionsLedger()
{
  result = qword_1ED8BD728;
  if (!qword_1ED8BD728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D98B1998(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (sub_1D992BB64())
  {
    if (qword_1ED8BD6E0 != -1)
    {
      OUTLINED_FUNCTION_0_29();
    }

    OUTLINED_FUNCTION_5_11();
    sub_1D992BD64();
    v6 = sub_1D992BB54();
    v7 = a1;
    v9 = v8;

    v127 = v6;
    v128 = v9;
    MEMORY[0x1DA739C30](0xD000000000000017, 0x80000001D9939830);
    sub_1D986A454(v6, v9, 0xD000000000000075, 0x80000001D9939710, 0xD00000000000001DLL, 0x80000001D9939790);

    v10 = OUTLINED_FUNCTION_34_0();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v13 = OUTLINED_FUNCTION_9(v12);
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v13);
    v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *(v3 + OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_metastore);
    MEMORY[0x1EEE9AC00](v19);
    v21 = &v114 - v20;
    v22 = sub_1D992AE84();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
    v129 = &type metadata for SensitiveConditionTag;
    v130 = &protocol witness table for SensitiveConditionTag;
    LODWORD(v127) = v7;
    v128 = 0xA000000000000000;
    v23 = v3;
    v24 = OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_clockIdentifier;
    sub_1D98907D8(0xA000000000000000);
    sub_1D98FD694(v21, &v127, v23 + v24, v25, v26, v27, v28, v29, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
    sub_1D9890810(0xA000000000000000);
    sub_1D986B804(v21, &qword_1ECB481D0, &qword_1D992F9F0);
    sub_1D986B804(v17, &qword_1ECB481D0, &qword_1D992F9F0);
    return __swift_destroy_boxed_opaque_existential_1(&v127);
  }

  else
  {
    v31 = sub_1D9908208(a2);
    if (qword_1ED8BD6E0 != -1)
    {
      OUTLINED_FUNCTION_0_29();
    }

    v32 = qword_1ECB49640;
    OUTLINED_FUNCTION_5_11();
    sub_1D992BD64();
    v33 = sub_1D992BB54();
    v35 = v34;

    v127 = v33;
    v128 = v35;
    MEMORY[0x1DA739C30](0x6465747261747320, 0xEC000000203A7441);
    v131 = v31;
    v36 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v36);

    v122 = "ics20MessageStoreConcrete";
    v124 = v32;
    v125 = "onditionsLedger.swift";
    OUTLINED_FUNCTION_4_10();
    sub_1D986A454(v37, v38, v39, v40, v41, v42);

    v43 = sub_1D992AE84();
    v118 = &v114;
    v44 = OUTLINED_FUNCTION_6(v43);
    v46 = v45;
    v48 = *(v47 + 64);
    MEMORY[0x1EEE9AC00](v44);
    v119 = v49;
    v50 = &v114 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_starts;
    swift_beginAccess();
    v121 = v51;
    v52 = *(v3 + v51);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48950, &unk_1D9932320);
    OUTLINED_FUNCTION_9(v53);
    v55 = *(v54 + 64);
    OUTLINED_FUNCTION_20_0();
    v120 = v56;
    MEMORY[0x1EEE9AC00](v57);
    OUTLINED_FUNCTION_14_5();
    sub_1D98B1070(a1, v52, v58);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v59);
    v123 = v46;
    v117 = v59;
    if (EnumTagSinglePayload == 1)
    {
      v61 = v31;
      sub_1D986B804(v51, &qword_1ECB48950, &unk_1D9932320);
    }

    else
    {
      v62 = *(v51 + *(v59 + 48));
      v63 = *(v46 + 32);
      v116 = v43;
      v63(v50, v51, v43);
      OUTLINED_FUNCTION_5_11();
      sub_1D992BD64();

      v127 = 0xD000000000000015;
      v128 = 0x80000001D99397E0;
      v64 = sub_1D992BB54();
      MEMORY[0x1DA739C30](v64);

      MEMORY[0x1DA739C30](0x203A747261747320, 0xE800000000000000);
      v126 = v62;
      OUTLINED_FUNCTION_34_0();
      v65 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v65);

      MEMORY[0x1DA739C30](0x203A646E6520, 0xE600000000000000);
      v126 = v31;
      OUTLINED_FUNCTION_34_0();
      v66 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v66);

      OUTLINED_FUNCTION_4_10();
      sub_1D986A454(v67, v68, v69, v70, v71, v72);

      v73 = swift_allocObject();
      v115 = v62;
      *(v73 + 16) = v62;
      *(v73 + 24) = v31;
      v61 = v31;
      *(v73 + 32) = 0;
      v74 = *(v3 + OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_metastore);
      sub_1D98907D8(v73);
      LOBYTE(v74) = sub_1D98B2F58(v50, a1, v73, v74);
      v75 = sub_1D9890810(v73);
      if ((v74 & 1) == 0)
      {
        OUTLINED_FUNCTION_5_11();
        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000024, 0x80000001D9939800);
        v76 = sub_1D992BB54();
        MEMORY[0x1DA739C30](v76);

        OUTLINED_FUNCTION_7_9();
        v126 = v115;
        v77 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v77);

        OUTLINED_FUNCTION_6_11();
        OUTLINED_FUNCTION_4_10();
        sub_1D98DCEB4(v78, v79, v80, v81, v82, v83);
      }

      MEMORY[0x1EEE9AC00](v75);
      OUTLINED_FUNCTION_8();
      v86 = v84 - v85;
      OUTLINED_FUNCTION_13_4();
      sub_1D98B2A88(a1, v86);
      sub_1D986B804(v86, &qword_1ECB48950, &unk_1D9932320);
      swift_endAccess();
      sub_1D9890810(v73);
      v43 = v116;
      (*(v123 + 8))(v50, v116);
    }

    v87 = swift_allocObject();
    v118 = &v114;
    v116 = v61;
    *(v87 + 16) = v61;
    *(v87 + 24) = 0;
    *(v87 + 32) = 1;
    MEMORY[0x1EEE9AC00](v87);
    OUTLINED_FUNCTION_8();
    v90 = v88 - v89;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    v119 = &v114;
    v92 = OUTLINED_FUNCTION_9(v91);
    v94 = *(v93 + 64);
    MEMORY[0x1EEE9AC00](v92);
    v96 = &v114 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
    v97 = *(v3 + OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_metastore);
    MEMORY[0x1EEE9AC00](v98);
    v100 = &v114 - v99;
    __swift_storeEnumTagSinglePayload(&v114 - v99, 1, 1, v43);
    v129 = &type metadata for SensitiveConditionTag;
    v130 = &protocol witness table for SensitiveConditionTag;
    LODWORD(v127) = a1;
    v128 = v87;
    LODWORD(v115) = a1;
    v101 = OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_clockIdentifier;
    sub_1D98907D8(v87);
    sub_1D98FD694(v100, &v127, v3 + v101, v102, v103, v104, v105, v106, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
    sub_1D986B804(v100, &qword_1ECB481D0, &qword_1D992F9F0);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    if (__swift_getEnumTagSinglePayload(v96, 1, v43) == 1)
    {
      sub_1D986B804(v96, &qword_1ECB481D0, &qword_1D992F9F0);
      sub_1D98DCEB4(0xD000000000000024, 0x80000001D99397B0, 0xD000000000000075, v122 | 0x8000000000000000, 0xD00000000000001DLL, v125 | 0x8000000000000000);
      return sub_1D9890810(v87);
    }

    else
    {
      v107 = v123;
      v108 = (*(v123 + 32))(v90, v96, v43);
      MEMORY[0x1EEE9AC00](v108);
      OUTLINED_FUNCTION_8();
      v111 = v109 - v110;
      v112 = v117;
      v113 = *(v117 + 48);
      (*(v107 + 16))(v109 - v110, v90, v43);
      *(v111 + v113) = v116;
      __swift_storeEnumTagSinglePayload(v111, 0, 1, v112);
      OUTLINED_FUNCTION_13_4();
      sub_1D98B12C8(v111, v115);
      swift_endAccess();
      sub_1D9890810(v87);
      return (*(v107 + 8))(v90, v43);
    }
  }
}

unint64_t sub_1D98B23F0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  result = sub_1D992BB64();
  if ((result & 1) == 0)
  {
    v7 = sub_1D9908208(a2);
    if (qword_1ED8BD6E0 != -1)
    {
      OUTLINED_FUNCTION_0_29();
    }

    v8 = qword_1ECB49640;
    v40 = sub_1D992BB54();
    v41 = v9;
    MEMORY[0x1DA739C30](0x74416465646E6520, 0xEA0000000000203ALL);
    v38 = v7;
    v10 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v10);

    v34[1] = v8;
    sub_1D986A454(v40, v41, 0xD000000000000075, 0x80000001D9939710, 0xD00000000000001BLL, 0x80000001D9939850);

    v11 = sub_1D992AE84();
    v12 = OUTLINED_FUNCTION_6(v11);
    v35 = v13;
    v36 = v12;
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v12);
    v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_starts;
    swift_beginAccess();
    v19 = *(v3 + v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48950, &unk_1D9932320);
    OUTLINED_FUNCTION_9(v20);
    v22 = *(v21 + 64);
    OUTLINED_FUNCTION_20_0();
    MEMORY[0x1EEE9AC00](v23);
    OUTLINED_FUNCTION_14_5();
    sub_1D98B1070(a1, v19, v24);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    if (__swift_getEnumTagSinglePayload(v18, 1, v25) == 1)
    {
      sub_1D986B804(v18, &qword_1ECB48950, &unk_1D9932320);
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1D992BD64();

      v38 = 0xD00000000000001DLL;
      v39 = 0x80000001D9939870;
      v26 = sub_1D992BB54();
      MEMORY[0x1DA739C30](v26);

      OUTLINED_FUNCTION_9_7(v38, v27, 0xD000000000000075);
    }

    else
    {
      v34[0] = v34;
      v28 = *(v18 + *(v25 + 48));
      (*(v35 + 32))(v17, v18, v36);
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v7;
      *(v29 + 32) = 0;
      v30 = *(v3 + OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_metastore);
      sub_1D98907D8(v29);
      LOBYTE(v30) = sub_1D98B2F58(v17, a1, v29, v30);
      sub_1D9890810(v29);
      if (v30)
      {
        (*(v35 + 8))(v17, v36);
        return sub_1D9890810(v29);
      }

      else
      {
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000024, 0x80000001D9939800);
        v31 = sub_1D992BB54();
        MEMORY[0x1DA739C30](v31);

        OUTLINED_FUNCTION_7_9();
        v37 = v7;
        v32 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v32);

        OUTLINED_FUNCTION_6_11();
        OUTLINED_FUNCTION_9_7(v38, v33, 0xD000000000000075);

        sub_1D9890810(v29);
        return (*(v35 + 8))(v17, v36);
      }
    }
  }

  return result;
}

id SensitiveConditionsLedger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SensitiveConditionsLedger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SensitiveConditionsLedger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98B29B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1D9889738(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48820, &qword_1D9931B48);
  OUTLINED_FUNCTION_16_5();
  sub_1D987106C(*(*(v12 + 48) + 16 * v7), *(*(v12 + 48) + 16 * v7 + 8));
  v10 = *(*(v12 + 56) + 8 * v7);
  sub_1D98AB584();
  OUTLINED_FUNCTION_34_0();
  sub_1D992BE44();
  *v3 = v12;
  return v10;
}

uint64_t sub_1D98B2A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D988B5F0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48850, &qword_1D9931B78);
    sub_1D992BE34();
    v11 = *(v17 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    sub_1D989E778(v11 + *(*(v12 - 8) + 72) * v8, a2);
    type metadata accessor for SISchemaDeviceSensitivityState(0);
    sub_1D98B3794(&qword_1ECB47908, type metadata accessor for SISchemaDeviceSensitivityState);
    sub_1D992BE44();
    *v3 = v17;
    v13 = a2;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    v13 = a2;
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t sub_1D98B2BFC(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v16 = *v1;
    v17 = sub_1D9889858();
    if (v18)
    {
      v19 = v17;
      v20 = *v2;
      swift_isUniquelyReferenced_nonNull_native();
      v24 = *v2;
      v21 = *(*v2 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48960, &unk_1D9932370);
      sub_1D992BE34();
      v8 = v24;

      v13 = *(*(v24 + 56) + 8 * v19);
      sub_1D992B1A4();
      OUTLINED_FUNCTION_2_18();
      sub_1D98B3794(v22, v23);
      sub_1D992BE44();
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1D992BE74();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1D992BC94();
  v8 = sub_1D98D86D8(v4, v7);

  v9 = sub_1D9889858();
  v11 = v10;

  if (v11)
  {

    v13 = *(*(v8 + 56) + 8 * v9);
    sub_1D992B1A4();
    OUTLINED_FUNCTION_2_18();
    sub_1D98B3794(v14, v15);
    sub_1D992BE44();

LABEL_10:
    *v2 = v8;
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98B2DE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D9889568();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E0, &qword_1D9931B08);
    OUTLINED_FUNCTION_16_5();
    v10 = *(v20 + 48);
    v11 = sub_1D992AE84();
    OUTLINED_FUNCTION_5(v11);
    (*(v12 + 8))(v10 + *(v12 + 72) * v7, v11);
    v13 = *(v20 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    OUTLINED_FUNCTION_5(v14);
    (*(v15 + 32))(a1, v13 + *(v15 + 72) * v7, v14);
    sub_1D98B3748();
    sub_1D992BE44();
    *v2 = v20;
    v16 = a1;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    v16 = a1;
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
}

id sub_1D98B2F58(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37[-v10];
  v12 = type metadata accessor for TagsTable.Predicate(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = &type metadata for SensitiveConditionTag;
  v45 = &protocol witness table for SensitiveConditionTag;
  LODWORD(v43[0]) = a2;
  v43[1] = a3;
  sub_1D98907D8(a3);
  if ((sub_1D986AC54(0) & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = *(a4 + OBJC_IVAR___SiriAnalyticsMetastore_db);
  if (!v16)
  {
    goto LABEL_12;
  }

  sub_1D98B37DC(v43, &v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48500, &unk_1D9932390);
  if (!swift_dynamicCast())
  {

    v39 = 0;
    memset(v38, 0, sizeof(v38));
    sub_1D986B804(v38, &unk_1ECB491C0, &unk_1D99305E0);
    goto LABEL_12;
  }

  sub_1D986D53C(v38, v42);
  __swift_project_boxed_opaque_existential_1(v43, v44);
  swift_getDynamicType();
  (v45[1])(&v40);
  result = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
  if (result)
  {
    v18 = result;
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_1D992B3F4();
    result = sub_1D99108B4(v18);
    if (v19 >> 60 != 15)
    {
      v20 = result;
      v21 = v19;

      if (!sub_1D98B1728(v20, v21))
      {
        v23 = sub_1D992AE84();
        __swift_storeEnumTagSinglePayload(v15, 1, 1, v23);
        v24 = v12[6];
        (*(*(v23 - 8) + 16))(&v15[v24], a1, v23);
        __swift_storeEnumTagSinglePayload(&v15[v24], 0, 1, v23);
        v25 = v12[10];
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
        __swift_storeEnumTagSinglePayload(&v15[v25], 1, 1, v26);
        __swift_storeEnumTagSinglePayload(&v15[v12[11]], 1, 1, v23);
        *&v15[v12[5]] = 0;
        *&v15[v12[7]] = 0;
        v27 = &v15[v12[8]];
        *v27 = 0;
        v27[4] = 1;
        *&v15[v12[9]] = 0;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48970, &qword_1D99323A0);
        v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x1EEE9AC00](v28 - 8);
        v31 = &v37[-v30];
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
        __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);
        __swift_project_boxed_opaque_existential_1(v43, v44);
        swift_getDynamicType();
        (v45[1])(&v40);
        v33 = v40;
        sub_1D987BA38(v20, v21);
        LOBYTE(v38[0]) = 0;
        v34 = sub_1D98F7848(v31, v33, v20, v21);
        sub_1D98B3840(v15, v11);
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
        sub_1D98EC4A0(v34, v11, &v40);

        sub_1D986B804(v11, &qword_1ECB48968, &qword_1D9932380);
        v35 = v41;
        v36 = __swift_project_boxed_opaque_existential_1(&v40, v41);
        v22 = sub_1D986D1D0(v36, v16, v35);

        sub_1D9866358(v20, v21);
        sub_1D98B38A4(v15);
        __swift_destroy_boxed_opaque_existential_1(&v40);
        __swift_destroy_boxed_opaque_existential_1(v42);
        goto LABEL_13;
      }

      if (qword_1ED8BD6D0 != -1)
      {
        swift_once();
      }

      sub_1D98DCEB4(0xD00000000000001DLL, 0x80000001D99399B0, 0xD00000000000005ELL, 0x80000001D9939930, 0xD000000000000015, 0x80000001D9939990);

      sub_1D9866358(v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v42);
LABEL_12:
      v22 = 0;
LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(v43);
      return (v22 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98B3608()
{
  result = sub_1D992AE84();
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

unint64_t sub_1D98B3748()
{
  result = qword_1ED8BF060;
  if (!qword_1ED8BF060)
  {
    sub_1D992AE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BF060);
  }

  return result;
}

uint64_t sub_1D98B3794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D98B37DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D98B3840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagsTable.Predicate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98B38A4(uint64_t a1)
{
  v2 = type metadata accessor for TagsTable.Predicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98B3900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_4()
{
  v2 = *(v0 - 200);

  return swift_beginAccess();
}

void sub_1D98B399C()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BF060);
  OUTLINED_FUNCTION_31_5();
  v19 = v4;
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v3 - 8);
    v7 = *(v6 + 16);
    v17 = v6 + 16;
    v18 = v7;
    v8 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v10 = *(v6 + 64);
    v9 = *(v6 + 72);
    v15[1] = v1;
    v16 = v9;
    v11 = (v6 + 8);
    do
    {
      MEMORY[0x1EEE9AC00](v4);
      v13 = MEMORY[0x1EEE9AC00](v12);
      v18(v15 - v14, v8, v3, v13);
      sub_1D98B6650();
      v4 = (*v11)(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      v8 += v16;
      --v5;
    }

    while (v5);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98B3B0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D98BA9C8();
  result = MEMORY[0x1DA739E70](v2, &type metadata for DbTableColumn, v3);
  v5 = 0;
  v14 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 49); ; i += 24)
  {
    if (v6 == v5)
    {

      return v14;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v8 = *(i - 1);
    v9 = *(i - 9);
    v10 = *(i - 17);
    if (*i)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(i - 9);

    sub_1D98B6944(&v13, v10, v9, v11 | v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98B3BF4(uint64_t a1)
{
  result = MEMORY[0x1DA739E70](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1D98B6B28(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98B3CB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SISchemaDeviceSensitivityState(0);
  v4 = v3;
  v5 = sub_1D98BAA44(&qword_1ECB47908, 255, type metadata accessor for SISchemaDeviceSensitivityState);
  v6 = MEMORY[0x1DA739E70](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      v9 = *(a1 + v8);
      sub_1D98B6E74();
      v8 += 4;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

void sub_1D98B3DBC(uint64_t a1)
{
  sub_1D9866E40();
  sub_1D992B1A4();
  sub_1D98BAA44(&qword_1ECB47A00, 255, MEMORY[0x1E69CE6A8]);
  OUTLINED_FUNCTION_31_5();
  v6[1] = v2;
  v3 = sub_1D98682F0(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA73A2C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1D98B6C74(v6, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1D98B3ED0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SISchemaAnyEventType(0);
  sub_1D98BAA44(&qword_1ECB47960, 255, type metadata accessor for SISchemaAnyEventType);
  OUTLINED_FUNCTION_31_5();
  v9 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      v6 = *(a1 + v5);
      sub_1D98B6E74();
      v5 += 4;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

id sub_1D98B403C(char a1, char a2)
{
  v2[OBJC_IVAR___SiriAnalyticsLargeMessageUploadProcessingResult_determinationMade] = a1;
  v2[OBJC_IVAR___SiriAnalyticsLargeMessageUploadProcessingResult_suppressed] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LargeMessageUploadProcessingResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id LargeMessageUploadProcessingResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LargeMessageUploadProcessingResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargeMessageUploadProcessingResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id LargeMessageUploadProcessor.__allocating_init(queue:metastore:logicalClocks:)(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return LargeMessageUploadProcessor.init(queue:metastore:logicalClocks:)(a1, a2, a3);
}

id LargeMessageUploadProcessor.init(queue:metastore:logicalClocks:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *&a3[OBJC_IVAR___SiriAnalyticsLogicalClocksProvider_provider];
  type metadata accessor for LargeMessageUploadProcessor();
  swift_allocObject();

  v7 = sub_1D98B42C8(a1, a2, v6);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id sub_1D98B42C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for LargeMessageUploadProcessor();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D98B4304(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  type metadata accessor for LargeMessageUploadProcessor();
  sub_1D98BAA44(&qword_1ECB48990, v4, type metadata accessor for LargeMessageUploadProcessor);
  v6 = sub_1D992B814();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D98B43BC, v6, v5);
}

uint64_t sub_1D98B43BC()
{
  v1 = v0;
  v2 = v0[7];
  v3 = sub_1D992AE84();
  v1[11] = v3;
  OUTLINED_FUNCTION_6(v3);
  v5 = v4;
  v1[12] = v4;
  v1[13] = *(v6 + 64);
  v7 = swift_task_alloc();
  v1[14] = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64);
  v8 = OUTLINED_FUNCTION_20();
  sub_1D9866DE0(v2, v8, &qword_1ECB481D0, &qword_1D992F9F0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    v9 = v1[6];
    sub_1D986B804(v8, &qword_1ECB481D0, &qword_1D992F9F0);

    v10 = sub_1D992BB34();
  }

  else
  {
    (*(v5 + 32))(v7, v8, v3);

    swift_task_alloc();
    (*(v5 + 16))();
    v11 = objc_allocWithZone(sub_1D992B1A4());
    OUTLINED_FUNCTION_25_3();
    v10 = sub_1D992B184();
    (*(v5 + 8))(v7, v3);
  }

  v1[15] = v10;
  v12 = v10;
  if (v10)
  {
    v89 = v5;
    v90 = v3;
    if (qword_1ECB480C8 != -1)
    {
      OUTLINED_FUNCTION_11_7();
    }

    v88 = v1[8];
    v13 = v1[6];
    v1[16] = qword_1ECB49720;
    OUTLINED_FUNCTION_68();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v14 = [v10 description];
    sub_1D992B624();
    v16 = v15;

    v17 = OUTLINED_FUNCTION_27_3();
    MEMORY[0x1DA739C30](v17, v16);

    MEMORY[0x1DA739C30](0xD000000000000012, 0x80000001D9939B20);
    v18 = [v13 description];
    sub_1D992B624();
    v20 = v19;

    v21 = OUTLINED_FUNCTION_27_3();
    MEMORY[0x1DA739C30](v21, v20);

    OUTLINED_FUNCTION_1_20();
    sub_1D986A454(v22, v23, v24, v25, v26, v27);

    v1[17] = *(v88 + 24);
    sub_1D98D4BA4();
    v29 = v28;
    if (*(v28 + 16))
    {
      v30 = v1[6];
      OUTLINED_FUNCTION_68();
      sub_1D992BD64();

      OUTLINED_FUNCTION_38();
      v31 = MEMORY[0x1DA739D10](v29, v3);
      MEMORY[0x1DA739C30](v31);

      MEMORY[0x1DA739C30](0xD000000000000012, 0x80000001D9939B20);
      v32 = [v30 description];
      sub_1D992B624();
      v34 = v33;

      v35 = OUTLINED_FUNCTION_27_3();
      MEMORY[0x1DA739C30](v35, v34);

      OUTLINED_FUNCTION_1_20();
      sub_1D986A454(v36, v37, v38, v39, v40, v41);

      v42 = *(v29 + 16);
      v43 = MEMORY[0x1E69E7CC0];
      if (v42)
      {
        v92 = MEMORY[0x1E69E7CC0];
        sub_1D98B9964(0, v42, 0);
        v44 = 0;
        v43 = v92;
        v87 = v29 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
        do
        {
          v45 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48998, &qword_1D99323E0) - 8);
          v91 = *v45;
          v46 = *(*v45 + 64);
          v47 = OUTLINED_FUNCTION_20();
          v48 = swift_task_alloc();
          v49 = *(v89 + 16);
          v49(v48, v87 + *(v89 + 72) * v44, v90);
          v50 = v45[14];
          v49(v47, v48, v90);
          sub_1D98FE2D0();
          v52 = v51;
          (*(v89 + 8))(v48, v90);
          *(v47 + v50) = v52;

          v54 = *(v92 + 16);
          v53 = *(v92 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_1D98B9964(v53 > 1, v54 + 1, 1);
          }

          ++v44;
          *(v92 + 16) = v54 + 1;
          sub_1D98B9984(v47, v92 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v54);
        }

        while (v42 != v44);
      }

      v1[18] = v43;
      v70 = *(v1[8] + 32);
      sub_1D98B399C();
      v72 = v71;
      v1[19] = v71;
      v73 = swift_task_alloc();
      v1[20] = v73;
      *v73 = v1;
      v73[1] = sub_1D98B4C34;

      return sub_1D98E0810(v72);
    }

    OUTLINED_FUNCTION_68();
    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000020, 0x80000001D9939C20);
    v75 = [v10 description];
    sub_1D992B624();
    v77 = v76;

    v78 = OUTLINED_FUNCTION_27_3();
    MEMORY[0x1DA739C30](v78, v77);

    MEMORY[0x1DA739C30](0xD000000000000019, 0x80000001D9939C50);
    OUTLINED_FUNCTION_1_20();
    sub_1D98DCECC(v79, v80, v81, v82, v83, v84);

    v85 = objc_allocWithZone(type metadata accessor for LargeMessageUploadProcessingResult());
    v69 = sub_1D98B403C(0, 0);
  }

  else
  {
    if (qword_1ECB480C8 != -1)
    {
      OUTLINED_FUNCTION_11_7();
    }

    v55 = v1[6];
    OUTLINED_FUNCTION_68();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v56 = [v55 description];
    sub_1D992B624();
    v57 = v1;
    v59 = v58;

    v60 = OUTLINED_FUNCTION_27_3();
    MEMORY[0x1DA739C30](v60, v59);
    v1 = v57;

    MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D9939A30);
    OUTLINED_FUNCTION_10_7();
    sub_1D98DCECC(v61, v62, v63, v64, v65, v66);

    v67 = objc_allocWithZone(type metadata accessor for LargeMessageUploadProcessingResult());
    v68 = OUTLINED_FUNCTION_25_3();
    v69 = sub_1D98B403C(v68, 0);
  }

  v86 = v1[1];

  return v86(v69);
}

uint64_t sub_1D98B4C34(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 168) = a1;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D98B4D80, v6, v5);
}

id sub_1D98B4D80()
{
  OUTLINED_FUNCTION_45_0();
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = *(v0 + 144);
  v3 = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = *(v0 + 168);
  *(v0 + 32) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48998, &qword_1D99323E0);
  OUTLINED_FUNCTION_6(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_20();
  v145 = *(v2 + 16);
  if (v145)
  {
    v137 = v0 + 40;
    v138 = v0 + 16;
    v144 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v10 = *(v0 + 96);
    v147 = (v10 + 32);
    v136 = (v10 + 16);
    v143 = *(v4 + 48);
    v146 = (v10 + 8);
    OUTLINED_FUNCTION_38();
    result = v1;
    v12 = 0;
    v139 = v0;
    v141 = v6;
    v142 = v2;
    v134 = v9;
    while (1)
    {
      if (v12 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = *(v0 + 88);
      v14 = *(v0 + 104) + 15;
      sub_1D9866DE0(v144 + *(v6 + 72) * v12, v9, &qword_1ECB48998, &qword_1D99323E0);
      v15 = swift_task_alloc();
      v16 = *(v9 + v143);
      v17 = *v147;
      (*v147)(v15, v9, v13);
      if (!v16)
      {
        break;
      }

      v18 = *(v0 + 112);
      v19 = *(v0 + 88);
      v20 = OUTLINED_FUNCTION_20();
      __swift_storeEnumTagSinglePayload(v20, 1, 1, v19);
      sub_1D98B6044();
      v22 = v21;

      *(v0 + 40) = MEMORY[0x1E69E7CC0];
      v23 = swift_task_alloc();
      v23[2] = v20;
      v23[3] = v15;
      v23[4] = v138;
      v23[5] = v137;
      sub_1D98B6408(sub_1D98B99F4, v23, v22);

      v24 = *(v0 + 40);
      v25 = *(v24 + 16);

      if (!v25)
      {
        v39 = v15;

        sub_1D986B804(v20, &qword_1ECB481D0, &qword_1D992F9F0);

        goto LABEL_11;
      }

      v26 = *(v0 + 88);
      v27 = *(v0 + 48);
      v28 = *(v0 + 112) + 15;
      sub_1D986B804(v20, &qword_1ECB481D0, &qword_1D992F9F0);

      v29 = swift_task_alloc();
      v30 = *v136;
      v140 = v15;
      (*v136)(v29, v15, v26);
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v26);
      OUTLINED_FUNCTION_4_11();
      sub_1D98B5A20(0, 1, v29, v27, v24, v31, sub_1D98F9B78);

      sub_1D986B804(v29, &qword_1ECB481D0, &qword_1D992F9F0);

      v32 = [v27 content];
      if (!v32)
      {
        v97 = *(v0 + 144);
        v98 = *(v0 + 120);
        v99 = *(v0 + 128);
        v100 = *(v0 + 88);

        OUTLINED_FUNCTION_2_19();
        sub_1D992BD64();

        OUTLINED_FUNCTION_38();
        v101 = [v98 description];
        v102 = sub_1D992B624();
        v104 = v103;

        MEMORY[0x1DA739C30](v102, v104);

        OUTLINED_FUNCTION_30_3();
        sub_1D9882D14(&qword_1ED8BD8D0);
        v105 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v105);

        OUTLINED_FUNCTION_10_7();
        sub_1D98DCECC(v106, v107, v108, v109, v110, v111);

        v112 = objc_allocWithZone(type metadata accessor for LargeMessageUploadProcessingResult());
        v113 = OUTLINED_FUNCTION_25_3();
        v94 = sub_1D98B403C(v113, 1);

        (*v146)(v140, v100);
        v114 = *(v0 + 24);

        v115 = *(v0 + 32);

LABEL_26:

        goto LABEL_27;
      }

      v34 = *(v0 + 104);
      v33 = *(v0 + 112);
      v35 = *(v0 + 88);
      v36 = *(v0 + 56);

      v37 = swift_task_alloc();
      v38 = swift_task_alloc();
      sub_1D9866DE0(v36, v38, &qword_1ECB481D0, &qword_1D992F9F0);
      if (__swift_getEnumTagSinglePayload(v38, 1, v35) == 1)
      {

        sub_1D986B804(v38, &qword_1ECB481D0, &qword_1D992F9F0);

        v9 = v134;
        OUTLINED_FUNCTION_45_0();
      }

      else
      {
        v48 = *(v0 + 48);
        v17(v37, v38, *(v0 + 88));

        v49 = [v48 speechAudioRecord];
        v135 = [v49 interactionId];

        v50 = [v48 speechAudioRecord];
        if (v50)
        {
          v51 = v50;
          v52 = *(v0 + 88);
          v53 = *(v0 + 104) + 15;
          v36 = sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
          v54 = swift_task_alloc();
          v30(v54, v37, v52);
          v0 = v139;
          v55 = sub_1D98B5B94(v54);

          [v51 setInteractionId_];
        }

        v56 = *(v0 + 112);
        v57 = *(v0 + 88);
        v58 = *(v0 + 48);
        v59 = OUTLINED_FUNCTION_20();
        v30(v59, v140, v57);
        __swift_storeEnumTagSinglePayload(v59, 0, 1, v57);
        OUTLINED_FUNCTION_4_11();
        sub_1D98B5A20(0, 1, v59, v58, v24, v60, sub_1D98F9B78);

        sub_1D986B804(v59, &qword_1ECB481D0, &qword_1D992F9F0);

        v61 = [v58 content];
        if (!v61)
        {
          v116 = *(v0 + 144);
          v117 = *(v0 + 120);
          v118 = *(v0 + 128);
          v119 = *(v0 + 88);

          OUTLINED_FUNCTION_2_19();
          sub_1D992BD64();
          MEMORY[0x1DA739C30](0xD00000000000002FLL, 0x80000001D9939BF0);
          sub_1D9882D14(&qword_1ED8BD8D0);
          v120 = sub_1D992BF34();
          MEMORY[0x1DA739C30](v120);

          OUTLINED_FUNCTION_30_3();
          v121 = sub_1D992BF34();
          MEMORY[0x1DA739C30](v121);

          OUTLINED_FUNCTION_10_7();
          sub_1D98DCECC(v122, v123, v124, v125, v126, v127);

          v128 = objc_allocWithZone(type metadata accessor for LargeMessageUploadProcessingResult());
          v129 = OUTLINED_FUNCTION_25_3();
          v94 = sub_1D98B403C(v129, 1);

          v130 = *v146;
          (*v146)(v37, v119);
          v130(v140, v119);

          v131 = *(v139 + 24);

          v132 = *(v139 + 32);

          v0 = v139;
          goto LABEL_26;
        }

        v62 = *(v0 + 48);

        v63 = [v62 speechAudioRecord];
        v9 = v134;
        OUTLINED_FUNCTION_45_0();
        if (v64)
        {
          v65 = v64;
          v66 = [v64 interactionId];

          if (v66)
          {
            v67 = *(v0 + 48);

            v68 = [v67 speechAudioRecord];
            [v68 setInteractionId_];
          }
        }

        v69 = *(v0 + 88);

        (*v146)(v37, v69);
      }

      v70 = *(v0 + 120);
      v71 = *(v0 + 128);
      v72 = *(v0 + 88);

      OUTLINED_FUNCTION_2_19();
      sub_1D992BD64();
      MEMORY[0x1DA739C30](v36 + 8, 0x80000001D9939BC0);
      v73 = [v70 description];
      v74 = sub_1D992B624();
      v76 = v75;

      MEMORY[0x1DA739C30](v74, v76);

      OUTLINED_FUNCTION_30_3();
      sub_1D9882D14(&qword_1ED8BD8D0);
      v39 = v140;
      v77 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v77);

      OUTLINED_FUNCTION_10_7();
LABEL_20:
      sub_1D98DCECC(v43, v44, v45, v46, v47, 0x80000001D9939AD0);
      ++v12;
      v78 = *(v0 + 88);

      (*v146)(v39, v78);

      v6 = v141;
      v2 = v142;
      if (v145 == v12)
      {
        v79 = *(v0 + 144);

        goto LABEL_23;
      }
    }

    v39 = v15;
LABEL_11:
    v0 = v139;
    v40 = *(v139 + 128);
    v41 = *(v139 + 88);
    OUTLINED_FUNCTION_2_19();
    sub_1D992BD64();

    OUTLINED_FUNCTION_45_0();
    sub_1D9882D14(&qword_1ED8BD8D0);
    v42 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v42);

    OUTLINED_FUNCTION_10_7();
    goto LABEL_20;
  }

  v80 = v1;

LABEL_23:
  v81 = *(v0 + 120);
  v82 = *(v0 + 128);

  OUTLINED_FUNCTION_2_19();
  sub_1D992BD64();

  OUTLINED_FUNCTION_38();
  v83 = [v81 description];
  v84 = sub_1D992B624();
  v86 = v85;

  MEMORY[0x1DA739C30](v84, v86);

  OUTLINED_FUNCTION_10_7();
  sub_1D98DCECC(v87, v88, v89, v90, v91, 0x80000001D9939AD0);

  v92 = objc_allocWithZone(type metadata accessor for LargeMessageUploadProcessingResult());
  v93 = OUTLINED_FUNCTION_25_3();
  v94 = sub_1D98B403C(v93, 0);

  v95 = *(v0 + 24);

  v96 = *(v0 + 32);

LABEL_27:
  v133 = *(v0 + 8);

  return v133(v94);
}

uint64_t sub_1D98B5A20(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, uint64_t))
{
  v20[2] = a1;
  v21 = a2 & 1;
  v22 = a3;
  v23 = a4;

  v11 = a7(a6, v20, a5);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D98B98F8(0, v12, 0);
    v13 = v25;
    v14 = v11 + 32;
    do
    {
      sub_1D98BA058(v14, v24);
      v15 = v24[0];
      sub_1D98BA0B4(v24);
      v25 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D98B98F8(v16 > 1, v17 + 1, 1);
        v13 = v25;
      }

      *(v13 + 16) = v17 + 1;
      *(v13 + 4 * v17 + 32) = v15;
      v14 += 48;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  if (*(v13 + 16))
  {
    v18 = sub_1D98B649C(a4, v13);
  }

  else
  {

    return 0;
  }

  return v18;
}

id sub_1D98B5B94(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D992AE44();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1D992AE84();
  OUTLINED_FUNCTION_5(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t sub_1D98B5CC4(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v4[5] = v8;
  if (a2)
  {
    sub_1D992AE64();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  v11 = a1;

  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1D98B5E04;

  return sub_1D98B4304(v11, v8);
}

uint64_t sub_1D98B5E04(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_17();
  *v9 = v8;

  sub_1D986B804(v4, &qword_1ECB481D0, &qword_1D992F9F0);

  (v5)[2](v5, a1);
  _Block_release(v5);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t LargeMessageUploadProcessor.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t LargeMessageUploadProcessor.__deallocating_deinit()
{
  LargeMessageUploadProcessor.deinit();

  return swift_deallocClassInstance();
}

void sub_1D98B6044()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v3 = type metadata accessor for IdentifiableTag();
  v4 = OUTLINED_FUNCTION_39_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_3();
  v9 = *(v2 + 16);
  if (v9)
  {
    v10 = *(v7 + 24);
    OUTLINED_FUNCTION_37_2(v8);
    v11 = MEMORY[0x1E69E7CC0];
    v12 = &unk_1ECB491B0;
    v14 = *(v13 + 72);
    v22 = v10;
    do
    {
      sub_1D98BA908(v2, v0);
      sub_1D98B37DC(v0 + v10, &v23);
      sub_1D98BA96C(v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v12, &qword_1D9932388);
      if (swift_dynamicCast())
      {
        v15 = *(&v24 + 1);
        if ((~*(&v24 + 1) & 0xF000000000000007) != 0)
        {
          v16 = v12;
          v17 = v24;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_28_3();
            sub_1D98BE018();
            v11 = v20;
          }

          v18 = *(v11 + 16);
          if (v18 >= *(v11 + 24) >> 1)
          {
            sub_1D98BE018();
            v11 = v21;
          }

          *(v11 + 16) = v18 + 1;
          v19 = v11 + 16 * v18;
          *(v19 + 32) = v17;
          *(v19 + 40) = v15;
          v12 = v16;
          v10 = v22;
          goto LABEL_12;
        }
      }

      else
      {
        v24 = xmmword_1D99323B0;
        v15 = 0xF000000000000007;
      }

      sub_1D98BAA8C(v24, v15);
LABEL_12:
      v2 += v14;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_7();
}

void sub_1D98B6224()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v3 = type metadata accessor for IdentifiableTag();
  v4 = OUTLINED_FUNCTION_39_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_3();
  v9 = *(v2 + 16);
  if (v9)
  {
    v10 = *(v7 + 24);
    OUTLINED_FUNCTION_37_2(v8);
    v12 = *(v11 + 72);
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D98BA908(v2, v0);
      sub_1D98B37DC(v0 + v10, &v23);
      sub_1D98BA96C(v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
      if (swift_dynamicCast())
      {
        if (*(&v21 + 1))
        {
          v23 = v20;
          v24 = v21;
          v25 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_28_3();
            sub_1D98BE4A8();
            v13 = v18;
          }

          v14 = *(v13 + 16);
          if (v14 >= *(v13 + 24) >> 1)
          {
            sub_1D98BE4A8();
            v13 = v19;
          }

          *(v13 + 16) = v14 + 1;
          v15 = (v13 + 48 * v14);
          v16 = v23;
          v17 = v25;
          v15[3] = v24;
          v15[4] = v17;
          v15[2] = v16;
          goto LABEL_12;
        }
      }

      else
      {
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
      }

      sub_1D986B804(&v20, &qword_1ECB489F8, &qword_1D9932550);
LABEL_12:
      v2 += v12;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_7();
}

unint64_t sub_1D98B6408(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = v5 + 2;
    v8 = *v5;
    v9 = *(v5 - 2);
    v10 = v8;
    sub_1D98907D8(v8);
    v4(&v9);
    result = sub_1D9890810(v10);
    v5 = v7;
  }

  while (!v3);
  return result;
}

uint64_t sub_1D98B649C(void *a1, uint64_t a2)
{
  v2 = a2;
  v13[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489C8, &qword_1D9932500);
  sub_1D98BA108();
  if (sub_1D992B754())
  {
  }

  else
  {
    v12 = a1;
    sub_1D986E35C(0, &qword_1ED8BD940, 0x1E69CF600);
    a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489D0, &qword_1D9932508);
    if (swift_dynamicCast())
    {
      sub_1D986D53C(v10, v13);
      v4 = sub_1D98E5A98();
      v5 = v4;
      if (v4)
      {
      }

      sub_1D98B3CB4(v6);
      __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
      v7 = sub_1D992B234();

      if (v5)
      {
        v8 = sub_1D98E5A98();
        if (v8)
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v13);
      if (v7)
      {
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_1D986B804(v10, &qword_1ECB489D8, &qword_1D9932510);
      return 0;
    }
  }

  return v2;
}

void sub_1D98B6650()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v33 = v3;
  v4 = sub_1D992AE84();
  v32 = v0;
  v5 = *v0;
  v6 = *(*v0 + 40);
  sub_1D9882D14(&qword_1ED8BF060);
  v38 = v2;
  sub_1D992B5C4();
  v7 = *(v5 + 32);
  OUTLINED_FUNCTION_26_5();
  v36 = ~v9;
  v37 = v10;
  v34 = v5;
  v35 = v4 - 8;
  while (1)
  {
    v11 = v8 & v36;
    if (((1 << (v8 & v36)) & *(v37 + (((v8 & v36) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v22 = v32;
      v23 = *v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v4 - 8);
      v26 = *(v25 + 64);
      v27 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      v29 = &v31 - v28;
      v30 = v38;
      (*(v25 + 16))(&v31 - v28, v38, v4, v27);
      v40 = *v22;
      sub_1D98B8EC0(v29, v11, isUniquelyReferenced_nonNull_native);
      *v22 = v40;
      (*(v25 + 32))(v33, v30, v4);
      goto LABEL_7;
    }

    v39 = &v31;
    v12 = *(v4 - 8);
    v13 = v12[8];
    v14 = MEMORY[0x1EEE9AC00](v8);
    v16 = &v31 - v15;
    v18 = *(v17 + 72) * v11;
    v19 = v12[2];
    v19(&v31 - v15, *(v34 + 48) + v18, v4, v14);
    sub_1D9882D14(&qword_1ED8BF058);
    v20 = sub_1D992B5F4();
    v21 = v12[1];
    v21(v16, v4);
    if (v20)
    {
      break;
    }

    v8 = v11 + 1;
  }

  v21(v38, v4);
  (v19)(v33, *(v34 + 48) + v18, v4);
LABEL_7:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98B6944(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v29 = a4 & 0x100;
  v7 = *v4;
  v8 = *(*v4 + 40);
  sub_1D992C074();
  sub_1D992B6D4();
  sub_1D992C0C4();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_26_5();
  v12 = v11 & ~v10;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_14:
    v19 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v26;

    sub_1D98B9138(a2, a3, a4 & 0x1FF, v12, isUniquelyReferenced_nonNull_native);
    *v26 = v30;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 17) = BYTE1(v29);
    return 1;
  }

  v13 = ~v10;
  v14 = *(v7 + 48);
  while (1)
  {
    v15 = v14 + 24 * v12;
    v16 = *(v15 + 16);
    v17 = *(v15 + 17);
    if (*v15 == a2 && *(v15 + 8) == a3)
    {
      break;
    }

    if ((sub_1D992BF64() & 1) != 0 && v16 == a4 && (((v29 != 0) ^ v17) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    v12 = (v12 + 1) & v13;
    if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (v16 != a4 || (((v29 != 0) ^ v17) & 1) != 0)
  {
    goto LABEL_13;
  }

LABEL_15:

  v22 = *(v7 + 48) + 24 * v12;
  v24 = *v22;
  v23 = *(v22 + 8);
  v25 = *(v22 + 16);
  LOBYTE(v22) = *(v22 + 17);
  *a1 = v24;
  *(a1 + 8) = v23;
  *(a1 + 16) = v25;
  *(a1 + 17) = v22;

  return 0;
}

BOOL sub_1D98B6B28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D992C074();
  sub_1D992B6D4();
  v9 = sub_1D992C0C4();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1D992BF64() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1D98B9324(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_1D98B6C74(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D992BCA4();

    if (v9)
    {

      sub_1D992B1A4();
      swift_dynamicCast();
      result = 0;
      *a1 = v26;
    }

    else
    {
      result = sub_1D992BC94();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v19 = sub_1D98B8C80(v7, result + 1);
        v20 = *(v19 + 16);
        if (*(v19 + 24) <= v20)
        {
          sub_1D98B88E0(v20 + 1);
        }

        v21 = v8;
        sub_1D98B8E3C(v21, v19);

        *v3 = v19;
LABEL_16:
        *a1 = v21;
        return 1;
      }
    }
  }

  else
  {
    sub_1D992B1A4();
    v11 = *(v6 + 40);
    sub_1D992BBC4();
    v12 = *(v6 + 32);
    OUTLINED_FUNCTION_26_5();
    v15 = ~v14;
    while (1)
    {
      v16 = v13 & v15;
      if (((*(v6 + 56 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v15)) & 1) == 0)
      {
        v22 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v3;
        v21 = a2;
        sub_1D98B948C(v21, v16, isUniquelyReferenced_nonNull_native);
        *v3 = v27;
        goto LABEL_16;
      }

      v17 = *(*(v6 + 48) + 8 * v16);
      v18 = sub_1D992BBD4();

      if (v18)
      {
        break;
      }

      v13 = v16 + 1;
    }

    v24 = *(*(v6 + 48) + 8 * v16);
    *a1 = v24;
    v25 = v24;
    return 0;
  }

  return result;
}

void sub_1D98B6E74()
{
  OUTLINED_FUNCTION_47_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *v0;
  v12 = *(*v0 + 40);
  sub_1D992C074();
  sub_1D992C0A4();
  v13 = sub_1D992C0C4();
  v14 = ~(-1 << *(v11 + 32));
  while (1)
  {
    v15 = v13 & v14;
    if (((1 << (v13 & v14)) & *(v11 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    if (*(*(v11 + 48) + 4 * v15) == v8)
    {
      goto LABEL_6;
    }

    v13 = v15 + 1;
  }

  v16 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v0;
  sub_1D98B95D4(v8, v15, isUniquelyReferenced_nonNull_native, v6, v4, v2);
  *v0 = v18;
LABEL_6:
  *v10 = v8;
  OUTLINED_FUNCTION_46_0();
}

void *sub_1D98B6F6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489C0, &qword_1D99324E8);
  v2 = *v0;
  v3 = sub_1D992BD04();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    v9 = *(v2 + 16);
    v28 = v4;
    *(v4 + 16) = v9;
    v10 = 1 << *(v2 + 32);
    v11 = *(v2 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v8 << 6);
        v19 = sub_1D992AE84();
        v20 = *(v19 - 8);
        v21 = *(v20 + 64);
        v22 = MEMORY[0x1EEE9AC00](v19);
        v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = *(v25 + 72) * v18;
        (*(v20 + 16))(v24, *(v2 + 48) + v26, v19, v22);
        result = (*(v20 + 32))(*(v28 + 48) + v26, v24, v19);
      }

      while (v13);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {

        v1 = v27;
        v4 = v28;
        goto LABEL_21;
      }

      v17 = *(v2 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_1D98B71B0()
{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A00, &qword_1D9932558);
  v7 = OUTLINED_FUNCTION_29_4();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_0_30();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_3_12();
    while (v5)
    {
      OUTLINED_FUNCTION_3_2();
LABEL_15:
      v17 = 3 * (v13 | (v3 << 6));
      v18 = *(v1 + 48) + 8 * v17;
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 17);
      v22 = *(v7 + 48) + 8 * v17;
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 17) = v18;
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_9_1();
        v5 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

void *sub_1D98B72A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489A8, &unk_1D99324C0);
  v2 = *v0;
  v3 = sub_1D992BD04();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1D98B7400()
{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489B8, &qword_1D99324E0);
  v7 = OUTLINED_FUNCTION_29_4();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_0_30();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_3_12();
    for (; v5; v19 = v18)
    {
      OUTLINED_FUNCTION_3_2();
LABEL_15:
      v17 = v13 | (v3 << 6);
      v18 = *(*(v1 + 48) + 8 * v17);
      *(*(v7 + 48) + 8 * v17) = v18;
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_9_1();
        v5 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

void *sub_1D98B74DC(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = OUTLINED_FUNCTION_29_4();
  if (*(v3 + 16))
  {
    result = OUTLINED_FUNCTION_0_30();
    if (v10)
    {
      v11 = result >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      result = memmove(result, v4, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v3 + 16);
    v13 = 1 << *(v3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v3 + 56);
    for (i = (v13 + 63) >> 6; v15; *(*(v6 + 48) + 4 * v18) = *(*(v3 + 48) + 4 * v18))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_17:
      ;
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= i)
      {
        goto LABEL_19;
      }

      v20 = *(v4 + v12);
      ++v19;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v18 = __clz(__rbit64(v20)) | (v12 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v6;
  }

  return result;
}

uint64_t sub_1D98B75E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489C0, &qword_1D99324E8);
  result = sub_1D992BD14();
  v6 = result;
  if (*(v3 + 16))
  {
    v38 = v2;
    v39 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v40 = result;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v42 = (v11 - 1) & v11;
LABEL_14:
        v17 = v14 | (v7 << 6);
        v18 = sub_1D992AE84();
        v41 = &v37;
        v19 = *(v18 - 8);
        v20 = *(v19 + 64);
        v21 = MEMORY[0x1EEE9AC00](v18);
        v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = v24;
        v26 = *(v3 + 48);
        v27 = *(v25 + 72);
        (*(v19 + 16))(v23, v26 + v27 * v17, v18, v21);
        v6 = v40;
        v28 = *(v40 + 40);
        sub_1D9882D14(&qword_1ED8BF060);
        result = sub_1D992B5C4();
        v29 = -1 << *(v6 + 32);
        v30 = result & ~v29;
        v31 = v30 >> 6;
        if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
        {
          break;
        }

        v32 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        result = (*(v19 + 32))(*(v6 + 48) + v32 * v27, v23, v18);
        ++*(v6 + 16);
        v11 = v42;
        v3 = v39;
        if (!v42)
        {
          goto LABEL_9;
        }
      }

      v33 = 0;
      v34 = (63 - v29) >> 6;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v13 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v38;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v42 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D98B78EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A00, &qword_1D9932558);
  result = sub_1D992BD14();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v33 = *(v17 + 17);
        v21 = *(v6 + 40);
        sub_1D992C074();

        sub_1D992B6D4();
        result = sub_1D992C0C4();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v6 + 48) + 24 * v25;
        *v30 = v18;
        *(v30 + 8) = v19;
        *(v30 + 16) = v20;
        *(v30 + 17) = v33;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D98B7B44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489A8, &unk_1D99324C0);
  result = sub_1D992BD14();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1D992C074();

        sub_1D992B6D4();
        result = sub_1D992C0C4();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D98B7D78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489B8, &qword_1D99324E0);
  result = sub_1D992BD14();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_1D992BBC4();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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
    *v2 = v6;
  }

  return result;
}

void sub_1D98B7F88()
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_17_5(v4, v5, v6);
  v7 = sub_1D992BD14();
  if (*(v1 + 16))
  {
    v26 = v0;
    v8 = 0;
    v9 = *(v1 + 56);
    v10 = *(v1 + 32);
    OUTLINED_FUNCTION_5_12();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_44_0();
LABEL_9:
        v15 = *(*(v1 + 48) + 4 * (v11 | (v8 << 6)));
        v16 = *(v7 + 40);
        sub_1D992C074();
        sub_1D992C0A4();
        v17 = sub_1D992C0C4();
        OUTLINED_FUNCTION_14_6(v17);
        if (v18)
        {
          break;
        }

        OUTLINED_FUNCTION_42_0();
LABEL_18:
        OUTLINED_FUNCTION_13_5(v19);
        *(v25 + 4 * v24) = v15;
        ++*(v7 + 16);
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_41();
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        if (*(v2 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_40_1();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v8;
      while (1)
      {
        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v8 >= v3)
        {

          v0 = v26;
          goto LABEL_22;
        }

        ++v12;
        if (*(v1 + 56 + 8 * v8))
        {
          OUTLINED_FUNCTION_9_1();
          v0 = (v14 & v13);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v0 = v7;
    OUTLINED_FUNCTION_46_0();
  }
}

uint64_t sub_1D98B80D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489C0, &qword_1D99324E8);
  result = sub_1D992BD14();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v36 = v2;
  v37 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  v38 = result;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      sub_1D98B9718(0, (v35 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v35;
    }

    v2 = v36;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v41 = (v11 - 1) & v11;
LABEL_14:
    v17 = v14 | (v7 << 6);
    v18 = sub_1D992AE84();
    v40 = &v36;
    v19 = *(v18 - 8);
    v20 = v19[8];
    v21 = MEMORY[0x1EEE9AC00](v18);
    v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = v19[9];
    v25 = *(v3 + 48) + v24 * v17;
    v39 = v19[4];
    v39(v23, v25, v18, v21);
    v6 = v38;
    v26 = *(v38 + 40);
    sub_1D9882D14(&qword_1ED8BF060);
    result = sub_1D992B5C4();
    v27 = -1 << *(v6 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = (v39)(*(v6 + 48) + v30 * v24, v23, v18);
    ++*(v6 + 16);
    v11 = v41;
    v3 = v37;
    if (!v41)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v13 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D98B8404(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A00, &qword_1D9932558);
  result = sub_1D992BD14();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1D98B9718(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v34 = *(v17 + 17);
    v21 = *(v6 + 40);
    sub_1D992C074();
    sub_1D992B6D4();
    result = sub_1D992C0C4();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 24 * v25;
    *v30 = v18;
    *(v30 + 8) = v19;
    *(v30 + 16) = v20;
    *(v30 + 17) = v34;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D98B8684(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489A8, &unk_1D99324C0);
  result = sub_1D992BD14();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1D98B9718(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1D992C074();
    sub_1D992B6D4();
    result = sub_1D992C0C4();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D98B88E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489B8, &qword_1D99324E0);
  result = sub_1D992BD14();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1D98B9718(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_1D992BBC4();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1D98B8B04()
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_17_5(v4, v5, v6);
  v7 = sub_1D992BD14();
  if (!*(v1 + 16))
  {
LABEL_24:

    *v0 = v7;
    OUTLINED_FUNCTION_46_0();
    return;
  }

  v29 = v0;
  v8 = 0;
  v10 = (v1 + 56);
  v9 = *(v1 + 56);
  v11 = *(v1 + 32);
  OUTLINED_FUNCTION_5_12();
  if (!v0)
  {
LABEL_4:
    v13 = v8;
    while (1)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v8 >= v3)
      {
        break;
      }

      ++v13;
      if (v10[v8])
      {
        OUTLINED_FUNCTION_9_1();
        v0 = (v15 & v14);
        goto LABEL_9;
      }
    }

    v27 = 1 << *(v1 + 32);
    if (v27 >= 64)
    {
      sub_1D98B9718(0, (v27 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_26_5();
      *v10 = v28;
    }

    v0 = v29;
    *(v1 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_0();
LABEL_9:
    v16 = *(*(v1 + 48) + 4 * (v12 | (v8 << 6)));
    v17 = *(v7 + 40);
    sub_1D992C074();
    sub_1D992C0A4();
    v18 = sub_1D992C0C4();
    OUTLINED_FUNCTION_14_6(v18);
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_42_0();
LABEL_18:
    OUTLINED_FUNCTION_13_5(v20);
    *(v26 + 4 * v25) = v16;
    ++*(v7 + 16);
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (++v21 != v23 || (v22 & 1) == 0)
  {
    v24 = v21 == v23;
    if (v21 == v23)
    {
      v21 = 0;
    }

    v22 |= v24;
    if (*(v2 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_40_1();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1D98B8C80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489B8, &qword_1D99324E0);
    v2 = sub_1D992BD24();
    v16 = v2;
    sub_1D992BC84();
    while (1)
    {
      if (!sub_1D992BCB4())
      {

        return v2;
      }

      sub_1D992B1A4();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1D98B88E0(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_1D992BBC4();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}