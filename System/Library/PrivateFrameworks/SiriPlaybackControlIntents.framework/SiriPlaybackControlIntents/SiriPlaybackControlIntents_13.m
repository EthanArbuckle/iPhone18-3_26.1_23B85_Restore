void sub_2689E8230()
{
  OUTLINED_FUNCTION_26();
  v95 = v1;
  v96 = v0;
  v102 = v2;
  v103 = v3;
  v5 = v4;
  v94 = v6;
  v7 = sub_268B367A4();
  v8 = OUTLINED_FUNCTION_1(v7);
  v90 = v9;
  v91 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v89 = v13 - v12;
  OUTLINED_FUNCTION_9();
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v88 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v25 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v26 = v17 + 16;
  v99 = *(v17 + 16);
  v100 = v25;
  (v99)(v0);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_14();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse()", v29, 2u);
    OUTLINED_FUNCTION_12();
  }

  v98 = *(v17 + 8);
  v98(v0, v14);
  v30 = sub_268B36E84();
  v101 = v17 + 8;
  if (v31)
  {
    v92 = v31;
    v93 = v30;
  }

  else
  {
    v32 = OBJC_IVAR___WhatDidTheySayIntentResponse_code;
    swift_beginAccess();
    v106[0] = *(v5 + v32);
    sub_268B38404();
    sub_268947F08();
    v92 = v34;
    v93 = v33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  OUTLINED_FUNCTION_20_14();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_268B3BBC0;
  *(v35 + 32) = 0xD000000000000010;
  *(v35 + 40) = 0x8000000268B572E0;
  v36 = OBJC_IVAR___WhatDidTheySayIntentResponse_code;
  swift_beginAccess();
  v106[0] = *(v5 + v36);
  sub_268B38404();
  v37 = sub_268B36E94();
  v39 = v38;

  *(v35 + 72) = MEMORY[0x277D837D0];
  *(v35 + 48) = v37;
  *(v35 + 56) = v39;
  v97 = sub_268B37B84();
  sub_268B36754();
  v40 = sub_268B36734();
  if (!v40)
  {
    v40 = sub_268B36744();
  }

  v41 = v40;
  v87 = v26;
  v99(v23, v100, v14);

  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v86 = v14;
    v45 = v44;
    v84 = swift_slowAlloc();
    v85 = v23;
    v106[0] = v84;
    *v45 = 136315138;
    sub_268B36714();
    v46 = v36;
    v47 = v5;
    v48 = v41;
    v49 = v89;
    sub_268B36B14();

    v50 = sub_268B36784();
    v52 = v51;
    v53 = v49;
    v41 = v48;
    v5 = v47;
    v36 = v46;
    (*(v90 + 8))(v53, v91);
    v54 = sub_26892CDB8(v50, v52, v106);

    *(v45 + 4) = v54;
    _os_log_impl(&dword_2688BB000, v42, v43, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    OUTLINED_FUNCTION_12();
    v14 = v86;
    OUTLINED_FUNCTION_12();

    v55 = v85;
  }

  else
  {

    v55 = v23;
  }

  v98(v55, v14);
  v56 = v95;
  v57 = v102;
  OUTLINED_FUNCTION_20_14();
  v58 = swift_allocObject();
  v59 = v96;
  v58[2] = v41;
  v58[3] = v59;
  v60 = v93;
  v58[4] = v94;
  v58[5] = v57;
  v61 = v92;
  v58[6] = v60;
  v58[7] = v61;
  v62 = v103;
  v58[8] = v56;
  v58[9] = v62;
  switch(*(v5 + v36))
  {
    case 'e':

      v63 = v57;

      OUTLINED_FUNCTION_6_23();
      sub_268A367E4();
      goto LABEL_17;
    case 'f':
      LOWORD(v105[0]) = 0;
      BYTE2(v105[0]) = 0;
      v105[1] = 0;
      v105[2] = 0;
      v105[3] = 1;
      memset(&v105[4], 0, 61);

      v69 = v57;

      v70 = [v69 device];
      if (v70)
      {
        v71 = v70;
        memcpy(v106, &v105[1], 0x51uLL);
        sub_2688C058C(v106, &qword_2802A5C88, qword_268B418C0);
        LODWORD(v105[1]) = 0;
        memset(&v105[2], 0, 72);
        LOBYTE(v105[11]) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_268B3BBA0;
        *(v72 + 32) = v71;
        v73 = v71;
        sub_268AE38AC();
      }

      v74 = v59[12];
      memcpy(v106, v105, 0x5DuLL);
      OUTLINED_FUNCTION_6_23();
      sub_268ABB0EC();

      memcpy(v104, v105, 0x5DuLL);
      sub_2689E9FB8(v104);
      break;
    case 'g':
      v64 = v57;
      v65 = v59[10];
      v66 = v59[11];
      __swift_project_boxed_opaque_existential_1(v59 + 7, v65);

      v67 = v64;

      sub_2689CE860(0xD000000000000025, 0x8000000268B59E30, v97, sub_2689E9F84, v58, v65, v66);
      goto LABEL_17;
    case 'h':

      v68 = v57;

      sub_268A363C0(0, 0, 0);
LABEL_17:

      break;
    default:

      v75 = v57;

      v76 = v88;
      v99(v88, v100, v14);
      v77 = sub_268B37A34();
      v78 = sub_268B37ED4();
      if (os_log_type_enabled(v77, v78))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_7(&dword_2688BB000, v79, v80, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse()");
        OUTLINED_FUNCTION_12();
      }

      v98(v76, v14);
      sub_2688C2ECC();
      v81 = swift_allocError();
      *v82 = -107;
      v83 = OUTLINED_FUNCTION_24_10(v81);
      v56(v83);

      sub_2688C058C(v106, &unk_2802A57C0, &qword_268B3BE00);
      break;
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689E8C2C(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v125 = a8;
  v123 = a6;
  v124 = a7;
  v121 = a3;
  v122 = a5;
  v126 = a4;
  v128 = a2;
  v115 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v114 = &v105 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v119 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v119);
  v113 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v105 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v105 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v111 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v110 = &v105 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v108 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v118 = &v105 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v105 - v30;
  MEMORY[0x28223BE20](v29);
  v109 = &v105 - v32;
  v120 = sub_268B34E24();
  v127 = *(v120 - 8);
  v33 = *(v127 + 64);
  v34 = MEMORY[0x28223BE20](v120);
  v117 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v116 = &v105 - v36;
  v37 = sub_268B37A54();
  v131 = *(v37 - 8);
  v38 = *(v131 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v112 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v105 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v105 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v105 - v48);
  sub_2688F1FA4(v115, &v105 - v48, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v37, qword_2802CDA10);
    (*(v131 + 16))(v45, v51, v37);
    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v120;
    v56 = v109;
    if (v54)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v57, 2u);
      MEMORY[0x26D6266E0](v57, -1, -1);
    }

    (*(v131 + 8))(v45, v37);
    v58 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    (*(v127 + 104))(v116, *MEMORY[0x277D5BC00], v55);
    v59 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v59);
    v60 = *MEMORY[0x277D5B8E0];
    v61 = sub_268B34B94();
    v62 = v110;
    (*(*(v61 - 8) + 104))(v110, v60, v61);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    v63 = *v58;
    sub_2688F1FA4(v56, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v59) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v59 - 8) + 8))(v31, v59);
    }

    v81 = v116;
    sub_2688E3AD8();

    sub_2688C058C(v62, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v56, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v81, v55);
    v82 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    sub_2688C2ECC();
    v83 = swift_allocError();
    *v84 = -89;
    v85 = *v82;
    sub_26894B450();

    v86 = swift_allocError();
    *v87 = -89;
    v129[0] = v86;
    v130 = 1;
    v124(v129);

    return sub_2688C058C(v129, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v49, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v64 = __swift_project_value_buffer(v37, qword_2802CDA10);
    v65 = *(v131 + 16);
    v110 = v64;
    v109 = v65;
    (v65)(v43);
    v66 = sub_268B37A34();
    v67 = sub_268B37ED4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2688BB000, v66, v67, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v68, 2u);
      MEMORY[0x26D6266E0](v68, -1, -1);
    }

    v69 = *(v131 + 8);
    v131 += 8;
    v106 = v69;
    v69(v43, v37);
    v70 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    v71 = v120;
    (*(v127 + 104))(v117, *MEMORY[0x277D5BC00], v120);
    v116 = v17;
    v72 = v107;
    sub_2688F1FA4(v17, v107, &unk_2802A56E0, &unk_268B3CDF0);

    v73 = sub_268B350F4();
    v74 = *(v73 - 8);
    v75 = v118;
    (*(v74 + 32))(v118, v72, v73);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v73);
    v76 = sub_268B34B94();
    v77 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v76);
    v78 = *v70;
    v79 = v108;
    sub_2688F1FA4(v75, v108, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v73);
    v115 = v74;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v79, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v107 = v78;
      sub_268B350B4();
      (*(v74 + 8))(v79, v73);
    }

    v89 = v117;
    sub_2688E3AD8();

    sub_2688C058C(v77, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v118, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v89, v71);
    v90 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    sub_2688C2ECC();
    v91 = swift_allocError();
    *v92 = -108;
    v93 = *v90;
    sub_26894B450();

    v94 = v112;
    (v109)(v112, v110, v37);
    v95 = sub_268B37A34();
    v96 = sub_268B37ED4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2688BB000, v95, v96, "WhatDidTheySayHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v97, 2u);
      MEMORY[0x26D6266E0](v97, -1, -1);
    }

    v106(v94, v37);
    v98 = v128[36];
    v99 = v128[37];
    __swift_project_boxed_opaque_existential_1(v128 + 33, v98);
    v100 = v116;
    v101 = v113;
    sub_2688F1FA4(v116, v113, &unk_2802A56E0, &unk_268B3CDF0);
    v102 = *(v101 + *(v119 + 48));
    v103 = v114;
    sub_268A82B50(v126, v114);
    v104 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v103, 0, 1, v104);
    (*(v99 + 40))(v101, v102, v103, v124, v125, v98, v99);

    sub_2688C058C(v103, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v100, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v115 + 8))(v101, v73);
  }
}

uint64_t *sub_2689E99D8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_26895F84C((v0 + 7));
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  return v0;
}

uint64_t sub_2689E9A30()
{
  sub_2689E99D8();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
}

uint64_t sub_2689E9A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E9B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E9B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E9C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689E9C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_2689E9D3C()
{
  if (qword_2802A4E18 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD960;

  return v1;
}

uint64_t sub_2689E9D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2689E9DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689E9E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for WhatDidTheySayHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_2689E9EA8(uint64_t a1)
{
  result = sub_2689E9ED0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689E9ED0()
{
  result = qword_2802A6E10;
  if (!qword_2802A6E10)
  {
    type metadata accessor for WhatDidTheySayHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6E10);
  }

  return result;
}

uint64_t sub_2689E9F28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  OUTLINED_FUNCTION_20_14();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_2689E9F84()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  return sub_2689E8B74();
}

uint64_t sub_2689EA034()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t *OUTLINED_FUNCTION_10_15()
{
  result = __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_10(uint64_t a1)
{
  *(v1 - 184) = a1;
  *(v1 - 144) = 1;
  return v1 - 184;
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return sub_268B37B84();
}

Swift::String_optional __swiftcall UsoTask_skipBackward_uso_NoEntity.verb()()
{
  v0 = 0x73756F6976657270;
  v1 = 0xE800000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_skipBackward_uso_NoEntity.referencedSetting()()
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

uint64_t sub_2689EA4B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689EA50C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689EA560(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689EA5B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689EA608(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689EA65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689EA6B0()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689EA704(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689EA768()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689EA7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689EA820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689EA884()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689EA8E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689EA94C(uint64_t a1)
{
  result = sub_2689EA9F8(&qword_2802A6E18);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689EA9F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B362C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id GetVolumeLevelIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2689EAA74()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v48 = v2;
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v47 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v12 = *(v6 + 16);
  v12(v0, v11, v3);
  v13 = sub_268B37A34();
  v14 = sub_268B37ED4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v48 & 1;
    _os_log_impl(&dword_2688BB000, v13, v14, "Getting routeId from intent. PreferContextRouteId: %{BOOL}d", v15, 8u);
    v1 = v0;
    OUTLINED_FUNCTION_12();
  }

  v46 = *(v6 + 8);
  v46(v0, v3);
  v16 = [v1 device];
  if (v16)
  {
    v17 = v16;
    v18 = v1;
    v19 = [v16 routeId];

    if (v19)
    {
      v20 = sub_268B37BF4();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v1 = v18;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  sub_268B36C54();
  v23 = sub_268B36C24();
  if (v22)
  {
    if (v20 == v23 && v22 == v24)
    {
    }

    else
    {
      v26 = sub_268B38444();

      if ((v26 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v27 = sub_268A3239C();
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      v12(v47, v11, v3);

      v31 = sub_268B37A34();
      v32 = sub_268B37F04();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v49 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_26892CDB8(v29, v30, &v49);
        OUTLINED_FUNCTION_37_7();
        _os_log_impl(v35, v36, v37, v38, v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      v46(v47, v3);
      goto LABEL_35;
    }
  }

  else
  {
  }

LABEL_24:
  v39 = [v1 device];
  v40 = v39;
  if (v48)
  {
    if (v39)
    {
      v41 = [v39 context];

      if (v41)
      {
        v42 = [v41 routeId];

        if (v42)
        {
          sub_268B37BF4();

          goto LABEL_35;
        }
      }
    }

    v44 = [v1 device];
    if (!v44)
    {
      goto LABEL_35;
    }

    v40 = v44;
    v43 = [v44 routeId];
  }

  else
  {
    if (!v39)
    {
      goto LABEL_35;
    }

    v43 = [v39 routeId];
  }

  v45 = v43;

  if (v45)
  {
    sub_268B37BF4();
  }

LABEL_35:
  OUTLINED_FUNCTION_23();
}

void GetVolumeLevelIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36F44();
  v62 = OUTLINED_FUNCTION_1(v0);
  v63 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_0();
  v61 = (v5 - v4);
  v6 = sub_268B36C54();
  v59 = sub_268B36C44();
  sub_268B37204();
  v60 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v82);
  sub_268AD33CC(&v79);
  sub_268B36754();
  v58 = sub_268B36734();
  v7 = sub_268B36C44();
  v8 = type metadata accessor for MultiUserConnectionProvider();
  v9 = swift_allocObject();
  v10 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v9 + 16) = [v10 init];
  __swift_mutable_project_boxed_opaque_existential_1(v82, v82[3]);
  OUTLINED_FUNCTION_3_8();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  v18 = *v16;
  v77 = v6;
  v78 = MEMORY[0x277D5F680];
  *&v76 = v7;
  v19 = type metadata accessor for AnalyticsServiceLogger();
  v74 = v19;
  v75 = &off_28795F5E0;
  v73[0] = v18;
  v71 = v8;
  v72 = &off_287960608;
  v70[0] = v9;
  v20 = type metadata accessor for AnalyticsServiceImpl();
  v21 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v73, v19);
  OUTLINED_FUNCTION_3_8();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v26 = OUTLINED_FUNCTION_78_1(v25);
  v27(v26);
  __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  OUTLINED_FUNCTION_3_8();
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  v33 = (v32 - v31);
  (*(v34 + 16))(v32 - v31);
  v35 = *v18;
  v36 = *v33;
  v21[5] = v19;
  v21[6] = &off_28795F5E0;
  v21[2] = v35;
  v21[21] = v8;
  v21[22] = &off_287960608;
  v21[18] = v36;
  sub_2688E6514(&v79, (v21 + 7));
  v21[12] = v58;
  sub_2688E6514(&v76, (v21 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v73);

  __swift_destroy_boxed_opaque_existential_0Tm(v82);
  sub_268B34C64();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D48, &qword_268B3D700);
  v38 = sub_268B37754();
  sub_268B36F34();
  v80 = v6;
  v81 = MEMORY[0x277D5F680];
  *&v79 = v59;
  v77 = v20;
  v78 = &off_2879539D0;
  *&v76 = v21;
  v74 = v37;
  v75 = sub_26892CBBC();
  v73[0] = v38;
  v71 = v62;
  v72 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  (*(v63 + 16))(boxed_opaque_existential_1, v61, v62);
  VolumeLevelIntentHandler = type metadata accessor for GetVolumeLevelIntentHandler();
  v41 = objc_allocWithZone(VolumeLevelIntentHandler);
  __swift_mutable_project_boxed_opaque_existential_1(&v76, v77);
  OUTLINED_FUNCTION_3_8();
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_0();
  v46 = OUTLINED_FUNCTION_78_1(v45);
  v47(v46);
  v48 = *v61;
  v69[3] = v20;
  v69[4] = &off_2879539D0;
  v69[0] = v48;
  sub_26890C900(v83, v68);
  sub_26890C900(v69, &v66);
  sub_26890C900(v82, v65);
  sub_268B376A4();

  v49 = sub_268B37694();
  __swift_mutable_project_boxed_opaque_existential_1(&v66, v67);
  OUTLINED_FUNCTION_3_8();
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_0();
  v54 = OUTLINED_FUNCTION_78_1(v53);
  v55(v54);
  v56 = sub_26892D53C(v60, v68, *v61, v65, v49);
  __swift_destroy_boxed_opaque_existential_0Tm(&v66);
  *&v41[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceSelector] = v56;
  sub_26890C900(&v79, &v41[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_playbackController]);
  sub_26890C900(v83, &v41[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState]);
  sub_26890C900(v83, v68);
  sub_26890C900(v82, &v66);
  type metadata accessor for AceServiceHelper();
  v57 = swift_allocObject();
  sub_2688E6514(v68, v57 + 16);
  sub_2688E6514(&v66, v57 + 56);
  *&v41[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_aceServiceHelper] = v57;
  sub_26890C900(v73, &v41[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_accessoryVolumeController]);
  sub_26890C900(v70, &v41[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider]);
  v64.receiver = v41;
  v64.super_class = VolumeLevelIntentHandler;
  objc_msgSendSuper2(&v64, sel_init);

  (*(v63 + 8))(v61, v62);
  __swift_destroy_boxed_opaque_existential_0Tm(v82);
  __swift_destroy_boxed_opaque_existential_0Tm(v83);
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v73);
  __swift_destroy_boxed_opaque_existential_0Tm(&v79);
  __swift_destroy_boxed_opaque_existential_0Tm(v69);
  __swift_destroy_boxed_opaque_existential_0Tm(&v76);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_2689EB678(void *a1, char *a2, void (**a3)(void, char *))
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v55 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v58 = swift_allocObject();
  v59 = a3;
  *(v58 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v57 = v7[2];
  v57(v14, v15, v6);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v6;
    v19 = v7;
    v20 = a1;
    v21 = a2;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "GetVolumeLevel.GetVolumeLevelIntentHandler.handle() called", v22, 2u);
    v23 = v22;
    a2 = v21;
    a1 = v20;
    v7 = v19;
    v6 = v18;
    MEMORY[0x26D6266E0](v23, -1, -1);
  }

  v24 = v7[1];
  v24(v14, v6);
  v25 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_aceServiceHelper];
  sub_2689EAA74();
  if (v27)
  {
    v28 = v27;
    v29 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v56 = v26;
      v30 = v55;
      v57(v55, v15, v6);
      v31 = sub_268B37A34();
      v32 = sub_268B37ED4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v57 = a2;
        v34 = v33;
        v35 = a1;
        v36 = swift_slowAlloc();
        v60 = v36;
        *v34 = 136315138;
        *(v34 + 4) = sub_26892CDB8(v56, v28, &v60);
        _os_log_impl(&dword_2688BB000, v31, v32, "Getting the volume for route Id: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        v37 = v36;
        a1 = v35;
        MEMORY[0x26D6266E0](v37, -1, -1);
        v38 = v34;
        a2 = v57;
        MEMORY[0x26D6266E0](v38, -1, -1);
      }

      v24(v30, v6);
      v39 = v59;
      v40 = [a1 device];
      if (v40)
      {
        v41 = v40;
        if (sub_268984BA0())
        {
          v42 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_accessoryVolumeController + 32];
          __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_accessoryVolumeController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_accessoryVolumeController + 24]);
          v43 = swift_allocObject();
          v44 = v58;
          *(v43 + 16) = sub_26892D9D4;
          *(v43 + 24) = v44;

          sub_268B37764();

LABEL_20:

          goto LABEL_21;
        }
      }

      v52 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_playbackController + 32];
      __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_playbackController + 24]);
      v53 = swift_allocObject();
      v54 = v58;
      *(v53 + 16) = sub_26892D9D4;
      *(v53 + 24) = v54;

      sub_268B36CD4();

      goto LABEL_20;
    }
  }

  v45 = v56;
  v57(v56, v15, v6);
  v46 = sub_268B37A34();
  v47 = sub_268B37EE4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_2688BB000, v46, v47, "Missing routeId in intent", v48, 2u);
    MEMORY[0x26D6266E0](v48, -1, -1);
  }

  v24(v45, v6);
  v49 = sub_268B36EA4();
  objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
  v50 = v49;
  v51 = GetVolumeLevelIntentResponse.init(code:userActivity:)(5, v49);
  v39 = v59;
  v59[2](v59, v51);

LABEL_21:
  _Block_release(v39);
}

