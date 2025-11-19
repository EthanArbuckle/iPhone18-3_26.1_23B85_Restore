uint64_t InternalXPCSuggestionsLoggerFactory.create(featureService:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t InternalXPCSuggestionsLoggerFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t InServiceSuggestionsDispatcher.dispatch(suggestions:presentationContext:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = *(*(sub_231605098() - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = sub_231605E98();
  v3[26] = v5;
  v6 = *(v5 - 8);
  v3[27] = v6;
  v7 = *(v6 + 64) + 15;
  v3[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603B0, &qword_231608A08);
  v3[29] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315CB130, 0, 0);
}

uint64_t sub_2315CB130()
{
  v106 = v1;
  v6 = *(v1 + 176);
  v7 = sub_231605E38();
  v8 = sub_2315CC124(v7);
  v9 = 0;
  *(v1 + 296) = v8;
  v10 = *(v8 + 32);
  *(v1 + 336) = v10;
  v11 = 1 << v10;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v100 = 136315138;
  if ((v12 & *(v8 + 64)) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v6 = *(v1 + 296);
LABEL_11:
    OUTLINED_FUNCTION_5_4(v9);
    v104 = v17;
    v3 = v19 | (v18 << 6);
    v20 = *(v6 + 48);
    v21 = sub_231606158();
    OUTLINED_FUNCTION_1_0(v21);
    v23 = v22;
    v25 = *(v24 + 72);
    v26 = OUTLINED_FUNCTION_11_2();
    v27(v26);
    v28 = OUTLINED_FUNCTION_2_4();
    v29(v28);
    *(v2 + v6) = v20;
    v30 = *(v104 + 16);
    sub_2315CCBA8(v2, v4);
    v31 = *(v4 + *(v0 + 48));

    if (*(v30 + 16))
    {
      v32 = sub_2315CD1E4(*(v1 + 272));
      if (v33)
      {
        break;
      }
    }

    v35 = *(v21 + 8);
    v5 = v21 + 8;
    v34 = v35;
    v35(*(v1 + 272), v3);
    if (qword_280FE9550 != -1)
    {
      swift_once();
    }

    v36 = *(v1 + 280);
    v37 = *(v1 + 240);
    v38 = sub_2316066E8();
    __swift_project_value_buffer(v38, qword_280FE9558);
    v39 = OUTLINED_FUNCTION_20_1();
    sub_2315CCBA8(v39, v37);
    v40 = sub_2316066C8();
    v4 = sub_231606978();
    v41 = os_log_type_enabled(v40, v4);
    v0 = *(v1 + 280);
    if (v41)
    {
      v103 = *(v1 + 280);
      v5 = v3;
      v42 = *(v1 + 248);
      log = *(v1 + 240);
      v43 = *(v1 + 232);
      v44 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v105[0] = v2;
      OUTLINED_FUNCTION_21_0(v2, v45, v46, v47, v48, v49, v50, v51, v95, v96, v97, v98, v100);
      v52 = *(v42 + *(v43 + 48));

      OUTLINED_FUNCTION_0_4();
      sub_2315CD5A8(&qword_27DD603B8, 255, v53);
      v3 = sub_231606BC8();
      v0 = v54;
      sub_2315CD2BC(log);
      v34(v42, v5);
      v6 = sub_2315B1574(v3, v0, v105);

      *(v44 + 4) = v6;
      _os_log_impl(&dword_2315AF000, v40, v4, "Unknown vehicle of %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v2);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_7_1();

      v55 = v103;
    }

    else
    {
      v6 = *(v1 + 240);

      sub_2315CD2BC(v6);
      v55 = v0;
    }

    sub_2315CD2BC(v55);
    v9 = *(v1 + 312);
    if (((*(v1 + 304) - 1) & *(v1 + 304)) == 0)
    {
LABEL_6:
      while (!__OFADD__(v9, 1))
      {
        OUTLINED_FUNCTION_13_1();
        if (v15 == v16)
        {
          OUTLINED_FUNCTION_8_0();

          OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_9_2();

          __asm { BRAA            X1, X16 }
        }

        v9 = v13 + 1;
        if (*(v6 + 8 * v14 + 64))
        {
          v9 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_14_1(v32);
  sub_2315B4648((v1 + 56), v1 + 16);
  v58 = *(v21 + 8);
  v5 = v21 + 8;
  v0 = v58;
  v58(v23, v3);
  if (qword_280FE9550 == -1)
  {
    goto LABEL_24;
  }

LABEL_31:
  OUTLINED_FUNCTION_0();
LABEL_24:
  v59 = *(v1 + 280);
  v61 = *(v1 + 256);
  v60 = *(v1 + 264);
  v62 = sub_2316066E8();
  __swift_project_value_buffer(v62, qword_280FE9558);
  v63 = OUTLINED_FUNCTION_20_1();
  sub_2315CCBA8(v63, v60);
  sub_2315CCBA8(v59, v61);
  sub_2315B4568(v1 + 16, v1 + 96);
  v64 = sub_2316066C8();
  v65 = sub_231606968();
  v66 = os_log_type_enabled(v64, v65);
  v67 = *(v1 + 256);
  v68 = *(v1 + 264);
  v99 = v3;
  if (v66)
  {
    loga = v64;
    v69 = OUTLINED_FUNCTION_16_1();
    v105[0] = swift_slowAlloc();
    *v69 = 136315650;
    sub_2315CCBA8(v68, v64);
    v70 = *(&v64->isa + *(v2 + 48));

    OUTLINED_FUNCTION_0_4();
    sub_2315CD5A8(v71, 255, v72);
    OUTLINED_FUNCTION_17_2();
    sub_231606BC8();
    OUTLINED_FUNCTION_23_1();
    (v0)(v64, v2);
    sub_2315B1574(v5, v3, v105);

    v73 = OUTLINED_FUNCTION_15_1();
    v81 = OUTLINED_FUNCTION_12_2(v73, v74, v75, v76, v77, v78, v79, v80, v95, v96);
    (v0)(v81);
    sub_231605DD8();
    v82 = OUTLINED_FUNCTION_17_2();
    v83 = MEMORY[0x231932D20](v82);
    v85 = v84;

    sub_2315CD2BC(v67);
    sub_2315B1574(v83, v85, v105);

    OUTLINED_FUNCTION_24_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603C0, &qword_231608A10);
    v86 = sub_2316067A8();
    v3 = v87;
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
    v88 = sub_2315B1574(v86, v3, v105);

    *(v69 + 24) = v88;
    _os_log_impl(&dword_2315AF000, loga, v65, "Dispatching %s of %s to %s", v69, 0x20u);
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
    sub_2315CD2BC(v67);
    sub_2315CD2BC(v68);
  }

  OUTLINED_FUNCTION_6_1();
  v89 = *(v3 + *(v0 + 48));
  sub_231605E48();
  sub_231605E78();
  sub_231605E88();
  sub_231605E58();
  (v0)(v3, v99);
  v90 = *(MEMORY[0x277D60538] + 4);
  v91 = swift_task_alloc();
  *(v1 + 320) = v91;
  *v91 = v1;
  OUTLINED_FUNCTION_1_4(v91);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821C5F58](v92);
}

uint64_t sub_2315CB818()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  (*(v2[27] + 8))(v2[28], v2[26]);
  if (v0)
  {
    v5 = sub_2315CC038;
  }

  else
  {
    v5 = sub_2315CB980;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2315CB980()
{
  v101 = v2;
  sub_2315CD2BC(*(v2 + 280));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v95 = 136315138;
  while (1)
  {
    v7 = *(v2 + 312);
    if (((*(v2 + 304) - 1) & *(v2 + 304)) == 0)
    {
      while (!__OFADD__(v7, 1))
      {
        OUTLINED_FUNCTION_13_1();
        if (v10 == v11)
        {
          OUTLINED_FUNCTION_8_0();

          OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_9_2();

          __asm { BRAA            X1, X16 }
        }

        v7 = v8 + 1;
        if (*(v1 + 8 * v9 + 64))
        {
          v7 = v9;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    v1 = *(v2 + 296);
LABEL_9:
    OUTLINED_FUNCTION_5_4(v7);
    v99 = v12;
    v4 = v14 | (v13 << 6);
    v15 = *(v1 + 48);
    v16 = sub_231606158();
    OUTLINED_FUNCTION_1_0(v16);
    v18 = v17;
    v20 = *(v19 + 72);
    v21 = OUTLINED_FUNCTION_11_2();
    v22(v21);
    v23 = OUTLINED_FUNCTION_2_4();
    v24(v23);
    *(v3 + v1) = v15;
    v25 = *(v99 + 16);
    sub_2315CCBA8(v3, v5);
    v26 = *(v5 + *(v0 + 48));

    if (*(v25 + 16))
    {
      v27 = sub_2315CD1E4(*(v2 + 272));
      if (v28)
      {
        break;
      }
    }

    v30 = *(v16 + 8);
    v6 = v16 + 8;
    v29 = v30;
    v30(*(v2 + 272), v4);
    if (qword_280FE9550 != -1)
    {
      swift_once();
    }

    v31 = *(v2 + 280);
    v32 = *(v2 + 240);
    v33 = sub_2316066E8();
    __swift_project_value_buffer(v33, qword_280FE9558);
    v34 = OUTLINED_FUNCTION_20_1();
    sub_2315CCBA8(v34, v32);
    v35 = sub_2316066C8();
    v5 = sub_231606978();
    v36 = os_log_type_enabled(v35, v5);
    v0 = *(v2 + 280);
    if (v36)
    {
      v98 = *(v2 + 280);
      v6 = v4;
      v37 = *(v2 + 248);
      log = *(v2 + 240);
      v38 = *(v2 + 232);
      v39 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v100[0] = v3;
      OUTLINED_FUNCTION_21_0(v3, v40, v41, v42, v43, v44, v45, v46, v90, v91, v92, v93, v95);
      v47 = *(v37 + *(v38 + 48));

      OUTLINED_FUNCTION_0_4();
      sub_2315CD5A8(&qword_27DD603B8, 255, v48);
      v4 = sub_231606BC8();
      v0 = v49;
      sub_2315CD2BC(log);
      v29(v37, v6);
      v1 = sub_2315B1574(v4, v0, v100);

      *(v39 + 4) = v1;
      _os_log_impl(&dword_2315AF000, v35, v5, "Unknown vehicle of %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v3);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_7_1();

      v50 = v98;
    }

    else
    {
      v1 = *(v2 + 240);

      sub_2315CD2BC(v1);
      v50 = v0;
    }

    sub_2315CD2BC(v50);
  }

  OUTLINED_FUNCTION_14_1(v27);
  sub_2315B4648((v2 + 56), v2 + 16);
  v53 = *(v16 + 8);
  v6 = v16 + 8;
  v0 = v53;
  v53(v18, v4);
  if (qword_280FE9550 == -1)
  {
    goto LABEL_21;
  }

LABEL_28:
  OUTLINED_FUNCTION_0();
LABEL_21:
  v54 = *(v2 + 280);
  v56 = *(v2 + 256);
  v55 = *(v2 + 264);
  v57 = sub_2316066E8();
  __swift_project_value_buffer(v57, qword_280FE9558);
  v58 = OUTLINED_FUNCTION_20_1();
  sub_2315CCBA8(v58, v55);
  sub_2315CCBA8(v54, v56);
  sub_2315B4568(v2 + 16, v2 + 96);
  v59 = sub_2316066C8();
  v60 = sub_231606968();
  v61 = os_log_type_enabled(v59, v60);
  v62 = *(v2 + 256);
  v63 = *(v2 + 264);
  v94 = v4;
  if (v61)
  {
    loga = v59;
    v64 = OUTLINED_FUNCTION_16_1();
    v100[0] = swift_slowAlloc();
    *v64 = 136315650;
    sub_2315CCBA8(v63, v59);
    v65 = *(&v59->isa + *(v3 + 48));

    OUTLINED_FUNCTION_0_4();
    sub_2315CD5A8(v66, 255, v67);
    OUTLINED_FUNCTION_17_2();
    sub_231606BC8();
    OUTLINED_FUNCTION_23_1();
    (v0)(v59, v3);
    sub_2315B1574(v6, v4, v100);

    v68 = OUTLINED_FUNCTION_15_1();
    v76 = OUTLINED_FUNCTION_12_2(v68, v69, v70, v71, v72, v73, v74, v75, v90, v91);
    (v0)(v76);
    sub_231605DD8();
    v77 = OUTLINED_FUNCTION_17_2();
    v78 = MEMORY[0x231932D20](v77);
    v80 = v79;

    sub_2315CD2BC(v62);
    sub_2315B1574(v78, v80, v100);

    OUTLINED_FUNCTION_24_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603C0, &qword_231608A10);
    v81 = sub_2316067A8();
    v4 = v82;
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
    v83 = sub_2315B1574(v81, v4, v100);

    *(v64 + 24) = v83;
    _os_log_impl(&dword_2315AF000, loga, v60, "Dispatching %s of %s to %s", v64, 0x20u);
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
    sub_2315CD2BC(v62);
    sub_2315CD2BC(v63);
  }

  OUTLINED_FUNCTION_6_1();
  v84 = *(v4 + *(v0 + 48));
  sub_231605E48();
  sub_231605E78();
  sub_231605E88();
  sub_231605E58();
  (v0)(v4, v94);
  v85 = *(MEMORY[0x277D60538] + 4);
  v86 = swift_task_alloc();
  *(v2 + 320) = v86;
  *v86 = v2;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821C5F58](v87);
}

uint64_t sub_2315CC038()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[28];
  v10 = v0[25];

  sub_2315CD2BC(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_14();
  v12 = v0[41];

  return v11();
}

uint64_t sub_2315CC124(uint64_t a1)
{
  v2 = sub_231606158();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_231605DD8();
  v6 = *(*(v51 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v51);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v37 - v9;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  v47 = v13;
  v48 = v12;
  v46 = v13 + 16;
  v49 = (v13 + 32);
  v40 = v3 + 32;
  v41 = v3;
  v39 = (v3 + 8);
  v38 = xmmword_231608640;
  v42 = v2;
  v43 = a1;
  while (1)
  {
    if (v48 == v10)
    {

      return v11;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v14 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v15 = *(v47 + 72);
    (*(v47 + 16))(v50, a1 + v14 + v15 * v10, v51);
    v16 = v52;
    sub_231605DA8();
    v18 = sub_2315CD1E4(v16);
    v19 = v11[2];
    v20 = (v17 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = v17;
    if (v11[3] < v19 + v20)
    {
      sub_2315DB554();
      v11 = v53;
      v22 = sub_2315CD1E4(v52);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v18 = v22;
    }

    if (v21)
    {
      (*v39)(v52, v2);
      v24 = v11[7];
      v25 = *v49;
      (*v49)(v45, v50, v51);
      v26 = *(v24 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v18) = v26;
      v44 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v26 + 16);
        sub_2315DA0CC();
        v26 = v34;
        *(v24 + 8 * v18) = v34;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_2315DA0CC();
        v26 = v35;
        *(v24 + 8 * v18) = v35;
      }

      v2 = v42;
      *(v26 + 16) = v28 + 1;
      v44((v26 + v14 + v28 * v15), v45, v51);
      a1 = v43;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603F0, &qword_2316095B0);
      v29 = swift_allocObject();
      *(v29 + 16) = v38;
      (*v49)((v29 + v14), v50, v51);
      v11[(v18 >> 6) + 8] |= 1 << v18;
      (*(v41 + 32))(v11[6] + *(v41 + 72) * v18, v52, v2);
      *(v11[7] + 8 * v18) = v29;
      v30 = v11[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v11[2] = v32;
    }

    ++v10;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_231606C08();
  __break(1u);
  return result;
}

uint64_t static InServiceSuggestionsDispatcher.create(eventDispatcher:clock:selfLogger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603C8, &qword_231608A18);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603D0, &unk_231608A20) - 8);
  v35 = *(*v6 + 72);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2316089F0;
  v8 = v36 + v7;
  v9 = (v36 + v7 + v6[14]);
  v10 = *MEMORY[0x277D607E8];
  v11 = sub_231605CD8();
  v34 = *(*(v11 - 8) + 104);
  v34(v36 + v7, v10, v11);
  v12 = *MEMORY[0x277D60BA0];
  v31 = *MEMORY[0x277D60BA0];
  v13 = sub_231606158();
  v30 = *(*(v13 - 8) + 104);
  (v30)(v36 + v7, v12, v13);
  sub_2315B4568(a1, v41);
  sub_2315B4568(a2, v40);
  v14 = type metadata accessor for InAppEventDispatcher();
  v15 = swift_allocObject();
  sub_2315B4648(v41, v15 + 16);
  sub_2315B4648(v40, v15 + 56);
  v9[3] = v14;
  v16 = sub_2315CD5A8(qword_280FE8F28, 255, type metadata accessor for InAppEventDispatcher);
  v9[4] = v16;
  *v9 = v15;
  v17 = (v8 + v35 + v6[14]);
  v34(v8 + v35, *MEMORY[0x277D607E0], v11);
  (v30)(v8 + v35, v31, v13);
  sub_2315B4568(a1, v41);
  sub_2315B4568(a2, v40);
  v18 = swift_allocObject();
  sub_2315B4648(v41, v18 + 16);
  sub_2315B4648(v40, v18 + 56);
  v17[3] = v14;
  v17[4] = v16;
  *v17 = v18;
  v19 = (v8 + 2 * v35 + v6[14]);
  v20 = *MEMORY[0x277D60B78];
  v30();
  v21 = sub_231605C08();
  sub_2315B4568(a3, v41);
  v22 = sub_231605BF8();
  v23 = MEMORY[0x277D60678];
  v19[3] = v21;
  v19[4] = v23;
  *v19 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603C0, &qword_231608A10);
  OUTLINED_FUNCTION_0_4();
  sub_2315CD5A8(v24, 255, v25);
  v26 = sub_231606728();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  a4[3] = v38;
  result = sub_2315CD5A8(qword_280FE9298, v28, type metadata accessor for InServiceSuggestionsDispatcher);
  a4[4] = result;
  *a4 = v27;
  return result;
}

uint64_t InServiceSuggestionsDispatcher.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InServiceSuggestionsDispatcher.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2315CC98C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2315CCA34;

  return InServiceSuggestionsDispatcher.dispatch(suggestions:presentationContext:)(a1, a2);
}

uint64_t sub_2315CCA34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_2315CCB4C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2315B1574(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2315CCBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603B0, &qword_231608A08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315CCC18(uint64_t a1, unint64_t a2)
{
  v4 = sub_2315CCC64(a1, a2);
  sub_2315CCD7C(&unk_2846231C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2315CCC64(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_231606808())
  {
    result = sub_2315CCE60(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_231606A18();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_231606A68();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2315CCD7C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2315CCED0(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2315CCE60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603E0, &qword_231608AB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2315CCED0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603E0, &qword_231608AB0);
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

_BYTE **sub_2315CCFC4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_2315CCFD4()
{
  OUTLINED_FUNCTION_19_1();
  sub_231605888();
  v1 = MEMORY[0x277D60508];
  sub_2315CD5A8(&qword_27DD601F8, 255, MEMORY[0x277D60508]);
  v2 = sub_231606758();
  return sub_2315CD414(v0, v2, MEMORY[0x277D60508], &qword_27DD603D8, v1, MEMORY[0x277D60518]);
}

unint64_t sub_2315CD0A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_231606C68();
  sub_2316067E8();
  v6 = sub_231606C88();

  return sub_2315CD360(a1, a2, v6);
}

unint64_t sub_2315CD118()
{
  OUTLINED_FUNCTION_19_1();
  sub_2316061C8();
  v1 = MEMORY[0x277D60C18];
  sub_2315CD5A8(&qword_280FE95C8, 255, MEMORY[0x277D60C18]);
  v2 = sub_231606758();
  return sub_2315CD414(v0, v2, MEMORY[0x277D60C18], &qword_280FE95C0, v1, MEMORY[0x277D60C28]);
}

unint64_t sub_2315CD1E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_231606158();
  v5 = MEMORY[0x277D60BA8];
  sub_2315CD5A8(&qword_280FE95D8, 255, MEMORY[0x277D60BA8]);
  v6 = sub_231606758();
  return sub_2315CD414(a1, v6, MEMORY[0x277D60BA8], &qword_27DD603E8, v5, MEMORY[0x277D60BC0]);
}

uint64_t sub_2315CD2BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603B0, &qword_231608A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2315CD360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_231606BD8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2315CD414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v20 = a1;
  v8 = a3(0);
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - v14;
  v25 = v6 + 64;
  v21 = v6;
  v16 = ~(-1 << *(v6 + 32));
  for (i = a2 & v16; ((1 << i) & *(v25 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v11 + 16))(v15, *(v21 + 48) + *(v11 + 72) * i, v8);
    sub_2315CD5A8(v22, 255, v23);
    v18 = sub_231606778();
    (*(v11 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2315CD5A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_16_1()
{
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return sub_2315CD2BC(v0);
}

uint64_t sub_2315CD6C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2316066E8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2316066D8();
}

uint64_t sub_2315CD75C()
{
  v0 = sub_2316066E8();
  __swift_allocate_value_buffer(v0, qword_280FE9558);
  __swift_project_value_buffer(v0, qword_280FE9558);
  return sub_2316066D8();
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

unint64_t sub_2315CD864(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60578, &qword_231609038);
    v2 = sub_231606B38();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + 8 * v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B8, &unk_231607A80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
    swift_dynamicCast();
    sub_2315B55D4(v25, v27);
    sub_2315B55D4(v27, v28);
    sub_2315B55D4(v28, &v26);
    result = sub_2315CD0A0(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      result = sub_2315B55D4(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_2315B55D4(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_2315CDAD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60578, &qword_231609038);
    v2 = sub_231606B38();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_2315B2BB4(*(a1 + 56) + 32 * v11, v31);
    v30.n128_u64[0] = v13;
    v30.n128_u64[1] = v14;
    v28[2] = v30;
    v29[0] = v31[0];
    v29[1] = v31[1];
    v15 = v30;
    sub_2315B55D4(v29, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
    swift_dynamicCast();
    sub_2315B55D4(v25, v27);
    sub_2315B55D4(v27, v28);
    sub_2315B55D4(v28, &v26);
    result = sub_2315CD0A0(v15.n128_i64[0], v15.n128_i64[1]);
    v16 = result;
    if (v17)
    {
      v18 = v2[6] + 16 * result;
      v19 = *(v18 + 8);
      *v18 = v15;

      v20 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      result = sub_2315B55D4(&v26, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_2315B55D4(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_2315CDD50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60518, &qword_231608FD8);
    v2 = sub_231606B38();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_2315DC54C(*(a1 + 56) + 40 * v11, v32);
    v31.n128_u64[0] = v13;
    v31.n128_u64[1] = v14;
    v28[2] = v31;
    v29[0] = v32[0];
    v29[1] = v32[1];
    v30 = v33;
    v15 = v31;
    sub_2315B540C(v29, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60520, &qword_231608FE0);
    swift_dynamicCast();
    sub_2315B55D4(v25, v27);
    sub_2315B55D4(v27, v28);
    sub_2315B55D4(v28, &v26);
    result = sub_2315CD0A0(v15.n128_i64[0], v15.n128_i64[1]);
    v16 = result;
    if (v17)
    {
      v18 = v2[6] + 16 * result;
      v19 = *(v18 + 8);
      *v18 = v15;

      v20 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      result = sub_2315B55D4(&v26, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_2315B55D4(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

__n128 *OfflineGenerationInteractionBuilder.__allocating_init(intentQueries:executionParameters:deviceState:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[1].n128_u64[0] = a1;
  v6[1].n128_u64[1] = a2;
  sub_2315B540C(a3, v6 + 2);
  return v6;
}

__n128 *OfflineGenerationInteractionBuilder.init(intentQueries:executionParameters:deviceState:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3[1].n128_u64[0] = a1;
  v3[1].n128_u64[1] = a2;
  sub_2315B540C(a3, v3 + 2);
  return v3;
}

uint64_t OfflineGenerationInteractionBuilder.build(requestId:)()
{
  OUTLINED_FUNCTION_8();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60410, &qword_231608AE8);
  OUTLINED_FUNCTION_24(v5);
  v7 = *(v6 + 64);
  v1[11] = OUTLINED_FUNCTION_23_0();
  v8 = sub_231606128();
  v1[12] = v8;
  OUTLINED_FUNCTION_4(v8);
  v1[13] = v9;
  v11 = *(v10 + 64);
  v1[14] = OUTLINED_FUNCTION_23_0();
  v12 = sub_231605098();
  OUTLINED_FUNCTION_24(v12);
  v14 = *(v13 + 64);
  v1[15] = OUTLINED_FUNCTION_23_0();
  v15 = sub_2316050C8();
  v1[16] = v15;
  OUTLINED_FUNCTION_4(v15);
  v1[17] = v16;
  v18 = *(v17 + 64);
  v1[18] = OUTLINED_FUNCTION_23_0();
  v19 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_2315CE1A4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[10];
  v5 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  OUTLINED_FUNCTION_53();
  sub_231605F48();
  sub_2316050A8();
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_56();
  v8(v7);
  sub_231605648();
  sub_231605628();
  v9 = sub_231605638();

  v39 = sub_231605618();

  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v10 = v0[10];
  v11 = sub_2316066E8();
  v12 = __swift_project_value_buffer(v11, qword_280FE9630);

  v13 = sub_2316066C8();
  v14 = sub_231606968();
  v15 = OUTLINED_FUNCTION_51(v14);
  v16 = v0[10];
  if (v15)
  {
    v17 = OUTLINED_FUNCTION_60();
    *v17 = 134217984;
    *(v17 + 4) = *(*(v16 + 16) + 16);

    _os_log_impl(&dword_2315AF000, v13, v12, "Building Interaction for OfflineGeneration with intentQuery: %ld", v17, 0xCu);
    OUTLINED_FUNCTION_29();
  }

  else
  {
    v18 = v0[10];
  }

  v40 = v0[18];
  v19 = v0[14];
  v20 = v0[15];
  v21 = v0[13];
  v35 = v0[12];
  v23 = v0[10];
  v22 = v0[11];
  v38 = v0[8];
  v36 = v0[9];
  v37 = v0[7];

  sub_231605088();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  sub_231606728();
  v24 = *(v23 + 24);

  sub_2315CDAD0(v39);

  sub_2315DC54C((v4 + 4), (v0 + 2));
  sub_231606518();
  sub_231606058();
  OUTLINED_FUNCTION_5_5();
  sub_2315DC670(v25, v26);
  (*(v21 + 104))(v19, *MEMORY[0x277D60AC8], v35);
  *v22 = *(v23 + 16);
  v27 = *MEMORY[0x277D60DF8];
  v28 = sub_231606268();
  OUTLINED_FUNCTION_5_1(v28);
  (*(v29 + 104))(v22, v27, v28);
  v30 = OUTLINED_FUNCTION_67();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);

  sub_231605DF8();

  OUTLINED_FUNCTION_13();

  return v33();
}

void *OfflineGenerationInteractionBuilder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  return v0;
}

uint64_t OfflineGenerationInteractionBuilder.__deallocating_deinit()
{
  OfflineGenerationInteractionBuilder.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2315CE58C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return OfflineGenerationInteractionBuilder.build(requestId:)();
}

uint64_t EventDrivenInteractionBuilder.__allocating_init(event:inAppIdentifier:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 48);
  v6 = *(v3 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_83();
  EventDrivenInteractionBuilder.init(event:inAppIdentifier:deviceState:)(v8, v9, a3);
  return v7;
}

__n128 *EventDrivenInteractionBuilder.init(event:inAppIdentifier:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2315B540C(a1, v3 + 1);
  v6 = OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_inAppIdentifier;
  v7 = sub_2316061C8();
  OUTLINED_FUNCTION_5_1(v7);
  (*(v8 + 32))(v3 + v6, a2);
  sub_2315B540C(a3, (v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState));
  return v3;
}

uint64_t EventDrivenInteractionBuilder.build(requestId:)()
{
  OUTLINED_FUNCTION_8();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v5 = sub_231606128();
  v1[28] = v5;
  OUTLINED_FUNCTION_4(v5);
  v1[29] = v6;
  v8 = *(v7 + 64);
  v1[30] = OUTLINED_FUNCTION_23_0();
  v9 = sub_231606238();
  v1[31] = v9;
  OUTLINED_FUNCTION_4(v9);
  v1[32] = v10;
  v12 = *(v11 + 64);
  v1[33] = OUTLINED_FUNCTION_23_0();
  v13 = sub_231605098();
  OUTLINED_FUNCTION_24(v13);
  v15 = *(v14 + 64);
  v1[34] = OUTLINED_FUNCTION_23_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60410, &qword_231608AE8);
  OUTLINED_FUNCTION_24(v16);
  v18 = *(v17 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v19 = sub_2316060C8();
  v1[37] = v19;
  OUTLINED_FUNCTION_4(v19);
  v1[38] = v20;
  v22 = *(v21 + 64);
  v1[39] = OUTLINED_FUNCTION_23_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60418, &unk_231608B00);
  OUTLINED_FUNCTION_24(v23);
  v25 = *(v24 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v26 = sub_2316050C8();
  v1[44] = v26;
  OUTLINED_FUNCTION_4(v26);
  v1[45] = v27;
  v29 = *(v28 + 64);
  v1[46] = OUTLINED_FUNCTION_23_0();
  v30 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v30);
}

uint64_t sub_2315CE960()
{
  v99 = v0;
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[27];
  v6 = *(v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState + 32);
  v94 = v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState;
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState), *(v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState + 24));
  sub_231605F48();
  sub_2315CF1B0();
  (*(v2 + 8))(v1, v4);
  v93 = v5;
  sub_2315DC54C(v5 + 16, (v0 + 14));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
  OUTLINED_FUNCTION_28();
  v7 = sub_231606348();
  v8 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v3, v8 ^ 1u, 1, v7);
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v9 = v0[42];
  v10 = v0[43];
  v11 = sub_2316066E8();
  __swift_project_value_buffer(v11, qword_280FE9630);
  v12 = OUTLINED_FUNCTION_36();
  sub_2315DC458(v12, v13, v14, v15);
  v16 = sub_2316066C8();
  v17 = sub_231606968();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[42];
  if (v18)
  {
    v20 = v0[41];
    v21 = OUTLINED_FUNCTION_60();
    v22 = OUTLINED_FUNCTION_63();
    v95[0] = v22;
    *v21 = 136315138;
    sub_2315DC458(v19, v20, &qword_27DD60418, &unk_231608B00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v7);
    v24 = v0[41];
    if (EnumTagSinglePayload == 1)
    {
      sub_2315B2F7C(v0[41], &qword_27DD60418, &unk_231608B00);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v28 = v0[38];
      v27 = v0[39];
      v91 = v0[37];
      sub_231606328();
      OUTLINED_FUNCTION_23(v7);
      (*(v29 + 8))(v24, v7);
      v26 = sub_231606088();
      v25 = v30;
      (*(v28 + 8))(v27, v91);
    }

    sub_2315B2F7C(v0[42], &qword_27DD60418, &unk_231608B00);
    v31 = sub_2315B1574(v26, v25, v95);

    *(v21 + 4) = v31;
    _os_log_impl(&dword_2315AF000, v16, v17, "Building Interaction for OnInAppConnectionEvent with InAppDetails: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    sub_2315B2F7C(v19, &qword_27DD60418, &unk_231608B00);
  }

  v32 = v0[43];
  v33 = v0[40];
  v34 = v0[36];
  v35 = sub_231606268();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v39 = OUTLINED_FUNCTION_72();
  sub_2315DC458(v39, v40, v41, v42);
  v43 = __swift_getEnumTagSinglePayload(v33, 1, v7);
  v44 = v0[40];
  if (v43 == 1)
  {
    sub_2315B2F7C(v0[40], &qword_27DD60418, &unk_231608B00);
  }

  else
  {
    v46 = v0[38];
    v45 = v0[39];
    v47 = v0[37];
    sub_231606328();
    OUTLINED_FUNCTION_23(v7);
    (*(v48 + 8))(v44, v7);
    v49 = sub_231606098();
    (*(v46 + 8))(v45, v47);
    if (v49)
    {
      v50 = v0[36];
      sub_2315B2F7C(v50, &qword_27DD60410, &qword_231608AE8);
      *v50 = v49;
      v51 = *MEMORY[0x277D60DF8];
      OUTLINED_FUNCTION_23(v35);
      (*(v52 + 104))(v50);
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v35);
    }
  }

  v86 = v0[43];
  v87 = v0[46];
  v88 = v0[42];
  v89 = v0[41];
  v90 = v0[40];
  v92 = v0[39];
  v81 = v0[36];
  v82 = v0[35];
  v53 = v0[32];
  v76 = v0[33];
  v77 = v0[31];
  v54 = v0[29];
  v78 = v0[30];
  v55 = v0[27];
  v79 = v0[28];
  v80 = v0[34];
  v85 = v0[25];
  v83 = v0[26];
  v84 = v0[24];

  sub_231605088();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  OUTLINED_FUNCTION_80();
  sub_231606728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60428, &qword_231608B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231608640;
  *(inited + 32) = 0x746E657665;
  *(inited + 40) = 0xE500000000000000;
  v58 = *(v55 + 40);
  v57 = *(v55 + 48);
  __swift_project_boxed_opaque_existential_1((v93 + 16), v58);
  *(inited + 72) = v58;
  *(inited + 80) = *(v57 + 8);
  *(inited + 88) = *(v57 + 16);
  __swift_allocate_boxed_opaque_existential_1((inited + 48));
  OUTLINED_FUNCTION_23(v58);
  (*(v59 + 16))();
  v60 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_80();
  sub_231606728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60430, &qword_231608B18);
  OUTLINED_FUNCTION_28();
  v61 = sub_2316060E8();
  OUTLINED_FUNCTION_4(v61);
  v63 = *(v62 + 72);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  *(swift_allocObject() + 16) = xmmword_231608640;
  v66 = sub_2316061A8();
  v96 = v60;
  v97 = MEMORY[0x277D83808];
  v98 = MEMORY[0x277D837D8];
  v95[0] = v66;
  v95[1] = v67;
  (*(v53 + 104))(v76, *MEMORY[0x277D60DB0], v77);
  sub_2316060D8();
  sub_2315DC54C(v94, (v0 + 19));
  sub_2316061A8();
  v68 = sub_231606588();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_72();
  v71 = sub_231606578();
  v96 = v68;
  v97 = sub_2315DC670(&qword_280FE9548, MEMORY[0x277D61360]);
  v95[0] = v71;
  (*(v54 + 104))(v78, *MEMORY[0x277D60AD0], v79);
  v72 = OUTLINED_FUNCTION_84();
  sub_2315DC458(v72, v73, &qword_27DD60410, &qword_231608AE8);
  sub_231605E08();
  sub_2315B2F7C(v81, &qword_27DD60410, &qword_231608AE8);
  sub_2315B2F7C(v86, &qword_27DD60418, &unk_231608B00);

  OUTLINED_FUNCTION_13();

  return v74();
}

unint64_t sub_2315CF1B0()
{
  sub_2316050A8();
  sub_231605648();
  sub_231605628();
  v0 = sub_231605638();

  v1 = sub_231605618();

  v2 = sub_2315CDAD0(v1);

  return v2;
}

uint64_t EventDrivenInteractionBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_inAppIdentifier;
  v2 = sub_2316061C8();
  OUTLINED_FUNCTION_5_1(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState));
  return v0;
}

uint64_t EventDrivenInteractionBuilder.__deallocating_deinit()
{
  EventDrivenInteractionBuilder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2315CF2FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4740;

  return EventDrivenInteractionBuilder.build(requestId:)();
}

SiriSuggestionsSupport::CatPropertyKeys_optional __swiftcall CatPropertyKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x69747265706F7270 && stringValue._object == 0xEA00000000007365;
  if (v5 || (sub_231606BD8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x614E656369766564 && object == 0xEA0000000000656DLL)
  {

    v7 = 1;
  }

  else
  {
    v9 = sub_231606BD8();

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t CatPropertyKeys.hashValue.getter()
{
  v1 = *v0;
  sub_231606C68();
  MEMORY[0x231933130](v1);
  return sub_231606C88();
}

uint64_t CatPropertyKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x614E656369766564;
  }

  else
  {
    result = 0x69747265706F7270;
  }

  *v0;
  return result;
}

uint64_t sub_2315CF588(uint64_t a1)
{
  v2 = sub_2315DC61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2315CF5C4(uint64_t a1)
{
  v2 = sub_2315DC61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2315CF600@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v166 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60478, &qword_231609E40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v153 = &v141[-v7];
  v159 = sub_231606278();
  v161 = *(v159 - 8);
  v8 = *(v161 + 64);
  MEMORY[0x28223BE20](v159);
  v160 = &v141[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v164 = sub_231606248();
  v10 = *(v164 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v164);
  v14 = &v141[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v150 = &v141[-v16];
  MEMORY[0x28223BE20](v15);
  v162 = &v141[-v17];
  v18 = sub_2316054A8();
  v19 = *(v18 - 8);
  v168 = v18;
  v169 = v19;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v149 = &v141[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v155 = &v141[-v23];
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604B8, &qword_231608F60);
  v24 = *(*(v167 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v167);
  v158 = &v141[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v28 = &v141[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604C0, &qword_231608F68);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v154 = &v141[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v151 = &v141[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v157 = &v141[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v156 = &v141[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v141[-v40];
  MEMORY[0x28223BE20](v39);
  v43 = &v141[-v42];
  v44 = sub_231606128();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v152 = &v141[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v47);
  v50 = &v141[-v49];
  sub_2315DC458(a2, v171, &qword_27DD60350, &qword_231608800);
  v165 = v50;
  v163 = v10;
  v148 = v14;
  if (v172)
  {
    v147 = v43;
    v51 = v45;
    v52 = v44;
    v53 = a3;
    sub_2315B540C(v171, &v173);
    v54 = v174;
    v55 = v175;
    __swift_project_boxed_opaque_existential_1(&v173, v174);
    v56 = MEMORY[0x2319328F0](v54, v55);
    v58 = v57;
    sub_231606508();
    v59 = MEMORY[0x231932160]();
    v61 = v60;

    if (v56 == v59 && v58 == v61)
    {
    }

    else
    {
      v63 = sub_231606BD8();

      if ((v63 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v173);
        a3 = v53;
        v44 = v52;
        v45 = v51;
        v50 = v165;
        v43 = v147;
        goto LABEL_9;
      }
    }

    (*(v51 + 104))(v53, *MEMORY[0x277D60AE0], v52);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v173);
  }

  sub_2315B2F7C(v171, &qword_27DD60350, &qword_231608800);
LABEL_9:
  v64 = *(v45 + 104);
  v64(v50, *MEMORY[0x277D60AD8], v44);
  sub_2315DC458(v166, v171, &qword_27DD60468, &qword_231609E50);
  if (v172)
  {
    v144 = v64;
    v145 = v45 + 104;
    v147 = v44;
    v166 = a3;
    sub_2315B540C(v171, &v173);
    __swift_project_boxed_opaque_existential_1(&v173, v174);
    sub_231605D18();
    v65 = v168;
    v66 = *(v169 + 104);
    v66(v41, *MEMORY[0x277D61C80], v168);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v65);
    v67 = *(v167 + 48);
    sub_2315DC458(v43, v28, &qword_27DD604C0, &qword_231608F68);
    sub_2315DC458(v41, &v28[v67], &qword_27DD604C0, &qword_231608F68);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v65);
    v146 = v45;
    if (EnumTagSinglePayload == 1)
    {
      sub_2315B2F7C(v41, &qword_27DD604C0, &qword_231608F68);
      v69 = v65;
      if (__swift_getEnumTagSinglePayload(&v28[v67], 1, v65) == 1)
      {
        sub_2315B2F7C(v28, &qword_27DD604C0, &qword_231608F68);
LABEL_32:
        v96 = v152;
        sub_231606118();
        v50 = v165;
        v44 = v147;
        (*(v45 + 40))(v165, v96, v147);
LABEL_50:
        v132 = v43;
        if (qword_280FE9628 != -1)
        {
          swift_once();
        }

        v133 = sub_2316066E8();
        __swift_project_value_buffer(v133, qword_280FE9630);
        v134 = sub_2316066C8();
        v135 = sub_231606958();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v170 = v137;
          *v136 = 136315138;
          swift_beginAccess();
          sub_2315DC670(&qword_280FE95E0, MEMORY[0x277D60AE8]);
          v138 = sub_231606BC8();
          v140 = sub_2315B1574(v138, v139, &v170);

          *(v136 + 4) = v140;
          _os_log_impl(&dword_2315AF000, v134, v135, "Inferred invocationType as: %s", v136, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v137);
          MEMORY[0x231933730](v137, -1, -1);
          MEMORY[0x231933730](v136, -1, -1);
        }

        sub_2315B2F7C(v132, &qword_27DD604C0, &qword_231608F68);
        a3 = v166;
        __swift_destroy_boxed_opaque_existential_1Tm(&v173);
        v45 = v146;
        goto LABEL_55;
      }
    }

    else
    {
      v71 = v156;
      sub_2315DC458(v28, v156, &qword_27DD604C0, &qword_231608F68);
      if (__swift_getEnumTagSinglePayload(&v28[v67], 1, v65) != 1)
      {
        v92 = v169;
        v93 = &v28[v67];
        v94 = v155;
        (*(v169 + 32))(v155, v93, v65);
        sub_2315DC670(&qword_280FE9620, MEMORY[0x277D61CA8]);
        v142 = sub_231606778();
        v143 = v66;
        v95 = *(v92 + 8);
        v95(v94, v65);
        sub_2315B2F7C(v41, &qword_27DD604C0, &qword_231608F68);
        v66 = v143;
        v95(v71, v65);
        sub_2315B2F7C(v28, &qword_27DD604C0, &qword_231608F68);
        v69 = v65;
        if (v142)
        {
          goto LABEL_32;
        }

LABEL_19:
        v72 = v157;
        v66(v157, *MEMORY[0x277D61C78], v69);
        __swift_storeEnumTagSinglePayload(v72, 0, 1, v69);
        v73 = *(v167 + 48);
        v74 = v158;
        sub_2315DC458(v43, v158, &qword_27DD604C0, &qword_231608F68);
        v75 = v74;
        sub_2315DC458(v72, &v74[v73], &qword_27DD604C0, &qword_231608F68);
        if (__swift_getEnumTagSinglePayload(v74, 1, v69) == 1)
        {
          sub_2315B2F7C(v72, &qword_27DD604C0, &qword_231608F68);
          v76 = __swift_getEnumTagSinglePayload(&v74[v73], 1, v69);
          v44 = v147;
          v50 = v165;
          v77 = v160;
          v78 = v161;
          v79 = v163;
          if (v76 == 1)
          {
            sub_2315B2F7C(v75, &qword_27DD604C0, &qword_231608F68);
LABEL_38:
            v118 = *MEMORY[0x277D60E68];
            v119 = sub_231606288();
            v120 = v162;
            (*(*(v119 - 8) + 104))(v162, v118, v119);
            v121 = v164;
            (*(v79 + 104))(v120, *MEMORY[0x277D60DC0], v164);
            v122 = v159;
            (*(v78 + 104))(v77, *MEMORY[0x277D60E18], v159);
LABEL_49:
            (*(v146 + 8))(v50, v44);
            v131 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604C8, &qword_231608F70) + 48);
            (*(v79 + 32))(v50, v120, v121);
            (*(v78 + 32))(&v50[v131], v77, v122);
            v144(v50, *MEMORY[0x277D60AC0], v44);
            goto LABEL_50;
          }
        }

        else
        {
          v80 = v151;
          sub_2315DC458(v74, v151, &qword_27DD604C0, &qword_231608F68);
          if (__swift_getEnumTagSinglePayload(&v74[v73], 1, v69) != 1)
          {
            v112 = v169;
            v113 = v75 + v73;
            v114 = v155;
            (*(v169 + 32))(v155, v113, v69);
            sub_2315DC670(&qword_280FE9620, MEMORY[0x277D61CA8]);
            v115 = v75;
            LODWORD(v167) = sub_231606778();
            v116 = v43;
            v117 = *(v112 + 8);
            v117(v114, v168);
            sub_2315B2F7C(v72, &qword_27DD604C0, &qword_231608F68);
            v117(v80, v168);
            v43 = v116;
            v69 = v168;
            sub_2315B2F7C(v115, &qword_27DD604C0, &qword_231608F68);
            v44 = v147;
            v50 = v165;
            v77 = v160;
            v78 = v161;
            v79 = v163;
            if (v167)
            {
              goto LABEL_38;
            }

LABEL_25:
            __swift_project_boxed_opaque_existential_1(&v173, v174);
            v81 = v153;
            sub_231605D08();
            v82 = v164;
            if (__swift_getEnumTagSinglePayload(v81, 1, v164) == 1)
            {
              sub_2315B2F7C(v81, &qword_27DD60478, &qword_231609E40);
              if (qword_280FE9628 != -1)
              {
                swift_once();
              }

              v83 = sub_2316066E8();
              __swift_project_value_buffer(v83, qword_280FE9630);
              v84 = sub_2316066C8();
              v85 = sub_231606958();
              if (os_log_type_enabled(v84, v85))
              {
                v86 = swift_slowAlloc();
                *v86 = 0;
                _os_log_impl(&dword_2315AF000, v84, v85, "[warning] No explicit turnState is provided. Assuming taskComplete initated from the user", v86, 2u);
                v87 = v86;
                v82 = v164;
                MEMORY[0x231933730](v87, -1, -1);
              }

              v88 = *MEMORY[0x277D60E60];
              v89 = sub_231606288();
              v90 = v162;
              (*(*(v89 - 8) + 104))(v162, v88, v89);
              (*(v79 + 104))(v90, *MEMORY[0x277D60DC0], v82);
              v91 = v159;
            }

            else
            {
              v147 = v43;
              v97 = (v79 + 32);
              v98 = v150;
              v167 = *(v79 + 32);
              (v167)(v150, v81, v82);
              if (qword_280FE9628 != -1)
              {
                swift_once();
              }

              v99 = sub_2316066E8();
              __swift_project_value_buffer(v99, qword_280FE9630);
              v100 = v148;
              (*(v79 + 16))(v148, v98, v82);
              v101 = sub_2316066C8();
              v102 = sub_231606968();
              if (os_log_type_enabled(v101, v102))
              {
                v103 = v79;
                v104 = swift_slowAlloc();
                v105 = swift_slowAlloc();
                v158 = v97;
                v106 = v105;
                v171[0] = v105;
                *v104 = 136315138;
                sub_2315DC670(&qword_280FE95A8, MEMORY[0x277D60DC8]);
                v107 = v102;
                v108 = sub_231606BC8();
                v110 = v109;
                (*(v103 + 8))(v100, v82);
                v111 = sub_2315B1574(v108, v110, v171);
                v50 = v165;

                *(v104 + 4) = v111;
                _os_log_impl(&dword_2315AF000, v101, v107, "Using explicit turnState from requestState: %s", v104, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v106);
                v98 = v150;
                MEMORY[0x231933730](v106, -1, -1);
                MEMORY[0x231933730](v104, -1, -1);
              }

              else
              {

                (*(v79 + 8))(v100, v82);
              }

              v43 = v147;
              v91 = v159;
              (v167)(v162, v98, v82);
              v69 = v168;
            }

            v123 = v154;
            sub_2315DC458(v43, v154, &qword_27DD604C0, &qword_231608F68);
            if (__swift_getEnumTagSinglePayload(v123, 1, v69) == 1)
            {
              sub_2315B2F7C(v123, &qword_27DD604C0, &qword_231608F68);
              if (qword_280FE9628 != -1)
              {
                swift_once();
              }

              v124 = sub_2316066E8();
              __swift_project_value_buffer(v124, qword_280FE9630);
              v125 = sub_2316066C8();
              v126 = sub_231606958();
              if (os_log_type_enabled(v125, v126))
              {
                v127 = swift_slowAlloc();
                *v127 = 0;
                _os_log_impl(&dword_2315AF000, v125, v126, "[warning] No explicit requestInputOrigin is provided. Assuming modality is voice", v127, 2u);
                v91 = v159;
                MEMORY[0x231933730](v127, -1, -1);
              }

              v77 = v160;
              v78 = v161;
              (*(v161 + 104))(v160, *MEMORY[0x277D60E18], v91);
              v121 = v164;
              v120 = v162;
            }

            else
            {
              v128 = v123;
              v129 = v169;
              v130 = v149;
              (*(v169 + 32))(v149, v128, v69);
              v77 = v160;
              sub_2315D0AB4();
              (*(v129 + 8))(v130, v69);
              v121 = v164;
              v78 = v161;
              v120 = v162;
            }

            v122 = v91;
            v79 = v163;
            goto LABEL_49;
          }

          sub_2315B2F7C(v72, &qword_27DD604C0, &qword_231608F68);
          (*(v169 + 8))(v80, v69);
          v44 = v147;
          v50 = v165;
          v79 = v163;
        }

        sub_2315B2F7C(v75, &qword_27DD604B8, &qword_231608F60);
        goto LABEL_25;
      }

      sub_2315B2F7C(v41, &qword_27DD604C0, &qword_231608F68);
      (*(v169 + 8))(v71, v65);
      v69 = v65;
    }

    sub_2315B2F7C(v28, &qword_27DD604B8, &qword_231608F60);
    goto LABEL_19;
  }

  sub_2315B2F7C(v171, &qword_27DD60468, &qword_231609E50);
LABEL_55:
  swift_beginAccess();
  (*(v45 + 16))(a3, v50, v44);
  return (*(v45 + 8))(v50, v44);
}

void sub_2315D0AB4()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v3 = sub_2316054A8();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = *(v6 + 16);
  v12(&v41 - v13, v0, v3);
  v14 = *(v6 + 88);
  v15 = OUTLINED_FUNCTION_83();
  v17 = v16(v15);
  if (v17 == *MEMORY[0x277D61C98])
  {
    goto LABEL_2;
  }

  if (v17 == *MEMORY[0x277D61C48])
  {
    v18 = MEMORY[0x277D60E10];
    goto LABEL_5;
  }

  v22 = v17 == *MEMORY[0x277D61C50] || v17 == *MEMORY[0x277D61C60];
  if (v22 || v17 == *MEMORY[0x277D61C70])
  {
LABEL_2:
    v18 = MEMORY[0x277D60E18];
LABEL_5:
    v19 = *v18;
    v20 = sub_231606278();
    OUTLINED_FUNCTION_5_1(v20);
    (*(v21 + 104))(v2, v19);
    goto LABEL_6;
  }

  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v24 = sub_2316066E8();
  __swift_project_value_buffer(v24, qword_280FE9630);
  v12(v11, v0, v3);
  v25 = sub_2316066C8();
  v26 = sub_231606978();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_60();
    v42 = v27;
    v43 = OUTLINED_FUNCTION_63();
    v44 = v43;
    *v27 = 136315138;
    v28 = sub_231605498();
    v30 = v29;
    v31 = OUTLINED_FUNCTION_62();
    v32(v31);
    v33 = sub_2315B1574(v28, v30, &v44);

    v34 = v42;
    *(v42 + 1) = v33;
    _os_log_impl(&dword_2315AF000, v25, v26, "Unknown input origin of %s. Defaulting to voiced input", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  else
  {

    v35 = OUTLINED_FUNCTION_62();
    v36(v35);
  }

  v37 = *MEMORY[0x277D60E18];
  v38 = sub_231606278();
  OUTLINED_FUNCTION_5_1(v38);
  (*(v39 + 104))(v2, v37);
  v40 = OUTLINED_FUNCTION_83();
  v11(v40);
LABEL_6:
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315D0DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_2315D0DFC, 0, 0);
}

uint64_t sub_2315D0DFC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64(v0[11]);
  OUTLINED_FUNCTION_3_3();
  v11 = v1 + *v1;
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_2315D0F10;
  v6 = v0[9];
  v7 = v0[10];
  v8 = OUTLINED_FUNCTION_10_1();

  return v9(v8);
}

uint64_t sub_2315D0F10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D0FF4()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 64);
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    v2 = sub_231605FC8();
    v3 = swift_dynamicCast() ^ 1;
    v4 = v1;
    v5 = 1;
    v6 = v2;
  }

  else
  {
    sub_2315B2F7C(v0 + 16, &qword_27DD60390, &qword_231608910);
    sub_231605FC8();
    OUTLINED_FUNCTION_38();
  }

  __swift_storeEnumTagSinglePayload(v4, v3, v5, v6);
  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_2315D10D8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_2315D10FC, 0, 0);
}

uint64_t sub_2315D10FC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64(v0[11]);
  OUTLINED_FUNCTION_3_3();
  v11 = v1 + *v1;
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_2315D1210;
  v6 = v0[9];
  v7 = v0[10];
  v8 = OUTLINED_FUNCTION_10_1();

  return v9(v8);
}

uint64_t sub_2315D1210()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D12F4()
{
  OUTLINED_FUNCTION_8();
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60500, &qword_231608FB8);
    OUTLINED_FUNCTION_45();
    v1 = swift_dynamicCast();
    v2 = *(v0 + 64);
    if (v1)
    {
      v3 = *(v0 + 64);
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 16, &qword_27DD60390, &qword_231608910);
  }

  OUTLINED_FUNCTION_48();

  return v4();
}

uint64_t sub_2315D13B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[37] = a4;
  v5[38] = v4;
  v5[35] = a2;
  v5[36] = a3;
  v5[34] = a1;
  v6 = sub_231605F68();
  v5[39] = v6;
  v7 = *(v6 - 8);
  v5[40] = v7;
  v8 = *(v7 + 64) + 15;
  v5[41] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60470, &unk_231608E80) - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v10 = sub_231605FC8();
  v5[43] = v10;
  v11 = *(v10 - 8);
  v5[44] = v11;
  v12 = *(v11 + 64) + 15;
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D1510, 0, 0);
}

