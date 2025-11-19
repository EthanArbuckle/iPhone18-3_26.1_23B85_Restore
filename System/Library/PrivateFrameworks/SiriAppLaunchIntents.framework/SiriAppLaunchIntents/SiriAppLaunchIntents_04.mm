uint64_t sub_266115654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2661156B8(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266115714(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for BaseDialogProvider();
  v16[3] = v6;
  v16[4] = &off_2877CAA90;
  v16[0] = a1;
  type metadata accessor for LaunchAppConfirmationStrategy();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_26611583C(*v11, a2, a3, v7);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_26611583C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14[3] = sub_26618B470();
  v14[4] = MEMORY[0x277D5BD58];
  v14[0] = a2;
  v13[3] = type metadata accessor for BaseDialogProvider();
  v13[4] = &off_2877CAA90;
  v13[0] = a1;
  sub_2660C5864(v14, a4 + 16);
  sub_2660C5864(v13, a4 + 56);
  sub_2660C5864(a3, __src);
  sub_2660C5864(a4 + 16, &__src[5]);
  v8 = sub_26618C8A0();
  LODWORD(a1) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  LOBYTE(__src[11]) = a1 == 1;
  sub_2660C5864(__src, v11);
  type metadata accessor for LocUtil();
  v9 = swift_allocObject();
  sub_2660CD484(v11, v9 + 16);
  __src[10] = v9;
  memcpy((a4 + 96), __src, 0x59uLL);
  return a4;
}

uint64_t OUTLINED_FUNCTION_6_10()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[22];
  result = v0[15];
  v8 = v0[13];
  v9 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_8(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_2661159F4()
{
  sub_26618B810();
  type metadata accessor for BaseDialogProvider();
  v0 = swift_allocObject();
  v1 = sub_26618B470();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  v4 = sub_26618B460();
  v5 = sub_26618C460();

  v10[3] = v5;
  v10[4] = &off_2877CC660;
  v10[0] = sub_26618C450();
  sub_26618B810();
  type metadata accessor for LocUtil();
  v6 = swift_allocObject();
  sub_2660CD484(v9, (v6 + 2));
  sub_2660CFC00(v10, v9);
  v7 = sub_266118B14(v11, v0, v4, v9, v6);

  sub_2660CFC5C(v10);
  return v7;
}

uint64_t sub_266115B00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v113 = a1;
  v131 = a2;
  v2 = sub_26618B840();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v117 = v4;
  v118 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v116 = v7;
  OUTLINED_FUNCTION_18_2();
  v8 = type metadata accessor for AppLaunchIntent();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_6();
  v121 = v12;
  OUTLINED_FUNCTION_18_2();
  v13 = sub_26618C0E0();
  v14 = OUTLINED_FUNCTION_2_2(v13);
  v122 = v15;
  v123 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_6();
  v120 = v18;
  OUTLINED_FUNCTION_18_2();
  v19 = sub_26618B800();
  v132 = OUTLINED_FUNCTION_2_2(v19);
  v133 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_24_1();
  v119 = v23 - v24;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_5();
  v124 = v26;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v112 - v28;
  v30 = sub_26618B7F0();
  v128 = OUTLINED_FUNCTION_2_2(v30);
  v129 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_4_6();
  v130 = v34;
  OUTLINED_FUNCTION_18_2();
  v35 = sub_26618C6B0();
  v36 = OUTLINED_FUNCTION_2_2(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_1();
  v115 = (v41 - v42);
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_17_5();
  v114 = v44;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_17_5();
  v47 = v46;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v48);
  v50 = &v112 - v49;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v51 = __swift_project_value_buffer(v35, qword_2814B4A98);
  v52 = *(v38 + 16);
  v125 = v51;
  v126 = v52;
  v127 = v38 + 16;
  (v52)(v50);
  v53 = sub_26618C690();
  v54 = sub_26618CAA0();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = OUTLINED_FUNCTION_6_2();
    *v55 = 0;
    _os_log_impl(&dword_2660B7000, v53, v54, "LaunchAppDisambiguationStrategy.actionForInput() called", v55, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v57 = v38 + 8;
  v56 = *(v38 + 8);
  v58 = v35;
  v56(v50, v35);
  sub_26618B770();
  v59 = v132;
  v60 = v133;
  v61 = v133[11];
  if (v61(v29, v132) != *MEMORY[0x277D5C150])
  {
    (v60[1])(v29, v59);
    v66 = v59;
    goto LABEL_13;
  }

  v112 = v57;
  (v60[12])(v29, v59);
  v62 = v128;
  (*(v129 + 32))(v130, v29, v128);
  if (sub_26618B7D0() == 0xD000000000000030 && 0x80000002661983D0 == v63)
  {

    goto LABEL_19;
  }

  v65 = sub_26618D000();

  if (v65)
  {
LABEL_19:
    v126(v47, v125, v58);
    v88 = sub_26618C690();
    v89 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v89))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_26_2(&dword_2660B7000, v90, v91, "LaunchAppDisambiguationStrategy.actionForInput() directInvocation handling");
      v62 = v128;
      OUTLINED_FUNCTION_7_2();
    }

    v56(v47, v58);
    sub_26618B2A0();
    return (*(v129 + 8))(v130, v62);
  }

  (*(v129 + 8))(v130, v62);
  v66 = v132;
LABEL_13:
  v67 = v124;
  sub_26618B770();
  v68 = OUTLINED_FUNCTION_20_10();
  v69 = (v61)(v68);
  if (v69 == *MEMORY[0x277D5C128])
  {
    v70 = v133;
    v71 = v133[12];
    v72 = OUTLINED_FUNCTION_20_10();
    v73(v72);
    v74 = v67;
    v76 = v122;
    v75 = v123;
    v77 = v120;
    (*(v122 + 32))(v120, v74, v123);
    (*(v76 + 16))(v121, v77, v75);
    if (sub_2660C97B4())
    {
      sub_26618B290();
      OUTLINED_FUNCTION_6_11();
      return (*(v76 + 8))(v77, v75);
    }

    OUTLINED_FUNCTION_6_11();
    (*(v76 + 8))(v77, v75);
    v92 = v132;
  }

  else
  {
    if (v69 == *MEMORY[0x277D5C160])
    {
      v79 = v133[12];
      v80 = OUTLINED_FUNCTION_20_10();
      v81(v80);
      v82 = v117;
      v83 = v67;
      v84 = v116;
      (*(v117 + 32))(v116, v83, v118);
      sub_2661177A0(v84, v113, v131);
      v85 = *(v82 + 8);
      v86 = OUTLINED_FUNCTION_20_10();
      return v87(v86);
    }

    v70 = v133;
    v93 = v133[1];
    v94 = OUTLINED_FUNCTION_20_10();
    v95(v94);
    v92 = v66;
  }

  v96 = v119;
  sub_26618B770();
  v97 = sub_2661123A8(v96);
  (v70[1])(v96, v92);
  if (v97)
  {
    v98 = v114;
    v99 = OUTLINED_FUNCTION_25_6();
    v100(v99);
    v101 = sub_26618C690();
    v102 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v102))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_26_2(&dword_2660B7000, v103, v104, "LaunchAppDisambiguationStrategy.actionForInput() handling");
      OUTLINED_FUNCTION_7_2();
    }

    v56(v98, v58);
    return sub_26618B2A0();
  }

  else
  {
    v105 = v115;
    v106 = OUTLINED_FUNCTION_25_6();
    v107(v106);
    v108 = sub_26618C690();
    v109 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v109))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_26_2(&dword_2660B7000, v110, v111, "LaunchAppDisambiguationStrategy.actionForInput() ignoring");
      OUTLINED_FUNCTION_7_2();
    }

    v56(v105, v58);
    return sub_26618B2B0();
  }
}

uint64_t sub_26611635C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  v3[13] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v3[14] = OUTLINED_FUNCTION_8_2();
  v7 = type metadata accessor for AppLaunchDataModels.App(0);
  OUTLINED_FUNCTION_0_4(v7);
  v3[15] = v8;
  v10 = *(v9 + 64);
  v3[16] = OUTLINED_FUNCTION_8_2();
  v11 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v11);
  v13 = *(v12 + 64);
  v3[17] = OUTLINED_FUNCTION_8_2();
  v14 = sub_26618B6A0();
  v3[18] = v14;
  OUTLINED_FUNCTION_0_4(v14);
  v3[19] = v15;
  v17 = *(v16 + 64);
  v3[20] = OUTLINED_FUNCTION_8_2();
  v18 = sub_26618B440();
  v3[21] = v18;
  OUTLINED_FUNCTION_0_4(v18);
  v3[22] = v19;
  v21 = *(v20 + 64);
  v3[23] = OUTLINED_FUNCTION_8_2();
  v22 = sub_26618C6B0();
  v3[24] = v22;
  OUTLINED_FUNCTION_0_4(v22);
  v3[25] = v23;
  v25 = *(v24 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266116548, 0, 0);
}

void sub_266116548()
{
  v80 = v0;
  if (qword_2814B2C40 != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_0_3();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v72 = __swift_project_value_buffer(*(v0 + 192), qword_2814B4A98);
  v71 = *(v2 + 16);
  v71(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  v77 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchAppDisambiguationStrategy.makePromptForDisambiguation() called", v5, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v6 = *(v0 + 216);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 88);

  v70 = *(v7 + 8);
  v70(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C368, &unk_266190D80);
  v10 = sub_26618B610();
  v11 = sub_2661046B8(v10);
  v12 = 0;
  v13 = (v10 & 0xFFFFFFFFFFFFFF8);
  v14 = MEMORY[0x277D84F90];
LABEL_5:
  v73 = v14;
  *(v0 + 224) = v14;
  v15 = v0;
  while (v11 != v12)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x26677C150](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v16 = *(v10 + 8 * v12 + 32);
    }

    v17 = v16;
    v0 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v18 = sub_2660C9D24(v16);
    v20 = v19;

    ++v12;
    if (v20)
    {
      v21 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = *(v73 + 16);
        sub_266129600();
        v21 = v28;
      }

      v23 = v21;
      v24 = *(v21 + 16);
      v25 = v23;
      if (v24 >= *(v23 + 24) >> 1)
      {
        sub_266129600();
        v25 = v29;
      }

      v14 = v25;
      *(v25 + 16) = v24 + 1;
      v26 = v25 + 16 * v24;
      *(v26 + 32) = v18;
      *(v26 + 40) = v20;
      v12 = v0;
      v0 = v77;
      goto LABEL_5;
    }
  }

  v30 = v15[23];
  v31 = v15[20];
  v32 = v15[17];
  v33 = v15[11];

  v0 = sub_26618B610();
  sub_2661490E0();
  sub_26618B1C0();
  *(swift_task_alloc() + 16) = v30;
  sub_26618B620();

  v34 = sub_2661046B8(v0);
  if (v34)
  {
    v35 = v34;
    v78 = MEMORY[0x277D84F90];
    sub_26612A648();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v36 = 0;
      v13 = 0;
      v37 = v15[15];
      v38 = v78;
      v75 = v0;
      v76 = v0 & 0xC000000000000001;
      v74 = v0 & 0xFFFFFFFFFFFFFF8;
      v39 = v35;
      while (1)
      {
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_43;
        }

        if (v76)
        {
          v41 = MEMORY[0x26677C150](v36, v0);
        }

        else
        {
          if (v36 >= *(v74 + 16))
          {
            goto LABEL_44;
          }

          v41 = *(v0 + 8 * v36 + 32);
        }

        v42 = v41;
        v43 = v77[16];
        v79 = v41;
        sub_266117370(&v79, v43);

        v44 = *(v78 + 16);
        if (v44 >= *(v78 + 24) >> 1)
        {
          sub_26612A648();
        }

        v45 = v77[16];
        *(v78 + 16) = v44 + 1;
        sub_2660FA7AC(v45, v78 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v44);
        ++v36;
        v0 = v75;
        if (v40 == v39)
        {

          v15 = v77;
          goto LABEL_32;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
LABEL_32:
    v46 = *(v15[12] + 232);
    v47 = sub_26617CA00(0x50415F4843494857, 0xE900000000000050);
    if (v48)
    {
      v50 = v15[13];
      v49 = v15[14];
      v51 = v15[12];
      v15[7] = v47;
      v15[8] = v48;
      sub_26618AB90();
      v52 = *(v50 + 20);
      v15[9] = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C390, "Fi");
      sub_26618AB90();
      v53 = swift_task_alloc();
      v15[29] = v53;
      *v53 = v15;
      v53[1] = sub_266116BD4;

      sub_2660C43FC(v73);
    }

    else
    {
      v54 = v15[26];
      v55 = v15[24];

      (v71)(v54, v72, v55);
      v56 = sub_26618C690();
      v57 = sub_26618CAB0();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v58);
        _os_log_impl(&dword_2660B7000, v56, v57, "Unable to get localized system text for snippet", v13, 2u);
        OUTLINED_FUNCTION_28_3();
      }

      v60 = v15[25];
      v59 = v15[26];
      v61 = v15[24];
      v62 = v15;
      v63 = v15[20];
      v64 = v62[18];
      v65 = v62[19];

      v70(v59, v61);
      sub_2660D3004();
      swift_allocError();
      *v66 = 7;
      swift_willThrow();
      (*(v65 + 8))(v63, v64);
      v67 = OUTLINED_FUNCTION_14_10();
      v68(v67);

      OUTLINED_FUNCTION_5_3();

      v69();
    }
  }
}

uint64_t sub_266116BD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  v7 = *(v4 + 232);
  *v6 = *v2;
  *(v5 + 240) = v1;

  v8 = *(v4 + 224);

  if (v1)
  {
    v9 = sub_2661170F0;
  }

  else
  {
    *(v5 + 248) = a1;
    v9 = sub_266116D10;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_266116D10()
{
  v1 = v0[31];
  v2 = v0[20];
  v3 = v0[14];
  v4 = v0[12];
  sub_26618B640();
  v5 = v4[15];
  v6 = v4[16];
  __swift_project_boxed_opaque_existential_1(v4 + 12, v5);
  v0[5] = type metadata accessor for AppLaunchDataModels(0);
  v0[6] = sub_266118A6C(qword_2814B3FF0, 255, type metadata accessor for AppLaunchDataModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_2660FA8AC(v3, boxed_opaque_existential_0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v8 = swift_allocObject();
  v0[32] = v8;
  *(v8 + 16) = xmmword_26618F7E0;
  *(v8 + 32) = v1;
  v9 = *(MEMORY[0x277D5BE38] + 4);
  v10 = v1;
  v11 = swift_task_alloc();
  v0[33] = v11;
  *v11 = v0;
  v11[1] = sub_266116EC8;
  v12 = v0[20];
  v13 = v0[10];

  return MEMORY[0x2821BB468](v13, v0 + 2, v8, v12, v5, v6);
}

uint64_t sub_266116EC8()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v5;

  __swift_destroy_boxed_opaque_existential_1((v5 + 16));

  return MEMORY[0x2822009F8](sub_266116FE0, 0, 0);
}

uint64_t sub_266116FE0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v13 = *(v0 + 136);
  v14 = *(v0 + 128);
  v9 = *(v0 + 112);

  OUTLINED_FUNCTION_3_13();
  sub_266118AB4(v9, v10);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_5_3();

  return v11();
}

uint64_t sub_2661170F0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[14];
  OUTLINED_FUNCTION_3_13();
  sub_266118AB4(v5, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[30];
  v8 = OUTLINED_FUNCTION_14_10();
  v9(v8);

  OUTLINED_FUNCTION_5_3();

  return v10();
}

uint64_t sub_2661171D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_26618B230();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  sub_26618B650();
  sub_26618B680();
  v12 = sub_26618B440();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_26618B660();
  (*(v4 + 104))(v7, *MEMORY[0x277D5BC50], v3);
  return sub_26618B630();
}

uint64_t sub_266117370@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = sub_26618AB50();
  v54 = *(v50 - 8);
  v3 = *(v54 + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v51 = &v46 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v14 = swift_allocObject();
  v48 = xmmword_26618E190;
  *(v14 + 16) = xmmword_26618E190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C088, &unk_26618F940);
  inited = swift_initStackObject();
  *(inited + 16) = v48;
  v55 = 0x696669746E656469;
  v56 = 0xEA00000000007265;
  v16 = MEMORY[0x277D837D0];
  sub_26618CD20();
  v17 = sub_2660C9D30(v13);
  *(inited + 96) = v16;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  *(inited + 72) = v19;
  *(inited + 80) = v20;
  sub_26618C850();
  v21 = sub_26618AB80();
  v22 = MEMORY[0x277D63778];
  *(v14 + 56) = v21;
  *(v14 + 64) = v22;
  __swift_allocate_boxed_opaque_existential_0((v14 + 32));
  sub_26618AB70();

  v23 = v12;
  sub_26618AB60();
  v24 = sub_2660C9D24(v13);
  v26 = v25;
  v27 = sub_2660C9D30(v13);
  v29 = v28;
  v30 = [v13 isOffloaded];
  if (v30)
  {
    v31 = v30;
    LODWORD(v48) = [v30 BOOLValue];
  }

  else
  {
    LODWORD(v48) = 0;
  }

  if (v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v47 = v32;
  if (v29)
  {
    v33 = v27;
  }

  else
  {
    v33 = 0;
  }

  if (v26)
  {
    v34 = v24;
  }

  else
  {
    v26 = 0xE000000000000000;
    v34 = 0;
  }

  v35 = v54;
  v36 = *(v54 + 16);
  v49 = v23;
  v37 = v23;
  v38 = v50;
  v36(v10, v37, v50);
  v55 = v34;
  v56 = v26;
  sub_26618AB90();
  v39 = type metadata accessor for AppLaunchDataModels.App(0);
  v40 = v39[5];
  v55 = v33;
  v56 = v47;
  sub_26618AB90();
  v41 = v39[6];
  LOBYTE(v55) = v48;
  sub_26618AB90();
  v42 = v51;
  v36(v51, v10, v38);
  v43 = v39[7];
  v36(v52, v42, v38);
  sub_26618AB90();
  v44 = *(v35 + 8);
  v44(v42, v38);
  v44(v10, v38);
  return (v44)(v49, v38);
}

uint64_t sub_2661177A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a2;
  v115 = a3;
  v4 = sub_26618C6B0();
  v113 = OUTLINED_FUNCTION_2_2(v4);
  v114 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_24_1();
  v112 = v8 - v9;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_5();
  v108 = v11;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_5();
  v106 = v13;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v14);
  v107 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v17 = OUTLINED_FUNCTION_3_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v104 - v20;
  v22 = sub_26618B8E0();
  v23 = OUTLINED_FUNCTION_2_2(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_24_1();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v104 - v32;
  v34 = sub_26618B980();
  v35 = OUTLINED_FUNCTION_2_2(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  v41 = &v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = a1;
  sub_26618B820();
  v42 = sub_26618B8B0();
  v45 = *(v25 + 8);
  v43 = v25 + 8;
  v44 = v45;
  v45(v33, v22);
  sub_266139C58(v42, v21);

  if (__swift_getEnumTagSinglePayload(v21, 1, v34) == 1)
  {
    v46 = sub_2661189FC(v21);
    if (qword_2814B2C38 == -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_7_11(v46, qword_2814B4A80);
      v47 = v112;
      v48(v112);
      v49 = sub_26618C690();
      v50 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_16_4(v50))
      {
        v51 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v51);
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v52, v53, "LaunchAppDisambiguationStrategy.actionForInputNLv4Uso() No user dialog act found in userParse");
        OUTLINED_FUNCTION_28_3();
      }

      (*(v33 + 8))(v47, v43);
      return sub_26618B2B0();
    }

