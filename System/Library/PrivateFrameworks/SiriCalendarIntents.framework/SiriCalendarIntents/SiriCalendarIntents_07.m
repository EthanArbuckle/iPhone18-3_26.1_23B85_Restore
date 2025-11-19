uint64_t sub_2665DF0D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  OUTLINED_FUNCTION_42_0();
  v2[4] = *(v4 + 80);
  OUTLINED_FUNCTION_42_0();
  v6 = *(v5 + 88);
  OUTLINED_FUNCTION_42_0();
  v8 = *(v7 + 96);
  v9 = type metadata accessor for NeedsConfirmationConflictFlow.State();
  v2[5] = v9;
  v10 = *(v9 - 8);
  v2[6] = v10;
  v11 = *(v10 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665DF1DC, 0, 0);
}

uint64_t sub_2665DF1DC()
{
  v47 = v0;
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  sub_2665DE9C0(v1);
  sub_266669BB8();
  v4 = OUTLINED_FUNCTION_11_15();
  switch(__swift_getEnumTagSinglePayload(v1, 4, v4))
  {
    case 1u:
      v32 = v0[3];
      v33 = *(v32 + 24);
      (*(v32 + 16))();
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v34 = sub_26666C168();
      __swift_project_value_buffer(v34, qword_28156D7E8);
      v35 = sub_26666C148();
      v36 = sub_26666C618();
      if (os_log_type_enabled(v35, v36))
      {
        *OUTLINED_FUNCTION_20() = 0;
        OUTLINED_FUNCTION_21_6(&dword_266549000, v37, v38, "[ConflictConfirmationFlow] Pushing intial conflict confirmation flow");
        OUTLINED_FUNCTION_4_1();
      }

      v39 = v0[7];
      v41 = v0[2];
      v40 = v0[3];

      __swift_storeEnumTagSinglePayload(v39, 2, 4, v4);
      sub_2665DEA7C(v39);
      sub_2665DF5D4();
      goto LABEL_18;
    case 2u:
    case 4u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v5 = v0[3];
      v6 = sub_26666C168();
      __swift_project_value_buffer(v6, qword_28156D7E8);

      v7 = sub_26666C148();
      v8 = sub_26666C608();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = v0[7];
        v10 = v0[5];
        v11 = v0[3];
        v12 = OUTLINED_FUNCTION_21();
        v13 = OUTLINED_FUNCTION_13_0();
        v46 = v13;
        *v12 = 136315138;
        sub_2665DE9C0(v9);
        swift_getWitnessTable();
        v14 = sub_26666C328();
        v16 = sub_2665BFC90(v14, v15, &v46);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_266549000, v7, v8, "[ConflictConfirmationFlow] Unexpected state: %s exiting flow", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      v17 = v0[2];
      sub_2666698A8();
      break;
    case 3u:
      v18 = v0[3];
      v19 = *(v18 + 40);
      (*(v18 + 32))();
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v20 = sub_26666C168();
      __swift_project_value_buffer(v20, qword_28156D7E8);
      v21 = sub_26666C148();
      v22 = sub_26666C618();
      if (os_log_type_enabled(v21, v22))
      {
        *OUTLINED_FUNCTION_20() = 0;
        OUTLINED_FUNCTION_21_6(&dword_266549000, v23, v24, "[ConflictConfirmationFlow] Pushing second conflict confirmation flow");
        OUTLINED_FUNCTION_4_1();
      }

      v25 = v0[7];
      v27 = v0[2];
      v26 = v0[3];

      __swift_storeEnumTagSinglePayload(v25, 4, 4, v4);
      sub_2665DEA7C(v25);
      sub_2665DF614();
LABEL_18:
      sub_266669848();

      break;
    default:
      v28 = v0[8];
      v29 = v0[5];
      v30 = v0[6];
      v31 = v0[2];
      sub_2666698A8();
      (*(v30 + 8))(v28, v29);
      break;
  }

  v43 = v0[7];
  v42 = v0[8];

  v44 = v0[1];

  return v44();
}

uint64_t sub_2665DF654()
{
  v1 = *v0;
  OUTLINED_FUNCTION_42_0();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_42_0();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_42_0();
  v7 = *(v6 + 96);
  type metadata accessor for NeedsConfirmationConflictFlow();
  swift_getWitnessTable();
  return sub_266669548();
}

void sub_2665DF700(uint64_t a1)
{
  v2 = v1;
  v137 = a1;
  v3 = *v1;
  OUTLINED_FUNCTION_42_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_42_0();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_42_0();
  v9 = *(v8 + 96);
  v10 = *(*(type metadata accessor for NeedsConfirmationConflictFlow.State() - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11, v12);
  v129 = (v121 - v13);
  v132 = sub_266669AF8();
  v14 = OUTLINED_FUNCTION_3_0(v132);
  v128 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14, v18);
  v123 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD38, &qword_2666725F8);
  OUTLINED_FUNCTION_18_2(v126);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v22, v23);
  v135 = v121 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  OUTLINED_FUNCTION_10_5();
  v124 = (v28 - v29);
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v30, v31);
  v127 = v121 - v32;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v33, v34);
  v130 = v121 - v35;
  v36 = sub_266669BB8();
  OUTLINED_FUNCTION_3_0(v36);
  v133 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v40, v41);
  v131 = v121 - v42;
  v134 = v43;
  v44 = sub_266669778();
  v45 = OUTLINED_FUNCTION_3_0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45, v50);
  OUTLINED_FUNCTION_10_5();
  v53 = v51 - v52;
  v56 = MEMORY[0x28223BE20](v54, v55);
  v58 = v121 - v57;
  MEMORY[0x28223BE20](v56, v59);
  v61 = v121 - v60;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v62 = sub_26666C168();
  v63 = __swift_project_value_buffer(v62, qword_28156D7E8);
  v64 = (v47 + 16);
  v65 = *(v47 + 16);
  v65(v61, v137, v44);
  v136 = v47;
  v122 = v63;
  v66 = sub_26666C148();
  v67 = sub_26666C618();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = OUTLINED_FUNCTION_21();
    v121[1] = v2;
    v69 = v68;
    v121[0] = OUTLINED_FUNCTION_13_0();
    v138 = v121[0];
    *v69 = 136315138;
    v65(v58, v61, v44);
    OUTLINED_FUNCTION_2_26();
    swift_getWitnessTable();
    v70 = sub_26666C328();
    v72 = v71;
    v73 = OUTLINED_FUNCTION_16_12(v136);
    v74(v73);
    v75 = sub_2665BFC90(v70, v72, &v138);

    *(v69 + 4) = v75;
    _os_log_impl(&dword_266549000, v66, v67, "[ConflictConfirmationFlow] Conflict Confirmation result: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v121[0]);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();

    v76 = v136;
  }

  else
  {

    v76 = v136;
    v77 = OUTLINED_FUNCTION_16_12(v136);
    v78(v77);
  }

  v65(v53, v137, v44);
  v79 = *(v76 + 88);
  v80 = OUTLINED_FUNCTION_20_12();
  v82 = v81(v80);
  v83 = v132;
  v84 = v135;
  v85 = v130;
  if (v82 == *MEMORY[0x277D5BC38])
  {
    v122 = v65;
    v125 = v64;
    v86 = *(v76 + 96);
    v87 = OUTLINED_FUNCTION_20_12();
    v88(v87);
    v89 = *(v133 + 16);
    v136 = v53;
    v89(v131, v53, v134);
    sub_266669BA8();
    v90 = v127;
    (*(v128 + 104))(v127, *MEMORY[0x277D5BED8], v83);
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v83);
    v91 = *(v126 + 48);
    sub_2665E0920(v85, v84);
    sub_2665E0920(v90, v84 + v91);
    OUTLINED_FUNCTION_1_2(v84);
    if (v96)
    {
      v95 = &qword_28007DD40;
      OUTLINED_FUNCTION_23_9(v90);
      OUTLINED_FUNCTION_23_9(v85);
      OUTLINED_FUNCTION_1_2(v84 + v91);
      if (v96)
      {
        sub_26656CAEC(v84, &qword_28007DD40, &qword_266672600);
        v92 = v136;
LABEL_22:
        v107 = OUTLINED_FUNCTION_17_10();
        v122(v107);
        OUTLINED_FUNCTION_12_14(v95);
        sub_2665DEA7C(v95);
        v108 = v134;
        v109 = *(v133 + 8);
        v109(v131, v134);
        v109(v92, v108);
        return;
      }
    }

    else
    {
      v95 = v124;
      sub_2665E0920(v84, v124);
      OUTLINED_FUNCTION_1_2(v84 + v91);
      if (!v96)
      {
        v101 = v85;
        v102 = v128;
        v103 = v84 + v91;
        v104 = v123;
        (*(v128 + 32))(v123, v103, v83);
        sub_2665E0990();
        v105 = sub_26666C2E8();
        v106 = *(v102 + 8);
        v106(v104, v83);
        sub_26656CAEC(v127, &qword_28007DD40, &qword_266672600);
        sub_26656CAEC(v101, &qword_28007DD40, &qword_266672600);
        v106(v95, v83);
        sub_26656CAEC(v135, &qword_28007DD40, &qword_266672600);
        v92 = v136;
        if (v105)
        {
          goto LABEL_22;
        }

LABEL_18:
        v97 = v134;
        v98 = *(v133 + 8);
        v98(v131, v134);
        v99 = v129;
        __swift_storeEnumTagSinglePayload(v129, 3, 4, v44);
        sub_2665DEA7C(v99);
        v98(v92, v97);
        return;
      }

      OUTLINED_FUNCTION_23_9(v127);
      OUTLINED_FUNCTION_23_9(v85);
      (*(v128 + 8))(v95, v83);
    }

    sub_26656CAEC(v84, &qword_28007DD38, &qword_2666725F8);
    v92 = v136;
    goto LABEL_18;
  }

  v93 = *MEMORY[0x277D5BC30];
  if (v82 == v93)
  {
    v94 = OUTLINED_FUNCTION_20_12();
    v125(v94);
LABEL_20:
    v100 = OUTLINED_FUNCTION_17_10();
    (v65)(v100);
    OUTLINED_FUNCTION_12_14(v93);
    sub_2665DEA7C(v93);
    return;
  }

  if (v82 == *MEMORY[0x277D5BC40])
  {
    goto LABEL_20;
  }

  if (v82 == *MEMORY[0x277D5BC28])
  {
    v110 = sub_26666C148();
    v111 = sub_26666C618();
    if (os_log_type_enabled(v110, v111))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_35_1(&dword_266549000, v112, v113, "[ConflictConfirmationFlow] Schedule over conflict message is unanswered, prompting again");
      OUTLINED_FUNCTION_4_1();
    }
  }

  else
  {
    sub_26656CBFC();
    v114 = swift_allocError();
    v116 = OUTLINED_FUNCTION_35_3(v114, v115);
    v117 = v76;
    v118 = v129;
    *v129 = v119;
    *(v118 + 8) = 0;
    (*(v117 + 104))(v118, v93, v44, v116);
    OUTLINED_FUNCTION_12_14(v118);
    sub_2665DEA7C(v118);
    v120 = OUTLINED_FUNCTION_20_12();
    v125(v120);
  }
}

void sub_2665E0034(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_42_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_42_0();
  v7 = *(v6 + 88);
  v67 = v1;
  v9 = *(v8 + 96);
  v10 = *(*(type metadata accessor for NeedsConfirmationConflictFlow.State() - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v63 - v13;
  sub_266669BB8();
  v15 = OUTLINED_FUNCTION_11_15();
  v16 = OUTLINED_FUNCTION_3_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16, v21);
  OUTLINED_FUNCTION_10_5();
  v69 = v22 - v23;
  OUTLINED_FUNCTION_12_7();
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v63 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v63 - v30;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v32 = sub_26666C168();
  v33 = __swift_project_value_buffer(v32, qword_28156D7E8);
  v34 = v18[2];
  v68 = a1;
  OUTLINED_FUNCTION_15_12();
  v34();
  v66 = v33;
  v35 = sub_26666C148();
  v36 = sub_26666C618();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_21();
    v65 = v14;
    v38 = v37;
    v63 = v37;
    v64 = OUTLINED_FUNCTION_13_0();
    v70 = v64;
    *v38 = 136315138;
    (v34)(v28, v31, v15);
    OUTLINED_FUNCTION_2_26();
    swift_getWitnessTable();
    v39 = sub_26666C328();
    v41 = v40;
    v42 = v18[1];
    v43 = OUTLINED_FUNCTION_10_15();
    v42(v43);
    v44 = sub_2665BFC90(v39, v41, &v70);

    v45 = v63;
    *(v63 + 4) = v44;
    _os_log_impl(&dword_266549000, v35, v36, "[ConflictConfirmationFlow] Change or cancel result: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_4_1();
    v14 = v65;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v42 = v18[1];
    v46 = OUTLINED_FUNCTION_10_15();
    v42(v46);
  }

  OUTLINED_FUNCTION_15_12();
  v34();
  v47 = v18[11];
  v48 = OUTLINED_FUNCTION_10_15();
  v50 = v49(v48);
  if (v50 == *MEMORY[0x277D5BC38])
  {
    OUTLINED_FUNCTION_15_12();
    v34();
    OUTLINED_FUNCTION_7_18();
LABEL_8:
    v51 = OUTLINED_FUNCTION_10_15();
    v42(v51);
    return;
  }

  v52 = v18;
  v53 = *MEMORY[0x277D5BC30];
  if (v50 == v53)
  {
    v54 = OUTLINED_FUNCTION_10_15();
    v42(v54);
LABEL_12:
    OUTLINED_FUNCTION_15_12();
    v34();
    OUTLINED_FUNCTION_7_18();
    return;
  }

  if (v50 == *MEMORY[0x277D5BC40])
  {
    goto LABEL_12;
  }

  if (v50 != *MEMORY[0x277D5BC28])
  {
    sub_26656CBFC();
    v59 = swift_allocError();
    v61 = OUTLINED_FUNCTION_35_3(v59, v60);
    *v14 = v62;
    v14[8] = 0;
    (v52[13])(v14, v53, v15, v61);
    OUTLINED_FUNCTION_7_18();
    goto LABEL_8;
  }

  v55 = sub_26666C148();
  v56 = sub_26666C618();
  if (os_log_type_enabled(v55, v56))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_35_1(&dword_266549000, v57, v58, "[ConflictConfirmationFlow] Schedule over conflict message is unanswered, prompting again");
    OUTLINED_FUNCTION_4_1();
  }
}

char *sub_2665E04B4()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(*v0 + 120);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = type metadata accessor for NeedsConfirmationConflictFlow.State();
  OUTLINED_FUNCTION_18_2(v8);
  (*(v9 + 8))(&v0[v4]);
  return v0;
}

uint64_t sub_2665E0570()
{
  sub_2665E04B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2665E0600(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_266669BB8();
  v2 = sub_266669778();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2665E06B4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266553FF0;

  return sub_2665DF0D8(a1);
}

unint64_t sub_2665E0774(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_0(a1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v9);
  v10 = *(a1 + 16);
  sub_266669BB8();
  v11 = OUTLINED_FUNCTION_11_15();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 4, v11);
  result = 0x696C616974696E69;
  switch(EnumTagSinglePayload)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      (*(v4 + 8))(v9, a1);
      result = 0x6574656C706D6F63;
      break;
  }

  return result;
}

uint64_t sub_2665E0920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2665E0990()
{
  result = qword_28007DD50;
  if (!qword_28007DD50)
  {
    sub_266669AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DD50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 4, v0);
  v3 = *(v2 - 112);

  return sub_2665DEA7C(v1);
}

uint64_t OUTLINED_FUNCTION_11_15()
{

  return sub_266669778();
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 4, v1);
}

uint64_t OUTLINED_FUNCTION_16_12@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 200) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_10()
{
  result = *(v0 - 168);
  v2 = *(v0 - 104);
  return result;
}

void OUTLINED_FUNCTION_21_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1)
{

  return sub_26656CAEC(a1, v1, v2);
}

uint64_t sub_2665E0B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2665E0BD4(char a1)
{
  if (a1)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

uint64_t sub_2665E0C0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3)
  {
    return a6 & (a1 == a4);
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_26666CAC8();
  }
}

uint64_t sub_2665E0C50(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v36 = a2;
  v37 = a4;
  v34 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBE0, &qword_266676368);
  OUTLINED_FUNCTION_3_0(v35);
  v33 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBE8, &qword_266676370);
  OUTLINED_FUNCTION_3_0(v12);
  v32 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBF0, &qword_266676378);
  OUTLINED_FUNCTION_3_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v32 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665E1DC8();
  sub_26666CBE8();
  if (v37)
  {
    v39 = 1;
    sub_2665E1E1C();
    sub_26666CA08();
    v30 = v35;
    sub_26666CA68();
    (*(v33 + 8))(v11, v30);
  }

  else
  {
    v38 = 0;
    sub_2665E1E70();
    sub_26666CA08();
    sub_26666CA48();
    (*(v32 + 8))(v19, v12);
  }

  return (*(v22 + 8))(v28, v20);
}