uint64_t sub_2315D1510()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64(v2[38]);
  OUTLINED_FUNCTION_6_2();
  v11 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v2[46] = v6;
  *v6 = v7;
  v6[1] = sub_2315D162C;
  v8 = v2[35];
  v9 = v2[36];

  return (v11)(v2 + 2, v8, v9, 0x72656E776FLL, 0xE500000000000000, v1, v0);
}

uint64_t sub_2315D162C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 368);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D1710()
{
  OUTLINED_FUNCTION_15();
  if (v0[2].n128_u64[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604F8, &qword_231608FB0);
    if (OUTLINED_FUNCTION_77())
    {
      if (v0[8].n128_u64[0])
      {
        v1 = v0[17].n128_u64[0];
        sub_2315B540C(&v0[6].n128_i64[1], v0 + 4);
        sub_2315B540C(&v0[4], v1);
LABEL_10:
        v9 = v0[22].n128_u64[1];
        v10 = v0[20].n128_u64[1];
        v11 = v0[21].n128_u64[0];

        OUTLINED_FUNCTION_13();

        return v12();
      }
    }

    else
    {
      OUTLINED_FUNCTION_89();
    }
  }

  else
  {
    sub_2315B2F7C(&v0[1], &qword_27DD60390, &qword_231608910);
    OUTLINED_FUNCTION_46();
    v0[8].n128_u64[1] = 0;
  }

  v2 = v0[21].n128_i64[0];
  v3 = v0[21].n128_u64[1];
  v4 = v0[18].n128_i64[1];
  sub_2315B2F7C(&v0[6].n128_i64[1], &qword_27DD60350, &qword_231608800);
  sub_2315DC458(v4, v2, &qword_27DD60470, &unk_231608E80);
  OUTLINED_FUNCTION_40();
  if (v5)
  {
    v6 = v0[17].n128_u64[0];
    sub_2315B2F7C(v0[21].n128_i64[0], &qword_27DD60470, &unk_231608E80);
    sub_231606528();
    OUTLINED_FUNCTION_28();
    v6[3] = sub_231606058();
    OUTLINED_FUNCTION_5_5();
    v6[4] = sub_2315DC670(v7, v8);
    *v6 = v3;
    goto LABEL_10;
  }

  v14 = v0[19].n128_u64[0];
  (*(v0[22].n128_u64[0] + 32))(v0[22].n128_u64[1], v0[21].n128_u64[0], v0[21].n128_u64[1]);
  v15 = *(v14 + 152);
  v16 = *(v14 + 160);
  swift_getObjectType();
  v0[16].n128_u64[1] = v15;
  v17 = *(v16 + 16);
  v18 = *(MEMORY[0x277D60468] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[23].n128_u64[1] = v19;
  *v19 = v20;
  v19[1] = sub_2315D1958;
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821C5CD8](v21);
}

