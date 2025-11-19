uint64_t sub_2697E422C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v5 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  v7 = v1[14];
  v8 = v1[13];
  v9 = v1[12];

  v10 = *(v5 + 8);

  return v10();
}

uint64_t sub_2697E43AC()
{
  OUTLINED_FUNCTION_2_7();
  v1[43] = v2;
  v1[44] = v0;
  v1[41] = v3;
  v1[42] = v4;
  v1[39] = v5;
  v1[40] = v6;
  v1[37] = v7;
  v1[38] = v8;
  v1[45] = *v0;
  v9 = sub_2698548D4();
  v1[46] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[47] = v10;
  v12 = *(v11 + 64);
  v1[48] = OUTLINED_FUNCTION_37_0();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v13 = sub_269853984();
  v1[56] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[57] = v14;
  v16 = *(v15 + 64);
  v1[58] = OUTLINED_FUNCTION_37_0();
  v1[59] = swift_task_alloc();
  v17 = type metadata accessor for AppSelectionResult(0);
  v1[60] = v17;
  v18 = *(*(v17 - 8) + 64);
  v1[61] = OUTLINED_FUNCTION_37_0();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697E4578, 0, 0);
}

uint64_t sub_2697E4578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  v17 = *(*__swift_project_boxed_opaque_existential_1((*(v16 + 352) + 16), *(*(v16 + 352) + 40)) + 16);
  sub_2697EABE0(v16 + 16);
  sub_2697E6EC0(v16 + 16, v16 + 240);
  if (*(v16 + 264))
  {
    sub_26968E5D4((v16 + 240), v16 + 200);
    v18 = *(v16 + 232);
    __swift_project_boxed_opaque_existential_1((v16 + 200), *(v16 + 224));
    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_22_3();
    *(v16 + 512) = v21(v20);
    *(v16 + 520) = v22;
    if (v22)
    {
      v23 = swift_task_alloc();
      *(v16 + 528) = v23;
      *v23 = v16;
      v23[1] = sub_2697E4968;
      v24 = *(v16 + 464);
      v25 = *(v16 + 304);
      v26 = *(v16 + 312);
      OUTLINED_FUNCTION_7_8();

      return sub_2697B7D94(v27, v28, v29);
    }

    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v55 = *(v16 + 408);
    v56 = *(v16 + 376);
    __swift_project_value_buffer(*(v16 + 368), qword_281571B50);
    v57 = OUTLINED_FUNCTION_2_8();
    v58(v57);
    v59 = sub_2698548B4();
    v60 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v60))
    {
      v61 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v61);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v44 = *(v16 + 504);
    v67 = *(v16 + 480);
    v68 = *(v16 + 408);
    v69 = *(v16 + 368);
    v70 = *(v16 + 376);
    v71 = *(v16 + 352);
    v72 = *(v16 + 312);
    v73 = *(v16 + 296);

    v74 = *(v70 + 8);
    v75 = OUTLINED_FUNCTION_44_0();
    v76(v75);
    v77 = *(v16 + 232);
    __swift_project_boxed_opaque_existential_1((v16 + 200), *(v16 + 224));
    OUTLINED_FUNCTION_23_17(v77);
    v78 = OUTLINED_FUNCTION_44_0();
    v80 = v79(v78);
    v82 = v81;
    sub_2697E719C(v16 + 16);
    *v44 = v72;
    v44[1] = v80;
    v44[2] = v82;
    OUTLINED_FUNCTION_22_3();
    swift_storeEnumTagMultiPayload();
    sub_2697E2F08(v44, v73);

    __swift_destroy_boxed_opaque_existential_0((v16 + 200));
    v54 = *(v71 + 112);
  }

  else
  {
    sub_26969B0C0(v16 + 240, &qword_2803255D0, &unk_2698667D0);
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v32 = *(v16 + 400);
    v33 = *(v16 + 376);
    __swift_project_value_buffer(*(v16 + 368), qword_281571B50);
    v34 = OUTLINED_FUNCTION_2_8();
    v35(v34);
    v36 = sub_2698548B4();
    v37 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v37))
    {
      v38 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v38);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v44 = *(v16 + 504);
    v45 = *(v16 + 480);
    v46 = *(v16 + 400);
    v47 = *(v16 + 368);
    v48 = *(v16 + 376);
    v49 = *(v16 + 352);
    v50 = *(v16 + 296);

    v51 = *(v48 + 8);
    v52 = OUTLINED_FUNCTION_44_0();
    v53(v52);
    sub_2697E719C(v16 + 16);
    OUTLINED_FUNCTION_22_3();
    swift_storeEnumTagMultiPayload();
    sub_2697E2F08(v44, v50);
    v54 = *(v49 + 112);
  }

  sub_2697E2988(v44);
  OUTLINED_FUNCTION_2_34();
  v93 = v84;
  v94 = v83;
  v95 = *(v16 + 392);
  v96 = *(v16 + 384);
  sub_2697E71F0(v54);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, v93, v94, v95, v96, a14, a15, a16);
}

uint64_t sub_2697E4968()
{
  OUTLINED_FUNCTION_2_7();
  v3 = *(*v1 + 528);
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v2;
  *(v2 + 536) = v0;

  if (v0)
  {
    v5 = *(v2 + 520);

    v6 = sub_2697E55BC;
  }

  else
  {
    v6 = sub_2697E4A78;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2697E4A78()
{
  v166 = v0;
  (*(v0[57] + 32))(v0[59], v0[58], v0[56]);
  v1 = *(sub_269853964() + 16);

  if (!v1)
  {
    v17 = v0[65];

    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v18 = v0[52];
    v19 = v0[47];
    __swift_project_value_buffer(v0[46], qword_281571B50);
    v20 = OUTLINED_FUNCTION_2_8();
    v21(v20);
    v22 = sub_2698548B4();
    v23 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v23))
    {
      v24 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v24);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v30 = v0[63];
    v31 = v0[59];
    v33 = v0[56];
    v32 = v0[57];
    v34 = v0[52];
    v35 = v0[46];
    v36 = v0[47];
    v158 = v0[60];
    v162 = v0[44];
    v37 = v0[39];
    v155 = v0[37];

    (*(v36 + 8))(v34, v35);
    v38 = v0[28];
    v39 = v0[29];
    __swift_project_boxed_opaque_existential_1(v0 + 25, v38);
    OUTLINED_FUNCTION_23_17(v39);
    v41 = v40(v38, v39);
    v43 = v42;
    v44 = *(v32 + 8);
    v45 = OUTLINED_FUNCTION_44_0();
    v46(v45);
    sub_2697E719C((v0 + 2));
    *v30 = v37;
    v30[1] = v41;
    v30[2] = v43;
    swift_storeEnumTagMultiPayload();
    sub_2697E2F08(v30, v155);
    goto LABEL_29;
  }

  v2 = v0[59];
  v3 = v0[39];
  v4 = sub_269853964();
  sub_2697E589C(v4, v3);
  v6 = v5;

  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v7 = v0[55];
  v8 = v0[47];
  v9 = __swift_project_value_buffer(v0[46], qword_281571B50);
  v11 = *(v8 + 16);
  v10 = v8 + 16;
  v157 = v9;
  v11(v7);

  v12 = sub_2698548B4();
  v13 = sub_269854F14();
  v154 = v11;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_27_2();
    *v14 = 134217984;
    *(v14 + 4) = *(v6 + 16);

    OUTLINED_FUNCTION_119(&dword_269684000, v15, v16, "ModelAppPredictor signal gatherer returned %ld rows");
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v163 = *(v0[47] + 8);
  v163(v0[55], v0[46]);
  v47 = *(v6 + 16);
  if (v47)
  {
    v48 = v10;
    v165[0] = MEMORY[0x277D84F90];
    sub_2698552A4();
    type metadata accessor for IntDictionaryFeatureProvider();
    v49 = 32;
    do
    {
      v50 = *(v6 + v49);
      swift_allocObject();

      sub_2697E30C8(v51);
      sub_269855284();
      v52 = *(v165[0] + 16);
      OUTLINED_FUNCTION_28_13();
      sub_2698552B4();
      OUTLINED_FUNCTION_28_13();
      sub_2698552C4();
      sub_269855294();
      v49 += 8;
      --v47;
    }

    while (v47);

    v53 = v165[0];
    v10 = v48;
  }

  else
  {

    v53 = MEMORY[0x277D84F90];
  }

  v54 = v0[28];
  v55 = v0[29];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v54);

  if (v53 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FB0, &unk_2698667F0);
    OUTLINED_FUNCTION_86();
    sub_269855364();
  }

  else
  {
    sub_269855594();
  }

  v56 = v0[67];

  sub_26969329C(0, &qword_280322FB8, 0x277CBFEB0);
  OUTLINED_FUNCTION_86();
  v57 = sub_2697E3918();
  v58 = (*(v55 + 24))(v57, v54, v55);
  if (v56)
  {
    v59 = v0[65];
    v60 = v0[48];
    v61 = v0[46];

    v154(v60, v157, v61);
    v62 = v56;
    v63 = sub_2698548B4();
    v64 = sub_269854F24();

    v65 = os_log_type_enabled(v63, v64);
    v66 = v0[48];
    v67 = v0[46];
    v152 = v56;
    if (v65)
    {
      v68 = OUTLINED_FUNCTION_27_2();
      v69 = OUTLINED_FUNCTION_9_3();
      v165[0] = v69;
      *v68 = 136315138;
      v0[36] = v56;
      v70 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v71 = sub_269854AE4();
      v73 = sub_26974F520(v71, v72, v165);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_269684000, v63, v64, "ModelAppPredictor error getting model predictions, %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v163(v66, v67);
    }

    else
    {

      v163(v66, v67);
    }

    v30 = v0[63];
    v82 = v0[59];
    v84 = v0[56];
    v83 = v0[57];
    v159 = v0[60];
    v162 = v0[44];
    v85 = v0[39];
    v86 = v0[37];
    v88 = v0[28];
    v87 = v0[29];
    __swift_project_boxed_opaque_existential_1(v0 + 25, v88);
    OUTLINED_FUNCTION_23_17(v87);
    v90 = v89(v88, v87);
    v92 = v91;

    (*(v83 + 8))(v82, v84);
    sub_2697E719C((v0 + 2));
    *v30 = v85;
    v30[1] = v90;
    v30[2] = v92;
    swift_storeEnumTagMultiPayload();
    sub_2697E2F08(v30, v86);
LABEL_29:

    __swift_destroy_boxed_opaque_existential_0(v0 + 25);
    v93 = *(v162 + 112);
    goto LABEL_38;
  }

  v74 = v58;

  result = [swift_unknownObjectRetain() count];
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v76 = result;
  v150 = v10;
  if (result)
  {
    v165[0] = MEMORY[0x277D84F90];
    sub_2698552A4();
    v77 = 0;
    do
    {
      v78 = v77 + 1;
      v79 = [v74 featuresAtIndex_];
      sub_269855284();
      v80 = *(v165[0] + 16);
      OUTLINED_FUNCTION_28_13();
      sub_2698552B4();
      OUTLINED_FUNCTION_28_13();
      sub_2698552C4();
      sub_269855294();
      v77 = v78;
    }

    while (v76 != v78);
    swift_unknownObjectRelease();
    v81 = v165[0];
  }

  else
  {
    swift_unknownObjectRelease();
    v81 = MEMORY[0x277D84F90];
  }

  v94 = v0[65];
  v95 = v0[64];
  v96 = v0[54];
  v97 = v0[46];
  v98 = v0[39];
  v99 = swift_task_alloc();
  *(v99 + 16) = v95;
  *(v99 + 24) = v94;

  sub_2697E6148(v100, v81, sub_2697E724C);
  v102 = v101;

  v103 = v154;
  v104 = v150;
  v154(v96, v157, v97);

  v105 = sub_2698548B4();
  LOBYTE(v97) = sub_269854F14();

  v106 = os_log_type_enabled(v105, v97);
  v107 = v0[54];
  v108 = v0[46];
  if (v106)
  {
    OUTLINED_FUNCTION_27_2();
    v109 = OUTLINED_FUNCTION_14_24();
    v165[0] = v109;
    *v150 = 136315138;
    sub_2697F01B8();
    v112 = sub_26974F520(v110, v111, v165);

    *(v150 + 4) = v112;
    OUTLINED_FUNCTION_40();
    _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v109);
    v103 = v154;
    OUTLINED_FUNCTION_10();
    v104 = v150;
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v163(v107, v108);
  v118 = v0[62];
  v119 = v0[63];
  v120 = v0[59];
  v121 = v0[53];
  v122 = v0[46];
  sub_2697E64B0(v102, v0[40], v0[41], v0[39], (v0 + 2), v0[42], v0[43], v119);

  v103(v121, v157, v122);
  sub_2697E2F08(v119, v118);
  v123 = sub_2698548B4();
  v124 = sub_269854F14();
  v125 = os_log_type_enabled(v123, v124);
  v126 = v0[62];
  if (v125)
  {
    v128 = v0[60];
    v127 = v0[61];
    v129 = v0[57];
    v156 = v0[56];
    v160 = v0[59];
    v153 = v0[53];
    v151 = v0[46];
    OUTLINED_FUNCTION_27_2();
    v130 = OUTLINED_FUNCTION_14_24();
    v165[0] = v130;
    *v104 = 136315138;
    sub_2697E2F08(v126, v127);
    OUTLINED_FUNCTION_22_3();
    sub_269854AE4();
    sub_2697E71F0(v126);
    v131 = OUTLINED_FUNCTION_22_3();
    v134 = sub_26974F520(v131, v132, v133);

    *(v104 + 4) = v134;
    OUTLINED_FUNCTION_40();
    _os_log_impl(v135, v136, v137, v138, v139, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v130);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
    swift_unknownObjectRelease();

    v163(v153, v151);
    (*(v129 + 8))(v160, v156);
  }

  else
  {
    v140 = v0[59];
    v141 = v0[56];
    v142 = v0[57];
    v143 = v0[53];
    v144 = v0[46];
    swift_unknownObjectRelease();

    sub_2697E71F0(v126);
    v163(v143, v144);
    v145 = *(v142 + 8);
    v146 = OUTLINED_FUNCTION_22_3();
    v147(v146);
  }

  sub_2697E719C((v0 + 2));
  v30 = v0[63];
  v148 = v0[44];
  sub_2697E2F08(v30, v0[37]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  v93 = *(v148 + 112);
LABEL_38:
  sub_2697E2988(v30);
  OUTLINED_FUNCTION_2_34();
  v161 = v0[49];
  v164 = v0[48];
  sub_2697E71F0(v93);

  OUTLINED_FUNCTION_7_7();

  return v149();
}

uint64_t sub_2697E55BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_6();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v27 = v24[67];
  v28 = v24[49];
  v29 = v24[46];
  v30 = v24[47];
  v31 = __swift_project_value_buffer(v29, qword_281571B50);
  (*(v30 + 16))(v28, v31, v29);
  v32 = v27;
  v33 = sub_2698548B4();
  LOBYTE(v30) = sub_269854F24();

  if (os_log_type_enabled(v33, v30))
  {
    v34 = v24[67];
    v35 = v24[49];
    v36 = v24[46];
    v37 = v24[47];
    v38 = OUTLINED_FUNCTION_27_2();
    v39 = OUTLINED_FUNCTION_9_3();
    a13 = v39;
    *v38 = 136315138;
    v24[35] = v34;
    v40 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v41 = sub_269854AE4();
    v43 = sub_26974F520(v41, v42, &a13);

    *(v38 + 4) = v43;
    OUTLINED_FUNCTION_119(&dword_269684000, v44, v45, "ModelAppPredictor error gathering signals, %s");
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v46 = *(v37 + 8);
  }

  else
  {
    v49 = v24[49];
    v50 = v24[46];
    v51 = v24[47];

    v52 = *(v51 + 8);
  }

  v47 = OUTLINED_FUNCTION_22_3();
  v48(v47);
  v53 = v24[67];
  v54 = v24[63];
  v55 = v24[60];
  v56 = v24[44];
  v57 = v24[39];
  v58 = v24[37];
  v59 = v24[28];
  v60 = v24[29];
  __swift_project_boxed_opaque_existential_1(v24 + 25, v59);
  OUTLINED_FUNCTION_23_17(v60);
  v62 = v61(v59, v60);
  v64 = v63;

  sub_2697E719C((v24 + 2));
  *v54 = v57;
  v54[1] = v62;
  v54[2] = v64;
  swift_storeEnumTagMultiPayload();
  sub_2697E2F08(v54, v58);

  __swift_destroy_boxed_opaque_existential_0(v24 + 25);
  v65 = *(v56 + 112);
  sub_2697E2988(v54);
  OUTLINED_FUNCTION_2_34();
  v77 = v67;
  v78 = v66;
  v79 = v24[49];
  v80 = v24[48];
  sub_2697E71F0(v65);

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_8();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, v77, v78, v79, v80, a13, a14, a15, a16);
}

void sub_2697E589C(uint64_t a1, uint64_t a2)
{
  v110 = sub_2698548D4();
  v4 = OUTLINED_FUNCTION_8(v110);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = sub_269853904();
  v13 = OUTLINED_FUNCTION_8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v106 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v121 = &v91 - v20;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  v21 = OUTLINED_FUNCTION_4_3(v118);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v122 = (&v91 - v24);
  v25 = *(a2 + 16);
  if (!v25)
  {
    return;
  }

  v105 = v11;
  v124 = MEMORY[0x277D84F90];
  sub_269815090(0, v25, 0);
  v26 = 0;
  v27 = 0;
  v28 = v124;
  v29 = a1 + 64;
  v94 = a2 + 32;
  v120 = v15 + 16;
  v114 = v15 + 88;
  v30 = *MEMORY[0x277D60170];
  v112 = *MEMORY[0x277D60188];
  v113 = v30;
  v104 = (v6 + 16);
  v103 = (v15 + 8);
  v102 = v6 + 8;
  v115 = v15;
  v107 = v15 + 96;
  *&v31 = 136315138;
  v95 = v31;
  v92 = v12;
  v116 = a1 + 64;
  v117 = a1;
  v93 = v25;
  do
  {
    v96 = v28;
    v97 = v27;
    v32 = (v94 + 16 * v26);
    v98 = v26 + 1;
    v33 = v32[1];
    v108 = *v32;
    v34 = 1 << *(a1 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(a1 + 64);
    v37 = (v34 + 63) >> 6;
    v111 = v33;

    v38 = 0;
    v109 = MEMORY[0x277D84F90];
    v119 = v37;
    while (v36)
    {
LABEL_12:
      v40 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v41 = v40 | (v38 << 6);
      v42 = (*(a1 + 48) + 16 * v41);
      v43 = *v42;
      v44 = v42[1];
      v45 = v115;
      v46 = *(a1 + 56) + *(v115 + 72) * v41;
      v47 = *(v118 + 48);
      v48 = *(v115 + 16);
      v49 = v122;
      v48(v122 + v47, v46, v12);
      *v49 = v43;
      v49[1] = v44;
      v50 = v49 + v47;
      v51 = v121;
      v48(v121, v50, v12);
      v52 = (*(v45 + 88))(v51, v12);
      if (v52 == v113)
      {
        v79 = OUTLINED_FUNCTION_21_18();
        v80(v79);
        v81 = *v48;

        v29 = v116;
        goto LABEL_26;
      }

      if (v52 == v112)
      {
        v53 = OUTLINED_FUNCTION_21_18();
        v54(v53);
        v55 = *v48;
        v56 = *(v55 + 16);

        v29 = v116;
        if (!v56 || (v57 = sub_26973CEF8(v108, v111), (v58 & 1) == 0))
        {

          a1 = v117;
          v37 = v119;
          goto LABEL_23;
        }

        v81 = *(*(v55 + 56) + 8 * v57);

LABEL_26:

        sub_26969B0C0(v122, &qword_280323B28, &qword_26985C360);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = *(v109 + 16);
          sub_26977C2D8();
          v109 = v86;
        }

        v82 = *(v109 + 16);
        if (v82 >= *(v109 + 24) >> 1)
        {
          sub_26977C2D8();
          v109 = v87;
        }

        v83 = v109;
        *(v109 + 16) = v82 + 1;
        v84 = (v83 + 24 * v82);
        v84[4] = v43;
        v84[5] = v44;
        v84[6] = v81;
        v12 = v92;
        a1 = v117;
        v37 = v119;
      }

      else
      {
        v59 = qword_280322708;

        if (v59 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v60 = v110;
        v61 = __swift_project_value_buffer(v110, qword_281571B50);
        (*v104)(v105, v61, v60);
        v62 = v122 + v47;
        v63 = v106;
        v48(v106, v62, v12);
        v64 = sub_2698548B4();
        v65 = sub_269854F24();
        v66 = os_log_type_enabled(v64, v65);
        v67 = v103;
        v68 = v103 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v66)
        {
          v69 = OUTLINED_FUNCTION_27_2();
          v101 = v68;
          v70 = v63;
          v71 = v69;
          v100 = OUTLINED_FUNCTION_9_3();
          v123 = v100;
          *v71 = v95;
          sub_2697E7254();
          v99 = sub_269855544();
          v73 = v72;
          v74 = *v67;
          v74(v70, v12);
          v75 = sub_26974F520(v99, v73, &v123);

          *(v71 + 4) = v75;
          _os_log_impl(&dword_269684000, v64, v65, "groupValuesByApp unsupported signal value type: %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v100);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();

          v76 = OUTLINED_FUNCTION_25_17();
          v78 = v110;
        }

        else
        {

          v74 = *v67;
          v74(v63, v12);
          v76 = OUTLINED_FUNCTION_25_17();
          v78 = v60;
        }

        v77(v76, v78);
        v37 = v119;
        v74(v121, v12);
        v29 = v116;
        a1 = v117;
LABEL_23:
        sub_26969B0C0(v122, &qword_280323B28, &qword_26985C360);
      }
    }

    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        return;
      }

      if (v39 >= v37)
      {
        break;
      }

      v36 = *(v29 + 8 * v39);
      ++v38;
      if (v36)
      {
        v38 = v39;
        goto LABEL_12;
      }
    }

    v27 = v97;
    v88 = sub_2697E399C(v109);

    v28 = v96;
    v124 = v96;
    v90 = *(v96 + 16);
    v89 = *(v96 + 24);
    if (v90 >= v89 >> 1)
    {
      sub_269815090(v89 > 1, v90 + 1, 1);
      v28 = v124;
    }

    *(v28 + 16) = v90 + 1;
    *(v28 + 8 * v90 + 32) = v88;
    v26 = v98;
  }

  while (v98 != v93);
}

