void sub_2689B3B40()
{
  OUTLINED_FUNCTION_26();
  v61 = v0;
  v62 = v1;
  v58 = v2;
  v64 = v3;
  v59 = v4;
  v60 = v5;
  v55 = sub_268B367A4();
  v6 = OUTLINED_FUNCTION_1(v55);
  v54 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v53 = v10;
  OUTLINED_FUNCTION_9();
  v11 = sub_268B37A54();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v63 = v17 - v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v20 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v21 = *(v14 + 16);
  v21(v0, v20, v11);
  v22 = sub_268B37A34();
  v23 = sub_268B37ED4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_14();
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "AddSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse() called", v24, 2u);
    OUTLINED_FUNCTION_12();
  }

  v57 = *(v14 + 8);
  v57(v0, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v26 = OBJC_IVAR___AddSpeakerIntentResponse_code;
  swift_beginAccess();
  v56 = v26;
  v65[0] = *(v64 + v26);
  sub_268B38404();
  v27 = sub_268B36E94();
  v29 = v28;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v27;
  *(inited + 56) = v29;
  sub_268B37B84();
  sub_268B36754();
  v30 = sub_268B36734();
  if (!v30)
  {
    v30 = sub_268B36744();
  }

  v31 = v30;
  v21(v63, v20, v11);

  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v65[0] = v35;
    *v34 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v36 = sub_268B36784();
    v38 = v37;
    (*(v54 + 8))(v53, v55);
    v39 = sub_26892CDB8(v36, v38, v65);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_2688BB000, v32, v33, "AddSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  v57(v63, v11);
  swift_allocObject();
  OUTLINED_FUNCTION_46_2();
  v40[2] = v31;
  v40[3] = v41;
  v40[4] = v59;
  v40[5] = v61;
  v40[6] = v60;
  v40[7] = v58;
  v40[8] = v62;
  v42 = *(v41 + v56);
  if (v42 == 102)
  {
    OUTLINED_FUNCTION_16_12(*(v61 + 16));
    OUTLINED_FUNCTION_46_2();
    v47 = v46;
    v48 = v59;

    OUTLINED_FUNCTION_3_19();
  }

  else
  {
    if (v42 != 101)
    {

      OUTLINED_FUNCTION_46_2();
      v50 = v49;
      v51 = v59;

      sub_2689B3A84(v51, v65);
      v52 = *(v61 + 16);
      sub_268AB2900();

      sub_2689B5664(v65);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_16_12(*(v61 + 16));
    OUTLINED_FUNCTION_46_2();
    v44 = v43;
    v45 = v59;

    OUTLINED_FUNCTION_3_19();
  }

LABEL_16:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689B4220(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v134 = a7;
  v132 = a5;
  v133 = a6;
  v135 = a4;
  v136 = a3;
  v128 = a2;
  v125 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v124 = &v115 - v9;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = *(*(v131 - 1) + 64);
  v11 = MEMORY[0x28223BE20](v131);
  v123 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v119 = &v115 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v115 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v130 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v121 = &v115 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v120 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v129 = &v115 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v117 = &v115 - v29;
  MEMORY[0x28223BE20](v28);
  v118 = (&v115 - v30);
  v31 = sub_268B34E24();
  v137 = *(v31 - 8);
  v138 = v31;
  v32 = *(v137 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v127 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v126 = &v115 - v35;
  v36 = sub_268B37A54();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v122 = &v115 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v115 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v115 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v115 - v48);
  sub_2688F1FA4(v125, &v115 - v48, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v131 = *v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v36, qword_2802CDA10);
    v51 = v37;
    (*(v37 + 16))(v45, v50, v36);
    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v135;
    v56 = v118;
    if (v54)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "AddSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v57, 2u);
      v58 = v57;
      v51 = v37;
      MEMORY[0x26D6266E0](v58, -1, -1);
    }

    (*(v51 + 8))(v45, v36);
    sub_268B36E84();
    if (!v59)
    {
      sub_268947F08();
    }

    v60 = v59;
    v61 = v121;
    v62 = __swift_project_boxed_opaque_existential_1(v55 + 18, v55[21]);
    (*(v137 + 104))(v126, *MEMORY[0x277D5BC00], v138);
    v63 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v63);
    v64 = *MEMORY[0x277D5B8E0];
    v65 = sub_268B34B94();
    (*(*(v65 - 8) + 104))(v61, v64, v65);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v65);
    v66 = *v62;
    v67 = v117;
    sub_2688F1FA4(v56, v117, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v67, 1, v63) == 1)
    {
      sub_2688C058C(v67, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v130 = v60;
      sub_268B350B4();
      (*(*(v63 - 8) + 8))(v67, v63);
    }

    v78 = v126;
    sub_2688E3180();

    sub_2688C058C(v61, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v56, &unk_2802A57B0, &unk_268B3CE00);
    (*(v137 + 8))(v78, v138);
    v79 = __swift_project_boxed_opaque_existential_1(v55 + 18, v55[21]);
    sub_2688C2ECC();
    v80 = swift_allocError();
    *v81 = -96;
    v82 = *v79;
    sub_26894B450();

    v83 = swift_allocError();
    *v84 = -96;
    v139[0] = v83;
    v140 = 1;
    v133(v139);

    return sub_2688C058C(v139, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v49, v16);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v68 = __swift_project_value_buffer(v36, qword_2802CDA10);
    v69 = v37;
    v70 = v36;
    v71 = *(v69 + 16);
    v125 = v68;
    v121 = v71;
    (v71)(v43);
    v72 = sub_268B37A34();
    v73 = sub_268B37ED4();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2688BB000, v72, v73, "AddSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v74, 2u);
      MEMORY[0x26D6266E0](v74, -1, -1);
    }

    v75 = *(v69 + 8);
    v126 = (v69 + 8);
    v118 = v75;
    v75(v43, v70);
    v76 = v128;
    sub_268B36E84();
    v115 = v70;
    if (!v77)
    {
      v86 = OBJC_IVAR___AddSpeakerIntentResponse_code;
      swift_beginAccess();
      v141 = *(v76 + v86);
      sub_268B38404();
      sub_268947F08();
    }

    v87 = __swift_project_boxed_opaque_existential_1(v135 + 18, v135[21]);
    (*(v137 + 104))(v127, *MEMORY[0x277D5BC00], v138);
    v88 = v119;
    sub_2688F1FA4(v16, v119, &unk_2802A56E0, &unk_268B3CDF0);

    v89 = sub_268B350F4();
    v90 = *(v89 - 8);
    v91 = v129;
    (*(v90 + 32))(v129, v88, v89);
    __swift_storeEnumTagSinglePayload(v91, 0, 1, v89);
    v92 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v130, 1, 1, v92);
    v93 = *v87;
    v94 = v120;
    sub_2688F1FA4(v91, v120, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v94, 1, v89);
    v116 = v16;
    v128 = v90;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v94, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v90 + 8))(v94, v89);
    }

    v96 = v127;
    v97 = v130;
    sub_2688E3180();

    sub_2688C058C(v97, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v129, &unk_2802A57B0, &unk_268B3CE00);
    (*(v137 + 8))(v96, v138);
    v98 = v135;
    v99 = __swift_project_boxed_opaque_existential_1(v135 + 18, v135[21]);
    sub_2688C2ECC();
    v100 = swift_allocError();
    *v101 = 79;
    v102 = *v99;
    sub_26894B450();

    v103 = v122;
    v104 = v115;
    (v121)(v122, v125, v115);
    v105 = sub_268B37A34();
    v106 = sub_268B37ED4();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_2688BB000, v105, v106, "AddSpeakerHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v107, 2u);
      MEMORY[0x26D6266E0](v107, -1, -1);
    }

    v118(v103, v104);
    v108 = v98[36];
    v109 = v98[37];
    __swift_project_boxed_opaque_existential_1(v98 + 33, v108);
    v110 = v116;
    v111 = v123;
    sub_2688F1FA4(v116, v123, &unk_2802A56E0, &unk_268B3CDF0);
    v112 = *(v111 + v131[12]);
    v113 = v124;
    sub_268A82B50(v136, v124);
    v114 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v113, 0, 1, v114);
    (*(v109 + 40))(v111, v112, v113, v133, v134, v108, v109);

    sub_2688C058C(v113, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v110, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v128 + 8))(v111, v89);
  }
}

uint64_t *sub_2689B5098()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  v2 = v0[38];

  return v0;
}

uint64_t sub_2689B50F8()
{
  sub_2689B5098();

  return MEMORY[0x2821FE8D8](v0, 312, 7);
}

uint64_t sub_2689B5150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689B51CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689B5248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689B52E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689B5364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_2689B5404()
{
  if (qword_2802A4DE8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD940;

  return v1;
}

uint64_t sub_2689B5460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2689B54B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689B5504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AddSpeakerHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_2689B5570(uint64_t a1)
{
  result = sub_2689B5598();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689B5598()
{
  result = qword_2802A6B00;
  if (!qword_2802A6B00)
  {
    type metadata accessor for AddSpeakerHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6B00);
  }

  return result;
}

uint64_t sub_2689B55F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2689B5650()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  return sub_2689B4174();
}

uint64_t sub_2689B56E0(void *a1)
{
  v2 = [a1 devices];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for Device();
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_2689B5748()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v1 + 24);

  v11 = *(v1 + 32);

  v12 = v1 + v5;
  v13 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v13);
  (*(v14 + 8))(v12);

  v15 = *(v1 + v7 + 8);

  v16 = *(v1 + v8);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v4 | 7);
}

uint64_t sub_2689B5880(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_2689B2F04(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8));
}

uint64_t sub_2689B595C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 8))(v10);

  v13 = *(v1 + v7 + 8);

  return MEMORY[0x2821FE8E8](v1, v7 + 16, v4 | 7);
}

uint64_t sub_2689B5A6C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_2689B2320(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_2689B5B20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2689B5B88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  return sub_2689B1754();
}

uint64_t OUTLINED_FUNCTION_3_19()
{
  v6 = *(v4 - 344);

  return sub_2689CE860(0xD000000000000023, v3 | 0x8000000000000000, v6, sub_2689B5650, v0, v1, v2);
}

void *OUTLINED_FUNCTION_6_18()
{
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 1;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 345) = 0u;

  return memcpy((v0 + 368), (v0 + 280), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_8_12()
{
  *(v0 + 280) = 0;
  *(v0 + 288) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v0 + 352) = 0;
  *(v0 + 360) = v1;

  return sub_268B0F7F4(v2);
}

void *OUTLINED_FUNCTION_15_12(void *a1)
{

  return memcpy(a1, (v1 + 280), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_16_12@<X0>(void *a1@<X8>)
{
  v1 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
}

void OUTLINED_FUNCTION_22_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2689B5DE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v70 = a7;
  v72 = a4;
  v73 = a8;
  v65 = a6;
  v66 = a2;
  v68 = a3;
  v69 = a5;
  v67 = a1;
  v8 = sub_268B367A4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v63 = v10;
  v64 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v74 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
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
    _os_log_impl(&dword_2688BB000, v26, v27, "MoveSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput...", v28, 2u);
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
  v32 = v74;
  v25(v74, v24, v14);

  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v61 = v29;
    v36 = v35;
    v37 = swift_slowAlloc();
    v75 = v37;
    *v36 = 136315138;
    sub_268B36714();
    v38 = v62;
    sub_268B36B14();

    v39 = sub_268B36784();
    v41 = v40;
    (*(v63 + 8))(v38, v64);
    v42 = sub_26892CDB8(v39, v41, &v75);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2688BB000, v33, v34, "MoveSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x26D6266E0](v37, -1, -1);
    MEMORY[0x26D6266E0](v36, -1, -1);

    v61(v74, v14);
  }

  else
  {

    v29(v32, v14);
  }

  v43 = swift_allocObject();
  v45 = v67;
  v44 = v68;
  v43[2] = v31;
  v43[3] = v44;
  v47 = v71;
  v46 = v72;
  v48 = v65;
  v49 = v66;
  v43[4] = v72;
  v43[5] = v49;
  v43[6] = v48;
  v43[7] = v47;
  v50 = v70;
  v43[8] = v45;
  v43[9] = v50;
  v51 = v73;
  v43[10] = v73;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v52 = v48;
  swift_retain_n();
  v53 = v49;
  v54 = v52;
  v55 = v53;

  v56 = v55;
  v57 = v54;

  sub_2689FA1BC(v58, v56, v44, v46, v69, v57, v47, v50, v51, v44, v46, v57, v47, sub_2689B7610, v43, v56);
}

uint64_t sub_2689B6388(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v126 = a8;
  v124 = a7;
  v128 = a6;
  v111 = a5;
  v132 = a4;
  v109 = a3;
  v108 = a2;
  v117 = a1;
  v125 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v116 = &v106 - v11;
  v12 = sub_268B37A54();
  v122 = *(v12 - 8);
  v123 = v12;
  v13 = *(v122 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v112 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v115 = &v106 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v121 = (&v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v107 = &v106 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v113 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v120 = &v106 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v110 = &v106 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v106 - v30;
  v32 = sub_268B34E24();
  v129 = *(v32 - 8);
  v33 = *(v129 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v118 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v106 - v36;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v38 = *(*(v119 - 1) + 64);
  v39 = MEMORY[0x28223BE20](v119);
  v114 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v106 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v106 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v106 - v48);
  sub_268935590(v117, &v106 - v48, &qword_2802A6300, &unk_268B3BD80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v127 = v32;
  if (EnumCaseMultiPayload == 1)
  {
    v51 = v128;
    v119 = *v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v52 = v123;
    v53 = __swift_project_value_buffer(v123, qword_2802CDA10);
    v54 = v122;
    v55 = v112;
    (*(v122 + 16))(v112, v53, v52);
    v56 = sub_268B37A34();
    v57 = sub_268B37EE4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2688BB000, v56, v57, "MoveSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput failed to execute dialog", v58, 2u);
      MEMORY[0x26D6266E0](v58, -1, -1);
    }

    (*(v54 + 8))(v55, v52);
    sub_268947F08();
    v123 = v59;
    v60 = __swift_project_boxed_opaque_existential_1(v51 + 13, v51[16]);
    (*(v129 + 104))(v118, *MEMORY[0x277D5BC00], v127);
    v61 = sub_268B350F4();
    v62 = v120;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v61);
    v63 = *MEMORY[0x277D5B8E0];
    v64 = sub_268B34B94();
    v65 = v121;
    (*(*(v64 - 8) + 104))(v121, v63, v64);
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v64);
    v66 = *v60;
    v67 = v113;
    sub_268935590(v62, v113, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v67, 1, v61) == 1)
    {
      sub_2688EF38C(v67, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v61 - 8) + 8))(v67, v61);
    }

    v80 = v118;
    v81 = v121;
    sub_2688E3410();

    sub_2688EF38C(v81, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v120, &unk_2802A57B0, &unk_268B3CE00);
    (*(v129 + 8))(v80, v127);
    v82 = __swift_project_boxed_opaque_existential_1(v51 + 13, v51[16]);
    sub_2688C2ECC();
    v83 = swift_allocError();
    *v84 = -97;
    v85 = *v82;
    sub_26894B450();

    v86 = swift_allocError();
    *v87 = -95;
    v130[0] = v86;
    v131 = 1;
    v126(v130);

    return sub_2688EF38C(v130, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v49, v45);
    v112 = sub_2688E1BE4(32, 3, v108, v109, v132, 0x6E776F6E6B6E75, 0xE700000000000000, v111);
    v113 = v68;
    v69 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    v70 = *MEMORY[0x277D5BBE0];
    v71 = *(v129 + 104);
    v118 = v37;
    v71(v37, v70, v32);
    sub_268935590(v45, v43, &unk_2802A56E0, &unk_268B3CDF0);

    v72 = sub_268B350F4();
    v73 = *(v72 - 8);
    v73[4](v31, v43, v72);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v72);
    v74 = sub_268B34B94();
    v75 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v74);
    v76 = *v69;
    v120 = v31;
    v77 = v31;
    v78 = v110;
    sub_268935590(v77, v110, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v72);
    v117 = v45;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v78, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (v73[1])(v78, v72);
    }

    v121 = v73;
    v89 = v118;
    sub_2688E3410();

    sub_2688EF38C(v75, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v120, &unk_2802A57B0, &unk_268B3CE00);
    (*(v129 + 8))(v89, v127);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v90 = v123;
    v91 = __swift_project_value_buffer(v123, qword_2802CDA10);
    v92 = v122;
    v93 = v115;
    (*(v122 + 16))(v115, v91, v90);
    v94 = sub_268B37A34();
    v95 = sub_268B37ED4();
    v96 = os_log_type_enabled(v94, v95);
    v97 = v128;
    if (v96)
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_2688BB000, v94, v95, "MoveSpeakerUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v98, 2u);
      MEMORY[0x26D6266E0](v98, -1, -1);
    }

    (*(v92 + 8))(v93, v90);
    v99 = v97[21];
    v100 = v97[22];
    __swift_project_boxed_opaque_existential_1(v97 + 18, v99);
    v101 = v117;
    v102 = v114;
    sub_268935590(v117, v114, &unk_2802A56E0, &unk_268B3CDF0);
    v103 = *(v102 + v119[12]);
    v104 = v116;
    sub_268A82B50(v132, v116);
    v105 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v104, 0, 1, v105);
    (*(v100 + 40))(v102, v103, v104, v126, v125, v99, v100);

    sub_2688EF38C(v104, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v101, &unk_2802A56E0, &unk_268B3CDF0);
    return v121[1](v102, v72);
  }
}

