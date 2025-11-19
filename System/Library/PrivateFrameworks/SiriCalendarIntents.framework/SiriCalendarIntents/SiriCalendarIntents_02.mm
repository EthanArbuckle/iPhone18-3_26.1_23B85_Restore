uint64_t sub_2665766B4()
{
  sub_26666C358();
}

uint64_t sub_266576758(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      result = 1954047342;
      break;
    case 2:
      result = 1953718636;
      break;
    case 3:
      result = 0x73756F6976657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2665767C8()
{
  v0 = sub_26666C958();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266576814(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_266603DEC();
}

uint64_t sub_266576838@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2665767C8();
  *a2 = result;
  return result;
}

uint64_t sub_266576868@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266576758(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_266576898()
{
  result = qword_28007D538;
  if (!qword_28007D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D538);
  }

  return result;
}

uint64_t sub_2665768EC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_266553434;

  return (v9)(0, a1, a2);
}

uint64_t sub_266576A08(char a1)
{
  if (((a1 - 6) & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return 0x20301u >> (8 * (a1 - 6));
  }
}

uint64_t sub_266576A30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007D540, &qword_26666F748);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v18 - v3;
  v5 = sub_26666A948();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v18 - v13;
  sub_26666A938();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_266576C68(v4);
    return 4;
  }

  v16 = *(v6 + 32);
  v16(v14, v4, v5);
  v16(v11, v14, v5);
  v17 = (*(v6 + 88))(v11, v5);
  if (v17 == *MEMORY[0x277D5EBE8])
  {
    return 2;
  }

  if (v17 == *MEMORY[0x277D5EC68])
  {
    return 3;
  }

  if (v17 == *MEMORY[0x277D5EC00])
  {
    return 0;
  }

  if (v17 != *MEMORY[0x277D5EBF0])
  {
    (*(v6 + 8))(v11, v5);
    return 4;
  }

  return 1;
}

uint64_t sub_266576C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007D540, &qword_26666F748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266576CD0()
{
  v0 = sub_26666C168();
  __swift_allocate_value_buffer(v0, qword_28156D7E8);
  __swift_project_value_buffer(v0, qword_28156D7E8);
  return sub_26666C158();
}

uint64_t sub_266576D50()
{
  v0 = sub_26666C168();
  __swift_allocate_value_buffer(v0, static Logger.calendarUIPlugin);
  __swift_project_value_buffer(v0, static Logger.calendarUIPlugin);
  return sub_26666C158();
}

uint64_t Logger.calendarUIPlugin.unsafeMutableAddressor()
{
  if (qword_28007CD98 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v0 = sub_26666C168();

  return __swift_project_value_buffer(v0, static Logger.calendarUIPlugin);
}

uint64_t static Logger.calendarUIPlugin.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28007CD98 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = sub_26666C168();
  v3 = __swift_project_value_buffer(v2, static Logger.calendarUIPlugin);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_266576EBC()
{
  v0 = sub_26666C168();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26666C0E8();
  __swift_allocate_value_buffer(v6, qword_280095698);
  __swift_project_value_buffer(v6, qword_280095698);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_28156D7E8);
  (*(v1 + 16))(v5, v7, v0);
  return sub_26666C0C8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return swift_once();
}

uint64_t sub_266577080(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_266577128()
{
  v1 = v0;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);

  oslog = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = v1 + *(*v1 + 112);
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);

    v10 = sub_266579BF4(v7, v8, v9);
    v12 = sub_2665BFC90(v10, v11, &v14);

    *(v4 + 4) = v12;
    _os_log_impl(&dword_266549000, oslog, v3, "[FSEAAFlow] transitioned to state %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x266789690](v5, -1, -1);
    MEMORY[0x266789690](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2665772C8()
{
  OUTLINED_FUNCTION_15_4();
  v2 = (v0 + *(v1 + 112));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = OUTLINED_FUNCTION_25();
  sub_26657BE28(v6, v7, v5);
  return OUTLINED_FUNCTION_25();
}

void sub_26657731C(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_15_4();
  v6 = v3 + *(v5 + 112);
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v9;
  *(v6 + 8) = v10;
  v11 = *(v6 + 16);
  *(v6 + 16) = v12;
  sub_26657BE28(v9, v10, v12);
  sub_26657BCCC(v7, v8, v11);
  sub_266577128();
  v13 = OUTLINED_FUNCTION_23_2();

  sub_26657BCCC(v13, v14, a3);
}

uint64_t sub_2665773B0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  return OUTLINED_FUNCTION_1_12(sub_2665773F0);
}

uint64_t sub_2665773F0()
{
  v140 = v0;
  v1 = *(v0 + 112);
  v2 = sub_2665772C8();
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  v4 = v2;
  switch(v5)
  {
    case 1:
      v80 = *(v0 + 112);
      v79 = *(v0 + 120);
      OUTLINED_FUNCTION_15_4();
      v82 = *(v81 + 96);
      v84 = *(v83 + 80);
      v85 = *(*(v83 + 88) + 32);
      OUTLINED_FUNCTION_27_3();
      v137 = v86 + *v86;
      v88 = *(v87 + 4);
      v89 = swift_task_alloc();
      *(v0 + 144) = v89;
      *v89 = v0;
      OUTLINED_FUNCTION_14_3(v89);
      OUTLINED_FUNCTION_19_3();

      __asm { BRAA            X4, X16 }

      return result;
    case 2:
      v47 = *(v0 + 112);
      v46 = *(v0 + 120);
      OUTLINED_FUNCTION_15_4();
      v49 = *(v48 + 96);
      v51 = *(v50 + 80);
      v52 = *(*(v50 + 88) + 40);
      OUTLINED_FUNCTION_27_3();
      v136 = v53 + *v53;
      v55 = *(v54 + 4);
      v56 = swift_task_alloc();
      *(v0 + 160) = v56;
      *v56 = v0;
      OUTLINED_FUNCTION_14_3(v56);
      OUTLINED_FUNCTION_19_3();

      __asm { BRAA            X4, X16 }

      return result;
    case 3:
      if (v3)
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v59 = sub_26666C168();
        OUTLINED_FUNCTION_11_4(v59, qword_28156D7E8);
        v60 = v4;
        v61 = sub_26666C148();
        v62 = sub_26666C5F8();
        v63 = OUTLINED_FUNCTION_15_2();
        sub_26657BCCC(v63, v64, 3);
        if (os_log_type_enabled(v61, v62))
        {
          v65 = OUTLINED_FUNCTION_21();
          v66 = OUTLINED_FUNCTION_13_0();
          v139 = v66;
          *v65 = 136446210;
          *(v0 + 88) = v4;
          v67 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
          v68 = sub_26666C318();
          v70 = sub_2665BFC90(v68, v69, &v139);

          *(v65 + 4) = v70;
          OUTLINED_FUNCTION_12_4();
          _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v66);
          OUTLINED_FUNCTION_4_1();
          OUTLINED_FUNCTION_9_5();
        }

        v76 = *(v0 + 104);
        sub_2666698A8();
        v77 = OUTLINED_FUNCTION_15_2();
        sub_26657BCCC(v77, v78, 3);
        goto LABEL_42;
      }

      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v105 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v105, qword_28156D7E8);
      v106 = v4;
      v107 = sub_26666C148();
      v108 = sub_26666C5F8();
      v109 = OUTLINED_FUNCTION_15_2();
      sub_26657BCCC(v109, v110, 3);
      if (os_log_type_enabled(v107, v108))
      {
        v111 = OUTLINED_FUNCTION_21();
        v112 = OUTLINED_FUNCTION_13_0();
        v139 = v112;
        *v111 = 136446210;
        *(v0 + 80) = v4;
        v113 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
        v114 = sub_26666C318();
        v116 = sub_2665BFC90(v114, v115, &v139);

        *(v111 + 4) = v116;
        _os_log_impl(&dword_266549000, v107, v108, "[FSEAAFlow] Completing flow with error output for unhandled error: %{public}s", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v112);
        OUTLINED_FUNCTION_9_5();
        OUTLINED_FUNCTION_10();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v0 + 208) = v43;
      *v43 = v117;
      v45 = sub_266578560;
      break;
    case 4:
      if (__PAIR128__((v2 != 0) + v3 - 1, v2 - 1) >= 2)
      {
        if (!(v2 | v3))
        {
          v93 = *(v0 + 112);
          v92 = *(v0 + 120);
          OUTLINED_FUNCTION_15_4();
          v95 = *(v94 + 96);
          v97 = *(v96 + 80);
          v98 = *(*(v96 + 88) + 8);
          OUTLINED_FUNCTION_27_3();
          v138 = v99 + *v99;
          v101 = *(v100 + 4);
          v102 = swift_task_alloc();
          *(v0 + 176) = v102;
          *v102 = v0;
          v102[1] = sub_26657825C;
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_19_3();

          __asm { BRAA            X2, X16 }
        }

        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v124 = sub_26666C168();
        OUTLINED_FUNCTION_11_4(v124, qword_28156D7E8);
        v125 = sub_26666C148();
        v126 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_2(v126))
        {
          v127 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v127);
          OUTLINED_FUNCTION_4_9();
          _os_log_impl(v128, v129, v130, v131, v132, 2u);
          OUTLINED_FUNCTION_10();
        }

        v133 = *(v0 + 104);

        sub_2666698A8();
LABEL_42:
        OUTLINED_FUNCTION_24_1();
        OUTLINED_FUNCTION_19_3();

        __asm { BRAA            X1, X16 }
      }

      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v24 = *(v0 + 112);
      v25 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v25, qword_28156D7E8);

      v26 = sub_26666C148();
      v27 = sub_26666C608();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(v0 + 112);
        v29 = *(v0 + 120);
        v30 = OUTLINED_FUNCTION_21();
        v31 = OUTLINED_FUNCTION_13_0();
        v139 = v31;
        *v30 = 136315138;
        *(v0 + 56) = sub_2665772C8();
        *(v0 + 64) = v32;
        *(v0 + 72) = v33;
        v34 = *(v29 + 80);
        v35 = *(v29 + 88);
        type metadata accessor for FindSingleEventAndActionFlow.State();
        swift_getWitnessTable();
        v36 = sub_26666C328();
        v38 = sub_2665BFC90(v36, v37, &v139);

        *(v30 + 4) = v38;
        _os_log_impl(&dword_266549000, v26, v27, "[FSEAAFlow] Flow is in impossible state durning execution: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_9_5();
        OUTLINED_FUNCTION_4_1();
      }

      v39 = *(v0 + 112);
      sub_26656CBFC();
      OUTLINED_FUNCTION_45();
      v40 = OUTLINED_FUNCTION_49();
      *v41 = 0u;
      *(v41 + 16) = 0u;
      *(v41 + 32) = 2;
      sub_26657731C(v40, 0, 3);
      OUTLINED_FUNCTION_45();
      *(v0 + 192) = OUTLINED_FUNCTION_49();
      *v42 = 0u;
      *(v42 + 16) = 0u;
      *(v42 + 32) = 2;
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v0 + 200) = v43;
      *v43 = v44;
      v45 = sub_266578464;
      break;
    default:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v6 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v6, qword_28156D7E8);
      v7 = sub_26666C148();
      v8 = sub_26666C618();
      if (OUTLINED_FUNCTION_7_2(v8))
      {
        *OUTLINED_FUNCTION_20() = 0;
        OUTLINED_FUNCTION_12_4();
        _os_log_impl(v9, v10, v11, v12, v13, 2u);
        OUTLINED_FUNCTION_9_5();
      }

      v14 = *(v0 + 104);
      v15 = *(v0 + 112);

      sub_26655358C(v15 + *(*v15 + 104), v0 + 16);
      OUTLINED_FUNCTION_5();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v4;
      v17 = sub_266668F88();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();

      v20 = OUTLINED_FUNCTION_15_2();
      sub_26657BE28(v20, v21, 0);
      *(v0 + 96) = sub_266668F78();
      sub_266669888();
      v22 = OUTLINED_FUNCTION_15_2();
      sub_26657BCCC(v22, v23, 0);

      goto LABEL_42;
  }

  v43[1] = v45;
  v118 = *(v0 + 104);
  v119 = *(v0 + 112);
  OUTLINED_FUNCTION_19_3();

  return sub_2665788F4(v120, v121);
}

uint64_t sub_266577D80()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  v4 = *(v3 + 144);
  *v2 = *v0;
  *(v1 + 152) = v5;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266577E6C()
{
  OUTLINED_FUNCTION_36_0();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_10();
  }

  v10 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  v14 = v0[13];
  v13 = v0[14];

  OUTLINED_FUNCTION_44();
  sub_26657731C(v15, v16, v17);
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v12;
  v18[4] = v11;

  v19 = v11;
  sub_266669848();

  OUTLINED_FUNCTION_24_1();

  return v20();
}

uint64_t sub_266577FC8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  v4 = *(v3 + 160);
  *v2 = *v0;
  *(v1 + 168) = v5;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665780B4()
{
  v26 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[16];
  v2 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v2, qword_28156D7E8);
  v3 = v1;
  v4 = sub_26666C148();
  LOBYTE(v1) = sub_26666C618();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[16];
    v6 = OUTLINED_FUNCTION_21();
    v7 = OUTLINED_FUNCTION_13_0();
    v25 = v7;
    *v6 = 136315138;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_26666C308();
    v12 = v11;

    v13 = sub_2665BFC90(v10, v12, &v25);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
  }

  v19 = v0[21];
  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[13];
  sub_266669898();

  OUTLINED_FUNCTION_24_1();

  return v23();
}

uint64_t sub_26657825C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  v4 = *(v3 + 176);
  *v2 = *v0;
  *(v1 + 184) = v5;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266578348()
{
  OUTLINED_FUNCTION_11();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_10();
  }

  v10 = v0[23];
  v12 = v0[13];
  v11 = v0[14];

  OUTLINED_FUNCTION_44();
  sub_26657731C(v13, v14, v15);
  sub_2665786A0();
  sub_266669848();

  OUTLINED_FUNCTION_24_1();

  return v16();
}

uint64_t sub_266578464()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  OUTLINED_FUNCTION_24_1();

  return v6();
}

uint64_t sub_266578560()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 208);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266578644()
{
  OUTLINED_FUNCTION_14();
  sub_26657BCCC(*(v0 + 128), *(v0 + 136), 3);
  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_2665786E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 96);
  v7 = *(*a2 + 88);
  v8 = *(v7 + 24);
  v9 = *(*a2 + 80);
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_26656CD98;

  return v13(a1, a3, v9, v7);
}

uint64_t sub_26657885C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_42_0();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_42_0();
  v5 = *(v4 + 88);
  type metadata accessor for FindSingleEventAndActionFlow();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_45();
  return sub_266669548();
}

uint64_t sub_2665788F4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_1_12(sub_266578910);
}

uint64_t sub_266578910()
{
  OUTLINED_FUNCTION_36_0();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  OUTLINED_FUNCTION_15_4();
  sub_26655358C(v1 + *(v4 + 104), (v0 + 2));
  OUTLINED_FUNCTION_5();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = sub_266668F88();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = v2;
  v0[2] = sub_266668F78();
  sub_266669888();

  OUTLINED_FUNCTION_24_1();

  return v10();
}

uint64_t sub_266578A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 96);
  v7 = *(*a2 + 88);
  v8 = *(v7 + 48);
  v9 = *(*a2 + 80);
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_26656C894;

  return v13(a1, a3, v9, v7);
}