uint64_t sub_2315D1958()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 376);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D1A3C()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  sub_231605FB8();
  v4 = *(MEMORY[0x277D60450] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[48] = v5;
  *v5 = v6;
  v5[1] = sub_2315D1B08;
  v7 = v0[41];
  OUTLINED_FUNCTION_96();

  return MEMORY[0x2821C5CB0](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2315D1B08()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v2 = v1[48];
  v3 = v1[41];
  v4 = v1[40];
  v5 = v1[39];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_36();
  v10(v9);
  v11 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2315D1C44()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  sub_2315DC458((v0 + 18), (v0 + 28), &qword_27DD60350, &qword_231608800);
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[34];
  if (v0[31])
  {
    sub_2315B2F7C((v0 + 18), &qword_27DD60350, &qword_231608800);
    v5 = *(v2 + 8);
    v6 = OUTLINED_FUNCTION_36();
    v7(v6);
    sub_2315B540C((v0 + 28), v4);
  }

  else
  {
    v8 = sub_231606528();
    v4[1].n128_u64[1] = sub_231606058();
    OUTLINED_FUNCTION_5_5();
    v4[2].n128_u64[0] = sub_2315DC670(v9, v10);
    v4->n128_u64[0] = v8;
    sub_2315B2F7C((v0 + 18), &qword_27DD60350, &qword_231608800);
    v11 = *(v2 + 8);
    v12 = OUTLINED_FUNCTION_36();
    v13(v12);
    if (v0[31])
    {
      sub_2315B2F7C((v0 + 28), &qword_27DD60350, &qword_231608800);
    }
  }

  v14 = v0[45];
  v15 = v0[41];
  v16 = v0[42];

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_96();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_2315D1DB8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604D0, &qword_231608F78) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D1E58, 0, 0);
}

uint64_t sub_2315D1E58()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_64(v1[20]);
  sub_231605AF8();
  v1[22] = v2;
  v3 = *(v0 + 32);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v1[23] = v5;
  *v5 = v1;
  v5[1] = sub_2315D1F8C;
  v6 = OUTLINED_FUNCTION_53();

  return v8(v6);
}

uint64_t sub_2315D1F8C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v4 = *(v3 + 184);
  v5 = *(v3 + 176);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 192) = v8;

  v10 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2315D2090()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604D8, &qword_231608F80);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v0[25] = v9;
  v9[2] = v1;
  v9[3] = v4;
  v9[4] = v3;
  v10 = *(MEMORY[0x277D60B28] + 4);

  v11 = swift_task_alloc();
  v0[26] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604A0, &unk_231608F00);
  OUTLINED_FUNCTION_79();
  *v11 = v12;
  v11[1] = sub_2315D21C8;
  v13 = v0[24];
  v14 = v0[21];
  v15 = MEMORY[0x277D837D0];

  return MEMORY[0x2821C6B08](v13, v14, &unk_231608F90, v9, v15);
}