double sub_2697E6020(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  v5 = [a3 featureValueForName_];

  v6 = 0.0;
  if (v5)
  {
    v7 = [v5 dictionaryValue];

    sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
    v8 = sub_2698549E4();

    v9 = sub_2697E3630(v8);

    if (v9)
    {
      v10 = sub_26981D094(1, v9);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        v6 = *&v10;
      }
    }
  }

  return v6;
}

void sub_2697E6148(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = sub_26975004C(a2);
  v7 = v6;
  v46 = v5;
  if (v6 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v47 = MEMORY[0x277D84F90];
  sub_269814FF8(0, v8 & ~(v8 >> 63), 0);
  if (v7 < 0)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v45 = a2 >> 62;
  v9 = a2;
  v40 = a2;
  if (v8)
  {
    v10 = 0;
    v44 = a2 & 0xC000000000000001;
    v41 = a2 & 0xFFFFFFFFFFFFFF8;
    v38 = v4;
    v11 = (v4 + 40);
    while (v46 != v10)
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      if (v45)
      {
        v14 = sub_269855324();
      }

      else
      {
        v14 = *(v41 + 16);
      }

      if (v10 == v14)
      {
        goto LABEL_38;
      }

      if (v44)
      {

        v15 = MEMORY[0x26D646120](v10, v9);
      }

      else
      {
        if (v10 >= *(v41 + 16))
        {
          goto LABEL_42;
        }

        v15 = *(v9 + 8 * v10 + 32);

        swift_unknownObjectRetain();
      }

      v16 = a3(v12, v13, v15);
      v18 = v17;
      v20 = v19;
      swift_unknownObjectRelease();

      v22 = *(v47 + 16);
      v21 = *(v47 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_269814FF8(v21 > 1, v22 + 1, 1);
      }

      ++v10;
      *(v47 + 16) = v22 + 1;
      v23 = (v47 + 24 * v22);
      v23[4] = v16;
      v23[5] = v18;
      v23[6] = v20;
      v11 += 2;
      v9 = v40;
      if (v8 == v10)
      {
        v24 = v41;
        v4 = v38;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v24 = a2 & 0xFFFFFFFFFFFFFF8;
  v44 = v9 & 0xC000000000000001;
LABEL_21:
  v39 = v9 + 32;
  v25 = (v4 + 16 * v8 + 40);
  v42 = v24;
  while (v46 != v8)
  {
    if (v8 >= v46)
    {
      goto LABEL_39;
    }

    if (__OFADD__(v8, 1))
    {
      goto LABEL_40;
    }

    v27 = *(v25 - 1);
    v26 = *v25;
    if (v45)
    {
      v28 = sub_269855324();
    }

    else
    {
      v28 = *(v24 + 16);
    }

    if (v8 == v28)
    {
      return;
    }

    if (v44)
    {

      v29 = MEMORY[0x26D646120](v8, v40);
    }

    else
    {
      if (v8 >= *(v24 + 16))
      {
        goto LABEL_41;
      }

      v29 = *(v39 + 8 * v8);

      swift_unknownObjectRetain();
    }

    v30 = a3(v27, v26, v29);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();

    v36 = *(v47 + 16);
    v35 = *(v47 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_269814FF8(v35 > 1, v36 + 1, 1);
    }

    *(v47 + 16) = v36 + 1;
    v37 = (v47 + 24 * v36);
    v37[4] = v30;
    v37[5] = v32;
    v37[6] = v34;
    ++v8;
    v25 += 2;
    v24 = v42;
  }
}

uint64_t sub_2697E64B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v15 = type metadata accessor for AppDisambiguationContext(0);
  v16 = OUTLINED_FUNCTION_4_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  v22 = sub_2698548D4();
  v23 = OUTLINED_FUNCTION_8(v22);
  v132 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v136 = v28 - v27;
  v29 = type metadata accessor for ModelInput(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_3_1();
  v138 = v32 - v31;
  v137 = type metadata accessor for ModelParams(0);
  v33 = OUTLINED_FUNCTION_4_3(v137);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v139 = (v37 - v36);
  v38 = sub_2698054AC(a1);
  if (v39)
  {
    v131 = a6;
    v41 = v40;
    v42 = *(a1 + 16);
    v129 = a8;
    v123 = v15;
    v122 = v21;
    v125 = a5;
    v130 = v22;
    v128 = v39;
    v124 = v38;
    v127 = a3;
    v126 = a2;
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_19_17(MEMORY[0x277D84F90]);
      sub_269814E64(v43, v44, v45);
      v46 = v142[0];
      v47 = *(v142[0] + 16);
      v48 = (a1 + 48);
      v49 = v42;
      do
      {
        v50 = *v48;
        v142[0] = v46;
        v51 = *(v46 + 24);
        v52 = v47 + 1;
        if (v47 >= v51 >> 1)
        {
          sub_269814E64(v51 > 1, v47 + 1, 1);
          v46 = v142[0];
        }

        *(v46 + 16) = v52;
        *(v46 + 8 * v47 + 32) = v50;
        v48 += 3;
        ++v47;
        --v49;
      }

      while (v49);
    }

    else
    {
      v52 = *(MEMORY[0x277D84F90] + 16);
      if (!v52)
      {

        v61 = 0.0;
LABEL_17:
        v63 = *(a5 + 40);
        v62 = *(a5 + 48);
        v64 = sub_269853984();
        OUTLINED_FUNCTION_4_3(v64);
        v66 = *(v65 + 16);
        v67 = OUTLINED_FUNCTION_22_3();
        v121 = v68;
        v69(v67);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F40, &unk_269858D40);
        __swift_storeEnumTagSinglePayload(v138, 0, 1, v70);
        v71 = *(a5 + 120);
        v134 = *(a5 + 128);
        v135 = *(a5 + 112);
        v133 = *(a5 + 136);
        v73 = *(a5 + 144);
        v72 = *(a5 + 152);
        sub_2697E6EC0(a5, v142);
        v74 = v143;
        if (v143)
        {
          v75 = v144;
          __swift_project_boxed_opaque_existential_1(v142, v143);
          v76 = *(v75 + 16);
          OUTLINED_FUNCTION_24_17();
          v77 = v76(v74, v75);
          v74 = v78;
          __swift_destroy_boxed_opaque_existential_0(v142);
        }

        else
        {
          OUTLINED_FUNCTION_24_17();
          sub_26969B0C0(v142, &qword_2803255D0, &unk_2698667D0);
          v77 = 0;
        }

        *v139 = v126;
        v139[1] = v127;
        sub_2697E713C(v138, v139 + v137[5], type metadata accessor for ModelInput);
        *(v139 + v137[6]) = a1;
        v79 = (v139 + v137[7]);
        *v79 = v135;
        v79[1] = v71;
        v79[2] = v134;
        v79[3] = v133;
        v79[4] = v73;
        v79[5] = v72;
        v80 = (v139 + v137[8]);
        *v80 = v77;
        v80[1] = v74;
        v81 = qword_280322708;

        if (v81 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v82 = __swift_project_value_buffer(v130, qword_281571B50);
        (*(v132 + 16))(v136, v82, v130);
        v83 = a7;

        v84 = sub_2698548B4();
        v85 = sub_269854F14();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = OUTLINED_FUNCTION_27_2();
          v87 = OUTLINED_FUNCTION_9_3();
          v141 = v87;
          *v86 = 136315138;
          v142[0] = v131;
          v142[1] = a7;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
          v88 = sub_269854AE4();
          v90 = sub_26974F520(v88, v89, &v141);

          *(v86 + 4) = v90;
          OUTLINED_FUNCTION_18_8();
          _os_log_impl(v91, v92, v93, v94, v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v87);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_18_7();

          (*(v132 + 8))(v136, v130);
          v83 = a7;
        }

        else
        {

          (*(v132 + 8))(v136, v130);
        }

        if (v42 < 2)
        {
          *v129 = v124;
          v129[1] = v128;
          if (!v42)
          {
            v106 = MEMORY[0x277D84F90];
LABEL_37:
            v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
            v108 = *(v107 + 64);
            v109 = (v129 + *(v107 + 80));
            v129[2] = v106;
            OUTLINED_FUNCTION_6_39();
            sub_2697E713C(v139, v129 + v108, v110);
            __swift_storeEnumTagSinglePayload(v129 + v108, 0, 1, v137);
            *v109 = v131;
            v109[1] = v83;
            type metadata accessor for AppSelectionResult(0);
LABEL_38:
            swift_storeEnumTagMultiPayload();
          }
        }

        else
        {
          if (v63 > v41 || v61 < v62)
          {

            v142[0] = a1;

            sub_2697E0E9C(v142);
            v97 = sub_269771A0C(*(v125 + 56), v142[0]);
            v100 = sub_2697DEC88(v97, v98, v99);
            if (v61 >= v62)
            {
              v101 = 2 * (v63 > v41);
            }

            else
            {
              v101 = (2 * (v63 > v41)) | 4;
            }

            v102 = v123[7];
            OUTLINED_FUNCTION_6_39();
            sub_2697E713C(v139, v122 + v103, v104);
            __swift_storeEnumTagSinglePayload(v122 + v123[8], 1, 1, v121);
            *v122 = v100;
            *(v122 + 8) = 0;
            *(v122 + 16) = v101;
            *(v122 + v123[9]) = 0;
            v105 = (v122 + v123[10]);
            *v105 = v131;
            v105[1] = v83;
            sub_2697E713C(v122, v129, type metadata accessor for AppDisambiguationContext);
            type metadata accessor for AppSelectionResult(0);
            goto LABEL_38;
          }

          *v129 = v124;
          v129[1] = v128;
        }

        v111 = OUTLINED_FUNCTION_19_17(MEMORY[0x277D84F90]);
        sub_269814F0C(v111, v112, v113);
        v106 = v142[0];
        v114 = (a1 + 40);
        do
        {
          v116 = *(v114 - 1);
          v115 = *v114;
          v142[0] = v106;
          v117 = *(v106 + 16);
          v118 = *(v106 + 24);

          if (v117 >= v118 >> 1)
          {
            sub_269814F0C(v118 > 1, v117 + 1, 1);
            v106 = v142[0];
          }

          *(v106 + 16) = v117 + 1;
          v119 = v106 + 16 * v117;
          *(v119 + 32) = v116;
          *(v119 + 40) = v115;
          v114 += 3;
          --v42;
        }

        while (v42);
        goto LABEL_37;
      }

      v46 = MEMORY[0x277D84F90];
    }

    v59 = 0.0;
    v60 = 32;
    do
    {
      v59 = v59 + *(v46 + v60);
      v60 += 8;
      --v52;
    }

    while (v52);

    if (v59 == 0.0)
    {
      v61 = 0.0;
    }

    else
    {
      v61 = v41 / v59;
    }

    goto LABEL_17;
  }

  sub_2697E6EC0(a5, v142);
  v53 = v143;
  if (v143)
  {
    v54 = v144;
    __swift_project_boxed_opaque_existential_1(v142, v143);
    OUTLINED_FUNCTION_23_17(v54);
    v55 = OUTLINED_FUNCTION_22_3();
    v53 = v56(v55);
    v58 = v57;
    __swift_destroy_boxed_opaque_existential_0(v142);
  }

  else
  {
    sub_26969B0C0(v142, &qword_2803255D0, &unk_2698667D0);
    v58 = 0;
  }

  *a8 = a4;
  a8[1] = v53;
  a8[2] = v58;
  type metadata accessor for AppSelectionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t *sub_2697E6D54()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[8];

  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[14];

  return v0;
}

uint64_t sub_2697E6D8C()
{
  sub_2697E6D54();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_2697E6DE4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696BBE14;

  return sub_2697E3BC8();
}

uint64_t sub_2697E6EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255D0, &unk_2698667D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697E6F30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2697E6F80(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v34 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v34 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v17 = sub_26973CEF8(v7, v6);
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_17;
    }

    v21 = v10;
    if (v9[3] >= v20)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280326500, &unk_2698577E0);
        sub_2698552F4();
      }
    }

    else
    {
      sub_26980E1E8(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v32, v33, v34, SBYTE4(v34));
      v22 = *a3;
      v23 = sub_26973CEF8(v7, v6);
      if ((v21 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v17 = v23;
    }

    v25 = *a3;
    if (v21)
    {
      v26 = *(v25[7] + 8 * v17);

      *(v25[7] + 8 * v17) = v26;
    }

    else
    {
      v25[(v17 >> 6) + 8] |= 1 << v17;
      v27 = (v25[6] + 16 * v17);
      *v27 = v7;
      v27[1] = v6;
      *(v25[7] + 8 * v17) = v8;
      v28 = v25[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v25[2] = v30;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_2697E713C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_3(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2697E71F0(uint64_t a1)
{
  v2 = type metadata accessor for AppSelectionResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2697E724C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_2697E6020(a1, a2, a3);
}

unint64_t sub_2697E7254()
{
  result = qword_2803255E0;
  if (!qword_2803255E0)
  {
    sub_269853904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803255E0);
  }

  return result;
}

void *sub_2697E72B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrialAppPredictorConfigProvider();
  v30[3] = v6;
  v30[4] = &off_287A44348;
  v30[0] = a1;
  v28 = &type metadata for PlayOnThirdPartySignalsCreator;
  v29 = &off_287A45FB8;
  v25 = &type metadata for CoreAnalyticsService;
  v26 = &xmmword_287A41610;
  type metadata accessor for ModelAppPredictor();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v30, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v13 = *v11;
  v23[3] = v6;
  v23[4] = &off_287A44348;
  v22[4] = &off_287A45FB8;
  v23[0] = v13;
  v22[3] = &type metadata for PlayOnThirdPartySignalsCreator;
  v21[3] = &type metadata for CoreAnalyticsService;
  v21[4] = &xmmword_287A41610;
  sub_2696A73F8(v23, (v7 + 2));
  v7[7] = a2;
  v7[8] = a3;
  sub_2696A73F8(v22, (v7 + 9));
  sub_2696A73F8(v23, &v19);
  v14 = swift_allocObject();
  sub_26968E5D4(&v19, v14 + 16);
  sub_2696A73F8(v21, &v19);
  __swift_mutable_project_boxed_opaque_existential_1(&v19, v20);
  v18[3] = &type metadata for CoreAnalyticsService;
  v18[4] = &xmmword_287A41610;
  type metadata accessor for AppSelectionResultAnalyticsLogger();
  v15 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v18, &type metadata for CoreAnalyticsService);
  v15[5] = &type metadata for CoreAnalyticsService;
  v15[6] = &xmmword_287A41610;
  v15[7] = sub_2697E7518;
  v15[8] = v14;
  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(&v19);
  v7[14] = v15;
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v7;
}

void OUTLINED_FUNCTION_2_34()
{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[50];
  v11 = v0[51];
}

uint64_t OUTLINED_FUNCTION_14_24()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_17()
{
  v4 = *(v1 - 232);
  v3 = *(v1 - 224);
  v5 = *(v1 - 240);

  return sub_2697E6F30(v3, v0);
}

void *sub_2697E75F0()
{
  result = sub_2697E7610();
  qword_28033D8B0 = result;
  return result;
}

void *sub_2697E7610()
{
  if (qword_280322678 != -1)
  {
    swift_once();
  }

  v0 = qword_28033D8A8;
  type metadata accessor for ModelAppPredictor();
  swift_retain_n();
  v1 = sub_2697E3A34();
  v2 = qword_280322410;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28033D5F8;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  swift_retain_n();
  v4 = sub_2697B9550();
  v5 = sub_2697E87C4(v0, v1, v3, v4);

  return v5;
}

uint64_t sub_2697E7724()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 520) = v0;
  *(v1 + 504) = v2;
  *(v1 + 512) = v3;
  *(v1 + 488) = v4;
  *(v1 + 496) = v5;
  *(v1 + 632) = v6;
  *(v1 + 480) = v7;
  v8 = sub_2698548D4();
  *(v1 + 528) = v8;
  v9 = *(v8 - 8);
  *(v1 + 536) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 544) = swift_task_alloc();
  *(v1 + 552) = swift_task_alloc();
  v11 = type metadata accessor for AppSelectionResult(0);
  *(v1 + 560) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v1 + 568) = swift_task_alloc();
  *(v1 + 576) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2697E7830()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 632);
  v3 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + 16);
  sub_2697EABE0(v0 + 216);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  v10 = *(v0 + 320);
  type metadata accessor for ForcedAppDisambiguation.AppSelectionResultRemapper();
  v11 = v2 & 1;
  v67 = *(v1 + 176);
  *(v0 + 424) = &type metadata for SiriSignalsGatherer;
  *(v0 + 432) = &off_287A41DC8;
  inited = swift_initStackObject();
  *(v0 + 584) = inited;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 400, *(v0 + 424));
  *(inited + 136) = &type metadata for SiriSignalsGatherer;
  *(inited + 144) = &off_287A41DC8;
  *(inited + 16) = v11;
  *(inited + 24) = v4;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = v67;
  *(inited + 96) = sub_2697E865C;
  *(inited + 104) = v1;
  *(inited + 152) = sub_2697EB138;
  *(inited + 160) = 0;
  *(inited + 168) = sub_26968E738;
  *(inited + 176) = 0;
  *(inited + 184) = 0;
  *(inited + 192) = 0;
  swift_retain_n();
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0((v0 + 400));
  sub_2697E6EC0(v0 + 216, v0 + 440);
  v13 = *(v0 + 464);
  sub_2697E8668(v0 + 440);
  if (v13)
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v14 = *(v0 + 552);
    v15 = *(v0 + 536);
    __swift_project_value_buffer(*(v0 + 528), qword_281571B50);
    v16 = OUTLINED_FUNCTION_11_4();
    v17(v16);
    v18 = sub_2698548B4();
    v19 = sub_269854F14();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      OUTLINED_FUNCTION_15_2(&dword_269684000, v21, v22, "RoutingAppPredictor routing to new app selector");
      MEMORY[0x26D647170](v20, -1, -1);
    }

    v23 = *(v0 + 552);
    v24 = *(v0 + 536);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);

    (*(v24 + 8))(v23, v25);
    v27 = v26[11];
    __swift_project_boxed_opaque_existential_1(v26 + 7, v26[10]);
    v28 = *(v27 + 8);
    v68 = v28 + *v28;
    v29 = v28[1];
    v30 = swift_task_alloc();
    *(v0 + 592) = v30;
    *v30 = v0;
    v30[1] = sub_2697E7D10;
    v31 = *(v0 + 568);
    v32 = *(v0 + 504);
    v33 = *(v0 + 512);
    v34 = *(v0 + 488);
    v35 = *(v0 + 496);
    OUTLINED_FUNCTION_6_40();

    __asm { BRAA            X8, X16 }
  }

  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v38 = *(v0 + 544);
  v39 = *(v0 + 536);
  __swift_project_value_buffer(*(v0 + 528), qword_281571B50);
  v40 = OUTLINED_FUNCTION_11_4();
  v41(v40);
  v42 = sub_2698548B4();
  v43 = sub_269854F14();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    OUTLINED_FUNCTION_15_2(&dword_269684000, v45, v46, "RoutingAppPredictor routing to legacy app selector");
    MEMORY[0x26D647170](v44, -1, -1);
  }

  v47 = *(v0 + 544);
  v48 = *(v0 + 536);
  v49 = *(v0 + 528);
  v50 = *(v0 + 520);
  v66 = *(v0 + 488);
  v69 = *(v0 + 504);

  (*(v48 + 8))(v47, v49);
  v51 = swift_task_alloc();
  *(v0 + 608) = v51;
  *(v51 + 16) = v50;
  *(v51 + 24) = v11;
  *(v51 + 32) = v66;
  *(v51 + 48) = v69;
  v52 = *(MEMORY[0x277D859E0] + 4);
  v53 = swift_task_alloc();
  *(v0 + 616) = v53;
  *v53 = v0;
  v53[1] = sub_2697E8028;
  v54 = *(v0 + 568);
  v55 = *(v0 + 560);
  OUTLINED_FUNCTION_6_40();

  return MEMORY[0x2822007B8](v56, v57, v58, v59, v60, v61, v62, v63);
}

