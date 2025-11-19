uint64_t sub_1B8ACA874(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA971A0, &qword_1B8AFAEF8);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA971A8, &qword_1B8AFAF00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA971B0, &qword_1B8AFAF08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8ACEDC0();
  v18 = v25;
  sub_1B8AF1058();
  if (v18)
  {
    v26 = 0;
    sub_1B8ACEE68();
    sub_1B8AF0C88();
    sub_1B8AF0C98();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v27 = 1;
    sub_1B8ACEE14();
    v20 = v21;
    sub_1B8AF0C88();
    (*(v22 + 8))(v20, v23);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1B8ACAB6C()
{
  if (*v0)
  {
    result = 0x6961466573726170;
  }

  else
  {
    result = 0x6C69614664616F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B8ACABB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C69614664616F6CLL && a2 == 0xEA00000000006465;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6961466573726170 && a2 == 0xEB0000000064656CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B8ACAC9C(uint64_t a1)
{
  v2 = sub_1B8ACEDC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ACACD8(uint64_t a1)
{
  v2 = sub_1B8ACEDC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ACAD14(uint64_t a1)
{
  v2 = sub_1B8ACEE68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ACAD50(uint64_t a1)
{
  v2 = sub_1B8ACEE68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ACAD8C(uint64_t a1)
{
  v2 = sub_1B8ACEE14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ACADC8(uint64_t a1)
{
  v2 = sub_1B8ACEE14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ACAE04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B8ACE8CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1B8ACAE4C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v4 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = sub_1B8AD7434(v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v8;
}

uint64_t sub_1B8ACAF10(uint64_t a1)
{
  v2 = sub_1B8ACE614();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8ACAF4C(uint64_t a1)
{
  v2 = sub_1B8ACE614();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t PromptRewriter.__allocating_init(modelManagerServicesUseCaseID:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  PromptRewriter.init(modelManagerServicesUseCaseID:onBehalfOf:)(a1, a2, a3, a4 & 1);
  return v11;
}

char *PromptRewriter.init(modelManagerServicesUseCaseID:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v117 = a4;
  v98 = a3;
  v111 = a2;
  v97 = a1;
  v96 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v93 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v93 - v10;
  v11 = sub_1B8AF03A8();
  v108 = *(v11 - 8);
  v109 = v11;
  v12 = *(v108 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v95 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v93 - v15;
  v107 = sub_1B8AF02F8();
  v16 = *(v107 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v107);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v93 - v21;
  v23 = sub_1B8AF0328();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_logger;
  sub_1B8AF0398();
  v28 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v23, qword_1EDB75B50);
  v114 = v24;
  v30 = *(v24 + 16);
  v100 = v29;
  v30(&v5[v28]);
  v94 = v28;
  v112 = v23;
  v99 = v30;
  (v30)(v27, &v5[v28], v23);
  sub_1B8AF02E8();
  v104 = v27;
  v31 = sub_1B8AF0318();
  v32 = sub_1B8AF0908();
  v33 = sub_1B8AF0928();
  v110 = v5;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v31, v32, v35, "PromptRewriter.init", "", v34, 2u);
    v36 = v34;
    v5 = v110;
    MEMORY[0x1B8CC7D70](v36, -1, -1);
  }

  v37 = v107;
  (*(v16 + 16))(v20, v22, v107);
  v38 = sub_1B8AF0368();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v103 = sub_1B8AF0358();
  (*(v16 + 8))(v22, v37);
  v41 = v108;
  v42 = v109;
  v43 = v105;
  v106 = *(v108 + 16);
  v107 = v108 + 16;
  v106(v105, &v5[v113], v109);
  v44 = v111;

  v45 = sub_1B8AF0388();
  v46 = sub_1B8AF08E8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v115[0] = v48;
    *v47 = 136446466;
    *(v47 + 4) = sub_1B8A9E870(v97, v44, v115);
    *(v47 + 12) = 2048;
    v49 = v98;
    if (v117)
    {
      v49 = -1;
    }

    *(v47 + 14) = v49;
    _os_log_impl(&dword_1B8A3C000, v45, v46, "Begin PromptRewriter init useCase=%{public}s  pid=%ld", v47, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x1B8CC7D70](v48, -1, -1);
    MEMORY[0x1B8CC7D70](v47, -1, -1);
  }

  v105 = *(v41 + 8);
  (v105)(v43, v42);
  v50 = sub_1B8AEFCC8();
  v51 = v102;
  (*(*(v50 - 8) + 56))(v102, 1, 1, v50);
  v52 = type metadata accessor for AFMModel();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v55 = swift_allocObject();
  v56 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v42, qword_1EDB75B38);
  v106((v55 + v56), v57, v42);
  v58 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  v99(v55 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter, v100, v112);
  v118 = 7;
  v59 = v101;
  sub_1B8A93BF0(v115);
  if (v59)
  {

    sub_1B8A897C4(v51, &qword_1EBA96528, &unk_1B8AF64B0);
    (v105)(v55 + v56, v42);
    v67 = v42;
    v68 = *(v114 + 8);
    v69 = v112;
    v114 += 8;
    v68(v55 + v58, v112);
    v70 = *(*v55 + 48);
    v71 = *(*v55 + 52);
    swift_deallocPartialClassInstance();
    v72 = v110;
    v73 = v95;
    v106(v95, &v110[v113], v67);
    v74 = v59;
    v75 = sub_1B8AF0388();
    v76 = sub_1B8AF08D8();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      v79 = v59;
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 4) = v80;
      *v78 = v80;
      _os_log_impl(&dword_1B8A3C000, v75, v76, "End PromptRewriter init with error: %@", v77, 0xCu);
      sub_1B8A897C4(v78, &qword_1EBA96B08, &qword_1B8AF94B0);
      v81 = v78;
      v72 = v110;
      MEMORY[0x1B8CC7D70](v81, -1, -1);
      v82 = v77;
      v69 = v112;
      MEMORY[0x1B8CC7D70](v82, -1, -1);
    }

    v83 = v109;
    v84 = v105;
    (v105)(v73, v109);
    swift_willThrow();
    v85 = v104;
    sub_1B8ACC85C(v104, "PromptRewriter.init", 19, 2);

    v68(v85, v69);
    v84(&v72[v113], v83);
    v68(&v72[v94], v69);
    v86 = *(*v72 + 48);
    v87 = *(*v72 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v60 = v55 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v61 = v115[1];
    *v60 = v115[0];
    *(v60 + 16) = v61;
    *(v60 + 32) = v116;
    LOBYTE(v115[0]) = 7;
    v62 = v93;
    sub_1B8AA2E1C(v51, v93);
    v63 = type metadata accessor for AFMModelCore();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    v66 = sub_1B8A8AB94(v115, v97, v111, v98, v117 & 1, v62);
    sub_1B8A897C4(v51, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v55 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v66;
    v72 = v110;
    *&v110[OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_model] = v55;
    v89 = sub_1B8AF0388();
    v90 = sub_1B8AF08E8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_1B8A3C000, v89, v90, "End PromptRewriter init", v91, 2u);
      MEMORY[0x1B8CC7D70](v91, -1, -1);
    }

    v92 = v104;
    sub_1B8ACC85C(v104, "PromptRewriter.init", 19, 2);

    (*(v114 + 8))(v92, v112);
  }

  return v72;
}

uint64_t PromptRewriter.__allocating_init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  PromptRewriter.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(a1, a2, a3, a4, a5 & 1);
  return v13;
}

char *PromptRewriter.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v135 = a5;
  v110 = a4;
  v131 = a3;
  v124 = a2;
  v109 = a1;
  v108 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v105 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v105 - v11;
  v12 = sub_1B8AEFCC8();
  v129 = *(v12 - 8);
  v130 = v12;
  v13 = v129[8];
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1B8AF03A8();
  v125 = *(v132 - 8);
  v15 = *(v125 + 64);
  v16 = MEMORY[0x1EEE9AC00](v132);
  v107 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v121 = &v105 - v18;
  v123 = sub_1B8AF02F8();
  v19 = *(v123 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v123);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v105 - v24;
  v26 = sub_1B8AF0328();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_logger;
  sub_1B8AF0398();
  v31 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v26, qword_1EDB75B50);
  v127 = v27;
  v33 = *(v27 + 16);
  v113 = v32;
  v33(&v6[v31]);
  v106 = v31;
  v128 = v26;
  v114 = v27 + 16;
  v112 = v33;
  (v33)(v30, &v6[v31], v26);
  sub_1B8AF02E8();
  v119 = v30;
  v34 = sub_1B8AF0318();
  v35 = sub_1B8AF0908();
  v36 = sub_1B8AF0928();
  v120 = v6;
  if (v36)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v34, v35, v38, "PromptRewriter.init", "", v37, 2u);
    v39 = v37;
    v6 = v120;
    MEMORY[0x1B8CC7D70](v39, -1, -1);
  }

  v40 = v123;
  (*(v19 + 16))(v23, v25, v123);
  v41 = sub_1B8AF0368();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v117 = sub_1B8AF0358();
  (*(v19 + 8))(v25, v40);
  v44 = v125;
  v45 = v121;
  v122 = *(v125 + 16);
  v123 = v125 + 16;
  v122(v121, &v6[v126], v132);
  v46 = v129;
  v47 = v130;
  v48 = v115;
  v111 = v129[2];
  v111(v115, v131, v130);
  v49 = v124;

  v50 = v49;
  v51 = sub_1B8AF0388();
  v52 = sub_1B8AF08E8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v133[0] = v54;
    *v53 = 136446722;
    *(v53 + 4) = sub_1B8A9E870(v109, v50, v133);
    *(v53 + 12) = 2048;
    v55 = v110;
    if (v135)
    {
      v55 = -1;
    }

    *(v53 + 14) = v55;
    *(v53 + 22) = 2080;
    sub_1B8AAA774();
    v56 = sub_1B8AF0D28();
    v58 = v57;
    v115 = v129[1];
    (v115)(v48, v130);
    v59 = sub_1B8A9E870(v56, v58, v133);
    v47 = v130;

    *(v53 + 24) = v59;
    _os_log_impl(&dword_1B8A3C000, v51, v52, "Begin PromptRewriter init useCase=%{public}s  pid=%ld loc=%s", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC7D70](v54, -1, -1);
    v60 = v53;
    v46 = v129;
    MEMORY[0x1B8CC7D70](v60, -1, -1);

    v61 = v125;
  }

  else
  {

    v115 = v46[1];
    (v115)(v48, v47);
    v61 = v44;
  }

  v62 = v132;
  v121 = *(v61 + 8);
  (v121)(v45, v132);
  v63 = v118;
  v111(v118, v131, v47);
  (v46[7])(v63, 0, 1, v47);
  v64 = type metadata accessor for AFMModel();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  v67 = swift_allocObject();
  v68 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v69 = __swift_project_value_buffer(v62, qword_1EDB75B38);
  v122((v67 + v68), v69, v62);
  v70 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  v71 = v128;
  v112(v67 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter, v113, v128);
  v136 = 7;
  v72 = v116;
  sub_1B8A93BF0(v133);
  if (v72)
  {

    sub_1B8A897C4(v63, &qword_1EBA96528, &unk_1B8AF64B0);
    v80 = v132;
    (v121)(v67 + v68, v132);
    v81 = *(v127 + 8);
    v127 += 8;
    v81(v67 + v70, v128);
    v82 = *(*v67 + 48);
    v83 = *(*v67 + 52);
    swift_deallocPartialClassInstance();
    v84 = v120;
    v85 = v107;
    v122(v107, &v120[v126], v80);
    v86 = v72;
    v87 = sub_1B8AF0388();
    v88 = sub_1B8AF08D8();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      v91 = v72;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 4) = v92;
      *v90 = v92;
      _os_log_impl(&dword_1B8A3C000, v87, v88, "End PromptRewriter init with error: %@", v89, 0xCu);
      sub_1B8A897C4(v90, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v90, -1, -1);
      MEMORY[0x1B8CC7D70](v89, -1, -1);
    }

    v93 = v132;
    v94 = v121;
    (v121)(v85, v132);
    swift_willThrow();
    v95 = v119;
    sub_1B8ACC85C(v119, "PromptRewriter.init", 19, 2);

    (v115)(v131, v130);
    v96 = v95;
    v97 = v128;
    v81(v96, v128);
    v94(&v84[v126], v93);
    v81(&v84[v106], v97);
    v98 = *(*v84 + 48);
    v99 = *(*v84 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v73 = v67 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v74 = v133[1];
    *v73 = v133[0];
    *(v73 + 16) = v74;
    *(v73 + 32) = v134;
    LOBYTE(v133[0]) = 7;
    v75 = v105;
    sub_1B8AA2E1C(v63, v105);
    v76 = type metadata accessor for AFMModelCore();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();
    v79 = sub_1B8A8AB94(v133, v109, v124, v110, v135 & 1, v75);
    sub_1B8A897C4(v63, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v67 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v79;
    v84 = v120;
    *&v120[OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_model] = v67;
    v101 = sub_1B8AF0388();
    v102 = sub_1B8AF08E8();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_1B8A3C000, v101, v102, "End PromptRewriter init", v103, 2u);
      MEMORY[0x1B8CC7D70](v103, -1, -1);
    }

    v104 = v119;
    sub_1B8ACC85C(v119, "PromptRewriter.init", 19, 2);

    (v115)(v131, v130);
    (*(v127 + 8))(v104, v71);
  }

  return v84;
}

uint64_t sub_1B8ACC85C(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t PromptRewriter.rewrite(text:maxNumberOfResults:randomSeed:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 32) = 0;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B8ACCBE8;

  return PromptRewriter.rewriteInternal(promptStyle:text:maxNumberOfResults:randomSeed:temperature:)((v6 + 32), a1, a2, a3, a4 & 1, a5, a6 & 1, 0);
}

uint64_t sub_1B8ACCBE8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8ACF200, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t PromptRewriter.rewrite(promptStyle:text:maxNumberOfResults:randomSeed:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v7 + 32) = *a1;
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1B8ACCE18;

  return PromptRewriter.rewriteInternal(promptStyle:text:maxNumberOfResults:randomSeed:temperature:)((v7 + 32), a2, a3, a4, a5 & 1, a6, a7 & 1, 0);
}

