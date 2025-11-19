uint64_t sub_1DD3046F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD334890();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-v12];
  v14 = sub_1DD335CB0();
  v15 = sub_1DD336940();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DD27A000, v14, v15, "Calling selfLogResolveFailed.", v16, 2u);
    MEMORY[0x1E12ADA30](v16, -1, -1);
  }

  v17 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
  swift_beginAccess();
  v18 = v7[2];
  v18(v13, a1 + v17, v6);
  v19 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
  swift_beginAccess();
  v18(v11, a1 + v19, v6);

  v20 = v7[1];
  v20(v11, v6);
  return (v20)(v13, v6);
}

uint64_t sub_1DD304B44()
{
  OUTLINED_FUNCTION_4();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = sub_1DD335D10();
  v1[33] = v4;
  OUTLINED_FUNCTION_69_0(v4);
  v1[34] = v5;
  v7 = *(v6 + 64);
  v1[35] = OUTLINED_FUNCTION_71();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6858, "Ta");
  OUTLINED_FUNCTION_36(v8);
  v10 = *(v9 + 64);
  v1[36] = OUTLINED_FUNCTION_71();
  v11 = sub_1DD334890();
  v1[37] = v11;
  OUTLINED_FUNCTION_69_0(v11);
  v1[38] = v12;
  v1[39] = *(v13 + 64);
  v1[40] = OUTLINED_FUNCTION_125_1();
  v1[41] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v14);
  v16 = *(v15 + 64);
  v1[42] = OUTLINED_FUNCTION_71();
  v17 = sub_1DD335D60();
  v1[43] = v17;
  OUTLINED_FUNCTION_69_0(v17);
  v1[44] = v18;
  v20 = *(v19 + 64);
  v1[45] = OUTLINED_FUNCTION_125_1();
  v1[46] = swift_task_alloc();
  v21 = sub_1DD334830();
  v1[47] = v21;
  OUTLINED_FUNCTION_69_0(v21);
  v1[48] = v22;
  v24 = *(v23 + 64);
  v1[49] = OUTLINED_FUNCTION_125_1();
  v1[50] = swift_task_alloc();
  v25 = sub_1DD335CA0();
  v1[51] = v25;
  OUTLINED_FUNCTION_69_0(v25);
  v1[52] = v26;
  v28 = *(v27 + 64);
  v1[53] = OUTLINED_FUNCTION_125_1();
  v1[54] = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1DD304DAC()
{
  OUTLINED_FUNCTION_64_4();
  if (v0[31])
  {
    v1 = v0[31];
  }

  else
  {
    v1 = *(v0[32] + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_pullers);
  }

  v0[55] = v1;
  v2 = qword_1EE027808;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = v0[54];
  v4 = v0[50];
  v5 = v0[32];
  v6 = qword_1EE02A210;
  sub_1DD335C90();
  sub_1DD336A40();
  v7 = qword_1EE02A210;
  sub_1DD335C80();

  sub_1DD334820();
  v8 = swift_task_alloc();
  v0[56] = v8;
  *(v8 + 16) = v1;
  *(v8 + 24) = v5;
  v9 = *(MEMORY[0x1E69E87D8] + 4);
  v10 = swift_task_alloc();
  v0[57] = v10;
  *v10 = v0;
  v10[1] = sub_1DD304F64;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1DD304F64()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v2 = v1[57];
  v3 = v1[56];
  v4 = v1[55];
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD305080()
{
  v132 = v0;
  sub_1DD336A30();
  if (qword_1EE027DB0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v1 = v0[54];
    v2 = qword_1EE02A268;
    sub_1DD335C80();

    if (qword_1EE0277F0 != -1)
    {
      swift_once();
    }

    v3 = v0[53];
    v4 = v0[49];
    v5 = v0[32];
    v6 = qword_1EE02A208;
    sub_1DD335C90();
    sub_1DD336A40();
    v7 = qword_1EE02A208;
    OUTLINED_FUNCTION_113_1();
    sub_1DD335C80();

    sub_1DD334820();
    v8 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage;
    sub_1DD28191C(v5 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, (v0 + 2));
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
    OUTLINED_FUNCTION_61_4(v10);
    v12 = v11(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v110 = v8;
    v112 = v5;
    v13 = MEMORY[0x1E69E7CC0];
    v130 = MEMORY[0x1E69E7CC0];
    v127 = sub_1DD287354(v12);
    if (!v127)
    {
      break;
    }

    v14 = 0;
    v116 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_ranker;
    v118 = v0[32];
    v124 = v12 & 0xC000000000000001;
    v106 = v12 & 0xFFFFFFFFFFFFFF8;
    v107 = (v0[44] + 8);
    v108 = (v0[48] + 16);
    v121 = v12;
    while (1)
    {
      if (v124)
      {
        v15 = MEMORY[0x1E12ACA60](v14, v12);
      }

      else
      {
        if (v14 >= *(v106 + 16))
        {
          goto LABEL_42;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = v0[49];
      sub_1DD28191C(v118 + v116, (v0 + 7));
      v19 = v0[10];
      v20 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v19);
      v21 = (*(v20 + 8))(v16, v18, v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v22 = v16;
      v23 = sub_1DD335CB0();
      v24 = sub_1DD336940();

      v129 = v13;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_50_2();
        v131[0] = OUTLINED_FUNCTION_49_1();
        *v25 = 136315394;
        v26 = sub_1DD336010();
        sub_1DD27DBF0(v26, v27, v131);
        OUTLINED_FUNCTION_126();

        *(v25 + 4) = v118;
        *(v25 + 12) = 2080;
        v28 = sub_1DD3368F0();
        sub_1DD27DBF0(v28, v29, v131);
        OUTLINED_FUNCTION_126();

        *(v25 + 14) = v118;
        _os_log_impl(&dword_1DD27A000, v23, v24, "Entity %s is assigned new saliency score %s", v25, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_17_5();
        v13 = v129;
        OUTLINED_FUNCTION_54();
      }

      if (v21 >= 0.0025)
      {
        v37 = v0[49];
        v38 = v0[47];
        v39 = v0[42];
        sub_1DD336060();
        v40 = *v108;
        v41 = OUTLINED_FUNCTION_87_2();
        v42(v41);
        OUTLINED_FUNCTION_66_0();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v38);
        sub_1DD335FA0();
        v46 = v22;
        MEMORY[0x1E12AC640]();
        v47 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v47 >> 1)
        {
          OUTLINED_FUNCTION_45(v47);
          sub_1DD336830();
        }

        v48 = v0[49];
        v49 = v0[45];
        sub_1DD336860();
        sub_1DD28191C(v112 + v110, (v0 + 12));
        v50 = v0[15];
        v51 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v50);
        sub_1DD336020();
        (*(v51 + 32))(v49, v48, v50, v51, v21);
        (*v107)(v0[45], v0[43]);

        __swift_destroy_boxed_opaque_existential_1(v0 + 12);
        v13 = v129;
      }

      else
      {
        v30 = v0[46];
        sub_1DD336020();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = *(v13 + 16);
          sub_1DD2BBDD0();
          v13 = v53;
        }

        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          OUTLINED_FUNCTION_45(v31);
          sub_1DD2BBDD0();
          v13 = v54;
        }

        v33 = v0[46];
        v34 = v0[43];

        *(v13 + 16) = v32 + 1;
        OUTLINED_FUNCTION_16_7();
        (*(v36 + 32))(v13 + v35 + *(v36 + 72) * v32, v33, v34);
      }

      v12 = v121;
      ++v14;
      if (v17 == v127)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    OUTLINED_FUNCTION_12_8();
  }

LABEL_23:

  sub_1DD28191C(v112 + v110, (v0 + 17));
  v55 = v0[20];
  v56 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v55);
  (*(v56 + 56))(v13, 0, v55, v56);
  v57 = v0[30];
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  sub_1DD307A70();
  v128 = v58;

  if (qword_1EE029490 != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  sub_1DD28191C(&unk_1EE02A6F0, (v0 + 22));
  v59 = v0[25];
  v60 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v59);
  OUTLINED_FUNCTION_61_4(v60);
  v62 = v61(v59, v60);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  if ((v62 & 1) == 0)
  {
    goto LABEL_29;
  }

  v63 = mach_absolute_time();
  v64 = sub_1DD287354(v128);
  if ((v64 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v122 = v64;
  v125 = v63;
  if (!HIDWORD(v64))
  {
    v65 = v0[40];
    v66 = v0[41];
    v67 = v0[38];
    v119 = v0[39];
    v69 = v0[36];
    v68 = v0[37];
    v70 = v0[32];
    v71 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
    OUTLINED_FUNCTION_106();
    swift_beginAccess();
    v72 = *(v67 + 16);
    v72(v66, v70 + v71, v68);
    sub_1DD3368C0();
    sub_1DD3368E0();
    OUTLINED_FUNCTION_66_0();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    v72(v65, v66, v68);
    v77 = (*(v67 + 80) + 44) & ~*(v67 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = 0;
    *(v78 + 24) = 0;
    *(v78 + 32) = v70;
    *(v78 + 40) = v122;
    (*(v67 + 32))(v78 + v77, v65, v68);
    *(v78 + ((v119 + v77 + 7) & 0xFFFFFFFFFFFFFFF8)) = v125;
    sub_1DD335860();
    sub_1DD2BDAC0(0, 0, v69, &unk_1DD33AC58, v78);

    (*(v67 + 8))(v66, v68);
LABEL_29:
    v79 = sub_1DD287354(v128);
    v80 = MEMORY[0x1E69E7CC0];
    if (!v79)
    {
      goto LABEL_38;
    }

    v81 = v79;
    v131[0] = MEMORY[0x1E69E7CC0];
    sub_1DD2D7A78();
    if ((v81 & 0x8000000000000000) == 0)
    {
      v82 = 0;
      v83 = v0[34];
      v80 = v131[0];
      do
      {
        if ((v128 & 0xC000000000000001) != 0)
        {
          v84 = MEMORY[0x1E12ACA60](v82, v128);
        }

        else
        {
          v84 = *(v128 + 8 * v82 + 32);
        }

        v85 = v84;
        v86 = v0[35];
        sub_1DD335F60();

        v131[0] = v80;
        v88 = *(v80 + 16);
        v87 = *(v80 + 24);
        if (v88 >= v87 >> 1)
        {
          OUTLINED_FUNCTION_45(v87);
          sub_1DD2D7A78();
          v80 = v131[0];
        }

        v89 = v0[35];
        v90 = v0[33];
        ++v82;
        *(v80 + 16) = v88 + 1;
        v91 = *(v83 + 80);
        OUTLINED_FUNCTION_22_8();
        (*(v83 + 32))(v80 + v92 + *(v83 + 72) * v88);
      }

      while (v81 != v82);
LABEL_38:
      v131[0] = v80;

      sub_1DD30945C(v131);
      v93 = v0[53];
      v95 = v0[51];
      v94 = v0[52];
      v96 = v0[49];
      v109 = v0[50];
      v111 = v0[54];
      v97 = v0[47];
      v98 = v0[48];
      v113 = v0[46];
      v114 = v0[45];
      v115 = v0[42];
      v117 = v0[41];
      v120 = v0[40];
      v123 = v0[36];
      v126 = v0[35];

      v99 = *(v98 + 8);
      v99(v96, v97);

      sub_1DD336A30();
      v100 = qword_1EE02A208;
      sub_1DD335C80();

      v101 = *(v94 + 8);
      v101(v93, v95);
      v102 = OUTLINED_FUNCTION_108_1();
      (v99)(v102);
      v103 = OUTLINED_FUNCTION_51_6();
      (v101)(v103);

      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_99_2();

      __asm { BRAA            X2, X16 }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_1DD305D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[14] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6858, "Ta") - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD305E00, 0, 0);
}

uint64_t sub_1DD305E00()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = **(v0 + 112);
    v3 = v1 + 32;
    v4 = sub_1DD3368E0();
    v26 = v4;
    do
    {
      v28 = v2;
      v5 = *(v0 + 136);
      v6 = *(v0 + 128);
      __swift_storeEnumTagSinglePayload(*(v0 + 144), 1, 1, v4);
      sub_1DD28191C(v3, v0 + 16);
      v7 = swift_allocObject();
      v7[2] = 0;
      v8 = v7 + 2;
      v7[3] = 0;
      sub_1DD289CE4((v0 + 16), (v7 + 4));
      v7[9] = v6;
      v9 = OUTLINED_FUNCTION_41();
      sub_1DD27F164(v9, v10, &qword_1ECCD6858, "Ta");
      LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v4);
      sub_1DD335860();
      v11 = *(v0 + 136);
      if (v5 == 1)
      {
        v12 = OUTLINED_FUNCTION_51_6();
        sub_1DD296084(v12, v13, "Ta");
      }

      else
      {
        sub_1DD3368D0();
        (*(*(v4 - 8) + 8))(v11, v4);
      }

      if (*v8)
      {
        v14 = v7[3];
        v15 = *v8;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = sub_1DD336890();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = &unk_1DD33AC80;
      *(v19 + 24) = v7;
      sub_1DD335860();
      if (v18 | v16)
      {
        v20 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v16;
        *(v0 + 80) = v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v0 + 144);
      *(v0 + 88) = 1;
      *(v0 + 96) = v20;
      *(v0 + 104) = v27;
      swift_task_create();

      sub_1DD296084(v21, &qword_1ECCD6858, "Ta");
      v3 += 40;
      v2 = v28 - 1;
      v4 = v26;
    }

    while (v28 != 1);
  }

  v23 = *(v0 + 136);
  v22 = *(v0 + 144);

  OUTLINED_FUNCTION_3_5();

  return v24();
}

uint64_t sub_1DD3060E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v6 = sub_1DD334830();
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v8 = *(v7 + 64) + 15;
  v5[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD3061A0, 0, 0);
}

uint64_t sub_1DD3061A0()
{
  OUTLINED_FUNCTION_64_4();
  v1 = v0[33];
  v2 = v0[29];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1DD334820();
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_1DD286CD0;
  v8 = v0[33];

  return v10(v8, v3, v4);
}

uint64_t sub_1DD3062E0()
{
  v23 = v0;
  v1 = v0;
  v2 = *(v0 + 288);
  v3 = *(v0 + 240);
  sub_1DD28191C(*(v0 + 232), v0 + 16);
  v4 = v2;
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336950();

  if (os_log_type_enabled(v5, v6))
  {
    v21 = *(v0 + 288);
    v7 = OUTLINED_FUNCTION_50_2();
    v22 = OUTLINED_FUNCTION_49_1();
    *v7 = 136315394;
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 184) = swift_getDynamicType();
    *(v0 + 192) = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F18, &unk_1DD33AC90);
    v8 = sub_1DD336630();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v11 = sub_1DD27DBF0(v8, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = sub_1DD336E40();
    v17 = sub_1DD27DBF0(v15, v16, &v22);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_1DD27A000, v5, v6, "Failed to pull entities from %s error: %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_17_5();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v18 = *(v1 + 264);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_1DD306508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 88) = a5;
  *(v7 + 40) = a4;
  v8 = sub_1DD334890();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD3065D0, 0, 0);
}

uint64_t sub_1DD3065D0()
{
  v1 = *(v0 + 40) + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;
  v2 = sub_1DD335CB0();
  v3 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v5[1] = v4;
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v6, v7, v8, v9, v10, 8u);
    OUTLINED_FUNCTION_28_1();
  }

  v12 = *(v0 + 72);
  v11 = *(v0 + 80);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);
  v15 = *(v0 + 88);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);

  v18 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  OUTLINED_FUNCTION_97_2();
  v19(v11, v17 + v18, v13);

  (*(v12 + 8))(v11, v13);

  OUTLINED_FUNCTION_3_5();

  return v20();
}

uint64_t sub_1DD306728()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_81();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_0();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_71_6();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD306834()
{
  OUTLINED_FUNCTION_64_4();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1DD336A30();
  v4 = qword_1EE02A1E0;
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_75_5();
  sub_1DD335C80();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_47_0();
  v6 = v0[9];

  return v5(v6);
}

uint64_t sub_1DD3068FC()
{
  OUTLINED_FUNCTION_64_4();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1DD336A30();
  v4 = qword_1EE02A1E0;
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_75_5();
  sub_1DD335C80();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3_5();
  v6 = v0[8];

  return v5();
}

uint64_t sub_1DD3069DC()
{
  OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for RRContextKitPuller();
  OUTLINED_FUNCTION_59(v1);
  swift_allocObject();
  *(v0 + 16) = RRContextKitPuller.init()();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DD306A84;

  return sub_1DD2B1A90();
}

uint64_t sub_1DD306A84()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_81();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_0();
  *v10 = v9;
  *(v5 + 32) = v0;

  if (!v0)
  {
    *(v5 + 40) = v3;
  }

  OUTLINED_FUNCTION_71_6();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD306B90()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_47_0();
  v3 = *(v0 + 40);

  return v2(v3);
}

uint64_t sub_1DD306BF0()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_3_5();
  v3 = *(v0 + 32);

  return v2();
}