uint64_t sub_2697E7D10()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  v4 = v1[74];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[75] = v6;
  *v6 = v5;
  v6[1] = sub_2697E7E74;
  v7 = v1[73];
  v8 = v1[72];
  v9 = v1[71];

  return sub_269812CFC();
}

uint64_t sub_2697E7E74()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(*v0 + 600);
  v2 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2697E7F5C()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[65];
  v7 = v0[60];

  sub_2697E71F0(v3);
  sub_2697E719C((v0 + 27));
  sub_2697E86E4(v2, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2697E8028()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  v4 = v1[77];
  v5 = v1[76];
  v6 = *v0;
  *v3 = *v0;

  v7 = swift_task_alloc();
  v2[78] = v7;
  *v7 = v6;
  v7[1] = sub_2697E81B0;
  v8 = v1[73];
  v9 = v1[72];
  v10 = v1[71];

  return sub_269812CFC();
}

uint64_t sub_2697E81B0()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(*v0 + 624);
  v2 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2697E8298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1((a5 + 96), *(a5 + 120));

  sub_269818540();
}

uint64_t sub_2697E8300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[0] = a6;
  v19[1] = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803255F8, &unk_2698668C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v14 = __swift_project_boxed_opaque_existential_1((a2 + 136), *(a2 + 160));
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v13, v9);
  v17 = *v14;
  sub_2696B10EC();
}

uint64_t sub_2697E8488(uint64_t a1)
{
  v2 = type metadata accessor for AppSelectionResult(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2697E2F08(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803255F8, &unk_2698668C0);
  return sub_269854D54();
}

uint64_t sub_2697E8528()
{
  sub_269706E7C();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_2697E8580()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DEBD8;

  return sub_2697E7724();
}

uint64_t sub_2697E8668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255D0, &unk_2698667D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2697E86E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSelectionResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697E8748(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_2803255F8, &unk_2698668C0) - 8) + 80);

  return sub_2697E8488(a1);
}

void *sub_2697E87C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TrialAppPredictorConfigProvider();
  v35[3] = v8;
  v35[4] = &off_287A44348;
  v35[0] = a1;
  v33 = type metadata accessor for ModelAppPredictor();
  v34 = &off_287A445C0;
  *&v32 = a2;
  v30 = &type metadata for PlayOnThirdPartySignalsCreator;
  v31 = &off_287A45FB8;
  v9 = type metadata accessor for AppSelector();
  v27 = v9;
  v28 = &off_287A3D6A0;
  v26[0] = a3;
  type metadata accessor for RoutingAppPredictor();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v35, v8);
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v16 = v27;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v26[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v14;
  v23 = *v20;
  v10[5] = v8;
  v10[6] = &off_287A44348;
  v10[2] = v22;
  v10[15] = &type metadata for PlayOnThirdPartySignalsCreator;
  v10[16] = &off_287A45FB8;
  v10[20] = v9;
  v10[21] = &off_287A3D6A0;
  v10[17] = v23;
  sub_2696AE06C(&v32, (v10 + 7));
  v10[22] = a4;
  v10[23] = &off_287A41E38;
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v10;
}

uint64_t sub_2697E8A54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2697E8A94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2697E8AF4()
{
  sub_269855204();
  MEMORY[0x26D645A60](0xD000000000000012, 0x80000002698808A0);
  v2 = *v0;
  v4 = v0[1];
  v6 = *(v0 + 4);
  OUTLINED_FUNCTION_1_46();
  MEMORY[0x26D645A60](8236, 0xE200000000000000);
  *&v2 = 0;
  *(&v2 + 1) = 0xE000000000000000;
  sub_269855204();
  v8 = v2;
  MEMORY[0x26D645A60](0xD00000000000001ELL, 0x80000002698808C0);
  v3 = *(v0 + 40);
  v5 = *(v0 + 56);
  v7 = *(v0 + 72);
  OUTLINED_FUNCTION_1_46();

  MEMORY[0x26D645A60](v8, *(&v8 + 1));

  return 0;
}

uint64_t sub_2697E8C44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697E8C64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_46()
{

  return sub_2698552D4();
}

uint64_t sub_2697E8CD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2697E8D34(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_269855584() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_269855584() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return sub_269855584();
}

id sub_2697E8E04()
{
  v1 = sub_269854A64();
  v2 = sub_269854A64();
  v3 = [v0 levelForFactor:v1 withNamespaceName:v2];

  return v3;
}

id sub_2697E8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_269854A64();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2697E8CD4;
  v11[3] = &block_descriptor_21;
  v8 = _Block_copy(v11);

  v9 = [v4 addUpdateHandlerForNamespaceName:v7 usingBlock:v8];

  _Block_release(v8);

  return v9;
}

uint64_t sub_2697E8F80(uint64_t a1)
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

void *sub_2697E902C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2698548D4();
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = v2[3];
  v17 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v16);
  v18 = (*(v17 + 8))(a1, a2, v2[5], v2[6], v16, v17);
  if (!v18)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35();
    }

    v29 = __swift_project_value_buffer(v5, qword_28033D940);
    (*(v8 + 16))(v15, v29, v5);

    v30 = sub_2698548B4();
    v31 = sub_269854F24();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v5;
      v34 = swift_slowAlloc();
      v41 = v34;
      *(v32 + 4) = OUTLINED_FUNCTION_6_41(4.8149e-34);
      _os_log_impl(&dword_269684000, v30, v31, "Read factor %s from TRIClient, value is nil", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v8 + 8))(v15, v33);
      return v18;
    }

    v35 = *(v8 + 8);
    v36 = v15;
LABEL_12:
    v35(v36, v5);
    return v18;
  }

  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  v19 = __swift_project_value_buffer(v5, qword_28033D940);
  (*(v8 + 16))(v13, v19, v5);
  v20 = v18;

  v21 = sub_2698548B4();
  v22 = sub_269854F14();

  if (!os_log_type_enabled(v21, v22))
  {

    v35 = *(v8 + 8);
    v36 = v13;
    goto LABEL_12;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v39 = v5;
  v41 = v24;
  *(v23 + 4) = OUTLINED_FUNCTION_6_41(4.8151e-34);
  *(v23 + 12) = 2080;
  v40 = v18;
  v25 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325688, &qword_269866B70);
  v26 = sub_269854AE4();
  v28 = sub_26974F520(v26, v27, &v41);

  *(v23 + 14) = v28;
  _os_log_impl(&dword_269684000, v21, v22, "Read factor %s from TRIClient, %s", v23, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_10();

  (*(v8 + 8))(v13, v39);
  return v18;
}

uint64_t sub_2697E93F0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v11 = sub_2698548D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v36 = a6;
    v37 = a7;
    v19 = a3[3];
    v18 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v19);
    (*(v18 + 16))(v19, v18);
    a4(v41, v17 + 112);
    if (qword_280322708 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v11, qword_281571B50);
    v21 = v12;
    (*(v12 + 16))(v15, v20, v11);
    memcpy(__dst, v41, sizeof(__dst));
    sub_2697EA9F4(__dst, v40);
    sub_2697EA9F4(__dst, v40);
    v22 = v37;

    v23 = sub_2698548B4();
    v24 = sub_269854F14();

    sub_26976030C(__dst);
    v25 = os_log_type_enabled(v23, v24);
    v26 = v36;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v27 = 136315394;
      *(v27 + 4) = sub_26974F520(v26, v22, v39);
      *(v27 + 12) = 2080;
      memcpy(v40, __dst, sizeof(v40));
      v28 = sub_269854AE4();
      v30 = v21;
      v31 = sub_26974F520(v28, v29, v39);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_269684000, v23, v24, "Got an update from TRIClient for namespace %s, the new config is %s", v27, 0x16u);
      v32 = v35;
      swift_arrayDestroy();
      MEMORY[0x26D647170](v32, -1, -1);
      MEMORY[0x26D647170](v27, -1, -1);

      (*(v30 + 8))(v15, v11);
    }

    else
    {
      sub_26976030C(__dst);

      (*(v21 + 8))(v15, v11);
    }

    [*(v17 + 104) lock];
    swift_beginAccess();
    memcpy(v38, (v17 + 16), sizeof(v38));
    memcpy(v39, v41, sizeof(v39));
    memcpy((v17 + 16), v41, 0x58uLL);
    sub_26976030C(v38);
    v33 = *(v17 + 104);
    sub_2697EA9F4(v39, v40);
    [v33 unlock];
    memcpy(v40, v41, sizeof(v40));
    sub_26976030C(v40);
  }

  return result;
}

uint64_t sub_2697E97D0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v11 = sub_2698548D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v36 = a6;
    v37 = a7;
    v19 = a3[3];
    v18 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v19);
    (*(v18 + 16))(v19, v18);
    a4(v41, v17 + 208);
    if (qword_280322708 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v11, qword_281571B50);
    v21 = v12;
    (*(v12 + 16))(v15, v20, v11);
    sub_2697EA660(v41, v40);
    v22 = v37;

    v23 = sub_2698548B4();
    v24 = sub_269854F14();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v36;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v27 = 136315394;
      *(v27 + 4) = sub_26974F520(v26, v22, &v39);
      *(v27 + 12) = 2080;
      sub_2697EA660(v40, &v38);
      v28 = sub_269854AE4();
      v29 = v21;
      v31 = v30;
      sub_2697E719C(v40);
      v32 = sub_26974F520(v28, v31, &v39);

      *(v27 + 14) = v32;
      _os_log_impl(&dword_269684000, v23, v24, "Got an update from TRIClient for namespace %s, the new config is %s", v27, 0x16u);
      v33 = v35;
      swift_arrayDestroy();
      MEMORY[0x26D647170](v33, -1, -1);
      MEMORY[0x26D647170](v27, -1, -1);

      (*(v29 + 8))(v15, v11);
    }

    else
    {

      sub_2697E719C(v40);
      (*(v21 + 8))(v15, v11);
    }

    [*(v17 + 200) lock];
    swift_beginAccess();
    sub_2697EA6D4(v41, v17 + 16);
    swift_endAccess();
    [*(v17 + 200) unlock];
    sub_2697E719C(v41);
  }

  return result;
}

uint64_t sub_2697E9B58()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 104)));
  return v0;
}

uint64_t sub_2697E9C00()
{
  sub_2697E9B58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_2697E9C80(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_2698548D4();
  v9 = OUTLINED_FUNCTION_8(v8);
  v36 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = sub_2697EA59C();
  v44[4] = &off_287A447C8;
  v44[0] = a1;
  a4[13] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_2696A73F8(v44, v43);
  v43[5] = a2;
  v43[6] = a3;
  *&v42[24] = &type metadata for TrialClientConfiguration;
  *&v42[32] = &off_287A44AA8;
  OUTLINED_FUNCTION_3_42();
  *v42 = swift_allocObject();
  sub_2697EA5E0(v43, *v42 + 16);
  v15 = __swift_project_boxed_opaque_existential_1(v42, &type metadata for TrialClientConfiguration);

  sub_2697EA730(v15, __src);
  __swift_destroy_boxed_opaque_existential_0(v42);
  memcpy(a4 + 2, __src, 0x58uLL);
  a4[17] = &type metadata for TrialClientConfiguration;
  a4[18] = &off_287A44AA8;
  OUTLINED_FUNCTION_3_42();
  v16 = swift_allocObject();
  a4[14] = v16;
  sub_2697EA5E0(v43, v16 + 16);
  v38 = a2;
  v17 = sub_269854A64();
  v37 = a1;
  v18 = [a1 compatibilityVersionWithNamespaceName_];

  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  __swift_project_value_buffer(v8, qword_281571B50);
  OUTLINED_FUNCTION_5_35();
  v19(v14);

  v20 = v8;
  v21 = sub_2698548B4();
  v22 = sub_269854F14();

  v23 = v17;
  v24 = v14;
  if (os_log_type_enabled(v21, v22))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v24;
    v41 = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_26974F520(v38, a3, &v41);
    *(v25 + 12) = 1024;
    *(v25 + 14) = v18;
    *(v25 + 18) = 2080;
    swift_beginAccess();
    memcpy(v42, a4 + 2, sizeof(v42));
    memcpy(v40, a4 + 2, sizeof(v40));
    sub_2697EA9F4(v42, &v39);
    v27 = sub_269854AE4();
    v34 = v20;
    v29 = sub_26974F520(v27, v28, &v41);

    *(v25 + 20) = v29;
    _os_log_impl(&dword_269684000, v21, v22, "TRIClient for namespace %s, namespaceVersion %u, initial config = %s", v25, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (v23)[1](v35, v34);
  }

  else
  {

    (v23)[1](v14, v20);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  sub_2696A73F8(v44, v42);
  v31 = swift_allocObject();
  v31[2] = v30;
  sub_26968E5D4(v42, (v31 + 3));
  v31[8] = sub_2697EACD4;
  v31[9] = 0;
  v32 = v38;
  v31[10] = v38;
  v31[11] = a3;

  sub_2697E8EAC(v32, a3, sub_2697EA9C0, v31);

  swift_unknownObjectRelease();

  sub_2697EA630(v43);

  __swift_destroy_boxed_opaque_existential_0(v44);
  return a4;
}

void *sub_2697EA120(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_2698548D4();
  v9 = OUTLINED_FUNCTION_8(v8);
  v31 = v10;
  v32 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = sub_2697EA59C();
  v39[4] = &off_287A447C8;
  v39[0] = a1;
  a4[25] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_2696A73F8(v39, v36);
  v37 = a2;
  v38 = a3;
  v34[3] = &type metadata for TrialClientConfiguration;
  v34[4] = &off_287A44AA8;
  OUTLINED_FUNCTION_3_42();
  v34[0] = swift_allocObject();
  sub_2697EA5E0(v36, v34[0] + 16);
  type metadata accessor for TrialAppPredictorConfigProvider();

  sub_2697DC998(v35);
  __swift_destroy_boxed_opaque_existential_0(v34);
  memcpy(a4 + 2, v35, 0xB8uLL);
  a4[29] = &type metadata for TrialClientConfiguration;
  a4[30] = &off_287A44AA8;
  v15 = a2;
  OUTLINED_FUNCTION_3_42();
  v16 = swift_allocObject();
  a4[26] = v16;
  sub_2697EA5E0(v36, v16 + 16);
  v17 = sub_269854A64();
  v30[1] = a1;
  v18 = [a1 compatibilityVersionWithNamespaceName_];

  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  __swift_project_value_buffer(v32, qword_281571B50);
  OUTLINED_FUNCTION_5_35();
  v19(v14);

  v20 = sub_2698548B4();
  v21 = sub_269854F14();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v22 = 136315650;
    *(v22 + 4) = sub_26974F520(v15, a3, &v33);
    *(v22 + 12) = 1024;
    *(v22 + 14) = v18;
    *(v22 + 18) = 2080;
    swift_beginAccess();
    sub_2697EA660((a4 + 2), v35);
    v23 = sub_269854AE4();
    v30[0] = v14;
    v25 = v15;
    v26 = sub_26974F520(v23, v24, &v33);

    *(v22 + 20) = v26;
    v15 = v25;
    _os_log_impl(&dword_269684000, v20, v21, "TRIClient for namespace %s, namespaceVersion %u, initial config = %s", v22, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v31 + 8))(v30[0], v32);
  }

  else
  {

    off_287A44950(v14, v32);
  }

  v27 = swift_allocObject();
  swift_weakInit();
  sub_2696A73F8(v39, v35);
  v28 = swift_allocObject();
  v28[2] = v27;
  sub_26968E5D4(v35, (v28 + 3));
  v28[8] = sub_2697DC95C;
  v28[9] = 0;
  v28[10] = v15;
  v28[11] = a3;

  sub_2697E8EAC(v15, a3, sub_2697EA618, v28);

  swift_unknownObjectRelease();

  sub_2697EA630(v36);

  __swift_destroy_boxed_opaque_existential_0(v39);
  return a4;
}

unint64_t sub_2697EA59C()
{
  result = qword_280325680;
  if (!qword_280325680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280325680);
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2697EA730@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = &type metadata for TrialClientConfiguration;
  v25 = &off_287A44AA8;
  OUTLINED_FUNCTION_3_42();
  v23[0] = swift_allocObject();
  sub_2697EA5E0(a1, v23[0] + 16);
  __swift_project_boxed_opaque_existential_1(v23, &type metadata for TrialClientConfiguration);
  v4 = sub_2697E902C(0xD000000000000017, 0x8000000269880930);
  if (v4 && (v5 = sub_2697DE348(v4), v6))
  {
    v22[0] = v5;
    v22[1] = v6;
    sub_2697EAD1C(v22, &v21);

    v7 = v21;
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  __swift_project_boxed_opaque_existential_1(v23, v24);
  v8 = sub_2697E902C(0xD000000000000013, 0x8000000269880950);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 BOOLeanValue];
  }

  else
  {
    v10 = 0;
  }

  __swift_project_boxed_opaque_existential_1(v23, v24);
  v11 = sub_2697E902C(0xD000000000000015, 0x8000000269880970);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 longValue];

    v14 = v13 < 1;
    if (v13 >= 1)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 1;
  }

  __swift_project_boxed_opaque_existential_1(v23, v24);
  v16 = sub_2697E902C(0xD00000000000001BLL, 0x8000000269880990);
  if (v16)
  {
    v17 = v16;
    v18 = [v16 longValue];

    v19 = v18;
  }

  else
  {
    v19 = 21600.0;
  }

  LOBYTE(v22[0]) = v14;
  LOBYTE(v21) = 1;
  __swift_destroy_boxed_opaque_existential_0(v23);
  *a2 = v10;
  *(a2 + 8) = v15;
  *(a2 + 16) = v22[0];
  *(a2 + 24) = v7;
  *(a2 + 32) = v19;
  *(a2 + 40) = 0;
  *(a2 + 48) = v21;
  *(a2 + 56) = xmmword_269866A20;
  *&result = 4;
  *(a2 + 72) = xmmword_269866A30;
  return result;
}