uint64_t sub_2689B7060(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_268935590(a1, v51, &unk_2802A57C0, &qword_268B3BE00);
  v16 = LOBYTE(v51[5]);
  sub_2688EF38C(v51, &unk_2802A57C0, &qword_268B3BE00);
  if (v16 != 1)
  {
    return a2(a1);
  }

  v17 = a4 == 0x656372756F73 && a5 == 0xE600000000000000;
  if (v17 || (sub_268B38444() & 1) != 0)
  {
    v18 = MoveSpeakerSourceUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
    if (v19)
    {
LABEL_8:
      sub_2688C2ECC();
      v20 = swift_allocError();
      v22 = 30;
LABEL_9:
      *v21 = v22;
      v51[0] = v20;
      LOBYTE(v51[5]) = 1;
      a2(v51);
      return sub_2688EF38C(v51, &unk_2802A57C0, &qword_268B3BE00);
    }

    if (v18 == 1)
    {
      v39 = *(a7 + 56);
      v25 = "ioMentionedInIntent";
      v26 = v39[5];
      v27 = v39[6];
      __swift_project_boxed_opaque_existential_1(v39 + 2, v26);
      v28 = 0xD000000000000025;
      return sub_2689CE88C(v28, v25 | 0x8000000000000000, v47, a9, v26, v27);
    }

    if (v18 != 2)
    {
      if (v18 != 3)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    v32.n128_f64[0] = OUTLINED_FUNCTION_3_20();
    *(&__src[8] + 3) = v32;
    OUTLINED_FUNCTION_0_23(v32);
    BYTE1(__src[10]) = 1;
    memcpy(__dst, __src, 0x51uLL);
    sub_2688EF38C(__dst, &qword_2802A5C88, qword_268B418C0);
    LODWORD(__src[0]) = 0;
    *&__src[1] = 0u;
    OUTLINED_FUNCTION_0_23(0);
    __src[9] = 0;
    LOBYTE(__src[10]) = 1;
    if (sub_268B0F7F4(a10))
    {
      sub_268A65CAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_268B3BBC0;
    v34 = OUTLINED_FUNCTION_1_27(v33, "TTRErrorCodeInfo");
    v35 = 0x8000000268B59310;
    v34[9] = MEMORY[0x277D837D0];
    v37 = v36 | 3;
LABEL_25:
    v34[6] = v37;
    v34[7] = v35;
    sub_268B37B84();
    v38 = *(a7 + 56);
    memcpy(v51, __src, 0x53uLL);
    sub_268AB2B1C();

    memcpy(v48, __src, 0x53uLL);
    return sub_26891864C(v48);
  }

  v29 = a4 == 0x74616E6974736564 && a5 == 0xEC000000736E6F69;
  if (!v29 && (sub_268B38444() & 1) == 0)
  {
    sub_2688C2ECC();
    v20 = swift_allocError();
    v22 = 32;
    goto LABEL_9;
  }

  v30 = MoveSpeakerDestinationsUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
  if (v31)
  {
LABEL_21:
    sub_2688C2ECC();
    v20 = swift_allocError();
    v22 = 31;
    goto LABEL_9;
  }

  if (v30 == 1)
  {
    v42.n128_f64[0] = OUTLINED_FUNCTION_3_20();
    OUTLINED_FUNCTION_0_23(v42);
    *(&__src[8] + 2) = v43;
    BYTE2(__src[10]) = 1;
    memcpy(__dst, __src, 0x51uLL);
    sub_2688EF38C(__dst, &qword_2802A5C88, qword_268B418C0);
    LODWORD(__src[0]) = 0;
    *&__src[1] = 0u;
    OUTLINED_FUNCTION_0_23(0);
    __src[9] = 0;
    LOBYTE(__src[10]) = 1;
    if (sub_268B0F7F4(a10))
    {
      sub_268A65CAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_268B3BBC0;
    v34 = OUTLINED_FUNCTION_1_27(v44, "TTRErrorCodeInfo");
    v35 = 0x8000000268B59280;
    v34[9] = MEMORY[0x277D837D0];
    v37 = v45 | 9;
    goto LABEL_25;
  }

  if (v30 != 3)
  {
    if (v30 == 2)
    {
LABEL_14:
      v24 = *(a7 + 56);
      v25 = "noDestinationSpeakerFound";
      v26 = v24[5];
      v27 = v24[6];
      __swift_project_boxed_opaque_existential_1(v24 + 2, v26);
      v28 = 0xD000000000000033;
      return sub_2689CE88C(v28, v25 | 0x8000000000000000, v47, a9, v26, v27);
    }

    goto LABEL_21;
  }

  sub_26890C900(a7 + 16, v51);
  sub_26890C900(v51, __src);
  v40 = sub_268ABE424(__src);
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  v41 = *(a7 + 56);
  return sub_268ABEFDC(v40 | 0x100u, v47, a9);
}

uint64_t type metadata accessor for MoveSpeakerUnsupportedValueStrategy()
{
  result = qword_2802A6B08;
  if (!qword_2802A6B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2689B75A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2689B7610()
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
  return sub_2689B62CC();
}

void OUTLINED_FUNCTION_0_23(__n128 a1)
{
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
}

uint64_t OUTLINED_FUNCTION_1_27@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD000000000000010;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_2689B76D8(void (*a1)(uint64_t *__return_ptr), void (*a2)(uint64_t *__return_ptr))
{
  a1(&v8);
  if (!v8 || (sub_2689619F4(), v4 = v3, v5 = v3, , v5 == 5))
  {
    sub_2689B7770(a2);
    if (v6)
    {

      return 1;
    }

    else
    {
      return 5;
    }
  }

  return v4;
}

uint64_t sub_2689B7770(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v4);
  if (!v4)
  {
    return 0;
  }

  sub_268962000();
  v2 = v1;

  return v2;
}

Swift::String_optional __swiftcall UsoTask_noVerb_common_Setting.verb()()
{
  if (sub_2689B7880() == 3 && sub_2689B76D8(MEMORY[0x277D5E228], MEMORY[0x277D5E228]) == 5 && (sub_268B356E4(), v6) && (sub_268962A68(), v1 = v0, v2 = v0, , v2 != 24))
  {
    v3 = sub_26893E3F8(v1);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2689B7880()
{
  v0 = sub_268A9D13C();
  if (v0 == 6)
  {
    return 3;
  }

  return sub_2689ABD4C(v0);
}

uint64_t UsoTask_noVerb_common_Setting.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v47 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v47 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v47 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v47 - v17;
  v19 = sub_268B356E4();
  if (v47[1])
  {
    sub_2689633E8();
    if (v20)
    {
      if (qword_2802A4F30 != -1)
      {
        v20 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_1_28(v20, qword_2802CDA10);
      v21(v18);
      v22 = sub_268B37A34();
      v23 = sub_268B37F04();
      if (OUTLINED_FUNCTION_2_19(v23))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_22_6(&dword_2688BB000, v24, v25, "UsoTask_noVerb_common_Setting#shouldHandle Task is mediaPlayer. Handling in controls");
        OUTLINED_FUNCTION_12();
      }

      v26 = 0;
    }

    else
    {
      sub_268964334();
      if (v31)
      {
        if (qword_2802A4F30 != -1)
        {
          v31 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_28(v31, qword_2802CDA10);
        v32(v16);
        v33 = sub_268B37A34();
        v34 = sub_268B37F04();
        if (OUTLINED_FUNCTION_2_19(v34))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_22_6(&dword_2688BB000, v35, v36, "UsoTask_noVerb_common_Setting#shouldHandle Task is media. Handling in controls");
          OUTLINED_FUNCTION_12();
        }

        v26 = 1;
        v18 = v16;
      }

      else
      {
        sub_268963658();
        if (v37)
        {
          if (qword_2802A4F30 != -1)
          {
            v37 = OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_1_28(v37, qword_2802CDA10);
          v38(v13);
          v39 = sub_268B37A34();
          v40 = sub_268B37F04();
          if (OUTLINED_FUNCTION_2_19(v40))
          {
            v41 = OUTLINED_FUNCTION_14();
            *v41 = 0;
            _os_log_impl(&dword_2688BB000, v39, v10, "UsoTask_noVerb_common_Setting#shouldHandle Task is settings. Handling in controls", v41, 2u);
            OUTLINED_FUNCTION_12();
          }

          v26 = 2;
          v18 = v13;
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            v37 = OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_1_28(v37, qword_2802CDA10);
          v42(v10);
          v43 = sub_268B37A34();
          v44 = sub_268B37EE4();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = OUTLINED_FUNCTION_14();
            *v45 = 0;
            _os_log_impl(&dword_2688BB000, v43, v44, "UsoTask_noVerb_common_Setting#shouldHandle Task is not mediaPlayer/media/setting: Not handling in controls", v45, 2u);
            OUTLINED_FUNCTION_12();
          }

          v26 = 3;
          v18 = v10;
        }
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v19 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_1_28(v19, qword_2802CDA10);
    v27(v7);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_14();
      *v30 = 0;
      _os_log_impl(&dword_2688BB000, v28, v29, "UsoTask_noVerb_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v30, 2u);
      OUTLINED_FUNCTION_12();
    }

    v26 = 3;
    v18 = v7;
  }

  result = (*(v3 + 8))(v18, v2);
  *a1 = v26;
  return result;
}

uint64_t sub_2689B7E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2689B7E88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2689B7EDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2689B7F30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2689B7F84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2689B7FD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2689B802C()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2689B8080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2689B80E4()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2689B8138(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2689B819C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2689B8200()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2689B8264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2689B82C8(uint64_t a1)
{
  result = sub_2689B8374(&qword_2802A6B18);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689B8374(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36014();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_28(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(v3 + 16);
  return result;
}

BOOL OUTLINED_FUNCTION_2_19(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_2689B8400()
{
  v0 = sub_268B18100();
  if (v0)
  {
    v1 = v0;
    v2 = sub_2688EFD0C(v0);
    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {

        goto LABEL_13;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D625BD0](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v6 = [v4 context];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 proximity];

        if ((v8 - 1) >= 4)
        {
          if (!v8)
          {
            goto LABEL_18;
          }

          sub_268B38474();
          __break(1u);
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_13:
  v9 = sub_268B18100();
  if (!v9)
  {
    return 0;
  }

  v1 = v9;
  if (!sub_2688EFD0C(v9))
  {

    return 0;
  }

  sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v10 = *(v1 + 32);
    goto LABEL_17;
  }

LABEL_26:
  v10 = MEMORY[0x26D625BD0](0, v1);
LABEL_17:
  v5 = v10;
LABEL_18:

  return v5;
}

id sub_2689B859C()
{
  result = [v0 volumeLevel];
  if (result)
  {
    v2 = result;
    v3 = [result volumeSettingState];

    return (v3 == 6);
  }

  return result;
}

id sub_2689B85F4()
{
  result = [v0 volumeLevel];
  if (result)
  {
    v2 = result;
    v3 = [result volumeSettingState];

    return (v3 == 7);
  }

  return result;
}

uint64_t sub_2689B864C()
{
  result = [v0 volumeLevel];
  if (result)
  {
    v2 = result;
    v3 = [result volumeSettingValue];

    if (v3)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2689B86B8()
{
  result = [v0 volumeLevel];
  if (result)
  {
    v2 = result;
    v3 = [result volumeSettingState];

    return (v3 != 0);
  }

  return result;
}

BOOL sub_2689B8710()
{
  v2 = v1;
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1_15(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 volumeLevel];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 volumeSettingState];

    if ((v13 | 4) == 5)
    {
      return [v2 settingAttribute] != 1;
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v15 = __swift_project_value_buffer(v0, qword_2802CDA10);
    (*(v6 + 16))(v10, v15, v0);
    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "volumeSettingState not specified in the intent. isIncreaseOrDecreaseVolumeIntent = false", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v6 + 8))(v10, v0);
  }

  return 0;
}

float sub_2689B88E0()
{
  v2 = v1;
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1_15(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = [v2 volumeLevel];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 volumeSettingQualifier];

    if (v16 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v17 = __swift_project_value_buffer(v0, qword_2802CDA10);
      (*(v6 + 16))(v13, v17, v0);
      v18 = sub_268B37A34();
      v19 = sub_268B37ED4();
      v20 = 0.5;
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_15;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v18, v19, "resolveVolumeLevelUsingQualifiers a little triggered", v21, 2u);
      goto LABEL_13;
    }
  }

  v22 = [v2 volumeLevel];
  v20 = 1.0;
  if (v22)
  {
    v23 = v22;
    v24 = [v22 volumeSettingQualifier];

    if (v24 == 2)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v25 = __swift_project_value_buffer(v0, qword_2802CDA10);
      (*(v6 + 16))(v11, v25, v0);
      v18 = sub_268B37A34();
      v26 = sub_268B37ED4();
      v20 = 2.0;
      if (!os_log_type_enabled(v18, v26))
      {
        v13 = v11;
        goto LABEL_15;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v18, v26, "resolveVolumeLevelUsingQualifiers a lot triggered", v21, 2u);
      v13 = v11;
LABEL_13:
      MEMORY[0x26D6266E0](v21, -1, -1);
LABEL_15:

      (*(v6 + 8))(v13, v0);
    }
  }

  return v20;
}

id sub_2689B8BD4()
{
  result = [objc_allocWithZone(type metadata accessor for GetVolumeLevelIntentHandler()) init];
  qword_2802CD948 = result;
  return result;
}

uint64_t sub_2689B8C08@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_268B35494();
  v1 = OUTLINED_FUNCTION_1(v34);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v33 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v32 = *(v12 + 16);
  v32(v18, v19, v9);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    v31 = v3;
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "GetVolumeLevelFlowStrategy#actionForInput called", v22, 2u);
    v3 = v31;
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v12 + 8);
  v23(v18, v9);
  sub_268B35414();
  v24 = sub_268A9AAA8(v8);
  (*(v3 + 8))(v8, v34);
  if (v24)
  {
    return sub_268B34EC4();
  }

  v26 = v33;
  v32(v33, v19, v9);
  v27 = sub_268B37A34();
  v28 = sub_268B37EE4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_14();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "GetVolumeLevelFlowStrategy#actionForInput unable to create SettingsIntent from parse", v29, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23(v26, v9);
  type metadata accessor for ErrorFilingHelper();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4_10();
  return sub_268B34ED4();
}

void sub_2689B8F24(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v56 = a2;
  v62 = a3;
  v6 = sub_268B35494();
  v7 = OUTLINED_FUNCTION_1(v6);
  v60 = v8;
  v61 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v59 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v51 - v15;
  v58 = type metadata accessor for SettingsIntent();
  v17 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v55 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v51 - v29;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v31 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v53 = *(v24 + 16);
  v54 = v31;
  v53(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    v52 = v24;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "GetVolumeLevelFlowStrategy#makeIntentFromParse called", v34, 2u);
    v24 = v52;
    OUTLINED_FUNCTION_12();
  }

  v35 = *(v24 + 8);
  v35(v30, v21);
  v36 = v59;
  (*(v60 + 16))(v59, a1, v61);
  sub_26897BBA8(v36, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v58) == 1)
  {
    sub_26891E52C(v16);
    v37 = v55;
    (v53)(v55, v54, v21);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_14();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "GetVolumeLevelFlowStrategy#makeIntentFromParse unable to create SettingsIntent from parse", v40, 2u);
      OUTLINED_FUNCTION_12();
    }

    v35(v37, v21);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_29();
    OUTLINED_FUNCTION_4_10();
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = 23;
    v62(v41, 1);
  }

  else
  {
    sub_26891E594(v16, v20);
    v43 = v56;
    if (v56)
    {
      v44 = v56;
    }

    else
    {
      v44 = [objc_allocWithZone(type metadata accessor for GetVolumeLevelIntent()) init];
    }

    v45 = v43;
    sub_2689B9C08(v20);
    v46 = v57;
    v47 = v57[5];
    v48 = v57[6];
    __swift_project_boxed_opaque_existential_1(v57 + 2, v47);
    v49 = swift_allocObject();
    v49[2] = v62;
    v49[3] = a4;
    v49[4] = v44;
    v50 = v44;

    sub_268AD35F4(v50, &off_287953BE8, (v46 + 7), sub_2689B9F80, v49, v47, v48);

    sub_26891E5F8(v20);
  }
}

uint64_t sub_2689B9414(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
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
    _os_log_impl(&dword_2688BB000, v11, v12, "GetVolumeLevelFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_2689B960C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, VolumeLevelFlowStrategy, a6);
}

uint64_t sub_2689B969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BB208](a1, VolumeLevelFlowStrategy, a3);
}

id sub_2689B96E8()
{
  if (qword_2802A4DF0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD948;

  return v1;
}

uint64_t sub_2689B9744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, VolumeLevelFlowStrategy, a6);
}

uint64_t sub_2689B97B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, VolumeLevelFlowStrategy, a6);
}

uint64_t sub_2689B981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, VolumeLevelFlowStrategy, a6);
}

uint64_t sub_2689B9888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA28](a1, VolumeLevelFlowStrategy, a3);
}

uint64_t sub_2689B98D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, VolumeLevelFlowStrategy, a4);
}

uint64_t sub_2689B992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, VolumeLevelFlowStrategy, a6);
}

uint64_t sub_2689B9998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, VolumeLevelFlowStrategy, a7);
}

uint64_t sub_2689B9A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, VolumeLevelFlowStrategy, a7);
}