LABEL_51:
    v46 = OUTLINED_FUNCTION_2_5();
    goto LABEL_3;
  }

  v112 = v37;
  (*(v37 + 32))(v41, v21, v34);
  if (sub_26618B940() & 1) != 0 || (sub_26618B930())
  {
    sub_26618B290();
    return (*(v112 + 8))(v41, v34);
  }

  sub_26618B820();
  v55 = sub_266144AE8();
  v44(v30, v22);
  if (v55)
  {
    v111 = v34;
    v56 = v110;
    __swift_project_boxed_opaque_existential_1((v110 + 56), *(v110 + 80));
    v57 = sub_2660FA19C();
    __swift_project_boxed_opaque_existential_1((v56 + 56), *(v56 + 80));
    v58 = *(sub_2660FA19C() + 16);

    if (v58)
    {
      v107 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
      v59 = sub_26618B6C0();
      v60 = sub_2660F474C();

      v61 = 0;
      v62 = *(v57 + 16);
      v63 = v57 + 32;
      v34 = v60 & 0xC000000000000001;
      v43 = v60 & 0xFFFFFFFFFFFFFF8;
      v104 = v57 + 32;
      v105 = v41;
      v108 = v57;
      v109 = v62;
LABEL_12:
      if (v61 != v62)
      {
        if (v61 < *(v57 + 16))
        {
          v64 = (v63 + 16 * v61);
          v66 = *v64;
          v65 = v64[1];
          v110 = v61 + 1;
          v67 = sub_2661046B8(v60);

          for (i = 0; ; ++i)
          {
            if (v67 == i)
            {

              v63 = v104;
              v41 = v105;
              v57 = v108;
              v62 = v109;
              v61 = v110;
              goto LABEL_12;
            }

            if (v34)
            {
              v69 = MEMORY[0x26677C150](i, v60);
            }

            else
            {
              if (i >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_50;
              }

              v69 = *(v60 + 8 * i + 32);
            }

            v70 = v69;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v71 = sub_2660C9D30(v69);
            if (v72)
            {
              if (v71 == v66 && v72 == v65)
              {

LABEL_43:
                v94 = v105;
                swift_bridgeObjectRelease_n();
                sub_26618B2A0();

                return (*(v112 + 8))(v94, v111);
              }

              v33 = sub_26618D000();

              if (v33)
              {

                goto LABEL_43;
              }
            }

            else
            {
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        __break(1u);
        goto LABEL_53;
      }

      if (qword_2814B2C38 != -1)
      {
        v95 = OUTLINED_FUNCTION_2_5();
      }

      OUTLINED_FUNCTION_7_11(v95, qword_2814B4A80);
      v96 = v106;
      v97(v106);
      v98 = sub_26618C690();
      v99 = sub_26618CAB0();
      v100 = OUTLINED_FUNCTION_16_4(v99);
      v90 = v112;
      if (v100)
      {
        v101 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v101);
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v102, v103, "LaunchAppDisambiguationStrategy.actionForInputNLv4Uso() User provided appId that is not present in the disambiguation list");
        OUTLINED_FUNCTION_28_3();
      }

      (*(v33 + 8))(v96, v43);
      sub_26618B2B0();
    }

    else
    {

      if (qword_2814B2C38 != -1)
      {
        v84 = OUTLINED_FUNCTION_2_5();
      }

      OUTLINED_FUNCTION_7_11(v84, qword_2814B4A80);
      v85 = v107;
      v86(v107);
      v87 = sub_26618C690();
      v88 = sub_26618CAB0();
      v89 = OUTLINED_FUNCTION_16_4(v88);
      v90 = v112;
      if (v89)
      {
        v91 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v91);
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v92, v93, "LaunchAppDisambiguationStrategy.actionForInputNLv4Uso() Unable to resolve the appId");
        OUTLINED_FUNCTION_28_3();
      }

      (*(v33 + 8))(v85, v43);
      sub_26618B2B0();
    }

    return (*(v90 + 8))(v41, v111);
  }

  if (qword_2814B2C38 != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_2_5();
  }

  v74 = v113;
  v75 = __swift_project_value_buffer(v113, qword_2814B4A80);
  v76 = v108;
  (*(v114 + 16))(v108, v75, v74);
  v77 = sub_26618C690();
  v78 = sub_26618CAB0();
  v79 = OUTLINED_FUNCTION_16_4(v78);
  v80 = v112;
  if (v79)
  {
    v81 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v81);
    OUTLINED_FUNCTION_7_7(&dword_2660B7000, v82, v83, "LaunchAppDisambiguationStrategy.actionForInputNLv4Uso() No usoTask was found in the parse");
    OUTLINED_FUNCTION_28_3();
  }

  (*(v114 + 8))(v76, v74);
  sub_26618B2B0();
  return (*(v80 + 8))(v41, v34);
}

uint64_t *sub_266117FCC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_2660D31B4((v0 + 17));
  v1 = v0[29];

  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  sub_2660D3208((v0 + 35));
  return v0;
}

uint64_t sub_26611801C()
{
  sub_266117FCC();

  return MEMORY[0x2821FE8D8](v0, 320, 7);
}

void sub_266118074()
{
  type metadata accessor for LaunchAppDisambiguationStrategy();

  JUMPOUT(0x26677A120);
}

uint64_t sub_2661180EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_266118198;

  return sub_2660F73F0();
}

uint64_t sub_266118198(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2661182A0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266118EB4;

  return sub_2660F881C();
}

uint64_t sub_266118378(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2660CF900;

  return sub_26611635C(a1, a2);
}

uint64_t sub_266118424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B588] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_266118EB4;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_2661184F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B598] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_266118EB4;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_2661185BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B590] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_266118EB4;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_266118680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B5A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_266118EB4;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_266118744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LaunchAppDisambiguationStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_266118790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v13 = v6;
  v13[1] = sub_266118EB4;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_26611886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_266118EB4;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_2661189A4(uint64_t a1, uint64_t a2)
{
  result = sub_266118A6C(&qword_28005C4E0, a2, type metadata accessor for LaunchAppDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2661189FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266118A6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_266118AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_266118B14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = *a5;
  v10 = type metadata accessor for BaseDialogProvider();
  v41[3] = v10;
  v41[4] = &off_2877CAA90;
  v41[0] = a2;
  v39 = &type metadata for AppLaunchFeatureFlagsImpl;
  v40 = &off_2877CD168;
  v37[3] = sub_26618B470();
  v37[4] = MEMORY[0x277D5BD58];
  v37[0] = a3;
  v35 = &type metadata for ReferenceResolver;
  v36 = &off_2877CC6F0;
  v11 = swift_allocObject();
  v34[0] = v11;
  v12 = *(a4 + 16);
  *(v11 + 16) = *a4;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a4 + 32);
  type metadata accessor for LaunchAppDisambiguationStrategy();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v41, v10);
  v15 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v19 = v35;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v21 = *(v19[-1].Description + 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = *v17;
  *(v13 + 304) = v10;
  *(v13 + 312) = &off_2877CAA90;
  *(v13 + 280) = v25;
  *(v13 + 264) = &type metadata for AppLaunchFeatureFlagsImpl;
  *(v13 + 272) = &off_2877CD168;
  v33[3] = &type metadata for ReferenceResolver;
  v33[4] = &off_2877CC6F0;
  v26 = swift_allocObject();
  v33[0] = v26;
  v27 = *(v23 + 1);
  *(v26 + 16) = *v23;
  *(v26 + 32) = v27;
  *(v26 + 48) = *(v23 + 4);
  sub_2660C5864(a1, v13 + 16);
  sub_2660C5864(v37, v13 + 96);
  sub_2660C5864(v33, v13 + 56);
  sub_2660C5864(v13 + 16, v13 + 136);
  sub_2660C5864(v13 + 96, v13 + 176);
  v28 = sub_26618C8A0();
  LODWORD(a3) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v33);
  *(v13 + 224) = a3 == 1;
  sub_2660C5864(v13 + 136, v32);
  v29 = swift_allocObject();
  sub_2660CD484(v32, v29 + 16);
  *(v13 + 216) = v29;
  *(v13 + 232) = a5;
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v13;
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_266118AB4(v0, type metadata accessor for AppLaunchIntent);
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(*(v2 - 104), a2);
  v4 = *(*(v2 - 96) + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = *(v0[22] + 8);
  return v0[23];
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  result = v0;
  v3 = *(v1 - 160);
  v4 = *(v1 - 152);
  v5 = *(v1 - 144);
  return result;
}

uint64_t sub_266118F64(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = sub_26618B070();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26618C6B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = *(v2 + 256);
  if (v16)
  {
    v17 = qword_2814B2C40;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v8, qword_2814B4A98);
    (*(v9 + 16))(v15, v19, v8);
    v20 = v18;
    v21 = sub_26618C690();
    v22 = sub_26618CAA0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v16;
      v25 = v20;
      _os_log_impl(&dword_2660B7000, v21, v22, "makeIntentExecutionBehavior: Handle on target device: %@", v23, 0xCu);
      sub_2660C8040(v24, &qword_28005C1F8, &unk_266190550);
      MEMORY[0x26677CC30](v24, -1, -1);
      MEMORY[0x26677CC30](v23, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    sub_26618B0A0();
    v26 = sub_26618B080();
  }

  else
  {
    v41 = v7;
    v42 = v4;
    v27 = v43;
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v8, qword_2814B4A98);
    (*(v9 + 16))(v13, v28, v8);
    v29 = sub_26618C690();
    v30 = sub_26618CAA0();
    v31 = v3;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2660B7000, v29, v30, "IntentExecutionBehaviorStrategy.makeIntentExecutionBehavior: No eligible devices for remote execution found. Continuing local execution.", v32, 2u);
      MEMORY[0x26677CC30](v32, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    sub_26618B0A0();
    v33 = qword_2814B3AA0;

    v34 = v41;
    v35 = v42;
    if (v33 != -1)
    {
      swift_once();
    }

    v36 = qword_2814B4AD0;
    type metadata accessor for LaunchAppIntent();
    v37 = v36;
    v38 = v27;
    sub_26618B060();
    v26 = sub_26618B090();
    (*(v35 + 8))(v34, v31);
  }

  return v26;
}

uint64_t sub_2661193CC(uint64_t a1, void *a2)
{
  v51 = a2;
  v3 = sub_26618B070();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = sub_26618C6B0();
  v13 = OUTLINED_FUNCTION_2_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = *(v2 + 520);
  if (v24)
  {
    v25 = qword_2814B2C40;
    v26 = v24;
    if (v25 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_2814B4A98);
    OUTLINED_FUNCTION_28_1();
    v27(v23);
    v28 = v26;
    v29 = sub_26618C690();
    v30 = sub_26618CAA0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v24;
      v33 = v28;
      _os_log_impl(&dword_2660B7000, v29, v30, "makeIntentExecutionBehavior: Handle on target device: %@", v31, 0xCu);
      sub_2660C8040(v32, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v15 + 8))(v23, v12);
    sub_26618B0A0();
    v34 = sub_26618B080();
  }

  else
  {
    v49 = v11;
    v50 = v6;
    v35 = v51;
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_2814B4A98);
    OUTLINED_FUNCTION_28_1();
    v36(v20);
    v37 = sub_26618C690();
    v38 = sub_26618CAA0();
    v39 = v3;
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_24_0();
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2660B7000, v37, v38, "IntentExecutionBehaviorStrategy.makeIntentExecutionBehavior: No eligible devices for remote execution found. Continuing local execution.", v40, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v15 + 8))(v20, v12);
    sub_26618B0A0();
    v41 = qword_2814B3AA0;

    v42 = v49;
    v43 = v50;
    if (v41 != -1)
    {
      swift_once();
    }

    v44 = qword_2814B4AD0;
    type metadata accessor for LaunchAppIntent();
    v45 = v44;
    v46 = v35;
    sub_26618B060();
    v34 = sub_26618B090();
    (*(v43 + 8))(v42, v39);
  }

  return v34;
}

id sub_2661197D4()
{
  result = [objc_allocWithZone(type metadata accessor for LaunchAppIntentHandler()) init];
  qword_2814B4AD0 = result;
  return result;
}

uint64_t sub_266119808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = a1;
  v66 = sub_26618B800();
  v2 = OUTLINED_FUNCTION_2_2(v66);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_1();
  v58 = (v7 - v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v12 = sub_26618C6B0();
  v13 = OUTLINED_FUNCTION_2_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_1();
  v59 = (v18 - v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v63 = v4;
  v26 = __swift_project_value_buffer(v12, qword_2814B4A98);
  v27 = *(v15 + 16);
  v61 = v26;
  v62 = v27;
  (v27)(v25);
  v28 = sub_26618C690();
  v29 = sub_26618CAA0();
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_24_0();
    v30 = swift_slowAlloc();
    v60 = (v15 + 16);
    *v30 = 0;
    _os_log_impl(&dword_2660B7000, v28, v29, "LaunchApp.FlowStrategy.actionForInput() called", v30, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v60 = *(v15 + 8);
  v60(v25, v12);
  sub_26618B770();
  v31 = sub_2661123A8(v11);
  v32 = *(v63 + 8);
  v33 = v11;
  v34 = v66;
  v32(v33, v66);
  if ((v31 & 1) == 0)
  {
    v40 = v59;
    v62(v59, v61, v12);
    v41 = sub_26618C690();
    sub_26618CAA0();
    v42 = OUTLINED_FUNCTION_25_1();
    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_24_0();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_43_0(v44);
      OUTLINED_FUNCTION_26_2(&dword_2660B7000, v45, v46, "LaunchApp.FlowStrategy.actionForInput() ignoring");
      v47 = OUTLINED_FUNCTION_8_13();
      MEMORY[0x26677CC30](v47);
    }

    v60(v40, v12);
    return sub_26618B2B0();
  }

  v35 = v58;
  sub_26618B770();
  sub_2660C87C0();
  v32(v35, v34);
  v36 = v68;
  if (v68)
  {
    v37 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    if ((*(v37 + 8))(v36, v37))
    {
      __swift_project_boxed_opaque_existential_1((v57 + 136), *(v57 + 160));
      v38 = sub_2660FA19C();

      __swift_destroy_boxed_opaque_existential_1(v67);
      if (qword_28005BC80 != -1)
      {
        swift_once();
      }

      v39 = sub_26612EAB0(v38, qword_28005D1A0);

      if (v39)
      {
        goto LABEL_18;
      }

      return sub_26618B2B0();
    }

    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_2660C8040(v67, &qword_28005C148, &unk_26618FF00);
  }

LABEL_18:
  v62(v23, v61, v12);
  v49 = sub_26618C690();
  sub_26618CAA0();
  v50 = OUTLINED_FUNCTION_25_1();
  if (os_log_type_enabled(v50, v51))
  {
    OUTLINED_FUNCTION_24_0();
    v52 = swift_slowAlloc();
    OUTLINED_FUNCTION_43_0(v52);
    OUTLINED_FUNCTION_26_2(&dword_2660B7000, v53, v54, "LaunchApp.FlowStrategy.actionForInput() handling");
    v55 = OUTLINED_FUNCTION_8_13();
    MEMORY[0x26677CC30](v55);
  }

  v60(v23, v12);
  return sub_26618B2A0();
}

id sub_266119CCC(uint64_t a1, void *a2)
{
  v3 = v2;
  v230 = a1;
  v211 = sub_26618B7B0();
  v5 = OUTLINED_FUNCTION_2_2(v211);
  v210 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_9_4(v9);
  v216 = sub_26618B7F0();
  v10 = OUTLINED_FUNCTION_2_2(v216);
  v215 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_9_4(v14);
  v208 = sub_26618B840();
  v15 = OUTLINED_FUNCTION_2_2(v208);
  v207 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_9_4(v19);
  v20 = type metadata accessor for AppLaunchIntent();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_9_4(v22);
  v23 = sub_26618C0E0();
  v24 = OUTLINED_FUNCTION_2_2(v23);
  v228 = v25;
  v229 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_6();
  v227 = v28;
  v235 = sub_26618AA00();
  v29 = OUTLINED_FUNCTION_2_2(v235);
  v239 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_4();
  v35 = (v34 - v33);
  v220 = sub_26618B800();
  v36 = OUTLINED_FUNCTION_2_2(v220);
  v218 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_5();
  v236 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_4(&v205 - v43);
  v44 = sub_26618C6B0();
  v45 = OUTLINED_FUNCTION_2_2(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_24_1();
  v52 = (v50 - v51);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v58);
  v60 = &v205 - v59;
  if (qword_2814B2C40 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v61 = __swift_project_value_buffer(v44, qword_2814B4A98);
    v62 = v47[2];
    v221 = v61;
    v223 = v47 + 2;
    v222 = v62;
    v62(v60);
    v63 = sub_26618C690();
    v64 = sub_26618CAA0();
    v65 = os_log_type_enabled(v63, v64);
    v243 = v35;
    if (v65)
    {
      OUTLINED_FUNCTION_24_0();
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2660B7000, v63, v64, "LaunchApp.FlowStrategy.makeIntentFromParse() called", v66, 2u);
      v35 = v243;
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v68 = v47[1];
    v67 = v47 + 1;
    v224 = v68;
    v68(v60, v44);
    if (a2)
    {
      v69 = a2;
    }

    else
    {
      v69 = [objc_allocWithZone(type metadata accessor for LaunchAppIntent()) init];
    }

    v225 = v67;
    v70 = a2;
    v71 = v231;
    sub_26611B72C();
    v72 = sub_26618CA00();
    OUTLINED_FUNCTION_22_4(v72, sel_setCanReinstallOffloadedApps_);

    v73 = v71[32];
    v238 = v52;
    if (v73)
    {
      v237 = v3;
      sub_26611C10C();
      v74 = v73;
      v75 = v69;
      v76 = sub_26618CB70();
      [v75 setIsRemoteExecution_];

      v77 = v71[6];
      __swift_project_boxed_opaque_existential_1(v71 + 2, v71[5]);
      if (sub_26618B1A0())
      {
        v78 = v75;
        v79 = sub_26618CB70();
        [v78 setSmartSelectApps_];
      }

      __swift_project_boxed_opaque_existential_1(v231 + 27, v231[30]);
      v80 = v75;
      sub_26614FD14();
      if (v81)
      {
        v82 = sub_26618C8A0();
      }

      else
      {
        v82 = 0;
      }

      v3 = v237;
      v52 = v238;
      v35 = v243;
      [v80 setCrossDeviceRequestInitiator_];

      v71 = v231;
      sub_26611B2FC(v74);
    }

    v83 = v71[6];
    __swift_project_boxed_opaque_existential_1(v71 + 2, v71[5]);
    if (sub_26618B190())
    {
      sub_26611C10C();
      v84 = v69;
      v85 = sub_26618CB70();
      [v84 setIsInCarPlay_];
    }

    v226 = v44;
    v86 = v69;
    sub_2660C8AA8();
    v88 = v87;
    v89 = v87[2];
    if (!v89)
    {
      break;
    }

    v213 = v86;
    a2 = v3;
    *&v240 = MEMORY[0x277D84F90];
    v60 = &v240;
    v232 = v89;
    sub_26612A628(0, v89, 0);
    v3 = 0;
    v47 = v240;
    v90 = *(v239 + 80);
    v237 = v88;
    v234 = v88 + ((v90 + 32) & ~v90);
    v233 = v239 + 16;
    v44 = (v239 + 8);
    while (v3 < v237[2])
    {
      v91 = v235;
      (*(v239 + 16))(v35, v234 + *(v239 + 72) * v3, v235);
      sub_26611C0C4(&qword_28005C500, 255, MEMORY[0x277D390F0]);
      v60 = v35;
      v2 = a2;
      v92 = sub_26618C3E0();
      if (a2)
      {
        (*v44)(v35, v91);

        v100 = v213;

        return v100;
      }

      v94 = v92;
      v95 = v93;
      (*v44)(v35, v91);
      *&v240 = v47;
      v97 = v47[2];
      v96 = v47[3];
      if (v97 >= v96 >> 1)
      {
        v60 = &v240;
        sub_26612A628((v96 > 1), v97 + 1, 1);
        v47 = v240;
      }

      ++v3;
      v47[2] = v97 + 1;
      v98 = &v47[2 * v97];
      v98[4] = v94;
      v98[5] = v95;
      v52 = v238;
      v99 = v236;
      v35 = v243;
      if (v232 == v3)
      {

        v86 = v213;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_77:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v47 = MEMORY[0x277D84F90];
  v99 = v236;
LABEL_26:
  sub_26611C058(v47, v86);
  v101 = v86;

  v102 = v218;
  v103 = *(v218 + 16);
  v104 = v219;
  v105 = v220;
  v103(v219, v230, v220);
  v106 = (*(v102 + 88))(v104, v105);
  if (v106 == *MEMORY[0x277D5C128])
  {
    v107 = OUTLINED_FUNCTION_11_6();
    v108(v107);
    (*(v228 + 32))(v227, v104, v229);
    OUTLINED_FUNCTION_4_13();
    v109();
    v110 = sub_26618C690();
    v111 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_2(v111))
    {
      OUTLINED_FUNCTION_24_0();
      v112 = swift_slowAlloc();
      OUTLINED_FUNCTION_43_0(v112);
      OUTLINED_FUNCTION_40_2(&dword_2660B7000, v113, v114, "LaunchAppFlowStrategy.makeIntentFromParse() Creating intent from NLv3IntentOnly parse");
      v115 = OUTLINED_FUNCTION_8_13();
      MEMORY[0x26677CC30](v115);
    }

    OUTLINED_FUNCTION_2_13();
    v116();
    v117 = v217;
    (*(v228 + 16))(v217, v227, v229);
    v118 = __swift_project_boxed_opaque_existential_1(v231 + 17, v231[20]);
    v100 = v101;
    v119 = v101;
    sub_26612F47C(v117, v118, v119);

    OUTLINED_FUNCTION_15_7(&v241 + 8);
    OUTLINED_FUNCTION_4_13();
    v120();
    v121 = sub_26618C690();
    v122 = sub_26618CAD0();
    if (OUTLINED_FUNCTION_15_2(v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v123 = 138412290;
      *(v123 + 4) = v119;
      *v124 = v119;
      v125 = v119;
      _os_log_impl(&dword_2660B7000, v121, v118, "Finished creating intent from parse: %@", v123, 0xCu);
      sub_2660C8040(v124, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    OUTLINED_FUNCTION_2_13();
    v126();
    sub_2660DD7D0(v217);
    (*(v228 + 8))(v227, v229);
    return v100;
  }

  if (v106 == *MEMORY[0x277D5C150])
  {
    v127 = OUTLINED_FUNCTION_11_6();
    v128(v127);
    (*(v215 + 32))(v214, v104, v216);
    v100 = v101;
    v129 = [v101 application];
    if (!v129)
    {
      type metadata accessor for Application();
      v130 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v131 = v101;
      v129 = sub_2661038FC(0, 0);
      OUTLINED_FUNCTION_22_4(v129, sel_setApplication_);
    }

    v132 = [v101 application];
    v133 = v214;
    if (!v132)
    {
LABEL_58:
      v181 = [v101 application];
      if (!v181)
      {
LABEL_67:
        (*(v215 + 8))(v133, v216);
        return v100;
      }

      v182 = v181;
      v183 = sub_26618B7E0();
      if (v183)
      {
        sub_266158220(0x656D614E707061, 0xE700000000000000, v183, &v240);

        if (*(&v241 + 1))
        {
          v184 = OUTLINED_FUNCTION_25_7();
          if (v184)
          {
            v185 = sub_26618C8A0();

LABEL_66:
            OUTLINED_FUNCTION_22_4(v184, sel_setName_);

            goto LABEL_67;
          }

LABEL_65:
          v185 = 0;
          goto LABEL_66;
        }
      }

      else
      {
        v240 = 0u;
        v241 = 0u;
      }

      v184 = sub_2660C8040(&v240, &qword_28005C0A8, qword_26618FAE0);
      goto LABEL_65;
    }

    v134 = v132;
    v135 = sub_26618B7E0();
    if (v135)
    {
      sub_266158220(0x746E656449707061, 0xED00007265696669, v135, &v240);

      if (*(&v241 + 1))
      {
        v136 = OUTLINED_FUNCTION_25_7();
        if (v136)
        {
          v137 = sub_26618C8A0();

LABEL_57:
          OUTLINED_FUNCTION_22_4(v136, sel_setAppId_);

          goto LABEL_58;
        }

LABEL_56:
        v137 = 0;
        goto LABEL_57;
      }
    }

    else
    {
      v240 = 0u;
      v241 = 0u;
    }

    v136 = sub_2660C8040(&v240, &qword_28005C0A8, qword_26618FAE0);
    goto LABEL_56;
  }

  if (v106 == *MEMORY[0x277D5C140])
  {
    v138 = OUTLINED_FUNCTION_11_6();
    v139(v138);
    v140 = v210;
    v141 = v211;
    (*(v210 + 32))(v212, v104, v211);
    OUTLINED_FUNCTION_15_7(&v239);
    OUTLINED_FUNCTION_4_13();
    v142();
    v143 = sub_26618C690();
    v144 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_2(v144))
    {
      OUTLINED_FUNCTION_24_0();
      v145 = swift_slowAlloc();
      OUTLINED_FUNCTION_43_0(v145);
      OUTLINED_FUNCTION_40_2(&dword_2660B7000, v146, v147, "LaunchAppFlowStrategy.makeIntentFromParse() Creating intent from Pegasus Result parse");
      v148 = OUTLINED_FUNCTION_8_13();
      MEMORY[0x26677CC30](v148);
    }

    OUTLINED_FUNCTION_2_13();
    v149();
    *(&v241 + 1) = v141;
    v242 = &off_2877CAAC8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v240);
    v151 = v212;
    (*(v140 + 16))(boxed_opaque_existential_0, v212, v141);
    v152 = v140;
    v100 = v101;
    OUTLINED_FUNCTION_21_8(v101);
    (*(v152 + 8))(v151, v141);
LABEL_44:

    __swift_destroy_boxed_opaque_existential_1(&v240);
    return v100;
  }

  if (v106 == *MEMORY[0x277D5C148])
  {
    v153 = OUTLINED_FUNCTION_11_6();
    v154(v153);
    v155 = *v104;
    OUTLINED_FUNCTION_4_13();
    v156();
    v157 = sub_26618C690();
    v158 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_2(v158))
    {
      OUTLINED_FUNCTION_24_0();
      v159 = swift_slowAlloc();
      OUTLINED_FUNCTION_43_0(v159);
      OUTLINED_FUNCTION_40_2(&dword_2660B7000, v160, v161, "LaunchAppFlowStrategy.makeIntentFromParse() Creating intent from Pommes Response parse");
      v162 = OUTLINED_FUNCTION_8_13();
      MEMORY[0x26677CC30](v162);
    }

    OUTLINED_FUNCTION_2_13();
    v163();
    *(&v241 + 1) = sub_26618C430();
    v242 = &off_2877CAAD8;
    *&v240 = v155;
    v100 = v101;
    v164 = v101;
    v165 = v155;
    sub_26611B0E8(&v240, v164);

    __swift_destroy_boxed_opaque_existential_1(&v240);
  }

  else
  {
    if (v106 == *MEMORY[0x277D5C160])
    {
      v166 = OUTLINED_FUNCTION_11_6();
      v167(v166);
      v168 = v207;
      v169 = v208;
      (*(v207 + 32))(v209, v104, v208);
      OUTLINED_FUNCTION_15_7(&v234);
      OUTLINED_FUNCTION_4_13();
      v170();
      v171 = sub_26618C690();
      v172 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_15_2(v172))
      {
        OUTLINED_FUNCTION_24_0();
        v173 = swift_slowAlloc();
        OUTLINED_FUNCTION_43_0(v173);
        OUTLINED_FUNCTION_40_2(&dword_2660B7000, v174, v175, "LaunchAppFlowStrategy.makeIntentFromParse(): got .uso parse");
        v176 = OUTLINED_FUNCTION_8_13();
        MEMORY[0x26677CC30](v176);
      }

      OUTLINED_FUNCTION_2_13();
      v177();
      *(&v241 + 1) = v169;
      v242 = &off_2877CAAB8;
      v178 = __swift_allocate_boxed_opaque_existential_0(&v240);
      v179 = v209;
      (*(v168 + 16))(v178, v209, v169);
      v180 = v168;
      v100 = v101;
      OUTLINED_FUNCTION_21_8(v101);
      if (!v2)
      {

        __swift_destroy_boxed_opaque_existential_1(&v240);
        sub_26611C10C();
        v203 = v179;
        v204 = sub_26618CB70();
        OUTLINED_FUNCTION_22_4(v204, sel_setIsNLv4Parse_);

        (*(v180 + 8))(v203, v169);
        return v100;
      }

      (*(v180 + 8))(v179, v169);
      goto LABEL_44;
    }

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    __swift_project_value_buffer(v226, qword_2814B4A80);
    OUTLINED_FUNCTION_4_13();
    v187();
    v103(v99, v230, v105);
    v188 = v52;
    v189 = sub_26618C690();
    sub_26618CAB0();
    v190 = OUTLINED_FUNCTION_25_1();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *&v240 = v193;
      *v192 = 136315138;
      v194 = v206;
      v103(v206, v99, v220);
      v195 = sub_266145588(v194);
      v197 = v196;
      LODWORD(v243) = v188;
      v198 = OUTLINED_FUNCTION_23_5(v218);
      v188(v198, v220);
      v199 = sub_266103A98(v195, v197, &v240);

      *(v192 + 4) = v199;
      _os_log_impl(&dword_2660B7000, v189, v243, "Unable to process parse: %s", v192, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v193);
      v105 = v220;
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    else
    {

      v200 = OUTLINED_FUNCTION_23_5(v218);
      v52(v200, v105);
    }

    OUTLINED_FUNCTION_2_13();
    v201();
    sub_2660D3004();
    swift_allocError();
    *v202 = 0;
    swift_willThrow();
    v188(v219, v105);
    v100 = v101;
  }

  return v100;
}

void *sub_26611B0E8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_26618C6B0();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 8))(v15, v16);
  if (v17)
  {
    v18 = v17;
    v19 = __swift_project_boxed_opaque_existential_1((v3 + 136), *(v3 + 160));
    sub_26612EBE8(v18, v19, a2);
    v20 = a2;
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    __swift_project_value_buffer(v6, qword_2814B4A80);
    OUTLINED_FUNCTION_28_1();
    v21(v14);
    v22 = sub_26618C690();
    v23 = sub_26618CAB0();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_24_0();
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2660B7000, v22, v23, "LaunchAppFlowStrategy.makeIntentFromUserParse() No tasks found in input", v24, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v9 + 8))(v14, v6);
    sub_2660D3004();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_26611B2FC(void *a1)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4E8, &unk_266191E70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = v46 - v4;
  v5 = sub_26618C580();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v47 = v7;
  v48 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_6();
  v49 = v10;
  v11 = sub_26618C490();
  v12 = OUTLINED_FUNCTION_2_2(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4F0, &qword_2661921C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v46 - v21;
  v23 = sub_26618A5F0();
  v24 = OUTLINED_FUNCTION_2_2(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_1();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v46 - v33;
  sub_26618A5E0();
  v35 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_26618B5A0();
  if (v36)
  {
    sub_26618A5C0();

    if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
    {
      sub_2660C8040(v22, &qword_28005C4F0, &qword_2661921C0);
    }

    else
    {
      (*(v26 + 8))(v34, v23);
      (*(v26 + 32))(v34, v22, v23);
    }
  }

  v37 = v1[15];
  v46[2] = v1[16];
  v46[1] = __swift_project_boxed_opaque_existential_1(v1 + 12, v37);
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4F8, &unk_266191E80) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26618F7E0;
  v40 = v53;
  *(v39 + 32) = v53;
  *v18 = v39;
  v18[1] = 0;
  (*(v26 + 16))(v31, v34, v23);
  (*(v47 + 104))(v49, *MEMORY[0x277D61F50], v48);
  v41 = sub_26618C570();
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v41);
  v42 = v40;
  sub_26618C560();
  v44 = v50;
  v43 = v51;
  (*(v50 + 104))(v18, *MEMORY[0x277D61ED0], v51);
  sub_26618C540();
  (*(v44 + 8))(v18, v43);
  return (*(v26 + 8))(v34, v23);
}