void sub_266578BA0(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_42_0();
  v129 = v4;
  v132 = v1;
  v131 = *(v5 + 80);
  OUTLINED_FUNCTION_17_2();
  v130 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v129 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D660, &qword_26666F980);
  OUTLINED_FUNCTION_17_2();
  v15 = v14;
  v17 = *(v16 + 64);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v129 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v129 - v28;
  v30 = v15[2];
  v30(&v129 - v28, a1, v13);
  v31 = v15[11];
  v32 = OUTLINED_FUNCTION_23_2();
  v34 = v33(v32);
  if (v34 == *MEMORY[0x277D5BCA0])
  {
    v35 = v15[12];
    v36 = OUTLINED_FUNCTION_23_2();
    v37(v36);
    v38 = *v29;
    v39 = *(v29 + 1);
    v40 = *(v29 + 2);

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v41 = sub_26666C168();
    __swift_project_value_buffer(v41, qword_28156D7E8);
    v42 = v40;
    v43 = sub_26666C148();
    v44 = sub_26666C618();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_21();
      v46 = OUTLINED_FUNCTION_13_0();
      v134 = v46;
      *v45 = 136315138;
      v133 = sub_26662571C(v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D668, &qword_26666F988);
      v47 = sub_26666C318();
      v49 = sub_2665BFC90(v47, v48, &v134);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_266549000, v43, v44, "[FSEAAFlow] Find events flow pre-filtered events %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_1();
    }

    v51 = v130;
    v50 = v131;
    (*(v130 + 16))(v12, &v132[*(*v132 + 96)], v131);
    v52 = [v42 events];
    if (v52)
    {
      v53 = v52;
      sub_26656CC50();
      v54 = sub_26666C498();
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

    v81 = (*(*(v129 + 88) + 16))(v54, v50);

    (*(v51 + 8))(v12, v50);
    if (!sub_2665C485C(v81))
    {

      v96 = sub_26666C148();
      v97 = sub_26666C618();
      if (OUTLINED_FUNCTION_7_1(v97))
      {
        v98 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_24_3(v98);
        OUTLINED_FUNCTION_2_2();
        _os_log_impl(v99, v100, v101, v102, v103, 2u);
        OUTLINED_FUNCTION_11_6();
      }

      v92 = v39;
      v93 = v39;
      v94 = 0;
      v95 = 0;
      goto LABEL_35;
    }

    v82 = sub_2665C485C(v81);
    v83 = sub_26666C148();
    v84 = sub_26666C618();
    v85 = OUTLINED_FUNCTION_7_1(v84);
    if (v82 >= 2)
    {
      if (v85)
      {
        v86 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_24_3(v86);
        OUTLINED_FUNCTION_2_2();
        _os_log_impl(v87, v88, v89, v90, v91, 2u);
        OUTLINED_FUNCTION_11_6();
      }

      v92 = v39;
      v93 = v81;
      v94 = v39;
      v95 = 1;
LABEL_35:
      sub_26657731C(v93, v94, v95);

      return;
    }

    if (v85)
    {
      v104 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v104);
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v105, v106, v107, v108, v109, 2u);
      OUTLINED_FUNCTION_11_6();
    }

    sub_2665C4864(0, (v81 & 0xC000000000000001) == 0, v81);
    if ((v81 & 0xC000000000000001) != 0)
    {
      v110 = MEMORY[0x266788B60](0, v81);
    }

    else
    {
      v110 = *(v81 + 32);
    }

    v111 = v110;

    v112 = v39;
    sub_26657731C(v111, v39, 2);
  }

  else if (v34 == *MEMORY[0x277D5BC98])
  {
    v55 = v15[12];
    v56 = OUTLINED_FUNCTION_23_2();
    v57(v56);
    v58 = *v29;
    v59 = v29[8];
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v60 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v60, qword_28156D7E8);
    v61 = v58;
    v62 = sub_26666C148();
    v63 = sub_26666C5F8();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *v64 = 136315394;
      if (v59)
      {
        v65 = 0x64656C646E6168;
      }

      else
      {
        v65 = 0x656C646E61686E75;
      }

      if (v59)
      {
        v66 = 0xE700000000000000;
      }

      else
      {
        v66 = 0xE900000000000064;
      }

      v67 = sub_2665BFC90(v65, v66, &v134);

      *(v64 + 4) = v67;
      OUTLINED_FUNCTION_48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
      v68 = sub_26666C318();
      v70 = sub_2665BFC90(v68, v69, &v134);

      *(v64 + 14) = v70;
      OUTLINED_FUNCTION_47(&dword_266549000, v71, v72, "[FSEAAFlow] Find events flow ended in a %s error: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v73 = v58;
    sub_26657731C(v58, v59, 3);
  }

  else if (v34 == *MEMORY[0x277D5BCA8])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v74 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v74, qword_28156D7E8);
    v75 = sub_26666C148();
    v76 = sub_26666C618();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v77);
      _os_log_impl(&dword_266549000, v75, v76, "[FSEAAFlow] User cancelled in find events flow", v29, 2u);
      OUTLINED_FUNCTION_11_6();
    }

    OUTLINED_FUNCTION_44();
    sub_26657731C(v78, v79, v80);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v113 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v113, qword_28156D7E8);
    v30(v26, a1, v13);
    v114 = sub_26666C148();
    v115 = sub_26666C608();
    if (OUTLINED_FUNCTION_7_2(v115))
    {
      v116 = OUTLINED_FUNCTION_21();
      v131 = OUTLINED_FUNCTION_13_0();
      v134 = v131;
      *v116 = 136315138;
      v30(v22, v26, v13);
      v117 = sub_26666C318();
      v119 = v118;
      LODWORD(v130) = v115;
      v120 = OUTLINED_FUNCTION_39();
      v115(v120);
      v121 = sub_2665BFC90(v117, v119, &v134);

      *(v116 + 4) = v121;
      _os_log_impl(&dword_266549000, v114, v130, "[FSEAAFlow] Unhandled case on rchResult %s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v131);
      OUTLINED_FUNCTION_9_5();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      v122 = OUTLINED_FUNCTION_39();
      v115(v122);
    }

    sub_26656CBFC();
    v123 = OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_22_0(v123, v124);
    sub_26657731C(v125, v126, v127);
    v128 = OUTLINED_FUNCTION_23_2();
    v115(v128);
  }
}

void sub_2665794E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D648, &unk_26666F970);
  OUTLINED_FUNCTION_17_2();
  v9 = v8;
  v11 = *(v10 + 64);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v105 - v18;
  v20 = v9[2];
  v20(&v105 - v18, a1, v7);
  v21 = v9[11];
  v22 = OUTLINED_FUNCTION_35_0();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D5BC38])
  {
    v108 = v4;
    v25 = v9[12];
    v26 = OUTLINED_FUNCTION_35_0();
    v27(v26);
    v28 = *v19;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v29 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v29, qword_28156D7E8);
    v30 = v28;
    v31 = sub_26666C148();
    v32 = sub_26666C618();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_21();
      v34 = OUTLINED_FUNCTION_13_0();
      v109 = v34;
      *v33 = 136315138;
      v35 = v30;
      v36 = [v35 description];
      v37 = sub_26666C308();
      v39 = v38;

      v40 = sub_2665BFC90(v37, v39, &v109);

      *(v33 + 4) = v40;
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_9_5();
    }

    v46 = v30;
    v47 = a3;
    v48 = OUTLINED_FUNCTION_23_2();
    sub_26657731C(v48, v49, 2);

    return;
  }

  if (v24 == *MEMORY[0x277D5BC30])
  {
    v50 = v9[12];
    v51 = OUTLINED_FUNCTION_35_0();
    v52(v51);
    v53 = *v19;
    v54 = v19[8];
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v55 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v55, qword_28156D7E8);
    v56 = v53;
    v57 = sub_26666C148();
    v58 = sub_26666C5F8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v59 = 136315394;
      if (v54)
      {
        v60 = 0x64656C646E6168;
      }

      else
      {
        v60 = 0x656C646E61686E75;
      }

      if (v54)
      {
        v61 = 0xE700000000000000;
      }

      else
      {
        v61 = 0xE900000000000064;
      }

      v62 = sub_2665BFC90(v60, v61, &v109);

      *(v59 + 4) = v62;
      OUTLINED_FUNCTION_48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
      v63 = sub_26666C318();
      v65 = sub_2665BFC90(v63, v64, &v109);

      *(v59 + 14) = v65;
      OUTLINED_FUNCTION_47(&dword_266549000, v66, v67, "[FSEAAFlow] Disambiguate flow ended in a %s error: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v68 = v53;
    sub_26657731C(v53, v54, 3);

    return;
  }

  if (v24 == *MEMORY[0x277D5BC40])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v69 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v69, qword_28156D7E8);
    v70 = sub_26666C148();
    v71 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v71))
    {
      v72 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v72);
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v73, v74, v75, v76, v77, 2u);
      OUTLINED_FUNCTION_11_6();
    }

    OUTLINED_FUNCTION_44();
LABEL_31:
    sub_26657731C(v78, v79, v80);
    return;
  }

  if (v24 == *MEMORY[0x277D5BC28])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v81 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v81, qword_28156D7E8);
    v82 = sub_26666C148();
    v83 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v83))
    {
      v84 = OUTLINED_FUNCTION_20();
      *v84 = 0;
      _os_log_impl(&dword_266549000, v82, v83, "[FSEAAFlow] Disambiguate flow ended as unanswered, reprompting", v84, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v85 = a3;

    v79 = a3;
    v80 = 1;
    goto LABEL_31;
  }

  v108 = v4;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v86 = sub_26666C168();
  __swift_project_value_buffer(v86, qword_28156D7E8);
  v20(v16, a1, v7);
  v87 = sub_26666C148();
  v88 = sub_26666C608();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = OUTLINED_FUNCTION_21();
    v106 = v89;
    v107 = OUTLINED_FUNCTION_13_0();
    v109 = v107;
    *v89 = 136315138;
    sub_26657BBD4();
    sub_26666CAA8();
    v90 = v9[1];
    v91 = OUTLINED_FUNCTION_43();
    v90(v91);
    v92 = OUTLINED_FUNCTION_25();
    v95 = sub_2665BFC90(v92, v93, v94);

    v96 = v106;
    *(v106 + 1) = v95;
    v97 = v90;
    _os_log_impl(&dword_266549000, v87, v88, "[FSEAAFlow] Unhandled case on prompt result %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v107);
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v97 = v9[1];
    v98 = OUTLINED_FUNCTION_43();
    v97(v98);
  }

  sub_26656CBFC();
  v99 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_22_0(v99, v100);
  sub_26657731C(v101, v102, v103);
  v104 = OUTLINED_FUNCTION_35_0();
  v97(v104);
}

unint64_t sub_266579BF4(uint64_t a1, uint64_t a2, char a3)
{
  result = 0x726F467964616572;
  switch(a3)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0x726F727265;
      break;
    case 4:
      result = 0x696C616974696E69;
      switch(a1)
      {
        case 1:
          result = 0xD000000000000018;
          break;
        case 2:
          result = 0xD00000000000001CLL;
          break;
        case 3:
          result = 0x656C6C65636E6163;
          break;
        default:
          return result;
      }

      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

char *sub_266579D28()
{
  v1 = *v0;
  OUTLINED_FUNCTION_42_0();
  (*(*(*(v3 + 80) - 8) + 8))(&v0[*(v2 + 96)]);
  OUTLINED_FUNCTION_15_4();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v4 + 104)]);
  OUTLINED_FUNCTION_15_4();
  sub_26657BCCC(*&v0[*(v5 + 112)], *&v0[*(v5 + 112) + 8], v0[*(v5 + 112) + 16]);
  return v0;
}

uint64_t sub_266579DCC()
{
  sub_266579D28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_266579E3C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents28FindSingleEventAndActionFlowC5StateOyx_G(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_266579EA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_266579EE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_266579F2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_266579F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26657A00C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26657A00C()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_5_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_26657A11C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26656C894;

  return sub_2665773B0(a1);
}

uint64_t sub_26657A1B8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for FindSingleEventAndActionFlow();

  return sub_266669588();
}

uint64_t sub_26657A210()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_26657A2F8;

  return v6();
}

uint64_t sub_26657A2F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1_10();

  return v6(v5);
}

uint64_t sub_26657A3DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_12(sub_26657A3F8);
}

uint64_t sub_26657A3F8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 32);
  v2 = *(v1 + 24);
  v8 = *(v1 + 16) + **(v1 + 16);
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_32_2(v4);

  return v6(v5);
}

uint64_t sub_26657A4D8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1_10();

  return v6(v5);
}

uint64_t sub_26657A5BC()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_266669708();
  v1[10] = v4;
  v5 = *(v4 - 8);
  v1[11] = v5;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v7);
  v9 = *(v8 + 64);
  v1[13] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v10);
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v13);
  v15 = *(v14 + 64);
  v1[15] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v16);
  v18 = *(v17 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_26657A730()
{
  OUTLINED_FUNCTION_11();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_10();
  }

  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 72);

  sub_26655358C(v12 + 48, v0 + 16);
  v13 = *(v0 + 40);
  *(v0 + 144) = v13;
  *(v0 + 160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  v14 = type metadata accessor for Snippet();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  v21 = *(v12 + 88);
  v22 = swift_task_alloc();
  *(v0 + 168) = v22;
  *v22 = v0;
  v22[1] = sub_26657A8A0;
  v23 = *(v0 + 64);

  return sub_26658E584(v23, v12 + 96);
}

uint64_t sub_26657A8A0()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v8 = *(v7 + 168);
  v9 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;
  v5[22] = v0;

  if (v0)
  {
    v11 = v5[17];
    sub_266557D74(v5[16], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v11, &unk_28007DE30, &unk_26666EAF0);
    v12 = sub_26657AE18;
  }

  else
  {
    v5[23] = v3;
    v12 = sub_26657A9E0;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_26657A9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_36_0();
  v15 = v14[18];
  v16 = v14[19];
  v18 = v14[14];
  v17 = v14[15];
  v20 = v14[12];
  v19 = v14[13];
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  OUTLINED_FUNCTION_25();
  sub_2665D5640();
  OUTLINED_FUNCTION_25();
  sub_26656CFC4();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v14[24] = v33;
  *v33 = v34;
  v33[1] = sub_26657AB2C;
  v35 = v14[23];
  v36 = v14[20];
  v37 = v14[17];
  v39 = v14[15];
  v38 = v14[16];
  v40 = v14[12];
  v41 = v14[7];
  v46 = v14[18];
  v47 = v14[19];
  v44 = v14[14];
  v45 = v14[13];

  return sub_2665643AC(v41, v37, v38, v35, 0, 0, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26657AB2C()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[24];
  v3 = v1[23];
  v16 = v1[17];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[13];
  v8 = v1[12];
  v9 = v1[11];
  v10 = v1[10];
  v11 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;

  (*(v9 + 8))(v8, v10);
  sub_266557D74(v7, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v6, &unk_28007DE20, &unk_26666EAE0);
  sub_266557D74(v5, &qword_28007D338, &qword_26666EEB0);
  v13 = OUTLINED_FUNCTION_35_0();
  sub_266557D74(v13, v14, &unk_26666EAF0);
  sub_266557D74(v16, &unk_28007DE30, &unk_26666EAF0);

  return MEMORY[0x2822009F8](sub_26657AD88, 0, 0);
}

uint64_t sub_26657AD88()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_51();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_26657AE18()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_51();

  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 176);

  return v1();
}

uint64_t sub_26657AEA8(uint64_t a1)
{
  inited = v1;
  if (qword_28156C150 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_1_1();
  }

  v4 = sub_26666C168();
  __swift_project_value_buffer(v4, qword_28156D7E8);

  v5 = sub_26666C148();
  v6 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v6))
  {
    v7 = OUTLINED_FUNCTION_21();
    *v7 = 134217984;
    *(v7 + 4) = sub_2665C485C(a1);

    OUTLINED_FUNCTION_12_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_9_5();
  }

  else
  {
  }

  MEMORY[0x28223BE20](v13, v14);
  v50[2] = inited;

  sub_2665EC78C(sub_26657BF8C, v50, a1);
  inited = v15;
  v16 = sub_2665C485C(v15);
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v51 = MEMORY[0x277D84F90];
    while (v17 != v18)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x266788B60](v18, inited);
      }

      else
      {
        if (v18 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v19 = *(inited + 8 * v18 + 32);
      }

      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v20 = v19;
      v21 = sub_2665EC908();

      if (v21)
      {
        sub_26666C868();
        v22 = *(v51 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }

      ++v18;
    }

    v23 = v51;
    if (sub_2665C485C(v51))
    {
    }

    else
    {

      v23 = inited;
    }

    v38 = sub_26666C148();
    v39 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134218240;
      *(v40 + 4) = sub_2665C485C(a1);

      *(v40 + 12) = 2048;
      *(v40 + 14) = sub_2665C485C(v23);

      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
      OUTLINED_FUNCTION_11_6();
    }

    else
    {
    }
  }

  else
  {

    v24 = sub_26666C148();
    v25 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_1(v25))
    {
      v26 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v26);
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      OUTLINED_FUNCTION_11_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D670, &qword_26666FA90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26666EED0;
    v32 = sub_2665C485C(a1);
    v33 = 0;
    v34 = a1 & 0xC000000000000001;
    while (v32 != v33)
    {
      if (v34)
      {
        v35 = MEMORY[0x266788B60](v33, a1);
      }

      else
      {
        if (v33 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v35 = *(a1 + 8 * v33 + 32);
      }

      if (__OFADD__(v33, 1))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v36 = v35;
      v37 = sub_2665EC908();

      if (v37)
      {
        goto LABEL_39;
      }

      ++v33;
    }

    if (v32)
    {
      sub_2665C4864(0, v34 == 0, a1);
      if (v34)
      {
        v46 = MEMORY[0x266788B60](0, a1);
      }

      else
      {
        v46 = *(a1 + 32);
      }

      v36 = v46;
    }

    else
    {
      v36 = 0;
    }

LABEL_39:
    *(inited + 32) = v36;
    v23 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
    v47 = *(inited + 32);
    if (v47)
    {
      v48 = v47;
      MEMORY[0x2667887C0]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      v23 = v51;
    }

    swift_setDeallocating();
    sub_266639174();
  }

  return v23;
}