void sub_2689EBC90()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v65 = v2;
  v66 = v3;
  v5 = v4;
  v6 = sub_268B37A54();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v63 = v12;
  OUTLINED_FUNCTION_8();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v62 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v17 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v18 = *(v9 + 16);
  v64 = v17;
  v18(v0);
  v19 = sub_268B37A34();
  v20 = sub_268B37F04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    v62 = v18;
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "GetVolumeLevel.GetVolumeLevelIntentHandler.handle() called", v21, 2u);
    v1 = v0;
    v18 = v62;
    OUTLINED_FUNCTION_12();
  }

  v22 = *(v9 + 8);
  v22(v0, v6);
  v23 = *(v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_aceServiceHelper);
  sub_2689EAA74();
  if (v25)
  {
    v26 = v25;
    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v63 = v24;
      (v18)(v16, v64, v6);
      v28 = sub_268B37A34();
      v29 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v29))
      {
        v30 = v1;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v64 = v16;
        v33 = v5;
        v34 = v32;
        v67 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_26892CDB8(v63, v26, &v67);
        OUTLINED_FUNCTION_37_7();
        _os_log_impl(v35, v36, v37, v38, v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        v5 = v33;
        OUTLINED_FUNCTION_12();
        v1 = v30;
        OUTLINED_FUNCTION_12();

        v39 = v64;
      }

      else
      {

        v39 = v16;
      }

      v22(v39, v6);
      v52 = [v5 device];
      if (v52)
      {
        v53 = v52;
        if (sub_268984BA0())
        {
          v54 = (v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_accessoryVolumeController);
          v55 = *(v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_accessoryVolumeController + 24);
          v56 = v54[4];
          OUTLINED_FUNCTION_18_9(v54);
          v57 = swift_allocObject();
          *(v57 + 24) = OUTLINED_FUNCTION_6_24(v57);

          sub_268B37764();

LABEL_21:

          goto LABEL_22;
        }
      }

      v58 = (v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_playbackController);
      v59 = *(v1 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_playbackController + 24);
      v60 = v58[4];
      OUTLINED_FUNCTION_18_9(v58);
      v61 = swift_allocObject();
      *(v61 + 24) = OUTLINED_FUNCTION_6_24(v61);

      sub_268B36CD4();

      goto LABEL_21;
    }
  }

  v40 = v63;
  (v18)(v63, v64, v6);
  v41 = sub_268B37A34();
  v42 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_115_0(v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    *v43 = 0;
    OUTLINED_FUNCTION_37_7();
    _os_log_impl(v44, v45, v46, v47, v43, 2u);
    OUTLINED_FUNCTION_12();
  }

  v22(v40, v6);
  OUTLINED_FUNCTION_25_2();
  v48 = sub_268B36EA4();
  v49 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
  v50 = v48;
  v51 = GetVolumeLevelIntentResponse.init(code:userActivity:)(5, v48);
  v65();

LABEL_22:
  OUTLINED_FUNCTION_23();
}

void sub_2689EC184(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100000000) != 0)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v8, v12, v4);
    v13 = sub_268B37A34();
    v14 = sub_268B37EE4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2688BB000, v13, v14, "Failed to get volume for accessory", v15, 2u);
      MEMORY[0x26D6266E0](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v16 = sub_268B36EA4();
    v17 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
    v18 = v16;
    v19 = GetVolumeLevelIntentResponse.init(code:userActivity:)(5, v16);
    a2();
  }

  else
  {
    v9 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
    v21 = GetVolumeLevelIntentResponse.init(code:userActivity:)(4, 0);
    v10 = sub_268B37E04();
    [v21 setCurrentVolumeLevel_];

    (a2)(v21);
    v11 = v21;
  }
}

void sub_2689EC440(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v60 = a2;
  v61 = sub_268B37A54();
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v61);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v55 - v10;
  v11 = sub_268B36F24();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DD8, qword_268B42E80);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v55 - v21);
  v58 = a1;
  sub_2689EEE54(a1, &v55 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = a3;
    (*(v12 + 32))(v18, v22, v11);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v23 = v61;
    v24 = __swift_project_value_buffer(v61, qword_2802CDA10);
    v25 = v59;
    (*(v5 + 16))(v59, v24, v23);
    v26 = *(v12 + 16);
    v56 = v18;
    v26(v16, v18, v11);
    v27 = v11;
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    v30 = v5;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v62 = v55;
      *v31 = 136446210;
      sub_2689EEEC4();
      v32 = sub_268B38404();
      v33 = v27;
      v35 = v34;
      v36 = *(v12 + 8);
      v37 = v16;
      v38 = v33;
      v36(v37, v33);
      v39 = sub_26892CDB8(v32, v35, &v62);

      *(v31 + 4) = v39;
      _os_log_impl(&dword_2688BB000, v28, v29, "An error occurred in the GetVolumeLevel media remote call: %{public}s", v31, 0xCu);
      v40 = v55;
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x26D6266E0](v40, -1, -1);
      MEMORY[0x26D6266E0](v31, -1, -1);

      (*(v30 + 8))(v59, v61);
      v27 = v38;
    }

    else
    {

      v36 = *(v12 + 8);
      v36(v16, v27);
      (*(v30 + 8))(v25, v23);
    }

    v51 = sub_268B36ED4();
    v52 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
    v53 = v51;
    v54 = GetVolumeLevelIntentResponse.init(code:userActivity:)(5, v51);
    v60();

    v36(v56, v27);
  }

  else
  {
    v41 = v5;
    v42 = *v22;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v43 = v61;
    v44 = __swift_project_value_buffer(v61, qword_2802CDA10);
    (*(v41 + 16))(v9, v44, v43);
    v45 = sub_268B37A34();
    v46 = sub_268B37ED4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v42;
      _os_log_impl(&dword_2688BB000, v45, v46, "The current volume level from GetVolumeLevel media remote call is: %f", v47, 0xCu);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    (*(v41 + 8))(v9, v43);
    v48 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
    v49 = GetVolumeLevelIntentResponse.init(code:userActivity:)(4, 0);
    v50 = sub_268B37E04();
    [v49 setCurrentVolumeLevel_];

    (v60)(v49);
  }
}

void sub_2689ECA60(void *a1, char *a2, const void *a3)
{
  v106 = a2;
  v102 = a1;
  v4 = sub_268B371E4();
  v94 = *(v4 - 8);
  v95 = v4;
  v5 = *(v94 + 64);
  MEMORY[0x28223BE20](v4);
  v93 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B36C04();
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  MEMORY[0x28223BE20](v7);
  v98 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v96 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v97 = &v92 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v101 = &v92 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v92 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v92 - v22;
  v104 = swift_allocObject();
  v105 = a3;
  *(v104 + 16) = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v25 = v11[2];
  v25(v23, v24, v10);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v11;
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "GetVolumeLevel.GetVolumeLevelIntentHandler.resolveDevices() called", v29, 2u);
    v30 = v29;
    v11 = v28;
    MEMORY[0x26D6266E0](v30, -1, -1);
  }

  v31 = (v11 + 1);
  v103 = v11[1];
  v103(v23, v10);
  v32 = &v106[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState];
  v33 = *&v106[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 32];
  __swift_project_boxed_opaque_existential_1(&v106[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState], *&v106[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 24]);
  if ((sub_268B34D14() & 1) == 0)
  {
    v40 = [v102 device];
    if (v40)
    {
      v41 = v40;
      v42 = sub_26892D418(v40);
      if (v43)
      {
        v44 = v43;
        v106 = v31;
        v45 = v42;
        v46 = v101;
        v25(v101, v24, v10);
        v47 = sub_268B37A34();
        v48 = sub_268B37F04();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v107 = v50;
          *v49 = 136315138;
          v51 = sub_26892CDB8(v45, v44, &v107);

          *(v49 + 4) = v51;
          _os_log_impl(&dword_2688BB000, v47, v48, "Disambiguated Intent with destinationDeviceId: %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v50);
          MEMORY[0x26D6266E0](v50, -1, -1);
          MEMORY[0x26D6266E0](v49, -1, -1);
        }

        else
        {
        }

        v103(v46, v10);
        v39 = v105;
        v62 = sub_268B1CCB0();
        if (v62)
        {
          v63 = v62;
        }

        else
        {
          v63 = MEMORY[0x277D84F90];
        }

        sub_268983D74(v63);

        type metadata accessor for GetVolumeLevelDeviceResolutionResult();
        v38 = sub_268B2CC98(v41);
        (v39)[2](v39, v38);

        goto LABEL_28;
      }
    }

    v52 = sub_268B1CCB0();
    if (v52)
    {
      if (sub_2688EFD0C(v52))
      {
        if (!sub_268B1CC90())
        {
          v82 = v106;
          v83 = *&v106[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceSelector];
          v85 = v98;
          v84 = v99;
          v86 = v100;
          (*(v99 + 104))(v98, *MEMORY[0x277D5F648], v100);
          v87 = swift_allocObject();
          v88 = v104;
          v87[2] = sub_26892DC18;
          v87[3] = v88;
          v87[4] = v82;

          v89 = v82;
          v90 = v93;
          sub_268B37164();
          sub_2688F4CD4();

          (*(v94 + 8))(v90, v95);
          (*(v84 + 8))(v85, v86);
          goto LABEL_39;
        }
      }
    }

    if (!sub_268B1CC90())
    {
      v64 = v97;
      v25(v97, v24, v10);
      v65 = sub_268B37A34();
      v66 = sub_268B37F04();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_2688BB000, v65, v66, "No context or device query, falling back to local device", v67, 2u);
        MEMORY[0x26D6266E0](v67, -1, -1);
      }

      v103(v64, v10);
      v68 = *(v32 + 4);
      __swift_project_boxed_opaque_existential_1(v32, *(v32 + 3));
      if (sub_268B34D04() & 1) == 0 || (v69 = *&v106[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 32], __swift_project_boxed_opaque_existential_1(&v106[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider], *&v106[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 24]), (sub_268B36F94()))
      {
        type metadata accessor for Device();
        sub_268B36C54();
        v70 = sub_268B36C24();
        v72 = v71;
        v73 = *&v106[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_aceServiceHelper];

        LOBYTE(v91) = 0;
        sub_268983F14(v70, v72, 0, 0, 0, 0, 0, 0, v74, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
        v76 = v75;
        type metadata accessor for GetVolumeLevelDeviceResolutionResult();
        v77 = sub_268B2CC98(v76);
        v39 = v105;
        (*(v105 + 2))(v105, v77);

        goto LABEL_29;
      }

      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v37 = 2;
      goto LABEL_9;
    }

    v53 = *(v32 + 4);
    __swift_project_boxed_opaque_existential_1(v32, *(v32 + 3));
    if ((sub_2688C3240() & 1) == 0)
    {

      v78 = v96;
      v25(v96, v24, v10);
      v79 = sub_268B37A34();
      v80 = sub_268B37EE4();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_2688BB000, v79, v80, "GetVolume requests for Whole House Audio are unsupported on this platform", v81, 2u);
        MEMORY[0x26D6266E0](v81, -1, -1);
      }

      v103(v78, v10);
      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v37 = 6;
      goto LABEL_9;
    }

    sub_268B1CCB0();
    v54 = v106;
    v55 = *&v106[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceSelector];
    sub_268920A60();

    v57 = v98;
    v56 = v99;
    v58 = v100;
    (*(v99 + 104))(v98, *MEMORY[0x277D5F648], v100);
    v59 = swift_allocObject();
    v60 = v104;
    v59[2] = sub_26892DC18;
    v59[3] = v60;
    v59[4] = v54;

    v61 = v54;
    sub_2688F80CC();

    (*(v56 + 8))(v57, v58);
LABEL_39:

    v39 = v105;
    goto LABEL_29;
  }

  v25(v21, v24, v10);
  v34 = sub_268B37A34();
  v35 = sub_268B37EE4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "Can't do volume controls on CarPlay, returning unsupported.", v36, 2u);
    MEMORY[0x26D6266E0](v36, -1, -1);
  }

  v103(v21, v10);
  type metadata accessor for GetVolumeLevelDeviceResolutionResult();
  v37 = 3;
LABEL_9:
  v38 = sub_268B17B04(v37);
  v39 = v105;
  (*(v105 + 2))(v105, v38);

LABEL_28:

LABEL_29:
  _Block_release(v39);
}

void sub_2689ED5A4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v124 = v2;
  v125 = v3;
  v120 = v4;
  v5 = sub_268B371E4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v113 = v7;
  v114 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v112 = v11 - v10;
  v12 = sub_268B36C04();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v117 = v19 - v18;
  v20 = sub_268B37A54();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v119 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  v116 = (&v111 - v28);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  v115 = (&v111 - v30);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  v118 = (&v111 - v32);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v34 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v35 = *(v23 + 16);
  v121 = v34;
  v122 = v35;
  v35(v0);
  v36 = sub_268B37A34();
  v37 = sub_268B37F04();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_14();
    *v38 = 0;
    _os_log_impl(&dword_2688BB000, v36, v37, "GetVolumeLevel.GetVolumeLevelIntentHandler.resolveDevices() called", v38, 2u);
    v1 = v0;
    OUTLINED_FUNCTION_12();
  }

  v39 = *(v23 + 8);
  v123 = v23 + 8;
  v39(v0, v20);
  v40 = &v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState];
  v41 = v20;
  v42 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState], *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 24]);
  if (sub_268B34D14())
  {
    v43 = v119;
    v122(v119, v121, v41);
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_14();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v45, "Can't do volume controls on CarPlay, returning unsupported.", v46, 2u);
      OUTLINED_FUNCTION_12();
    }

    v39(v43, v41);
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v47 = 3;
LABEL_9:
    v48 = sub_268B17B04(v47);
    v124();
LABEL_28:

    goto LABEL_29;
  }

  v119 = v39;
  v49 = [v120 device];
  v50 = v41;
  if (v49)
  {
    v51 = v49;
    v52 = sub_26892D418(v49);
    if (v53)
    {
      v54 = v52;
      v55 = v53;
      v122(v118, v121, v50);
      v56 = sub_268B37A34();
      v57 = sub_268B37F04();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v126 = v59;
        *v58 = 136315138;
        v60 = sub_26892CDB8(v54, v55, &v126);

        *(v58 + 4) = v60;
        _os_log_impl(&dword_2688BB000, v56, v57, "Disambiguated Intent with destinationDeviceId: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      OUTLINED_FUNCTION_10_16();
      v70();
      v71 = sub_268B1CCB0();
      if (v71)
      {
        v72 = v71;
      }

      else
      {
        v72 = MEMORY[0x277D84F90];
      }

      sub_268983D74(v72);

      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v48 = sub_268B2CC98(v51);
      v124();

      goto LABEL_28;
    }
  }

  v61 = sub_268B1CCB0();
  if (v61)
  {
    if (sub_2688EFD0C(v61))
    {
      if (!sub_268B1CC90())
      {
        v101 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceSelector];
        v102 = *MEMORY[0x277D5F648];
        v103 = OUTLINED_FUNCTION_11_18();
        v104(v103);
        v105 = v1;
        v106 = swift_allocObject();
        *(v106 + 24) = OUTLINED_FUNCTION_6_24(v106);
        *(v106 + 32) = v105;

        v107 = v105;
        v108 = v112;
        sub_268B37164();
        sub_2688F4CD4();

        (*(v113 + 8))(v108, v114);
        (*(v15 + 8))(v40, v12);
        goto LABEL_29;
      }
    }
  }

  if (!sub_268B1CC90())
  {
    v73 = v1;
    v122(v116, v121, v41);
    v74 = sub_268B37A34();
    v75 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v75))
    {
      v76 = OUTLINED_FUNCTION_14();
      *v76 = 0;
      OUTLINED_FUNCTION_37_7();
      _os_log_impl(v77, v78, v79, v80, v76, 2u);
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_10_16();
    v81();
    v82 = *(v40 + 3);
    v83 = *(v40 + 4);
    OUTLINED_FUNCTION_18_9(v40);
    if (sub_268B34D04() & 1) == 0 || (v84 = *&v73[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 24], v85 = *&v73[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 32], OUTLINED_FUNCTION_18_9(&v73[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider]), (sub_268B36F94()))
    {
      type metadata accessor for Device();
      sub_268B36C54();
      sub_268B36C24();
      v86 = *&v73[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_aceServiceHelper];
      LOBYTE(v110) = 0;

      OUTLINED_FUNCTION_25_2();
      sub_268983F14(v87, v88, v89, v90, v91, v92, v93, 0, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v95 = v94;
      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v96 = sub_268B2CC98(v95);
      v124();

      goto LABEL_29;
    }

    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v47 = 2;
    goto LABEL_9;
  }

  v62 = *(v40 + 4);
  __swift_project_boxed_opaque_existential_1(v40, *(v40 + 3));
  if ((sub_2688C3240() & 1) == 0)
  {

    v122(v115, v121, v41);
    v97 = sub_268B37A34();
    v98 = sub_268B37EE4();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = OUTLINED_FUNCTION_14();
      *v99 = 0;
      _os_log_impl(&dword_2688BB000, v97, v98, "GetVolume requests for Whole House Audio are unsupported on this platform", v99, 2u);
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_10_16();
    v100();
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v47 = 6;
    goto LABEL_9;
  }

  sub_268B1CCB0();
  v63 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceSelector];
  sub_268920A60();

  v64 = *MEMORY[0x277D5F648];
  v65 = OUTLINED_FUNCTION_11_18();
  v66(v65);
  v67 = v12;
  v68 = swift_allocObject();
  *(v68 + 24) = OUTLINED_FUNCTION_6_24(v68);
  *(v68 + 32) = v1;

  v69 = v1;
  sub_2688F80CC();

  (*(v15 + 8))(v40, v67);
LABEL_29:
  OUTLINED_FUNCTION_23();
}

void sub_2689EDF2C(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v14 = 4;
LABEL_19:
    v30[0] = sub_268B17B04(v14);
    a3();
LABEL_20:
    v23 = v30[0];

    return;
  }

  if (!sub_2688EFD0C(a1))
  {
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v14 = 1;
    goto LABEL_19;
  }

  if (sub_2688EFD0C(a1) != 1)
  {
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v14 = 5;
    goto LABEL_19;
  }

  sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    v15 = *(a1 + 32);
  }

  v16 = v15;
  v17 = sub_268988574(v15);
  if (v18)
  {
    if (v17 == 0x7674656C707061 && v18 == 0xE700000000000000)
    {

      goto LABEL_24;
    }

    v20 = sub_268B38444();

    if (v20)
    {
      goto LABEL_24;
    }
  }

  v21 = sub_2689840D4();
  if ((v21 - 1) < 4)
  {
    goto LABEL_25;
  }

  if (v21)
  {
    v30[1] = v21;
    sub_268B38474();
    __break(1u);
    return;
  }

  v22 = *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 24));
  if ((sub_268B34D04() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  v24 = *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 24));
  if (sub_268B36F94())
  {
LABEL_25:
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v30[0] = sub_268B2CC98(v16);
    a3();

    goto LABEL_20;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v10 + 16))(v13, v25, v9);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "Can't do volume controls on Apple TV, returning unsupported.", v28, 2u);
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  type metadata accessor for GetVolumeLevelDeviceResolutionResult();
  v29 = sub_268B17B04(2);
  a3();
}

void sub_2689EE2F8(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v37 - v15;
  if ((a2 & 1) == 0)
  {
    if (!sub_2688EFD0C(a1))
    {
      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      goto LABEL_19;
    }

    if (sub_2688EFD0C(a1) != 1)
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v9, qword_2802CDA10);
      (*(v10 + 16))(v14, v27, v9);
      v28 = sub_268B37A34();
      v29 = sub_268B37EE4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2688BB000, v28, v29, "Multiple devices selected, returning unsupported.", v30, 2u);
        MEMORY[0x26D6266E0](v30, -1, -1);
      }

      (*(v10 + 8))(v14, v9);
      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v31 = sub_268B17B04(5);
      a3();
      goto LABEL_37;
    }

    sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v18 = *(a1 + 32);
    }

    v19 = v18;
    v20 = sub_268988574(v18);
    if (!v21)
    {
      goto LABEL_14;
    }

    if (v20 == 0x7674656C707061 && v21 == 0xE700000000000000)
    {
    }

    else
    {
      v23 = sub_268B38444();

      if ((v23 & 1) == 0)
      {
LABEL_14:
        v24 = sub_2689840D4();
        if ((v24 - 1) < 4)
        {
          goto LABEL_31;
        }

        if (v24)
        {
          v37[1] = v24;
          sub_268B38474();
          __break(1u);
          return;
        }

        v25 = *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 32);
        __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_deviceState + 24));
        if ((sub_268B34D04() & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    v32 = *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 32);
    __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider), *(a5 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27GetVolumeLevelIntentHandler_featureFlagProvider + 24));
    if (sub_268B36F94())
    {
LABEL_31:
      type metadata accessor for GetVolumeLevelDeviceResolutionResult();
      v37[0] = sub_268B2CC98(v19);
      a3();

      goto LABEL_21;
    }

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v16, v33, v9);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "Can't do volume controls on Apple TV, returning unsupported.", v36, 2u);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    (*(v10 + 8))(v16, v9);
    type metadata accessor for GetVolumeLevelDeviceResolutionResult();
    v31 = sub_268B17B04(2);
    a3();

LABEL_37:
    return;
  }

  type metadata accessor for GetVolumeLevelDeviceResolutionResult();
  if (a1)
  {
LABEL_19:
    v17 = 1;
    goto LABEL_20;
  }

  v17 = 4;
LABEL_20:
  v37[0] = sub_268B17B04(v17);
  a3();
LABEL_21:
  v26 = v37[0];
}

void sub_2689EE7F8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "GetVolumeLevel.GetVolumeLevelIntentHandler.confirm() called", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
  v14 = GetVolumeLevelIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v14);

  _Block_release(a3);
}

void sub_2689EE9D0(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v12 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v6 + 16))(v11, v12, v3);
  v13 = sub_268B37A34();
  v14 = sub_268B37F04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_14();
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "GetVolumeLevel.GetVolumeLevelIntentHandler.confirm() called", v15, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v6 + 8))(v11, v3);
  v16 = objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentResponse());
  v17 = GetVolumeLevelIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_2689EEB80(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

id GetVolumeLevelIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetVolumeLevelIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2689EECE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2689EEDFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2689EEE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DD8, qword_268B42E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2689EEEC4()
{
  result = qword_2802A5DE0;
  if (!qword_2802A5DE0)
  {
    sub_268B36F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5DE0);
  }

  return result;
}

id sub_2689EEFA0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37BC4();
  v6 = [v4 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  v8 = sub_268B37224();
  sub_268997010(v8, v9, v7, &selRef_setName_);
  v10 = sub_268B37234();
  sub_268A1A108(v10, v11, v7);
  v12 = sub_268B37214();
  sub_268997010(v12, v13, v7, &selRef_setLanguageIdentifier_);
  v14 = sub_268B37244();
  sub_2689EF3FC(v14, v7);
  sub_268B37294();
  v15 = sub_268B37D64();
  [v7 setIsActive_];

  v16 = sub_268B372A4();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v7;
}