uint64_t sub_2689B9B68(uint64_t a1, uint64_t a2)
{
  result = sub_2689B9F8C(&qword_2802A6B90, a2, type metadata accessor for GetVolumeLevelFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689B9C08(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26897EC08(a1, v10);
  sub_2689B9F8C(&qword_2802A6678, 255, type metadata accessor for SettingsIntent);
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
    v16 = off_28795BBF8;
    VolumeLevelIntent = type metadata accessor for GetVolumeLevelIntent();
    v16(v15, VolumeLevelIntent, &off_28795BBE8);
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

  return sub_26891E5F8(v10);
}

uint64_t sub_2689B9F40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2689B9F8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2689BA004(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v38[0] = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2802A4F30 != -1)
  {
LABEL_31:
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "SkipContentDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v38[1] = a3;
  v10 = a3;
  v15 = sub_268B35244();
  v41 = MEMORY[0x277D84F90];
  v16 = sub_2688EFD0C(v15);
  v17 = 0;
  a3 = (v15 & 0xC000000000000001);
  v7 = v15 & 0xFFFFFFFFFFFFFF8;
  while (v16 != v17)
  {
    if (a3)
    {
      v18 = MEMORY[0x26D625BD0](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v20 = sub_26892D418(v18);
    v22 = v21;
    v23 = sub_268B37724();
    v10 = v24;
    if (!v22)
    {

LABEL_18:
      v10 = &v41;
      sub_268B38214();
      v27 = *(v41 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      goto LABEL_20;
    }

    if (v20 != v23 || v22 != v24)
    {
      v26 = sub_268B38444();

      if (v26)
      {

        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_20:
    ++v17;
  }

  sub_268AE2278(v41);
  v29 = v28;

  v30 = [v38[0] direction];
  v31 = sub_268B35254();
  sub_268AE23DC(v31);
  v33 = v32;

  if (v33)
  {
    v34 = 256;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v38[2] + 7);
  if (v30 == 2)
  {
    v36 = v34 + 1;
  }

  else
  {
    v36 = v34;
  }

  sub_268AB815C(v29, v36, v39, v40);
}

void sub_2689BA39C()
{
  type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_2689BA488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_2689BA538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_2689BA5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_2689BA680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_2689BA73C()
{
  type metadata accessor for SkipContentDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_2689BA7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_2689BA8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for SkipContentDeviceDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_2689BAAA0(uint64_t a1, uint64_t a2)
{
  result = sub_2689BAAF8(&qword_2802A6BB0, a2, type metadata accessor for SkipContentDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2689BAAF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2689BAB40(uint64_t a1, uint64_t a2)
{
  sub_2689BC8D8(a1, a2);

  return 0;
}

uint64_t sub_2689BABA0()
{
  v1 = sub_268B37A54();
  v2 = OUTLINED_FUNCTION_1(v1);
  v95 = v3;
  v96 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_268B35D34();
  v10 = OUTLINED_FUNCTION_1(v9);
  v94 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BB8, &qword_268B41E28);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v87 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BC0, &qword_268B41E30);
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_20_0();
  v29 = v27 - v28;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v87 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v87 - v34;
  sub_268B357C4();
  OUTLINED_FUNCTION_86_1();
  sub_268B35D74();
  OUTLINED_FUNCTION_7_15();

  if (v98)
  {
    v36 = sub_268B35D64();
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      v39 = v36;
      return *&v39;
    }

    return 0;
  }

  v91 = v33;
  v92 = v35;
  v88 = v16;
  v89 = v29;
  v90 = v8;
  v41 = v95;
  v42 = v96;
  v93 = v22;
  sub_268B357C4();
  OUTLINED_FUNCTION_86_1();
  sub_268B36094();
  OUTLINED_FUNCTION_7_15();

  if (v98)
  {
    v43 = sub_268B36064();
    if (v44)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = v43;
    }

    v46 = sub_268B36074();
    if ((v47 & 1) == 0)
    {
      v48 = v46;
      v49 = sub_268B36084();
      v51 = v50;

      if ((v51 & 1) == 0)
      {
        v39 = v45 + v48 / v49;
        return *&v39;
      }

      return 0;
    }

    goto LABEL_17;
  }

  v52 = v0;
  sub_268B357C4();
  OUTLINED_FUNCTION_86_1();
  sub_268B35D54();
  OUTLINED_FUNCTION_17_10();

  if (!v98)
  {
    sub_268B357C4();
    OUTLINED_FUNCTION_86_1();
    sub_268B36294();
    OUTLINED_FUNCTION_7_15();

    v58 = v98;
    if (!v98)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v59 = __swift_project_value_buffer(v42, qword_2802CDA10);
      v60 = v41;
      v61 = v90;
      (*(v41 + 16))(v90, v59, v42);

      v62 = sub_268B37A34();
      v63 = sub_268B37EE4();

      if (os_log_type_enabled(v62, v63))
      {
        OUTLINED_FUNCTION_172_0();
        v64 = OUTLINED_FUNCTION_118_0();
        v97 = v52;
        v98 = v64;
        *v42 = 136315138;
        sub_268B35D04();

        v65 = sub_268B37C24();
        v67 = sub_26892CDB8(v65, v66, &v98);

        *(v42 + 4) = v67;
        OUTLINED_FUNCTION_19_9(&dword_2688BB000, v68, v69, "UsoEntityCommonNumber#getNumericValue got unexpected number entityType %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      (*(v60 + 8))(v61, v42);
      return 0;
    }

    if (sub_268B36274())
    {
      sub_268B357C4();
    }

    v70 = v9;
    v71 = v93;
    v72 = v94;
    v74 = v91;
    v73 = v92;
    OUTLINED_FUNCTION_17_10();

    if (!v98)
    {
LABEL_17:

      return 0;
    }

    sub_268B35D14();
    (*(v72 + 104))(v74, *MEMORY[0x277D5E880], v70);
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v70);
    v75 = *(v17 + 48);
    sub_2688F1FA4(v73, v71, &qword_2802A6BC0, &qword_268B41E30);
    sub_2688F1FA4(v74, v71 + v75, &qword_2802A6BC0, &qword_268B41E30);
    OUTLINED_FUNCTION_54_0(v71);
    if (v77)
    {
      OUTLINED_FUNCTION_12_2(v74);
      OUTLINED_FUNCTION_12_2(v73);
      OUTLINED_FUNCTION_54_0(v71 + v75);
      if (v77)
      {
        sub_2688C058C(v71, &qword_2802A6BC0, &qword_268B41E30);
LABEL_40:
        if (sub_268B36284())
        {
          v84 = COERCE_DOUBLE(sub_2689BABA0());
          v86 = v85;

          if ((v86 & 1) == 0)
          {
            v39 = v84 / 100.0;
            return *&v39;
          }

          return 0;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v76 = v89;
      sub_2688F1FA4(v71, v89, &qword_2802A6BC0, &qword_268B41E30);
      OUTLINED_FUNCTION_54_0(v71 + v75);
      if (!v77)
      {
        v78 = v94;
        v79 = v71 + v75;
        v80 = v88;
        (*(v94 + 32))(v88, v79, v70);
        sub_2689BC814();
        LODWORD(v95) = sub_268B37BB4();
        v96 = v58;
        v81 = *(v78 + 8);
        v81(v80, v70);
        sub_2688C058C(v74, &qword_2802A6BC0, &qword_268B41E30);
        sub_2688C058C(v73, &qword_2802A6BC0, &qword_268B41E30);
        v81(v89, v70);
        v82 = OUTLINED_FUNCTION_71_1();
        sub_2688C058C(v82, v83, &qword_268B41E30);
        if (v95)
        {
          goto LABEL_40;
        }

LABEL_37:

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_12_2(v74);
      OUTLINED_FUNCTION_12_2(v73);
      (*(v94 + 8))(v76, v70);
    }

    sub_2688C058C(v71, &qword_2802A6BB8, &qword_268B41E28);
    goto LABEL_37;
  }

  v53 = sub_268B35D44();
  if (!v54)
  {
    goto LABEL_17;
  }

  v55 = sub_2689BAB40(v53, v54);
  v57 = v56;

  if (v57)
  {
    return 0;
  }

  else
  {
    return v55;
  }
}

uint64_t sub_2689BB2D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_268B37A54();
  v135 = OUTLINED_FUNCTION_1(v4);
  v136 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_20_0();
  v134 = v8 - v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v132 = &v123[-v11];
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v133 = &v123[-v13];
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  v129 = &v123[-v15];
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  v130 = &v123[-v17];
  v18 = sub_268B35D34();
  v19 = OUTLINED_FUNCTION_1(v18);
  v131 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BB8, &qword_268B41E28);
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v123[-v30];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BC0, &qword_268B41E30);
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_20_0();
  v128 = v36 - v37;
  OUTLINED_FUNCTION_8();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v123[-v40];
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v123[-v43];
  MEMORY[0x28223BE20](v42);
  v46 = &v123[-v45];
  sub_268B357C4();
  sub_268B35E94();

  if (!v140)
  {
    sub_2688C058C(&v138, &byte_2802A6450, &byte_268B3BE10);
    v48 = v135;
    v47 = v136;
    goto LABEL_24;
  }

  sub_268B36294();
  OUTLINED_FUNCTION_4_15();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v48 = v135;
    v47 = v136;
    goto LABEL_24;
  }

  v126 = a1;
  v127 = v137;
  if (sub_268B36274())
  {
    sub_268B357C4();
  }

  sub_268B35E94();

  if (!v140)
  {
    sub_2688C058C(&v138, &byte_2802A6450, &byte_268B3BE10);
    goto LABEL_15;
  }

  sub_268B35D54();
  OUTLINED_FUNCTION_4_15();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v53 = 1;
    a1 = v126;
    v48 = v135;
    v47 = v136;
    goto LABEL_16;
  }

  v125 = v137;
  sub_268B35D14();
  (*(v131 + 104))(v44, *MEMORY[0x277D5E880], v18);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v18);
  v49 = *(v26 + 48);
  sub_2688F1FA4(v46, v31, &qword_2802A6BC0, &qword_268B41E30);
  sub_2688F1FA4(v44, &v31[v49], &qword_2802A6BC0, &qword_268B41E30);
  OUTLINED_FUNCTION_124(v31);
  if (!v99)
  {
    sub_2688F1FA4(v31, v41, &qword_2802A6BC0, &qword_268B41E30);
    OUTLINED_FUNCTION_124(&v31[v49]);
    if (!v99)
    {
      v108 = v131;
      (*(v131 + 32))(v25, &v31[v49], v18);
      sub_2689BC814();
      v124 = sub_268B37BB4();
      v109 = *(v108 + 8);
      v109(v25, v18);
      sub_2688C058C(v44, &qword_2802A6BC0, &qword_268B41E30);
      sub_2688C058C(v46, &qword_2802A6BC0, &qword_268B41E30);
      v109(v41, v18);
      v52 = sub_2688C058C(v31, &qword_2802A6BC0, &qword_268B41E30);
      a1 = v126;
      v48 = v135;
      v47 = v136;
      if (v124)
      {
        goto LABEL_65;
      }

LABEL_58:

      v53 = 1;
      goto LABEL_16;
    }

    sub_2688C058C(v44, &qword_2802A6BC0, &qword_268B41E30);
    v100 = OUTLINED_FUNCTION_71_1();
    sub_2688C058C(v100, v101, &qword_268B41E30);
    (*(v131 + 8))(v41, v18);
LABEL_57:
    sub_2688C058C(v31, &qword_2802A6BB8, &qword_268B41E28);
    a1 = v126;
    v48 = v135;
    v47 = v136;
    goto LABEL_58;
  }

  sub_2688C058C(v44, &qword_2802A6BC0, &qword_268B41E30);
  v50 = OUTLINED_FUNCTION_71_1();
  sub_2688C058C(v50, v51, &qword_268B41E30);
  OUTLINED_FUNCTION_124(&v31[v49]);
  if (!v99)
  {
    goto LABEL_57;
  }

  v52 = sub_2688C058C(v31, &qword_2802A6BC0, &qword_268B41E30);
  a1 = v126;
  v48 = v135;
  v47 = v136;
LABEL_65:
  if (qword_2802A4F30 != -1)
  {
    v52 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_3_21(v52, qword_2802CDA10);
  v110 = v130;
  v111(v130);

  v46 = sub_268B37A34();
  v112 = sub_268B37ED4();

  if (os_log_type_enabled(v46, v112))
  {
    v113 = OUTLINED_FUNCTION_172_0();
    v114 = swift_slowAlloc();
    v137 = v114;
    *v113 = 136315138;
    v115 = v128;
    sub_268B35D14();
    OUTLINED_FUNCTION_124(v115);
    if (v99)
    {
      sub_2688C058C(v115, &qword_2802A6BC0, &qword_268B41E30);
      *&v116 = 0.0;
      v119 = 0;
    }

    else
    {
      *&v116 = COERCE_DOUBLE(sub_268B35D24());
      v117 = v115;
      v119 = v118;
      (*(v131 + 8))(v117, v18);
    }

    v138 = *&v116;
    v139 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
    v120 = sub_268B37C24();
    v122 = sub_26892CDB8(v120, v121, &v137);

    *(v113 + 4) = v122;
    _os_log_impl(&dword_2688BB000, v46, v112, "Multiplier value: %s", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v114);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v47 = v136;
    (*(v136 + 8))(v130, v48);
    v53 = 0;
  }

  else
  {

    (*(v47 + 8))(v110, v48);
    v53 = 0;
  }

LABEL_16:
  if (sub_268B36284())
  {
    sub_268B357C4();
  }

  sub_268B35E94();

  if (v140)
  {
    sub_268B35D74();
    OUTLINED_FUNCTION_4_15();
    if (swift_dynamicCast())
    {
      v54 = sub_268B35D64();
      if ((v55 & 1) == 0)
      {
        v102 = v54;
        if (qword_2802A4F30 != -1)
        {
          v54 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_3_21(v54, qword_2802CDA10);
        v103 = v129;
        v104(v129);
        v105 = sub_268B37A34();
        v106 = sub_268B37ED4();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = OUTLINED_FUNCTION_172_0();
          *v107 = 134217984;
          *(v107 + 4) = v102;
          _os_log_impl(&dword_2688BB000, v105, v106, "Number value: %lld", v107, 0xCu);
          OUTLINED_FUNCTION_12();
        }

        (*(v47 + 8))(v103, v48);
        v138 = v102;
        LOBYTE(v139) = 0;
        LOBYTE(v137) = v53;
        sub_268980810();
        sub_268B36644();

        goto LABEL_52;
      }
    }
  }

  else
  {

    sub_2688C058C(&v138, &byte_2802A6450, &byte_268B3BE10);
  }

LABEL_24:
  sub_268B357C4();
  sub_268B35E94();

  v56 = v134;
  if (v140)
  {
    sub_268B35D54();
    OUTLINED_FUNCTION_4_15();
    if (swift_dynamicCast())
    {
      v57 = sub_268B35D44();
      if (v58)
      {
        v59 = sub_2689BAB40(v57, v58);
        v60 = *&v59;
        LODWORD(v62) = v61;
        if (qword_2802A4F30 != -1)
        {
          v59 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_3_21(v59, qword_2802CDA10);
        v63 = v133;
        v64(v133);
        v65 = sub_268B37A34();
        v66 = sub_268B37ED4();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = OUTLINED_FUNCTION_172_0();
          LODWORD(v136) = v62;
          v62 = v67;
          v68 = swift_slowAlloc();
          v137 = v68;
          v138 = v60;
          *v62 = 136315138;
          LOBYTE(v139) = v136 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BD0, &qword_268B41E38);
          v69 = sub_268B37C24();
          v135 = *&v60;
          v71 = v48;
          v72 = a1;
          v73 = sub_26892CDB8(v69, v70, &v137);

          *(v62 + 4) = v73;
          a1 = v72;
          _os_log_impl(&dword_2688BB000, v65, v66, "Number value: %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v68);
          OUTLINED_FUNCTION_12();
          LOBYTE(v62) = v136;
          OUTLINED_FUNCTION_12();

          (*(v47 + 8))(v133, v71);
          v60 = *&v135;
        }

        else
        {

          (*(v47 + 8))(v63, v48);
        }

        v138 = v60;
        LOBYTE(v139) = v62 & 1;
LABEL_51:
        LOBYTE(v137) = 1;
        sub_268980810();
        sub_268B36644();
LABEL_52:

        v86 = 0;
        goto LABEL_53;
      }
    }
  }

  else
  {
    sub_2688C058C(&v138, &byte_2802A6450, &byte_268B3BE10);
  }

  sub_268B357C4();
  sub_268B35E94();

  if (v140)
  {
    sub_268B35D74();
    OUTLINED_FUNCTION_4_15();
    v74 = swift_dynamicCast();
    if (v74)
    {
      v75 = sub_268B35D64();
      if ((v76 & 1) == 0)
      {
        v87 = v75;
        if (qword_2802A4F30 != -1)
        {
          v75 = OUTLINED_FUNCTION_0_0();
        }

        v88 = v87;
        OUTLINED_FUNCTION_3_21(v75, qword_2802CDA10);
        v89 = v132;
        v90(v132);
        v91 = sub_268B37A34();
        v92 = sub_268B37ED4();
        if (os_log_type_enabled(v91, v92))
        {
          OUTLINED_FUNCTION_172_0();
          *&v93 = COERCE_DOUBLE(OUTLINED_FUNCTION_118_0());
          v138 = *&v93;
          *v46 = 136315138;
          v94 = sub_268B37DF4();
          v96 = sub_26892CDB8(v94, v95, &v138);

          *(v46 + 4) = v96;
          _os_log_impl(&dword_2688BB000, v91, v92, "Number value: %s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v93);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          (*(v47 + 8))(v132, v48);
        }

        else
        {

          (*(v47 + 8))(v89, v48);
        }

        v138 = v88;
        LOBYTE(v139) = 0;
        goto LABEL_51;
      }
    }
  }

  else
  {
    v74 = sub_2688C058C(&v138, &byte_2802A6450, &byte_268B3BE10);
  }

  if (qword_2802A4F30 != -1)
  {
    v74 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_3_21(v74, qword_2802CDA10);
  v77(v56);

  v78 = sub_268B37A34();
  v79 = sub_268B37EE4();

  if (os_log_type_enabled(v78, v79))
  {
    OUTLINED_FUNCTION_172_0();
    *&v80 = COERCE_DOUBLE(OUTLINED_FUNCTION_118_0());
    v137 = v2;
    v138 = *&v80;
    *v46 = 136315138;
    sub_268B35D04();

    v81 = sub_268B37C24();
    v83 = sub_26892CDB8(v81, v82, &v138);

    *(v46 + 4) = v83;
    OUTLINED_FUNCTION_19_9(&dword_2688BB000, v84, v85, "Number %s cannot be cast to MultipliedNumber, decimal or integer, returning nil.");
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v47 + 8))(v56, v48);
  v86 = 1;
LABEL_53:
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);
  return __swift_storeEnumTagSinglePayload(a1, v86, 1, v97);
}

uint64_t sub_2689BC188()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64B0, &qword_268B3F280);
  v2 = OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_6();
  v9 = sub_268B35CF4();
  v10 = OUTLINED_FUNCTION_16_13();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
  {
    sub_2688F1FA4(v0, v7, &qword_2802A64B0, &qword_268B3F280);
    v13 = *(v9 - 8);
    v14 = *(v13 + 88);
    v15 = OUTLINED_FUNCTION_71_1();
    v17 = v16(v15);
    if (v17 == *MEMORY[0x277D5E798])
    {
      v12 = 2;
      goto LABEL_9;
    }

    if (v17 == *MEMORY[0x277D5E7B0])
    {
      v12 = 1;
      goto LABEL_9;
    }

    if (v17 == *MEMORY[0x277D5E7B8])
    {
      v12 = 3;
      goto LABEL_9;
    }

    v19 = *(v13 + 8);
    v20 = OUTLINED_FUNCTION_71_1();
    v21(v20);
  }

  v12 = 7;
LABEL_9:
  sub_2688C058C(v0, &qword_2802A64B0, &qword_268B3F280);
  return v12;
}

uint64_t sub_2689BC314()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64B0, &qword_268B3F280);
  v2 = OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_20_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_6();
  v9 = sub_268B35CF4();
  v10 = OUTLINED_FUNCTION_16_13();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
  {
    sub_2688F1FA4(v0, v7, &qword_2802A64B0, &qword_268B3F280);
    v13 = *(v9 - 8);
    v14 = *(v13 + 88);
    v15 = OUTLINED_FUNCTION_71_1();
    v17 = v16(v15);
    if (v17 == *MEMORY[0x277D5E7D0])
    {
      v12 = 0;
      goto LABEL_7;
    }

    if (v17 == *MEMORY[0x277D5E7C8])
    {
      v12 = 1;
      goto LABEL_7;
    }

    v19 = *(v13 + 8);
    v20 = OUTLINED_FUNCTION_71_1();
    v21(v20);
  }

  v12 = 2;
LABEL_7:
  sub_2688C058C(v0, &qword_2802A64B0, &qword_268B3F280);
  return v12;
}

BOOL sub_2689BC484()
{
  sub_268B357C4();
  sub_268B36094();
  sub_268B35EA4();

  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_2689BC4EC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A64B0, &qword_268B3F280);
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32[-v6];
  v8 = sub_268B35CF4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v32[-v18];
  v20 = sub_2689BABA0();
  if ((v21 & 1) == 0)
  {
    v34 = v20;
    v35 = 0;
    v33 = 0;
    sub_2689473F4();
    sub_268B36644();
LABEL_12:
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
    v22 = a1;
    v23 = 0;
    return __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  }

  sub_268B35CE4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    (*(v11 + 32))(v19, v7, v8);
    (*(v11 + 16))(v16, v19, v8);
    v25 = (*(v11 + 88))(v16, v8);
    if (v25 == *MEMORY[0x277D5E7A8])
    {
      v26 = 0x3FF0000000000000;
    }

    else if (v25 == *MEMORY[0x277D5E7B0])
    {
      v26 = 0x4000000000000000;
    }

    else
    {
      if (v25 != *MEMORY[0x277D5E7B8])
      {
        v28 = *(v11 + 8);
        v28(v19, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
        v29 = OUTLINED_FUNCTION_16_13();
        __swift_storeEnumTagSinglePayload(v29, v30, 1, v31);
        return v28(v16, v8);
      }

      v26 = 0x3FE0000000000000;
    }

    v34 = v26;
    v35 = 0;
    v33 = 0;
    sub_2689473F4();
    sub_268B36644();
    (*(v11 + 8))(v19, v8);
    goto LABEL_12;
  }

  sub_2688C058C(v7, &qword_2802A64B0, &qword_268B3F280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
  v22 = OUTLINED_FUNCTION_16_13();
  return __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
}

unint64_t sub_2689BC814()
{
  result = qword_2802A6BC8;
  if (!qword_2802A6BC8)
  {
    sub_268B35D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6BC8);
  }

  return result;
}