uint64_t sub_26611B72C()
{
  if (v0[32] || (v1 = v0, v2 = v0[5], v3 = v1[6], __swift_project_boxed_opaque_existential_1(v1 + 2, v2), (sub_2660C8128(v2, v3) & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    v4 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v5 = sub_26618B190() ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_26611B7B8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));

  return v0;
}

uint64_t sub_26611B808()
{
  sub_26611B7B8();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t sub_26611B884(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = sub_266119CCC(a1, a2);
  v6 = *(v3 + 8);

  return v6(v5);
}

uint64_t sub_26611B900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LaunchAppFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_26611B94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26611C150;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_26611BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for LaunchAppFlowStrategy();
  *v11 = v5;
  v11[1] = sub_26611C150;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_26611BADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for LaunchAppFlowStrategy();
  *v11 = v5;
  v11[1] = sub_26611BBA8;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_26611BBA8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26611BC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for LaunchAppFlowStrategy();
  *v11 = v5;
  v11[1] = sub_26611C150;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_26611BD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for LaunchAppFlowStrategy();
  *v13 = v6;
  v13[1] = sub_26611C150;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_26611BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for LaunchAppFlowStrategy();
  *v13 = v6;
  v13[1] = sub_26611C150;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_26611BF20(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = sub_266118F64(a1, a2);
  v6 = *(v3 + 8);

  return v6(v5);
}

void sub_26611C058(uint64_t a1, void *a2)
{
  v3 = sub_26618C990();

  [a2 setPegasusAppResults_];
}

uint64_t sub_26611C0C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_26611C10C()
{
  result = qword_2814B2BF8;
  if (!qword_2814B2BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2BF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_7@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 296);
  return result;
}

void *OUTLINED_FUNCTION_21_8(void *a1)
{
  v3 = *(v1 - 216);

  return sub_26611B0E8((v1 - 128), a1);
}

id OUTLINED_FUNCTION_22_4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return swift_dynamicCast();
}

uint64_t sub_26611C244(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_26618B500();
  v2[5] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v2[6] = v4;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_26618C6B0();
  v2[8] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v2[9] = v8;
  v10 = *(v9 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26611C368, 0, 0);
}

uint64_t sub_26611C368()
{
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v49 = __swift_project_value_buffer(v0[8], qword_2814B4A80);
  v50 = *(v2 + 16);
  v50(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchAppHandleIntentFlow.execute() called", v5, 2u);
    MEMORY[0x26677CC30](v5, -1, -1);
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v12 = v0[5];

  v51 = *(v8 + 8);
  v51(v6, v7);
  OUTLINED_FUNCTION_3_14();
  sub_26618B4F0();
  v13 = sub_26618B110();
  v14 = *(v10 + 8);
  v14(v9, v12);
  if (v13 & 1) != 0 || (OUTLINED_FUNCTION_3_14(), (sub_26618B190()) || (OUTLINED_FUNCTION_3_14(), (sub_26618B1A0()))
  {
    (v50)(v0[10], v49, v0[8]);
    v15 = sub_26618C690();
    v16 = sub_26618CAA0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2660B7000, v15, v16, "LaunchAppHandleIntentFlow.wrappedFlow.execute() called", v17, 2u);
      MEMORY[0x26677CC30](v17, -1, -1);
    }

    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];
    v21 = v0[4];

    v51(v18, v20);
    v22 = *(v21 + 16);
    v23 = *(MEMORY[0x277D5B4A0] + 4);
    v52 = (*MEMORY[0x277D5B4A0] + MEMORY[0x277D5B4A0]);
    v24 = swift_task_alloc();
    v0[13] = v24;
    *v24 = v0;
    v24[1] = sub_26611C858;
    v25 = v0[3];

    return v52(v25);
  }

  else
  {
    v27 = v0[11];
    v28 = v0[7];
    v29 = v0[8];
    v30 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
    v31 = sub_26618AE80();
    OUTLINED_FUNCTION_0_4(v31);
    v33 = *(v32 + 72);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_26618E190;
    sub_26618B4F0();
    sub_26618AE70();
    v14(v28, v30);
    v36 = sub_26618AC10();

    (v50)(v27, v49, v29);
    v37 = sub_26618C690();
    v38 = sub_26618CAA0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2660B7000, v37, v38, "Device is not authenticated - pushing an unlock flow", v39, 2u);
      MEMORY[0x26677CC30](v39, -1, -1);
    }

    v40 = v0[11];
    v41 = v0[8];
    v42 = v0[9];
    v43 = v0[3];

    v51(v40, v41);
    v0[2] = v36;
    sub_26618AE60();
    sub_26618B330();

    v45 = v0[11];
    v44 = v0[12];
    v46 = v0[10];
    v47 = v0[7];

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_26611C858()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = v1[12];
  v6 = v1[11];
  v7 = v1[10];
  v8 = v1[7];

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_26611C9BC()
{
  type metadata accessor for LaunchAppHandleIntentFlow();
  OUTLINED_FUNCTION_0_11();
  sub_26611CEDC(v0, v1, v2);
  return sub_26618AFB0();
}

uint64_t sub_26611CA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for LaunchAppHandleIntentStrategy();
  sub_26611CEDC(&qword_2814B36D0, 255, type metadata accessor for LaunchAppHandleIntentStrategy);
  v9 = sub_26618AEB0();
  v10 = v9(a1, a2);

  *&v23[0] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C508, &qword_266191FA0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C510, &qword_266191FA8);
  sub_26611CF24();
  v14 = sub_26618AD30();
  sub_2660C5864(a4, v23);
  sub_2660C5864(a5, v22);
  __swift_mutable_project_boxed_opaque_existential_1(v22, v22[3]);
  v21[3] = &type metadata for AppLaunchFlowFactoryImpl;
  v21[4] = &off_2877CD5D8;
  type metadata accessor for LaunchAppHandleIntentFlow();
  v15 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v21, &type metadata for AppLaunchFlowFactoryImpl);
  v15[11] = &type metadata for AppLaunchFlowFactoryImpl;
  v15[12] = &off_2877CD5D8;
  v15[2] = v14;
  sub_2660CD484(v23, (v15 + 3));

  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  *&v23[0] = v15;
  OUTLINED_FUNCTION_0_11();
  sub_26611CEDC(v16, v17, v18);
  v19 = sub_26618AFA0();

  return v19;
}

void *sub_26611CC3C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  return v0;
}

uint64_t sub_26611CC6C()
{
  sub_26611CC3C();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_26611CCE8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26611CD84;

  return sub_26611C244(a1);
}

uint64_t sub_26611CD84()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_26611CEDC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_26611CF24()
{
  result = qword_2814B4838;
  if (!qword_2814B4838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C510, &qword_266191FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4838);
  }

  return result;
}

uint64_t sub_26611CFC4(uint64_t a1)
{
  sub_26618B0E0();
  sub_26618B810();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  v3 = type metadata accessor for CoreAnalyticsService();
  v4 = swift_allocObject();
  sub_26618C370();
  sub_26618C530();
  v40 = sub_26618C520();
  v5 = sub_26618B470();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_26618B460();
  sub_26618B040();
  v9 = type metadata accessor for MPCEncoder();
  v10 = swift_allocObject();
  v50[3] = v1;
  v50[4] = &off_2877CAA90;
  v50[0] = v2;
  v49[3] = v3;
  v49[4] = &off_2877CD310;
  v49[0] = v4;
  v48[3] = sub_26618C500();
  v48[4] = MEMORY[0x277D61F08];
  v48[0] = v40;
  v47[3] = v5;
  v47[4] = MEMORY[0x277D5BD58];
  v47[0] = v8;
  v46[3] = &type metadata for AppLaunchFeatureFlagsImpl;
  v46[4] = &off_2877CD168;
  v45[3] = v9;
  v45[4] = &off_2877CC3A8;
  v45[0] = v10;
  type metadata accessor for LaunchAppHandleIntentStrategy();
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v50, v1);
  OUTLINED_FUNCTION_3_5();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v17 = (v16 - v15);
  (*(v18 + 16))(v16 - v15);
  __swift_mutable_project_boxed_opaque_existential_1(v49, v3);
  OUTLINED_FUNCTION_3_5();
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_4();
  v24 = (v23 - v22);
  (*(v25 + 16))(v23 - v22);
  __swift_mutable_project_boxed_opaque_existential_1(v46, &type metadata for AppLaunchFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v9);
  OUTLINED_FUNCTION_3_5();
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_4();
  v31 = (v30 - v29);
  (*(v32 + 16))(v30 - v29);
  v33 = *v17;
  v34 = *v24;
  v35 = *v31;
  v44[3] = v1;
  v44[4] = &off_2877CAA90;
  v44[0] = v33;
  v43[3] = v3;
  v43[4] = &off_2877CD310;
  v43[0] = v34;
  *(v11 + 456) = &type metadata for AppLaunchFeatureFlagsImpl;
  *(v11 + 464) = &off_2877CD168;
  *(v11 + 504) = v9;
  *(v11 + 512) = &off_2877CC3A8;
  *(v11 + 480) = v35;
  sub_2660C5864(v54, v11 + 16);
  sub_2660C5864(v53, v11 + 56);
  *(v11 + 520) = a1;
  sub_2660C5864(v44, v11 + 96);
  sub_2660C5864(v43, v11 + 136);
  sub_2660C5864(v52, v11 + 176);
  sub_2660C5864(v48, v11 + 216);
  sub_2660C5864(v47, v11 + 256);
  sub_2660C5864(v11 + 56, v11 + 296);
  sub_2660C5864(v11 + 256, v11 + 336);

  v36 = sub_26618C8A0();
  LODWORD(v5) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  *(v11 + 384) = v5 == 1;
  sub_2660C5864(v11 + 296, v42);
  type metadata accessor for LocUtil();
  v37 = swift_allocObject();
  sub_2660B9EB8(v42, v37 + 16);
  *(v11 + 376) = v37;
  sub_2660B9EB8(&v51, v11 + 392);
  sub_2660C5864(v11 + 56, v42);
  v38 = swift_allocObject();
  sub_2660B9EB8(v42, v38 + 16);
  *(v11 + 472) = v38;
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v11;
}