uint64_t sub_1B8ACCE18(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8ACCF54, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

SensitiveContentAnalysisML::PromptRewriter::PromptStyle_optional __swiftcall PromptRewriter.PromptStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8AF0BE8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PromptRewriter.PromptStyle.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x696A6F6D6E6567;
  v3 = 0x5064656375646572;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x79746569726176;
  if (v1 != 1)
  {
    v4 = 0x616C506567616D69;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B8ACD0BC()
{
  *v0;
  *v0;
  *v0;
  sub_1B8AF05F8();
}

void sub_1B8ACD1D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x696A6F6D6E6567;
  v5 = 0xEA00000000005248;
  v6 = 0x5064656375646572;
  v7 = 0x80000001B8B05680;
  if (v2 != 4)
  {
    v7 = 0x80000001B8B056A0;
  }

  if (v2 != 3)
  {
    v6 = 0xD000000000000013;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x79746569726176;
  if (v2 != 1)
  {
    v9 = 0x616C506567616D69;
    v8 = 0xEF646E756F726779;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t PromptRewriter.rewriteInternal(promptStyle:text:maxNumberOfResults:randomSeed:temperature:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 139) = v16;
  *(v9 + 48) = a8;
  *(v9 + 56) = v8;
  *(v9 + 138) = a7;
  *(v9 + 137) = a5;
  *(v9 + 32) = a4;
  *(v9 + 40) = a6;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11 = sub_1B8AF02F8();
  *(v9 + 64) = v11;
  v12 = *(v11 - 8);
  *(v9 + 72) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 80) = swift_task_alloc();
  *(v9 + 88) = swift_task_alloc();
  *(v9 + 140) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B8ACD464, 0, 0);
}

uint64_t sub_1B8ACD464()
{
  v46 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  *(v0 + 96) = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_logger;

  v3 = sub_1B8AF0388();
  v4 = sub_1B8AF08E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 140);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45 = v7;
    *v6 = 136446467;
    v8 = 0xE700000000000000;
    v9 = 0x696A6F6D6E6567;
    v10 = 0xEA00000000005248;
    v11 = 0x5064656375646572;
    v12 = 0x80000001B8B05680;
    if (v5 != 4)
    {
      v12 = 0x80000001B8B056A0;
    }

    if (v5 != 3)
    {
      v11 = 0xD000000000000013;
      v10 = v12;
    }

    v13 = 0xE700000000000000;
    v14 = 0x79746569726176;
    if (v5 != 1)
    {
      v14 = 0x616C506567616D69;
      v13 = 0xEF646E756F726779;
    }

    if (v5)
    {
      v9 = v14;
      v8 = v13;
    }

    if (v5 <= 2)
    {
      v15 = v9;
    }

    else
    {
      v15 = v11;
    }

    if (v5 <= 2)
    {
      v16 = v8;
    }

    else
    {
      v16 = v10;
    }

    v18 = *(v0 + 16);
    v17 = *(v0 + 24);
    v19 = sub_1B8A9E870(v15, v16, &v45);

    *(v6 + 4) = v19;
    *(v6 + 12) = 2085;
    *(v6 + 14) = sub_1B8A9E870(v18, v17, &v45);
    _os_log_impl(&dword_1B8A3C000, v3, v4, "Begin PromptRewriter rewrite promptStyle=%{public}s: %{sensitive}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC7D70](v7, -1, -1);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v20 = *(v0 + 88);
  v21 = *(v0 + 56);
  sub_1B8AF02E8();
  v22 = sub_1B8AF0318();
  v23 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v24 = *(v0 + 88);
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v22, v23, v26, "PromptRewriter.rewrite", "", v25, 2u);
    MEMORY[0x1B8CC7D70](v25, -1, -1);
  }

  v27 = *(v0 + 140);
  v28 = *(v0 + 80);
  v29 = *(v0 + 88);
  v30 = *(v0 + 64);
  v31 = *(v0 + 72);
  v32 = *(v0 + 56);
  v33 = *(v0 + 139);
  v34 = *(v0 + 48);
  v35 = *(v0 + 138);

  (*(v31 + 16))(v28, v29, v30);
  v36 = sub_1B8AF0368();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_1B8AF0358();
  (*(v31 + 8))(v29, v30);
  v39 = *(v32 + OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_model);
  if (v33)
  {
    v34 = 1.0;
  }

  *(v0 + 136) = v27;
  v40 = swift_task_alloc();
  *(v0 + 112) = v40;
  *v40 = v0;
  v40[1] = sub_1B8ACD844;
  v41 = *(v0 + 40);
  v42 = *(v0 + 16);
  v43 = *(v0 + 24);

  return sub_1B8A83B98((v0 + 136), v42, v43, v41, v35 & 1, v34);
}

uint64_t sub_1B8ACD844(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_1B8ACDB48;
  }

  else
  {
    v5 = sub_1B8ACD958;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1B8ACD958()
{
  v21 = v0;
  v1 = *(v0 + 120);
  if ((*(v0 + 137) & 1) != 0 || (v2 = *(v0 + 32), *(v1 + 16) <= v2))
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v7 = *(v0 + 120);

    v8 = sub_1B8AF0388();
    v9 = sub_1B8AF08E8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 120);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136642819;
      v13 = MEMORY[0x1B8CC6010](v10, MEMORY[0x1E69E6158]);
      v15 = sub_1B8A9E870(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1B8A3C000, v8, v9, "End PromptRewriter rewrite: %{sensitive}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B8CC7D70](v12, -1, -1);
      MEMORY[0x1B8CC7D70](v11, -1, -1);
    }

    v4 = *(v0 + 120);
  }

  else
  {
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    sub_1B8ACE130(*(v0 + 120), v1 + 32, 0, (2 * v2) | 1);
    v4 = v3;
  }

  v16 = *(v0 + 104);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  sub_1B8ACDCEC(*(v0 + 56), "PromptRewriter.rewrite", 22, 2);

  v19 = *(v0 + 8);

  v19(v4);
}

uint64_t sub_1B8ACDB48()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v1;
  v5 = sub_1B8AF0388();
  v6 = sub_1B8AF08D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B8A3C000, v5, v6, "End PromptRewriter rewrite with error: %@", v8, 0xCu);
    sub_1B8A897C4(v9, &qword_1EBA96B08, &qword_1B8AF94B0);
    MEMORY[0x1B8CC7D70](v9, -1, -1);
    MEMORY[0x1B8CC7D70](v8, -1, -1);
  }

  v12 = v0[16];
  v13 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[7];

  swift_willThrow();
  sub_1B8ACDCEC(v16, "PromptRewriter.rewrite", 22, 2);

  v17 = v0[1];
  v18 = v0[16];

  return v17();
}

uint64_t sub_1B8ACDCEC(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t PromptRewriter.deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_model);

  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_signposter;
  v5 = sub_1B8AF0328();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PromptRewriter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_model);

  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_signposter;
  v5 = sub_1B8AF0328();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

void sub_1B8ACE130(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1B8ACE20C()
{
  result = qword_1EBA97128;
  if (!qword_1EBA97128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97128);
  }

  return result;
}

unint64_t sub_1B8ACE264()
{
  result = qword_1EBA97130;
  if (!qword_1EBA97130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA97138, &qword_1B8AFAC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97130);
  }

  return result;
}

uint64_t type metadata accessor for PromptRewriter()
{
  result = qword_1EDB752C8;
  if (!qword_1EDB752C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8ACE31C()
{
  result = sub_1B8AF03A8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B8AF0328();
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

uint64_t getEnumTagSinglePayload for PromptRewriter.PromptStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptRewriter.PromptStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8ACE5C4(void *a1)
{
  a1[1] = sub_1B8ACE614();
  a1[2] = sub_1B8ACE668();
  a1[3] = sub_1B8ACE6BC();
  a1[4] = sub_1B8ACE710();
  a1[5] = sub_1B8ACE764();
  result = sub_1B8ACE7B8();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8ACE614()
{
  result = qword_1EBA97140;
  if (!qword_1EBA97140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97140);
  }

  return result;
}

unint64_t sub_1B8ACE668()
{
  result = qword_1EBA97148;
  if (!qword_1EBA97148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97148);
  }

  return result;
}

unint64_t sub_1B8ACE6BC()
{
  result = qword_1EBA97150;
  if (!qword_1EBA97150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97150);
  }

  return result;
}

unint64_t sub_1B8ACE710()
{
  result = qword_1EBA97158;
  if (!qword_1EBA97158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97158);
  }

  return result;
}

unint64_t sub_1B8ACE764()
{
  result = qword_1EBA97160;
  if (!qword_1EBA97160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97160);
  }

  return result;
}

unint64_t sub_1B8ACE7B8()
{
  result = qword_1EBA97168;
  if (!qword_1EBA97168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97168);
  }

  return result;
}

void sub_1B8ACE80C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA971B8, &unk_1B8AFAF10);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1B8ACE8CC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97170, &qword_1B8AFAED8);
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97178, &qword_1B8AFAEE0);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97180, &unk_1B8AFAEE8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v37 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B8ACEDC0();
  v19 = v36;
  sub_1B8AF1048();
  if (!v19)
  {
    v36 = v12;
    v20 = sub_1B8AF0C78();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = sub_1B8AE4FD0();
    v23 = v11;
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v25 = v11;
      v26 = sub_1B8AF0B08();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190) + 48);
      *v28 = &type metadata for PromptRewriter.Error;
      v18 = v15;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v36 + 8))(v15, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v42 = 1;
      sub_1B8ACEE14();
      sub_1B8AF0BF8();
      v24 = v36;
      (*(v34 + 8))(v6, v33);
      (*(v24 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 0;
    }

    else
    {
      v42 = 0;
      sub_1B8ACEE68();
      sub_1B8AF0BF8();
      v31 = v36;
      v18 = sub_1B8AF0C18();
      (*(v35 + 8))(v10, v7);
      (*(v31 + 8))(v15, v23);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v37);
  return v18;
}

unint64_t sub_1B8ACEDC0()
{
  result = qword_1EBA97188;
  if (!qword_1EBA97188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97188);
  }

  return result;
}

unint64_t sub_1B8ACEE14()
{
  result = qword_1EBA97190;
  if (!qword_1EBA97190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97190);
  }

  return result;
}

unint64_t sub_1B8ACEE68()
{
  result = qword_1EBA97198;
  if (!qword_1EBA97198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97198);
  }

  return result;
}

unint64_t sub_1B8ACEEBC()
{
  result = qword_1EBA971C0;
  if (!qword_1EBA971C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971C0);
  }

  return result;
}

unint64_t sub_1B8ACEF44()
{
  result = qword_1EBA971C8;
  if (!qword_1EBA971C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971C8);
  }

  return result;
}

unint64_t sub_1B8ACEF9C()
{
  result = qword_1EBA971D0;
  if (!qword_1EBA971D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971D0);
  }

  return result;
}

unint64_t sub_1B8ACEFF4()
{
  result = qword_1EBA971D8;
  if (!qword_1EBA971D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971D8);
  }

  return result;
}

unint64_t sub_1B8ACF04C()
{
  result = qword_1EBA971E0;
  if (!qword_1EBA971E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971E0);
  }

  return result;
}

unint64_t sub_1B8ACF0A4()
{
  result = qword_1EBA971E8;
  if (!qword_1EBA971E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971E8);
  }

  return result;
}

unint64_t sub_1B8ACF0FC()
{
  result = qword_1EBA971F0;
  if (!qword_1EBA971F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971F0);
  }

  return result;
}

unint64_t sub_1B8ACF154()
{
  result = qword_1EBA971F8;
  if (!qword_1EBA971F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971F8);
  }

  return result;
}

unint64_t sub_1B8ACF1AC()
{
  result = qword_1EBA97200;
  if (!qword_1EBA97200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97200);
  }

  return result;
}

uint64_t static SCMLNormalizer.normalizeText(_:lite:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B8ACFCBC(a1, a2);
  }

  else
  {
    return sub_1B8AD0090(a1, a2);
  }
}

uint64_t static SCMLNormalizer.trimmedText(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8AEFB28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v18 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  v18[0] = a1;
  v18[1] = a2;
  sub_1B8AEFB08();
  sub_1B8AEFAF8();
  sub_1B8AEFB18();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v12, v4);
  sub_1B8A3F920();
  v16 = sub_1B8AF09D8();
  v15(v14, v4);
  return v16;
}

id sub_1B8ACF60C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1B8ADA8C8(0xD000000000000019, 0x80000001B8B06CE0, 0);
  qword_1EDB75710 = result;
  return result;
}

uint64_t sub_1B8ACF698()
{
  v1 = sub_1B8AE6E68(MEMORY[0x1E69E7CC0]);
  result = sub_1B8ACF9CC(&v1, 0x1000000000000012, 0x80000001B8B06D30, 0x222227272D2DLL, 0xE600000000000000);
  off_1EDB75740 = v1;
  return result;
}

uint64_t sub_1B8ACF700()
{
  v1 = sub_1B8AE6E68(MEMORY[0x1E69E7CC0]);
  sub_1B8ACF9CC(&v1, 43975, 0xA200000000000000, 113, 0xE100000000000000);
  result = sub_1B8ACF9CC(&v1, 0x1000000000000027, 0x80000001B8B06CB0, 0x6F6D696865646361, 0xED00007876757472);
  off_1EDB75730 = v1;
  return result;
}

void *sub_1B8ACF790()
{
  result = sub_1B8ACF7B0();
  off_1EDB75720 = result;
  return result;
}

void *sub_1B8ACF7B0()
{
  v1 = sub_1B8AE6E68(MEMORY[0x1E69E7CC0]);
  sub_1B8ACF9CC(&v1, 0x1000000000000047, 0x80000001B8B06A80, 0xD00000000000001CLL, 0x80000001B8B06AD0);
  sub_1B8ACF9CC(&v1, 0x1000000000000086, 0x80000001B8B06AF0, 0xD000000000000024, 0x80000001B8B06B80);
  sub_1B8ACF9CC(&v1, 0x1000000000000068, 0x80000001B8B06BB0, 0xD00000000000001ALL, 0x80000001B8B06C20);
  sub_1B8ACF9CC(&v1, 0x1000000000000068, 0x80000001B8B06C40, 0xD00000000000001ALL, 0x80000001B8B06C20);
  sub_1B8ACF9CC(&v1, 0x91E1AB91E1AD91E1, 0xAC000000AF91E1B2, 1684173168, 0xE400000000000000);
  return v1;
}

id SCMLNormalizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMLNormalizer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLNormalizer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SCMLNormalizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLNormalizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8ACF9CC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1B8AF0728();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1B8A3F974(v10, 0);

    v50 = v12;
    v13 = sub_1B8A3F9FC(&v51, v12 + 4, v11, a2, a3);

    if (v13 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v14 = sub_1B8AF0728();
  if (!v14)
  {
LABEL_8:
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v15 = v14;
  v16 = sub_1B8A3F974(v14, 0);

  v49 = v16;
  v17 = sub_1B8A3F9FC(&v51, v16 + 4, v15, a4, a5);

  if (v17 != v15)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v48 = v50[2];
  if (!v48)
  {
LABEL_26:
  }

  v18 = 0;
  v19 = v50 + 5;
  v20 = v49 + 5;
  v47 = a1;
  while (v18 < v50[2])
  {
    v25 = v49[2];
    if (v18 == v25)
    {
      goto LABEL_26;
    }

    if (v18 >= v25)
    {
      goto LABEL_30;
    }

    v27 = *(v19 - 1);
    v26 = *v19;
    v28 = *(v20 - 1);
    v29 = *v20;

    v30 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *a1;
    v32 = v51;
    v33 = sub_1B8A3FBF0(v27, v26);
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_31;
    }

    v39 = v34;
    if (v32[3] < v38)
    {
      sub_1B8AC53C4(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_1B8A3FBF0(v27, v26);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_33;
      }

LABEL_21:
      if (v39)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v45 = v33;
    sub_1B8AC6370();
    v33 = v45;
    if (v39)
    {
LABEL_11:
      v21 = v33;

      v22 = v51;
      v23 = (v51[7] + 16 * v21);
      v24 = v23[1];
      *v23 = v28;
      v23[1] = v29;

      goto LABEL_12;
    }

LABEL_22:
    v22 = v51;
    v51[(v33 >> 6) + 8] |= 1 << v33;
    v41 = (v22[6] + 16 * v33);
    *v41 = v27;
    v41[1] = v26;
    v42 = (v22[7] + 16 * v33);
    *v42 = v28;
    v42[1] = v29;
    v43 = v22[2];
    v37 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v37)
    {
      goto LABEL_32;
    }

    v22[2] = v44;
LABEL_12:
    ++v18;
    a1 = v47;
    *v47 = v22;
    v19 += 2;
    v20 += 2;
    if (v48 == v18)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1B8AF0FB8();
  __break(1u);
  return result;
}

uint64_t sub_1B8ACFCBC(uint64_t a1, uint64_t a2)
{
  v45[0] = a1;
  v45[1] = a2;
  sub_1B8A3F920();
  v2 = sub_1B8AF09F8();
  v4 = v3;
  v5 = sub_1B8AF0728();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B8A3F974(v5, 0);

    v8 = sub_1B8A3F9FC(v45, v7 + 4, v6, v2, v4);

    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v10 = v7[2];
  if (v10)
  {
    v45[0] = MEMORY[0x1E69E7CC0];
    sub_1B8A3FAC4(0, v10, 0);
    v11 = v45[0];
    v12 = v7 + 5;
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = qword_1EDB75728;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = off_1EDB75730;
      if (*(off_1EDB75730 + 2))
      {
        v17 = sub_1B8A3FBF0(v13, v14);
        if (v18)
        {
          v19 = (v16[7] + 16 * v17);
          v13 = *v19;
          v20 = v19[1];

          v14 = v20;
        }
      }

      v45[0] = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B8A3FAC4((v21 > 1), v22 + 1, 1);
        v11 = v45[0];
      }

      *(v11 + 16) = v22 + 1;
      v23 = v11 + 16 * v22;
      *(v23 + 32) = v13;
      *(v23 + 40) = v14;
      v12 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v45[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97208, &qword_1B8AFB240);
  sub_1B8A3FD68();
  v24 = sub_1B8AF07C8();
  v26 = v25;
  v27 = sub_1B8AF0728();
  if (!v27)
  {

    v29 = MEMORY[0x1E69E7CC0];
    v31 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v31)
    {
LABEL_20:
      v45[0] = MEMORY[0x1E69E7CC0];
      sub_1B8A3FAC4(0, v31, 0);
      v32 = v45[0];
      v33 = v29 + 5;
      do
      {
        v34 = *(v33 - 1);
        v35 = *v33;
        v36 = qword_1EDB75718;

        if (v36 != -1)
        {
          swift_once();
        }

        v37 = off_1EDB75720;
        if (*(off_1EDB75720 + 2))
        {
          v38 = sub_1B8A3FBF0(v34, v35);
          if (v39)
          {
            v40 = (v37[7] + 16 * v38);
            v34 = *v40;
            v41 = v40[1];

            v35 = v41;
          }
        }

        v45[0] = v32;
        v43 = *(v32 + 16);
        v42 = *(v32 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1B8A3FAC4((v42 > 1), v43 + 1, 1);
          v32 = v45[0];
        }

        *(v32 + 16) = v43 + 1;
        v44 = v32 + 16 * v43;
        *(v44 + 32) = v34;
        *(v44 + 40) = v35;
        v33 += 2;
        --v31;
      }

      while (v31);

      goto LABEL_32;
    }

LABEL_31:

    v32 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v45[0] = v32;
    return sub_1B8AF07C8();
  }

  v28 = v27;
  v29 = sub_1B8A3F974(v27, 0);

  v30 = sub_1B8A3F9FC(v45, v29 + 4, v28, v24, v26);

  if (v30 == v28)
  {

    v31 = v29[2];
    if (v31)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1B8AD0090(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8AEFB28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v15 = sub_1B8ACFCBC(a1, a2);
  v17 = v16;
  v18 = sub_1B8AF0728();
  if (v18)
  {
    v19 = v18;
    v20 = sub_1B8A3F974(v18, 0);

    v21 = sub_1B8A3F9FC(v58, v20 + 4, v19, v15, v17);

    if (v21 != v19)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v57 = v12;
  v23 = v20[2];
  if (v23)
  {
    v53 = v9;
    v54 = v14;
    v55 = v5;
    v56 = v4;
    v58[0] = MEMORY[0x1E69E7CC0];
    sub_1B8A3FAC4(0, v23, 0);
    v24 = v20;
    v25 = v58[0];
    v52 = v24;
    v26 = v24 + 5;
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      v29 = qword_1EDB75738;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = off_1EDB75740;
      if (*(off_1EDB75740 + 2))
      {
        v31 = sub_1B8A3FBF0(v27, v28);
        if (v32)
        {
          v33 = (v30[7] + 16 * v31);
          v27 = *v33;
          v34 = v33[1];

          v28 = v34;
        }
      }

      v58[0] = v25;
      v36 = *(v25 + 16);
      v35 = *(v25 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1B8A3FAC4((v35 > 1), v36 + 1, 1);
        v25 = v58[0];
      }

      *(v25 + 16) = v36 + 1;
      v37 = v25 + 16 * v36;
      *(v37 + 32) = v27;
      *(v37 + 40) = v28;
      v26 += 2;
      --v23;
    }

    while (v23);

    v5 = v55;
    v4 = v56;
    v9 = v53;
    v14 = v54;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  v58[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97208, &qword_1B8AFB240);
  sub_1B8A3FD68();
  v38 = sub_1B8AF07C8();
  v40 = v39;
  if (qword_1EDB75708 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDB75710;
  v42 = sub_1B8AF0658();
  v43 = MEMORY[0x1B8CC5F80](v38, v40);

  v44 = sub_1B8AF0658();
  v45 = [v41 stringByReplacingMatchesInString:v42 options:0 range:0 withTemplate:{v43, v44}];

  v46 = sub_1B8AF0668();
  v48 = v47;

  v58[0] = v46;
  v58[1] = v48;
  v49 = v57;
  sub_1B8AEFB08();
  sub_1B8AEFAF8();
  sub_1B8AEFB18();
  v50 = *(v5 + 8);
  v50(v9, v4);
  v50(v49, v4);
  sub_1B8A3F920();
  sub_1B8AF09D8();
  v50(v14, v4);

  v51 = sub_1B8AF06C8();

  return v51;
}

uint64_t sub_1B8AD0514()
{
  v13[3] = &_s5ErrorON_1;
  v13[4] = sub_1B8ADA320();
  v1 = swift_allocObject();
  v13[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  sub_1B8ADA3DC(v0, v12);
  v3 = TerseEncoder.encode(_:typeNameStyle:)(v13, &unk_1F3746E60);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(v13);
  v12[0] = v3;
  v12[1] = v5;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v6 = sub_1B8AD541C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v8 = MEMORY[0x1B8CC6010](v6, v7);
  v10 = v9;

  MEMORY[0x1B8CC5F50](v8, v10);

  return v12[0];
}

uint64_t sub_1B8AD065C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v18[3] = &_s5ErrorON_0;
  v18[4] = sub_1B8AD9BAC();
  v8 = swift_allocObject();
  v18[0] = v8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  sub_1B8AD9C14(a1, a2, a3, a4);
  v9 = TerseEncoder.encode(_:typeNameStyle:)(v18, &unk_1F3746E38);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_0(v18);
  v18[0] = v9;
  v18[1] = v11;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v12 = sub_1B8AD560C(a1, a2, a3, a4);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v14 = MEMORY[0x1B8CC6010](v12, v13);
  v16 = v15;

  MEMORY[0x1B8CC5F50](v14, v16);

  return v18[0];
}

uint64_t sub_1B8AD07C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v18 = &_s5ErrorON;
  v19 = sub_1B8ADA1F4();
  v15 = a1;
  v16 = a2;
  v17 = a3;
  sub_1B8ADA248(a1, a2, a3);
  v6 = TerseEncoder.encode(_:typeNameStyle:)(&v15, &unk_1F3746E10);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(&v15);
  v15 = v6;
  v16 = v8;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v9 = sub_1B8AD57F8(a1, a2, a3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v11 = MEMORY[0x1B8CC6010](v9, v10);
  v13 = v12;

  MEMORY[0x1B8CC5F50](v11, v13);

  return v15;
}

uint64_t sub_1B8AD08FC(uint64_t a1, uint64_t a2)
{
  v15 = &_s25NotAnAssetBackedLLMBundleVN;
  v16 = sub_1B8A978A8();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746DE8);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD5BB0(a1, a2, sub_1B8A96FE4, &_s25NotAnAssetBackedLLMBundleVN, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD0A4C(uint64_t a1, uint64_t a2)
{
  v15 = &_s24ResolveModelBundleFailedVN;
  v16 = sub_1B8A97660();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746DC0);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD5BB0(a1, a2, sub_1B8A96F38, &_s24ResolveModelBundleFailedVN, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD0B9C(uint64_t a1, uint64_t a2)
{
  v15 = &type metadata for AFMModel.ImageConverterNotEnabled;
  v16 = sub_1B8A882DC();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746D98);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD5BB0(a1, a2, sub_1B8A851A0, &type metadata for AFMModel.ImageConverterNotEnabled, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD0CEC(uint64_t a1, uint64_t a2)
{
  v15 = &_s23BundleContainsNoAdapterVN;
  v16 = sub_1B8A97AF0();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746D70);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD5BB0(a1, a2, sub_1B8A97038, &_s23BundleContainsNoAdapterVN, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD0E3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v18 = &type metadata for AFMModel.MiscSafetyOutputType.Error;
  v19 = sub_1B8A89D48();
  v15 = a1;
  v16 = a2;
  v17 = a3;
  sub_1B8ADA534(a1, a2, a3);
  v6 = TerseEncoder.encode(_:typeNameStyle:)(&v15, &unk_1F3746D48);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(&v15);
  v15 = v6;
  v16 = v8;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v9 = sub_1B8AD59D4(a1, a2, a3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v11 = MEMORY[0x1B8CC6010](v9, v10);
  v13 = v12;

  MEMORY[0x1B8CC5F50](v11, v13);

  return v15;
}

uint64_t sub_1B8AD0F78(uint64_t a1, uint64_t a2)
{
  v15 = &type metadata for AFMModel.LoadFailed;
  v16 = sub_1B8A8A03C();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746BB8);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD5BB0(a1, a2, sub_1B8A89DF4, &type metadata for AFMModel.LoadFailed, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD10C8(uint64_t a1)
{
  v11[3] = &type metadata for TextImageAlignmentCalculator.InvalidEmbeddingSizeError;
  v11[4] = sub_1B8AB3988();
  v11[0] = a1;
  v2 = TerseEncoder.encode(_:typeNameStyle:)(v11, &unk_1F3746CD0);
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0(v11);
  v11[0] = v2;
  v11[1] = v4;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v5 = sub_1B8AD5F0C(a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v7 = MEMORY[0x1B8CC6010](v5, v6);
  v9 = v8;

  MEMORY[0x1B8CC5F50](v7, v9);

  return v11[0];
}

uint64_t sub_1B8AD11D8(uint64_t a1, uint64_t a2)
{
  v15 = &type metadata for TextImageAlignmentCalculator.EmbeddingSizesDoNotMatch;
  v16 = sub_1B8AB3150();
  v13 = a1;
  v14 = a2;
  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746CA8);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD60B4(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD12F0(uint64_t a1, char a2)
{
  v15 = &type metadata for SCMLSafetyGuardrailError;
  v16 = sub_1B8AD9A5C();
  v13 = a1;
  LOBYTE(v14) = a2 & 1;
  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746C80);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD6264(a1, a2 & 1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD1410(uint64_t a1, uint64_t a2, char a3)
{
  v18 = &type metadata for MultimodalSanitizer.Error;
  v19 = sub_1B8ABEE04();
  v15 = a1;
  v16 = a2;
  v17 = a3 & 1;
  sub_1B8ADA1E4();
  v6 = TerseEncoder.encode(_:typeNameStyle:)(&v15, &unk_1F3746C58);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(&v15);
  v15 = v6;
  v16 = v8;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v9 = sub_1B8AD641C(a1, a2, a3 & 1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v11 = MEMORY[0x1B8CC6010](v9, v10);
  v13 = v12;

  MEMORY[0x1B8CC5F50](v11, v13);

  return v15;
}

uint64_t sub_1B8AD154C(uint64_t a1, uint64_t a2)
{
  v15 = &type metadata for BackgroundEstimator.Error;
  v16 = sub_1B8AAB618();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746C30);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD65FC(a1, a2, sub_1B8AAB2D4, &type metadata for BackgroundEstimator.Error, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD169C(uint64_t a1, uint64_t a2)
{
  v15 = &type metadata for PromptRewriter.Error;
  v16 = sub_1B8ACE7B8();
  v13 = a1;
  v14 = a2;

  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v13, &unk_1F3746C08);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v13);
  v13 = v4;
  v14 = v6;
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v7 = sub_1B8AD65FC(a1, a2, sub_1B8A89824, &type metadata for PromptRewriter.Error, sub_1B8AD6AB8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v9 = MEMORY[0x1B8CC6010](v7, v8);
  v11 = v10;

  MEMORY[0x1B8CC5F50](v9, v11);

  return v13;
}

uint64_t sub_1B8AD1830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1B8AF1018();
  sub_1B8AF05F8();
  v7 = sub_1B8AF1038();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B8AF0EA8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B8AD1928()
{
  v0 = sub_1B8AB5C54(&unk_1F3747188);
  result = swift_arrayDestroy();
  qword_1EBA97218 = v0;
  return result;
}

id SCMLSafetyGuardrailResult.init(result:)(uint64_t a1, unint64_t a2)
{
  v63 = sub_1B8AEFB28();
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v67 = 10;
  *(&v67 + 1) = 0xE100000000000000;
  v65 = &v67;
  v9 = sub_1B8AD7C84(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B8AD8C94, v64, a1, a2, &v67);
  v10 = v9[2];
  if (v10 == 1)
  {
    v11 = v9[4];
    v12 = v9[5];
    v13 = v9[6];
    v14 = v9[7];

    v15 = sub_1B8AF0958();
    v17 = v16;

    if (v15 == 1701208435 && v17 == 0xE400000000000000)
    {

      v19 = 1;
    }

    else
    {
      v19 = sub_1B8AF0EA8();
    }

    v2[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] = v19 & 1;
    goto LABEL_29;
  }

  if (!v10)
  {

    v2[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] = 0;
LABEL_29:
    v48 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v62 = v5;
  v20 = v9[4];
  v21 = v9[5];
  v22 = v9[6];
  v23 = v9[7];
  v24 = v9;

  v25 = sub_1B8AF0958();
  v27 = v26;

  if (v25 == 1701208435 && v27 == 0xE400000000000000)
  {

    v31 = 1;
  }

  else
  {
    v29 = sub_1B8AF0EA8();

    if ((v29 & 1) == 0)
    {
      v32 = v24;
      if (qword_1EDB74A20 != -1)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    v31 = 1;
  }

  while (1)
  {
    v2[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] = v31 & 1;
    if (v24[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_32:
    result = swift_once();
    v32 = v24;
LABEL_19:
    if (v32[2] < 2uLL)
    {
      __break(1u);
      return result;
    }

    v33 = qword_1EBA97218;
    v34 = v32[8];
    v35 = v32[9];
    v36 = v32[10];
    v37 = v32[11];

    v38 = sub_1B8AF0958();
    v40 = v39;

    v31 = sub_1B8AD1830(v38, v40, v33);
  }

  v41 = v24[8];
  v42 = v24[9];
  v43 = v24[10];
  v44 = v24[11];

  *&v67 = 44;
  *(&v67 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v45);
  *(&v60 - 2) = &v67;
  v46 = sub_1B8AD8044(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B8ADA57C, (&v60 - 4), v41, v42, v43, &v60);
  v47 = *(v46 + 2);
  if (!v47)
  {

    goto LABEL_29;
  }

  v61 = v2;
  v70 = MEMORY[0x1E69E7CC0];
  sub_1B8AD846C(0, v47, 0);
  v48 = v70;
  v49 = (v62 + 8);
  v62 = v46;
  v50 = (v46 + 56);
  do
  {
    v51 = *(v50 - 1);
    v52 = *v50;
    v67 = *(v50 - 3);
    v68 = v51;
    v69 = v52;

    sub_1B8AEFB08();
    sub_1B8AD8D08();
    v53 = sub_1B8AF09D8();
    v55 = v54;
    (*v49)(v8, v63);

    v70 = v48;
    v57 = *(v48 + 16);
    v56 = *(v48 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1B8AD846C((v56 > 1), v57 + 1, 1);
      v48 = v70;
    }

    *(v48 + 16) = v57 + 1;
    v58 = v48 + 16 * v57;
    *(v58 + 32) = v53;
    *(v58 + 40) = v55;
    v50 += 4;
    --v47;
  }

  while (v47);

  v2 = v61;
LABEL_30:
  *&v2[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_labels] = v48;
  v59 = type metadata accessor for SCMLSafetyGuardrailResult();
  v66.receiver = v2;
  v66.super_class = v59;
  return objc_msgSendSuper2(&v66, sel_init);
}

uint64_t sub_1B8AD1F9C(void *a1, uint64_t a2, int a3)
{
  v24 = a3;
  v22 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972C8, &qword_1B8AFB500);
  v21 = *(v23 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972D0, &qword_1B8AFB508);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972D8, &unk_1B8AFB510);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AD9AB0();
  sub_1B8AF1058();
  if (v24)
  {
    v25 = 0;
    sub_1B8AD9B58();
    sub_1B8AF0C88();
    (*(v7 + 8))(v10, v20);
  }

  else
  {
    v26 = 1;
    sub_1B8AD9B04();
    sub_1B8AF0C88();
    v18 = v23;
    sub_1B8AF0CB8();
    (*(v21 + 8))(v6, v18);
  }

  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_1B8AD2294()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6C69614664616F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AD22D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C69614664616F6CLL && a2 == 0xEA00000000006465;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B8B06F40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B8AD23C4(uint64_t a1)
{
  v2 = sub_1B8AD9AB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AD2400(uint64_t a1)
{
  v2 = sub_1B8AD9AB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AD243C(uint64_t a1)
{
  v2 = sub_1B8AD9B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AD2478(uint64_t a1)
{
  v2 = sub_1B8AD9B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AD24CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E656B636162 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AD2554(uint64_t a1)
{
  v2 = sub_1B8AD9B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AD2590(uint64_t a1)
{
  v2 = sub_1B8AD9B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AD25CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B8AD8E20(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

unint64_t sub_1B8AD2620()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v4 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = sub_1B8AD7288(v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v8;
}

uint64_t sub_1B8AD26E8(uint64_t a1)
{
  v2 = sub_1B8AD98B8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AD2724(uint64_t a1)
{
  v2 = sub_1B8AD98B8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t SCMLSafetyGuardrail.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_bundleID + 8);

  return v1;
}

id SCMLSafetyGuardrail.init(backend:onBehalfOf:modelManagerServicesUseCaseID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v67 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967F0, &qword_1B8AF7BC0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v60 - v18;
  *(v5 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_chunkOverlap) = 30;
  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_logger;
  sub_1B8AF0398();
  if (a1 == 4)
  {
    v61 = a2;
    v68 = a4;
    v65 = v20;
    v21 = 12;
  }

  else
  {
    if (a1 != 16)
    {

      sub_1B8AD8D80();
      swift_allocError();
      *v44 = a1;
      *(v44 + 8) = 0;
      swift_willThrow();
      goto LABEL_13;
    }

    v61 = a2;
    v68 = a4;
    v65 = v20;
    v21 = 1;
  }

  v22 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_task;
  *(v5 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_task) = v21;
  LOBYTE(v72[0]) = v21;
  AFMModel.Task.bundleID.getter(v19);
  v23 = sub_1B8AEFF58();
  v25 = v24;
  (*(v16 + 8))(v19, v15);
  v26 = (v5 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_bundleID);
  *v26 = v23;
  v26[1] = v25;
  v27 = *(v5 + v22);
  v28 = sub_1B8AEFCC8();
  (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  v29 = type metadata accessor for AFMModel();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v64 = v29;
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v69 = v14;
  v34 = sub_1B8AF03A8();
  v35 = __swift_project_value_buffer(v34, qword_1EDB75B38);
  v36 = *(v34 - 8);
  v37 = *(v36 + 16);
  v63 = v33;
  v37(v32 + v33, v35, v34);
  v38 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v39 = sub_1B8AF0328();
  v40 = __swift_project_value_buffer(v39, qword_1EDB75B50);
  v41 = *(v39 - 8);
  v42 = *(v41 + 16);
  v62 = v38;
  v42(v32 + v38, v40, v39);
  v74 = v27;
  v43 = v70;
  sub_1B8A93BF0(v72);
  if (!v43)
  {
    v70 = v26;
    v45 = v32 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v46 = v72[1];
    *v45 = v72[0];
    *(v45 + 16) = v46;
    *(v45 + 32) = v73;
    LOBYTE(v72[0]) = v27;
    v47 = v66;
    sub_1B8A8975C(v69, v66, &qword_1EBA96528, &unk_1B8AF64B0);
    v48 = type metadata accessor for AFMModelCore();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v57 = sub_1B8A8AB94(v72, v67, v68, v61, 0, v47);
    sub_1B8A897C4(v69, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v32 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v57;
    *(v5 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_model) = v32;
    v58 = type metadata accessor for SCMLSafetyGuardrail();
    v71.receiver = v5;
    v71.super_class = v58;
    return objc_msgSendSuper2(&v71, sel_init);
  }

  sub_1B8A897C4(v69, &qword_1EBA96528, &unk_1B8AF64B0);
  (*(v36 + 8))(v32 + v63, v34);
  (*(v41 + 8))(v32 + v62, v39);
  v51 = *(*v32 + 48);
  v52 = *(*v32 + 52);
  swift_deallocPartialClassInstance();
  v53 = v26[1];

  v20 = v65;
LABEL_13:
  v54 = sub_1B8AF03A8();
  (*(*(v54 - 8) + 8))(v5 + v20, v54);
  type metadata accessor for SCMLSafetyGuardrail();
  v55 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x30);
  v56 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x34);
  return swift_deallocPartialClassInstance();
}

uint64_t sub_1B8AD2F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B8AF0128();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AD3044, 0, 0);
}

uint64_t sub_1B8AD3044()
{
  v1 = v0[3];
  if ((v1 & 0x1000000000000000) != 0)
  {
    v14 = v0[2];
    v2 = sub_1B8AF0788();
  }

  else if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2 <= v0[4])
  {
    v10 = v0[2];
    v9 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B8AF6490;
    *(v11 + 32) = v10;
    *(v11 + 40) = v9;
    v12 = v0[8];

    v13 = v0[1];

    return v13(v11);
  }

  else
  {
    v3 = v0[8];
    v5 = v0[2];
    v4 = v0[3];
    v0[9] = *(*(*(v0[5] + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_model) + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) + OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_tokenGenerator);

    sub_1B8AF0138();
    v6 = *(MEMORY[0x1E69DA420] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_1B8AD31FC;
    v8 = v0[8];

    return MEMORY[0x1EEE49B98](v8);
  }
}

uint64_t sub_1B8AD31FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = v1;

  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  v10 = v4[6];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1B8AD3914;
  }

  else
  {
    v4[12] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1B8AD33A8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1B8AD33A8()
{
  v29 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  if (*(v0 + 96) <= *(v0 + 32))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B8AF6490;
    *(v22 + 32) = v2;
    *(v22 + 40) = v1;
    v23 = *(v0 + 64);

    v24 = *(v0 + 8);

    return v24(v22);
  }

  else
  {
    if ((v1 & 0x2000000000000000) == 0)
    {
      v3 = *(v0 + 16);
    }

    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = sub_1B8AF07D8();
    sub_1B8ADB4D0(v6, v7, v8, v9, 30, 30, v25);
    v10 = v25[0];
    v11 = v25[1];
    v12 = v25[2];
    v13 = v25[3];
    *(v0 + 104) = v26;
    v14 = v28;
    *(v0 + 120) = v27;
    *(v0 + 128) = v14;

    v15 = MEMORY[0x1B8CC5EE0](v10, v11, v12, v13);
    v17 = v16;

    *(v0 + 136) = v17;
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v18[1] = sub_1B8AD3584;
    v19 = *(v0 + 32);
    v20 = *(v0 + 40);

    return sub_1B8AD2F80(v15, v17, v19);
  }
}

uint64_t sub_1B8AD3584(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v8 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = sub_1B8AD3978;
  }

  else
  {
    v6 = v3[17];

    v5 = sub_1B8AD36A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B8AD36A0()
{
  v1 = MEMORY[0x1B8CC5EE0](v0[13], v0[14], v0[15], v0[16]);
  v3 = v2;

  v0[21] = v3;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1B8AD3764;
  v5 = v0[4];
  v6 = v0[5];

  return sub_1B8AD2F80(v1, v3, v5);
}

uint64_t sub_1B8AD3764(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_1B8AD39EC;
  }

  else
  {
    v8 = *(v4 + 168);

    *(v4 + 192) = a1;
    v7 = sub_1B8AD3894;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8AD3894()
{
  v4 = v0[19];
  sub_1B8AE5884(v0[24]);
  v1 = v0[8];

  v2 = v0[1];

  return v2(v4);
}

uint64_t sub_1B8AD3914()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8AD3978()
{
  v2 = v0[16];
  v1 = v0[17];

  v3 = v0[20];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B8AD39EC()
{
  v1 = v0[21];
  v2 = v0[19];

  v3 = v0[23];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B8AD3A64(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v5 = sub_1B8AEFB28();
  v3[40] = v5;
  v6 = *(v5 - 8);
  v3[41] = v6;
  v7 = *(v6 + 64) + 15;
  v3[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AD3B60, 0, 0);
}

uint64_t sub_1B8AD3B60()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[37];
  v32 = v0[38];
  v0[18] = v0[36];
  v0[19] = v4;
  sub_1B8AEFB08();
  sub_1B8A3F920();
  v5 = sub_1B8AF09D8();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v0[20] = v5;
  v0[21] = v7;
  v0[22] = 0xD000000000000020;
  v0[23] = 0x80000001B8B056C0;
  v0[24] = 0;
  v0[25] = 0xE000000000000000;
  v8 = sub_1B8AF09E8();
  v10 = v9;

  v0[26] = v8;
  v0[28] = 0xD00000000000003ELL;
  v0[27] = v10;
  v0[29] = 0x80000001B8B056F0;
  v0[30] = 0;
  v0[31] = 0xE000000000000000;
  v11 = sub_1B8AF09E8();
  v13 = v12;

  v0[43] = v11;
  v0[44] = v13;
  swift_arrayDestroy();
  v33 = *(v32 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_task);
  if (AFMModel.Task.rawValue.getter() == 0x6566615365646F63 && v14 == 0xEA00000000007974)
  {

LABEL_5:

    v16 = *(v0[38] + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_model);
    v17 = swift_task_alloc();
    v0[45] = v17;
    *v17 = v0;
    v17[1] = sub_1B8AD3F70;
    v19 = v0[36];
    v18 = v0[37];

    return sub_1B8A84AAC(v19, v18);
  }

  v15 = sub_1B8AF0EA8();

  if (v15)
  {
    goto LABEL_5;
  }

  if (MEMORY[0x1B8CC5F80](v0[36], v0[37]) <= 1000000000)
  {
    v28 = *(v0[38] + OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_model);
    v29 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core;
    v0[46] = v28;
    v0[47] = v29;
    v0[48] = *(*(v28 + v29) + OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_tokenGenerator);
    v30 = *(MEMORY[0x1E69DA410] + 4);

    v31 = swift_task_alloc();
    v0[49] = v31;
    *v31 = v0;
    v31[1] = sub_1B8AD40B8;

    return MEMORY[0x1EEE49B88]();
  }

  else
  {
    v21 = v0[36];
    v22 = v0[37];

    v23 = MEMORY[0x1B8CC5F80](v21, v22);
    sub_1B8AD94F8();
    swift_allocError();
    *v24 = v23;
    v24[1] = 1000000000;
    swift_willThrow();
    v25 = v0[42];
    v26 = v0[39];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1B8AD3F70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;

  v7 = *(v4 + 336);
  v8 = *(v4 + 312);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_1B8AD40B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v7 = sub_1B8AD4E08;
  }

  else
  {
    v8 = *(v4 + 384);

    *(v4 + 408) = a1;
    v7 = sub_1B8AD41E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1B8AD41E8()
{
  v1 = v0[51];
  v2 = v1 - 200;
  if (__OFSUB__(v1, 200))
  {
    __break(1u);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[52] = v3;
    *v3 = v0;
    v3[1] = sub_1B8AD4294;
    v5 = v0[43];
    v4 = v0[44];
    v6 = v0[38];

    sub_1B8AD2F80(v5, v4, v2);
  }
}

uint64_t sub_1B8AD4294(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  *(*v2 + 424) = a1;

  v7 = *(v3 + 352);

  if (v1)
  {
    v8 = *(v4 + 336);
    v9 = *(v4 + 312);

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8AD440C, 0, 0);
  }
}

void *sub_1B8AD440C()
{
  v30 = v0;
  super_class = v0[26].super_class;
  v2 = type metadata accessor for SCMLSafetyGuardrailResult();
  v0[27].receiver = v2;
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] = 1;
  *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_labels] = MEMORY[0x1E69E7CC0];
  v0[16].receiver = v3;
  v0[16].super_class = v2;
  v4 = objc_msgSendSuper2(v0 + 16, sel_init);
  v5 = *(super_class + 2);
  v6 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19SCMLSafetyGuardrail_logger;
  v0[27].super_class = v5;
  v0[28].receiver = v6;
  result = v0[26].super_class;
  if (v5)
  {
    v0[28].super_class = 0;
    v0[29].receiver = v4;
    if (result[2])
    {
      receiver = v0[19].receiver;
      v10 = result[4];
      v9 = result[5];
      v0[29].super_class = v9;
      swift_bridgeObjectRetain_n();

      v11 = sub_1B8AF0388();
      v12 = sub_1B8AF08C8();

      v13 = os_log_type_enabled(v11, v12);
      v14 = v0[26].super_class;
      if (v13)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v29 = v16;
        *v15 = 134218499;
        *(v15 + 4) = 1;
        *(v15 + 12) = 2048;
        *(v15 + 14) = *(v14 + 2);

        *(v15 + 22) = 2085;
        *(v15 + 24) = sub_1B8A9E870(v10, v9, &v29);
        _os_log_impl(&dword_1B8A3C000, v11, v12, "Safety guardrail chunk %ld of %ld: %{sensitive}s", v15, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x1B8CC7D70](v16, -1, -1);
        MEMORY[0x1B8CC7D70](v15, -1, -1);
      }

      else
      {
        v20 = v0[26].super_class;
      }

      v21 = v0[19].super_class;
      v22 = *(v0[23].receiver + v0[23].super_class);
      v23 = MEMORY[0x1E69C6560];
      v0[8].receiver = MEMORY[0x1E69E6158];
      v0[8].super_class = v23;
      v0[6].super_class = v10;
      v0[7].receiver = v9;
      v24 = sub_1B8AF00F8();
      (*(*(v24 - 8) + 56))(v21, 1, 1, v24);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B8AF6490;
      *(inited + 32) = 0x6D6F725072657375;
      *(inited + 40) = 0xEA00000000007470;
      sub_1B8A85238(&v0[6].super_class, inited + 48);
      v26 = sub_1B8AE66C0(inited);
      v0[30].receiver = v26;
      swift_setDeallocating();
      sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
      v27 = swift_task_alloc();
      v0[30].super_class = v27;
      *v27 = v0;
      *(v27 + 1) = sub_1B8AD47C0;
      v28 = v0[19].super_class;

      return sub_1B8A8C1E8(v26, 12, v28, "AFMModel.predict", 16, 2, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v17 = v0[21].receiver;
    v18 = v0[19].super_class;

    v19 = v0->super_class;

    return v19(v4);
  }

  return result;
}

uint64_t sub_1B8AD47C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 488);
  v8 = *v3;
  *(*v3 + 496) = v2;

  if (v2)
  {
    v9 = sub_1B8AD4D48;
  }

  else
  {
    v10 = v6[60];

    v6[63] = a2;
    v6[64] = a1;
    v9 = sub_1B8AD48FC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1B8AD48FC()
{
  v42 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 472);
  v4 = *(v0 + 432);
  sub_1B8A897C4(*(v0 + 312), &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  v5 = objc_allocWithZone(v4);
  v6 = SCMLSafetyGuardrailResult.init(result:)(v2, v1);

  v7 = *(v0 + 464);
  if ((v6[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] & 1) == 0)
  {

    goto LABEL_7;
  }

  v8 = v7[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe];
  v9 = *&v7[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_labels];
  if (!*(v9 + 16))
  {
    v9 = *&v6[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_labels];
  }

  v10 = *(v0 + 432);
  v11 = *(v0 + 440);
  v12 = *(v0 + 456) + 1;
  v13 = objc_allocWithZone(v10);
  v13[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_safe] = v8;
  *&v13[OBJC_IVAR____TtC26SensitiveContentAnalysisML25SCMLSafetyGuardrailResult_labels] = v9;
  *(v0 + 272) = v13;
  *(v0 + 280) = v10;
  v14 = objc_msgSendSuper2((v0 + 272), sel_init);

  if (v12 == v11)
  {
    v6 = v14;
LABEL_7:
    v15 = *(v0 + 424);

    v16 = *(v0 + 336);
    v17 = *(v0 + 312);

    v18 = *(v0 + 8);

    v18(v6);
    return;
  }

  v19 = *(v0 + 456);
  *(v0 + 456) = v19 + 1;
  *(v0 + 464) = v14;
  v20 = *(v0 + 424);
  if ((v19 + 1) >= *(v20 + 16))
  {
    __break(1u);
  }

  else
  {
    v21 = *(v0 + 448);
    v22 = *(v0 + 304);
    v23 = v20 + 16 * (v19 + 1);
    v25 = *(v23 + 32);
    v24 = *(v23 + 40);
    *(v0 + 472) = v24;
    swift_bridgeObjectRetain_n();

    v26 = sub_1B8AF0388();
    v27 = sub_1B8AF08C8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v19 + 2;
      v29 = *(v0 + 424);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 134218499;
      *(v30 + 4) = v28;
      *(v30 + 12) = 2048;
      *(v30 + 14) = *(v29 + 16);

      *(v30 + 22) = 2085;
      *(v30 + 24) = sub_1B8A9E870(v25, v24, &v41);
      _os_log_impl(&dword_1B8A3C000, v26, v27, "Safety guardrail chunk %ld of %ld: %{sensitive}s", v30, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1B8CC7D70](v31, -1, -1);
      MEMORY[0x1B8CC7D70](v30, -1, -1);
    }

    else
    {
      v32 = *(v0 + 424);
    }

    v33 = *(v0 + 312);
    v34 = *(*(v0 + 368) + *(v0 + 376));
    v35 = MEMORY[0x1E69C6560];
    *(v0 + 128) = MEMORY[0x1E69E6158];
    *(v0 + 136) = v35;
    *(v0 + 104) = v25;
    *(v0 + 112) = v24;
    v36 = sub_1B8AF00F8();
    (*(*(v36 - 8) + 56))(v33, 1, 1, v36);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B8AF6490;
    *(inited + 32) = 0x6D6F725072657375;
    *(inited + 40) = 0xEA00000000007470;
    sub_1B8A85238(v0 + 104, inited + 48);
    v38 = sub_1B8AE66C0(inited);
    *(v0 + 480) = v38;
    swift_setDeallocating();
    sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
    v39 = swift_task_alloc();
    *(v0 + 488) = v39;
    *v39 = v0;
    v39[1] = sub_1B8AD47C0;
    v40 = *(v0 + 312);

    sub_1B8A8C1E8(v38, 12, v40, "AFMModel.predict", 16, 2, v34);
  }
}

uint64_t sub_1B8AD4D48()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[53];
  v5 = v0[39];

  sub_1B8A897C4(v5, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v6 = v0[62];
  v7 = v0[42];
  v8 = v0[39];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B8AD4E08()
{
  v1 = v0[48];
  v2 = v0[44];

  v3 = v0[50];
  v4 = v0[42];
  v5 = v0[39];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B8AD5014(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1B8AF0668();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B8AD50E8;

  return sub_1B8AD3A64(v5, v7);
}

uint64_t sub_1B8AD50E8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_1B8AEFBC8();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

id SCMLSafetyGuardrail.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B8AD5354(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B8AD541C()
{
  v1 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 16);
  v26 = *v0;
  v27 = v2;
  v28 = *(v0 + 32);
  v29 = *(v0 + 48);
  sub_1B8ADA3DC(v0, v25);
  sub_1B8ADA48C();
  v3 = sub_1B8AF0E88();
  if (v3)
  {
    v4 = v3;
    sub_1B8ADA4E0(v0);
  }

  else
  {
    v4 = swift_allocError();
    v6 = *(v0 + 16);
    v5 = *(v0 + 32);
    v7 = *v0;
    *(v8 + 48) = *(v0 + 48);
    *(v8 + 16) = v6;
    *(v8 + 32) = v5;
    *v8 = v7;
  }

  sub_1B8AD6AB8(v4, &v30);

  v9 = v30;
  v10 = v30[2];
  if (v10)
  {
    *&v26 = v1;
    sub_1B8AD844C(0, v10, 0);
    v11 = 4;
    v12 = v26;
    do
    {
      v13 = v9[v11];
      v14 = v13;
      v15 = sub_1B8AEFBC8();
      v16 = [v15 domain];
      v17 = sub_1B8AF0668();
      v19 = v18;

      v20 = [v15 code];
      *&v26 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B8AD844C((v21 > 1), v22 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v22 + 1;
      v23 = (v12 + 24 * v22);
      v23[4] = v17;
      v23[5] = v19;
      v23[6] = v20;
      ++v11;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1B8AD560C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  sub_1B8AD9C14(a1, a2, a3, a4);
  sub_1B8A7BACC();
  v9 = sub_1B8AF0E88();
  if (v9)
  {
    v10 = v9;
    sub_1B8AD9C00(a1, a2, a3, a4);
  }

  else
  {
    v10 = swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
  }

  sub_1B8AD6AB8(v10, &v28);

  v12 = v28;
  v13 = v28[2];
  if (v13)
  {
    sub_1B8AD844C(0, v13, 0);
    v14 = 4;
    v15 = v8;
    do
    {
      v16 = v12[v14];
      v17 = v16;
      v18 = sub_1B8AEFBC8();
      v19 = [v18 domain];
      v20 = sub_1B8AF0668();
      v22 = v21;

      v23 = [v18 code];
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B8AD844C((v24 > 1), v25 + 1, 1);
      }

      *(v15 + 16) = v25 + 1;
      v26 = (v15 + 24 * v25);
      v26[4] = v20;
      v26[5] = v22;
      v26[6] = v23;
      ++v14;
      --v13;
    }

    while (v13);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v15;
}

uint64_t sub_1B8AD57F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B8ADA248(a1, a2, a3);
  sub_1B8ADA2B4();
  v7 = sub_1B8AF0E88();
  if (v7)
  {
    v8 = v7;
    sub_1B8ADA308(a1, a2, a3);
  }

  else
  {
    v8 = swift_allocError();
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
  }

  sub_1B8AD6AB8(v8, &v26);

  v10 = v26;
  v11 = v26[2];
  if (v11)
  {
    sub_1B8AD844C(0, v11, 0);
    v12 = 4;
    v13 = v6;
    do
    {
      v14 = v10[v12];
      v15 = v14;
      v16 = sub_1B8AEFBC8();
      v17 = [v16 domain];
      v18 = sub_1B8AF0668();
      v20 = v19;

      v21 = [v16 code];
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B8AD844C((v22 > 1), v23 + 1, 1);
      }

      *(v13 + 16) = v23 + 1;
      v24 = (v13 + 24 * v23);
      v24[4] = v18;
      v24[5] = v20;
      v24[6] = v21;
      ++v12;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1B8AD59D4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B8ADA534(a1, a2, a3);
  sub_1B8A89680();
  v7 = sub_1B8AF0E88();
  if (v7)
  {
    v8 = v7;
    sub_1B8ADA554(a1, a2, a3);
  }

  else
  {
    v8 = swift_allocError();
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
  }

  sub_1B8AD6AB8(v8, &v26);

  v10 = v26;
  v11 = v26[2];
  if (v11)
  {
    sub_1B8AD844C(0, v11, 0);
    v12 = 4;
    v13 = v6;
    do
    {
      v14 = v10[v12];
      v15 = v14;
      v16 = sub_1B8AEFBC8();
      v17 = [v16 domain];
      v18 = sub_1B8AF0668();
      v20 = v19;

      v21 = [v16 code];
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B8AD844C((v22 > 1), v23 + 1, 1);
      }

      *(v13 + 16) = v23 + 1;
      v24 = (v13 + 24 * v23);
      v24[4] = v18;
      v24[5] = v20;
      v24[6] = v21;
      ++v12;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1B8AD5BB0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void *, uint64_t *))
{
  v8 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  a3();

  v9 = sub_1B8AF0E88();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = swift_allocError();
    *v11 = a1;
    v11[1] = a2;
  }

  a5(v10, &v28);

  v12 = v28;
  v13 = *(v28 + 16);
  if (v13)
  {
    sub_1B8AD844C(0, v13, 0);
    v14 = 32;
    v15 = v8;
    do
    {
      v16 = *(v12 + v14);
      v17 = v16;
      v18 = sub_1B8AEFBC8();
      v19 = [v18 domain];
      v20 = sub_1B8AF0668();
      v22 = v21;

      v23 = [v18 code];
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B8AD844C((v24 > 1), v25 + 1, 1);
      }

      *(v15 + 16) = v25 + 1;
      v26 = (v15 + 24 * v25);
      v26[4] = v20;
      v26[5] = v22;
      v26[6] = v23;
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v15;
}

uint64_t sub_1B8AD5DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();
  v5 = *(v4 + 16);
  if (v5)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B8AD844C(0, v5, 0);
    v6 = 32;
    v7 = v20;
    do
    {
      v8 = *(v4 + v6);
      v9 = v8;
      v10 = sub_1B8AEFBC8();
      v11 = [v10 domain];
      v12 = sub_1B8AF0668();
      v14 = v13;

      v15 = [v10 code];
      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B8AD844C((v16 > 1), v17 + 1, 1);
      }

      *(v20 + 16) = v17 + 1;
      v18 = (v20 + 24 * v17);
      v18[4] = v12;
      v18[5] = v14;
      v18[6] = v15;
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

void *sub_1B8AD5F0C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v22 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  sub_1B8AB36C8();
  v3 = sub_1B8AF0E88();
  if (!v3)
  {
    v3 = swift_allocError();
    *v4 = a1;
  }

  v5 = v3;
  sub_1B8AD6AB8(v3, &v23);

  v6 = v23;
  v7 = v23[2];
  if (v7)
  {
    v23 = v2;
    sub_1B8AD844C(0, v7, 0);
    v8 = 4;
    v9 = v23;
    do
    {
      v10 = v6[v8];
      v11 = v10;
      v12 = sub_1B8AEFBC8();
      v13 = [v12 domain];
      v14 = sub_1B8AF0668();
      v16 = v15;

      v17 = [v12 code];
      v23 = v9;
      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        sub_1B8AD844C((v18 > 1), v19 + 1, 1);
        v9 = v23;
      }

      v9[2] = v19 + 1;
      v20 = &v9[3 * v19];
      v20[4] = v14;
      v20[5] = v16;
      v20[6] = v17;
      ++v8;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1B8AD60B4(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  sub_1B8AB2C24();
  v5 = sub_1B8AF0E88();
  if (!v5)
  {
    v5 = swift_allocError();
    *v6 = a1;
    v6[1] = a2;
  }

  v7 = v5;
  sub_1B8AD6AB8(v5, &v24);

  v8 = v24;
  v9 = v24[2];
  if (v9)
  {
    sub_1B8AD844C(0, v9, 0);
    v10 = 4;
    v11 = v4;
    do
    {
      v12 = v8[v10];
      v13 = v12;
      v14 = sub_1B8AEFBC8();
      v15 = [v14 domain];
      v16 = sub_1B8AF0668();
      v18 = v17;

      v19 = [v14 code];
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B8AD844C((v20 > 1), v21 + 1, 1);
      }

      *(v11 + 16) = v21 + 1;
      v22 = (v11 + 24 * v21);
      v22[4] = v16;
      v22[5] = v18;
      v22[6] = v19;
      ++v10;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t sub_1B8AD6264(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v4 = a2 & 1;
  sub_1B8AD8D80();
  v5 = sub_1B8AF0E88();
  if (!v5)
  {
    v5 = swift_allocError();
    *v6 = a1;
    *(v6 + 8) = v4;
  }

  v7 = v5;
  sub_1B8AD6AB8(v5, &v24);

  v8 = v24;
  v9 = v24[2];
  if (v9)
  {
    sub_1B8AD844C(0, v9, 0);
    v10 = 4;
    v11 = v3;
    do
    {
      v12 = v8[v10];
      v13 = v12;
      v14 = sub_1B8AEFBC8();
      v15 = [v14 domain];
      v16 = sub_1B8AF0668();
      v18 = v17;

      v19 = [v14 code];
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B8AD844C((v20 > 1), v21 + 1, 1);
      }

      *(v11 + 16) = v21 + 1;
      v22 = (v11 + 24 * v21);
      v22[4] = v16;
      v22[5] = v18;
      v22[6] = v19;
      ++v10;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t sub_1B8AD641C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v6 = a3 & 1;
  sub_1B8ADA1E4();
  sub_1B8AB6C40();
  v7 = sub_1B8AF0E88();
  if (v7)
  {
    v8 = v7;
    sub_1B8ADA1EC();
  }

  else
  {
    v8 = swift_allocError();
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = v6;
  }

  sub_1B8AD6AB8(v8, &v26);

  v10 = v26;
  v11 = v26[2];
  if (v11)
  {
    sub_1B8AD844C(0, v11, 0);
    v12 = 4;
    v13 = v5;
    do
    {
      v14 = v10[v12];
      v15 = v14;
      v16 = sub_1B8AEFBC8();
      v17 = [v16 domain];
      v18 = sub_1B8AF0668();
      v20 = v19;

      v21 = [v16 code];
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B8AD844C((v22 > 1), v23 + 1, 1);
      }

      *(v13 + 16) = v23 + 1;
      v24 = (v13 + 24 * v23);
      v24[4] = v18;
      v24[5] = v20;
      v24[6] = v21;
      ++v12;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1B8AD65FC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void *, uint64_t *))
{
  v8 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  a3();

  v9 = sub_1B8AF0E88();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = swift_allocError();
    *v11 = a1;
    v11[1] = a2;
  }

  a5(v10, &v28);

  v12 = v28;
  v13 = *(v28 + 16);
  if (v13)
  {
    sub_1B8AD844C(0, v13, 0);
    v14 = 32;
    v15 = v8;
    do
    {
      v16 = *(v12 + v14);
      v17 = v16;
      v18 = sub_1B8AEFBC8();
      v19 = [v18 domain];
      v20 = sub_1B8AF0668();
      v22 = v21;

      v23 = [v18 code];
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B8AD844C((v24 > 1), v25 + 1, 1);
      }

      *(v15 + 16) = v25 + 1;
      v26 = (v15 + 24 * v25);
      v26[4] = v20;
      v26[5] = v22;
      v26[6] = v23;
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v15;
}

uint64_t sub_1B8AD67D0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  *&v21 = a1;
  *(&v21 + 1) = a2;
  sub_1B8AD94F8();
  v3 = sub_1B8AF0E88();
  if (!v3)
  {
    v3 = swift_allocError();
    *v4 = v21;
  }

  v5 = v3;
  sub_1B8AD6AB8(v3, &v22);

  v6 = v22;
  v7 = v22[2];
  if (v7)
  {
    sub_1B8AD844C(0, v7, 0);
    v8 = 4;
    do
    {
      v9 = v6[v8];
      v10 = v9;
      v11 = sub_1B8AEFBC8();
      v12 = [v11 domain];
      v13 = sub_1B8AF0668();
      v15 = v14;

      v16 = [v11 code];
      v18 = *(v2 + 16);
      v17 = *(v2 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B8AD844C((v17 > 1), v18 + 1, 1);
      }

      *(v2 + 16) = v18 + 1;
      v19 = (v2 + 24 * v18);
      v19[4] = v13;
      v19[5] = v15;
      v19[6] = v16;
      ++v8;
      --v7;
    }

    while (v7);
  }

  return v2;
}

uint64_t sub_1B8AD69D0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *, uint64_t *))
{
  v15 = MEMORY[0x1E69E7CC0];

  a4(a3);
  v11 = sub_1B8AF0E88();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
  }

  a6(v12, &v15);

  return v15;
}

uint64_t sub_1B8AD6AD0(void *a1, void **a2, void (*a3)(void *, void **))
{
  v6 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1B8ABA9E4(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1B8ABA9E4((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v6[v8 + 4] = a1;
  *a2 = v6;
  v9 = a1;
  v10 = sub_1B8AEFBC8();
  v11 = [v10 underlyingErrors];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DE0, &qword_1B8AF9CB0);
  v12 = sub_1B8AF0818();

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      v16 = v15;
      a3(v15, a2);

      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1B8AD6C1C()
{
  v6[3] = &_s5ErrorON_1;
  v6[4] = sub_1B8ADA320();
  v1 = swift_allocObject();
  v6[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  sub_1B8ADA3DC(v0, v5);
  v3 = TerseEncoder.encode(_:typeNameStyle:)(v6, &unk_1F3746E60);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t sub_1B8AD6CF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11[3] = &_s5ErrorON_0;
  v11[4] = sub_1B8AD9BAC();
  v8 = swift_allocObject();
  v11[0] = v8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  sub_1B8AD9C14(a1, a2, a3, a4);
  v9 = TerseEncoder.encode(_:typeNameStyle:)(v11, &unk_1F3746E38);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v9;
}

uint64_t sub_1B8AD6DD8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = &_s5ErrorON;
  v11 = sub_1B8ADA1F4();
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  sub_1B8ADA248(a1, a2, a3);
  v6 = TerseEncoder.encode(_:typeNameStyle:)(v8, &unk_1F3746E10);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_1B8AD6F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10[3] = a3;
  v10[4] = a4();
  v10[0] = a1;
  v10[1] = a2;

  v8 = TerseEncoder.encode(_:typeNameStyle:)(v10, a5);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t sub_1B8AD7040(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = &type metadata for AFMModel.MiscSafetyOutputType.Error;
  v11 = sub_1B8A89D48();
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  sub_1B8ADA534(a1, a2, a3);
  v6 = TerseEncoder.encode(_:typeNameStyle:)(v8, &unk_1F3746D48);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_1B8AD713C(uint64_t a1)
{
  v4[3] = &type metadata for TextImageAlignmentCalculator.InvalidEmbeddingSizeError;
  v4[4] = sub_1B8AB3988();
  v4[0] = a1;
  v2 = TerseEncoder.encode(_:typeNameStyle:)(v4, &unk_1F3746CD0);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2;
}

uint64_t sub_1B8AD71E0(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for TextImageAlignmentCalculator.EmbeddingSizesDoNotMatch;
  v6[4] = sub_1B8AB3150();
  v6[0] = a1;
  v6[1] = a2;
  v4 = TerseEncoder.encode(_:typeNameStyle:)(v6, &unk_1F3746CA8);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

uint64_t sub_1B8AD7288(uint64_t a1, char a2)
{
  v8 = &type metadata for SCMLSafetyGuardrailError;
  v9 = sub_1B8AD9A5C();
  v6 = a1;
  v7 = a2 & 1;
  v4 = TerseEncoder.encode(_:typeNameStyle:)(&v6, &unk_1F3746C80);
  __swift_destroy_boxed_opaque_existential_0(&v6);
  return v4;
}

uint64_t sub_1B8AD7338(uint64_t a1, uint64_t a2, char a3)
{
  v10 = &type metadata for MultimodalSanitizer.Error;
  v11 = sub_1B8ABEE04();
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  sub_1B8ADA1E4();
  v6 = TerseEncoder.encode(_:typeNameStyle:)(v8, &unk_1F3746C58);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_1B8AD7470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10[3] = a3;
  v10[4] = a4();
  v10[0] = a1;
  v10[1] = a2;

  v8 = TerseEncoder.encode(_:typeNameStyle:)(v10, a5);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t sub_1B8AD7528(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for PublicError.TextSanitizer;
  v6[4] = sub_1B8AD9EA0();
  v6[0] = a1;
  v6[1] = a2;
  v4 = TerseEncoder.encode(_:typeNameStyle:)(v6, &unk_1F3746BE0);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

uint64_t sub_1B8AD75C8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B8AA7150;

  return v7();
}

uint64_t sub_1B8AD76B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B8A7B414;

  return v8();
}

uint64_t sub_1B8AD7798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B88, &qword_1B8AFAB20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1B8A8975C(a3, v25 - v11, &qword_1EBA96B88, &qword_1B8AFAB20);
  v13 = sub_1B8AF0888();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B8A897C4(v12, &qword_1EBA96B88, &qword_1B8AFAB20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B8AF0878();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1B8AF0858();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1B8AF06E8() + 32;
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

    sub_1B8A897C4(a3, &qword_1EBA96B88, &qword_1B8AFAB20);

    return v23;
  }

LABEL_8:
  sub_1B8A897C4(a3, &qword_1EBA96B88, &qword_1B8AFAB20);
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

uint64_t sub_1B8AD7A94(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8AD7B8C;

  return v7(a1);
}

uint64_t sub_1B8AD7B8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1B8AD7C84@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B8AF07D8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B8ABAB18(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B8ABAB18((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B8AF07B8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B8AF0738();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B8AF0738();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B8AF07D8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B8ABAB18(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B8AF07D8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B8ABAB18(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B8ABAB18((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B8AF0738();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B8AD8044@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_1B8AF09A8();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_1B8AF0968() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_1B8AF0968();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_1B8AF09B8();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1B8ABAB18(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_1B8ABAB18((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_1B8AF0968();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_1B8AF09B8();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_1B8ABAB18((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_1B8ABAB18(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_1B8AF09B8();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_1B8ABAB18(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1B8AD844C(void *a1, int64_t a2, char a3)
{
  result = sub_1B8AD850C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8AD846C(char *a1, int64_t a2, char a3)
{
  result = sub_1B8AD8654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8AD848C(char *a1, int64_t a2, char a3)
{
  result = sub_1B8AD8760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B8AD84AC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B8AD8854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8AD84CC(char *a1, int64_t a2, char a3)
{
  result = sub_1B8AD8A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8AD84EC(char *a1, int64_t a2, char a3)
{
  result = sub_1B8AD8B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B8AD850C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97290, &unk_1B8AFB4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8AD8654(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8AD8760(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97288, &unk_1B8AFB4C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

size_t sub_1B8AD8854(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972F8, &qword_1B8AFB578);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B8AD8A44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97308, &qword_1B8AFB580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_1B8AD8B38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97300, &qword_1B8AFB8D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_1B8AD8C3C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B8AF0EA8() & 1;
  }
}

uint64_t sub_1B8AD8CB0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B8AF0EA8() & 1;
  }
}

unint64_t sub_1B8AD8D08()
{
  result = qword_1EBA97230;
  if (!qword_1EBA97230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97230);
  }

  return result;
}

unint64_t sub_1B8AD8D80()
{
  result = qword_1EBA97238;
  if (!qword_1EBA97238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97238);
  }

  return result;
}

uint64_t type metadata accessor for SCMLSafetyGuardrail()
{
  result = qword_1EDB756A8;
  if (!qword_1EDB756A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8AD8E20(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97298, &qword_1B8AFB4E0);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972A0, &qword_1B8AFB4E8);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA972A8, &unk_1B8AFB4F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v36 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B8AD9AB0();
  v18 = v35;
  sub_1B8AF1048();
  if (!v18)
  {
    v31 = v6;
    v19 = v34;
    v35 = v11;
    v20 = sub_1B8AF0C78();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1B8AE4FD0();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1B8AF0B08();
      swift_allocError();
      v25 = v10;
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190) + 48);
      *v27 = &type metadata for SCMLSafetyGuardrailError;
      v17 = v14;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v24 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v41 = 1;
      sub_1B8AD9B04();
      sub_1B8AF0BF8();
      v23 = v35;
      v17 = sub_1B8AF0C38();
      (*(v33 + 8))(v5, v19);
      (*(v23 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0;
      sub_1B8AD9B58();
      sub_1B8AF0BF8();
      v30 = v35;
      (*(v32 + 8))(v9, v31);
      (*(v30 + 8))(v14, v10);
      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
  return v17;
}

uint64_t _s26SensitiveContentAnalysisML19SCMLSafetyGuardrailC15trimEmojiPrefix4textS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8AEFB28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a2;
  sub_1B8AEFB08();
  sub_1B8A3F920();
  v9 = sub_1B8AF09D8();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v21 = v9;
  v22 = v11;
  v19 = 0xD000000000000020;
  v20 = 0x80000001B8B056C0;
  v17 = 0;
  v18 = 0xE000000000000000;
  v12 = sub_1B8AF09E8();
  v14 = v13;

  v21 = v12;
  v22 = v14;
  v19 = 0xD00000000000003ELL;
  v20 = 0x80000001B8B056F0;
  v17 = 0;
  v18 = 0xE000000000000000;
  v15 = sub_1B8AF09E8();

  swift_arrayDestroy();
  return v15;
}

unint64_t sub_1B8AD94F8()
{
  result = qword_1EBA97250;
  if (!qword_1EBA97250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97250);
  }

  return result;
}

uint64_t sub_1B8AD9580()
{
  result = sub_1B8AF03A8();
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

uint64_t dispatch thunk of SCMLSafetyGuardrail.predict(text:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B8ACA118;

  return v10(a1, a2);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SCMLSafetyGuardrailError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SCMLSafetyGuardrailError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B8AD981C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8AD9838(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1B8AD9868(void *a1)
{
  a1[1] = sub_1B8AD98B8();
  a1[2] = sub_1B8AD990C();
  a1[3] = sub_1B8AD9960();
  a1[4] = sub_1B8AD99B4();
  a1[5] = sub_1B8AD9A08();
  result = sub_1B8AD9A5C();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AD98B8()
{
  result = qword_1EBA97258;
  if (!qword_1EBA97258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97258);
  }

  return result;
}

unint64_t sub_1B8AD990C()
{
  result = qword_1EBA97260;
  if (!qword_1EBA97260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97260);
  }

  return result;
}

unint64_t sub_1B8AD9960()
{
  result = qword_1EBA97268;
  if (!qword_1EBA97268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97268);
  }

  return result;
}

unint64_t sub_1B8AD99B4()
{
  result = qword_1EBA97270;
  if (!qword_1EBA97270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97270);
  }

  return result;
}

unint64_t sub_1B8AD9A08()
{
  result = qword_1EBA97278;
  if (!qword_1EBA97278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97278);
  }

  return result;
}

unint64_t sub_1B8AD9A5C()
{
  result = qword_1EBA97280;
  if (!qword_1EBA97280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97280);
  }

  return result;
}

unint64_t sub_1B8AD9AB0()
{
  result = qword_1EBA972B0;
  if (!qword_1EBA972B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972B0);
  }

  return result;
}

unint64_t sub_1B8AD9B04()
{
  result = qword_1EBA972B8;
  if (!qword_1EBA972B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972B8);
  }

  return result;
}

unint64_t sub_1B8AD9B58()
{
  result = qword_1EBA972C0;
  if (!qword_1EBA972C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972C0);
  }

  return result;
}

unint64_t sub_1B8AD9BAC()
{
  result = qword_1EBA972E0;
  if (!qword_1EBA972E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972E0);
  }

  return result;
}

uint64_t sub_1B8AD9C00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t sub_1B8AD9C14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

unint64_t sub_1B8AD9C28()
{
  result = qword_1EBA972E8;
  if (!qword_1EBA972E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972E8);
  }

  return result;
}

uint64_t sub_1B8AD9C7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B8A7B414;

  return sub_1B8AD5014(v2, v3, v4);
}

uint64_t sub_1B8AD9D30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B8AA7150;

  return sub_1B8AD7A94(a1, v5);
}

uint64_t sub_1B8AD9DE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B8A7B414;

  return sub_1B8AD7A94(a1, v5);
}

unint64_t sub_1B8AD9EA0()
{
  result = qword_1EBA972F0;
  if (!qword_1EBA972F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA972F0);
  }

  return result;
}

unint64_t sub_1B8AD9F28()
{
  result = qword_1EBA97310;
  if (!qword_1EBA97310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97310);
  }

  return result;
}

unint64_t sub_1B8AD9F80()
{
  result = qword_1EBA97318;
  if (!qword_1EBA97318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97318);
  }

  return result;
}

unint64_t sub_1B8AD9FD8()
{
  result = qword_1EBA97320;
  if (!qword_1EBA97320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97320);
  }

  return result;
}

unint64_t sub_1B8ADA030()
{
  result = qword_1EBA97328;
  if (!qword_1EBA97328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97328);
  }

  return result;
}

unint64_t sub_1B8ADA088()
{
  result = qword_1EBA97330;
  if (!qword_1EBA97330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97330);
  }

  return result;
}

unint64_t sub_1B8ADA0E0()
{
  result = qword_1EBA97338;
  if (!qword_1EBA97338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97338);
  }

  return result;
}

unint64_t sub_1B8ADA138()
{
  result = qword_1EBA97340;
  if (!qword_1EBA97340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97340);
  }

  return result;
}

unint64_t sub_1B8ADA190()
{
  result = qword_1EBA97348;
  if (!qword_1EBA97348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97348);
  }

  return result;
}

unint64_t sub_1B8ADA1F4()
{
  result = qword_1EBA97350;
  if (!qword_1EBA97350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97350);
  }

  return result;
}

uint64_t sub_1B8ADA248(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1B8ADA260()
{
  result = qword_1EBA97358;
  if (!qword_1EBA97358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97358);
  }

  return result;
}

unint64_t sub_1B8ADA2B4()
{
  result = qword_1EBA97360;
  if (!qword_1EBA97360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97360);
  }

  return result;
}

uint64_t sub_1B8ADA308(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1B8ADA320()
{
  result = qword_1EBA97368;
  if (!qword_1EBA97368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97368);
  }

  return result;
}

uint64_t sub_1B8ADA374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if (a7)
  {
  }

  return result;
}

unint64_t sub_1B8ADA438()
{
  result = qword_1EBA97370;
  if (!qword_1EBA97370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97370);
  }

  return result;
}

unint64_t sub_1B8ADA48C()
{
  result = qword_1EBA97378;
  if (!qword_1EBA97378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97378);
  }

  return result;
}

uint64_t sub_1B8ADA534(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B8ADA554(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

double static TextSplitter.splitInHalf(_:overlap:maxWordBoundarySearch:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1B8ADB4D0(a1, a2, a3, a4, a5, a6, &v14);
  v8 = v15;
  v9 = v16;
  v10 = v18;
  v11 = v19;
  result = *&v14;
  v13 = v17;
  *a7 = v14;
  *(a7 + 16) = v8;
  *(a7 + 24) = v9;
  *(a7 + 32) = v13;
  *(a7 + 48) = v10;
  *(a7 + 56) = v11;
  return result;
}

id sub_1B8ADA5EC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1B8ADA8C8(25180, 0xE200000000000000, 0);
  qword_1EBA97380 = result;
  return result;
}

unint64_t sub_1B8ADA668(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_1B8AF0BA8();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1B8ADAA2C(v19, 0);
      sub_1B8ADACBC(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1B8AF0BA8();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1B8CC62C0]();
          v11 = MEMORY[0x1B8CC62C0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1B8ADAAB4(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1B8ADAAB4(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

id sub_1B8ADA8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B8AF0658();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1B8AEFBD8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

void *sub_1B8ADA9A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97300, &qword_1B8AFB8D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1B8ADAA2C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973A0, &qword_1B8AFB8C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1B8ADAAB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B8AF0BA8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1B8AF0AE8();
}

uint64_t sub_1B8ADAB2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B8AF0BA8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B8AF0BA8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B8A93534(&qword_1EBA973B0, &qword_1EBA973A8, &qword_1B8AFB8C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973A8, &qword_1B8AFB8C8);
            v9 = sub_1B8ADAE4C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SCMLPeopleDetectionAttribute();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8ADACBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B8AF0BA8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B8AF0BA8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B8A93534(&qword_1EBA97398, &qword_1EBA97390, &qword_1B8AFB8B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97390, &qword_1B8AFB8B8);
            v9 = sub_1B8ADAED4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1B8ADB6C0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1B8ADAE4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CC62C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B8ADAECC;
  }

  __break(1u);
  return result;
}

void (*sub_1B8ADAED4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CC62C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B8ADB70C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8ADAF54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = sub_1B8AF0978();
  if (v8)
  {
    v9 = a2;
  }

  else
  {
    v9 = v7;
  }

  if (v9 >> 14 < a5 >> 14)
  {
    goto LABEL_20;
  }

  sub_1B8AF09B8();
  MEMORY[0x1B8CC5EE0]();
  if (qword_1EBA96470 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v10 = qword_1EBA97380;
    v11 = sub_1B8AF0658();
    v12 = [v10 matchesInString:v11 options:0 range:{0, sub_1B8AF0998()}];

    sub_1B8ADB6C0();
    v13 = sub_1B8AF0818();

    if (v13 >> 62)
    {
      break;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_23;
    }

LABEL_8:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8CC62C0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v16 range];
      if (v19 >= 1 && v19 < sub_1B8AF0728())
      {

        [v17 range];
        v20 = sub_1B8AF0988();

        goto LABEL_24;
      }

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v14 = sub_1B8AF0BA8();
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_23:

  v20 = 0;
LABEL_24:

  return v20;
}

uint64_t sub_1B8ADB208(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (__OFSUB__(0, a6))
  {
    goto LABEL_20;
  }

  v8 = sub_1B8AF0978();
  if (v9)
  {
    v8 = a1;
  }

  if (a5 >> 14 < v8 >> 14)
  {
    goto LABEL_21;
  }

  sub_1B8AF09B8();
  MEMORY[0x1B8CC5EE0]();
  if (qword_1EBA96470 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v10 = qword_1EBA97380;
    v11 = sub_1B8AF0658();
    v12 = [v10 matchesInString:v11 options:0 range:{0, sub_1B8AF0998()}];

    sub_1B8ADB6C0();
    v13 = sub_1B8AF0818();

    v14 = sub_1B8ADA668(v13);
    v15 = v14;
    if (v14 >> 62)
    {
      break;
    }

    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_8:
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B8CC62C0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = [v18 range];
      if (v21 >= 1 && v21 < sub_1B8AF0728())
      {

        [v19 range];
        v22 = sub_1B8AF0988();

        goto LABEL_25;
      }

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v16 = sub_1B8AF0BA8();
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_24:

  v22 = 0;
LABEL_25:

  return v22;
}

unint64_t sub_1B8ADB4D0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  result = sub_1B8AF0998();
  if (__OFADD__(result, a5))
  {
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1B8AF0988();
  v15 = __OFADD__(a6, 1);
  v16 = a6 + 1;
  if (v15)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = result;
  v18 = sub_1B8ADAF54(a1, a2, a3, a4, result);
  if ((v19 & 1) == 0)
  {
    v17 = v18;
  }

  result = sub_1B8AF0998();
  if (__OFSUB__(result, a5))
  {
    goto LABEL_13;
  }

  v20 = sub_1B8AF0988();
  result = sub_1B8ADB208(a1, a2, a3, a4, v20, v16);
  if ((v21 & 1) == 0)
  {
    v20 = result;
  }

  if (v17 >> 14 < a1 >> 14)
  {
    goto LABEL_14;
  }

  result = sub_1B8AF09B8();
  if (a2 >> 14 >= v20 >> 14)
  {
    v25 = result;
    v26 = v22;
    v27 = v23;
    v28 = v24;
    result = sub_1B8AF09B8();
    *a7 = v25;
    a7[1] = v26;
    a7[2] = v27;
    a7[3] = v28;
    a7[4] = result;
    a7[5] = v29;
    a7[6] = v30;
    a7[7] = v31;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1B8ADB6C0()
{
  result = qword_1EBA97388;
  if (!qword_1EBA97388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA97388);
  }

  return result;
}

unint64_t CausedErrorWithArgument.errorUserInfo.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF72A0;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v6;
  v7 = CausedErrorWithArgument.localizedDescription.getter(a1, a2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = *MEMORY[0x1E696AA08];
  *(inited + 80) = sub_1B8AF0668();
  *(inited + 88) = v10;
  v11 = (*(a2 + 72))(a1, a2);
  swift_getErrorValue();
  *(inited + 120) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1);

  v13 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D0, &qword_1B8AF6740);
  swift_arrayDestroy();
  return v13;
}

uint64_t CausedError.localizedDescription.getter(uint64_t a1, uint64_t a2)
{
  v9 = sub_1B8AE7FFC();
  MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
  v4 = (*(a2 + 40))(a1, a2);
  swift_getErrorValue();
  v5 = sub_1B8AF0FE8();
  v7 = v6;

  MEMORY[0x1B8CC5F50](v5, v7);

  return v9;
}

uint64_t sub_1B8ADB988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v11 = a3();
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v5 = sub_1B8AE315C(a1, *(*(a2 + 8) + 8));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v7 = MEMORY[0x1B8CC6010](v5, v6);
  v9 = v8;

  MEMORY[0x1B8CC5F50](v7, v9);

  return v11;
}

unint64_t CausedError.errorUserInfo.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF72A0;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v6;
  v7 = CausedError.localizedDescription.getter(a1, a2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = *MEMORY[0x1E696AA08];
  *(inited + 80) = sub_1B8AF0668();
  *(inited + 88) = v10;
  v11 = (*(a2 + 40))(a1, a2);
  swift_getErrorValue();
  *(inited + 120) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1);

  v13 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D0, &qword_1B8AF6740);
  swift_arrayDestroy();
  return v13;
}

uint64_t CausedErrorWithArgument.localizedDescription.getter(uint64_t a1, uint64_t a2)
{
  v9 = CausedErrorWithArgument.selfDescription.getter(a1, a2);
  MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
  v4 = (*(a2 + 72))(a1, a2);
  swift_getErrorValue();
  v5 = sub_1B8AF0FE8();
  v7 = v6;

  MEMORY[0x1B8CC5F50](v5, v7);

  return v9;
}

uint64_t CausedErrorWithArgument.selfDescription.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = *(a2 + 64);
  v13[3] = v6;
  v13[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v13);
  v7(a1, a2);
  v8 = TerseEncoder.encode(_:typeNameStyle:)(v13, &unk_1F37476A0);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_0(v13);
  v13[0] = sub_1B8AE7FFC();
  v13[1] = v11;
  MEMORY[0x1B8CC5F50](40, 0xE100000000000000);
  MEMORY[0x1B8CC5F50](v8, v10);

  MEMORY[0x1B8CC5F50](41, 0xE100000000000000);
  return v13[0];
}

uint64_t sub_1B8ADBEAC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v53 = a4;
  *&v54 = a2;
  *(&v54 + 1) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97458, &qword_1B8AFBBB8);
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97460, &qword_1B8AFBBC0);
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97468, &qword_1B8AFBBC8);
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v38 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97470, &qword_1B8AFBBD0);
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v38 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97478, &qword_1B8AFBBD8);
  v40 = *(v18 - 8);
  v41 = v18;
  v19 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97480, &qword_1B8AFBBE0);
  v39 = *(v22 - 8);
  v23 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97488, &qword_1B8AFBBE8);
  v55 = *(v26 - 8);
  v27 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v38 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8ADDD68();
  sub_1B8AF1058();
  if (v53)
  {
    if (v53 == 1)
    {
      v61 = 5;
      sub_1B8ADDDBC();
      v31 = v50;
      sub_1B8AF0C88();
      v32 = v52;
      sub_1B8AF0C98();
      (*(v51 + 8))(v31, v32);
      return (*(v55 + 8))(v29, v26);
    }

    else
    {
      if (v54 > 1)
      {
        if (v54 ^ 2 | *(&v54 + 1))
        {
          v59 = 3;
          sub_1B8ADDE64();
          v35 = v45;
          sub_1B8AF0C88();
          v37 = v46;
          v36 = v47;
        }

        else
        {
          v58 = 2;
          sub_1B8ADDEB8();
          v35 = v42;
          sub_1B8AF0C88();
          v37 = v43;
          v36 = v44;
        }

        (*(v37 + 8))(v35, v36);
      }

      else if (v54 == 0)
      {
        v56 = 0;
        sub_1B8ADDF60();
        sub_1B8AF0C88();
        (*(v39 + 8))(v25, v22);
      }

      else
      {
        v57 = 1;
        sub_1B8ADDF0C();
        sub_1B8AF0C88();
        (*(v40 + 8))(v21, v41);
      }

      return (*(v55 + 8))(v29, v26);
    }
  }

  else
  {
    v60 = 4;
    sub_1B8ADDE10();
    sub_1B8AF0C88();
    v34 = v49;
    sub_1B8AF0C98();
    (*(v48 + 8))(v11, v34);
    return (*(v55 + 8))(v29, v26);
  }
}

unint64_t sub_1B8ADC530()
{
  v1 = *v0;
  v2 = 0x6F5464656C696166;
  v3 = 0x5064696C61766E69;
  if (v1 == 4)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ELL;
  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B8ADC608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8ADCE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8ADC63C(uint64_t a1)
{
  v2 = sub_1B8ADDD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC678(uint64_t a1)
{
  v2 = sub_1B8ADDD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC6B4(uint64_t a1)
{
  v2 = sub_1B8ADDF60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC6F0(uint64_t a1)
{
  v2 = sub_1B8ADDF60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC72C(uint64_t a1)
{
  v2 = sub_1B8ADDEB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC768(uint64_t a1)
{
  v2 = sub_1B8ADDEB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC7A4(uint64_t a1)
{
  v2 = sub_1B8ADDE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC7E0(uint64_t a1)
{
  v2 = sub_1B8ADDE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC81C(uint64_t a1)
{
  v2 = sub_1B8ADDE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC858(uint64_t a1)
{
  v2 = sub_1B8ADDE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC894(uint64_t a1)
{
  v2 = sub_1B8ADDF0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC8D0(uint64_t a1)
{
  v2 = sub_1B8ADDF0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC90C(uint64_t a1)
{
  v2 = sub_1B8ADDDBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ADC948(uint64_t a1)
{
  v2 = sub_1B8ADDDBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ADC984@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B8ADD038(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1B8ADC9D4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v6;
  v7 = sub_1B8AD6DD8(v1, v2, v3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v9;
}

uint64_t sub_1B8ADCAA8(uint64_t a1)
{
  v2 = sub_1B8ADA260();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8ADCAE4(uint64_t a1)
{
  v2 = sub_1B8ADA260();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

__CFData *sub_1B8ADCB20(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_6;
  }

  v3 = Mutable;
  sub_1B8AF0228();
  v7 = sub_1B8AF0658();

  v8 = CGImageDestinationCreateWithData(v3, v7, 1uLL, 0);

  if (!v8)
  {

LABEL_6:
    sub_1B8ADA2B4();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 2;
    swift_willThrow();
    return v3;
  }

  if ((a2 & 0x100000000) != 0)
  {
    v12 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973B8, &qword_1B8AFB960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B8AF6490;
    v10 = *MEMORY[0x1E696D338];
    *(inited + 32) = sub_1B8AF0668();
    *(inited + 40) = v11;
    *(inited + 48) = a2;
    sub_1B8AE6FA8(inited);
    swift_setDeallocating();
    sub_1B8A897C4(inited + 32, &qword_1EBA973C0, &qword_1B8AFB968);
    v12 = sub_1B8AF0598();
  }

  CGImageDestinationAddImage(v8, v4, v12);
  if (CGImageDestinationFinalize(v8))
  {
    v14 = v3;
    v3 = sub_1B8AEFC28();
  }

  else
  {
    sub_1B8ADA2B4();
    swift_allocError();
    *v15 = xmmword_1B8AFB930;
    *(v15 + 16) = 2;
    swift_willThrow();
  }

  return v3;
}

const __CFData *sub_1B8ADCD40()
{
  v0 = sub_1B8AEFC18();
  v1 = CGImageSourceCreateWithData(v0, 0);

  if (v1)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, 0);
    if (ImageAtIndex)
    {
      v0 = ImageAtIndex;
    }

    else
    {
      sub_1B8ADA2B4();
      swift_allocError();
      *v4 = xmmword_1B8AFB940;
      *(v4 + 16) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_1B8ADA2B4();
    swift_allocError();
    *v3 = xmmword_1B8AFB950;
    *(v3 + 16) = 2;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_1B8ADCE2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ELL && 0x80000001B8B06FC0 == a2;
  if (v4 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B8B06FE0 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B8B07000 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEE0065646F636544 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B8B07020 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5064696C61766E69 && a2 == 0xEB00000000687461)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B8AF0EA8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B8ADD038(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973E8, &qword_1B8AFBB78);
  v3 = *(v2 - 8);
  v66 = v2;
  v67 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v68 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973F0, &qword_1B8AFBB80);
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v55 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA973F8, &qword_1B8AFBB88);
  v63 = *(v60 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v70 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97400, &qword_1B8AFBB90);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97408, &qword_1B8AFBB98);
  v58 = *(v15 - 8);
  v59 = v15;
  v16 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97410, &qword_1B8AFBBA0);
  v57 = *(v19 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97418, &unk_1B8AFBBA8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v55 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v73 = a1;
  v30 = __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1B8ADDD68();
  v31 = v72;
  sub_1B8AF1048();
  if (!v31)
  {
    v32 = v22;
    v55 = v19;
    v56 = v18;
    v33 = v69;
    v34 = v70;
    v35 = v71;
    v72 = v23;
    v36 = sub_1B8AF0C78();
    v37 = (2 * *(v36 + 16)) | 1;
    v74 = v36;
    v75 = v36 + 32;
    v76 = 0;
    v77 = v37;
    v38 = sub_1B8AE4FD4();
    if (v38 == 6 || v76 != v77 >> 1)
    {
      v42 = sub_1B8AF0B08();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190) + 48);
      *v44 = &_s5ErrorON;
      v30 = v27;
      v46 = v72;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v24 + 8))(v30, v46);
      swift_unknownObjectRelease();
    }

    else if (v38 > 2u)
    {
      v48 = v24;
      if (v38 == 3)
      {
        v78 = 3;
        sub_1B8ADDE64();
        v52 = v72;
        sub_1B8AF0BF8();
        (*(v63 + 8))(v34, v60);
        (*(v24 + 8))(v27, v52);
        swift_unknownObjectRelease();
        v30 = 3;
      }

      else
      {
        v49 = v72;
        if (v38 == 4)
        {
          v78 = 4;
          sub_1B8ADDE10();
          sub_1B8AF0BF8();
          v50 = v64;
          v30 = sub_1B8AF0C18();
          (*(v65 + 8))(v35, v50);
          (*(v24 + 8))(v27, v49);
        }

        else
        {
          v78 = 5;
          sub_1B8ADDDBC();
          v53 = v68;
          sub_1B8AF0BF8();
          v54 = v66;
          v30 = sub_1B8AF0C18();
          (*(v67 + 8))(v53, v54);
          (*(v48 + 8))(v27, v49);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v39 = v24;
      if (v38)
      {
        v40 = v72;
        if (v38 == 1)
        {
          v78 = 1;
          sub_1B8ADDF0C();
          v41 = v56;
          sub_1B8AF0BF8();
          (*(v58 + 8))(v41, v59);
          (*(v39 + 8))(v27, v40);
          swift_unknownObjectRelease();
          v30 = 1;
        }

        else
        {
          v78 = 2;
          sub_1B8ADDEB8();
          sub_1B8AF0BF8();
          (*(v61 + 8))(v33, v62);
          (*(v39 + 8))(v27, v40);
          swift_unknownObjectRelease();
          v30 = 2;
        }
      }

      else
      {
        v78 = 0;
        sub_1B8ADDF60();
        v51 = v72;
        sub_1B8AF0BF8();
        (*(v57 + 8))(v32, v55);
        (*(v39 + 8))(v27, v51);
        swift_unknownObjectRelease();
        v30 = 0;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v73);
  return v30;
}

const __CFURL *sub_1B8ADD9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8AEFC08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AEFBE8();
  v9 = sub_1B8AEFBF8();
  v10 = CGImageSourceCreateWithURL(v9, 0);

  if (!v10)
  {
    sub_1B8ADA2B4();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 1;
    swift_willThrow();

LABEL_6:
    (*(v5 + 8))(v8, v4);
    return v9;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
  if (!ImageAtIndex)
  {
    sub_1B8ADA2B4();
    swift_allocError();
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = 0;
    swift_willThrow();

    goto LABEL_6;
  }

  v9 = ImageAtIndex;
  (*(v5 + 8))(v8, v4);

  return v9;
}

uint64_t get_enum_tag_for_layout_string_So10CGImageRefa26SensitiveContentAnalysisMLE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B8ADDBA0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B8ADDBC8(void *a1)
{
  a1[1] = sub_1B8ADA260();
  a1[2] = sub_1B8ADDC18();
  a1[3] = sub_1B8ADDC6C();
  a1[4] = sub_1B8ADDCC0();
  a1[5] = sub_1B8ADDD14();
  result = sub_1B8ADA1F4();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8ADDC18()
{
  result = qword_1EBA973C8;
  if (!qword_1EBA973C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA973C8);
  }

  return result;
}

unint64_t sub_1B8ADDC6C()
{
  result = qword_1EBA973D0;
  if (!qword_1EBA973D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA973D0);
  }

  return result;
}

unint64_t sub_1B8ADDCC0()
{
  result = qword_1EBA973D8;
  if (!qword_1EBA973D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA973D8);
  }

  return result;
}

unint64_t sub_1B8ADDD14()
{
  result = qword_1EBA973E0;
  if (!qword_1EBA973E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA973E0);
  }

  return result;
}

unint64_t sub_1B8ADDD68()
{
  result = qword_1EBA97420;
  if (!qword_1EBA97420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97420);
  }

  return result;
}

unint64_t sub_1B8ADDDBC()
{
  result = qword_1EBA97428;
  if (!qword_1EBA97428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97428);
  }

  return result;
}

unint64_t sub_1B8ADDE10()
{
  result = qword_1EBA97430;
  if (!qword_1EBA97430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97430);
  }

  return result;
}

unint64_t sub_1B8ADDE64()
{
  result = qword_1EBA97438;
  if (!qword_1EBA97438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97438);
  }

  return result;
}

unint64_t sub_1B8ADDEB8()
{
  result = qword_1EBA97440;
  if (!qword_1EBA97440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97440);
  }

  return result;
}

unint64_t sub_1B8ADDF0C()
{
  result = qword_1EBA97448;
  if (!qword_1EBA97448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97448);
  }

  return result;
}

unint64_t sub_1B8ADDF60()
{
  result = qword_1EBA97450;
  if (!qword_1EBA97450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97450);
  }

  return result;
}

unint64_t sub_1B8ADE028()
{
  result = qword_1EBA97490;
  if (!qword_1EBA97490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97490);
  }

  return result;
}

unint64_t sub_1B8ADE080()
{
  result = qword_1EBA97498;
  if (!qword_1EBA97498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97498);
  }

  return result;
}

unint64_t sub_1B8ADE0D8()
{
  result = qword_1EBA974A0;
  if (!qword_1EBA974A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974A0);
  }

  return result;
}

unint64_t sub_1B8ADE130()
{
  result = qword_1EBA974A8;
  if (!qword_1EBA974A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974A8);
  }

  return result;
}

unint64_t sub_1B8ADE188()
{
  result = qword_1EBA974B0;
  if (!qword_1EBA974B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974B0);
  }

  return result;
}

unint64_t sub_1B8ADE1E0()
{
  result = qword_1EBA974B8;
  if (!qword_1EBA974B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974B8);
  }

  return result;
}

unint64_t sub_1B8ADE238()
{
  result = qword_1EBA974C0;
  if (!qword_1EBA974C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974C0);
  }

  return result;
}

unint64_t sub_1B8ADE290()
{
  result = qword_1EBA974C8;
  if (!qword_1EBA974C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974C8);
  }

  return result;
}

unint64_t sub_1B8ADE2E8()
{
  result = qword_1EBA974D0;
  if (!qword_1EBA974D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974D0);
  }

  return result;
}

unint64_t sub_1B8ADE340()
{
  result = qword_1EBA974D8;
  if (!qword_1EBA974D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974D8);
  }

  return result;
}

unint64_t sub_1B8ADE398()
{
  result = qword_1EBA974E0;
  if (!qword_1EBA974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974E0);
  }

  return result;
}

unint64_t sub_1B8ADE3F0()
{
  result = qword_1EBA974E8;
  if (!qword_1EBA974E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974E8);
  }

  return result;
}

unint64_t sub_1B8ADE448()
{
  result = qword_1EBA974F0;
  if (!qword_1EBA974F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974F0);
  }

  return result;
}

unint64_t sub_1B8ADE4A0()
{
  result = qword_1EBA974F8;
  if (!qword_1EBA974F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA974F8);
  }

  return result;
}

unint64_t sub_1B8ADE4F8()
{
  result = qword_1EBA97500;
  if (!qword_1EBA97500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97500);
  }

  return result;
}

unint64_t sub_1B8ADE550()
{
  result = qword_1EBA97508;
  if (!qword_1EBA97508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97508);
  }

  return result;
}

unint64_t sub_1B8ADE5A8()
{
  result = qword_1EBA97510;
  if (!qword_1EBA97510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97510);
  }

  return result;
}