_BYTE *sub_2689BC86C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_2689BC8D8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_268B381B4();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t OUTLINED_FUNCTION_3_21(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v3, a2);
  v5 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return sub_268B35EA4();
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return sub_268B35EA4();
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return sub_268B35CE4();
}

void OUTLINED_FUNCTION_19_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2689BCAAC()
{
  if (qword_2802A4DF8 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  OUTLINED_FUNCTION_34_3();

  v0 = sub_2689BEA60();

  return v0;
}

uint64_t *sub_2689BCB2C()
{
  if (qword_2802A4DF8 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  return &qword_2802A6BD8;
}

uint64_t sub_2689BCB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = sub_268B36954();
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[2] = a2;

  return MEMORY[0x2822009F8](sub_2689BCC94, 0, 0);
}

uint64_t sub_2689BCC94()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_2689BF0E0(v0[4], v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[9];
    sub_2689BED24(v0[6]);
    sub_2689BCAAC();
    OUTLINED_FUNCTION_30_6();
    v0[15] = v4;
    swift_getObjectType();
    sub_2689BF1A4();
    OUTLINED_FUNCTION_1_30();
    sub_2689BD944();
    OUTLINED_FUNCTION_1_30();
    v0[16] = sub_2689BD904();
    v5 = *(MEMORY[0x277CEB000] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v0[17] = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_4_16(v6);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_26_6();
    v10(v9);
    sub_2689BCAAC();
    OUTLINED_FUNCTION_30_6();
    v0[11] = v11;
    swift_getObjectType();
    sub_2689BF1A4();
    v0[12] = OUTLINED_FUNCTION_23_9();
    v12 = *(MEMORY[0x277CEB000] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v0[13] = v13;
    *v13 = v14;
    v8 = OUTLINED_FUNCTION_5_8(v13);
  }

  return MEMORY[0x28213DAA0](v8);
}

uint64_t sub_2689BCE54()
{
  OUTLINED_FUNCTION_17_11();
  v2 = *v1;
  OUTLINED_FUNCTION_3_22();
  *v4 = v3;
  v5 = v2[13];
  *v4 = *v1;
  *(v3 + 112) = v0;

  v6 = v2[12];
  v7 = v2[11];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2689BCFAC()
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[9];
  v9 = v4[8];
  v10 = v4[7];
  v11 = *v1;
  OUTLINED_FUNCTION_89();
  *v12 = v11;
  *(v13 + 144) = v0;

  (*(v9 + 8))(v8, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2689BD144()
{
  OUTLINED_FUNCTION_158();
  (*(v0[8] + 8))(v0[10], v0[7]);
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  OUTLINED_FUNCTION_222();

  return v4();
}

uint64_t sub_2689BD1CC()
{
  OUTLINED_FUNCTION_17_11();
  (*(v0[8] + 8))(v0[10], v0[7]);
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  OUTLINED_FUNCTION_222();

  return v5();
}

uint64_t sub_2689BD25C()
{
  OUTLINED_FUNCTION_158();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  OUTLINED_FUNCTION_222();

  return v4();
}

uint64_t sub_2689BD2CC()
{
  OUTLINED_FUNCTION_17_11();
  v1 = v0[18];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  OUTLINED_FUNCTION_222();

  return v5();
}

uint64_t sub_2689BD344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = sub_268B36954();
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[2] = a2;

  return MEMORY[0x2822009F8](sub_2689BD454, 0, 0);
}

uint64_t sub_2689BD454()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_2689BF0E0(v0[4], v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[9];
    sub_2689BED24(v0[6]);
    sub_2689BCAAC();
    OUTLINED_FUNCTION_30_6();
    v0[15] = v4;
    swift_getObjectType();
    sub_2689BF150();
    OUTLINED_FUNCTION_1_30();
    sub_2689BD944();
    OUTLINED_FUNCTION_1_30();
    v0[16] = sub_2689BD904();
    v5 = *(MEMORY[0x277CEB000] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v0[17] = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_4_16(v6);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_26_6();
    v10(v9);
    sub_2689BCAAC();
    OUTLINED_FUNCTION_30_6();
    v0[11] = v11;
    swift_getObjectType();
    sub_2689BF150();
    v0[12] = OUTLINED_FUNCTION_23_9();
    v12 = *(MEMORY[0x277CEB000] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_14();
    v0[13] = v13;
    *v13 = v14;
    v8 = OUTLINED_FUNCTION_5_8(v13);
  }

  return MEMORY[0x28213DAA0](v8);
}

uint64_t sub_2689BD614()
{
  OUTLINED_FUNCTION_17_11();
  v2 = *v1;
  OUTLINED_FUNCTION_3_22();
  *v4 = v3;
  v5 = v2[13];
  *v4 = *v1;
  *(v3 + 112) = v0;

  v6 = v2[12];
  v7 = v2[11];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2689BD76C()
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[9];
  v9 = v4[8];
  v10 = v4[7];
  v11 = *v1;
  OUTLINED_FUNCTION_89();
  *v12 = v11;
  *(v13 + 144) = v0;

  (*(v9 + 8))(v8, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2689BD904()
{
  v0 = sub_268B36914();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_268B36904();
}

uint64_t sub_2689BD944()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6C10, &qword_268B41F30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6C18, qword_268B41F38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_268B36BE4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_268B369D4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_268B36944();
  return sub_268B36934();
}

uint64_t sub_2689BDA7C()
{
  OUTLINED_FUNCTION_158();
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE8, &unk_268B41E50);
  v1[6] = v3;
  OUTLINED_FUNCTION_19_0(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_35_7();
  v1[9] = swift_task_alloc();
  v7 = sub_268B37A54();
  v1[10] = v7;
  OUTLINED_FUNCTION_19_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_35_7();
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2689BDBCC()
{
  OUTLINED_FUNCTION_127();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[13];
  v2 = v0[11];
  v3 = __swift_project_value_buffer(v0[10], qword_2802CDA10);
  v4 = OUTLINED_FUNCTION_10_13(v3);
  v5(v4);
  v6 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v8, v9, "AppIntentInvoker#invokeOpenAccessoryItemAppIntentForLyrics");
    OUTLINED_FUNCTION_12();
  }

  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[5];

  v14 = OUTLINED_FUNCTION_24_8();
  v15(v14);
  OUTLINED_FUNCTION_13_10();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5688, &qword_268B3BAF0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[18] = sub_268B369C4();
  v19 = sub_268B36954();
  OUTLINED_FUNCTION_33_6(v19);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v0[19] = v20;
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_19_10(v20);

  return sub_2689BCB84(v22, v23, v24);
}

uint64_t sub_2689BDD5C()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *(v4 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_89();
  *v8 = v7;
  *(v9 + 160) = v0;

  sub_2689BED24(v6);
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2689BDE74()
{
  v55 = v2;
  v9 = OUTLINED_FUNCTION_12_12();
  v10(v9);
  v11 = OUTLINED_FUNCTION_25_6();
  v12(v11);
  v13 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  os_log_type_enabled(v13, v14);
  OUTLINED_FUNCTION_14_9();
  if (v16)
  {
    v52 = v15;
    swift_slowAlloc();
    v48 = v0;
    v17 = OUTLINED_FUNCTION_31_7();
    v54 = v17;
    *v8 = 136315138;
    sub_2689BED8C();
    sub_268B38404();
    v18 = OUTLINED_FUNCTION_18_7();
    v7(v18);
    v19 = sub_26892CDB8(v4, v5, &v54);

    *(v8 + 4) = v19;
    OUTLINED_FUNCTION_22_7(&dword_2688BB000, v20, v21, "AppIntentInvoker#invokeOpenAccessoryItemAppIntentForLyrics response: %s", v22, v23, v24, v25, v44, v46, v48);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v34 = OUTLINED_FUNCTION_28_8(v26, v27, v28, v29, v30, v31, v32, v33, v45, v47, v49, v50, v52, v53);
    v35(v34);
    (v7)(v51, v3);
  }

  else
  {

    v36 = *(v6 + 8);
    v36(v1, v3);
    v4(v8);
    v36(v5, v3);
  }

  v38 = v2[12];
  v37 = v2[13];
  v40 = v2[8];
  v39 = v2[9];
  v41 = v2[5];

  OUTLINED_FUNCTION_222();

  return v42();
}

uint64_t sub_2689BE070()
{
  OUTLINED_FUNCTION_127();
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[5];

  OUTLINED_FUNCTION_222();
  v8 = v0[20];

  return v7();
}

uint64_t sub_2689BE110()
{
  OUTLINED_FUNCTION_158();
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE8, &unk_268B41E50);
  v1[6] = v3;
  OUTLINED_FUNCTION_19_0(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_35_7();
  v1[9] = swift_task_alloc();
  v7 = sub_268B37A54();
  v1[10] = v7;
  OUTLINED_FUNCTION_19_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_35_7();
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2689BE260()
{
  OUTLINED_FUNCTION_127();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[13];
  v2 = v0[11];
  v3 = __swift_project_value_buffer(v0[10], qword_2802CDA10);
  v4 = OUTLINED_FUNCTION_10_13(v3);
  v5(v4);
  v6 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_10_7(&dword_2688BB000, v8, v9, "AppIntentInvoker#invokeCloseAccessoryItemAppIntentForLyrics");
    OUTLINED_FUNCTION_12();
  }

  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[5];

  v14 = OUTLINED_FUNCTION_24_8();
  v15(v14);
  OUTLINED_FUNCTION_13_10();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5688, &qword_268B3BAF0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[18] = sub_268B369C4();
  v19 = sub_268B36954();
  OUTLINED_FUNCTION_33_6(v19);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_14();
  v0[19] = v20;
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_19_10(v20);

  return sub_2689BD344(v22, v23, v24);
}

uint64_t sub_2689BE3F0()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_3_22();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *(v4 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_89();
  *v8 = v7;
  *(v9 + 160) = v0;

  sub_2689BED24(v6);
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2689BE508()
{
  v55 = v2;
  v9 = OUTLINED_FUNCTION_12_12();
  v10(v9);
  v11 = OUTLINED_FUNCTION_25_6();
  v12(v11);
  v13 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_27_7();
  os_log_type_enabled(v13, v14);
  OUTLINED_FUNCTION_14_9();
  if (v16)
  {
    v52 = v15;
    swift_slowAlloc();
    v48 = v0;
    v17 = OUTLINED_FUNCTION_31_7();
    v54 = v17;
    *v8 = 136315138;
    sub_2689BED8C();
    sub_268B38404();
    v18 = OUTLINED_FUNCTION_18_7();
    v7(v18);
    v19 = sub_26892CDB8(v4, v5, &v54);

    *(v8 + 4) = v19;
    OUTLINED_FUNCTION_22_7(&dword_2688BB000, v20, v21, "AppIntentInvoker#invokeCloseAccessoryItemAppIntentForLyrics response: %s", v22, v23, v24, v25, v44, v46, v48);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v34 = OUTLINED_FUNCTION_28_8(v26, v27, v28, v29, v30, v31, v32, v33, v45, v47, v49, v50, v52, v53);
    v35(v34);
    (v7)(v51, v3);
  }

  else
  {

    v36 = *(v6 + 8);
    v36(v1, v3);
    v4(v8);
    v36(v5, v3);
  }

  v38 = v2[12];
  v37 = v2[13];
  v40 = v2[8];
  v39 = v2[9];
  v41 = v2[5];

  OUTLINED_FUNCTION_222();

  return v42();
}

uint64_t sub_2689BE71C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2688C8B94;

  return sub_2689BDA7C();
}

uint64_t sub_2689BE7AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2688EA0F0;

  return sub_2689BE110();
}

uint64_t sub_2689BE83C()
{
  type metadata accessor for AppIntentInvokerContext();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  qword_2802A6BD8 = result;
  return result;
}

uint64_t static AppIntentInvokerContext.shared.getter()
{
  if (qword_2802A4DF8 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  OUTLINED_FUNCTION_34_3();
}

uint64_t static AppIntentInvokerContext.shared.setter(uint64_t a1)
{
  if (qword_2802A4DF8 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  swift_beginAccess();
  qword_2802A6BD8 = a1;
}

uint64_t (*static AppIntentInvokerContext.shared.modify())()
{
  if (qword_2802A4DF8 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2689BE9B0@<X0>(void *a1@<X8>)
{
  sub_2689BCB2C();
  swift_beginAccess();
  *a1 = qword_2802A6BD8;
}

uint64_t sub_2689BEA04(uint64_t *a1)
{
  v1 = *a1;

  sub_2689BCB2C();
  swift_beginAccess();
  qword_2802A6BD8 = v1;
}

uint64_t sub_2689BEA60()
{
  v1 = sub_268B36984();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BF8, &qword_268B41F28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_268B369B4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v27[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    v19 = *(v0 + 24);
    v20 = *(v0 + 16);
  }

  else
  {
    v21 = [objc_opt_self() defaultEnvironment];
    v27[3] = sub_2689BF09C();
    v27[4] = MEMORY[0x277CEB188];
    v27[0] = v21;
    sub_268B36974();
    (*(v4 + 104))(v8, *MEMORY[0x277CEB068], v1);
    sub_268B369A4();
    v20 = sub_268B36994();
    v23 = v22;
    (*(v14 + 8))(v18, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v24 = *(v0 + 16);
    *(v0 + 16) = v20;
    *(v0 + 24) = v23;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v20;
}

uint64_t AppIntentInvokerContext.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AppIntentInvokerContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2689BED24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2689BED8C()
{
  result = qword_2802A6BF0;
  if (!qword_2802A6BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A6BE8, &unk_268B41E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6BF0);
  }

  return result;
}

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenAccessoryItemAppIntentForLyrics()()
{
  OUTLINED_FUNCTION_17_11();
  v2 = *(*v0 + 112);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2688C8B94;

  return v6();
}

uint64_t dispatch thunk of AppIntentInvoker.invokeCloseAccessoryItemAppIntentForLyrics()()
{
  OUTLINED_FUNCTION_17_11();
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2688EA0F0;

  return v6();
}

unint64_t sub_2689BF09C()
{
  result = qword_2802A6C00;
  if (!qword_2802A6C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A6C00);
  }

  return result;
}

uint64_t sub_2689BF0E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6BE0, &qword_268B41E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2689BF150()
{
  result = qword_2802A6C08;
  if (!qword_2802A6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C08);
  }

  return result;
}

unint64_t sub_2689BF1A4()
{
  result = qword_2802A6C20;
  if (!qword_2802A6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6 = *(v2 + 72);
  result = *(v2 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6 = *(v2 + 80);
  result = *(v2 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t a1)
{
  v3[14] = a1;
  v3[15] = *(v2 + 16);
  v3[16] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_12_12()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  return v0[12];
}

void OUTLINED_FUNCTION_14_9()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[11];
  v4 = v0[9];
  v8 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
}

uint64_t OUTLINED_FUNCTION_19_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[9];
  v5 = v2[4];
  v4 = v2[5];
  return result;
}

void OUTLINED_FUNCTION_22_7(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return sub_2689BD904();
}

uint64_t OUTLINED_FUNCTION_26_6()
{
  result = v0[10];
  v2 = v0[7];
  v3 = v0[6];
  v4 = *(v0[8] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_35_7()
{

  return swift_task_alloc();
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenAccessoryItemAppIntentForLyrics()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v9 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v6 = OUTLINED_FUNCTION_0_25(v5);

  return v7(v6);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeCloseAccessoryItemAppIntentForLyrics()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v9 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v6 = OUTLINED_FUNCTION_0_25(v5);

  return v7(v6);
}

id sub_2689BF6D0()
{
  if (qword_2802A4D60 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD908;
  qword_2802CD950 = qword_2802CD908;

  return v1;
}

void sub_2689BF734()
{
  OUTLINED_FUNCTION_26();
  v52 = v0;
  v2 = v1;
  v4 = v3;
  v48 = v6;
  v49 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v50 = *(v12 + 16);
  v51 = v19;
  v50(v18);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    v47 = v8;
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "ResumeMediaHandleIntentStrategy.makeIntentHandledResponse()", v22, 2u);
    v8 = v47;
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v12 + 8);
  v23(v18, v9);
  v24 = sub_268B18100();
  if (v24)
  {
    v25 = v24;
    if (sub_2688EFD0C(v24))
    {
      v26 = v8;
      v56 = 0;
      v27 = v52;
      v53 = sub_268AAC34C(v52 + 2, v25, &v56);
      *v55 = 0;
      v55[2] = 0;
      *&v55[8] = 0;
      *&v55[16] = 0;
      *&v55[24] = 1;
      memset(&v55[32], 0, 59);
      memcpy(v57, &v55[8], 0x51uLL);
      sub_2688C058C(v57, &qword_2802A5C88, qword_268B418C0);
      *&v55[8] = 0;
      memset(&v55[16], 0, 72);
      v55[88] = 1;
      sub_268AE35C0();

      v28 = *__swift_project_boxed_opaque_existential_1(v27 + 8, v27[11]);
      if (v28 && (v29 = OUTLINED_FUNCTION_28_1(), v30 = [v28 BOOLForKey_], v29, (v30 & 1) != 0))
      {
        v31 = 1;
      }

      else
      {
        v31 = v56;
      }

      v32 = v27[7];
      memcpy(v58, v55, 0x5BuLL);
      v33 = swift_allocObject();
      *(v33 + 16) = v27;
      *(v33 + 24) = v26;
      v34 = v48;
      v35 = v49;
      *(v33 + 32) = v48;
      *(v33 + 40) = v35;
      *(v33 + 48) = v53;
      *(v33 + 56) = v4;
      *(v33 + 64) = v2;
      *(v33 + 72) = v31;

      v36 = v26;
      v37 = v34;

      sub_268AB01E0(v58, 1, sub_2689C3F38, v33);

      memcpy(v54, v55, 0x5BuLL);
      sub_2689C3F70(v54);
      goto LABEL_16;
    }
  }

  (v50)(v53, v51, v9);
  v38 = sub_268B37A34();
  v39 = sub_268B37EE4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_14();
    *v40 = 0;
    _os_log_impl(&dword_2688BB000, v38, v39, "No device found in intent", v40, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23(v53, v9);
  v41 = __swift_project_boxed_opaque_existential_1(v52 + 13, v52[16]);
  sub_2688C2ECC();
  v42 = OUTLINED_FUNCTION_26_1();
  *v43 = 46;
  v44 = *v41;
  sub_26894B450();

  v45 = OUTLINED_FUNCTION_26_1();
  *v46 = 46;
  v58[0] = v45;
  LOBYTE(v58[5]) = 1;
  v4(v58);
  sub_2688C058C(v58, &unk_2802A57C0, &qword_268B3BE00);
LABEL_16:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689BFBE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8, char a9)
{
  v67 = a8;
  v68 = a7;
  v58 = a6;
  v65 = a3;
  v66 = a5;
  v60 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v58 - v19;
  v64 = sub_268B34E24();
  v62 = *(v64 - 8);
  v20 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v58 - v31);
  sub_2688F1FA4(a1, &v58 - v31, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    v34 = sub_268B36E84();
    if (v35)
    {
      v60 = v34;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v60 = v45;
    }

    v36 = a2;
    v46 = __swift_project_boxed_opaque_existential_1(v36 + 13, v36[16]);
    (*(v62 + 104))(v61, *MEMORY[0x277D5BC00], v64);
    v47 = sub_268B350F4();
    v48 = v63;
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v47);
    v49 = sub_268B34B94();
    v50 = v59;
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v49);
    v51 = *v46;
    sub_2688F1FA4(v48, v18, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v18, 1, v47) == 1)
    {
      sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v47 - 8) + 8))(v18, v47);
    }

    v52 = v61;
    sub_2688E2390();

    sub_2688C058C(v50, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v63, &unk_2802A57B0, &unk_268B3CE00);
    (*(v62 + 8))(v52, v64);
    v53 = __swift_project_boxed_opaque_existential_1(v36 + 13, v36[16]);
    sub_2688C2ECC();
    v54 = swift_allocError();
    *v55 = 48;
    v56 = *v53;
    sub_26894B450();

    v69[0] = v33;
    v70 = 1;
    v57 = v33;
    v68(v69);

    return sub_2688C058C(v69, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v37 = v60;
    sub_2689186C8(v32, v28);
    v38 = a2[22];
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    v39 = sub_268B36FA4();
    sub_2688F1FA4(v28, v26, &unk_2802A56E0, &unk_268B3CDF0);
    v40 = *(v22 + 48);
    v41 = *&v26[v40];
    if (v39)
    {
      v42 = *&v26[v40];
      sub_2689C0244();
    }

    else
    {
      sub_2689C0EB8(v26, v41, v65, v37, v66, a9 & 1, v58, v68, v67);
    }

    sub_2688C058C(v28, &unk_2802A56E0, &unk_268B3CDF0);
    v43 = sub_268B350F4();
    return (*(*(v43 - 8) + 8))(v26, v43);
  }
}

void sub_2689C0244()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v80 = v2;
  v81 = v3;
  v79 = v4;
  v83 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_268B35044();
  v13 = OUTLINED_FUNCTION_1(v12);
  v84 = v14;
  v85 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v82 = v18 - v17;
  v19 = sub_268B37A54();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v29 = OUTLINED_FUNCTION_1(v28);
  *(&v75 + 1) = v30;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v76 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v86 = &v68 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v68 - v36;
  v38 = sub_268B350F4();
  v77 = *(v38 - 8);
  v78 = v38;
  (*(v77 + 16))(v37, v11);
  *&v37[*(v28 + 48)] = v9;
  v39 = qword_2802A4F30;
  v40 = v9;
  if (v39 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v41 = __swift_project_value_buffer(v19, qword_2802CDA10);
  (*(v22 + 16))(v27, v41, v19);
  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_14();
    *&v75 = v28;
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "ResumeMediaHandleIntentStrategy#intentHandledResponse...", v44, 2u);
    v28 = v75;
    OUTLINED_FUNCTION_12();
  }

  (*(v22 + 8))(v27, v19);
  sub_26890C900((v1 + 33), v87);
  v72 = v89;
  v73 = v88;
  *&v75 = __swift_project_boxed_opaque_existential_1(v87, v88);
  v45 = v86;
  sub_2688F1FA4(v37, v86, &unk_2802A56E0, &unk_268B3CDF0);
  v74 = *(v45 + *(v28 + 48));
  if (sub_268B18100())
  {
    v46 = v1[38];
    sub_268921344();
    v48 = v47;

    if (v48[2])
    {
      v49 = v48[5];
      v70 = v48[4];
      v71 = v49;
    }

    else
    {
      OUTLINED_FUNCTION_6_19();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
  }

  v50 = *__swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  if (v50)
  {
    v51 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v69) = [v50 BOOLForKey_];
  }

  else
  {
    HIDWORD(v69) = 0;
  }

  v52 = v82;
  sub_268A82B50(v7, v82);
  v53 = sub_2689F0948();
  v54 = v76;
  sub_2688F1FA4(v37, v76, &unk_2802A56E0, &unk_268B3CDF0);
  v55 = (*(*(&v75 + 1) + 80) + 40) & ~*(*(&v75 + 1) + 80);
  v56 = v37;
  v57 = v7;
  v58 = (v32 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v59[2] = v57;
  v59[3] = v1;
  v59[4] = v80;
  sub_2689186C8(v54, v59 + v55);
  v60 = (v59 + v58);
  v61 = v81;
  *v60 = v79;
  v60[1] = v61;
  v62 = v57;

  LOBYTE(v66) = v53 & 1;
  v63 = (v1 + 23);
  v64 = v86;
  v65 = v74;
  sub_268A83648(v86, v74, v70, v71, HIDWORD(v69), v83, v52, v63, v66, sub_2689C3E24, v59, v73, v72, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);

  (*(v84 + 8))(v52, v85);
  sub_2688C058C(v56, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v77 + 8))(v64, v78);
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v69 = a2;
  v70 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v54 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v13 = v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v21 = sub_268B34E24();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v59 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v54 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v57 = v25[2];
  v58 = v31;
  v57(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = v13;
    v35 = a5;
    v36 = v25;
    v37 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "ResumeMediaHandleIntentStrategy#intentHandledResponse output has been created.", v34, 2u);
    v38 = v37;
    v25 = v36;
    a5 = v35;
    v13 = v61;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v39 = v25[1];
  v61 = (v25 + 1);
  v56 = v39;
  v39(v30, v24);
  sub_268947F08();
  v54[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1((v70 + 104), *(v70 + 128));
  (*(v66 + 104))(v65, *MEMORY[0x277D5BC10], v67);
  sub_2688F1FA4(a5, v13, &unk_2802A56E0, &unk_268B3CDF0);

  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v20, v13, v42);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v44 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v44);
  v45 = *v41;
  sub_2688F1FA4(v20, v18, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
  {
    sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v43 + 8))(v18, v42);
  }

  v46 = v65;
  v47 = v68;
  sub_2688E2390();

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  (*(v66 + 8))(v46, v67);
  v48 = *__swift_project_boxed_opaque_existential_1((v70 + 104), *(v70 + 128));
  sub_26894B450();
  v49 = v59;
  (v57)(v59, v58, v24);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "ResumeMediaHandleIntentStrategy#intentHandledResponse returning output", v52, 2u);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  v56(v49, v24);
  return v64(v62);
}