uint64_t sub_26611D4DC()
{
  OUTLINED_FUNCTION_18();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v1[20] = OUTLINED_FUNCTION_8_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64);
  v1[21] = OUTLINED_FUNCTION_8_2();
  v10 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  v1[22] = OUTLINED_FUNCTION_8_2();
  v13 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v13);
  v15 = *(v14 + 64);
  v1[23] = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618B6A0();
  v1[24] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v1[25] = v17;
  v19 = *(v18 + 64);
  v1[26] = OUTLINED_FUNCTION_8_2();
  v20 = sub_26618C6B0();
  v1[27] = v20;
  OUTLINED_FUNCTION_0_4(v20);
  v1[28] = v21;
  v23 = *(v22 + 64);
  v1[29] = OUTLINED_FUNCTION_25_0();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_26611D6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_60_1();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v17 = v16[35];
  v18 = v16[27];
  v19 = v16[28];
  v20 = __swift_project_value_buffer(v18, qword_2814B4A98);
  v16[36] = v20;
  v21 = *(v19 + 16);
  v16[37] = v21;
  v16[38] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v17, v20, v18);
  v22 = sub_26618C690();
  v23 = sub_26618CAA0();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_24_0();
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2660B7000, v22, v23, "LaunchApp.HandleIntentFlowStrategy.makeIntentHandledResponse() called", v24, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v25 = v16[35];
  v26 = v16[27];
  v27 = v16[28];
  v28 = v16[18];

  v29 = *(v27 + 8);
  v16[39] = v29;
  v29(v25, v26);
  v16[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C8, &unk_266191AB0);
  v30 = sub_26618B5F0();
  v31 = [v30 application];
  v16[41] = v31;

  if (v31)
  {
    v32 = sub_2660C9D24(v31);
    v16[42] = v32;
    v16[43] = v33;
    if (v33)
    {
      v34 = v32;
      v16[44] = sub_2660C9D30(v31);
      v16[45] = v35;
      if (v35)
      {
        v117 = v34;
        v36 = v16[18];
        v37 = sub_26618B5E0();
        v38 = sub_266124938(v37);
        if (v39)
        {
          v40 = v39;
          v119 = v16[19];
          v41 = v38;
          v42 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
          v16[46] = v42;
          v122 = v42;
          sub_2661249A8(v41, v40, v42);

          v43 = *(v119 + 520);
          v16[47] = v43;
          if (v43)
          {
            v44 = v16[34];
            v45 = v16[27];
            v120 = v43;

            v21(v44, v20, v45);
            v46 = sub_26618C690();
            v47 = sub_26618CAA0();
            v48 = OUTLINED_FUNCTION_21_6();
            if (os_log_type_enabled(v48, v49))
            {
              OUTLINED_FUNCTION_24_0();
              v50 = swift_slowAlloc();
              *v50 = 0;
              _os_log_impl(&dword_2660B7000, v46, v47, "LaunchApp.HandleIntentFlowStrategy.makeIntentHandledResponse submiting the appPunchout command to the remote device", v50, 2u);
              OUTLINED_FUNCTION_10_2();
              MEMORY[0x26677CC30]();
            }

            v51 = v16[34];
            v53 = v16[27];
            v52 = v16[28];
            v54 = v16[19];

            v55 = OUTLINED_FUNCTION_11_2();
            (v29)(v55);
            v56 = v54[6];
            __swift_project_boxed_opaque_existential_1(v54 + 2, v54[5]);
            sub_26618C4A0();
            v16[48] = v57;
            v58 = *(MEMORY[0x277D5BFA8] + 4);
            v59 = swift_task_alloc();
            v16[49] = v59;
            sub_2660DF8A0();
            *v59 = v16;
            v59[1] = sub_26611DD44;
            OUTLINED_FUNCTION_36();

            return MEMORY[0x2821BB680](v60, v61, v62, v63, v64, v65, v66, v67, a9, v117, v120, v122, a13, a14, a15, a16);
          }

          else
          {
            v96 = v16[19];
            v97 = v96[11];
            __swift_project_boxed_opaque_existential_1(v96 + 7, v96[10]);
            if (sub_26618B190())
            {
              v98 = *MEMORY[0x277D47C88];
              v99 = sub_26618C8B0();
              sub_266124AC0(v99, v100, v122, &selRef_setExecutionEnvironment_);
            }

            v101 = v16[18];
            v102 = sub_26618B5E0();
            v103 = OBJC_IVAR___LaunchAppIntentResponse_code;
            swift_beginAccess();
            v104 = *&v102[v103];

            v105 = v16[19];
            if (v104 == 101)
            {

              v106 = swift_task_alloc();
              v16[55] = v106;
              *v106 = v16;
              v106[1] = sub_26611E270;
              OUTLINED_FUNCTION_36();

              return sub_2660C2F20();
            }

            else
            {

              v108 = v105[6];
              __swift_project_boxed_opaque_existential_1(v105 + 2, v105[5]);
              v109 = *(MEMORY[0x277D5BFB8] + 4);
              v110 = swift_task_alloc();
              v16[60] = v110;
              sub_2660DF8A0();
              *v110 = v16;
              v110[1] = sub_26611E918;
              OUTLINED_FUNCTION_36();

              return MEMORY[0x2821BB6A0](v111, v112, v113, v114);
            }
          }
        }
      }
    }
  }

  v68 = v16[31];
  v69 = OUTLINED_FUNCTION_42_3();
  (v21)(v69, v20);
  v70 = sub_26618C690();
  sub_26618CAA0();
  v71 = OUTLINED_FUNCTION_21_6();
  if (os_log_type_enabled(v71, v72))
  {
    OUTLINED_FUNCTION_24_0();
    v73 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_0(v73);
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v74, v75, v76, v77, v78, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v79 = v16[31];
  v80 = v16[27];
  v81 = v16[28];

  v82 = OUTLINED_FUNCTION_12_1();
  (v29)(v82);
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  v123 = swift_allocError();
  OUTLINED_FUNCTION_57_1(v123, v83);
  v85 = v16[34];
  v84 = v16[35];
  OUTLINED_FUNCTION_12_8();
  v86 = v16[22];
  v87 = v16[23];
  v118 = v16[21];
  v121 = v16[20];

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_36();

  return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, v118, v121, v123, a13, a14, a15, a16);
}

uint64_t sub_26611DD44()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 392);
  *v4 = *v1;
  v3[50] = v7;
  v3[51] = v0;

  if (!v0)
  {
    v8 = v3[48];
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26611DE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_47_3();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_60_1();
  a22 = v24;
  v27 = v24[50];
  OUTLINED_FUNCTION_51_0();
  v28 = v24[33];
  v29 = OUTLINED_FUNCTION_42_3();
  v30(v29);
  v31 = v27;
  v32 = sub_26618C690();
  v33 = sub_26618CAA0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v24[50];
    v66 = v24[33];
    v67 = v24[39];
    v35 = v24[28];
    v65 = v24[27];
    v36 = swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_45_1();
    a13 = v37;
    *v36 = 136315138;
    v38 = v34;
    v39 = [v38 description];
    v40 = sub_26618C8B0();
    v42 = v41;

    v43 = sub_266103A98(v40, v42, &a13);

    *(v36 + 4) = v43;
    OUTLINED_FUNCTION_14_11();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    v49 = OUTLINED_FUNCTION_15_8();
    MEMORY[0x26677CC30](v49);

    v67(v66, v65);
  }

  else
  {
    v50 = v24[39];
    v51 = v24[33];
    v52 = v24[27];
    v53 = v24[28];

    v54 = OUTLINED_FUNCTION_12_1();
    v50(v54);
  }

  v55 = v24[47];
  v56 = v24[40];
  v57 = v24[18];
  v58 = *__swift_project_boxed_opaque_existential_1((v24[19] + 136), *(v24[19] + 160));
  sub_266178F28(1);
  v24[52] = sub_26618B5F0();
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v24[53] = v59;
  *v59 = v60;
  v59[1] = sub_26611E074;
  v61 = v24[19];
  v62 = v24[17];
  OUTLINED_FUNCTION_36();

  return sub_2661210E4();
}

uint64_t sub_26611E074()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *(v2 + 424);
  *v4 = *v1;
  *(v3 + 432) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26611E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v15 = *(v14 + 368);
  v16 = *(v14 + 376);
  v17 = *(v14 + 328);

  OUTLINED_FUNCTION_2_14();
  v29 = v19;
  v30 = v18;

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_22_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, a12, a13, a14);
}

uint64_t sub_26611E270()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 440);
  *v4 = *v1;
  v3[56] = v7;
  v3[57] = v0;

  if (!v0)
  {
    v8 = v3[43];
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26611E378()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[42];
  v52 = v0[43];
  v54 = v0[57];
  v4 = v0[41];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  sub_26618B1B0();
  *(swift_task_alloc() + 16) = v4;
  sub_26618B620();

  MEMORY[0x26677BCF0](v2, v1);
  MEMORY[0x26677BCF0](47, 0xE100000000000000);

  v9 = sub_2660C9D48(v4, &selRef_adamId);
  v11 = v10;
  v12 = sub_26618AB50();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
  v13 = v54;
  sub_26616694C(v3, v52, v2, v1, v9, v11, 0xD000000000000024, 0x8000000266199480, v8, v50, v52, v54, 0xD000000000000024, 0x8000000266199480, 47, 0xE100000000000000, v56, v57, v58, v59, v60);
  if (v13)
  {
    v14 = v0[56];
    v15 = v0[46];
    v16 = v0[41];
    (*(v0[25] + 8))(v0[26], v0[24]);

    v18 = v0[34];
    v17 = v0[35];
    v20 = v0[32];
    v19 = v0[33];
    v22 = v0[30];
    v21 = v0[31];
    v23 = v0[29];
    v24 = v0[26];
    v25 = v0[23];
    v51 = v0[22];
    v53 = v0[21];
    v55 = v0[20];

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_20_2();

    __asm { BRAA            X1, X16 }
  }

  v28 = v0[56];
  v29 = v0[22];
  v30 = v0[19];
  v31 = v30[36];
  __swift_project_boxed_opaque_existential_1(v30 + 32, v30[35]);
  v0[10] = type metadata accessor for AppLaunchDataModels(0);
  OUTLINED_FUNCTION_7_12();
  v0[11] = sub_266124B2C(v32, 255, v33);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  sub_266124A08(v29, boxed_opaque_existential_0, type metadata accessor for AppLaunchDataModels.AppOffloadedModel);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v35 = OUTLINED_FUNCTION_35_3();
  v0[58] = v35;
  *(v35 + 16) = xmmword_26618F7E0;
  *(v35 + 32) = v28;
  v36 = *(MEMORY[0x277D5BE38] + 4);
  v37 = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[59] = v38;
  *v38 = v39;
  v38[1] = sub_26611E708;
  v40 = v0[26];
  v41 = v0[17];
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821BB468](v42, v43, v44, v45, v46, v47);
}

uint64_t sub_26611E708()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *(v4 + 464);
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26611E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v15 = *(v14 + 448);
  v16 = *(v14 + 328);
  v18 = *(v14 + 200);
  v17 = *(v14 + 208);
  v19 = *(v14 + 192);
  v20 = *(v14 + 176);

  sub_266124A68(v20, type metadata accessor for AppLaunchDataModels.AppOffloadedModel);
  v21 = *(v18 + 8);
  v22 = OUTLINED_FUNCTION_11_0();
  v23(v22);
  OUTLINED_FUNCTION_2_14();
  v35 = v25;
  v36 = v24;

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_22_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, a12, a13, a14);
}

uint64_t sub_26611E918()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 480);
  *v3 = *v1;
  *(v2 + 488) = v6;
  *(v2 + 496) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_26611EA1C()
{
  v1 = v0[61];
  OUTLINED_FUNCTION_51_0();
  v2 = v0[32];
  v3 = OUTLINED_FUNCTION_42_3();
  v4(v3);
  v5 = v1;
  v6 = sub_26618C690();
  LOBYTE(v1) = sub_26618CAA0();

  if (os_log_type_enabled(v6, v1))
  {
    v7 = v0[61];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_2660BF79C(v9, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v33 = v0[61];
  v34 = v0[46];
  v32 = v0[41];
  v16 = v0[39];
  v17 = v0[32];
  v18 = v0[27];
  v19 = v0[28];
  v21 = v0[19];
  v20 = v0[20];
  v22 = v0[17];

  v16(v17, v18);
  v23 = v21[53];
  __swift_project_boxed_opaque_existential_1(v21 + 49, v21[52]);
  sub_26618B0D0();
  sub_26618B0C0();
  sub_26618B050();

  v24 = v21[53];
  __swift_project_boxed_opaque_existential_1(v21 + 49, v21[52]);
  sub_26618B0B0();
  sub_26618B050();

  sub_26618B430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618F7E0;
  *(inited + 32) = v32;
  v26 = v32;
  sub_26614AC6C();
  swift_setDeallocating();
  sub_2661242E4();
  sub_26618B390();
  v27 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v27);
  v28 = sub_26618B870();
  v29 = MEMORY[0x277D5C1D8];
  v22[3] = v28;
  v22[4] = v29;
  __swift_allocate_boxed_opaque_existential_0(v22);
  sub_26618B850();

  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_20_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26611ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, void *), uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_47_3();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_60_1();
  a22 = v25;
  v29 = v25[48];

  v30 = v25[51];
  OUTLINED_FUNCTION_51_0();
  v31 = v25[30];
  v32 = OUTLINED_FUNCTION_42_3();
  v33(v32);
  v34 = v30;
  v35 = sub_26618C690();
  v36 = sub_26618CAA0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_46_2();
    v38 = OUTLINED_FUNCTION_45_1();
    a12 = v38;
    OUTLINED_FUNCTION_65_1(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v39 = sub_26618C8D0();
    v41 = v30;
    v42 = sub_266103A98(v39, v40, &a12);

    *(v37 + 4) = v42;
    v30 = v41;
    OUTLINED_FUNCTION_64_0(&dword_2660B7000, v43, v44, "LaunchApp.HandleIntentFlowStrategy.makeIntentHandledResponse submitToRemote failed with error: %s");
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();

    a10(a9, v26);
  }

  else
  {
    v24 = v25[39];
    v45 = v25[30];
    v26 = v25[27];
    v36 = v25[28];

    v46 = OUTLINED_FUNCTION_11_2();
    v24(v46);
  }

  OUTLINED_FUNCTION_50_1();
  v47 = v30;
  sub_266120A04(0);

  swift_willThrow();
  v49 = v25[34];
  v48 = v25[35];
  OUTLINED_FUNCTION_12_8();
  v50 = v25[22];
  v51 = v25[23];
  v61 = v25[21];
  v62 = v25[20];

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_36();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, v61, v62, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_26611EFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, void *), uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_47_3();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_60_1();
  a22 = v25;

  v29 = *(v25 + 432);
  OUTLINED_FUNCTION_51_0();
  v30 = *(v25 + 240);
  v31 = OUTLINED_FUNCTION_42_3();
  v32(v31);
  v33 = v29;
  v34 = sub_26618C690();
  v35 = sub_26618CAA0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_46_2();
    v37 = OUTLINED_FUNCTION_45_1();
    a12 = v37;
    OUTLINED_FUNCTION_65_1(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v38 = sub_26618C8D0();
    v40 = v29;
    v41 = sub_266103A98(v38, v39, &a12);

    *(v36 + 4) = v41;
    v29 = v40;
    OUTLINED_FUNCTION_64_0(&dword_2660B7000, v42, v43, "LaunchApp.HandleIntentFlowStrategy.makeIntentHandledResponse submitToRemote failed with error: %s");
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();

    a10(a9, v26);
  }

  else
  {
    v24 = *(v25 + 312);
    v44 = *(v25 + 240);
    v26 = *(v25 + 216);
    v35 = *(v25 + 224);

    v45 = OUTLINED_FUNCTION_11_2();
    v24(v45);
  }

  OUTLINED_FUNCTION_50_1();
  v46 = v29;
  sub_266120A04(0);

  swift_willThrow();
  v48 = *(v25 + 272);
  v47 = *(v25 + 280);
  OUTLINED_FUNCTION_12_8();
  v49 = *(v25 + 176);
  v50 = *(v25 + 184);
  v60 = *(v25 + 168);
  v61 = *(v25 + 160);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_36();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, v60, v61, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_26611F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v15 = *(v14 + 360);
  v16 = *(v14 + 344);
  v17 = *(v14 + 328);

  swift_bridgeObjectRelease_n();
  v18 = *(v14 + 456);
  v20 = *(v14 + 272);
  v19 = *(v14 + 280);
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_66_0();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26611F2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_3();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_26_1();
  a20 = v22;
  v25 = v22[62];
  OUTLINED_FUNCTION_51_0();
  v26 = v22[29];
  v27 = OUTLINED_FUNCTION_42_3();
  v28(v27);
  v29 = v25;
  v30 = sub_26618C690();
  v31 = sub_26618CAA0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v22[62];
    v66 = v22[39];
    v34 = v22[28];
    v33 = v22[29];
    v35 = v22[27];
    v36 = swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_45_1();
    a11 = v37;
    *v36 = 136315138;
    v22[15] = v32;
    v38 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v39 = sub_26618C8D0();
    v41 = sub_266103A98(v39, v40, &a11);

    *(v36 + 4) = v41;
    OUTLINED_FUNCTION_14_11();
    _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    v47 = OUTLINED_FUNCTION_15_8();
    MEMORY[0x26677CC30](v47);

    v48 = OUTLINED_FUNCTION_12_1();
    v66(v48);
  }

  else
  {
    v49 = v22[39];
    v51 = v22[28];
    v50 = v22[29];
    v52 = v22[27];

    v53 = OUTLINED_FUNCTION_12_1();
    v49(v53);
  }

  v54 = v22[40];
  v55 = v22[18];
  v56 = sub_26618B5F0();
  v57 = [v56 requestedApplication];

  if (v57 && (sub_26610410C(v57), v58))
  {
    v59 = v58;
  }

  else
  {

    v59 = 0xE000000000000000;
  }

  v22[63] = v59;
  v60 = v22[19];
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v22[64] = v61;
  *v61 = v62;
  v61[1] = sub_26611F518;
  v63 = v22[17];
  OUTLINED_FUNCTION_22_0();

  return sub_26617AA58();
}

uint64_t sub_26611F518()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 520) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26611F614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v16 = v14[62];
  v15 = v14[63];
  v17 = v14[46];
  v18 = v14[41];

  OUTLINED_FUNCTION_2_14();
  v30 = v20;
  v31 = v19;

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_22_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_26611F6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v16 = v14[62];
  v15 = v14[63];
  v17 = v14[46];
  v18 = v14[41];

  v19 = v14[65];
  v21 = v14[34];
  v20 = v14[35];
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_66_0();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26611F7D4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  sub_26618B680();
  sub_26618B640();
  sub_26618B430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618F7E0;
  *(inited + 32) = a2;
  v8 = a2;
  sub_26614AC6C();
  swift_setDeallocating();
  sub_2661242E4();
  sub_26618B390();
  v9 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  return sub_26618B660();
}

uint64_t sub_26611F904()
{
  OUTLINED_FUNCTION_18();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v1[13] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64);
  v1[14] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618B6A0();
  v1[15] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[16] = v11;
  v13 = *(v12 + 64);
  v1[17] = OUTLINED_FUNCTION_8_2();
  v14 = sub_26618C6B0();
  v1[18] = v14;
  OUTLINED_FUNCTION_0_4(v14);
  v1[19] = v15;
  v17 = *(v16 + 64);
  v1[20] = OUTLINED_FUNCTION_25_0();
  v1[21] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26611FA44()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[19];
  __swift_project_value_buffer(v0[18], qword_2814B4A98);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_11_0();
  v3(v4);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_24_0();
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "LaunchApp.HandleIntentFlowStrategy.makeFailureHandlingIntentResponse() called", v7, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[19];
  v11 = v0[11];

  v12 = *(v10 + 8);
  v13 = OUTLINED_FUNCTION_11_2();
  v12(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C8, &unk_266191AB0);
  v14 = sub_26618B5F0();
  v15 = [v14 application];
  v0[22] = v15;

  if (!v15)
  {
LABEL_13:
    v25 = v0[20];
    v26 = v0[18];
    v27 = OUTLINED_FUNCTION_11_0();
    v3(v27);
    v28 = sub_26618C690();
    sub_26618CAA0();
    v29 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_24_0();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v31);
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v38 = v0[19];
    v37 = v0[20];
    v39 = v0[18];

    v40 = OUTLINED_FUNCTION_12_1();
    v12(v40);
    sub_2660D3004();
    OUTLINED_FUNCTION_18_1();
    v41 = swift_allocError();
    OUTLINED_FUNCTION_57_1(v41, v42);
    OUTLINED_FUNCTION_58_1();

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_49_1();

    __asm { BRAA            X1, X16 }
  }

  sub_2660C9D24(v15);
  v0[23] = v16;
  if (!v16)
  {

    goto LABEL_13;
  }

  v0[24] = sub_2660C9D30(v15);
  v0[25] = v17;
  if (!v17)
  {

    goto LABEL_13;
  }

  v18 = v0[11];
  v19 = sub_26618B5E0();
  v20 = OBJC_IVAR___LaunchAppIntentResponse_code;
  swift_beginAccess();
  v21 = *&v19[v20];

  if (v21 == 100)
  {
    if (*(v0[12] + 520))
    {
      sub_26618C4C0();
      v23 = v22;
      v24 = v0[12];
    }

    else
    {
      v23 = 0;
    }

    v0[26] = v23;
    v51 = swift_task_alloc();
    v0[27] = v51;
    *v51 = v0;
    v51[1] = sub_26611FE48;
    OUTLINED_FUNCTION_49_1();

    return sub_2660C2254();
  }

  else
  {
    v45 = v0[12];

    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[34] = v46;
    *v46 = v47;
    v46[1] = sub_266120600;
    v48 = v0[10];
    OUTLINED_FUNCTION_49_1();

    return sub_26617AA58();
  }
}