id sub_26657B364(void **a1, uint64_t a2)
{
  v3 = sub_2665EF53C(*a1);
  v5 = v4;
  v6 = *__swift_project_boxed_opaque_existential_1((a2 + 136), *(a2 + 160));
  v12[3] = type metadata accessor for EventProvider();
  v12[4] = &off_287806290;
  v12[0] = v6;
  sub_26655358C(v12, v11);

  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v5)
  {
    v7 = *__swift_project_boxed_opaque_existential_1(v11, v11[3]);

    v8 = sub_26655A8B4();
    v9 = sub_26665140C(v3, v5, v8);
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v9)
    {
      if (([v9 isBirthday] & 1) == 0)
      {
        v5 = [v9 isEditable];

        return v5;
      }
    }

    return 0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return v5;
}

uint64_t sub_26657B494(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_12(sub_26657B4B0);
}

uint64_t sub_26657B4B0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 32);
  v2 = *(v1 + 40);
  v8 = *(v1 + 32) + **(v1 + 32);
  v3 = *(*(v1 + 32) + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_32_2(v4);

  return v6(v5);
}

uint64_t sub_26657B590(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_12(sub_26657B5A8);
}

uint64_t sub_26657B5A8()
{
  v22 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[4];
  v2 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v2, qword_28156D7E8);
  v3 = v1;
  v4 = sub_26666C148();
  v5 = sub_26666C618();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = OUTLINED_FUNCTION_21();
    v8 = OUTLINED_FUNCTION_13_0();
    v21 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
    v10 = sub_26666C318();
    v12 = sub_2665BFC90(v10, v11, &v21);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
  }

  v18 = v0[3];
  sub_266669758();
  sub_266669748();
  OUTLINED_FUNCTION_24_1();

  return v19();
}

uint64_t sub_26657B738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26657BFB0;

  return sub_26657A1F8();
}

uint64_t sub_26657B7C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_26657A5BC();
}

uint64_t sub_26657B870(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26657BFB0;

  return sub_26657B494(a1, a2);
}

uint64_t sub_26657B914(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26657BFB0;

  return sub_26657A3DC(a1, a2);
}

uint64_t sub_26657B9B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26656CD98;

  return sub_26657B590(a1, a2);
}

uint64_t sub_26657BA58()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_26657BAF0;

  return sub_266666A24(v4, v2);
}

uint64_t sub_26657BAF0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1_10();

  return v6(v5);
}

unint64_t sub_26657BBD4()
{
  result = qword_28007D650;
  if (!qword_28007D650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007D648, &unk_26666F970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D650);
  }

  return result;
}

uint64_t sub_26657BC38()
{
  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31_2(v4);

  return sub_266578A24(v6, v7, v8);
}

void sub_26657BCCC(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
      goto LABEL_5;
    case 1:
      v3 = a2;

      goto LABEL_4;
    case 2:
      v3 = a2;

LABEL_4:
      a1 = v3;
LABEL_5:

      goto LABEL_7;
    case 3:

LABEL_7:

      break;
    default:
      return;
  }
}

void sub_26657BD68(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  sub_2665794E4(a1, v2, v3);
}

uint64_t sub_26657BD94()
{
  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31_2(v4);

  return sub_2665786E0(v6, v7, v8);
}

id sub_26657BE28(id result, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
      goto LABEL_5;
    case 1:
      v4 = a2;

      goto LABEL_4;
    case 2:
      v4 = a2;
      v3 = result;
LABEL_4:
      result = v4;
LABEL_5:

      goto LABEL_7;
    case 3:

LABEL_7:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26657BED0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_26657BF10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_9_5()
{

  JUMPOUT(0x266789690);
}

void OUTLINED_FUNCTION_11_6()
{

  JUMPOUT(0x266789690);
}

double OUTLINED_FUNCTION_22_0(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

void OUTLINED_FUNCTION_47(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_48()
{
  *(v1 + 12) = 2080;
  *(v2 - 96) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_51()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

void sub_26657C1D0()
{
  OUTLINED_FUNCTION_28_0();
  v74 = v0;
  v2 = v1;
  v3 = sub_266669E88();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v73 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_1_0();
  v70 = v10 - v9;
  OUTLINED_FUNCTION_19_4();
  v76 = sub_266669E58();
  v11 = OUTLINED_FUNCTION_3_0(v76);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v20 = sub_266669E18();
  v21 = OUTLINED_FUNCTION_3_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21, v26);
  OUTLINED_FUNCTION_10_5();
  v71 = v27 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v64 - v31;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v33 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v33, qword_28156D7E8);
  v34 = *(v23 + 16);
  v75 = v2;
  v68 = v34;
  v34(v32, v2, v20);
  v69 = v0;
  v35 = sub_26666C148();
  v36 = sub_26666C5E8();
  v37 = os_log_type_enabled(v35, v36);
  v72 = v23;
  if (v37)
  {
    v38 = OUTLINED_FUNCTION_21();
    v67 = v3;
    v39 = v38;
    v65 = OUTLINED_FUNCTION_13_0();
    v77 = v65;
    *v39 = 136315138;
    OUTLINED_FUNCTION_4_10();
    sub_26657E950(v40, v41);
    v42 = sub_26666CAA8();
    v66 = v19;
    v43 = v13;
    v45 = v44;
    v46 = OUTLINED_FUNCTION_20_3();
    (v23)(v46);
    v47 = sub_2665BFC90(v42, v45, &v77);
    v13 = v43;
    v19 = v66;

    *(v39 + 4) = v47;
    _os_log_impl(&dword_266549000, v35, v36, "#CreateEventCorrectionsFlow evaluting whether input is supported: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    OUTLINED_FUNCTION_4_1();
    v3 = v67;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v48 = OUTLINED_FUNCTION_20_3();
    (v23)(v48);
  }

  v49 = v75;
  sub_266669DF8();
  if ((*(v13 + 88))(v19, v76) == *MEMORY[0x277D5C160])
  {
    (*(v13 + 96))(v19, v76);
    v50 = v73;
    v51 = v70;
    (*(v73 + 32))(v70, v19, v3);
    sub_26657D3E4();
    (*(v50 + 8))(v51, v3);
  }

  else
  {
    v74 = v23;
    v52 = v71;
    v68(v71, v49, v20);
    v53 = sub_26666C148();
    v54 = sub_26666C5E8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_21();
      v56 = v52;
      v57 = OUTLINED_FUNCTION_13_0();
      v77 = v57;
      *v55 = 136315138;
      OUTLINED_FUNCTION_4_10();
      sub_26657E950(v58, v59);
      v60 = sub_26666CAA8();
      v62 = v61;
      v74(v56, v20);
      v63 = sub_2665BFC90(v60, v62, &v77);

      *(v55 + 4) = v63;
      _os_log_impl(&dword_266549000, v53, v54, "#CreateEventCorrectionsFlow refusing non uso parse %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      v74(v52, v20);
    }

    (*(v13 + 8))(v19, v76);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26657C6FC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_26657C71C, 0, 0);
}

uint64_t sub_26657C71C()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_state;
  v0[5] = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_state;
  if (*(v1 + v2))
  {
    if (*(v1 + v2) == 1)
    {
      v3 = swift_task_alloc();
      v0[6] = v3;
      *v3 = v0;
      v3[1] = sub_26657C8F0;
      v4 = v0[3];
      v5 = v0[4];

      return sub_26657CA7C();
    }

    v20 = v0[3];
    sub_2666698A8();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v7 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v7, qword_28156D7E8);
    v8 = sub_26666C148();
    v9 = sub_26666C5E8();
    if (OUTLINED_FUNCTION_9(v9))
    {
      v10 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v10);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_10();
    }

    v16 = v0[3];
    v17 = v0[4];

    *(v1 + v2) = 1;
    v0[2] = v17;
    type metadata accessor for CalendarCorrectionsFlow(0);
    OUTLINED_FUNCTION_5_6();
    sub_26657E950(v18, v19);
    sub_266669858();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_26657C8F0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_26657C9DC, 0, 0);
}

uint64_t sub_26657C9FC()
{
  type metadata accessor for CalendarCorrectionsFlow(0);
  OUTLINED_FUNCTION_5_6();
  sub_26657E950(v0, v1);
  return sub_266669548();
}

uint64_t sub_26657CA7C()
{
  OUTLINED_FUNCTION_14();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();
  updated = type metadata accessor for UpdateEventCorrectionsIntentWrapper();
  OUTLINED_FUNCTION_3_3(updated);
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v9 = type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask(0);
  v1[17] = v9;
  OUTLINED_FUNCTION_3_3(v9);
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26657CB70, 0, 0);
}

id sub_26657CB70()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[13];
  v4 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsTask;
  swift_beginAccess();
  sub_26657E58C(v3 + v4, v2, type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[18];
  if (EnumCaseMultiPayload == 1)
  {
    sub_26657E528(v6, v0[16]);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v7 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v7, qword_28156D7E8);
    v8 = sub_26666C148();
    v9 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v9))
    {
      v10 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v10);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_10();
    }

    v16 = v0[13];

    sub_26655358C(v16 + 64, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v17 = *(v16 + 56);
    result = [v17 eventIdentifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v19 = result;
    v21 = v0[15];
    v20 = v0[16];
    v22 = sub_26666C308();
    v24 = v23;

    sub_26657E58C(v20, v21, type metadata accessor for UpdateEventCorrectionsIntentWrapper);
    v25 = [v17 startDate];
    if (v25)
    {
      v26 = v25;
      v27 = v0[14];
      sub_266668CE8();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v46 = v0[15];
    v45 = v0[16];
    v47 = v0[14];
    v48 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v47, v28, 1, v48);
    v44 = sub_26657E5EC(v22, v24, v46, v47);

    sub_26656CAEC(v47, &qword_28007D140, &qword_26666F140);
    sub_26657E998(v45, type metadata accessor for UpdateEventCorrectionsIntentWrapper);
    sub_26657E998(v46, type metadata accessor for UpdateEventCorrectionsIntentWrapper);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    v29 = *v6;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v30 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v30, qword_28156D7E8);
    v31 = sub_26666C148();
    v32 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v32))
    {
      v33 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v33);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
    v39 = v29;
    sub_2665EB4F8();
    v41 = v40;
    v42 = [objc_allocWithZone(MEMORY[0x277CD3C10]) init];
    v43 = sub_266551AF8(v41, v42);

    v0[11] = v43;
    sub_2666692A8();
    v44 = sub_266669528();
  }

  v49 = v0[18];
  v51 = v0[15];
  v50 = v0[16];
  v53 = v0[13];
  v52 = v0[14];
  v54 = v0[12];
  v0[10] = v44;
  sub_2666692A8();

  sub_266669878();

  v55 = v0[1];

  return v55();
}

void sub_26657CFBC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_266669B08();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_1_0();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D6C8, &qword_26666FC38);
  v15 = OUTLINED_FUNCTION_3_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_10_5();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v45 - v24;
  sub_2665764F4(v3, &v46);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D6D0, &unk_26666FC40);
  v27 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v25, v27 ^ 1u, 1, v26);
  sub_26657E808(v25, v21, &qword_28007D6C8, &qword_26666FC38);
  if (__swift_getEnumTagSinglePayload(v21, 1, v26) == 1)
  {
    goto LABEL_7;
  }

  v28 = *(v26 - 8);
  v29 = (*(v28 + 88))(v21, v26);
  if (v29 == *MEMORY[0x277D5B3E0] || v29 != *MEMORY[0x277D5B3D8])
  {
    (*(v28 + 8))(v21, v26);
LABEL_7:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v31 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v31, qword_28156D7E8);
    v32 = sub_26666C148();
    v33 = sub_26666C618();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_20();
      *v34 = 0;
      _os_log_impl(&dword_266549000, v32, v33, "[CreateEventCorrectionsFlow] Created event correction complete", v34, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v35 = MEMORY[0x277D5BF10];
    goto LABEL_17;
  }

  (*(v28 + 96))(v21, v26);
  v36 = *v21;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v37 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v37, qword_28156D7E8);
  v38 = sub_26666C148();
  v39 = sub_26666C618();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_20();
    *v40 = 0;
    _os_log_impl(&dword_266549000, v38, v39, "[CreateEventCorrectionsFlow] Created event correction failed", v40, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  swift_getErrorValue();
  v41 = sub_26666CB38();
  v43 = v42;

  *v13 = v41;
  v13[1] = v43;
  v35 = MEMORY[0x277D5BF08];
LABEL_17:
  (*(v7 + 104))(v13, *v35, v4);
  v44 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsExitValue;
  swift_beginAccess();
  (*(v7 + 40))(v1 + v44, v13, v4);
  swift_endAccess();
  sub_26656CAEC(v25, &qword_28007D6C8, &qword_26666FC38);
  OUTLINED_FUNCTION_27_0();
}

void sub_26657D3E4()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v89 = type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask(0);
  v4 = OUTLINED_FUNCTION_18_2(v89);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1_0();
  v90 = (v9 - v8);
  OUTLINED_FUNCTION_19_4();
  updated = type metadata accessor for UpdateEventCorrectionsIntentWrapper();
  v10 = OUTLINED_FUNCTION_18_2(updated);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_1_0();
  v84 = v15 - v14;
  OUTLINED_FUNCTION_19_4();
  v16 = sub_266669EE8();
  v17 = OUTLINED_FUNCTION_3_0(v16);
  v87 = v18;
  v88 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17, v21);
  OUTLINED_FUNCTION_1_0();
  v86 = (v23 - v22);
  OUTLINED_FUNCTION_19_4();
  v24 = sub_266669E88();
  v25 = OUTLINED_FUNCTION_3_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25, v30);
  OUTLINED_FUNCTION_10_5();
  v82 = (v31 - v32);
  MEMORY[0x28223BE20](v33, v34);
  v36 = v80 - v35;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v37 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v37, qword_28156D7E8);
  v38 = *(v27 + 16);
  v38(v36, v3, v24);
  v85 = v0;
  v39 = sub_26666C148();
  v40 = sub_26666C618();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_21();
    v80[1] = v3;
    v42 = v41;
    v43 = OUTLINED_FUNCTION_13_0();
    v81 = v1;
    v44 = v43;
    v92[0] = v43;
    *v42 = 136315138;
    v38(v82, v36, v24);
    v45 = sub_26666C318();
    v47 = v46;
    (*(v27 + 8))(v36, v24);
    v48 = sub_2665BFC90(v45, v47, v92);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_266549000, v39, v40, "[CreateEventCorrectionsFlow] isCorrectionsSteeringSupportedBySelf %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v1 = v81;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    (*(v27 + 8))(v36, v24);
  }

  v49 = v86;
  sub_266669E78();
  sub_266669ED8();
  (*(v87 + 8))(v49, v88);
  sub_26657D960();
  v51 = v50;

  if (v51)
  {

    v52 = sub_26666C148();
    v53 = sub_26666C618();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_21();
      v55 = OUTLINED_FUNCTION_13_0();
      v91 = v51;
      v92[0] = v55;
      *v54 = 136315138;
      sub_26666AA48();

      v56 = sub_26666C318();
      v58 = sub_2665BFC90(v56, v57, v92);

      *(v54 + 4) = v58;
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_10();
    }

    v64 = v84;
    sub_26655358C(v1 + OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_calendarDateTimeResolver, v84);
    v65 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_locale;
    v66 = *(updated + 24);
    v67 = sub_266668D98();
    OUTLINED_FUNCTION_18_2(v67);
    (*(v68 + 16))(v64 + v66, v1 + v65);
    *(v64 + 40) = v51;
    v69 = v90;
    sub_26657E528(v64, v90);
    swift_storeEnumTagMultiPayload();
    v70 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsTask;
    swift_beginAccess();
    v71 = v1 + v70;
    v72 = v69;
  }

  else
  {
    v73 = sub_26666C148();
    v74 = sub_26666C618();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v75);
      _os_log_impl(&dword_266549000, v73, v74, "[CreateEventCorrectionsFlow] steering task not meant for calendar plugin", v49, 2u);
      OUTLINED_FUNCTION_10();
    }

    v76 = *(v1 + 56);
    v77 = v90;
    *v90 = v76;
    swift_storeEnumTagMultiPayload();
    v78 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsTask;
    swift_beginAccess();
    v79 = v76;
    v71 = v1 + v78;
    v72 = v77;
  }

  sub_26657E4C4(v72, v71);
  swift_endAccess();
  OUTLINED_FUNCTION_27_0();
}