uint64_t sub_2689C1304(void *a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9)
{
  v96 = a8;
  v97 = a7;
  v93 = a6;
  v95 = a5;
  v102 = a3;
  LODWORD(v92) = a2;
  v98 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v85 - v12;
  v91 = sub_268B35044();
  v89 = *(v91 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v94 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = &v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v85 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v86 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v87 = &v85 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v85 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v85 - v36;
  v38 = sub_268B34E24();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v85 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v85 - v45;
  v100 = v44;
  v101 = a4;
  v99 = v39;
  if (v92)
  {
    v47 = v93;
    sub_268B36E84();
    if (!v48)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v70 = v99;
    v69 = v100;
    v71 = v86;
    v72 = __swift_project_boxed_opaque_existential_1(v101 + 13, v101[16]);
    (*(v70 + 104))(v43, *MEMORY[0x277D5BC00], v69);
    sub_2688F1FA4(v47, v24, &unk_2802A56E0, &unk_268B3CDF0);

    v73 = sub_268B350F4();
    v74 = *(v73 - 8);
    v75 = v87;
    (*(v74 + 32))(v87, v24, v73);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v73);
    v76 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v76);
    v77 = *v72;
    sub_2688F1FA4(v75, v71, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v71, 1, v73) == 1)
    {
      sub_2688C058C(v71, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v74 + 8))(v71, v73);
    }

    v78 = v94;
    sub_2688E2390();

    sub_2688C058C(v78, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v75, &unk_2802A57B0, &unk_268B3CE00);
    (*(v99 + 8))(v43, v100);
    v79 = __swift_project_boxed_opaque_existential_1(v101 + 13, v101[16]);
    sub_2688C2ECC();
    v80 = swift_allocError();
    *v81 = 47;
    v82 = *v79;
    sub_26894B450();

    v105[0] = v98;
    v108 = 1;
    v83 = v98;
  }

  else
  {
    v94 = a9;
    sub_268947F08();
    v87 = v49;
    v92 = v50;
    v51 = __swift_project_boxed_opaque_existential_1(a4 + 13, a4[16]);
    (*(v39 + 104))(v46, *MEMORY[0x277D5BC10], v38);
    sub_2688F1FA4(v93, v26, &unk_2802A56E0, &unk_268B3CDF0);

    v52 = sub_268B350F4();
    v53 = *(v52 - 8);
    (*(v53 + 32))(v37, v26, v52);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v52);
    v54 = sub_268B34B94();
    v55 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v54);
    v56 = *v51;
    sub_2688F1FA4(v37, v35, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v35, 1, v52) == 1)
    {
      sub_2688C058C(v35, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v53 + 8))(v35, v52);
    }

    v57 = v102;
    sub_2688E2390();

    sub_2688C058C(v55, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v37, &unk_2802A57B0, &unk_268B3CE00);
    (*(v99 + 8))(v46, v100);
    v58 = v101;
    v59 = *__swift_project_boxed_opaque_existential_1(v101 + 13, v101[16]);
    sub_26894B450();
    v60 = __swift_project_boxed_opaque_existential_1(v58 + 13, v58[16]);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v105[0] = v98;
    v61 = *v60;

    sub_268948494(v105);
    sub_2688C058C(v105, &byte_2802A6450, &byte_268B3BE10);
    v62 = v88;
    sub_268A82B50(v57, v88);
    v106 = sub_268B354F4();
    v107 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v105);
    v63 = 0;
    if (sub_2689F0948())
    {
      v63 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688C063C();
      v64 = sub_268B38064();
      [v63 setMinimumAutoDismissalTimeInMs_];

      [v63 setPremptivelyResumeMedia_];
    }

    v65 = v58[6];
    __swift_project_boxed_opaque_existential_1(v58 + 2, v58[5]);
    sub_268B34CA4();
    v66 = v89;
    v67 = v90;
    v68 = v91;
    (*(v89 + 16))(v90, v62, v91);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v68);
    v104 = 0;
    memset(v103, 0, sizeof(v103));
    sub_268B34EF4();

    sub_2688C058C(v103, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v67, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v66 + 8))(v62, v68);
    v108 = 0;
  }

  v97(v105);
  return sub_2688C058C(v105, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_2689C1E84()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v105 = v2;
  v104 = v3;
  v5 = v4;
  v108 = v6;
  v113 = v7;
  v99 = sub_268B367A4();
  v8 = OUTLINED_FUNCTION_1(v99);
  v98 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v97 = v13 - v12;
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v94 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v94 - v26;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v101 = v22;
  v28 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v29 = *(v17 + 16);
  v110 = v28;
  v111 = v17 + 16;
  v109 = v29;
  v29(v27);
  v30 = sub_268B37A34();
  v31 = sub_268B37ED4();
  v32 = os_log_type_enabled(v30, v31);
  v106 = v1;
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_14();
    *v33 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "ResumeMediaHandleIntentStrategy.makeFailureHandlingIntentResponse()", v33, 2u);
    OUTLINED_FUNCTION_12();
  }

  v112 = *(v17 + 8);
  v112(v27, v14);
  v34 = sub_268B36E84();
  v107 = v17 + 8;
  if (v35)
  {
    v102 = v35;
    v103 = v34;
  }

  else
  {
    v36 = OBJC_IVAR___ResumeMediaIntentResponse_code;
    swift_beginAccess();
    v114[1] = *(v5 + v36);
    sub_268B38404();
    sub_268947F08();
    v103 = v37;
    v102 = v38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v40 = OBJC_IVAR___ResumeMediaIntentResponse_code;
  swift_beginAccess();
  v114[0] = *(v5 + v40);
  sub_268B38404();
  v41 = sub_268B36E94();
  v43 = v42;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v41;
  *(inited + 56) = v43;
  v44 = sub_268B37B84();
  sub_268B36754();
  v45 = sub_268B36734();
  v100 = v44;
  if (!v45)
  {
    v45 = sub_268B36744();
  }

  v46 = v45;
  v47 = v25;
  OUTLINED_FUNCTION_8_13();
  v48();

  v49 = sub_268B37A34();
  v50 = sub_268B37ED4();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v96 = v14;
    v52 = v51;
    v53 = swift_slowAlloc();
    v114[0] = v53;
    *v52 = 136315138;
    sub_268B36714();
    v54 = v97;
    sub_268B36B14();

    v55 = sub_268B36784();
    v95 = v47;
    v57 = v56;
    (*(v98 + 8))(v54, v99);
    v58 = sub_26892CDB8(v55, v57, v114);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_2688BB000, v49, v50, "ResumeMediaHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    OUTLINED_FUNCTION_12();
    v14 = v96;
    OUTLINED_FUNCTION_12();

    v59 = v95;
  }

  else
  {

    v59 = v25;
  }

  v112(v59, v14);
  v60 = v105;
  v61 = v108;
  v62 = swift_allocObject();
  v63 = v106;
  v62[2] = v46;
  v62[3] = v63;
  v62[4] = v113;
  v62[5] = v61;
  v64 = v102;
  v62[6] = v103;
  v62[7] = v64;
  v62[8] = v104;
  v62[9] = v60;
  if (*(v5 + v40) != 102 || qword_2802A6C28 >= 2)
  {
    qword_2802A6C28 = 0;
  }

  v66 = v61;

  v67 = sub_268B18100();
  v68 = sub_268A90E50(v67);

  if (v68)
  {
    v69 = *(v63 + 56);
    v70 = "#TimedOutForCanBeNowPlaying";
    v71 = v69[5];
    v72 = v69[6];
    __swift_project_boxed_opaque_existential_1(v69 + 2, v71);
    OUTLINED_FUNCTION_0_26();
    v75 = v74 + 21;
LABEL_20:
    sub_2689CE860(v75, v70 | 0x8000000000000000, v100, v73, v62, v71, v72);
    goto LABEL_21;
  }

  v81 = *(v5 + v40);
  if (v81 != 102)
  {
    if (v81 == 101)
    {
      v84 = *(v63 + 56);
      v70 = "PlaybackControls#ResumeFailed";
      v71 = v84[5];
      v72 = v84[6];
      __swift_project_boxed_opaque_existential_1(v84 + 2, v71);
      OUTLINED_FUNCTION_0_26();
      v75 = v85 + 16;
    }

    else
    {
      if (v81 != 100)
      {
        type metadata accessor for ErrorFilingHelper();
        static ErrorFilingHelper.setupAdditionalTTRInfo(intentResponse:params:)();
        v88 = v87;

        v89 = *(v63 + 56);
        v90 = v89[5];
        v91 = v89[6];
        __swift_project_boxed_opaque_existential_1(v89 + 2, v90);
        OUTLINED_FUNCTION_0_26();
        sub_2689CE860(v92 + 13, 0x8000000268B59520, v88, v93, v62, v90, v91);
        goto LABEL_21;
      }

      v82 = *(v63 + 56);
      v70 = "#NoContentToPlay";
      v71 = v82[5];
      v72 = v82[6];
      __swift_project_boxed_opaque_existential_1(v82 + 2, v71);
      OUTLINED_FUNCTION_0_26();
      v75 = v83 + 27;
    }

    goto LABEL_20;
  }

  if (__OFADD__(qword_2802A6C28, 1))
  {
    __break(1u);
    return;
  }

  ++qword_2802A6C28;
  v86 = *(v63 + 56);
  sub_268AAEAE0();