uint64_t sub_26611FE48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 216);
  *v4 = *v1;
  v3[28] = v7;
  v3[29] = v0;

  if (!v0)
  {
    v8 = v3[26];
    v9 = v3[23];
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26611FF5C()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[12];
  sub_26618B1B0();
  *(swift_task_alloc() + 16) = v1;
  sub_26618B620();

  v5 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  OUTLINED_FUNCTION_12_1();
  if (sub_26618B1A0())
  {
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[12];

    OUTLINED_FUNCTION_17_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v9 = OUTLINED_FUNCTION_35_3();
    v0[30] = v9;
    *(v9 + 16) = xmmword_26618F7E0;
    *(v9 + 32) = v6;
    v10 = *(MEMORY[0x277D5BE58] + 4);
    v11 = v6;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[31] = v12;
    *v12 = v13;
    v12[1] = sub_266120298;
    v14 = v0[17];
    v15 = v0[10];
    OUTLINED_FUNCTION_29_0();

    return MEMORY[0x2821BB488](v16, v17, v18, v19, v20);
  }

  else
  {
    v22 = v0[29];
    v23 = v0[12];
    sub_2661235E0(v0[24], v0[25], v0[13]);
    if (v22)
    {
      v24 = v0[28];
      v25 = v0[25];
      v26 = v0[22];
      (*(v0[16] + 8))(v0[17], v0[15]);

      v28 = v0[20];
      v27 = v0[21];
      v29 = v0[17];
      v31 = v0[13];
      v30 = v0[14];

      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_29_0();

      __asm { BRAA            X1, X16 }
    }

    v34 = v0[28];
    v35 = v0[25];
    v36 = v0[12];
    v37 = v0[13];

    OUTLINED_FUNCTION_17_8();
    v0[5] = type metadata accessor for AppLaunchDataModels(0);
    OUTLINED_FUNCTION_7_12();
    v0[6] = sub_266124B2C(v38, 255, v39);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_28_7(boxed_opaque_existential_0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v41 = OUTLINED_FUNCTION_35_3();
    v0[32] = v41;
    *(v41 + 16) = xmmword_26618F7E0;
    *(v41 + 32) = v34;
    v42 = *(MEMORY[0x277D5BE48] + 4);
    v43 = v34;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[33] = v44;
    *v44 = v45;
    v44[1] = sub_266120440;
    v46 = v0[17];
    v47 = v0[10];
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_29_0();

    return MEMORY[0x2821BB478](v48, v49, v50, v51, v52, v53);
  }
}

uint64_t sub_266120298()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266120398()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 224);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_11_0();
  v7(v6);
  OUTLINED_FUNCTION_55_1();

  OUTLINED_FUNCTION_9_10();

  return v8();
}

uint64_t sub_266120440()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266120540()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 224);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);

  OUTLINED_FUNCTION_30_5();
  sub_266124A68(v5, v6);
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_11_0();
  v9(v8);
  OUTLINED_FUNCTION_55_1();

  OUTLINED_FUNCTION_9_10();

  return v10();
}

uint64_t sub_266120600()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 280) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2661206FC()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_55_1();

  OUTLINED_FUNCTION_9_10();

  return v2();
}

uint64_t sub_266120788()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);

  v4 = *(v0 + 232);
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_266120834()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 184);

  v2 = *(v0 + 280);
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2661208CC(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  sub_26618B680();
  sub_26618B690();
  sub_26618B640();
  sub_26618B430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618F7E0;
  *(inited + 32) = a2;
  v8 = a2;
  sub_26614AC6C();
  swift_setDeallocating();
  sub_2661242E4();
  sub_26618B390();
  v9 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  return sub_26618B660();
}

uint64_t sub_266120A04(int a1)
{
  LODWORD(v85) = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4E8, &unk_266191E70);
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v89 = v76 - v6;
  v93 = sub_26618C580();
  v7 = OUTLINED_FUNCTION_2_2(v93);
  v87 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v92 = v12 - v11;
  v94 = sub_26618C490();
  v13 = OUTLINED_FUNCTION_2_2(v94);
  v88 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v86 = v18 - v17;
  v19 = sub_26618C480();
  v20 = OUTLINED_FUNCTION_2_2(v19);
  v95 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  v96 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4F0, &qword_2661921C0);
  v27 = OUTLINED_FUNCTION_3_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = v76 - v30;
  v32 = sub_26618A5F0();
  v33 = OUTLINED_FUNCTION_2_2(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24_1();
  v91 = v38 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = v76 - v41;
  sub_26618A5E0();
  v43 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_26618B5A0();
  if (v44)
  {
    sub_26618A5C0();

    if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
    {
      sub_2660BF79C(v31, &qword_28005C4F0, &qword_2661921C0);
    }

    else
    {
      (*(v35 + 8))(v42, v32);
      (*(v35 + 32))(v42, v31, v32);
    }
  }

  v90 = v42;
  v46 = v95;
  v45 = v96;
  v47 = *(v95 + 104);
  v48 = MEMORY[0x277D61EC0];
  LODWORD(v83) = v85 & 1;
  if ((v85 & 1) == 0)
  {
    v48 = MEMORY[0x277D61EB8];
  }

  v47(v96, *v48, v19);
  sub_2660C5864((v1 + 27), v97);
  v82 = v99;
  v81 = __swift_project_boxed_opaque_existential_1(v97, v98);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C540, &qword_2661921C8);
  v76[0] = v1;
  v80 = *(v49 + 48);
  v79 = *(v35 + 16);
  v79(v91, v42, v32);
  v50 = *MEMORY[0x277D61F50];
  v85 = v32;
  v51 = *(v87 + 104);
  v78 = v50;
  v77 = v51;
  v51(v92);
  sub_26618C570();
  v84 = v35;
  v52 = OUTLINED_FUNCTION_59_1();
  *(v54 - 256) = v53;
  __swift_storeEnumTagSinglePayload(v52, v55, v56, v53);
  v57 = v86;
  sub_26618C560();
  v58 = *(v46 + 16);
  v87 = v19;
  v58(v80 + v57, v45, v19);
  v59 = *MEMORY[0x277D61EB0];
  v60 = v88;
  v61 = v90;
  v62 = v94;
  v80 = v88[13];
  v80(v57, v59, v94);
  sub_26618C540();
  v63 = v60[1];
  v63(v57, v62);
  __swift_destroy_boxed_opaque_existential_1(v97);
  if (v83)
  {
    (*(v95 + 8))(v96, v87);
    return (*(v84 + 8))(v61, v85);
  }

  else
  {
    sub_2660C5864(v76[0] + 216, v97);
    v83 = v98;
    v88 = v99;
    v82 = __swift_project_boxed_opaque_existential_1(v97, v98);
    v65 = v57;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C548, &unk_2661921D0) + 48);
    v67 = v85;
    v79(v91, v61, v85);
    v77(v92, v78, v93);
    v68 = OUTLINED_FUNCTION_59_1();
    __swift_storeEnumTagSinglePayload(v68, v70, v71, *(v69 - 256));
    sub_26618C560();
    v72 = *MEMORY[0x277D61EA8];
    v73 = sub_26618C470();
    OUTLINED_FUNCTION_16(v73);
    (*(v74 + 104))(v65 + v66, v72);
    v75 = v94;
    v80(v65, *MEMORY[0x277D61EC8], v94);
    sub_26618C540();
    v63(v65, v75);
    (*(v95 + 8))(v96, v87);
    (*(v84 + 8))(v90, v67);
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }
}

uint64_t sub_2661210E4()
{
  OUTLINED_FUNCTION_18();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_26618C6B0();
  v1[19] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[20] = v6;
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_25_0();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2661211A4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [*(v0 + 136) application];
  if (v1 && (*(v0 + 192) = sub_26610410C(v1), (*(v0 + 200) = v2) != 0))
  {
    v3 = *(MEMORY[0x277D859E0] + 4);
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C528, &qword_2661921A0);
    *v4 = v0;
    v4[1] = sub_266121320;
    v5 = *(v0 + 144);
    OUTLINED_FUNCTION_8();

    return MEMORY[0x2822007B8]();
  }

  else
  {
    sub_2660D3004();
    OUTLINED_FUNCTION_18_1();
    v6 = swift_allocError();
    OUTLINED_FUNCTION_57_1(v6, v7);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 168);

    OUTLINED_FUNCTION_5_3();

    return v11();
  }
}

uint64_t sub_266121320()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 208);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266121404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v11 = *(v10 + 112);
  v12 = 0x2814B2000uLL;
  if (!v11)
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      a1 = swift_once();
    }

    v56 = *(v10 + 160);
    v55 = *(v10 + 168);
    v57 = *(v10 + 152);
    v58 = OUTLINED_FUNCTION_5_10(a1, qword_2814B4A98);
    v59(v58);
    v60 = sub_26618C690();
    v61 = sub_26618CAA0();
    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_24_0();
      v62 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v62);
      _os_log_impl(&dword_2660B7000, v60, v61, "Cannot get systemState of target device from context. Returning default dialog.", v56, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v63 = *(v10 + 200);
    v65 = *(v10 + 160);
    v64 = *(v10 + 168);
    v66 = *(v10 + 152);
    v67 = *(v10 + 128);

    v68 = *(v65 + 8);
    v69 = OUTLINED_FUNCTION_11_2();
    v70(v69);
    sub_26618C4C0();
    *(v10 + 240) = v71;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    *(v10 + 248) = v72;
    *v72 = v73;
    OUTLINED_FUNCTION_62_1(v72);
    goto LABEL_55;
  }

  v109 = sub_2661046B8(*(v10 + 112));
  if (!v109)
  {

    LOBYTE(v11) = 0;
    v14 = 0;
    v108 = 0;
    goto LABEL_51;
  }

  v13 = 0;
  v108 = 0;
  v104 = 0;
  v105 = 0;
  v14 = 0;
  v15 = *(v10 + 160);
  v106 = 0;
  v107 = v11 & 0xC000000000000001;
  v100 = v11 & 0xFFFFFFFFFFFFFF8;
  v102 = (v15 + 8);
  v103 = (v15 + 16);
  v99 = *MEMORY[0x277CEEFF0];
  v101 = v11;
  do
  {
    if (v107)
    {
      v16 = MEMORY[0x26677C150](v13, v11);
    }

    else
    {
      if (v13 >= *(v100 + 16))
      {
        goto LABEL_59;
      }

      v16 = *(v11 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ([v16 proximity] == 4000)
    {

      v105 = sub_2660C9D48(v17, &selRef_roomName);
      v14 = v19;
    }

    v20 = *(v10 + 128);
    v21 = sub_2660C9D48(v17, &selRef_assistantIdentifier);
    v23 = v22;
    v24 = sub_26618C4A0();
    if (!v23)
    {

      goto LABEL_34;
    }

    if (v21 == v24 && v23 == v25)
    {
    }

    else
    {
      v21 = sub_26618D000();

      if ((v21 & 1) == 0)
      {

        goto LABEL_34;
      }
    }

    v27 = v12;
    if (*(v12 + 3136) != -1)
    {
      swift_once();
    }

    v28 = *(v10 + 184);
    v29 = *(v10 + 152);
    v30 = __swift_project_value_buffer(v29, qword_2814B4A98);
    (*v103)(v28, v30, v29);
    v31 = sub_26618C690();
    v32 = sub_26618CAA0();
    v33 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_24_0();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v35);
      _os_log_impl(&dword_2660B7000, v31, v32, "Found context for target device - matched assistantIdentifier", v21, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v36 = *(v10 + 184);
    v37 = *(v10 + 152);

    v38 = *v102;
    v39 = OUTLINED_FUNCTION_12_1();
    v40(v39);
    v104 = sub_2660C9D48(v17, &selRef_roomName);
    v106 = v41;
    if (sub_26612484C(v17))
    {

      result = sub_26612484C(v17);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v43 = result;
      v44 = v14;
      v45 = sub_26618C8B0();
      if (*(v43 + 16))
      {
        v47 = sub_266129F20(v45, v46);
        v49 = v48;

        if (v49)
        {
          sub_2660CD384(*(v43 + 56) + 32 * v47, v10 + 48);

          sub_2660CD3E0((v10 + 48), (v10 + 16));
          sub_2660CD384(v10 + 16, v10 + 80);
          v50 = objc_allocWithZone(MEMORY[0x277CEF4D8]);
          v51 = sub_266124278((v10 + 80));
          v52 = [v51 sleepState];

          __swift_destroy_boxed_opaque_existential_1((v10 + 16));
          v108 = v52 == 2;
LABEL_32:
          v14 = v44;
          goto LABEL_33;
        }
      }

      else
      {
      }

      goto LABEL_32;
    }

LABEL_33:
    v12 = v27;
    v11 = v101;
LABEL_34:
    ++v13;
  }

  while (v18 != v109);

  if (v14)
  {
    if (v106)
    {
      if (v105 == v104 && v14 == v106)
      {

        LOBYTE(v11) = 1;
      }

      else
      {
        LOBYTE(v11) = sub_26618D000();

        v14 = v106;
      }
    }

    else
    {

      LOBYTE(v11) = 0;
      v14 = 0;
    }
  }

  else
  {

    LOBYTE(v11) = 0;
  }

LABEL_51:
  *(v10 + 216) = v14;
  if (*(v12 + 3136) != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_5();
    v54 = swift_once();
  }

  v74 = *(v10 + 176);
  v75 = *(v10 + 152);
  v76 = *(v10 + 160);
  v77 = OUTLINED_FUNCTION_5_10(v54, qword_2814B4A98);
  v78(v77);
  v79 = sub_26618C690();
  v80 = sub_26618CAA0();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 67109376;
    *(v81 + 4) = v11 & 1;
    *(v81 + 8) = 1024;
    *(v81 + 10) = v108;
    _os_log_impl(&dword_2660B7000, v79, v80, "Remote device isInSameRoom:%{BOOL}d, isDeviceAsleep:%{BOOL}d.", v81, 0xEu);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v82 = *(v10 + 200);
  v83 = *(v10 + 176);
  v84 = *(v10 + 152);
  v85 = *(v10 + 160);
  v86 = *(v10 + 128);

  (*(v85 + 8))(v83, v84);
  sub_26618C4C0();
  *(v10 + 224) = v87;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v10 + 232) = v88;
  *v88 = v89;
  OUTLINED_FUNCTION_62_1(v88);
LABEL_55:
  OUTLINED_FUNCTION_20_2();

  return sub_266122038(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10);
}

uint64_t sub_266121B34()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (v0)
  {
    v10 = v3[27];
    v9 = v3[28];
    v11 = v3[25];

    v13 = v3[22];
    v12 = v3[23];
    v14 = v3[21];

    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    v16 = v3[27];
    v17 = v3[25];

    v18 = v3[28];
    v20 = v3[22];
    v19 = v3[23];
    v21 = v3[21];

    OUTLINED_FUNCTION_9_10();
  }

  return v15();
}

uint64_t sub_266121C94()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[30];
    v10 = v3[25];

    v12 = v3[22];
    v11 = v3[23];
    v13 = v3[21];
  }

  else
  {
    v15 = v3[25];

    v16 = v3[30];
    v18 = v3[22];
    v17 = v3[23];
    v19 = v3[21];
  }

  v14 = *(v7 + 8);

  return v14();
}

uint64_t sub_266121DF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C530, &qword_2661921A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7 + 56;
  sub_2660C5864(a2 + 176, v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E180;
  v10 = *MEMORY[0x277CEEFF0];
  *(inited + 32) = sub_26618C8B0();
  *(inited + 40) = v11;
  v12 = *MEMORY[0x277CEEFE0];
  *(inited + 48) = sub_26618C8B0();
  *(inited + 56) = v13;
  sub_266124644(inited);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  sub_26618C380();

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_266121FE8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C530, &qword_2661921A8);
  return sub_26618CA20();
}

uint64_t sub_266122038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  *(v11 + 120) = a2;
  *(v11 + 128) = v10;
  *(v11 + 112) = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C520, &unk_266192190);
  OUTLINED_FUNCTION_3_0(v17);
  v19 = *(v18 + 64);
  *(v11 + 136) = OUTLINED_FUNCTION_8_2();
  v20 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  *(v11 + 144) = v20;
  OUTLINED_FUNCTION_3_0(v20);
  v22 = *(v21 + 64);
  *(v11 + 152) = OUTLINED_FUNCTION_8_2();
  v23 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v23);
  v25 = *(v24 + 64);
  *(v11 + 160) = OUTLINED_FUNCTION_8_2();
  v26 = sub_26618B6A0();
  *(v11 + 168) = v26;
  OUTLINED_FUNCTION_0_4(v26);
  *(v11 + 176) = v27;
  v29 = *(v28 + 64);
  *(v11 + 184) = OUTLINED_FUNCTION_8_2();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = a6;
  *(v11 + 48) = a7;
  *(v11 + 56) = a8;
  *(v11 + 64) = a9;
  *(v11 + 65) = a10;
  v30 = swift_task_alloc();
  *(v11 + 192) = v30;
  *v30 = v11;
  v30[1] = sub_2661221E8;
  OUTLINED_FUNCTION_49_1();

  return sub_2660C3FA8();
}

uint64_t sub_2661221E8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 192);
  *v4 = *v1;
  v3[25] = v7;

  if (v0)
  {
    v8 = v3[23];
    v10 = v3[19];
    v9 = v3[20];
    v11 = v3[17];

    OUTLINED_FUNCTION_5_3();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_8();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_266122338()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];
  sub_26618B1B0();
  sub_26618B620();
  v4 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  v5 = OUTLINED_FUNCTION_11_0();
  if (sub_2660C8128(v5, v6))
  {
    v7 = v0[15];
    sub_26618C4B0();
    v0[26] = v8;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[27] = v9;
    *v9 = v10;
    v9[1] = sub_2661224EC;
    v12 = v0[16];
    v11 = v0[17];

    return sub_2661230CC();
  }

  else
  {
    v14 = v0[25];
    v15 = v0[16];
    sub_266120A04(1);
    OUTLINED_FUNCTION_17_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v16 = OUTLINED_FUNCTION_35_3();
    v0[30] = v16;
    *(v16 + 16) = xmmword_26618F7E0;
    *(v16 + 32) = v14;
    v17 = *(MEMORY[0x277D5BE58] + 4);
    v18 = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[31] = v19;
    *v19 = v20;
    v21 = OUTLINED_FUNCTION_22_5(v19);

    return MEMORY[0x2821BB488](v21, v22, v23, v24, v25);
  }
}

uint64_t sub_2661224EC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 216);
  v3 = *(v1 + 208);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2661225EC()
{
  v1 = v0[17];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[18]) == 1)
  {
    sub_2660BF79C(v1, &qword_28005C520, &unk_266192190);
    v2 = v0[25];
    v3 = v0[16];
    sub_266120A04(1);
    OUTLINED_FUNCTION_17_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v4 = OUTLINED_FUNCTION_35_3();
    v0[30] = v4;
    *(v4 + 16) = xmmword_26618F7E0;
    *(v4 + 32) = v2;
    v5 = *(MEMORY[0x277D5BE58] + 4);
    v6 = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[31] = v7;
    *v7 = v8;
    OUTLINED_FUNCTION_22_5(v7);
    OUTLINED_FUNCTION_29_0();

    return MEMORY[0x2821BB488](v9, v10, v11, v12, v13);
  }

  else
  {
    v15 = v0[25];
    v16 = v0[16];
    sub_2661247E0(v1, v0[19]);
    sub_266120A04(1);
    OUTLINED_FUNCTION_17_8();
    v0[12] = type metadata accessor for AppLaunchDataModels(0);
    OUTLINED_FUNCTION_7_12();
    v0[13] = sub_266124B2C(v17, 255, v18);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 9);
    OUTLINED_FUNCTION_28_7(boxed_opaque_existential_0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v20 = OUTLINED_FUNCTION_35_3();
    v0[28] = v20;
    *(v20 + 16) = xmmword_26618F7E0;
    *(v20 + 32) = v15;
    v21 = *(MEMORY[0x277D5BE48] + 4);
    v22 = v15;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[29] = v23;
    *v23 = v24;
    v23[1] = sub_266122818;
    v25 = v0[23];
    v26 = v0[14];
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_29_0();

    return MEMORY[0x2821BB478](v27, v28, v29, v30, v31, v32);
  }
}

uint64_t sub_266122818()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *(v4 + 224);
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266122918()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_30_5();
  sub_266124A68(v1, v2);
  v3 = OUTLINED_FUNCTION_40_3();
  v4(v3);

  OUTLINED_FUNCTION_9_10();

  return v5();
}

uint64_t sub_2661229B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266122AB8()
{
  OUTLINED_FUNCTION_1_0();

  v1 = OUTLINED_FUNCTION_40_3();
  v2(v1);

  OUTLINED_FUNCTION_9_10();

  return v3();
}

uint64_t sub_266122B8C()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618C6B0();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_25_0();
  v1[8] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266122C40()
{
  OUTLINED_FUNCTION_19();
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v4 = __swift_project_boxed_opaque_existential_1((v0[4] + 480), *(v0[4] + 504));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
    v5 = swift_allocObject();
    v0[9] = v5;
    *(v5 + 16) = xmmword_26618E190;
    *(v5 + 32) = v3;
    *(v5 + 40) = v2;
    v6 = *v4;

    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_266122E40;

    return sub_26615E9D8(v5);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      v1 = swift_once();
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = OUTLINED_FUNCTION_5_10(v1, qword_2814B4A98);
    v13(v12);
    v14 = sub_26618C690();
    sub_26618CAB0();
    v15 = OUTLINED_FUNCTION_21_6();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];
    if (v17)
    {
      OUTLINED_FUNCTION_24_0();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_63_1(v21);
      OUTLINED_FUNCTION_14_11();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      v27 = OUTLINED_FUNCTION_15_8();
      MEMORY[0x26677CC30](v27);
    }

    v28 = *(v19 + 8);
    v29 = OUTLINED_FUNCTION_12_1();
    v30(v29);
    v32 = v0[7];
    v31 = v0[8];

    v33 = v0[1];

    return v33(0);
  }
}