void sub_26657D960()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = sub_266669F98();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = *(v1 + 16);
  if (!v12)
  {
LABEL_41:
    OUTLINED_FUNCTION_27_0();
    return;
  }

  sub_26666ADC8();
  v15 = *(v5 + 16);
  v13 = v5 + 16;
  v14 = v15;
  v16 = v1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v46 = *(v13 + 56);
  v44 = v15;
  while (1)
  {
    v47 = v16;
    v14(v11);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v17 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v17, qword_28156D7E8);

    v18 = sub_26666C148();
    v19 = sub_26666C618();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_21();
      v45 = OUTLINED_FUNCTION_13_0();
      v48 = v45;
      *v20 = 136315138;
      v21 = MEMORY[0x2667887F0](v1, v2);
      v23 = v12;
      v24 = v13;
      v25 = v11;
      v26 = v1;
      v27 = v2;
      v28 = sub_2665BFC90(v21, v22, &v48);

      *(v20 + 4) = v28;
      v2 = v27;
      v1 = v26;
      v11 = v25;
      v13 = v24;
      v12 = v23;
      v14 = v44;
      _os_log_impl(&dword_266549000, v18, v19, "[CreateEventCorrectionsFlow] findCalendarEvent %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v29 = sub_266669F28();
    v30 = v29;
    if (v29 >> 62)
    {
      if (!OUTLINED_FUNCTION_16_4())
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    if ((v30 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x266788B60](0, v30);
LABEL_12:

    sub_26666A658();

    if (v48)
    {
      goto LABEL_40;
    }

LABEL_16:
    sub_26666ADF8();
    v32 = sub_266669F28();
    v33 = v32;
    if (v32 >> 62)
    {
      if (!OUTLINED_FUNCTION_16_4())
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    else if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266788B60](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v34 = *(v33 + 32);
    }

    sub_26666ABF8();

    if (v48)
    {
LABEL_40:
      v42 = OUTLINED_FUNCTION_11_7();
      v43(v42);
      goto LABEL_41;
    }

LABEL_25:
    sub_26666ADE8();
    v35 = sub_266669F28();
    v36 = v35;
    if (v35 >> 62)
    {
      if (!OUTLINED_FUNCTION_16_4())
      {
LABEL_33:
        v40 = OUTLINED_FUNCTION_11_7();
        v41(v40);

        goto LABEL_34;
      }
    }

    else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    if ((v36 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266788B60](0, v36);
    }

    else
    {
      if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v37 = *(v36 + 32);
    }

    sub_26666A128();

    v38 = OUTLINED_FUNCTION_11_7();
    v39(v38);
    if (v48)
    {
      goto LABEL_41;
    }

LABEL_34:
    v16 = v47 + v46;
    if (!--v12)
    {
      goto LABEL_41;
    }
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v30 + 32);

    goto LABEL_12;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_26657DDA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v1 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_locale;
  v2 = sub_266668D98();
  OUTLINED_FUNCTION_18_2(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_calendarDateTimeResolver));
  sub_26657E998(v0 + OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsTask, type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask);
  v4 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsExitValue;
  v5 = sub_266669B08();
  OUTLINED_FUNCTION_18_2(v5);
  (*(v6 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_26657DE7C()
{
  sub_26657DDA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26657DEFC()
{
  result = sub_266668D98();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask(319);
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_266669B08();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_26657E044(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarCorrectionsFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_26657E160()
{
  sub_26657E1D4();
  if (v0 <= 0x3F)
  {
    sub_26657E22C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26657E1D4()
{
  if (!qword_28007D6A8)
  {
    v0 = sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
    if (!v1)
    {
      atomic_store(v0, &qword_28007D6A8);
    }
  }
}

void sub_26657E22C()
{
  if (!qword_28007D6B0)
  {
    updated = type metadata accessor for UpdateEventCorrectionsIntentWrapper();
    if (!v1)
    {
      atomic_store(updated, &qword_28007D6B0);
    }
  }
}

unint64_t sub_26657E278()
{
  result = qword_28007D6B8;
  if (!qword_28007D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D6B8);
  }

  return result;
}

uint64_t sub_26657E2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsExitValue;
  swift_beginAccess();
  v5 = sub_266669B08();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_26657E358()
{
  v1 = *v0;
  sub_26657C1D0();
  return v2 & 1;
}

uint64_t sub_26657E3A4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266559CAC;

  return sub_26657C6FC(a1);
}

uint64_t sub_26657E440()
{
  type metadata accessor for CalendarCorrectionsFlow(0);

  return sub_266669588();
}

uint64_t sub_26657E4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26657E528(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateEventCorrectionsIntentWrapper();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_26657E58C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_18_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26657E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v13 = v19 - v12;
  v20[3] = type metadata accessor for UpdateEventCorrectionsIntentWrapper();
  v20[4] = &off_2878091C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_26657E58C(a3, boxed_opaque_existential_1, type metadata accessor for UpdateEventCorrectionsIntentWrapper);
  type metadata accessor for RootFlow();
  sub_26655358C(v20, v19);
  sub_26657E808(a4, v13, &qword_28007D140, &qword_26666F140);
  v15 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_26654B7D8(v19, v16 + 32);
  sub_266557CE4(v13, v16 + v15);

  *&v19[0] = sub_2665E587C(MEMORY[0x277D84F90], MEMORY[0x277D84F90], &unk_26666FC50, v16);
  sub_26657E950(qword_28156C2E8, type metadata accessor for RootFlow);
  v17 = sub_266669528();

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v17;
}

uint64_t sub_26657E808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_18_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26657E868()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v2);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26657A00C;

  return sub_2665FC07C(v5, v6, v0 + 32, v0 + v4);
}

uint64_t sub_26657E950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26657E998(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_18_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return sub_26666C768();
}

unint64_t sub_26657EABC()
{
  result = qword_28156D120;
  if (!qword_28156D120)
  {
    sub_26666B878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156D120);
  }

  return result;
}

uint64_t sub_26657EB28(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_26666B5F8();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26666B608();
  v15 = OUTLINED_FUNCTION_3_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26666B628();
  __swift_allocate_value_buffer(v23, a2);
  __swift_project_value_buffer(v23, a2);
  (*(v17 + 104))(v22, *a3, v14);
  (*(v8 + 104))(v13, *MEMORY[0x277D56128], v5);
  sub_26666B878();
  sub_26666B998();
  sub_26657EABC();
  sub_26666C258();
  return sub_26666B618();
}

_BYTE *storeEnumTagSinglePayload for UnsupportedValueBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26657EDEC()
{
  result = qword_28007D6E0;
  if (!qword_28007D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D6E0);
  }

  return result;
}

uint64_t CalendarTvOSFlowProvider.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TaskParser();
  v3 = OUTLINED_FUNCTION_18_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266669E68();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_266669648();
  v9 = &v8[v2[5]];
  v10 = type metadata accessor for CalendarDateTimeResolver();
  v9[3] = v10;
  v9[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  *boxed_opaque_existential_1 = swift_allocObject();
  sub_266669638();
  v12 = boxed_opaque_existential_1 + *(v10 + 20);
  sub_266668D88();
  v13 = boxed_opaque_existential_1 + *(v10 + 24);
  sub_26666B548();
  v14 = &v8[v2[6]];
  v15 = type metadata accessor for CalendarContactResolver();
  v14[3] = v15;
  v14[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v14) + *(v15 + 20)) = 0;
  sub_26666B338();
  sub_26666C068();
  v16 = sub_26666C058();
  v17 = &v8[v2[7]];
  v17[3] = &type metadata for CalendarReferenceResolver;
  v17[4] = &off_28780BAC8;
  *v17 = v16;
  a1[3] = v2;
  a1[4] = &off_287808308;
  v18 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_266552BE0(v8, v18);
  a1[8] = type metadata accessor for CalendarFlowCreator();
  a1[9] = &off_28780A3E0;
  v19 = __swift_allocate_boxed_opaque_existential_1(a1 + 5);
  sub_2665FB6EC(v19);
  sub_26657F610(v8, type metadata accessor for TaskParser);
  sub_26655358C(v22, (a1 + 10));
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t CalendarTvOSFlowProvider.findFlowForX(parse:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = a2;
  v5 = sub_266669E58();
  v53 = *(v5 - 8);
  v6 = *(v53 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v52 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v49[-v11];
  v13 = type metadata accessor for Signpost.OpenSignpost();
  v14 = OUTLINED_FUNCTION_18_2(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28156C160 != -1)
  {
    swift_once();
  }

  v20 = qword_28156D800;
  sub_26666C088();
  sub_26666C638();
  v54 = v20;
  sub_26666C078();
  v21 = &v19[*(v13 + 20)];
  *v21 = "FindFlowForX";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v22 = v3[14];
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  if ((sub_266669698() & 1) == 0)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v29 = sub_26666C168();
    __swift_project_value_buffer(v29, qword_28156D7E8);
    v30 = sub_26666C148();
    v31 = sub_26666C5F8();
    if (!OUTLINED_FUNCTION_4_11(v31))
    {
      goto LABEL_20;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    OUTLINED_FUNCTION_3_9(&dword_266549000, v33, OS_LOG_TYPE_DEBUG, "[CalendarTvOSFlowProvider] returning no flow for unsupported device");
    v34 = v32;
LABEL_19:
    MEMORY[0x266789690](v34, -1, -1);
LABEL_20:

LABEL_21:
    sub_266669598();
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v23 = a1;
  sub_26659AC88(a1, &v56);
  if (v57[24] == 255)
  {
    sub_266560930(&v56);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v35 = sub_26666C168();
    __swift_project_value_buffer(v35, qword_28156D7E8);
    v36 = v53;
    v37 = *(v53 + 16);
    v37(v12, v23, v5);
    v30 = sub_26666C148();
    v38 = sub_26666C608();
    if (!OUTLINED_FUNCTION_4_11(v38))
    {

      (*(v36 + 8))(v12, v5);
      goto LABEL_21;
    }

    v39 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v58 = v51;
    *v39 = 136315138;
    v50 = v23;
    v37(v52, v12, v5);
    v40 = sub_26666C318();
    v42 = v41;
    (*(v36 + 8))(v12, v5);
    v43 = sub_2665BFC90(v40, v42, &v58);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_266549000, v30, v50, "[CalendarTvOSFlowProvider] returning no flow for unknown parse %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_10();
    v34 = v39;
    goto LABEL_19;
  }

  v58 = v56;
  v59[0] = *v57;
  *(v59 + 9) = *&v57[9];
  sub_266553950(&v58, &v56);
  v24 = v57[24];
  sub_266553988(&v56);
  if (v24 == 4)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v25 = sub_26666C168();
    __swift_project_value_buffer(v25, qword_28156D7E8);
    v26 = sub_26666C148();
    v27 = sub_26666C608();
    if (OUTLINED_FUNCTION_4_11(v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_9(&dword_266549000, v28, a1, "[CalendarTvOSFlowProvider] openCalendarView not supported on this platform");
      OUTLINED_FUNCTION_10();
    }

    sub_266669598();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v44 = sub_26666C168();
    __swift_project_value_buffer(v44, qword_28156D7E8);
    v45 = sub_26666C148();
    v46 = sub_26666C618();
    if (os_log_type_enabled(v45, v46))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_9(&dword_266549000, v47, v46, "[CalendarTvOSFlowProvider] Using execute on remote for non open calendar view task");
      OUTLINED_FUNCTION_10();
    }

    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    sub_2665FC298(a1);
    sub_2666695A8();
  }

  sub_266553988(&v58);
LABEL_28:
  sub_26666C628();
  sub_26666C078();
  return sub_26657F610(v19, type metadata accessor for Signpost.OpenSignpost);
}

uint64_t sub_26657F610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_18_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26657F670(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26657F6B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_3_9(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

BOOL OUTLINED_FUNCTION_4_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t Snippet.Calendar.calendarIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Snippet.Calendar.calendarIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippet.Calendar.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Snippet.Calendar.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snippet.Calendar.color.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return *(v0 + 56);
}

uint64_t Snippet.Calendar.color.setter(uint64_t result, double a2, double a3, double a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 56) = result;
  return result;
}

uint64_t Snippet.Calendar.init(calendarIdentifier:title:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a5;
  return result;
}

void Snippet.Calendar.init(ekCalendar:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 CGColor];
  if (v4 && (v5 = sub_26665EAC8(v4), v8 != 3))
  {
    v10 = v8;
    v21 = v6;
    v19 = v7;
    v20 = v5;
    v11 = [a1 calendarIdentifier];
    v12 = sub_26666C308();
    v14 = v13;

    v15 = [a1 title];
    v16 = sub_26666C308();
    v18 = v17;

    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    *(a2 + 24) = v18;
    *(a2 + 32) = v20;
    *(a2 + 40) = v21;
    *(a2 + 48) = v19;
    *(a2 + 56) = v10;
  }

  else
  {
    sub_26657F9F8();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }
}

unint64_t sub_26657F9F8()
{
  result = qword_28007D6E8;
  if (!qword_28007D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D6E8);
  }

  return result;
}

uint64_t sub_26657FA4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000026667DF60 == a2;
  if (v3 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26666CAC8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26657FB6C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x656C746974;
  }

  return 0x726F6C6F63;
}

uint64_t sub_26657FBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26657FA4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26657FBF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26657FB64();
  *a1 = result;
  return result;
}

uint64_t sub_26657FC18(uint64_t a1)
{
  v2 = sub_26657FE10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26657FC54(uint64_t a1)
{
  v2 = sub_26657FE10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Calendar.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D6F0, &qword_26666FD80);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v20[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26657FE10();
  sub_26666CBE8();
  v15 = *v3;
  v16 = v3[1];
  LOBYTE(v21[0]) = 0;
  OUTLINED_FUNCTION_3_10();
  if (!v2)
  {
    v17 = v3[2];
    v18 = v3[3];
    LOBYTE(v21[0]) = 1;
    OUTLINED_FUNCTION_3_10();
    v21[0] = *(v3 + 2);
    *(v21 + 9) = *(v3 + 41);
    v20[15] = 2;
    sub_26657FE64();
    sub_26666CA78();
  }

  return (*(v8 + 8))(v13, v5);
}

unint64_t sub_26657FE10()
{
  result = qword_28007D6F8;
  if (!qword_28007D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D6F8);
  }

  return result;
}

unint64_t sub_26657FE64()
{
  result = qword_28007D700;
  if (!qword_28007D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D700);
  }

  return result;
}

uint64_t Snippet.Calendar.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D708, &qword_26666FD88);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26657FE10();
  sub_26666CBD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = OUTLINED_FUNCTION_2_10();
  v13 = v12;
  v23 = v11;
  LOBYTE(v27[0]) = 1;
  *&v22 = OUTLINED_FUNCTION_2_10();
  *(&v22 + 1) = v14;
  v32 = 2;
  sub_266580160();
  sub_26666C9E8();
  v15 = OUTLINED_FUNCTION_0_13();
  v16(v15);
  v17 = v33;
  v18 = v34;
  v19 = v35;
  *&v24 = v23;
  *(&v24 + 1) = v13;
  v25 = v22;
  *v26 = v33;
  *&v26[16] = v34;
  v26[24] = v35;
  sub_2665801B4(&v24, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[0] = v23;
  v27[1] = v13;
  v28 = v22;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  result = sub_2665801EC(v27);
  v21 = v25;
  *a2 = v24;
  a2[1] = v21;
  a2[2] = *v26;
  *(a2 + 41) = *&v26[9];
  return result;
}