LABEL_21:
  v76 = v101;

  OUTLINED_FUNCTION_8_13();
  v77();
  v78 = sub_268B37A34();
  v79 = sub_268B37ED4();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 134217984;
    *(v80 + 4) = qword_2802A6C28;
    _os_log_impl(&dword_2688BB000, v78, v79, "ResumeMediaHandleIntentStrategy#makeFailureHandlingIntentResponse no network counter: %ld", v80, 0xCu);
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  v112(v76, v14);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C27DC(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
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
      _os_log_impl(&dword_2688BB000, v52, v53, "ResumeMediaHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v57, 2u);
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
    sub_2688E2390();

    sub_2688C058C(v62, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v56, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v81, v55);
    v82 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    sub_2688C2ECC();
    v83 = swift_allocError();
    *v84 = -91;
    v85 = *v82;
    sub_26894B450();

    v86 = swift_allocError();
    *v87 = -91;
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
      _os_log_impl(&dword_2688BB000, v66, v67, "ResumeMediaHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v68, 2u);
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
    sub_2688E2390();

    sub_2688C058C(v77, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v118, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v89, v71);
    v90 = __swift_project_boxed_opaque_existential_1(v128 + 13, v128[16]);
    sub_2688C2ECC();
    v91 = swift_allocError();
    *v92 = 49;
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
      _os_log_impl(&dword_2688BB000, v95, v96, "ResumeMediaHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v97, 2u);
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

uint64_t sub_2689C35A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689C3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689C369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689C373C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689C37B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_2689C3858()
{
  if (qword_2802A4E00 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD950;

  return v1;
}

uint64_t sub_2689C38B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_2689C3904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_2689C3958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeMediaHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_2689C39C4(uint64_t a1)
{
  result = sub_2689C39EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689C39EC()
{
  result = qword_2802A6C30;
  if (!qword_2802A6C30)
  {
    type metadata accessor for ResumeMediaHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C30);
  }

  return result;
}

uint64_t sub_2689C3A44()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2689C3AA4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  return sub_2689C2724();
}

uint64_t sub_2689C3B00()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v1 + 24);

  v11 = *(v1 + 32);

  v12 = v1 + v5;
  v13 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v13);
  (*(v14 + 8))(v12);

  v15 = *(v1 + v7 + 8);

  v16 = *(v1 + v8);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v4 | 7);
}

uint64_t sub_2689C3C38(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_2689C1304(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8));
}

uint64_t sub_2689C3D14()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 8))(v10);

  v13 = *(v1 + v7 + 8);

  return MEMORY[0x2821FE8E8](v1, v7 + 16, v4 | 7);
}

uint64_t sub_2689C3E24(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_2689C07F8(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_2689C3ED8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

void OUTLINED_FUNCTION_8_13()
{
  v1 = *(v0 - 256);
  v2 = *(v0 - 248);
  v3 = *(v0 - 264);
}

void sub_2689C4018()
{
  OUTLINED_FUNCTION_26();
  v75 = v2;
  v3 = sub_268B35434();
  v4 = OUTLINED_FUNCTION_1(v3);
  v70 = v5;
  v71 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v69 = v9 - v8;
  OUTLINED_FUNCTION_9();
  v66 = sub_268B35494();
  v10 = OUTLINED_FUNCTION_4(v66);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48_4();
  v20 = type metadata accessor for MediaPlayerIntent();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v72 = v25 - v24;
  OUTLINED_FUNCTION_9();
  v26 = sub_268B37A54();
  v27 = OUTLINED_FUNCTION_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  v65 = v32 - v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  v67 = v35;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18();
  v68 = v37;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v73 = __swift_project_value_buffer(v26, qword_2802CDA10);
  v74 = *(v29 + 16);
  v74(v0);
  v39 = sub_268B37A34();
  v40 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_38_2(v40))
  {
    v41 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_136_0(v41);
    OUTLINED_FUNCTION_49_3(&dword_2688BB000, v42, v43, "ConfirmIntentStrategy.actionForInput()");
    OUTLINED_FUNCTION_12();
  }

  v44 = *(v29 + 8);
  v45 = v26;
  v44(v0, v26);
  sub_268B35414();
  sub_26893BA8C(v15);
  if (__swift_getEnumTagSinglePayload(v1, 1, v20) == 1)
  {
    sub_2688C058C(v1, &qword_2802A5650, &unk_268B3BAC0);
    (v74)(v68, v73, v26);
    (*(v70 + 16))(v69, v75, v71);
    v46 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_172_0();
      v49 = OUTLINED_FUNCTION_173_0();
      v76 = v49;
      *v48 = 136315138;
      sub_268B35414();
      v50 = sub_268B37C24();
      v51 = v45;
      v53 = v52;
      (*(v70 + 8))(v69, v71);
      v54 = sub_26892CDB8(v50, v53, &v76);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_2688BB000, v46, v44, "Received unexpected parse: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v44(v68, v51);
    }

    else
    {

      (*(v70 + 8))(v69, v71);
      v44(v68, v45);
    }

    sub_268B34ED4();
  }

  else
  {
    sub_2689C963C(v1, v72, type metadata accessor for MediaPlayerIntent);
    switch(*(v72 + *(v20 + 36)))
    {
      case 2:

        goto LABEL_14;
      case 3:
        (v74)(v65, v73, v26);
        v61 = sub_268B37A34();
        v62 = sub_268B37F04();
        if (OUTLINED_FUNCTION_19(v62))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_23_4(&dword_2688BB000, v63, v64, "No confirmation response in the intent, ignoring input");
          OUTLINED_FUNCTION_12();
        }

        v44(v65, v45);
        sub_268B34ED4();
        break;
      default:
        v55 = OUTLINED_FUNCTION_32_4();

        if (v55)
        {
LABEL_14:
          (v74)(v67, v73, v45);
          v56 = sub_268B37A34();
          sub_268B37F04();
          OUTLINED_FUNCTION_89_2();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_136_0(v58);
            OUTLINED_FUNCTION_52_5(&dword_2688BB000, v59, v60, "Cancelling due to confirmation value in intent");
            OUTLINED_FUNCTION_12();
          }

          v44(v67, v45);
          sub_268B34EB4();
        }

        else
        {
          sub_268B34EC4();
        }

        break;
    }

    sub_2688E73C0(v72, type metadata accessor for MediaPlayerIntent);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689C4664()
{
  OUTLINED_FUNCTION_26();
  v78 = v2;
  v3 = sub_268B35434();
  v4 = OUTLINED_FUNCTION_1(v3);
  v73 = v5;
  v74 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v72 = v9 - v8;
  OUTLINED_FUNCTION_9();
  v70 = sub_268B35494();
  v10 = OUTLINED_FUNCTION_4(v70);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v80 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_48_4();
  v19 = type metadata accessor for MediaIntent();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v75 = v24 - v23;
  OUTLINED_FUNCTION_9();
  v25 = sub_268B37A54();
  v26 = OUTLINED_FUNCTION_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_0();
  v69 = v31 - v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18();
  v71 = v34;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  v76 = v36;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v38 = __swift_project_value_buffer(v25, qword_2802CDA10);
  v77 = *(v28 + 16);
  v77(v0, v38, v25);
  v39 = sub_268B37A34();
  v40 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_38_2(v40))
  {
    v41 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_136_0(v41);
    OUTLINED_FUNCTION_49_3(&dword_2688BB000, v42, v43, "ConfirmIntentStrategy.actionForInput()");
    OUTLINED_FUNCTION_12();
  }

  v44 = *(v28 + 8);
  v45 = v25;
  v44(v0, v25);
  sub_268B35414();
  sub_26892E840(v80);
  if (__swift_getEnumTagSinglePayload(v1, 1, v19) == 1)
  {
    sub_2688C058C(v1, &qword_2802A59A0, &unk_268B3F0C0);
    v77(v76, v38, v25);
    (*(v73 + 16))(v72, v78, v74);
    v46 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v46, v47))
    {
      v79 = v44;
      v48 = OUTLINED_FUNCTION_172_0();
      v49 = OUTLINED_FUNCTION_173_0();
      v81 = v49;
      *v48 = 136315138;
      sub_268B35414();
      v50 = sub_268B37C24();
      v51 = v45;
      v53 = v52;
      (*(v73 + 8))(v72, v74);
      v54 = sub_26892CDB8(v50, v53, &v81);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_2688BB000, v46, v38, "Received unexpected parse: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v79(v76, v51);
    }

    else
    {

      (*(v73 + 8))(v72, v74);
      v44(v76, v45);
    }

    sub_268B34ED4();
  }

  else
  {
    sub_2689C963C(v1, v75, type metadata accessor for MediaIntent);
    switch(*(v75 + 24))
    {
      case 2:

        goto LABEL_14;
      case 3:
        v63 = OUTLINED_FUNCTION_41_1();
        v64(v63);
        v65 = sub_268B37A34();
        v66 = sub_268B37F04();
        if (OUTLINED_FUNCTION_19(v66))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_23_4(&dword_2688BB000, v67, v68, "No confirmation response in the intent, ignoring input");
          OUTLINED_FUNCTION_12();
        }

        v44(v69, v45);
        sub_268B34ED4();
        break;
      default:
        v55 = OUTLINED_FUNCTION_32_4();

        if (v55)
        {
LABEL_14:
          v56 = OUTLINED_FUNCTION_41_1();
          v57(v56);
          v58 = sub_268B37A34();
          sub_268B37F04();
          OUTLINED_FUNCTION_89_2();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_136_0(v60);
            OUTLINED_FUNCTION_52_5(&dword_2688BB000, v61, v62, "Cancelling due to confirmation value in intent");
            OUTLINED_FUNCTION_12();
          }

          v44(v71, v45);
          sub_268B34EB4();
        }

        else
        {
          sub_268B34EC4();
        }

        break;
    }

    sub_2688E73C0(v75, type metadata accessor for MediaIntent);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689C4CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void))
{
  OUTLINED_FUNCTION_26();
  v23 = v22;
  v25 = v24;
  v128 = v27;
  v129 = v26;
  v123 = v28;
  v30 = v29;
  v31 = sub_268B35434();
  v32 = OUTLINED_FUNCTION_1(v31);
  v121 = v33;
  v122 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v120 = v37 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6528, &qword_268B421F0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_46_5(v42, v116[0]);
  v130 = v25;
  v131 = v23;
  v43 = OUTLINED_FUNCTION_103();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
  v45 = OUTLINED_FUNCTION_4(v127);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_20_0();
  v124 = v48 - v49;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v50);
  v118 = v116 - v51;
  OUTLINED_FUNCTION_9();
  v116[0] = sub_268B35494();
  v52 = OUTLINED_FUNCTION_4(v116[0]);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_0();
  v126 = v56 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47_2();
  v125 = type metadata accessor for MediaPlayerIntent();
  v61 = OUTLINED_FUNCTION_4(v125);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_0();
  v66 = v65 - v64;
  v67 = sub_268B37A54();
  v68 = OUTLINED_FUNCTION_1(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_20_0();
  v75 = v73 - v74;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v77 = __swift_project_value_buffer(v67, qword_2802CDA10);
  v78 = OUTLINED_FUNCTION_44_5(v77, v77);
  v79(v78);
  v80 = sub_268B37A34();
  v81 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_38_2(v81))
  {
    v82 = OUTLINED_FUNCTION_14();
    v117 = v75;
    *v82 = 0;
    OUTLINED_FUNCTION_51_2(&dword_2688BB000, v83, v84, "ConfirmIntentStrategy.parseConfirmationResponse()");
    v75 = v117;
    OUTLINED_FUNCTION_12();
  }

  v87 = *(v70 + 8);
  v86 = v70 + 8;
  v85 = v87;
  v88 = OUTLINED_FUNCTION_103();
  (v87)(v88);
  v89 = v126;
  sub_268B35414();
  sub_26893BA8C(v89);
  v90 = v125;
  if (__swift_getEnumTagSinglePayload(v21, 1, v125) == 1)
  {
    v125 = v86;
    sub_2688C058C(v21, &qword_2802A5650, &unk_268B3BAC0);
    (v116[1])(v75, v116[2], v67);
    v92 = v120;
    v91 = v121;
    v93 = v122;
    (*(v121 + 16))(v120, v30, v122);
    v94 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = OUTLINED_FUNCTION_172_0();
      v123 = v85;
      v97 = v96;
      v98 = OUTLINED_FUNCTION_173_0();
      v132 = v98;
      *v97 = 136315138;
      v117 = v75;
      sub_268B35414();
      v99 = sub_268B37C24();
      v101 = v100;
      (*(v91 + 8))(v92, v93);
      sub_26892CDB8(v99, v101, &v132);
      OUTLINED_FUNCTION_45_5();

      *(v97 + 4) = v99;
      OUTLINED_FUNCTION_53_4(&dword_2688BB000, v102, v103, "Unexpected parse: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v123(v117, v67);
    }

    else
    {

      (*(v91 + 8))(v92, v93);
      v108 = OUTLINED_FUNCTION_103();
      (v85)(v108);
    }

    sub_2688C2ECC();
    v109 = swift_allocError();
    OUTLINED_FUNCTION_33_7(v109, v110);
    swift_storeEnumTagMultiPayload();
    v129(v67);
    sub_2688C058C(v67, v130, v131);
  }

  else
  {
    sub_2689C963C(v21, v66, type metadata accessor for MediaPlayerIntent);
    if (*(v66 + *(v90 + 36)) - 2 >= 2)
    {
      v111 = v119;
      if (*(v66 + *(v90 + 36)))
      {
        v112 = MEMORY[0x277D5BED0];
      }

      else
      {
        v112 = MEMORY[0x277D5BED8];
      }

      v113 = *v112;
      v114 = sub_268B351D4();
      OUTLINED_FUNCTION_4(v114);
      (*(v115 + 104))(v111, v113, v114);
      v104 = OUTLINED_FUNCTION_42_3();
    }

    else
    {
      sub_268B351D4();
      v104 = OUTLINED_FUNCTION_34_4();
    }

    __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
    a21(0);
    OUTLINED_FUNCTION_36_6(v123);
    swift_storeEnumTagMultiPayload();
    v129(a21);
    sub_2688C058C(a21, v130, v131);
    sub_2688E73C0(v66, type metadata accessor for MediaPlayerIntent);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689C5430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void))
{
  OUTLINED_FUNCTION_26();
  v23 = v22;
  v25 = v24;
  v123 = v27;
  v124 = v26;
  v119 = v28;
  v30 = v29;
  v31 = sub_268B35434();
  v32 = OUTLINED_FUNCTION_1(v31);
  v117 = v33;
  v118 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v116 = v37 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6528, &qword_268B421F0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_46_5(v42, v112[0]);
  v125 = v25;
  v126 = v23;
  v43 = OUTLINED_FUNCTION_103();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
  v45 = OUTLINED_FUNCTION_4(v122);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_20_0();
  v120 = v48 - v49;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v50);
  v114 = v112 - v51;
  OUTLINED_FUNCTION_9();
  v112[0] = sub_268B35494();
  v52 = OUTLINED_FUNCTION_4(v112[0]);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_0();
  v127 = v56 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  OUTLINED_FUNCTION_22(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47_2();
  v121 = type metadata accessor for MediaIntent();
  v61 = OUTLINED_FUNCTION_4(v121);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_0();
  v66 = v65 - v64;
  v67 = sub_268B37A54();
  v68 = OUTLINED_FUNCTION_1(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_20_0();
  v75 = v73 - v74;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v77 = __swift_project_value_buffer(v67, qword_2802CDA10);
  v78 = OUTLINED_FUNCTION_44_5(v77, v77);
  v79(v78);
  v80 = sub_268B37A34();
  v81 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_38_2(v81))
  {
    v82 = OUTLINED_FUNCTION_14();
    v113 = v75;
    *v82 = 0;
    OUTLINED_FUNCTION_51_2(&dword_2688BB000, v83, v84, "ConfirmIntentStrategy.parseConfirmationResponse()");
    v75 = v113;
    OUTLINED_FUNCTION_12();
  }

  v85 = *(v70 + 8);
  v86 = OUTLINED_FUNCTION_103();
  v85(v86);
  v87 = v127;
  sub_268B35414();
  sub_26892E840(v87);
  if (__swift_getEnumTagSinglePayload(v21, 1, v121) == 1)
  {
    v121 = v85;
    sub_2688C058C(v21, &qword_2802A59A0, &unk_268B3F0C0);
    (v112[1])(v75, v112[2], v67);
    v88 = v116;
    v89 = v117;
    v90 = v118;
    (*(v117 + 16))(v116, v30, v118);
    v91 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_89_2();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = OUTLINED_FUNCTION_172_0();
      v119 = OUTLINED_FUNCTION_173_0();
      v128 = v119;
      *v93 = 136315138;
      v113 = v75;
      v94 = v88;
      sub_268B35414();
      sub_268B37C24();
      v95 = OUTLINED_FUNCTION_45_5();
      v97 = v96;
      (*(v89 + 8))(v95, v90);
      sub_26892CDB8(v94, v97, &v128);
      OUTLINED_FUNCTION_45_5();

      *(v93 + 4) = v94;
      OUTLINED_FUNCTION_53_4(&dword_2688BB000, v98, v99, "Unexpected parse: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v119);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v100 = v113;
    }

    else
    {

      (*(v89 + 8))(v88, v90);
      v100 = v75;
    }

    v121(v100, v67);
    sub_2688C2ECC();
    v105 = swift_allocError();
    OUTLINED_FUNCTION_33_7(v105, v106);
    swift_storeEnumTagMultiPayload();
    v124(v67);
    sub_2688C058C(v67, v125, v126);
  }

  else
  {
    sub_2689C963C(v21, v66, type metadata accessor for MediaIntent);
    if (*(v66 + 24) - 2 >= 2)
    {
      v107 = v115;
      if (*(v66 + 24))
      {
        v108 = MEMORY[0x277D5BED0];
      }

      else
      {
        v108 = MEMORY[0x277D5BED8];
      }

      v109 = *v108;
      v110 = sub_268B351D4();
      OUTLINED_FUNCTION_4(v110);
      (*(v111 + 104))(v107, v109, v110);
      v101 = OUTLINED_FUNCTION_42_3();
    }

    else
    {
      sub_268B351D4();
      v101 = OUTLINED_FUNCTION_34_4();
    }

    __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
    a21(0);
    OUTLINED_FUNCTION_36_6(v119);
    swift_storeEnumTagMultiPayload();
    v124(a21);
    sub_2688C058C(a21, v125, v126);
    sub_2688E73C0(v66, type metadata accessor for MediaIntent);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C5B6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v6;
    v20 = a2;
    v21 = a5;
    v22 = a1;
    v23 = a4;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()", v19, 2u);
    v25 = v24;
    a4 = v23;
    a1 = v22;
    a5 = v21;
    a2 = v20;
    v6 = v35;
    MEMORY[0x26D6266E0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  sub_268947F08();
  v27 = v26;
  v29 = v28;
  v30 = *(v6 + 56);
  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = v6;
  v31[5] = a1;
  v31[6] = a2;
  v31[7] = v27;
  v31[8] = v29;

  v32 = a2;
  sub_268ABDE34(sub_2689C938C, v31);
}

void sub_2689C5DE8()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C5F48()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C60A8()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C6208()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C6368()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C64C8()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C6628()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C6788()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C68E8()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeConfirmationRejectedResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C6A48(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *))
{
  v12 = a4;
  sub_26896F760(a9, v11);
  a2(v11);
  return sub_2688C058C(v11, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_2689C6ACC()
{
  OUTLINED_FUNCTION_26();
  v66 = v0;
  v67 = v1;
  v62 = v3;
  v63 = v2;
  v64 = v4;
  v65 = v5;
  v7 = v6;
  v71 = v8;
  v68 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  v70 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v22 = *(*v21 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v62 - v34;
  v36 = sub_268B34E24();
  v37 = OUTLINED_FUNCTION_1(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v44 = v43 - v42;
  v45 = v7[11];
  v69 = v7;
  v46 = __swift_project_boxed_opaque_existential_1(v7 + 8, v45);
  v47 = *v62;
  v48 = *(v39 + 104);
  v62 = v36;
  v48(v44, v47, v36);
  sub_2688F1FA4(v71, v25, &unk_2802A56E0, &unk_268B3CDF0);

  v49 = sub_268B350F4();
  v50 = *(v49 - 8);
  (*(v50 + 32))(v35, v25, v49);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v49);
  v51 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v51);
  v52 = *v46;
  sub_2688F1FA4(v35, v32, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v32, 1, v49) == 1)
  {
    sub_2688C058C(v32, &unk_2802A57B0, &unk_268B3CE00);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v53 = sub_268B350B4();
    v54 = v55;
    (*(v50 + 8))(v32, v49);
  }

  v67(v63, v44, v64, v53, v54, v65, v66, v20, v52);

  sub_2688C058C(v20, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v35, &unk_2802A57B0, &unk_268B3CE00);
  (*(v39 + 8))(v44, v62);
  v56 = v69[6];
  __swift_project_boxed_opaque_existential_1(v69 + 2, v69[5]);
  sub_268B34CA4();
  v57 = sub_268B35044();
  v58 = v70;
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v57);
  v59 = sub_268B354F4();
  memset(v72, 0, sizeof(v72));
  v73 = 0;
  v60 = MEMORY[0x277D5C1D8];
  v61 = v68;
  v68[3] = v59;
  v61[4] = v60;
  __swift_allocate_boxed_opaque_existential_1(v61);
  sub_268B34EE4();
  sub_2688C058C(v72, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v58, &qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C6F78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v6;
    v20 = a2;
    v21 = a5;
    v22 = a1;
    v23 = a4;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "ConfirmIntentStrategy.makeFlowCancelledResponse()", v19, 2u);
    v25 = v24;
    a4 = v23;
    a1 = v22;
    a5 = v21;
    a2 = v20;
    v6 = v35;
    MEMORY[0x26D6266E0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  sub_268947F08();
  v27 = v26;
  v29 = v28;
  v30 = *(v6 + 56);
  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = v6;
  v31[5] = a1;
  v31[6] = a2;
  v31[7] = v27;
  v31[8] = v29;

  v32 = a2;
  sub_268ABDE34(sub_2689C9324, v31);
}

void sub_2689C71F4()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7354()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C74B4()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7614()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7774()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C78D4()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7A34()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7B94()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7CF4()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_8_14();
  v2 = OUTLINED_FUNCTION_4_17(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0();
  }

  v6 = OUTLINED_FUNCTION_2_20(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_16_15(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_0_27(v10);
    OUTLINED_FUNCTION_24_3(&dword_2688BB000, v11, v12, "ConfirmIntentStrategy.makeFlowCancelledResponse()");
    OUTLINED_FUNCTION_6_20();
  }

  v13 = OUTLINED_FUNCTION_11_16();
  v14(v13);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_19_11();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_17_12();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_12(v15);

  v16 = v0;
  OUTLINED_FUNCTION_30_7();

  OUTLINED_FUNCTION_23();
}

void sub_2689C7E54()
{
  OUTLINED_FUNCTION_26();
  v63 = v0;
  v2 = v1;
  v66 = v3;
  v68 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v8);
  v10 = (&v61 - v9);
  v11 = sub_268B37A54();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v65 = (v17 - v18);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v64 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v22 = __swift_project_value_buffer(v11, qword_2802CDA10);
    v23 = *(v14 + 16);
    v24 = OUTLINED_FUNCTION_103();
    v67 = v25;
    (v25)(v24);
    v26 = sub_268B37A34();
    v27 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_38_2(v27))
    {
      v28 = OUTLINED_FUNCTION_14();
      v69 = v5;
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "ResumeMediaConfirmIntentStrategy.makeDialogForConfirmation()", v28, 2u);
      OUTLINED_FUNCTION_12();
    }

    v29 = *(v14 + 8);
    v69 = (v14 + 8);
    v29(v0, v11);
    v30 = sub_268B18100();
    if (!v30)
    {
      break;
    }

    v14 = v30;
    v31 = sub_2688EFD0C(v30);
    if (!v31)
    {

      break;
    }

    v32 = v31;
    v5 = v64;
    v67(v64, v22, v11);
    v0 = v5;
    v33 = sub_268B37A34();
    sub_268B37EC4();
    OUTLINED_FUNCTION_89_2();
    v35 = os_log_type_enabled(v33, v34);
    v62 = v2;
    if (v35)
    {
      v0 = OUTLINED_FUNCTION_172_0();
      v36 = OUTLINED_FUNCTION_173_0();
      v68 = v29;
      v37 = v36;
      v70 = v36;
      *v0 = 136315138;
      v38 = type metadata accessor for Device();
      v39 = MEMORY[0x26D6256F0](v14, v38);
      v41 = sub_26892CDB8(v39, v40, &v70);

      *(v0 + 4) = v41;
      _os_log_impl(&dword_2688BB000, v33, v10, "Confirming devices: %s", v0, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v68(v5, v11);
    }

    else
    {

      v29(v5, v11);
    }

    v11 = 0;
    v2 = v14 & 0xC000000000000001;
    v48 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v32 == v11)
      {

        v60 = *(v63 + 56);
        sub_268AB0B84(v48, v66, v62);

        goto LABEL_30;
      }

      if (v2)
      {
        v49 = MEMORY[0x26D625BD0](v11, v14);
      }

      else
      {
        if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v49 = *(v14 + 8 * v11 + 32);
      }

      v5 = v49;
      v10 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v50 = sub_268988580(v49);
      if (v51)
      {
        v52 = v50;
        v0 = v51;

        goto LABEL_23;
      }

      v52 = sub_268988568(v5);
      v0 = v53;

      ++v11;
      if (v0)
      {
LABEL_23:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = *(v48 + 16);
          sub_2689876A4();
          v48 = v58;
        }

        v54 = *(v48 + 16);
        v55 = v48;
        if (v54 >= *(v48 + 24) >> 1)
        {
          sub_2689876A4();
          v55 = v59;
        }

        *(v55 + 16) = v54 + 1;
        v48 = v55;
        v56 = v55 + 16 * v54;
        *(v56 + 32) = v52;
        *(v56 + 40) = v0;
        v11 = v10;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_0_0();
  }

  v42 = v65;
  v67(v65, v22, v11);
  v43 = sub_268B37A34();
  v44 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_19(v44))
  {
    v45 = OUTLINED_FUNCTION_14();
    *v45 = 0;
    _os_log_impl(&dword_2688BB000, v43, v42, "Could not find any devices in the intent for confirmation", v45, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29(v42, v11);
  sub_2688C2ECC();
  v46 = swift_allocError();
  *v47 = 43;
  *v10 = v46;
  swift_storeEnumTagMultiPayload();
  v66(v10);
  sub_2688C058C(v10, &qword_2802A6300, &unk_268B3BD80);
LABEL_30:
  OUTLINED_FUNCTION_23();
}

void sub_2689C83C0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v36 = v2;
  v37 = v3;
  v39 = v5;
  v40 = v4;
  v6 = sub_268B35044();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v35 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v38 = &v35 - v13;
  OUTLINED_FUNCTION_9();
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v20 = __swift_project_value_buffer(v14, qword_2802CDA10);
  (*(v17 + 16))(v0, v20, v14);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_14();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "ResumeMediaConfirmIntentStrategy.makePromptForConfirmation() called", v23, 2u);
    v1 = v0;
    OUTLINED_FUNCTION_12();
  }

  (*(v17 + 8))(v0, v14);
  v24 = sub_268B363B4();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_268B363A4();
  v27 = v38;
  sub_2689D9FD4();

  v28 = v35;
  (*(v9 + 16))(v35, v27, v6);
  v29 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v30 = swift_allocObject();
  v31 = v37;
  *(v30 + 2) = v36;
  *(v30 + 3) = v31;
  v32 = v39;
  v33 = v40;
  *(v30 + 4) = v39;
  *(v30 + 5) = v1;
  *(v30 + 6) = v33;
  (*(v9 + 32))(&v30[v29], v28, v6);

  v34 = v32;
  OUTLINED_FUNCTION_45_5();

  sub_2689C7E54();

  (*(v9 + 8))(v27, v6);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689C86D0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v72 = a5;
  v79 = a4;
  v80 = a2;
  v81 = a3;
  v76 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v65 - v17;
  v18 = sub_268B34E24();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = *(v77 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_268B37A54();
  v67 = *(v22 - 8);
  v23 = *(v67 + 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v71 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v65 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v65 - v37;
  sub_2688F1FA4(v76, v29, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v29, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v22, qword_2802CDA10);
    v40 = v67;
    (*(v67 + 2))(v25, v39, v22);
    v41 = sub_268B37A34();
    v42 = sub_268B37EE4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "ResumeMediaConfirmIntentStrategy.makeDialogForConfirmation Unable to generate dialog.", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    v40[1](v25, v22);
    sub_2688C2ECC();
    v44 = swift_allocError();
    *v45 = -73;
    v82[0] = v44;
    v83 = 1;
    v80(v82);
    return sub_2688C058C(v82, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v29, v38);
    sub_268947F08();
    v65 = v47;
    v48 = v72;
    v49 = __swift_project_boxed_opaque_existential_1(v72 + 8, v72[11]);
    v50 = *MEMORY[0x277D5BB48];
    v51 = *(v77 + 104);
    v67 = v21;
    v51(v21, v50, v78);
    sub_2688F1FA4(v38, v36, &unk_2802A56E0, &unk_268B3CDF0);
    v66 = v30;

    v52 = sub_268B350F4();
    v76 = *(v52 - 8);
    v53 = v68;
    (*(v76 + 32))(v68, v36, v52);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
    v54 = sub_268B34B94();
    v55 = v70;
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v54);
    v56 = *v49;
    v57 = v69;
    sub_2688F1FA4(v53, v69, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v57, 1, v52) == 1)
    {
      sub_2688C058C(v57, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v76 + 8))(v57, v52);
    }

    v58 = v67;
    sub_2688E2390();

    sub_2688C058C(v55, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v53, &unk_2802A57B0, &unk_268B3CE00);
    (*(v77 + 8))(v58, v78);
    v59 = v48[16];
    v60 = v48[17];
    __swift_project_boxed_opaque_existential_1(v48 + 13, v59);
    v61 = v71;
    sub_2688F1FA4(v38, v71, &unk_2802A56E0, &unk_268B3CDF0);
    v62 = *(v61 + *(v66 + 48));
    v63 = sub_268B35044();
    v64 = v75;
    (*(*(v63 - 8) + 16))(v75, v74, v63);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v63);
    (*(v60 + 16))(v61, v62, v64, v80, v81, v59, v60);

    sub_2688C058C(v64, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v38, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v76 + 8))(v61, v52);
  }
}