uint64_t Condition.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = *sub_1B8AF0188();

  return v0;
}

uint64_t Condition.init()()
{
  *(v0 + 16) = *sub_1B8AF0188();

  return v0;
}

uint64_t sub_1B8ADE674(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1B8AF0858();
    v6 = v5;
    v3[5] = v4;
    v3[6] = v5;
    v7 = sub_1B8ADE718;
    v8 = v4;
  }

  else
  {
    v7 = sub_1B8ADE91C;
    v8 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, v6);
}

uint64_t sub_1B8ADE718()
{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1B8ADE7E8;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8ADE7E8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1B8ADE908, v4, v3);
}

uint64_t sub_1B8ADE920(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = *(a2 + 16);
  v5 = *(result + 24);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + 16);
    if (*(v8 + 16) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B8ADF0E4(isUniquelyReferenced_nonNull_native, v6);
      v8 = *(a2 + 16);
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8);
    sub_1B8ADF360((v8 + 16), v8 + ((*(v9 + 80) + 40) & ~*(v9 + 80)), a1);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8ADEA08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AE8, &qword_1B8AF8748);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - v11;
  if (!a1)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  if (*(*(v1 + 16) + 24) < 1)
  {
    v18 = 1;
    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B8A9EE18();
  }

  v13 = *(v1 + 16);
  result = (*(v8 + 32))(v6, &v13[((*(v8 + 80) + 40) & ~*(v8 + 80)) + *(v8 + 72) * *(v13 + 4)], v7);
  v14 = *(v13 + 4);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v17 = *(v13 + 3);
  if (v16 >= *(v13 + 2))
  {
    v16 = 0;
  }

  *(v13 + 4) = v16;
  if (__OFSUB__(v17, 1))
  {
    goto LABEL_16;
  }

  v18 = 0;
  *(v13 + 3) = v17 - 1;