uint64_t sub_266122E40()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v9 + 88) = v8;

  v10 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266122F44()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[11];
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];

    v4 = [objc_allocWithZone(MEMORY[0x277D47AB0]) init];
    v5 = OUTLINED_FUNCTION_12_1();
    sub_266124AC0(v5, v6, v4, v7);
  }

  else
  {
    v8 = v0[11];

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      v9 = swift_once();
    }

    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    v13 = OUTLINED_FUNCTION_5_10(v9, qword_2814B4A98);
    v14(v13);
    v15 = sub_26618C690();
    sub_26618CAB0();
    v16 = OUTLINED_FUNCTION_21_6();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[6];
    if (v18)
    {
      OUTLINED_FUNCTION_24_0();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_63_1(v22);
      OUTLINED_FUNCTION_14_11();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      v28 = OUTLINED_FUNCTION_15_8();
      MEMORY[0x26677CC30](v28);
    }

    v29 = *(v21 + 8);
    v30 = OUTLINED_FUNCTION_12_1();
    v31(v30);
    v4 = 0;
  }

  v33 = v0[7];
  v32 = v0[8];

  v34 = v0[1];

  return v34(v4);
}

uint64_t sub_2661230CC()
{
  OUTLINED_FUNCTION_1_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v7 = sub_26618AB50();
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_8_2();
  v10 = swift_task_alloc();
  v1[9] = v10;
  *v10 = v1;
  v10[1] = sub_2661231F0;

  return sub_266122B8C();
}

uint64_t sub_2661231F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2661232DC(uint64_t a1)
{
  v2 = v1[10];
  if (v2)
  {
    v3 = v1[3];
    v4 = sub_2661238A4();
    if (v5)
    {
      v6 = v1[8];
      v7 = v1[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26618E190;
      v9 = sub_26618AB80();
      v10 = MEMORY[0x277D63778];
      *(v8 + 56) = v9;
      *(v8 + 64) = v10;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 32));
      *boxed_opaque_existential_0 = v2;
      *(boxed_opaque_existential_0 + 8) = 0;
      v12 = *MEMORY[0x277D63720];
      (*(*(v9 - 8) + 104))();
      v13 = v2;
      sub_26618AB60();
      OUTLINED_FUNCTION_11_0();
      AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();

      v14 = 0;
      goto LABEL_15;
    }

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      v4 = swift_once();
    }

    v35 = v1[7];
    v36 = v1[4];
    v37 = v1[5];
    v38 = OUTLINED_FUNCTION_5_10(v4, qword_2814B4A98);
    v39(v38);
    v40 = sub_26618C690();
    sub_26618CAB0();
    v41 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v2;
      OUTLINED_FUNCTION_24_0();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v44);
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      v2 = v40;
      v40 = v43;
    }

    (*(v1[5] + 8))(v1[7], v1[4]);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      a1 = swift_once();
    }

    v16 = v1[5];
    v15 = v1[6];
    v17 = v1[4];
    v18 = OUTLINED_FUNCTION_5_10(a1, qword_2814B4A98);
    v19(v18);
    v20 = sub_26618C690();
    sub_26618CAB0();
    v21 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_24_0();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v23);
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v30 = v1[5];
    v29 = v1[6];
    v31 = v1[4];

    v32 = *(v30 + 8);
    v33 = OUTLINED_FUNCTION_12_1();
    v34(v33);
  }

  v14 = 1;
LABEL_15:
  v51 = v1[7];
  v50 = v1[8];
  v52 = v1[6];
  v53 = v1[2];
  v54 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  __swift_storeEnumTagSinglePayload(v53, v14, 1, v54);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2661235E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = a3;
  v35 = sub_26618AB50();
  v5 = OUTLINED_FUNCTION_2_2(v35);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_1();
  v32[0] = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  v15 = sub_26618AB40();
  v16 = OUTLINED_FUNCTION_2_2(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v23 = v22 - v21;
  sub_26617B97C(a1, a2);
  sub_26618AB30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26618E190;
  v25 = sub_26618AB80();
  v26 = MEMORY[0x277D63778];
  *(v24 + 56) = v25;
  *(v24 + 64) = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v24 + 32));
  v28 = *(v18 + 16);
  v33 = v15;
  v28(boxed_opaque_existential_0, v23, v15);
  (*(*(v25 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D63730], v25);
  sub_26618AB60();
  v29 = v34;
  sub_266123A30();
  if (v29)
  {
    (*(v7 + 8))(v14, v35);
  }

  else
  {
    v30 = v35;
    (*(v7 + 16))(v32[0], v14, v35);
    AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
    (*(v7 + 8))(v14, v30);
  }

  return (*(v18 + 8))(v23, v33);
}

uint64_t sub_2661238A4()
{
  v1 = sub_26618C6B0();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = *(v0 + 472);
  result = sub_26617CA00(0x4D45525F4E45504FLL, 0xEB0000000045544FLL);
  if (!v12)
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_2814B4A80);
    v13 = OUTLINED_FUNCTION_54_1();
    v14(v13);
    v15 = sub_26618C690();
    sub_26618CAC0();
    v16 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_24_0();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_63_1(v18);
      OUTLINED_FUNCTION_14_11();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      v24 = OUTLINED_FUNCTION_15_8();
      MEMORY[0x26677CC30](v24);
    }

    (*(v4 + 8))(v9, v1);
    return 0;
  }

  return result;
}

uint64_t sub_266123A30()
{
  v1 = sub_26618C6B0();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = *(v0 + 472);
  result = sub_26617CA00(0xD000000000000015, 0x8000000266198D00);
  if (!v12)
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_2814B4A98);
    v13 = OUTLINED_FUNCTION_54_1();
    v14(v13);
    v15 = sub_26618C690();
    sub_26618CAB0();
    v16 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_24_0();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_63_1(v18);
      OUTLINED_FUNCTION_14_11();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      v24 = OUTLINED_FUNCTION_15_8();
      MEMORY[0x26677CC30](v24);
    }

    (*(v4 + 8))(v9, v1);
    sub_2660D3004();
    OUTLINED_FUNCTION_18_1();
    swift_allocError();
    *v25 = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_266123BCC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_2660D3208(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  sub_2660D31B4(v0 + 296);
  __swift_destroy_boxed_opaque_existential_1((v0 + 392));
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));
  v1 = *(v0 + 472);

  __swift_destroy_boxed_opaque_existential_1((v0 + 480));

  return v0;
}

uint64_t sub_266123C4C()
{
  sub_266123BCC();

  return MEMORY[0x2821FE8D8](v0, 528, 7);
}

uint64_t sub_266123CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_266123D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_266123E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_266123EF0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D3260;

  return sub_26611D4DC();
}

uint64_t sub_266123F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D2E00;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_266124060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_266124124()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D3260;

  return sub_26611F904();
}

uint64_t sub_2661241D0(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = sub_2661193CC(a1, a2);
  v6 = *(v3 + 8);

  return v6(v5);
}

id sub_266124278(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2661242E4()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26612432C(uint64_t a1)
{
  v2 = sub_26618A660();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v40 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_1();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v44 = &v35 - v11;
  if (!*(a1 + 16))
  {
    v13 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C550, &qword_2661921E0);
  result = sub_26618CD60();
  v13 = result;
  v39 = *(a1 + 16);
  if (!v39)
  {
LABEL_15:

    return v13;
  }

  v14 = 0;
  v43 = result + 56;
  v15 = *(v40 + 80);
  v37 = a1;
  v38 = a1 + ((v15 + 32) & ~v15);
  v42 = v40 + 16;
  v16 = (v40 + 8);
  v36 = (v40 + 32);
  while (v14 < *(a1 + 16))
  {
    v17 = *(v40 + 72);
    v41 = v14 + 1;
    v18 = *(v40 + 16);
    v18(v44, v38 + v17 * v14, v2);
    v19 = *(v13 + 40);
    OUTLINED_FUNCTION_31_6();
    sub_266124B2C(&qword_28005C558, 255, v20);
    v21 = sub_26618C860();
    v22 = ~(-1 << *(v13 + 32));
    while (1)
    {
      v23 = v21 & v22;
      v24 = (v21 & v22) >> 6;
      v25 = *(v43 + 8 * v24);
      v26 = 1 << (v21 & v22);
      if ((v26 & v25) == 0)
      {
        break;
      }

      v27 = v13;
      v18(v9, *(v13 + 48) + v23 * v17, v2);
      OUTLINED_FUNCTION_31_6();
      sub_266124B2C(&qword_28005C560, 255, v28);
      v29 = sub_26618C890();
      v30 = *v16;
      (*v16)(v9, v2);
      if (v29)
      {
        result = (v30)(v44, v2);
        v13 = v27;
        goto LABEL_12;
      }

      v21 = v23 + 1;
      v13 = v27;
    }

    v31 = v44;
    *(v43 + 8 * v24) = v26 | v25;
    result = (*v36)(*(v13 + 48) + v23 * v17, v31, v2);
    v32 = *(v13 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_17;
    }

    *(v13 + 16) = v34;
LABEL_12:
    v14 = v41;
    a1 = v37;
    if (v41 == v39)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_266124644(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C538, &unk_2661921B0);
  result = sub_26618CD60();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_26618D090();

    sub_26618C910();
    result = sub_26618D0C0();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_26618D000() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2661247E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26612484C(void *a1)
{
  v1 = [a1 serializedContextByKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26618C840();

  return v3;
}

uint64_t sub_2661248B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C530, &qword_2661921A8);
  OUTLINED_FUNCTION_3_0(v0);
  v2 = *(v1 + 80);

  return sub_266121FE8();
}

uint64_t sub_266124938(void *a1)
{
  v2 = [a1 appToLaunch];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26618C8B0();

  return v3;
}

void sub_2661249A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setLaunchId_];
}

uint64_t sub_266124A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_16(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266124A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_266124AC0(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_26618C8A0();

  [a3 *a4];
}

uint64_t sub_266124B2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_14()
{
  v2 = v0[34];
  result = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[20];
  v12 = v0[21];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);
  v5 = *(v4 + 16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_9_10()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_12_8()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[26];
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{
  *(a1 + 8) = sub_2661229B8;
  v2 = *(v1 + 184);
  return *(v1 + 112);
}

uint64_t OUTLINED_FUNCTION_28_7(uint64_t a1)
{

  return sub_266124A08(v1, a1, type metadata accessor for AppLaunchDataModels.ButtonFallbackModel);
}

uint64_t OUTLINED_FUNCTION_40_3()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  v5 = *(v0[22] + 8);
  return v0[23];
}

uint64_t OUTLINED_FUNCTION_46_2()
{
  v2 = v0[30];
  v6 = v0[39];
  v4 = v0[27];
  v3 = v0[28];

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_50_1()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[41];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[19] + 136), *(v0[19] + 160));

  sub_266178F28(0);
}

void OUTLINED_FUNCTION_51_0()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
}

uint64_t OUTLINED_FUNCTION_55_1()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
}

uint64_t OUTLINED_FUNCTION_62_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[24];
  v4 = v2[18];
  result = v2[15];
  v6 = v2[16];
  return result;
}

void OUTLINED_FUNCTION_64_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_65_1(float a1)
{
  *v2 = a1;
  *(v1 + 128) = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_66_0()
{
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[20];
}

uint64_t sub_266124ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_26618CA40();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_2661922B0;
  v10[5] = v9;
  sub_266128FE0(0, 0, v7, &unk_2661922C0, v10);
}

id LaunchAppIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void LaunchAppIntentHandler.init()()
{
  OUTLINED_FUNCTION_6_0();
  sub_26618B0E0();
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8();
  }

  v0 = static InstalledAppProvider.shared;
  v23 = type metadata accessor for InstalledAppProvider();
  v24 = &protocol witness table for InstalledAppProvider;
  *&v22 = v0;
  v21[19] = &type metadata for CoreDuetAppSelectionResolver;
  v21[20] = &off_2877CC198;
  v1 = swift_allocObject();
  v21[16] = v1;
  *(v1 + 40) = &type metadata for CoreDuetKnowledgeStore;
  *(v1 + 48) = &off_2877CC1C8;
  v28 = &type metadata for AppsSearcher;
  v29 = &off_2877CC0A0;
  v27[0] = swift_allocObject();
  v21[15] = 1;
  sub_2660C5864(&v22, &v20);
  sub_2660C5864(&v22, v19);
  v2 = objc_opt_self();
  swift_retain_n();
  sub_266104118([v2 sharedPreferences]);
  v4 = v3;
  v5 = type metadata accessor for RegexAppsResolver();
  v21[3] = v5;
  v21[4] = &off_2877CC718;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_2660C5864(v19, boxed_opaque_existential_0);
  v7 = boxed_opaque_existential_0 + *(v5 + 20);
  if (v4)
  {
    OUTLINED_FUNCTION_31_0();
  }

  sub_26618A600();
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v26)
  {
    v21[8] = &type metadata for AceAppResolver;
    v21[9] = &off_2877CC000;
    v8 = swift_allocObject();
    v21[5] = v8;
    sub_2660B9EB8(&v25, v8 + 56);
    sub_2660B9EB8(&v22, v8 + 16);
    *(v8 + 96) = 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v22);
    sub_2660C8040(&v25, &qword_28005C3C0, &qword_266191100);
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_55_2();
  type metadata accessor for CarPlaySupportProvider();
  swift_allocObject();

  v9 = sub_266153910();
  v10 = qword_2814B4798;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_12_9();
  }

  v11 = qword_2814B4B88;
  __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  OUTLINED_FUNCTION_3_5();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v17 = (v16 - v15);
  (*(v18 + 16))(v16 - v15);

  sub_26612ADEC(v17, v0, v9, v11);

  __swift_destroy_boxed_opaque_existential_1(v27);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_7_1();
}

id static LaunchAppIntentHandler.handlerForIntentExtension()()
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8();
  }

  v0 = static InstalledAppProvider.shared;
  v27 = type metadata accessor for InstalledAppProvider();
  v28 = &protocol witness table for InstalledAppProvider;
  *&v26 = v0;
  v25[19] = &type metadata for CoreDuetAppSelectionResolver;
  v25[20] = &off_2877CC198;
  v1 = swift_allocObject();
  v25[16] = v1;
  *(v1 + 40) = &type metadata for CoreDuetKnowledgeStore;
  *(v1 + 48) = &off_2877CC1C8;
  v33 = &type metadata for AppsSearcher;
  v34 = &off_2877CC0A0;
  v32[0] = swift_allocObject();
  v25[15] = 1;
  sub_2660C5864(&v26, &v24);
  sub_2660C5864(&v26, v23);
  v2 = objc_opt_self();
  swift_retain_n();
  sub_266104118([v2 sharedPreferences]);
  v4 = v3;
  v5 = type metadata accessor for RegexAppsResolver();
  v25[3] = v5;
  v25[4] = &off_2877CC718;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  sub_2660C5864(v23, boxed_opaque_existential_0);
  if (v4)
  {
    v7 = boxed_opaque_existential_0 + *(v5 + 20);
    sub_26618A600();
    __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v26);
    sub_2660C8040(&v29, &qword_28005C3C0, &qword_266191100);
    OUTLINED_FUNCTION_56_1();
    goto LABEL_8;
  }

  v8 = boxed_opaque_existential_0 + *(v5 + 20);
  sub_26618A600();
  v9 = *(&v30 + 1);
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (!v9)
  {
    goto LABEL_5;
  }

  v25[8] = &type metadata for AceAppResolver;
  v25[9] = &off_2877CC000;
  v10 = swift_allocObject();
  v25[5] = v10;
  sub_2660B9EB8(&v29, v10 + 56);
  sub_2660B9EB8(&v26, v10 + 16);
  *(v10 + 96) = 1;
LABEL_8:
  OUTLINED_FUNCTION_55_2();
  type metadata accessor for CarPlaySupportProvider();
  swift_allocObject();
  OUTLINED_FUNCTION_30_3();

  v11 = sub_266153910();
  v12 = qword_2814B4798;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_12_9();
  }

  v13 = qword_2814B4B88;
  __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  OUTLINED_FUNCTION_3_5();
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v19 = (v18 - v17);
  (*(v20 + 16))(v18 - v17);

  v21 = sub_26612ADEC(v19, v0, v11, v13);

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v21;
}