unint64_t sub_266580160()
{
  result = qword_28007D710;
  if (!qword_28007D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D710);
  }

  return result;
}

double sub_26658021C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  Snippet.Calendar.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26658029C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_2665802DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s8CalendarV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26658041C()
{
  result = qword_28007D718;
  if (!qword_28007D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D718);
  }

  return result;
}

unint64_t sub_266580474()
{
  result = qword_28007D720;
  if (!qword_28007D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D720);
  }

  return result;
}

unint64_t sub_2665804CC()
{
  result = qword_28007D728;
  if (!qword_28007D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D728);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_26666C9B8();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_26666CA48();
}

uint64_t sub_266580570()
{
  v1 = sub_266668BE8();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D160, &qword_26666E0B0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v29 - v18;
  v20 = [v0 nameComponents];
  if (v20)
  {
    v21 = v20;
    sub_266668BB8();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  OUTLINED_FUNCTION_3_11(v16, v22);
  sub_266567590(v16, v19);
  if (!OUTLINED_FUNCTION_17_1(v19))
  {
    (*(v4 + 16))(v10, v19, v1);
    sub_266567600(v19);
    v27 = sub_266668BD8();
    (*(v4 + 8))(v10, v1);
    return v27;
  }

  sub_266567600(v19);
  v23 = [v0 personHandle];
  if (!v23)
  {
    return 0;
  }

  v24 = v23;
  v25 = [v23 value];
  if (!v25)
  {

    return 0;
  }

  v26 = v25;
  v27 = sub_26666C308();

  return v27;
}

id sub_266580798(void *a1)
{
  v2 = sub_266668BE8();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_2665816B4(a1, &selRef_emailAddress);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    objc_allocWithZone(MEMORY[0x277CD3E98]);
    v16 = v14;
    v17 = v15;
    v18 = 1;
  }

  else
  {
    v19 = sub_2665816B4(a1, &selRef_phoneNumber);
    v21 = v20;
    objc_allocWithZone(MEMORY[0x277CD3E98]);
    v16 = v19;
    if (v21)
    {
      v17 = v21;
      v18 = 2;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }
  }

  v22 = sub_2665815A0(v16, v17, v18);
  v23 = [a1 nameComponents];
  if (v23)
  {
    sub_266668BB8();

    v23 = sub_266668BA8();
    (*(v5 + 8))(v11, v2);
  }

  sub_2665816B4(a1, &selRef_name);
  if (v24)
  {
    v25 = sub_26666C2F8();
  }

  else
  {
    v25 = 0;
  }

  v26 = a1;
  sub_266581714(v26, &selRef_uniqueIdentifier);
  if (v27)
  {
    v28 = sub_26666C2F8();
  }

  else
  {
    v28 = 0;
  }

  sub_266581714(v26, &selRef_uniqueIdentifier);
  if (v29)
  {
    v30 = sub_26666C2F8();
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersonHandle:v22 nameComponents:v23 displayName:v25 image:0 contactIdentifier:v28 customIdentifier:v30];

  return v31;
}

uint64_t sub_266580A0C()
{
  result = sub_2665816B4(v0, &selRef_contactIdentifier);
  if (!v2)
  {
    result = sub_2665816B4(v0, &selRef_customIdentifier);
    if (!v3)
    {
      result = sub_2665816B4(v0, &selRef_vocabularyIdentifier);
      if (!v4)
      {
        result = sub_2665816B4(v0, &selRef_contactIdentifier);
        if (!v5)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_266580A7C()
{
  result = [v0 personHandle];
  if (result)
  {
    v2 = result;
    v3 = [result type];

    if (v3 != 1)
    {
      return 0;
    }

    result = [v0 personHandle];
    if (!result)
    {
      return result;
    }

    sub_266581714(result, &selRef_value);
    if (v4)
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

uint64_t sub_266580B18(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26666C768();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    result = sub_26666C898();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_266552C44(0, &qword_28007D738, 0x277CC59A0);
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x266788B60](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        sub_266567228(v5);
        sub_26666C868();
        v6 = *(v7 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      while (v2 != v4);
      return v7;
    }
  }

  return result;
}

uint64_t sub_266580C38(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26666C768();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    result = sub_26666C898();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x266788B60](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        v6 = v5;
        v7 = sub_26666C658();
        v8 = sub_26666C658();
        [objc_allocWithZone(MEMORY[0x277CD3BE8]) initWithPerson:v6 status:0 isUser:v7 isEventOrganizer:v8];

        sub_26666C868();
        v9 = *(v10 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      while (v2 != v4);
      return v10;
    }
  }

  return result;
}

uint64_t sub_266580DB4@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_266668D98();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  OUTLINED_FUNCTION_1_0();
  v9 = *a1;
  sub_26666BCA8();
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = v9;
  sub_266669648();
  result = sub_26666BC98();
  *a3 = result;
  return result;
}

uint64_t INPerson.id.getter()
{
  result = sub_2665816B4(v0, &selRef_contactIdentifier);
  if (!v2)
  {
    return 0x3E6C696E3CLL;
  }

  return result;
}

uint64_t sub_266580ECC()
{
  v1 = v0;
  v2 = sub_266668BE8();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v78 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  OUTLINED_FUNCTION_1_0();
  v77 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D160, &qword_26666E0B0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v79 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v80 = &v77 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v77 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v77 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v77 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v77 - v32;
  v35 = MEMORY[0x28223BE20](v31, v34);
  v37 = &v77 - v36;
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v77 - v39;
  v41 = swift_allocObject();
  *(v41 + 16) = MEMORY[0x277D84F90];
  v81 = v41 + 16;
  v42 = v1;
  v43 = [v1 nameComponents];
  if (v43)
  {
    v44 = v43;
    sub_266668BB8();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  OUTLINED_FUNCTION_3_11(v37, v45);
  sub_266567590(v37, v40);
  if (OUTLINED_FUNCTION_17_1(v40))
  {
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v46 = sub_266668B58();
    v47 = v48;
  }

  sub_266567600(v40);
  OUTLINED_FUNCTION_2_11();
  sub_2665813F4(v46, v47, v49 & 0xFFFFFFFFFFFFLL | 0x6946000000000000, 0xEF656D614E747372, v41);

  v50 = [v42 nameComponents];
  if (v50)
  {
    v51 = v50;
    sub_266668BB8();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  OUTLINED_FUNCTION_3_11(v29, v52);
  sub_266567590(v29, v33);
  if (OUTLINED_FUNCTION_17_1(v33))
  {
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v53 = sub_266668B68();
    v54 = v55;
  }

  sub_266567600(v33);
  OUTLINED_FUNCTION_2_11();
  sub_2665813F4(v53, v54, v56 & 0xFFFFFFFFFFFFLL | 0x614C000000000000, 0xEE00656D614E7473, v41);

  v57 = [v42 nameComponents];
  if (v57)
  {
    v58 = v57;
    sub_266668BB8();

    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  OUTLINED_FUNCTION_3_11(v21, v59);
  sub_266567590(v21, v25);
  if (OUTLINED_FUNCTION_17_1(v25))
  {
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v60 = sub_266668BC8();
    v61 = v62;
  }

  sub_266567600(v25);
  OUTLINED_FUNCTION_2_11();
  sub_2665813F4(v60, v61, v63 & 0xFFFFFFFFFFFFLL | 0x694E000000000000, 0xEE00656D614E6B63, v41);

  v64 = [v42 nameComponents];
  if (v64)
  {
    v65 = v64;
    v66 = v79;
    sub_266668BB8();

    v67 = 0;
  }

  else
  {
    v67 = 1;
    v66 = v79;
  }

  OUTLINED_FUNCTION_3_11(v66, v67);
  v68 = v80;
  sub_266567590(v66, v80);
  if (OUTLINED_FUNCTION_17_1(v68))
  {
    sub_266567600(v68);
    v69 = 0;
    v70 = 0;
  }

  else
  {
    v72 = v77;
    v71 = v78;
    (*(v78 + 16))(v77, v68, v2);
    sub_266567600(v68);
    v69 = sub_266668BD8();
    v70 = v73;
    (*(v71 + 8))(v72, v2);
  }

  OUTLINED_FUNCTION_2_11();
  sub_2665813F4(v69, v70, v74 & 0xFFFFFFFFFFFFLL | 0x7546000000000000, 0xEE00656D614E6C6CLL, v41);

  swift_beginAccess();
  v75 = *(v41 + 16);

  return v75;
}

uint64_t sub_2665813F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2666697B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8, v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v15 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      sub_266669798();
      swift_beginAccess();
      sub_266643F54();
      v16 = *(*(a5 + 16) + 16);
      sub_266643FE0(v16);
      v17 = *(a5 + 16);
      *(v17 + 16) = v16 + 1;
      (*(v9 + 32))(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v14, v8);
      *(a5 + 16) = v17;
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_266581574@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = INPerson.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

id sub_2665815A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26666C2F8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

unint64_t sub_266581618(uint64_t a1)
{
  result = sub_266581640();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_266581640()
{
  result = qword_28007D730;
  if (!qword_28007D730)
  {
    sub_266552C44(255, &qword_28007D148, 0x277CD3E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D730);
  }

  return result;
}

uint64_t sub_2665816B4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_26666C308();

  return v4;
}

uint64_t sub_266581714(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_26666C308();

  return v4;
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_2665817A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = *(*(sub_266668D98() - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665818DC, 0, 0);
}

uint64_t sub_2665818DC()
{
  v3 = sub_2665670B0(v0[10]);
  v0[18] = v3;
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (sub_2665C485C(v5) != 1)
  {
    goto LABEL_9;
  }

  sub_2665C4864(0, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_59:
    v6 = MEMORY[0x266788B60](0, v5);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = v6;
  v8 = [v6 personHandle];

  if (v8)
  {
    v9 = [v8 type];

    v10 = v9 == 1;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  *(v0 + 176) = v10;
  v11 = sub_2665EF548(v0[10]);
  if (v10)
  {
    v67 = v11;
    v69 = v12;
    v13 = OUTLINED_FUNCTION_8_7();
    if (v13 && (v14 = v13, v15 = [v13 allDay], v14, v15))
    {
      v65 = [v15 BOOLValue];
    }

    else
    {
      v65 = 0;
    }

    v24 = OUTLINED_FUNCTION_9_6();
    if (v24)
    {
      v25 = v24;
      v26 = [v24 startDate];

      if (v26)
      {
        v27 = v0[13];
        sub_266668CE8();
      }

      v40 = v0[13];
      v39 = v0[14];
      v41 = sub_266668D38();
      OUTLINED_FUNCTION_0_14(v41);
    }

    else
    {
      v37 = v0[14];
      v38 = sub_266668D38();
      OUTLINED_FUNCTION_2_12(v38);
    }

    v42 = OUTLINED_FUNCTION_9_6();
    if (v42)
    {
      v43 = v42;
      v44 = [v42 endDate];

      if (v44)
      {
        v45 = v0[11];
        sub_266668CE8();
      }

      v49 = v0[11];
      v48 = v0[12];
      v50 = sub_266668D38();
      OUTLINED_FUNCTION_0_14(v50);
    }

    else
    {
      v46 = v0[12];
      v47 = sub_266668D38();
      OUTLINED_FUNCTION_2_12(v47);
    }

    if (v0[18])
    {
      v51 = v0[18];
    }

    else
    {
      v51 = v4;
    }

    if (*(v0 + 176) == 1)
    {
      v61 = sub_266580B18(v51);
    }

    else
    {

      v61 = 0;
    }

    v52 = v0[16];
    v53 = v0[17];
    OUTLINED_FUNCTION_6_4();
    v54 = v0[10];
    v64 = v0[11];
    v56 = v0[7];
    v55 = v0[8];
    sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
    v57 = [v54 (v2 + 677)];
    v58 = [v57 EKRecurrenceRule];

    sub_266560A9C(v65, v4, v1, v67, v69, v61, v56, v55, v58, [v54 location]);

    v59 = OUTLINED_FUNCTION_1_10();

    return v60(v59);
  }

  else
  {

    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v16 = sub_26666C168();
    __swift_project_value_buffer(v16, qword_28156D7E8);
    v17 = sub_26666C148();
    v18 = sub_26666C618();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266549000, v17, v18, "[INCreateEventIntent.buildEKEvent] Participants are not invitable, adding them to event title", v19, 2u);
      MEMORY[0x266789690](v19, -1, -1);
    }

    v20 = v0[10];

    sub_2665EF548(v20);
    if (v21)
    {
      v22 = v0[17];
      sub_26666C358();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v1 = v0[17];
    v62 = sub_26666BDA8();
    __swift_storeEnumTagSinglePayload(v1, v23, 1, v62);
    v72 = v4;
    v2 = 0;
    v68 = v5 & 0xC000000000000001;
    v70 = sub_2665C485C(v5);
    v66 = v5 & 0xFFFFFFFFFFFFFF8;
    v71 = v0;
LABEL_26:
    v0[19] = v4;
    while (v70 != v2)
    {
      if (v68)
      {
        v28 = MEMORY[0x266788B60](v2, v5);
      }

      else
      {
        if (v2 >= *(v66 + 16))
        {
          goto LABEL_58;
        }

        v28 = *(v5 + 8 * v2 + 32);
      }

      v4 = v28;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v63 = v2 + 1;
      v0 = v71;
      v29 = v71[15];
      sub_26666BCA8();
      v30 = v4;
      sub_266669E68();
      v1 = v5;
      v31 = v71[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v5 = v1;
      sub_266669648();
      __swift_destroy_boxed_opaque_existential_1(v71 + 2);
      v4 = sub_26666BC98();

      ++v2;
      if (v4)
      {
        MEMORY[0x2667887C0]();
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26666C4B8();
        }

        sub_26666C4E8();
        v4 = v72;
        v2 = v63;
        v0 = v71;
        goto LABEL_26;
      }
    }

    __swift_storeEnumTagSinglePayload(v71[16], 1, 1, v62);
    v32 = swift_task_alloc();
    v71[20] = v32;
    *v32 = v71;
    v32[1] = sub_266581F68;
    v33 = v71[16];
    v34 = v71[17];
    v35 = v71[9];

    return sub_2665D8CB8();
  }
}

uint64_t sub_266581F68(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 160);
  v7 = *v2;

  v8 = v4[19];
  v9 = v4[17];
  v10 = v4[16];
  if (v1)
  {

    sub_266583058(v10);
    sub_266583058(v9);
    v11 = sub_2665823F8;
  }

  else
  {

    v5[21] = a1;
    sub_266583058(v10);
    sub_266583058(v9);
    v11 = sub_26658210C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26658210C()
{
  v2 = *(v0 + 168);
  v3 = sub_26655F6C8();
  v5 = v4;

  if (!v5)
  {
    v3 = sub_2665EF548(*(v0 + 80));
    v5 = v6;
  }

  v7 = OUTLINED_FUNCTION_8_7();
  if (v7 && (v8 = v7, v9 = [v7 allDay], v8, v9))
  {
    v59 = [v9 BOOLValue];
  }

  else
  {
    v59 = 0;
  }

  v10 = OUTLINED_FUNCTION_9_6();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 startDate];

    if (v12)
    {
      v13 = *(v0 + 104);
      sub_266668CE8();
    }

    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    v18 = sub_266668D38();
    OUTLINED_FUNCTION_0_14(v18);
  }

  else
  {
    v14 = *(v0 + 112);
    v15 = sub_266668D38();
    OUTLINED_FUNCTION_2_12(v15);
  }

  v19 = OUTLINED_FUNCTION_9_6();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 endDate];

    if (v21)
    {
      v22 = *(v0 + 88);
      sub_266668CE8();
    }

    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    v27 = sub_266668D38();
    OUTLINED_FUNCTION_0_14(v27);
  }

  else
  {
    v23 = *(v0 + 96);
    v24 = sub_266668D38();
    OUTLINED_FUNCTION_2_12(v24);
  }

  if (*(v0 + 144))
  {
    v28 = *(v0 + 144);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v60 = v3;
  if (*(v0 + 176) == 1)
  {
    v53 = sub_266580B18(v28);
  }

  else
  {

    v53 = 0;
  }

  v29 = *(v0 + 128);
  v30 = *(v0 + 136);
  OUTLINED_FUNCTION_6_4();
  v31 = *(v0 + 80);
  v56 = v32;
  v57 = *(v0 + 88);
  v34 = *(v0 + 56);
  v33 = *(v0 + 64);
  sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
  v35 = [v31 (v1 + 677)];
  v36 = [v35 EKRecurrenceRule];

  v37 = [v31 location];
  v38 = v33;
  v39 = v34;
  OUTLINED_FUNCTION_5_7(v39, v40, v41, v42, v43, v44, v45, v46, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v5, v60);

  v47 = OUTLINED_FUNCTION_1_10();

  return v48(v47);
}

uint64_t sub_2665823F8()
{
  v2 = sub_2665EF548(*(v0 + 80));
  v57 = v3;
  v58 = v2;

  v4 = OUTLINED_FUNCTION_8_7();
  if (v4 && (v5 = v4, v6 = [v4 allDay], v5, v6))
  {
    v56 = [v6 BOOLValue];
  }

  else
  {
    v56 = 0;
  }

  v7 = OUTLINED_FUNCTION_9_6();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 startDate];

    if (v9)
    {
      v10 = *(v0 + 104);
      sub_266668CE8();
    }

    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = sub_266668D38();
    OUTLINED_FUNCTION_0_14(v15);
  }

  else
  {
    v11 = *(v0 + 112);
    v12 = sub_266668D38();
    OUTLINED_FUNCTION_2_12(v12);
  }

  v16 = OUTLINED_FUNCTION_9_6();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 endDate];

    if (v18)
    {
      v19 = *(v0 + 88);
      sub_266668CE8();
    }

    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = sub_266668D38();
    OUTLINED_FUNCTION_0_14(v24);
  }

  else
  {
    v20 = *(v0 + 96);
    v21 = sub_266668D38();
    OUTLINED_FUNCTION_2_12(v21);
  }

  if (*(v0 + 144))
  {
    v25 = *(v0 + 144);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  if (*(v0 + 176) == 1)
  {
    v50 = sub_266580B18(v25);
  }

  else
  {

    v50 = 0;
  }

  v26 = *(v0 + 128);
  v27 = *(v0 + 136);
  OUTLINED_FUNCTION_6_4();
  v28 = *(v0 + 80);
  v53 = v29;
  v54 = *(v0 + 88);
  v31 = *(v0 + 56);
  v30 = *(v0 + 64);
  sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
  v32 = [v28 (v1 + 677)];
  v33 = [v32 EKRecurrenceRule];

  v34 = [v28 location];
  v35 = v30;
  v36 = v31;
  OUTLINED_FUNCTION_5_7(v36, v37, v38, v39, v40, v41, v42, v43, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);

  v44 = OUTLINED_FUNCTION_1_10();

  return v45(v44);
}

id sub_2665826C4()
{
  v1 = sub_2665EF548(v0);
  v3 = v2;
  v4 = [v0 dateTimeRange];
  v5 = sub_2665670B0(v0);
  if (v5)
  {
    v6 = sub_266580C38(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v0 location];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v8 = sub_26666C658();
  v9 = objc_allocWithZone(MEMORY[0x277CD3AD8]);
  v10 = OUTLINED_FUNCTION_0();
  return sub_266582E94(v10, v11, v1, v3, v4, v6, v7, v8, 0, 0);
}

id sub_2665827C8(char a1, unint64_t a2, char a3)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_0();
      goto LABEL_11;
    case 2:
      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_1_6();
      v9 = 1;
      goto LABEL_12;
    case 3:
      if (a3)
      {
        a2 = 1;
      }

      if (a3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      v12 = OUTLINED_FUNCTION_3_12();
      v15 = sub_2665828A0(v12, v13, v14, a2, 0, v11, 0);
      sub_2665671E8(a2, 0, v11);
      return v15;
    default:
LABEL_11:
      OUTLINED_FUNCTION_1_6();
      v9 = 0;
LABEL_12:

      return sub_2665828A0(v3, v4, v5, v6, v7, v8, v9);
  }
}

id sub_2665828A0(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, unint64_t a5, char a6, void *a7)
{
  v8 = v7;
  v16 = sub_2665EF548(v7);
  if (a2)
  {
    v18 = a5;
    v19 = a6;
    if (a2 == 1)
    {
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = a1;
      v21 = a2;
    }

    v35 = v21;
    v22 = v20;
    a6 = v19;
    a5 = v18;
  }

  else
  {
    v22 = v16;
    v35 = v17;
  }

  sub_266567120(a1, a2);
  v23 = [v8 dateTimeRange];
  v24 = v23;
  if (a3 == 1)
  {
    v26 = 0;
  }

  else if (a3)
  {
    v26 = a3;
  }

  else
  {
    v25 = v23;
    v26 = v24;
  }

  sub_26654C590(a3);

  v27 = sub_2665670B0(v8);
  v28 = sub_266566E24(v27, a4, a5, a6);

  v29 = [v8 location];
  v30 = v29;
  if (a7 == 1)
  {
    v32 = 0;
  }

  else if (a7)
  {
    v32 = a7;
  }

  else
  {
    v31 = v29;
    v32 = v30;
  }

  sub_26654C590(a7);

  v33 = objc_allocWithZone(MEMORY[0x277CD3B20]);
  return sub_266571D5C(v22, v35, v26, v28, v32);
}

uint64_t sub_266582A50(char a1, void *a2, unint64_t a3, char a4, char a5)
{
  v7 = v5;
  switch(a1)
  {
    case 1:
      result = sub_2665F01A0(a2);
      if (!v6)
      {
        v27 = result;
        if (a5)
        {
          v28 = [v7 dateTimeRange];
          if (v28)
          {
            v29 = v28;
            sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
            v30 = v27;
            sub_2665D23CC();
            v32 = v31;

            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_1_6();
            v15 = OUTLINED_FUNCTION_10_6(v33, v34, v35, v36, v37, v38);

            return v15;
          }
        }

        v16 = v27;
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_6();
        v15 = OUTLINED_FUNCTION_10_6(v39, v40, v41, v42, v43, v44);

        goto LABEL_16;
      }

      return result;
    case 2:
      result = sub_2665F0414(a2);
      if (!v6)
      {
        v16 = result;
        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_1_6();
        v15 = sub_2665828A0(v17, v18, v19, v20, v21, v22, v16);
LABEL_16:

        return v15;
      }

      return result;
    case 3:
      if (a4)
      {
        result = sub_2665F0314(a2);
        if (!v6)
        {
          v23 = result;
          v24 = 0;
          v25 = 1;
LABEL_18:
          v45 = OUTLINED_FUNCTION_3_12();
          v15 = OUTLINED_FUNCTION_10_6(v45, v46, v47, v23, v24, v25);
          sub_2665671E8(v23, v24, v25);
          return v15;
        }
      }

      else
      {
        v24 = a3;
        result = sub_2665F01D8(a2);
        if (!v6)
        {
          v23 = result;
          v25 = 2;
          goto LABEL_18;
        }
      }

      return result;
    default:
      result = sub_2665F044C(a2);
      if (!v6)
      {
        OUTLINED_FUNCTION_1_6();
        v15 = OUTLINED_FUNCTION_10_6(v9, v10, v11, v12, v13, v14);

        return v15;
      }

      return result;
  }
}

id sub_266582C3C(id a1, char a2)
{
  if ((a2 & 1) != 0 && (v4 = [v2 dateTimeRange]) != 0)
  {
    v5 = v4;
    sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
    v6 = [a1 dateTimeRange];
    sub_2665D23CC();
    v8 = v7;
  }

  else
  {
    v8 = [a1 dateTimeRange];
  }

  v9 = v8;
  v10 = sub_2665EF548(a1);
  v12 = v11;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_2665670B0(a1);
  v15 = sub_266566FE4(v14);
  v17 = v16;
  v19 = v18;

  v20 = [a1 location];
  v21 = sub_2665828A0(v13, v12, v9, v15, v17, v19, v20);
  sub_2665671D8(v9);

  sub_2665671E8(v15, v17, v19);
  sub_2665671D8(v9);

  return v21;
}

id sub_266582DC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCode:a1 userActivity:0];
  [v7 setConfirmationReason_];
  if (a4)
  {
    sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
    v8 = a4;
    sub_2665EB4F8();
    v10 = v9;
    [v7 setCreatedEvent_];
  }

  sub_266582FEC(a3, v7);

  return v7;
}

id sub_266582E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  if (a2)
  {
    v17 = sub_26666C2F8();

    if (a4)
    {
LABEL_3:
      v18 = sub_26666C2F8();

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  if (!a6)
  {
    v19 = 0;
    if (a10)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  sub_266552C44(0, &qword_28007D748, 0x277CD3BE8);
  v19 = sub_26666C488();

  if (!a10)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_26666C2F8();

LABEL_11:
  v21 = [v11 initWithEventIdentifier:v17 title:v18 dateTimeRange:a5 participants:v19 location:a7 isContactBirthday:a8 calendarPunchoutURI:v20];

  return v21;
}

void sub_266582FEC(uint64_t a1, void *a2)
{
  v3 = sub_26666C488();

  [a2 setConflictingEventIdentifiers_];
}

uint64_t sub_266583058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v3, v2, 1, a1);

  return sub_266557CE4(v3, v1);
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

id OUTLINED_FUNCTION_5_7(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, uint64_t a19, uint64_t a20)
{

  return sub_266560A9C(a18, v23, v21, a20, a19, a12, a1, v22, v24, v20);
}

void OUTLINED_FUNCTION_6_4()
{
  v1 = v0[14];
  v4 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
}

id OUTLINED_FUNCTION_8_7()
{
  v2 = *(v0 + 80);

  return [v2 dateTimeRange];
}

id OUTLINED_FUNCTION_9_6()
{
  v3 = *(v0 + 80);

  return [v3 (v1 + 677)];
}

id OUTLINED_FUNCTION_10_6(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, unint64_t a5, char a6)
{

  return sub_2665828A0(a1, a2, a3, a4, a5, a6, 0);
}

id sub_2665831B8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCode:a1 userActivity:0];
  [v3 setConfirmationReason_];
  return v3;
}