void sub_1DD306C4C()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD335D10();
  v95 = OUTLINED_FUNCTION_1_0(v4);
  v96 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v11 = sub_1DD3363A0();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v92 = v13;
  v93 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v18 = (v17 - v16);
  v19 = sub_1DD336420();
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v90 = v21;
  v91 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v87 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_32_1();
  v88 = v26;
  OUTLINED_FUNCTION_31_1();
  v27 = sub_1DD3363C0();
  v28 = OUTLINED_FUNCTION_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_3_2();
  v86[1] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  v33 = OUTLINED_FUNCTION_69_0(v32);
  v86[0] = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v38 = v86 - v37;
  v94 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;
  v39 = sub_1DD335CB0();
  v40 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v40))
  {
    v41 = OUTLINED_FUNCTION_69();
    *v41 = 0;
    _os_log_impl(&dword_1DD27A000, v39, v40, "starting retrieveSalientEntities", v41, 2u);
    OUTLINED_FUNCTION_54();
  }

  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E7CC0];
  *(v42 + 16) = MEMORY[0x1E69E7CC0];
  v89 = (v42 + 16);
  sub_1DD27F164(v3, v38, &qword_1ECCD6348, &unk_1DD338E20);
  v44 = (*(v86[0] + 80) + 32) & ~*(v86[0] + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  *(v45 + 24) = v1;
  sub_1DD281C60(v38, v45 + v44);
  v98[4] = sub_1DD30AB28;
  v98[5] = v45;
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 1107296256;
  v98[2] = sub_1DD2811BC;
  v98[3] = &block_descriptor_37;
  _Block_copy(v98);
  v97 = v43;
  OUTLINED_FUNCTION_1_8();
  sub_1DD30B5E4(v46, v47);
  v86[0] = v42;
  sub_1DD335860();
  sub_1DD335860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6710, &qword_1DD339620);
  sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
  sub_1DD336B10();
  v48 = sub_1DD336460();
  OUTLINED_FUNCTION_59(v48);
  swift_allocObject();
  OUTLINED_FUNCTION_32_0();
  v49 = sub_1DD336440();

  if (qword_1EE027E78 != -1)
  {
    OUTLINED_FUNCTION_36_7();
  }

  sub_1DD336A00();
  v50 = v87;
  sub_1DD336410();
  *v18 = 150;
  v51 = v92;
  (*(v92 + 104))(v18, *MEMORY[0x1E69E7F38], v93);
  MEMORY[0x1E12AC2C0](v50, v18);
  v52 = *(v51 + 8);
  v53 = OUTLINED_FUNCTION_87_2();
  v54(v53);
  v55 = *(v90 + 8);
  v55(v50, v91);
  sub_1DD336430();
  v56 = OUTLINED_FUNCTION_109_1();
  (v55)(v56);
  v57 = sub_1DD3363B0();
  v58 = v89;
  if (v57)
  {
    v59 = sub_1DD335CB0();
    v60 = sub_1DD336950();
    if (OUTLINED_FUNCTION_17_0(v60))
    {
      *OUTLINED_FUNCTION_69() = 0;
      OUTLINED_FUNCTION_30_4();
      _os_log_impl(v61, v62, v63, v64, v65, 2u);
      OUTLINED_FUNCTION_15_9();
    }
  }

  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  v66 = *v58;
  if (!sub_1DD287354())
  {
    goto LABEL_22;
  }

  v67 = sub_1DD335CB0();
  v68 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v68))
  {
    *OUTLINED_FUNCTION_69() = 0;
    OUTLINED_FUNCTION_30_4();
    _os_log_impl(v69, v70, v71, v72, v73, 2u);
    OUTLINED_FUNCTION_15_9();
  }

  v74 = *v58;
  v75 = sub_1DD287354();
  if (!v75)
  {
LABEL_22:

LABEL_23:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v76 = v75;
  v97 = MEMORY[0x1E69E7CC0];

  sub_1DD2D7A78();
  if ((v76 & 0x8000000000000000) == 0)
  {
    v94 = v49;
    v77 = 0;
    v78 = v97;
    do
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v79 = MEMORY[0x1E12ACA60](v77, v74);
      }

      else
      {
        v79 = *(v74 + 8 * v77 + 32);
      }

      v80 = v79;
      sub_1DD335F60();

      v97 = v78;
      v81 = v10;
      v83 = *(v78 + 16);
      v82 = *(v78 + 24);
      if (v83 >= v82 >> 1)
      {
        OUTLINED_FUNCTION_45(v82);
        sub_1DD2D7A78();
        v78 = v97;
      }

      ++v77;
      *(v78 + 16) = v83 + 1;
      OUTLINED_FUNCTION_16_7();
      (*(v85 + 32))(v78 + v84 + *(v85 + 72) * v83, v81);
      v10 = v81;
    }

    while (v76 != v77);

    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_1DD30735C(uint64_t a1)
{
  sub_1DD307680();
  sub_1DD307A70();
  v3 = v2;

  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
}