void sub_2315D21C8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v6 = *(v5 + 208);
  *v4 = *v1;
  v3[27] = v7;
  v3[28] = v0;

  if (v0)
  {
  }

  else
  {
    v9 = v3[24];
    v8 = v3[25];
    sub_2315B2F7C(v3[21], &qword_27DD604D0, &qword_231608F78);

    v10 = OUTLINED_FUNCTION_6();

    MEMORY[0x2822009F8](v10);
  }
}

uint64_t sub_2315D2310()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_2315DC458(v3, v0 + 16, &qword_27DD604A0, &unk_231608F00);
      v5 = *(v0 + 64);
      *(v0 + 112) = *(v0 + 48);
      *(v0 + 128) = v5;
      v6 = *(v0 + 32);
      *(v0 + 80) = *(v0 + 16);
      *(v0 + 96) = v6;
      if (*(v0 + 88))
      {
        v16 = *(v0 + 16);
        v17 = *(v0 + 32);
        v18 = *(v0 + 48);
        v19 = *(v0 + 64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = OUTLINED_FUNCTION_76();
        }

        v8 = v4[2];
        v7 = v4[3];
        if (v8 >= v7 >> 1)
        {
          v4 = sub_2315DA474((v7 > 1), v8 + 1, 1, v4);
        }

        v4[2] = v8 + 1;
        v9 = &v4[8 * v8];
        v9[4] = v18;
        v9[5] = v19;
        v9[2] = v16;
        v9[3] = v17;
      }

      else
      {
        sub_2315B2F7C(v0 + 80, &qword_27DD604A0, &unk_231608F00);
      }

      v3 += 64;
      --v2;
    }

    while (v2);
    v10 = *(v0 + 216);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v11 = *(v0 + 224);
  v12 = *(v0 + 168);
  v13 = sub_2315D28D8(v4);

  OUTLINED_FUNCTION_48();

  return v14(v13);
}

uint64_t sub_2315D249C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a2;
  v4[23] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[24] = a4;
  v4[25] = v5;
  v4[26] = v6;
  return MEMORY[0x2822009F8](sub_2315D24C8, 0, 0);
}

uint64_t sub_2315D24C8()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v4 = sub_231605AF8();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4;
  }

  v8 = 7;
  if (((v6 >> 60) & ((v4 & 0x800000000000000) == 0)) != 0)
  {
    v8 = 11;
  }

  v9 = sub_2315D288C(v8 | (v7 << 16), v1, v2);
  v10 = MEMORY[0x231932C90](v9);
  v12 = v11;
  v0[20] = v10;
  v0[21] = v11;

  v0[27] = v12;
  v14 = *(v3 + 16);
  v13 = *(v3 + 24);
  swift_getObjectType();
  OUTLINED_FUNCTION_6_2();
  v27 = v15 + *v15;
  v17 = *(v16 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[28] = v18;
  *v18 = v19;
  v18[1] = sub_2315D2644;
  v20 = v0[25];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[24];
  v24 = OUTLINED_FUNCTION_31_0();

  return v25(v24);
}

uint64_t sub_2315D2644()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 224);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D2728()
{
  OUTLINED_FUNCTION_15();
  sub_2315DC458(v0 + 16, v0 + 112, &qword_27DD60390, &qword_231608910);
  v1 = *(v0 + 216);
  if (*(v0 + 136))
  {
    v2 = *(v0 + 160);
    sub_2315CAB60((v0 + 112), (v0 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604F0, &qword_231608FA8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_231608640;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    sub_2315B2D08(v0 + 64, v3 + 48);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
    v4 = &qword_27DD60390;
    v5 = &qword_231608910;
    v6 = v0 + 16;
  }

  else
  {
    v7 = *(v0 + 216);

    OUTLINED_FUNCTION_18_1();
    sub_2315B2F7C(v8, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604F0, &qword_231608FA8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_231608640;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    OUTLINED_FUNCTION_18_1();
  }

  sub_2315B2F7C(v6, v4, v5);
  OUTLINED_FUNCTION_48();

  return v11(v3);
}

uint64_t sub_2315D288C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_2315D28D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E0, &unk_231609B40);
    v3 = sub_231606B38();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2315DC224(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2315D2970(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_2315D2994, 0, 0);
}

uint64_t sub_2315D2994()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64(v0[11]);
  OUTLINED_FUNCTION_6_2();
  v11 = v1 + *v1;
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_2315D2AB0;
  v6 = v0[9];
  v7 = v0[10];
  v8 = OUTLINED_FUNCTION_31_0();

  return v9(v8);
}

uint64_t sub_2315D2AB0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D2B94()
{
  OUTLINED_FUNCTION_15();
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60528, &qword_231608FE8);
    OUTLINED_FUNCTION_45();
    if (swift_dynamicCast())
    {
      v1 = v0[8];
      if (qword_280FE9628 != -1)
      {
        OUTLINED_FUNCTION_4_1();
      }

      v2 = sub_2316066E8();
      OUTLINED_FUNCTION_47(v2, qword_280FE9630);
      v3 = sub_2316066C8();
      v4 = sub_231606958();
      if (OUTLINED_FUNCTION_51(v4))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_17_3();
        _os_log_impl(v5, v6, v7, v8, v9, 2u);
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_48();

      return v10(v1);
    }
  }

  else
  {
    sub_2315B2F7C((v0 + 2), &qword_27DD60390, &qword_231608910);
  }

  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v12 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v12, qword_280FE9630);
  v13 = sub_2316066C8();
  v14 = sub_231606958();
  if (OUTLINED_FUNCTION_18_0(v14))
  {
    v15 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v15);
    OUTLINED_FUNCTION_18();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    OUTLINED_FUNCTION_17();
  }

  v21 = v0[11];

  v22 = v21[8];
  __swift_project_boxed_opaque_existential_1(v21 + 4, v21[7]);
  v23 = *(MEMORY[0x277D606D0] + 4);
  v24 = swift_task_alloc();
  v0[13] = v24;
  *v24 = v0;
  v25 = OUTLINED_FUNCTION_2_2(v24);

  return MEMORY[0x2821C61D0](v25);
}

uint64_t sub_2315D2DC0()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_48();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_2315D2EAC(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_231605BE8();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D2F70, 0, 0);
}

uint64_t sub_2315D2F70()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_64(v1[24]);
  OUTLINED_FUNCTION_3_3();
  v11 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v1[28] = v6;
  *v6 = v7;
  v6[1] = sub_2315D30A0;
  v8 = v1[22];
  v9 = v1[23];

  return (v11)(v1 + 2, v8, v9, 0xD000000000000013, 0x800000023160A160, v2, v0);
}

uint64_t sub_2315D30A0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 224);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D3184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  if (*(v22 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    if (swift_dynamicCast())
    {
      v25 = *(v22 + 216);
      v26 = *(v22 + 200);
      v28 = *(v22 + 160);
      v27 = *(v22 + 168);
      v29 = sub_231604F38();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      sub_231604F28();
      sub_2315DC670(&qword_280FE9618, MEMORY[0x277D60660]);
      sub_231604F18();
      v43 = *(v22 + 216);
      v44 = sub_231605BD8();
      v45 = sub_2315CDD50(v44);

      v46 = sub_231605BC8();
      if (v47)
      {
        v48 = v46;
        v49 = v47;
        if (qword_280FE9628 != -1)
        {
          OUTLINED_FUNCTION_4_1();
        }

        v50 = sub_2316066E8();
        OUTLINED_FUNCTION_47(v50, qword_280FE9630);

        v51 = sub_2316066C8();
        v52 = sub_231606958();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = OUTLINED_FUNCTION_60();
          a9 = v45;
          a10 = OUTLINED_FUNCTION_63();
          v54 = v48;
          v55 = a10;
          *v53 = 136315138;
          *(v53 + 4) = sub_2315B1574(v54, v49, &a10);
          _os_log_impl(&dword_2315AF000, v51, v52, "Assigning deviceName: %s to GlobalProperties", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          v45 = a9;
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_20();
        }

        v56 = sub_2316067C8();

        v57 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithUTF8String_];

        if (v57)
        {
          *(v22 + 88) = sub_2315DC508();
          *(v22 + 64) = v57;
          sub_2315B55D4((v22 + 64), (v22 + 128));
          swift_isUniquelyReferenced_nonNull_native();
          a10 = v45;
          sub_2315DBD48((v22 + 128), 0x614E656369766564, 0xEA0000000000656DLL);

          OUTLINED_FUNCTION_95();
        }

        else
        {
          v58 = sub_2315CD0A0(0x614E656369766564, 0xEA0000000000656DLL);
          if (v59)
          {
            v60 = v58;
            swift_isUniquelyReferenced_nonNull_native();
            a10 = v45;
            v61 = *(v45 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C0, &qword_231608FD0);
            sub_231606AC8();
            v62 = a10;
            v63 = *(a10[6] + 16 * v60 + 8);

            sub_2315B55D4((*(v62 + 56) + 32 * v60), (v22 + 96));
            sub_231606AE8();
          }

          else
          {
            *(v22 + 96) = 0u;
            *(v22 + 112) = 0u;
          }

          sub_2315B2F7C(v22 + 96, &unk_27DD605F0, qword_231609310);

          OUTLINED_FUNCTION_95();
        }

        (*(*(v22 + 208) + 8))(*(v22 + 216), *(v22 + 200));
      }

      else
      {
        (*(*(v22 + 208) + 8))(*(v22 + 216), *(v22 + 200));

        OUTLINED_FUNCTION_95();
      }

      v64 = *(v22 + 216);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_31();

      return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14);
    }
  }

  else
  {
    sub_2315B2F7C(v22 + 16, &qword_27DD60390, &qword_231608910);
  }

  sub_2315DC4B4();
  swift_allocError();
  *v32 = 0;
  swift_willThrow();
  v33 = *(v22 + 216);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2315D3610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_2315D3634, 0, 0);
}

uint64_t sub_2315D3634()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64(v0[21]);
  OUTLINED_FUNCTION_6_2();
  v11 = v1 + *v1;
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[22] = v4;
  *v4 = v5;
  v4[1] = sub_2315D374C;
  v6 = v0[19];
  v7 = v0[20];
  v8 = OUTLINED_FUNCTION_31_0();

  return v9(v8);
}

uint64_t sub_2315D374C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D3830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_78();
  a20 = v23;
  if (!*(v23 + 40))
  {
    sub_2315B2F7C(v23 + 16, &qword_27DD60390, &qword_231608910);
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    *(v23 + 96) = 0;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60510, &unk_231608FC0);
  OUTLINED_FUNCTION_45();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v23 + 96) = 0;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    goto LABEL_10;
  }

  if (!*(v23 + 88))
  {
LABEL_10:
    sub_2315B2F7C(v23 + 64, &qword_27DD60460, &qword_231608E68);
    sub_2315DC4B4();
    swift_allocError();
    *v43 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_14();
    goto LABEL_11;
  }

  sub_2315B540C(v23 + 64, *(v23 + 144));
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v26 = *(v23 + 144);
  v27 = sub_2316066E8();
  __swift_project_value_buffer(v27, qword_280FE9630);
  sub_2315DC54C(v26, v23 + 104);
  v28 = sub_2316066C8();
  v29 = sub_231606958();
  if (OUTLINED_FUNCTION_51(v29))
  {
    v30 = OUTLINED_FUNCTION_60();
    v31 = OUTLINED_FUNCTION_63();
    a10 = v31;
    *v30 = 136315138;
    v32 = *(v23 + 128);
    v33 = *(v23 + 136);
    v34 = __swift_project_boxed_opaque_existential_1((v23 + 104), v32);
    v35 = *(v32 - 8);
    v36 = *(v35 + 64);
    v37 = OUTLINED_FUNCTION_23_0();
    (*(v35 + 16))(v37, v34, v32);
    v38 = *(v33 + 8);
    v39 = sub_2316067B8();
    v41 = v40;

    __swift_destroy_boxed_opaque_existential_1Tm((v23 + 104));
    v42 = sub_2315B1574(v39, v41, &a10);

    *(v30 + 4) = v42;
    _os_log_impl(&dword_2315AF000, v28, v22, "Got deviceState as:\n%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_20();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v23 + 104));
  }

  OUTLINED_FUNCTION_13();
LABEL_11:
  OUTLINED_FUNCTION_31();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2315D3AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_231605B38();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D3BB4, 0, 0);
}

uint64_t sub_2315D3BB4()
{
  OUTLINED_FUNCTION_49();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 104))(v1, *MEMORY[0x277D605B0], v4);
  v8 = sub_231605B28();
  v10 = v9;
  v0[30] = v9;
  (*(v2 + 8))(v1, v4);
  OUTLINED_FUNCTION_3_3();
  v19 = (v11 + *v11);
  v13 = *(v12 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[31] = v14;
  *v14 = v15;
  v14[1] = sub_2315D3D44;
  v16 = v0[24];
  v17 = v0[25];

  return (v19)(v0 + 2, v16, v17, v8, v10, ObjectType, v5);
}

uint64_t sub_2315D3D44()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315D3E44()
{
  OUTLINED_FUNCTION_4_0();
  v26 = v0;
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60530, &unk_231608FF0);
    if (OUTLINED_FUNCTION_77())
    {
      if (*(v0 + 128))
      {
        sub_2315B540C(v0 + 104, (v0 + 64));
        if (qword_280FE9628 != -1)
        {
          OUTLINED_FUNCTION_4_1();
        }

        v1 = sub_2316066E8();
        OUTLINED_FUNCTION_47(v1, qword_280FE9630);
        sub_2315DC54C(v0 + 64, v0 + 144);
        v2 = sub_2316066C8();
        v3 = sub_231606958();
        if (os_log_type_enabled(v2, v3))
        {
          v4 = OUTLINED_FUNCTION_60();
          v5 = OUTLINED_FUNCTION_63();
          v25 = v5;
          *v4 = 136315138;
          v6 = *(v0 + 176);
          __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
          v7 = *(v6 + 8);
          v8 = sub_231606BC8();
          v10 = v9;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
          v11 = sub_2315B1574(v8, v10, &v25);

          *(v4 + 4) = v11;
          _os_log_impl(&dword_2315AF000, v2, v3, "Got siriRequestState as:\n%s", v4, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v5);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_17();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
        }

        sub_2315B540C(v0 + 64, *(v0 + 184));
        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_89();
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 16, &qword_27DD60390, &qword_231608910);
    OUTLINED_FUNCTION_46();
    *(v0 + 136) = 0;
  }

  sub_2315B2F7C(v0 + 104, &qword_27DD60468, &qword_231609E50);
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v12 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v12, qword_280FE9630);
  v13 = sub_2316066C8();
  v14 = sub_231606978();
  if (OUTLINED_FUNCTION_18_0(v14))
  {
    v15 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v15);
    OUTLINED_FUNCTION_18();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    OUTLINED_FUNCTION_17();
  }

  v21 = *(v0 + 184);

  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
LABEL_15:
  v22 = *(v0 + 232);

  OUTLINED_FUNCTION_14();

  return v23();
}

uint64_t sub_2315D40F0()
{
  OUTLINED_FUNCTION_8();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v5 = sub_2316050C8();
  OUTLINED_FUNCTION_24(v5);
  v7 = *(v6 + 64);
  v1[39] = OUTLINED_FUNCTION_23_0();
  v8 = sub_2316062E8();
  OUTLINED_FUNCTION_24(v8);
  v10 = *(v9 + 64);
  v1[40] = OUTLINED_FUNCTION_23_0();
  v11 = sub_231606168();
  v1[41] = v11;
  OUTLINED_FUNCTION_4(v11);
  v1[42] = v12;
  v14 = *(v13 + 64);
  v1[43] = OUTLINED_FUNCTION_23_0();
  v15 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2315D41D8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64(v0[38]);
  OUTLINED_FUNCTION_3_3();
  v11 = v1 + *v1;
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[44] = v4;
  *v4 = v5;
  v4[1] = sub_2315D42EC;
  v6 = v0[36];
  v7 = v0[37];
  v8 = OUTLINED_FUNCTION_10_1();

  return v9(v8);
}

uint64_t sub_2315D42EC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 352);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D43D0()
{
  OUTLINED_FUNCTION_8();
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B8, &unk_231607A80);
    if (swift_dynamicCast())
    {
      v1 = v0[34];
      goto LABEL_6;
    }
  }

  else
  {
    sub_2315B2F7C((v0 + 2), &qword_27DD60390, &qword_231608910);
  }

  v1 = MEMORY[0x277D84F90];
LABEL_6:
  v0[45] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[46] = v2;
  *v2 = v3;
  v2[1] = sub_2315D44E0;
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[36];

  return sub_2315D3AF0((v0 + 8), v6, v4);
}

uint64_t sub_2315D44E0()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = v1[46];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[47] = v6;
  *v6 = v5;
  v6[1] = sub_2315D463C;
  v7 = v1[38];
  v8 = v1[37];
  v9 = OUTLINED_FUNCTION_29_0(v1[36]);

  return sub_2315D2970(v9, v10);
}

uint64_t sub_2315D463C()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_9_3();
  *v6 = v5;
  v8 = *(v7 + 376);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    *(v5 + 384) = v3;
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D474C()
{
  OUTLINED_FUNCTION_8();
  v0[49] = v0[48];
  v0[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
  v0[51] = sub_231606728();
  v1 = swift_task_alloc();
  v0[52] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_28_0(v1);

  return sub_2315D2EAC(v2, v3);
}

uint64_t sub_2315D47FC()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_9_3();
  *v6 = v5;
  v8 = *(v7 + 416);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 424) = v0;

  if (!v0)
  {
    *(v5 + 432) = v3;
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_92();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_4_0();
  a16 = v18;
  v21 = v18[51];
  v22 = sub_2315CDAD0(v18[54]);

  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v23 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v23, qword_280FE9630);
  v24 = sub_2316066C8();
  v25 = sub_231606968();
  if (OUTLINED_FUNCTION_51(v25))
  {
    v26 = v18[50];
    v27 = OUTLINED_FUNCTION_60();
    v28 = OUTLINED_FUNCTION_63();
    a9 = v28;
    *v27 = 136315138;

    v29 = sub_231606718();
    v31 = v30;

    v32 = sub_2315B1574(v29, v31, &a9);

    *(v27 + 4) = v32;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v18[55] = v22;
  OUTLINED_FUNCTION_46();
  v18[17] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v18[56] = v38;
  *v38 = v39;
  OUTLINED_FUNCTION_27_0(v38);
  OUTLINED_FUNCTION_94();

  return sub_2315D3610(v40, v41, v42);
}