uint64_t *sub_2689C8F10()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  return v0;
}

uint64_t sub_2689C8F48()
{
  sub_2689C8F10();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

void sub_2689C9020()
{
  type metadata accessor for ResumeMediaConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_2689C909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeMediaConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2689C9160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for ResumeMediaConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_2689C91FC(uint64_t a1)
{
  result = sub_2689C9224();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2689C9224()
{
  result = qword_2802A6C38;
  if (!qword_2802A6C38)
  {
    type metadata accessor for ResumeMediaConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C38);
  }

  return result;
}

uint64_t sub_2689C963C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2689C9FE4()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  v9 = *(v0 + 40);

  v10 = *(v0 + 48);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2689CA0B4(uint64_t a1)
{
  v3 = sub_268B35044();
  OUTLINED_FUNCTION_22(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80));

  return sub_2689C86D0(a1, v5, v6, v7, v8, v9, v10);
}

_WORD *OUTLINED_FUNCTION_0_27(_WORD *result)
{
  *(v2 - 88) = v1;
  *result = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v4, a2);
  v5 = *(v3 + 16);
  return v2;
}

void OUTLINED_FUNCTION_6_20()
{
  v2 = *(v0 - 88);

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_9_12(void *a1)
{
  a1[2] = v7;
  a1[3] = v4;
  a1[4] = v3;
  a1[5] = v2;
  a1[6] = v1;
  a1[7] = v6;
  a1[8] = v5;
}

BOOL OUTLINED_FUNCTION_16_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_19_11()
{

  sub_268947F08();
}

void OUTLINED_FUNCTION_20_12()
{

  sub_268947F08();
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return sub_268ABDE34(v0, v1);
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return sub_268B38444();
}

void *OUTLINED_FUNCTION_33_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;
  v3 = *(v2 - 160);
  *v3 = a1;
  return v3;
}

uint64_t OUTLINED_FUNCTION_36_6(uint64_t a1)
{
  v5 = *(v3 - 208);

  return MEMORY[0x2821BB510](v2, a1, v1);
}

BOOL OUTLINED_FUNCTION_38_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_41_1()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1, uint64_t a2)
{
  result = v2;
  *(v4 - 232) = *(v3 + 16);
  *(v4 - 224) = a2;
  return result;
}

void OUTLINED_FUNCTION_49_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void OUTLINED_FUNCTION_51_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void OUTLINED_FUNCTION_52_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_53_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_2689CA4AC(char *a1)
{
  sub_2689CA858(a1);
  sub_2689CAB94(a1);
  sub_2689CAF58(a1);
  v3 = a1[2];
  if (v3 != 2)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = sub_268B38444();

    if (v5)
    {
      goto LABEL_8;
    }
  }

  v4 = a1[1];
  switch(a1[1])
  {
    case 2:
      goto LABEL_6;
    case 4:
      goto LABEL_9;
    default:
      v6 = sub_268B38444();

      if (v6)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (v3 == 2)
      {
        break;
      }

      if (v3)
      {
LABEL_12:

LABEL_16:
        v7 = 2;
        goto LABEL_17;
      }

      v8 = sub_268B38444();

      if (v8)
      {
        goto LABEL_16;
      }

      break;
  }

  switch(v4)
  {
    case 3:
      goto LABEL_12;
    case 4:
      goto LABEL_24;
    default:
      v9 = sub_268B38444();

      if (v9)
      {
        goto LABEL_16;
      }

      if (v4)
      {
        v16 = sub_268B38444();

        if ((v16 & 1) == 0)
        {
LABEL_24:
          v17 = *a1;
          if (v17 == 24)
          {
LABEL_25:
            v7 = 0;
            goto LABEL_17;
          }

          if (sub_26893E3F8(*a1) != 0x656C6666756873 || v18 != 0xE700000000000000)
          {
            v20 = sub_268B38444();

            if (v20)
            {
              goto LABEL_8;
            }

            if (sub_26893E3F8(v17) != 2036427888 || v21 != 0xE400000000000000)
            {
              v23 = sub_268B38444();

              if ((v23 & 1) == 0)
              {
                goto LABEL_25;
              }

LABEL_8:
              v7 = 1;
              goto LABEL_17;
            }
          }

LABEL_6:

          goto LABEL_8;
        }
      }

      else
      {
      }

      v7 = 3;
LABEL_17:
      [v1 setShuffleState_];
      v10 = type metadata accessor for MediaPlayerIntent();
      v11 = 0;
      v12 = 0;
      v13 = a1[*(v10 + 48)];
      if (v13 != 26)
      {
        v11 = sub_268942D54(v13);
      }

      v14 = sub_268A7528C(v11, v12);

      return [v1 setMediaType_];
  }
}

uint64_t sub_2689CA858(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MediaPlayerIntent();
  v25 = sub_2689A9870(&qword_2802A56B0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_268B37A34();
    v10 = sub_268B37F04();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2688BB000, v9, v10, "Found home automation nodes, attempting to map them to SiriKit intent", v11, 2u);
      MEMORY[0x26D6266E0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_268B3BBA0;
    v13 = v24;
    v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v15 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v14);
    v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17);
    *(v12 + 32) = sub_268A91478(v17);
    v19 = off_28795A028;
    v20 = type metadata accessor for SetShuffleStateIntent();
    v19(v12, v20, &off_28795A008);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

void sub_2689CAB94(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = var50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v8 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688C2F6C(v11);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v19 = sub_268B18100();
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C(v19))
      {
        sub_2688EFD10(0, (v20 & 0xC000000000000001) == 0, v20);
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10]);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_28795A028;
    v30 = type metadata accessor for SetShuffleStateIntent();
    v24 = v26;
    v29(v28, v30, &off_28795A008);
LABEL_13:
  }
}