uint64_t LanguageOption.description.getter()
{
  sub_268B381C4();
  MEMORY[0x26D625650](0xD00000000000001ELL, 0x8000000268B59FF0);
  sub_2688EF000(v0, &selRef_name);
  OUTLINED_FUNCTION_66_1();

  MEMORY[0x26D625650](0x6175676E616C202CLL, 0xEF203A6761546567);
  sub_2688EF000(v0, &selRef_languageTag);
  OUTLINED_FUNCTION_66_1();

  MEMORY[0x26D625650](0xD000000000000016, 0x8000000268B5A010);
  sub_2688EF000(v0, &selRef_languageIdentifier);
  OUTLINED_FUNCTION_66_1();

  MEMORY[0x26D625650](0x657669746361202CLL, 0xEA0000000000203ALL);
  v1 = [v0 isActive];
  sub_2688C063C();
  v2 = sub_268B38054();
  v3 = v2;
  if (v1)
  {
    sub_268B38074();
  }

  else
  {
  }

  OUTLINED_FUNCTION_66_1();

  MEMORY[0x26D625650](0xD000000000000013, 0x8000000268B5A030);
  v4 = sub_2689EF38C(v0);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x26D6256F0](v5, MEMORY[0x277D837D0]);
  v8 = v7;

  MEMORY[0x26D625650](v6, v8);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_2689EF38C(void *a1)
{
  v1 = [a1 characteristics];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37CF4();

  return v3;
}

void sub_2689EF3FC(uint64_t a1, void *a2)
{
  v3 = sub_268B37CE4();

  [a2 setCharacteristics_];
}

Swift::String_optional __swiftcall UsoTask_unrequest_common_MediaItem.verb()()
{
  v0 = 1701079400;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_2689EF4B4(uint64_t a1)
{
  result = sub_2689EF578(&qword_2802A6E60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689EF578(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B363D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2689EF5F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689EF644(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689EF698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689EF6EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689EF740(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689EF794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689EF7E8()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689EF83C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689EF8A0()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689EF8F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689EF958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689EF9BC()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689EFA20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

Swift::String_optional __swiftcall UsoTask_noVerb_common_MediaItem.verb()()
{
  v1 = sub_268B35FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v65 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6E78, &qword_268B42FF0);
  v5 = *(*(v70 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v70);
  v8 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v60[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6E80, qword_268B42FF8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v68 = &v60[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v69 = &v60[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v60[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v60[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v60[-v26];
  v67 = v0;
  sub_268B356E4();
  v64 = v15;
  if (v71 && (v28 = sub_268B35B74(), , v28))
  {
    sub_268B35FB4();
  }

  else
  {
    OUTLINED_FUNCTION_4_20(v27, 1);
  }

  v29 = *MEMORY[0x277D5EBF0];
  v66 = *(v2 + 104);
  v66(v25, v29, v1);
  OUTLINED_FUNCTION_4_20(v25, 0);
  v30 = *(v70 + 48);
  sub_2689F01D4(v27, v10);
  sub_2689F01D4(v25, &v10[v30]);
  OUTLINED_FUNCTION_124(v10);
  if (v34)
  {
    v31 = OUTLINED_FUNCTION_3_27();
    sub_2688EF38C(v31, v32, qword_268B42FF8);
    sub_2688EF38C(v27, &qword_2802A6E80, qword_268B42FF8);
    OUTLINED_FUNCTION_124(&v10[v30]);
    if (v34)
    {
      v33 = 1885956979;
      sub_2688EF38C(v10, &qword_2802A6E80, qword_268B42FF8);
LABEL_30:
      v47 = 0xE400000000000000;
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  sub_2689F01D4(v10, v22);
  OUTLINED_FUNCTION_124(&v10[v30]);
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_3_27();
    sub_2688EF38C(v35, v36, qword_268B42FF8);
    sub_2688EF38C(v27, &qword_2802A6E80, qword_268B42FF8);
    (*(v2 + 8))(v22, v1);
LABEL_13:
    sub_2688EF38C(v10, &qword_2802A6E78, &qword_268B42FF0);
    goto LABEL_14;
  }

  v48 = &v10[v30];
  v49 = v65;
  (*(v2 + 32))(v65, v48, v1);
  OUTLINED_FUNCTION_1_32();
  sub_2689F0334(v50, v51);
  v61 = sub_268B37BB4();
  v62 = v2;
  v63 = v8;
  v52 = *(v2 + 8);
  v52(v49, v1);
  sub_2688EF38C(v25, &qword_2802A6E80, qword_268B42FF8);
  sub_2688EF38C(v27, &qword_2802A6E80, qword_268B42FF8);
  v52(v22, v1);
  v2 = v62;
  v8 = v63;
  sub_2688EF38C(v10, &qword_2802A6E80, qword_268B42FF8);
  if (v61)
  {
    v33 = 1885956979;
    goto LABEL_30;
  }

LABEL_14:
  sub_268B356E4();
  if (v71 && (v37 = sub_268B35B74(), , v37))
  {
    v38 = v69;
    sub_268B35FB4();
  }

  else
  {
    v38 = v69;
    OUTLINED_FUNCTION_4_20(v69, 1);
  }

  v39 = v68;
  v66(v68, *MEMORY[0x277D5EC68], v1);
  OUTLINED_FUNCTION_4_20(v39, 0);
  v40 = *(v70 + 48);
  sub_2689F01D4(v38, v8);
  sub_2689F01D4(v39, &v8[v40]);
  OUTLINED_FUNCTION_124(v8);
  if (v34)
  {
    sub_2688EF38C(v39, &qword_2802A6E80, qword_268B42FF8);
    v41 = OUTLINED_FUNCTION_3_27();
    sub_2688EF38C(v41, v42, qword_268B42FF8);
    OUTLINED_FUNCTION_124(&v8[v40]);
    if (v34)
    {
      sub_2688EF38C(v8, &qword_2802A6E80, qword_268B42FF8);
LABEL_32:
      v47 = 0xE800000000000000;
      v33 = 0x73756F6976657270;
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v43 = v64;
  sub_2689F01D4(v8, v64);
  OUTLINED_FUNCTION_124(&v8[v40]);
  if (v44)
  {
    sub_2688EF38C(v39, &qword_2802A6E80, qword_268B42FF8);
    v45 = OUTLINED_FUNCTION_3_27();
    sub_2688EF38C(v45, v46, qword_268B42FF8);
    (*(v2 + 8))(v43, v1);
LABEL_26:
    sub_2688EF38C(v8, &qword_2802A6E78, &qword_268B42FF0);
    goto LABEL_27;
  }

  v53 = v65;
  (*(v2 + 32))(v65, &v8[v40], v1);
  OUTLINED_FUNCTION_1_32();
  sub_2689F0334(v54, v55);
  v56 = sub_268B37BB4();
  v57 = *(v2 + 8);
  v57(v53, v1);
  sub_2688EF38C(v39, &qword_2802A6E80, qword_268B42FF8);
  sub_2688EF38C(v38, &qword_2802A6E80, qword_268B42FF8);
  v57(v43, v1);
  sub_2688EF38C(v8, &qword_2802A6E80, qword_268B42FF8);
  if (v56)
  {
    goto LABEL_32;
  }

LABEL_27:
  v33 = 0;
  v47 = 0;
LABEL_33:
  v58 = v33;
  result.value._object = v47;
  result.value._countAndFlagsBits = v58;
  return result;
}

uint64_t sub_2689F01D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6E80, qword_268B42FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2689F024C(uint64_t a1)
{
  result = sub_2689F0334(&qword_2802A6E90, MEMORY[0x277D5EFB8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689F0334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2689F03C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689F0418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689F046C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689F04C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689F0514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689F0568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689F05BC()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689F0610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689F0674()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689F06C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689F072C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689F0790()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689F07F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t OUTLINED_FUNCTION_4_20(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_2689F0948()
{
  v61 = sub_268B37A54();
  v1 = *(v61 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v61);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v60 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v60 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  OUTLINED_FUNCTION_1_33();
  if ((sub_268B34CE4() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_33();
    if ((sub_268B34CC4() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_33();
      if ((sub_268B34CD4() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_33();
        if ((sub_268B34D14() & 1) == 0)
        {
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v55 = v61;
          __swift_project_value_buffer(v61, qword_2802CDA10);
          OUTLINED_FUNCTION_13_5();
          v56(v5);
          v57 = sub_268B37A34();
          v58 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_196(v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 0;
            _os_log_impl(&dword_2688BB000, v57, v58, "INIntent#shouldSetRequestEndBehavior not iOS, returning false", v59, 2u);
            OUTLINED_FUNCTION_12();
          }

          (*(v1 + 8))(v5, v55);
          goto LABEL_44;
        }
      }
    }
  }

  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v0))
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 24);
    v18 = v0;
    v19 = v17(ObjectType, v15);
    if (v19)
    {
      v20 = v19;
      v60 = v1;
      v1 = v18;
      v21 = sub_2688EFD0C(v19);
      v22 = 0;
      v23 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v24 = v21 != v22;
        if (v21 == v22)
        {
LABEL_16:

          v18 = v1;
          v1 = v60;
          goto LABEL_21;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x26D625BD0](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v25 = *(v20 + 8 * v22 + 32);
        }

        v26 = v25;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v18 = sub_268983434();

        ++v22;
        if (v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
    }

    else
    {
      v24 = 0;
LABEL_21:
      v23 = v61;
      if (qword_2802A4F30 == -1)
      {
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_0_0();
LABEL_22:
    __swift_project_value_buffer(v23, qword_2802CDA10);
    OUTLINED_FUNCTION_13_5();
    v34(v13);
    v35 = sub_268B37A34();
    v36 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_196(v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      v37[1] = v24;
      OUTLINED_FUNCTION_3_28(&dword_2688BB000, v38, v39, "INIntent#shouldSetRequestEndBehavior Intent is DeviceSelectableIntent with shouldSetRequestEndBehavior: %{BOOL}d");
      OUTLINED_FUNCTION_12();
      v40 = v18;
    }

    else
    {
      v40 = v35;
      v35 = v18;
    }

    (*(v1 + 8))(v13, v23);
    return v24 & 1;
  }

  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v0))
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v41 = v61;
    __swift_project_value_buffer(v61, qword_2802CDA10);
    OUTLINED_FUNCTION_13_5();
    v42(v8);
    v43 = sub_268B37A34();
    v44 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_196(v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "INIntent#shouldSetRequestEndBehavior Unexpected intent type, returning false", v45, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v1 + 8))(v8, v41);
LABEL_44:
    LOBYTE(v24) = 0;
    return v24 & 1;
  }

  v28 = v27;
  v29 = swift_getObjectType();
  v30 = *(v28 + 24);
  v31 = v0;
  v32 = v30(v29, v28);
  if (v32)
  {
    v33 = v32;
    LOBYTE(v24) = sub_268983434();
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  v46 = v61;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v46, qword_2802CDA10);
  OUTLINED_FUNCTION_13_5();
  v47(v11);
  v48 = sub_268B37A34();
  v49 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 67109120;
    v50[1] = v24 & 1;
    OUTLINED_FUNCTION_3_28(&dword_2688BB000, v51, v52, "INIntent#shouldSetRequestEndBehavior Intent is SingleDeviceSelectableIntent with shouldSetRequestEndBehavior: %{BOOL}d");
    OUTLINED_FUNCTION_12();
    v53 = v31;
  }

  else
  {
    v53 = v48;
    v48 = v31;
  }

  (*(v1 + 8))(v11, v46);
  return v24 & 1;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_1_33()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

void OUTLINED_FUNCTION_3_28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

id sub_2689F0FC0()
{
  result = [objc_allocWithZone(type metadata accessor for PauseMediaIntentHandler()) init];
  qword_2802CD968 = result;
  return result;
}

uint64_t sub_2689F0FF4()
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
  v9[1] = sub_2688EA03C(0, &qword_2802A7320, 0x277D85C78);
  sub_268B37AF4();
  v11 = MEMORY[0x277D84F90];
  sub_2689F36B8(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268B37F74();
  qword_2802CD970 = result;
  return result;
}

uint64_t sub_2689F1258()
{
  if (sub_268B35454() == 0xD00000000000003ALL && 0x8000000268B58F50 == v0)
  {
    goto LABEL_17;
  }

  v2 = OUTLINED_FUNCTION_11_19();

  if ((v2 & 1) == 0)
  {
    if (sub_268B35454() != 0xD00000000000003ALL || 0x8000000268B5A120 != v4)
    {
      v6 = OUTLINED_FUNCTION_11_19();

      if (v6)
      {
        goto LABEL_6;
      }

      if (sub_268B35454() != 0xD00000000000003CLL || 0x8000000268B57880 != v7)
      {
        v3 = sub_268B38444();
LABEL_18:

        return v3 & 1;
      }
    }

LABEL_17:
    v3 = 1;
    goto LABEL_18;
  }

LABEL_6:
  v3 = 1;
  return v3 & 1;
}

uint64_t sub_2689F134C(char *a1)
{
  v109 = a1;
  v100 = sub_268B35434();
  v1 = OUTLINED_FUNCTION_1(v100);
  v98 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v97 = v6 - v5;
  v7 = sub_268B35474();
  v8 = OUTLINED_FUNCTION_1(v7);
  v101 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v103 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v107 = &v95 - v16;
  v17 = sub_268B35494();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v108 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  v26 = &v95 - v25;
  v27 = sub_268B37A54();
  v28 = OUTLINED_FUNCTION_1(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v99 = v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v34);
  v96 = &v95 - v35;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v36);
  v102 = &v95 - v37;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v38);
  v40 = &v95 - v39;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v27, qword_2802CDA10);
  v42 = *(v30 + 16);
  v104 = v41;
  v105 = v42;
  v106 = (v30 + 16);
  (v42)(v40);
  v43 = sub_268B37A34();
  v44 = sub_268B37F04();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v95 = v7;
    *v45 = 0;
    _os_log_impl(&dword_2688BB000, v43, v44, "PauseMediaFlowStrategy#actionForInput called", v45, 2u);
    v7 = v95;
    OUTLINED_FUNCTION_12();
  }

  v46 = *(v30 + 8);
  v46(v40, v27);
  v47 = v109;
  sub_268B35414();
  v48 = v20[11];
  v49 = OUTLINED_FUNCTION_230();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x277D5C128])
  {
    goto LABEL_6;
  }

  if (v51 == *MEMORY[0x277D5C150])
  {
    v67 = v20[12];
    v68 = OUTLINED_FUNCTION_230();
    v69(v68);
    v70 = v101;
    v71 = v103;
    (*(v101 + 32))(v103, v26, v7);
    if (sub_2689F1258())
    {
      sub_268B34EC4();
    }

    else
    {
      v85 = v96;
      OUTLINED_FUNCTION_4_21();
      v86();
      v87 = sub_268B37A34();
      v88 = sub_268B37EE4();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        OUTLINED_FUNCTION_7_17(v89);
        OUTLINED_FUNCTION_23_4(&dword_2688BB000, v90, v91, "PauseMediaFlowStrategy#actionForInput unexpected direct invocation identifier");
        v71 = v103;
        OUTLINED_FUNCTION_12();
      }

      v46(v85, v27);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_2_22();
      OUTLINED_FUNCTION_1_34();
      sub_268B34ED4();
    }

    return (*(v70 + 8))(v71, v7);
  }

  else
  {
    if (v51 == *MEMORY[0x277D5C160])
    {
LABEL_6:
      v52 = v20[1];
      v53 = OUTLINED_FUNCTION_230();
      v54(v53);
      v55 = v108;
      sub_268B35414();
      v56 = v107;
      sub_26893BA8C(v55);
      v57 = type metadata accessor for MediaPlayerIntent();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v57);
      sub_2688C2E64(v56);
      if (EnumTagSinglePayload != 1)
      {
        return sub_268B34EC4();
      }

      v59 = v102;
      OUTLINED_FUNCTION_4_21();
      v60();
      v61 = sub_268B37A34();
      v62 = sub_268B37EE4();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        OUTLINED_FUNCTION_7_17(v63);
        OUTLINED_FUNCTION_23_4(&dword_2688BB000, v64, v65, "PauseMediaFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse");
        OUTLINED_FUNCTION_12();
      }

      v46(v59, v27);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_2_22();
      OUTLINED_FUNCTION_1_34();
      return sub_268B34ED4();
    }

    v107 = v17;
    OUTLINED_FUNCTION_4_21();
    v72();
    v73 = v97;
    v74 = v98;
    (*(v98 + 16))(v97, v47, v100);
    v75 = sub_268B37A34();
    v76 = sub_268B37EE4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v109 = v26;
      v78 = v77;
      v104 = v77;
      v106 = swift_slowAlloc();
      v110 = v106;
      *v78 = 136315138;
      v105 = v75;
      sub_268B35414();
      LODWORD(v108) = v76;
      v79 = sub_268B37C24();
      v81 = v80;
      (*(v74 + 8))(v73, v100);
      v82 = sub_26892CDB8(v79, v81, &v110);

      v83 = v104;
      v84 = v105;
      *(v104 + 4) = v82;
      _os_log_impl(&dword_2688BB000, v84, v108, "PauseMediaFlowStrategy#actionForInput received an unsupported parse type %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      (*(v74 + 8))(v73, v100);
    }

    v46(v99, v27);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_2_22();
    OUTLINED_FUNCTION_1_34();
    sub_268B34ED4();
    v92 = v20[1];
    v93 = OUTLINED_FUNCTION_230();
    return v94(v93);
  }
}

uint64_t sub_2689F1BEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v39 = a3;
  v41 = a2;
  v40 = sub_268B37AB4();
  v5 = OUTLINED_FUNCTION_1(v40);
  v46 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_268B37B14();
  v13 = OUTLINED_FUNCTION_1(v12);
  v44 = v14;
  v45 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v20 = sub_268B35494();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4E28 != -1)
  {
    swift_once();
  }

  v38 = qword_2802CD970;
  (*(v23 + 16))(&v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20);
  v27 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v28 = (v25 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v41;
  *(v29 + 16) = v41;
  (*(v23 + 32))(v29 + v27, v26, v20);
  v31 = (v29 + v28);
  v33 = v42;
  v32 = v43;
  *v31 = v39;
  v31[1] = v33;
  *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v32;
  aBlock[4] = sub_2689F35B4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_3;
  v34 = _Block_copy(aBlock);
  v35 = v30;

  sub_268B37AE4();
  v47 = MEMORY[0x277D84F90];
  sub_2689F36B8(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v36 = v40;
  sub_268B38124();
  MEMORY[0x26D625950](0, v19, v11, v34);
  _Block_release(v34);
  (*(v46 + 8))(v11, v36);
  (*(v44 + 8))(v19, v45);
}

void sub_2689F1FB8(void *a1, uint64_t *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v124 = a5;
  v133 = a3;
  v134 = a4;
  v136 = a2;
  v6 = sub_268B35474();
  v119 = *(v6 - 8);
  v120 = v6;
  v7 = *(v119 + 64);
  MEMORY[0x28223BE20](v6);
  v123 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v129 = &v116 - v11;
  v128 = type metadata accessor for MediaPlayerIntent();
  v12 = *(*(v128 - 1) + 64);
  MEMORY[0x28223BE20](v128);
  v121 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_268B35494();
  v14 = *(v137 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v137);
  v117 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v122 = &v116 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v131 = &v116 - v21;
  MEMORY[0x28223BE20](v20);
  v135 = &v116 - v22;
  v23 = sub_268B37A54();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v118 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v116 = &v116 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v130 = &v116 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v116 - v32;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v23, qword_2802CDA10);
  v35 = v24[2];
  v125 = v34;
  v126 = v35;
  (v35)(v33);
  v36 = sub_268B37A34();
  v37 = sub_268B37F04();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = a1;
    v39 = v24;
    v40 = v23;
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2688BB000, v36, v37, "PauseMediaFlowStrategy#makeIntentFromParse called", v41, 2u);
    v42 = v41;
    v23 = v40;
    v24 = v39;
    a1 = v38;
    MEMORY[0x26D6266E0](v42, -1, -1);
  }

  v43 = v24[1];
  v43(v33, v23);
  v127 = v24 + 1;
  if (a1)
  {
    v44 = a1;
    v132 = a1;
  }

  else
  {
    v44 = 0;
    v132 = [objc_allocWithZone(type metadata accessor for PauseMediaIntent()) init];
  }

  v45 = v135;
  v46 = v136;
  v47 = *(v14 + 16);
  v48 = v137;
  v47(v135, v136, v137);
  v49 = (*(v14 + 88))(v45, v48);
  if (v49 == *MEMORY[0x277D5C128])
  {
    goto LABEL_9;
  }

  if (v49 == *MEMORY[0x277D5C150])
  {
    (*(v14 + 96))(v45, v137);
    v75 = v119;
    v74 = v120;
    v76 = v123;
    (*(v119 + 32))(v123, v45, v120);
    v77 = v44;
    if (sub_2689F1258())
    {
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v78 = sub_268B38054();
      v79 = v132;
      [v132 setIsDirectInvocation_];

      (*(v75 + 8))(v76, v74);
      goto LABEL_16;
    }

    v105 = v43;
    v106 = v116;
    v126(v116, v125, v23);
    v107 = sub_268B37A34();
    v108 = sub_268B37EE4();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = v23;
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_2688BB000, v107, v108, "PauseMediaFlowStrategy#makeIntentFromParse unexpected direct invocation identifier", v110, 2u);
      v111 = v110;
      v23 = v109;
      v76 = v123;
      MEMORY[0x26D6266E0](v111, -1, -1);
    }

    v105(v106, v23);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v112 = swift_allocError();
    *v113 = 36;
    v133(v112, 1);

    (*(v75 + 8))(v76, v74);
  }

  else
  {
    v46 = v136;
    if (v49 == *MEMORY[0x277D5C160])
    {
LABEL_9:
      v50 = *(v14 + 8);
      v51 = v44;
      v52 = v137;
      v136 = v50;
      (v50)(v45, v137);
      v53 = v131;
      v47(v131, v46, v52);
      v54 = v129;
      sub_26893BC0C(v53, 1, v55, v56, v57, v58, v59, v60, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
      if (__swift_getEnumTagSinglePayload(v54, 1, v128) == 1)
      {
        v128 = v43;
        sub_2688C2E64(v54);
        v126(v130, v125, v23);
        v61 = v122;
        v47(v122, v46, v137);
        v62 = sub_268B37A34();
        v63 = sub_268B37EE4();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v129 = v23;
          v66 = v65;
          v138[0] = v65;
          *v64 = 136315138;
          v67 = v137;
          v47(v131, v61, v137);
          v68 = sub_268B37C24();
          v70 = v69;
          (v136)(v61, v67);
          v71 = sub_26892CDB8(v68, v70, v138);

          *(v64 + 4) = v71;
          _os_log_impl(&dword_2688BB000, v62, v63, "PauseMediaFlowStrategy#makeIntentFromParse failed to create MediaPlayerIntent from parse: %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v66);
          MEMORY[0x26D6266E0](v66, -1, -1);
          MEMORY[0x26D6266E0](v64, -1, -1);

          v73 = v129;
          v72 = v130;
        }

        else
        {

          (v136)(v61, v137);
          v72 = v130;
          v73 = v23;
        }

        v128(v72, v73);
        type metadata accessor for ErrorFilingHelper();
        static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
        sub_2688C2ECC();
        v103 = swift_allocError();
        *v104 = 35;
        v133(v103, 1);

        return;
      }

      v80 = v121;
      sub_2688C0464(v54, v121);
      v79 = v132;
      sub_268982750(v80);
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v81 = sub_268B38054();
      [v79 setIsDirectInvocation_];

      sub_2688C2F6C(v80);
LABEL_16:
      v82 = v124;
      v83 = v124[5];
      v84 = v124[6];
      __swift_project_boxed_opaque_existential_1(v124 + 2, v83);
      v85 = swift_allocObject();
      v86 = v134;
      v85[2] = v133;
      v85[3] = v86;
      v85[4] = v79;
      v87 = v79;

      sub_268AD35F4(v87, &off_287953B08, (v82 + 7), sub_2689F36AC, v85, v83, v84);

      return;
    }

    v128 = v43;
    v126(v118, v125, v23);
    v88 = v117;
    v47(v117, v46, v137);
    v89 = v44;
    v90 = sub_268B37A34();
    v91 = sub_268B37EE4();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v138[0] = v136;
      *v92 = 136315138;
      v93 = v137;
      v47(v131, v88, v137);
      v94 = sub_268B37C24();
      v129 = v23;
      v95 = v94;
      v97 = v96;
      v98 = *(v14 + 8);
      v98(v88, v93);
      v99 = sub_26892CDB8(v95, v97, v138);

      *(v92 + 4) = v99;
      _os_log_impl(&dword_2688BB000, v90, v91, "PauseMediaFlowStrategy#makeIntentFromParse unexpected parse type in makeIntentFromParse: %s", v92, 0xCu);
      v100 = v136;
      __swift_destroy_boxed_opaque_existential_0Tm(v136);
      MEMORY[0x26D6266E0](v100, -1, -1);
      MEMORY[0x26D6266E0](v92, -1, -1);

      v101 = v118;
      v102 = v129;
    }

    else
    {

      v98 = *(v14 + 8);
      v98(v88, v137);
      v101 = v118;
      v102 = v23;
    }

    v128(v101, v102);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v114 = swift_allocError();
    *v115 = 37;
    v133(v114, 1);

    v98(v135, v137);
  }
}

uint64_t sub_2689F2CD8(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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
    _os_log_impl(&dword_2688BB000, v11, v12, "PauseMediaFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_2689F2ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689F2F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_2689F2FAC()
{
  if (qword_2802A4E20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD968;

  return v1;
}

uint64_t sub_2689F3008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689F3074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689F30E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689F314C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2689F319C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689F31F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689F325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689F32D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseMediaFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689F342C(uint64_t a1, uint64_t a2)
{
  result = sub_2689F36B8(&qword_2802A6EB0, a2, type metadata accessor for PauseMediaFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689F34CC()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  v10 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

void sub_2689F35B4()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_2689F1FB8(v5, (v0 + v2), v8, v9, v7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2689F366C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2689F36B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_34()
{

  return static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
}

void OUTLINED_FUNCTION_4_21()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
}

uint64_t OUTLINED_FUNCTION_11_19()
{

  return sub_268B38444();
}

id SetShuffleStateIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SetShuffleStateIntentHandler.init()()
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
  sub_2689F7824(v33, v32, &v41, v14, v40);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_2689F3BA0()
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
  *(v24 + 16) = "handleShuffleMedia";
  *(v24 + 24) = 18;
  *(v24 + 32) = 2;
  (*(v9 + 32))(v24 + v21, v13, v6);
  *(v24 + v22) = 1;
  v25 = v24 + v23;
  *(v25 + 8) = sub_268958724;
  *(v25 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_2689F3DF8(v26, v27, sub_268958A64, v24);

  (*(v9 + 8))(v15, v6);
  OUTLINED_FUNCTION_23();
}

void sub_2689F3DF8(void *a1, char *a2, void (*a3)(void **), uint64_t a4)
{
  v82 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A6460, &qword_268B3BE08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v80 - v9;
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v81 = &v80 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v80 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v80 - v22;
  v24 = sub_268B370C4();
  v84 = *(v24 - 8);
  v85 = v24;
  v25 = *(v84 + 64);
  MEMORY[0x28223BE20](v24);
  v83 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v86 = a3;
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_268958D98;
  *(v28 + 24) = v27;
  v87 = a4;

  v29 = sub_268B18100();
  if (!v29)
  {
    goto LABEL_10;
  }

  v30 = v29;
  if (!sub_2688EFD0C(v29))
  {

LABEL_10:

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v11, qword_2802CDA10);
    (*(v12 + 16))(v23, v37, v11);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "No devices found in SetShuffleStateIntent, returning failure", v40, 2u);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v12 + 8))(v23, v11);
LABEL_23:
    v57 = sub_268B36EA4();
    v58 = objc_allocWithZone(type metadata accessor for SetShuffleStateIntentResponse());
    v59 = v57;
    v60 = SetShuffleStateIntentResponse.init(code:userActivity:)(5, v57);
    v89 = v60;
    v86(&v89);

    goto LABEL_24;
  }

  v31 = [a1 shuffleState];
  v32 = MEMORY[0x277D5F7A0];
  switch(v31)
  {
    case 0uLL:
    case 3uLL:

      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v11, qword_2802CDA10);
      (*(v12 + 16))(v16, v33, v11);
      v34 = sub_268B37A34();
      v35 = sub_268B37EE4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2688BB000, v34, v35, "Unexpected shuffle mode", v36, 2u);
        MEMORY[0x26D6266E0](v36, -1, -1);
      }

      (*(v12 + 8))(v16, v11);
      goto LABEL_23;
    case 1uLL:
      break;
    case 2uLL:
      v32 = MEMORY[0x277D5F798];
      break;
    default:

      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v53 = __swift_project_value_buffer(v11, qword_2802CDA10);
      (*(v12 + 16))(v21, v53, v11);
      v54 = sub_268B37A34();
      v55 = sub_268B37EE4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_2688BB000, v54, v55, "Uknown shuffle mode", v56, 2u);
        MEMORY[0x26D6266E0](v56, -1, -1);
      }

      (*(v12 + 8))(v21, v11);
      goto LABEL_23;
  }

  (*(v84 + 104))(v83, *v32, v85);
  v41 = v82;
  v42 = *__swift_project_boxed_opaque_existential_1(&v82[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_analyticsService], *&v82[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_analyticsService + 24]);
  sub_268920C54();
  sub_268949478(0x6666756853746573, 0xEF6574617453656CLL, v43, v30);

  v44 = *&v41[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_aceServiceHelper];
  sub_268921344();
  v46 = v45;

  if (*(v46 + 16))
  {
    v47 = sub_268B37DB4();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v47);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    sub_2688DB634();

    v49 = *&v41[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&v41[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_playbackController], *&v41[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_playbackController + 24]);
    v50 = swift_allocObject();
    v50[2] = sub_2688E19F8;
    v50[3] = v28;
    v50[4] = v41;
    v51 = v41;
    v52 = v83;
    sub_268B36CF4();

    (*(v84 + 8))(v52, v85);