uint64_t objectdestroy_7Tm_2()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v2 = v0[9];

  v3 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2697EAA50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2697EAA90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_41(float a1)
{
  *v3 = a1;

  return sub_26974F520(v2, v1, (v4 - 88));
}

id sub_2697EAB4C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 104);
  [v3 lock];
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  memcpy(a1, (v1 + 16), 0x58uLL);
  sub_2697EA9F4(__dst, v5);
  return [v3 unlock];
}

id sub_2697EABE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 200);
  [v3 lock];
  swift_beginAccess();
  sub_2697EA660(v1 + 16, a1);
  return [v3 unlock];
}

uint64_t sub_2697EAC54()
{
  type metadata accessor for TrialSignalCollectConfigProvider();
  v0 = swift_allocObject();
  result = sub_2697EB074();
  qword_28033D8B8 = v0;
  return result;
}

void *sub_2697EAC90@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_2697EAB4C(__src);
  return memcpy(a1, __src, 0x58uLL);
}

void *sub_2697EACD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697EA730(v3, __src);
  return memcpy(a2, __src, 0x58uLL);
}

void sub_2697EAD1C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v46 = sub_269851B04();
  v5 = *(v46 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v46);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v49 = 44;
  v50 = 0xE100000000000000;
  v48 = &v49;

  v10 = sub_2696A6A74(0x7FFFFFFFFFFFFFFFLL, 1, sub_2696A2958, v47, v9, v8);
  v43 = v3;
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v42 = v5;
    v49 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v11, 0);
    v13 = 0;
    v14 = v49;
    v15 = (v10 + 56);
    while (v13 < *(v10 + 16))
    {
      v17 = *(v15 - 3);
      v16 = *(v15 - 2);
      v18 = v14;
      v19 = *(v15 - 1);
      v20 = *v15;

      v21 = v19;
      v14 = v18;
      v22 = MEMORY[0x26D645A10](v17, v16, v21, v20);
      v24 = v23;

      v49 = v14;
      v26 = v14[2];
      v25 = v14[3];
      if (v26 >= v25 >> 1)
      {
        sub_269814F0C(v25 > 1, v26 + 1, 1);
        v14 = v49;
      }

      ++v13;
      v14[2] = v26 + 1;
      v27 = &v14[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v15 += 4;
      if (v11 == v13)
      {

        v5 = v42;
        v12 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
LABEL_9:
    v28 = v14[2];
    if (v28)
    {
      v51 = v12;
      sub_269814F0C(0, v28, 0);
      v29 = v51;
      v30 = (v5 + 1);
      v42 = v14;
      v31 = v14 + 5;
      do
      {
        v32 = *v31;
        v49 = *(v31 - 1);
        v50 = v32;

        v33 = v45;
        sub_269851AE4();
        sub_269693054();
        v34 = sub_2698550F4();
        v36 = v35;
        (*v30)(v33, v46);

        v51 = v29;
        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_269814F0C(v37 > 1, v38 + 1, 1);
          v29 = v51;
        }

        *(v29 + 16) = v38 + 1;
        v39 = v29 + 16 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
        v31 += 2;
        --v28;
      }

      while (v28);
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    sub_2697F1EE0(v29);
    *v44 = v40;
  }
}

uint64_t sub_2697EB074()
{
  v1 = [objc_opt_self() clientWithIdentifier_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325690, &qword_269866C38);
  v2 = swift_allocObject();
  *(v0 + 16) = sub_2697E9C80(v1, 0xD00000000000001CLL, 0x80000002698809F0, v2);
  return v0;
}

BOOL sub_2697EB144(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SignalRecordingContext();
  v5 = OUTLINED_FUNCTION_4_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_36();
  sub_2697EC8F4(a1, v9, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v17 = OUTLINED_FUNCTION_4_35();
      v19 = sub_2697EC954(v17, v18);
      v20 = *(v2 + 72);
      v21 = (*(v2 + 64))(v19);
      v22 = *(v2 + 88);
      result = (*(v2 + 80))() < v21;
      break;
    case 3u:
    case 4u:
      v13 = *(v9 + 1);

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0) + 48);
      OUTLINED_FUNCTION_2_36();
      v11 = &v9[v15];
      goto LABEL_4;
    default:
      v11 = OUTLINED_FUNCTION_4_35();
LABEL_4:
      sub_2697EC954(v11, v12);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_2697EB268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for ModelParams(0);
  v3[6] = v4;
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for AppDisambiguationContext(0);
  v3[8] = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  OUTLINED_FUNCTION_8_9(v10);
  v12 = *(v11 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v13 = type metadata accessor for AppSelectionResult(0);
  v3[12] = v13;
  OUTLINED_FUNCTION_8_9(v13);
  v15 = *(v14 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v16 = sub_2698548D4();
  v3[15] = v16;
  v17 = *(v16 - 8);
  v3[16] = v17;
  v18 = *(v17 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v19 = type metadata accessor for SignalRecordingContext();
  v3[23] = v19;
  OUTLINED_FUNCTION_8_9(v19);
  v21 = *(v20 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697EB48C, 0, 0);
}

void sub_2697EB48C()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v49 = v0[3];
    }

    v2 = sub_269855324();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 == 2)
  {
    v3 = v0[23];
    v4 = v0[24];
    v5 = v0[2];
    OUTLINED_FUNCTION_5_36();
    sub_2697EC8F4(v6, v4, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v0[24];
    if (EnumCaseMultiPayload == 2)
    {
      v54 = *v9;
      v52 = v9[1];
      v0[25] = v9[2];
      v0[26] = v9[3];
      v0[27] = v9[4];
      v0[28] = v9[5];
      v0[29] = v9[6];
      if (qword_2803226F0 != -1)
      {
        swift_once();
      }

      v10 = v0[22];
      v12 = v0[15];
      v11 = v0[16];
      v13 = __swift_project_value_buffer(v12, qword_28033D940);
      v0[30] = v13;
      v14 = *(v11 + 16);
      v0[31] = v14;
      v0[32] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v14(v10, v13, v12);

      v15 = sub_2698548B4();
      v16 = sub_269854F14();

      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[22];
      v20 = v0[15];
      v19 = v0[16];
      if (v17)
      {
        v21 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v21 = 136315138;
        v22 = OUTLINED_FUNCTION_0_17();
        *(v21 + 4) = sub_26974F520(v22, v23, v24);
        _os_log_impl(&dword_269684000, v15, v16, "ABComparisonPlayOnThirdPartyAppHandler specifiedAppId %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      v25 = *(v19 + 8);
      v25(v18, v20);
      v0[33] = v25;
      v26 = v0[4];
      v27 = v0[2];
      v28 = v26[7];
      __swift_project_boxed_opaque_existential_1(v26 + 3, v26[6]);
      sub_2698175E8();
      v0[34] = v29;
      v30 = *(v28 + 8);
      v50 = v30 + *v30;
      v31 = v30[1];
      v32 = swift_task_alloc();
      v0[35] = v32;
      *v32 = v0;
      v32[1] = sub_2697EB8AC;
      v33 = v0[14];
      OUTLINED_FUNCTION_112();

      __asm { BRAA            X8, X16 }
    }

    sub_2697EC954(v9, type metadata accessor for SignalRecordingContext);
  }

  v36 = v0[24];
  v37 = v0[21];
  v38 = v0[22];
  v40 = v0[19];
  v39 = v0[20];
  v42 = v0[17];
  v41 = v0[18];
  v44 = v0[13];
  v43 = v0[14];
  v45 = v0[11];
  v51 = v0[10];
  v53 = v0[9];
  v55 = v0[7];

  v46 = v0[1];
  OUTLINED_FUNCTION_112();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_2697EB8AC()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 200);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2697EB9E0, 0, 0);
}

void sub_2697EB9E0()
{
  v1 = v0;
  v2 = v0[12];
  sub_2697EC8F4(v0[14], v0[13], type metadata accessor for AppSelectionResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v90 = v0[31];
      v89 = v0[32];
      v91 = v1[30];
      v92 = v1[27];
      v93 = v1[20];
      v94 = v1[15];
      v95 = v1[13];
      v96 = v1[9];

      sub_26971522C(v95, v96);
      v90(v93, v91, v94);
      v97 = sub_2698548B4();
      v98 = sub_269854F14();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = OUTLINED_FUNCTION_16_2();
        *v99 = 0;
        _os_log_impl(&dword_269684000, v97, v98, "ABComparisonPlayOnThirdPartyAppHandler got disambiguate", v99, 2u);
        OUTLINED_FUNCTION_10();
      }

      v100 = v1[33];
      v101 = v1[20];
      v102 = v1[15];
      v103 = v1[16];
      v105 = v1[8];
      v104 = v1[9];
      v106 = v1[6];

      v100(v101, v102);
      v107 = v104 + *(v105 + 28);
      v60 = *(*(v107 + *(v106 + 24)) + 16);
      if (v60 >= 2)
      {
        v108 = v1[9];
        v109 = v1[6];
        v110 = v1[7];
        sub_2697EC8F4(v107, v110, type metadata accessor for ModelParams);
        OUTLINED_FUNCTION_2_36();
        sub_2697EC954(v108, v111);
        v112 = (v110 + *(v109 + 32));
        v113 = *v112;
        v30 = v112[1];

        OUTLINED_FUNCTION_6_42();
        v61 = 0;
LABEL_26:
        v114 = 2;
LABEL_27:
        v115 = v1[3] & 0xC000000000000001;
        sub_269750050(0);
        if (v115)
        {
          v116 = MEMORY[0x26D646120](0, v1[3]);
          v169 = v1[3];
        }

        else
        {
          v116 = *(v1[3] + 32);
        }

        sub_269750050(1);
        v117 = v1[3];
        if (v115)
        {
          v118 = MEMORY[0x26D646120](1, v117);
        }

        else
        {
          v118 = *(v117 + 40);
        }

        v119 = v118;
        v120 = [objc_allocWithZone(MEMORY[0x277D581B8]) init];
        if (!v120)
        {
          v123 = v1[29];
          v124 = v1[14];
          OUTLINED_FUNCTION_0_54();
          sub_2697EC954(v125, v126);

          goto LABEL_51;
        }

        v121 = v120;
        if ((v60 & 0xFFFFFFFF80000000) != 0)
        {
          v122 = 1;
        }

        else
        {
          v122 = v61;
        }

        if (v122)
        {
          [v120 deleteNumCandidateApps];
        }

        else
        {
          [v120 setNumCandidateApps_];
        }

        if (v114 == 2)
        {
          [v121 deleteIsDecisionCorrect];
          if (!v30)
          {
            goto LABEL_47;
          }
        }

        else
        {
          [v121 setIsDecisionCorrect_];
          if (!v30)
          {
            goto LABEL_47;
          }
        }

        v131 = v1[5];

        v132 = OUTLINED_FUNCTION_2_6();
        v134 = sub_2697EC350(v132, v133);
        swift_bridgeObjectRelease_n();
        if ((v134 & 0x100000000) == 0)
        {
          [v121 setModelVersion_];
LABEL_48:
          [v121 setProjectIntent_];
          [v116 setAbModelEvaluated_];
          v135 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
          v136 = v1[29];
          v137 = v1[14];
          if (v135)
          {
            v138 = v135;
            [v135 setTriggerReason_];
            [v119 setAbModelResultTriggered_];

            OUTLINED_FUNCTION_0_54();
            sub_2697EC954(v137, v139);
            v175 = v1[28];
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_0_54();
          sub_2697EC954(v137, v140);

LABEL_51:

LABEL_52:
          v141 = v1[24];
          v143 = v1[21];
          v142 = v1[22];
          v145 = v1[19];
          v144 = v1[20];
          v147 = v1[17];
          v146 = v1[18];
          v148 = v1;
          v149 = v1[14];
          v150 = v148[13];
          v151 = v148[11];
          v170 = v148[10];
          v171 = v148[9];
          v172 = v148[7];

          v152 = v148[1];
          OUTLINED_FUNCTION_112();

          __asm { BRAA            X3, X16 }
        }

LABEL_47:
        [v121 deleteModelVersion];
        goto LABEL_48;
      }

      v159 = v1[29];
      v160 = v1[14];
      v161 = v1[9];
      OUTLINED_FUNCTION_0_54();
      sub_2697EC954(v162, v163);

      OUTLINED_FUNCTION_2_36();
      v20 = v161;
      break;
    case 2u:
      v22 = v0[31];
      v21 = v0[32];
      v23 = v1[30];
      v24 = v1[27];
      v25 = v1[19];
      v26 = v1[15];
      v27 = v1[13];

      v29 = *v27;
      v28 = v27[1];
      v30 = v27[2];
      v31 = OUTLINED_FUNCTION_10_27();
      v22(v31);
      v32 = sub_2698548B4();
      v33 = sub_269854F14();
      if (os_log_type_enabled(v32, v33))
      {
        *OUTLINED_FUNCTION_16_2() = 0;
        OUTLINED_FUNCTION_24_18(&dword_269684000, v34, v35, "ABComparisonPlayOnThirdPartyAppHandler got noAppAvailable");
        OUTLINED_FUNCTION_10();
      }

      v36 = v1[33];
      v37 = v1[19];
      v38 = v1[15];
      v39 = v1[16];

      v40 = OUTLINED_FUNCTION_0_17();
      v36(v40);
      goto LABEL_12;
    case 3u:
      v42 = v0[31];
      v41 = v0[32];
      v43 = v1[30];
      v44 = v1[27];
      v45 = v1[18];
      v46 = v1[15];
      v47 = v1[13];

      v29 = *v47;
      v48 = v47[1];
      v30 = v47[2];
      v49 = OUTLINED_FUNCTION_10_27();
      v42(v49);
      v50 = sub_2698548B4();
      v51 = sub_269854F14();
      if (os_log_type_enabled(v50, v51))
      {
        *OUTLINED_FUNCTION_16_2() = 0;
        OUTLINED_FUNCTION_24_18(&dword_269684000, v52, v53, "ABComparisonPlayOnThirdPartyAppHandler got failed");
        OUTLINED_FUNCTION_10();
      }

      v54 = v1[33];
      v55 = v1[18];
      v56 = v1[15];
      v57 = v1[16];

      v58 = OUTLINED_FUNCTION_0_17();
      v54(v58);
      if (!v29)
      {
        goto LABEL_13;
      }

LABEL_12:
      v59 = *(v29 + 16);

      if (v59 <= 1)
      {
        v127 = v1[29];
        v128 = v1[14];
        OUTLINED_FUNCTION_0_54();
        sub_2697EC954(v129, v130);

        goto LABEL_51;
      }

LABEL_13:
      v60 = 0;
      v61 = 1;
      goto LABEL_26;
    case 4u:
    case 5u:
      v4 = v0[31];
      v3 = v0[32];
      v5 = v1[29];
      v6 = v1[30];
      v7 = v1[27];
      v8 = v1[17];
      v9 = v1[15];

      v4(v8, v6, v9);
      v10 = sub_2698548B4();
      v11 = sub_269854F14();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v1[33];
      v15 = v1[16];
      v14 = v1[17];
      v16 = v1[14];
      v17 = v1[15];
      if (v12)
      {
        v18 = OUTLINED_FUNCTION_16_2();
        *v18 = 0;
        _os_log_impl(&dword_269684000, v10, v11, "ABComparisonPlayOnThirdPartyAppHandler got other", v18, 2u);
        OUTLINED_FUNCTION_10();
      }

      v13(v14, v17);
      OUTLINED_FUNCTION_0_54();
      v20 = v16;
      break;
    default:
      v62 = v0[31];
      v63 = v0[32];
      v64 = v1[30];
      v65 = v1[21];
      v66 = v1[15];
      v67 = v1[13];
      v68 = v1[11];
      v70 = *v67;
      v69 = v67[1];
      v173 = v67[2];
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
      v174 = v1;
      v72 = *(v71 + 64);
      v73 = *(v67 + *(v71 + 80) + 8);

      v74 = v67 + v72;
      v1 = v174;
      sub_269715290(v74, v68);
      v75 = OUTLINED_FUNCTION_10_27();
      v62(v75);

      v76 = sub_2698548B4();
      v77 = sub_269854F14();

      v78 = os_log_type_enabled(v76, v77);
      v79 = v174[33];
      v80 = v174[21];
      v82 = v174[15];
      v81 = v174[16];
      if (v78)
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v176 = v84;
        *v83 = 136315138;
        *(v83 + 4) = sub_26974F520(v70, v69, &v176);
        _os_log_impl(&dword_269684000, v76, v77, "ABComparisonPlayOnThirdPartyAppHandler got selected, predictedAppId is %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v84);
        v1 = v174;
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      v85 = OUTLINED_FUNCTION_0_17();
      v79(v85);
      v60 = *(v173 + 16);

      if (v60 >= 2)
      {
        if (v1[26] == v70 && v1[27] == v69)
        {
          v87 = 1;
        }

        else
        {
          v87 = sub_269855584();
          v88 = v1[27];
        }

        v165 = v1[10];
        v164 = v1[11];
        v166 = v1[6];

        v114 = v87 & 1;
        sub_269715290(v164, v165);
        if (__swift_getEnumTagSinglePayload(v165, 1, v166) == 1)
        {
          sub_2697E2FCC(v1[10]);
          v61 = 0;
          v30 = 0;
        }

        else
        {
          v167 = (v1[10] + *(v1[6] + 32));
          v168 = *v167;
          v30 = v167[1];

          OUTLINED_FUNCTION_6_42();
          v61 = 0;
        }

        goto LABEL_27;
      }

      v155 = v1[29];
      v156 = v1[27];
      v157 = v1[14];
      v158 = v1[11];

      sub_2697E2FCC(v158);
      OUTLINED_FUNCTION_0_54();
      v20 = v157;
      break;
  }

  sub_2697EC954(v20, v19);
  goto LABEL_52;
}

unint64_t sub_2697EC350(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    LOBYTE(v3) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v3;
    return v5 | (v3 << 32);
  }

  v6 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {

    sub_2697EC9AC(v6, a2, 0xAu);
    v8 = v26;

    v3 = HIDWORD(v8) & 1;
LABEL_63:
    v5 = v8;
    if (v3)
    {
      v5 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_269855264();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v17 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v8) = v17 + v16;
              if (__CFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v7 != 45)
    {
      if (v4)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v22 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v22 + v21;
            if (__CFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v8) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v11 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v11 - v10;
            if (v11 < v10)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v8) = 0;
        v23 = v27;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v25 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v8) = v25 + v24;
          if (__CFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v8) = 0;
        v12 = v27 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v14 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v8) = v14 - v13;
          if (v14 < v13)
          {
            break;
          }

          ++v12;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v8) = 0;
      v18 = v27 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v20 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v8) = v20 + v19;
        if (__CFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t *sub_2697EC628()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v1 = v0[9];

  v2 = v0[11];

  return v0;
}

uint64_t sub_2697EC658()
{
  sub_2697EC628();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2697EC6D8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2697EC780;

  return sub_2697EB268(a1, a2);
}