uint64_t sub_2315D4A98()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 456) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D4B94()
{
  OUTLINED_FUNCTION_8();
  sub_2315B2F7C(v0 + 104, &qword_27DD60460, &qword_231608E68);
  v1 = *(v0 + 160);
  *(v0 + 104) = *(v0 + 144);
  *(v0 + 120) = v1;
  *(v0 + 136) = *(v0 + 176);
  OUTLINED_FUNCTION_80();
  result = sub_2315DC458(v2, v3, v4, v5);
  if (*(v0 + 248))
  {
    v7 = *(v0 + 440);

    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v0 + 464) = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_22_1(v8);

    return sub_2315D5394(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2315D4C5C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v6 = v5[58];
  v7 = v5[55];
  v8 = v5[49];
  v9 = v5[45];
  v10 = *v1;
  OUTLINED_FUNCTION_2();
  *v11 = v10;
  *(v3 + 472) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 224));
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D4DC4()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[55];
  v2 = v0[43];
  v4 = v0[39];
  v3 = v0[40];
  sub_2315B2F7C((v0 + 13), &qword_27DD60460, &qword_231608E68);
  sub_2315B2F7C((v0 + 8), &qword_27DD60468, &qword_231609E50);

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_2315D4E78()
{
  OUTLINED_FUNCTION_8();
  v0[49] = 0;
  v0[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
  v0[51] = sub_231606728();
  v1 = swift_task_alloc();
  v0[52] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_28_0(v1);

  return sub_2315D2EAC(v2, v3);
}

uint64_t sub_2315D4F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_92();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_4_0();
  a16 = v18;
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v21 = v18[53];
  v22 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v22, qword_280FE9630);
  v23 = v21;
  v24 = sub_2316066C8();
  v25 = sub_231606958();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v18[53];
  if (v26)
  {
    v28 = OUTLINED_FUNCTION_60();
    v29 = OUTLINED_FUNCTION_63();
    a9 = v29;
    *v28 = 136315138;
    v18[33] = v27;
    v30 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v31 = sub_2316067A8();
    v33 = sub_2315B1574(v31, v32, &a9);

    *(v28 + 4) = v33;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {
  }

  v18[55] = v18[51];
  OUTLINED_FUNCTION_46();
  v18[17] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v18[56] = v39;
  *v39 = v40;
  OUTLINED_FUNCTION_27_0(v39);
  OUTLINED_FUNCTION_94();

  return sub_2315D3610(v41, v42, v43);
}

uint64_t sub_2315D50C4()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4_0();
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v2 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v2, qword_280FE9630);
  v3 = sub_2316066C8();
  v4 = sub_231606978();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v5);
    _os_log_impl(&dword_2315AF000, v3, v4, "Unable to obtain DeviceState from state store. Assuming restrictive state", v0, 2u);
    OUTLINED_FUNCTION_17();
  }

  v6 = *(v1 + 456);
  v8 = *(v1 + 336);
  v7 = *(v1 + 344);
  v10 = *(v1 + 320);
  v9 = *(v1 + 328);
  v11 = *(v1 + 312);

  (*(v8 + 104))(v7, *MEMORY[0x277D60BE0], v9);
  sub_2316062D8();
  sub_2316050B8();
  *(v1 + 208) = sub_231605D48();
  *(v1 + 216) = sub_2315DC670(&qword_27DD60458, MEMORY[0x277D60858]);
  __swift_allocate_boxed_opaque_existential_1((v1 + 184));
  sub_231605D38();

  sub_2315B2F7C(v1 + 104, &qword_27DD60460, &qword_231608E68);
  *(v1 + 104) = *(v1 + 184);
  *(v1 + 120) = *(v1 + 200);
  *(v1 + 136) = *(v1 + 216);
  OUTLINED_FUNCTION_80();
  result = sub_2315DC458(v12, v13, v14, v15);
  if (*(v1 + 248))
  {
    v17 = *(v1 + 440);

    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v1 + 464) = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_22_1(v18);
    OUTLINED_FUNCTION_94();

    return sub_2315D5394(v20, v21, v22, v23, v24, v25, v26, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2315D52D4()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[55];
  v2 = v0[43];
  v4 = v0[39];
  v3 = v0[40];
  sub_2315B2F7C((v0 + 13), &qword_27DD60460, &qword_231608E68);
  sub_2315B2F7C((v0 + 8), &qword_27DD60468, &qword_231609E50);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 28);

  OUTLINED_FUNCTION_14();
  v6 = v0[59];

  return v5();
}

uint64_t sub_2315D5394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[47] = a8;
  v9[48] = v8;
  v9[45] = a6;
  v9[46] = a7;
  v9[43] = a4;
  v9[44] = a5;
  v9[41] = a2;
  v9[42] = a3;
  v9[40] = a1;
  v10 = *(*(sub_231605098() - 8) + 64) + 15;
  v9[49] = swift_task_alloc();
  v11 = sub_231606268();
  v9[50] = v11;
  v12 = *(v11 - 8);
  v9[51] = v12;
  v13 = *(v12 + 64) + 15;
  v9[52] = swift_task_alloc();
  v14 = sub_231606128();
  v9[53] = v14;
  v15 = *(v14 - 8);
  v9[54] = v15;
  v16 = *(v15 + 64) + 15;
  v9[55] = swift_task_alloc();
  v9[56] = swift_task_alloc();
  v17 = sub_231605FC8();
  v9[57] = v17;
  v18 = *(v17 - 8);
  v9[58] = v18;
  v19 = *(v18 + 64) + 15;
  v9[59] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60410, &qword_231608AE8) - 8) + 64) + 15;
  v9[60] = swift_task_alloc();
  v9[61] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60470, &unk_231608E80) - 8) + 64) + 15;
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60478, &qword_231609E40) - 8) + 64) + 15;
  v9[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D5614, 0, 0);
}

uint64_t sub_2315D5614()
{
  OUTLINED_FUNCTION_15();
  sub_2315DC458(v0[47], (v0 + 2), &qword_27DD60468, &qword_231609E50);
  v1 = v0[64];
  if (!v0[5])
  {
    sub_2315B2F7C((v0 + 2), &qword_27DD60468, &qword_231609E50);
    sub_231606248();
    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_9;
  }

  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_231605D08();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = sub_231606248();
  OUTLINED_FUNCTION_40();
  if (v4)
  {
LABEL_9:
    sub_2315B2F7C(v0[64], &qword_27DD60478, &qword_231609E40);
    goto LABEL_10;
  }

  v5 = *(v3 - 8);
  v6 = (*(v5 + 88))(v0[64], v3);
  v7 = v0[64];
  if (v6 == *MEMORY[0x277D60DC0])
  {
    v8 = v0[48];
    v9 = *(v5 + 96);
    v10 = OUTLINED_FUNCTION_85();
    v11(v10);
    v12 = sub_231606288();
    OUTLINED_FUNCTION_5_1(v12);
    (*(v13 + 8))(v7);
    v14 = v8[18];
    __swift_project_boxed_opaque_existential_1(v8 + 14, v8[17]);
    OUTLINED_FUNCTION_56();
    if (sub_2316062B8())
    {
      v15 = swift_task_alloc();
      v0[65] = v15;
      *v15 = v0;
      v15[1] = sub_2315D590C;
      v16 = v0[48];

      return sub_2315D6CB0();
    }
  }

  else
  {
    v36 = *(v5 + 8);
    v37 = OUTLINED_FUNCTION_85();
    v38(v37);
  }

LABEL_10:
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v22 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v22, qword_280FE9630);
  v23 = sub_2316066C8();
  v24 = sub_231606968();
  if (OUTLINED_FUNCTION_18_0(v24))
  {
    v25 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v25);
    OUTLINED_FUNCTION_18();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_17();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[67] = v31;
  *v31 = v32;
  v33 = OUTLINED_FUNCTION_26_0(v31);

  return sub_2315D0DD8(v33, v34, v35);
}

uint64_t sub_2315D590C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v4 = *(v3 + 520);
  *v2 = *v0;
  *(v1 + 528) = v5;

  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315D59F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_92();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_4_0();
  a16 = v18;
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v21 = *(v18 + 528);
  v22 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v22, qword_280FE9630);

  v23 = sub_2316066C8();
  v24 = sub_231606958();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v18 + 528);
  if (v25)
  {
    v27 = OUTLINED_FUNCTION_60();
    v28 = OUTLINED_FUNCTION_63();
    a9 = v28;
    *v27 = 136315138;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
    v30 = MEMORY[0x231932D20](v26, v29);
    v32 = v31;

    v33 = sub_2315B1574(v30, v32, &a9);

    *(v27 + 4) = v33;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_17();
  }

  else
  {
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v18 + 536) = v39;
  *v39 = v40;
  OUTLINED_FUNCTION_26_0(v39);
  OUTLINED_FUNCTION_94();

  return sub_2315D0DD8(v41, v42, v43);
}

uint64_t sub_2315D5B88()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v6 = *(v5 + 536);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[68] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8]();
  }

  else
  {
    v9 = swift_task_alloc();
    v3[69] = v9;
    *v9 = v7;
    v9[1] = sub_2315D5CDC;
    v10 = v3[48];
    v11 = v3[42];
    v12 = OUTLINED_FUNCTION_29_0(v3[41]);

    return sub_2315D10D8(v12, v13);
  }
}

uint64_t sub_2315D5CDC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v6 = *(v5 + 552);
  *v4 = *v1;
  v3[70] = v7;
  v3[71] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8]();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v3[72] = v8;
    *v8 = v9;
    v8[1] = sub_2315D5E44;
    v10 = v3[63];
    v11 = v3[48];
    v12 = v3[41];
    v13 = v3[42];

    return sub_2315D13B4((v3 + 7), v12, v13, v10);
  }
}

uint64_t sub_2315D5E44()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 584) = v0;

  if (v0)
  {
    v9 = *(v3 + 560);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D5F44()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[48];
  v0[38] = sub_2315D7CA4(v0 + 7, v0[63]);
  v0[39] = v2;
  v3 = swift_task_alloc();
  v0[74] = v3;
  *v3 = v0;
  v3[1] = sub_2315D5FE8;
  v4 = v0[48];
  v5 = v0[42];
  v6 = OUTLINED_FUNCTION_29_0(v0[41]);

  return sub_2315D1DB8(v6, v7);
}

uint64_t sub_2315D5FE8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v4 = *(v3 + 592);
  *v2 = *v0;
  *(v1 + 600) = v5;

  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315D60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  v25 = v22[62];
  v26 = v22[63];
  v27 = v22[61];
  v28 = v22[57];
  v29 = v22[50];
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v34 = OUTLINED_FUNCTION_36();
  sub_2315DC458(v34, v35, v36, v37);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v28);
  v39 = v22[70];
  v40 = v22[62];
  if (EnumTagSinglePayload != 1)
  {
    v49 = v22[61];
    v50 = v22[50];
    v51 = v22[51];
    v52 = *(v22[58] + 32);
    v52(v22[59], v22[62], v22[57]);
    sub_2315B2F7C(v49, &qword_27DD60410, &qword_231608AE8);
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60480, &qword_231608EB8) + 48);
    v54 = OUTLINED_FUNCTION_36();
    (v52)(v54);
    *(v49 + v53) = v39;
    (*(v51 + 104))(v49, *MEMORY[0x277D60DF0], v50);
    v45 = OUTLINED_FUNCTION_67();
    v48 = v50;
    goto LABEL_6;
  }

  sub_2315B2F7C(v22[62], &qword_27DD60470, &unk_231608E80);
  if (!v39)
  {
    goto LABEL_7;
  }

  v41 = v22[70];
  if (*(v41 + 16))
  {
    v42 = v22[61];
    v43 = v22[50];
    v44 = v22[51];
    sub_2315B2F7C(v42, &qword_27DD60410, &qword_231608AE8);
    *v42 = v41;
    (*(v44 + 104))(v42, *MEMORY[0x277D60DF8], v43);
    v45 = v42;
    v46 = 0;
    v47 = 1;
    v48 = v43;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    goto LABEL_7;
  }

  v99 = v22[70];

LABEL_7:
  v55 = v22[56];
  v57 = v22[47];
  v56 = v22[48];
  v59 = v22[41];
  v58 = v22[42];
  sub_2315DC54C((v22 + 7), (v22 + 12));
  sub_2315CF600(v57, (v22 + 12), v55);
  sub_2315B2F7C((v22 + 12), &qword_27DD60350, &qword_231608800);
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v60 = v22[75];
  v62 = v22[42];
  v61 = v22[43];
  v63 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v63, qword_280FE9630);

  v64 = sub_2316066C8();
  v65 = sub_231606968();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = v22[61];
    v67 = v22[50];
    v69 = v22[42];
    v68 = v22[43];
    v70 = v22[41];
    v71 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    *v71 = 136315906;
    *(v71 + 4) = sub_2315B1574(v70, v69, &a11);
    *(v71 + 12) = 2080;
    v72 = MEMORY[0x231932D20](v68, MEMORY[0x277D837D0]);
    v74 = sub_2315B1574(v72, v73, &a11);

    *(v71 + 14) = v74;
    *(v71 + 22) = 2080;
    swift_beginAccess();
    if (__swift_getEnumTagSinglePayload(v66, 1, v67))
    {
      v75 = 0xE300000000000000;
      v76 = 4271950;
    }

    else
    {
      v78 = v22[51];
      v77 = v22[52];
      v79 = v22[50];
      (*(v78 + 16))(v77, v22[61], v79);
      v76 = sub_231606258();
      v75 = v80;
      (*(v78 + 8))(v77, v79);
    }

    v81 = v22[75];
    v82 = sub_2315B1574(v76, v75, &a11);

    *(v71 + 24) = v82;
    *(v71 + 32) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    v83 = sub_231606718();
    v85 = sub_2315B1574(v83, v84, &a11);

    *(v71 + 34) = v85;
    _os_log_impl(&dword_2315AF000, v64, v65, "Creating suggestions interaction for requestId: %s with dialogId: %s, intent: %s, executionParameters %s", v71, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  OUTLINED_FUNCTION_64(v22[48]);
  isa = v64[3].isa;
  v100 = isa + *isa;
  v87 = isa[1];
  v88 = swift_task_alloc();
  v22[76] = v88;
  *v88 = v22;
  v88[1] = sub_2315D661C;
  v89 = v22[42];
  OUTLINED_FUNCTION_29_0(v22[41]);
  OUTLINED_FUNCTION_31();

  return v94(v90, v91, v92, v93, v94, v95, v96, v97, v64 + 3, v100, a11, a12, a13, a14);
}

uint64_t sub_2315D661C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 608);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D6700()
{
  v1 = v0[61];
  v31 = v0[60];
  v27 = v0[55];
  v29 = v0[56];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[48];
  v5 = v0[49];
  v6 = v0[46];
  v33 = v0[47];
  v35 = v0[45];
  v8 = v4[24];
  v7 = v4[25];
  __swift_project_boxed_opaque_existential_1(v4 + 21, v8);
  (*(v7 + 8))(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  sub_231606728();
  sub_2315DC54C(v6, (v0 + 17));
  sub_2315DC54C((v0 + 7), (v0 + 22));
  (*(v2 + 16))(v27, v29, v3);
  swift_beginAccess();
  sub_2315DC458(v1, v31, &qword_27DD60410, &qword_231608AE8);
  sub_2315DC458(v33, (v0 + 27), &qword_27DD60468, &qword_231609E50);
  if (v0[30])
  {
    v9 = v0[31];
    __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);

    OUTLINED_FUNCTION_56();
    sub_231605D28();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  }

  else
  {

    sub_2315B2F7C((v0 + 27), &qword_27DD60468, &qword_231609E50);
  }

  v25 = v0[75];
  v21 = v0[39];
  v22 = v0[38];
  v30 = v0[64];
  v26 = v0[63];
  v32 = v0[62];
  v28 = v0[61];
  v10 = v0[60];
  v34 = v0[59];
  v11 = v0[55];
  v12 = v0[54];
  v23 = v0[53];
  v24 = v0[56];
  v36 = v0[52];
  v20 = v0[49];
  v13 = v0[44];
  v15 = v0[42];
  v14 = v0[43];
  v0[45];
  v17 = v0[40];
  v16 = v0[41];

  sub_231605DF8();
  (*(v12 + 8))(v24, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  sub_2315B2F7C(v26, &qword_27DD60470, &unk_231608E80);
  sub_2315B2F7C(v28, &qword_27DD60410, &qword_231608AE8);

  OUTLINED_FUNCTION_13();

  return v18();
}

uint64_t sub_2315D6A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  v13 = *(v12 + 544);
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_58();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_2315D6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  sub_2315B2F7C(*(v12 + 504), &qword_27DD60470, &unk_231608E80);
  v13 = *(v12 + 568);
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_58();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_2315D6BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  sub_2315B2F7C(*(v12 + 504), &qword_27DD60470, &unk_231608E80);
  v13 = *(v12 + 584);
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_58();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_2315D6CB0()
{
  v1[3] = v0;
  v2 = sub_2316066B8();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D6D70, 0, 0);
}

uint64_t sub_2315D6D70()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[6];
  v2 = sub_2316064E8();
  sub_2316064C8();

  sub_231605FE8();
  v3 = sub_2316064E8();
  OUTLINED_FUNCTION_36();
  sub_2316064F8();

  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v4 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v4, qword_280FE9630);
  v5 = sub_2316066C8();
  v6 = sub_231606958();
  if (OUTLINED_FUNCTION_18_0(v6))
  {
    v7 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v7);
    OUTLINED_FUNCTION_18();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_17();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60490, &qword_231608ED0);
  v13 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[7] = v14;
  *v14 = v15;
  v14[1] = sub_2315D6F30;
  v16 = v0[3];
  OUTLINED_FUNCTION_96();

  return MEMORY[0x282200740]();
}

void sub_2315D6F30()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_9();

    MEMORY[0x2822009F8]();
  }
}

uint64_t sub_2315D7040()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_231605FE8();
  v5 = sub_2316064E8();
  sub_2316064D8();

  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_36();
  v8(v7);

  OUTLINED_FUNCTION_48();

  return v9(v4);
}

uint64_t sub_2315D710C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  v5 = swift_task_alloc();
  v3[45] = v5;
  *v5 = v3;
  v5[1] = sub_2315D71CC;

  return sub_2315D7B0C(0xD000000000000010, 0x800000023160A120, a2);
}

uint64_t sub_2315D71CC()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = v1[45];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[46] = v6;
  *v6 = v5;
  v6[1] = sub_2315D732C;
  v7 = v1[44];
  v8 = v1[43];
  OUTLINED_FUNCTION_96();

  return sub_2315D7B0C(v9, v10, v11);
}

uint64_t sub_2315D732C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 368);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D7410()
{
  OUTLINED_FUNCTION_15();
  v1 = sub_231605AF8();
  v3 = v2;
  v0[47] = v2;
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_2315D74BC;
  v5 = v0[43];
  v6 = v0[44];

  return sub_2315D7B0C(v1, v3, v5);
}

uint64_t sub_2315D74BC()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = v1[48];
  v5 = v1[47];
  v6 = *v0;
  *v3 = *v0;

  v2[49] = MEMORY[0x277D84F90];
  v7 = *(MEMORY[0x277D85818] + 4);
  v8 = swift_task_alloc();
  v2[50] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60498, &unk_231608EF0);
  *v8 = v6;
  v8[1] = sub_2315D7640;
  v9 = v1[43];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822004D0](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2315D7640()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 400);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 408) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D773C()
{
  OUTLINED_FUNCTION_15();
  sub_2315DC458(v0 + 16, v0 + 144, &qword_27DD604A0, &unk_231608F00);
  v1 = *(v0 + 392);
  if (*(v0 + 152))
  {
    v2 = *(v0 + 160);
    *(v0 + 80) = *(v0 + 144);
    *(v0 + 96) = v2;
    v3 = *(v0 + 192);
    *(v0 + 112) = *(v0 + 176);
    *(v0 + 128) = v3;
    sub_2315DC458(v0 + 80, v0 + 208, &qword_27DD60488, &qword_231608EC8);
    v4 = *(v0 + 216);
    *(v0 + 272) = *(v0 + 208);
    *(v0 + 280) = v4;
    sub_2315CAB60((v0 + 224), (v0 + 288));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = OUTLINED_FUNCTION_76();
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_2315DA474((v7 > 1), v8 + 1, 1, v6);
    }

    sub_2315B2F7C(v0 + 80, &qword_27DD60488, &qword_231608EC8);
    sub_2315B2F7C(v0 + 16, &qword_27DD604A0, &unk_231608F00);
    v6[2] = v8 + 1;
    v9 = &v6[8 * v8];
    v10 = *(v0 + 320);
    v12 = *(v0 + 272);
    v11 = *(v0 + 288);
    v9[4] = *(v0 + 304);
    v9[5] = v10;
    v9[2] = v12;
    v9[3] = v11;
    *(v0 + 392) = v6;
    v13 = *(MEMORY[0x277D85818] + 4);
    v14 = swift_task_alloc();
    *(v0 + 400) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60498, &unk_231608EF0);
    OUTLINED_FUNCTION_79();
    *v14 = v15;
    v14[1] = sub_2315D7640;
    v16 = *(v0 + 344);
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822004D0]();
  }

  else
  {
    v17 = *(v0 + 336);
    OUTLINED_FUNCTION_18_1();
    sub_2315B2F7C(v18, v19, v20);
    OUTLINED_FUNCTION_18_1();
    sub_2315B2F7C(v21, v22, v23);
    *v17 = v1;
    OUTLINED_FUNCTION_13();

    return v24();
  }
}