LABEL_24:

    return;
  }

  v61 = v85;

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v62 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v63 = v81;
  (*(v12 + 16))(v81, v62, v11);
  v64 = a1;
  v65 = sub_268B37A34();
  v66 = sub_268B37EE4();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v89 = v68;
    *v67 = 136315138;
    v88 = sub_268B18100();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
    v69 = sub_268B38094();
    v71 = v70;

    v72 = sub_26892CDB8(v69, v71, &v89);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_2688BB000, v65, v66, "Unable to get route ids for the intent devices: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    v73 = v68;
    v61 = v85;
    MEMORY[0x26D6266E0](v73, -1, -1);
    MEMORY[0x26D6266E0](v67, -1, -1);

    (*(v12 + 8))(v81, v11);
  }

  else
  {

    (*(v12 + 8))(v63, v11);
  }

  v75 = v83;
  v74 = v84;
  v76 = sub_268B36EA4();
  v77 = objc_allocWithZone(type metadata accessor for SetShuffleStateIntentResponse());
  v78 = v76;
  v79 = SetShuffleStateIntentResponse.init(code:userActivity:)(5, v76);
  v89 = v79;
  v86(&v89);

  (*(v74 + 8))(v75, v61);
}

uint64_t sub_2689F488C()
{
  v1 = sub_268B37A54();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v0[8] = v2;
  v3 = *(v2 + 64) + 15;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v4 = sub_268B36A24();
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v6 = *(v5 + 64) + 15;
  v0[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_2802A6EF0, &unk_268B502B0) - 8) + 64) + 15;
  v0[14] = swift_task_alloc();
  v8 = sub_268B34674();
  v0[15] = v8;
  v9 = *(v8 - 8);
  v0[16] = v9;
  v10 = *(v9 + 64) + 15;
  v0[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2689F4A44, 0, 0);
}

uint64_t sub_2689F4A44()
{
  sub_268B36754();
  if (!sub_268B36734())
  {
    goto LABEL_5;
  }

  sub_268B36714();

  sub_268B36AF4();
  v2 = v1;

  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = v0[14];
  v3 = v0[15];
  sub_268B34624();

  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    sub_2688C058C(v0[14], qword_2802A6EF0, &unk_268B502B0);
LABEL_5:
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v5 = v0[10];
    v6 = v0[8];
    OUTLINED_FUNCTION_82(v0[7], qword_2802CDA10);
    (*(v6 + 16))(v5);
    v7 = sub_268B37A34();
    v8 = sub_268B37EE4();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    if (v9)
    {
      v13 = OUTLINED_FUNCTION_14();
      *v13 = 0;
      _os_log_impl(&dword_2688BB000, v7, v8, "Unable to resolve requestId. Not donating Shuffle engagement", v13, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v12 + 8))(v10, v11);
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_222();

    return v14();
  }

  v16 = v0[13];
  (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
  sub_268B37B84();
  sub_268B36A14();
  sub_268B369F4();
  sub_268B369E4();
  v17 = v0[5];
  v18 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
  v19 = *(v18 + 16);
  v20 = *(MEMORY[0x277D60598] + 4);
  v21 = swift_task_alloc();
  v0[18] = v21;
  *v21 = v0;
  v21[1] = sub_2689F4D34;
  v22 = v0[17];
  v23 = v0[13];

  return MEMORY[0x2821C6008](v23, v22, v17, v19);
}

uint64_t sub_2689F4D34()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_2689F4EF8;
  }

  else
  {
    v3 = sub_2689F4E48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2689F4E48()
{
  v4 = OUTLINED_FUNCTION_22_9();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_0Tm((v3 + 16));
  OUTLINED_FUNCTION_26_7();

  OUTLINED_FUNCTION_222();

  return v6();
}

uint64_t sub_2689F4EF8()
{
  v4 = OUTLINED_FUNCTION_22_9();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_0Tm(v3 + 2);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v6 = v3[19];
  v8 = v3[8];
  v7 = v3[9];
  OUTLINED_FUNCTION_82(v3[7], qword_2802CDA10);
  (*(v8 + 16))(v7);
  v9 = v6;
  v10 = sub_268B37A34();
  v11 = sub_268B37EE4();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v3[19];
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_172_0();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_2688BB000, v10, v11, "Error donating shuffle engagement: %@", v14, 0xCu);
    sub_2688C058C(v15, &qword_2802A6420, &unk_268B3C680);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  (*(v3[8] + 8))(v3[9], v3[7]);
  OUTLINED_FUNCTION_26_7();

  OUTLINED_FUNCTION_222();

  return v18();
}

void sub_2689F50F4(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B36ED4();
  sub_2689F7408();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for SetShuffleStateIntentResponse());
  v7 = v3;
  v8 = SetShuffleStateIntentResponse.init(code:userActivity:)(v5, v3);
  a2();
}

void sub_2689F5644(void *a1, uint64_t a2, void (**a3)(void, void))
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
    _os_log_impl(&dword_2688BB000, v18, v19, "Resolving devices for set shuffle state", v21, 2u);
    v22 = v21;
    a1 = v20;
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = v11[1];
  v23(v16, v10);
  if ((sub_268921060() & 1) != 0 && (v24 = a1, v25 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState + 32), __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState + 24)), a1 = v24, (sub_2688C3240() & 1) == 0))
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
    type metadata accessor for SetShuffleStateDevicesResolutionResult();
    *(v34 + 32) = sub_268B17B04(2);
    v35 = sub_268B37CE4();
    v29 = v41;
    (v41)[2](v41, v35);
  }

  else
  {
    v26 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceSelector);
    v28 = v39;
    v27 = v40;
    (*(v39 + 104))(v9, *MEMORY[0x277D5F650], v40);
    [a1 mediaType];
    v29 = v41;
    _Block_copy(v41);
    sub_268908AF4();
    (*(v28 + 8))(v9, v27);
  }

  _Block_release(v29);
  _Block_release(v29);
}

void sub_2689F5A9C()
{
  OUTLINED_FUNCTION_26();
  v44 = v1;
  v45 = v2;
  v46 = v4;
  v47 = v3;
  v43 = sub_268B36C04();
  v5 = OUTLINED_FUNCTION_1(v43);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  v42 = (v19 - v20);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v24 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v41 = *(v16 + 16);
  v41(v23, v24, v13);
  v25 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_14();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v0, "Resolving devices for set shuffle state", v27, 2u);
    OUTLINED_FUNCTION_12();
  }

  v28 = *(v16 + 8);
  v29 = OUTLINED_FUNCTION_138();
  v28(v29);
  v30 = sub_268921060();
  v31 = v44;
  if ((v30 & 1) != 0 && (v32 = *(v44 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState + 24), __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState), v32), (sub_2688C3240() & 1) == 0))
  {
    v35 = v42;
    v41(v42, v24, v13);
    v36 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_27_7();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v38);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v36, v32, "Whole House Audio requests are unsupported on this platform");
      OUTLINED_FUNCTION_83_0();
    }

    (v28)(v35, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_16_18(v39, xmmword_268B3BBA0);
    v39[2].n128_u64[0] = sub_268B17B04(2);
    v45(v39);
  }

  else
  {
    v33 = *(v31 + OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceSelector);
    v34 = v43;
    (*(v7 + 104))(v12, *MEMORY[0x277D5F650], v43);
    [v47 mediaType];

    sub_2689093B4();
    (*(v7 + 8))(v12, v34);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689F5E28()
{
  OUTLINED_FUNCTION_26();
  v77 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_6();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v70 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v70 - v24;
  if (v7)
  {
    if (v7 == OS_LOG_TYPE_INFO)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      __swift_project_value_buffer(v10, qword_2802CDA10);
      OUTLINED_FUNCTION_1_13();
      v26(v0);

      v27 = sub_268B37A34();
      v28 = sub_268B37F04();
      sub_268958D4C(v9, 1u);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = OUTLINED_FUNCTION_172_0();
        v75 = v3;
        v76 = v5;
        v30 = v29;
        v31 = OUTLINED_FUNCTION_173_0();
        OUTLINED_FUNCTION_28_10(v31);
        *v30 = 136315138;
        v32 = type metadata accessor for Device();
        v33 = MEMORY[0x26D6256F0](v9, v32);
        v35 = OUTLINED_FUNCTION_30_3(v33, v34);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_2688BB000, v27, v28, "SetShuffleStateIntentHandler#resolveDevices Disambiguating between devices: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v3);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();
      }

      (*(v13 + 8))(v0, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v36 = swift_allocObject();
      OUTLINED_FUNCTION_16_18(v36, xmmword_268B3BBA0);
      v36[2].n128_u64[0] = sub_268B2CCFC(v9);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v75 = v3;
      v76 = v5;
      OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
      v53 = *(v13 + 16);
      v73 = v54;
      v74 = v13 + 16;
      v72 = v53;
      (v53)(v25);
      v55 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_27_7();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_172_0();
        v71 = OUTLINED_FUNCTION_173_0();
        v79 = v71;
        *v57 = 136315138;
        v78 = v9 & 1;
        sub_26890C84C();
        v58 = sub_268B384A4();
        v60 = sub_26892CDB8(v58, v59, &v79);

        *(v57 + 4) = v60;
        _os_log_impl(&dword_2688BB000, v55, v7, "SetShuffleStateIntentHandler#resolveDevices Error resolving devices: %s", v57, 0xCu);
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_12();
      }

      v61 = *(v13 + 8);
      v61(v25, v10);
      if (v9)
      {
        v72(v18, v73, v10);
        v62 = sub_268B37A34();
        v63 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v63))
        {
          v64 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v64);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v65, v66, "SetShuffleStateIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v61(v18, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v67 = swift_allocObject();
        OUTLINED_FUNCTION_16_18(v67, xmmword_268B3BBA0);
        v68 = OUTLINED_FUNCTION_33_9();
        v69 = sub_268B17B04(v68);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v67 = swift_allocObject();
        OUTLINED_FUNCTION_16_18(v67, xmmword_268B3BBA0);
        v69 = [swift_getObjCClassFromMetadata() notRequired];
      }

      v67[2].n128_u64[0] = v69;
    }

    goto LABEL_30;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v10, qword_2802CDA10);
  OUTLINED_FUNCTION_1_13();
  v37(v23);

  v38 = sub_268B37A34();
  v39 = sub_268B37F04();
  sub_268958D4C(v9, 0);
  v40 = os_log_type_enabled(v38, v39);
  v76 = v5;
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_172_0();
    v75 = v3;
    v42 = v41;
    v43 = OUTLINED_FUNCTION_173_0();
    OUTLINED_FUNCTION_28_10(v43);
    *v42 = 136315138;
    v44 = type metadata accessor for Device();
    v45 = MEMORY[0x26D6256F0](v9, v44);
    v47 = sub_26892CDB8(v45, v46, &v79);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_2688BB000, v38, v39, "SetShuffleStateIntentHandler#resolveDevices Success resolving devices: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v23, v10);
  v48 = sub_2688EFD0C(v9);
  if (!v48)
  {
    goto LABEL_30;
  }

  v49 = v48;
  v79 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v49 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetShuffleStateDevicesResolutionResult();
    v50 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x26D625BD0](v50, v9);
      }

      else
      {
        v51 = *(v9 + 8 * v50 + 32);
      }

      v52 = v51;
      ++v50;
      sub_268B2CC98(v51);

      sub_268B38214();
      OUTLINED_FUNCTION_25_8();
      sub_268B38254();
      sub_268B38224();
    }

    while (v49 != v50);
LABEL_30:
    OUTLINED_FUNCTION_192();
    sub_2689A25C4();

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_2689F64CC()
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
  v21 = &v70 - v20;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      (*(v11 + 16))(v0);

      v22 = sub_268B37A34();
      v23 = sub_268B37F04();
      sub_268958D4C(v7, 1u);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_172_0();
        v77 = OUTLINED_FUNCTION_173_0();
        *v24 = 136315138;
        v25 = type metadata accessor for Device();
        v26 = MEMORY[0x26D6256F0](v7, v25);
        OUTLINED_FUNCTION_30_3(v26, v27);
        v75 = v3;
        OUTLINED_FUNCTION_16_7();
        *(v24 + 4) = v11;
        _os_log_impl(&dword_2688BB000, v22, v23, "SetShuffleStateIntentHandler#resolveDevices Disambiguating between devices: %s", v24, 0xCu);
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_12();

        v28 = *(v3 + 8);
        v29 = OUTLINED_FUNCTION_138();
        v30(v29);
        v3 = v75;
      }

      else
      {

        v57 = *(v11 + 8);
        v58 = OUTLINED_FUNCTION_138();
        v59(v58);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v54 = swift_allocObject();
      OUTLINED_FUNCTION_16_18(v54, xmmword_268B3BBA0);
      v56 = sub_268B2CCFC(v7);
    }

    else
    {
      v75 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      v73 = *(v11 + 16);
      v74 = v40;
      v73(v21);
      v41 = sub_268B37A34();
      v42 = sub_268B37EE4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_172_0();
        v72 = v11;
        v44 = v43;
        v71 = OUTLINED_FUNCTION_173_0();
        v77 = v71;
        *v44 = 136315138;
        v76 = v7 & 1;
        sub_26890C84C();
        v45 = sub_268B384A4();
        v47 = sub_26892CDB8(v45, v46, &v77);

        *(v44 + 4) = v47;
        _os_log_impl(&dword_2688BB000, v41, v42, "SetShuffleStateIntentHandler#resolveDevices Error resolving devices: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        OUTLINED_FUNCTION_12();
        v11 = v72;
        OUTLINED_FUNCTION_12();
      }

      v48 = *(v11 + 8);
      v48(v21, v8);
      v3 = v75;
      if ((v7 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v68 = swift_allocObject();
        OUTLINED_FUNCTION_16_18(v68, xmmword_268B3BBA0);
        v68[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v73)(v16, v74, v8);
      v49 = sub_268B37A34();
      v50 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v50))
      {
        v51 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v51);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v52, v53, "SetShuffleStateIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v48(v16, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v54 = swift_allocObject();
      OUTLINED_FUNCTION_16_18(v54, xmmword_268B3BBA0);
      v55 = OUTLINED_FUNCTION_33_9();
      v56 = sub_268B17B04(v55);
    }

    v54[2].n128_u64[0] = v56;