LABEL_11:
  (*(v8 + 56))(v6, v18, 1, v7);
  swift_endAccess();
  v19 = (*(v8 + 48))(v6, 1, v7);
  if (v19 == 1)
  {
    sub_1B8ADEC74(v6);
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    sub_1B8AF0868();
    (*(v8 + 8))(v12, v7);
  }

  return v19 != 1;
}

uint64_t sub_1B8ADEC74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AE8, &qword_1B8AF8748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8ADECDC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AE8, &qword_1B8AF8748);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26[-v12];
  if (!a1)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  if (*(*(v2 + 16) + 24) < 1)
  {
    v19 = 1;
    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B8A9EE18();
  }

  v14 = *(v2 + 16);
  result = (*(v9 + 32))(v7, &v14[((*(v9 + 80) + 40) & ~*(v9 + 80)) + *(v9 + 72) * *(v14 + 4)], v8);
  v15 = *(v14 + 4);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v18 = *(v14 + 3);
  if (v17 >= *(v14 + 2))
  {
    v17 = 0;
  }

  *(v14 + 4) = v17;
  if (__OFSUB__(v18, 1))
  {
    goto LABEL_25;
  }

  v19 = 0;
  *(v14 + 3) = v18 - 1;
LABEL_11:
  (*(v9 + 56))(v7, v19, 1, v8);
  swift_endAccess();
  v27 = (*(v9 + 48))(v7, 1, v8);
  if (v27 != 1)
  {
    do
    {
      (*(v9 + 32))(v13, v7, v8);
      sub_1B8AF0868();
      (*(v9 + 8))(v13, v8);
      swift_beginAccess();
      if (*(*(v2 + 16) + 24) < 1)
      {
        v20 = 1;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B8A9EE18();
        }

        v21 = *(v2 + 16);
        result = (*(v9 + 32))(v7, &v21[((*(v9 + 80) + 40) & ~*(v9 + 80)) + *(v9 + 72) * *(v21 + 4)], v8);
        v22 = *(v21 + 4);
        v16 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v24 = *(v21 + 3);
        if (v23 >= *(v21 + 2))
        {
          v23 = 0;
        }

        *(v21 + 4) = v23;
        if (__OFSUB__(v24, 1))
        {
          goto LABEL_25;
        }

        v20 = 0;
        *(v21 + 3) = v24 - 1;
      }

      (*(v9 + 56))(v7, v20, 1, v8);
      swift_endAccess();
    }

    while ((*(v9 + 48))(v7, 1, v8) != 1);
  }

  v25 = v27 != 1;
  sub_1B8ADEC74(v7);
  return v25;
}