uint64_t sub_2315D7954()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v1 = v0[51];
  v2 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v2, qword_280FE9630);
  v3 = v1;
  v4 = sub_2316066C8();
  v5 = sub_231606978();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[51];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_60();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2315B2F7C(v9, &qword_27DD60278, &unk_231608238);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {
  }

  v17 = *(MEMORY[0x277D85818] + 4);
  v18 = swift_task_alloc();
  v0[50] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60498, &unk_231608EF0);
  OUTLINED_FUNCTION_79();
  *v18 = v19;
  v18[1] = sub_2315D7640;
  v20 = v0[43];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x2822004D0](v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_2315D7B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D7BAC, 0, 0);
}

uint64_t sub_2315D7BAC()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v5;
  v10[6] = v4;

  sub_2315D9C80(v1, &unk_231608F18, v10);
  sub_2315B2F7C(v1, &qword_27DD60398, &qword_231609BD0);

  OUTLINED_FUNCTION_14();

  return v11();
}

uint64_t sub_2315D7CA4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60470, &unk_231608E80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_231606478();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (MEMORY[0x2319328F0](v13, v14) == 0x6F747541656D6F48 && v15 == 0xEE006E6F6974616DLL)
  {
  }

  else
  {
    v17 = sub_231606BD8();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2315DC458(a2, v7, &qword_27DD60470, &unk_231608E80);
  v18 = sub_231605FC8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v18) == 1)
  {
    sub_2315B2F7C(v7, &qword_27DD60470, &unk_231608E80);
    return 0;
  }

  v19 = *(v18 - 8);
  if ((*(v19 + 88))(v7, v18) != *MEMORY[0x277D60928])
  {
    (*(v19 + 8))(v7, v18);
    return 0;
  }

  (*(v19 + 96))(v7, v18);
  (*(v9 + 32))(v12, v7, v8);
  v20 = sub_231606448();
  v21 = sub_2315DCC78(1651664246, 0xE400000000000000, v20);

  (*(v9 + 8))(v12, v8);
  return v21;
}

uint64_t sub_2315D7FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a1;
  v6[28] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604A8, &qword_231608F20) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v8 = sub_231605508();
  v6[34] = v8;
  v9 = *(v8 - 8);
  v6[35] = v9;
  v10 = *(v9 + 64) + 15;
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D80BC, 0, 0);
}

uint64_t sub_2315D80BC()
{
  OUTLINED_FUNCTION_78();
  v1 = v0[36];
  v2 = v0[28];
  v3 = type metadata accessor for StateStoreInteractionBuilder.ContinuationCapture(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v0[37] = v6;
  swift_defaultActor_initialize();
  v0[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v2[12]);
  OUTLINED_FUNCTION_53();
  v12 = sub_2316054E8();
  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[34];
  v16 = MEMORY[0x2319319B0](v12);
  v17 = *(v14 + 8);
  v18 = OUTLINED_FUNCTION_72();
  v19(v18);
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v20 = sub_2316066E8();
  v0[39] = __swift_project_value_buffer(v20, qword_280FE9630);
  v21 = sub_2316066C8();
  v22 = sub_231606968();
  if (OUTLINED_FUNCTION_51(v22))
  {
    v23 = OUTLINED_FUNCTION_60();
    *v23 = 134217984;
    *(v23 + 4) = v16;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    OUTLINED_FUNCTION_7_1();
  }

  v30 = v0[29];
  v29 = v0[30];
  v31 = v0[28];

  v32 = swift_allocObject();
  v0[40] = v32;
  v32[2] = v6;
  v32[3] = v30;
  v32[4] = v29;
  v32[5] = v31;
  v33 = *(MEMORY[0x277D61CC0] + 4);

  v34 = swift_task_alloc();
  v0[41] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
  v0[42] = v35;
  *v34 = v0;
  v34[1] = sub_2315D84CC;
  v36 = v0[27];
  v37.n128_f64[0] = v16;

  return MEMORY[0x2821C8618](v36, &unk_231608F30, v32, v35, v37);
}

uint64_t sub_2315D84CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (!v0)
  {
    v9 = *(v3 + 320);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D85CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_57();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_49();
  a18 = v20;
  v23 = *(v20 + 312);
  v24 = *(v20 + 240);
  sub_2315DC458(*(v20 + 216), v20 + 16, &qword_27DD60488, &qword_231608EC8);

  v25 = sub_2316066C8();
  v26 = sub_231606968();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v20 + 336);
    v28 = *(v20 + 296);
    v29 = OUTLINED_FUNCTION_75();
    a9 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = OUTLINED_FUNCTION_84();
    *(v29 + 4) = sub_2315B1574(v30, v31, v32);
    *(v29 + 12) = 2080;
    sub_2315DC458(v20 + 16, v20 + 80, &qword_27DD60488, &qword_231608EC8);
    *(v20 + 144) = *(v20 + 80);
    *(v20 + 152) = *(v20 + 88);
    sub_2315CAB60((v20 + 96), (v20 + 160));
    v33 = sub_2316067A8();
    v35 = v34;
    sub_2315B2F7C(v20 + 16, &qword_27DD60488, &qword_231608EC8);
    v36 = sub_2315B1574(v33, v35, &a9);

    *(v29 + 14) = v36;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {
    v42 = *(v20 + 296);

    sub_2315B2F7C(v20 + 16, &qword_27DD60488, &qword_231608EC8);
  }

  v43 = *(v20 + 288);
  v44 = *(v20 + 256);
  v45 = *(v20 + 264);
  v46 = *(v20 + 248);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_58();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_2315D87E0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 360);
  v3 = *(v1 + 256);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  sub_2315B2F7C(v3, &qword_27DD604A8, &qword_231608F20);
  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315D88F0()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[38];
  sub_2315DC458(v0[33], v0[31], &qword_27DD604A8, &qword_231608F20);
  OUTLINED_FUNCTION_40();
  if (v2)
  {
    sub_2315B2F7C(v0[31], &qword_27DD604A8, &qword_231608F20);
  }

  else
  {
    v3 = v0[44];
    v0[26] = v3;
    v4 = v0[38];
    v5 = v0[31];
    v6 = v3;
    OUTLINED_FUNCTION_36();
    sub_2316068B8();
    OUTLINED_FUNCTION_23(v4);
    (*(v7 + 8))(v5, v4);
  }

  v8 = v0[44];
  v9 = v0[36];
  v10 = v0[37];
  v12 = v0[32];
  v11 = v0[33];
  v13 = v0[31];
  swift_willThrow();

  sub_2315B2F7C(v11, &qword_27DD604A8, &qword_231608F20);

  OUTLINED_FUNCTION_14();
  v15 = v0[44];

  return v14();
}

uint64_t sub_2315D8A48()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[40];

  v2 = v0[43];
  v0[44] = v2;
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v3 = v0[30];
  v4 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v4, qword_280FE9630);

  v5 = v2;
  v6 = sub_2316066C8();
  v7 = sub_231606978();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_75();
    v9 = swift_slowAlloc();
    v26 = OUTLINED_FUNCTION_63();
    *v8 = 136315394;
    v10 = OUTLINED_FUNCTION_84();
    *(v8 + 4) = sub_2315B1574(v10, v11, v12);
    *(v8 + 12) = 2112;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_2315AF000, v6, v7, "Error waiting for: %s. %@", v8, 0x16u);
    sub_2315B2F7C(v9, &qword_27DD60278, &unk_231608238);
    OUTLINED_FUNCTION_20();
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_17();
  }

  v15 = v0[38];
  v16 = v0[32];
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[45] = v21;
  *v21 = v22;
  v23 = OUTLINED_FUNCTION_32_0(v21);

  return sub_2315D9E58(v23, v24);
}

uint64_t sub_2315D8C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2315D8C4C, 0, 0);
}

uint64_t sub_2315D8C4C()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
  OUTLINED_FUNCTION_79();
  *v6 = v7;
  v6[1] = sub_2315D8D50;
  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2315D8D50()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);

    OUTLINED_FUNCTION_14();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D8E6C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_14();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_2315D8EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v25 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = sub_2316068E8();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a2;
  (*(v9 + 32))(&v20[v18], v12, v8);
  v21 = &v20[v19];
  v22 = v25;
  *v21 = v24;
  *(v21 + 1) = a4;
  *&v20[(v19 + 23) & 0xFFFFFFFFFFFFFFF8] = v22;

  sub_2315FD77C(0, 0, v16, &unk_231608F40, v20);
}

uint64_t sub_2315D90D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604A8, &qword_231608F20) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v8[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D9188, 0, 0);
}

uint64_t sub_2315D9188()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[7];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  OUTLINED_FUNCTION_5_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_36();
  v7(v6);
  v8 = OUTLINED_FUNCTION_67();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[9] = v11;
  *v11 = v12;
  v11[1] = sub_2315D9274;
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[2];

  return sub_2315D9E58(v13, v14);
}

uint64_t sub_2315D9274()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_56();
  sub_2315B2F7C(v7, v8, &qword_231608F20);
  v9 = OUTLINED_FUNCTION_72();
  sub_2315B2F7C(v9, v10, &qword_231608F20);
  v11 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2315D93B0()
{
  OUTLINED_FUNCTION_49();
  v21 = v0;
  if (qword_280FE9550 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_2316066E8();
  v0[10] = v2;
  OUTLINED_FUNCTION_47(v2, qword_280FE9558);

  v3 = sub_2316066C8();
  v4 = sub_231606968();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = OUTLINED_FUNCTION_60();
    v8 = OUTLINED_FUNCTION_63();
    v20 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2315B1574(v6, v5, &v20);
    _os_log_impl(&dword_2315AF000, v3, v4, "Starting listener task for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_29();
  }

  v9 = v0[5];
  v10 = v0[4];
  v11 = v0[2];
  OUTLINED_FUNCTION_64(v0[6]);
  v12 = swift_allocObject();
  v0[11] = v12;
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = v9;
  v13 = *(v4 + 40);

  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_2315D9624;
  v16 = v0[5];
  v17 = OUTLINED_FUNCTION_29_0(v0[4]);

  return v19(v17);
}

uint64_t sub_2315D9624()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315D9724()
{
  OUTLINED_FUNCTION_15();
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  OUTLINED_FUNCTION_47(v0[10], qword_280FE9630);
  v1 = sub_2316066C8();
  v2 = sub_231606968();
  if (OUTLINED_FUNCTION_18_0(v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v3);
    OUTLINED_FUNCTION_18();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_17();
  }

  v10 = v0[7];
  v9 = v0[8];

  OUTLINED_FUNCTION_14();

  return v11();
}

uint64_t sub_2315D9800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604A8, &qword_231608F20) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D98B8, 0, 0);
}

uint64_t sub_2315D98B8()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[16];
  v0[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[19] = v6;
  *v6 = v7;
  v6[1] = sub_2315D9974;
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[12];

  return sub_2315D9E58(v8, v9);
}

uint64_t sub_2315D9974()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 152);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  sub_2315B2F7C(v3, &qword_27DD604A8, &qword_231608F20);
  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2315D9A84()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 144);
  sub_2315DC458(*(v0 + 136), *(v0 + 120), &qword_27DD604A8, &qword_231608F20);
  OUTLINED_FUNCTION_40();
  if (v2)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    OUTLINED_FUNCTION_18_1();
    sub_2315B2F7C(v5, v6, v7);
    v8 = OUTLINED_FUNCTION_36();
    sub_2315B2F7C(v8, v9, &qword_231608F20);
  }

  else
  {
    *(v0 + 16) = *(v0 + 104);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 120);
    v13 = *(v0 + 88);
    *(v0 + 24) = *(v0 + 112);
    sub_2315B2D08(v13, v0 + 32);
    *(v0 + 80) = 0;

    sub_2315D9BE0(v0 + 16);
    sub_2315B2F7C(v0 + 16, &qword_27DD604B0, &qword_231608F58);
    sub_2315B2F7C(v11, &qword_27DD604A8, &qword_231608F20);
    OUTLINED_FUNCTION_23(v10);
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_72();
    v17(v16);
  }

  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 120);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_96();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_2315D9BE0(uint64_t a1)
{
  sub_2315DC458(a1, &v2, &qword_27DD604B0, &qword_231608F58);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
    return sub_2316068B8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
    return sub_2316068C8();
  }
}

uint64_t sub_2315D9C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_2315DC458(a1, v20 - v9, &qword_27DD60398, &qword_231609BD0);
  v11 = sub_2316068E8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2315B2F7C(v10, &qword_27DD60398, &qword_231609BD0);
  }

  else
  {
    sub_2316068D8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_2316068A8();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_2315D9E58(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_2315D9E7C, v2, 0);
}

uint64_t sub_2315D9E7C()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtCC22SiriSuggestionsSupport28StateStoreInteractionBuilder19ContinuationCapture_continuation;
  swift_beginAccess();
  sub_2315DC458(v2 + v4, v3, &qword_27DD604A8, &qword_231608F20);
  swift_beginAccess();
  sub_2315DC5AC(v1, v2 + v4);
  swift_endAccess();
  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315D9F3C()
{
  sub_2315B2F7C(v0 + OBJC_IVAR____TtCC22SiriSuggestionsSupport28StateStoreInteractionBuilder19ContinuationCapture_continuation, &qword_27DD604A8, &qword_231608F20);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t *sub_2315D9F9C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v2 = v0[19];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 21);
  return v0;
}

uint64_t sub_2315D9FE4()
{
  sub_2315D9F9C();

  return MEMORY[0x2821FE8D8](v0, 208, 7);
}

uint64_t sub_2315DA018()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2315B4660;

  return sub_2315D40F0();
}

void sub_2315DA0CC()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    OUTLINED_FUNCTION_34();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_70();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_33_0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_2315E70B8(v7, v4);
  v9 = *(sub_231605DD8() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_2315DA87C(v0 + v10, v7, v8 + v10, MEMORY[0x277D606E0]);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2315DA1B4()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    OUTLINED_FUNCTION_34();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_70();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_33_0();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60538, &unk_2316095A0);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_82();
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

void sub_2315DA290()
{
  OUTLINED_FUNCTION_71();
  if (v5)
  {
    OUTLINED_FUNCTION_34();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_70();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_33_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_66(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60558, &qword_231609018);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 32);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[4 * v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_53();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60560, &unk_231609020);
    OUTLINED_FUNCTION_53();
    swift_arrayInitWithCopy();
  }
}