uint64_t sub_2697EC780(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void *sub_2697EC884(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324020, &unk_26985E5D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_2697EC8F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2697EC954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_2697EC9AC(uint64_t a1, uint64_t a2, unsigned int a3)
{

  v5 = sub_269854BF4();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_2_6();
    v5 = sub_2697ED314();
    v42 = v41;

    v6 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      v7 = sub_269855264();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_3_43();
          if (v19)
          {
            OUTLINED_FUNCTION_22_18();
            while (1)
            {
              OUTLINED_FUNCTION_21_19();
              if (v15 && v23 < v21)
              {
                v24 = -48;
              }

              else if (v23 < 0x41 || v23 >= v20)
              {
                OUTLINED_FUNCTION_16_21();
                if (!v15 || v23 >= v25)
                {
                  goto LABEL_130;
                }

                v24 = -87;
              }

              else
              {
                v24 = -55;
              }

              v26 = v22 * a3;
              if ((v26 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v26, (v23 + v24)))
              {
                OUTLINED_FUNCTION_20_16();
                if (!v27)
                {
                  continue;
                }
              }

              goto LABEL_130;
            }
          }
        }

        goto LABEL_130;
      }

      goto LABEL_134;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_14_25();
        if (v28 ^ v29 | v27)
        {
          v32 = v35;
        }

        if (v28 ^ v29 | v27)
        {
          v33 = 65;
        }

        if (!(v28 ^ v29 | v27))
        {
          v34 = 58;
        }

        if (v30)
        {
          v36 = 0;
          while (1)
          {
            v37 = *v30;
            if (v37 < 0x30 || v37 >= v34)
            {
              if (v37 < 0x41 || v37 >= v33)
              {
                if (v37 < 0x61 || v37 >= v32)
                {
                  goto LABEL_130;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a3;
            if ((v39 & 0xFFFFFFFF00000000) == 0)
            {
              v40 = v37 + v38;
              v15 = __CFADD__(v39, v40);
              v36 = v39 + v40;
              if (!v15)
              {
                ++v30;
                if (--v31)
                {
                  continue;
                }
              }
            }

            goto LABEL_130;
          }
        }
      }

      goto LABEL_130;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_3_43();
        if (v10)
        {
          OUTLINED_FUNCTION_22_18();
          while (1)
          {
            OUTLINED_FUNCTION_21_19();
            if (v15 && v14 < v12)
            {
              v16 = -48;
            }

            else if (v14 < 0x41 || v14 >= v11)
            {
              OUTLINED_FUNCTION_16_21();
              if (!v15 || v14 >= v17)
              {
                break;
              }

              v16 = -87;
            }

            else
            {
              v16 = -55;
            }

            v18 = v13 * a3;
            if ((v18 & 0xFFFFFFFF00000000) == 0 && v18 >= (v14 + v16))
            {
              OUTLINED_FUNCTION_20_16();
              if (!v27)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_130:

      return;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_13_26();
  if (!v27)
  {
    if (v44 != 45)
    {
      if (v43)
      {
        OUTLINED_FUNCTION_1_47();
        while (1)
        {
          OUTLINED_FUNCTION_9_32();
          if (v15 && v62 < v61)
          {
            v63 = -48;
          }

          else if (v62 < 0x41 || v62 >= v60)
          {
            OUTLINED_FUNCTION_16_21();
            if (!v15 || v62 >= v64)
            {
              goto LABEL_130;
            }

            v63 = -87;
          }

          else
          {
            v63 = -55;
          }

          v65 = v59 * a3;
          if ((v65 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v65, (v62 + v63)))
          {
            OUTLINED_FUNCTION_8_35();
            if (!v27)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    if (v43)
    {
      if (v43 != 1)
      {
        OUTLINED_FUNCTION_1_47();
        OUTLINED_FUNCTION_7_39();
        while (1)
        {
          OUTLINED_FUNCTION_9_32();
          if (v15 && v48 < v47)
          {
            v49 = -48;
          }

          else if (v48 < 0x41 || v48 >= v46)
          {
            OUTLINED_FUNCTION_16_21();
            if (!v15 || v48 >= v50)
            {
              goto LABEL_130;
            }

            v49 = -87;
          }

          else
          {
            v49 = -55;
          }

          v51 = v45 * a3;
          if ((v51 & 0xFFFFFFFF00000000) == 0 && v51 >= (v48 + v49))
          {
            OUTLINED_FUNCTION_8_35();
            if (!v27)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    goto LABEL_133;
  }

  if (v43)
  {
    if (v43 != 1)
    {
      OUTLINED_FUNCTION_1_47();
      OUTLINED_FUNCTION_7_39();
      while (1)
      {
        OUTLINED_FUNCTION_9_32();
        if (v15 && v55 < v54)
        {
          v56 = -48;
        }

        else if (v55 < 0x41 || v55 >= v53)
        {
          OUTLINED_FUNCTION_16_21();
          if (!v15 || v55 >= v57)
          {
            goto LABEL_130;
          }

          v56 = -87;
        }

        else
        {
          v56 = -55;
        }

        v58 = v52 * a3;
        if ((v58 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v58, (v55 + v56)))
        {
          OUTLINED_FUNCTION_8_35();
          if (!v27)
          {
            continue;
          }
        }

        goto LABEL_130;
      }
    }

    goto LABEL_130;
  }

LABEL_135:
  __break(1u);
}

void sub_2697ECE58(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_269854BF4();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_2_6();
    v5 = sub_2697ED314();
    v39 = v38;

    v6 = v39;
    if ((v39 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
      v7 = sub_269855264();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_3_43();
          if (v18)
          {
            OUTLINED_FUNCTION_22_18();
            while (1)
            {
              OUTLINED_FUNCTION_21_19();
              if (v15 && v22 < v20)
              {
                v23 = -48;
              }

              else if (v22 < 0x41 || v22 >= v19)
              {
                OUTLINED_FUNCTION_15_26();
                if (!v15 || v22 >= v24)
                {
                  goto LABEL_130;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }

              if ((v21 * a3) >> 64 == (v21 * a3) >> 63 && !__OFADD__(v21 * a3, (v22 + v23)))
              {
                OUTLINED_FUNCTION_20_16();
                if (!v25)
                {
                  continue;
                }
              }

              goto LABEL_130;
            }
          }
        }

        goto LABEL_130;
      }

      goto LABEL_134;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_14_25();
        if (v26 ^ v27 | v25)
        {
          v30 = v33;
        }

        if (v26 ^ v27 | v25)
        {
          v31 = 65;
        }

        if (!(v26 ^ v27 | v25))
        {
          v32 = 58;
        }

        if (v28)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v28;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v31)
              {
                if (v35 < 0x61 || v35 >= v30)
                {
                  goto LABEL_130;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v34 * a3) >> 64 == (v34 * a3) >> 63)
            {
              v34 = v37 + (v35 + v36);
              if (!__OFADD__(v37, (v35 + v36)))
              {
                ++v28;
                if (--v29)
                {
                  continue;
                }
              }
            }

            goto LABEL_130;
          }
        }
      }

      goto LABEL_130;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_3_43();
        if (v10)
        {
          OUTLINED_FUNCTION_22_18();
          while (1)
          {
            OUTLINED_FUNCTION_21_19();
            if (v15 && v14 < v12)
            {
              v16 = -48;
            }

            else if (v14 < 0x41 || v14 >= v11)
            {
              OUTLINED_FUNCTION_15_26();
              if (!v15 || v14 >= v17)
              {
                break;
              }

              v16 = -87;
            }

            else
            {
              v16 = -55;
            }

            if ((v13 * a3) >> 64 == (v13 * a3) >> 63 && !__OFSUB__(v13 * a3, (v14 + v16)))
            {
              OUTLINED_FUNCTION_20_16();
              if (!v25)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_130:

      return;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  OUTLINED_FUNCTION_13_26();
  if (!v25)
  {
    if (v41 != 45)
    {
      if (v40)
      {
        OUTLINED_FUNCTION_1_47();
        while (1)
        {
          OUTLINED_FUNCTION_9_32();
          if (v15 && v57 < v56)
          {
            v58 = -48;
          }

          else if (v57 < 0x41 || v57 >= v55)
          {
            OUTLINED_FUNCTION_15_26();
            if (!v15 || v57 >= v59)
            {
              goto LABEL_130;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }

          if ((v54 * a3) >> 64 == (v54 * a3) >> 63 && !__OFADD__(v54 * a3, (v57 + v58)))
          {
            OUTLINED_FUNCTION_8_35();
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    if (v40)
    {
      if (v40 != 1)
      {
        OUTLINED_FUNCTION_1_47();
        OUTLINED_FUNCTION_7_39();
        while (1)
        {
          OUTLINED_FUNCTION_9_32();
          if (v15 && v45 < v44)
          {
            v46 = -48;
          }

          else if (v45 < 0x41 || v45 >= v43)
          {
            OUTLINED_FUNCTION_15_26();
            if (!v15 || v45 >= v47)
            {
              goto LABEL_130;
            }

            v46 = -87;
          }

          else
          {
            v46 = -55;
          }

          if ((v42 * a3) >> 64 == (v42 * a3) >> 63 && !__OFSUB__(v42 * a3, (v45 + v46)))
          {
            OUTLINED_FUNCTION_8_35();
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    goto LABEL_133;
  }

  if (v40)
  {
    if (v40 != 1)
    {
      OUTLINED_FUNCTION_1_47();
      OUTLINED_FUNCTION_7_39();
      while (1)
      {
        OUTLINED_FUNCTION_9_32();
        if (v15 && v51 < v50)
        {
          v52 = -48;
        }

        else if (v51 < 0x41 || v51 >= v49)
        {
          OUTLINED_FUNCTION_15_26();
          if (!v15 || v51 >= v53)
          {
            goto LABEL_130;
          }

          v52 = -87;
        }

        else
        {
          v52 = -55;
        }

        if ((v48 * a3) >> 64 == (v48 * a3) >> 63 && !__OFADD__(v48 * a3, (v51 + v52)))
        {
          OUTLINED_FUNCTION_8_35();
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_130;
      }
    }

    goto LABEL_130;
  }

LABEL_135:
  __break(1u);
}

uint64_t sub_2697ED314()
{
  v0 = sub_2697ED380();
  v4 = sub_2697ED3B4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2697ED3B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_269854B24();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2698550C4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2697EC884(v9, 0);
  v12 = sub_2697ED514(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_269854B24();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_269855264();
LABEL_4:

  return sub_269854B24();
}

unint64_t sub_2697ED514(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2697ED724(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_269854BA4();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_269855264();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2697ED724(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_269854B84();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2697ED724(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_269854BB4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D645A90](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t OUTLINED_FUNCTION_6_42()
{

  return sub_2697EC954(v0, type metadata accessor for ModelParams);
}

void OUTLINED_FUNCTION_24_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2697ED930(uint64_t a1)
{
  v2 = type metadata accessor for SignalRecordingContext();
  v3 = OUTLINED_FUNCTION_4_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppDisambiguationContext(0);
  v9 = OUTLINED_FUNCTION_4_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2697EE474(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v14 = *(v7 + 1);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
    sub_26971522C(&v7[*(v15 + 48)], v13);
    v16 = *&v13[*(v8 + 36)];
    OUTLINED_FUNCTION_0_55();
    sub_2697EE4D8(v13, v17);
    return (v16 >> 1) & 1;
  }

  else
  {
    OUTLINED_FUNCTION_2_37();
    sub_2697EE4D8(v7, v19);
    return 0;
  }
}

uint64_t sub_2697EDA64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2698548D4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SignalRecordingContext();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = type metadata accessor for AppDisambiguationContext(0);
  v2[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697EDB84, 0, 0);
}

unsigned __int8 *sub_2697EDB84()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v82 = v0[3];
    }

    v2 = sub_269855324();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 != 2)
  {
    goto LABEL_113;
  }

  v3 = v0[7];
  sub_2697EE474(v0[2], v0[8]);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v19 = v0[8];
    OUTLINED_FUNCTION_2_37();
    goto LABEL_112;
  }

  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v8 = *v6;
  v7 = v6[1];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
  sub_26971522C(v6 + *(v9 + 48), v5);
  v10 = (v5 + *(v4 + 40));
  if (!v10[1])
  {

    if (qword_2803226F0 != -1)
    {
      swift_once();
    }

    v23 = v0[5];
    v22 = v0[6];
    v24 = v0[4];
    v25 = __swift_project_value_buffer(v24, qword_28033D940);
    (*(v23 + 16))(v22, v25, v24);
    v26 = sub_2698548B4();
    v27 = sub_269854F14();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_269684000, v26, v27, "ABComparisonSmartAppSelectionDisambiguationHandler no request ID", v28, 2u);
      MEMORY[0x26D647170](v28, -1, -1);
    }

    v29 = v0[10];
    v31 = v0[5];
    v30 = v0[6];
    v32 = v0[4];

    (*(v31 + 8))(v30, v32);
    goto LABEL_111;
  }

  v11 = *v10;
  v12 = v0[3];
  v13 = v1 & 0xC000000000000001;
  sub_269750050(0);
  v14 = v0[3];
  if ((v1 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x26D646120](0, v14);
    v83 = v0[3];
  }

  else
  {
    v15 = *(v14 + 32);

    v16 = v15;
  }

  sub_269750050(1);
  v17 = v0[3];
  if (v13)
  {
    v18 = MEMORY[0x26D646120](1, v17);
  }

  else
  {
    v18 = *(v17 + 40);
  }

  v33 = v18;
  v34 = *(v0[10] + 16);
  v35 = [objc_allocWithZone(MEMORY[0x277D581B8]) init];
  v36 = v0[10];
  if (!v35)
  {

    OUTLINED_FUNCTION_0_55();
    v20 = v36;
    goto LABEL_112;
  }

  v37 = v8;
  v38 = v35;
  v85 = v34;
  v86 = v16;
  v39 = v33;
  v87 = v34 & 6;
  v40 = v36 + *(v0[9] + 28);
  v41 = type metadata accessor for ModelParams(0);
  v42 = *(v40 + *(v41 + 24));
  if (!(*(v42 + 16) >> 31))
  {
    [v38 setNumCandidateApps_];
  }

  if (v87)
  {

    v44 = v38;
  }

  else
  {
    v45 = sub_2698054AC(v42);
    if (v46)
    {
      v47 = v37 == v45 && v46 == v7;
      if (v47)
      {
        v48 = 1;
      }

      else
      {
        v48 = sub_269855584();
      }
    }

    else
    {
      v48 = 0;
    }

    v44 = v38;
    result = [v38 setIsDecisionCorrect_];
  }

  v49 = (v40 + *(v41 + 32));
  v50 = v49[1];
  if (v50)
  {
    v51 = *v49;
    v52 = HIBYTE(v50) & 0xF;
    v53 = v51 & 0xFFFFFFFFFFFFLL;
    if ((v50 & 0x2000000000000000) != 0 ? HIBYTE(v50) & 0xF : v51 & 0xFFFFFFFFFFFFLL)
    {
      if ((v50 & 0x1000000000000000) == 0)
      {
        if ((v50 & 0x2000000000000000) != 0)
        {
          if (v51 == 43)
          {
            if (v52)
            {
              if (v52 != 1)
              {
                OUTLINED_FUNCTION_6_43();
                while (1)
                {
                  OUTLINED_FUNCTION_1_48();
                  if (!v47 & v57)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_5_37();
                  if (!v47)
                  {
                    break;
                  }

                  v56 = v66 + v65;
                  if (__CFADD__(v66, v65))
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_4_36();
                  if (v47)
                  {
                    goto LABEL_102;
                  }
                }
              }

              goto LABEL_101;
            }

LABEL_127:
            __break(1u);
            return result;
          }

          if (v51 != 45)
          {
            if (v52)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_48();
                if (!v47 & v57)
                {
                  break;
                }

                OUTLINED_FUNCTION_5_37();
                if (!v47)
                {
                  break;
                }

                v56 = v70 + v69;
                if (__CFADD__(v70, v69))
                {
                  break;
                }

                OUTLINED_FUNCTION_4_36();
                if (v47)
                {
                  goto LABEL_102;
                }
              }
            }

            goto LABEL_101;
          }

          if (v52)
          {
            if (v52 != 1)
            {
              OUTLINED_FUNCTION_6_43();
              while (1)
              {
                OUTLINED_FUNCTION_1_48();
                if (!v47 & v57)
                {
                  break;
                }

                OUTLINED_FUNCTION_5_37();
                if (!v47)
                {
                  break;
                }

                v56 = v62 - v61;
                if (v62 < v61)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_36();
                if (v47)
                {
                  goto LABEL_102;
                }
              }
            }

            goto LABEL_101;
          }
        }

        else
        {
          if ((v51 & 0x1000000000000000) != 0)
          {
            result = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_269855264();
          }

          v55 = *result;
          if (v55 == 43)
          {
            if (v53 >= 1)
            {
              if (v53 != 1)
              {
                v56 = 0;
                if (result)
                {
                  while (1)
                  {
                    OUTLINED_FUNCTION_1_48();
                    if (!v47 & v57)
                    {
                      goto LABEL_101;
                    }

                    OUTLINED_FUNCTION_5_37();
                    if (!v47)
                    {
                      goto LABEL_101;
                    }

                    v56 = v64 + v63;
                    if (__CFADD__(v64, v63))
                    {
                      goto LABEL_101;
                    }

                    OUTLINED_FUNCTION_4_36();
                    if (v47)
                    {
                      goto LABEL_102;
                    }
                  }
                }

                goto LABEL_92;
              }

              goto LABEL_101;
            }

            goto LABEL_126;
          }

          if (v55 != 45)
          {
            if (v53)
            {
              v56 = 0;
              if (result)
              {
                while (1)
                {
                  v67 = *result - 48;
                  if (v67 > 9)
                  {
                    goto LABEL_101;
                  }

                  v68 = 10 * v56;
                  if ((v68 & 0xFFFFFFFF00000000) != 0)
                  {
                    goto LABEL_101;
                  }

                  v56 = v68 + v67;
                  if (__CFADD__(v68, v67))
                  {
                    goto LABEL_101;
                  }

                  ++result;
                  if (!--v53)
                  {
                    goto LABEL_92;
                  }
                }
              }

              goto LABEL_92;
            }

LABEL_101:
            v56 = 0;
            v60 = 1;
LABEL_102:
            if (v60)
            {
              goto LABEL_104;
            }

            goto LABEL_103;
          }

          if (v53 >= 1)
          {
            if (v53 != 1)
            {
              v56 = 0;
              if (result)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_1_48();
                  if (!v47 & v57)
                  {
                    goto LABEL_101;
                  }

                  OUTLINED_FUNCTION_5_37();
                  if (!v47)
                  {
                    goto LABEL_101;
                  }

                  v56 = v59 - v58;
                  if (v59 < v58)
                  {
                    goto LABEL_101;
                  }

                  OUTLINED_FUNCTION_4_36();
                  if (v47)
                  {
                    goto LABEL_102;
                  }
                }
              }

LABEL_92:
              v60 = 0;
              goto LABEL_102;
            }

            goto LABEL_101;
          }

          __break(1u);
        }

        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      sub_2697EC9AC(v51, v50, 0xAu);
      v56 = v84;

      if ((v56 & 0x100000000) == 0)
      {
LABEL_103:
        [v44 setModelVersion_];
      }
    }
  }

LABEL_104:
  [v44 setProjectIntent_];
  [v86 setAbModelEvaluated_];
  v71 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
  if (!v71)
  {
    v29 = v0[10];

LABEL_111:
    v21 = type metadata accessor for AppDisambiguationContext;
    v20 = v29;
    goto LABEL_112;
  }

  v72 = v71;
  v73 = v0[10];
  if ((v85 & 7) != 0)
  {
    if (v87)
    {
      v74 = 2;
    }

    else
    {
      v74 = 3;
    }

    [v71 setTriggerReason_];
    v75 = v72;
    [v39 setAbModelResultTriggered_];

    OUTLINED_FUNCTION_0_55();
    sub_2697EE4D8(v73, v76);
    goto LABEL_113;
  }

  OUTLINED_FUNCTION_0_55();
  v20 = v73;
LABEL_112:
  sub_2697EE4D8(v20, v21);
LABEL_113:
  v77 = v0[10];
  v78 = v0[8];
  v79 = v0[6];

  v80 = OUTLINED_FUNCTION_7_40();

  return v81(v80);
}

uint64_t sub_2697EE2E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2697EE37C;

  return sub_2697EDA64(a1, a2);
}

uint64_t sub_2697EE37C()
{
  v1 = *(*v0 + 16);
  v5 = *v0;

  v2 = OUTLINED_FUNCTION_7_40();

  return v3(v2);
}

uint64_t sub_2697EE474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalRecordingContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697EE4D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

BOOL sub_2697EE5C0(uint64_t a1)
{
  v2 = type metadata accessor for SignalRecordingContext();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2697EE474(a1, v5);
  v6 = swift_getEnumCaseMultiPayload() == 5;
  sub_2697602B0(v5);
  return v6;
}

uint64_t sub_2697EE664(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2698548D4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SignalRecordingContext();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697EE754, 0, 0);
}

uint64_t sub_2697EE754()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v26 = v0[3];
    }

    v2 = sub_269855324();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 != 1)
  {
    goto LABEL_14;
  }

  v3 = v0[7];
  sub_2697EE474(v0[2], v0[8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[8];
  if (EnumCaseMultiPayload != 5)
  {
    sub_2697602B0(v5);
LABEL_14:
    v6 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  v6 = *v5;
  v7 = v5[1];
  v8 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
  if (!v8)
  {

    goto LABEL_14;
  }

  v9 = v8;
  v10 = v0[3];
  [v8 setTriggerReason:1];
  sub_269750050(0);
  v11 = v0[3];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x26D646120](0, v11);
  }

  else
  {
    v12 = *(v11 + 32);
  }

  v13 = v12;
  [v12 setAbModelResultTriggered:v9];
  if (qword_2803226F0 != -1)
  {
    swift_once();
  }

  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  v17 = __swift_project_value_buffer(v16, qword_28033D940);
  (*(v15 + 16))(v14, v17, v16);
  v18 = sub_2698548B4();
  v19 = sub_269854F14();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_269684000, v18, v19, "ABComparisonSmartAppSelectionSuccessHandler will emit evaluation message", v20, 2u);
    MEMORY[0x26D647170](v20, -1, -1);
    v21 = v13;
    v13 = v18;
  }

  else
  {
    v21 = v9;
    v9 = v18;
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
LABEL_15:
  v22 = v0[8];
  v23 = v0[6];

  v24 = v0[1];

  return v24(v6, v7);
}

uint64_t sub_2697EE9DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2697EC780;

  return sub_2697EE664(a1, a2);
}

uint64_t sub_2697EEA80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2697EEAC0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2697EEB2C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2698548D4();
  v9 = OUTLINED_FUNCTION_8(v8);
  v91 = v10;
  v92 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v87 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v87 - v20;
  MEMORY[0x28223BE20](v19);
  v88 = &v87 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v87 - v25;
  v27 = sub_269851D34();
  v28 = OUTLINED_FUNCTION_8(v27);
  v89 = v29;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v28);
  v90 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = (&v87 - v34);
  if ((sub_2697EF2B4(a3) & 1) == 0)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35();
    }

    v41 = v92;
    __swift_project_value_buffer(v92, qword_28033D940);
    OUTLINED_FUNCTION_3_44();
    v42(v15);
    OUTLINED_FUNCTION_11_33();
    v43 = sub_2698548B4();
    v44 = sub_269854F14();
    if (OUTLINED_FUNCTION_6_44(v44))
    {
      OUTLINED_FUNCTION_27_2();
      v45 = OUTLINED_FUNCTION_7_41();
      OUTLINED_FUNCTION_10_28(v45);
      OUTLINED_FUNCTION_8_36(4.8149e-34);
      sub_2697EFA44(v94);
      v46 = OUTLINED_FUNCTION_9_33();

      *(v15 + 4) = v46;
      OUTLINED_FUNCTION_1_49(&dword_269684000, v47, v48, "PlayOnThirdPartyAppEligibilityManager for %s, storefront not enabled");
      OUTLINED_FUNCTION_2_38();
      OUTLINED_FUNCTION_5_38();
    }

    else
    {

      sub_2697EFA44(v94);
    }

    v35[1](v15, v41);
    return 0;
  }

  if ((a2 & 1) != 0 || a1 < 1)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35();
    }

    v49 = v92;
    __swift_project_value_buffer(v92, qword_28033D940);
    OUTLINED_FUNCTION_3_44();
    v50(v18);
    OUTLINED_FUNCTION_11_33();
    v51 = sub_2698548B4();
    v52 = sub_269854F14();
    if (OUTLINED_FUNCTION_6_44(v52))
    {
      OUTLINED_FUNCTION_27_2();
      v53 = OUTLINED_FUNCTION_7_41();
      OUTLINED_FUNCTION_10_28(v53);
      OUTLINED_FUNCTION_8_36(4.8149e-34);
      sub_2697EFA44(v94);
      v54 = OUTLINED_FUNCTION_9_33();

      *(v18 + 4) = v54;
      OUTLINED_FUNCTION_1_49(&dword_269684000, v55, v56, "PlayOnThirdPartyAppEligibilityManager for %s, no valid sampling frequency");
      OUTLINED_FUNCTION_2_38();
      OUTLINED_FUNCTION_5_38();
    }

    else
    {

      sub_2697EFA44(v94);
    }

    v35[1](v18, v49);
    return 0;
  }

  v36 = *(v4 + 24);
  if ((*(v4 + 16))() >= 1.0 / a1)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35();
    }

    v58 = v92;
    __swift_project_value_buffer(v92, qword_28033D940);
    OUTLINED_FUNCTION_3_44();
    v59(v21);
    OUTLINED_FUNCTION_11_33();
    v60 = sub_2698548B4();
    v61 = sub_269854F14();
    if (OUTLINED_FUNCTION_6_44(v61))
    {
      OUTLINED_FUNCTION_27_2();
      v62 = OUTLINED_FUNCTION_7_41();
      OUTLINED_FUNCTION_10_28(v62);
      OUTLINED_FUNCTION_8_36(4.8149e-34);
      sub_2697EFA44(v94);
      v63 = OUTLINED_FUNCTION_9_33();

      *(v21 + 4) = v63;
      OUTLINED_FUNCTION_1_49(&dword_269684000, v64, v65, "PlayOnThirdPartyAppEligibilityManager for %s, not eligible due to sampling");
      OUTLINED_FUNCTION_2_38();
      OUTLINED_FUNCTION_5_38();
    }

    else
    {

      sub_2697EFA44(v94);
    }

    v35[1](v21, v58);
    return 0;
  }

  v37 = *(v4 + 56);
  v93 = *(v4 + 40);
  swift_unknownObjectRetain();
  v38 = swift_readAtKeyPath();
  sub_269707020(v39, v26);
  v38(v94, 0);
  swift_unknownObjectRelease();
  v40 = v27;
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
  {
    v66 = v89;
    v67 = v35;
    v68 = (*(v89 + 32))(v35, v26, v40);
    v69 = *(v4 + 72);
    v70 = v90;
    (*(v4 + 64))(v68);
    sub_269851CB4();
    if (*(v4 + 32) <= v71)
    {
      v86 = *(v66 + 8);
      v86(v70, v40);
      v86(v35, v40);
      return 1;
    }

    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35();
    }

    v72 = v92;
    v73 = __swift_project_value_buffer(v92, qword_28033D940);
    v74 = v91;
    v75 = v88;
    (*(v91 + 16))(v88, v73, v72);
    OUTLINED_FUNCTION_11_33();
    v76 = sub_2698548B4();
    v77 = sub_269854F14();
    if (OUTLINED_FUNCTION_6_44(v77))
    {
      OUTLINED_FUNCTION_27_2();
      v78 = OUTLINED_FUNCTION_7_41();
      OUTLINED_FUNCTION_10_28(v78);
      *v75 = 136315138;
      v87 = v67;
      v79 = v94[0];
      v80 = v94[1];

      sub_2697EFA44(v94);
      v81 = sub_26974F520(v79, v80, &v93);

      *(v75 + 4) = v81;
      OUTLINED_FUNCTION_1_49(&dword_269684000, v82, v83, "PlayOnThirdPartyAppEligibilityManager for %s, not eligible due to cooldown period");
      OUTLINED_FUNCTION_2_38();
      OUTLINED_FUNCTION_5_38();

      (*(v74 + 8))(v75, v92);
      v84 = *(v66 + 8);
      v84(v90, v40);
      v85 = v87;
    }

    else
    {

      sub_2697EFA44(v94);
      (*(v74 + 8))(v75, v72);
      v84 = *(v66 + 8);
      v84(v70, v40);
      v85 = v67;
    }

    v84(v85, v40);
    return 0;
  }

  sub_2697DB144(v26);
  return 1;
}

uint64_t sub_2697EF2B4(uint64_t a1)
{
  v3 = sub_2698548D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  if (!*(a1 + 16))
  {
    return 1;
  }

  v14 = *__swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
  v49 = sub_2697B6BCC();
  if (v15)
  {
    v16 = v15;
    if (qword_2803226F0 != -1)
    {
LABEL_29:
      swift_once();
    }

    v17 = __swift_project_value_buffer(v3, qword_28033D940);
    v44 = *(v4 + 16);
    v44(v13, v17, v3);

    v18 = sub_2698548B4();
    v19 = sub_269854F14();

    v20 = os_log_type_enabled(v18, v19);
    v47 = v11;
    v48 = v4;
    v45 = v17;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v52[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_26974F520(v49, v16, v52);
      _os_log_impl(&dword_269684000, v18, v19, "PlayOnThirdPartyAppEligibilityManager device storefront is %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26D647170](v22, -1, -1);
      MEMORY[0x26D647170](v21, -1, -1);
    }

    v46 = *(v4 + 8);
    v46(v13, v3);
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v4 = v24 & *(a1 + 56);
    v25 = (v23 + 63) >> 6;

    v11 = 0;
    v13 = MEMORY[0x277D837D0];
    while (v4)
    {
      v26 = v11;
LABEL_15:
      v27 = (*(a1 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v4)))));
      v29 = *v27;
      v28 = v27[1];
      v4 &= v4 - 1;
      v52[0] = v49;
      v52[1] = v16;
      v50 = v29;
      v51 = v28;
      sub_269693054();
      if (sub_269855144())
      {

        return 1;
      }
    }

    while (1)
    {
      v26 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v26 >= v25)
      {
        break;
      }

      v4 = *(a1 + 56 + 8 * v26);
      ++v11;
      if (v4)
      {
        v11 = v26;
        goto LABEL_15;
      }
    }

    v31 = v47;
    v44(v47, v45, v3);

    v32 = sub_2698548B4();
    v33 = sub_269854F14();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52[0] = v35;
      *v34 = 136315394;
      v36 = sub_26974F520(v49, v16, v52);

      *(v34 + 4) = v36;
      *(v34 + 12) = 2080;
      v37 = sub_269854E54();
      v39 = sub_26974F520(v37, v38, v52);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_269684000, v32, v33, "PlayOnThirdPartyAppEligibilityManager device storefront %s is not in the enabled storefront list %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D647170](v35, -1, -1);
      MEMORY[0x26D647170](v34, -1, -1);
    }

    else
    {
    }

    v46(v31, v3);
  }

  else
  {
    if (qword_2803226F0 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v3, qword_28033D940);
    (*(v4 + 16))(v8, v40, v3);
    v41 = sub_2698548B4();
    v42 = sub_269854F14();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_269684000, v41, v42, "PlayOnThirdPartyAppEligibilityManager no device storefront", v43, 2u);
      MEMORY[0x26D647170](v43, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
  }

  return 0;
}