uint64_t sub_2665E0F0C(uint64_t *a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBB0, &qword_266676348);
  OUTLINED_FUNCTION_3_0(v53);
  v51 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5, v6);
  v8 = v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBB8, &qword_266676350);
  OUTLINED_FUNCTION_3_0(v9);
  v50[3] = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v13, v14);
  v16 = v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBC0, &unk_266676358);
  OUTLINED_FUNCTION_3_0(v17);
  v52 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v21, v22);
  v24 = v50 - v23;
  v25 = a1[4];
  v26 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665E1DC8();
  v27 = v54;
  sub_26666CBD8();
  if (v27)
  {
    goto LABEL_10;
  }

  v50[1] = v9;
  v50[2] = v16;
  v54 = a1;
  v28 = v53;
  v29 = v24;
  v30 = sub_26666C9F8();
  result = sub_266575DD8(v30, 0);
  if (v33 == v34 >> 1)
  {
LABEL_8:
    v42 = sub_26666C848();
    swift_allocError();
    v44 = v43;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190) + 48);
    *v44 = &type metadata for DIParticipantDisambiguationResponse;
    v26 = v29;
    sub_26666C978();
    sub_26666C838();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v29, v17);
    a1 = v54;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v26;
  }

  v50[0] = 0;
  if (v33 < (v34 >> 1))
  {
    v35 = *(v32 + v33);
    sub_266575DD4(v33 + 1);
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    v40 = v37 == v39 >> 1;
    v41 = v51;
    if (v40)
    {
      v55 = v35;
      if (v35)
      {
        v57 = 1;
        sub_2665E1E1C();
        OUTLINED_FUNCTION_7_19();
        v26 = sub_26666C9D8();
        swift_unknownObjectRelease();
        (*(v41 + 8))(v8, v28);
      }

      else
      {
        v56 = 0;
        sub_2665E1E70();
        OUTLINED_FUNCTION_7_19();
        v26 = sub_26666C9B8();
        swift_unknownObjectRelease();
        v48 = OUTLINED_FUNCTION_5_20();
        v49(v48);
      }

      v46 = OUTLINED_FUNCTION_1_29();
      v47(v46);
      __swift_destroy_boxed_opaque_existential_1(v54);
      return v26;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665E140C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665E0B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665E1434(uint64_t a1)
{
  v2 = sub_2665E1DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665E1470(uint64_t a1)
{
  v2 = sub_2665E1DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665E14AC(uint64_t a1)
{
  v2 = sub_2665E1E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665E14E8(uint64_t a1)
{
  v2 = sub_2665E1E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665E1524(uint64_t a1)
{
  v2 = sub_2665E1E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665E1560(uint64_t a1)
{
  v2 = sub_2665E1E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665E15D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2665E0F0C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_2665E1640(char *a1)
{
  v2 = sub_266669E48();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26666BE58();
  v11 = OUTLINED_FUNCTION_3_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_266669E28();
  v21 = v20;
  *&v50 = 0xD000000000000028;
  *(&v50 + 1) = 0x800000026667D640;
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0xD000000000000021, 0x800000026667EE40);
  if (v19 == v50 && v21 == *(&v50 + 1))
  {

LABEL_8:
    if (sub_266669E38())
    {
      v26 = *MEMORY[0x277D56500];
      v27 = OUTLINED_FUNCTION_4_27();
      v28(v27);
      sub_26666BE48();
      (*(v13 + 8))(v18, v10);
      OUTLINED_FUNCTION_6_15();

      if (*(&v51 + 1))
      {
        if (swift_dynamicCast())
        {
LABEL_11:
          v29 = OUTLINED_FUNCTION_3_26();
          v30(v29);
          return v49;
        }

LABEL_14:
        if (sub_266669E38())
        {
          v32 = *MEMORY[0x277D56508];
          v33 = OUTLINED_FUNCTION_4_27();
          v34(v33);
          sub_26666BE48();
          (*(v13 + 8))(v18, v10);
          OUTLINED_FUNCTION_6_15();

          v35 = v48;
          if (*(&v51 + 1))
          {
            if (swift_dynamicCast())
            {
              goto LABEL_11;
            }

LABEL_20:
            if (qword_28156C150 != -1)
            {
              swift_once();
            }

            v36 = sub_26666C168();
            __swift_project_value_buffer(v36, qword_28156D7E8);
            (*(v5 + 16))(v35, a1, v2);
            v37 = sub_26666C148();
            v38 = sub_26666C608();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              *&v50 = v40;
              *v39 = 136315138;
              v49 = sub_266669E38();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2E8, &unk_26666E620);
              v41 = sub_26666C318();
              v43 = v42;
              v44 = *(v5 + 8);
              v44(v35, v2);
              v45 = sub_2665BFC90(v41, v43, &v50);

              *(v39 + 4) = v45;
              _os_log_impl(&dword_266549000, v37, v38, "[DIParticipantDisambiguationResponse] Unexpected userData of %s", v39, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v40);
              MEMORY[0x266789690](v40, -1, -1);
              MEMORY[0x266789690](v39, -1, -1);

              v44(a1, v2);
            }

            else
            {

              v46 = *(v5 + 8);
              v46(a1, v2);
              v46(v35, v2);
            }

            return 0;
          }
        }

        else
        {
          v50 = 0u;
          v51 = 0u;
          v35 = v48;
        }

        sub_2665E1B80(&v50);
        goto LABEL_20;
      }
    }

    else
    {
      v50 = 0u;
      v51 = 0u;
    }

    sub_2665E1B80(&v50);
    goto LABEL_14;
  }

  v23 = sub_26666CAC8();

  if (v23)
  {
    goto LABEL_8;
  }

  v24 = OUTLINED_FUNCTION_3_26();
  v25(v24);
  return 0;
}

uint64_t sub_2665E1B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EB90, &unk_266676210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2665E1BF4(uint64_t a1, unsigned int a2)
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

uint64_t sub_2665E1C34(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665E1C94(void *a1)
{
  a1[1] = sub_2665E1CCC();
  a1[2] = sub_2665E1D20();
  result = sub_2665E1D74();
  a1[3] = result;
  return result;
}

unint64_t sub_2665E1CCC()
{
  result = qword_28007EB98;
  if (!qword_28007EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EB98);
  }

  return result;
}

unint64_t sub_2665E1D20()
{
  result = qword_28007EBA0;
  if (!qword_28007EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBA0);
  }

  return result;
}

unint64_t sub_2665E1D74()
{
  result = qword_28007EBA8;
  if (!qword_28007EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBA8);
  }

  return result;
}

unint64_t sub_2665E1DC8()
{
  result = qword_28007EBC8;
  if (!qword_28007EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBC8);
  }

  return result;
}

unint64_t sub_2665E1E1C()
{
  result = qword_28007EBD0;
  if (!qword_28007EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBD0);
  }

  return result;
}

unint64_t sub_2665E1E70()
{
  result = qword_28007EBD8;
  if (!qword_28007EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIParticipantDisambiguationResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2665E1FB0(_BYTE *result, int a2, int a3)
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

unint64_t sub_2665E2060()
{
  result = qword_28007EBF8;
  if (!qword_28007EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBF8);
  }

  return result;
}

unint64_t sub_2665E20B8()
{
  result = qword_28007EC00;
  if (!qword_28007EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC00);
  }

  return result;
}

unint64_t sub_2665E2110()
{
  result = qword_28007EC08;
  if (!qword_28007EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC08);
  }

  return result;
}

unint64_t sub_2665E2168()
{
  result = qword_28007EC10;
  if (!qword_28007EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC10);
  }

  return result;
}

unint64_t sub_2665E21C0()
{
  result = qword_28007EC18;
  if (!qword_28007EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC18);
  }

  return result;
}

unint64_t sub_2665E2218()
{
  result = qword_28007EC20;
  if (!qword_28007EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC20);
  }

  return result;
}

unint64_t sub_2665E2270()
{
  result = qword_28007EC28;
  if (!qword_28007EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC28);
  }

  return result;
}

unint64_t sub_2665E22C8()
{
  result = qword_28007EC30;
  if (!qword_28007EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC30);
  }

  return result;
}

unint64_t sub_2665E2320()
{
  result = qword_28007EC38;
  if (!qword_28007EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC38);
  }

  return result;
}

double OUTLINED_FUNCTION_6_15()
{

  return sub_2665763EC(v0, v2, v1, (v3 - 112));
}

uint64_t OUTLINED_FUNCTION_7_19()
{
  v2 = *(v0 - 144);

  return sub_26666C968();
}

uint64_t sub_2665E2400()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

uint64_t sub_2665E243C(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  v2 = a1[18];

  *(v1 + 26) = v2;
  return v1;
}

double sub_2665E247C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD000000000000017 && 0x800000026667D070 == a2;
  if (v6 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  v10 = a1 == 0xD000000000000015 && 0x800000026667D090 == a2;
  if (v10 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[25];
    goto LABEL_7;
  }

  v11 = a1 == 0xD000000000000016 && 0x800000026667D0B0 == a2;
  if (v11 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[26];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_2665E256C()
{
  v0 = sub_26666C958();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2665E25B8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000017;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000016;
}

uint64_t sub_2665E262C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2665E256C();
  *a2 = result;
  return result;
}

unint64_t sub_2665E265C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2665E25B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2665E2690@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2665E256C();
  *a1 = result;
  return result;
}

uint64_t sub_2665E26C4(uint64_t a1)
{
  v2 = sub_2665E2C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665E2700(uint64_t a1)
{
  v2 = sub_2665E2C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665E273C()
{

  return MEMORY[0x2821FE8D8](v0, 27, 7);
}

uint64_t sub_2665E2798(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EC60, &qword_2666767F8);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v19[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665E2C70();
  sub_26666CBE8();
  v15 = v3[24];
  v19[15] = 0;
  OUTLINED_FUNCTION_0_8();
  if (!v2)
  {
    v16 = v3[25];
    v19[14] = 1;
    OUTLINED_FUNCTION_0_8();
    v17 = v3[26];
    v19[13] = 2;
    OUTLINED_FUNCTION_0_8();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_2665E28F4(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_2665E2968(a1);
  return v2;
}

uint64_t sub_2665E2968(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EC50, &qword_2666767F0);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v17 - v12;
  *(v1 + 16) = 0;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665E2C70();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarResultSetWindowPromptOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_1_8() & 1;
    v19 = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_8() & 1;
    v18 = 2;
    v16 = OUTLINED_FUNCTION_1_8();
    (*(v8 + 8))(v13, v5);
    *(v3 + 26) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2665E2B78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2665E28F4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2665E2C30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarResultSetWindowPromptOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2665E2C70()
{
  result = qword_28007EC58;
  if (!qword_28007EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarResultSetWindowPromptOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665E2DA4()
{
  result = qword_28007EC68;
  if (!qword_28007EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC68);
  }

  return result;
}

unint64_t sub_2665E2DFC()
{
  result = qword_28007EC70;
  if (!qword_28007EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC70);
  }

  return result;
}

unint64_t sub_2665E2E54()
{
  result = qword_28007EC78;
  if (!qword_28007EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC78);
  }

  return result;
}

uint64_t type metadata accessor for FindEventDayComparator()
{
  result = qword_28007EC80;
  if (!qword_28007EC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665E2F1C()
{
  result = sub_266668D38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2665E2F98(void *a1, void *a2)
{
  if (sub_2665EC938() & 1) != 0 && (sub_2665EC938())
  {

    return sub_2665E305C(a1, a2);
  }

  else if (sub_2665EC908() & 1) != 0 && (sub_2665EC908())
  {

    return sub_2665E3158(a1, a2);
  }

  else if (sub_2665EC938())
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2665E305C(void *a1, void *a2)
{
  v4 = [a1 dateTimeRange];
  sub_2665D4854();
  v6 = v5;

  if (v6 & 1) != 0 && (v7 = [a2 dateTimeRange], sub_2665D4854(), v9 = v8, v7, (v9))
  {
    if (sub_2665ECA68())
    {
      return 1;
    }

    else
    {
      return (sub_2665ECA68() << 63) >> 63;
    }
  }

  else
  {
    v11 = [a1 dateTimeRange];
    sub_2665D4854();
    v13 = v12;

    if (v13)
    {
      return -1;
    }

    else
    {
      v14 = [a2 dateTimeRange];
      sub_2665D4854();
      v16 = v15;

      return v16 & 1;
    }
  }
}

uint64_t sub_2665E3158(void *a1, void *a2)
{
  v168 = a2;
  v3 = sub_266668E68();
  v162 = *(v3 - 8);
  v163 = v3;
  v4 = *(v162 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v161 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266668998();
  v159 = *(v7 - 8);
  v160 = v7;
  v8 = *(v159 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v158 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v157 = &v154 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v164 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v165 = &v154 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v154 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v154 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v154 - v32;
  v35 = MEMORY[0x28223BE20](v31, v34);
  v37 = &v154 - v36;
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v154 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v154 - v43;
  v45 = sub_266668D38();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v49 = MEMORY[0x28223BE20](v45, v48);
  v156 = &v154 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49, v51);
  v155 = &v154 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v166 = &v154 - v56;
  v58 = MEMORY[0x28223BE20](v55, v57);
  v167 = &v154 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v63 = &v154 - v62;
  MEMORY[0x28223BE20](v61, v64);
  v169 = a1;
  v170 = &v154 - v65;
  v66 = [a1 dateTimeRange];
  if (!v66)
  {
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v45);
LABEL_7:
    v72 = v44;
LABEL_32:
    sub_266574608(v72);
    return 0;
  }

  v67 = v66;
  v171 = v46;
  v68 = [v66 startDate];

  if (v68)
  {
    sub_266668CE8();

    v69 = 0;
  }

  else
  {
    v69 = 1;
  }

  __swift_storeEnumTagSinglePayload(v41, v69, 1, v45);
  sub_266557CE4(v41, v44);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v45);
  v71 = v171;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_7;
  }

  v73 = v63;
  v74 = *(v171 + 32);
  v75 = v170;
  v76 = v44;
  v154 = v171 + 32;
  v77 = v74;
  v74(v170, v76, v45);
  v78 = [v169 dateTimeRange];
  if (!v78)
  {
    (*(v71 + 8))(v75, v45);
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v45);
LABEL_15:
    v72 = v37;
    goto LABEL_32;
  }

  v79 = v78;
  v80 = [v78 endDate];

  if (v80)
  {
    sub_266668CE8();

    v81 = 0;
  }

  else
  {
    v81 = 1;
  }

  __swift_storeEnumTagSinglePayload(v33, v81, 1, v45);
  sub_266557CE4(v33, v37);
  v82 = __swift_getEnumTagSinglePayload(v37, 1, v45);
  v83 = v171;
  if (v82 == 1)
  {
    (*(v171 + 8))(v170, v45);
    goto LABEL_15;
  }

  v77(v73, v37, v45);
  v84 = v168;
  v85 = [v168 dateTimeRange];
  if (!v85)
  {
    v89 = *(v83 + 8);
    v89(v73, v45);
    v89(v170, v45);
LABEL_27:
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v45);
    goto LABEL_31;
  }

  v86 = v85;
  v87 = [v85 startDate];

  if (v87)
  {
    sub_266668CE8();

    v88 = 0;
  }

  else
  {
    v88 = 1;
  }

  __swift_storeEnumTagSinglePayload(v25, v88, 1, v45);
  sub_266557CE4(v25, v29);
  v90 = __swift_getEnumTagSinglePayload(v29, 1, v45);
  v91 = v171;
  if (v90 == 1)
  {
    v92 = *(v171 + 8);
    v92(v73, v45);
    v92(v170, v45);
LABEL_31:
    v72 = v29;
    goto LABEL_32;
  }

  v93 = v167;
  v77(v167, v29, v45);
  v94 = [v84 dateTimeRange];
  if (!v94)
  {
    v101 = *(v91 + 8);
    v101(v93, v45);
    v101(v73, v45);
    v101(v170, v45);
    v29 = v165;
    goto LABEL_27;
  }

  v95 = v94;
  v96 = [v94 endDate];

  v97 = v73;
  if (v96)
  {
    v98 = v164;
    sub_266668CE8();

    v99 = 0;
    v29 = v165;
    v100 = v166;
  }

  else
  {
    v99 = 1;
    v29 = v165;
    v100 = v166;
    v98 = v164;
  }

  __swift_storeEnumTagSinglePayload(v98, v99, 1, v45);
  sub_266557CE4(v98, v29);
  v102 = __swift_getEnumTagSinglePayload(v29, 1, v45);
  v103 = v170;
  if (v102 == 1)
  {
    v104 = *(v171 + 8);
    v104(v93, v45);
    v104(v97, v45);
    v104(v103, v45);
    goto LABEL_31;
  }

  v77(v100, v29, v45);
  v107 = [v169 dateTimeRange];
  sub_2665D4854();
  v109 = v108;

  if (v109)
  {
    v110 = [v84 dateTimeRange];
    sub_2665D4854();
    v112 = v111;

    if (v112)
    {
      v113 = v171;
      v114 = *(v171 + 16);
      v115 = v155;
      v114(v155, v103, v45);
      v116 = v156;
      v114(v156, v97, v45);
      v117 = v157;
      sub_266668978();
      v114(v115, v167, v45);
      v118 = v166;
      v114(v116, v166, v45);
      v119 = v158;
      sub_266668978();
      v105 = sub_266668988();
      v120 = *(v159 + 8);
      v121 = v119;
      v122 = v160;
      v120(v121, v160);
      v120(v117, v122);
      v123 = *(v113 + 8);
      v123(v118, v45);
      v123(v167, v45);
      v123(v97, v45);
      v124 = v170;
LABEL_52:
      v123(v124, v45);
      return v105;
    }
  }

  v125 = v161;
  sub_266668E58();
  v126 = *(type metadata accessor for FindEventDayComparator() + 20);
  LODWORD(v165) = sub_266668E48();
  v127 = v163;
  v128 = *(v162 + 8);
  v128(v125, v163);
  sub_266668E58();
  LODWORD(v164) = sub_266668E48();
  v128(v125, v127);
  sub_266668E58();
  v129 = sub_266668E48();
  v128(v125, v127);
  sub_266668E58();
  v130 = sub_266668E48();
  v128(v125, v127);
  v131 = [v169 &off_279BCF2A0 + 5];
  sub_2665D4854();
  LOBYTE(v126) = v132;

  if (v126)
  {
    if ((v129 & 1) == 0)
    {
      v138 = v170;
      if ((v130 & 1) == 0)
      {
        v146 = *(v171 + 8);
        v146(v166, v45);
        v146(v167, v45);
        v146(v97, v45);
        v146(v138, v45);
        return -1;
      }

      v139 = v166;
      v105 = sub_266668D08();
      v123 = *(v171 + 8);
      v123(v139, v45);
      v123(v167, v45);
      v123(v97, v45);
      v124 = v138;
      goto LABEL_52;
    }

    v133 = v167;
    v134 = v170;
    goto LABEL_49;
  }

  v135 = [v168 &off_279BCF2A0 + 5];
  sub_2665D4854();
  v137 = v136;

  if (v137)
  {
    v134 = v170;
    if ((v165 & 1) == 0)
    {
      if ((v164 & 1) == 0)
      {
        v149 = *(v171 + 8);
        v149(v166, v45);
        v149(v167, v45);
        v149(v97, v45);
        v149(v134, v45);
        return 1;
      }

      v133 = v167;
      goto LABEL_49;
    }

LABEL_48:
    v133 = v167;
LABEL_49:
    v105 = sub_266668D08();
    v123 = *(v171 + 8);
    v123(v166, v45);
LABEL_50:
    v142 = v133;
LABEL_51:
    v123(v142, v45);
    v123(v97, v45);
    v124 = v134;
    goto LABEL_52;
  }

  v140 = v165;
  v141 = v129 ^ 1;
  v134 = v170;
  if (((v165 ^ 1) & 1) == 0 && (v141 & 1) == 0)
  {
    goto LABEL_48;
  }

  v143 = v164;
  v144 = v130 ^ 1;
  if (((v164 ^ 1) & 1) == 0 && (v144 & 1) == 0)
  {
    v145 = v166;
    v105 = sub_266668D08();
    v123 = *(v171 + 8);
    v123(v145, v45);
LABEL_64:
    v142 = v167;
    goto LABEL_51;
  }

  v147 = v166;
  if (((v165 ^ 1 | v144) & 1) == 0)
  {
    v150 = sub_266668D08();
    v151 = v147;
    v105 = v150;
    v123 = *(v171 + 8);
    v123(v151, v45);
    goto LABEL_64;
  }

  if (((v164 ^ 1 | v141) & 1) == 0)
  {
    v133 = v167;
    v152 = sub_266668D08();
    v153 = v147;
    v105 = v152;
    v123 = *(v171 + 8);
    v123(v153, v45);
    goto LABEL_50;
  }

  v148 = *(v171 + 8);
  v148(v166, v45);
  v148(v167, v45);
  v148(v97, v45);
  v148(v134, v45);
  if ((v140 | v143))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2665E3F18(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_266668EC8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for FindEventDayComparator() + 20);

  return sub_266668CD8();
}

uint64_t sub_2665E3F80()
{
  v1 = *v0;
  sub_266668ED8();
  v2 = *(type metadata accessor for FindEventDayComparator() + 20);
  sub_266668D38();
  OUTLINED_FUNCTION_0_28();
  sub_2665E41E8(v3, v4);
  return sub_26666C278();
}

uint64_t sub_2665E4000()
{
  sub_26666CB88();
  v1 = *v0;
  sub_266668ED8();
  v2 = *(type metadata accessor for FindEventDayComparator() + 20);
  sub_266668D38();
  OUTLINED_FUNCTION_0_28();
  sub_2665E41E8(v3, v4);
  sub_26666C278();
  return sub_26666CBC8();
}

uint64_t sub_2665E40B0(uint64_t a1, uint64_t a2)
{
  sub_26666CB88();
  v4 = *v2;
  sub_266668ED8();
  v5 = *(a2 + 20);
  sub_266668D38();
  sub_2665E41E8(&qword_28007E5D0, MEMORY[0x277CC9578]);
  sub_26666C278();
  return sub_26666CBC8();
}

uint64_t sub_2665E41E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2665E4248(char a1)
{
  v3 = sub_26666A828();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v4 + 104);
  if (a1)
  {
    v10 = sub_26666B078();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_26666B068();
    OUTLINED_FUNCTION_3_27();
    v34 = sub_26666B068();
    v13 = *MEMORY[0x277D5EA50];
    v14 = *(v4 + 104);
    v15 = OUTLINED_FUNCTION_2_27();
    v14(v15);
    sub_2665E466C();
    v16 = OUTLINED_FUNCTION_1_30();
    v9(v16);
    sub_26666AC38();

    v17 = *MEMORY[0x277D5EA28];
    v18 = OUTLINED_FUNCTION_2_27();
    v14(v18);
    v19 = v34;
    sub_2665E466C();
    (v9)(v8, v3);
    sub_26666AC38();
  }

  else
  {
    v22 = sub_26666B0B8();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_26666B0A8();
    OUTLINED_FUNCTION_3_27();
    v34 = sub_26666B0A8();
    v25 = *MEMORY[0x277D5EA50];
    v14 = *(v4 + 104);
    v26 = OUTLINED_FUNCTION_2_27();
    v14(v26);
    sub_2665E466C();
    v27 = OUTLINED_FUNCTION_1_30();
    v9(v27);
    sub_26666B028();

    v28 = *MEMORY[0x277D5EA28];
    v29 = OUTLINED_FUNCTION_2_27();
    v14(v29);
    v19 = v34;
    sub_2665E466C();
    (v9)(v8, v3);
    sub_26666B028();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
  v20 = *(*(sub_26666A058() - 8) + 72);
  v21 = OUTLINED_FUNCTION_0_29();
  *(v21 + 16) = xmmword_26666EED0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266676A20;
  *(inited + 32) = v1;
  *(inited + 40) = v19;

  v31 = v35;
  sub_26664F374(inited, v14 + v21);
  if (v31)
  {

    swift_setDeallocating();
    sub_26663919C();
    *(v21 + 16) = 0;
  }

  else
  {
    swift_setDeallocating();
    sub_26663919C();
  }

  return v21;
}

uint64_t sub_2665E466C()
{
  v0 = sub_26666AF28();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_26666AF18();
  v4 = sub_26666ACE8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_26666ACD8();
  sub_26666A828();
  sub_2665E4720();
  sub_26666A418();

  sub_26666A7B8();

  return v3;
}

unint64_t sub_2665E4720()
{
  result = qword_28007ECA8;
  if (!qword_28007ECA8)
  {
    sub_26666A828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ECA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_29()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_27()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

void sub_2665E47E4()
{
  v1 = v0;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);

  oslog = sub_26666C148();
  v3 = sub_26666C5E8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = 0xEF776F6C466E6961;
    v7 = 0x4D65747563657865;
    if (*(v1 + 48) != 1)
    {
      v7 = 0x6574656C706D6F63;
      v6 = 0xE800000000000000;
    }

    if (*(v1 + 48))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x5065747563657865;
    }

    if (*(v1 + 48))
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEF73776F6C466572;
    }

    v10 = sub_2665BFC90(v8, v9, &v12);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_266549000, oslog, v3, "[RootFlow] transitioned to state %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x266789690](v5, -1, -1);
    MEMORY[0x266789690](v4, -1, -1);
  }
}

uint64_t sub_2665E49B0(char a1)
{
  if (!a1)
  {
    return 0x5065747563657865;
  }

  if (a1 == 1)
  {
    return 0x4D65747563657865;
  }

  return 0x6574656C706D6F63;
}

uint64_t sub_2665E4A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = 0;
  v8 = qword_28156C150;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v9 = sub_26666C168();
  __swift_project_value_buffer(v9, qword_28156D7E8);

  v10 = sub_26666C148();
  v11 = sub_26666C618();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECC0, &unk_266676B80);
    v14 = MEMORY[0x2667887F0](a1, v13);
    v16 = v15;

    v17 = sub_2665BFC90(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = sub_2666692A8();
    v19 = MEMORY[0x2667887F0](a2, v18);
    v21 = v20;

    v22 = sub_2665BFC90(v19, v21, &v24);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_266549000, v10, v11, "[RootFlow] \n<preconditionFlows: %s \n prerequisiteFlows: %s>", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_2665E4C48(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2665E4C68, 0, 0);
}