LABEL_32:
    v69 = sub_268B37CE4();
    (*(v3 + 16))(v3, v69);

    _Block_release(v3);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
  (*(v11 + 16))(v1);

  v31 = sub_268B37A34();
  v32 = sub_268B37F04();
  sub_268958D4C(v7, 0);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_172_0();
    v77 = OUTLINED_FUNCTION_173_0();
    *v33 = 136315138;
    v34 = type metadata accessor for Device();
    v35 = MEMORY[0x26D6256F0](v7, v34);
    OUTLINED_FUNCTION_30_3(v35, v36);
    v75 = v3;
    OUTLINED_FUNCTION_16_7();
    *(v33 + 4) = v11;
    _os_log_impl(&dword_2688BB000, v31, v32, "SetShuffleStateIntentHandler#resolveDevices Success resolving devices: %s", v33, 0xCu);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_12();

    v37 = *(v3 + 8);
    v38 = OUTLINED_FUNCTION_192();
    v39(v38);
    v3 = v75;
  }

  else
  {

    v60 = *(v11 + 8);
    v61 = OUTLINED_FUNCTION_192();
    v62(v61);
  }

  v63 = sub_2688EFD0C(v7);
  if (!v63)
  {
LABEL_30:
    type metadata accessor for SetShuffleStateDevicesResolutionResult();
    goto LABEL_32;
  }

  v64 = v63;
  v77 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v64 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetShuffleStateDevicesResolutionResult();
    v65 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x26D625BD0](v65, v7);
      }

      else
      {
        v66 = *(v7 + 8 * v65 + 32);
      }

      v67 = v66;
      ++v65;
      sub_268B2CC98(v66);

      sub_268B38214();
      OUTLINED_FUNCTION_25_8();
      sub_268B38254();
      sub_268B38224();
    }

    while (v64 != v65);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_2689F6B80()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v66 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  if (v7)
  {
    if (v7 == OS_LOG_TYPE_INFO)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      __swift_project_value_buffer(v10, qword_2802CDA10);
      OUTLINED_FUNCTION_1_13();
      v23(v0);

      v24 = sub_268B37A34();
      v25 = sub_268B37F04();
      sub_268958D4C(v9, 1u);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_172_0();
        v27 = OUTLINED_FUNCTION_173_0();
        OUTLINED_FUNCTION_28_10(v27);
        *v26 = 136315138;
        v28 = type metadata accessor for Device();
        v29 = MEMORY[0x26D6256F0](v9, v28);
        OUTLINED_FUNCTION_30_3(v29, v30);
        v65 = v10;
        OUTLINED_FUNCTION_16_7();
        *(v26 + 4) = v4;
        _os_log_impl(&dword_2688BB000, v24, v25, "SetShuffleStateIntentHandler#resolveDevices Disambiguating between devices: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v1);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v13 + 8))(v0, v65);
      }

      else
      {

        (*(v13 + 8))(v0, v10);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v53 = swift_allocObject();
      OUTLINED_FUNCTION_16_18(v53, xmmword_268B3BBA0);
      v55 = sub_268B2CCFC(v9);
    }

    else
    {
      v65 = v4;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
      v63 = *(v13 + 16);
      v64 = v39;
      v63(v22);
      v40 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_27_7();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_172_0();
        v62 = v13;
        v43 = v42;
        v61 = OUTLINED_FUNCTION_173_0();
        v68 = v61;
        *v43 = 136315138;
        v67 = v9 & 1;
        sub_26890C84C();
        v44 = sub_268B384A4();
        v46 = sub_26892CDB8(v44, v45, &v68);

        *(v43 + 4) = v46;
        _os_log_impl(&dword_2688BB000, v40, v7, "SetShuffleStateIntentHandler#resolveDevices Error resolving devices: %s", v43, 0xCu);
        OUTLINED_FUNCTION_48_0();
        v13 = v62;
        OUTLINED_FUNCTION_12();
      }

      v47 = *(v13 + 8);
      v47(v22, v10);
      if (v9)
      {
        (v63)(v2, v64, v10);
        v48 = sub_268B37A34();
        v49 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v49))
        {
          v50 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v50);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v51, v52, "SetShuffleStateIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v47(v2, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v53 = swift_allocObject();
        OUTLINED_FUNCTION_16_18(v53, xmmword_268B3BBA0);
        v54 = OUTLINED_FUNCTION_33_9();
        v55 = sub_268B17B04(v54);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v53 = swift_allocObject();
        OUTLINED_FUNCTION_16_18(v53, xmmword_268B3BBA0);
        v55 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v53[2].n128_u64[0] = v55;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v10, qword_2802CDA10);
  OUTLINED_FUNCTION_1_13();
  v31(v19);

  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  sub_268958D4C(v9, 0);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_172_0();
    v35 = OUTLINED_FUNCTION_173_0();
    OUTLINED_FUNCTION_28_10(v35);
    *v34 = 136315138;
    v36 = type metadata accessor for Device();
    v37 = MEMORY[0x26D6256F0](v9, v36);
    OUTLINED_FUNCTION_30_3(v37, v38);
    v65 = v10;
    OUTLINED_FUNCTION_16_7();
    *(v34 + 4) = v4;
    _os_log_impl(&dword_2688BB000, v32, v33, "SetShuffleStateIntentHandler#resolveDevices Success resolving devices: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v13 + 8))(v19, v65);
  }

  else
  {

    (*(v13 + 8))(v19, v10);
  }

  v56 = sub_2688EFD0C(v9);
  v53 = MEMORY[0x277D84F90];
  if (!v56)
  {
    goto LABEL_32;
  }

  v57 = v56;
  v68 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v57 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetShuffleStateDevicesResolutionResult();
    v58 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x26D625BD0](v58, v9);
      }

      else
      {
        v59 = *(v9 + 8 * v58 + 32);
      }

      v60 = v59;
      ++v58;
      sub_268B2CC98(v59);

      sub_268B38214();
      OUTLINED_FUNCTION_25_8();
      sub_268B38254();
      sub_268B38224();
    }

    while (v57 != v58);
    v53 = v68;
LABEL_32:
    v66(v53);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_2689F721C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetShuffleStateDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_2689F7288(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetShuffleStateIntentResponse());
  v5 = SetShuffleStateIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_2689F72F4(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetShuffleStateIntentResponse());
  v4 = OUTLINED_FUNCTION_33_9();
  v5 = SetShuffleStateIntentResponse.init(code:userActivity:)(v4, 0);
  a2();
}

void sub_2689F737C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_2689F7408()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B36F24();
  v3 = OUTLINED_FUNCTION_1(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v40 = (v7 - v8);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v38 = &v37 - v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = sub_268B37A54();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v28 = v27 - v26;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v20, qword_2802CDA10);
  (*(v23 + 16))(v28);
  v29 = sub_268B37A34();
  v30 = sub_268B37ED4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_14();
    v37 = v14;
    OUTLINED_FUNCTION_81(v31);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v29, v30, "responseCodeFromResult for SetShuffleStateIntentHandler");
    OUTLINED_FUNCTION_12();
  }

  (*(v23 + 8))(v28, v20);
  sub_26893B66C(v1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v39;
    v33 = *(v39 + 32);
    v33(v13, v19, v2);
    v34 = v38;
    sub_268B36EC4();
    v35 = *(v32 + 8);
    v35(v13, v2);
    v36 = v40;
    v33(v40, v34, v2);
    if ((*(v32 + 88))(v36, v2) != *MEMORY[0x277D5F6B0])
    {
      v35(v36, v2);
    }
  }

  OUTLINED_FUNCTION_23();
}

id SetShuffleStateIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetShuffleStateIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2689F77EC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

id sub_2689F7824(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
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
  v24 = sub_2689F7AB4(a1, v17, v29, *v22, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v24;
}

uint64_t sub_2689F7A7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2689F7AB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v28[3] = sub_268B36C54();
  v28[4] = MEMORY[0x277D5F680];
  v28[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v27[3] = v10;
  v27[4] = &off_2879539D0;
  v27[0] = a4;
  v11 = type metadata accessor for SetShuffleStateIntentHandler();
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
  sub_26890C900(v28, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceSelector] = a2;
  sub_26890C900(v26, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_analyticsService]);
  sub_26890C900(a3, v25);
  sub_26890C900(a5, v24);
  type metadata accessor for AceServiceHelper();
  v19 = swift_allocObject();
  sub_2688E6514(v25, v19 + 16);
  sub_2688E6514(v24, v19 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_aceServiceHelper] = v19;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState]);
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

void sub_2689F7CDC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v31[3] = v0;
  v31[4] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(v1 - 8) + 32))(boxed_opaque_existential_1, v11, v1);
  v14 = type metadata accessor for AnalyticsServiceImpl();
  v30[3] = v14;
  v30[4] = &off_2879539D0;
  v30[0] = v5;
  v15 = type metadata accessor for SetShuffleStateIntentHandler();
  v16 = objc_allocWithZone(v15);
  __swift_mutable_project_boxed_opaque_existential_1(v30, v14);
  OUTLINED_FUNCTION_3_8();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = (v21 - v20);
  (*(v23 + 16))(v21 - v20);
  v24 = *v22;
  v29[3] = v14;
  v29[4] = &off_2879539D0;
  v29[0] = v24;
  sub_26890C900(v31, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_playbackController]);
  *&v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceSelector] = v9;
  sub_26890C900(v29, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_analyticsService]);
  sub_26890C900(v7, v28);
  sub_26890C900(v3, v27);
  type metadata accessor for AceServiceHelper();
  v25 = swift_allocObject();
  sub_2688E6514(v28, v25 + 16);
  sub_2688E6514(v27, v25 + 56);
  *&v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_aceServiceHelper] = v25;
  sub_26890C900(v7, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState]);
  v26.receiver = v16;
  v26.super_class = v15;
  objc_msgSendSuper2(&v26, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689F7F10()
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

uint64_t sub_2689F807C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2689F80B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2689F80EC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2689F8198;

  return sub_2689F488C();
}

uint64_t sub_2689F8198()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_222();

  return v2();
}

uint64_t sub_2689F8288()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_2689F82C4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_2689F50F4(a1, *(v1 + 16));
}

uint64_t OUTLINED_FUNCTION_16_18(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SetShuffleStateDevicesResolutionResult();
}

uint64_t OUTLINED_FUNCTION_22_9()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  result = v0[13];
  v5 = v0[11];
  v6 = *(v0[12] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_8()
{
  v2 = *(*(v0 - 88) + 16);

  return sub_268B38244();
}

uint64_t OUTLINED_FUNCTION_26_7()
{
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[9];
  v5 = v0[10];
}

uint64_t sub_2689F8358()
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1_15(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = sub_268B35564();
  if (v14)
  {
    if (qword_2802A4F30 != -1)
    {
      v14 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v14, qword_2802CDA10);
    (*(v5 + 16))(v13);
    v15 = sub_268B37A34();
    v16 = sub_268B37ED4();
    if (!os_log_type_enabled(v15, v16))
    {
      v18 = 0;
LABEL_21:

      (*(v5 + 8))(v13, v0);
      return v18;
    }

    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_5_11(&dword_2688BB000, v17, v16, "UserDialogAct is UserAccepted");
    v18 = 0;
LABEL_17:
    OUTLINED_FUNCTION_12();
    goto LABEL_21;
  }

  v19 = sub_268B35574();
  if (v19)
  {
    if (qword_2802A4F30 != -1)
    {
      v19 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v19, qword_2802CDA10);
    (*(v5 + 16))(v1);
    v15 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (!OUTLINED_FUNCTION_115_0(v20))
    {
      v18 = 1;
      v13 = v1;
      goto LABEL_21;
    }

    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_5_11(&dword_2688BB000, v21, v13, "UserDialogAct is UserRejected");
    v18 = 1;
    v13 = v1;
    goto LABEL_17;
  }

  v22 = sub_268B35584();
  if (v22)
  {
    if (qword_2802A4F30 != -1)
    {
      v22 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v22, qword_2802CDA10);
    (*(v5 + 16))(v10);
    v15 = sub_268B37A34();
    v23 = sub_268B37ED4();
    v18 = 2;
    if (!OUTLINED_FUNCTION_115_0(v23))
    {
      v13 = v10;
      goto LABEL_21;
    }

    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_5_11(&dword_2688BB000, v24, v13, "UserDialogAct is UserCancelled");
    v13 = v10;
    goto LABEL_17;
  }

  return 3;
}

uint64_t SIRINLUUserDialogAct.getUsoTask()()
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1_15(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v12 = sub_268B35C24();
  if (sub_2688EFD0C(v12))
  {
    sub_2688EFD10(0, (v12 & 0xC000000000000001) == 0, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D625BD0](0, v12);
    }

    else
    {
      v13 = *(v12 + 32);
    }

    if (qword_2802A4F30 != -1)
    {
      v14 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v14, qword_2802CDA10);
    (*(v5 + 16))(v11);

    v15 = sub_268B37A34();
    v16 = sub_268B37F04();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v17 = 136446466;
      v18 = sub_268B36684();
      v20 = sub_26892CDB8(v18, v19, v30);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      v21 = sub_268B36674();
      v23 = sub_26892CDB8(v21, v22, v30);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_2688BB000, v15, v16, "getUsoTask() returning task with entity=%{public}s verb=%{public}s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    (*(v5 + 8))(v11, v0);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      v25 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_61(v25, qword_2802CDA10);
    (*(v5 + 16))(v1);
    v26 = sub_268B37A34();
    v27 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v27))
    {
      v28 = OUTLINED_FUNCTION_14();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, OS_LOG_TYPE_DEFAULT, "No tasks found in input", v28, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v5 + 8))(v1, v0);
    return 0;
  }

  return v13;
}

void OUTLINED_FUNCTION_5_11(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void sub_2689F8B1C()
{
  v0 = sub_268B36BC4();
  v1 = sub_2688EFD0C(v0);
  for (i = 0; ; ++i)
  {
    if (v1 == i)
    {
LABEL_10:

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D625BD0](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_268B36BD4();
    if (swift_dynamicCastClass())
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_2689F8CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_26();
  v30 = v29;
  v171 = v32;
  v172 = v31;
  v179 = v33;
  v165 = v34;
  v166 = v35;
  v185 = v36;
  v189 = a28;
  v186 = a25;
  v175 = sub_268B35044();
  v37 = OUTLINED_FUNCTION_1(v175);
  v173 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_3();
  v170 = v41;
  v164 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_78();
  v188 = v44;
  OUTLINED_FUNCTION_9();
  v45 = sub_268B37A54();
  v176 = OUTLINED_FUNCTION_1(v45);
  v177 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_3();
  v163 = v49;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_18();
  v52 = MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15_15(v52, v53, v54, v55, v56, v57, v58, v59, v161);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18();
  v174 = v61;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v62);
  v64 = &v161 - v63;
  v65 = swift_allocObject();
  v168 = a22;
  v169 = v30;
  *(v65 + 2) = v30;
  *(v65 + 3) = a21;
  *(v65 + 4) = a22;
  *(v65 + 5) = a23;
  v66 = v186;
  *(v65 + 6) = a24;
  *(v65 + 7) = v66;
  *(v65 + 8) = a26;
  *(v65 + 9) = a27;
  v167 = a27;
  *(v65 + 10) = v189;
  *(v65 + 11) = a29;
  v181 = v65;
  v67 = qword_2802A4F30;
  v183 = a21;

  v187 = a23;

  v182 = a24;
  v180 = v66;
  v186 = a26;

  v184 = a29;

  if (v67 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v68 = v176;
  v69 = __swift_project_value_buffer(v176, qword_2802CDA10);
  v70 = v177;
  v71 = (v177 + 16);
  v178 = *(v177 + 16);
  v178(v64, v69, v68);
  v72 = v64;
  v73 = sub_268B37A34();
  v74 = sub_268B37ED4();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_14();
    *v75 = 0;
    _os_log_impl(&dword_2688BB000, v73, v74, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v75, 2u);
    OUTLINED_FUNCTION_12();
  }

  v76 = *(v70 + 8);
  v76(v72, v68);
  v77 = v179;
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v77))
  {
    OUTLINED_FUNCTION_37_8();
    v108();
    v109 = sub_268B37A34();
    v110 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v110))
    {
      v111 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v111);
      OUTLINED_FUNCTION_2_13(&dword_2688BB000, v112, v77, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_12();
    }

    v76(v174, v68);
    sub_2688C2ECC();
    v113 = OUTLINED_FUNCTION_28_5();
    v115 = OUTLINED_FUNCTION_3_29(v113, v114, 16);
    OUTLINED_FUNCTION_31_9(v115, v116, v117, v118, v119, v120, v121, v122, v161, v162, v163);
    sub_2688C058C(v191, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_21;
  }

  v79 = v78;
  v179 = v77;
  sub_268A82B50(v185, v188);
  ObjectType = swift_getObjectType();
  v81 = (*(v79 + 16))(ObjectType, v79);
  if (!v81)
  {
    v123 = v162;
    OUTLINED_FUNCTION_37_8();
    v124();
    v125 = sub_268B37A34();
    v126 = sub_268B37F04();
    if (OUTLINED_FUNCTION_47_4(v126))
    {
      v127 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v127);
      OUTLINED_FUNCTION_35_3(&dword_2688BB000, v128, v77, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
      OUTLINED_FUNCTION_12();
    }

    v76(v123, v68);
    v129 = v171;
    sub_26890C900(v171 + 16, v191);
    OUTLINED_FUNCTION_87_1();
    LODWORD(v178) = sub_268ABE424(v190);
    __swift_destroy_boxed_opaque_existential_0Tm(v191);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    v131 = OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
    OUTLINED_FUNCTION_5_12(v131, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
    v132 = sub_268B37B84();
    v133 = *(v129 + 56);
    v176 = v132;
    v177 = v133;
    v134 = v173;
    v135 = v175;
    (*(v173 + 16))(v170, v188, v175);
    v136 = (*(v134 + 80) + 64) & ~*(v134 + 80);
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_83_2();
    v137 = swift_allocObject();
    v138 = v166;
    *(v137 + 16) = v165;
    *(v137 + 24) = v138;
    v139 = v185;
    v140 = v179;
    *(v137 + 32) = v185;
    *(v137 + 40) = v140;
    v141 = v172;
    *(v137 + 48) = v129;
    *(v137 + 56) = v141;
    (*(v134 + 32))(v137 + v136, v170, v135);
    v142 = (v76 + v137);
    v143 = v181;
    *v142 = sub_2689FF334;
    v142[1] = v143;
    v144 = v140;

    v145 = v139;

    OUTLINED_FUNCTION_101_0();
    sub_268AC0070();

    (*(v134 + 8))(v188, v135);

    goto LABEL_17;
  }

  if (v81 != 1)
  {
    v73 = v163;
    OUTLINED_FUNCTION_37_8();
    v146();
    v147 = sub_268B37A34();
    v148 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v148))
    {
      v149 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v149);
      OUTLINED_FUNCTION_35_3(&dword_2688BB000, v150, v77, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_12();
    }

    v76(v73, v68);
    sub_2688C2ECC();
    v151 = OUTLINED_FUNCTION_28_5();
    v153 = OUTLINED_FUNCTION_3_29(v151, v152, 17);
    OUTLINED_FUNCTION_31_9(v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);

    sub_2688C058C(v191, &unk_2802A57C0, &qword_268B3BE00);
    (*(v173 + 8))(v188, v175);