uint64_t LaunchAppIntentHandler.resolveApplication(for:)()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_26618C6B0();
  v1[10] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[11] = v4;
  v6 = *(v5 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26612580C()
{
  v161 = v0;
  if (qword_2814B2C48 != -1)
  {
LABEL_95:
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  *(v0 + 136) = __swift_project_value_buffer(*(v0 + 80), qword_2814B4AB0);
  v4 = *(v2 + 16);
  *(v0 + 144) = v4;
  *(v0 + 152) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v1);
  v5 = v3;
  v6 = sub_26618C690();
  v7 = sub_26618CAD0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 64);
    v9 = OUTLINED_FUNCTION_49_0();
    v10 = OUTLINED_FUNCTION_65_2();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    OUTLINED_FUNCTION_37_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2660C8040(v10, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_28_3();
  }

  v17 = *(v0 + 128);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 64);

  *(v0 + 160) = *(v19 + 8);
  *(v0 + 168) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21 = OUTLINED_FUNCTION_12_1();
  v155 = v22;
  (v22)(v21);
  v23 = [v20 isRemoteExecution];
  sub_26611C10C();
  v24 = OUTLINED_FUNCTION_66_1();
  v25 = v24;
  if (v23)
  {
    v26 = sub_26618CBA0();

    if (v26)
    {
      sub_2660C9D48(*(v0 + 64), &selRef_crossDeviceRequestInitiator);
    }
  }

  else
  {
  }

  v27 = [*(v0 + 64) application];
  v158 = v0;
  if (!v27)
  {
LABEL_13:
    v44 = sub_2661040AC(*(v0 + 64));
    if (v44)
    {
      v45 = v44;
      v46 = sub_2661046B8(v44);
      if (v46)
      {
        v47 = v46;
        v48 = *(v0 + 112);
        v49 = *(v0 + 80);
        v50 = OUTLINED_FUNCTION_31_7();
        v51(v50);
        v52 = sub_26618C690();
        v53 = sub_26618CAA0();
        v54 = OUTLINED_FUNCTION_15_1(v53);
        v55 = *(v0 + 112);
        v56 = *(v0 + 80);
        if (v54)
        {
          v57 = OUTLINED_FUNCTION_49_0();
          v58 = OUTLINED_FUNCTION_45_1();
          v160 = v58;
          *v57 = 136315138;
          sub_266100294(v45);
          v25 = v59;
          v61 = sub_266103A98(v60, v59, &v160);

          *(v57 + 4) = v61;
          _os_log_impl(&dword_2660B7000, v52, v53, "Suggested applications: %s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v58);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();
        }

        v155(v55, v56);
        v63 = 0;
        v0 = v45 & 0xC000000000000001;
        v64 = MEMORY[0x277D84F90];
        v152 = MEMORY[0x277D84F90];
        while (v47 != v63)
        {
          if (v0)
          {
            v65 = MEMORY[0x26677C150](v63, v45);
          }

          else
          {
            if (v63 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_93;
            }

            v65 = *(v45 + 8 * v63 + 32);
          }

          v25 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          v66 = v65;
          v67 = [v66 appId];
          if (v67)
          {
            v68 = v67;
            v69 = sub_26618C8B0();
            v156 = v70;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = *(v64 + 16);
              sub_266129600();
              v64 = v75;
            }

            v72 = *(v64 + 16);
            v71 = *(v64 + 24);
            if (v72 >= v71 >> 1)
            {
              OUTLINED_FUNCTION_38_2(v71);
              sub_266129600();
              v64 = v76;
            }

            *(v64 + 16) = v72 + 1;
            v73 = v64 + 16 * v72;
            *(v73 + 32) = v69;
            *(v73 + 40) = v156;
            v63 = v25;
          }

          else
          {

            ++v63;
          }
        }

        v77 = *(v64 + 16);
        if (v77)
        {
          OUTLINED_FUNCTION_41_2(MEMORY[0x277D84F90]);
          v78 = v160;
          v0 = v64 + 40;
          do
          {
            v79 = *(v158 + 64);
            v81 = *(v0 - 8);
            v80 = *v0;

            v82 = [v79 isInCarPlay];
            OUTLINED_FUNCTION_51_1();
            v83 = sub_26618CB70();
            v84 = v83;
            if (v25)
            {
              OUTLINED_FUNCTION_50_2();
              v85 = sub_26618CBA0();

              if (v85)
              {
                if (qword_28005BC90 != -1)
                {
                  swift_once();
                }

                v86 = off_28005C6C8;
                if (*(off_28005C6C8 + 2))
                {
                  v87 = sub_266129F20(v81, v80);
                  if (v88)
                  {
                    OUTLINED_FUNCTION_58_2(v87);

                    v80 = v86;
                  }
                }
              }
            }

            else
            {
            }

            v160 = v78;
            v25 = *(v78 + 16);
            v89 = *(v78 + 24);
            if (v25 >= v89 >> 1)
            {
              OUTLINED_FUNCTION_38_2(v89);
              sub_26612A450();
              v78 = v160;
            }

            *(v78 + 16) = v25 + 1;
            v90 = v78 + 16 * v25;
            *(v90 + 32) = v81;
            *(v90 + 40) = v80;
            v0 += 16;
            --v77;
          }

          while (v77);
        }

        else
        {

          v78 = MEMORY[0x277D84F90];
        }

        v91 = *(v78 + 16);
        if (v91)
        {
          OUTLINED_FUNCTION_41_2(MEMORY[0x277D84F90]);
          v92 = v160;
          v0 = v78 + 40;
          v25 = &off_279BC8000;
          do
          {
            v93 = v92;
            v95 = *(v0 - 8);
            v94 = *v0;
            v96 = objc_allocWithZone(MEMORY[0x277CFA5E0]);

            v97 = [v96 init];
            v98 = [v97 isClarityBoardEnabled];

            if (v98)
            {
              if (qword_28005BC88 != -1)
              {
                swift_once();
              }

              v99 = off_28005C6C0;
              if (*(off_28005C6C0 + 2))
              {
                v100 = sub_266129F20(v95, v94);
                if (v101)
                {
                  OUTLINED_FUNCTION_58_2(v100);

                  v94 = v99;
                }
              }
            }

            v92 = v93;
            v160 = v93;
            v102 = *(v93 + 16);
            v103 = *(v92 + 24);
            if (v102 >= v103 >> 1)
            {
              OUTLINED_FUNCTION_38_2(v103);
              sub_26612A450();
              v92 = v160;
            }

            *(v92 + 16) = v102 + 1;
            v104 = v92 + 16 * v102;
            *(v104 + 32) = v95;
            *(v104 + 40) = v94;
            v0 += 16;
            --v91;
          }

          while (v91);
        }

        else
        {

          v92 = MEMORY[0x277D84F90];
        }

        v105 = 0;
        v159 = MEMORY[0x277D84F90];
        v153 = (*(v158 + 72) + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps);
        v154 = *(v92 + 16);
        v106 = v92 + 40;
        v151 = v92 + 40;
LABEL_63:
        v107 = (v106 + 16 * v105);
        while (v154 != v105)
        {
          if (v105 >= *(v92 + 16))
          {
            goto LABEL_94;
          }

          v0 = v92;
          v25 = *(v107 - 1);
          v108 = *v107;
          v109 = v153[3];
          v110 = v153[4];
          __swift_project_boxed_opaque_existential_1(v153, v109);
          v111 = *(v110 + 16);

          if (v111(v25, v108, 1, v109, v110))
          {

            MEMORY[0x26677BD40](v123);
            v25 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v124 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (v25 >= v124 >> 1)
            {
              OUTLINED_FUNCTION_38_2(v124);
              sub_26618C9D0();
            }

            ++v105;
            OUTLINED_FUNCTION_50_2();
            sub_26618C9F0();
            v152 = v159;
            v106 = v151;
            goto LABEL_63;
          }

          v157 = v105;
          v112 = *(v158 + 104);
          v113 = *(v158 + 80);
          v114 = OUTLINED_FUNCTION_31_7();
          v115(v114);

          v116 = sub_26618C690();
          v117 = sub_26618CAA0();

          v118 = os_log_type_enabled(v116, v117);
          v119 = *(v158 + 104);
          v120 = *(v158 + 80);
          if (v118)
          {
            v121 = OUTLINED_FUNCTION_49_0();
            v122 = OUTLINED_FUNCTION_45_1();
            v160 = v122;
            *v121 = 136315138;
            *(v121 + 4) = sub_266103A98(v25, v108, &v160);
            _os_log_impl(&dword_2660B7000, v116, v117, "%s is not found in installedApps", v121, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v122);
            OUTLINED_FUNCTION_9_9();
            OUTLINED_FUNCTION_28_3();
          }

          v155(v119, v120);

          v107 += 2;
          v105 = v157 + 1;
          v92 = v0;
        }

        if (sub_2661046B8(v152))
        {
          v0 = v158;
          v125 = *(v158 + 64);
          v126 = *(v158 + 72);
          sub_2661281B0();
          OUTLINED_FUNCTION_7_9();

          goto LABEL_75;
        }
      }
    }

    v135 = [*(v158 + 64) isRemoteExecution];
    OUTLINED_FUNCTION_51_1();
    v136 = sub_26618CB70();
    if (v25)
    {
      OUTLINED_FUNCTION_50_2();
      v137 = sub_26618CBA0();

      if ((v137 & 1) == 0)
      {
LABEL_83:
        v139 = *(v158 + 64);
        sub_2660C5864(*(v158 + 72) + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_appsSearcher, v158 + 16);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        v140 = [v139 requestedApplication];
        if (v140)
        {
          sub_26610410C(v140);
          v142 = v141;
        }

        else
        {
          v142 = 0;
        }

        *(v158 + 176) = v142;
        v143 = [*(v158 + 64) requestedApplication];
        if (v143)
        {
          v144 = sub_266104124(v143);
          v146 = v145;
        }

        else
        {
          v144 = 0;
          v146 = 0;
        }

        *(v158 + 184) = v146;
        v147 = swift_task_alloc();
        *(v158 + 192) = v147;
        *v147 = v158;
        v147[1] = sub_266126444;
        v148 = OUTLINED_FUNCTION_11_2();

        return sub_2661515C4(v148, v149, v144, v146, v150);
      }

      v138 = [*(v158 + 64) smartSelectApps];
      OUTLINED_FUNCTION_51_1();
      v136 = sub_26618CB70();
      OUTLINED_FUNCTION_50_2();
      sub_26618CBA0();
    }

    goto LABEL_83;
  }

  v25 = v27;
  v28 = sub_2660C9D30(v27);
  if (!v29)
  {

    goto LABEL_13;
  }

  v30 = v28;
  v31 = v29;
  v32 = *(v0 + 120);
  v33 = *(v0 + 80);
  v34 = OUTLINED_FUNCTION_31_7();
  v35(v34);
  v36 = sub_26618C690();
  v37 = sub_26618CAD0();
  v38 = OUTLINED_FUNCTION_15_1(v37);
  v39 = *(v0 + 120);
  v40 = *(v0 + 80);
  if (v38)
  {
    v41 = OUTLINED_FUNCTION_49_0();
    v42 = OUTLINED_FUNCTION_45_1();
    v160 = v42;
    *v41 = 136315138;
    v43 = sub_266103A98(v30, v31, &v160);

    *(v41 + 4) = v43;
    _os_log_impl(&dword_2660B7000, v36, v37, "Application resolved in previous turn, succeeding with %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  else
  {
  }

  v62 = OUTLINED_FUNCTION_12_1();
  (v155)(v62);
  type metadata accessor for LaunchAppApplicationResolutionResult();
  static ApplicationResolutionResult.success(with:)(v25);

LABEL_75:
  v128 = *(v0 + 120);
  v127 = *(v0 + 128);
  v130 = *(v0 + 104);
  v129 = *(v0 + 112);
  v131 = *(v0 + 96);

  v132 = OUTLINED_FUNCTION_5_7();

  return v133(v132);
}

uint64_t sub_266126444()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = v4[24];
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v5[25] = v0;

  if (v0)
  {
    v9 = sub_266126620;
  }

  else
  {
    v11 = v5[22];
    v10 = v5[23];
    v5[26] = v3;

    v9 = sub_266126568;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_266126568()
{
  v1 = v0[26];
  v3 = v0[8];
  v2 = v0[9];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_2661281B0();
  OUTLINED_FUNCTION_7_9();

  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];

  v9 = OUTLINED_FUNCTION_5_7();

  return v10(v9);
}

uint64_t sub_266126620()
{
  v39 = v0;
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[12];
  v8 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5(v7, v6, v8);
  v9 = v1;
  v10 = sub_26618C690();
  v11 = sub_26618CAA0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[25];
    v13 = v0[20];
    v37 = v0[21];
    v14 = v0[12];
    v15 = v0[10];
    v16 = OUTLINED_FUNCTION_49_0();
    v17 = OUTLINED_FUNCTION_45_1();
    v38 = v17;
    *v16 = 136315138;
    v0[7] = v12;
    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v19 = sub_26618C8D0();
    v21 = sub_266103A98(v19, v20, &v38);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2660B7000, v10, v11, "An error occurred trying to find apps: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_9_9();

    v22 = OUTLINED_FUNCTION_12_1();
    v13(v22);
  }

  else
  {
    v24 = v0[20];
    v23 = v0[21];
    v25 = v0[12];
    v26 = v0[10];

    v27 = OUTLINED_FUNCTION_12_1();
    v24(v27);
  }

  v28 = v0[25];
  type metadata accessor for LaunchAppApplicationResolutionResult();
  static LaunchAppApplicationResolutionResult.unsupported(forReason:)(2);

  v30 = v0[15];
  v29 = v0[16];
  v32 = v0[13];
  v31 = v0[14];
  v33 = v0[12];

  v34 = OUTLINED_FUNCTION_5_7();

  return v35(v34);
}

uint64_t sub_266126854(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266126918;

  return LaunchAppIntentHandler.resolveApplication(for:)();
}

uint64_t sub_266126918()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  OUTLINED_FUNCTION_5_3();

  return v10();
}

uint64_t LaunchAppIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v2 = sub_26618C6B0();
  v0[3] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266126B2C()
{
  if (qword_2814B2C48 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  __swift_project_value_buffer(*(v0 + 24), qword_2814B4AB0);
  v4 = *(v2 + 16);
  v5 = OUTLINED_FUNCTION_53_1();
  v4(v5);
  v6 = v3;
  v7 = sub_26618C690();
  v8 = sub_26618CAA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 16);
    v10 = OUTLINED_FUNCTION_49_0();
    v11 = OUTLINED_FUNCTION_65_2();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_2660B7000, v7, v8, "Calling confirm with %@", v10, 0xCu);
    sub_2660C8040(v11, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_3();
  }

  v13 = *(v0 + 56);
  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  v16 = *(v0 + 16);

  v17 = *(v15 + 8);
  v17(v13, v14);
  v18 = [v16 application];
  if (!v18)
  {
    v29 = objc_allocWithZone(type metadata accessor for LaunchAppIntentResponse());
    OUTLINED_FUNCTION_42_4();
    goto LABEL_19;
  }

  v19 = v18;
  v65 = v17;
  v20 = [v18 isOffloaded];
  sub_26611C10C();
  v21 = OUTLINED_FUNCTION_66_1();
  if (!v20)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_3();
  v22 = sub_26618CBA0();

  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = [*(v0 + 16) canReinstallOffloadedApps];
  v21 = sub_26618CB70();
  if (!v23)
  {
LABEL_14:

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_3();
  v24 = sub_26618CBA0();

  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

  v25 = [*(v0 + 16) autoInstallOffloaded];
  OUTLINED_FUNCTION_51_1();
  v26 = sub_26618CB70();
  v27 = v26;
  if (v21)
  {
    OUTLINED_FUNCTION_31_0();
    v28 = sub_26618CBA0();

    if ((v28 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    v30 = *(v0 + 40);
    v31 = *(v0 + 24);
    v32 = OUTLINED_FUNCTION_53_1();
    v4(v32);
    v33 = sub_26618C690();
    v34 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_1(v34))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_9_6();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    v40 = *(v0 + 40);
    v41 = *(v0 + 24);

    v42 = OUTLINED_FUNCTION_11_2();
    v65(v42);
    v43 = objc_allocWithZone(type metadata accessor for LaunchAppIntentResponse());
    v44 = 1;
    goto LABEL_18;
  }

LABEL_23:
  v51 = *(v0 + 48);
  v52 = *(v0 + 24);
  v53 = OUTLINED_FUNCTION_53_1();
  v4(v53);
  v54 = sub_26618C690();
  v55 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v55))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v56, v57, v58, v59, v60, 2u);
    OUTLINED_FUNCTION_7_3();
  }

  v61 = *(v0 + 48);
  v62 = *(v0 + 24);

  v63 = OUTLINED_FUNCTION_11_2();
  v65(v63);
  v64 = objc_allocWithZone(type metadata accessor for LaunchAppIntentResponse());
  v44 = 102;
LABEL_18:
  LaunchAppIntentResponse.init(code:userActivity:)(v44, 0);

LABEL_19:
  v46 = *(v0 + 48);
  v45 = *(v0 + 56);
  v47 = *(v0 + 40);

  v48 = OUTLINED_FUNCTION_5_7();

  return v49(v48);
}

uint64_t sub_266126F38(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26612B7DC;

  return LaunchAppIntentHandler.confirm(intent:)();
}

uint64_t LaunchAppIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_18();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_26618C6B0();
  v1[11] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[12] = v4;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2661270C8()
{
  if (qword_2814B2C48 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = __swift_project_value_buffer(v2, qword_2814B4AB0);
  *(v0 + 136) = v5;
  v6 = *(v3 + 16);
  *(v0 + 144) = v6;
  *(v0 + 152) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  v7 = v4;
  v8 = sub_26618C690();
  LOBYTE(v2) = sub_26618CAA0();

  if (os_log_type_enabled(v8, v2))
  {
    v9 = *(v0 + 72);
    v10 = OUTLINED_FUNCTION_49_0();
    v11 = OUTLINED_FUNCTION_65_2();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_2660C8040(v11, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_3();
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  v21 = *(v0 + 72);

  v24 = *(v20 + 8);
  v22 = v20 + 8;
  v23 = v24;
  *(v0 + 160) = v24;
  *(v0 + 168) = v22 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25 = OUTLINED_FUNCTION_11_2();
  v24(v25);
  v26 = [v21 application];
  *(v0 + 176) = v26;
  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = v26;
  *(v0 + 184) = sub_2660C9D30(v26);
  *(v0 + 192) = v28;
  if (!v28)
  {

LABEL_15:
    v6(*(v0 + 104), v5, *(v0 + 88));
    v40 = sub_26618C690();
    v41 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v41))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_37_2();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      OUTLINED_FUNCTION_28_3();
    }

    v47 = *(v0 + 104);
    v48 = *(v0 + 88);

    v49 = OUTLINED_FUNCTION_12_1();
    v23(v49);
    v50 = objc_allocWithZone(type metadata accessor for LaunchAppIntentResponse());
    OUTLINED_FUNCTION_42_4();
LABEL_25:
    v83 = *(v0 + 120);
    v82 = *(v0 + 128);
    v85 = *(v0 + 104);
    v84 = *(v0 + 112);

    v86 = *(v0 + 8);
    OUTLINED_FUNCTION_36();

    __asm { BRAA            X2, X16 }
  }

  v29 = [v27 isOffloaded];
  sub_26611C10C();
  v30 = OUTLINED_FUNCTION_66_1();
  if (!v29)
  {
    v51 = 4;
LABEL_21:

    goto LABEL_22;
  }

  v31 = sub_26618CBA0();

  if ((v31 & 1) == 0)
  {
    v51 = 4;
    goto LABEL_22;
  }

  v32 = [*(v0 + 72) canReinstallOffloadedApps];
  v30 = sub_26618CB70();
  if (!v32)
  {
    v51 = 100;
    goto LABEL_21;
  }

  v33 = sub_26618CBA0();

  if ((v33 & 1) == 0)
  {
    v51 = 100;
LABEL_22:
    v52 = objc_allocWithZone(OUTLINED_FUNCTION_35_4());
    v53 = v51;
    v54 = v52;
    LaunchAppIntentResponse.init(code:userActivity:)(v53, 0);
    v55 = OUTLINED_FUNCTION_30_3();
    sub_26612AD94(v55, v30, v54);

    v56 = OUTLINED_FUNCTION_3_3();
    (v22)(v56);
    v57 = v54;
    v58 = sub_26618C690();
    v59 = sub_26618CAA0();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 176);
    v62 = *(v0 + 160);
    v63 = *(v0 + 112);
    v64 = *(v0 + 88);
    if (v60)
    {
      v90 = *(v0 + 168);
      v65 = swift_slowAlloc();
      swift_slowAlloc();
      *v65 = 136315394;
      *(v0 + 40) = sub_2660C9D48(v57, &selRef_appToLaunch);
      *(v0 + 48) = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
      v67 = sub_26618C8D0();
      v89 = v63;
      OUTLINED_FUNCTION_64_1(v67, v68, v69, v70, v71, v72);
      OUTLINED_FUNCTION_44_1();
      *(v65 + 4) = v23;
      *(v65 + 12) = 2080;
      v73 = OBJC_IVAR___LaunchAppIntentResponse_code;
      OUTLINED_FUNCTION_60_2();
      *(v0 + 56) = *&v57[v73];
      v74 = sub_26618C8D0();
      OUTLINED_FUNCTION_64_1(v74, v75, v76, v77, v78, v79);
      OUTLINED_FUNCTION_44_1();
      *(v65 + 14) = v23;
      OUTLINED_FUNCTION_59_2(&dword_2660B7000, v80, v81, "Handling bundle %s with code %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_21_9();

      v62(v89, v64);
    }

    else
    {

      v62(v63, v64);
    }

    goto LABEL_25;
  }

  v34 = *__swift_project_boxed_opaque_existential_1((*(v0 + 80) + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_offloadedAppInstaller), *(*(v0 + 80) + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_offloadedAppInstaller + 24));
  v35 = swift_task_alloc();
  *(v0 + 200) = v35;
  *v35 = v0;
  v35[1] = sub_26612763C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_36();

  return sub_26615EFB8(v36, v37);
}

uint64_t sub_26612763C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = *(v2 + 200);
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 208) = v0;

  if (v0)
  {
    v7 = sub_266127980;
  }

  else
  {
    v7 = sub_266127740;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_266127740()
{
  v4 = objc_allocWithZone(OUTLINED_FUNCTION_35_4());
  LaunchAppIntentResponse.init(code:userActivity:)(101, 0);
  v5 = OUTLINED_FUNCTION_30_3();
  sub_26612AD94(v5, v0, v4);

  v6 = OUTLINED_FUNCTION_3_3();
  v2(v6);
  v7 = v4;
  v8 = sub_26618C690();
  v9 = sub_26618CAA0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v1 + 176);
    v42 = *(v1 + 160);
    v43 = *(v1 + 168);
    v41 = *(v1 + 112);
    v11 = *(v1 + 88);
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136315394;
    *(v1 + 40) = sub_2660C9D48(v7, &selRef_appToLaunch);
    *(v1 + 48) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
    v14 = sub_26618C8D0();
    OUTLINED_FUNCTION_64_1(v14, v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_44_1();
    *(v12 + 4) = v3;
    *(v12 + 12) = 2080;
    v20 = OBJC_IVAR___LaunchAppIntentResponse_code;
    OUTLINED_FUNCTION_60_2();
    *(v1 + 56) = *&v7[v20];
    v21 = sub_26618C8D0();
    OUTLINED_FUNCTION_64_1(v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_44_1();
    *(v12 + 14) = v3;
    OUTLINED_FUNCTION_59_2(&dword_2660B7000, v27, v28, "Handling bundle %s with code %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_21_9();

    v42(v41, v11);
  }

  else
  {
    v29 = *(v1 + 168);
    v30 = *(v1 + 160);
    v31 = *(v1 + 112);
    v32 = *(v1 + 88);

    v33 = OUTLINED_FUNCTION_11_2();
    v30(v33);
  }

  v35 = *(v1 + 120);
  v34 = *(v1 + 128);
  v37 = *(v1 + 104);
  v36 = *(v1 + 112);

  v38 = *(v1 + 8);
  OUTLINED_FUNCTION_36();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_266127980()
{
  v37 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);
  (*(v0 + 144))(*(v0 + 120), *(v0 + 136), *(v0 + 88));

  v4 = v1;
  v5 = sub_26618C690();
  v6 = sub_26618CAB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 208);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v10 = *(v0 + 120);
    v11 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v12 = 136315394;
    sub_266103A98(v9, v8, &v36);
    OUTLINED_FUNCTION_44_1();
    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    *(v0 + 64) = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v14 = sub_26618C8D0();
    v16 = sub_266103A98(v14, v15, &v36);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_2660B7000, v5, v6, "Error prioritizing download for %s: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_9_9();

    v17 = OUTLINED_FUNCTION_12_1();
    v34(v17);
  }

  else
  {
    v18 = *(v0 + 192);
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);
    v21 = *(v0 + 120);
    v22 = *(v0 + 88);

    v23 = OUTLINED_FUNCTION_11_2();
    v20(v23);
  }

  v24 = *(v0 + 208);
  v25 = *(v0 + 176);
  v26 = objc_allocWithZone(type metadata accessor for LaunchAppIntentResponse());
  OUTLINED_FUNCTION_42_4();

  v28 = *(v0 + 120);
  v27 = *(v0 + 128);
  v30 = *(v0 + 104);
  v29 = *(v0 + 112);

  v31 = OUTLINED_FUNCTION_5_7();

  return v32(v31);
}

uint64_t sub_266127BF0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26612B7DC;

  return LaunchAppIntentHandler.handle(intent:)();
}