uint64_t sub_2665E4C68()
{
  v1 = v0[6];
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v2 = sub_26666C168();
      __swift_project_value_buffer(v2, qword_28156D7E8);
      v3 = sub_26666C148();
      v4 = sub_26666C618();
      if (os_log_type_enabled(v3, v4))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_3_9(&dword_266549000, v5, v4, "[RootFlow] Creating the main flow and finishing this flow as complete with it.");
        OUTLINED_FUNCTION_4_1();
      }

      v6 = v0[6];

      v7 = *(v6 + 40);
      v21 = (*(v6 + 32) + **(v6 + 32));
      v8 = *(*(v6 + 32) + 4);
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = sub_2665E4FDC;

      return v21();
    }

    v19 = v0[5];
    sub_2666698A8();
  }

  else
  {
    v22 = v0[5];
    v11 = *(v1 + 16);
    v12 = sub_2666692D8();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();

    v15 = sub_2666692C8();
    v16 = *(v1 + 24);
    type metadata accessor for EachFlow();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v0[2] = v17;
    v0[3] = v15;
    sub_2665E5A68(qword_28156C3C0, 255, type metadata accessor for EachFlow);

    v0[4] = sub_266669568();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_2665E5AB0;
    *(v18 + 24) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECB8, &qword_266676B78);
    sub_2665E5AE8();
    sub_266669838();
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_2665E4FDC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 56);
  v4 = *v0;
  *(*v0 + 64) = v2;

  return MEMORY[0x2822009F8](sub_2665E50D8, 0, 0);
}

uint64_t sub_2665E50D8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[8];
  v2 = v0[5];
  sub_266669898();

  v3 = v0[1];

  return v3();
}

void sub_2665E516C(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v3 = sub_26666C168();
    __swift_project_value_buffer(v3, qword_28156D7E8);
    v4 = sub_26666C148();
    v5 = sub_26666C618();
    v6 = 2;
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_9(&dword_266549000, v7, v5, "[RootFlow] A Guard flow failed, prerequisiteFlows did not execute. Finishing flow as complete.");
LABEL_10:
      OUTLINED_FUNCTION_4_1();
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    v4 = sub_26666C148();
    v9 = sub_26666C618();
    if (os_log_type_enabled(v4, v9))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_9(&dword_266549000, v10, v9, "[RootFlow] All guard flows passed and all prerequisiteFlows executed.");
      v6 = 1;
      goto LABEL_10;
    }

    v6 = 1;
  }

  *(v2 + 48) = v6;

  sub_2665E47E4();
}

uint64_t sub_2665E52D0()
{
  type metadata accessor for RootFlow();
  sub_2665E5A68(qword_28156C2E8, v0, type metadata accessor for RootFlow);
  return sub_266669548();
}

uint64_t sub_2665E535C()
{
  v0 = sub_26666C958();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2665E53A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_266603CE8();
}

uint64_t sub_2665E53CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2665E535C();
  *a2 = result;
  return result;
}

uint64_t sub_2665E53FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2665E49B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_2665E5428()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t sub_2665E5458()
{
  sub_2665E5428();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

_BYTE *storeEnumTagSinglePayload for RootFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665E5590()
{
  result = qword_28007ECB0;
  if (!qword_28007ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ECB0);
  }

  return result;
}

uint64_t sub_2665E55E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26658F46C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2665E56B8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2665E5754;

  return sub_2665E4C48(a1);
}

uint64_t sub_2665E5754()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2665E5844()
{
  type metadata accessor for RootFlow();

  return sub_266669588();
}

uint64_t sub_2665E587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_266669368();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v29 = MEMORY[0x277D84F90];
    sub_26666C898();
    v15 = v9 + 16;
    v28 = *(v9 + 16);
    v16 = *(v9 + 80);
    v24 = a1;
    v17 = a1 + ((v16 + 32) & ~v16);
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    do
    {
      v28(v13, v17, v8);
      sub_2666692F8();
      (*v19)(v13, v8);
      sub_26666C868();
      v20 = *(v29 + 16);
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
      v17 += v18;
      --v14;
    }

    while (v14);

    v21 = v29;
    a3 = v26;
    a4 = v27;
    a2 = v25;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  type metadata accessor for RootFlow();
  v22 = swift_allocObject();
  sub_2665E4A20(v21, a2, a3, a4);
  return v22;
}

uint64_t sub_2665E5A68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2665E5ABC(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_2665E5AE8()
{
  result = qword_28156D150;
  if (!qword_28156D150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007ECB8, &qword_266676B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156D150);
  }

  return result;
}

uint64_t sub_2665E5B4C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2665E5B8C(uint64_t result, int a2, int a3)
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

uint64_t _s17DayEventGroupingsV8GroupingVMa()
{
  result = qword_28007ECC8;
  if (!qword_28007ECC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2665E5C4C()
{
  sub_266668D38();
  if (v0 <= 0x3F)
  {
    sub_2665E5CD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2665E5CD0()
{
  if (!qword_28007DD00)
  {
    sub_26656CC50();
    v0 = sub_26666C508();
    if (!v1)
    {
      atomic_store(v0, &qword_28007DD00);
    }
  }
}

uint64_t sub_2665E5D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v150 = a3;
  v145 = a2;
  EventDayComparator = type metadata accessor for FindEventDayComparator();
  v4 = OUTLINED_FUNCTION_18_2(EventDayComparator);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1_0();
  v132 = (v9 - v8);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECD8, &unk_266676C30);
  v10 = OUTLINED_FUNCTION_18_2(v131);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_10_5();
  v130 = v14 - v15;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v16, v17);
  v129 = &v122 - v18;
  v128 = _s17DayEventGroupingsV8GroupingVMa();
  v19 = OUTLINED_FUNCTION_3_0(v128);
  v127 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19, v23);
  OUTLINED_FUNCTION_1_0();
  v134 = v25 - v24;
  v140 = sub_266668E68();
  v26 = OUTLINED_FUNCTION_3_0(v140);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26, v31);
  OUTLINED_FUNCTION_1_0();
  v139 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  OUTLINED_FUNCTION_10_5();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v122 - v42;
  v44 = sub_266668D38();
  v45 = OUTLINED_FUNCTION_3_0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45, v50);
  OUTLINED_FUNCTION_10_5();
  v138 = v51 - v52;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v53, v54);
  v137 = &v122 - v55;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v56, v57);
  v141 = &v122 - v58;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v59, v60);
  v62 = &v122 - v61;
  v63 = sub_2665C485C(a1);
  v143 = v44;
  v146 = v47;
  v126 = v63;
  v124 = a1;
  if (!v63)
  {
    v66 = MEMORY[0x277D84F98];
LABEL_40:
    v43 = *(v66 + 16);
    v96 = MEMORY[0x277D84F90];
    if (v43)
    {
      v157 = MEMORY[0x277D84F90];
      sub_266633B60();
      v96 = v157;
      v99 = sub_2666395B0(v66);
      v100 = 0;
      v101 = v66 + 64;
      v147 = (v47 + 16);
      v148 = v66 + 64;
      v144 = (v47 + 32);
      v141 = v97;
      v142 = v43;
      v140 = v66 + 72;
      while ((v99 & 0x8000000000000000) == 0 && v99 < 1 << *(v66 + 32))
      {
        if ((*(v101 + 8 * (v99 >> 6)) & (1 << v99)) == 0)
        {
          goto LABEL_64;
        }

        if (*(v66 + 36) != v97)
        {
          goto LABEL_65;
        }

        v153 = 1 << v99;
        v154 = v99 >> 6;
        v151 = v100;
        v152 = v97;
        LODWORD(v149) = v98;
        v102 = *(v66 + 48) + *(v47 + 72) * v99;
        v103 = *(v47 + 16);
        v155 = v96;
        v104 = v129;
        v103(v129, v102, v44);
        v105 = *(*(v66 + 56) + 8 * v99);
        v106 = *(v47 + 32);
        v107 = v130;
        v106(v130, v104, v44);
        *(v107 + *(v131 + 48)) = v105;
        v108 = v44;
        v109 = v134;
        v103(v134, v107, v108);
        v156 = v105;
        v110 = v132;
        v103(&v132[*(EventDayComparator + 20)], v107, v108);
        *v110 = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E548, &qword_266674B08);
        sub_2665E8124();
        sub_2665E8188();
        v96 = v155;
        v111 = sub_26666C438();
        sub_2665E81E0(v110, type metadata accessor for FindEventDayComparator);
        *(v109 + *(v128 + 20)) = v111;
        sub_26656CAEC(v107, &qword_28007ECD8, &unk_266676C30);
        v157 = v96;
        v112 = *(v96 + 16);
        v43 = v112 + 1;
        if (v112 >= *(v96 + 24) >> 1)
        {
          sub_266633B60();
          v109 = v134;
          v96 = v157;
        }

        *(v96 + 16) = v43;
        sub_2665E8238(v109, v96 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v112);
        v113 = 1 << *(v66 + 32);
        v101 = v148;
        if (v99 >= v113)
        {
          goto LABEL_66;
        }

        v114 = *(v148 + 8 * v154);
        if ((v114 & v153) == 0)
        {
          goto LABEL_67;
        }

        if (*(v66 + 36) != v152)
        {
          goto LABEL_68;
        }

        v115 = v114 & (-2 << (v99 & 0x3F));
        if (v115)
        {
          v113 = __clz(__rbit64(v115)) | v99 & 0x7FFFFFFFFFFFFFC0;
          v44 = v143;
          v47 = v146;
        }

        else
        {
          v116 = v154 << 6;
          v117 = v154 + 1;
          v118 = (v140 + 8 * v154);
          v44 = v143;
          v47 = v146;
          while (v117 < (v113 + 63) >> 6)
          {
            v120 = *v118++;
            v119 = v120;
            v116 += 64;
            ++v117;
            if (v120)
            {
              sub_2665E829C(v99, v152, v149 & 1);
              v113 = __clz(__rbit64(v119)) + v116;
              goto LABEL_58;
            }
          }

          sub_2665E829C(v99, v152, v149 & 1);
        }

LABEL_58:
        v98 = 0;
        v100 = v151 + 1;
        v99 = v113;
        v97 = v141;
        v43 = v142;
        if (v151 + 1 == v142)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_63;
    }

LABEL_59:
    v157 = v96;

    sub_2665E6F78(&v157);

    sub_26656CAEC(v150, &qword_28007D140, &qword_26666F140);
    sub_26656CAEC(v145, &qword_28007D140, &qword_26666F140);

    return v157;
  }

  v64 = 0;
  v125 = a1 & 0xC000000000000001;
  v123 = a1 & 0xFFFFFFFFFFFFFF8;
  v122 = a1 + 32;
  v155 = v47 + 16;
  v147 = (v47 + 32);
  v65 = (v47 + 8);
  v136 = (v28 + 8);
  v66 = MEMORY[0x277D84F98];
  v149 = v43;
  v142 = v39;
  while (1)
  {
    if (v125)
    {
      v67 = MEMORY[0x266788B60](v64, v124);
    }

    else
    {
      if (v64 >= *(v123 + 16))
      {
        goto LABEL_70;
      }

      v67 = *(v122 + 8 * v64);
    }

    v144 = v67;
    v68 = __OFADD__(v64, 1);
    v69 = v64 + 1;
    if (v68)
    {
      goto LABEL_69;
    }

    v135 = v69;
    sub_2665ECAC4();
    v71 = v70;
    v152 = *(v70 + 16);
    if (v152)
    {
      break;
    }

LABEL_37:

    v64 = v135;
    if (v135 == v126)
    {
      goto LABEL_40;
    }
  }

  v72 = 0;
  v151 = v70 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  v148 = v70;
  while (v72 < *(v71 + 16))
  {
    v153 = *(v47 + 72);
    v154 = *(v47 + 16);
    (v154)(v62, v151 + v153 * v72, v44);
    sub_26655E020(v150, v43);
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
    {
      sub_26656CAEC(v43, &qword_28007D140, &qword_26666F140);
    }

    else
    {
      v73 = v141;
      (*v147)(v141, v43, v44);
      v74 = sub_266668C98();
      v75 = *v65;
      v76 = v73;
      v71 = v148;
      (*v65)(v76, v44);
      if (v74)
      {
        v75(v62, v44);
        goto LABEL_35;
      }
    }

    sub_26655E020(v145, v39);
    if (__swift_getEnumTagSinglePayload(v39, 1, v44) == 1)
    {
      sub_26656CAEC(v39, &qword_28007D140, &qword_26666F140);
LABEL_19:
      if (*(v66 + 16) && (v82 = sub_2665C5488(v62), (v83 & 1) != 0))
      {
        v157 = *(*(v66 + 56) + 8 * v82);
      }

      else
      {
        v157 = MEMORY[0x277D84F90];
      }

      v43 = v144;
      MEMORY[0x2667887C0]();
      if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      swift_isUniquelyReferenced_nonNull_native();
      v156 = v66;
      v84 = sub_2665C5488(v62);
      if (__OFADD__(*(v66 + 16), (v85 & 1) == 0))
      {
        goto LABEL_61;
      }

      v86 = v84;
      v43 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECE0, &qword_266676C40);
      if (sub_26666C908())
      {
        v87 = sub_2665C5488(v62);
        v44 = v143;
        if ((v43 & 1) != (v88 & 1))
        {
          goto LABEL_71;
        }

        v86 = v87;
      }

      else
      {
        v44 = v143;
      }

      v66 = v156;
      if (v43)
      {
        v89 = *(*(v156 + 56) + 8 * v86);

        v90 = OUTLINED_FUNCTION_4_28();
        v91(v90);
      }

      else
      {
        *(v156 + 8 * (v86 >> 6) + 64) |= 1 << v86;
        (v154)(*(v66 + 48) + v86 * v153, v62, v44);
        v92 = OUTLINED_FUNCTION_4_28();
        v93(v92);
        v94 = *(v66 + 16);
        v68 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v68)
        {
          goto LABEL_62;
        }

        *(v66 + 16) = v95;
      }

      v47 = v146;
      v39 = v142;
LABEL_35:
      v43 = v149;
      goto LABEL_36;
    }

    v77 = v137;
    (*v147)(v137, v39, v44);
    v78 = v139;
    sub_266668E28();
    v79 = v138;
    sub_266668DA8();
    (*v136)(v78, v140);
    LOBYTE(v78) = sub_266668CA8();
    v80 = *v65;
    (*v65)(v79, v44);
    v81 = v77;
    v71 = v148;
    v80(v81, v44);
    if ((v78 & 1) == 0)
    {
      goto LABEL_19;
    }

    v80(v62, v44);
    v43 = v149;
    v47 = v146;
LABEL_36:
    if (v152 == ++v72)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
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
  __break(1u);
LABEL_71:
  sub_26666CB08();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2665E693C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_266668D38();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  (*(v10 + 16))(v15 - v14, a1, v7);
  v17 = *(a1 + *(_s17DayEventGroupingsV8GroupingVMa() + 20));
  sub_2665C24BC();
  if (v3)
  {
    result = (*(v10 + 8))(v16, v7);
    *a2 = v3;
  }

  else
  {
    v20 = v18;
    (*(v10 + 32))(a3, v16, v7);
    result = type metadata accessor for Snippet.EventGroup();
    *(a3 + *(result + 20)) = v20;
  }

  return result;
}