uint64_t sub_1DD30751C()
{
  v2 = v0;
  v3 = sub_1DD3345D0();
  OUTLINED_FUNCTION_59(v3);
  v4 = swift_allocObject();
  sub_1DD3345C0();
  sub_1DD28191C(v2 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  OUTLINED_FUNCTION_61_4(v6);
  v8 = v7(v5, v6);
  if (v1)
  {
  }

  else
  {
    v13 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
    sub_1DD30B54C(&qword_1ECCD6F38, &qword_1ECCD6F40);
    v4 = sub_1DD3345B0();
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v4;
}

uint64_t sub_1DD307680()
{
  v1 = sub_1DD30771C();
  if (v1)
  {
    return v1;
  }

  sub_1DD28191C(v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  OUTLINED_FUNCTION_61_4(v4);
  v2 = v5(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v2;
}

uint64_t sub_1DD30771C()
{
  sub_1DD335750();
  if (sub_1DD335730() && (type metadata accessor for ScopedReferenceResolutionDataProvider(), sub_1DD30B5E4(&qword_1EE0279F0, type metadata accessor for ScopedReferenceResolutionDataProvider), sub_1DD335760(), , sub_1DD2A84C8(), v1 = v0, , v1 >> 60 != 15))
  {
    v7 = sub_1DD3345A0();
    OUTLINED_FUNCTION_59(v7);
    swift_allocObject();
    sub_1DD334590();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
    sub_1DD30B54C(&qword_1ECCD6F00, &qword_1ECCD6F08);
    OUTLINED_FUNCTION_8_7();
    sub_1DD334580();

    v6 = v19;

    v8 = sub_1DD335CB0();
    v9 = sub_1DD336940();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      v10 = OUTLINED_FUNCTION_50();
      *v10 = 134217984;
      *(v10 + 4) = sub_1DD287354();

      OUTLINED_FUNCTION_30_4();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      OUTLINED_FUNCTION_15_9();
    }

    else
    {
    }

    v16 = OUTLINED_FUNCTION_112();
    sub_1DD28B488(v16, v17);
  }

  else
  {
    v2 = sub_1DD335CB0();
    sub_1DD336940();
    OUTLINED_FUNCTION_90_3();
    if (os_log_type_enabled(v2, v3))
    {
      *OUTLINED_FUNCTION_69() = 0;
      OUTLINED_FUNCTION_3(&dword_1DD27A000, v4, v5, "No reference resolution data found in Siri Environment");
      OUTLINED_FUNCTION_28_1();
    }

    return 0;
  }

  return v6;
}

void sub_1DD307A70()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  sub_1DD27F164(v1, &v27 - v8, &qword_1ECCD6348, &unk_1DD338E20);
  sub_1DD336240();
  v10 = OUTLINED_FUNCTION_12_7();
  if (__swift_getEnumTagSinglePayload(v10, 1, &unk_1DD338E20) == 1)
  {
    sub_1DD296084(v9, &qword_1ECCD6348, &unk_1DD338E20);
    goto LABEL_22;
  }

  v11 = sub_1DD336230();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_41();
  v15(v14);
  if (!v13)
  {
LABEL_22:

LABEL_24:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v16 = sub_1DD287354(v3);
  for (i = 0; ; ++i)
  {
    if (v16 == i)
    {

      goto LABEL_24;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v26 = OUTLINED_FUNCTION_87_2();
      v18 = MEMORY[0x1E12ACA60](v26);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v18 = *(v3 + 8 * i + 32);
    }

    v19 = v18;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v20 = sub_1DD336070();
    if (!v21)
    {
      goto LABEL_16;
    }

    if (v20 == v11 && v21 == v13)
    {

      goto LABEL_19;
    }

    v23 = sub_1DD336E00();

    if ((v23 & 1) == 0)
    {
LABEL_16:
      sub_1DD336070();
      if (v24)
      {

        continue;
      }
    }

LABEL_19:
    sub_1DD336C50();
    v25 = *(v28 + 16);
    sub_1DD336C70();
    sub_1DD336C80();
    sub_1DD336C60();
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1DD307CA0()
{
  OUTLINED_FUNCTION_23_0();
  v4 = v0;
  v37 = v5;
  v36 = sub_1DD335D60();
  v6 = OUTLINED_FUNCTION_1_0(v36);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  if (qword_1EE029490 != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  sub_1DD28191C(&unk_1EE02A6F0, v38);
  v11 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v12 = *(v11 + 24);
  v13 = OUTLINED_FUNCTION_45_5();
  v15 = v14(v13, v11);
  __swift_destroy_boxed_opaque_existential_1(v38);
  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

  v16 = sub_1DD287354();
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
LABEL_14:

    v25 = sub_1DD335CB0();
    v26 = sub_1DD336940();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_50();
      v28 = OUTLINED_FUNCTION_31_0();
      v38[0] = v28;
      *v27 = 136315138;
      v29 = MEMORY[0x1E12AC670](v17, v36);
      v31 = sub_1DD27DBF0(v29, v30, v38);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1DD27A000, v25, v26, "Adding annotated entities for Curare: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_19_4();
    }

    sub_1DD28191C(v4 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v38);
    v32 = v39;
    v33 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    OUTLINED_FUNCTION_62_3();
    (*(v34 + 24))(v37, v32, v33);

    __swift_destroy_boxed_opaque_existential_1(v38);
LABEL_17:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  OUTLINED_FUNCTION_79_3();
  if ((v11 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_58_5();
    do
    {
      if (v1)
      {
        MEMORY[0x1E12ACA60](v2, v37);
      }

      else
      {
        v18 = *(v37 + 8 * v2 + 32);
      }

      OUTLINED_FUNCTION_62_3();
      sub_1DD336020();

      OUTLINED_FUNCTION_104_1();
      if (v20)
      {
        OUTLINED_FUNCTION_45(v19);
        v15 = v38;
        sub_1DD2D7AB8();
        v17 = v38[0];
      }

      ++v2;
      *(v17 + 16) = v3;
      v21 = *(v8 + 80);
      OUTLINED_FUNCTION_22_8();
      v23 = OUTLINED_FUNCTION_60_5(v22);
      v24(v23);
    }

    while (v11 != v2);
    v4 = v35;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1DD308040()
{
  OUTLINED_FUNCTION_23_0();
  v4 = v0;
  v37 = v5;
  v36 = sub_1DD335D60();
  v6 = OUTLINED_FUNCTION_1_0(v36);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  if (qword_1EE029490 != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  sub_1DD28191C(&unk_1EE02A6F0, v38);
  v11 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v12 = *(v11 + 24);
  v13 = OUTLINED_FUNCTION_45_5();
  v15 = v14(v13, v11);
  __swift_destroy_boxed_opaque_existential_1(v38);
  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

  v16 = sub_1DD287354();
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
LABEL_14:

    v25 = sub_1DD335CB0();
    v26 = sub_1DD336940();

    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_50();
      v27 = OUTLINED_FUNCTION_49_5();
      v38[0] = v27;
      OUTLINED_FUNCTION_102_1(4.8149e-34);
      v30 = sub_1DD27DBF0(v28, v29, v38);

      *(v8 + 4) = v30;
      OUTLINED_FUNCTION_31_7(&dword_1DD27A000, v31, v26, "Removing annotated entities for Curare: %s");
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_19_4();
      OUTLINED_FUNCTION_15_9();
    }

    sub_1DD28191C(v4 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v38);
    v32 = v39;
    v33 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    OUTLINED_FUNCTION_62_3();
    (*(v34 + 56))(v17, 0, v32, v33);

    __swift_destroy_boxed_opaque_existential_1(v38);
LABEL_17:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  OUTLINED_FUNCTION_79_3();
  if ((v11 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_58_5();
    do
    {
      if (v1)
      {
        MEMORY[0x1E12ACA60](v2, v37);
      }

      else
      {
        v18 = *(v37 + 8 * v2 + 32);
      }

      OUTLINED_FUNCTION_62_3();
      sub_1DD336020();

      OUTLINED_FUNCTION_104_1();
      if (v20)
      {
        OUTLINED_FUNCTION_45(v19);
        v15 = v38;
        sub_1DD2D7AB8();
        v17 = v38[0];
      }

      ++v2;
      *(v17 + 16) = v3;
      v21 = *(v8 + 80);
      OUTLINED_FUNCTION_22_8();
      v23 = OUTLINED_FUNCTION_60_5(v22);
      v24(v23);
    }

    while (v11 != v2);
    v4 = v35;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1DD3083C4()
{
  v1 = v0;
  if (qword_1EE029490 != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  sub_1DD28191C(&unk_1EE02A6F0, v12);
  v2 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v3 = *(v2 + 24);
  v4 = OUTLINED_FUNCTION_8_7();
  v6 = v5(v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if ((v6 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD28191C(v1 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v12);
  v7 = v13;
  v8 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  OUTLINED_FUNCTION_61_4(v8);
  v10 = v9(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

void sub_1DD30852C(double a1)
{
  sub_1DD27D80C(0, &qword_1EE027510, 0x1E695DFF0);
  OUTLINED_FUNCTION_126();
  sub_1DD335860();
  v3 = sub_1DD3086C0(1, sub_1DD30B0A4, v1, a1);
  [v3 setTolerance_];
  v4 = [objc_opt_self() mainRunLoop];
  [v4 addTimer:v3 forMode:*MEMORY[0x1E695DA28]];
}

void sub_1DD308618()
{
  v0 = sub_1DD335CB0();
  v1 = sub_1DD336940();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DD27A000, v0, v1, "Timer fired!", v2, 2u);
    MEMORY[0x1E12ADA30](v2, -1, -1);
  }

  sub_1DD308790();
}

id sub_1DD3086C0(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD29AA08;
  v9[3] = &block_descriptor_54_0;
  v6 = _Block_copy(v9);
  v7 = [swift_getObjCClassFromMetadata() timerWithTimeInterval:a1 & 1 repeats:v6 block:a4];
  _Block_release(v6);

  return v7;
}

void sub_1DD308790()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_1DD335D60();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_2();
  v57 = v7;
  OUTLINED_FUNCTION_31_1();
  v58 = sub_1DD334830();
  v8 = OUTLINED_FUNCTION_1_0(v58);
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  v15 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage;
  sub_1DD28191C(v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v61);
  v16 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  OUTLINED_FUNCTION_61_4(v16);
  v17 = OUTLINED_FUNCTION_94_2();
  v19 = v18(v17);
  v60 = v1;
  v54 = v15;
  __swift_destroy_boxed_opaque_existential_1(v61);
  v55 = v0;
  sub_1DD28191C(v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_ranker, v61);
  v20 = v62;
  v21 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  sub_1DD334820();
  OUTLINED_FUNCTION_97_2();
  v23 = v22(v19, v14, v20, v21);
  (*(v56 + 8))(v14, v58);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v61[0] = MEMORY[0x1E69E7CC0];
  v24 = sub_1DD287354();
  v25 = 0;
  v26 = v57;
  while (v24 != v25)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E12ACA60](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v27 = *(v23 + 8 * v25 + 32);
    }

    v28 = v27;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    sub_1DD336050();
    if (v29 >= 0.0025)
    {
    }

    else
    {
      sub_1DD336C50();
      v30 = *(v61[0] + 16);
      sub_1DD336C70();
      sub_1DD336C80();
      sub_1DD336C60();
    }

    ++v25;
  }

  v31 = v61[0];
  v32 = sub_1DD287354();
  if (v32)
  {
    v33 = v32;
    v61[0] = MEMORY[0x1E69E7CC0];
    sub_1DD2D7AB8();
    v59 = v33;
    if (v33 < 0)
    {
      goto LABEL_29;
    }

    v34 = 0;
    v35 = v61[0];
    v36 = v31 & 0xC000000000000001;
    v37 = v31;
    do
    {
      if (v36)
      {
        v38 = OUTLINED_FUNCTION_112();
        MEMORY[0x1E12ACA60](v38);
      }

      else
      {
        v39 = *(v31 + 8 * v34 + 32);
      }

      OUTLINED_FUNCTION_62_3();
      sub_1DD336020();

      v61[0] = v35;
      v40 = v26;
      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      if (v42 >= v41 >> 1)
      {
        OUTLINED_FUNCTION_45(v41);
        sub_1DD2D7AB8();
        v35 = v61[0];
      }

      ++v34;
      *(v35 + 16) = v42 + 1;
      v43 = *(v4 + 80);
      OUTLINED_FUNCTION_22_8();
      (*(v4 + 32))(v35 + v44 + *(v4 + 72) * v42, v40, v60);
      v26 = v40;
      v31 = v37;
    }

    while (v59 != v34);
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  v45 = v0;
  v46 = sub_1DD335CB0();
  v47 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v47))
  {
    v48 = OUTLINED_FUNCTION_50_2();
    *v48 = 134218240;
    v49 = sub_1DD287354();

    *(v48 + 4) = v49;
    v45 = v55;

    *(v48 + 12) = 2048;
    *(v48 + 14) = *(v35 + 16);

    _os_log_impl(&dword_1DD27A000, v46, v47, "Total %ld entities remaining, about to evict %ld entities", v48, 0x16u);
    OUTLINED_FUNCTION_39_7();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_1DD28191C(v45 + v54, v61);
  v50 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v51 = *(v50 + 56);
  v52 = OUTLINED_FUNCTION_88_3();
  v53(v52);

  __swift_destroy_boxed_opaque_existential_1(v61);
  OUTLINED_FUNCTION_9_0();
}

uint64_t SiriReferenceResolutionService.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
  v5 = sub_1DD334890();
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 8);
  v7(v0 + v4, v5);
  v7(v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_ranker));
  v8 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_pullers);

  return v0;
}

uint64_t SiriReferenceResolutionService.__deallocating_deinit()
{
  SiriReferenceResolutionService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1DD308F74()
{
  OUTLINED_FUNCTION_23_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_6_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_30_2();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_69_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(*(v6(0) - 8) + 80);
  OUTLINED_FUNCTION_22_8();
  if (v10)
  {
    v4(v8 + v26, v15, v22 + v26);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_24_1();
}

void sub_1DD30910C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_0();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_70_4(v8);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6828, &unk_1DD339920);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v4;
      v11[3] = 2 * ((v12 - 32) / 40);
      if (a1)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_69_5();
        sub_1DD2BC1AC(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6830, &qword_1DD33ACA0);
    OUTLINED_FUNCTION_56_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_2();
  if (!v9)
  {
    OUTLINED_FUNCTION_5_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DD3091F0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_0();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_70_4(v7);
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F28, &qword_1DD33ACB8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_82_1(v11);
      if (a1)
      {
LABEL_9:
        v12 = OUTLINED_FUNCTION_69_5();
        sub_1DD2BC1D4(v12, v13, v14);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F30, &unk_1DD33ACC0);
    OUTLINED_FUNCTION_56_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_2();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DD3092BC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_0();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_70_4(v7);
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F20, &unk_1DD33ACA8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_82_1(v11);
      if (a1)
      {
LABEL_9:
        v12 = OUTLINED_FUNCTION_69_5();
        sub_1DD2BC1D4(v12, v13, v14);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65F0, &qword_1DD3392F0);
    OUTLINED_FUNCTION_56_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_2();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DD309388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD336E00() & 1;
  }
}

uint64_t sub_1DD3093CC()
{
  sub_1DD335CE0();
  sub_1DD30B5E4(&qword_1EE0275D8, MEMORY[0x1E69D2800]);
  return sub_1DD336590() & 1;
}

uint64_t sub_1DD30945C(uint64_t *a1)
{
  v2 = *(sub_1DD335D10() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD30A9EC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1DD309504(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1DD309504(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD336DA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DD335D10();
        v6 = sub_1DD336850();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1DD335D10() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD3098CC(v8, v9, a1, v4);
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
    return sub_1DD309634(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD309634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1DD335D10();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v36 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v49 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = *(v15 + 16);
    v48 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v44 = (v15 + 32);
    v45 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v43 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v41 = v20;
      v42 = a3;
      v39 = v22;
      v40 = v21;
      v23 = v21;
      v24 = v20;
      do
      {
        v25 = v49;
        v26 = v47;
        v47(v49, v22, v8);
        v27 = v50;
        v26(v50, v24, v8);
        sub_1DD335CF0();
        v29 = v28;
        sub_1DD335CF0();
        v31 = v30;
        v32 = *v19;
        (*v19)(v27, v8);
        result = v32(v25, v8);
        if (v31 >= v29)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return result;
        }

        v33 = *v44;
        v34 = v46;
        (*v44)(v46, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v33)(v24, v34, v8);
        v24 += v43;
        v22 += v43;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v42 + 1;
      v20 = v41 + v37;
      v21 = v40 - 1;
      v22 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD3098CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a1;
  v6 = sub_1DD335D10();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v134 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v144 = &v129 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v150 = &v129 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v129 - v15;
  v139 = v14;
  v140 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v150 = *v131;
    if (!v150)
    {
      goto LABEL_145;
    }

    a3 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v142;
    if (isUniquelyReferenced_nonNull_native)
    {
      v121 = a3;
LABEL_106:
      a3 = (v121 + 16);
      v122 = *(v121 + 2);
      while (v122 >= 2)
      {
        if (!*v140)
        {
          goto LABEL_142;
        }

        v123 = v121;
        v124 = &v121[16 * v122];
        v125 = *v124;
        v126 = (a3 + 16 * v122);
        v127 = v126[1];
        sub_1DD30A2B4(&(*v140)[*(v139 + 72) * *v124], &(*v140)[*(v139 + 72) * *v126], &(*v140)[*(v139 + 72) * v127], v150);
        if (v17)
        {
          break;
        }

        if (v127 < v125)
        {
          goto LABEL_130;
        }

        if (v122 - 2 >= *a3)
        {
          goto LABEL_131;
        }

        *v124 = v125;
        *(v124 + 1) = v127;
        v128 = *a3 - v122;
        if (*a3 < v122)
        {
          goto LABEL_132;
        }

        v122 = *a3 - 1;
        memmove(v126, v126 + 2, 16 * v128);
        *a3 = v122;
        v121 = v123;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v121 = sub_1DD30A7CC(a3);
    goto LABEL_106;
  }

  v129 = a4;
  v17 = 0;
  v147 = (v14 + 8);
  v148 = v14 + 16;
  v146 = (v14 + 32);
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v17++;
    if (v17 < v16)
    {
      v20 = v19;
      v21 = *(v14 + 72);
      v22 = &(*v140)[v21 * v17];
      v145 = *v140;
      v23 = v145;
      v24 = *(v14 + 16);
      v25 = v149;
      v138 = v18;
      v141 = v16;
      v24(v149, &v145[v21 * v17], v6);
      v26 = &v23[v21 * v19];
      v27 = v150;
      v137 = v24;
      v24(v150, v26, v6);
      sub_1DD335CF0();
      v29 = v28;
      sub_1DD335CF0();
      v31 = v30;
      v32 = *(v139 + 8);
      v33 = v27;
      a3 = v147;
      v32(v33, v6);
      v136 = v32;
      v32(v25, v6);
      v34 = v141;
      v18 = v138;
      v130 = v20;
      v35 = v20 + 2;
      v143 = v21;
      v36 = &v145[v21 * (v20 + 2)];
      while (1)
      {
        v37 = v35;
        v38 = v17 + 1;
        if (v38 >= v34)
        {
          break;
        }

        LODWORD(v145) = v31 < v29;
        v39 = v149;
        v40 = v137;
        (v137)(v149, v36, v6, v18);
        v41 = v38;
        v42 = v150;
        v40(v150, v22, v6);
        sub_1DD335CF0();
        v44 = v43;
        sub_1DD335CF0();
        v46 = v45;
        v47 = v42;
        v17 = v41;
        a3 = v147;
        v48 = v136;
        (v136)(v47, v6);
        v48(v39, v6);
        v34 = v141;
        v18 = v138;
        v36 = &v143[v36];
        v22 += v143;
        v35 = v37 + 1;
        if (((v145 ^ (v46 >= v44)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v17 = v34;
LABEL_9:
      if (v31 >= v29)
      {
        v14 = v139;
      }

      else
      {
        v19 = v130;
        if (v17 < v130)
        {
          goto LABEL_136;
        }

        if (v130 >= v17)
        {
          v14 = v139;
          goto LABEL_32;
        }

        if (v34 >= v37)
        {
          v49 = v37;
        }

        else
        {
          v49 = v34;
        }

        a3 = v143 * (v49 - 1);
        v50 = v130;
        v51 = v143 * v49;
        v52 = v130 * v143;
        v53 = v17;
        do
        {
          if (v50 != --v53)
          {
            v54 = *v140;
            if (!*v140)
            {
              goto LABEL_143;
            }

            v145 = *v146;
            (v145)(v134, &v54[v52], v6, v18);
            v55 = v52 < a3 || &v54[v52] >= &v54[v51];
            if (v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v145)(&v54[a3], v134, v6);
          }

          ++v50;
          a3 -= v143;
          v51 -= v143;
          v52 += v143;
        }

        while (v50 < v53);
        v18 = v138;
        v14 = v139;
      }

      v19 = v130;
    }

LABEL_32:
    v56 = v140[1];
    if (v17 < v56)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_135;
      }

      if (v17 - v19 < v129)
      {
        break;
      }
    }

LABEL_48:
    if (v17 < v19)
    {
      goto LABEL_134;
    }

    v75 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v75;
    }

    else
    {
      sub_1DD2BBCF8(0, *(v75 + 16) + 1, 1, v75);
      v18 = v118;
    }

    a3 = *(v18 + 16);
    v76 = *(v18 + 24);
    v77 = a3 + 1;
    if (a3 >= v76 >> 1)
    {
      sub_1DD2BBCF8(v76 > 1, a3 + 1, 1, v18);
      v18 = v119;
    }

    *(v18 + 16) = v77;
    v78 = v18 + 32;
    v79 = (v18 + 32 + 16 * a3);
    *v79 = v19;
    v79[1] = v17;
    v145 = *v131;
    if (!v145)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      v141 = v17;
      while (1)
      {
        v80 = v77 - 1;
        v81 = (v78 + 16 * (v77 - 1));
        v82 = (v18 + 16 * v77);
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v83 = *(v18 + 32);
          v84 = *(v18 + 40);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_69:
          if (v86)
          {
            goto LABEL_121;
          }

          v98 = *v82;
          v97 = v82[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_124;
          }

          v102 = v81[1];
          v103 = v102 - *v81;
          if (__OFSUB__(v102, *v81))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v100, v103))
          {
            goto LABEL_129;
          }

          if (v100 + v103 >= v85)
          {
            if (v85 < v103)
            {
              v80 = v77 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v77 < 2)
        {
          goto LABEL_123;
        }

        v105 = *v82;
        v104 = v82[1];
        v93 = __OFSUB__(v104, v105);
        v100 = v104 - v105;
        v101 = v93;
LABEL_84:
        if (v101)
        {
          goto LABEL_126;
        }

        v107 = *v81;
        v106 = v81[1];
        v93 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v93)
        {
          goto LABEL_128;
        }

        if (v108 < v100)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v80 - 1 >= v77)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v140)
        {
          goto LABEL_141;
        }

        v17 = v18;
        a3 = v78 + 16 * (v80 - 1);
        v112 = *a3;
        v113 = v80;
        v114 = (v78 + 16 * v80);
        v115 = v114[1];
        v116 = v142;
        sub_1DD30A2B4(&(*v140)[*(v139 + 72) * *a3], &(*v140)[*(v139 + 72) * *v114], &(*v140)[*(v139 + 72) * v115], v145);
        v142 = v116;
        if (v116)
        {
          goto LABEL_114;
        }

        if (v115 < v112)
        {
          goto LABEL_116;
        }

        v117 = *(v17 + 16);
        if (v113 > v117)
        {
          goto LABEL_117;
        }

        *a3 = v112;
        *(a3 + 8) = v115;
        if (v113 >= v117)
        {
          goto LABEL_118;
        }

        v77 = v117 - 1;
        memmove(v114, v114 + 2, 16 * (v117 - 1 - v113));
        v18 = v17;
        *(v17 + 16) = v117 - 1;
        v17 = v141;
        if (v117 <= 2)
        {
          goto LABEL_98;
        }
      }

      v87 = v78 + 16 * v77;
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_119;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_120;
      }

      v94 = v82[1];
      v95 = v94 - *v82;
      if (__OFSUB__(v94, *v82))
      {
        goto LABEL_122;
      }

      v93 = __OFADD__(v85, v95);
      v96 = v85 + v95;
      if (v93)
      {
        goto LABEL_125;
      }

      if (v96 >= v90)
      {
        v110 = *v81;
        v109 = v81[1];
        v93 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v93)
        {
          goto LABEL_133;
        }

        if (v85 < v111)
        {
          v80 = v77 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v14 = v139;
    v16 = v140[1];
    if (v17 >= v16)
    {
      goto LABEL_103;
    }
  }

  v57 = v19 + v129;
  if (__OFADD__(v19, v129))
  {
    goto LABEL_137;
  }

  if (v57 >= v56)
  {
    v57 = v140[1];
  }

  if (v57 < v19)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v17 == v57)
  {
    goto LABEL_48;
  }

  v138 = v18;
  v58 = *v140;
  v59 = *(v14 + 72);
  v145 = *(v14 + 16);
  v60 = &v58[v59 * (v17 - 1)];
  v61 = -v59;
  v130 = v19;
  v62 = (v19 - v17);
  v143 = v58;
  v132 = v59;
  v63 = &v58[v17 * v59];
  v133 = v57;
LABEL_41:
  v141 = v17;
  v135 = v63;
  v136 = v62;
  v137 = v60;
  while (1)
  {
    v64 = v149;
    v65 = v145;
    (v145)(v149, v63, v6);
    v66 = v150;
    v65(v150, v60, v6);
    sub_1DD335CF0();
    v68 = v67;
    sub_1DD335CF0();
    v70 = v69;
    v71 = *v147;
    (*v147)(v66, v6);
    v72 = v64;
    a3 = v6;
    v71(v72, v6);
    if (v70 >= v68)
    {
LABEL_46:
      v17 = v141 + 1;
      v60 = &v137[v132];
      v62 = v136 - 1;
      v63 = &v135[v132];
      if (v141 + 1 == v133)
      {
        v17 = v133;
        v18 = v138;
        v19 = v130;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v143)
    {
      break;
    }

    v73 = *v146;
    v74 = v144;
    (*v146)(v144, v63, v6);
    swift_arrayInitWithTakeFrontToBack();
    v73(v60, v74, v6);
    v60 += v61;
    v63 += v61;
    v55 = __CFADD__(v62++, 1);
    if (v55)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_1DD30A2B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = a4;
  v8 = sub_1DD335D10();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v67 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v66 = v57 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v20 = (a2 - a1) / v16;
  v70 = a1;
  v69 = v61;
  v64 = (v13 + 8);
  v65 = (v13 + 16);
  v21 = v18 / v16;
  v57[1] = v4;
  if (v20 >= v18 / v16)
  {
    v62 = a1;
    sub_1DD2BC07C(a2, v18 / v16, v61);
    v34 = v61;
    v35 = v61 + v21 * v16;
    v36 = -v16;
    v37 = v35;
    v59 = -v16;
LABEL_37:
    v63 = a2 + v36;
    v38 = a3;
    v57[0] = v37;
    v60 = a2;
    while (1)
    {
      if (v35 <= v34)
      {
        v70 = a2;
        v68 = v37;
        goto LABEL_59;
      }

      if (a2 <= v62)
      {
        break;
      }

      v58 = v37;
      v39 = v38 + v36;
      v40 = v35 + v36;
      v41 = v66;
      v42 = *v65;
      v43 = v35;
      (*v65)(v66, v35 + v36, v8);
      v44 = v67;
      v42(v67, v63, v8);
      sub_1DD335CF0();
      v46 = v45;
      sub_1DD335CF0();
      v48 = v47;
      v49 = *v64;
      (*v64)(v44, v8);
      v49(v41, v8);
      if (v48 < v46)
      {
        v53 = v38 < v60 || v39 >= v60;
        a3 = v38 + v36;
        if (v53)
        {
          v54 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a2 = v54;
          v37 = v58;
          v36 = v59;
          v34 = v61;
          v35 = v43;
        }

        else
        {
          v55 = v58;
          v36 = v59;
          v37 = v58;
          v56 = v63;
          v34 = v61;
          v35 = v43;
          a2 = v63;
          if (v38 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
            v35 = v43;
            v34 = v61;
            a2 = v56;
            v37 = v55;
          }
        }

        goto LABEL_37;
      }

      v50 = v38 < v43 || v39 >= v43;
      v51 = v38 + v36;
      v52 = v60;
      if (v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 += v36;
        v35 = v40;
        v37 = v40;
        v34 = v61;
        v36 = v59;
        a2 = v52;
      }

      else
      {
        v37 = v40;
        v17 = v43 == v38;
        v38 += v36;
        v35 = v40;
        v34 = v61;
        v36 = v59;
        a2 = v60;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v61;
          v38 = v51;
          v35 = v40;
          v37 = v40;
        }
      }
    }

    v70 = a2;
    v68 = v57[0];
  }

  else
  {
    v63 = a3;
    sub_1DD2BC07C(a1, (a2 - a1) / v16, v61);
    v22 = v61;
    v62 = v61 + v20 * v16;
    v68 = v62;
    v23 = v67;
    while (v22 < v62 && a2 < v63)
    {
      v25 = v66;
      v26 = *v65;
      (*v65)(v66, a2, v8);
      v26(v23, v22, v8);
      sub_1DD335CF0();
      v28 = v27;
      sub_1DD335CF0();
      v30 = v29;
      v31 = *v64;
      (*v64)(v23, v8);
      v31(v25, v8);
      if (v30 >= v28)
      {
        if (a1 < v22 || a1 >= v22 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v69 = v22 + v16;
        v22 += v16;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      a1 += v16;
      v70 = a1;
    }
  }

LABEL_59:
  sub_1DD30A7E0(&v70, &v69, &v68);
  return 1;
}

uint64_t sub_1DD30A7E0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1DD335D10();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1DD30A8C0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1DD30A8EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6810, &qword_1DD33AC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t objectdestroy_8Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));
  OUTLINED_FUNCTION_83();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

unint64_t sub_1DD30AAD4()
{
  result = qword_1ECCD6EF0;
  if (!qword_1ECCD6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6EF0);
  }

  return result;
}

uint64_t sub_1DD30AB28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_22_8();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_1DD30735C(v4);
}

uint64_t sub_1DD30ABB8()
{
  result = sub_1DD335CD0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DD334890();
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

uint64_t dispatch thunk of SiriReferenceResolutionService.getSalientEntities(filter:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v7 = (*(v3 + 280) + **(v3 + 280));
  v4 = *(*(v3 + 280) + 4);
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1DD2E4430;

  return v7(v2);
}

uint64_t dispatch thunk of SiriReferenceResolutionService.getOnScreenContent()()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v5 = (*(v1 + 288) + **(v1 + 288));
  v2 = *(*(v1 + 288) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DD2DB138;

  return v5();
}

uint64_t sub_1DD30B0AC()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2(v7);
  *v8 = v9;
  v8[1] = sub_1DD2BE86C;

  return sub_1DD305D54(v4, v2, v6, v5);
}

uint64_t sub_1DD30B154(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1DD334890();
  OUTLINED_FUNCTION_69_0(v5);
  v7 = (*(v6 + 80) + 44) & ~*(v6 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DD2BEDE4;

  return sub_1DD306508(a1, v9, v10, v11, v12, v1 + v7, v13);
}

uint64_t sub_1DD30B288()
{
  OUTLINED_FUNCTION_64_4();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[9];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2(v6);
  *v7 = v8;
  v7[1] = sub_1DD2BEDE4;

  return sub_1DD3060E0(v2, v3, v4, (v0 + 4), v5);
}

uint64_t sub_1DD30B33C()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2(v5);
  *v6 = v7;
  v6[1] = sub_1DD2BE86C;

  return sub_1DD28286C(v2, v4);
}

uint64_t sub_1DD30B3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD335CD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RRLNService();
  v13 = &protocol witness table for RRLNService;
  *&v11 = a1;
  v10 = type metadata accessor for RROnScreenAppEntityPuller();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6990, &qword_1DD33A2B8);
  sub_1DD336630();
  sub_1DD335CC0();
  (*(v5 + 32))(a2 + OBJC_IVAR____TtC23SiriReferenceResolution25RROnScreenAppEntityPuller_logger, v8, v4);
  sub_1DD289CE4(&v11, a2 + OBJC_IVAR____TtC23SiriReferenceResolution25RROnScreenAppEntityPuller_lnService);
  return a2;
}

uint64_t sub_1DD30B54C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD62A8, "be");
    sub_1DD30B5E4(a2, MEMORY[0x1E69D28A0]);
    OUTLINED_FUNCTION_41();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD30B5E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_98_2()
{
  v2 = *(v0 - 584);
}

uint64_t OUTLINED_FUNCTION_101_1()
{
  v2 = *(v0 - 128) + *(v0 - 144);

  return sub_1DD335CB0();
}

void OUTLINED_FUNCTION_102_1(float a1)
{
  *v1 = a1;
  v4 = *(v2 - 144);

  JUMPOUT(0x1E12AC670);
}

uint64_t OUTLINED_FUNCTION_120_0()
{
  v2 = *(v0 - 432);
  v3 = *(v0 - 240);

  return sub_1DD335DD0();
}

uint64_t OUTLINED_FUNCTION_124_1(uint64_t a1, unint64_t a2)
{

  return sub_1DD27DBF0(a1, a2, (v2 - 192));
}

uint64_t sub_1DD30B7A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD30D110;

  return RRLNServiceProviding.fetchEntitiesFromActiveApplications(interactionIDs:bundleIDs:)();
}

uint64_t sub_1DD30B844()
{
  OUTLINED_FUNCTION_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6978, &qword_1DD33A2A0);
  sub_1DD336530();
  OUTLINED_FUNCTION_47_0();

  return v0();
}

uint64_t sub_1DD30B8D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_14_9();
}

uint64_t sub_1DD30B8E8()
{
  v1 = v0[19];
  if (v1)
  {
    sub_1DD27D80C(0, &qword_1ECCD6F58, 0x1E696AD98);
    v1 = sub_1DD336800();
  }

  v0[21] = v1;
  if (v0[20])
  {
    v2 = sub_1DD336800();
  }

  else
  {
    v2 = 0;
  }

  v0[22] = v2;
  sub_1DD27D80C(0, &qword_1EE027518, 0x1E69ACD70);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DD30BA84;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F50, &qword_1DD33ACF8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DD30BC70;
  v0[13] = &block_descriptor_8;
  v0[14] = v4;
  [ObjCClassFromMetadata fetchEntitiesFromActiveApplicationsWithInteractionIDs:v1 bundleIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DD30BA84()
{
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1DD30BBF8;
  }

  else
  {
    v3 = sub_1DD30BB90;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD30BB90()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_47_0();

  return v3(v2);
}

uint64_t sub_1DD30BBF8()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_1DD30BC70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1DD30BD24(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6978, &qword_1DD33A2A0);
    v7 = sub_1DD336510();

    return sub_1DD30BD90(v4, v7);
  }
}

uint64_t sub_1DD30BD24(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1DD30BDB0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v102 = a3;
  v103 = a4;
  v90 = a2;
  v89 = a1;
  v4 = sub_1DD3363A0();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v98 = v6;
  v99 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v95 = (v10 - v9);
  v97 = sub_1DD336420();
  v11 = OUTLINED_FUNCTION_1_0(v97);
  v96 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v93 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v94 = v84 - v17;
  v101 = sub_1DD3363C0();
  v18 = OUTLINED_FUNCTION_1_0(v101);
  v88 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v100 = v23 - v22;
  v92 = sub_1DD3369C0();
  v24 = OUTLINED_FUNCTION_1_0(v92);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  v31 = v30 - v29;
  v32 = sub_1DD336980();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_12();
  v87 = sub_1DD336400();
  v34 = OUTLINED_FUNCTION_1_0(v87);
  v86 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  v40 = v39 - v38;
  OUTLINED_FUNCTION_60();
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  OUTLINED_FUNCTION_60();
  v104 = swift_allocObject();
  *(v104 + 16) = 0;
  v91 = sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
  sub_1DD3363E0();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1DD2955A0(&qword_1EE0285A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD27F454(&qword_1EE0285E8, &qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD336B10();
  (*(v26 + 104))(v31, *MEMORY[0x1E69E8090], v92);
  v85 = v40;
  v41 = sub_1DD336A10();
  v42 = v89;
  v43 = v41;
  OUTLINED_FUNCTION_60();
  v44 = swift_allocObject();
  v45 = dispatch_group_create();
  *(v44 + 16) = v45;
  v91 = v44 + 16;
  dispatch_group_enter(v45);
  v92 = v43;
  if (v42)
  {
    sub_1DD27D80C(0, &qword_1ECCD6F58, 0x1E696AD98);
    v46 = sub_1DD336800();
  }

  else
  {
    v46 = 0;
  }

  v47 = v102;
  v49 = v104;
  v48 = v105;
  if (v90)
  {
    v50 = sub_1DD336800();
  }

  else
  {
    v50 = 0;
  }

  sub_1DD27D80C(0, &qword_1EE027518, 0x1E69ACD70);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  OUTLINED_FUNCTION_83();
  v52 = swift_allocObject();
  v52[2] = v48;
  v52[3] = v49;
  v52[4] = v44;
  v112 = sub_1DD30C858;
  v113 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v109 = 1107296256;
  v110 = sub_1DD30C864;
  v111 = &block_descriptor_13;
  v53 = _Block_copy(&aBlock);
  sub_1DD335860();
  sub_1DD335860();
  sub_1DD335860();

  [ObjCClassFromMetadata fetchEntitiesFromActiveApplicationsWithInteractionIDs:v46 bundleIdentifiers:v50 completionHandler:v53];
  _Block_release(v53);

  OUTLINED_FUNCTION_83();
  v54 = swift_allocObject();
  v54[2] = v44;
  v54[3] = v47;
  v54[4] = v103;
  v112 = sub_1DD30C9C4;
  v113 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v109 = 1107296256;
  v90 = &v110;
  v110 = sub_1DD2811BC;
  v111 = &block_descriptor_19;
  _Block_copy(&aBlock);
  v107 = MEMORY[0x1E69E7CC0];
  v55 = sub_1DD2955A0(&qword_1EE027F38, MEMORY[0x1E69E7F60]);
  sub_1DD335860();
  sub_1DD335860();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6710, &qword_1DD339620);
  v57 = sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
  v58 = v100;
  v84[1] = v56;
  v84[0] = v57;
  v59 = v101;
  v89 = v55;
  sub_1DD336B10();
  v60 = sub_1DD336460();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_1DD336440();

  v64 = v44;
  v65 = v93;
  sub_1DD336410();
  v66 = v95;
  *v95 = 1000;
  v68 = v98;
  v67 = v99;
  (*(v98 + 104))(v66, *MEMORY[0x1E69E7F38], v99);
  v69 = v94;
  MEMORY[0x1E12AC2C0](v65, v66);
  (*(v68 + 8))(v66, v67);
  v70 = v59;
  v71 = *(v96 + 8);
  v72 = v97;
  v71(v65, v97);
  v73 = v92;
  sub_1DD336990();
  v71(v69, v72);
  swift_beginAccess();
  v74 = *(v64 + 16);
  if (v74)
  {
    v75 = swift_allocObject();
    v76 = v102;
    v77 = v103;
    v75[2] = v63;
    v75[3] = v76;
    v79 = v104;
    v78 = v105;
    v75[4] = v77;
    v75[5] = v78;
    v75[6] = v79;
    v112 = sub_1DD30CA80;
    v113 = v75;
    aBlock = MEMORY[0x1E69E9820];
    v109 = 1107296256;
    v110 = sub_1DD2811BC;
    v111 = &block_descriptor_25;
    v80 = _Block_copy(&aBlock);
    sub_1DD335860();
    sub_1DD335860();
    sub_1DD335860();
    v81 = v74;
    sub_1DD335860();
    v103 = v64;
    v82 = v85;
    sub_1DD3363E0();
    v106 = MEMORY[0x1E69E7CC0];
    sub_1DD336B10();
    sub_1DD336970();
    _Block_release(v80);

    (*(v88 + 8))(v58, v70);
    (*(v86 + 8))(v82, v87);
  }

  else
  {
  }
}

void sub_1DD30C798(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = a1;

  swift_beginAccess();
  v11 = *(a4 + 16);
  *(a4 + 16) = a2;
  v12 = a2;

  swift_beginAccess();
  v13 = *(a5 + 16);
  if (v13)
  {
    dispatch_group_leave(v13);
  }
}

uint64_t sub_1DD30C864(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6978, &qword_1DD33A2A0);
    v4 = sub_1DD336510();
  }

  sub_1DD335860();
  v7 = a3;
  v6(v4, a3);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DD335860();
}