uint64_t sub_2697EF888()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v20 - v4;
  v6 = sub_269851D34();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  v15(v12);
  v17 = *(v1 + 56);
  v18 = *(v9 + 16);
  v20[0] = *(v1 + 40);
  v18(v5, v14, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v20[1] = v20[0];
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease();
  return (*(v9 + 8))(v14, v6);
}

void OUTLINED_FUNCTION_1_49(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_2_38()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D647170);
}

void OUTLINED_FUNCTION_5_38()
{

  JUMPOUT(0x26D647170);
}

BOOL OUTLINED_FUNCTION_6_44(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_7_41()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_36(float a1)
{
  *v1 = a1;
  v4 = *(v2 - 224);
  v5 = *(v2 - 216);
}

uint64_t OUTLINED_FUNCTION_9_33()
{

  return sub_26974F520(v0, v1, (v2 - 240));
}

uint64_t OUTLINED_FUNCTION_11_33()
{

  return sub_2697EFA0C(v0, v1 - 224);
}

uint64_t sub_2697EFB8C()
{
  v0 = sub_269851BE4();
  v1 = OUTLINED_FUNCTION_8(v0);
  v17 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  sub_269854EB4();
  v8 = MEMORY[0x277D84F90];
  sub_2696B6FF4();
  while (1)
  {
    sub_2698550E4();
    if (!v24)
    {
      break;
    }

    sub_269694FFC(&v23, v22);
    sub_2696B6F94(v22, v21);
    v9 = sub_2697AE7D4();
    if (swift_dynamicCast())
    {
      v10 = v25;
      if ([v25 appProtectionHidden])
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      else
      {
        *(&v19 + 1) = v9;
        v20 = &off_287A413D0;
        *&v18 = v10;
      }
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v22);
    if (*(&v19 + 1))
    {
      sub_26968E5D4(&v18, v21);
      sub_26968E5D4(v21, &v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v8 + 16);
        OUTLINED_FUNCTION_16_22();
        sub_26977C3A8();
        v8 = v14;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_9(v11);
        sub_26977C3A8();
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      sub_26968E5D4(&v18, v8 + 40 * v12 + 32);
    }

    else
    {
      sub_26969B0C0(&v18, &unk_2803263B0, &unk_26985D0B0);
    }
  }

  (*(v17 + 8))(v7, v0);
  return v8;
}

uint64_t sub_2697EFDDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x277D84F90];
  v20 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_2696A73F8(v8, v22);
    v10 = v5(v22);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_0(v22);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_26968E5D4(v22, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v9 + 16);
        v13 = OUTLINED_FUNCTION_16_22();
        sub_2698150B0(v13, v14, v15);
        v9 = v23;
      }

      v16 = *(v9 + 16);
      if (v16 >= *(v9 + 24) >> 1)
      {
        OUTLINED_FUNCTION_15_27();
        sub_2698150B0(v17, v18, v19);
        v9 = v23;
      }

      *(v9 + 16) = v16 + 1;
      result = sub_26968E5D4(v21, v9 + 40 * v16 + 32);
      v5 = v20;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v22);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2697EFF3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return OUTLINED_FUNCTION_10_29();
  }

  OUTLINED_FUNCTION_1_50();
  v21 = v3;
  v22 = v4;
  v20 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_39();
  v5 = v20;
  v6 = a1 + 32;
  do
  {
    sub_2696A73F8(v6, v19);
    sub_2696A73F8(v19, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324380, &qword_269858C00);
    v7 = sub_269854AE4();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v19);
    v20 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      OUTLINED_FUNCTION_9(v10);
      OUTLINED_FUNCTION_15_27();
      sub_269814F0C(v13, v14, v15);
      v5 = v20;
    }

    *(v5 + 16) = v11 + 1;
    v12 = v5 + 16 * v11;
    *(v12 + 32) = v7;
    *(v12 + 40) = v9;
    v6 += 40;
    --v1;
  }

  while (v1);
  v19[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  sub_2697B47C4();
  OUTLINED_FUNCTION_3_45();
  OUTLINED_FUNCTION_12_28();
  v16 = OUTLINED_FUNCTION_14_26();
  MEMORY[0x26D645A60](v16);

  MEMORY[0x26D645A60](23818, 0xE200000000000000);
  return v21;
}

void sub_2697F00A8()
{
  OUTLINED_FUNCTION_17_22();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4;
    OUTLINED_FUNCTION_1_50();
    v16 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_39();
    v7 = v16;
    v8 = (v6 + 40);
    do
    {
      v14 = *(v8 - 1);
      v15 = *v8;

      sub_269854AE4();
      OUTLINED_FUNCTION_6_45();
      if (v10)
      {
        v12 = OUTLINED_FUNCTION_9(v9);
        sub_269814F0C(v12, v2, 1);
        v7 = v16;
      }

      *(v7 + 16) = v2;
      v11 = v7 + 16 * v3;
      *(v11 + 32) = v0;
      *(v11 + 40) = v1;
      v8 += 2;
      --v5;
    }

    while (v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    sub_2697B47C4();
    OUTLINED_FUNCTION_3_45();
    OUTLINED_FUNCTION_12_28();
    v13 = OUTLINED_FUNCTION_14_26();
    MEMORY[0x26D645A60](v13);

    OUTLINED_FUNCTION_13_27();
  }

  else
  {
    OUTLINED_FUNCTION_10_29();
  }

  OUTLINED_FUNCTION_18_18();
}

void sub_2697F01B8()
{
  OUTLINED_FUNCTION_17_22();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4;
    OUTLINED_FUNCTION_1_50();
    v17 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_39();
    v7 = v17;
    v8 = (v6 + 48);
    do
    {
      v14 = *(v8 - 2);
      v15 = *(v8 - 1);
      v16 = *v8;

      sub_269854AE4();
      OUTLINED_FUNCTION_6_45();
      if (v10)
      {
        v12 = OUTLINED_FUNCTION_9(v9);
        sub_269814F0C(v12, v2, 1);
        v7 = v17;
      }

      *(v7 + 16) = v2;
      v11 = v7 + 16 * v3;
      *(v11 + 32) = v0;
      *(v11 + 40) = v1;
      v8 += 3;
      --v5;
    }

    while (v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    sub_2697B47C4();
    OUTLINED_FUNCTION_3_45();
    OUTLINED_FUNCTION_12_28();
    v13 = OUTLINED_FUNCTION_14_26();
    MEMORY[0x26D645A60](v13);

    OUTLINED_FUNCTION_13_27();
  }

  else
  {
    OUTLINED_FUNCTION_10_29();
  }

  OUTLINED_FUNCTION_18_18();
}

uint64_t sub_2697F0300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return OUTLINED_FUNCTION_10_29();
  }

  OUTLINED_FUNCTION_1_50();
  v36 = v12;
  v37 = v13;
  v35 = MEMORY[0x277D84F90];
  v15 = v14;
  sub_269814F0C(0, v11, 0);
  v16 = v35;
  v17 = *(v15 + 16);
  v18 = (a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
  v32 = *(v15 + 72);
  v33 = v17;
  v31 = (v15 + 8);
  do
  {
    v19 = v33;
    v33(v10, v18, v3);
    v19(v34, v10, v3);
    v20 = sub_269854AE4();
    v22 = v21;
    (*v31)(v10, v3);
    v35 = v16;
    v24 = *(v16 + 16);
    v23 = *(v16 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_269814F0C(v23 > 1, v24 + 1, 1);
      v16 = v35;
    }

    *(v16 + 16) = v24 + 1;
    v25 = v16 + 16 * v24;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    v18 += v32;
    --v11;
  }

  while (v11);
  v35 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  sub_2697B47C4();
  v26 = OUTLINED_FUNCTION_3_45();
  v28 = v27;

  MEMORY[0x26D645A60](v26, v28);

  MEMORY[0x26D645A60](23818, 0xE200000000000000);
  return v36;
}