uint64_t sub_2665E6AA4(uint64_t a1, uint64_t a2)
{
  if ((sub_266668CD8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(_s17DayEventGroupingsV8GroupingVMa() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_2665E6D54(v5, v6);
}

uint64_t sub_2665E6B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_2665E6B74(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_2665E6D54(a2, a4);
}

uint64_t sub_2665E6B74(uint64_t a1, uint64_t a2)
{
  v4 = _s17DayEventGroupingsV8GroupingVMa();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
LABEL_11:
    v19 = 0;
    return v19 & 1;
  }

  if (v14 && a1 != a2)
  {
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = *(v11 + 72);
    while (1)
    {
      sub_2665E6F14(v16, v13);
      sub_2665E6F14(v17, v9);
      if ((sub_266668CD8() & 1) == 0)
      {
        break;
      }

      v19 = sub_2665E6D54(*&v13[*(v4 + 20)], *&v9[*(v4 + 20)]);
      sub_2665E81E0(v9, _s17DayEventGroupingsV8GroupingVMa);
      sub_2665E81E0(v13, _s17DayEventGroupingsV8GroupingVMa);
      if (v19)
      {
        v17 += v18;
        v16 += v18;
        if (--v14)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_2665E81E0(v9, _s17DayEventGroupingsV8GroupingVMa);
    sub_2665E81E0(v13, _s17DayEventGroupingsV8GroupingVMa);
    goto LABEL_11;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_2665E6D54(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
  {
    if (a2 >> 62)
    {
      result = sub_26666C768();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_26656CC50();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x266788B60](v12 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = MEMORY[0x266788B60](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_26666C678();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665E6F14(uint64_t a1, uint64_t a2)
{
  v4 = _s17DayEventGroupingsV8GroupingVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665E6F78(uint64_t *a1)
{
  v2 = *(_s17DayEventGroupingsV8GroupingVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26655E0A8(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2665E7020(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_2665E7020(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26666CA98();
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
        _s17DayEventGroupingsV8GroupingVMa();
        v6 = sub_26666C4D8();
        *(v6 + 16) = v5;
      }

      v7 = *(_s17DayEventGroupingsV8GroupingVMa() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2665E7360(v8, v9, a1, v4);
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
    return sub_2665E7150(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2665E7150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = _s17DayEventGroupingsV8GroupingVMa();
  v8 = *(*(v38 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v38, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v30 - v15;
  result = MEMORY[0x28223BE20](v14, v17);
  v21 = &v30 - v20;
  v32 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v37 = v22;
    v31 = v23;
    v27 = v22 + v23 * a3;
    while (2)
    {
      v35 = v24;
      v36 = a3;
      v33 = v27;
      v34 = v26;
      do
      {
        sub_2665E6F14(v27, v21);
        sub_2665E6F14(v24, v16);
        v28 = sub_266668CA8();
        sub_2665E81E0(v16, _s17DayEventGroupingsV8GroupingVMa);
        result = sub_2665E81E0(v21, _s17DayEventGroupingsV8GroupingVMa);
        if ((v28 & 1) == 0)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return result;
        }

        sub_2665E8238(v27, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2665E8238(v12, v24);
        v24 += v25;
        v27 += v25;
      }

      while (!__CFADD__(v26++, 1));
      a3 = v36 + 1;
      v24 = v35 + v31;
      v26 = v34 - 1;
      v27 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2665E7360(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v104 = a1;
  v118 = _s17DayEventGroupingsV8GroupingVMa();
  v113 = *(v118 - 8);
  v9 = *(v113 + 64);
  v11 = MEMORY[0x28223BE20](v118, v10);
  v108 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v117 = &v101 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v119 = &v101 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v101 - v20;
  v115 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_101:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v95 = v24 + 16;
      v96 = *(v24 + 2);
      for (i = v24; v96 >= 2; v24 = i)
      {
        if (!*v115)
        {
          goto LABEL_139;
        }

        v97 = &v24[16 * v96];
        v98 = *v97;
        v24 = &v95[2 * v96];
        v99 = *(v24 + 1);
        sub_2665E7BD0(*v115 + *(v113 + 72) * *v97, *v115 + *(v113 + 72) * *v24, *v115 + *(v113 + 72) * v99, v5);
        if (v6)
        {
          break;
        }

        if (v99 < v98)
        {
          goto LABEL_127;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_128;
        }

        *v97 = v98;
        *(v97 + 1) = v99;
        v100 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_129;
        }

        v96 = *v95 - 1;
        sub_26655DB10(v24 + 16, v100, v24);
        *v95 = v96;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v24 = sub_26655DAFC(v24);
    goto LABEL_103;
  }

  v103 = a4;
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v109 = &v101 - v20;
  while (1)
  {
    v25 = v23++;
    i = v24;
    v105 = v25;
    if (v23 < v22)
    {
      v26 = *v115;
      v5 = *(v113 + 72);
      v27 = v25;
      v28 = *v115 + v5 * v23;
      v112 = v22;
      sub_2665E6F14(v28, v21);
      v29 = v119;
      sub_2665E6F14(v26 + v5 * v27, v119);
      LODWORD(v111) = sub_266668CA8();
      sub_2665E81E0(v29, _s17DayEventGroupingsV8GroupingVMa);
      sub_2665E81E0(v21, _s17DayEventGroupingsV8GroupingVMa);
      v30 = v112;
      v31 = v27 + 2;
      v114 = v5;
      v24 = (v26 + v5 * (v27 + 2));
      while (1)
      {
        v32 = v31;
        if (++v23 >= v30)
        {
          break;
        }

        sub_2665E6F14(v24, v21);
        v5 = v119;
        sub_2665E6F14(v28, v119);
        v33 = sub_266668CA8() & 1;
        sub_2665E81E0(v5, _s17DayEventGroupingsV8GroupingVMa);
        sub_2665E81E0(v21, _s17DayEventGroupingsV8GroupingVMa);
        v24 += v114;
        v28 += v114;
        v31 = v32 + 1;
        v30 = v112;
        if ((v111 & 1) != v33)
        {
          goto LABEL_9;
        }
      }

      v23 = v30;
LABEL_9:
      if (v111)
      {
        v25 = v105;
        if (v23 < v105)
        {
          goto LABEL_133;
        }

        if (v105 >= v23)
        {
          v24 = i;
          goto LABEL_32;
        }

        v102 = v6;
        if (v30 >= v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = v30;
        }

        v35 = v114 * (v34 - 1);
        v36 = v105;
        v37 = v114 * v34;
        v38 = v105 * v114;
        v39 = v23;
        v24 = i;
        do
        {
          if (v36 != --v39)
          {
            v5 = *v115;
            if (!*v115)
            {
              goto LABEL_140;
            }

            sub_2665E8238(v5 + v38, v108);
            v40 = v38 < v35 || v5 + v38 >= v5 + v37;
            if (v40)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2665E8238(v108, v5 + v35);
            v24 = i;
          }

          ++v36;
          v35 -= v114;
          v37 -= v114;
          v38 += v114;
        }

        while (v36 < v39);
        v6 = v102;
      }

      else
      {
        v24 = i;
      }

      v25 = v105;
    }

LABEL_32:
    v41 = v115[1];
    if (v23 < v41)
    {
      if (__OFSUB__(v23, v25))
      {
        goto LABEL_132;
      }

      if (v23 - v25 < v103)
      {
        break;
      }
    }

LABEL_48:
    if (v23 < v25)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = *(v24 + 2);
      sub_2665C627C();
      v24 = v93;
    }

    v51 = *(v24 + 2);
    v52 = v51 + 1;
    if (v51 >= *(v24 + 3) >> 1)
    {
      sub_2665C627C();
      v24 = v94;
    }

    *(v24 + 2) = v52;
    v53 = v24 + 32;
    v54 = &v24[16 * v51 + 32];
    *v54 = v105;
    *(v54 + 1) = v23;
    v114 = *v104;
    if (!v114)
    {
      goto LABEL_141;
    }

    v55 = v21;
    if (v51)
    {
      i = v24;
      while (1)
      {
        v56 = v52 - 1;
        v57 = &v53[16 * v52 - 16];
        v58 = &v24[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v59 = *(v24 + 4);
          v60 = *(v24 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_69:
          if (v62)
          {
            goto LABEL_118;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_121;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_126;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v52 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v52 < 2)
        {
          goto LABEL_120;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_84:
        if (v77)
        {
          goto LABEL_123;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_125;
        }

        if (v84 < v76)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v56 - 1 >= v52)
        {
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
          goto LABEL_135;
        }

        if (!*v115)
        {
          goto LABEL_138;
        }

        v88 = &v53[16 * v56 - 16];
        v89 = *v88;
        v5 = v56;
        v24 = &v53[16 * v56];
        v90 = *(v24 + 1);
        sub_2665E7BD0(*v115 + *(v113 + 72) * *v88, *v115 + *(v113 + 72) * *v24, *v115 + *(v113 + 72) * v90, v114);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v90 < v89)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v88 = v89;
        *(v88 + 1) = v90;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v52 = v6 - 1;
        sub_26655DB10(v24 + 16, v6 - 1 - v5, v24);
        v24 = i;
        *(i + 2) = v6 - 1;
        v91 = v6 > 2;
        v6 = 0;
        v55 = v109;
        if (!v91)
        {
          goto LABEL_98;
        }
      }

      v63 = &v53[16 * v52];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_116;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_117;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_119;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_122;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_130;
        }

        if (v61 < v87)
        {
          v56 = v52 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v115[1];
    v21 = v55;
    if (v23 >= v22)
    {
      goto LABEL_101;
    }
  }

  v42 = v25 + v103;
  if (__OFADD__(v25, v103))
  {
    goto LABEL_134;
  }

  if (v42 >= v41)
  {
    v42 = v115[1];
  }

  if (v42 < v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v23 == v42)
  {
    goto LABEL_48;
  }

  v102 = v6;
  v43 = *v115;
  v44 = *(v113 + 72);
  v5 = *v115 + v44 * (v23 - 1);
  v45 = -v44;
  v46 = v25 - v23;
  v106 = v44;
  v107 = v42;
  v47 = v43 + v23 * v44;
LABEL_41:
  v114 = v23;
  v110 = v47;
  v111 = v46;
  v112 = v5;
  while (1)
  {
    sub_2665E6F14(v47, v21);
    v48 = v119;
    sub_2665E6F14(v5, v119);
    v49 = sub_266668CA8();
    sub_2665E81E0(v48, _s17DayEventGroupingsV8GroupingVMa);
    sub_2665E81E0(v21, _s17DayEventGroupingsV8GroupingVMa);
    if ((v49 & 1) == 0)
    {
LABEL_46:
      v23 = v114 + 1;
      v5 = v112 + v106;
      v46 = v111 - 1;
      v47 = v110 + v106;
      if (v114 + 1 == v107)
      {
        v23 = v107;
        v6 = v102;
        v24 = i;
        v25 = v105;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v43)
    {
      break;
    }

    v50 = v117;
    sub_2665E8238(v47, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_2665E8238(v50, v5);
    v5 += v45;
    v47 += v45;
    v40 = __CFADD__(v46++, 1);
    if (v40)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_2665E7BD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = _s17DayEventGroupingsV8GroupingVMa();
  v8 = *(*(v58 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v58, v9);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v12);
  v15 = &v51 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1;
  v19 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v19)
  {
    goto LABEL_60;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v22 = v18 / v17;
  v62 = a1;
  v61 = a4;
  v23 = v20 / v17;
  if (v18 / v17 >= v20 / v17)
  {
    sub_2665C72F4(a2, v20 / v17, a4);
    v32 = a4 + v23 * v17;
    v33 = -v17;
    v34 = v32;
    v54 = a1;
    v55 = v33;
LABEL_36:
    v35 = a2 + v33;
    v36 = a3;
    v52 = v34;
    v56 = a2 + v33;
    v57 = a2;
    while (1)
    {
      if (v32 <= a4)
      {
        v62 = v57;
        v60 = v34;
        goto LABEL_58;
      }

      if (v57 <= a1)
      {
        break;
      }

      v53 = v34;
      v37 = a4;
      v38 = v36 + v33;
      v39 = v32 + v33;
      v40 = v32;
      v41 = v36;
      sub_2665E6F14(v32 + v33, v15);
      v42 = v15;
      v43 = v59;
      sub_2665E6F14(v35, v59);
      v44 = sub_266668CA8();
      v45 = v43;
      v15 = v42;
      sub_2665E81E0(v45, _s17DayEventGroupingsV8GroupingVMa);
      sub_2665E81E0(v42, _s17DayEventGroupingsV8GroupingVMa);
      if (v44)
      {
        v47 = v41 < v57 || v38 >= v57;
        a4 = v37;
        if (v47)
        {
          v48 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v53;
          a1 = v54;
          a3 = v38;
          a2 = v48;
          v33 = v55;
          v32 = v40;
        }

        else
        {
          v34 = v53;
          v19 = v41 == v57;
          v33 = v55;
          v49 = v56;
          a3 = v38;
          a2 = v56;
          v32 = v40;
          a1 = v54;
          if (!v19)
          {
            v50 = v53;
            swift_arrayInitWithTakeBackToFront();
            v32 = v40;
            a2 = v49;
            v34 = v50;
          }
        }

        goto LABEL_36;
      }

      v46 = v41 < v40 || v38 >= v40;
      a4 = v37;
      if (v46)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 = v38;
        v32 = v39;
        v34 = v39;
        v33 = v55;
        v35 = v56;
        a1 = v54;
      }

      else
      {
        v34 = v39;
        v19 = v40 == v41;
        v36 = v38;
        v32 = v39;
        v33 = v55;
        v35 = v56;
        a1 = v54;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = v38;
          v32 = v39;
          v34 = v39;
        }
      }
    }

    v62 = v57;
    v60 = v52;
  }

  else
  {
    sub_2665C72F4(a1, v18 / v17, a4);
    v57 = a4 + v22 * v17;
    v60 = v57;
    while (a4 < v57 && a2 < a3)
    {
      v25 = a3;
      sub_2665E6F14(a2, v15);
      v26 = a2;
      v27 = v59;
      sub_2665E6F14(a4, v59);
      v28 = sub_266668CA8();
      sub_2665E81E0(v27, _s17DayEventGroupingsV8GroupingVMa);
      sub_2665E81E0(v15, _s17DayEventGroupingsV8GroupingVMa);
      if (v28)
      {
        a2 = v26 + v17;
        v29 = a1 < v26 || a1 >= a2;
        v30 = v26;
        if (v29)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v25;
        }

        else
        {
          a3 = v25;
          if (a1 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v26;
          a3 = v25;
        }

        else
        {
          a2 = v26;
          a3 = v25;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v61 = a4 + v17;
        a4 += v17;
      }

      a1 += v17;
      v62 = a1;
    }
  }

LABEL_58:
  sub_2665E8044(&v62, &v61, &v60);
  return 1;
}

uint64_t sub_2665E8044(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = _s17DayEventGroupingsV8GroupingVMa();
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

unint64_t sub_2665E8124()
{
  result = qword_28007ECE8;
  if (!qword_28007ECE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007E548, &qword_266674B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ECE8);
  }

  return result;
}

unint64_t sub_2665E8188()
{
  result = qword_28007ECF0;
  if (!qword_28007ECF0)
  {
    type metadata accessor for FindEventDayComparator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ECF0);
  }

  return result;
}

uint64_t sub_2665E81E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_18_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2665E8238(uint64_t a1, uint64_t a2)
{
  v4 = _s17DayEventGroupingsV8GroupingVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665E829C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_28()
{
  *(*(v0 + 56) + 8 * v1) = v4;
  v5 = *v2;
  return v3;
}

unint64_t sub_2665E82C0(char a1)
{
  result = 0x656C746954746573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7461636F4C746573;
      break;
    case 4:
      result = 0x6974726150646461;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_2665E83C0(char a1)
{
  v2 = sub_26666B0B8();
  OUTLINED_FUNCTION_7(v2);
  v3 = sub_26666B0A8();
  v4 = sub_26666AF28();
  OUTLINED_FUNCTION_7(v4);
  sub_26666AF18();
  sub_26666B038();
  switch(a1)
  {
    case 1:
      v7 = sub_26666A738();
      OUTLINED_FUNCTION_7(v7);
      sub_26666A728();
      sub_26666A408();
      goto LABEL_7;
    case 2:
      v5 = sub_26666AF78();
      OUTLINED_FUNCTION_7(v5);
      sub_26666AF68();
      sub_26666AEE8();
      goto LABEL_7;
    case 3:
      v6 = sub_26666AFD8();
      OUTLINED_FUNCTION_7(v6);
      sub_26666AFC8();
      sub_26666AEF8();
LABEL_7:

      goto LABEL_8;
    case 4:
    case 5:
    case 6:

      return 0;
    default:
LABEL_8:

      return v3;
  }
}

uint64_t sub_2665E8520(char a1)
{
  v1 = MEMORY[0x277D84F90];
  switch(a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
      v1 = OUTLINED_FUNCTION_9_16();
      *(v1 + 16) = xmmword_26666EED0;
      if (qword_28007CE58 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
      v1 = OUTLINED_FUNCTION_9_16();
      *(v1 + 16) = xmmword_26666EED0;
      if (qword_28007CE50 != -1)
      {
        swift_once();
      }

      v2 = &qword_28007ECF8;
      v3 = &qword_266676C58;
      v4 = &unk_28007ED00;
      goto LABEL_12;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
      v1 = OUTLINED_FUNCTION_9_16();
      *(v1 + 16) = xmmword_26666EED0;
      if (qword_28007CE60 != -1)
      {
LABEL_15:
        swift_once();
      }

LABEL_5:
      v2 = &qword_28007ED10;
      v3 = &qword_26667A0A0;
      v4 = &qword_28007ED18;
LABEL_12:
      v5 = sub_2665E8798(v2, v3, v4);
      goto LABEL_13;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
      v1 = OUTLINED_FUNCTION_9_16();
      *(v1 + 16) = xmmword_26666EED0;
      if (qword_28007CE80 != -1)
      {
        swift_once();
      }

      v5 = sub_2665E88C8(type metadata accessor for CalendarEventAttendeeOntologyNode);
LABEL_13:
      *(v1 + 32) = v5;
      *(v1 + 40) = v6;
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_2665E8798(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  OUTLINED_FUNCTION_3_28();

  OUTLINED_FUNCTION_1_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_2665E8B40(a3, a1, a2);
  sub_26666A1D8();

  v6 = OUTLINED_FUNCTION_0_30();
  sub_2665E89D0(v6);
  sub_26666C6C8();

  v7 = OUTLINED_FUNCTION_0_30();
  sub_2665E8A54(v7);
  OUTLINED_FUNCTION_7_20();

  sub_26666C3B8();

  MEMORY[0x266788710]();

  return v9;
}

uint64_t sub_2665E88C8(void (*a1)(void))
{
  OUTLINED_FUNCTION_3_28();

  OUTLINED_FUNCTION_1_31();
  a1(0);
  sub_26666A1D8();

  v2 = OUTLINED_FUNCTION_0_30();
  sub_2665E89D0(v2);
  sub_26666C6C8();

  v3 = OUTLINED_FUNCTION_0_30();
  sub_2665E8A54(v3);
  OUTLINED_FUNCTION_7_20();

  sub_26666C3B8();

  MEMORY[0x266788710]();

  return v5;
}

uint64_t sub_2665E89D0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_8_18(v1, v2);
    sub_26666C428();
    OUTLINED_FUNCTION_2_28();
    return OUTLINED_FUNCTION_6_16();
  }

  return result;
}

unint64_t sub_2665E8A54(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    if ((v4 & 0x2000000000000000) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v7 = 7;
    if (((v4 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    result = OUTLINED_FUNCTION_8_18(v2, v3);
    if (v9)
    {
      result = v8;
    }

    if (4 * v6 >= result >> 14)
    {
      sub_26666C428();
      OUTLINED_FUNCTION_2_28();
      return OUTLINED_FUNCTION_6_16();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2665E8AEC()
{
  result = qword_28007ED08;
  if (!qword_28007ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ED08);
  }

  return result;
}

uint64_t sub_2665E8B40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_28()
{
}

uint64_t OUTLINED_FUNCTION_3_28()
{
  *(v1 - 56) = v0;

  return sub_26666C7E8();
}

unint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_2665E8AEC();
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FBE10](15, a2, v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return swift_allocObject();
}

uint64_t sub_2665E8CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v52 = a1;
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  v5 = OUTLINED_FUNCTION_3_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  v12 = OUTLINED_FUNCTION_3_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v47 - v16;
  v54 = sub_26666C228();
  v18 = *(v54 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v54, v20);
  v50 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a3(v21);
  v24 = result;
  v25 = 0;
  v26 = result + 40;
  v27 = *(result + 16);
  v48 = v18;
  v49 = (v18 + 32);
  v51 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v26 + 16 * v25); ; i += 2)
  {
    if (v27 == v25)
    {

      return v51;
    }

    if (v25 >= *(v24 + 16))
    {
      break;
    }

    if (*(i - 1))
    {
      v29 = *i;
      v30 = *(i - 1);
      ObjectType = swift_getObjectType();
      sub_26666C1B8();
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
      swift_unknownObjectRetain();
      sub_26662D34C(v10, ObjectType, v29, v17);
      swift_unknownObjectRelease();
      sub_26656CAEC(v10, &unk_28007F810, &unk_26667C710);
      if (__swift_getEnumTagSinglePayload(v17, 1, v54) != 1)
      {
        v39 = *v49;
        (*v49)(v50, v17, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = *(v51 + 16);
          sub_2665C6994();
          v51 = v45;
        }

        v41 = *(v51 + 16);
        if (v41 >= *(v51 + 24) >> 1)
        {
          sub_2665C6994();
          v51 = v46;
        }

        ++v25;
        v42 = v50;
        v43 = v51;
        *(v51 + 16) = v41 + 1;
        result = (v39)(v43 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v41, v42, v54);
        goto LABEL_2;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v54);
    }

    result = sub_26656CAEC(v17, &qword_28007ED70, &qword_266671CC0);
    ++v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665E8FEC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_19();
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665E9094()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[UpdateEvent HandleIntentStrategy] makeIntentExecutionBehavior");
    MEMORY[0x266789690](v4, -1, -1);
  }

  v8 = v0[6];
  v7 = v0[7];
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[2];
  v12 = v0[3];

  v13 = *v10;
  sub_26655A1C8();

  v14 = v13;
  v15 = v12;
  sub_2666695D8();
  sub_266669608();
  v16 = sub_2666695F8();
  v17 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_15_2();
  v19(v18);

  v20 = v0[1];

  return v20(v16);
}

uint64_t sub_2665E9218()
{
  OUTLINED_FUNCTION_14();
  v1[33] = v2;
  v1[34] = v0;
  v1[32] = v3;
  v4 = type metadata accessor for Snippet();
  v1[35] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v7 = sub_266669CA8();
  v1[40] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[41] = v8;
  v10 = *(v9 + 64);
  v1[42] = OUTLINED_FUNCTION_19();
  v11 = sub_266669708();
  v1[43] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[44] = v12;
  v14 = *(v13 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v15);
  v17 = *(v16 + 64);
  v1[47] = OUTLINED_FUNCTION_19();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v18);
  v20 = *(v19 + 64);
  v1[48] = OUTLINED_FUNCTION_19();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v21);
  v23 = *(v22 + 64);
  v1[49] = OUTLINED_FUNCTION_19();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v24);
  v26 = *(v25 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v27 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v27);
  v29 = *(v28 + 64);
  v1[56] = OUTLINED_FUNCTION_19();
  v30 = sub_2666699C8();
  v1[57] = v30;
  OUTLINED_FUNCTION_3_1(v30);
  v1[58] = v31;
  v33 = *(v32 + 64);
  v1[59] = OUTLINED_FUNCTION_19();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v34);
  v36 = *(v35 + 64);
  v1[60] = OUTLINED_FUNCTION_19();
  v37 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_2665E94FC()
{
  v2 = v0[33];
  v0[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007ED40, &qword_266676DC0);
  v3 = sub_266669B58();
  v4 = [v3 updatedEvent];
  v0[62] = v4;

  if (!v4)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v19 = sub_26666C168();
    __swift_project_value_buffer(v19, qword_28156D7E8);
    v20 = sub_26666C148();
    v21 = sub_26666C608();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      OUTLINED_FUNCTION_4_0(&dword_266549000, v23, v24, "[UpdateEvent HandleIntentStrategy] Unexpectedly found nil for updatedEvent in intent response");
      MEMORY[0x266789690](v22, -1, -1);
    }

    sub_26656CBFC();
    swift_allocError();
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 2;
    swift_willThrow();
    v27 = v0[59];
    v26 = v0[60];
    v28 = v0[55];
    v29 = v0[56];
    v31 = v0[53];
    v30 = v0[54];
    v33 = v0[51];
    v32 = v0[52];
    OUTLINED_FUNCTION_13_10();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[33];
  v6 = sub_266669B68();
  v0[63] = v6;
  v7 = sub_26659A2F8(v6);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v7;
    v66 = v6;
    v67 = MEMORY[0x277D84F90];
    v10 = sub_2665C485C(v7);
    v11 = 0;
    v6 = (v9 & 0xC000000000000001);
    while (1)
    {
      if (v10 == v11)
      {
        v15 = v0[34];

        v16 = swift_task_alloc();
        *(v16 + 16) = v15 + 48;
        sub_2665511FC(sub_266557CC8, v16, v67);
        v8 = v17;

        v6 = v66;
        goto LABEL_15;
      }

      if (v6)
      {
        v12 = MEMORY[0x266788B60](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      if (__OFADD__(v11, 1))
      {
        break;
      }

      v1 = v12;
      v13 = sub_266580A7C();

      if (v13)
      {
        sub_26666C868();
        v14 = *(v67 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }

      ++v11;
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_15:
  v0[64] = v8;
  sub_26659A290(v6);
  if (v18)
  {

    LODWORD(v1) = 1;
  }

  else
  {
    v36 = sub_26659A2F8(v6);
    if (v36 && (v37 = sub_2665C485C(v36), , v37 >= 1))
    {
      v38 = sub_26659A2F8(v6);
      v39 = v38;
      if (v38)
      {
        v40 = sub_2665C485C(v38);
      }

      else
      {
        v40 = 0;
      }

      v41 = sub_2665C485C(v8);
      if (v39)
      {
        v42 = v40 == v41;
      }

      else
      {
        v42 = 0;
      }

      LODWORD(v1) = !v42;
    }

    else
    {
      LODWORD(v1) = 0;
    }
  }

  if (qword_28156C150 != -1)
  {
LABEL_52:
    OUTLINED_FUNCTION_1_1();
  }

  v43 = v6;
  v44 = sub_26666C168();
  __swift_project_value_buffer(v44, qword_28156D7E8);
  v45 = sub_26666C148();
  v46 = sub_26666C618();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 67109120;
    *(v47 + 4) = v1;
    _os_log_impl(&dword_266549000, v45, v46, "[UpdateEvent HandleIntentStrategy] titleUpdated: %{BOOL}d", v47, 8u);
    MEMORY[0x266789690](v47, -1, -1);
  }

  v48 = v0[34];

  v49 = *(v48 + 88);
  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(v48 + 48, (v0 + 2));
  v0[65] = sub_2665CA7F4(v4, v0 + 2);
  v50 = v43;
  v51 = [v43 setDateTimeRange];
  if (v51)
  {
    v52 = v51;
    sub_26666BB78();
    v53 = sub_2665CAB68(v52);
  }

  else
  {
    v53 = 0;
  }

  v0[66] = v53;
  if (v1 && (v54 = v0[33], v55 = sub_266669B58(), v56 = [v55 updatedEvent], v55, v56) && (sub_2665EB2E8(v56), v57))
  {
    v58 = v0[60];
    sub_26666C358();

    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = v0[60];
  v61 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v60, v59, 1, v61);
  sub_26666BD58();
  v0[67] = sub_2665CAF44([v50 setLocation]);
  v62 = swift_task_alloc();
  v0[68] = v62;
  *v62 = v0;
  v62[1] = sub_2665E9B68;
  v63 = v0[60];
  OUTLINED_FUNCTION_47_0();

  return sub_266592864();
}

uint64_t sub_2665E9B68()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = v2[68];
  v6 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v7 = v6;
  v3[69] = v8;
  v3[70] = v0;

  v9 = v2[67];
  v10 = v2[66];
  v11 = v2[65];
  if (v0)
  {
    v12 = v3[64];
    sub_26656CAEC(v3[60], &unk_28007D130, &unk_266671DF0);

    v13 = sub_2665EB014;
  }

  else
  {
    sub_26656CAEC(v3[60], &unk_28007D130, &unk_266671DF0);

    v13 = sub_2665E9D34;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_2665E9D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20[61];
  v22 = v20[59];
  v23 = v20[33];
  v24 = sub_266669B58();
  sub_2666699B8();
  if (qword_28007CE30 != -1)
  {
    swift_once();
  }

  v25 = v20[70];
  v26 = v20[62];
  v27 = v20[59];
  v28 = v20[56];
  v29 = v20[34];
  sub_26666A0F8();
  sub_266669908();
  sub_2665E8CC4(0xD000000000000013, 0x800000026667D670, sub_2665C50C4);
  sub_2666698E8();

  sub_26655358C(v29 + 8, (v20 + 7));
  v30 = v26;
  sub_2665AAA8C(v30, (v20 + 7), v31, v32, v33, v34, v35, v36, v194, v196, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225);
  v37 = v20[69];
  v38 = v20[64];
  if (v25)
  {
    v40 = v20[62];
    v39 = v20[63];
    (*(v20[58] + 8))(v20[59], v20[57]);

    v42 = v20[59];
    v41 = v20[60];
    v43 = v20[55];
    v44 = v20[56];
    v46 = v20[53];
    v45 = v20[54];
    v48 = v20[51];
    v47 = v20[52];
    v49 = v20[49];
    v50 = v20[50];
    v199 = v20[48];
    v202 = v20[47];
    v205 = v20[46];
    v208 = v20[45];
    v211 = v20[42];
    v214 = v20[39];
    v217 = v20[38];
    v220 = v20[37];
    v223 = v20[36];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  v53 = v20[58];
  v55 = v20[56];
  v54 = v20[57];
  v56 = v20[55];
  v197 = v20[54];
  v200 = v20[59];
  v203 = v20[48];
  v206 = v20[47];
  v209 = v20[46];
  v212 = v20[45];
  v57 = v20[44];
  v215 = v20[43];
  v218 = v20[42];
  v221 = v20[53];
  v58 = v20[35];
  v224 = v20[34];
  v226 = v20[49];
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007ED50, &qword_266673CA0) + 48);
  sub_2665A68A8(v55, v56, type metadata accessor for Snippet.Event);
  v60 = sub_2665C485C(v38);

  *(v56 + v59) = v60 != 0;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v58);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v58);
  (*(v53 + 16))(v226, v200, v54);
  __swift_storeEnumTagSinglePayload(v226, 0, 1, v54);
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  sub_2666696A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v72 = swift_allocObject();
  v20[71] = v72;
  *(v72 + 16) = xmmword_26666E050;
  *(v72 + 32) = v37;
  v73 = *(v57 + 16);
  v74 = v37;
  v73(v212, v209, v215);
  v75 = swift_task_alloc();
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  *(v75 + 32) = 0;
  *(v75 + 40) = v72;
  *(v75 + 48) = v226;
  *(v75 + 56) = 2;
  *(v75 + 64) = v203;
  *(v75 + 72) = v206;
  *(v75 + 80) = 514;
  sub_266669BC8();

  sub_26656CA7C(v56, v221);
  if (__swift_getEnumTagSinglePayload(v221, 1, v58) == 1)
  {
    v76 = v20 + 53;
    goto LABEL_11;
  }

  v77 = v20[54];
  v78 = v20[52];
  v79 = v20[35];
  sub_26656630C(v20[53], v20[39]);
  v80 = OUTLINED_FUNCTION_15_2();
  sub_26656CA7C(v80, v81);
  if (OUTLINED_FUNCTION_26_7() == 1)
  {
    v76 = v20 + 52;
    v82 = v20[39];
    OUTLINED_FUNCTION_3_18();
    sub_2665A6908(v83, v84);
LABEL_11:
    v85 = *v76;
    v86 = v20[55];
    v87 = v20[51];
    v88 = v20[35];
    sub_26656CAEC(v85, &unk_28007DE30, &unk_26666EAF0);
    v89 = OUTLINED_FUNCTION_15_2();
    sub_26656CA7C(v89, v90);
    v91 = OUTLINED_FUNCTION_26_7();
    v92 = v20[51];
    v94 = v20[34];
    v93 = v20[35];
    if (v91 == 1)
    {
      v95 = v20[54];
      v96 = v20[50];
      sub_26656CAEC(v92, &unk_28007DE30, &unk_26666EAF0);
      v97 = OUTLINED_FUNCTION_15_2();
      sub_26656CA7C(v97, v98);
      if (OUTLINED_FUNCTION_26_7() == 1)
      {
        v99 = sub_26656CAEC(v20[50], &unk_28007DE30, &unk_26666EAF0);
        OUTLINED_FUNCTION_19_15(v99, v100, v101, v102, v103, v104, v105, v106, v195, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224);
        v107 = *(MEMORY[0x277D5BE58] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        v20[75] = v108;
        *v108 = v109;
        v108[1] = sub_2665EAD84;
        v110 = v20[42];
        v111 = v20[32];
        OUTLINED_FUNCTION_47_0();

        return MEMORY[0x2821BB488](v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
      }

      else
      {
        v169 = v20[35];
        v168 = v20[36];
        v170 = sub_26656630C(v20[50], v168);
        OUTLINED_FUNCTION_19_15(v170, v171, v172, v173, v174, v175, v176, v177, v195, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224);
        v20[15] = v169;
        v20[16] = sub_26656CBA4();
        __swift_allocate_boxed_opaque_existential_1(v20 + 12);
        OUTLINED_FUNCTION_2_16();
        sub_2665A68A8(v168, v178, v179);
        v180 = *(MEMORY[0x277D5BE48] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        v20[74] = v181;
        *v181 = v182;
        v181[1] = sub_2665EAAE4;
        v183 = v20[42];
        v184 = v20[32];
        OUTLINED_FUNCTION_47_0();

        return MEMORY[0x2821BB478](v185, v186, v187, v188, v189, v190, v191, v192, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
      }
    }

    else
    {
      v120 = v20[37];
      v121 = sub_26656630C(v92, v120);
      OUTLINED_FUNCTION_19_15(v121, v122, v123, v124, v125, v126, v127, v128, v195, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224);
      v20[20] = v93;
      v20[21] = sub_26656CBA4();
      __swift_allocate_boxed_opaque_existential_1(v20 + 17);
      OUTLINED_FUNCTION_2_16();
      sub_2665A68A8(v120, v129, v130);
      v131 = *(MEMORY[0x277D5BE38] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[73] = v132;
      *v132 = v133;
      v132[1] = sub_2665EA844;
      v134 = v20[42];
      v135 = v20[32];
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821BB468](v136, v137, v138, v139, v140, v141, v142, v143, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }
  }

  v145 = v20[38];
  v144 = v20[39];
  v146 = v20[34];
  v147 = v20[35];
  sub_26656630C(v20[52], v145);
  v148 = *(v146 + 120);
  v149 = *(v146 + 128);
  __swift_project_boxed_opaque_existential_1((v224 + 96), v148);
  v20[25] = v147;
  v150 = sub_26656CBA4();
  v20[26] = v150;
  __swift_allocate_boxed_opaque_existential_1(v20 + 22);
  OUTLINED_FUNCTION_2_16();
  v152 = v151;
  sub_2665A68A8(v144, v153, v151);
  v20[30] = v147;
  v20[31] = v150;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20 + 27);
  sub_2665A68A8(v145, boxed_opaque_existential_1, v152);
  v155 = *(MEMORY[0x277D5BE30] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v20[72] = v156;
  *v156 = v157;
  v156[1] = sub_2665EA57C;
  v158 = v20[42];
  v159 = v20[32];
  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2821BB460](v160, v161, v162, v163, v164, v165, v166, v167, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2665EA57C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *(v4 + 568);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 216));
  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665EA844()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 584);
  v6 = *(v4 + 568);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665EAAE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *(v4 + 568);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665EAD84()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 600);
  v3 = *(v1 + 568);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665EB014()
{
  v1 = *(v0 + 496);

  v12 = *(v0 + 560);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 440);
  v5 = *(v0 + 448);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v9 = *(v0 + 408);
  v8 = *(v0 + 416);
  OUTLINED_FUNCTION_13_10();

  OUTLINED_FUNCTION_24_1();

  return v10();
}

uint64_t sub_2665EB144()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665E9218();
}

uint64_t sub_2665EB1EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26657A00C;

  return sub_2665E8FEC();
}

unint64_t sub_2665EB294()
{
  result = qword_28007ED30;
  if (!qword_28007ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ED30);
  }

  return result;
}

uint64_t sub_2665EB2E8(void *a1)
{
  v2 = [a1 title];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26666C308();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_31()
{
  v17 = v0[63];
  v18 = v0[69];
  v22 = v0[59];
  v23 = v0[60];
  v2 = v0[58];
  v21 = v0[57];
  v3 = v0[55];
  v19 = v0[62];
  v20 = v0[56];
  v4 = v0[54];
  v24 = v0[53];
  v25 = v0[52];
  v5 = v0[49];
  v26 = v0[51];
  v27 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[46];
  v9 = v0[43];
  v10 = v0[44];
  result = v0[42];
  v28 = v0[45];
  v12 = v0[40];
  v13 = v0[41];
  v14 = v0[38];
  *(v1 - 104) = v0[39];
  *(v1 - 96) = v14;
  v15 = v0[36];
  *(v1 - 88) = v0[37];
  *(v1 - 80) = v15;
  v16 = *(v13 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_2665A6908(a13, type metadata accessor for Snippet.Event);
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return sub_26656CAEC(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_13_10()
{
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[48];
  v6 = v0[47];
  v7 = v0[46];
  v8 = v0[45];
  v9 = v0[42];
  v10 = v0[39];
  v11 = v0[38];
  v12 = v0[37];
  v13 = v0[36];
}

void *OUTLINED_FUNCTION_19_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(v19 + 128);
  v22 = *(v19 + 120);

  return __swift_project_boxed_opaque_existential_1((a19 + 96), v22);
}

uint64_t OUTLINED_FUNCTION_26_7()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_26656CAEC(v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_33_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_26656CAEC(v3, a2, a3);
}

void sub_2665EB4F8()
{
  OUTLINED_FUNCTION_28_0();
  v85 = v0;
  v4 = v3;
  v5 = sub_266668D38();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v89 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  OUTLINED_FUNCTION_10_5();
  v86 = v11 - v12;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_16_13();
  v15 = sub_266668EB8();
  v16 = OUTLINED_FUNCTION_3_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16, v21);
  OUTLINED_FUNCTION_10_5();
  v91 = v22 - v23;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_25_8();
  v92 = sub_266668E68();
  v26 = OUTLINED_FUNCTION_3_0(v92);
  v88 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26, v30);
  OUTLINED_FUNCTION_10_5();
  v90 = v31 - v32;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v79 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v38 = OUTLINED_FUNCTION_3_3(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  OUTLINED_FUNCTION_10_5();
  v87 = v42 - v43;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v79 - v46;
  sub_26659A29C(v4, &selRef_appEntityIdentifier);
  if (v48)
  {
    v84 = sub_26666C2F8();
  }

  else
  {
    v84 = 0;
  }

  v49 = v4;
  sub_2665EF644(v49, &selRef_title);
  if (v50)
  {
    v83 = sub_26666C2F8();
  }

  else
  {
    v83 = 0;
  }

  sub_266668E58();
  sub_266668EA8();
  v51 = [v49 startDate];
  if (!v51)
  {
    __break(1u);
    goto LABEL_21;
  }

  v52 = v51;
  sub_266668CE8();

  sub_266668DD8();
  v82 = *(v18 + 8);
  v82(v2, v15);
  v88 = *(v88 + 8);
  (v88)(v36, v92);
  v79 = v15;
  v80 = v5;
  v81 = *(v89 + 1);
  v81(v1, v5);
  v53 = sub_266668B08();
  v89 = v47;
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v53);
  v54 = v90;
  sub_266668E58();
  v55 = v91;
  sub_266668EA8();
  v56 = [v49 endDate];
  if (!v56)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v57 = v56;
  v58 = v49;
  v59 = v86;
  sub_266668CE8();

  v60 = v87;
  OUTLINED_FUNCTION_34_2();
  sub_266668DD8();
  v82(v55, v79);
  (v88)(v54, v92);
  v81(v59, v80);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v53);
  v61 = sub_266560FA8();
  [v58 isAllDay];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v62 = sub_26666C658();
  v63 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v64 = sub_26660B270(v89, v60, v61, 0, 0, v62);
  v65 = v58;
  if (sub_2665EF6AC(v65))
  {
    v66 = OUTLINED_FUNCTION_25();
    sub_2666680AC(v66, v67);
    v69 = v68;

    v94 = v69;
    v93 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED88, &qword_266676EB8);
    sub_2665EF724();
    sub_2665EF788();
    sub_26666C438();

    sub_266552C44(0, &qword_28007D748, 0x277CD3BE8);
    v70 = sub_26666C488();
  }

  else
  {
    v70 = 0;
  }

  if ([v65 hasPredictedLocation])
  {
    v71 = 0;
  }

  else
  {
    sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
    v71 = sub_266586830(v65);
  }

  v72 = [v65 calendar];

  if (!v72)
  {
    goto LABEL_22;
  }

  [v72 type];

  v73 = sub_26666C658();
  sub_266561234();
  if (v74)
  {
    v75 = sub_26666C2F8();
  }

  else
  {
    v75 = 0;
  }

  v76 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v78 = v83;
  v77 = v84;
  [v76 initWithEventIdentifier:v84 title:v83 dateTimeRange:v64 participants:v70 location:v71 isContactBirthday:v73 calendarPunchoutURI:v75];

  OUTLINED_FUNCTION_27_0();
}

void sub_2665EBB74()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  LOBYTE(v3) = v2;
  v4 = v2;
  v5 = sub_266668D38();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  if (v4 == 4)
  {

    goto LABEL_43;
  }

  v101 = v11;
  v102 = v10;
  v104 = MEMORY[0x277D84F90];
  v15 = sub_2665C485C(v1);
  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {
      v15 = v104;
      v105 = v104;
      if (!sub_2665C485C(v104))
      {
        goto LABEL_43;
      }

      switch(v3)
      {
        case 1:

          goto LABEL_19;
        case 3:
          OUTLINED_FUNCTION_24();
          goto LABEL_18;
        default:
LABEL_18:
          v22 = sub_26666CAC8();

          if (v22)
          {
LABEL_19:
            OUTLINED_FUNCTION_39_0();
            if (!v23)
            {
              goto LABEL_85;
            }

            goto LABEL_21;
          }

          break;
      }

      v44 = v3;
      switch(v3)
      {
        case 0:
          v45 = v3;

          goto LABEL_46;
        case 1:
        case 2:
          goto LABEL_45;
        case 3:
          OUTLINED_FUNCTION_24();
LABEL_45:
          v45 = v44;
          v59 = sub_26666CAC8();

          if ((v59 & 1) == 0)
          {
            goto LABEL_57;
          }

LABEL_46:
          if (!sub_2665C485C(v104))
          {
LABEL_57:
            switch(v45)
            {
              case 0:
              case 1:
              case 3:
                v70 = sub_26666CAC8();

                if (v70)
                {
                  goto LABEL_60;
                }

                goto LABEL_72;
              case 2:

LABEL_60:
                v71 = sub_2665C6028(v104);
                if (!v71)
                {
LABEL_72:
                  OUTLINED_FUNCTION_39_0();
                  if (v23)
                  {
LABEL_74:
                    v84 = sub_26666C168();
                    v85 = OUTLINED_FUNCTION_22_4(v84, qword_28156D7E8);
                    v86 = sub_26666C5F8();
                    if (os_log_type_enabled(v85, v86))
                    {
                      v87 = swift_slowAlloc();
                      v88 = swift_slowAlloc();
                      v104 = v88;
                      *v87 = 136315138;
                      v103 = v3;
                      v89 = sub_26666C318();
                      v91 = sub_2665BFC90(v89, v90, &v104);

                      *(v87 + 4) = v91;
                      _os_log_impl(&dword_266549000, v85, v86, "#filterByReference Encountered ordinal attribute that we don't handle yet: %s. Logging and moving on.", v87, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v88);
                      OUTLINED_FUNCTION_4_1();
                      OUTLINED_FUNCTION_4_1();
                    }

                    goto LABEL_43;
                  }

LABEL_101:
                  OUTLINED_FUNCTION_1_1();
                  goto LABEL_74;
                }

                v29 = v71;
                OUTLINED_FUNCTION_39_0();
                if (!v23)
                {
                  goto LABEL_103;
                }

                goto LABEL_63;
              default:
                goto LABEL_107;
            }
          }

          v26 = (v104 & 0xC000000000000001);
          v60 = OUTLINED_FUNCTION_20_13();
          sub_2665C4864(v60, v61, v104);
          if ((v104 & 0xC000000000000001) != 0)
          {
            goto LABEL_96;
          }

          v62 = *(v104 + 32);
          break;
        default:
          goto LABEL_107;
      }

LABEL_49:
      v3 = v62;
      OUTLINED_FUNCTION_39_0();
      if (!v23)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v63 = sub_26666C168();
      v64 = OUTLINED_FUNCTION_22_4(v63, qword_28156D7E8);
      v65 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_2(v65))
      {
        v66 = OUTLINED_FUNCTION_20();
        *v66 = 0;
        _os_log_impl(&dword_266549000, v64, v65, "#filterByReference Filtering for first event(s)", v66, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      if (sub_2665C485C(v15))
      {
        if (sub_2665C485C(v15))
        {
          v67 = OUTLINED_FUNCTION_20_13();
          sub_2665C4864(v67, v68, v15);
          if (v26)
          {
            v69 = MEMORY[0x266788B60](0, v15);
          }

          else
          {
            v69 = *(v15 + 32);
          }

          v92 = v69;
          if (sub_2665C485C(v15))
          {
            if (sub_26654E0EC(v15) >= 1)
            {
              v93 = sub_2665C485C(v15);
              v36 = __OFSUB__(v93, 1);
              v94 = v93 - 1;
              if (!v36)
              {
                sub_2665C4868(v94, 1);
                sub_266600784(0, 1, 0);
                v95 = v105;

                sub_2665EE358(v3, v95, v1, v96, v97, v98, v99, v100);
                goto LABEL_82;
              }

              goto LABEL_100;
            }

LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

LABEL_106:
          __break(1u);
LABEL_107:
          JUMPOUT(0);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_99;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x266788B60](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_84;
      }

      v17 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v18 = v17;
    sub_2665ED9D0();
    v20 = v19;

    if (v20)
    {
      sub_26666C868();
      v21 = *(v104 + 16);
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  OUTLINED_FUNCTION_1_1();
LABEL_21:
  v24 = sub_26666C168();
  v25 = OUTLINED_FUNCTION_22_4(v24, qword_28156D7E8);
  v26 = sub_26666C618();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_20();
    *v27 = 0;
    _os_log_impl(&dword_266549000, v25, v26, "[filterByReference] Filtering for next event", v27, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v28 = sub_266668CF8();
  v29 = &v101;
  MEMORY[0x28223BE20](v28, v30);
  *(&v101 - 2) = v14;
  *(&v101 - 1) = 0x408C200000000000;
  sub_26656A4A4(sub_2665EF854, (&v101 - 4), v15);
  if (v31)
  {
    v26 = v31;
    sub_2665EF0C8(&v105, v26);
    v33 = v32;
    v34 = v105;
    v35 = sub_2665C485C(v105);
    v29 = v35 - v33;
    if (v35 < v33)
    {
      __break(1u);
    }

    else if ((v33 & 0x8000000000000000) == 0)
    {
      v15 = v35;
      if (sub_26654E0EC(v34) >= v35)
      {
        v36 = __OFSUB__(0, v29);
        v29 = -v29;
        if (!v36)
        {
          v37 = sub_2665C485C(v34);
          v36 = __OFADD__(v37, v29);
          v38 = v37 + v29;
          if (!v36)
          {
            sub_2665C4868(v38, 1);
            sub_266600784(v33, v15, 0);
            sub_2665EE358(v26, v105, v1, v39, v40, v41, v42, v43);

            goto LABEL_42;
          }

LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    __break(1u);
    goto LABEL_88;
  }

  v46 = sub_26666C148();
  v47 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_7_2(v47))
  {
    v26 = OUTLINED_FUNCTION_20();
    *v26 = 0;
    _os_log_impl(&dword_266549000, v46, v47, "[filterByReference] Ordinal filter did not find anything, using first element", v26, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  if (!sub_2665C485C(v15))
  {
    goto LABEL_91;
  }

  if (sub_2665C485C(v15))
  {
    v48 = OUTLINED_FUNCTION_20_13();
    sub_2665C4864(v48, v49, v15);
    if ((v15 & 0xC000000000000001) == 0)
    {
      v50 = *(v15 + 32);
      goto LABEL_38;
    }
  }

  else
  {
LABEL_92:
    __break(1u);
  }

  v50 = MEMORY[0x266788B60](0, v15);
LABEL_38:
  v51 = v50;
  if (!sub_2665C485C(v15))
  {
    __break(1u);
LABEL_103:
    OUTLINED_FUNCTION_1_1();
LABEL_63:
    v72 = sub_26666C168();
    v73 = OUTLINED_FUNCTION_22_4(v72, qword_28156D7E8);
    v74 = sub_26666C5E8();
    if (OUTLINED_FUNCTION_7_2(v74))
    {
      v75 = OUTLINED_FUNCTION_20();
      *v75 = 0;
      _os_log_impl(&dword_266549000, v73, v74, "#filterByReference Filtering for last event(s)", v75, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    if (sub_2665C485C(v15))
    {
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v15 < 0 || (v15 & 0x4000000000000000) != 0)
      {
        v15 = sub_2665A1DCC(v15);
      }

      v76 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v76)
      {
        v77 = v76 - 1;
        v78 = *((v15 & 0xFFFFFFFFFFFFFF8) + 8 * v77 + 0x20);
        *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) = v77;

        sub_2665EE358(v29, v15, v1, v79, v80, v81, v82, v83);
LABEL_82:

        goto LABEL_43;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_106;
  }

  if (sub_26654E0EC(v15) < 1)
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v62 = MEMORY[0x266788B60](0, v15);
    goto LABEL_49;
  }

  v52 = sub_2665C485C(v15);
  v36 = __OFSUB__(v52, 1);
  v53 = v52 - 1;
  if (v36)
  {
    goto LABEL_95;
  }

  sub_2665C4868(v53, 1);
  sub_266600784(0, 1, 0);
  sub_2665EE358(v51, v105, v1, v54, v55, v56, v57, v58);

LABEL_42:

  (*(v101 + 8))(v14, v102);
LABEL_43:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_2665EC4D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_26666C408();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2665EC590@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_2665EC694@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_2665EF7DC(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, v9);
}

uint64_t INCalendarEvent.id.getter()
{
  result = sub_26659A29C(v0, &selRef_eventIdentifier);
  if (!v2)
  {
    return 0x3E6C696E3CLL;
  }

  return result;
}

void sub_2665EC78C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v21 = MEMORY[0x277D84F90];
  v7 = sub_2665C485C(a3);
  v8 = 0;
  v9 = v4 & 0xC000000000000001;
  v18 = v4;
  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      return;
    }

    if (v9)
    {
      v10 = MEMORY[0x266788B60](v8, v4);
    }

    else
    {
      if (v8 >= *(v19 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v20 = v10;
    v12 = a1(&v20);
    if (v3)
    {

      return;
    }

    if (v12)
    {
      sub_26666C868();
      v13 = v7;
      v14 = v9;
      v15 = a1;
      v16 = a2;
      v17 = *(v21 + 16);
      sub_26666C8A8();
      a2 = v16;
      a1 = v15;
      v9 = v14;
      v7 = v13;
      v4 = v18;
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }

    ++v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_2665EC908()
{
  if (sub_2665EC938())
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_2665ECA68() ^ 1;
  }

  return v0 & 1;
}

id sub_2665EC938()
{
  v1 = [v0 dateTimeRange];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 allDay];

    if (v3)
    {
      v2 = [v3 BOOLValue];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2665EC9BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2665B0ECC(v2);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v10[2] = a1;
  sub_2665C90F0(sub_2665EF838, v10, v6);
  v8 = v7;

  return v8;
}

id sub_2665ECA68()
{
  v1 = [v0 isContactBirthday];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void sub_2665ECAC4()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v0;
  v5 = sub_266668E68();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v68 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  OUTLINED_FUNCTION_1_0();
  v67 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v14 = OUTLINED_FUNCTION_3_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_10_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v64 - v27;
  v29 = sub_266668D38();
  v30 = OUTLINED_FUNCTION_3_0(v29);
  v69 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30, v34);
  OUTLINED_FUNCTION_10_5();
  v66 = (v35 - v36);
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v37, v38);
  OUTLINED_FUNCTION_16_13();
  v39 = [v4 dateTimeRange];
  if (!v39)
  {
    OUTLINED_FUNCTION_6_17(v28);
LABEL_8:
    v44 = v28;
LABEL_18:
    sub_26656CAEC(v44, &qword_28007D140, &qword_26666F140);
    goto LABEL_19;
  }

  v40 = v39;
  v65 = v5;
  v41 = [v39 startDate];

  if (v41)
  {
    sub_266668CE8();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  OUTLINED_FUNCTION_8_20(v3, v42);
  sub_2665EF8D0(v3, v28, &qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_29(v28);
  if (v43)
  {
    goto LABEL_8;
  }

  v45 = v69;
  v46 = v28;
  v47 = *(v69 + 32);
  v47(v2, v46, v29);
  v48 = [v4 dateTimeRange];
  if (!v48)
  {
    v52 = *(v45 + 8);
    v53 = OUTLINED_FUNCTION_9_18();
    v54(v53);
    OUTLINED_FUNCTION_6_17(v1);
LABEL_17:
    v44 = v1;
    goto LABEL_18;
  }

  v49 = v48;
  v50 = [v48 endDate];

  if (v50)
  {
    sub_266668CE8();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v55 = v65;
  v56 = v69;
  OUTLINED_FUNCTION_8_20(v20, v51);
  sub_2665EF8D0(v20, v1, &qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_29(v1);
  if (v43)
  {
    v57 = *(v56 + 8);
    v58 = OUTLINED_FUNCTION_9_18();
    v59(v58);
    goto LABEL_17;
  }

  v60 = v66;
  v47(v66, v1, v29);
  v61 = v67;
  sub_266668E28();
  sub_266644110(v2, v60, v61);
  (*(v68 + 8))(v61, v55);
  v62 = *(v56 + 8);
  v62(v60, v29);
  v63 = OUTLINED_FUNCTION_9_18();
  (v62)(v63);
LABEL_19:
  OUTLINED_FUNCTION_27_0();
}

void static INCalendarEvent.< infix(_:_:)()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v3;
  v6 = v5;
  v7 = sub_266668D38();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v109 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8, v12);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_26_6();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v105 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v105 - v20;
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v105 - v27;
  v29 = [v6 dateTimeRange];
  if (v29)
  {
    v110 = v29;
    v108 = [v4 dateTimeRange];
    if (v108)
    {
      v106 = v4;
      v107 = v7;
      v30 = v110;
      v31 = [v110 startDate];
      if (v31)
      {
        v32 = v31;
        sub_266668CE8();

        v33 = v108;
        v34 = [v108 startDate];
        if (v34)
        {
          v35 = v34;
          sub_266668CE8();

          v36 = v107;
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1();
          }

          v37 = sub_26666C168();
          v38 = OUTLINED_FUNCTION_22_4(v37, qword_28156D7E8);
          v39 = sub_26666C5E8();
          if (OUTLINED_FUNCTION_7_2(v39))
          {
            v40 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_28_7(v40);
            _os_log_impl(&dword_266549000, v38, v39, "#INCalendarEvent comparator comparing lhs startDate and rhs startDate.", v35, 2u);
            OUTLINED_FUNCTION_4_1();
          }

          sub_266668CA8();
          v41 = *(v109 + 8);
          v41(v0, v36);
          v41(v28, v36);
          goto LABEL_69;
        }

        v55 = [v33 rTitle];
        v47 = v107;
        if (v55)
        {
          v56 = v55;
          sub_266668CE8();

          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1();
          }

          v57 = sub_26666C168();
          v58 = OUTLINED_FUNCTION_22_4(v57, qword_28156D7E8);
          v59 = sub_26666C5E8();
          if (OUTLINED_FUNCTION_7_2(v59))
          {
            v60 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_28_7(v60);
            OUTLINED_FUNCTION_7_21(&dword_266549000, v61, v62, "#INCalendarEvent comparator comparing lhs startDate and rhs endDate.");
            OUTLINED_FUNCTION_4_1();
          }

          sub_266668CA8();
          v54 = *(v109 + 8);
          v54(v2, v47);
          v63 = v28;
          goto LABEL_32;
        }

        (*(v109 + 8))(v28, v107);

        goto LABEL_35;
      }

      v42 = [v30 endDate];
      if (!v42)
      {

LABEL_36:
        v4 = v106;
        goto LABEL_37;
      }

      v43 = v42;
      sub_266668CE8();

      v44 = v108;
      v45 = [v108 startDate];
      if (v45)
      {
        v46 = v45;
        sub_266668CE8();

        v47 = v107;
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v48 = sub_26666C168();
        v49 = OUTLINED_FUNCTION_22_4(v48, qword_28156D7E8);
        v50 = sub_26666C5E8();
        if (OUTLINED_FUNCTION_7_2(v50))
        {
          v51 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_7(v51);
          OUTLINED_FUNCTION_7_21(&dword_266549000, v52, v53, "#INCalendarEvent comparator comparing lhs endDate and rhs startDate.");
          OUTLINED_FUNCTION_4_1();
        }

        sub_266668CA8();
        v54 = *(v109 + 8);
        v54(v17, v47);
      }

      else
      {
        v64 = [v44 rTitle];
        v47 = v107;
        v65 = v44;
        if (!v64)
        {
          v73 = *(v109 + 8);
          v74 = OUTLINED_FUNCTION_9_18();
          v75(v74);

LABEL_35:
          goto LABEL_36;
        }

        v66 = v64;
        sub_266668CE8();

        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v67 = sub_26666C168();
        v68 = OUTLINED_FUNCTION_22_4(v67, qword_28156D7E8);
        v69 = sub_26666C5E8();
        if (OUTLINED_FUNCTION_7_2(v69))
        {
          v70 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_7(v70);
          OUTLINED_FUNCTION_7_21(&dword_266549000, v71, v72, "#INCalendarEvent comparator comparing lhs endDate and rhs endDate.");
          OUTLINED_FUNCTION_4_1();
        }

        sub_266668CA8();
        v54 = *(v109 + 8);
        v54(v1, v47);
      }

      v63 = v21;
LABEL_32:
      v54(v63, v47);
      goto LABEL_69;
    }
  }

LABEL_37:
  v76 = sub_26659A29C(v6, &selRef_title);
  if (v77)
  {
    v78 = sub_2665EC4D0(v76, v77);
    v80 = v79;

    if (v80)
    {
      v81 = sub_26659A29C(v4, &selRef_title);
      if (v82)
      {
        v83 = sub_2665EC4D0(v81, v82);
        v85 = v84;

        if (v85)
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1();
          }

          v86 = sub_26666C168();
          v87 = OUTLINED_FUNCTION_22_4(v86, qword_28156D7E8);
          v88 = sub_26666C5E8();
          if (!OUTLINED_FUNCTION_7_2(v88))
          {
            goto LABEL_57;
          }

          v89 = OUTLINED_FUNCTION_20();
          *v89 = 0;
          v90 = "#INCalendarEvent comparator comparing alphabetically by title.";
LABEL_56:
          _os_log_impl(&dword_266549000, v87, v88, v90, v89, 2u);
          OUTLINED_FUNCTION_4_1();
LABEL_57:

          if (v78 != v83 || v80 != v85)
          {
            sub_26666CAC8();
          }

          goto LABEL_69;
        }
      }
    }
  }

  v91 = [v6 location];
  if (v91)
  {
    v92 = sub_2665EF644(v91, &selRef_name);
    if (v93)
    {
      v78 = sub_2665EC4D0(v92, v93);
      v80 = v94;

      if (v80)
      {
        v95 = [v4 location];
        if (v95)
        {
          v96 = sub_2665EF644(v95, &selRef_name);
          if (v97)
          {
            v83 = sub_2665EC4D0(v96, v97);
            v85 = v98;

            if (v85)
            {
              if (qword_28156C150 != -1)
              {
                OUTLINED_FUNCTION_1_1();
              }

              v99 = sub_26666C168();
              v87 = OUTLINED_FUNCTION_22_4(v99, qword_28156D7E8);
              v88 = sub_26666C5E8();
              if (!OUTLINED_FUNCTION_7_2(v88))
              {
                goto LABEL_57;
              }

              v89 = OUTLINED_FUNCTION_20();
              *v89 = 0;
              v90 = "#INCalendarEvent comparator comparing alphabetically by location name.";
              goto LABEL_56;
            }
          }
        }
      }
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v101 = sub_26666C168();
  v102 = OUTLINED_FUNCTION_22_4(v101, qword_28156D7E8);
  v103 = sub_26666C5F8();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = OUTLINED_FUNCTION_20();
    *v104 = 0;
    _os_log_impl(&dword_266549000, v102, v103, "#INCalendarEvent comparator could not find parameters necessary for sorting - dateTimeRange, title, nor location name. Returning true.", v104, 2u);
    OUTLINED_FUNCTION_4_1();
  }

LABEL_69:
  OUTLINED_FUNCTION_27_0();
}

void sub_2665ED754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = sub_266668E68();
  v25 = OUTLINED_FUNCTION_3_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25, v30);
  OUTLINED_FUNCTION_1_0();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v35 = OUTLINED_FUNCTION_3_3(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  OUTLINED_FUNCTION_10_5();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &a9 - v44;
  v46 = sub_266668D38();
  v47 = OUTLINED_FUNCTION_3_0(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47, v52);
  OUTLINED_FUNCTION_1_0();
  v55 = v54 - v53;
  v56 = [v23 dateTimeRange];
  if (!v56)
  {
    OUTLINED_FUNCTION_6_17(v45);
LABEL_8:
    sub_26656CAEC(v45, &qword_28007D140, &qword_26666F140);
    goto LABEL_9;
  }

  v57 = v56;
  v58 = [v56 startDate];

  if (v58)
  {
    sub_266668CE8();

    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  OUTLINED_FUNCTION_8_20(v41, v59);
  sub_2665EF8D0(v41, v45, &qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_29(v45);
  if (v60)
  {
    goto LABEL_8;
  }

  (*(v49 + 32))(v55, v45, v46);
  sub_266668E58();
  sub_266668DB8();
  (*(v27 + 8))(v33, v24);
  v61 = *(v49 + 8);
  v62 = OUTLINED_FUNCTION_9_18();
  v63(v62);
LABEL_9:
  OUTLINED_FUNCTION_27_0();
}

void sub_2665ED9D0()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v0;
  v5 = sub_266668E68();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v16 = OUTLINED_FUNCTION_3_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_26_6();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_16_13();
  v22 = sub_266668D38();
  v23 = OUTLINED_FUNCTION_3_0(v22);
  v46 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23, v27);
  OUTLINED_FUNCTION_10_5();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31, v32);
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v45 - v35;
  v37 = [v4 dateTimeRange];
  if (!v37)
  {
    OUTLINED_FUNCTION_6_17(v2);
LABEL_8:
    sub_26656CAEC(v2, &qword_28007D140, &qword_26666F140);
    goto LABEL_9;
  }

  v38 = v37;
  v45 = v5;
  v39 = v8;
  v40 = [v37 startDate];

  if (v40)
  {
    sub_266668CE8();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  OUTLINED_FUNCTION_8_20(v3, v41);
  sub_2665EF8D0(v3, v2, &qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_29(v2);
  if (v42)
  {
    goto LABEL_8;
  }

  v43 = v46;
  (*(v46 + 32))(v36, v2, v22);
  sub_266668E58();
  sub_266668CF8();
  sub_266668DA8();
  v44 = *(v43 + 8);
  v44(v30, v22);
  (*(v39 + 8))(v14, v45);
  sub_2665EF878();
  sub_26666C298();
  v44(v1, v22);
  v44(v36, v22);
LABEL_9:
  OUTLINED_FUNCTION_27_0();
}

void sub_2665EDCDC()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v8 = OUTLINED_FUNCTION_3_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_27();
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_26_6();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_25_8();
  v20 = sub_266668B08();
  v21 = OUTLINED_FUNCTION_3_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21, v26);
  OUTLINED_FUNCTION_10_5();
  v29 = (v27 - v28);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v52 - v32;
  v34 = [v4 dateTimeRange];
  if (!v34)
  {
    OUTLINED_FUNCTION_6_17(v2);
LABEL_8:
    v39 = v2;
LABEL_17:
    sub_26656CAEC(v39, &unk_28007DC90, &qword_266676EB0);
    goto LABEL_18;
  }

  v35 = v34;
  v53 = v6;
  v36 = [v34 startDateComponents];

  if (v36)
  {
    sub_266668A28();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  OUTLINED_FUNCTION_8_20(v3, v37);
  sub_2665EF8D0(v3, v2, &unk_28007DC90, &qword_266676EB0);
  OUTLINED_FUNCTION_3_29(v2);
  if (v38)
  {
    goto LABEL_8;
  }

  v40 = v23;
  v41 = *(v23 + 32);
  v41(v33, v2, v20);
  v42 = [v53 dateTimeRange];
  if (!v42)
  {
    OUTLINED_FUNCTION_6_17(v16);
LABEL_16:
    v46 = *(v40 + 8);
    v47 = OUTLINED_FUNCTION_34_2();
    v48(v47);
    v39 = v16;
    goto LABEL_17;
  }

  v43 = v42;
  v44 = [v42 startDateComponents];

  if (v44)
  {
    sub_266668A28();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  OUTLINED_FUNCTION_8_20(v1, v45);
  sub_2665EF8D0(v1, v16, &unk_28007DC90, &qword_266676EB0);
  OUTLINED_FUNCTION_3_29(v16);
  if (v38)
  {
    goto LABEL_16;
  }

  v41(v29, v16, v20);
  sub_266645504();
  v49 = *(v40 + 8);
  v50 = OUTLINED_FUNCTION_9_18();
  v49(v50);
  v51 = OUTLINED_FUNCTION_34_2();
  v49(v51);
LABEL_18:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_2665EE014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  static INCalendarEvent.< infix(_:_:)();
  return v4 & 1;
}

uint64_t sub_2665EE038(void **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v31 - v10;
  v12 = sub_266668D38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v31 - v20;
  v22 = *a1;
  if ((sub_2665EC908() & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = [v22 dateTimeRange];
  if (!v23)
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
LABEL_8:
    sub_26656CAEC(v11, &qword_28007D140, &qword_26666F140);
LABEL_9:
    v27 = 0;
    return v27 & 1;
  }

  v24 = v23;
  v31[1] = v1;
  v25 = [v23 startDate];

  if (v25)
  {
    sub_266668CE8();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v26, 1, v12);
  sub_2665EF8D0(v8, v11, &qword_28007D140, &qword_26666F140);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  (*(v13 + 32))(v21, v11, v12);
  sub_2665EF878();
  if (sub_26666C298())
  {
    sub_266668C78();
    v29 = sub_26666C298();
    v30 = *(v13 + 8);
    v30(v18, v12);
    v30(v21, v12);
    v27 = v29 ^ 1;
  }

  else
  {
    (*(v13 + 8))(v21, v12);
    v27 = 1;
  }

  return v27 & 1;
}

unint64_t sub_2665EE358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  i = a1;
  sub_2665ED754(a1, a2, a3, a4, a5, a6, a7, a8, v83, v85, v87, v89, v90, v92, v94, v96, v98, v100, v102, v106);
  k = &unk_26666E000;
  v11 = MEMORY[0x277D84F90];
  if (v12)
  {
    if (qword_28156C150 != -1)
    {
LABEL_102:
      swift_once();
    }

    v13 = sub_26666C168();
    __swift_project_value_buffer(v13, qword_28156D7E8);
    v14 = sub_26666C148();
    v15 = sub_26666C5E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_266549000, v14, v15, "#filterByReference Found event starting today", v16, 2u);
      MEMORY[0x266789690](v16, -1, -1);
    }

    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    inited = swift_initStackObject();
    v88 = *(k + 80);
    *(inited + 16) = v88;
    *(inited + 32) = i;
    v103 = MEMORY[0x277D84F90];
    k = sub_2665C485C(v8);
    v18 = i;
    for (i = 0; k != i; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x266788B60](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v19 = *(v8 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_91;
      }

      v20 = v19;
      sub_2665ED754(v20, v21, v22, v23, v24, v25, v26, v27, v84, v86, v88, *(&v88 + 1), v91, v93, v95, v97, v99, v101, v103, v107);
      v29 = v28;

      if (v29)
      {
        sub_26666C868();
        v30 = *(v103 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }
    }

    sub_2665C288C(v103);
    v8 = inited;
    i = sub_2665C485C(inited);
    k = 0;
    v41 = inited & 0xC000000000000001;
    while (i != k)
    {
      if (v41)
      {
        v42 = MEMORY[0x266788B60](k, v8);
      }

      else
      {
        if (k >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_99;
        }

        v42 = *(v8 + 8 * k + 32);
      }

      v43 = v42;
      if (__OFADD__(k, 1))
      {
        goto LABEL_98;
      }

      if ((sub_2665EC938() & 1) == 0)
      {

        v76 = sub_26666C148();
        v77 = sub_26666C5E8();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_266549000, v76, v77, "#filterByReference Returning single timed event today", v78, 2u);
          MEMORY[0x266789690](v78, -1, -1);
        }

        v53 = swift_allocObject();
        *(v53 + 16) = v88;
        *(v53 + 32) = v43;
        return v53;
      }

      ++k;
    }

    v60 = sub_26666C148();
    v61 = sub_26666C5E8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_266549000, v60, v61, "#filterByReference Returning all events today", v62, 2u);
      MEMORY[0x266789690](v62, -1, -1);
    }

    v63 = 0;
    v105 = MEMORY[0x277D84F90];
    while (i != v63)
    {
      if (v41)
      {
        v64 = MEMORY[0x266788B60](v63, v8);
      }

      else
      {
        if (v63 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_101;
        }

        v64 = *(v8 + 8 * v63 + 32);
      }

      if (__OFADD__(v63, 1))
      {
        goto LABEL_100;
      }

      v65 = v64;
      sub_2665ED754(v65, v66, v67, v68, v69, v70, v71, v72, v84, v86, v88, *(&v88 + 1), v91, v93, v95, v97, v99, v101, v105, v107);
      v74 = v73;

      if (v74)
      {
        sub_26666C868();
        v75 = *(v105 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }

      ++v63;
    }

    return v105;
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v31 = sub_26666C168();
    __swift_project_value_buffer(v31, qword_28156D7E8);
    v32 = sub_26666C148();
    v33 = sub_26666C5E8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266549000, v32, v33, "#filterByReference Getting events occurring on subsequent day", v34, 2u);
      MEMORY[0x266789690](v34, -1, -1);
    }

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_26666E050;
    *(v35 + 32) = i;
    k = sub_2665C485C(v8);
    i = i;
    for (j = 0; k != j; ++j)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x266788B60](j, v8);
      }

      else
      {
        if (j >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v37 = *(v8 + 8 * j + 32);
      }

      v38 = v37;
      if (__OFADD__(j, 1))
      {
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
        goto LABEL_102;
      }

      sub_2665EDCDC();
      if (v39)
      {
        sub_26666C868();
        v40 = *(v11 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }
    }

    sub_2665C288C(v11);
    v8 = v35;
    v44 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    i = sub_2665C485C(v35);
    v45 = 0;
    v46 = v8 & 0xC000000000000001;
    while (i != v45)
    {
      if (v46)
      {
        v47 = MEMORY[0x266788B60](v45, v8);
      }

      else
      {
        if (v45 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_95;
        }

        v47 = *(v8 + 8 * v45 + 32);
      }

      k = v47;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_94;
      }

      if (sub_2665EC938())
      {
      }

      else
      {
        sub_26666C868();
        v48 = *(v104 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      ++v45;
    }

    for (k = 0; i != k; ++k)
    {
      if (v46)
      {
        v49 = MEMORY[0x266788B60](k, v8);
      }

      else
      {
        if (k >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v49 = *(v8 + 8 * k + 32);
      }

      if (__OFADD__(k, 1))
      {
        goto LABEL_96;
      }

      v50 = v49;
      v51 = sub_2665EC938();

      if (v51)
      {
        sub_26666C868();
        v52 = *(v44 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }
    }

    v53 = v44;
    if (sub_2665C485C(v104))
    {
      sub_2665C4864(0, (v104 & 0xC000000000000001) == 0, v104);
      if ((v104 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x266788B60](0, v104);
      }

      else
      {
        v54 = *(v104 + 32);
      }

      v55 = v54;

      v56 = sub_26666C148();
      v57 = sub_26666C5E8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_266549000, v56, v57, "#filterByReference Returning timed event + all day events", v58, 2u);
        MEMORY[0x266789690](v58, -1, -1);
      }

      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_26666E050;
      *(v59 + 32) = v55;
      v105 = v59;
      sub_2665C288C(v53);
      return v105;
    }

    v79 = sub_26666C148();
    v80 = sub_26666C5E8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_266549000, v79, v80, "#filterByReference Returning all day events", v81, 2u);
      MEMORY[0x266789690](v81, -1, -1);
    }
  }

  return v53;
}

BOOL sub_2665EEC64(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26666C768())
  {
    v7 = OUTLINED_FUNCTION_20_13();
    sub_2665C4864(v7, v8, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266788B60](0, a1);
    }

    else
    {
      v9 = *(a1 + 32);
    }

    OUTLINED_FUNCTION_21_7();
    while (1)
    {
      v10 = i == v2;
      if (i == v2)
      {
LABEL_15:
        v12 = v1;
LABEL_17:

        return v10;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x266788B60](v2, a1);
      }

      else
      {
        if (v2 >= *(v22 + 16))
        {
          goto LABEL_19;
        }

        v11 = *(a1 + 8 * v2 + 32);
      }

      v12 = v11;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if ((sub_2665EC938() & 1) != 0 || (v13 = [v1 (v4 + 677)], v14 = OUTLINED_FUNCTION_23_10(), sub_2665D4DEC(), v16 = v15, v3, v14, (v16 & 1) == 0))
      {

        goto LABEL_17;
      }

      v17 = [v1 (v4 + 677)];
      v18 = OUTLINED_FUNCTION_23_10();
      sub_2665D4DF8();
      v20 = v19;

      ++v2;
      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

BOOL sub_2665EEE04(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26666C768())
  {
    v7 = OUTLINED_FUNCTION_20_13();
    sub_2665C4864(v7, v8, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266788B60](0, a1);
    }

    else
    {
      v9 = *(a1 + 32);
    }

    OUTLINED_FUNCTION_21_7();
    while (1)
    {
      v10 = i == v2;
      if (i == v2)
      {
        goto LABEL_16;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x266788B60](v2, a1);
      }

      else
      {
        if (v2 >= *(v18 + 16))
        {
          goto LABEL_18;
        }

        v11 = *(a1 + 8 * v2 + 32);
      }

      v12 = v11;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (sub_2665EC938())
      {

LABEL_16:
        return v10;
      }

      v13 = [v1 (v4 + 677)];
      v14 = OUTLINED_FUNCTION_23_10();
      sub_2665D4DEC();
      v16 = v15;

      ++v2;
      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

uint64_t sub_2665EEF64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E638, &unk_266676EC0);
  v1 = *(sub_2666697B8() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26666EED0;
  sub_26659A29C(v0, &selRef_title);
  if (qword_28007CE58 != -1)
  {
    swift_once();
  }

  sub_26666A1C8();
  sub_266669798();
  return v4;
}

uint64_t sub_2665EF09C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = INCalendarEvent.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_2665EF0C8(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_2665EF3A4(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_50;
  }

  if (v7)
  {
    sub_2665C485C(v4);
LABEL_50:

    return;
  }

  v32 = a1;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        v10 = sub_26666C768();
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == v10)
      {
        goto LABEL_50;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x266788B60](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = sub_26659A29C(v11, &selRef_eventIdentifier);
      v15 = v14;
      v16 = sub_26659A29C(v5, &selRef_eventIdentifier);
      v18 = v17;
      if (!v15)
      {
        break;
      }

      if (!v17)
      {

LABEL_23:

        goto LABEL_24;
      }

      if (v13 == v16 && v15 == v17)
      {

        goto LABEL_43;
      }

      v20 = sub_26666CAC8();

      if (v20)
      {
        goto LABEL_43;
      }

LABEL_24:
      if (v8 != v9)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x266788B60](v8, v4);
          v22 = MEMORY[0x266788B60](v9, v4);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_56;
          }

          v23 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v23)
          {
            goto LABEL_57;
          }

          if (v9 >= v23)
          {
            goto LABEL_58;
          }

          v24 = *(v4 + 32 + 8 * v9);
          v21 = *(v4 + 32 + 8 * v8);
          v22 = v24;
        }

        v25 = v22;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_2665A1DCC(v4);
          v26 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v26) = 0;
        }

        v27 = v4 & 0xFFFFFFFFFFFFFF8;
        v28 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v25;

        if ((v4 & 0x8000000000000000) != 0 || v26)
        {
          v4 = sub_2665A1DCC(v4);
          v27 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v9 >= *(v27 + 16))
        {
          goto LABEL_55;
        }

        v29 = v27 + 8 * v9;
        v30 = *(v29 + 32);
        *(v29 + 32) = v21;

        *v32 = v4;
      }

      v31 = __OFADD__(v8++, 1);
      if (v31)
      {
        goto LABEL_54;
      }

LABEL_43:
      v31 = __OFADD__(v9++, 1);
      if (v31)
      {
        goto LABEL_53;
      }
    }

    if (!v18)
    {
      goto LABEL_43;
    }

    goto LABEL_23;
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_2665EF3A4(uint64_t a1, void *a2)
{
  result = sub_2665C485C(a1);
  v16 = result;
  v4 = 0;
  while (1)
  {
    if (v16 == v4)
    {

      return 0;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v5 = MEMORY[0x266788B60](v4, a1);
LABEL_6:
    v6 = v5;
    v7 = sub_26659A29C(v5, &selRef_eventIdentifier);
    v9 = v8;
    v10 = sub_26659A29C(a2, &selRef_eventIdentifier);
    if (!v9)
    {
      if (!v11)
      {

        return v4;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (!v11)
    {
      goto LABEL_16;
    }

    if (v7 == v10 && v9 == v11)
    {

      return v4;
    }

    v13 = sub_26666CAC8();

    if (v13)
    {

      return v4;
    }

LABEL_17:
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_25;
    }
  }

  if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 8 * v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2665EF594(uint64_t a1)
{
  result = sub_2665EF5D8(&qword_28007ED80);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_2665EF5D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_266552C44(255, &qword_28156C110, 0x277CD3AD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665EF644(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_26666C308();
  }

  return OUTLINED_FUNCTION_34_2();
}

uint64_t sub_2665EF6AC(void *a1)
{
  v2 = [a1 attendees];

  if (!v2)
  {
    return 0;
  }

  sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
  v3 = sub_26666C498();

  return v3;
}

unint64_t sub_2665EF724()
{
  result = qword_28007ED90;
  if (!qword_28007ED90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007ED88, &qword_266676EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ED90);
  }

  return result;
}

unint64_t sub_2665EF788()
{
  result = qword_28007ED98;
  if (!qword_28007ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ED98);
  }

  return result;
}

uint64_t sub_2665EF7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_18_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_25();
  v8(v7);
  return a2;
}

uint64_t sub_2665EF854(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2665EE038(a1) & 1;
}

unint64_t sub_2665EF878()
{
  result = qword_28007EDA0[0];
  if (!qword_28007EDA0[0])
  {
    sub_266668D38();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28007EDA0);
  }

  return result;
}

uint64_t sub_2665EF8D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_18_2(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_25();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

void OUTLINED_FUNCTION_7_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_8_20(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_26666C148();
}

id OUTLINED_FUNCTION_23_10()
{

  return [v0 (v1 + 677)];
}

uint64_t sub_2665EFA68()
{
  v1 = sub_266669368();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_266669E58();
  v11 = OUTLINED_FUNCTION_3_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266669DF8();
  sub_26659AC88(v18, v22);
  (*(v13 + 8))(v18, v10);
  if (v22[40] == 255)
  {
    sub_266560930(v22);
    return 0;
  }

  v19 = sub_266553878();
  sub_266553988(v22);
  if (v19 == 2)
  {
    return 0;
  }

  sub_2665AA6C4(v19);
  v20 = sub_2666692F8();
  (*(v4 + 8))(v9, v1);
  return v20;
}

id sub_2665EFC38()
{
  v1 = [v0 _metadata];
  if (v1)
  {
    v2 = v1;
    sub_26666BA48();
    v3 = sub_26666BA38();
    if (v3)
    {
      sub_26666BA18();

      sub_2666695B8();
      v5 = v4;

      if (v5)
      {
        v3 = sub_26666C2F8();
      }

      else
      {
        v3 = 0;
      }
    }

    [v2 setIntentId_];
  }

  return v7;
}

uint64_t sub_2665EFD84(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_26666C598();
  if (!v29)
  {
    return sub_26666C4C8();
  }

  v51 = v29;
  v55 = sub_26666C8D8();
  v42 = sub_26666C8E8();
  sub_26666C888();
  result = sub_26666C588();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_26666C5B8();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_26666C8C8();
      result = sub_26666C5A8();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2665F0210(void *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_6_18(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE60, &unk_266677260);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_33_5();
  v14[0] = sub_266552C44(0, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_38_1();
  sub_2665764F4(a1, v14);
  if (OUTLINED_FUNCTION_20_14())
  {

    return v13;
  }

  else
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v11 = swift_allocError();
    return OUTLINED_FUNCTION_37_1(v11, v12);
  }
}

uint64_t sub_2665F0314(void *a1)
{
  OUTLINED_FUNCTION_6_18(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE60, &unk_266677260);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_33_5();
  v5[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E538, &unk_266674AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE68, &qword_266677270);
  OUTLINED_FUNCTION_50_0();
  sub_2665764F4(a1, v5);
  if (OUTLINED_FUNCTION_20_14())
  {

    return v5[5];
  }

  else
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v3 = swift_allocError();
    return OUTLINED_FUNCTION_37_1(v3, v4);
  }
}

uint64_t sub_2665F044C(void *a1)
{
  OUTLINED_FUNCTION_6_18(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE60, &unk_266677260);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_33_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE70, &qword_266677278);
  v1 = OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_47_2(v1, v2);
  if (OUTLINED_FUNCTION_20_14())
  {

    return v6;
  }

  else
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v4 = swift_allocError();
    return OUTLINED_FUNCTION_13_11(v4, v5);
  }
}

uint64_t sub_2665F0564(void *a1)
{
  OUTLINED_FUNCTION_6_18(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE60, &unk_266677260);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_33_5();
  v6[0] = MEMORY[0x277D839B0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE90, &qword_266677298);
  OUTLINED_FUNCTION_50_0();
  sub_2665764F4(a1, v6);
  if (OUTLINED_FUNCTION_20_14())
  {

    v2 = v7;
  }

  else
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v3 = swift_allocError();
    OUTLINED_FUNCTION_13_11(v3, v4);
  }

  return v2 & 1;
}

uint64_t sub_2665F0658(void *a1)
{
  OUTLINED_FUNCTION_6_18(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE60, &unk_266677260);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_33_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE98, &qword_2666772A0);
  v1 = OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_47_2(v1, v2);
  if (OUTLINED_FUNCTION_20_14())
  {

    return v6;
  }

  else
  {
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v4 = swift_allocError();
    return OUTLINED_FUNCTION_13_11(v4, v5);
  }
}

uint64_t sub_2665F0738@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v130 = a3;
  v123 = a2;
  v102 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE30, &unk_266677230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v114 = &v101 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v117 = &v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v116 = &v101 - v16;
  v118 = sub_26666C228();
  v104 = *(v118 - 8);
  v17 = *(v104 + 64);
  v19 = MEMORY[0x28223BE20](v118, v18);
  v103 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v101 = &v101 - v22;
  v115 = sub_266669738();
  v122 = *(v115 - 8);
  v23 = *(v122 + 64);
  MEMORY[0x28223BE20](v115, v24);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2666699C8();
  v105 = *(v106 - 8);
  v27 = *(v105 + 64);
  MEMORY[0x28223BE20](v106, v28);
  v30 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266663398();
  sub_266669928();
  if (qword_28007CE30 != -1)
  {
LABEL_55:
    swift_once();
  }

  sub_2665E8748();
  sub_266669978();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v31 = swift_allocObject();
  v113 = xmmword_26666EED0;
  *(v31 + 16) = xmmword_26666EED0;
  v124 = sub_26666C338();
  v125 = v32;
  v128 = 32;
  v129 = 0xE100000000000000;
  v126 = 95;
  v127 = 0xE100000000000000;
  v110 = sub_266595F88();
  sub_26666C6F8();

  v124 = sub_2666312CC(2);
  v125 = v33;
  MEMORY[0x266788710](0x2E65756C61562ELL, 0xE700000000000000);
  v34 = sub_26666C338();
  MEMORY[0x266788710](v34);

  v35 = v125;
  *(v31 + 32) = v124;
  *(v31 + 40) = v35;
  v112 = v30;
  sub_266669948();
  v119 = a1;
  sub_2665F5ED8(a1);
  v37 = *(v36 + 16);
  v38 = MEMORY[0x277D84F90];
  v111 = MEMORY[0x277D84F90];
  v108 = v36;
  if (v37)
  {
    v39 = *(v122 + 16);
    v40 = v36 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    v120 = *(v122 + 72);
    v121 = v39;
    v122 += 16;
    v41 = (v122 - 8);
    v42 = v114;
    v43 = v115;
    do
    {
      (v121)(v26, v40, v43);
      sub_266669718();
      v44 = sub_2666697B8();
      if (__swift_getEnumTagSinglePayload(v42, 1, v44) == 1)
      {
        (*v41)(v26, v43);
        sub_266594028(v42, &qword_28007EE30, &unk_266677230);
      }

      else
      {
        v45 = sub_2666697A8();
        v46 = v43;
        v48 = v47;
        (*v41)(v26, v46);
        (*(*(v44 - 8) + 8))(v42, v44);
        if (v48)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = *(v38 + 16);
            sub_2665C6350();
            v38 = v52;
          }

          v49 = *(v38 + 16);
          if (v49 >= *(v38 + 24) >> 1)
          {
            sub_2665C6350();
            v38 = v53;
          }

          *(v38 + 16) = v49 + 1;
          v50 = v38 + 16 * v49;
          *(v50 + 32) = v45;
          *(v50 + 40) = v48;
          v42 = v114;
        }

        v43 = v115;
      }

      v40 += v120;
      --v37;
    }

    while (v37);
  }

  v54 = sub_2665F6310(v38);
  inited = swift_initStackObject();
  *(inited + 16) = v113;
  if (qword_28007CE38 != -1)
  {
    swift_once();
  }

  *(inited + 32) = sub_2665E8760();
  *(inited + 40) = v56;
  sub_2665F63D0(v54, inited);

  swift_setDeallocating();
  sub_266639138();
  a1 = v112;
  sub_2666699A8();
  v57 = swift_allocObject();
  *(v57 + 16) = v113;
  v124 = sub_26666C338();
  v125 = v58;
  v128 = 32;
  v129 = 0xE100000000000000;
  v126 = 95;
  v127 = 0xE100000000000000;
  v26 = sub_26666C6F8();

  v124 = sub_2666312CC(2);
  v125 = v59;
  MEMORY[0x266788710](0x2E65756C61562ELL, 0xE700000000000000);
  v60 = sub_26666C338();
  MEMORY[0x266788710](v60);

  v61 = v125;
  *(v57 + 32) = v124;
  *(v57 + 40) = v61;
  sub_266669998();
  sub_2666698F8();
  v124 = MEMORY[0x277D84F90];
  v62 = v119;
  v30 = sub_2665C485C(v119);
  v63 = 0;
  v64 = v62 & 0xC000000000000001;
  v65 = v62 & 0xFFFFFFFFFFFFFF8;
  while (v30 != v63)
  {
    if (v64)
    {
      v66 = MEMORY[0x266788B60](v63, v62);
    }

    else
    {
      if (v63 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v66 = v62[v63 + 4];
    }

    v67 = v66;
    a1 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v26 = (v123)(v66);

    ++v63;
    if (v26)
    {
      MEMORY[0x2667887C0]();
      if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      v111 = v124;
      v63 = a1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
  v68 = *(sub_26666A058() - 8);
  v69 = *(v68 + 72);
  v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v113;
  v72 = v107;
  sub_26664F374(v111, v71 + v70);
  v26 = v72;
  if (v72)
  {

    *(v71 + 16) = 0;

    return (*(v105 + 8))(v112, v106);
  }

  else
  {
    v120 = 0;

    sub_266669918();
    v74 = sub_26666C1E8();
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    swift_allocObject();
    v130 = sub_26666C1D8();
    v77 = 0;
    v123 = "alendar.directInvocation";
    v121 = (v104 + 32);
    v122 = MEMORY[0x277D84F90];
    while (v30 != v77)
    {
      if (v64)
      {
        v78 = MEMORY[0x266788B60](v77, v119);
      }

      else
      {
        if (v77 >= *(v65 + 16))
        {
          goto LABEL_54;
        }

        v78 = v119[v77 + 4];
      }

      a1 = v78;
      v79 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_53;
      }

      v26 = v117;
      sub_26666C1C8();
      v80 = sub_26666C1B8();
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v80);
      v81 = v116;
      sub_2665F1AD8(0xD000000000000013, v123 | 0x8000000000000000, v26, sub_26662D850, sub_26658160C, &qword_28007D148, 0x277CD3E90, v82, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
      sub_266594028(v26, &unk_28007F810, &unk_26667C710);

      if (__swift_getEnumTagSinglePayload(v81, 1, v118) == 1)
      {
        sub_266594028(v81, &qword_28007ED70, &qword_266671CC0);
        ++v77;
      }

      else
      {
        a1 = v121;
        v83 = *v121;
        v26 = v101;
        v84 = v81;
        v85 = v118;
        (*v121)(v101, v84, v118);
        v83(v103, v26, v85);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = *(v122 + 16);
          sub_2665C6994();
          v122 = v89;
        }

        v86 = *(v122 + 16);
        if (v86 >= *(v122 + 24) >> 1)
        {
          sub_2665C6994();
          v122 = v90;
        }

        v87 = v122;
        *(v122 + 16) = v86 + 1;
        v83((v87 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v86), v103, v118);
        v77 = v79;
      }
    }

    v91 = v112;
    sub_2666698E8();
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v92 = sub_26666C168();
    __swift_project_value_buffer(v92, qword_28156D7E8);
    v93 = sub_26666C148();
    v94 = sub_26666C618();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 134217984;
      swift_beginAccess();
      v96 = sub_2666698D8();
      if (v96)
      {
        v97 = v96;
        swift_endAccess();
        v98 = *(v97 + 16);
      }

      else
      {
        swift_endAccess();
        v98 = -1;
      }

      *(v95 + 4) = v98;
      _os_log_impl(&dword_266549000, v93, v94, "Donating %ld rrEntities", v95, 0xCu);
      MEMORY[0x266789690](v95, -1, -1);
    }

    swift_beginAccess();
    v99 = v105;
    v100 = v106;
    (*(v105 + 16))(v102, v91, v106);
    return (*(v99 + 8))(v91, v100);
  }
}

uint64_t sub_2665F15B8(void (*a1)(void), uint64_t (*a2)(uint64_t), void (*a3)(void, BOOL, uint64_t))
{
  v6 = sub_266669EE8();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2F8, &unk_266677220);
  OUTLINED_FUNCTION_3_3(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v29 - v21;
  a1(0);
  sub_266669E78();
  v23 = sub_266669ED8();
  (*(v9 + 8))(v15, v6);
  sub_2665EC518(v23, v22);

  v24 = sub_266669F98();
  if (__swift_getEnumTagSinglePayload(v22, 1, v24) == 1)
  {
    sub_266594028(v22, &qword_28007D2F8, &unk_266677220);
    return 0;
  }

  v25 = sub_266669F28();
  OUTLINED_FUNCTION_4_5(v24);
  (*(v26 + 8))(v22, v24);
  if (!a2(v25))
  {

    return 0;
  }

  a3(0, (v25 & 0xC000000000000001) == 0, v25);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x266788B60](0, v25);
  }

  else
  {
    v27 = *(v25 + 32);
  }

  return v27;
}

void sub_2665F1AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  OUTLINED_FUNCTION_3_3(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v28, v29);
  sub_2665F65F8(v24, &a9 - v30);
  v20;

  sub_2665F57FC();
  OUTLINED_FUNCTION_27_0();
}