BOOL sub_1B8ADF044(_BOOL8 result)
{
  if (result)
  {
    swift_beginAccess();
    return *(*(v1 + 16) + 24) != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Condition.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Condition.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

size_t sub_1B8ADF0E4(char a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (*v2 + 16);
  v7 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  v9 = v8;
  if (v7 >= a2)
  {
    v18 = *(v8 - 8);
    v19 = *(v18 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B28, &unk_1B8AFC2B0);
    v20 = *(v18 + 72);
    v15 = swift_allocObject();
    v21 = *(v5 + 24);
    *(v15 + 16) = v7;
    *(v15 + 24) = v21;
    if (v21 >= 1)
    {
      sub_1B8ADF7C0(v15 + 16, v15 + ((v19 + 40) & ~v19), v6, v5 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_1B8AF0198();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  if (a1)
  {
    v12 = *(v5 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B28, &unk_1B8AFC2B0);
    v13 = *(v10 + 72);
    v14 = (v11 + 40) & ~v11;
    v15 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v15);
    if (v13)
    {
      if (result - v14 != 0x8000000000000000 || v13 != -1)
      {
        *(v15 + 16) = (result - v14) / v13;
        *(v15 + 24) = v12;
        *(v15 + 32) = 0;
        if (v12 >= 1)
        {
          sub_1B8ADF440(v15 + 16, v15 + v14, v6, v5 + v14);
          *(v5 + 24) = 0;
        }

LABEL_19:

        *v2 = v15;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B28, &unk_1B8AFC2B0);
  v22 = *(v10 + 72);
  v23 = (v11 + 40) & ~v11;
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v5 + 24);
    *(v15 + 16) = (result - v23) / v22;
    *(v15 + 24) = v25;
    *(v15 + 32) = 0;
    if (v25 >= 1)
    {
      sub_1B8ADF64C(v15 + 16, v15 + v23, v6, v5 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1B8ADF360(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
        result = (*(*(v10 - 8) + 16))(a2 + *(*(v10 - 8) + 72) * v5, a3, v10);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_1B8ADF440(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8) + 72) * v11 <= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1B8ADF64C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = a4 + *(v8 + 72) * v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v9 < 1)
  {
    return;
  }

  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8) + 72);
  swift_arrayInitWithCopy();
}

void sub_1B8ADF7C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        v11 = a4 + *(v8 + 72) * v4;
        v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750) - 8) + 72);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96AF0, &qword_1B8AF8750);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