void sub_2697F05C4()
{
  OUTLINED_FUNCTION_17_22();
  v21 = v1;
  v3 = v2;
  v4 = v0;
  if (!(v0 >> 62))
  {
    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:
    OUTLINED_FUNCTION_10_29();
    goto LABEL_15;
  }

  if (!sub_269855324())
  {
    goto LABEL_14;
  }

LABEL_3:
  OUTLINED_FUNCTION_1_50();
  v5 = v3(v4);
  if (!v5)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    sub_2697B47C4();
    v18 = OUTLINED_FUNCTION_3_45();
    v20 = v19;

    MEMORY[0x26D645A60](v18, v20);

    OUTLINED_FUNCTION_13_27();
LABEL_15:
    OUTLINED_FUNCTION_18_18();
    return;
  }

  v6 = v5;
  v22 = MEMORY[0x277D84F90];
  sub_269814F0C(0, v5 & ~(v5 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v21;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D646120](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v8(0);
      v10 = sub_269854AE4();
      v12 = v11;
      v13 = *(v22 + 16);
      if (v13 >= *(v22 + 24) >> 1)
      {
        OUTLINED_FUNCTION_15_27();
        sub_269814F0C(v15, v16, v17);
        v8 = v21;
      }

      ++v7;
      *(v22 + 16) = v13 + 1;
      v14 = v22 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v12;
    }

    while (v6 != v7);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_2697F0770(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SignalRecordingContext();
  v5 = OUTLINED_FUNCTION_4_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  sub_2697EE474(a1, v9 - v8);
  OUTLINED_FUNCTION_14_26();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_37();
      sub_2697EE4D8(v10, v17);
      v18 = *__swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
      sub_2697EAC90(&v19);
      if ((v19 & 1) == 0)
      {
        sub_26976030C(&v19);
        goto LABEL_5;
      }

      v15 = sub_2697EEB2C(v20, v21 & 1, v22);
      sub_26976030C(&v19);
      break;
    case 3u:
    case 4u:
      v13 = *(v10 + 8);

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
      v11 = type metadata accessor for AppDisambiguationContext;
      v12 = v10 + *(v14 + 48);
      goto LABEL_4;
    default:
      OUTLINED_FUNCTION_2_37();
      v12 = v10;
LABEL_4:
      sub_2697EE4D8(v12, v11);
LABEL_5:
      v15 = 0;
      break;
  }

  return v15 & 1;
}

uint64_t sub_2697F08C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2698548D4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v9 = sub_269853984();
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v12 = type metadata accessor for SignalRecordingContext();
  v3[17] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697F0A84, 0, 0);
}

uint64_t sub_2697F0A84()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v29 = v0[3];
    }

    if (!sub_269855324())
    {
      goto LABEL_12;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  v2 = v0[3];
  sub_269750050(0);
  v3 = v0[3];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D646120](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  v0[19] = v4;
  v6 = v0[17];
  sub_2697EE474(v0[2], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = v0[18];
  if (EnumCaseMultiPayload == 1)
  {
    v9 = v8[4];
    if (v8[2])
    {
      v10 = v0[4];
      v11 = v8[3];
      v12 = v8[1];
      v13 = *v8;
      v14 = *(v10 + 72);
      v15 = (*(v10 + 64))();
      v17 = v16;
      __swift_project_boxed_opaque_existential_1((v10 + 80), *(v10 + 104));
      v18 = __swift_project_boxed_opaque_existential_1((v10 + 160), *(v10 + 184));
      __swift_project_boxed_opaque_existential_1((v10 + 200), *(v10 + 224));
      v19 = sub_2697F17C8(v13, v15, v17, *v18);
      v0[20] = v19;

      __swift_project_boxed_opaque_existential_1((v10 + 120), *(v10 + 144));
      sub_269818540();
      v21 = v20;
      v0[21] = v20;

      v22 = swift_task_alloc();
      v0[22] = v22;
      *v22 = v0;
      v22[1] = sub_2697F0D30;
      v23 = v0[15];

      return sub_2697B7D94(v23, v21, v19);
    }

    v26 = v8[4];
  }

  else
  {

    OUTLINED_FUNCTION_2_37();
    sub_2697EE4D8(v8, v25);
  }

LABEL_12:
  OUTLINED_FUNCTION_11_34();

  v27 = OUTLINED_FUNCTION_7_42();

  return v28(v27, 0);
}

uint64_t sub_2697F0D30()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v5 = *(v2 + 160);

    v6 = sub_2697F1500;
  }

  else
  {
    v6 = sub_2697F0E70;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2697F0E70()
{
  v92 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 120), *(v0 + 104));
  sub_269853964();
  v3 = sub_2697F255C();
  v5 = v4;

  [v2 setVideoPlayOnThirdPartyAppGroundTruthGenerated_];
  v6 = *(v5 + 16);
  v80 = v0;
  v70 = v3;
  if (v6)
  {
    v78 = *(v0 + 80);
    v79 = *(v0 + 88);
    v76 = *(v0 + 64);
    v77 = *(v0 + 72);
    v91 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_39();
    v7 = v91;
    v3 = sub_2697F1788(v5);
    v10 = 0;
    v11 = v5 + 64;
    v72 = v8;
    v73 = v6;
    v71 = v5 + 72;
    v12 = v5;
    v74 = v5 + 64;
    v75 = v5;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v12 + 32))
    {
      if ((*(v11 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v12 + 36) != v8)
      {
        goto LABEL_34;
      }

      v84 = v3 >> 6;
      v82 = v10;
      v83 = v8;
      v81 = v9;
      v13 = *(v76 + 48);
      v14 = v80[11];
      v15 = v80[12];
      v16 = v80[10];
      v17 = *(v12 + 56);
      v18 = (*(v12 + 48) + 16 * v3);
      v19 = v18[1];
      v85 = *v18;
      v88 = v80[9];
      v20 = sub_269853904();
      OUTLINED_FUNCTION_8(v20);
      v22 = v21;
      (*(v21 + 16))(v15 + v13, v17 + *(v23 + 72) * v3, v20);
      *v14 = v85;
      *(v79 + 8) = v19;
      v24 = *(v22 + 32);
      v24(&v14[*(v76 + 48)], v15 + v13, v20);
      sub_2697F1D04(v14, v16);
      v25 = *v16;
      v26 = *(v78 + 8);
      v27 = *(v76 + 48);
      *v88 = *v16;
      *(v77 + 8) = v26;
      v24(v88 + v27, v16 + v27, v20);

      sub_26969B0C0(v88, &qword_280323B28, &qword_26985C360);
      sub_26969B0C0(v14, &qword_280323B28, &qword_26985C360);
      v91 = v7;
      v0 = *(v7 + 16);
      v28 = *(v7 + 24);
      if (v0 >= v28 >> 1)
      {
        sub_269814F0C(v28 > 1, v0 + 1, 1);
        v7 = v91;
      }

      *(v7 + 16) = v0 + 1;
      v29 = v7 + 16 * v0;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v12 = v75;
      v30 = 1 << *(v75 + 32);
      if (v3 >= v30)
      {
        goto LABEL_35;
      }

      v11 = v74;
      v31 = *(v74 + 8 * v84);
      if ((v31 & (1 << v3)) == 0)
      {
        goto LABEL_36;
      }

      if (*(v75 + 36) != v83)
      {
        goto LABEL_37;
      }

      v32 = v31 & (-2 << (v3 & 0x3F));
      if (v32)
      {
        v30 = __clz(__rbit64(v32)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v33 = v82;
      }

      else
      {
        v0 = v84 << 6;
        v34 = (v71 + 8 * v84);
        v35 = v84 + 1;
        while (v35 < (v30 + 63) >> 6)
        {
          v37 = *v34++;
          v36 = v37;
          v0 += 64;
          ++v35;
          if (v37)
          {
            sub_26968E5C8(v3, v83, v81 & 1);
            v30 = __clz(__rbit64(v36)) + v0;
            goto LABEL_19;
          }
        }

        sub_26968E5C8(v3, v83, v81 & 1);
LABEL_19:
        v33 = v82;
        v12 = v75;
      }

      v9 = 0;
      v10 = v33 + 1;
      v3 = v30;
      v8 = v72;
      if (v10 == v73)
      {

        v0 = v80;
        v3 = v70;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_25;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_23:
  if (!*(v7 + 16))
  {
    v58 = *(v0 + 152);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

    goto LABEL_29;
  }

  if (qword_2803226F0 != -1)
  {
    goto LABEL_38;
  }

LABEL_25:
  v38 = *(v0 + 48);
  v39 = *(v0 + 56);
  v40 = *(v0 + 40);
  v41 = __swift_project_value_buffer(v40, qword_28033D940);
  (*(v38 + 16))(v39, v41, v40);
  v42 = v7;

  v43 = sub_2698548B4();
  v44 = sub_269854F24();

  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 152);
  v47 = *(v0 + 128);
  v49 = *(v0 + 104);
  v48 = *(v0 + 112);
  v50 = *(v0 + 48);
  v51 = *(v0 + 40);
  v89 = v51;
  v90 = *(v0 + 56);
  if (v45)
  {
    v87 = *(v0 + 104);
    v52 = swift_slowAlloc();
    v86 = v47;
    v53 = swift_slowAlloc();
    v91 = v53;
    *v52 = 136315138;
    v54 = MEMORY[0x26D645BC0](v42, MEMORY[0x277D837D0]);
    v56 = v55;

    v57 = sub_26974F520(v54, v56, &v91);
    v0 = v80;

    *(v52 + 4) = v57;
    _os_log_impl(&dword_269684000, v43, v44, "PlayOnThirdPartyAppSignalRecordingHandler populate has unhandled signals %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v50 + 8))(v90, v89);
    (*(v48 + 8))(v86, v87);
  }

  else
  {

    (*(v50 + 8))(v90, v89);
    (*(v48 + 8))(v47, v49);
  }

LABEL_29:
  v59 = *(v0 + 144);
  v61 = *(v0 + 120);
  v60 = *(v0 + 128);
  v63 = *(v0 + 88);
  v62 = *(v0 + 96);
  v65 = *(v0 + 72);
  v64 = *(v0 + 80);
  v66 = *(v0 + 56);

  v67 = OUTLINED_FUNCTION_7_42();

  return v68(v67, 1);
}

uint64_t sub_2697F1500()
{
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_11_34();

  v2 = OUTLINED_FUNCTION_7_42();

  return v3(v2, 0);
}

uint64_t *sub_2697F15E4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v1 = v0[9];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  sub_2697EFA44((v0 + 35));
  return v0;
}

uint64_t sub_2697F163C()
{
  sub_2697F15E4();

  return MEMORY[0x2821FE8D8](v0, 400, 7);
}

uint64_t sub_2697F16BC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2697EC780;

  return sub_2697F08C8(a1, a2);
}

uint64_t sub_2697F1788(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_269855184();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2697F17C8(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = a2;
  v59 = a3;
  v57 = a1;
  v5 = sub_2698548D4();
  v6 = OUTLINED_FUNCTION_8(v5);
  v60 = v7;
  v61 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v62 = v11 - v10;
  v72[3] = &type metadata for LSApplicationRecordProvider;
  v72[4] = &xmmword_287A41430;
  v71[3] = &type metadata for AppIntentsMetadataProvider;
  v71[4] = &off_287A413C0;
  v71[0] = a4;
  v70[3] = &type metadata for FeatureFlagServiceImpl;
  v70[4] = &off_287A41BD8;
  sub_2696A73F8(v72, v68);
  sub_2696A73F8(v71, &v69);
  v12 = objc_opt_self();
  v13 = a4;
  v14 = [v12 enumeratorWithOptions_];
  v15 = sub_2697EFB8C();
  v56[1] = 0;

  v16 = 0;
  v17 = *(v15 + 16);
  v18 = v15 + 32;
  v19 = MEMORY[0x277D84F90];
  v20 = 40;
  while (v17 != v16)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_29:
      swift_once();
      goto LABEL_24;
    }

    sub_2696A73F8(v18, &v64);
    v21 = v65;
    v22 = v66;
    __swift_project_boxed_opaque_existential_1(&v64, v65);
    if ((*(v22 + 24))(v21, v22) == 1)
    {
      __swift_destroy_boxed_opaque_existential_0(&v64);
    }

    else
    {
      sub_26968E5D4(&v64, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = *(v19 + 16);
        v25 = OUTLINED_FUNCTION_16_22();
        sub_2698150B0(v25, v26, v27);
        v19 = v67;
      }

      v29 = *(v19 + 16);
      v28 = *(v19 + 24);
      if (v29 >= v28 >> 1)
      {
        v30 = OUTLINED_FUNCTION_9(v28);
        sub_2698150B0(v30, v29 + 1, 1);
        v19 = v67;
      }

      *(v19 + 16) = v29 + 1;
      sub_26968E5D4(v63, v19 + 40 * v29 + 32);
    }

    v18 += 40;
    ++v16;
  }

  MEMORY[0x28223BE20](v31);
  LOBYTE(v56[-6]) = v57 & 1;
  v56[-5] = v68;
  v32 = v59;
  v56[-4] = v58;
  v56[-3] = v32;
  v56[-2] = v70;
  v33 = sub_2697EFDDC(sub_2697F1D74, &v56[-8], v19);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = v33 + 32;
    v20 = MEMORY[0x277D84F90];
    do
    {
      sub_2696A73F8(v35, &v64);
      v36 = v65;
      v37 = v66;
      __swift_project_boxed_opaque_existential_1(&v64, v65);
      v38 = (*(v37 + 8))(v36, v37);
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_0(&v64);
      if (v40)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v20 + 16);
          OUTLINED_FUNCTION_16_22();
          sub_26977BCE4();
          v20 = v45;
        }

        v42 = *(v20 + 16);
        v41 = *(v20 + 24);
        if (v42 >= v41 >> 1)
        {
          OUTLINED_FUNCTION_9(v41);
          OUTLINED_FUNCTION_15_27();
          sub_26977BCE4();
          v20 = v46;
        }

        *(v20 + 16) = v42 + 1;
        v43 = v20 + 16 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
      }

      v35 += 40;
      --v34;
    }

    while (v34);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v17 = v60;
  v16 = v61;
  v15 = v62;
  if (qword_280322708 != -1)
  {
    goto LABEL_29;
  }

LABEL_24:
  v47 = __swift_project_value_buffer(v16, qword_281571B50);
  (*(v17 + 16))(v15, v47, v16);

  v48 = sub_2698548B4();
  v49 = sub_269854F14();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v64 = v51;
    *v50 = 136315138;
    sub_2697F00A8();
    v54 = sub_26974F520(v52, v53, &v64);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_269684000, v48, v49, "PlayOnThirdPartyApp candidateApps: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v17 + 8))(v62, v16);
  }

  else
  {

    (*(v17 + 8))(v15, v16);
  }

  sub_2696B6F40(v68);
  __swift_destroy_boxed_opaque_existential_0(v72);
  __swift_destroy_boxed_opaque_existential_0(v71);
  __swift_destroy_boxed_opaque_existential_0(v70);
  return v20;
}

uint64_t sub_2697F1D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_45()
{

  return sub_269854A44();
}

void OUTLINED_FUNCTION_5_39()
{

  sub_269814F0C(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_11_34()
{
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
}

uint64_t OUTLINED_FUNCTION_12_28()
{
}

void OUTLINED_FUNCTION_13_27()
{

  JUMPOUT(0x26D645A60);
}

void sub_2697F1EE0(uint64_t a1)
{
  MEMORY[0x26D645D60](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_27_14();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v6 = *(v3 - 1);
    v5 = *v3;

    v15 = OUTLINED_FUNCTION_25_18(v7, v8, v9, v10, v11, v12, v13, v14, v18, v19);
    sub_2697F4AE4(v15, v16, v17);

    v3 += 2;
  }

  __break(1u);
}

void sub_2697F1F88()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_29_14();
  v6 = sub_2698519E4();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_23();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_28();
  v11 = v0[2];
  sub_2697F8C6C(&unk_280326380, MEMORY[0x277CB9E20]);
  OUTLINED_FUNCTION_11_35();
  v12 = v0[2];
  if (v12)
  {
    OUTLINED_FUNCTION_7_43();
    do
    {
      v4(v1, v3, v6);
      sub_2697F4C2C(v2, v1);
      v13 = *v0;
      v14 = OUTLINED_FUNCTION_31_3();
      v15(v14);
      v3 += v5;
      --v12;
    }

    while (v12);
  }

  else
  {
    OUTLINED_FUNCTION_11_16();
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_2697F20E0()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_29_14();
  v6 = sub_269851A04();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_23();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_28();
  v11 = v0[2];
  sub_2697F8C6C(&unk_2803263A0, MEMORY[0x277CBA000]);
  OUTLINED_FUNCTION_11_35();
  v12 = v0[2];
  if (v12)
  {
    OUTLINED_FUNCTION_7_43();
    do
    {
      v4(v1, v3, v6);
      sub_2697F4EF4(v2, v1);
      v13 = *v0;
      v14 = OUTLINED_FUNCTION_31_3();
      v15(v14);
      v3 += v5;
      --v12;
    }

    while (v12);
  }

  else
  {
    OUTLINED_FUNCTION_11_16();
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2697F2238(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for INMediaItemType(0);
  sub_2697F8C6C(&qword_2803256E8, type metadata accessor for INMediaItemType);
  OUTLINED_FUNCTION_11_35();
  v8 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_2697F51BC(&v7, *(a1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_11_16();
  }

  return v2;
}

uint64_t sub_2697F22F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2696C9CB4();
  v8 = MEMORY[0x26D645D60](v2, &type metadata for DeviceSelectionInteractionType, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_2697F52AC(&v7, *(a1 + v5++));
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_11_16();
  }

  return v2;
}

void sub_2697F238C(uint64_t a1)
{
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_2696D1F08();
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_27_14();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v7 = *(v3 - 1);
    v6 = *v3;

    v16 = OUTLINED_FUNCTION_25_18(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    sub_2697F539C(v16, v17, v18);

    v3 += 2;
  }

  __break(1u);
}

uint64_t sub_2697F2440(uint64_t a1)
{
  result = MEMORY[0x26D645D60](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2697F4AE4(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2697F29B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, void *a22, uint64_t (*a23)(void))
{
  OUTLINED_FUNCTION_19_1();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v29 = v28;
  v278 = v30;
  v32 = v31;
  v34 = v33;
  v286 = v35;
  v295 = sub_269853904();
  v36 = OUTLINED_FUNCTION_8(v295);
  v287 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_23_3();
  v288 = v42;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_23_3();
  v294 = v44;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v45);
  v285 = &v260 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B30, &qword_26985C368);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  OUTLINED_FUNCTION_12();
  v292 = (v49 - v50);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v51);
  v289 = (&v260 - v52);
  v53 = sub_2698548D4();
  v54 = OUTLINED_FUNCTION_8(v53);
  v290 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_23_3();
  v293 = v60;
  OUTLINED_FUNCTION_22_0();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = &v260 - v63;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_15_28();
  v29(&v298);
  v65 = v298;
  if (!v298)
  {
    if (qword_2803226F0 != -1)
    {
      goto LABEL_117;
    }

    goto LABEL_16;
  }

  v276 = v32;
  v66 = *(v34 + 16);

  sub_2697F1EE0(v67);
  v69 = *(v68 + 16);

  if (v66 != v69)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35();
    }

    OUTLINED_FUNCTION_33_0(v53, qword_28033D940);
    v87 = v290;
    (*(v290 + 16))(v64);
    v88 = sub_2698548B4();
    v89 = sub_269854F24();
    if (OUTLINED_FUNCTION_17_2(v89))
    {
      v90 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v90);
      OUTLINED_FUNCTION_20_7(&dword_269684000, v91, v92, "SelfSerialization create has duplicate candidateAppBundleIds");
      OUTLINED_FUNCTION_18_7();
    }

    (*(v87 + 8))(v64, v53);
LABEL_24:

    goto LABEL_93;
  }

  v274 = v65;
  v275 = v53;
  v53 = 0;
  v261 = a23;
  v283 = a22;
  v291 = a21;
  v262 = v34;
  v70 = v34 + 40;
  v23 = MEMORY[0x277D84F90];
  v263 = MEMORY[0x277D84F90];
  v296 = v66;
  v284 = v34 + 40;
LABEL_4:
  v71 = (v70 + 16 * v53);
  for (i = v53; v66 != i; ++i)
  {
    if (i >= v66)
    {
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      OUTLINED_FUNCTION_2_35();
LABEL_16:
      OUTLINED_FUNCTION_33_0(v53, qword_28033D940);
      v80 = v290;
      OUTLINED_FUNCTION_36_1();
      v81(v23);
      v82 = sub_2698548B4();
      v83 = sub_269854F24();
      if (OUTLINED_FUNCTION_17_2(v83))
      {
        v84 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v84);
        OUTLINED_FUNCTION_20_7(&dword_269684000, v85, v86, "SelfSerialization create could not create independentSignals");
        OUTLINED_FUNCTION_18_7();
      }

      (*(v80 + 8))(v23, v53);
      goto LABEL_93;
    }

    v53 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_114;
    }

    v74 = *(v71 - 1);
    v73 = *v71;

    v27(&v298, v75);
    v76 = v298;
    if (v298)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = (v283)(0, v23[2] + 1, 1, v23);
      }

      v70 = v284;
      v78 = v23[2];
      v77 = v23[3];
      if (v78 >= v77 >> 1)
      {
        v23 = (v283)(v77 > 1, v78 + 1, 1, v23);
      }

      v23[2] = v78 + 1;
      v79 = &v23[3 * v78];
      v79[4] = v74;
      v79[5] = v73;
      v79[6] = v76;
      v66 = v296;
      goto LABEL_4;
    }

    v71 += 2;
    v66 = v296;
  }

  v93 = (v291)(v23);
  if (*(v93 + 16) != v66)
  {

    v232 = v290;
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_2_35();
    }

    v233 = v275;
    OUTLINED_FUNCTION_33_0(v275, qword_28033D940);
    OUTLINED_FUNCTION_36_1();
    v234 = v293;
    v235(v293);
    v236 = sub_2698548B4();
    v237 = sub_269854F24();
    v238 = OUTLINED_FUNCTION_17_2(v237);
    v239 = v274;
    if (v238)
    {
      v240 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v240);
      OUTLINED_FUNCTION_20_7(&dword_269684000, v241, v242, "SelfSerialization create could not create dependentSignals");
      OUTLINED_FUNCTION_18_7();
    }

    (*(v232 + 8))(v234, v233);
    goto LABEL_93;
  }

  v94 = v286 + 64;
  v95 = 1 << *(v286 + 32);
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  else
  {
    v96 = -1;
  }

  v65 = v96 & *(v286 + 64);
  v270 = (v95 + 63) >> 6;
  v293 = (v287 + 16);
  v291 = (v287 + 32);
  v283 = (v287 + 88);
  v282 = *MEMORY[0x277D60170];
  v272 = *MEMORY[0x277D60188];
  v267 = v290 + 16;
  v268 = v290 + 8;
  v280 = (v287 + 96);
  v281 = (v287 + 8);
  v271 = v93 + 64;
  v260 = v287 + 40;

  v97 = 0;
  v264 = MEMORY[0x277D84F98];
  v23 = v295;
  v98 = v292;
  v290 = v93;
  v284 = v94;
  while (1)
  {
LABEL_30:
    if (!v65)
    {
      while (1)
      {
        v99 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_112;
        }

        if (v99 >= v270)
        {
          v23 = &qword_26985C360;
          v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
          __swift_storeEnumTagSinglePayload(v98, 1, 1, v174);
          v65 = 0;
          goto LABEL_37;
        }

        v65 = *(v94 + 8 * v99);
        ++v97;
        if (v65)
        {
          v97 = v99;
          goto LABEL_36;
        }
      }
    }

    v99 = v97;