void sub_2665F1BB0()
{
  OUTLINED_FUNCTION_28_0();
  v92 = v1;
  v87 = sub_266669E48();
  v2 = OUTLINED_FUNCTION_3_0(v87);
  v89 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  OUTLINED_FUNCTION_10_5();
  v86 = (v7 - v8);
  MEMORY[0x28223BE20](v9, v10);
  v88 = &v85 - v11;
  v12 = sub_266669E58();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  OUTLINED_FUNCTION_10_5();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v85 - v24;
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  sub_266669DF8();
  v90 = v0;
  v26 = sub_2665F2200();
  v91 = sub_266567A00(v25, v26, v27);
  v29 = v28;
  v30 = (v15 + 8);
  v31 = *(v15 + 8);
  v31(v25, v12);

  if (!v29)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v53 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v53, qword_28156D7E8);
    v54 = sub_26666C148();
    v55 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v55))
    {
      v56 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v56);
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v57, v58, v59, v60, (v15 + 8), 2u);
      OUTLINED_FUNCTION_10();
    }

    sub_2666697C8();
    v61 = v91;
    v62 = 0;
    goto LABEL_20;
  }

  if (v29 != 1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v63 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v63, qword_28156D7E8);

    v64 = sub_26666C148();
    v65 = sub_26666C618();
    v66 = v91;
    sub_2665695F8(v91, v29);
    if (os_log_type_enabled(v64, v65))
    {
      v67 = OUTLINED_FUNCTION_21();
      v68 = OUTLINED_FUNCTION_13_0();
      v93[0] = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_2665BFC90(v66, v29, v93);
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v69, v70, v71, v72, v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v73 = v90;
    v74 = *(v90 + 144);
    v75 = *(v90 + 152);
    *(v90 + 144) = v66;
    *(v73 + 152) = v29;
    v76 = *(v73 + 160);
    *(v73 + 160) = 0;

    sub_2665F673C(v74, v75, v76);
    sub_2666697D8();
    v61 = v66;
    v62 = v29;
LABEL_20:
    sub_2665695F8(v61, v62);
    goto LABEL_28;
  }

  sub_266669DF8();
  if ((*(v15 + 88))(v21, v12) == *MEMORY[0x277D5C150])
  {
    (*(v15 + 96))(v21, v12);
    v33 = v88;
    v32 = v89;
    v30 = v87;
    (*(v89 + 32))(v88, v21, v87);
    v34 = v86;
    (*(v32 + 16))(v86, v33, v30);
    v35 = sub_2665E1640(v34);
    if (v37 != -1)
    {
      v38 = v35;
      v39 = v36;
      v40 = v37;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v41 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v41, qword_28156D7E8);
      sub_2665F6834(v38, v39, v40 & 1);
      v42 = sub_26666C148();
      v43 = sub_26666C618();
      sub_2665F6844(v38, v39, v40);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = OUTLINED_FUNCTION_21();
        v45 = OUTLINED_FUNCTION_13_0();
        v95 = v45;
        *v44 = 136315138;
        v93[0] = v38;
        v93[1] = v39;
        v94 = v40 & 1;
        sub_2665F6834(v38, v39, v40 & 1);
        v46 = sub_26666C318();
        v48 = sub_2665BFC90(v46, v47, &v95);
        v33 = v88;

        *(v44 + 4) = v48;
        _os_log_impl(&dword_266549000, v42, v43, "[ParticipantDisambiguationFlowStrategy] selected contact via ui: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        v32 = v89;
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      v49 = v90;
      v50 = *(v90 + 144);
      v51 = *(v90 + 152);
      *(v90 + 144) = v38;
      *(v49 + 152) = v39;
      v52 = *(v49 + 160);
      *(v49 + 160) = v40 & 1 | 0x40;
      sub_2665F673C(v50, v51, v52);
      sub_2666697D8();
      (*(v32 + 8))(v33, v30);
      goto LABEL_28;
    }

    (*(v32 + 8))(v33, v30);
  }

  else
  {
    v31(v21, v12);
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v77 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v77, qword_28156D7E8);
  v78 = sub_26666C148();
  v79 = sub_26666C618();
  if (OUTLINED_FUNCTION_52_0(v79))
  {
    v80 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v80);
    OUTLINED_FUNCTION_43_2();
    _os_log_impl(v81, v82, v83, v84, v30, 2u);
    OUTLINED_FUNCTION_10();
  }

  sub_2666697E8();
LABEL_28:
  OUTLINED_FUNCTION_27_0();
}