uint64_t dispatch thunk of Condition.wait(isolation:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B8A7B414;

  return v10(a1, a2);
}

__CVBuffer *CVBufferRef.surface.getter()
{
  IOSurface = CVPixelBufferGetIOSurface(v0);
  if (IOSurface)
  {
    v0 = IOSurface;
  }

  else
  {
    sub_1B8A7BACC();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 2;
    *(v2 + 24) = 3;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_1B8ADFBB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v60 = a5;
  *&v59 = a4;
  *(&v59 + 1) = a3;
  v61 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975B0, &qword_1B8AFC528);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975B8, &qword_1B8AFC530);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975C0, &qword_1B8AFC538);
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975C8, &qword_1B8AFC540);
  v47 = *(v16 - 8);
  v48 = v16;
  v17 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v46 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975D0, &qword_1B8AFC548);
  v52 = *(v19 - 8);
  v20 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975D8, &qword_1B8AFC550);
  v53 = *(v23 - 8);
  v24 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA975E0, &unk_1B8AFC558);
  v28 = *(v27 - 8);
  v62 = v27;
  v63 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v46 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AE282C();
  sub_1B8AF1058();
  if (v60 <= 1u)
  {
    if (v60)
    {
      v72 = 3;
      sub_1B8AE2928();
      v33 = v62;
      sub_1B8AF0C88();
      v71 = 0;
      v23 = v55;
      v39 = v64;
      sub_1B8AF0CA8();
      if (!v39)
      {
        v70 = 1;
        sub_1B8AF0CA8();
        v35 = *(v54 + 8);
        v36 = v15;
        v40 = v23;
        goto LABEL_16;
      }

      v35 = *(v54 + 8);
      v36 = v15;
    }

    else
    {
      v67 = 0;
      sub_1B8AE2A24();
      v33 = v62;
      sub_1B8AF0C88();
      v66 = 0;
      v34 = v64;
      sub_1B8AF0CD8();
      if (!v34)
      {
        v65 = 1;
        sub_1B8AF0C98();
        (*(v53 + 8))(v26, v23);
        return (*(v63 + 8))(v31, v33);
      }

      v35 = *(v53 + 8);
      v36 = v26;
    }

    v40 = v23;
LABEL_16:
    v35(v36, v40);
    return (*(v63 + 8))(v31, v33);
  }

  if (v60 == 2)
  {
    v74 = 5;
    sub_1B8AE2880();
    v37 = v56;
    v33 = v62;
    sub_1B8AF0C88();
    v38 = v58;
    sub_1B8AF0CE8();
    (*(v57 + 8))(v37, v38);
    return (*(v63 + 8))(v31, v33);
  }

  if (v59 | *(&v59 + 1) | v61)
  {
    if (v61 == 1 && v59 == 0)
    {
      v69 = 2;
      sub_1B8AE297C();
      v41 = v46;
      v42 = v62;
      sub_1B8AF0C88();
      v44 = v47;
      v43 = v48;
    }

    else
    {
      v73 = 4;
      sub_1B8AE28D4();
      v41 = v49;
      v42 = v62;
      sub_1B8AF0C88();
      v44 = v50;
      v43 = v51;
    }

    (*(v44 + 8))(v41, v43);
  }

  else
  {
    v68 = 1;
    sub_1B8AE29D0();
    v42 = v62;
    sub_1B8AF0C88();
    (*(v52 + 8))(v22, v19);
  }

  return (*(v63 + 8))(v31, v42);
}