void sub_1DD30C92C(uint64_t a1, void (*a2)(void, void *))
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;

  sub_1DD30D0A8();
  v5 = swift_allocError();
  *v6 = 1;
  a2(0, v5);
}

uint64_t sub_1DD30C9D0(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD336450();
  swift_beginAccess();
  v8 = *(a4 + 16);
  swift_beginAccess();
  v9 = *(a5 + 16);

  v10 = v9;
  a2(v8, v9);
}

uint64_t sub_1DD30CB1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD30CBB8;

  return sub_1DD30B8D4(a1, a2);
}

uint64_t sub_1DD30CBB8()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *(*v1 + 16);
  v8 = *v1;

  OUTLINED_FUNCTION_47_0();
  if (!v0)
  {
    v5 = v3;
  }

  return v6(v5);
}

uint64_t dispatch thunk of RRLNServiceProviding.fetchEntitiesFromActiveApplications(interactionIDs:bundleIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DD30D104;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RRLNService.fetchEntitiesFromActiveApplications(interactionIDs:bundleIDs:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DD30CF6C;

  return v10(a1, a2);
}

uint64_t sub_1DD30CF6C()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  OUTLINED_FUNCTION_47_0();

  return v4(v2);
}

unint64_t sub_1DD30D0A8()
{
  result = qword_1ECCD6F60;
  if (!qword_1ECCD6F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F60);
  }

  return result;
}

const char *sub_1DD30D128(char a1)
{
  result = "self_resolve";
  switch(a1)
  {
    case 1:
      result = "self_gather_salient_entities";
      break;
    case 2:
      result = "curare_access";
      break;
    case 3:
      result = "search_object";
      break;
    case 4:
      result = "if_ui_context";
      break;
    case 5:
      result = "if_onscreen_appentity";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD30D1E0(unsigned __int8 a1)
{
  sub_1DD336EC0();
  MEMORY[0x1E12ACD20](a1);
  return sub_1DD336EF0();
}

uint64_t sub_1DD30D244()
{
  v1 = *v0;
  sub_1DD336EC0();
  MEMORY[0x1E12ACD20](v1);
  return sub_1DD336EF0();
}

unint64_t sub_1DD30D2A4()
{
  result = qword_1EE028948[0];
  if (!qword_1EE028948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE028948);
  }

  return result;
}

Swift::Bool __swiftcall SRRFeatureFlagsImpl.isUsoEntitySpanEnabled()()
{
  v2[3] = &type metadata for UsoEntitySpanFeatureFlag;
  v2[4] = sub_1DD30D360();
  v0 = sub_1DD334A70();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_1DD30D360()
{
  result = qword_1EE0277F8;
  if (!qword_1EE0277F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0277F8);
  }

  return result;
}

uint64_t sub_1DD30D3C4(char a1)
{
  v4[3] = &type metadata for Features;
  v4[4] = sub_1DD30D2A4();
  LOBYTE(v4[0]) = a1;
  v2 = sub_1DD334A70();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

_BYTE *sub_1DD30D57C(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD30D79C()
{
  result = qword_1ECCD6F68;
  if (!qword_1ECCD6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F68);
  }

  return result;
}

unint64_t sub_1DD30D7F4()
{
  result = qword_1ECCD6F70;
  if (!qword_1ECCD6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F70);
  }

  return result;
}

uint64_t sub_1DD30D898()
{
  sub_1DD336EC0();
  MEMORY[0x1E12ACD20](0);
  return sub_1DD336EF0();
}

uint64_t _s23SiriReferenceResolution18RRLinkServiceErrorO9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_9_11();
  return sub_1DD336EF0();
}

uint64_t _s23SiriReferenceResolution13RRPullerErrorO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1E12ACD20](0);
  return sub_1DD336EF0();
}

uint64_t sub_1DD30DA30(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1E12ACD20](a1);
  return sub_1DD336EF0();
}

uint64_t sub_1DD30DAB0(char a1)
{
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1E12ACD20](a1 & 1);
  return sub_1DD336EF0();
}

uint64_t sub_1DD30DAF0()
{
  v1 = *v0;
  sub_1DD336EC0();
  OUTLINED_FUNCTION_9_11();
  return sub_1DD336EF0();
}

unint64_t sub_1DD30DB30()
{
  result = qword_1ECCD6F78;
  if (!qword_1ECCD6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F78);
  }

  return result;
}

unint64_t sub_1DD30DB88()
{
  result = qword_1ECCD6F80;
  if (!qword_1ECCD6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F80);
  }

  return result;
}

unint64_t sub_1DD30DBE0()
{
  result = qword_1ECCD6F88;
  if (!qword_1ECCD6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F88);
  }

  return result;
}

unint64_t sub_1DD30DC38()
{
  result = qword_1ECCD6F90;
  if (!qword_1ECCD6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F90);
  }

  return result;
}

unint64_t sub_1DD30DC90()
{
  result = qword_1ECCD6F98;
  if (!qword_1ECCD6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6F98);
  }

  return result;
}

unint64_t sub_1DD30DCE8()
{
  result = qword_1ECCD6FA0;
  if (!qword_1ECCD6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FA0);
  }

  return result;
}

unint64_t sub_1DD30DD40()
{
  result = qword_1ECCD6FA8;
  if (!qword_1ECCD6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FA8);
  }

  return result;
}

unint64_t sub_1DD30DD98()
{
  result = qword_1ECCD6FB0;
  if (!qword_1ECCD6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FB0);
  }

  return result;
}

unint64_t sub_1DD30DDF0()
{
  result = qword_1ECCD6FB8;
  if (!qword_1ECCD6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FB8);
  }

  return result;
}

unint64_t sub_1DD30DE48()
{
  result = qword_1ECCD6FC0;
  if (!qword_1ECCD6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FC0);
  }

  return result;
}

unint64_t sub_1DD30DEA0()
{
  result = qword_1ECCD6FC8;
  if (!qword_1ECCD6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FC8);
  }

  return result;
}

uint64_t sub_1DD30DF48(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_7_9(a1);
}

_BYTE *sub_1DD30DF94(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for RREntityStorageError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RREntityStorageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD30E19C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_6_10(v8);
}