_BYTE *storeEnumTagSinglePayload for IntentAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665832FC()
{
  result = qword_28007D750;
  if (!qword_28007D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D750);
  }

  return result;
}

uint64_t sub_266583350()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_266583388(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  *(v1 + 27) = a1[19];
  *(v1 + 28) = a1[20];
  *(v1 + 29) = a1[21];
  *(v1 + 30) = a1[22];
  v2 = a1[23];

  *(v1 + 31) = v2;
  return v1;
}

double sub_2665833F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD000000000000012 && 0x800000026667CE00 == a2;
  if (v6 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  v10 = a1 == 0xD000000000000014 && 0x800000026667CE20 == a2;
  if (v10 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[25];
    goto LABEL_7;
  }

  v11 = a1 == 0xD000000000000015 && 0x800000026667CE40 == a2;
  if (v11 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[26];
    goto LABEL_7;
  }

  v12 = a1 == 0xD000000000000016 && 0x800000026667CE60 == a2;
  if (v12 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[27];
    goto LABEL_7;
  }

  v13 = a1 == 0xD000000000000010 && 0x800000026667CE80 == a2;
  if (v13 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[28];
    goto LABEL_7;
  }

  v14 = a1 == 0xD000000000000012 && 0x800000026667CEA0 == a2;
  if (v14 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[29];
    goto LABEL_7;
  }

  v15 = a1 == 0x61446C6C416C6C61 && a2 == 0xE900000000000079;
  if (v15 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[30];
    goto LABEL_7;
  }

  v16 = a1 == 0x64656D69546C6C61 && a2 == 0xE800000000000000;
  if (v16 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[31];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_2665835E0()
{
  v0 = sub_26666C958();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266583634(char a1)
{
  result = 0x61446C6C416C6C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      return result;
    case 7:
      result = 0x64656D69546C6C61;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_266583760@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2665835E0();
  *a2 = result;
  return result;
}

unint64_t sub_266583790@<X0>(unint64_t *a1@<X8>)
{
  result = sub_266583634(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2665837D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26658362C();
  *a1 = result;
  return result;
}

uint64_t sub_26658380C(uint64_t a1)
{
  v2 = sub_266583EE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266583848(uint64_t a1)
{
  v2 = sub_266583EE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266583884()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2665838E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D778, &qword_2666701C8);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v24[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266583EE4();
  sub_26666CBE8();
  v15 = v3[24];
  v24[15] = 0;
  OUTLINED_FUNCTION_1_13();
  if (!v2)
  {
    v16 = v3[25];
    v24[14] = 1;
    OUTLINED_FUNCTION_1_13();
    v17 = v3[26];
    v24[13] = 2;
    OUTLINED_FUNCTION_1_13();
    v18 = v3[27];
    v24[12] = 3;
    OUTLINED_FUNCTION_1_13();
    v19 = v3[28];
    v24[11] = 4;
    OUTLINED_FUNCTION_1_13();
    v20 = v3[29];
    v24[10] = 5;
    OUTLINED_FUNCTION_1_13();
    v21 = v3[30];
    v24[9] = 6;
    OUTLINED_FUNCTION_1_13();
    v22 = v3[31];
    v24[8] = 7;
    OUTLINED_FUNCTION_1_13();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_266583AC8(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_266583B3C(a1);
  return v2;
}

uint64_t sub_266583B3C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D768, &qword_2666701C0);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v17 - v12;
  *(v1 + 16) = 0;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266583EE4();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarResultSetIntroOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_1_8() & 1;
    v24 = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_8() & 1;
    v23 = 2;
    *(v1 + 26) = OUTLINED_FUNCTION_1_8() & 1;
    v22 = 3;
    *(v1 + 27) = OUTLINED_FUNCTION_1_8() & 1;
    v21 = 4;
    *(v1 + 28) = OUTLINED_FUNCTION_1_8() & 1;
    v20 = 5;
    *(v1 + 29) = OUTLINED_FUNCTION_1_8() & 1;
    v19 = 6;
    *(v1 + 30) = OUTLINED_FUNCTION_1_8() & 1;
    v18 = 7;
    v16 = OUTLINED_FUNCTION_1_8();
    (*(v8 + 8))(v13, v5);
    *(v3 + 31) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_266583DEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266583AC8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266583EA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarResultSetIntroOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266583EE4()
{
  result = qword_28007D770;
  if (!qword_28007D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D770);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarResultSetIntroOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarResultSetIntroOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2665840A0()
{
  result = qword_28007D780;
  if (!qword_28007D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D780);
  }

  return result;
}

unint64_t sub_2665840F8()
{
  result = qword_28007D788;
  if (!qword_28007D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D788);
  }

  return result;
}

unint64_t sub_266584150()
{
  result = qword_28007D790;
  if (!qword_28007D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D790);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return sub_26666CA58();
}

uint64_t Snippet.PunchoutButton.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26658427C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7261646E656C6163 && a2 == 0xEB00000000707041)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26666CAC8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266584318(uint64_t a1)
{
  v2 = sub_266584640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266584354(uint64_t a1)
{
  v2 = sub_266584640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266584398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26658427C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2665843C4(uint64_t a1)
{
  v2 = sub_2665845EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266584400(uint64_t a1)
{
  v2 = sub_2665845EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.PunchoutButton.Location.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15_3();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D798, &qword_266670320);
  OUTLINED_FUNCTION_3_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7A0, &qword_266670328);
  OUTLINED_FUNCTION_3_0(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v39, v40);
  v42 = &a9 - v41;
  v43 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_2665845EC();
  sub_26666CBE8();
  sub_266584640();
  sub_26666CA08();
  (*(v27 + 8))(v33, v25);
  (*(v36 + 8))(v42, v34);
  OUTLINED_FUNCTION_16_3();
}

unint64_t sub_2665845EC()
{
  result = qword_28007D7A8;
  if (!qword_28007D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D7A8);
  }

  return result;
}

unint64_t sub_266584640()
{
  result = qword_28007D7B0;
  if (!qword_28007D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D7B0);
  }

  return result;
}

void Snippet.PunchoutButton.Location.init(from:)()
{
  OUTLINED_FUNCTION_15_3();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7B8, &qword_266670330);
  OUTLINED_FUNCTION_3_0(v3);
  v43 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7C0, &unk_266670338);
  OUTLINED_FUNCTION_3_0(v11);
  v44 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  v19 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2665845EC();
  sub_26666CBD8();
  if (v0)
  {
    goto LABEL_9;
  }

  v41 = v10;
  v42 = v2;
  v20 = sub_26666C9F8();
  sub_266575484(v20, 0);
  v24 = v18;
  if (v22 == v23 >> 1)
  {
    v43 = v21;
LABEL_8:
    v34 = v11;
    v35 = sub_26666C848();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190) + 48);
    *v37 = &type metadata for Snippet.PunchoutButton.Location;
    sub_26666C978();
    OUTLINED_FUNCTION_9_7();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v24, v34);
    v2 = v42;