LABEL_21:

    goto LABEL_22;
  }

  v82 = v161;
  OUTLINED_FUNCTION_37_8();
  v83();
  v84 = sub_268B37A34();
  v85 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_47_4(v85))
  {
    v86 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v86);
    OUTLINED_FUNCTION_35_3(&dword_2688BB000, v87, v77, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
    OUTLINED_FUNCTION_12();
  }

  v76(v82, v68);
  v88.n128_f64[0] = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_45_6(v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v89 = swift_initStackObject();
  *(v89 + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_1_27(v89, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_17_14(v90, MEMORY[0x277D837D0], v91);
  v92 = sub_268B37B84();
  v93 = v170;
  v94 = *(v171 + 56);
  v95 = v171;
  v177 = v92;
  v178 = v94;
  v96 = v173;
  (*(v173 + 16))(v170, v188, v175);
  v97 = (*(v96 + 80) + 64) & ~*(v96 + 80);
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_58_5();
  v98 = swift_allocObject();
  v99 = v166;
  *(v98 + 2) = v165;
  *(v98 + 3) = v99;
  v100 = v185;
  v101 = v179;
  *(v98 + 4) = v185;
  *(v98 + 5) = v101;
  *(v98 + 6) = v95;
  *(v98 + 7) = v172;
  v102 = v93;
  v103 = v175;
  (*(v96 + 32))(&v98[v97], v102, v175);
  v104 = (v191 + v98);
  v105 = v181;
  *v104 = sub_2689FF334;
  v104[1] = v105;
  v106 = v101;

  v107 = v100;

  OUTLINED_FUNCTION_91_2();
  sub_268AB2B1C();

  sub_26891864C(v191);

  (*(v96 + 8))(v188, v103);

LABEL_17:

  v71 = v182;
  v73 = v180;
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_2689F9694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_26();
  v30 = v29;
  v155 = v31;
  v158 = v32;
  v149 = v33;
  v150 = v34;
  v162 = v35;
  v151 = v36;
  v163 = sub_268B35044();
  v37 = OUTLINED_FUNCTION_1(v163);
  v152 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_3();
  v148 = v41;
  OUTLINED_FUNCTION_98_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_78();
  v164 = v43;
  OUTLINED_FUNCTION_9();
  v44 = sub_268B37A54();
  v45 = OUTLINED_FUNCTION_1(v44);
  v156 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3();
  v146 = v49;
  OUTLINED_FUNCTION_8();
  v51 = MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_15_15(v51, v52, v53, v54, v55, v56, v57, v58, v144);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_18();
  v147 = v60;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  v153 = v62;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_19();
  v64 = swift_allocObject();
  *(v64 + 2) = v30;
  *(v64 + 3) = a21;
  *(v64 + 4) = a22;
  *(v64 + 5) = a23;
  *(v64 + 6) = a24;
  *(v64 + 7) = a25;
  *(v64 + 8) = a26;
  *(v64 + 9) = a27;
  v161 = v64;
  *(v64 + 10) = a28;
  v65 = qword_2802A4F30;

  a22;

  v160 = a26;

  if (v65 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v66 = __swift_project_value_buffer(v44, qword_2802CDA10);
  v67 = *(v156 + 16);
  v68 = OUTLINED_FUNCTION_230_0();
  v67(v68);
  v69 = sub_268B37A34();
  v70 = sub_268B37ED4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_14();
    *v71 = 0;
    _os_log_impl(&dword_2688BB000, v69, v70, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v71, 2u);
    OUTLINED_FUNCTION_12();
  }

  v72 = *(v156 + 8);
  (v72)(v28, v44);
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v158))
  {
    v92 = OUTLINED_FUNCTION_230_0();
    v67(v92);
    v93 = sub_268B37A34();
    v94 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v94))
    {
      v95 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v95);
      OUTLINED_FUNCTION_2_13(&dword_2688BB000, v96, v158, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_12();
    }

    (v72)(v153, v44);
    sub_2688C2ECC();
    v97 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v97, v98, 16);
    OUTLINED_FUNCTION_102_2();
    OUTLINED_FUNCTION_103_2();
    v99 = v160;
    if (v44)
    {
      v100 = OUTLINED_FUNCTION_78_4();
      v101 = a23 == v44 && a24 == 0xE700000000000000;
      if (v101 || (OUTLINED_FUNCTION_68_4() & 1) != 0)
      {
        OUTLINED_FUNCTION_66_3();
      }

      else
      {
        OUTLINED_FUNCTION_50_4();
        v133 = v101 && a24 == v132;
        if (!v133 && (OUTLINED_FUNCTION_68_4() & 1) == 0)
        {
          v136 = OUTLINED_FUNCTION_28_5();
          v138 = OUTLINED_FUNCTION_46_6(v136, v137);
          v139(v138);

          sub_2688C058C(v165, &unk_2802A57C0, &qword_268B3BE00);
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_64_4();
      }
    }

    else
    {
      v128 = OUTLINED_FUNCTION_90_2();
      v129(v128);
      OUTLINED_FUNCTION_77_4();
    }

LABEL_36:
    sub_2688C058C(v166, &unk_2802A57C0, &qword_268B3BE00);
LABEL_39:

    goto LABEL_40;
  }

  v74 = v73;
  v159 = v158;
  sub_268A82B50(v162, v164);
  ObjectType = swift_getObjectType();
  v76 = (*(v74 + 16))(ObjectType, v74);
  if (!v76)
  {
    (v67)(v145, v66, v44);
    v102 = sub_268B37A34();
    v103 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v103))
    {
      v104 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v104);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v105, v106, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
      OUTLINED_FUNCTION_6();
    }

    (v72)(v145, v44);
    sub_26890C900(v155 + 16, v166);
    sub_26890C900(v166, v165);
    sub_268ABE424(v165);
    __swift_destroy_boxed_opaque_existential_0Tm(v166);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    v108 = OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
    OUTLINED_FUNCTION_5_12(v108, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
    sub_268B37B84();
    v154 = *(v155 + 56);
    OUTLINED_FUNCTION_120();
    v109(v148, v164, v163);
    OUTLINED_FUNCTION_73_3();
    v112 = v111 & ~v110;
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_83_2();
    v113 = swift_allocObject();
    *(v113 + 16) = v149;
    *(v113 + 24) = v150;
    *(v113 + 32) = v162;
    *(v113 + 40) = v159;
    *(v113 + 48) = v155;
    *(v113 + 56) = v151;
    OUTLINED_FUNCTION_60_2();
    v115(v114 + v112, v148, v163);
    v116 = (v72 + v113);
    v72 = v161;
    *v116 = sub_2689FF1FC;
    v116[1] = v161;
    v117 = v159;

    v118 = v162;

    OUTLINED_FUNCTION_101_0();
    sub_268AC0070();

    (*(v152 + 8))(v164, v163);

    goto LABEL_24;
  }

  if (v76 != 1)
  {
    (v67)(v146, v66, v44);
    v119 = sub_268B37A34();
    v120 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v120))
    {
      v121 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v121);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v122, v123, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_6();
    }

    (v72)(v146, v44);
    sub_2688C2ECC();
    v124 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v124, v125, 17);
    OUTLINED_FUNCTION_102_2();
    OUTLINED_FUNCTION_103_2();
    v99 = v160;
    if (v44)
    {
      v126 = OUTLINED_FUNCTION_78_4();
      v127 = a23 == v44 && a24 == 0xE700000000000000;
      if (v127 || (OUTLINED_FUNCTION_68_4() & 1) != 0)
      {
        OUTLINED_FUNCTION_66_3();
      }

      else
      {
        OUTLINED_FUNCTION_50_4();
        v135 = v101 && a24 == v134;
        if (!v135 && (OUTLINED_FUNCTION_68_4() & 1) == 0)
        {
          v140 = OUTLINED_FUNCTION_28_5();
          v142 = OUTLINED_FUNCTION_46_6(v140, v141);
          v143(v142);

          sub_2688C058C(v165, &unk_2802A57C0, &qword_268B3BE00);
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_64_4();
      }
    }

    else
    {
      v130 = OUTLINED_FUNCTION_90_2();
      v131(v130);

      OUTLINED_FUNCTION_77_4();
    }

LABEL_38:
    sub_2688C058C(v166, &unk_2802A57C0, &qword_268B3BE00);
    (*(v152 + 8))(v164, v163);
    goto LABEL_39;
  }

  v77 = OUTLINED_FUNCTION_230_0();
  v67(v77);
  v78 = sub_268B37A34();
  v79 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_115_0(v79))
  {
    v80 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v80);
    OUTLINED_FUNCTION_7(&dword_2688BB000, v81, v82, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
    OUTLINED_FUNCTION_12();
  }

  (v72)(v147, v44);
  v83.n128_f64[0] = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_45_6(v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_1_27(v84, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_17_14(v85, MEMORY[0x277D837D0], v86);
  sub_268B37B84();
  v157 = *(v155 + 56);
  (*(v152 + 16))(v148, v164, v163);
  v87 = (*(v152 + 80) + 64) & ~*(v152 + 80);
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_58_5();
  v88 = swift_allocObject();
  v72 = v150;
  *(v88 + 2) = v149;
  *(v88 + 3) = v150;
  *(v88 + 4) = v162;
  *(v88 + 5) = v159;
  *(v88 + 6) = v155;
  *(v88 + 7) = v151;
  (*(v152 + 32))(&v88[v87], v148, v163);
  v89 = (v166 + v88);
  *v89 = sub_2689FF1FC;
  v89[1] = v161;
  v90 = v159;

  v91 = v162;

  OUTLINED_FUNCTION_91_2();
  sub_268AB2B1C();

  sub_26891864C(v166);

  (*(v152 + 8))(v164, v163);

LABEL_24:

  OUTLINED_FUNCTION_77_4();
  v99 = v160;
LABEL_40:

  OUTLINED_FUNCTION_23();
}

void sub_2689FA258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_26();
  v30 = v29;
  v133 = v32;
  v134 = v31;
  v141 = v33;
  v130 = v34;
  v131 = v35;
  v146 = v36;
  v138 = sub_268B35044();
  v37 = OUTLINED_FUNCTION_1(v138);
  v135 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_3();
  v132 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_78();
  v147 = v43;
  OUTLINED_FUNCTION_9();
  v44 = sub_268B37A54();
  v45 = OUTLINED_FUNCTION_1(v44);
  v139 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3();
  v129 = v49;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_15();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_18();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18();
  v136 = v53;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_19();
  v55 = swift_allocObject();
  *(v55 + 2) = v30;
  *(v55 + 3) = a21;
  *(v55 + 4) = a22;
  *(v55 + 5) = a23;
  *(v55 + 6) = a24;
  *(v55 + 7) = a25;
  *(v55 + 8) = a26;
  *(v55 + 9) = a27;
  v144 = v55;
  *(v55 + 10) = a28;
  v56 = qword_2802A4F30;

  v145 = a24;
  v143 = a25;

  if (v56 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v44, qword_2802CDA10);
  v58 = *(v139 + 16);
  v57 = (v139 + 16);
  v59 = OUTLINED_FUNCTION_230_0();
  v60(v59);
  v61 = sub_268B37A34();
  v62 = sub_268B37ED4();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = OUTLINED_FUNCTION_14();
    *v63 = 0;
    _os_log_impl(&dword_2688BB000, v61, v62, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v63, 2u);
    OUTLINED_FUNCTION_12();
  }

  v64 = *(v139 + 8);
  v64(v28, v44);
  v65 = v141;
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v141))
  {
    OUTLINED_FUNCTION_38_3();
    v93();
    v94 = sub_268B37A34();
    v95 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v95))
    {
      v96 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v96);
      OUTLINED_FUNCTION_35_3(&dword_2688BB000, v97, v141, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_12();
    }

    v64(v136, v44);
    sub_2688C2ECC();
    v98 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v98, v99, 16);
    OUTLINED_FUNCTION_33_10();
    sub_2688C058C(v149, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_20;
  }

  v67 = v66;
  v142 = v141;
  sub_268A82B50(v146, v147);
  ObjectType = swift_getObjectType();
  v69 = (*(v67 + 16))(ObjectType, v67);
  if (v69)
  {
    if (v69 == 1)
    {
      OUTLINED_FUNCTION_38_3();
      v70();
      v71 = sub_268B37A34();
      v72 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v72))
      {
        v73 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v73);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v74, v75, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
        OUTLINED_FUNCTION_6();
      }

      v76 = OUTLINED_FUNCTION_115();
      (v64)(v76);
      *&v77 = OUTLINED_FUNCTION_9_14();
      v150 = v77;
      v151 = v77;
      v152[0] = v77;
      *(v152 + 11) = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_268B3BBC0;
      OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
      OUTLINED_FUNCTION_3_10();
      OUTLINED_FUNCTION_17_14(v79, MEMORY[0x277D837D0], v80);
      sub_268B37B84();
      v140 = *(v133 + 56);
      OUTLINED_FUNCTION_120();
      v81(v132, v147, v138);
      OUTLINED_FUNCTION_73_3();
      v84 = v83 & ~v82;
      OUTLINED_FUNCTION_42_5();
      OUTLINED_FUNCTION_58_5();
      v85 = swift_allocObject();
      *(v85 + 16) = v130;
      *(v85 + 24) = v131;
      *(v85 + 32) = v146;
      *(v85 + 40) = v142;
      *(v85 + 48) = v133;
      *(v85 + 56) = v134;
      OUTLINED_FUNCTION_60_2();
      v87(v86 + v84, v132, v138);
      v88 = (v64 + v85);
      *v88 = sub_2689FED2C;
      v88[1] = v144;
      v89 = v142;

      v90 = v146;

      OUTLINED_FUNCTION_91_2();
      sub_268AB2B1C();

      sub_26891864C(v149);

      v91 = OUTLINED_FUNCTION_99_2();
      v92(v91, v138);

      v65 = v145;
      v57 = v143;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_38_3();
    v120();
    v121 = sub_268B37A34();
    v122 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v122))
    {
      v123 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v123);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v124, v125, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_6();
    }

    v64(v129, v44);
    sub_2688C2ECC();
    v126 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v126, v127, 17);
    OUTLINED_FUNCTION_33_10();

    sub_2688C058C(v149, &unk_2802A57C0, &qword_268B3BE00);
    (*(v135 + 8))(v147, v138);
LABEL_20:

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_38_3();
  v100();
  v101 = sub_268B37A34();
  v102 = sub_268B37F04();
  if (OUTLINED_FUNCTION_115_0(v102))
  {
    v103 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v103);
    OUTLINED_FUNCTION_7(&dword_2688BB000, v104, v105, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
    OUTLINED_FUNCTION_6();
  }

  v64(v128, v44);
  sub_26890C900(v133 + 16, v149);
  OUTLINED_FUNCTION_87_1();
  sub_268ABE424(v148);
  __swift_destroy_boxed_opaque_existential_0Tm(v149);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v106 = swift_initStackObject();
  *(v106 + 16) = xmmword_268B3BBC0;
  v107 = OUTLINED_FUNCTION_1_27(v106, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_5_12(v107, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
  sub_268B37B84();
  v137 = *(v133 + 56);
  OUTLINED_FUNCTION_120();
  v108(v132, v147, v138);
  OUTLINED_FUNCTION_73_3();
  v111 = v110 & ~v109;
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_83_2();
  v112 = swift_allocObject();
  v112[2] = v130;
  v112[3] = v131;
  v112[4] = v146;
  v112[5] = v142;
  v112[6] = v133;
  v112[7] = v134;
  OUTLINED_FUNCTION_60_2();
  v114(v113 + v111, v132, v138);
  v115 = (v112 + v139 + 8);
  *v115 = sub_2689FED2C;
  v115[1] = v144;
  v116 = v142;

  v117 = v146;

  OUTLINED_FUNCTION_101_0();
  sub_268AC0070();

  v118 = OUTLINED_FUNCTION_99_2();
  v119(v118, v138);

  v65 = v145;
  v57 = v143;
LABEL_21:

  OUTLINED_FUNCTION_23();
}

void sub_2689FAC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31)
{
  OUTLINED_FUNCTION_26();
  v33 = v32;
  v143 = v34;
  v145 = v35;
  v137 = v36;
  v138 = v37;
  v150 = v38;
  v139 = v39;
  v151 = sub_268B35044();
  v40 = OUTLINED_FUNCTION_1(v151);
  v142 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_3();
  v135 = v45;
  v136 = v44;
  OUTLINED_FUNCTION_98_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_78();
  v152 = v47;
  OUTLINED_FUNCTION_9();
  v48 = sub_268B37A54();
  v49 = OUTLINED_FUNCTION_1(v48);
  v144 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3();
  v132 = v53;
  OUTLINED_FUNCTION_8();
  v55 = MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_15_15(v55, v56, v57, v58, v59, v60, v61, v62, v130);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_14_13();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_12_15();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_19();
  v66 = swift_allocObject();
  v66[2] = v33;
  v66[3] = a21;
  v66[4] = a22;
  v66[5] = a23;
  v66[6] = a24;
  v66[7] = a25;
  v66[8] = a26;
  v66[9] = a27;
  v147 = v66;
  v66[10] = a28;
  v67 = qword_2802A4F30;

  v149 = a24;

  v148 = a28;
  if (v67 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v68 = __swift_project_value_buffer(v48, qword_2802CDA10);
  v69 = *(v144 + 16);
  v70 = OUTLINED_FUNCTION_230_0();
  v69(v70);
  v71 = sub_268B37A34();
  v72 = sub_268B37ED4();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v73);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v71, v72, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called");
    OUTLINED_FUNCTION_12();
  }

  v75 = (v144 + 8);
  v74 = *(v144 + 8);
  v74(v31, v48);
  v76 = v145;
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v145))
  {
    v92 = OUTLINED_FUNCTION_92_2();
    v69(v92);
    v93 = sub_268B37A34();
    v94 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v94))
    {
      v95 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v95);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v96, v97, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_6();
    }

    v74(v133, v145);
    sub_2688C2ECC();
    v98 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v98, v99, 16);
    v100 = OUTLINED_FUNCTION_26_8();
    v101(v100);
    sub_2688C058C(v154, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_21;
  }

  v76 = a31;
  v146 = v145;
  sub_268A82B50(v150, v152);
  swift_getObjectType();
  OUTLINED_FUNCTION_120();
  v78 = v77();
  if (!v78)
  {
    (v69)(v131, v68, v48);
    v102 = sub_268B37A34();
    v103 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v103))
    {
      v104 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v104);
      OUTLINED_FUNCTION_2_13(&dword_2688BB000, v105, v103, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
      OUTLINED_FUNCTION_12();
    }

    v74(v131, v48);
    sub_26890C900(v143 + 16, v154);
    OUTLINED_FUNCTION_87_1();
    sub_268ABE424(v153);
    __swift_destroy_boxed_opaque_existential_0Tm(v154);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    v107 = OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
    OUTLINED_FUNCTION_5_12(v107, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
    sub_268B37B84();
    v141 = *(v143 + 56);
    OUTLINED_FUNCTION_120();
    v108(v136, v152, v151);
    OUTLINED_FUNCTION_73_3();
    v111 = v110 & ~v109;
    v112 = swift_allocObject();
    v112[2] = v137;
    v112[3] = v138;
    v112[4] = v150;
    v112[5] = v146;
    v112[6] = v143;
    v112[7] = v139;
    OUTLINED_FUNCTION_60_2();
    v114(v113 + v111, v136, v151);
    v115 = (v112 + ((v135 + v111 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v115 = a31;
    v115[1] = v147;
    v116 = v146;

    v117 = v150;

    sub_268AC0070();

    v118 = OUTLINED_FUNCTION_99_2();
    v119(v118, v151);

    goto LABEL_17;
  }

  if (v78 != 1)
  {
    v120 = OUTLINED_FUNCTION_92_2();
    v69(v120);
    v121 = sub_268B37A34();
    v122 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v122))
    {
      v123 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v123);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v124, v125, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_6();
    }

    v74(v132, a31);
    sub_2688C2ECC();
    v126 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v126, v127, 17);
    v128 = OUTLINED_FUNCTION_26_8();
    v129(v128);

    sub_2688C058C(v154, &unk_2802A57C0, &qword_268B3BE00);
    (*(v142 + 8))(v152, v151);