_BYTE *sub_1DD30E220(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_7(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_3_12(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_4_11(result, v6);
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
          result = OUTLINED_FUNCTION_1_9(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD30E2F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_6_10(v8);
}

_BYTE *sub_1DD30E378(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_7(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_3_12(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_4_11(result, v6);
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
          result = OUTLINED_FUNCTION_1_9(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD30E444()
{
  result = qword_1ECCD6FD0;
  if (!qword_1ECCD6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FD0);
  }

  return result;
}

uint64_t sub_1DD30E498(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_6_10((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_6_10(v8);
}

_BYTE *sub_1DD30E51C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_7(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_3_12(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_4_11(result, v6);
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
          result = OUTLINED_FUNCTION_1_9(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD30E5E8()
{
  result = qword_1ECCD6FD8;
  if (!qword_1ECCD6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6FD8);
  }

  return result;
}

uint64_t *RRBiomePuller.deinit()
{
  v1 = *v0;
  v2 = qword_1EE02A6A0;
  v3 = sub_1DD335CD0();
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(*v0 + 96);
  v6 = *(v1 + 80);
  sub_1DD334A40();
  v7 = sub_1DD336AD0();
  OUTLINED_FUNCTION_4_0(v7);
  (*(v8 + 8))(v0 + v5);
  return v0;
}

uint64_t RRBiomePuller.__deallocating_deinit()
{
  RRBiomePuller.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD30E824(uint64_t a1)
{
  result = sub_1DD335CD0();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    sub_1DD334A40();
    result = sub_1DD336AD0();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1DD30E970()
{
  result = sub_1DD30E990();
  qword_1EE027F30 = result;
  return result;
}

id sub_1DD30E990()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6798, &qword_1DD33A070);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_1DD334940();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1DD30EE70(0xD000000000000019, 0x80000001DD33E950, v9);
  sub_1DD3348A0();
  v10 = sub_1DD3348F0();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  sub_1DD3349C0();
  v11 = sub_1DD3349F0();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v11) != 1)
  {
    v12 = sub_1DD3349D0();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  [v9 setTimeZone_];

  return v9;
}

id dateFormatter.getter()
{
  if (qword_1EE027F28 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  OUTLINED_FUNCTION_1_10();
  v0 = qword_1EE027F30;

  return v0;
}

void dateFormatter.setter(uint64_t a1)
{
  if (qword_1EE027F28 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  swift_beginAccess();
  v2 = qword_1EE027F30;
  qword_1EE027F30 = a1;
}

uint64_t (*dateFormatter.modify())()
{
  if (qword_1EE027F28 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DD30ECF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  __src = a1;
  v16 = WORD2(a2);
  v15 = a2;
  v6 = MEMORY[0x1E69E7CC0];
  switch(a4 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        __break(1u);
LABEL_10:
        __break(1u);
      }

      v9 = HIDWORD(a3) - a3;
LABEL_6:
      if (v9)
      {
        v6 = sub_1DD29684C(v9, 0);
        memcpy(v6 + 4, &__src, v9);
      }

LABEL_8:
      result = sub_1DD290274(a3, a4);
      *a5 = v6;
      v13 = *MEMORY[0x1E69E9840];
      return result;
    case 2uLL:
      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_8;
    default:
      v9 = BYTE6(a4);
      goto LABEL_6;
  }
}

void type metadata accessor for ComparisonResult()
{
  if (!qword_1ECCD7048)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECCD7048);
    }
  }
}

void sub_1DD30EE70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD3365A0();

  [a3 setDateFormat_];
}

uint64_t sub_1DD30EEDC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v10(v23, a3, a5);
  v11 = v23[3];
  v19 = v23[2];

  sub_1DD288AB8(v23);
  v10(v24, a3, a5);
  v13 = v24[6];
  v12 = v24[7];

  sub_1DD288AB8(v24);
  (*(a6 + 40))(v19, v11, v13, v12, a4, a6);
  v10(v22, a3, a5);
  (*(a6 + 24))(v22, a4, a6);
  v14 = *(a6 + 32);

  v15 = v14(v22, a4, a6);
  *v16 = a1;
  v17 = *(v16 + 8);
  *(v16 + 8) = a2;

  return v15(v22, 0);
}

uint64_t sub_1DD30F07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_49_6();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v10 = OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_69_6(v10, xmmword_1DD339380);
  sub_1DD2855A0(v9, v11);

  sub_1DD28C254(v12);
  sub_1DD30EEDC(a5, v10, v6, v6, *(v5 + 8), *(v5 + 8));
}

uint64_t sub_1DD30F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_49_6();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v8 = OUTLINED_FUNCTION_51_7();
  *(v8 + 16) = xmmword_1DD339380;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v8 + 64) = &protocol witness table for Expression<A>;
  v7(v17, v16);
  OUTLINED_FUNCTION_3_10();
  a5(v9, v10, v11, v12, v13, v14);
}

uint64_t SchemaType.select<A>(_:)()
{
  return sub_1DD30F2D4();
}

{
  return sub_1DD30F3B8();
}

uint64_t SchemaType.select<A>(distinct:)()
{
  return sub_1DD30F2D4();
}

{
  return sub_1DD30F3B8();
}

uint64_t sub_1DD30F2D4()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_49_6();
  v4 = v3;
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v9 = OUTLINED_FUNCTION_51_7();
  *(v9 + 16) = xmmword_1DD339380;
  v10 = type metadata accessor for Expression();
  OUTLINED_FUNCTION_64_5(v10, &protocol witness table for Expression<A>);
  v11 = type metadata accessor for ScalarQuery();
  v12 = *(v0 + 8);

  sub_1DD30EEDC(v2, v9, v4, v11, v12, &protocol witness table for ScalarQuery<A>);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD30F3B8()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v10 = OUTLINED_FUNCTION_51_7();
  *(v10 + 16) = xmmword_1DD339380;
  sub_1DD336AD0();
  OUTLINED_FUNCTION_37_5();
  v11 = type metadata accessor for Expression();
  OUTLINED_FUNCTION_64_5(v11, &protocol witness table for Expression<A>);
  v12 = type metadata accessor for ScalarQuery();
  v13 = *(v3 + 8);

  sub_1DD30EEDC(v1, v10, v5, v12, v13, &protocol witness table for ScalarQuery<A>);
  OUTLINED_FUNCTION_24_1();
}

uint64_t SchemaType.count.getter()
{
  OUTLINED_FUNCTION_61_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  v9 = &protocol witness table for Expression<A>;
  v5 = 42;
  v6 = 0xE100000000000000;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = v0;
  MEMORY[0x1E12AC540](40, 0xE100000000000000);
  v1 = __swift_project_boxed_opaque_existential_1(&v5, v8);

  v2 = OUTLINED_FUNCTION_31_2();
  MEMORY[0x1E12AC540](v2);

  MEMORY[0x1E12AC540](41, 0xE100000000000000);
  v3 = v1[2];

  __swift_destroy_boxed_opaque_existential_1(&v5);
  v5 = 0x746E756F63;
  v6 = 0xE500000000000000;
  v7 = v3;
  OUTLINED_FUNCTION_30_5();
  SchemaType.select<A>(_:)();
}

uint64_t QueryType.union(_:)()
{
  OUTLINED_FUNCTION_28_9();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_22(v7);
  (*(v8 + 16))(v6, v0, v2);
  v9 = (*(v1 + 32))(v15, v2, v1);
  v11 = v10;
  OUTLINED_FUNCTION_57_3();
  sub_1DD31337C();
  v12 = *(*(v11 + 160) + 16);
  sub_1DD313140(v12);
  v13 = *(v11 + 160);
  *(v13 + 16) = v12 + 1;
  sub_1DD2855A0(v4, v13 + 40 * v12 + 32);
  return v9(v15, 0);
}

uint64_t QueryType.join(_:on:)()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_61_5();
  v1 = v0[1];
  v2 = v0[2];
  v10 = *v0;

  v3 = OUTLINED_FUNCTION_39_8();
  QueryType.join(_:on:)(v3, v4, v5, v6, v7);

  OUTLINED_FUNCTION_79_4();
}

uint64_t QueryType.join(_:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v9 = 1;
  v7 = v5;
  v8 = *(a2 + 8);
  return QueryType.join(_:_:on:)(&v9, a1, &v7, a3, a4, a5);
}

uint64_t QueryType.join(_:_:on:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = *a1;
  v12 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  OUTLINED_FUNCTION_22(a4);
  (*(v14 + 16))(a6, v6, v15);
  sub_1DD2855A0(a2, v44);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = OUTLINED_FUNCTION_31_2();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v17 + 16))(v45, v16, v17);
  v20 = v45[9];
  v21 = v45[10];
  v22 = v45[11];
  OUTLINED_FUNCTION_32_8();
  sub_1DD28C838(v23, v24);
  sub_1DD288AB8(v45);
  if (!v21)
  {
    goto LABEL_4;
  }

  *&__src[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  *&__src[32] = &protocol witness table for Expression<A>;
  v42 = *&__src[24];
  v43 = &protocol witness table for Expression<A>;
  *&v40 = v12;
  *(&v40 + 1) = v11;
  v41 = v13;
  v38[3] = *&__src[24];
  v38[4] = &protocol witness table for Expression<A>;
  v38[0] = v20;
  v38[1] = v21;
  v38[2] = v22;
  OUTLINED_FUNCTION_32_8();
  sub_1DD28C838(v25, v26);

  sub_1DD28512C(&v40, v38, 1, 4476481, 0xE300000000000000, __src);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  OUTLINED_FUNCTION_32_8();
  sub_1DD28D008(v27, v28);
  if (*&__src[24])
  {
    sub_1DD289CE4(__src, &v40);
  }

  else
  {
LABEL_4:
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
    v43 = &protocol witness table for Expression<A>;
    *&v40 = v12;
    *(&v40 + 1) = v11;
    v41 = v13;
  }

  __src[0] = v37;
  sub_1DD289CE4(v44, &__src[8]);
  sub_1DD289CE4(&v40, &__src[48]);
  v29 = (*(a5 + 32))(v38, a4, a5);
  v31 = v30;
  sub_1DD3133E0(sub_1DD3131F8);
  v32 = *(*(v31 + 64) + 16);
  v33 = OUTLINED_FUNCTION_41_0();
  sub_1DD31318C(v33, v34);
  v35 = *(v31 + 64);
  *(v35 + 16) = v32 + 1;
  memcpy((v35 + 88 * v32 + 32), __src, 0x58uLL);
  return v29(v38, 0);
}

uint64_t QueryType.join(_:_:on:)()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v3 = v2;
  v5 = v4[1];
  v6 = v4[2];
  v15 = *v7;
  v14 = *v4;

  OUTLINED_FUNCTION_30_5();
  QueryType.join(_:_:on:)(v8, v9, v10, v3, v1, v11);

  OUTLINED_FUNCTION_79_4();
}

uint64_t sub_1DD30FB7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  (*(*(a3 - 8) + 16))(a5, v5);
  v12 = *(a4 + 32);

  sub_1DD28C838(v9, v10);
  v13 = v12(v20, a3, a4);
  v15 = v14[12];
  v16 = v14[13];
  v17 = v14[14];
  v18 = v14[15];
  v14[12] = a1;
  v14[13] = v9;
  v14[14] = v10;
  v14[15] = v11;
  sub_1DD314830(v15, v16, v17);
  return v13(v20, 0);
}

uint64_t QueryType.group(_:having:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD30FCAC(a1, a2, a3, a4, QueryType.group(_:having:));
}

{
  return sub_1DD30FCAC(a1, a2, a3, a4, QueryType.group(_:having:));
}

uint64_t sub_1DD30FCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__n128 *, uint64_t *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_35_8();
  v11 = *v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  v12 = OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_69_6(v12, xmmword_1DD339380);
  sub_1DD2855A0(v7, v13);
  v15 = v11;
  v16 = *(v6 + 8);
  a5(v12, &v15, v5, a4);
}

uint64_t _s8RRSQLite9QueryTypePAAE5group_6havingxSayAA11Expressible_pG_AA10ExpressionVySbGtF_0()
{
  OUTLINED_FUNCTION_61_5();
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];

  v1 = OUTLINED_FUNCTION_39_8();
  sub_1DD30FB7C(v1, v2, v3, v4, v5);

  return sub_1DD28D008(v7, v8);
}

void QueryType.order(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_82_2();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v30 = v29;
  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_22(v31);
  (*(v32 + 16))(v24, v22, v30);
  v33 = *(v28 + 32);

  v34 = v33(&a9, v30, v28);
  v36 = *(v35 + 128);
  *(v35 + 128) = v23;

  v34(&a9, 0);
  OUTLINED_FUNCTION_79_4();
}

uint64_t sub_1DD30FEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA60;
  v6 = *(a2 + 16);
  v6(v42, a1, a2);
  sub_1DD288AB8(v42);
  if (LOBYTE(v42[0]))
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (LOBYTE(v42[0]))
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v10 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v9;
  v6(&v25, a1, a2);
  v11 = v26;

  sub_1DD288AB8(&v25);
  sub_1DD284AFC(v11, 8236, 0xE200000000000000, v12, v13, v14, v15, v16, a3, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);

  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v10;
  sub_1DD28C4F0();
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v17, v18, v19, v20, v21, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  swift_setDeallocating();
  return sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
}