LABEL_9:
    v39 = v2;
    goto LABEL_10;
  }

  if (v22 < (v23 >> 1))
  {
    v25 = sub_266575DD4(v22 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    v30 = v27 == v29 >> 1;
    v31 = v42;
    v32 = v43;
    if (v30)
    {
      sub_266584640();
      v33 = v41;
      sub_26666C968();
      swift_unknownObjectRelease();
      (*(v32 + 8))(v33, v3);
      (*(v44 + 8))(v24, v11);
      v39 = v31;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_16_3();
      return;
    }

    v43 = v25;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_266584A2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61436E65706FLL && a2 == 0xEC0000007261646ELL;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69746162726576 && a2 == 0xE800000000000000)
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

uint64_t sub_266584AF8(char a1)
{
  if (a1)
  {
    return 0x6D69746162726576;
  }

  else
  {
    return 0x656C61436E65706FLL;
  }
}

uint64_t sub_266584B38(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26666CAC8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s19SiriCalendarIntents7SnippetO14PunchoutButtonV8LocationO9hashValueSivg_0()
{
  sub_26666CB88();
  MEMORY[0x266788EE0](0);
  return sub_26666CBC8();
}

uint64_t sub_266584C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266584A2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266584C5C(uint64_t a1)
{
  v2 = sub_266585BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266584C98(uint64_t a1)
{
  v2 = sub_266585BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266584CD4(uint64_t a1)
{
  v2 = sub_266585C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266584D10(uint64_t a1)
{
  v2 = sub_266585C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266584D4C()
{
  sub_26666CB88();
  MEMORY[0x266788EE0](0);
  return sub_26666CBC8();
}

uint64_t sub_266584D90(uint64_t a1)
{
  v2 = sub_266585BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266584DCC(uint64_t a1)
{
  v2 = sub_266585BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.PunchoutButton.LocalizedTitle.encode(to:)()
{
  OUTLINED_FUNCTION_15_3();
  v36 = v2;
  v37 = v0;
  v35 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7C8, &qword_266670348);
  OUTLINED_FUNCTION_3_0(v6);
  v34 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7D0, &qword_266670350);
  v15 = OUTLINED_FUNCTION_3_0(v14);
  v32 = v16;
  v33 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_4_12();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7D8, &qword_266670358);
  OUTLINED_FUNCTION_3_0(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v32 - v28;
  v30 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_266585BA0();
  v31 = v36;
  sub_26666CBE8();
  if (v31)
  {
    sub_266585BF4();
    sub_26666CA08();
    sub_26666CA48();
    (*(v34 + 8))(v13, v6);
  }

  else
  {
    sub_266585C48();
    sub_26666CA08();
    (*(v32 + 8))(v1, v33);
  }

  (*(v23 + 8))(v29, v21);
  OUTLINED_FUNCTION_16_3();
}

void Snippet.PunchoutButton.LocalizedTitle.init(from:)()
{
  OUTLINED_FUNCTION_15_3();
  v56 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7F8, &qword_266670360);
  v53 = OUTLINED_FUNCTION_3_0(v4);
  v54 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_4_12();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D800, &qword_266670368);
  OUTLINED_FUNCTION_3_0(v10);
  v52 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14, v15);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D808, &qword_266670370);
  OUTLINED_FUNCTION_3_0(v18);
  v55 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v22, v23);
  v24 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_266585BA0();
  v25 = v56;
  sub_26666CBD8();
  if (v25)
  {
    goto LABEL_9;
  }

  v56 = v17;
  v51[2] = v1;
  v26 = sub_26666C9F8();
  sub_266575DD8(v26, 0);
  if (v28 == v29 >> 1)
  {
    v30 = v3;
LABEL_8:
    v37 = sub_26666C848();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190) + 48);
    *v39 = &type metadata for Snippet.PunchoutButton.LocalizedTitle;
    sub_26666C978();
    OUTLINED_FUNCTION_9_7();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = *(v55 + 8);
    v42 = OUTLINED_FUNCTION_3_13();
    v43(v42);
    v3 = v30;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
    OUTLINED_FUNCTION_16_3();
    return;
  }

  if (v28 < (v29 >> 1))
  {
    v30 = v3;
    v57 = *(v27 + v28);
    v31 = sub_266575DD4(v28 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v51[1] = v31;
      if (v57)
      {
        sub_266585BF4();
        OUTLINED_FUNCTION_2_13();
        sub_26666C968();
        v36 = v55;
        sub_26666C9B8();
        swift_unknownObjectRelease();
        v46 = OUTLINED_FUNCTION_8_8();
        v47(v46);
        v48 = *(v36 + 8);
      }

      else
      {
        sub_266585C48();
        OUTLINED_FUNCTION_2_13();
        sub_26666C968();
        v44 = v55;
        swift_unknownObjectRelease();
        (*(v52 + 8))(v56, v10);
        v45 = *(v44 + 8);
      }

      v49 = OUTLINED_FUNCTION_3_13();
      v50(v49);
      __swift_destroy_boxed_opaque_existential_1(v3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_266585598(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
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

uint64_t sub_26658565C(char a1)
{
  if (a1)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

void sub_266585690(void *a1@<X8>)
{
  Snippet.PunchoutButton.LocalizedTitle.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

void sub_2665856BC()
{
  v1 = *v0;
  v2 = v0[1];
  Snippet.PunchoutButton.LocalizedTitle.encode(to:)();
}

uint64_t sub_2665856E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266585598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266585708(uint64_t a1)
{
  v2 = sub_266585C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266585744(uint64_t a1)
{
  v2 = sub_266585C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.PunchoutButton.encode(to:)()
{
  OUTLINED_FUNCTION_15_3();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D810, &qword_266670378);
  OUTLINED_FUNCTION_3_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v17 - v14;
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_266585C9C();
  sub_26666CBE8();
  LOBYTE(v17[0]) = 0;
  sub_266585CF0();
  sub_26666CA78();
  if (!v0)
  {
    v17[0] = v4;
    v17[1] = v2;
    sub_266585D44();
    sub_26666CA78();
  }

  (*(v9 + 8))(v15, v7);
  OUTLINED_FUNCTION_16_3();
}

void *Snippet.PunchoutButton.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D830, &qword_266670380);
  OUTLINED_FUNCTION_3_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_4_12();
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266585C9C();
  sub_26666CBD8();
  if (!v1)
  {
    LOBYTE(v14) = 0;
    sub_266585D98();
    OUTLINED_FUNCTION_2_13();
    sub_26666C9E8();
    sub_266585DEC();
    OUTLINED_FUNCTION_2_13();
    sub_26666C9E8();
    (*(v6 + 8))(v2, v4);
    v12 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void *sub_266585A98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = Snippet.PunchoutButton.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_266585AC4()
{
  v1 = *v0;
  v2 = v0[1];
  Snippet.PunchoutButton.encode(to:)();
}

id Snippet.PunchoutButton.Location.command.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_266585B3C(0xD000000000000013, 0x800000026667D670, v0);
  return v0;
}

void sub_266585B3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26666C2F8();

  [a3 setBundleId_];
}

unint64_t sub_266585BA0()
{
  result = qword_28007D7E0;
  if (!qword_28007D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D7E0);
  }

  return result;
}

unint64_t sub_266585BF4()
{
  result = qword_28007D7E8;
  if (!qword_28007D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D7E8);
  }

  return result;
}

unint64_t sub_266585C48()
{
  result = qword_28007D7F0;
  if (!qword_28007D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D7F0);
  }

  return result;
}

unint64_t sub_266585C9C()
{
  result = qword_28007D818;
  if (!qword_28007D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D818);
  }

  return result;
}

unint64_t sub_266585CF0()
{
  result = qword_28007D820;
  if (!qword_28007D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D820);
  }

  return result;
}

unint64_t sub_266585D44()
{
  result = qword_28007D828;
  if (!qword_28007D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D828);
  }

  return result;
}

unint64_t sub_266585D98()
{
  result = qword_28007D838;
  if (!qword_28007D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D838);
  }

  return result;
}

unint64_t sub_266585DEC()
{
  result = qword_28007D840;
  if (!qword_28007D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D840);
  }

  return result;
}

unint64_t sub_266585E44()
{
  result = qword_28007D848;
  if (!qword_28007D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D848);
  }

  return result;
}

unint64_t sub_266585E9C()
{
  result = qword_28007D850;
  if (!qword_28007D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D850);
  }

  return result;
}

unint64_t sub_266585EF4()
{
  result = qword_28007D858;
  if (!qword_28007D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D858);
  }

  return result;
}

uint64_t sub_266585F48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_266585F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_266586024(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DIStringValue.CodingKeys(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *sub_266586170(_BYTE *result, int a2, int a3)
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

unint64_t sub_266586230()
{
  result = qword_28007D860;
  if (!qword_28007D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D860);
  }

  return result;
}

unint64_t sub_266586288()
{
  result = qword_28007D868;
  if (!qword_28007D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D868);
  }

  return result;
}

unint64_t sub_2665862E0()
{
  result = qword_28007D870;
  if (!qword_28007D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D870);
  }

  return result;
}

unint64_t sub_266586338()
{
  result = qword_28007D878;
  if (!qword_28007D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D878);
  }

  return result;
}

unint64_t sub_266586390()
{
  result = qword_28007D880;
  if (!qword_28007D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D880);
  }

  return result;
}

unint64_t sub_2665863E8()
{
  result = qword_28007D888;
  if (!qword_28007D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D888);
  }

  return result;
}

unint64_t sub_266586440()
{
  result = qword_28007D890;
  if (!qword_28007D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D890);
  }

  return result;
}

unint64_t sub_266586498()
{
  result = qword_28007D898;
  if (!qword_28007D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D898);
  }

  return result;
}

unint64_t sub_2665864F0()
{
  result = qword_28007D8A0;
  if (!qword_28007D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8A0);
  }

  return result;
}

unint64_t sub_266586548()
{
  result = qword_28007D8A8;
  if (!qword_28007D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8A8);
  }

  return result;
}

unint64_t sub_2665865A0()
{
  result = qword_28007D8B0;
  if (!qword_28007D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8B0);
  }

  return result;
}

unint64_t sub_2665865F8()
{
  result = qword_28007D8B8;
  if (!qword_28007D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8B8);
  }

  return result;
}

unint64_t sub_266586650()
{
  result = qword_28007D8C0;
  if (!qword_28007D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8C0);
  }

  return result;
}

unint64_t sub_2665866A8()
{
  result = qword_28007D8C8;
  if (!qword_28007D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8C8);
  }

  return result;
}

unint64_t sub_266586700()
{
  result = qword_28007D8D0;
  if (!qword_28007D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8D0);
  }

  return result;
}

unint64_t sub_266586758()
{
  result = qword_28007D8D8;
  if (!qword_28007D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return sub_26666C838();
}

id sub_266586830(void *a1)
{
  v2 = [a1 structuredLocation];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v2 geoLocation];
  if (!v4)
  {

LABEL_6:
    return 0;
  }

  v5 = v4;
  sub_266586910(v3);
  if (v6)
  {
    v7 = sub_26666C2F8();
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() placemarkWithLocation:v5 name:v7 postalAddress:0];

  return v8;
}

uint64_t sub_266586910(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26666C308();

  return v3;
}

uint64_t Snippet.Participant.init(displayName:status:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for Snippet.Participant() + 28);
  result = _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = a4;
  return result;
}