LABEL_21:

    goto LABEL_22;
  }

  v79 = OUTLINED_FUNCTION_230_0();
  v69(v79);
  v80 = sub_268B37A34();
  v81 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v81))
  {
    v82 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v82);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v80, v81, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
    OUTLINED_FUNCTION_12();
  }

  v74(v134, v48);
  v83.n128_f64[0] = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_93_3(v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_1_27(v84, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_17_14(v85, MEMORY[0x277D837D0], v86);
  sub_268B37B84();
  v140 = *(v143 + 56);
  (*(v142 + 16))(v136, v152, v151);
  v87 = (*(v142 + 80) + 64) & ~*(v142 + 80);
  OUTLINED_FUNCTION_41_2();
  v88 = swift_allocObject();
  *(v88 + 2) = v137;
  *(v88 + 3) = v138;
  *(v88 + 4) = v150;
  *(v88 + 5) = v146;
  *(v88 + 6) = v143;
  *(v88 + 7) = v139;
  (*(v142 + 32))(&v88[v87], v136, v151);
  v89 = &v88[v81];
  *v89 = a31;
  *(v89 + 1) = v147;
  v90 = v146;

  v91 = v150;

  sub_268AB2B1C();

  sub_26891864C(v154);

  (*(v142 + 8))(v152, v151);

LABEL_17:

  v76 = v148;
  v75 = v149;
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_2689FB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_26();
  v30 = v29;
  v142 = v32;
  v143 = v31;
  v136 = v33;
  v137 = v34;
  v146 = v35;
  v138 = v36;
  v147 = sub_268B35044();
  v37 = OUTLINED_FUNCTION_1(v147);
  v141 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_3();
  v134 = v42;
  v135 = v41;
  OUTLINED_FUNCTION_98_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_78();
  v148 = v44;
  OUTLINED_FUNCTION_9();
  v45 = sub_268B37A54();
  v46 = OUTLINED_FUNCTION_1(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3();
  v133 = v51;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_12_15();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_18();
  v55 = MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_15_15(v55, v56, v57, v58, v59, v60, v61, v62, v129);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_15();
  v64 = swift_allocObject();
  v64[2] = v30;
  v64[3] = a21;
  v64[4] = a22;
  v64[5] = a23;
  v64[6] = a24;
  v64[7] = a25;
  v144 = v64;
  v65 = qword_2802A4F30;

  v145 = a22;

  if (v65 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v66 = __swift_project_value_buffer(v45, qword_2802CDA10);
  v67 = *(v48 + 16);
  v68 = OUTLINED_FUNCTION_40_5();
  v67(v68);
  v69 = sub_268B37A34();
  v70 = sub_268B37ED4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v71);
    _os_log_impl(&dword_2688BB000, v69, v70, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v48, 2u);
    OUTLINED_FUNCTION_12();
  }

  v72 = (v48 + 8);
  v73 = *(v48 + 8);
  v73(v28, v45);
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v143))
  {
    (v67)(v130, v66, v45);
    v93 = sub_268B37A34();
    v94 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v94))
    {
      v95 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v95);
      OUTLINED_FUNCTION_35_3(&dword_2688BB000, v96, v69, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_12();
    }

    v97 = OUTLINED_FUNCTION_115();
    (v73)(v97);
    sub_2688C2ECC();
    v98 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v98, v99, 16);
    v100 = OUTLINED_FUNCTION_36_8();
    v101(v100);
    sub_2688C058C(v150, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_21;
  }

  v75 = v74;
  v76 = v143;
  sub_268A82B50(v146, v148);
  ObjectType = swift_getObjectType();
  v78 = (*(v75 + 16))(ObjectType, v75);
  if (!v78)
  {
    v102 = OUTLINED_FUNCTION_40_5();
    v67(v102);
    v103 = sub_268B37A34();
    v104 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v104))
    {
      v105 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v105);
      OUTLINED_FUNCTION_2_13(&dword_2688BB000, v106, v104, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
      OUTLINED_FUNCTION_12();
    }

    v73(v132, v45);
    sub_26890C900(v142 + 16, v150);
    OUTLINED_FUNCTION_87_1();
    sub_268ABE424(v149);
    __swift_destroy_boxed_opaque_existential_0Tm(v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    v108 = OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
    OUTLINED_FUNCTION_5_12(v108, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
    sub_268B37B84();
    v139 = *(v142 + 56);
    OUTLINED_FUNCTION_120();
    v109(v135, v148, v147);
    OUTLINED_FUNCTION_73_3();
    v112 = v111 & ~v110;
    OUTLINED_FUNCTION_83_2();
    v113 = swift_allocObject();
    v113[2] = v136;
    v113[3] = v137;
    v113[4] = v146;
    v113[5] = v76;
    v113[6] = v142;
    v113[7] = v138;
    OUTLINED_FUNCTION_60_2();
    v115(v114 + v112, v135, v147);
    v116 = (v113 + ((v134 + v112 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v116 = a28;
    v116[1] = v144;
    v117 = v76;

    v118 = v146;

    sub_268AC0070();

    (*(v141 + 8))(v148, v147);
    goto LABEL_17;
  }

  if (v78 != 1)
  {
    v119 = OUTLINED_FUNCTION_40_5();
    v67(v119);
    v120 = sub_268B37A34();
    v121 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v121))
    {
      v122 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v122);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v123, v124, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_6();
    }

    v73(v133, v45);
    sub_2688C2ECC();
    v125 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v125, v126, 17);
    v127 = OUTLINED_FUNCTION_36_8();
    v128(v127);

    sub_2688C058C(v150, &unk_2802A57C0, &qword_268B3BE00);
    (*(v141 + 8))(v148, v147);
LABEL_21:

    goto LABEL_22;
  }

  v79 = OUTLINED_FUNCTION_40_5();
  v67(v79);
  v80 = sub_268B37A34();
  v81 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v81))
  {
    v82 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v82);
    OUTLINED_FUNCTION_35_3(&dword_2688BB000, v83, v81, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
    OUTLINED_FUNCTION_12();
  }

  v73(v131, v45);
  v84.n128_f64[0] = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_93_3(v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v85 = swift_initStackObject();
  *(v85 + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_1_27(v85, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_17_14(v86, MEMORY[0x277D837D0], v87);
  sub_268B37B84();
  v140 = *(v142 + 56);
  (*(v141 + 16))(v135, v148, v147);
  v88 = (*(v141 + 80) + 64) & ~*(v141 + 80);
  OUTLINED_FUNCTION_41_2();
  v89 = swift_allocObject();
  *(v89 + 2) = v136;
  *(v89 + 3) = v137;
  *(v89 + 4) = v146;
  *(v89 + 5) = v76;
  *(v89 + 6) = v142;
  *(v89 + 7) = v138;
  (*(v141 + 32))(&v89[v88], v135, v147);
  v90 = &v89[v81];
  *v90 = a28;
  *(v90 + 1) = v144;
  v91 = v76;

  v92 = v146;

  sub_268AB2B1C();

  sub_26891864C(v150);

  (*(v141 + 8))(v148, v147);
LABEL_17:

  v72 = v145;
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_2689FC0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_26();
  v32 = v31;
  v131 = v33;
  v135 = v34;
  v126 = v35;
  v127 = v36;
  v139 = v37;
  v128 = v38;
  v140 = sub_268B35044();
  v39 = OUTLINED_FUNCTION_1(v140);
  v130 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77_3();
  v124 = v44;
  v125 = v43;
  OUTLINED_FUNCTION_98_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_78();
  v141 = v46;
  OUTLINED_FUNCTION_9();
  v47 = sub_268B37A54();
  v48 = OUTLINED_FUNCTION_1(v47);
  v132 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3();
  v121 = v52;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_18();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_14_13();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18();
  v123 = v56;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_15();
  v58 = swift_allocObject();
  v58[2] = v32;
  v58[3] = a21;
  v58[4] = a22;
  v58[5] = a23;
  v58[6] = a24;
  v58[7] = a25;
  v58[8] = a26;
  v58[9] = a27;
  v137 = v58;
  v59 = qword_2802A4F30;

  v138 = a24;

  if (v59 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v60 = __swift_project_value_buffer(v47, qword_2802CDA10);
  v61 = *(v132 + 16);
  v61(v30, v60, v47);
  v62 = sub_268B37A34();
  v63 = sub_268B37ED4();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v64);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v62, v63, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called");
    OUTLINED_FUNCTION_12();
  }

  v65 = *(v132 + 8);
  v65(v30, v47);
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v135))
  {
    v61(v123, v60, v47);
    v91 = sub_268B37A34();
    v92 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v92))
    {
      v93 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v93);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v94, v95, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_12();
    }

    v65(v123, v47);
    sub_2688C2ECC();
    v96 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v96, v97, 16);
    v98 = OUTLINED_FUNCTION_32_6();
    v99(v98);
    sub_2688C058C(v143, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_21;
  }

  v67 = v66;
  v133 = v65;
  v68 = v135;
  sub_268A82B50(v139, v141);
  ObjectType = swift_getObjectType();
  v70 = (*(v67 + 16))(ObjectType, v67);
  if (!v70)
  {
    (v61)(v120, v60);
    v100 = sub_268B37A34();
    v101 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v101))
    {
      v102 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v102);
      OUTLINED_FUNCTION_2_13(&dword_2688BB000, v103, v101, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
      OUTLINED_FUNCTION_12();
    }

    v65(v120, v47);
    sub_26890C900(v131 + 16, v143);
    OUTLINED_FUNCTION_87_1();
    sub_268ABE424(v142);
    __swift_destroy_boxed_opaque_existential_0Tm(v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    v105 = OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
    OUTLINED_FUNCTION_5_12(v105, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
    sub_268B37B84();
    v129 = *(v131 + 56);
    (*(v130 + 16))(v125, v141, v140);
    v106 = (*(v130 + 80) + 64) & ~*(v130 + 80);
    v107 = swift_allocObject();
    *(v107 + 2) = v126;
    *(v107 + 3) = v127;
    *(v107 + 4) = v139;
    *(v107 + 5) = v68;
    *(v107 + 6) = v131;
    *(v107 + 7) = v128;
    (*(v130 + 32))(&v107[v106], v125, v140);
    v108 = &v107[(v124 + v106 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v108 = a30;
    *(v108 + 1) = v137;
    v109 = v68;

    v110 = v139;

    sub_268AC0070();

    (*(v130 + 8))(v141, v140);

    goto LABEL_17;
  }

  if (v70 != 1)
  {
    v65 = v121;
    v61(v121, v60, v47);
    v111 = sub_268B37A34();
    v112 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v112))
    {
      v113 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v113);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v114, v115, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_12();
    }

    v133(v121, v47);
    sub_2688C2ECC();
    v116 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v116, v117, 17);
    v118 = OUTLINED_FUNCTION_32_6();
    v119(v118);

    sub_2688C058C(v143, &unk_2802A57C0, &qword_268B3BE00);
    (*(v130 + 8))(v141, v140);
LABEL_21:

    goto LABEL_22;
  }

  v136 = v68;
  v71 = v122;
  (v61)(v122, v60);
  v72 = sub_268B37A34();
  v73 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v73))
  {
    v74 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v74);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v72, v73, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
    v71 = v122;
    OUTLINED_FUNCTION_12();
  }

  v133(v71, v47);
  *&v75 = OUTLINED_FUNCTION_9_14();
  v144 = v75;
  v145 = v75;
  v146[0] = v75;
  *(v146 + 11) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_1_27(v76, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_17_14(v77, MEMORY[0x277D837D0], v78);
  sub_268B37B84();
  v134 = *(v131 + 56);
  OUTLINED_FUNCTION_120();
  v79(v125, v141, v140);
  OUTLINED_FUNCTION_73_3();
  v82 = v81 & ~v80;
  OUTLINED_FUNCTION_41_2();
  v83 = swift_allocObject();
  v83[2] = v126;
  v83[3] = v127;
  v83[4] = v139;
  v83[5] = v136;
  v83[6] = v131;
  v83[7] = v128;
  OUTLINED_FUNCTION_60_2();
  v85(v84 + v82, v125, v140);
  v86 = (v83 + v73);
  *v86 = a30;
  v86[1] = v137;
  v87 = v136;

  v88 = v139;

  OUTLINED_FUNCTION_101_0();
  sub_268AB2B1C();

  sub_26891864C(v143);

  v89 = OUTLINED_FUNCTION_99_2();
  v90(v89, v140);

LABEL_17:

  v65 = v138;
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_2689FCA88()
{
  OUTLINED_FUNCTION_26();
  v101 = v1;
  v102 = v2;
  v99 = v0;
  v100 = v3;
  v95 = v4;
  v96 = v5;
  v103 = v6;
  v97 = v7;
  v93 = *v0;
  v104 = sub_268B35044();
  v8 = OUTLINED_FUNCTION_1(v104);
  v98 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_3();
  v94 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_78();
  v105 = v14;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v89 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v91 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_15();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_18();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v27 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v28 = *(v18 + 16);
  v29 = v15;
  (v28)(v0, v27, v15);
  v30 = sub_268B37A34();
  v31 = sub_268B37ED4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_14();
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v32, 2u);
    OUTLINED_FUNCTION_12();
  }

  v33 = *(v18 + 8);
  v34 = v29;
  (v33)(v0, v29);
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v100))
  {
    v36 = v35;
    v37 = v100;
    sub_268A82B50(v103, v105);
    ObjectType = swift_getObjectType();
    v39 = (*(v36 + 16))(ObjectType, v36);
    if (v39)
    {
      if (v39 == 1)
      {
        OUTLINED_FUNCTION_85_2();
        v28();
        v40 = sub_268B37A34();
        v41 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_115_0(v41))
        {
          v42 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_279(v42);
          OUTLINED_FUNCTION_35_3(&dword_2688BB000, v43, v36, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
          OUTLINED_FUNCTION_12();
        }

        v44 = OUTLINED_FUNCTION_275();
        v33(v44);
        v45.n128_f64[0] = OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_45_6(v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_268B3BBC0;
        OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
        OUTLINED_FUNCTION_3_10();
        OUTLINED_FUNCTION_17_14(v47, MEMORY[0x277D837D0], v48);
        sub_268B37B84();
        v92 = v99[7];
        (*(v98 + 16))(v94, v105, v104);
        v49 = (*(v98 + 80) + 88) & ~*(v98 + 80);
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_58_5();
        v50 = swift_allocObject();
        v51 = OUTLINED_FUNCTION_82_0(v50);
        *(v52 + 4) = v53;
        *(v52 + 5) = v95;
        *(v52 + 6) = v96;
        *(v52 + 7) = v103;
        *(v52 + 8) = v37;
        *(v52 + 9) = v99;
        *(v52 + 10) = v97;
        (*(v98 + 32))(&v52[v49], v94, v104, v51);
        v54 = (v107 + v36);
        *v54 = v101;
        v54[1] = v102;
        v55 = v37;

        v56 = v103;

        OUTLINED_FUNCTION_91_2();
        sub_268AB2B1C();

        sub_26891864C(v107);

        (*(v98 + 8))(v105, v104);
      }

      else
      {
        OUTLINED_FUNCTION_85_2();
        v28();
        v82 = sub_268B37A34();
        v83 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_115_0(v83))
        {
          v84 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v84);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v85, v86, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
          OUTLINED_FUNCTION_6();
        }

        (v33)(v91, v29);
        sub_2688C2ECC();
        v87 = OUTLINED_FUNCTION_28_5();
        OUTLINED_FUNCTION_3_29(v87, v88, 17);
        v101(v107);

        sub_2688C058C(v107, &unk_2802A57C0, &qword_268B3BE00);
        (*(v98 + 8))(v105, v104);
      }
    }

    else
    {
      OUTLINED_FUNCTION_85_2();
      v28();
      v64 = sub_268B37A34();
      v65 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v65))
      {
        v66 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v66);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v67, v68, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
        OUTLINED_FUNCTION_6();
      }

      v69 = OUTLINED_FUNCTION_275();
      v33(v69);
      sub_26890C900((v99 + 2), v107);
      OUTLINED_FUNCTION_87_1();
      sub_268ABE424(v106);
      __swift_destroy_boxed_opaque_existential_0Tm(v107);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
      v70 = swift_initStackObject();
      *(v70 + 16) = xmmword_268B3BBC0;
      v71 = OUTLINED_FUNCTION_1_27(v70, "TTRErrorCodeInfo");
      OUTLINED_FUNCTION_5_12(v71, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
      sub_268B37B84();
      v90 = v99[7];
      OUTLINED_FUNCTION_120();
      v72(v94, v105, v104);
      v73 = (*(v98 + 80) + 88) & ~*(v98 + 80);
      OUTLINED_FUNCTION_44_6();
      OUTLINED_FUNCTION_83_2();
      v74 = swift_allocObject();
      OUTLINED_FUNCTION_82_0(v74);
      v75[4] = v76;
      v75[5] = v95;
      v75[6] = v96;
      v75[7] = v103;
      v75[8] = v37;
      v75[9] = v99;
      v75[10] = v97;
      OUTLINED_FUNCTION_60_2();
      v78(v77 + v73, v94, v104);
      v79 = (v36 + v34);
      *v79 = v101;
      v79[1] = v102;
      v80 = v37;

      v81 = v103;

      sub_268AC0070();

      (*(v98 + 8))(v105, v104);
    }
  }

  else
  {
    OUTLINED_FUNCTION_85_2();
    v28();
    v57 = sub_268B37A34();
    v58 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v58))
    {
      v59 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v59);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v60, v61, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_6();
    }

    (v33)(v89, v29);
    sub_2688C2ECC();
    v62 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_3_29(v62, v63, 16);
    v101(v107);
    sub_2688C058C(v107, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t *sub_2689FD340()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  return v0;
}

void sub_2689FD380()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_28_11(v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v122 = v15;
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v126 = v18;
  v127 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_75_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_78();
  v120 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_74();
  v118 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v117 = v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_78();
  v116 = v34;
  OUTLINED_FUNCTION_9();
  v35 = sub_268B34E24();
  v36 = OUTLINED_FUNCTION_1(v35);
  v124 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v44 = OUTLINED_FUNCTION_4(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v119 = v47;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x28223BE20](v49);
  v51 = &v115 - v50;
  v52 = OUTLINED_FUNCTION_275();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
  OUTLINED_FUNCTION_4(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_69_4(v58, v115);
  OUTLINED_FUNCTION_115();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = sub_2688C058C(v2, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      v59 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_11_20(v59, qword_2802CDA10);
    v60(v0);
    v61 = sub_268B37A34();
    v62 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v62))
    {
      v63 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v63);
      OUTLINED_FUNCTION_23_4(&dword_2688BB000, v64, v65, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput unable to execute dialog");
      OUTLINED_FUNCTION_6();
    }

    v66 = OUTLINED_FUNCTION_74_3();
    v67(v66);
    sub_2688C2ECC();
    v68 = OUTLINED_FUNCTION_28_5();
    v70 = OUTLINED_FUNCTION_16_19(v68, v69);
    v71(v70);
    sub_2688C058C(&v128, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    OUTLINED_FUNCTION_79_3();
    v72 = OUTLINED_FUNCTION_59_2();
    v73 = v0(v72);
    OUTLINED_FUNCTION_95_2(v73);
    v74 = *MEMORY[0x277D5BBE0];
    v75 = OUTLINED_FUNCTION_52_6();
    v76(v75);
    sub_2688F1FA4(v51, v1, &unk_2802A56E0, &unk_268B3CDF0);
    v123 = v43;

    v77 = sub_268B350F4();
    v78 = *(v77 - 8);
    v79 = v116;
    (*(v78 + 32))(v116, v1, v77);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v77);
    v83 = sub_268B34B94();
    OUTLINED_FUNCTION_104_2(v83);
    v84 = v117;
    sub_2688F1FA4(v79, v117, &unk_2802A57B0, &unk_268B3CE00);
    v85 = v51;
    if (__swift_getEnumTagSinglePayload(v84, 1, v77) == 1)
    {
      sub_2688C058C(v84, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v78 + 8))(v84, v77);
    }

    v117 = v78;
    v86 = OUTLINED_FUNCTION_27_8();
    v87(v86);

    sub_2688C058C(v42, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v79, &unk_2802A57B0, &unk_268B3CE00);
    v88 = OUTLINED_FUNCTION_84_2();
    v90 = v89(v88);
    if (qword_2802A4F30 != -1)
    {
      v90 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_11_20(v90, qword_2802CDA10);
    v91 = v120;
    v92(v120);
    v93 = sub_268B37A34();
    v94 = sub_268B37ED4();
    v95 = OUTLINED_FUNCTION_19(v94);
    v96 = v125;
    v97 = v123;
    if (v95)
    {
      v98 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v98);
      OUTLINED_FUNCTION_23_4(&dword_2688BB000, v99, v100, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput returning output");
      OUTLINED_FUNCTION_6();
    }

    (*(v78 + 8))(v91, v79);
    v101 = v96[22];
    v102 = __swift_project_boxed_opaque_existential_1(v96 + 18, v96[21]);
    OUTLINED_FUNCTION_88_2(v102, v103, &unk_2802A56E0);
    v104 = *&v85[*(v97 + 48)];
    v105 = sub_268B35044();
    OUTLINED_FUNCTION_4(v105);
    v107 = v122;
    (*(v106 + 16))(v122, v121, v105);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v105);
    v111 = OUTLINED_FUNCTION_51_3();
    v112(v111);

    sub_2688C058C(v107, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v93, &unk_2802A56E0, &unk_268B3CDF0);
    v113 = OUTLINED_FUNCTION_94_2();
    v114(v113);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689FDA7C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_28_11(v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v122 = v15;
  OUTLINED_FUNCTION_9();
  v16 = sub_268B37A54();
  v17 = OUTLINED_FUNCTION_1(v16);
  v126 = v18;
  v127 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_75_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_78();
  v120 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_74();
  v118 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v117 = v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_78();
  v116 = v34;
  OUTLINED_FUNCTION_9();
  v35 = sub_268B34E24();
  v36 = OUTLINED_FUNCTION_1(v35);
  v124 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v44 = OUTLINED_FUNCTION_4(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v119 = v47;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x28223BE20](v49);
  v51 = &v115 - v50;
  v52 = OUTLINED_FUNCTION_275();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
  OUTLINED_FUNCTION_4(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_69_4(v58, v115);
  OUTLINED_FUNCTION_115();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = sub_2688C058C(v2, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      v59 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_11_20(v59, qword_2802CDA10);
    v60(v0);
    v61 = sub_268B37A34();
    v62 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v62))
    {
      v63 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v63);
      OUTLINED_FUNCTION_23_4(&dword_2688BB000, v64, v65, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput unable to execute dialog");
      OUTLINED_FUNCTION_6();
    }

    v66 = OUTLINED_FUNCTION_74_3();
    v67(v66);
    sub_2688C2ECC();
    v68 = OUTLINED_FUNCTION_28_5();
    v70 = OUTLINED_FUNCTION_16_19(v68, v69);
    v71(v70);
    sub_2688C058C(&v128, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    OUTLINED_FUNCTION_79_3();
    v72 = OUTLINED_FUNCTION_59_2();
    v73 = v0(v72);
    OUTLINED_FUNCTION_95_2(v73);
    v74 = *MEMORY[0x277D5BBE0];
    v75 = OUTLINED_FUNCTION_52_6();
    v76(v75);
    sub_2688F1FA4(v51, v1, &unk_2802A56E0, &unk_268B3CDF0);
    v123 = v43;

    v77 = sub_268B350F4();
    v78 = *(v77 - 8);
    v79 = v116;
    (*(v78 + 32))(v116, v1, v77);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v77);
    v83 = sub_268B34B94();
    OUTLINED_FUNCTION_104_2(v83);
    v84 = v117;
    sub_2688F1FA4(v79, v117, &unk_2802A57B0, &unk_268B3CE00);
    v85 = v51;
    if (__swift_getEnumTagSinglePayload(v84, 1, v77) == 1)
    {
      sub_2688C058C(v84, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v78 + 8))(v84, v77);
    }

    v117 = v78;
    v86 = OUTLINED_FUNCTION_27_8();
    v87(v86);

    sub_2688C058C(v42, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v79, &unk_2802A57B0, &unk_268B3CE00);
    v88 = OUTLINED_FUNCTION_84_2();
    v90 = v89(v88);
    if (qword_2802A4F30 != -1)
    {
      v90 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_11_20(v90, qword_2802CDA10);
    v91 = v120;
    v92(v120);
    v93 = sub_268B37A34();
    v94 = sub_268B37ED4();
    v95 = OUTLINED_FUNCTION_19(v94);
    v96 = v125;
    v97 = v123;
    if (v95)
    {
      v98 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v98);
      OUTLINED_FUNCTION_23_4(&dword_2688BB000, v99, v100, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput returning output");
      OUTLINED_FUNCTION_6();
    }

    (*(v79 + 8))(v91, v78);
    v101 = v96[22];
    v102 = __swift_project_boxed_opaque_existential_1(v96 + 18, v96[21]);
    OUTLINED_FUNCTION_88_2(v102, v103, &unk_2802A56E0);
    v104 = *&v85[*(v97 + 48)];
    v105 = sub_268B35044();
    OUTLINED_FUNCTION_4(v105);
    v107 = v122;
    (*(v106 + 16))(v122, v121, v105);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v105);
    v111 = OUTLINED_FUNCTION_51_3();
    v112(v111);

    sub_2688C058C(v107, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v93, &unk_2802A56E0, &unk_268B3CDF0);
    v113 = OUTLINED_FUNCTION_94_2();
    v114(v113);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689FE170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  OUTLINED_FUNCTION_26();
  v136 = v24;
  v132 = v25;
  v133 = v26;
  v28 = v27;
  v130 = v29;
  v128 = v30;
  v127 = v31;
  v137 = v32;
  v141 = a21;
  v142 = a22;
  v125 = *v27;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v135 = v37;
  OUTLINED_FUNCTION_9();
  v38 = sub_268B37A54();
  v39 = OUTLINED_FUNCTION_1(v38);
  v139 = v40;
  v140 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_75_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_78();
  v134 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_74();
  v131 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  OUTLINED_FUNCTION_22(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v53);
  v55 = &v122 - v54;
  v138 = sub_268B34E24();
  v56 = OUTLINED_FUNCTION_1(v138);
  v129 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  v126 = v61 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v63 = OUTLINED_FUNCTION_4(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_20_0();
  v68 = v66 - v67;
  MEMORY[0x28223BE20](v69);
  v71 = &v122 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v75);
  v77 = &v122 - v76;
  sub_2688F1FA4(v137, &v122 - v76, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v78 = sub_2688C058C(v77, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      v78 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_11_20(v78, qword_2802CDA10);
    v79(v23);
    v80 = sub_268B37A34();
    v81 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v81))
    {
      v82 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v82);
      OUTLINED_FUNCTION_23_4(&dword_2688BB000, v83, v84, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput unable to execute dialog");
      OUTLINED_FUNCTION_6();
    }

    v85 = OUTLINED_FUNCTION_74_3();
    v86(v85);
    sub_2688C2ECC();
    v87 = OUTLINED_FUNCTION_28_5();
    v89 = OUTLINED_FUNCTION_16_19(v87, v88);
    v90(v89);
    sub_2688C058C(&v143, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v77, v71);
    v123 = *(v125 + 80);
    v91 = *(v125 + 96);
    v92 = v132;
    v124 = sub_26894CE44(7, 3, v127, v128, v132, a23, v130, v123, v91);
    v94 = v93;
    v95 = v28[16];
    v137 = v28;
    v122 = __swift_project_boxed_opaque_existential_1(v28 + 13, v95);
    v96 = v129;
    v97 = v126;
    (*(v129 + 104))(v126, *MEMORY[0x277D5BBE0], v138);
    v130 = v71;
    sub_2688F1FA4(v71, v68, &unk_2802A56E0, &unk_268B3CDF0);
    v128 = v62;

    v98 = sub_268B350F4();
    v125 = *(v98 - 8);
    (*(v125 + 32))(v55, v68, v98);
    OUTLINED_FUNCTION_84();
    v127 = v98;
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v98);
    v102 = sub_268B34B94();
    v103 = v131;
    __swift_storeEnumTagSinglePayload(v131, 1, 1, v102);
    sub_26894D438(v133, v97, v92, v55, v124, v94, v103, *v122, v123, v91);

    sub_2688C058C(v103, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v55, &unk_2802A57B0, &unk_268B3CE00);
    (*(v96 + 8))(v97, v138);
    v104 = v68;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v105 = v140;
    v106 = __swift_project_value_buffer(v140, qword_2802CDA10);
    v107 = v139;
    v108 = v134;
    (*(v139 + 16))(v134, v106, v105);
    v109 = sub_268B37A34();
    v110 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_19(v110))
    {
      v111 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v111);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v109, v108, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput returning output");
      OUTLINED_FUNCTION_12();
    }

    (*(v107 + 8))(v108, v105);
    v112 = v137[21];
    v113 = v137[22];
    __swift_project_boxed_opaque_existential_1(v137 + 18, v112);
    v114 = v130;
    sub_2688F1FA4(v130, v68, &unk_2802A56E0, &unk_268B3CDF0);
    v115 = *(v68 + *(v128 + 48));
    v116 = sub_268B35044();
    OUTLINED_FUNCTION_4(v116);
    v118 = v135;
    (*(v117 + 16))(v135, v136, v116);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v116);
    (*(v113 + 40))(v104, v115, v118, v141, v142, v112, v113);

    sub_2688C058C(v118, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v114, &unk_2802A56E0, &unk_268B3CDF0);
    (*(v125 + 8))(v104, v127);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689FE93C()
{
  sub_2689FD340();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_2689FEA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t (*a11)(uint64_t))
{
  v11 = a9[10];
  v12 = a9[11];
  v13 = a9[12];
  type metadata accessor for CommonMediaUnsupportedValueStrategy();
  v14 = OUTLINED_FUNCTION_115();

  return a11(v14);
}