uint64_t sub_1DD31009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v30);
  v7 = v30[8];

  sub_1DD288AB8(v30);
  v8 = *(v7 + 16);

  if (v8)
  {
    (v6)(v29, a1, a2);
    v10 = v29[8];

    sub_1DD288AB8(v29);
    v11 = *(v10 + 16);
    if (v11)
    {
      v21 = a3;
      v28 = MEMORY[0x1E69E7CC0];
      sub_1DD296F20();
      v12 = 0;
      v13 = v28;
      v14 = v10 + 32;
      while (v12 < *(v10 + 16))
      {
        sub_1DD2892A8(v14, v23, &qword_1ECCD7138, "\bK");
        sub_1DD3102B4(v23);
        sub_1DD3147D8(v23, &qword_1ECCD7138);
        v28 = v13;
        v15 = *(v13 + 16);
        if (v15 >= *(v13 + 24) >> 1)
        {
          sub_1DD296F20();
          v13 = v28;
        }

        ++v12;
        *(v13 + 16) = v15 + 1;
        sub_1DD289CE4(&v24, v13 + 40 * v15 + 32);
        v14 += 88;
        if (v11 == v12)
        {

          goto LABEL_11;
        }
      }

      __break(1u);
      sub_1DD3147D8(v23, &qword_1ECCD7138);

      __break(1u);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
LABEL_11:
      sub_1DD284AFC(v13, 32, 0xE100000000000000, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v24, *(&v24 + 1), v25, v26, v27);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DD3102B4(uint64_t a1)
{
  sub_1DD2892A8(a1, &v35, &qword_1ECCD7138, "\bK");
  v1 = v35;
  sub_1DD289CE4(&v36, v39);
  sub_1DD289CE4(&v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA60;
  v35 = 0;
  *&v36 = 0xE000000000000000;
  v3 = 0xE500000000000000;
  v4 = 0x52454E4E49;
  if (v1 != 1)
  {
    v4 = 0x54554F205446454CLL;
    v3 = 0xEA00000000005245;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x53534F5243;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12AC540](v5, v6);

  MEMORY[0x1E12AC540](0x4E494F4A20, 0xE500000000000000);
  v7 = v35;
  v8 = v36;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v10 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v9;
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  sub_1DD28C4F0();
  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 20047;
  *(inited + 120) = 0xE200000000000000;
  *(inited + 128) = v10;
  sub_1DD2855A0(v38, inited + 152);
  sub_1DD284AFC(inited, 32, 0xE100000000000000, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t JoinType.rawValue.getter()
{
  v1 = 0x52454E4E49;
  if (*v0 != 1)
  {
    v1 = 0x54554F205446454CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53534F5243;
  }
}

uint64_t sub_1DD31050C(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1DD28E6F4(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1DD28E6F4((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD310634@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v103);
  v4 = v104;
  v3 = v105;
  v6 = v106;
  v5 = v107;
  sub_1DD314780(v104, v105, v106);
  result = sub_1DD288AB8(v103);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 40) = 0xE800000000000000;
    v10 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v9;
    sub_1DD284AFC(v4, 8236, 0xE200000000000000, v11, v12, v13, v14, v15, 2, 4, v38, v42, v46, v50, v54, v58, v62, v66, v70, v74, v78, v82, v86, v90, v94, v98);
    sub_1DD284AFC(inited, 32, 0xE100000000000000, v16, v17, v18, v19, v20, v33, v36, v39, v43, v47, v51, v55, v59, v63, v67, v71, v75, v79, v83, v87, v91, v95, v99);
    swift_setDeallocating();
    sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);

    if (v6)
    {
      v21 = swift_initStackObject();
      *(v21 + 16) = v34;
      sub_1DD2855A0(v102, v21 + 32);
      v22 = swift_initStackObject();
      *(v22 + 16) = v34;
      *(v22 + 56) = v9;
      *(v22 + 64) = &protocol witness table for Expression<A>;
      *(v22 + 32) = 0x474E49564148;
      *(v22 + 40) = 0xE600000000000000;
      *(v22 + 48) = v10;
      *(v22 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
      *(v22 + 104) = &protocol witness table for Expression<A>;
      *(v22 + 72) = v3;
      *(v22 + 80) = v6;
      *(v22 + 88) = v5;
      sub_1DD284AFC(v22, 32, 0xE100000000000000, v23, v24, v25, v26, v27, v34, *(&v34 + 1), v40, v44, v48, v52, v56, v60, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      sub_1DD284AFC(v21, 32, 0xE100000000000000, v28, v29, v30, v31, v32, v35, v37, v41, v45, v49, v53, v57, v61, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101);
      swift_setDeallocating();
      sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
      return __swift_destroy_boxed_opaque_existential_1(v102);
    }

    else
    {
      return sub_1DD289CE4(v102, a2);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DD31088C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v53);
  v7 = v53[20];

  sub_1DD288AB8(v53);
  v8 = *(v7 + 16);

  if (v8)
  {
    (v6)(v52, a1, a2);
    v10 = v52[20];

    sub_1DD288AB8(v52);
    v11 = *(v10 + 16);
    if (v11)
    {
      v31 = a3;
      v51 = MEMORY[0x1E69E7CC0];
      sub_1DD296F20();
      v12 = v51;
      v30 = v10;
      v13 = v10 + 32;
      v32 = xmmword_1DD3391F0;
      do
      {
        sub_1DD2855A0(v13, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
        inited = swift_initStackObject();
        *(inited + 16) = v32;
        *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
        *(inited + 64) = &protocol witness table for Expression<A>;
        *(inited + 32) = 0x4E4F494E55;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = MEMORY[0x1E69E7CC0];
        v15 = v48;
        v16 = v49;
        v17 = __swift_project_boxed_opaque_existential_1(v47, v48);
        *(inited + 96) = v15;
        *(inited + 104) = *(v16 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
        (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
        sub_1DD284AFC(inited, 32, 0xE100000000000000, v19, v20, v21, v22, v23, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
        swift_setDeallocating();
        sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
        __swift_destroy_boxed_opaque_existential_1(v47);
        v51 = v12;
        v24 = *(v12 + 16);
        if (v24 >= *(v12 + 24) >> 1)
        {
          sub_1DD296F20();
          v12 = v51;
        }

        *(v12 + 16) = v24 + 1;
        sub_1DD289CE4(&v50, v12 + 40 * v24 + 32);
        v13 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    sub_1DD284AFC(v12, 32, 0xE100000000000000, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t QueryType.alias(_:)()
{
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_71_0();
  v5 = v4;
  OUTLINED_FUNCTION_22(v6);
  (*(v7 + 16))(v5, v1);
  v8 = *(v3 + 16);
  v9 = OUTLINED_FUNCTION_41_0();
  v8(v9);
  v11 = v26;
  v10 = v27;

  sub_1DD288AB8(v25);
  v12 = OUTLINED_FUNCTION_41_0();
  v8(v12);
  v14 = v29;
  v13 = v30;

  sub_1DD288AB8(v28);
  v15 = *(v3 + 32);
  OUTLINED_FUNCTION_3_10();
  v17 = v16();
  v19 = v18;
  v20 = v18[3];
  v18[2] = v11;
  v18[3] = v10;

  v21 = v19[5];
  v19[4] = v2;
  v19[5] = v0;

  v22 = v19[7];
  v19[6] = v14;
  v19[7] = v13;

  return v17(v24, 0);
}

uint64_t OnConflict.rawValue.getter()
{
  result = 0x4543414C504552;
  switch(*v0)
  {
    case 1:
      result = 0x4B4341424C4C4F52;
      break;
    case 2:
      result = 0x54524F4241;
      break;
    case 3:
      result = 1279869254;
      break;
    case 4:
      result = 0x45524F4E4749;
      break;
    default:
      return result;
  }

  return result;
}

RRSQLite::Insert __swiftcall QueryType.insert()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  OUTLINED_FUNCTION_23_8();
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  v4 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v5;
  sub_1DD28C4F0();
  *(inited + 136) = v1;
  *(inited + 144) = &protocol witness table for Expression<A>;
  strcpy((inited + 112), "DEFAULT VALUES");
  *(inited + 127) = -18;
  *(inited + 128) = v4;
  OUTLINED_FUNCTION_24_6(inited, v6, v7, v8, v9, v10, v11, v12, v26, v28, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  OUTLINED_FUNCTION_5_8(v47);
  v13 = OUTLINED_FUNCTION_2_5();
  v15 = v14(v13);
  v23 = OUTLINED_FUNCTION_56_7(v15, v16, v17, v18, v19, v20, v21, v22, v27, v29, v31);
  result.bindings._rawValue = v25;
  result.template._object = v24;
  result.template._countAndFlagsBits = v23;
  return result;
}

uint64_t QueryType.insert(_:)()
{
  OUTLINED_FUNCTION_35_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  OUTLINED_FUNCTION_23_8();
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v5;
  OUTLINED_FUNCTION_3_10();
  sub_1DD28C4F0();
  v6 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v6);
  OUTLINED_FUNCTION_36_8();
  *(inited + 136) = v2;
  *(inited + 144) = &protocol witness table for Expression<A>;
  v8 = v7(v6);
  OUTLINED_FUNCTION_19_5(v8, v9, v10, v11, v12, v13, v14, v15, v27, v29, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  OUTLINED_FUNCTION_5_8(v48);
  v16 = OUTLINED_FUNCTION_2_5();
  v18 = v17(v16);
  return OUTLINED_FUNCTION_56_7(v18, v19, v20, v21, v22, v23, v24, v25, v28, v30, v32);
}

RRSQLite::Delete __swiftcall QueryType.delete()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA90;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x46204554454C4544;
  *(inited + 40) = 0xEB000000004D4F52;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v3;
  sub_1DD28C4F0();
  OUTLINED_FUNCTION_47();
  sub_1DD28C6EC(v4, v5);
  v6 = OUTLINED_FUNCTION_47();
  sub_1DD29709C(v6, v7, v8);
  OUTLINED_FUNCTION_47();
  v11 = sub_1DD297224(v9, v10);
  for (i = 32; i != 232; i += 40)
  {
    v20 = OUTLINED_FUNCTION_26_7(v11, v12, v13, v14, v15, v16, v17, v18, v54, *(&v54 + 1), v55);
    OUTLINED_FUNCTION_3_13(v20, v21, v22, v23, v24, v25, v26, v27, v54, *(&v54 + 1), v55, v56, v57, v58, *v59, *&v59[8], *&v59[16], v60, v61, v62, v63, v64);
    if (v28)
    {
      sub_1DD289CE4(&v54, v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_11();
        sub_1DD28C3A8();
      }

      OUTLINED_FUNCTION_38_8();
      if (v38)
      {
        OUTLINED_FUNCTION_45(v37);
        OUTLINED_FUNCTION_18_2();
        sub_1DD28C3A8();
      }

      v11 = OUTLINED_FUNCTION_25_4(v29, v30, v31, v32, v33, v34, v35, v36, v54, *(&v54 + 1), v55, v56, v57, v58, *v59);
    }

    else
    {
      OUTLINED_FUNCTION_83_1();
      v11 = sub_1DD3147D8(v39, v40);
    }
  }

  swift_setDeallocating();
  v41 = sub_1DD284AB0(&qword_1ECCD7070, &qword_1DD33BAB8);
  OUTLINED_FUNCTION_22_9(v41, v42, v43, v44, v45, v46, v47, v48, v54, *(&v54 + 1), v55, v56, v57, v58, *v59, *&v59[8], *&v59[16], v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, v67);

  OUTLINED_FUNCTION_5_8(&v62);
  v49 = OUTLINED_FUNCTION_2_5();
  v50(v49);
  *v1 = *v59;
  *(v1 + 8) = *&v59[8];
  v51 = __swift_destroy_boxed_opaque_existential_1(&v62);
  result.bindings._rawValue = v53;
  result.template._object = v52;
  result.template._countAndFlagsBits = v51;
  return result;
}

uint64_t QueryType.exists.getter()
{
  OUTLINED_FUNCTION_14_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD3391F0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  strcpy((inited + 32), "SELECT EXISTS");
  *(inited + 46) = -4864;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v4;
  v5 = *(*(v1 + 8) + 8);
  v36[3] = v4;
  v36[4] = &protocol witness table for Expression<A>;
  v5(v36, v2);
  *(inited + 96) = v4;
  *(inited + 104) = &protocol witness table for Expression<A>;
  sub_1DD285320(v36, 0, 0xE000000000000000, (inited + 72));
  v6 = __swift_destroy_boxed_opaque_existential_1(v36);
  OUTLINED_FUNCTION_19_5(v6, v7, v8, v9, v10, v11, v12, v13, v17, v19, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  OUTLINED_FUNCTION_5_8(v36);
  v14 = OUTLINED_FUNCTION_2_5();
  v15(v14);
  *v0 = v18;
  *(v0 + 8) = v20;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t QueryType.namespace<A>(_:)(unint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = type metadata accessor for Expression();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_70_5(inited, xmmword_1DD3391F0);
  OUTLINED_FUNCTION_3_10();
  sub_1DD28C4F0();
  inited[6].n128_u64[0] = v4;
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v2;
  inited[5].n128_u64[0] = v1;
  inited[5].n128_u64[1] = v3;

  sub_1DD284AFC(inited, 46, 0xE100000000000000, v6, v7, v8, v9, v10, v19, v20, v21, *(&v21 + 1), v22, v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  swift_setDeallocating();
  sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  v11 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_34_7();
  v14(v13);
  v20 = v22;
  v21 = v23;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1DD31471C(&qword_1ECCD7080, &qword_1ECCD7060);
  ExpressionType.init<A>(_:)(&v20, v4, v15, WitnessTable, v17);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t QueryType.subscript.getter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1DD336AD0();
  return QueryType.namespace<A>(_:)(&v2);
}

uint64_t QueryType.subscript.getter()
{
  OUTLINED_FUNCTION_59_4();
  v0(v5, v4, v3);
  v4[0] = v5[0];
  v4[1] = v5[1];
  v4[2] = v5[2];
  OUTLINED_FUNCTION_30_5();
  QueryType.namespace<A>(_:)(v1);
}

void sub_1DD311684(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {

    sub_1DD28C4F0();
  }

  else
  {
    v7 = *(a3 + 16);
    v7(v14, a2, a3);
    v8 = v14[5];

    sub_1DD288AB8(v14);
    if (!v8)
    {
      v7(v13, a2, a3);

      sub_1DD288AB8(v13);
    }

    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    a4[4] = &protocol witness table for Expression<A>;
    OUTLINED_FUNCTION_50_5();
    sub_1DD289A78();
    v10 = v9;
    v12 = v11;

    *a4 = v10;
    a4[1] = v12;
    a4[2] = MEMORY[0x1E69E7CC0];
  }
}

void QueryType.expression.getter()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_70_5(inited, xmmword_1DD33A620);
  v1 = OUTLINED_FUNCTION_41_0();
  sub_1DD30FEDC(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_41_0();
  sub_1DD31009C(v4, v5, v6);
  OUTLINED_FUNCTION_41_0();
  sub_1DD28C6EC(v7, v8);
  OUTLINED_FUNCTION_41_0();
  sub_1DD310634(v9, v10);
  v11 = OUTLINED_FUNCTION_41_0();
  sub_1DD31088C(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_41_0();
  sub_1DD29709C(v14, v15, v16);
  OUTLINED_FUNCTION_41_0();
  v19 = sub_1DD297224(v17, v18);
  for (i = 32; i != 312; i += 40)
  {
    v28 = OUTLINED_FUNCTION_26_7(v19, v20, v21, v22, v23, v24, v25, v26, v59, *(&v59 + 1), v60);
    OUTLINED_FUNCTION_3_13(v28, v29, v30, v31, v32, v33, v34, v35, v59, *(&v59 + 1), v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, v67, v68, v69, v70);
    if (v36)
    {
      sub_1DD289CE4(&v59, &v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_11();
        sub_1DD28C3A8();
      }

      OUTLINED_FUNCTION_38_8();
      if (v46)
      {
        OUTLINED_FUNCTION_45(v45);
        OUTLINED_FUNCTION_18_2();
        sub_1DD28C3A8();
      }

      v19 = OUTLINED_FUNCTION_25_4(v37, v38, v39, v40, v41, v42, v43, v44, v59, *(&v59 + 1), v60, v61, v62, v63, v64);
    }

    else
    {
      OUTLINED_FUNCTION_83_1();
      v19 = sub_1DD3147D8(v47, v48);
    }
  }

  swift_setDeallocating();
  v49 = sub_1DD284AB0(&qword_1ECCD7070, &qword_1DD33BAB8);
  OUTLINED_FUNCTION_22_9(v49, v50, v51, v52, v53, v54, v55, v56, v59, *(&v59 + 1), v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, v67, v68, v69, v70, *(&v70 + 1), v71, v72, v73);

  OUTLINED_FUNCTION_5_8(&v68);
  v57 = OUTLINED_FUNCTION_2_5();
  v58(v57);
  __swift_destroy_boxed_opaque_existential_1(&v68);
  OUTLINED_FUNCTION_24_1();
}

void *Table.clauses.setter()
{
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_13_9();
  memcpy(v0, v1, v2);
  sub_1DD31343C(v4);
  return OUTLINED_FUNCTION_54_6();
}

void *View.clauses.setter()
{
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_13_9();
  memcpy(v0, v1, v2);
  sub_1DD31346C(v4);
  return OUTLINED_FUNCTION_54_6();
}

void *VirtualTable.clauses.setter()
{
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_13_9();
  memcpy(v0, v1, v2);
  sub_1DD31349C(v4);
  return OUTLINED_FUNCTION_54_6();
}

uint64_t ScalarQuery.clauses.getter()
{
  OUTLINED_FUNCTION_13_9();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_13_9();
  memcpy(v3, v4, v5);
  return sub_1DD289514(v8, v7);
}

void *ScalarQuery.clauses.setter()
{
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_13_9();
  memcpy(v3, v4, v5);
  OUTLINED_FUNCTION_22(v0);
  (*(v6 + 8))(v8, v0);
  return memcpy(v1, v2, 0xA8uLL);
}

double ScalarQuery.init(_:database:)()
{
  OUTLINED_FUNCTION_14_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
  *(OUTLINED_FUNCTION_51_7() + 16) = xmmword_1DD339380;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  OUTLINED_FUNCTION_58_6(&protocol witness table for Expression<A>);
  return OUTLINED_FUNCTION_6_11(v0, MEMORY[0x1E69E7CC0]);
}

void (*sub_1DD311CE0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = ScalarQuery.clauses.modify();
  return sub_1DD311D3C;
}

void sub_1DD311D3C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t Select.template.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Select.template.setter()
{
  OUTLINED_FUNCTION_71_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Select.bindings.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DD311E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t Delete.template.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Delete.template.setter()
{
  OUTLINED_FUNCTION_71_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Delete.bindings.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void RowIterator.map<A>(_:)()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = *v0;
  v6 = v0[1];
  sub_1DD3364F0();
  while (1)
  {
    v8 = Statement.failableNext()();
    if (v9)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_6;
    }

    v10[0] = v6;
    v10[1] = v8;

    v1(v10);

    sub_1DD336880();
    sub_1DD336870();
  }

LABEL_6:
  OUTLINED_FUNCTION_53();
}

uint64_t Connection.prepare(_:)(void *a1)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  OUTLINED_FUNCTION_36_8();
  v4(v10, v3);
  v5 = v10[2];
  Connection.prepare(_:_:)(v10[0], v10[1], MEMORY[0x1E69E7CC0]);
  if (v1)
  {
  }

  else
  {
    v7 = Statement.bind(_:)(v5);

    v8 = sub_1DD28D810(a1);
    OUTLINED_FUNCTION_72_4();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7088, &qword_1DD33BAC8);
    OUTLINED_FUNCTION_72_4();
    result = swift_allocObject();
    *(result + 16) = sub_1DD3134CC;
    *(result + 24) = v9;
  }

  return result;
}

uint64_t sub_1DD3122DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7148, ">K");
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DD314700;
  *(v7 + 24) = v6;
  *a3 = v7;
  sub_1DD335860();
}

void sub_1DD31237C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = Statement.failableNext()();
  if (v5)
  {

LABEL_3:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  if (!v4)
  {
    goto LABEL_3;
  }

  *a2 = a1;
  a2[1] = v4;
}

uint64_t sub_1DD3123FC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DD28C4F0();
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v8 + 8))(v13, v7, v8);
  v9 = v13[0];
  v10 = v13[1];

  v17 = v9;
  v18 = v10;
  __swift_destroy_boxed_opaque_existential_1(v14);
  MEMORY[0x1E12AC540](46, 0xE100000000000000);
  result = MEMORY[0x1E12AC540](v4, v5);
  v12 = v18;
  *a3 = v17;
  a3[1] = v12;
  return result;
}

uint64_t Connection.scalar<A>(_:)()
{
  OUTLINED_FUNCTION_65_4();
  memcpy(__dst, v2, sizeof(__dst));
  type metadata accessor for ScalarQuery();
  QueryType.expression.getter();
  OUTLINED_FUNCTION_80_3();

  if (!v1)
  {
    OUTLINED_FUNCTION_30_5();
    sub_1DD328F3C(v4, v5, v0);
    return sub_1DD3147D8(__dst, &qword_1ECCD7090);
  }

  return result;
}

{
  OUTLINED_FUNCTION_65_4();
  v7 = *v2;
  v8 = *(v2 + 1);
  v3 = type metadata accessor for Select();
  ExpressionType.expression.getter(v3, &protocol witness table for Select<A>, &v9);
  OUTLINED_FUNCTION_80_3();

  if (!v1)
  {
    OUTLINED_FUNCTION_30_5();
    sub_1DD328F3C(v5, v6, v0);
    return sub_1DD3147D8(&v7, &qword_1ECCD7090);
  }

  return result;
}

void Connection.scalar<A>(_:)()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_63_5();
  v40 = v3;
  v39 = v4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_37_5();
  v5 = sub_1DD336AD0();
  OUTLINED_FUNCTION_8_9();
  v38 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  OUTLINED_FUNCTION_8_9();
  v37[1] = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v37 - v16;
  OUTLINED_FUNCTION_13_9();
  memcpy(v18, v19, v20);
  sub_1DD336AD0();
  type metadata accessor for ScalarQuery();
  QueryType.expression.getter();
  OUTLINED_FUNCTION_77_3();

  if (!v1)
  {
    v21 = v38;
    v22 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_46_7();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      v27 = OUTLINED_FUNCTION_33_7();
      v28(v27);
      v29 = *(v22 + 48);
      v30 = OUTLINED_FUNCTION_60_6();
      v31(v30);
      (*(v0 + 8))(v17, v2);
    }

    else
    {
      OUTLINED_FUNCTION_46_7();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
      (*(v21 + 8))(v11, v5);
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_74_2(AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_53();
}

{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_63_5();
  v37 = v4;
  v38 = v5;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_37_5();
  v6 = sub_1DD336AD0();
  OUTLINED_FUNCTION_8_9();
  v36 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  OUTLINED_FUNCTION_8_9();
  v35 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v39 = *v1;
  v40 = *(v1 + 1);
  sub_1DD336AD0();
  v19 = type metadata accessor for Select();
  ExpressionType.expression.getter(v19, &protocol witness table for Select<A>, &v41);
  OUTLINED_FUNCTION_77_3();

  if (!v2)
  {
    v20 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_46_7();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      v25 = OUTLINED_FUNCTION_33_7();
      v26(v25);
      v27 = *(v38 + 48);
      v28 = OUTLINED_FUNCTION_60_6();
      v29(v28);
      (*(v0 + 8))(v18, v3);
    }

    else
    {
      OUTLINED_FUNCTION_46_7();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
      (*(v20 + 8))(v12, v6);
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_74_2(AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_53();
}

uint64_t sub_1DD312BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_48_4(a1, a2);
  result = Connection.run(_:_:)();
  if (!v3)
  {

    v6 = Connection.handle.getter();
    result = sqlite3_last_insert_rowid(v6);
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DD312C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_48_4(a1, a2);
  result = Connection.run(_:_:)();
  if (!v3)
  {

    v6 = Connection.handle.getter();
    result = sqlite3_changes(v6);
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DD312C88(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_1DD31F568(*(a1 + 16), 0);
  OUTLINED_FUNCTION_40_9();
  v5 = sub_1DD328CB0(v4, (v1 + 32), v3, a1);
  sub_1DD29607C();
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1DD312D14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  MEMORY[0x1E12AC540](a2, a3);
  LOBYTE(v3) = sub_1DD336740();

  return v3 & 1;
}

char *sub_1DD312D8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1DD31F568(*(a1 + 16), 0);
  OUTLINED_FUNCTION_40_9();
  v5 = sub_1DD328CB0(v4, (v1 + 32), v2, a1);

  OUTLINED_FUNCTION_57_3();
  sub_1DD29607C();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:
    v1 = MEMORY[0x1E69E7CC0];
  }

  v7 = v1;
  sub_1DD313CA4(&v7);
  return v7;
}

RRSQLite::JoinType_optional __swiftcall JoinType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD336D80();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DD312EF4@<X0>(uint64_t *a1@<X8>)
{
  result = JoinType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

RRSQLite::OnConflict_optional __swiftcall OnConflict.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD336D80();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DD312FA8@<X0>(uint64_t *a1@<X8>)
{
  result = OnConflict.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DD31304C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_87(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD28B9A4(v4, 1, sub_1DD28583C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  OUTLINED_FUNCTION_12_9();
  if (v9 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
  OUTLINED_FUNCTION_83_5();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v5 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v5)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DD313140(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    OUTLINED_FUNCTION_45(v2);
    sub_1DD28C3A8();
    *v1 = v3;
  }
}

uint64_t sub_1DD31318C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *sub_1DD3131F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7178, &qword_1DD33C128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[11 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7138, "\bK");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DD31337C()
{
  OUTLINED_FUNCTION_28_9();
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_46_7();
    OUTLINED_FUNCTION_75_6();
    *v0 = v4;
  }
}

uint64_t sub_1DD3133E0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

unint64_t sub_1DD3134EC()
{
  result = qword_1ECCD7098;
  if (!qword_1ECCD7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD7098);
  }

  return result;
}

unint64_t sub_1DD313540(uint64_t a1)
{
  result = sub_1DD313568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD313568()
{
  result = qword_1ECCD70A0;
  if (!qword_1ECCD70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD70A0);
  }

  return result;
}

unint64_t sub_1DD3135C0()
{
  result = qword_1ECCD70A8;
  if (!qword_1ECCD70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD70A8);
  }

  return result;
}

unint64_t sub_1DD313618()
{
  result = qword_1ECCD70B0[0];
  if (!qword_1ECCD70B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCD70B0);
  }

  return result;
}

uint64_t sub_1DD3136F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DD31372C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DD313768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
  }

  if (a2 < 0 && *(a1 + 24))
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

  return OUTLINED_FUNCTION_6_10(v2);
}

uint64_t sub_1DD3137A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

      return OUTLINED_FUNCTION_52_5(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_52_5(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DD3137F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JoinType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OnConflict(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD313A5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_6_10(-1);
  }

  if (a2 < 0 && *(a1 + 168))
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

  return OUTLINED_FUNCTION_6_10(v2);
}

uint64_t sub_1DD313A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

      return OUTLINED_FUNCTION_52_5(result, a2);
    }

    *(result + 168) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_52_5(result, a2);
    }
  }

  return result;
}

void sub_1DD313AF8()
{
  v1 = *v0;
  sub_1DD296E2C();
  *v0 = v2;
}

void *sub_1DD313B38(void *a1, int64_t a2, char a3)
{
  result = sub_1DD313B58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD313B58(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DD313CA4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DD313C90(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DD313D10(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD313D10(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD336DA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1DD336850();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD313ECC(v7, v8, a1, v4);
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
    return sub_1DD313E04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD313E04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1DD336E00();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD313ECC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1DD336E00();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1DD336E00()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1DD336E00() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD2BBCF8(0, *(v8 + 16) + 1, 1, v8);
        v8 = v83;
      }

      v40 = *(v8 + 16);
      v39 = *(v8 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1DD2BBCF8(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      *(v8 + 16) = v41;
      v42 = v8 + 32;
      v43 = (v8 + 32 + 16 * v40);
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = (v42 + 16 * (v41 - 1));
          v46 = (v8 + 16 * v41);
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = *(v8 + 32);
            v48 = *(v8 + 40);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
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
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = (v42 + 16 * (v44 - 1));
          v77 = *v76;
          v78 = (v42 + 16 * v44);
          v79 = v78[1];
          sub_1DD314500((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = *(v8 + 16);
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove((v42 + 16 * v44), v78 + 2, 16 * (v81 - 1 - v44));
          *(v80 + 16) = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = v42 + 16 * v41;
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1DD3143D4(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1DD3143D4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD30A7CC(v5);
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
    sub_1DD314500((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1DD314500(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1DD336E00() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_1DD336E00() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_72_4();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1DD31471C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_48_4(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD314780(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1DD28C838(a2, a3);
  }

  return result;
}

uint64_t sub_1DD3147D8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_48_4(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1DD314830(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1DD28D008(a2, a3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_74_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_77_3()
{
  v2 = *(v0 - 72);

  return Connection.scalar(_:_:)();
}

__n128 sub_1DD314964@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = type metadata accessor for Expression();
  *(a3 + 24) = v8;
  *(a3 + 32) = &protocol witness table for Expression<A>;
  *a3 = v6;
  *(a3 + 8) = *(a1 + 1);
  *(a3 + 64) = v8;
  *(a3 + 72) = &protocol witness table for Expression<A>;
  *(a3 + 40) = v7;
  result = *(a2 + 1);
  *(a3 + 48) = result;
  return result;
}

__n128 sub_1DD3149D8@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  sub_1DD336AD0();
  *(a3 + 24) = type metadata accessor for Expression();
  *(a3 + 32) = &protocol witness table for Expression<A>;
  *a3 = v6;
  *(a3 + 8) = *(a1 + 1);
  *(a3 + 64) = type metadata accessor for Expression();
  *(a3 + 72) = &protocol witness table for Expression<A>;
  *(a3 + 40) = v7;
  result = *(a2 + 1);
  *(a3 + 48) = result;
  return result;
}

__n128 sub_1DD314A70@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  sub_1DD336AD0();
  v8 = type metadata accessor for Expression();
  *(a3 + 24) = v8;
  *(a3 + 32) = &protocol witness table for Expression<A>;
  *a3 = v6;
  *(a3 + 8) = *(a1 + 1);
  *(a3 + 64) = v8;
  *(a3 + 72) = &protocol witness table for Expression<A>;
  *(a3 + 40) = v7;
  result = *(a2 + 1);
  *(a3 + 48) = result;
  return result;
}

uint64_t <- infix<A>(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD314B54(a1, a2, a3, a4, sub_1DD314964);
}

{
  return sub_1DD314B54(a1, a2, a3, a4, sub_1DD3149D8);
}

{
  return sub_1DD314B54(a1, a2, a3, a4, sub_1DD314A70);
}

uint64_t sub_1DD314B54(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *))
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = v6;
  v11[0] = v7;
  v11[1] = v8;
  v11[2] = v9;
  a5(v12, v11);
}

uint64_t += infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1DD314D38(a1, a2, &qword_1ECCD65A8, &qword_1DD339260, sub_1DD312FF8);
}

{
  return sub_1DD314D38(a1, a2, &qword_1ECCD65C0, &qword_1DD339278, sub_1DD31300C);
}

uint64_t += infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1DD314E30(a1, a2, a3, &qword_1ECCD65A8, &qword_1DD339260, sub_1DD312FF8);
}

{
  return sub_1DD314E30(a1, a2, a3, &qword_1ECCD65C0, &qword_1DD339278, sub_1DD31300C);
}

uint64_t += infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD314F88(a1, a2, a3, a4, a5, + infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, + infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, + infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, + infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, + infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t sub_1DD314F88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v8 = OUTLINED_FUNCTION_0_14(a1);
  v10 = OUTLINED_FUNCTION_2_6(v8, v9);
  v11(v10);
  OUTLINED_FUNCTION_4_13();
  a7();
}

uint64_t sub_1DD315068(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  OUTLINED_FUNCTION_0_14(a1);
  OUTLINED_FUNCTION_6_12();
  v8();
  OUTLINED_FUNCTION_4_13();
  a7();
}

uint64_t -= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD314F88(a1, a2, a3, a4, a5, - infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, - infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, - infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, - infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, - infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t sub_1DD315148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11[4] = &protocol witness table for Expression<A>;
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6660, &qword_1DD339358);
  v10[3] = MEMORY[0x1E69E6530];
  v10[4] = &protocol witness table for Int;
  v10[0] = a4;

  sub_1DD313020(v11, v10, 1, a5, 0xE100000000000000, a6);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t *= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD314F88(a1, a2, a3, a4, a5, * infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, * infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, * infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, * infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, * infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t /= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DD314F88(a1, a2, a3, a4, a5, / infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, / infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, / infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD314F88(a1, a2, a3, a4, a5, / infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD315068(a1, a2, a3, a4, a5, / infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t %= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, % infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, % infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, % infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, % infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, % infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t sub_1DD3154D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v7 = OUTLINED_FUNCTION_0_14(a1);
  v9 = OUTLINED_FUNCTION_2_6(v7, v8);
  v10(v9);
  OUTLINED_FUNCTION_4_13();
  a6();
}

uint64_t sub_1DD3155B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_0_14(a1);
  OUTLINED_FUNCTION_6_12();
  v7();
  OUTLINED_FUNCTION_4_13();
  a6();
}

uint64_t <<= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, << infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, << infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, << infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, << infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, << infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t >>= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, >> infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, >> infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, >> infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, >> infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, >> infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t &= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, & infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, & infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, & infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, & infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, & infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t |= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, | infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, | infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, | infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, | infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, | infix<A>(_:_:), <- infix<A>(_:_:));
}

uint64_t ^= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1DD3154D0(a1, a2, a3, a4, ^ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, ^ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, ^ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3154D0(a1, a2, a3, a4, ^ infix<A>(_:_:), <- infix<A>(_:_:));
}

{
  return sub_1DD3155B0(a1, a2, a3, a4, ^ infix<A>(_:_:), <- infix<A>(_:_:));
}

double ++ postfix<A>(_:)(uint64_t *a1)
{
  return sub_1DD315A9C(a1);
}

{
  return sub_1DD315B48(a1);
}

double -- postfix<A>(_:)(uint64_t *a1)
{
  return sub_1DD315A9C(a1);
}

{
  return sub_1DD315B48(a1);
}

double sub_1DD315A9C(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_13(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6660, &qword_1DD339358);
  type metadata accessor for Expression();
  sub_1DD315BF8();

  v4 = OUTLINED_FUNCTION_3_14();
  v12 = OUTLINED_FUNCTION_8_10(v4, v5, v6, v7, v8, v9, v10, v11, v3);
  OUTLINED_FUNCTION_5_9(v12, v13, v14, v15, v16, v17, v18, v19, v21, v1, v2, v24, v25, v26);
  *&result = OUTLINED_FUNCTION_7_10(v22, v22, v23).n128_u64[0];
  return result;
}

double sub_1DD315B48(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_13(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6660, &qword_1DD339358);
  sub_1DD336AD0();
  type metadata accessor for Expression();
  sub_1DD315BF8();

  v4 = OUTLINED_FUNCTION_3_14();
  v12 = OUTLINED_FUNCTION_8_10(v4, v5, v6, v7, v8, v9, v10, v11, v3);
  OUTLINED_FUNCTION_5_9(v12, v13, v14, v15, v16, v17, v18, v19, v21, v1, v2, v24, v25, v26);
  *&result = OUTLINED_FUNCTION_7_10(v22, v22, v23).n128_u64[0];
  return result;
}

unint64_t sub_1DD315BF8()
{
  result = qword_1ECCD7180;
  if (!qword_1ECCD7180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6660, &qword_1DD339358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD7180);
  }

  return result;
}

uint64_t sub_1DD315C64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DD315CA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t QueryError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  switch(*(v0 + 24))
  {
    case 1:
      OUTLINED_FUNCTION_1_13();
      sub_1DD336C00();

      OUTLINED_FUNCTION_2_7();
      v14 = v10;
      v11 = OUTLINED_FUNCTION_0_15();
      MEMORY[0x1E12AC540](v11);
      MEMORY[0x1E12AC540](0x6C6F63206E692060, 0xED000020736E6D75);
      v12 = MEMORY[0x1E12AC670](v3, MEMORY[0x1E69E6158]);
      MEMORY[0x1E12AC540](v12);

      return v14;
    case 2:
      OUTLINED_FUNCTION_1_13();
      sub_1DD336C00();

      v14 = 0xD000000000000012;
      v6 = OUTLINED_FUNCTION_0_15();
      MEMORY[0x1E12AC540](v6);
      MEMORY[0x1E12AC540](0xD000000000000018, 0x80000001DD33E9C0);
      v7 = MEMORY[0x1E12AC670](v3, MEMORY[0x1E69E6158]);
      MEMORY[0x1E12AC540](v7);

      v4 = 41;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_1_13();
      sub_1DD336C00();

      OUTLINED_FUNCTION_2_7();
      v14 = v8 + 18;
      v9 = OUTLINED_FUNCTION_0_15();
      MEMORY[0x1E12AC540](v9);
      v4 = 96;
LABEL_5:
      v5 = 0xE100000000000000;
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_1_13();
      sub_1DD336C00();

      v14 = 0x2068637573206F4ELL;
      v4 = OUTLINED_FUNCTION_0_15();
LABEL_6:
      MEMORY[0x1E12AC540](v4, v5);
      return v14;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DD315F04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
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

uint64_t sub_1DD315F44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

Swift::String __swiftcall SchemaType.drop(ifExists:)(Swift::Bool ifExists)
{
  v3 = *(v1 + 8);
  sub_1DD2C68C4();
  sub_1DD28C4F0();
  sub_1DD31620C(0x454C424154, 0xE500000000000000, v7, ifExists);
  OUTLINED_FUNCTION_28_10();
  v4 = OUTLINED_FUNCTION_13_10(v7);
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1DD31620C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  *&v34 = 0x20504F5244;
  *(&v34 + 1) = 0xE500000000000000;
  MEMORY[0x1E12AC540](a1, a2);
  v9 = v34;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v9;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v10;
  if (a4)
  {
    v11 = xmmword_1DD33C2C0;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = &protocol witness table for Expression<A>;
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0uLL;
  }

  *(inited + 96) = v10;
  *(inited + 104) = v13;
  *(inited + 72) = v11;
  *(inited + 88) = v12;
  sub_1DD2855A0(a3, inited + 112);
  v14 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 152; i += 40)
  {
    sub_1DD2892A8(inited + i, &v34, &qword_1ECCD7070, &qword_1DD33BAB8);
    v27 = v34;
    v28 = v35;
    v29 = v36;
    if (*(&v35 + 1))
    {
      sub_1DD3148E8(&v27, &v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v14 + 16);
        sub_1DD3131D4();
        v14 = v18;
      }

      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_1DD3131D4();
        v14 = v19;
      }

      *(v14 + 16) = v16 + 1;
      sub_1DD3148E8(&v30, v14 + 40 * v16 + 32);
    }

    else
    {
      sub_1DD28C87C(&v27, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  sub_1DD313344();
  sub_1DD284AFC(v14, 32, 0xE100000000000000, v20, v21, v22, v23, v24, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, v30, *(&v30 + 1), v31, v32, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38, v39);

  __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(&v34);
  return countAndFlagsBits;
}

void Table.create(temporary:ifNotExists:withoutRowid:block:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_88_4();
  type metadata accessor for TableBuilder();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA70;
  if (!v60)
  {
  }

  sub_1DD289944(&v57);

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  sub_1DD316784(0x454C424154, 0xE500000000000000, &v57, v10, v5 & 1);
  __swift_destroy_boxed_opaque_existential_1(&v57);
  swift_beginAccess();
  v11 = *(v8 + 16);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 96) = v12;
  *(inited + 104) = &protocol witness table for Expression<A>;

  sub_1DD284AFC(v13, 8236, 0xE200000000000000, v14, v15, v16, v17, v18, v47, *(&v47 + 1), v48, *(&v48 + 1), v49, v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59);

  sub_1DD314890(&v57, 0, 0xE000000000000000);
  __swift_destroy_boxed_opaque_existential_1(&v57);
  if (v3)
  {
    v19 = xmmword_1DD33C2D0;
    v20 = MEMORY[0x1E69E7CC0];
    v21 = &protocol witness table for Expression<A>;
  }

  else
  {
    v12 = 0;
    *&v19 = OUTLINED_FUNCTION_77_4();
  }

  *(inited + 136) = v12;
  *(inited + 144) = v21;
  *(inited + 112) = v19;
  v22 = 32;
  *(inited + 128) = v20;
  v23 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1DD2892A8(inited + v22, &v57, &qword_1ECCD7070, &qword_1DD33BAB8);
    v47 = v57;
    v48 = v58;
    OUTLINED_FUNCTION_70_6();
    if (v32)
    {
      sub_1DD3148E8(&v47, &v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v23 + 16);
        sub_1DD3131D4();
        v23 = v38;
      }

      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_45(v33);
        sub_1DD3131D4();
        v23 = v39;
      }

      *(v23 + 16) = v34 + 1;
      OUTLINED_FUNCTION_111_2(v23 + 40 * v34, v47, *(&v47 + 1), v48, *(&v48 + 1), v49, v50);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_60_7(v24, v25, v26, v27, v28, v29, v30, v31, v47);
      sub_1DD28C87C(v35, v36, &qword_1DD33BAB8);
    }

    v22 += 40;
  }

  while (v22 != 152);
  swift_setDeallocating();
  sub_1DD313344();
  OUTLINED_FUNCTION_24_6(v23, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, *(&v48 + 1), v49, v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59);

  __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
  OUTLINED_FUNCTION_47_5();
  Expressible.asSQL()();
  OUTLINED_FUNCTION_84_6();

  __swift_destroy_boxed_opaque_existential_1(&v57);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD316784(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  v10 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33BA90;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x455441455243;
  *(inited + 40) = 0xE600000000000000;
  v13 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v12;
  if (v10 == 2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v14 = 0x455551494E55;
    if (a4)
    {
      v14 = 0x5241524F504D4554;
    }

    v15 = 0xE900000000000059;
    if ((a4 & 1) == 0)
    {
      v15 = 0xE600000000000000;
    }

    v18 = &protocol witness table for Expression<A>;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v12;
  }

  *(inited + 72) = v14;
  *(inited + 80) = v15;
  *(inited + 88) = v16;
  *(inited + 96) = v17;
  *(inited + 136) = v12;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 104) = v18;
  *(inited + 112) = a1;
  *(inited + 120) = a2;
  *(inited + 128) = v13;
  if (a5)
  {
    v19 = xmmword_1DD33C2E0;
    v20 = MEMORY[0x1E69E7CC0];
    v21 = &protocol witness table for Expression<A>;
  }

  else
  {
    *&v19 = OUTLINED_FUNCTION_77_4();
  }

  *(inited + 176) = v12;
  *(inited + 184) = v21;
  *(inited + 152) = v19;
  *(inited + 168) = v20;
  sub_1DD2855A0(a3, inited + 192);

  v22 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 232; i += 40)
  {
    sub_1DD2892A8(inited + i, &v44, &qword_1ECCD7070, &qword_1DD33BAB8);
    v37 = v44;
    v38 = v45;
    OUTLINED_FUNCTION_70_6();
    if (v24)
    {
      if ((OUTLINED_FUNCTION_90_4(&v37, &v40) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
        v22 = v26;
      }

      v25 = *(v22 + 16);
      if (v25 >= *(v22 + 24) >> 1)
      {
        OUTLINED_FUNCTION_64_6();
        v22 = v27;
      }

      *(v22 + 16) = v25 + 1;
      OUTLINED_FUNCTION_111_2(v22 + 40 * v25, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v40);
    }

    else
    {
      sub_1DD28C87C(&v37, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v28 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v28, v29, v30, v31, v32, v33, v34, v35, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v40, *(&v40 + 1), v41, v42, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, v48, v49);
}

void Table.addColumn<A>(_:check:defaultValue:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  OUTLINED_FUNCTION_73_4(v1);
  OUTLINED_FUNCTION_22_10();
  v37[3] = type metadata accessor for Expression();
  v37[4] = &protocol witness table for Expression<A>;
  v37[0] = v8;
  v37[1] = v7;
  v37[2] = v9;
  v14 = *(v3 + 40);

  v15 = OUTLINED_FUNCTION_96_1();
  v14(v15);
  v36 = 2;
  if (v12)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
    v17 = &protocol witness table for Expression<A>;
    v18 = v11;
    v19 = v12;
    v20 = v13;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_0_16();
  }

  v35[0] = v18;
  v35[1] = v19;
  v35[2] = v20;
  v35[3] = v16;
  v35[4] = v17;
  v21 = *(v3 + 8);
  v34[3] = v5;
  v34[4] = v21;
  __swift_allocate_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_10_9();
  (*(v22 + 16))();
  v32 = xmmword_1DD33C2F0;
  memset(v33, 0, sizeof(v33));
  sub_1DD28C838(v11, v12);
  OUTLINED_FUNCTION_71_7();
  sub_1DD316BD8(v23, v24, v25, v26, v27, v28, v29, v30, v31, v33, &v32);

  sub_1DD28C87C(v33, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v34);
  OUTLINED_FUNCTION_56_8(v35);
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_1DD317118(v38);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(v38);
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = v6;
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  OUTLINED_FUNCTION_79_5(v56, v1);
  OUTLINED_FUNCTION_22_10();
  v55[3] = type metadata accessor for Expression();
  v55[4] = &protocol witness table for Expression<A>;
  v55[0] = v9;
  v55[1] = v8;
  v55[2] = v10;
  v15 = *(v3 + 40);

  v16 = v15(v5, v3);
  v18 = v17;
  v54[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  v54[4] = &protocol witness table for Expression<A>;
  v54[0] = v12;
  v54[1] = v13;
  v54[2] = v14;
  v19 = *(v3 + 8);
  v53[3] = v5;
  v53[4] = v19;
  __swift_allocate_boxed_opaque_existential_1(v53);
  OUTLINED_FUNCTION_10_9();
  (*(v20 + 16))();
  OUTLINED_FUNCTION_99_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v21 = OUTLINED_FUNCTION_89_3();
  *(v21 + 16) = xmmword_1DD33C300;
  sub_1DD2855A0(v55, v21 + 32);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v21 + 104) = &protocol witness table for Expression<A>;
  *(v21 + 72) = v16;
  *(v21 + 80) = v18;
  v23 = MEMORY[0x1E69E7CC0];
  *(v21 + 88) = MEMORY[0x1E69E7CC0];
  *(v21 + 96) = v22;
  *(v21 + 112) = 0u;
  *(v21 + 128) = 0u;
  *(v21 + 176) = v22;
  *(v21 + 184) = &protocol witness table for Expression<A>;
  *(v21 + 144) = 0;
  *(v21 + 152) = 0x4C4C554E20544F4ELL;
  *(v21 + 160) = 0xE800000000000000;
  *(v21 + 168) = v23;
  *(v21 + 192) = 0u;
  *(v21 + 208) = 0u;
  *(v21 + 224) = 0;
  sub_1DD2892A8(v54, __src, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&__src[1] + 1))
  {
    sub_1DD3148E8(__src, __dst);

    sub_1DD31E688(__dst);
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_98_3();
  }

  sub_1DD2892A8(v53, __src, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&__src[1] + 1))
  {
    sub_1DD3148E8(__src, __dst);
    OUTLINED_FUNCTION_3_15();
    *&v47 = v24;
    *(&v47 + 1) = v25;
    OUTLINED_FUNCTION_86_3();
    v26 = v47;
    *(v21 + 296) = v22;
    *(v21 + 304) = &protocol witness table for Expression<A>;
    sub_1DD314890(__dst, v26, *(&v26 + 1));

    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    *(v21 + 304) = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
  }

  sub_1DD2892A8(v52, __src, &qword_1ECCD7188, &qword_1DD33C320);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_92_3(__dst);
    sub_1DD28C87C(__dst, &qword_1ECCD7190, &qword_1DD33C328);
  }

  else
  {
    OUTLINED_FUNCTION_19_6();
  }

  *(v21 + 384) = 0;
  *(v21 + 352) = 0u;
  *(v21 + 368) = 0u;
  v27 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    OUTLINED_FUNCTION_57_4();
    sub_1DD2892A8(v29, v30, v31, v32);
    v47 = __src[0];
    v48 = __src[1];
    v49 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      if ((OUTLINED_FUNCTION_90_4(&v47, __dst) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
        v27 = v34;
      }

      v33 = *(v27 + 16);
      if (v33 >= *(v27 + 24) >> 1)
      {
        OUTLINED_FUNCTION_25_5();
        v27 = v35;
      }

      *(v27 + 16) = v33 + 1;
      sub_1DD3148E8(__dst, v27 + 40 * v33 + 32);
    }

    else
    {
      sub_1DD28C87C(&v47, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v36 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49, v50);

  sub_1DD28C87C(v52, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_56_8(v53);
  OUTLINED_FUNCTION_56_8(v54);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_1DD317118(__src);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_13_10(__src);
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v72 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_1DD336AD0();
  OUTLINED_FUNCTION_1_0(v11);
  v77 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v70 - v16;
  v18 = *v10;
  v17 = v10[1];
  v19 = v10[2];
  v20 = v8[1];
  v71 = *v8;
  v21 = v8[2];
  memcpy(v90, v1, sizeof(v90));
  v74 = v11;
  v89[3] = type metadata accessor for Expression();
  v89[4] = &protocol witness table for Expression<A>;
  v89[0] = v18;
  v89[1] = v17;
  v89[2] = v19;
  v22 = *(v3 + 40);

  v23 = OUTLINED_FUNCTION_95_2();
  v76 = v22(v23);
  v78 = v24;
  v73 = v21;
  if (v20)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
    v26 = &protocol witness table for Expression<A>;
    v27 = v71;
  }

  else
  {
    v27 = 0;
    v21 = 0;
    v25 = 0;
    v26 = 0;
  }

  v88[0] = v27;
  v88[1] = v20;
  v88[2] = v21;
  v88[3] = v25;
  v88[4] = v26;
  v28 = v77;
  v29 = v75;
  (*(v77 + 16))(v75, v72, v74);
  OUTLINED_FUNCTION_74_3(v29);
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_68_5();
    sub_1DD28C838(v31, v32);
    v33 = *(v28 + 8);
    v34 = OUTLINED_FUNCTION_79();
    v35(v34);
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
  }

  else
  {
    v36 = *(v3 + 8);
    *(&v86 + 1) = v5;
    v87 = v36;
    __swift_allocate_boxed_opaque_existential_1(&v85);
    OUTLINED_FUNCTION_10_9();
    (*(v37 + 32))();
    v38 = OUTLINED_FUNCTION_68_5();
    sub_1DD28C838(v38, v39);
  }

  OUTLINED_FUNCTION_99_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v40 = OUTLINED_FUNCTION_89_3();
  *(v40 + 16) = xmmword_1DD33C300;
  sub_1DD2855A0(v89, v40 + 32);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v40 + 104) = &protocol witness table for Expression<A>;
  v42 = v78;
  *(v40 + 72) = v76;
  *(v40 + 80) = v42;
  OUTLINED_FUNCTION_63_6(v41, MEMORY[0x1E69E7CC0]);
  sub_1DD2892A8(v88, v83, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&v83[1] + 1))
  {
    sub_1DD3148E8(v83, v80);

    sub_1DD31E688(v80);
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    OUTLINED_FUNCTION_53_6();
  }

  sub_1DD2892A8(&v85, v83, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&v83[1] + 1))
  {
    sub_1DD3148E8(v83, v80);
    OUTLINED_FUNCTION_3_15();
    *&v81[0] = v43;
    *(&v81[0] + 1) = v44;
    OUTLINED_FUNCTION_86_3();
    v45 = v81[0];
    *(v40 + 296) = v41;
    *(v40 + 304) = &protocol witness table for Expression<A>;
    sub_1DD314890(v80, v45, *(&v45 + 1));

    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    OUTLINED_FUNCTION_78_4();
  }

  sub_1DD2892A8(v84, v83, &qword_1ECCD7188, &qword_1DD33C320);
  if (*(&v83[1] + 1))
  {
    memcpy(v80, v83, sizeof(v80));
    OUTLINED_FUNCTION_92_3(v80);
    sub_1DD28C87C(v80, &qword_1ECCD7190, &qword_1DD33C328);
  }

  else
  {
    OUTLINED_FUNCTION_19_6();
  }

  *(v40 + 384) = 0;
  *(v40 + 352) = 0u;
  *(v40 + 368) = 0u;
  v46 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    OUTLINED_FUNCTION_57_4();
    sub_1DD2892A8(v48, v49, v50, v51);
    v81[0] = v83[0];
    v81[1] = v83[1];
    v82 = *&v83[2];
    if (*(&v83[1] + 1))
    {
      if ((OUTLINED_FUNCTION_90_4(v81, v80) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
        v46 = v54;
      }

      v53 = *(v46 + 16);
      v52 = *(v46 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_45(v52);
        OUTLINED_FUNCTION_64_6();
        v46 = v55;
      }

      *(v46 + 16) = v53 + 1;
      sub_1DD3148E8(v80, v46 + 40 * v53 + 32);
    }

    else
    {
      sub_1DD28C87C(v81, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v56 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v56, v57, v58, v59, v60, v61, v62, v63, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, *&v80[0], *(&v80[0] + 1), *&v80[1], *(&v80[1] + 1), *&v80[2], *(&v80[2] + 1), *&v80[3], *(&v80[3] + 1));

  sub_1DD28C87C(v84, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v64, v65, v66);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v67, v68, v69);
  __swift_destroy_boxed_opaque_existential_1(v89);
  sub_1DD317118(v83);
  OUTLINED_FUNCTION_84_6();
  __swift_destroy_boxed_opaque_existential_1(v83);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_1();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v65 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_1DD336AD0();
  OUTLINED_FUNCTION_1_0(v11);
  v64 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v61 - v16;
  v17 = *v10;
  v18 = v10[1];
  v19 = v10[2];
  v20 = v8[1];
  v61 = *v8;
  v62 = v20;
  v21 = v8[2];
  memcpy(v79, v1, sizeof(v79));
  v78[3] = type metadata accessor for Expression();
  v78[4] = &protocol witness table for Expression<A>;
  v78[0] = v17;
  v78[1] = v18;
  v78[2] = v19;
  v22 = *(v3 + 40);

  v23 = v3;
  v24 = v22(v5, v3);
  v25 = v21;
  v66 = v24;
  v27 = v26;
  v77[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7068, &qword_1DD33BAB0);
  v77[4] = &protocol witness table for Expression<A>;
  v28 = v63;
  v29 = v64;
  v77[0] = v61;
  v77[1] = v62;
  v77[2] = v25;
  (*(v64 + 16))(v63, v65, v11);
  OUTLINED_FUNCTION_74_3(v28);
  if (v30)
  {
    v31 = *(v29 + 8);

    v31(v28, v11);
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
  }

  else
  {
    v32 = *(v23 + 8);
    *(&v75 + 1) = v5;
    v76 = v32;
    __swift_allocate_boxed_opaque_existential_1(&v74);
    OUTLINED_FUNCTION_10_9();
    v34 = *(v33 + 32);
    OUTLINED_FUNCTION_39_9();
    v35();
  }

  memset(v73, 0, sizeof(v73));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  v36 = OUTLINED_FUNCTION_89_3();
  *(v36 + 16) = xmmword_1DD33C300;
  sub_1DD2855A0(v78, v36 + 32);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(v36 + 104) = &protocol witness table for Expression<A>;
  *(v36 + 72) = v66;
  *(v36 + 80) = v27;
  OUTLINED_FUNCTION_63_6(v37, MEMORY[0x1E69E7CC0]);
  sub_1DD2892A8(v77, v72, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&v72[1] + 1))
  {
    sub_1DD3148E8(v72, v69);

    sub_1DD31E688(v69);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    OUTLINED_FUNCTION_53_6();
  }

  sub_1DD2892A8(&v74, v72, &qword_1ECCD7070, &qword_1DD33BAB8);
  if (*(&v72[1] + 1))
  {
    sub_1DD3148E8(v72, v69);
    OUTLINED_FUNCTION_3_15();
    *&v70[0] = v38;
    *(&v70[0] + 1) = v39;
    OUTLINED_FUNCTION_86_3();
    v40 = v70[0];
    *(v36 + 296) = v37;
    *(v36 + 304) = &protocol witness table for Expression<A>;
    sub_1DD314890(v69, v40, *(&v40 + 1));

    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    OUTLINED_FUNCTION_78_4();
  }

  sub_1DD2892A8(v73, v72, &qword_1ECCD7188, &qword_1DD33C320);
  v67 = v27;
  if (*(&v72[1] + 1))
  {
    memcpy(v69, v72, sizeof(v69));
    OUTLINED_FUNCTION_92_3(v69);
    sub_1DD28C87C(v69, &qword_1ECCD7190, &qword_1DD33C328);
  }

  else
  {
    OUTLINED_FUNCTION_19_6();
  }

  *(v36 + 384) = 0;
  *(v36 + 352) = 0u;
  *(v36 + 368) = 0u;
  v41 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    sub_1DD2892A8(v36 + i, v72, &qword_1ECCD7070, &qword_1DD33BAB8);
    v70[0] = v72[0];
    v70[1] = v72[1];
    v71 = *&v72[2];
    if (*(&v72[1] + 1))
    {
      if ((OUTLINED_FUNCTION_90_4(v70, v69) & 1) == 0)
      {
        OUTLINED_FUNCTION_9_14();
        v41 = v45;
      }

      v44 = *(v41 + 16);
      v43 = *(v41 + 24);
      if (v44 >= v43 >> 1)
      {
        OUTLINED_FUNCTION_45(v43);
        OUTLINED_FUNCTION_64_6();
        v41 = v46;
      }

      *(v41 + 16) = v44 + 1;
      sub_1DD3148E8(v69, v41 + 40 * v44 + 32);
    }

    else
    {
      sub_1DD28C87C(v70, &qword_1ECCD7070, &qword_1DD33BAB8);
    }
  }

  swift_setDeallocating();
  v47 = sub_1DD313344();
  OUTLINED_FUNCTION_19_5(v47, v48, v49, v50, v51, v52, v53, v54, v61, v62, v63, v64, v65, v66, v67, v68, *&v69[0], *(&v69[0] + 1), *&v69[1], *(&v69[1] + 1), *&v69[2], *(&v69[2] + 1), *&v69[3], *(&v69[3] + 1), *&v69[4], *(&v69[4] + 1));

  sub_1DD28C87C(v73, &qword_1ECCD7188, &qword_1DD33C320);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v55, v56, v57);
  OUTLINED_FUNCTION_46_8();
  sub_1DD28C87C(v58, v59, v60);
  __swift_destroy_boxed_opaque_existential_1(v78);
  sub_1DD317118(v72);
  OUTLINED_FUNCTION_84_6();
  __swift_destroy_boxed_opaque_existential_1(v72);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_1();
}