LABEL_36:
    v100 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v101 = v100 | (v99 << 6);
    v102 = v287;
    v103 = (*(v286 + 48) + 16 * v101);
    v104 = *v103;
    v94 = v103[1];
    v105 = v285;
    (*(v287 + 16))(v285, *(v286 + 56) + *(v287 + 72) * v101, v23);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
    v107 = v23;
    v108 = v106;
    v109 = *(v106 + 48);
    *v98 = v104;
    *(v98 + 1) = v94;
    (*(v102 + 32))(&v98[v109], v105, v107);
    v110 = v108;
    v23 = &qword_26985C360;
    __swift_storeEnumTagSinglePayload(v98, 0, 1, v110);

    v66 = v296;
LABEL_37:
    v111 = v289;
    sub_2697F8BFC(v98, v289);
    v112 = OUTLINED_FUNCTION_34_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v112, v113);
    v114 = OUTLINED_FUNCTION_11_16();
    if (__swift_getEnumTagSinglePayload(v114, 1, v94) == 1)
    {
      break;
    }

    v116 = *v111;
    v115 = v111[1];
    v53 = *v291;
    v117 = v111 + *(v94 + 48);
    v118 = v294;
    v119 = v295;
    (*v291)(v294, v117, v295);
    v120 = *v293;
    v121 = v288;
    (*v293)(v288, v118, v119);
    v122 = *v283;
    v123 = OUTLINED_FUNCTION_34_0();
    v125 = v124(v123);
    if (v125 == v282)
    {
      v126 = *v280;
      v127 = OUTLINED_FUNCTION_34_0();
      v128(v127);
      v129 = v276;
      if (*(v276 + 16))
      {
        v130 = *v121;
        v131 = OUTLINED_FUNCTION_8_3();
        v133 = sub_26973CEF8(v131, v132);
        if (v134)
        {
          v135 = v133;

          v136 = *(v129 + 56) + 16 * v135;
          v137 = *v136;
          v138 = *(v136 + 8);
          v297 = v130;
          v298 = v274;

          v137(&v298, &v297);

          v23 = v295;
          (*v281)(v294, v295);
          goto LABEL_42;
        }
      }

      v120(v269, v294, v295);
      v175 = v264;
      swift_isUniquelyReferenced_nonNull_native();
      v298 = v175;
      v176 = OUTLINED_FUNCTION_8_3();
      v178 = sub_26973CEF8(v176, v177);
      OUTLINED_FUNCTION_26_16(v178, v179);
      if (v182)
      {
        __break(1u);
LABEL_119:
        OUTLINED_FUNCTION_2_35();
LABEL_108:
        OUTLINED_FUNCTION_33_0(v97, qword_28033D940);
        OUTLINED_FUNCTION_7_4(&v299);
        v252 = v265;
        v253(v265);
        v254 = sub_2698548B4();
        v255 = sub_269854F24();
        if (OUTLINED_FUNCTION_17_2(v255))
        {
          v256 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_30_2(v256);
          OUTLINED_FUNCTION_20_7(&dword_269684000, v257, v258, "SelfSerialization error creating ordered dependent signals");
          OUTLINED_FUNCTION_18_7();
        }

        OUTLINED_FUNCTION_7_4(&a9);
        v259(v252, v97);
        goto LABEL_24;
      }

      v183 = v180;
      v184 = v181;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256A0, &qword_269866F70);
      if (OUTLINED_FUNCTION_34_11())
      {
        v185 = OUTLINED_FUNCTION_8_3();
        v187 = sub_26973CEF8(v185, v186);
        v23 = v295;
        v66 = v296;
        if ((v184 & 1) != (v188 & 1))
        {
          goto LABEL_123;
        }

        v183 = v187;
      }

      else
      {
        v23 = v295;
        v66 = v296;
      }

      v94 = v284;
      if (v184)
      {

        OUTLINED_FUNCTION_31_13();
        OUTLINED_FUNCTION_30_16();
        (*(v183 + 40))(v201 + v202 * v203, v269, v23);
        goto LABEL_85;
      }

      v204 = v298;
      OUTLINED_FUNCTION_28_14(v298 + 8 * (v183 >> 6));
      v206 = (v205 + 16 * v183);
      *v206 = v116;
      v206[1] = v115;
      v207 = *(v204 + 56);
      OUTLINED_FUNCTION_30_16();
      (v53)(v208 + v209 * v210, v269, v23);
      v211 = *(v183 + 8);
      v212 = v204;
      v213 = OUTLINED_FUNCTION_14_27();
      v214(v213);
      v215 = *(v204 + 16);
      v182 = __OFADD__(v215, 1);
      v216 = v215 + 1;
      if (v182)
      {
        goto LABEL_121;
      }

LABEL_87:
      v264 = v212;
      *(v212 + 16) = v216;
LABEL_42:
      v98 = v292;
      v94 = v284;
    }

    else
    {
      v139 = v278;
      if (v125 == v272)
      {
        v140 = *v280;
        v141 = OUTLINED_FUNCTION_34_0();
        v142(v141);
        v143 = *v121;
        if (*(v139 + 16))
        {
          v144 = OUTLINED_FUNCTION_8_3();
          v146 = sub_26973CEF8(v144, v145);
          if (v147)
          {
            v148 = v146;

            v149 = *(v139 + 56) + 16 * v148;
            v150 = *(v149 + 8);
            v273 = *v149;
            v151 = v290;
            v152 = 1 << *(v290 + 32);
            if (v152 < 64)
            {
              v153 = ~(-1 << v152);
            }

            else
            {
              v153 = -1;
            }

            v154 = v153 & *(v290 + 64);
            v155 = (v152 + 63) >> 6;
            v279 = v150;

            v156 = 0;
            v98 = v292;
            while (v154)
            {
              v157 = v154;
LABEL_57:
              v154 = (v157 - 1) & v157;
              if (*(v143 + 16))
              {
                v159 = __clz(__rbit64(v157)) | (v156 << 6);
                v160 = *(*(v151 + 56) + 8 * v159);
                v161 = (*(v151 + 48) + 16 * v159);
                v162 = *v161;
                v163 = v161[1];

                v164 = v160;
                v165 = sub_26973CEF8(v162, v163);
                v53 = v166;

                if (v53)
                {
                  v297 = *(*(v143 + 56) + 8 * v165);
                  v298 = v164;
                  v273(&v298, &v297);
                }

                v98 = v292;
                v151 = v290;
              }
            }

            v23 = v295;
            while (1)
            {
              v158 = v156 + 1;
              if (__OFADD__(v156, 1))
              {
                break;
              }

              if (v158 >= v155)
              {
                (*v281)(v294, v295);

                v66 = v296;
                v94 = v284;
                goto LABEL_30;
              }

              v157 = *(v271 + 8 * v158);
              ++v156;
              if (v157)
              {
                v156 = v158;
                goto LABEL_57;
              }
            }

            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }
        }

        v120(v266, v294, v119);
        v189 = v264;
        swift_isUniquelyReferenced_nonNull_native();
        v298 = v189;
        v190 = OUTLINED_FUNCTION_8_3();
        v192 = sub_26973CEF8(v190, v191);
        OUTLINED_FUNCTION_26_16(v192, v193);
        if (v182)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          sub_2698555F4();
          __break(1u);
          return;
        }

        v196 = v194;
        v183 = v195;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256A0, &qword_269866F70);
        if (OUTLINED_FUNCTION_34_11())
        {
          v197 = OUTLINED_FUNCTION_8_3();
          v199 = sub_26973CEF8(v197, v198);
          v23 = v295;
          v66 = v296;
          if ((v183 & 1) != (v200 & 1))
          {
            goto LABEL_123;
          }

          v196 = v199;
        }

        else
        {
          v23 = v295;
          v66 = v296;
        }

        v94 = v284;
        if ((v183 & 1) == 0)
        {
          v222 = v298;
          OUTLINED_FUNCTION_28_14(v298 + 8 * (v196 >> 6));
          v224 = (v223 + 16 * v196);
          *v224 = v116;
          v224[1] = v115;
          v225 = *(v222 + 56);
          OUTLINED_FUNCTION_30_16();
          (v53)(v226 + v227 * v196, v266, v23);
          v228 = *(v183 + 8);
          v212 = v222;
          v229 = OUTLINED_FUNCTION_14_27();
          v230(v229);
          v231 = *(v222 + 16);
          v182 = __OFADD__(v231, 1);
          v216 = v231 + 1;
          if (v182)
          {
            goto LABEL_122;
          }

          goto LABEL_87;
        }

        OUTLINED_FUNCTION_31_13();
        OUTLINED_FUNCTION_30_16();
        (*(v183 + 40))(v217 + v218 * v196, v266, v23);
LABEL_85:
        v219 = *(v183 + 8);
        v220 = OUTLINED_FUNCTION_14_27();
        v221(v220);
        v98 = v292;
      }

      else
      {

        if (qword_2803226F0 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_33_0(v275, qword_28033D940);
        OUTLINED_FUNCTION_7_4(&v299);
        v167(v277);
        v168 = sub_2698548B4();
        v169 = sub_269854F24();
        v170 = os_log_type_enabled(v168, v169);
        v98 = v292;
        if (v170)
        {
          v53 = OUTLINED_FUNCTION_16_2();
          *v53 = 0;
          _os_log_impl(&dword_269684000, v168, v169, "SelfSerialization unsupported SignalValue type", v53, 2u);
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_7_4(&a9);
        v171(v277, v275);
        v172 = *v281;
        v23 = v295;
        (*v281)(v294, v295);
        v173 = OUTLINED_FUNCTION_34_0();
        (v172)(v173);
        v94 = v284;
      }
    }
  }

  v243 = 0;
  v298 = MEMORY[0x277D84F90];
  v53 = v262 + 40;
  v97 = v275;
  v65 = v274;
LABEL_95:
  v244 = (v53 + 16 * v243);
  v245 = v290;
  while (v66 != v243)
  {
    if (v243 >= v66)
    {
      goto LABEL_115;
    }

    v23 = (v243 + 1);
    if (__OFADD__(v243, 1))
    {
      goto LABEL_116;
    }

    if (*(v245 + 16))
    {
      v246 = *(v244 - 1);
      v247 = *v244;

      v248 = sub_26973CEF8(v246, v247);
      if (v249)
      {
        v250 = *(*(v290 + 56) + 8 * v248);

        MEMORY[0x26D645B90](v251);
        if (*((v298 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v298 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        sub_269854CF4();
        v263 = v298;
        ++v243;
        goto LABEL_95;
      }

      v245 = v290;
    }

    ++v243;
    v244 += 2;
  }

  if (v66 != v261(v263))
  {

    if (qword_2803226F0 == -1)
    {
      goto LABEL_108;
    }

    goto LABEL_119;
  }

LABEL_93:
  OUTLINED_FUNCTION_21_0();
}

id sub_2697F427C@<X0>(Class *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(*a1) init];
  *a2 = result;
  return result;
}

uint64_t sub_2697F42B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256B0, &qword_269866F80);
  result = sub_269854A04();
  qword_28033D8C0 = result;
  return result;
}

id sub_2697F4304(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsDeviceLockStatus_];
}

id sub_2697F432C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setBucketedDeviceMotionState_];
  }

  return result;
}

id sub_2697F4348(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setIntentType_];
  }

  return result;
}

id sub_2697F4364(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingState_];
  }

  return result;
}

id sub_2697F4380(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setDeviceClass_];
  }

  return result;
}

id sub_2697F439C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setClientHourOfDay_];
  }

  return result;
}

uint64_t sub_2697F43E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256A8, &qword_269866F78);
  result = sub_269854A04();
  qword_28033D8C8 = result;
  return result;
}

id sub_2697F4438(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage1Day_];
  }

  return result;
}

id sub_2697F4454(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage7Day_];
  }

  return result;
}

id sub_2697F4470(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage14Day_];
  }

  return result;
}

id sub_2697F448C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount2Min_];
  }

  return result;
}

id sub_2697F44A8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount10Min_];
  }

  return result;
}

id sub_2697F44C4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount1Hr_];
  }

  return result;
}

id sub_2697F44E0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount6Hr_];
  }

  return result;
}

id sub_2697F44FC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount1Day_];
  }

  return result;
}

id sub_2697F4518(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount7Day_];
  }

  return result;
}

id sub_2697F4534(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount14Day_];
  }

  return result;
}

id sub_2697F4550(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount28Day_];
  }

  return result;
}

id sub_2697F456C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityRecency_];
  }

  return result;
}

id sub_2697F4588(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount2Min_];
  }

  return result;
}

id sub_2697F45A4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount10Min_];
  }

  return result;
}

id sub_2697F45C0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount1Hr_];
  }

  return result;
}

id sub_2697F45DC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount6Hr_];
  }

  return result;
}

id sub_2697F45F8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount1Day_];
  }

  return result;
}

id sub_2697F4614(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount7Day_];
  }

  return result;
}

id sub_2697F4630(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialSiriCount28Day_];
  }

  return result;
}

id sub_2697F464C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount2Min_];
  }

  return result;
}

id sub_2697F4668(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount10Min_];
  }

  return result;
}

id sub_2697F4684(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount1Hr_];
  }

  return result;
}

id sub_2697F46A0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount6Hr_];
  }

  return result;
}

id sub_2697F46BC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount1Day_];
  }

  return result;
}

id sub_2697F46D8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount7Day_];
  }

  return result;
}

id sub_2697F46F4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount28Day_];
  }

  return result;
}

id sub_2697F4710(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setMediaUserContextNumberOfLibraryItems_];
  }

  return result;
}

id sub_2697F472C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setMediaUserContextSubscriptionStatus_];
  }

  return result;
}

id sub_2697F4748(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsLastForegroundApp_];
}

id sub_2697F4770(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsLastNowPlayingApp_];
}

id sub_2697F4798(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount2Min_];
  }

  return result;
}

id sub_2697F47B4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount10Min_];
  }

  return result;
}

id sub_2697F47D0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount1Hr_];
  }

  return result;
}

id sub_2697F47EC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount6Hr_];
  }

  return result;
}

id sub_2697F4808(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount1Day_];
  }

  return result;
}

id sub_2697F4824(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount7Day_];
  }

  return result;
}

id sub_2697F4840(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount28Day_];
  }

  return result;
}

id sub_2697F485C(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsNowPlayingApp_];
}

id sub_2697F4884(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsSelectedApp_];
}

id sub_2697F48AC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastForegroundAppStartInSec_];
  }

  return result;
}

id sub_2697F48C8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastForegroundAppEndInSec_];
  }

  return result;
}

id sub_2697F48E4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastNowPlayingAppStartInSec_];
  }

  return result;
}

id sub_2697F4900(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastNowPlayingAppEndInSec_];
  }

  return result;
}

id sub_2697F491C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setSpotlightRelativeCount_];
  }

  return result;
}

id sub_2697F4948(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsForegroundApp_];
}

uint64_t sub_2697F4970()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325710, &qword_269866FB8);
  result = sub_269854A04();
  qword_28033D8D0 = result;
  return result;
}

id sub_2697F49C0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setDisambiguationAppsOrder_];
  }

  return result;
}

id sub_2697F49DC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setDisambiguationReasons_];
  }

  return result;
}

id sub_2697F4A08(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNumDisambiguationApps_];
  }

  return result;
}

uint64_t sub_2697F4A34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325708, &qword_269866FB0);
  result = sub_269854A04();
  qword_28033D8D8 = result;
  return result;
}

id sub_2697F4A84(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsDisambiguatedApp_];
}

id sub_2697F4AAC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setModelAppConfidence_];
  }

  return result;
}

id sub_2697F4AC8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setDisambiguationAppOrdinal_];
  }

  return result;
}

BOOL sub_2697F4AE4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_269855674();
  sub_269854B34();
  v9 = sub_2698556C4();
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
    if (v14 || (sub_269855584() & 1) != 0)
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
  v22 = *v3;

  v19 = OUTLINED_FUNCTION_31_3();
  sub_2697F6540(v19, v20, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_2697F4C2C(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_2698519E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_2697F8C6C(&unk_280326380, MEMORY[0x277CB9E20]);
  v30 = a2;
  v11 = sub_269854A24();
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
      sub_2697F66A8(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_2697F8C6C(&qword_2803256B8, MEMORY[0x277CB9E20]);
    v17 = sub_269854A54();
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

BOOL sub_2697F4EF4(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_269851A04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_2697F8C6C(&unk_2803263A0, MEMORY[0x277CBA000]);
  v30 = a2;
  v11 = sub_269854A24();
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
      sub_2697F6958(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_2697F8C6C(&qword_2803256C8, MEMORY[0x277CBA000]);
    v17 = sub_269854A54();
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

BOOL sub_2697F51BC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_269855674();
  MEMORY[0x26D646580](a2);
  v7 = sub_2698556C4();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_2697F6C08(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_2697F52AC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_269855674();
  MEMORY[0x26D646580](a2);
  v7 = sub_2698556C4();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_2697F6D40(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_2697F539C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_269855674();
  sub_269855694();
  if (a3)
  {
    sub_269854B34();
  }

  v9 = sub_2698556C4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_15:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2697F6E78(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_14:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_269855584() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_2697F5524(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F70, &qword_269858E00);
  result = sub_2698551D4();
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
      sub_26980F698(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_269855674();
    sub_269854B34();
    result = sub_2698556C4();
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