uint64_t sub_2689FECD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2689FEE38()
{
  OUTLINED_FUNCTION_65_4();
  v1 = *(v0 + 64);
  v5 = *(v0 + 72);
  return v3(v2);
}

uint64_t objectdestroy_44Tm()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 88) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 48);

  v9 = *(v0 + 72);

  v10 = *(v0 + 80);

  (*(v3 + 8))(v0 + v5, v1);
  v11 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2689FF1A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2689FF214()
{
  OUTLINED_FUNCTION_65_4();
  v1 = *(v0 + 72);
  v6 = *(v0 + 80);
  return v4(v2, v3);
}

uint64_t sub_2689FF2CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 24);

  v9 = *(v0 + 48);

  v10 = *(v0 + 56);

  (*(v3 + 8))(v0 + v5, v1);
  v11 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_2689FF5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *(sub_268B35044() - 8);
  v8 = (*(v7 + 64) + ((*(v7 + 80) + 64) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_65_4();
  v10 = (v4 + v9);
  v12 = *v10;
  v13 = v10[1];
  return a4(a1);
}

uint64_t OUTLINED_FUNCTION_3_29@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *(v3 - 176) = result;
  *(v3 - 136) = 1;
  return result;
}

void *OUTLINED_FUNCTION_5_12@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result[9] = a2;
  result[6] = v3 | 5;
  result[7] = a3 | 0x8000000000000000;
  return result;
}

double OUTLINED_FUNCTION_9_14()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 1;
  return 0.0;
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(*(v2 - 160), a2);
  v4 = *(*(v2 - 168) + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1, _BYTE *a2)
{
  *a2 = -94;
  *(v2 - 136) = a1;
  *(v2 - 96) = 1;
  result = v2 - 136;
  v4 = *(v2 - 152);
  v5 = *(v2 - 144);
  return result;
}

void *OUTLINED_FUNCTION_17_14@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result[9] = a2;
  result[6] = v3 | 6;
  result[7] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_8()
{
  v2 = v0[18];
  v3 = v0[21];
  result = v1 - 176;
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[12];
  v12 = v0[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_27_8()
{
  result = *(v0 - 240);
  v2 = *(v0 - 272);
  v3 = *(v0 - 184);
  v4 = *(v0 - 280);
  v5 = *(v0 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_11(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 216) = a8;
  *(v8 - 240) = a7;
  *(v8 - 176) = a6;
  *(v8 - 264) = a5;
  *(v8 - 184) = a4;
  *(v8 - 272) = a3;
  *(v8 - 280) = a2;
  *(v8 - 200) = result;
  v9 = *(v8 + 24);
  *(v8 - 152) = *(v8 + 16);
  *(v8 - 144) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = v11[23];
  v24 = v11[28];
  v23 = v11[6];
  v16 = v11[7];
  v15 = v11[8];
  v17 = v11[22];
  v19 = v11[25];
  v18 = v11[26];
  v20 = v11[21];
  v21 = v11[19];

  return sub_268981A40(v12 - 176, v15, v17, v16, v18, v20, v21, v19, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_32_6()
{
  v2 = v0[21];
  result = v1 - 176;
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[13];
  v11 = v0[10];
  return result;
}

uint64_t OUTLINED_FUNCTION_33_10()
{
  v12 = v0[24];
  v11 = v0[7];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[22];
  v7 = v0[25];
  v8 = v0[21];
  v9 = v0[19];

  return sub_268A50E58(v2 - 176, v4, v6, v5, v7, v8, v9, v1);
}

uint64_t OUTLINED_FUNCTION_36_8()
{
  result = v1 - 176;
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[9];
  return result;
}

void OUTLINED_FUNCTION_45_6(__n128 a1)
{
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
  *(v1 + 67) = a1;
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1, _BYTE *a2)
{
  *a2 = 105;
  *(v3 - 224) = a1;
  *(v3 - 184) = 1;
  result = v3 - 224;
  v5 = *(v2 + 152);
  v6 = *(v2 + 80);
  return result;
}

BOOL OUTLINED_FUNCTION_47_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_51_3()
{
  v3 = *(v0 + 40);
  result = v1;
  v5 = *(v2 - 152);
  v6 = *(v2 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_6()
{
  v3 = *(*(v2 - 192) + 104);
  *(v2 - 272) = v0;
  result = v0;
  *(v2 - 264) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_2()
{
  result = 7;
  v2 = *(v0 - 280);
  v3 = *(v0 - 272);
  v4 = *(v0 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_64_4()
{
  v4 = v0[2];
  v5 = v0[20];
  v6 = v0[10];
  v7 = v0[19];
  v8 = v0[21];

  return sub_26898A7BC(v1, v2, v4, v5, v6, v7);
}

void OUTLINED_FUNCTION_65_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_66_3()
{
  v3 = v0[2];
  v4 = v0[20];
  v5 = v0[10];
  v6 = v0[19];
  v7 = v0[21];

  return sub_26898A618(v1, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_68_4()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_69_4@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = *(v4 - 200);

  return sub_2688F1FA4(v6, &a2 - a1, v3, v2);
}

void OUTLINED_FUNCTION_77_4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
}

void *OUTLINED_FUNCTION_78_4()
{
  v2 = *(v0 + 144);

  return sub_2689B8400();
}

uint64_t OUTLINED_FUNCTION_79_3()
{
  *(v2 - 296) = *(v2 + 40);
  v4 = *(v2 + 32);

  return sub_2689186C8(v1, v0);
}

__n128 OUTLINED_FUNCTION_82_0(__n128 *a1)
{
  v2 = *(v1 + 48);
  result = v2[5];
  a1[1] = result;
  v4 = v2[6].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_84_2()
{
  v2 = *(*(v1 - 192) + 8);
  result = v0;
  v4 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return sub_26890C900(v0 - 176, v0 - 216);
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(v5 - 232);

  return sub_2688F1FA4(v4, v7, a3, v3);
}

uint64_t OUTLINED_FUNCTION_90_2()
{
  result = v1 - 176;
  v3 = *(v0 + 152);
  v4 = *(v0 + 80);
  return result;
}

void OUTLINED_FUNCTION_93_3(__n128 a1)
{
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
  *(v1 + 67) = a1;
}

__n128 OUTLINED_FUNCTION_100_1()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return sub_2688F1FA4(v2 - 176, v2 - 224, v0, v1);
}

uint64_t OUTLINED_FUNCTION_103_2()
{
  v4 = *(v2 - 184);

  return sub_2688C058C(v2 - 224, v0, v1);
}

uint64_t OUTLINED_FUNCTION_104_2(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(*(v2 - 248), 1, 1, a1);
  v4 = *v1;
  return result;
}

uint64_t sub_2689FFE30(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v6 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v53 = (&v51 - v7);
  v8 = sub_268B37A54();
  v9 = *(v8 - 1);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v51 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  inited = &v51 - v15;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v17 = __swift_project_value_buffer(v8, qword_2802CDA10);
    v18 = v9[2];
    v18(inited, v17, v8);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "SetAudioLanguageConfirmIntentStrategy.makeDialogForDisambiguation()", v21, 2u);
      OUTLINED_FUNCTION_12();
    }

    v22 = v9[1];
    v22(inited, v8);
    v23 = [a2 device];
    if (!v23)
    {
      break;
    }

    a2 = v23;
    v18(v56, v17, v8);
    v24 = a2;
    v25 = sub_268B37A34();
    v26 = sub_268B37EC4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = a2;
      v29 = v24;
      _os_log_impl(&dword_2688BB000, v25, v26, "Confirming device: %@", v27, 0xCu);
      sub_2688EF38C(v28, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v22(v56, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBA0;
    *(inited + 32) = v24;
    v9 = (inited & 0xFFFFFFFFFFFFFF8);
    v8 = v24;
    v30 = MEMORY[0x277D84F90];
    if ((inited & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x26D625BD0](0, inited);
LABEL_10:
      v32 = v31;
      v33 = sub_268988580(v31);
      if (v34)
      {
        v35 = v33;
        v36 = v34;

        goto LABEL_13;
      }

      v35 = sub_268988568(v32);
      v36 = v37;

      if (v36)
      {
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = *(v30 + 16);
          sub_2689876A4();
          v30 = v41;
        }

        v38 = *(v30 + 16);
        if (v38 >= *(v30 + 24) >> 1)
        {
          sub_2689876A4();
          v30 = v42;
        }

        *(v30 + 16) = v38 + 1;
        v39 = v30 + 16 * v38;
        *(v39 + 32) = v35;
        *(v39 + 40) = v36;
      }

      swift_setDeallocating();
      sub_268ACE718();
      sub_268A36DE8(v30, v54, v55);
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(inited + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v44 = v51;
  v18(v51, v17, v8);
  v45 = sub_268B37A34();
  v46 = sub_268B37EE4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2688BB000, v45, v46, "Could not find any devices in the intent for confirmation", v47, 2u);
    OUTLINED_FUNCTION_12();
  }

  v22(v44, v8);
  sub_2688C2ECC();
  v48 = swift_allocError();
  *v49 = 60;
  v50 = v53;
  *v53 = v48;
  swift_storeEnumTagMultiPayload();
  v54(v50);
  return sub_2688EF38C(v50, &qword_2802A6300, &unk_268B3BD80);
}

uint64_t *sub_268A003C4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  sub_26895F84C((v0 + 18));
  return v0;
}

uint64_t sub_268A00404()
{
  sub_268A003C4();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

void sub_268A00488()
{
  type metadata accessor for SetAudioLanguageConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268A00504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A005C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SetAudioLanguageConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268A0067C(uint64_t a1)
{
  result = sub_268A006A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A006A4()
{
  result = qword_2802A6F78;
  if (!qword_2802A6F78)
  {
    type metadata accessor for SetAudioLanguageConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6F78);
  }

  return result;
}

uint64_t sub_268A006FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v68 = a7;
  v70 = a4;
  v71 = a8;
  v63 = a6;
  v64 = a2;
  v66 = a3;
  v67 = a5;
  v65 = a1;
  v8 = sub_268B367A4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v61 = v10;
  v62 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v72 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v25 = *(v17 + 16);
  v25(v23, v24, v14);
  v26 = sub_268B37A34();
  v27 = sub_268B37ED4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "GetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v28, 2u);
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  v29 = *(v17 + 8);
  v29(v23, v14);
  sub_268B36754();
  v30 = sub_268B36734();
  if (!v30)
  {
    v30 = sub_268B36744();
  }

  v31 = v30;
  v32 = v72;
  v25(v72, v24, v14);

  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v59 = v29;
    v36 = v35;
    v37 = swift_slowAlloc();
    v73 = v37;
    *v36 = 136315138;
    sub_268B36714();
    v38 = v60;
    sub_268B36B14();

    v39 = sub_268B36784();
    v41 = v40;
    (*(v61 + 8))(v38, v62);
    v42 = sub_26892CDB8(v39, v41, &v73);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2688BB000, v33, v34, "GetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x26D6266E0](v37, -1, -1);
    MEMORY[0x26D6266E0](v36, -1, -1);

    v59(v72, v14);
  }

  else
  {

    v29(v32, v14);
  }

  v43 = swift_allocObject();
  v45 = v65;
  v44 = v66;
  v43[2] = v31;
  v43[3] = v44;
  v47 = v69;
  v46 = v70;
  v48 = v63;
  v49 = v64;
  v43[4] = v70;
  v43[5] = v49;
  v43[6] = v48;
  v43[7] = v47;
  v50 = v68;
  v43[8] = v45;
  v43[9] = v50;
  v51 = v71;
  v43[10] = v71;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v52 = v48;
  swift_retain_n();
  v53 = v52;

  v54 = v53;

  v55 = v49;

  sub_2689FB5E4(v56, v55, v44, v46, v67, v54, v47, v50, v51, v44, v46, v54, v47, sub_268A01A6C, v43);
}

uint64_t sub_268A00C8C(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v102 = a8;
  v89 = a7;
  v97 = a6;
  v87 = a5;
  v98 = a4;
  v86 = a3;
  v84 = a2;
  v93 = a1;
  v101 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v80 - v11;
  v12 = sub_268B37A54();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = &v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v88 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v85 = &v80 - v24;
  v25 = sub_268B34E24();
  v94 = *(v25 - 8);
  v26 = *(v94 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v90 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v80 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v80 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v80 - v40;
  sub_268935590(v93, &v80 - v40, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v41, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v42 = v100;
    v43 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v44 = v99;
    (*(v99 + 16))(v96, v43, v42);
    v45 = sub_268B37A34();
    v46 = sub_268B37EE4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2688BB000, v45, v46, "GetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v47, 2u);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    (*(v44 + 8))(v96, v42);
    sub_2688C2ECC();
    v48 = swift_allocError();
    *v49 = -69;
    v103[0] = v48;
    v104 = 1;
    v102(v103);
    return sub_2688EF38C(v103, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v41, v37);
    v82 = sub_2688E1B9C(13, 3, v84, v86, v98, 0x6E776F6E6B6E75, 0xE700000000000000, v87);
    v83 = v51;
    v52 = __swift_project_boxed_opaque_existential_1(v97 + 13, v97[16]);
    v53 = *MEMORY[0x277D5BBE0];
    v54 = *(v94 + 104);
    v86 = v28;
    v87 = v25;
    v54(v28, v53, v25);
    sub_268935590(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);
    v96 = v29;

    v55 = sub_268B350F4();
    v56 = *(v55 - 8);
    v57 = v85;
    (*(v56 + 32))(v85, v35, v55);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
    v58 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v58);
    v59 = *v52;
    v60 = v88;
    sub_268935590(v57, v88, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v55);
    v84 = v37;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v60, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v56 + 8))(v60, v55);
    }

    v81 = v56;
    v93 = v55;
    v62 = v86;
    v63 = v95;
    sub_2688E3F08();

    sub_2688EF38C(v63, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v57, &unk_2802A57B0, &unk_268B3CE00);
    (*(v94 + 8))(v62, v87);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v64 = v100;
    v65 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v66 = v99;
    v67 = v91;
    (*(v99 + 16))(v91, v65, v64);
    v68 = sub_268B37A34();
    v69 = sub_268B37ED4();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v97;
    if (v70)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2688BB000, v68, v69, "GetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v72, 2u);
      MEMORY[0x26D6266E0](v72, -1, -1);
    }

    (*(v66 + 8))(v67, v64);
    v73 = v71[21];
    v74 = v71[22];
    __swift_project_boxed_opaque_existential_1(v71 + 18, v73);
    v75 = v84;
    v76 = v90;
    sub_268935590(v84, v90, &unk_2802A56E0, &unk_268B3CDF0);
    v77 = *(v76 + *(v96 + 12));
    v78 = v92;
    sub_268A82B50(v98, v92);
    v79 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v79);
    (*(v74 + 40))(v76, v77, v78, v102, v101, v73, v74);

    sub_2688EF38C(v78, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v75, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v81 + 8))(v76, v93);
  }
}

uint64_t sub_268A01650(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  sub_268935590(a1, v34, &unk_2802A57C0, &qword_268B3BE00);
  v15 = v35;
  sub_2688EF38C(v34, &unk_2802A57C0, &qword_268B3BE00);
  if (v15 != 1)
  {
    return a2(a1);
  }

  v16 = a4 == 0x656369766564 && a5 == 0xE600000000000000;
  if (!v16 && (sub_268B38444() & 1) == 0)
  {
    sub_2688C2ECC();
    v19 = swift_allocError();
    v21 = 27;
    goto LABEL_13;
  }

  v17 = GetVolumeLevelDeviceUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
  if (v18)
  {
LABEL_8:
    sub_2688C2ECC();
    v19 = swift_allocError();
    v21 = 26;
LABEL_13:
    *v20 = v21;
    v34[0] = v19;
    v35 = 1;
    a2(v34);
    return sub_2688EF38C(v34, &unk_2802A57C0, &qword_268B3BE00);
  }

  v23 = v17;
  a2 = a9;
  switch(v17)
  {
    case 1:
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_268B3BBC0;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x8000000268B572E0;
      *(inited + 72) = MEMORY[0x277D83B88];
      *(inited + 48) = v23;
      v25 = sub_268B37B84();
      v26 = a7[26];
      v27 = a7[27];
      __swift_project_boxed_opaque_existential_1(a7 + 23, v26);
      sub_2689CE860(0xD000000000000022, 0x8000000268B5A3F0, v25, a8, a9, v26, v27);

    case 2:
      v28 = a7[26];
      v29 = a7[27];
      __swift_project_boxed_opaque_existential_1(a7 + 23, v28);
      v32 = "VolumeControls#VolumeLevelUnsupportedOnAppleTV";
      goto LABEL_17;
    case 3:
      v28 = a7[26];
      v29 = a7[27];
      __swift_project_boxed_opaque_existential_1(a7 + 23, v28);
      v32 = "VolumeControls#VolumeLevelUnsupportedOnCarPlay";
LABEL_17:
      v31 = (v32 - 32) | 0x8000000000000000;
      v30 = 0xD00000000000002ELL;
      break;
    case 5:
      v28 = a7[26];
      v29 = a7[27];
      __swift_project_boxed_opaque_existential_1(a7 + 23, v28);
      v30 = 0xD000000000000039;
      v31 = 0x8000000268B5A420;
      break;
    default:
      goto LABEL_8;
  }

  return sub_2689CE88C(v30, v31, a8, a9, v28, v29);
}

uint64_t type metadata accessor for GetVolumeLevelUnsupportedValueStrategy()
{
  result = qword_2802A6F80;
  if (!qword_2802A6F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A01A04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268A01A6C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  return sub_268A00BD0();
}

Swift::String_optional __swiftcall UsoTask_resume_common_MediaItem.verb()()
{
  v0 = 0x656D75736572;
  v1 = 0xE600000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_resume_common_MediaItem.referencedSetting()()
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

uint64_t sub_268A01C04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A01C58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A01CAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A01D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A01D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A01DA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A01DFC()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A01E50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A01EB4()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A01F08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A01F6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A01FD0()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A02034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A02098(uint64_t a1)
{
  result = sub_268A02144(&qword_2802A6F90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A02144(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36144();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_restart_common_MediaItem.verb()()
{
  v0 = 0x74726174736572;
  v1 = 0xE700000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_restart_common_MediaItem.referencedSetting()()
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

uint64_t sub_268A022CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A02320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A02374(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A023C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A0241C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A02470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A024C4()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A02518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A0257C()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A025D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A02634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A02698()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A026FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A02760(uint64_t a1)
{
  result = sub_268A0280C(&qword_2802A6FA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A0280C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B361C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}