void sub_2315DA398()
{
  OUTLINED_FUNCTION_71();
  if (v5)
  {
    OUTLINED_FUNCTION_34();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_70();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_33_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_66(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60588, &qword_231609048);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_82();
    *(v9 + 2) = v2;
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
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_2315DA474(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60428, &qword_231608B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[8 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2315DA5A4()
{
  OUTLINED_FUNCTION_71();
  if (v5)
  {
    OUTLINED_FUNCTION_34();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_70();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_33_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_66(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60548, &qword_2316098E0);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_53();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
    OUTLINED_FUNCTION_53();
    swift_arrayInitWithCopy();
  }
}

char *sub_2315DA728(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_37(a3, result);
  }

  return result;
}

char *sub_2315DA760(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_37(a3, result);
  }

  return result;
}

uint64_t sub_2315DA79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_81();
  if (v10 && (v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_5_1(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_21_1();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_21_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_2315DA87C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_81();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_5_1(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_21_1();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_21_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

void *sub_2315DA930(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2315DA954@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_2315DA988()
{
  result = qword_27DD60438;
  if (!qword_27DD60438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60438);
  }

  return result;
}

unint64_t sub_2315DA9E0()
{
  result = qword_27DD60440;
  if (!qword_27DD60440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60440);
  }

  return result;
}

unint64_t sub_2315DAA38()
{
  result = qword_27DD60448;
  if (!qword_27DD60448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60448);
  }

  return result;
}

uint64_t dispatch thunk of InteractionBuilder.build(requestId:)()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(v1 + 8);
  v16 = (v11 + *v11);
  v12 = v11[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_2315B4660;

  return v16(v10, v8, v6, v4, v2);
}

uint64_t sub_2315DAC40()
{
  result = sub_2316061C8();
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

uint64_t getEnumTagSinglePayload for CatPropertyKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CatPropertyKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2315DAEC4()
{
  sub_2315DAF60();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2315DAF60()
{
  if (!qword_280FE85C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD60450, qword_231608DE8);
    v0 = sub_2316069A8();
    if (!v1)
    {
      atomic_store(v0, &qword_280FE85C0);
    }
  }
}

uint64_t sub_2315DAFC4()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2315B4740;

  return sub_2315D710C(v5, v3, v0);
}

uint64_t sub_2315DB068()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_88();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_2315B4740;
  OUTLINED_FUNCTION_42();

  return sub_2315D7FA8(v7, v8, v9, v10, v3, v4);
}

uint64_t sub_2315DB118()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_88();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2315B4740;
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_96();

  return sub_2315D8C24(v6, v7, v8, v9, v10);
}

uint64_t sub_2315DB1C4()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  OUTLINED_FUNCTION_4(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = (v0 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v0 + v6);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_2315B4660;
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_58();

  return sub_2315D90D8(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2315DB2F4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_88();
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_2_2(v4);

  return sub_2315D9800(v5, v6, v2, v3);
}

uint64_t objectdestroy_63Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2315DB3D0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_88();
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_2_2(v4);

  return sub_2315D249C(v5, v6, v2, v3);
}

uint64_t sub_2315DB46C()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  OUTLINED_FUNCTION_48();

  return v7(v2);
}

void sub_2315DB554()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v4 = sub_231606158();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v14 = *(*v0 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60580, &qword_231609040);
  v15 = sub_231606B28();
  v16 = v15;
  if (!*(v13 + 16))
  {
LABEL_33:

LABEL_34:
    *v1 = v16;
    OUTLINED_FUNCTION_69();
    return;
  }

  v48 = v12;
  v42 = v1;
  v17 = 0;
  v18 = (v13 + 64);
  v19 = 1 << *(v13 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v13 + 64);
  v22 = (v19 + 63) >> 6;
  v43 = v13;
  v44 = v7;
  v45 = (v7 + 32);
  v23 = v15 + 64;
  if (!v21)
  {
LABEL_9:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = v18[v17];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    if ((v3 & 1) == 0)
    {

      v1 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v13 + 32);
    v1 = v42;
    if (v41 >= 64)
    {
      sub_2315DC1C0(0, (v41 + 63) >> 6, v18);
    }

    else
    {
      *v18 = -1 << v41;
    }

    *(v13 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_14:
    v27 = v24 | (v17 << 6);
    v47 = *(v44 + 72);
    v28 = *(v13 + 48) + v47 * v27;
    v29 = OUTLINED_FUNCTION_86();
    v30(v29);
    v46 = *(*(v13 + 56) + 8 * v27);
    if ((v3 & 1) == 0)
    {
    }

    v31 = *(v16 + 40);
    sub_2315DC670(&qword_280FE95D8, MEMORY[0x277D60BA8]);
    v32 = sub_231606758();
    v33 = -1 << *(v16 + 32);
    v34 = v32 & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v23 + 8 * (v34 >> 6))) == 0)
    {
      break;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v23 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v23 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    (*v45)(*(v16 + 48) + v47 * v36, v48, v4);
    *(*(v16 + 56) + 8 * v36) = v46;
    ++*(v16 + 16);
    v13 = v43;
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  v37 = 0;
  v38 = (63 - v33) >> 6;
  while (++v35 != v38 || (v37 & 1) == 0)
  {
    v39 = v35 == v38;
    if (v35 == v38)
    {
      v35 = 0;
    }

    v37 |= v39;
    v40 = *(v23 + 8 * v35);
    if (v40 != -1)
    {
      v36 = __clz(__rbit64(~v40)) + (v35 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_2315DB8EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E0, &unk_231609B40);
  v36 = a2;
  result = sub_231606B28();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_2315DC1C0(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 48 * v19);
    if (v36)
    {
      sub_2315CAB60(v23, v37);
    }

    else
    {
      sub_2315B2D08(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_231606C68();
    sub_2316067E8();
    result = sub_231606C88();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_2315CAB60(v37, (*(v8 + 56) + 48 * v28));
    ++*(v8 + 16);
    if (!v13)
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
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_2315DBBAC()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v31 = v4;
  v6 = v5;
  v7 = sub_231605888();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = *v0;
  v17 = sub_2315CCFD4();
  OUTLINED_FUNCTION_44(v17, v18);
  if (v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = v19;
  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60200, &qword_231607AB0);
  if ((sub_231606AC8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v24 = *v1;
  v25 = sub_2315CCFD4();
  if ((v23 & 1) != (v26 & 1))
  {
LABEL_11:
    sub_231606C08();
    __break(1u);
    return;
  }

  v22 = v25;
LABEL_5:
  v27 = *v1;
  if (v23)
  {
    v28 = (v27[7] + 16 * v22);
    v29 = v28[1];
    *v28 = v6;
    v28[1] = v31;
    OUTLINED_FUNCTION_69();
  }

  else
  {
    (*(v10 + 16))(v15, v3, v7);
    sub_2315DBFE4(v22, v15, v6, v31, v27);
    OUTLINED_FUNCTION_69();
  }
}

__n128 *sub_2315DBD48(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2315CD0A0(a2, a3);
  OUTLINED_FUNCTION_44(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C0, &qword_231608FD0);
  if ((OUTLINED_FUNCTION_91() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = OUTLINED_FUNCTION_83();
  v19 = sub_2315CD0A0(v17, v18);
  if ((v15 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_231606C08();
    __break(1u);
    return result;
  }

  v14 = v19;
LABEL_5:
  v21 = *v4;
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v21[7] + 32 * v14));
    v22 = OUTLINED_FUNCTION_85();

    return sub_2315B55D4(v22, v23);
  }

  else
  {
    sub_2315DC09C(v14, a2, a3, a1, v21);
  }
}

void sub_2315DBE6C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2316061C8();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *v0;
  v16 = sub_2315CD118();
  OUTLINED_FUNCTION_44(v16, v17);
  if (v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60570, &qword_231609030);
  if ((OUTLINED_FUNCTION_91() & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = *v1;
  v24 = sub_2315CD118();
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_11:
    sub_231606C08();
    __break(1u);
    return;
  }

  v21 = v24;
LABEL_5:
  v26 = *v1;
  if (v22)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v21);
    *(v27 + 8 * v21) = v5;
    OUTLINED_FUNCTION_69();
  }

  else
  {
    (*(v9 + 16))(v14, v3, v6);
    sub_2315DC108(v21, v14, v5, v26);
    OUTLINED_FUNCTION_69();
  }
}

uint64_t sub_2315DBFE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_231605888();
  OUTLINED_FUNCTION_5_1(v11);
  result = (*(v12 + 32))(v10 + *(v12 + 72) * a1, a2);
  v14 = (a5[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a4;
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

__n128 *sub_2315DC09C(unint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2315B55D4(a4, (a5[7] + 32 * a1));
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

uint64_t sub_2315DC108(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2316061C8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2315DC1C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_231608AD0;
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

uint64_t sub_2315DC224(uint64_t a1, char a2, uint64_t *a3)
{
  v33 = a3;
  v28 = *(a1 + 16);
  if (!v28)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_2315DC458(v6, v31, &qword_27DD60488, &qword_231608EC8);
    v8 = v31[0];
    v7 = v31[1];
    sub_2315CAB60(v32, v30);
    v9 = *v33;
    v11 = sub_2315CD0A0(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E8, &qword_231608FA0);
        sub_231606AD8();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v16 = v33;
      sub_2315DB8EC(v14, a2 & 1);
      v17 = *v16;
      v18 = sub_2315CD0A0(v8, v7);
      if ((v15 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v11 = v18;
      if (v15)
      {
LABEL_11:
        v20 = *v33;
        sub_2315B2D08(*(*v33 + 56) + 48 * v11, v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);

        v21 = (*(v20 + 56) + 48 * v11);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        sub_2315CAB60(v29, v21);
        goto LABEL_15;
      }
    }

    v22 = *v33;
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v22[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    sub_2315CAB60(v30, (v22[7] + 48 * v11));
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v22[2] = v26;
LABEL_15:
    ++v5;
    v6 += 64;
    a2 = 1;
    if (v28 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_231606C08();
  __break(1u);
  return result;
}

uint64_t sub_2315DC458(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_85();
  v9(v8);
  return a2;
}

unint64_t sub_2315DC4B4()
{
  result = qword_27DD60508;
  if (!qword_27DD60508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60508);
  }

  return result;
}

unint64_t sub_2315DC508()
{
  result = qword_280FE85B0;
  if (!qword_280FE85B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FE85B0);
  }

  return result;
}

uint64_t sub_2315DC54C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_23(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_2315DC5AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604A8, &qword_231608F20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2315DC61C()
{
  result = qword_27DD60568;
  if (!qword_27DD60568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60568);
  }

  return result;
}

uint64_t sub_2315DC670(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for StateStoreInteractionBuilder.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2315DC798()
{
  result = qword_27DD60590;
  if (!qword_27DD60590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60590);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1)
{
  *(a1 + 8) = sub_2315D5B88;
  result = v1[63];
  v3 = v1[48];
  v4 = v1[41];
  v5 = v1[42];
  return result;
}

void *OUTLINED_FUNCTION_27_0(uint64_t a1)
{
  *(a1 + 8) = sub_2315D4A98;
  v2 = v1[37];
  v3 = v1[38];
  v4 = v1[36];
  return v1 + 18;
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1)
{
  *(a1 + 8) = sub_2315D47FC;
  v2 = v1[37];
  v3 = v1[38];
  return v1[36];
}

double OUTLINED_FUNCTION_46()
{
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_51(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_62()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_66(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

__n128 *OUTLINED_FUNCTION_74(__n128 a1, __n128 a2, uint64_t a3, __n128 *a4)
{
  *a4 = a1;
  a4[1] = a2;
  return a4;
}

uint64_t OUTLINED_FUNCTION_75()
{
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_89()
{
  *(v0 + 136) = 0;
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_231606AC8();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_2315B300C(v1, v0);
}

uint64_t sub_2315DCB10(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2315CCFD4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_1(v3);
  return v2;
}

double sub_2315DCB58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2315CD0A0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2315B2BB4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2315DCBBC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2315CD118();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

double sub_2315DCC0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2315CD0A0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 48 * v6;

    sub_2315B2D08(v8, a4);
  }

  else
  {
    result = 0.0;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t sub_2315DCC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2315CD0A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_1(v4);
  return v3;
}

uint64_t sub_2315DCCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2315CD0A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void DirectInvocationUserDataKey.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_2_5();
      break;
    default:
      return;
  }
}

SiriSuggestionsSupport::DirectInvocationAction_optional __swiftcall DirectInvocationAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231606B48();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void DirectInvocationAction.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
      return;
    default:
      OUTLINED_FUNCTION_2_5();
      break;
  }
}

SiriSuggestionsSupport::DirectInvocationUserDataKey_optional __swiftcall DirectInvocationUserDataKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231606B48();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_2315DCF58(void *a1@<X8>)
{
  DirectInvocationUserDataKey.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

void sub_2315DCFB0(void *a1@<X8>)
{
  DirectInvocationAction.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

id static DirectInvocationFactory.createExecute(suggestion:)()
{
  sub_231605DB8();
  v0 = v22;
  sub_2315C3400(&v20);
  if (v0)
  {
    v1 = sub_231604F78();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    sub_231604F68();
    sub_231605DD8();
    sub_2315DDB8C(&qword_27DD60598, MEMORY[0x277D606E0]);
    v4 = sub_231604F58();
    v6 = v5;
    sub_2315B2F24(v4, v5);
    v7 = sub_231605028();
    v9 = v8;
    sub_2315B300C(v4, v6);

    sub_2315B300C(v4, v6);
    sub_2315DDAC8();
    v10 = sub_2315DD304();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD605A8, &unk_231609108);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_1_5(inited, xmmword_2316084E0);
    v20 = v12;
    v21 = v13;
    v14 = MEMORY[0x277D837D0];
    sub_231606A08();
    inited[6].n128_u64[0] = v14;
    OUTLINED_FUNCTION_6_3();
    inited[4].n128_u64[1] = 0xD000000000000011;
    inited[5].n128_u64[0] = v15;
    v20 = 0x6974736567677573;
    v21 = 0xEA00000000006E6FLL;
    sub_231606A08();
    inited[10].n128_u64[1] = v14;
    inited[9].n128_u64[0] = v7;
    inited[9].n128_u64[1] = v9;
    v16 = sub_231606728();
    sub_2315DDB0C(v16, v10);
    v17 = objc_opt_self();
    v18 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
    v0 = [v17 runSiriKitExecutorCommandWithContext:v18 payload:v10];
  }

  return v0;
}

id sub_2315DD304()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231606788();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

id static DirectInvocationFactory.createShowMore(suggestions:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v48 - v2;
  v4 = sub_231606128();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_231605C58();
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v50 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  (*(v7 + 104))(v11, *MEMORY[0x277D60AE0], v4);
  v17 = sub_231605098();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v17);
  sub_231605C18();
  v18 = sub_231604F78();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_231604F68();
  sub_2315DDB8C(&qword_27DD605B0, MEMORY[0x277D60680]);
  v21 = sub_231604F58();
  v23 = v22;
  sub_2315B2F24(v21, v22);
  v49 = sub_231605028();
  v25 = v24;
  sub_2315B300C(v21, v23);

  sub_2315B300C(v21, v23);
  v26 = *(v18 + 48);
  v27 = *(v18 + 52);
  swift_allocObject();
  sub_231604F68();
  sub_231605E98();
  sub_2315DDB8C(&qword_280FE9610, MEMORY[0x277D60708]);
  v29 = sub_231604F58();
  v31 = v30;
  sub_2315B2F24(v29, v30);
  v48 = sub_231605028();
  v33 = v32;
  sub_2315B300C(v29, v31);

  sub_2315B300C(v29, v31);
  sub_2315DDAC8();
  v34 = sub_2315DD304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD605A8, &unk_231609108);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_5(inited, xmmword_2316089F0);
  v51 = v36;
  v52 = v37;
  v38 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6_3();
  inited[6].n128_u64[0] = v38;
  inited[4].n128_u64[1] = 0xD000000000000013;
  inited[5].n128_u64[0] = v39;
  OUTLINED_FUNCTION_6_3();
  v51 = 0xD000000000000013;
  v52 = v40;
  OUTLINED_FUNCTION_3_4();
  inited[10].n128_u64[1] = v38;
  inited[9].n128_u64[0] = v49;
  inited[9].n128_u64[1] = v25;
  OUTLINED_FUNCTION_6_3();
  v51 = 0xD000000000000016;
  v52 = v41;
  OUTLINED_FUNCTION_3_4();
  inited[15].n128_u64[0] = v38;
  inited[13].n128_u64[1] = v48;
  inited[14].n128_u64[0] = v33;
  v42 = sub_231606728();
  sub_2315DDB0C(v42, v34);
  v43 = objc_opt_self();
  v44 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v45 = [v43 runSiriKitExecutorCommandWithContext:v44 payload:v34];

  v46 = OUTLINED_FUNCTION_5_6();
  v47(v46);
  return v45;
}

uint64_t Parse.DirectInvocation.getUserData(for:)@<X0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  result = sub_2316052F8();
  if (result)
  {
    v5 = result;
    v6 = 0xE600000000000000;
    v7 = 0x6E6F69746361;
    switch(v3)
    {
      case 1:
        v7 = 0xD000000000000013;
        v6 = 0x800000023160A0B0;
        break;
      case 2:
        v6 = 0x800000023160A0D0;
        v7 = 0xD000000000000016;
        break;
      case 3:
        v6 = 0xEE00657079546E6FLL;
        v8 = 0x61636F766E69;
        goto LABEL_9;
      case 4:
        v6 = 0xEF6449747865746ELL;
        v7 = 0x6F43676F6C616964;
        break;
      case 5:
        v6 = 0xEA00000000006E6FLL;
        v8 = 0x736567677573;
LABEL_9:
        v7 = v8 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
        break;
      default:
        break;
    }

    sub_2315DCB58(v7, v6, v5, a2);
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_2315DDAC8()
{
  result = qword_27DD605A0;
  if (!qword_27DD605A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD605A0);
  }

  return result;
}

void sub_2315DDB0C(uint64_t a1, void *a2)
{
  v3 = sub_231606708();

  [a2 setUserData_];
}

uint64_t sub_2315DDB8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2315DDBD8()
{
  result = qword_27DD605B8;
  if (!qword_27DD605B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD605B8);
  }

  return result;
}

unint64_t sub_2315DDC30()
{
  result = qword_27DD605C0;
  if (!qword_27DD605C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD605C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectInvocationUserDataKey(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DirectInvocationUserDataKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DirectInvocationAction(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DirectInvocationAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DirectInvocationFactory(_BYTE *result, int a2, int a3)
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

id SiriSuggestionsServiceDelegate.init(with:eventDrivenClient:autocompleteService:offlineGenerationClient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *&v4[OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_client] = a1;
  sub_2315B4568(a2, &v4[OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_eventDrivenClient]);
  sub_2315B4568(a3, &v4[OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_autocompleteService]);
  sub_2315B4568(a4, &v4[OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_offlineGenerationClient]);
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SiriSuggestionsServiceDelegate();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

id SiriSuggestionsServiceDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSuggestionsServiceDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSuggestionsServiceDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2315DE240@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2315DE2D0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_2315E91C4(0, result, v2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = sub_2315F162C(0);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2315DE364(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_231606B08();

    return v10;
  }

  v4 = sub_2315E7094(a2);
  v5 = sub_2315E91C4(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_2315E9210(0, a2);
  sub_2315E9210(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_2315E9290(0, &qword_27DD60738, 0x277D052C8);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_231606A38();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_2315DE4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_93();
  v89 = v21;
  v91 = v22;
  v24 = v23;
  v80 = v23;
  v83 = v25;
  v82 = v26;
  v86 = v27;
  v87 = v28;
  v92 = v29;
  v88 = a21;
  v30 = sub_231604FF8();
  v90 = *(v30 - 8);
  v31 = v90;
  v32 = *(v90 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v77 - v37;
  v84 = sub_231606308();
  v85 = sub_2316062F8();
  sub_2315DEFAC();
  v39 = type metadata accessor for SiriHelpResponseFramework2Invoker(0);
  v40 = *(v31 + 16);
  v41 = OUTLINED_FUNCTION_59();
  v78 = v30;
  v40(v41);
  sub_2315DC54C(v24, v95);
  v42 = v92;
  v43 = OUTLINED_FUNCTION_36_0();
  v81 = sub_2315B9858(v43, v44, v45);
  v46 = OUTLINED_FUNCTION_59();
  v93 = v38;
  v40(v46);
  v79 = v40;
  sub_2315DC54C(v86, v95);
  v47 = type metadata accessor for SiriHelpResponseFramework1Invoker(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v86 = v42;
  v50 = v82;
  v51 = v83;
  sub_2315E9460(v82);
  v52 = OUTLINED_FUNCTION_36_0();
  v83 = SiriHelpResponseFramework1Invoker.init(templatesUrl:catGlobals:patternFlowProvider:patternExecutor:)(v52, v53, v54, v50, v51);
  v55 = OUTLINED_FUNCTION_59();
  v56 = v78;
  v40(v55);
  sub_2315DC54C(v80, v95);
  v57 = *(v39 + 48);
  v58 = *(v39 + 52);
  swift_allocObject();
  v59 = OUTLINED_FUNCTION_36_0();
  v62 = sub_2315B9780(v59, v60, v61, 1);
  v63 = type metadata accessor for SiriHelpResponseVersionInvoker();
  v64 = swift_allocObject();
  v65 = MEMORY[0x277D60FF0];
  v67 = v84;
  v66 = v85;
  v64[5] = v84;
  v64[6] = v65;
  v64[2] = v66;
  v64[10] = v47;
  v64[11] = &off_2846234B0;
  v64[7] = v83;
  v64[15] = v39;
  v64[16] = &off_2846234C0;
  v64[12] = v81;
  v64[20] = v39;
  v64[21] = &off_2846234C0;
  v64[17] = v62;
  sub_2315DC54C(v87, v95);
  v68 = v79;
  (v79)(v35, v93, v56);
  sub_2315DC54C(v88, v94);
  v69 = *(v89 + 48);
  v70 = *(v89 + 52);
  v71 = swift_allocObject();
  v72 = (v71 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_responseFrameworkInvoker);
  v72[3] = v63;
  v72[4] = &off_2846234D0;
  *v72 = v64;
  v73 = (v71 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_featureFlagProvider);
  v73[3] = v67;
  v73[4] = MEMORY[0x277D60FF0];
  *v73 = v66;
  *(v71 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_staticSuggestionsCount) = 3;
  *(v71 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_catGlobals) = v92;
  sub_2315DC54C(v95, v71 + 16);
  *(v71 + 56) = v91;
  v68(v71 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_templatesUrl, v35, v56);
  sub_2315DC54C(v94, v71 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils);
  sub_2316059F8();
  v74 = v86;

  v75 = sub_2316059E8();
  __swift_destroy_boxed_opaque_existential_1Tm_0(v94);
  v76 = *(v90 + 8);
  v76(v35, v56);
  __swift_destroy_boxed_opaque_existential_1Tm_0(v95);
  v76(v93, v56);
  *(v71 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_siriFeatureSupportPolicyProvider) = v75;
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315DE8E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    OUTLINED_FUNCTION_23(v6);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v7);
}

void *sub_2315DE988(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v34 = sub_231605868();
  v37 = *(v34 - 8);
  v9 = *(v37 + 64);
  result = MEMORY[0x28223BE20](v34);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a3;
  v36 = a4 >> 1;
  v13 = __OFSUB__(a4 >> 1, a3);
  v14 = (a4 >> 1) - a3;
  if (v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v39 = MEMORY[0x277D84F90];
  result = sub_231604060(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v29 = v5;
    v15 = v39;
    result = objc_opt_self();
    v16 = 0;
    v31 = v37 + 32;
    v32 = result;
    v30 = a2 + 8 * v38;
    v33 = v14;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if ((v38 + v16) >= v36 || v16 >= v14)
      {
        goto LABEL_17;
      }

      v19 = *(v30 + 8 * v16);
      v20 = [v19 fullPrint];
      sub_231606798();

      sub_2316057D8();
      v21 = [v19 fullPrint];
      if (!v21)
      {
        sub_231606798();
        v21 = sub_231606788();
      }

      v22 = *v35;
      v23 = v35[1];

      v24 = sub_231606788();

      v25 = [v32 quote:v21 forLocale:v24];

      sub_231606798();
      sub_231605838();
      v26 = [v19 dialogId];
      sub_231606798();

      sub_2316057E8();
      v39 = v15;
      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_231604060(v27 > 1, v28 + 1, 1);
        v15 = v39;
      }

      *(v15 + 16) = v28 + 1;
      result = (*(v37 + 32))(v15 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, v12, v34);
      ++v16;
      v14 = v33;
      if (v17 == v33)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2315DECBC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v23 = sub_231605868();
  v5 = OUTLINED_FUNCTION_1_0(v23);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v25 = MEMORY[0x277D84F90];
  sub_231604060(0, v13, 0);
  v14 = v25;
  v15 = sub_231605DD8();
  OUTLINED_FUNCTION_4(v15);
  v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v19 = *(v18 + 72);
  while (1)
  {
    sub_2315E3BF4(v17, a2);
    if (v3)
    {
      break;
    }

    v3 = 0;
    v21 = *(v25 + 16);
    v20 = *(v25 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_231604060(v20 > 1, v21 + 1, 1);
    }

    *(v25 + 16) = v21 + 1;
    (*(v7 + 32))(v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v12, v23);
    v17 += v19;
    if (!--v13)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2315DEE98(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_2315E7094(a3);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x231932F00](i, a3);
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v9;
    v10 = a1(&v11);
    if (v3)
    {

      return v9;
    }

    if (v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_2315DEFAC()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v3 = sub_231604FF8();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_4();
  v11 = v9 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  sub_231604FD8();
  sub_231604F98();

  v37 = v6;
  v19 = *(v6 + 16);
  v19(v0, v18, v3);
  sub_231604FC8();
  sub_2315E9290(0, &qword_27DD60758, 0x277CCA8D8);
  v39 = v0;
  v19(v15, v0, v3);
  v20 = sub_2315DF394(v15);
  v21 = objc_opt_self();
  v38 = v20;
  v22 = [v21 bundleTemplateDir_];
  if (v22)
  {
    v23 = v22;
    sub_231606798();
    v15 = v2;

    v24 = v2;
    sub_231604FA8();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v24 = v2;
    v19(v2, v18, v3);
  }

  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v25 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v25, qword_280FE9558);
  v19(v11, v24, v3);
  v26 = sub_2316066C8();
  v27 = sub_231606958();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v11;
    v29 = OUTLINED_FUNCTION_60();
    v30 = OUTLINED_FUNCTION_63();
    v40 = v30;
    *v29 = 136315138;
    sub_2315E9418(&qword_27DD601D8, MEMORY[0x277CC9260]);
    sub_231606BC8();
    OUTLINED_FUNCTION_64_0();
    v36 = v18;
    v31 = *(v37 + 8);
    v31(v28, v3);
    v32 = sub_2315B1574(v28, v15, &v40);

    *(v29 + 4) = v32;
    _os_log_impl(&dword_2315AF000, v26, v27, "Creating platform safe URL: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v30);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();

    v31(v39, v3);
    v31(v36, v3);
  }

  else
  {

    v33 = *(v37 + 8);
    v33(v11, v3);
    v33(v39, v3);
    v34 = OUTLINED_FUNCTION_41();
    (v33)(v34);
  }

  OUTLINED_FUNCTION_69();
}

id sub_2315DF394(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231604FB8();
  v4 = [v2 initWithURL_];

  v5 = sub_231604FF8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_2315DF430()
{
  OUTLINED_FUNCTION_15();
  v1[121] = v0;
  v1[120] = v2;
  v1[119] = v3;
  v1[122] = *v0;
  v4 = sub_231605E98();
  v1[123] = v4;
  OUTLINED_FUNCTION_4(v4);
  v1[124] = v5;
  v1[125] = *(v6 + 64);
  v1[126] = OUTLINED_FUNCTION_23_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v7);
  v9 = *(v8 + 64);
  v1[127] = OUTLINED_FUNCTION_23_0();
  v10 = sub_2316052D8();
  v1[128] = v10;
  OUTLINED_FUNCTION_4(v10);
  v1[129] = v11;
  v13 = *(v12 + 64);
  v1[130] = OUTLINED_FUNCTION_23_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C8, &qword_231607A90);
  OUTLINED_FUNCTION_24(v14);
  v16 = *(v15 + 64);
  v1[131] = OUTLINED_FUNCTION_23_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60710, &qword_231609508);
  OUTLINED_FUNCTION_24(v17);
  v19 = *(v18 + 64);
  v1[132] = OUTLINED_FUNCTION_52();
  v1[133] = swift_task_alloc();
  v20 = sub_231605EF8();
  v1[134] = v20;
  OUTLINED_FUNCTION_4(v20);
  v1[135] = v21;
  v23 = *(v22 + 64);
  v1[136] = OUTLINED_FUNCTION_23_0();
  v24 = sub_231605F08();
  v1[137] = v24;
  OUTLINED_FUNCTION_4(v24);
  v1[138] = v25;
  v27 = *(v26 + 64);
  v1[139] = OUTLINED_FUNCTION_52();
  v1[140] = swift_task_alloc();
  v28 = sub_231605F28();
  v1[141] = v28;
  OUTLINED_FUNCTION_4(v28);
  v1[142] = v29;
  v31 = *(v30 + 64);
  v1[143] = OUTLINED_FUNCTION_23_0();
  v32 = sub_231605DD8();
  v1[144] = v32;
  OUTLINED_FUNCTION_4(v32);
  v1[145] = v33;
  v35 = *(v34 + 64);
  v1[146] = OUTLINED_FUNCTION_52();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v36 = sub_2316056F8();
  v1[153] = v36;
  OUTLINED_FUNCTION_4(v36);
  v1[154] = v37;
  v39 = *(v38 + 64);
  v1[155] = OUTLINED_FUNCTION_23_0();
  v40 = sub_231604FF8();
  v1[156] = v40;
  OUTLINED_FUNCTION_4(v40);
  v1[157] = v41;
  v43 = *(v42 + 64);
  v1[158] = OUTLINED_FUNCTION_52();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v44 = sub_2316059C8();
  v1[161] = v44;
  OUTLINED_FUNCTION_4(v44);
  v1[162] = v45;
  v47 = *(v46 + 64);
  v1[163] = OUTLINED_FUNCTION_52();
  v1[164] = swift_task_alloc();
  v48 = swift_task_alloc();
  v1[165] = v48;
  *v48 = v1;
  v48[1] = sub_2315DF8BC;
  v49 = OUTLINED_FUNCTION_41();

  return sub_2315E236C(v49, v50);
}

uint64_t sub_2315DF8BC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v1[67] = v0;
  v1[68] = v3;
  v1[69] = v4;
  v1[70] = v5;
  v1[71] = v6;
  v8 = *(v7 + 1320);
  *v2 = *v0;
  v1[166] = v3;
  v1[167] = v4;
  v1[168] = v6;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315DF9C8()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 968);

  sub_2316059B8();
  v4 = *(v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_catGlobals);
  if (v4)
  {
    v5 = *(v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_catGlobals);
  }

  else
  {
    sub_231605668();
    v5 = sub_231605658();
    v4 = 0;
  }

  *(v0 + 1352) = v5;
  *(v0 + 920) = 0;
  *(v0 + 928) = 0xE000000000000000;
  v6 = v4;
  v7 = sub_231605618();
  sub_2315DCB58(0x656C61636F6CLL, 0xE600000000000000, v7, (v0 + 576));

  p_superclass = _TtC22SiriSuggestionsSupport10Connection.superclass;
  v179 = v0;
  if (*(v0 + 600))
  {
    if (swift_dynamicCast())
    {
      v9 = *(v0 + 944);
      *(v0 + 920) = *(v0 + 936);
      *(v0 + 928) = v9;
      goto LABEL_12;
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 576, &unk_27DD605F0, qword_231609310);
  }

  if (qword_280FE9550 != -1)
  {
LABEL_81:
    OUTLINED_FUNCTION_0();
  }

  v10 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v10, qword_280FE9558);
  v11 = v5;
  v12 = sub_2316066C8();
  v13 = sub_231606978();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = p_superclass;
    v15 = OUTLINED_FUNCTION_60();
    v180 = OUTLINED_FUNCTION_63();
    *v15 = 136315138;
    sub_231605618();
    sub_231606718();

    v16 = OUTLINED_FUNCTION_13_2();
    v19 = sub_2315B1574(v16, v17, v18);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2315AF000, v12, v13, "Missing locale in %s, setting to empty", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v180);
    OUTLINED_FUNCTION_20();
    p_superclass = v14;
    v0 = v179;
    OUTLINED_FUNCTION_20();
  }

  v9 = 0xE000000000000000;
LABEL_12:
  *(v0 + 1360) = v9;
  v20 = *(v0 + 1328);
  v21 = *(v20 + 16);
  if (!v21)
  {
    v32 = *(v0 + 1328);

    if (*(p_superclass + 1360) == -1)
    {
LABEL_19:
      v33 = sub_2316066E8();
      OUTLINED_FUNCTION_47(v33, qword_280FE9558);
      v34 = sub_2316066C8();
      v35 = sub_231606958();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_33();
        *v36 = 0;
        _os_log_impl(&dword_2315AF000, v34, v35, "[warning] Not enough suggestions returned, falling back to static suggestions", v36, 2u);
        OUTLINED_FUNCTION_20();
      }

      v37 = *(v0 + 1280);
      v38 = *(v0 + 1240);
      v39 = *(v0 + 968);

      sub_2316056B8();
      sub_2315DEFAC();
      *(v0 + 1368) = sub_231606728();
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      *(v0 + 528) = 0;
      sub_2316056E8();
      v40 = *(MEMORY[0x277D55C20] + 4);
      v41 = swift_task_alloc();
      *(v0 + 1376) = v41;
      *v41 = v0;
      v41[1] = sub_2315E0968;
      v42 = *(v0 + 1280);
      v43 = *(v0 + 1240);
      OUTLINED_FUNCTION_68();

      return MEMORY[0x2821B7E50]();
    }

LABEL_83:
    OUTLINED_FUNCTION_0();
    goto LABEL_19;
  }

  v22 = *(v0 + 976);
  v23 = *(v0 + 952);
  sub_231605E48();
  sub_2315E30B0();
  v25 = v24;
  p_superclass = v26;
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 56));
  sub_231605E48();
  sub_2315E30B0();
  v28 = v27;
  v30 = v29;
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 96));
  v31 = v25 == v28 && p_superclass == v30;
  v175 = v25;
  v159 = v30;
  v160 = v28;
  if (v31)
  {
    v171 = 1;
  }

  else
  {
    v171 = sub_231606BD8();
  }

  v45 = *(v0 + 1160);
  v46 = *(v0 + 976);
  v47 = *(v0 + 960);
  v48 = *(v0 + 952);
  v164 = sub_231605C28();
  sub_231605E48();
  sub_2315E345C(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 136));
  v5 = 0;
  v178 = (v45 + 8);
  v176 = v45;
  v163 = (v45 + 32);
  v165 = MEMORY[0x277D84F90];
  v162 = p_superclass;
  while (v21 != v5)
  {
    if (v5 >= *(v20 + 16))
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v49 = *(v0 + 1328);
    v50 = *(v0 + 1216);
    OUTLINED_FUNCTION_43();
    v53 = v52 & ~v51;
    v55 = *(v54 + 72);
    (*(v54 + 16))(v50, v56 + v53 + v55 * v5);
    v57 = sub_2315E35A0(v50, v175, p_superclass);
    v58 = *(v0 + 1216);
    if (v57)
    {
      v61 = *v163;
      (*v163)(*(v0 + 1208), v58, *(v0 + 1152));
      v62 = v165;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_15_2();
        v62 = v165;
      }

      v64 = *(v62 + 16);
      v63 = *(v62 + 24);
      if (v64 >= v63 >> 1)
      {
        v67 = OUTLINED_FUNCTION_12_3(v63);
        OUTLINED_FUNCTION_50(v67);
        v62 = v165;
      }

      ++v5;
      v0 = v179;
      v65 = *(v179 + 1208);
      v66 = *(v179 + 1152);
      *(v62 + 16) = v64 + 1;
      v165 = v62;
      v61(v62 + v53 + v64 * v55, v65, v66);
      p_superclass = v162;
    }

    else
    {
      v59 = OUTLINED_FUNCTION_16_2(v58);
      v60(v59);
      ++v5;
    }
  }

  v68 = *(v0 + 1312);
  v69 = *(v165 + 16);
  v5 = (v69 != 0) & v171;
  sub_2316058E8();
  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v70 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v70, qword_280FE9558);
  v71 = sub_2316066C8();
  v72 = sub_231606968();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = *(v0 + 1312);
    v74 = swift_slowAlloc();
    *v74 = 67109120;
    swift_beginAccess();
    LOBYTE(v73) = sub_2316058D8();
    swift_endAccess();
    *(v74 + 4) = v73 & 1;
    _os_log_impl(&dword_2315AF000, v71, v72, "Return fallback suggestions? %{BOOL}d", v74, 8u);
    OUTLINED_FUNCTION_20();
  }

  v75 = v175 == 0x6C7070612E6D6F63 && p_superclass == 0xEE00697269732E65;
  if (!v75 && (sub_231606BD8() & 1) == 0 && ((v69 != 0) & v171) == 0 && v69)
  {
    v5 = 0;
    v76 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v21 == v5)
      {
        v156 = *(v0 + 1328);

        v97 = v165;
        goto LABEL_57;
      }

      if (v5 >= *(v20 + 16))
      {
        break;
      }

      v77 = *(v0 + 1328);
      v78 = *(v0 + 1200);
      OUTLINED_FUNCTION_43();
      v81 = v80 & ~v79;
      p_superclass = *(v82 + 72);
      (*(v82 + 16))(v78, v83 + v81 + p_superclass * v5);
      v84 = sub_2315E3694();
      v85 = *(v0 + 1200);
      if (v84)
      {
        v88 = *(v0 + 1192);
        v89 = *(v0 + 1152);
        v90 = *v163;
        (*v163)(v88, v85, v89);
        v91 = v76;
        v172 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_15_2();
          v91 = v76;
        }

        v93 = *(v91 + 16);
        v92 = *(v91 + 24);
        if (v93 >= v92 >> 1)
        {
          v96 = OUTLINED_FUNCTION_12_3(v92);
          OUTLINED_FUNCTION_50(v96);
          v91 = v76;
        }

        ++v5;
        v0 = v179;
        v94 = *(v179 + 1192);
        v95 = *(v179 + 1152);
        *(v91 + 16) = v93 + 1;
        v76 = v91;
        v172(v91 + v81 + v93 * p_superclass, v94, v95);
      }

      else
      {
        v86 = OUTLINED_FUNCTION_16_2(v85);
        v87(v86);
        ++v5;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  v97 = *(v0 + 1328);
  v76 = MEMORY[0x277D84F90];
LABEL_57:
  v181 = v97;
  v166 = v97;

  v158 = v76;
  sub_2315E5ACC(v98);
  v99 = v181;
  if (v164)
  {
    v100 = 0;
    v101 = *(v0 + 1104);
    v173 = *(v181 + 16);
    v170 = (*(v0 + 1136) + 8);
    v169 = *MEMORY[0x277D60720];
    v167 = (v101 + 8);
    v168 = (v101 + 104);
    v161 = MEMORY[0x277D84F90];
    while (v173 != v100)
    {
      if (v100 >= *(v99 + 16))
      {
        goto LABEL_80;
      }

      v102 = *(v0 + 1144);
      v103 = *(v179 + 1128);
      v104 = *(v179 + 1120);
      v105 = *(v179 + 1112);
      v106 = *(v179 + 1096);
      v107 = (*(v176 + 80) + 32) & ~*(v176 + 80);
      v108 = *(v176 + 72);
      (*(v176 + 16))(*(v0 + 1184), v99 + v107 + v108 * v100, *(v0 + 1152));
      sub_231605DC8();
      sub_231605F18();
      v0 = v179;
      (*v170)(v102, v103);
      (*v168)(v105, v169, v106);
      OUTLINED_FUNCTION_2_7();
      sub_2315E9418(&qword_27DD60730, v109);
      v110 = sub_231606778();
      p_superclass = v167;
      v5 = *v167;
      v111 = OUTLINED_FUNCTION_58_0();
      (v5)(v111);
      (v5)(v104, v106);
      if (v110)
      {
        v112 = OUTLINED_FUNCTION_16_2(*(v179 + 1184));
        v113(v112);
        ++v100;
        v99 = v181;
      }

      else
      {
        v5 = *v163;
        (*v163)(*(v179 + 1176), *(v179 + 1184), *(v179 + 1152));
        v114 = v161;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_15_2();
          v114 = v161;
        }

        v115 = v100;
        p_superclass = *(v114 + 16);
        v116 = *(v114 + 24);
        if (p_superclass >= v116 >> 1)
        {
          v119 = OUTLINED_FUNCTION_12_3(v116);
          OUTLINED_FUNCTION_50(v119);
          v115 = v100;
          v114 = v161;
        }

        v100 = v115 + 1;
        v0 = v179;
        v117 = *(v179 + 1176);
        v118 = *(v179 + 1152);
        *(v114 + 16) = p_superclass + 1;
        v161 = v114;
        (v5)(v114 + v107 + p_superclass * v108, v117, v118);
        v99 = v181;
      }
    }

    v120 = v161;
  }

  else
  {
    v120 = v181;
  }

  v121 = *(v0 + 1312);
  OUTLINED_FUNCTION_27_1();
  sub_231605898();
  swift_endAccess();
  v122 = *(v120 + 16);
  if (v122)
  {
    v123 = *(v0 + 1080);
    v182 = MEMORY[0x277D84F90];
    sub_2316040B8(0, v122, 0);
    v124 = v120 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
    v174 = *(v176 + 72);
    v177 = *(v176 + 16);
    do
    {
      v125 = *(v179 + 1168);
      v126 = *(v179 + 1152);
      v127 = *(v179 + 1088);
      v128 = *(v179 + 1072);
      v177(v125, v124, v126);
      sub_231605D68();
      v129 = sub_231605EA8();
      v131 = v130;
      v132 = OUTLINED_FUNCTION_66_0();
      v133(v132, v128);
      (*v178)(v125, v126);
      v135 = *(v182 + 16);
      v134 = *(v182 + 24);
      if (v135 >= v134 >> 1)
      {
        v137 = OUTLINED_FUNCTION_12_3(v134);
        sub_2316040B8(v137, v135 + 1, 1);
      }

      *(v182 + 16) = v135 + 1;
      v136 = v182 + 16 * v135;
      *(v136 + 32) = v129;
      *(v136 + 40) = v131;
      v124 += v174;
      --v122;
    }

    while (v122);
  }

  v138 = *(v179 + 1312);
  v139 = *(v179 + 976);
  OUTLINED_FUNCTION_27_1();
  sub_2316058C8();
  swift_endAccess();
  sub_2315DECBC(v166, (v179 + 920));

  OUTLINED_FUNCTION_27_1();
  sub_231605918();
  swift_endAccess();
  sub_2315DECBC(v158, (v179 + 920));

  OUTLINED_FUNCTION_27_1();
  sub_2316058B8();
  sub_231605998();
  swift_endAccess();
  *(v179 + 1424) = v162;
  *(v179 + 1416) = v175;
  *(v179 + 1408) = v159;
  *(v179 + 1400) = v160;
  *(v179 + 1528) = v164 & 1;
  v140 = *(v179 + 1312);
  v141 = *(v179 + 968);
  v142 = OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils;
  *(v179 + 1432) = OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils;
  v143 = (v141 + v142);
  v144 = *(v141 + v142 + 24);
  v145 = *(v141 + v142 + 32);
  v146 = OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_1(v146, v147);
  OUTLINED_FUNCTION_46_0();
  sub_231606598();
  OUTLINED_FUNCTION_27_1();
  sub_231605978();
  swift_endAccess();
  v148 = v143[4];
  OUTLINED_FUNCTION_51_0(v143, v143[3]);
  sub_2316065A8();
  v149 = *(v179 + 288);
  OUTLINED_FUNCTION_51_0((v179 + 256), *(v179 + 280));
  v150 = *(MEMORY[0x277D60D78] + 4);
  v151 = swift_task_alloc();
  *(v179 + 1440) = v151;
  *v151 = v179;
  v151[1] = sub_2315E0EC4;
  OUTLINED_FUNCTION_68();

  return MEMORY[0x2821C6CC0](v152, v153, v154);
}