uint64_t type metadata accessor for Snippet.Participant()
{
  result = qword_28156C7D0;
  if (!qword_28156C7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266586A20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465747065636361 && a2 == 0xE800000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64656E696C636564 && a2 == 0xE800000000000000;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656279616DLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26666CAC8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266586B84(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      v3 = 0x747065636361;
      goto LABEL_4;
    case 2:
      v3 = 0x6E696C636564;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 3:
      result = 0x656279616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266586C00(uint64_t a1)
{
  v2 = sub_266587330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266586C3C(uint64_t a1)
{
  v2 = sub_266587330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266586C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266586A20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266586CA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266586B7C();
  *a1 = result;
  return result;
}

uint64_t sub_266586CD0(uint64_t a1)
{
  v2 = sub_266587234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266586D0C(uint64_t a1)
{
  v2 = sub_266587234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266586D48(uint64_t a1)
{
  v2 = sub_2665872DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266586D84(uint64_t a1)
{
  v2 = sub_2665872DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266586DC0(uint64_t a1)
{
  v2 = sub_266587288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266586DFC(uint64_t a1)
{
  v2 = sub_266587288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266586E38(uint64_t a1)
{
  v2 = sub_266587384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266586E74(uint64_t a1)
{
  v2 = sub_266587384();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ParticipantStatus.encode(to:)()
{
  OUTLINED_FUNCTION_15_3();
  v56 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D8E0, &qword_266670B50);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v54 = v5;
  v55 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_8_9();
  v53 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D8E8, &qword_266670B58);
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v51 = v13;
  v52 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_8_9();
  v50 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D8F0, &qword_266670B60);
  v20 = OUTLINED_FUNCTION_3_0(v19);
  v49[2] = v21;
  v49[3] = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_4_12();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D8F8, &qword_266670B68);
  OUTLINED_FUNCTION_3_0(v26);
  v49[1] = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v30, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D900, &qword_266670B70);
  OUTLINED_FUNCTION_3_0(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v37, v38);
  v40 = v49 - v39;
  v41 = v2[3];
  v42 = v2[4];
  OUTLINED_FUNCTION_28_2(v2);
  sub_266587234();
  OUTLINED_FUNCTION_26_3();
  switch(v56)
  {
    case 1:
      OUTLINED_FUNCTION_12_5();
      sub_266587330();
      OUTLINED_FUNCTION_3_14();
      v43 = OUTLINED_FUNCTION_10_7();
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_20_4();
      sub_2665872DC();
      v46 = v50;
      OUTLINED_FUNCTION_3_14();
      v48 = v51;
      v47 = v52;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_25_3();
      sub_266587288();
      v46 = v53;
      OUTLINED_FUNCTION_3_14();
      v48 = v54;
      v47 = v55;
LABEL_5:
      (*(v48 + 8))(v46, v47);
      break;
    default:
      sub_266587384();
      OUTLINED_FUNCTION_3_14();
      v43 = OUTLINED_FUNCTION_21_3();
      v45 = v26;
LABEL_7:
      v44(v43, v45);
      break;
  }

  (*(v34 + 8))(v40, v32);
  OUTLINED_FUNCTION_16_3();
}

unint64_t sub_266587234()
{
  result = qword_28007D908;
  if (!qword_28007D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D908);
  }

  return result;
}

unint64_t sub_266587288()
{
  result = qword_28007D910;
  if (!qword_28007D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D910);
  }

  return result;
}

unint64_t sub_2665872DC()
{
  result = qword_28007D918;
  if (!qword_28007D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D918);
  }

  return result;
}

unint64_t sub_266587330()
{
  result = qword_28007D920;
  if (!qword_28007D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D920);
  }

  return result;
}

unint64_t sub_266587384()
{
  result = qword_28007D928;
  if (!qword_28007D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D928);
  }

  return result;
}

void Snippet.ParticipantStatus.init(from:)()
{
  OUTLINED_FUNCTION_15_3();
  v69 = v1;
  v4 = v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D930, &qword_266670B78);
  OUTLINED_FUNCTION_3_0(v68);
  v65 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_8_9();
  v67 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D938, &qword_266670B80);
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v64[8] = v13;
  v64[9] = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_8_9();
  v64[10] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D940, &qword_266670B88);
  v20 = OUTLINED_FUNCTION_3_0(v19);
  v64[6] = v21;
  v64[7] = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_4_12();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D948, &qword_266670B90);
  OUTLINED_FUNCTION_3_0(v26);
  v64[5] = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v30, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D950, &unk_266670B98);
  OUTLINED_FUNCTION_3_0(v32);
  v66 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v36, v37);
  v39 = v64 - v38;
  v40 = v4[3];
  v41 = v4[4];
  OUTLINED_FUNCTION_28_2(v4);
  sub_266587234();
  OUTLINED_FUNCTION_17_3();
  if (!v1)
  {
    v42 = OUTLINED_FUNCTION_11_8();
    v43 = sub_266575DD8(v42, 0);
    if (v45 != v44 >> 1)
    {
      OUTLINED_FUNCTION_9_8();
      if (v48 == v49)
      {
        __break(1u);
        return;
      }

      v50 = OUTLINED_FUNCTION_24_4(v46, v47);
      sub_266575DD4(v50);
      OUTLINED_FUNCTION_27_4();
      if (v0 == v43 >> 1)
      {
        v51 = v39;
        v52 = v65;
        switch(v51)
        {
          case 1uLL:
            OUTLINED_FUNCTION_12_5();
            sub_266587330();
            OUTLINED_FUNCTION_1_14();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2uLL:
            OUTLINED_FUNCTION_20_4();
            sub_2665872DC();
            OUTLINED_FUNCTION_1_14();
            swift_unknownObjectRelease();
LABEL_14:
            v53 = OUTLINED_FUNCTION_10_7();
            goto LABEL_15;
          case 3uLL:
            OUTLINED_FUNCTION_25_3();
            sub_266587288();
            OUTLINED_FUNCTION_16_5();
            swift_unknownObjectRelease();
            (*(v52 + 8))(v4, v2);
            goto LABEL_16;
          default:
            sub_266587384();
            OUTLINED_FUNCTION_1_14();
            swift_unknownObjectRelease();
            v53 = OUTLINED_FUNCTION_10_7();
            v55 = v64[2];
LABEL_15:
            v54(v53, v55);
LABEL_16:
            v62 = OUTLINED_FUNCTION_7_8();
            v63(v62);
            __swift_destroy_boxed_opaque_existential_1(v69);
            break;
        }

        goto LABEL_10;
      }
    }

    v56 = sub_26666C848();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190) + 48);
    *v58 = &type metadata for Snippet.ParticipantStatus;
    sub_26666C978();
    OUTLINED_FUNCTION_15_5();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_21_3();
    v61(v60, v32);
    v4 = v69;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_10:
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2665878EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657A696E6167726FLL && a2 == 0xE900000000000072;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x5964657469766E69 && a2 == 0xEA0000000000756FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_26666CAC8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266587A54(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6C616E6F6974706FLL;
      break;
    case 2:
      result = 0x657A696E6167726FLL;
      break;
    case 3:
      result = 0x5964657469766E69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_266587AE0(_BYTE *a1@<X8>)
{
  Snippet.ParticipantStatus.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_266587B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665878EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266587B58(uint64_t a1)
{
  v2 = sub_2665893BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266587B94(uint64_t a1)
{
  v2 = sub_2665893BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266587BD0(uint64_t a1)
{
  v2 = sub_266589410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266587C0C(uint64_t a1)
{
  v2 = sub_266589410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266587C48(uint64_t a1)
{
  v2 = sub_2665894B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266587C84(uint64_t a1)
{
  v2 = sub_2665894B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266587CC0(uint64_t a1)
{
  v2 = sub_266589464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266587CFC(uint64_t a1)
{
  v2 = sub_266589464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266587D38(uint64_t a1)
{
  v2 = sub_26658950C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266587D74(uint64_t a1)
{
  v2 = sub_26658950C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ParticipantRole.encode(to:)()
{
  OUTLINED_FUNCTION_15_3();
  v56 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D958, &qword_266670BA8);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v54 = v5;
  v55 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_8_9();
  v53 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D960, &qword_266670BB0);
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v51 = v13;
  v52 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_8_9();
  v50 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D968, &qword_266670BB8);
  v20 = OUTLINED_FUNCTION_3_0(v19);
  v49[2] = v21;
  v49[3] = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_4_12();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D970, &qword_266670BC0);
  OUTLINED_FUNCTION_3_0(v26);
  v49[1] = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v30, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D978, &qword_266670BC8);
  OUTLINED_FUNCTION_3_0(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v37, v38);
  v40 = v49 - v39;
  v41 = v2[3];
  v42 = v2[4];
  OUTLINED_FUNCTION_28_2(v2);
  sub_2665893BC();
  OUTLINED_FUNCTION_26_3();
  switch(v56)
  {
    case 1:
      OUTLINED_FUNCTION_12_5();
      sub_2665894B8();
      OUTLINED_FUNCTION_3_14();
      v43 = OUTLINED_FUNCTION_10_7();
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_20_4();
      sub_266589464();
      v46 = v50;
      OUTLINED_FUNCTION_3_14();
      v48 = v51;
      v47 = v52;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_25_3();
      sub_266589410();
      v46 = v53;
      OUTLINED_FUNCTION_3_14();
      v48 = v54;
      v47 = v55;
LABEL_5:
      (*(v48 + 8))(v46, v47);
      break;
    default:
      sub_26658950C();
      OUTLINED_FUNCTION_3_14();
      v43 = OUTLINED_FUNCTION_21_3();
      v45 = v26;
LABEL_7:
      v44(v43, v45);
      break;
  }

  (*(v34 + 8))(v40, v32);
  OUTLINED_FUNCTION_16_3();
}

void Snippet.ParticipantRole.init(from:)()
{
  OUTLINED_FUNCTION_15_3();
  v69 = v1;
  v4 = v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9A8, &qword_266670BD0);
  OUTLINED_FUNCTION_3_0(v68);
  v65 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_8_9();
  v67 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9B0, &qword_266670BD8);
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v64[8] = v13;
  v64[9] = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_8_9();
  v64[10] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9B8, &qword_266670BE0);
  v20 = OUTLINED_FUNCTION_3_0(v19);
  v64[6] = v21;
  v64[7] = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_4_12();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9C0, &qword_266670BE8);
  OUTLINED_FUNCTION_3_0(v26);
  v64[5] = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v30, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9C8, &qword_266670BF0);
  OUTLINED_FUNCTION_3_0(v32);
  v66 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v36, v37);
  v39 = v64 - v38;
  v40 = v4[3];
  v41 = v4[4];
  OUTLINED_FUNCTION_28_2(v4);
  sub_2665893BC();
  OUTLINED_FUNCTION_17_3();
  if (!v1)
  {
    v42 = OUTLINED_FUNCTION_11_8();
    v43 = sub_266575DD8(v42, 0);
    if (v45 != v44 >> 1)
    {
      OUTLINED_FUNCTION_9_8();
      if (v48 == v49)
      {
        __break(1u);
        return;
      }

      v50 = OUTLINED_FUNCTION_24_4(v46, v47);
      sub_266575DD4(v50);
      OUTLINED_FUNCTION_27_4();
      if (v0 == v43 >> 1)
      {
        v51 = v39;
        v52 = v65;
        switch(v51)
        {
          case 1uLL:
            OUTLINED_FUNCTION_12_5();
            sub_2665894B8();
            OUTLINED_FUNCTION_1_14();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2uLL:
            OUTLINED_FUNCTION_20_4();
            sub_266589464();
            OUTLINED_FUNCTION_1_14();
            swift_unknownObjectRelease();
LABEL_14:
            v53 = OUTLINED_FUNCTION_10_7();
            goto LABEL_15;
          case 3uLL:
            OUTLINED_FUNCTION_25_3();
            sub_266589410();
            OUTLINED_FUNCTION_16_5();
            swift_unknownObjectRelease();
            (*(v52 + 8))(v4, v2);
            goto LABEL_16;
          default:
            sub_26658950C();
            OUTLINED_FUNCTION_1_14();
            swift_unknownObjectRelease();
            v53 = OUTLINED_FUNCTION_10_7();
            v55 = v64[2];
LABEL_15:
            v54(v53, v55);
LABEL_16:
            v62 = OUTLINED_FUNCTION_7_8();
            v63(v62);
            __swift_destroy_boxed_opaque_existential_1(v69);
            break;
        }

        goto LABEL_10;
      }
    }

    v56 = sub_26666C848();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190) + 48);
    *v58 = &type metadata for Snippet.ParticipantRole;
    sub_26666C978();
    OUTLINED_FUNCTION_15_5();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_21_3();
    v61(v60, v32);
    v4 = v69;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_10:
  OUTLINED_FUNCTION_16_3();
}

void sub_266588678(_BYTE *a1@<X8>)
{
  Snippet.ParticipantRole.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t Snippet.Participant.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Snippet.Participant.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippet.Participant.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippet.Participant() + 28);
  v4 = sub_266668D68();
  v5 = OUTLINED_FUNCTION_18_2(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Snippet.Participant.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Snippet.Participant() + 28);
  v4 = sub_266668D68();
  OUTLINED_FUNCTION_18_2(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_2665888D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Snippet.Participant();
  v5 = OUTLINED_FUNCTION_18_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v13 = *(v12 + 28);
  _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
  v14 = [a1 person];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 displayName];
    v17 = sub_26666C308();
    v19 = v18;

    *v11 = v17;
    *(v11 + 8) = v19;
    if (sub_266666780())
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    *(v11 + 17) = v20;
    v21 = [a1 status];

    *(v11 + 16) = sub_266588B14(v21);
    sub_266589704(v11, a2);
    __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
    return sub_266589768(v11);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v23 = sub_26666C168();
    __swift_project_value_buffer(v23, qword_28156D7E8);
    v24 = sub_26666C148();
    v25 = sub_26666C608();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_266549000, v24, v25, "INEventParticipant does not have a person object", v26, 2u);
      MEMORY[0x266789690](v26, -1, -1);
    }

    v27 = sub_266668D68();
    OUTLINED_FUNCTION_18_2(v27);
    (*(v28 + 8))(v11 + v13);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_266588B14(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 0;
  }

  else
  {
    return (0x1020302010300uLL >> (8 * a1));
  }
}

uint64_t sub_266588B38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701605234 && a2 == 0xE400000000000000;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 25705 && a2 == 0xE200000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26666CAC8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266588C88(char a1)
{
  result = 0x4E79616C70736964;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 1701605234;
      break;
    case 3:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266588D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266588B38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266588D2C(uint64_t a1)
{
  v2 = sub_266589560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266588D68(uint64_t a1)
{
  v2 = sub_266589560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Participant.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9D0, &qword_266670BF8);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v19[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266589560();
  sub_26666CBE8();
  v15 = *v3;
  v16 = v3[1];
  v19[15] = 0;
  OUTLINED_FUNCTION_22_1();
  sub_26666CA48();
  if (!v2)
  {
    v19[14] = *(v3 + 16);
    OUTLINED_FUNCTION_12_5();
    sub_2665895B4();
    OUTLINED_FUNCTION_22_1();
    sub_26666CA78();
    v19[12] = *(v3 + 17);
    v19[11] = 2;
    sub_266589608();
    OUTLINED_FUNCTION_22_1();
    sub_26666CA78();
    v17 = *(type metadata accessor for Snippet.Participant() + 28);
    v19[10] = 3;
    sub_266668D68();
    sub_2665898A8(&qword_28007D9F0);
    OUTLINED_FUNCTION_22_1();
    sub_26666CA78();
  }

  return (*(v7 + 8))(v13, v5);
}

void Snippet.Participant.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13)
{
  OUTLINED_FUNCTION_15_3();
  v15 = v14;
  v40 = v16;
  v44 = sub_266668D68();
  v17 = OUTLINED_FUNCTION_3_0(v44);
  v42 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17, v21);
  OUTLINED_FUNCTION_1_0();
  v24 = v23 - v22;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9F8, &qword_266670C00);
  OUTLINED_FUNCTION_3_0(v41);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v27, v28);
  v29 = type metadata accessor for Snippet.Participant();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  OUTLINED_FUNCTION_1_0();
  v34 = v33 - v32;
  v43 = *(v35 + 36);
  _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
  v36 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_266589560();
  sub_26666CBD8();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    (*(v42 + 8))(v34 + v43, v44);
  }

  else
  {
    OUTLINED_FUNCTION_23_3();
    *v34 = sub_26666C9B8();
    *(v34 + 8) = v37;
    OUTLINED_FUNCTION_12_5();
    sub_26658965C();
    OUTLINED_FUNCTION_23_3();
    sub_26666C9E8();
    *(v34 + 16) = a13;
    sub_2665896B0();
    OUTLINED_FUNCTION_23_3();
    sub_26666C9E8();
    *(v34 + 17) = a11;
    sub_2665898A8(&qword_28007DA10);
    OUTLINED_FUNCTION_23_3();
    sub_26666C9E8();
    v38 = OUTLINED_FUNCTION_4_13();
    v39(v38);
    (*(v42 + 40))(v34 + v43, v24, v44);
    sub_266589704(v34, v40);
    __swift_destroy_boxed_opaque_existential_1(v15);
    sub_266589768(v34);
  }

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_266589318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_266668D68();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_2665893BC()
{
  result = qword_28007D980;
  if (!qword_28007D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D980);
  }

  return result;
}

unint64_t sub_266589410()
{
  result = qword_28007D988;
  if (!qword_28007D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D988);
  }

  return result;
}

unint64_t sub_266589464()
{
  result = qword_28007D990;
  if (!qword_28007D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D990);
  }

  return result;
}

unint64_t sub_2665894B8()
{
  result = qword_28007D998;
  if (!qword_28007D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D998);
  }

  return result;
}

unint64_t sub_26658950C()
{
  result = qword_28007D9A0;
  if (!qword_28007D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D9A0);
  }

  return result;
}

unint64_t sub_266589560()
{
  result = qword_28007D9D8;
  if (!qword_28007D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D9D8);
  }

  return result;
}

unint64_t sub_2665895B4()
{
  result = qword_28007D9E0;
  if (!qword_28007D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D9E0);
  }

  return result;
}

unint64_t sub_266589608()
{
  result = qword_28007D9E8;
  if (!qword_28007D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D9E8);
  }

  return result;
}

unint64_t sub_26658965C()
{
  result = qword_28007DA00;
  if (!qword_28007DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA00);
  }

  return result;
}

unint64_t sub_2665896B0()
{
  result = qword_28007DA08;
  if (!qword_28007DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA08);
  }

  return result;
}

uint64_t sub_266589704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Participant();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266589768(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Participant();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2665897C8()
{
  result = qword_28007DA18;
  if (!qword_28007DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA18);
  }

  return result;
}

unint64_t sub_266589820()
{
  result = qword_28007DA20;
  if (!qword_28007DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA20);
  }

  return result;
}

uint64_t sub_2665898A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_266668D68();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266589934()
{
  result = sub_266668D68();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_266589A28(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266589B48()
{
  result = qword_28007DA30;
  if (!qword_28007DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA30);
  }

  return result;
}

unint64_t sub_266589BA0()
{
  result = qword_28007DA38;
  if (!qword_28007DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA38);
  }

  return result;
}

unint64_t sub_266589BF8()
{
  result = qword_28007DA40;
  if (!qword_28007DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA40);
  }

  return result;
}

unint64_t sub_266589C50()
{
  result = qword_28007DA48;
  if (!qword_28007DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA48);
  }

  return result;
}

unint64_t sub_266589CA8()
{
  result = qword_28007DA50;
  if (!qword_28007DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA50);
  }

  return result;
}

unint64_t sub_266589D00()
{
  result = qword_28007DA58;
  if (!qword_28007DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA58);
  }

  return result;
}

unint64_t sub_266589D58()
{
  result = qword_28007DA60;
  if (!qword_28007DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA60);
  }

  return result;
}

unint64_t sub_266589DB0()
{
  result = qword_28007DA68;
  if (!qword_28007DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA68);
  }

  return result;
}

unint64_t sub_266589E08()
{
  result = qword_28007DA70;
  if (!qword_28007DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA70);
  }

  return result;
}