void sub_2689CAF58(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v10);
  sub_2689A9870(&qword_2802A58E0);
  v11 = sub_268B37854();
  sub_2688C2F6C(v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v24);
      sub_26890C900(v24, v23);
      sub_268AC88F0(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_268B38214();
      v14 = *(v25 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v25;
    v16 = off_28795BB98;
    v17 = type metadata accessor for SetShuffleStateIntent();
    v16(v15, v17, &off_28795BB88);
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
}

void sub_2689CB270(uint64_t a1)
{
  v2 = sub_2688EFD0C(a1);
  if (!v2)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
    sub_2688F4354(&qword_2802A5B50, &qword_2802A5B48, &qword_268B416A0);
    sub_268B37BA4();

    return;
  }

  v3 = v2;
  v12 = MEMORY[0x277D84F90];
  sub_26894470C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D625BD0](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = sub_2688F3970();
      v9 = v8;

      v10 = *(v12 + 16);
      if (v10 >= *(v12 + 24) >> 1)
      {
        sub_26894470C();
      }

      ++v4;
      *(v12 + 16) = v10 + 1;
      v11 = v12 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v9;
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_2689CB3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_298();
  v10 = sub_2689CB550();
  v11 = sub_2688EFD0C(v10);
  if (!v11)
  {

    v17 = MEMORY[0x277D84F90];
LABEL_15:
    v25 = sub_26893E80C(v17);
    sub_268A7C150(v25);

    OUTLINED_FUNCTION_299();
    return;
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_0_28();
  sub_2689447EC(v13, v14, v15);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = a10;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D625BD0](v16, v10);
      }

      else
      {
        v18 = *(v10 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 context];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 nowPlayingState];
      }

      else
      {
        v22 = 0;
      }

      v24 = *(a10 + 16);
      v23 = *(a10 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2689447EC(v23 > 1, v24 + 1, 1);
      }

      ++v16;
      *(a10 + 16) = v24 + 1;
      *(a10 + 8 * v24 + 32) = v22;
    }

    while (v12 != v16);

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_2689CB550()
{
  v1 = sub_2689CC34C(v0);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v1;
  result = sub_2688EFD0C(v1);
  v5 = result;
  v6 = 0;
  v35 = v3 & 0xFFFFFFFFFFFFFF8;
  v36 = v3 & 0xC000000000000001;
  v31 = v3;
  v32 = result;
  v34 = v3 + 32;
  v7 = v2;
  while (1)
  {
    if (v6 == v5)
    {

      return v7;
    }

    if (v36)
    {
      result = MEMORY[0x26D625BD0](v6, v31);
    }

    else
    {
      if (v6 >= *(v35 + 16))
      {
        goto LABEL_48;
      }

      result = *(v34 + 8 * v6);
    }

    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      break;
    }

    v10 = sub_2688F42F4(result);

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v2;
    }

    if (v11 >> 62)
    {
      v12 = sub_268B382A4();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v7 >> 62;
    if (v7 >> 62)
    {
      result = sub_268B382A4();
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = result + v12;
    if (__OFADD__(result, v12))
    {
      goto LABEL_49;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v13)
      {
LABEL_23:
        sub_268B382A4();
      }

      else
      {
        v15 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
        v16 = *(v15 + 16);
      }

      result = sub_268B381F4();
      v7 = result;
      v15 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_25;
    }

    if (v13)
    {
      goto LABEL_23;
    }

    v15 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v14 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

LABEL_25:
    v37 = v15;
    v38 = v7;
    v17 = *(v15 + 16);
    v18 = (*(v15 + 24) >> 1) - v17;
    v19 = v15 + 8 * v17;
    if (v11 >> 62)
    {
      v22 = sub_268B382A4();
      if (v22)
      {
        v23 = v22;
        result = sub_268B382A4();
        if (v18 < result)
        {
          goto LABEL_53;
        }

        if (v23 < 1)
        {
          goto LABEL_54;
        }

        v33 = result;
        v24 = v19 + 32;
        sub_2688F4354(&qword_2802A5B40, &qword_2802A5B38, &unk_268B51420);
        for (i = 0; i != v23; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B38, &unk_268B51420);
          v26 = sub_26892D47C(v39, i, v11);
          v28 = *v27;
          v26(v39, 0);
          *(v24 + 8 * i) = v28;
        }

        v2 = MEMORY[0x277D84F90];
        v5 = v32;
        v21 = v33;
        goto LABEL_35;
      }

LABEL_39:

      if (v12 > 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_39;
      }

      if (v18 < v20)
      {
        goto LABEL_52;
      }

      v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      type metadata accessor for Device();
      swift_arrayInitWithCopy();
LABEL_35:

      v7 = v38;
      if (v21 < v12)
      {
        goto LABEL_50;
      }

      if (v21 > 0)
      {
        v29 = *(v37 + 16);
        v9 = __OFADD__(v29, v21);
        v30 = v29 + v21;
        if (v9)
        {
          goto LABEL_51;
        }

        *(v37 + 16) = v30;
      }
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void sub_2689CB8A8()
{
  OUTLINED_FUNCTION_298();
  v18 = v0;
  v19 = v1;
  v2 = sub_2689CB550();
  v3 = sub_2688EFD0C(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
LABEL_24:

      goto LABEL_25;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 context];
    if (!v7 || (v8 = v7, v9 = [v7 nowPlayingState], v8, v9 != 1))
    {
LABEL_23:

LABEL_25:
      OUTLINED_FUNCTION_299();
      return;
    }

    v10 = [v6 context];
    if (v10 && (v11 = v10, v12 = [v10 nowPlayingState], v11, v12 == 1))
    {
      v13 = [v6 context];
      if (!v13)
      {
        goto LABEL_23;
      }

      v14 = sub_268AE10A4(v13);
      if (!v15)
      {
        goto LABEL_23;
      }

      if (v14 == v18 && v15 == v19)
      {
      }

      else
      {
        v17 = sub_268B38444();

        if ((v17 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

id sub_2689CBA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(v5);
  v11 = sub_268B37BC4();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setType_];
  sub_2688C063C();
  v14 = sub_268B38054();
  [v13 setIncludesTVs_];

  sub_2689CC274(a5, v13);
  if (a2)
  {
    sub_2689CC2E8(a1, a2, v13);
  }

  return v13;
}

void sub_2689CBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_298();
  sub_2689CBC4C();
  v11 = v10;
  v12 = sub_2688EFD0C(v10);
  if (!v12)
  {

    v15 = MEMORY[0x277D84F90];
LABEL_12:
    sub_26893E750(v15);
    v24 = *(v23 + 16);

    OUTLINED_FUNCTION_299();
    return;
  }

  v13 = v12;
  OUTLINED_FUNCTION_0_28();
  sub_26894478C();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = a10;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D625BD0](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = sub_268988568(v16);
      v20 = v19;

      v21 = *(a10 + 16);
      if (v21 >= *(a10 + 24) >> 1)
      {
        sub_26894478C();
      }

      ++v14;
      *(a10 + 16) = v21 + 1;
      v22 = a10 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v20;
    }

    while (v13 != v14);

    goto LABEL_12;
  }

  __break(1u);
}

void sub_2689CBC4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27 - v3;
  v5 = sub_268B371E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v30 = &v27 - v10;
  v11 = sub_2689CB550();
  if (sub_2688EFD0C(v11) == 1)
  {
    return;
  }

  v12 = [v0 includesTVs];
  sub_2688C063C();
  v13 = sub_268B38054();
  v14 = v13;
  if (v12)
  {
    v15 = sub_268B38074();

    if (v15)
    {
      return;
    }
  }

  else
  {
  }

  v34 = MEMORY[0x277D84F90];
  v16 = sub_2688EFD0C(v11);
  v17 = 0;
  v32 = v11 & 0xFFFFFFFFFFFFFF8;
  v33 = v11 & 0xC000000000000001;
  v27 = (v6 + 8);
  v28 = (v6 + 32);
  v29 = v16;
  while (1)
  {
    if (v16 == v17)
    {

      return;
    }

    if (v33)
    {
      v18 = MEMORY[0x26D625BD0](v17, v11);
    }

    else
    {
      if (v17 >= *(v32 + 16))
      {
        goto LABEL_23;
      }

      v18 = *(v11 + 8 * v17 + 32);
    }

    v19 = v18;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    sub_268988574(v18);
    if (v20)
    {
      sub_268B37154();
      if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
      {
        sub_2689CC410(v4);
      }

      else
      {
        v21 = v30;
        (*v28)(v30, v4, v5);
        v22 = v31;
        sub_268B371A4();
        sub_2689CC478();
        v23 = sub_268B380F4();
        v24 = *v27;
        (*v27)(v22, v5);
        v25 = v21;
        v16 = v29;
        v24(v25, v5);
        if (v23)
        {

          goto LABEL_18;
        }
      }
    }

    sub_268B38214();
    v26 = *(v34 + 16);
    sub_268B38244();
    sub_268B38254();
    sub_268B38224();
LABEL_18:
    ++v17;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t DeviceGroup.description.getter()
{
  sub_268B381C4();
  MEMORY[0x26D625650](0xD000000000000019, 0x8000000268B59630);
  v17 = sub_2689CC3AC(v0);
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  sub_268B37C24();
  OUTLINED_FUNCTION_3_23();

  MEMORY[0x26D625650](0x203A65707974202CLL, 0xE800000000000000);
  GroupType.description.getter([v0 type]);
  OUTLINED_FUNCTION_3_23();

  MEMORY[0x26D625650](0x64756C636E69202CLL, 0xEF203A7356547365);
  v18 = [v0 includesTVs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DC8, &unk_268B3D780);
  v2 = sub_268B37C24();
  MEMORY[0x26D625650](v2);

  MEMORY[0x26D625650](0xD000000000000010, 0x8000000268B59650);
  v19 = [v0 excludeGroup];
  sub_268B37C24();
  OUTLINED_FUNCTION_3_23();

  v3 = MEMORY[0x26D625650](0x6F436D6F6F72202CLL, 0xED0000203A746E75);
  sub_2689CBB34(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20);
  sub_268B38404();
  OUTLINED_FUNCTION_3_23();

  MEMORY[0x26D625650](0x6D6165727473202CLL, 0xEB00000000203A73);
  v11 = sub_2689CC34C(v0);
  if (v11)
  {
    sub_2689CB270(v11);
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v15 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
  }

  MEMORY[0x26D625650](v13, v15);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return 0;
}

void sub_2689CC274(uint64_t a1, void *a2)
{
  type metadata accessor for MediaStream();
  v3 = sub_268B37CE4();

  [a2 setStreams_];
}

void sub_2689CC2E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setGroupName_];
}

uint64_t sub_2689CC34C(void *a1)
{
  v1 = [a1 streams];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for MediaStream();
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_2689CC3AC(void *a1)
{
  v1 = [a1 groupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

uint64_t sub_2689CC410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2689CC478()
{
  result = qword_2802A5BE0;
  if (!qword_2802A5BE0)
  {
    sub_268B371E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5BE0);
  }

  return result;
}

void OUTLINED_FUNCTION_3_23()
{

  JUMPOUT(0x26D625650);
}

uint64_t sub_2689CC500(uint64_t a1, unint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2689CCB00();
  v9 = sub_268B37B84();
  if (a2 && (, v10 = sub_2689CC7B4(), v10 != 7))
  {
    v18 = sub_26892E1B8(v10, v9);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      return v18;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v11, v4);

  v12 = sub_268B37A34();
  v13 = sub_268B37F04();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    if (a2)
    {
      v16 = a1;
    }

    else
    {
      v16 = 7104878;
    }

    if (!a2)
    {
      a2 = 0xE300000000000000;
    }

    v17 = sub_26892CDB8(v16, a2, &v23);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_2688BB000, v12, v13, "Found an unknown media type playing: %{public}s. Treating as unknown", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x26D6266E0](v15, -1, -1);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_2689CC7B4()
{
  v0 = sub_268B382F4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t NowPlayingMediaType.description.getter(uint64_t a1)
{
  result = 0x636973756D2ELL;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E752ELL;
      break;
    case 1:
      return result;
    case 2:
      result = 0x74736163646F702ELL;
      break;
    case 3:
      result = 0x6F626F696475612ELL;
      break;
    case 4:
      result = 0x5573656E7574692ELL;
      break;
    case 5:
      v3 = 1684107822;
      goto LABEL_9;
    case 6:
      v3 = 1685414190;
LABEL_9:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6F6900000000;
      break;
    case 7:
      result = 0x6F656469762ELL;
      break;
    default:
      sub_268B381C4();

      v4 = sub_268B38404();
      MEMORY[0x26D625650](v4);

      MEMORY[0x26D625650](41, 0xE100000000000000);
      result = 0xD000000000000023;
      break;
  }

  return result;
}

unint64_t sub_2689CC99C(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
    case 6:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2689CCA94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2689CC7B4();
  *a2 = result;
  return result;
}

unint64_t sub_2689CCAC4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2689CC99C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2689CCB00()
{
  result = qword_2802A6C90;
  if (!qword_2802A6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MRMediaType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x2689CCC20);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2689CCC5C()
{
  result = qword_2802A6C98;
  if (!qword_2802A6C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A6CA0, qword_268B422B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6C98);
  }

  return result;
}

unint64_t sub_2689CCCC4()
{
  result = qword_2802A6CA8;
  if (!qword_2802A6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6CA8);
  }

  return result;
}

uint64_t sub_2689CCD44(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v39[-v11];
  if (qword_2802A4DE0 != -1)
  {
    swift_once();
  }

  v13 = qword_2802CD938;
  v14 = sub_268B36684();
  v16 = sub_26892E7B4(v14, v15, v13);

  if (v16)
  {
    v17 = sub_2689CD728((a1 + 8));
    LOBYTE(v40[0]) = 2;
    v18 = sub_2689CD7E0(v40, a1);
    v40[0] = sub_268B36674();
    v40[1] = v19;
    MEMORY[0x28223BE20](v40[0]);
    *&v39[-16] = v40;
    v20 = sub_268ACD018();

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v21 = v20 & v18 & v17;
    v22 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v5 + 16))(v12, v22, v2);
    v23 = sub_268B37A34();
    v24 = sub_268B37ED4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109888;
      *(v25 + 4) = v20;
      v26 = OUTLINED_FUNCTION_1_31(v25);
      *(v26 + 16) = v17 & 1;
      *(v26 + 20) = v27;
      *(v26 + 22) = v21 & 1;
      _os_log_impl(&dword_2688BB000, v23, v24, "UsoTask.isSupportedSettingTask supportedVerbForEntity: %{BOOL}d, shouldHandleInControlsBySettings: %{BOOL}d, isWHASupported: %{BOOL}d. Task is supported by SettingsFlowProvider: %{BOOL}d", v25, 0x1Au);
      OUTLINED_FUNCTION_12();
    }

    (*(v5 + 8))(v12, v2);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v28 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v5 + 16))(v10, v28, v2);

    v29 = sub_268B37A34();
    v30 = sub_268B37ED4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = sub_268B36684();
      v34 = OUTLINED_FUNCTION_4_18(v32, v33);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v35 = sub_268B36674();
      v37 = OUTLINED_FUNCTION_4_18(v35, v36);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_2688BB000, v29, v30, "Task entity/verb: %s/%s is not supported by SettingsFlowProvider", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    (*(v5 + 8))(v10, v2);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_2689CD1A0(uint64_t a1, uint64_t (*a2)(uint64_t), unsigned __int8 a3, const char *a4, const char *a5)
{
  v51 = a4;
  v9 = sub_268B37A54();
  v52 = OUTLINED_FUNCTION_1(v9);
  v53 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v52);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v49[-v16];
  v18 = sub_268B36684();
  v19 = a2(v18);

  v20 = *(v19 + 16);
  if (!v20)
  {
    v51 = a5;

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v30 = v52;
    v31 = __swift_project_value_buffer(v52, qword_2802CDA10);
    v32 = v53;
    (*(v53 + 16))(v15, v31, v30);

    v33 = sub_268B37A34();
    v34 = sub_268B37ED4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_268B36684();
      v38 = OUTLINED_FUNCTION_4_18(v36, v37);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v39 = sub_268B36674();
      v41 = OUTLINED_FUNCTION_4_18(v39, v40);

      *(v35 + 14) = v41;
      _os_log_impl(&dword_2688BB000, v33, v34, v51, v35, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    (*(v32 + 8))(v15, v30);
    LOBYTE(v19) = 0;
    return v19 & 1;
  }

  v21 = sub_268B36674();
  v23 = v22;
  v50 = sub_2689CD728((a1 + 8));
  v55 = a3;
  v24 = sub_2689CD7E0(&v55, a1);
  v25 = 0;
  v26 = (v19 + 48);
  v27 = v53;
  while (1)
  {
    if (v20 == v25)
    {

      goto LABEL_21;
    }

    if (v25 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v28 = *v26;
    if (*(v26 - 2) == v21 && *(v26 - 1) == v23)
    {
      break;
    }

    if (sub_268B38444() & v28)
    {
      goto LABEL_19;
    }

LABEL_12:
    v26 += 24;
    ++v25;
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_19:

  if (v24)
  {
    LODWORD(v20) = 1;
    LOBYTE(v19) = v50;
    goto LABEL_22;
  }

LABEL_21:
  LOBYTE(v19) = 0;
  LODWORD(v20) = v20 != v25;
LABEL_22:
  v26 = v52;
  if (qword_2802A4F30 == -1)
  {
    goto LABEL_23;
  }

LABEL_28:
  OUTLINED_FUNCTION_0_0();
LABEL_23:
  v42 = __swift_project_value_buffer(v26, qword_2802CDA10);
  (*(v27 + 16))(v17, v42, v26);
  v43 = sub_268B37A34();
  v44 = sub_268B37ED4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 67109888;
    *(v45 + 4) = v20;
    v46 = OUTLINED_FUNCTION_1_31(v45);
    *(v46 + 16) = v50 & 1;
    *(v46 + 20) = v47;
    *(v46 + 22) = v19 & 1;
    _os_log_impl(&dword_2688BB000, v43, v44, v51, v45, 0x1Au);
    OUTLINED_FUNCTION_12();
  }

  (*(v27 + 8))(v17, v26);
  return v19 & 1;
}

uint64_t sub_2689CD5F0()
{
  sub_268B35DC4();
  if (!v3)
  {
    sub_2688EF38C(v2, &byte_2802A6450, &byte_268B3BE10);
    goto LABEL_5;
  }

  sub_268B361E4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v0 = 0;
    return v0 & 1;
  }

  v0 = sub_2689A85FC();

  return v0 & 1;
}

double sub_2689CD68C@<D0>(uint64_t a1@<X8>)
{
  sub_268B35DC4();
  if (!v3[3])
  {
    sub_2688EF38C(v3, &byte_2802A6450, &byte_268B3BE10);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5930, &qword_268B3BEF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}