void sub_266127CB4(void *a1, uint64_t a2)
{
  v12 = MEMORY[0x277D84F90];
  v4 = sub_2661046B8(a2);
  for (i = 0; v4 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26677C150](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v6 = *(a2 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v6;
    sub_266127DEC(&v11, a1, v9, &v10);

    if (v10)
    {
      MEMORY[0x26677BD40]();
      v8 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8 >> 1)
      {
        OUTLINED_FUNCTION_38_2(v8);
        sub_26618C9D0();
      }

      sub_26618C9F0();
    }
  }
}

void sub_266127DEC(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v43 = a4;
  v7 = sub_26618C6B0();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [a2 isInCarPlay];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v14 = sub_2660C9D30(v11);
  if (!v15)
  {
LABEL_7:

    goto LABEL_8;
  }

  v16 = v14;
  v17 = v15;
  sub_26611C10C();
  v18 = sub_26618CB70();
  v19 = sub_26618CBA0();

  if ((v19 & 1) == 0)
  {

    goto LABEL_7;
  }

  v20 = *__swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_carPlaySupportProvider), *(a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_carPlaySupportProvider + 24));
  v21 = sub_266153380(v16, v17);

  if ((v21 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v22 = sub_2660C9D30(v11);
  v24 = v23;
  v25 = sub_2660C9D24(v11);
  LOBYTE(v22) = sub_2661288A8(v22, v24, v25, v26);

  if (v22)
  {
LABEL_9:
    *v43 = 0;
    return;
  }

  v27 = sub_2660C9D30(v11);
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    v31 = *(a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps + 24);
    v32 = *(a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps + 32);
    __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps), v31);
    if ((*(v32 + 40))(v29, v30, 1, v31, v32))
    {
      if (qword_2814B2C48 != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v7, qword_2814B4AB0);
      v34 = v42;
      (*(v42 + 16))(v10, v33, v7);

      v35 = sub_26618C690();
      v36 = sub_26618CAA0();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v37 = 136315138;
        v39 = sub_266103A98(v29, v30, &v44);

        *(v37 + 4) = v39;
        _os_log_impl(&dword_2660B7000, v35, v36, "Filtered %s because it is not a launchable app.", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x26677CC30](v38, -1, -1);
        MEMORY[0x26677CC30](v37, -1, -1);

        (*(v42 + 8))(v10, v7);
      }

      else
      {

        (*(v34 + 8))(v10, v7);
      }

      goto LABEL_9;
    }
  }

  *v43 = v11;
  v40 = v11;
}

void sub_2661281B0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v87 = v5;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v85 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v85 - v15;
  v17 = sub_2661046B8(v1);
  if (v17)
  {
LABEL_7:
    sub_266127CB4(v3, v1);
    v23 = v22;
    v94 = v22;
    sub_2661289A8();
    if (sub_2661046B8(v23) == 1)
    {
      sub_2661046C8(0);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26677C150](0, v23);
      }

      else
      {
        v24 = *(v23 + 32);
      }

      v25 = v24;
      type metadata accessor for LaunchAppApplicationResolutionResult();
      v26 = OUTLINED_FUNCTION_30_3();
      static ApplicationResolutionResult.success(with:)(v26);
      OUTLINED_FUNCTION_7_9();

      goto LABEL_51;
    }

    if (sub_2661046B8(v23) >= 2)
    {
      type metadata accessor for LaunchAppApplicationResolutionResult();
      v27 = OUTLINED_FUNCTION_7_9();
      static ApplicationResolutionResult.disambiguation(with:)(v27);
LABEL_50:
      OUTLINED_FUNCTION_7_9();

LABEL_51:
      OUTLINED_FUNCTION_7_1();
      return;
    }

    v86 = v4;
    v28 = OUTLINED_FUNCTION_63_2();
    if (v28)
    {
      v29 = sub_266104124(v28);
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v35 = OUTLINED_FUNCTION_63_2();
    if (v35)
    {
      v36 = sub_26610410C(v35);
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = sub_2661288A8(v29, v31, v36, v38);

    if (v39)
    {
      if (qword_2814B2C48 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v40 = v86;
      v41 = __swift_project_value_buffer(v86, qword_2814B4AB0);
      v42 = v87;
      (*(v87 + 16))(v16, v41, v40);
      v43 = sub_26618C690();
      v44 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_15_1(v44))
      {
        *OUTLINED_FUNCTION_6_2() = 0;
        OUTLINED_FUNCTION_37_2();
        _os_log_impl(v45, v46, v47, v48, v49, 2u);
        OUTLINED_FUNCTION_28_3();
      }

      (*(v42 + 8))(v16, v40);
      type metadata accessor for LaunchAppApplicationResolutionResult();
      v50 = 4;
    }

    else
    {
      v51 = [v3 isInCarPlay];
      sub_26611C10C();
      v52 = OUTLINED_FUNCTION_66_1();
      v53 = v52;
      if (v51)
      {
        v54 = sub_26618CBA0();

        if (v17 && (v54 & 1) != 0)
        {
          v55 = [objc_opt_self() sharedPreferences];
          v56 = sub_266104118(v55);
          v58 = v86;
          v59 = v87;
          if (!v57)
          {
            goto LABEL_33;
          }

          v92 = v56;
          v93 = v57;
          v90 = 45;
          v91 = 0xE100000000000000;
          v88 = 95;
          v89 = 0xE100000000000000;
          sub_2660CCD6C();
          v60 = sub_26618CC00();

          v61 = objc_opt_self();
          OUTLINED_FUNCTION_53_1();
          sub_26618C8A0();
          OUTLINED_FUNCTION_30_3();

          v62 = [v61 isDomainServerFallbackDisabledForLocale_];

          if ((v62 & 1) == 0)
          {
LABEL_33:
            sub_2661046C8(0);
            if ((v1 & 0xC000000000000001) != 0)
            {
              v63 = MEMORY[0x26677C150](0, v1);
            }

            else
            {
              v63 = *(v1 + 32);
            }

            v64 = v63;
            if (sub_2661046B8(v1) == 1)
            {
              if (qword_2814B2C48 != -1)
              {
                OUTLINED_FUNCTION_0_10();
              }

              v65 = __swift_project_value_buffer(v58, qword_2814B4AB0);
              (*(v59 + 16))(v14, v65, v58);
              v66 = v64;
              v67 = sub_26618C690();
              v68 = sub_26618CAA0();

              if (os_log_type_enabled(v67, v68))
              {
                v69 = OUTLINED_FUNCTION_49_0();
                v70 = OUTLINED_FUNCTION_65_2();
                *v69 = 138412290;
                *(v69 + 4) = v66;
                *v70 = v66;
                v71 = v66;
                OUTLINED_FUNCTION_37_2();
                _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
                sub_2660C8040(v70, &qword_28005C1F8, &unk_266190550);
                OUTLINED_FUNCTION_21_9();
                OUTLINED_FUNCTION_28_3();
              }

              (*(v59 + 8))(v14, v58);
              type metadata accessor for LaunchAppApplicationResolutionResult();
              static LaunchAppApplicationResolutionResult.unsupported(forReason:)(5);
              OUTLINED_FUNCTION_7_9();

              goto LABEL_51;
            }
          }

          if (qword_2814B2C48 != -1)
          {
            OUTLINED_FUNCTION_0_10();
          }

          v77 = __swift_project_value_buffer(v58, qword_2814B4AB0);
          (*(v59 + 16))(v11, v77, v58);
          v78 = sub_26618C690();
          v79 = sub_26618CAA0();
          if (OUTLINED_FUNCTION_15_1(v79))
          {
            *OUTLINED_FUNCTION_6_2() = 0;
            OUTLINED_FUNCTION_37_2();
            _os_log_impl(v80, v81, v82, v83, v84, 2u);
            OUTLINED_FUNCTION_28_3();
          }

          (*(v59 + 8))(v11, v58);
          type metadata accessor for LaunchAppApplicationResolutionResult();
          v50 = 3;
          goto LABEL_49;
        }
      }

      else
      {
      }

      type metadata accessor for LaunchAppApplicationResolutionResult();
      v50 = 1;
    }

LABEL_49:
    static LaunchAppApplicationResolutionResult.unsupported(forReason:)(v50);
    goto LABEL_50;
  }

  v18 = OUTLINED_FUNCTION_63_2();
  if (v18 && (sub_26610410C(v18), v19) || (v20 = OUTLINED_FUNCTION_63_2()) != 0 && (sub_266104124(v20), v21))
  {

    goto LABEL_7;
  }

  type metadata accessor for LaunchAppApplicationResolutionResult();
  [swift_getObjCClassFromMetadata() needsValue];
  OUTLINED_FUNCTION_7_1();

  v34 = v32;
}

BOOL sub_2661288A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (sub_26618C8E0() == 0x6C7070612E6D6F63 && v5 == 0xEE00697269732E65)
    {
LABEL_14:

      return 1;
    }

    v7 = sub_26618D000();

    if (v7)
    {
      return 1;
    }
  }

  if (!a4)
  {
    return 0;
  }

  if (sub_26618C8E0() == 1769105779 && v8 == 0xE400000000000000)
  {
    goto LABEL_14;
  }

  v10 = sub_26618D000();

  return (v10 & 1) != 0;
}

void sub_2661289A8()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v3 = sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v13 = *v2;
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_25:
    OUTLINED_FUNCTION_7_1();
    return;
  }

  v14 = sub_26618CCD0();
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v50 = (v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps);
    v16 = v13 & 0xC000000000000001;
    v48 = (v5 + 8);
    v49 = (v5 + 16);
    v17 = &off_279BC8000;
    *&v9 = 136315138;
    v44 = v9;
    v45 = v12;
    v46 = v3;
    do
    {
      if (v16)
      {
        v18 = MEMORY[0x26677C150](v15, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = [v18 v17[294]];
      if (v20 && (v21 = v20, v22 = [v20 BOOLValue], v21, (v22 & 1) != 0))
      {
        v23 = sub_2660C9D30(v19);
        if (v24)
        {
          v25 = v23;
          v26 = v24;
          v28 = v50[3];
          v27 = v50[4];
          __swift_project_boxed_opaque_existential_1(v50, v28);
          (*(v27 + 32))(v25, v26, 1, v28, v27);
          v30 = v29;

          if (v30)
          {
            v31 = sub_26618C8A0();
          }

          else
          {
            v31 = 0;
          }

          v16 = v13 & 0xC000000000000001;
          v17 = &off_279BC8000;
          [v19 setAdamId_];
        }

        else
        {
          if (qword_2814B2C38 != -1)
          {
            swift_once();
          }

          v32 = __swift_project_value_buffer(v3, qword_2814B4A80);
          (*v49)(v12, v32, v3);
          v33 = v19;
          v34 = sub_26618C690();
          v35 = sub_26618CAB0();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = OUTLINED_FUNCTION_49_0();
            v47 = OUTLINED_FUNCTION_45_1();
            v51 = v47;
            *v36 = v44;
            v37 = [v33 description];
            v38 = v14;
            v39 = sub_26618C8B0();
            v41 = v40;

            v42 = v39;
            v14 = v38;
            v16 = v13 & 0xC000000000000001;
            v43 = sub_266103A98(v42, v41, &v51);
            v12 = v45;

            *(v36 + 4) = v43;
            v3 = v46;
            __swift_destroy_boxed_opaque_existential_1(v47);
            OUTLINED_FUNCTION_7_2();
            OUTLINED_FUNCTION_7_2();
          }

          else
          {
          }

          (*v48)(v12, v3);
          v17 = &off_279BC8000;
        }
      }

      else
      {
      }

      ++v15;
    }

    while (v14 != v15);
    goto LABEL_25;
  }

  __break(1u);
}

id LaunchAppIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchAppIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266128E10(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2660D3260;

  return v7();
}

uint64_t sub_266128EF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2660D2E00;

  return v8();
}

uint64_t sub_266128FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2660CCFC4(a3, v25 - v11);
  v13 = sub_26618CA40();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2660C8040(v12, &qword_28005C010, &qword_2661922A0);
  }

  else
  {
    sub_26618CA30();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_26618CA10();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26618C8F0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2660C8040(a3, &qword_28005C010, &qword_2661922A0);

      return v23;
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

  sub_2660C8040(a3, &qword_28005C010, &qword_2661922A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2661292AC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2661293A4;

  return v7(a1);
}

uint64_t sub_2661293A4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5_3();

  return v5();
}

void sub_266129488()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_266129600();
    *v0 = v4;
  }
}

void sub_2661294D4()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26612974C(0, *(v1 + 16) + 1, 1, v1, sub_266140B68, MEMORY[0x277D5FEB0], MEMORY[0x277D5FEB0]);
    *v0 = v3;
  }
}

void sub_26612955C()
{
  OUTLINED_FUNCTION_52_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_266129600();
    *v0 = v4;
  }
}

void sub_266129590()
{
  OUTLINED_FUNCTION_52_0();
  if (!(v5 ^ v6 | v4))
  {
    sub_26612974C(v3 > 1, v1, 1, v2, sub_266140B68, MEMORY[0x277D5FEB0], MEMORY[0x277D5FEB0]);
    *v0 = v7;
  }
}

void sub_266129600()
{
  OUTLINED_FUNCTION_16_9();
  if (v5)
  {
    OUTLINED_FUNCTION_2_15();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_9_11();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
    v9 = OUTLINED_FUNCTION_29_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_4_14();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_47_4();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26612974C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_15();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_9_11();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_266129E58(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2661298C0()
{
  OUTLINED_FUNCTION_16_9();
  if (v5)
  {
    OUTLINED_FUNCTION_2_15();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_9_11();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C600, &qword_266192320);
    v9 = OUTLINED_FUNCTION_29_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_4_14();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[2 * v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_31_0();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C608, &qword_266192328);
    OUTLINED_FUNCTION_31_0();
    swift_arrayInitWithCopy();
  }
}

void sub_2661299B0()
{
  OUTLINED_FUNCTION_16_9();
  if (v3)
  {
    OUTLINED_FUNCTION_2_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_9_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C618, &qword_266192338);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_4_14();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_266129A8C()
{
  OUTLINED_FUNCTION_16_9();
  if (v5)
  {
    OUTLINED_FUNCTION_2_15();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_9_11();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5D8, &qword_266192288);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 32);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_47_4();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_266129BB0()
{
  OUTLINED_FUNCTION_16_9();
  if (v5)
  {
    OUTLINED_FUNCTION_2_15();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_9_11();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5F0, &qword_266192310);
    v9 = OUTLINED_FUNCTION_62_2();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_48_2(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[24 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_31_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5F8, &qword_266192318);
    OUTLINED_FUNCTION_31_0();
    swift_arrayInitWithCopy();
  }
}

void sub_266129D24()
{
  OUTLINED_FUNCTION_16_9();
  if (v5)
  {
    OUTLINED_FUNCTION_2_15();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_9_11();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5C8, &qword_266192278);
    v9 = OUTLINED_FUNCTION_29_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_4_14();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_47_4();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_266129DF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_15(a3, result);
  }

  return result;
}

char *sub_266129E10(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_15(a3, result);
  }

  return result;
}

char *sub_266129E30(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_15(a3, result);
  }

  return result;
}

uint64_t sub_266129E58(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_54_2();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_54_2();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

unint64_t sub_266129F20(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26618D090();
  sub_26618C910();
  v6 = sub_26618D0C0();

  return sub_26612A09C(a1, a2, v6);
}

unint64_t sub_266129F98(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26618CD00();

  return sub_26612A150(a1, v5);
}

unint64_t sub_266129FDC(uint64_t a1)
{
  v3 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C610, &qword_266192330);
  v4 = sub_26618C860();
  return sub_26612A214(a1, v4);
}

unint64_t sub_26612A058(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26618CB90();

  return sub_26612A2F8(a1, v5);
}

unint64_t sub_26612A09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26618D000() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26612A150(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_26612B72C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26677C0D0](v8, a1);
    sub_26612B788(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26612A214(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C610, &qword_266192330);
    v6 = *(*(v2 + 48) + 8 * i);
    if (sub_26618C890())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26612A2F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_26618C4F0();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_26618CBA0();

    if (v8)
    {
      break;
    }
  }

  return i;
}

char *sub_26612A3B8(char *a1, int64_t a2, char a3)
{
  result = sub_26612A6F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26612A3D8(void *a1, int64_t a2, char a3)
{
  result = sub_26612A7F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26612A3F8()
{
  v1 = *v0;
  sub_26612A9FC();
  *v0 = v2;
}

void sub_26612A450()
{
  v1 = *v0;
  sub_26612A930();
  *v0 = v2;
}

void sub_26612A470()
{
  v1 = *v0;
  sub_26612A9FC();
  *v0 = v2;
}

void sub_26612A4C8()
{
  v1 = *v0;
  sub_26612A9FC();
  *v0 = v2;
}

void sub_26612A520()
{
  v1 = *v0;
  sub_26612A9FC();
  *v0 = v2;
}

void sub_26612A578()
{
  v1 = *v0;
  sub_26612A9FC();
  *v0 = v2;
}

void sub_26612A5D0()
{
  v1 = *v0;
  sub_26612A9FC();
  *v0 = v2;
}

char *sub_26612A628(char *a1, int64_t a2, char a3)
{
  result = sub_26612AB98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26612A648()
{
  v1 = *v0;
  sub_26612A9FC();
  *v0 = v2;
}

void sub_26612A6A0()
{
  v1 = *v0;
  sub_26612A9FC();
  *v0 = v2;
}

char *sub_26612A6F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5B0, &unk_266192260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_26612A7F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C620, &qword_266192340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C628, &qword_266192348);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26612A930()
{
  OUTLINED_FUNCTION_16_9();
  if (v5)
  {
    OUTLINED_FUNCTION_2_15();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_9_11();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
    v9 = OUTLINED_FUNCTION_29_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_4_14();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_47_4();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26612A9FC()
{
  OUTLINED_FUNCTION_6_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_2_15();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_9_11();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
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
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_0_4(v17);
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
  v25 = *(v6(0) - 8);
  if (v10)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_266129E58(v8 + v26, v15, v22 + v26, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_7_1();
}

char *sub_26612AB98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C5C8, &qword_266192278);
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

void sub_26612ACA0()
{
  OUTLINED_FUNCTION_16_9();
  if (v5)
  {
    OUTLINED_FUNCTION_2_15();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_9_11();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_11(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C630, &qword_266192358);
    v9 = OUTLINED_FUNCTION_62_2();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_48_2(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[24 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_31_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C638, &unk_266192360);
    OUTLINED_FUNCTION_31_0();
    swift_arrayInitWithCopy();
  }
}

void sub_26612AD94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setAppToLaunch_];
}

id sub_26612ADEC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49[3] = &type metadata for AppsSearcher;
  v49[4] = &off_2877CC0A0;
  v49[0] = swift_allocObject();
  memcpy((v49[0] + 16), a1, 0xA8uLL);
  v48[3] = type metadata accessor for InstalledAppProvider();
  v48[4] = &protocol witness table for InstalledAppProvider;
  v48[0] = a2;
  v8 = type metadata accessor for CarPlaySupportProvider();
  v47[3] = v8;
  v47[4] = &off_2877CC108;
  v47[0] = a3;
  v9 = type metadata accessor for OffloadedAppInstallerImpl();
  v45 = v9;
  v46 = &off_2877CC3E0;
  v44[0] = a4;
  v42 = &type metadata for AppLaunchFeatureFlagsImpl;
  v43 = &off_2877CD168;
  v39 = &type metadata for TvProfileSelector;
  v40 = &off_2877CC788;
  v10 = type metadata accessor for LaunchAppIntentHandler();
  v11 = objc_allocWithZone(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v49, &type metadata for AppsSearcher);
  v13 = *(off_2877CC070 + 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v47, v8);
  v18 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v45;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v28 = *v20;
  v29 = *v26;
  v37[3] = &type metadata for AppsSearcher;
  v37[4] = &off_2877CC0A0;
  v37[0] = swift_allocObject();
  memcpy((v37[0] + 16), v15, 0xA8uLL);
  v36[3] = v8;
  v36[4] = &off_2877CC108;
  v36[0] = v28;
  v35[3] = v9;
  v35[4] = &off_2877CC3E0;
  v35[0] = v29;
  v34[3] = &type metadata for AppLaunchFeatureFlagsImpl;
  v34[4] = &off_2877CD168;
  v33[3] = &type metadata for TvProfileSelector;
  v33[4] = &off_2877CC788;
  sub_2660C5864(v37, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_appsSearcher);
  sub_2660C5864(v48, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_installedApps);
  sub_2660C5864(v36, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_carPlaySupportProvider);
  sub_2660C5864(v35, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_offloadedAppInstaller);
  sub_2660C5864(v34, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_featureFlags);
  sub_2660C5864(v33, v11 + OBJC_IVAR____TtC20SiriAppLaunchIntents22LaunchAppIntentHandler_tvProfileSelection);
  v32.receiver = v11;
  v32.super_class = v10;
  v30 = objc_msgSendSuper2(&v32, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v30;
}

uint64_t sub_26612B280()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_7(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_3_11(v5);

  return v8(v7);
}

uint64_t sub_26612B314()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17_7(v5);
  *v6 = v7;
  v6[1] = sub_2660D3260;
  v8 = OUTLINED_FUNCTION_12_1();

  return v9(v8);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26612B40C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_17_7(v7);
  *v8 = v9;
  v8[1] = sub_2660D3260;

  return sub_266128EF8(a1, v3, v4, v6);
}