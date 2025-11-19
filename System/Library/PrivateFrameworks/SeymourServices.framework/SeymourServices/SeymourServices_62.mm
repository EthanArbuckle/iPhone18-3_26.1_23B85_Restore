uint64_t sub_2274BBBF4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_227666F70();
  v16 = v15;
  v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v45[0] = v14;
  v45[1] = v16;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v45, v43, &unk_27D7BC990, &qword_227670A30);
  v18 = v44;
  if (v44)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v43, v44);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v45, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v42 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v45, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v32 = sub_2273FC91C(KeyPath);
  if (v2)
  {

    swift_setDeallocating();

    v33 = *(v11 + 40);

    v34 = qword_2813B2078;
    v35 = sub_22766A100();
    (*(*(v35 - 8) + 8))(v11 + v34, v35);
  }

  else
  {
    v34 = sub_226F3E6A8(v32);

    swift_setDeallocating();

    v38 = *(v11 + 40);

    v39 = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v11 + v39, v40);
  }

  v36 = *(*v11 + 48);
  v37 = *(*v11 + 52);
  swift_deallocClassInstance();
  return v34;
}

id sub_2274BC0E0(uint64_t a1, uint64_t a2, void *a3)
{
  v158 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v157 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v160 = (&v149 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v149 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v149 - v14;
  v16 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = v16[3];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = v17;
  v26 = v18;

  sub_22766A070();
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  v150 = v26;
  *(v24 + 32) = v19;
  v161 = v24;
  v151 = v20;
  *(v24 + 40) = v20;
  swift_getKeyPath();
  v162 = a1;
  sub_227662000();
  v27 = sub_227662750();
  v28 = *(v27 - 8);
  v155 = *(v28 + 56);
  v156 = v28 + 56;
  v155(v15, 0, 1, v27);
  sub_226E93170(v15, v13, &qword_27D7B9690, qword_227670B50);
  v153 = *(v28 + 48);
  v154 = v28 + 48;
  if (v153(v13, 1, v27) == 1)
  {
    sub_226E97D1C(v13, &qword_27D7B9690, qword_227670B50);
    v167 = 0u;
    v168 = 0u;
  }

  else
  {
    *(&v168 + 1) = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v167);
    (*(v28 + 32))(boxed_opaque_existential_0, v13, v27);
  }

  v152 = v25;
  v30 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v169 = v30;
  v31 = sub_22766C820();
  sub_226E93170(&v167, v165, &unk_27D7BC990, &qword_227670A30);
  v32 = v166;
  if (v166)
  {
    v33 = __swift_project_boxed_opaque_existential_0(v165, v166);
    v164 = v15;
    v34 = *(v32 - 8);
    v35 = *(v34 + 64);
    MEMORY[0x28223BE20](v33);
    v37 = &v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v37);
    v38 = sub_22766D170();
    (*(v34 + 8))(v37, v32);
    v15 = v164;
    __swift_destroy_boxed_opaque_existential_0(v165);
  }

  else
  {
    v38 = 0;
  }

  v164 = objc_opt_self();
  v39 = [v164 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v41 = [objc_allocWithZone(v40) initWithLeftExpression:v31 rightExpression:v39 modifier:0 type:3 options:0];

  sub_226E97D1C(v15, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v167, &unk_27D7BC990, &qword_227670A30);
  v42 = qword_2813B2078;
  v43 = v161;
  swift_beginAccess();
  v44 = v41;
  v45 = v43;
  v46 = v44;
  v163 = v42;
  v47 = sub_22766A080();
  v49 = v48;
  MEMORY[0x22AA985C0]();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v144 = *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
    v45 = v161;
  }

  sub_22766C3A0();
  v47(&v167, 0);
  swift_endAccess();

  swift_getKeyPath();
  v50 = v160;
  sub_227661FE0();
  v155(v50, 0, 1, v27);
  v51 = v50;
  v52 = v157;
  sub_226E93170(v51, v157, &qword_27D7B9690, qword_227670B50);
  if (v153(v52, 1, v27) == 1)
  {
    sub_226E97D1C(v52, &qword_27D7B9690, qword_227670B50);
    v167 = 0u;
    v168 = 0u;
  }

  else
  {
    *(&v168 + 1) = v27;
    v53 = __swift_allocate_boxed_opaque_existential_0(&v167);
    (*(v28 + 32))(v53, v52, v27);
  }

  v54 = sub_22766C820();
  sub_226E93170(&v167, v165, &unk_27D7BC990, &qword_227670A30);
  v55 = v166;
  if (v166)
  {
    v56 = __swift_project_boxed_opaque_existential_0(v165, v166);
    v57 = *(v55 - 8);
    v58 = *(v57 + 64);
    MEMORY[0x28223BE20](v56);
    v60 = &v149 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v60);
    v61 = sub_22766D170();
    (*(v57 + 8))(v60, v55);
    __swift_destroy_boxed_opaque_existential_0(v165);
  }

  else
  {
    v61 = 0;
  }

  v62 = [v164 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v63 = [objc_allocWithZone(v40) initWithLeftExpression:v54 rightExpression:v62 modifier:0 type:1 options:0];

  sub_226E97D1C(v160, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v167, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v64 = v63;
  v65 = sub_22766A080();
  v67 = v66;
  MEMORY[0x22AA985C0]();
  if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v145 = *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v65(&v167, 0);
  swift_endAccess();

  swift_getKeyPath();
  v68 = type metadata accessor for DateIntervalSessionThreshold();
  v69 = *(v162 + v68[5]);
  v70 = MEMORY[0x277D839F8];
  *(&v168 + 1) = MEMORY[0x277D839F8];
  *&v167 = v69;

  v71 = sub_22766C820();
  sub_226E93170(&v167, v165, &unk_27D7BC990, &qword_227670A30);
  v72 = v166;
  if (v166)
  {
    v73 = __swift_project_boxed_opaque_existential_0(v165, v166);
    v74 = *(v72 - 8);
    v75 = *(v74 + 64);
    MEMORY[0x28223BE20](v73);
    v77 = &v149 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v74 + 16))(v77);
    v78 = sub_22766D170();
    v79 = v77;
    v70 = MEMORY[0x277D839F8];
    (*(v74 + 8))(v79, v72);
    v45 = v161;
    __swift_destroy_boxed_opaque_existential_0(v165);
  }

  else
  {
    v78 = 0;
  }

  v80 = [v164 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v81 = [objc_allocWithZone(v40) initWithLeftExpression:v71 rightExpression:v80 modifier:0 type:2 options:0];

  sub_226E97D1C(&v167, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v82 = v81;
  v83 = sub_22766A080();
  v85 = v84;
  MEMORY[0x22AA985C0]();
  if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v146 = *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v83(&v167, 0);
  swift_endAccess();

  swift_getKeyPath();
  v86 = *(v162 + v68[7]);
  *(&v168 + 1) = v70;
  *&v167 = v86;

  v87 = sub_22766C820();
  sub_226E93170(&v167, v165, &unk_27D7BC990, &qword_227670A30);
  v88 = v166;
  if (v166)
  {
    v89 = __swift_project_boxed_opaque_existential_0(v165, v166);
    v160 = &v149;
    v90 = *(v88 - 8);
    v91 = *(v90 + 64);
    MEMORY[0x28223BE20](v89);
    v93 = v68;
    v94 = v40;
    v95 = v70;
    v96 = &v149 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v90 + 16))(v96);
    v97 = sub_22766D170();
    v98 = v96;
    v70 = v95;
    v40 = v94;
    v68 = v93;
    (*(v90 + 8))(v98, v88);
    v45 = v161;
    __swift_destroy_boxed_opaque_existential_0(v165);
  }

  else
  {
    v97 = 0;
  }

  v99 = [v164 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v100 = [objc_allocWithZone(v40) initWithLeftExpression:v87 rightExpression:v99 modifier:0 type:2 options:0];

  sub_226E97D1C(&v167, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v101 = v100;
  v102 = sub_22766A080();
  v104 = v103;
  MEMORY[0x22AA985C0]();
  if (*((*v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v147 = *((*v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v102(&v167, 0);
  swift_endAccess();

  swift_getKeyPath();
  v105 = v162 + v68[6];
  v106 = *v105;
  if (*(v105 + 8))
  {
    v106 = 1.79769313e308;
  }

  *(&v168 + 1) = v70;
  *&v167 = v106;

  v107 = sub_22766C820();
  sub_226E93170(&v167, v165, &unk_27D7BC990, &qword_227670A30);
  v108 = v166;
  if (v166)
  {
    v109 = __swift_project_boxed_opaque_existential_0(v165, v166);
    v110 = *(v108 - 8);
    v111 = *(v110 + 64);
    MEMORY[0x28223BE20](v109);
    v113 = &v149 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v110 + 16))(v113);
    v114 = sub_22766D170();
    (*(v110 + 8))(v113, v108);
    __swift_destroy_boxed_opaque_existential_0(v165);
  }

  else
  {
    v114 = 0;
  }

  v115 = [v164 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v116 = [objc_allocWithZone(v40) initWithLeftExpression:v107 rightExpression:v115 modifier:0 type:1 options:0];

  sub_226E97D1C(&v167, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v117 = v116;
  v118 = sub_22766A080();
  v120 = v119;
  MEMORY[0x22AA985C0]();
  if (*((*v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v148 = *((*v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v118(&v167, 0);
  swift_endAccess();

  swift_getKeyPath();
  *(&v168 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  *&v167 = v158;

  v121 = sub_22766C820();
  sub_226E93170(&v167, v165, &unk_27D7BC990, &qword_227670A30);
  v122 = v166;
  if (v166)
  {
    v123 = __swift_project_boxed_opaque_existential_0(v165, v166);
    v124 = *(v122 - 8);
    v125 = *(v124 + 64);
    MEMORY[0x28223BE20](v123);
    v127 = &v149 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v124 + 16))(v127);
    v128 = sub_22766D170();
    (*(v124 + 8))(v127, v122);
    __swift_destroy_boxed_opaque_existential_0(v165);
  }

  else
  {
    v128 = 0;
  }

  v129 = [v164 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v130 = [objc_allocWithZone(v40) initWithLeftExpression:v121 rightExpression:v129 modifier:0 type:10 options:0];

  sub_226E97D1C(&v167, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v131 = v130;
  v132 = sub_22766A080();
  v134 = v133;
  MEMORY[0x22AA985C0]();
  if (*((*v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v130 = *((*v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v132(&v167, 0);
  swift_endAccess();

  v135 = v159;
  v136 = sub_226EC6320(0);
  if (v135)
  {
  }

  else
  {
    v137 = v136;
    [v136 setResultType_];
    [v137 setFetchLimit_];
    [v137 setFetchOffset_];
    [v137 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v138 = v152;
    v130 = sub_22766C9D0();

    swift_setDeallocating();
    v140 = qword_2813B2078;
    v141 = sub_22766A100();
    (*(*(v141 - 8) + 8))(v45 + v140, v141);
    v142 = *(*v45 + 48);
    v143 = *(*v45 + 52);
    swift_deallocClassInstance();
  }

  return v130;
}

unint64_t sub_2274BD454()
{
  result = qword_28139BDC0;
  if (!qword_28139BDC0)
  {
    sub_227662750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BDC0);
  }

  return result;
}

uint64_t sub_2274BD4AC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91A0, &qword_2276732C0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_2276644D0();
  v16 = v15;
  v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v45[0] = v14;
  v45[1] = v16;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v45, v43, &unk_27D7BC990, &qword_227670A30);
  v18 = v44;
  if (v44)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v43, v44);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C50 qword_2276759C0))];

  sub_226E97D1C(v45, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v42 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v45, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v32 = sub_2273FCB14(KeyPath);
  if (v2)
  {

    swift_setDeallocating();

    v33 = *(v11 + 40);

    v34 = qword_2813B2078;
    v35 = sub_22766A100();
    (*(*(v35 - 8) + 8))(v11 + v34, v35);
  }

  else
  {
    v34 = sub_226F3E6A8(v32);

    swift_setDeallocating();

    v38 = *(v11 + 40);

    v39 = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v11 + v39, v40);
  }

  v36 = *(*v11 + 48);
  v37 = *(*v11 + 52);
  swift_deallocClassInstance();
  return v34;
}

void *sub_2274BD998(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91A0, &qword_2276732C0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  v46 = v15;
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  v41 = v10;
  v42 = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  swift_getKeyPath();
  v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v45[0] = a1;
  v45[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v45, v43, &unk_27D7BC990, &qword_227670A30);
  v18 = v44;
  if (v44)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v43, v44);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C50 qword_2276759C0))];

  sub_226E97D1C(v45, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = v26;
  v28 = v45;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v45, 0);
  swift_endAccess();

  v32 = sub_2272847CC(0);
  if (v3)
  {
  }

  else
  {
    v33 = v32;
    [v32 setResultType_];
    [v33 setFetchLimit_];
    [v33 setFetchOffset_];
    [v33 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v34 = v46;
    v28 = sub_22766C9D0();

    swift_setDeallocating();
    v36 = qword_2813B2078;
    v37 = sub_22766A100();
    (*(*(v37 - 8) + 8))(v14 + v36, v37);
    v38 = *(*v14 + 48);
    v39 = *(*v14 + 52);
    swift_deallocClassInstance();
  }

  return v28;
}

uint64_t WorkoutPlanGenerationScaffold.copyWith(planIdentifier:requestedModalitySchedulePreferences:requestedTotalDailyDuration:requestedWeekdays:requestedWeekCount:maxWorkoutsPerDay:modalityDurationMapping:configuration:currentSchedule:modalitiesSelected:scoringMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void (*a6)(void *@<X8>)@<X5>, int a7@<W6>, void *a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v106 = a6;
  v107 = a8;
  LODWORD(v110) = a7;
  v116 = a5;
  LODWORD(v104) = a4;
  v105 = a3;
  v113 = a2;
  v102 = a9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v100 = *(v99 - 8);
  v17 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  v101 = &v98 - v18;
  v19 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v112 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v98 - v24;
  v114 = sub_227667370();
  v111 = *(v114 - 8);
  v26 = *(v111 + 64);
  MEMORY[0x28223BE20](v114);
  v117 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v98 - v30;
  v32 = sub_2276627D0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v37;
  sub_226E93170(a1, v31, &unk_27D7BB9D0, &qword_227671550);
  v39 = *(v33 + 48);
  v40 = v39(v31, 1, v38);
  v109 = v33;
  if (v40 != 1)
  {
    (*(v33 + 32))(v36, v31, v38);
    v41 = v113;
    if (v113)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  (*(v33 + 16))(v36, v15, v38);
  if (v39(v31, 1, v38) != 1)
  {
    sub_226E97D1C(v31, &unk_27D7BB9D0, &qword_227671550);
  }

  v41 = v113;
  if (!v113)
  {
LABEL_10:
    v41 = *(v15 + v19[5]);
  }

LABEL_5:
  v42 = v110;
  if (v104)
  {
    v105 = *(v15 + v19[7]);
  }

  if (v116)
  {
    v104 = v116;
  }

  else
  {
    v104 = *(v15 + v19[8]);
  }

  v110 = v38;
  if ((v42 & 1) == 0)
  {
    v44 = a11;
    v43 = a12;
    if ((a10 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v107 = *(v15 + v19[10]);
    v108 = v36;
    if (v44)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v106 = *(v15 + v19[9]);
  v44 = a11;
  v43 = a12;
  if (a10)
  {
    goto LABEL_17;
  }

LABEL_14:
  v108 = v36;
  if (v44)
  {
LABEL_15:
    v103 = v44;
    goto LABEL_19;
  }

LABEL_18:
  v103 = *(v15 + v19[13]);

LABEL_19:
  sub_226E93170(v43, v25, &qword_27D7BB3E8, &unk_227686370);
  v45 = v111;
  v46 = *(v111 + 48);
  v47 = v114;
  if (v46(v25, 1, v114) != 1)
  {
    (*(v45 + 32))(v117, v25, v47);

    v50 = v45;
    v51 = a14;
    if (a13)
    {
      goto LABEL_23;
    }

LABEL_26:
    v52 = *(v15 + v19[15]);

    v53 = a15;
    if (v51)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  (*(v45 + 16))(v117, v15 + v19[14], v47);
  v48 = v46(v25, 1, v47);

  v49 = v48 == 1;
  v47 = v114;
  v50 = v45;
  if (!v49)
  {
    sub_226E97D1C(v25, &qword_27D7BB3E8, &unk_227686370);
  }

  v51 = a14;
  if (!a13)
  {
    goto LABEL_26;
  }

LABEL_23:
  v52 = a13;
  v53 = a15;
  if (v51)
  {
LABEL_24:
    v113 = v51;
    goto LABEL_28;
  }

LABEL_27:
  v113 = *(v15 + v19[16]);

LABEL_28:
  if (v53 == 2)
  {
    v53 = *(v15 + v19[12]);
  }

  v54 = v112;
  (*(v109 + 16))(v112, v108, v110);
  *&v54[v19[5]] = v41;

  v55 = sub_226F491E4(v41);
  *&v54[v19[6]] = v55;
  v56 = v104;
  *&v54[v19[7]] = v105;
  *&v54[v19[8]] = v56;
  *&v54[v19[9]] = v106;
  v54[v19[12]] = v53 & 1;
  *&v54[v19[10]] = v107;
  *&v54[v19[13]] = v103;
  (*(v50 + 16))(&v54[v19[14]], v117, v47);
  *&v54[v19[15]] = v52;
  *&v54[v19[16]] = v113;
  v57 = v55 + 56;
  v58 = 1 << *(v55 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v55 + 56);
  v61 = (v58 + 63) >> 6;
  v116 = v55;

  v106 = 0;
  v62 = 0;
  v107 = MEMORY[0x277D84F98];
  for (i = v19; v60; v19 = i)
  {
LABEL_40:
    while (1)
    {
      v64 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v65 = *(v116 + 48) + 24 * (v64 | (v62 << 6));
      v67 = *v65;
      v66 = *(v65 + 8);
      v68 = *(v65 + 16);
      sub_226EB396C(*v65, v66, *(v65 + 16));
      v69 = sub_2276672C0();
      if (*(v69 + 16))
      {
        break;
      }

      sub_226EB2DFC(v67, v66, v68);
LABEL_35:

      v19 = i;
      if (!v60)
      {
        goto LABEL_36;
      }
    }

    v70 = sub_226F491D8(v67, v66, v68);
    v72 = v71;
    sub_226EB2DFC(v67, v66, v68);
    if ((v72 & 1) == 0)
    {
      goto LABEL_35;
    }

    v73 = *(v100 + 72);
    v74 = *(v69 + 56) + v73 * v70;
    v75 = v101;
    sub_226E93170(v74, v101, &qword_27D7B88C0, &unk_22767A720);

    sub_226EA9E3C(v106);
    v76 = v107;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118 = v76;
    v79 = sub_226F3ADC4(v75);
    v80 = v76[2];
    v81 = (v78 & 1) == 0;
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      goto LABEL_58;
    }

    v83 = v78;
    if (v76[3] >= v82)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v86 = v118;
        if (v78)
        {
          goto LABEL_51;
        }
      }

      else
      {
        sub_226FF2414();
        v86 = v118;
        if (v83)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      sub_226FE6DD4(v82, isUniquelyReferenced_nonNull_native);
      v84 = sub_226F3ADC4(v101);
      if ((v83 & 1) != (v85 & 1))
      {
        goto LABEL_61;
      }

      v79 = v84;
      v86 = v118;
      if (v83)
      {
        goto LABEL_51;
      }
    }

    sub_227444F98(&v118);
    v87 = v118;
    v86[(v79 >> 6) + 8] |= 1 << v79;
    sub_226E93170(v101, v86[6] + v79 * v73, &qword_27D7B88C0, &unk_22767A720);
    *(v86[7] + 8 * v79) = v87;
    v88 = v86[2];
    v89 = __OFADD__(v88, 1);
    v90 = v88 + 1;
    if (v89)
    {
      goto LABEL_60;
    }

    v86[2] = v90;
LABEL_51:
    v107 = v86;
    v91 = v86[7];
    v92 = *(v91 + 8 * v79);
    v89 = __OFADD__(v92, 1);
    v93 = v92 + 1;
    if (v89)
    {
      goto LABEL_59;
    }

    *(v91 + 8 * v79) = v93;
    sub_226E97D1C(v101, &qword_27D7B88C0, &unk_22767A720);
    v106 = sub_227444F98;
  }

LABEL_36:
  while (1)
  {
    v63 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v63 >= v61)
    {

      v94 = v112;
      v95 = v113;
      *&v112[v19[11]] = v107;
      v96 = sub_22746B5DC(v95);

      (*(v111 + 8))(v117, v114);
      (*(v109 + 8))(v108, v110);
      *(v94 + v19[17]) = v96;
      sub_227442570(v94, v102);
      return sub_226EA9E3C(v106);
    }

    v60 = *(v57 + 8 * v63);
    ++v62;
    if (v60)
    {
      v62 = v63;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t CoachingEventType.init(type:intensity:range:shouldShowPlus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v13 = a1 == 0x52656E696C636E69 && a2 == 0xEA00000000006E75;
  if (v13 || (sub_22766D190() & 1) != 0)
  {

    if (a7)
    {
      return 0;
    }
  }

  else
  {
    if (a1 == 0x57656E696C636E69 && a2 == 0xEB000000006B6C61 || (sub_22766D190() & 1) != 0)
    {

      if ((a7 & 1) == 0)
      {
        return a5;
      }

      return 0;
    }

    if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079 || (sub_22766D190() & 1) != 0)
    {

      if (a4)
      {
        return a3;
      }

      return 0;
    }

    if (a1 == 7172210 && a2 == 0xE300000000000000 || (sub_22766D190() & 1) != 0)
    {

      if ((a7 & 1) != 0 || a8 == 2)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == 7172211 && a2 == 0xE300000000000000)
      {

        if ((a7 & 1) == 0)
        {
          return a5;
        }

        return 0;
      }

      v17 = sub_22766D190();

      if (v17 & 1) == 0 || (a7)
      {
        return 0;
      }
    }
  }

  return a5;
}

uint64_t CoachingEventType.rawValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  v4 = 0x52656E696C636E69;
  v5 = 0x7469736E65746E69;
  v6 = 7172210;
  if (v3 != 3)
  {
    v6 = 7172211;
  }

  if (v3 != 2)
  {
    v5 = v6;
  }

  if (a3 >> 5)
  {
    v4 = 0x57656E696C636E69;
  }

  if ((a3 >> 5) <= 1u)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

double sub_2274BEB48(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

id sub_2274BEBCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScriptConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2274BEC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  (*(a3 + 24))(&v15, a2, a3);
  PersistenceEntityName.rawValue.getter();
  v8 = sub_22766BFD0();

  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  swift_getAssociatedTypeWitness();
  v10 = swift_dynamicCastUnknownClass();
  v11 = v10;
  if (v10)
  {
    (*(a3 + 64))(v10, a1, a2, a3);
    if (v3)
    {
    }
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v11;
}

void *sub_2274BEDC0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanTemplate();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F1DD6C(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_2274BEF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  (*(a3 + 24))(&v13, a2, a3);
  PersistenceEntityName.rawValue.getter();
  v7 = sub_22766BFD0();

  v8 = [v6 entityForName:v7 inManagedObjectContext:a1];

  if (v8)
  {
    v9 = [v8 relationshipsByName];

    sub_2274CBD54();
    v10 = sub_22766BEB0();

    return v10;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];

    return sub_2271480A0(v12);
  }
}

void *sub_2274BF03C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F5C16C(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BF17C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitStandaloneWorkoutJob();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F5D3A8(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BF2D8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCoachingEvent();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_226F5EA8C(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274BF408(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitWorkout();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F79544(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BF54C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedAchievementEnvironmentCache();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F94E58(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BF690(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogPreview();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226F9789C(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274BF7D0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogFilterPropertyType();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51000], v6);
    return swift_willThrow();
  }

  return result;
}

void *sub_2274BF93C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedPlaylist();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226FADA50(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BFAC4(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedAchievementNotificationRecord();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226FC0170(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BFC04(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetBundle();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226FC3278(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BFD44(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSocialMediaHandle();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_226FC4998(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274BFE84(uint64_t a1)
{
  v3 = *v1;
  v4 = objc_opt_self();
  v5 = sub_22766BFD0();
  v6 = [v4 insertNewObjectForEntityForName:v5 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitActivityType();
  v7 = swift_dynamicCastClass();
  v8 = v7;
  if (v7)
  {
    if (v3 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v3;
    }

    [v7 setValue_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_2274BFFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x22AA99A00]();
  sub_2274C45CC(a1, a2, a3, a4, &v11, &v12);
  objc_autoreleasePoolPop(v9);
  if (v4)
  {
  }

  sub_22766C3D0();
  swift_getWitnessTable();
  return sub_22766C740();
}

void *sub_2274C00BC(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedPlaylistItem();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227000224(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C01FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCommentaryEvent();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2270654E0(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C032C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedModalityIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C0480(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogTipReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22706E864(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C05C4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedContributorIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C0718(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedProgramCompletion();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227070680(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274C0858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedPrivacyAcknowledgement();
  v10 = swift_dynamicCastClass();
  v11 = v10;
  if (v10)
  {
    (*(a3 + 64))(v10, a1, a2, a3);
    if (v3)
    {
    }
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v11;
}

void *sub_2274C09C4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanMusicIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C0B18(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedTrainerIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_2274C0C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment();
  v10 = swift_dynamicCastClass();
  v11 = v10;
  if (v10)
  {
    (*(a3 + 64))(v10, a1, a2, a3);
    if (v3)
    {
    }
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v11;
}

void *sub_2274C0DD8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedContributor();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2270A7BF0(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C0F1C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSessionScores();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227105770(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C105C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedPlaybackVoucher();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_227106070(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C118C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogTipJournal();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22711A154(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C12CC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_226F92BF8(a1);
}

uint64_t sub_2274C12EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedConfiguration();
  v10 = swift_dynamicCastClass();
  v11 = v10;
  if (v10)
  {
    (*(a3 + 64))(v10, a1, a2, a3);
    if (v3)
    {
    }
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v11;
}

void *sub_2274C1474(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogWorkoutMetadata();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2271515C4(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C15B8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanScheduledItem();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227159074(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C16FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedScoreSummary();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_22717DDCC(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C182C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetResumableLoad();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2271E10FC(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C195C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedLanguageDisclaimer();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2271E3C64(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C1AA0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_226F937FC(a1);
}

void *sub_2274C1AC0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedSkillLevelIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C1C14(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedArchivedSession();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2272187F4(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C1D74(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C1EC8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSkillLevel();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2272B897C(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C2008(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedOnboardingModalityIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C215C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedBodyFocusIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C22B0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedEquipmentIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C2420(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogModalityMetadata();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2272C4068(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C2564(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetLoadFailure();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2272CD478(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C2694(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedOnboardingSurveyResult();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2272D6D20(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C27D8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedTrainerEvent();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2272F2A5C(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C2908(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return sub_226F94AE4(a1);
}

void *sub_2274C292C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedBookmark();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22732D7B8(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_2274C2A94(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

void *sub_2274C2B88(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogModalityReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227335928(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C2CE8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogThemeCategory();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227338AA4(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C2E2C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetEntry();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_227339B04(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2274C2F5C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogModalityFeature();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51000], v6);
    return swift_willThrow();
  }

  return result;
}

void *sub_2274C3100(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedEngagementBadge();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22736D340(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C3240(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2273944F8(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C338C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetRequestKeyMetadata();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_22739B3A4(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C34BC(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanTrainerIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C3610(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
  v10 = swift_dynamicCastClass();
  v11 = v10;
  if (v10)
  {
    sub_2273A7390(v10, v5, v4, v6);
    if (v2)
    {
    }
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v11;
}

void *sub_2274C3788(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetRequestReference();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2273F9784(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C38B8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogWorkoutReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2273F99AC(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274C39FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogWorkoutTrait();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51000], v6);
    return swift_willThrow();
  }

  return result;
}

void *sub_2274C3B84(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedUpNextQueueItem();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227445B48(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C3CC4(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedBurnBarDisplayPreference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227446784(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C3E04(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedProgressDisplayPreference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227447310(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C3F44(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSyncEncryptionKey();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22745B470(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4084(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanModalityPreference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22747F688(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C41C8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedMediaMoment();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2274B3C0C(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4324(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogTipCategoryIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C4478(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedThemeIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_2274C45CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v15[2] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  swift_getAssociatedTypeWitness();
  v10 = sub_22766C3D0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  WitnessTable = swift_getWitnessTable();
  result = sub_2274F47D0(sub_2274CC580, v14, v10, a2, v11, WitnessTable, MEMORY[0x277D84950], v15);
  if (v6)
  {
    *a5 = v15[0];
  }

  else
  {
    *a6 = result;
  }

  return result;
}

void *sub_2274C46F8(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSyncOperation();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2274CF66C(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4838(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedPersonalizationPrivacyPreference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2274EBA10(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4978(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = objc_opt_self();
  v6 = sub_22766BFD0();
  v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

  type metadata accessor for ManagedMusicGenreIdentifier();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = sub_22766BFD0();
    [v8 setIdentifier_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C4ACC(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedRecommendation();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2274F8D04(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4C0C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedRecentSearchTerm();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2274F9870(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4D68(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedTrainerMetadata();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22750A3AC(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C4EAC(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedTrainerReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22750B934(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274C5024(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAlternativeActivityType();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51000], v6);
    return swift_willThrow();
  }

  return result;
}

void *sub_2274C5190(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogProgramReference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_227535488(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_2274C52D4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogAccessibilityFeature();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  else
  {
    v6 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51000], v6);
    return swift_willThrow();
  }

  return result;
}

void *sub_2274C545C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedArchivedWorkoutPlanSession();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275A45E0(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C55A0(uint64_t a1)
{
  v3 = *v1;
  v4 = objc_opt_self();
  v5 = sub_22766BFD0();
  v6 = [v4 insertNewObjectForEntityForName:v5 inManagedObjectContext:a1];

  type metadata accessor for ManagedUserAccountNotification();
  v7 = swift_dynamicCastClass();
  v8 = v7;
  if (v7)
  {
    [v7 setShownState_];
  }

  else
  {

    v9 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51000], v9);
    swift_willThrow();
  }

  return v8;
}

void *sub_2274C56FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAssetBundleLoadFailure();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
    sub_2275BC7B0(v5);
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v6;
}

void *sub_2274C582C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedMusicTrack();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275D53A4(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C596C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitMindfulSession();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275D7AC0(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C5AAC(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogSyncAnchor();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275E18B0(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C5C08(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedMetricsDisplayPreference();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275E59B4(v6);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C5D48(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlan();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_2275EEB10(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

void *sub_2274C5E8C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_22764CD64(v6, a1);
    if (v1)
    {
    }
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_2274C5FD0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C60CC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C61C8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C62C4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C63C0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C64BC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C65B8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C66B4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C67B0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C68AC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C69A8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6AA4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6BA0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6C9C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6D98(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6E94(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C6F90(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C708C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7188(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7284(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7380(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C747C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7578(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7674(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7770(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C786C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7968(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7A64(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7B60(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7C5C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7D58(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7E54(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C7F50(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C804C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8148(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8244(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8340(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C843C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8538(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8634(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8730(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C882C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8928(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8A24(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8B20(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8C1C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8D18(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8E14(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C8F10(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C900C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9108(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9204(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9300(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C93FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C94F8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C95F4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C96F0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C97EC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C98E8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C99E4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9AE0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9BDC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9CD8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9DD4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9ED0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274C9FCC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA0C8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA1C4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA2C0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA3BC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA4B8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA5B4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA6B0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA7AC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA8A8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CA9A4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAAA0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAB9C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAC98(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAD94(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAE90(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CAF8C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB088(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB184(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB280(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB37C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB478(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB574(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB670(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB76C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB868(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CB964(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBA60(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBB5C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBC58(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBD54()
{
  result = qword_281398A78;
  if (!qword_281398A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398A78);
  }

  return result;
}

unint64_t sub_2274CBDA0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBE9C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CBF98(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CC094(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CC190(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CC28C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CC388(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

unint64_t sub_2274CC484(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_2274CBD54();
    v6 = sub_22766BEB0();

    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_2271480A0(v8);
  }
}

uint64_t sub_2274CC580(id *a1, void *a2)
{
  result = (*(*(v2 + 24) + 48))(*a1, *(v2 + 16), *(v2 + 24));
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2274CC600@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22766D030();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_2274CC654()
{
  v0 = sub_22714BCB0(MEMORY[0x277D84F90]);
  sub_227664EC0();
  sub_22714F81C();
  sub_22766D270();
  v1 = sub_22766C750();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0;
  sub_22736C1E8(v1, isUniquelyReferenced_nonNull_native);
  v3 = sub_22722CFA0(v0);

  if (v3[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97E0, &qword_227674C38);
    v4 = sub_22766D010();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v7 = v4;

  sub_22722D490(v5, 1, &v7);

  return v7;
}

uint64_t type metadata accessor for CreateScaffoldFailureAnalyticsEvent()
{
  result = qword_27D7BE070;
  if (!qword_27D7BE070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2274CC814()
{
  result = qword_27D7BE080;
  if (!qword_27D7BE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE080);
  }

  return result;
}

void sub_2274CC8D8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = a1;
  v5(a2, a3);
  v13[5] = v6;
  v7 = swift_readAtKeyPath();
  v10 = *v8;
  v9 = v8[1];

  v7(v13, 0);

  if (v9)
  {
    v13[0] = v10;
    v13[1] = v9;
    sub_227663AE0();
  }

  else
  {
    v11 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51028], v11);
    swift_willThrow();
  }
}

uint64_t sub_2274CCA70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - 16;
  v4 = *(a4 - 16);
  return sub_2274CCAE8(a1, a3, *(v5 + 8));
}

uint64_t sub_2274CCA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274CCAE8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = a1;
  v5(v4, a3);
  sub_227663AD0();
  swift_setAtReferenceWritableKeyPath();
}

uint64_t getEnumTagSinglePayload for AssetDeviceScreen(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssetDeviceScreen(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_2274CCC00(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_2276694E0();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = [a1 action];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  sub_22766C000();

  v16 = sub_2276640E0();
  if (v16 == 2)
  {
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [a1 zoneName];
  if (!v18)
  {
    goto LABEL_10;
  }

  v26 = v17;
  v19 = v18;
  sub_22766C000();

  sub_2276694B0();
  v20 = v28;
  if ((*(v28 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8460, qword_2276709E0);
LABEL_10:
    v23 = sub_227664DD0();
    sub_2274CF5B4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
    swift_willThrow();

    return;
  }

  (*(v20 + 32))(v13, v6, v7);
  v21 = [a1 syncIdentifier];
  if (!v21)
  {
    (*(v20 + 8))(v13, v7);
    goto LABEL_10;
  }

  v22 = v21;
  v25 = sub_22766C000();

  [a1 domain];
  if (sub_2276633B0() == 2)
  {
    (*(v20 + 8))(v13, v7);

    goto LABEL_10;
  }

  [a1 timestamp];
  (*(v20 + 16))(v11, v13, v7);
  sub_227664100();

  (*(v20 + 8))(v13, v7);
}

size_t static SyncOperation.representativeSamples()()
{
  v36 = sub_2276694E0();
  v0 = *(v36 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE088, &qword_227688528);
  v38 = *(v34 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = v28 - v4;
  v33 = sub_227664140();
  v37 = *(v33 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766C090();
  v8 = sub_22766C330();

  sub_226F5D274();
  v9 = sub_22766BE70();
  v10 = sub_2276694D0();
  v11 = *(v10 + 16);
  v29 = v0;
  if (v11)
  {
    v12 = sub_226EB734C(v11, 0, &qword_27D7BAED8, &qword_227679968, MEMORY[0x277D53DA0]);
    v13 = sub_226EB7470(v55, (v12 + ((*(v0 + 80) + 32) & ~*(v0 + 80))), v11, v10, MEMORY[0x277D53DA0]);
    sub_226EBB21C();
    if (v13 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_5:
  v53 = &unk_283A954C8;
  v54 = &unk_283A954A0;
  v55[0] = &v54;
  v55[1] = &v53;
  v51 = v9;
  v52 = v8;
  v55[2] = &v52;
  v55[3] = &v51;
  v50 = v12;
  v55[4] = &v50;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE090, &qword_227688530);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE098, &qword_227688538);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D30, &qword_227671EF8);
  v40 = sub_226F5BF60(&qword_27D7BE0A0, &qword_27D7BE090, &qword_227688530);
  v41 = sub_226F5BF60(&qword_27D7BE0A8, &qword_27D7BE098, &qword_227688538);
  v42 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v43 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v44 = sub_226F5BF60(&qword_27D7B8D40, &qword_27D7B8D30, &qword_227671EF8);
  v14 = sub_2276638E0();

  v15 = *(v14 + 16);
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    result = sub_226F1F0F0(0, v15, 0);
    v17 = 0;
    v18 = v39;
    v30 = v14 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v29 += 2;
    v28[1] = v37 + 32;
    v31 = v14;
    v28[0] = v15;
    v19 = v32;
    while (v17 < *(v14 + 16))
    {
      sub_226E93170(v30 + *(v38 + 72) * v17, v19, &qword_27D7BE088, &qword_227688528);
      v20 = *v19;
      v21 = v7;
      v22 = v19[1];
      v23 = *(v19 + 1);
      v24 = *(v19 + 2);
      v25 = *(v19 + 3);
      (*v29)(v35, &v19[*(v34 + 96)], v36);

      sub_227664100();
      sub_226E97D1C(v19, &qword_27D7BE088, &qword_227688528);
      v39 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1F0F0(v26 > 1, v27 + 1, 1);
        v18 = v39;
      }

      ++v17;
      *(v18 + 16) = v27 + 1;
      result = (*(v37 + 32))(v18 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27, v21, v33);
      v7 = v21;
      v14 = v31;
      if (v28[0] == v17)
      {

        return v18;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_2274CD6BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2274CD894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

size_t sub_2274CD91C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE98, &qword_227679910);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2274CDA60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_2274CDBA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABB0, &qword_2276795A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_2274CDC28(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2274CDDB0(uint64_t a1)
{
  result = sub_2274CF5B4(&qword_28139B9B0, MEMORY[0x277D506C0]);
  *(a1 + 8) = result;
  return result;
}

void *sub_2274CDE20(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2274CDF90(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2274CE12C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 64;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 56);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_2274CE3EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2274CE540(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2274CE694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(v3 + 1);
  v8 = *(v3 + 2);
  v9 = *(v3 + 24);
  v10 = v3[1];
  v35 = *v3;
  v36 = v10;
  v37 = v3[2];
  LOBYTE(v38) = *(v3 + 48);
  v34 = v9;
  if (!a2)
  {
LABEL_23:
    v12 = 0;
    v16 = result;
    v15 = v8;
LABEL_28:
    v28 = v34;
    v29 = v36;
    *a1 = v35;
    *(a1 + 16) = v29;
    *(a1 + 32) = v37;
    *(a1 + 48) = v38;
    *(a1 + 56) = v16;
    *(a1 + 64) = v15;
    *(a1 + 72) = v28;
    sub_22732CD14(result, v8, v9);
    return v12;
  }

  if (!a3)
  {
    v16 = result;
    v15 = v8;
    v12 = 0;
    goto LABEL_28;
  }

  v11 = *v3;
  v39 = v3[2];
  v40 = *(v3 + 48);
  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v8;
    v32 = result;
    v14 = 1;
    v31 = v8;
    v15 = v8;
    v16 = result;
    v30 = v9;
    v17 = v9;
    while (1)
    {
      if (v17 & 1) != 0 || (v40)
      {
        goto LABEL_34;
      }

      if (DWORD2(v39) != v15)
      {
        break;
      }

      if (v16 == v39)
      {
        v34 = 0;
LABEL_27:
        v8 = v31;
        result = v32;
        v9 = v30;
        goto LABEL_28;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v18 = 1 << *(v11 + 32);
      if (v16 >= v18)
      {
        goto LABEL_30;
      }

      v19 = v16 >> 6;
      v20 = *(v11 + 64 + 8 * (v16 >> 6));
      if (((v20 >> v16) & 1) == 0)
      {
        goto LABEL_31;
      }

      if (*(v11 + 36) != v15)
      {
        goto LABEL_32;
      }

      v21 = v20 & (-2 << (v16 & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (v11 + 72 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            v18 = __clz(__rbit64(v25)) + v22;
            break;
          }
        }
      }

      *a2 = v16;
      *(a2 + 8) = v15;
      *(a2 + 16) = 0;
      if (v14 == a3)
      {
        v34 = 0;
        sub_226E93170(&v39, v33, &qword_27D7BE0B0, qword_227688588);
        v16 = v18;
        v15 = v13;
        v12 = a3;
        goto LABEL_27;
      }

      a2 += 24;
      result = sub_226E93170(&v39, v33, &qword_27D7BE0B0, qword_227688588);
      v17 = 0;
      v15 = v13;
      v16 = v18;
      v12 = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2274CE900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  v43 = *(v46 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v44 = &v39 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v37 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v37;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v37 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v40 = -1 << *(a4 + 32);
    v41 = a1;
    result = 0;
    v17 = 0;
    a1 = ((63 - v14) >> 6);
    v18 = 1;
    v42 = a3;
    while (v16)
    {
      v48 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v47 = v17;
      v22 = v21 | (v17 << 6);
      v23 = *(a4 + 56);
      v24 = a4;
      v25 = *(a4 + 48) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = sub_227668240();
      v30 = *(v29 - 8);
      v31 = v23 + *(v30 + 72) * v22;
      v32 = v45;
      (*(v30 + 16))(&v45[*(v46 + 48)], v31, v29);
      *v32 = v26;
      *(v32 + 1) = v27;
      v32[16] = v28;
      v33 = v32;
      v34 = v44;
      sub_2274CF5FC(v33, v44);
      v35 = v48;
      sub_2274CF5FC(v34, v48);
      a3 = v42;
      if (v18 == v42)
      {
        sub_226EB396C(v26, v27, v28);
        v14 = v40;
        a1 = v41;
        a4 = v24;
        v37 = v47;
        goto LABEL_25;
      }

      a2 = v35 + *(v43 + 72);
      sub_226EB396C(v26, v27, v28);
      result = v18;
      v36 = __OFADD__(v18++, 1);
      a4 = v24;
      v17 = v47;
      if (v36)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v17;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= a1)
      {
        break;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        v48 = a2;
        v17 = v20;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (a1 <= v17 + 1)
    {
      v38 = (v17 + 1);
    }

    else
    {
      v38 = a1;
    }

    v37 = v38 - 1;
    a3 = result;
    v14 = v40;
    a1 = v41;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_2274CEBD4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_226EB396C(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_226EB396C(v19, v20, v21);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2274CED34(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_2274CEE68(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2274CF04C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 64;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_2274CF2F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v20 = v19[1];
      v21 = *(*(a4 + 56) + v18);
      *v11 = *v19;
      *(v11 + 8) = v20;
      v24 = v21;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        sub_226F5E0B4(v24, *(&v24 + 1));
        goto LABEL_24;
      }

      v11 += 32;

      sub_226F5E0B4(v24, *(&v24 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2274CF49C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2274CF5B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2274CF5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2274CF66C(void *a1)
{
  v2 = sub_2276694E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664110();
  sub_2276640F0();
  v7 = sub_22766BFD0();

  [a1 setAction_];

  sub_2276640D0();
  sub_2276694C0();
  (*(v3 + 8))(v6, v2);
  v8 = sub_22766BFD0();

  [a1 setZoneName_];

  sub_2276640C0();
  v9 = sub_22766BFD0();

  [a1 setSyncIdentifier_];

  sub_227664130();
  [a1 setTimestamp_];
  sub_227664120();
  return [a1 setDomain_];
}

uint64_t sub_2274CF840@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CE0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2274CF8C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227664C40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2274CF8E8(uint64_t a1)
{
  *(a1 + 24) = sub_2274CF950(&qword_2813A5778);
  result = sub_2274CF950(&qword_2813A5770);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2274CF950(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227664CA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2274CF994(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22766CD20();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    sub_226E9BF4C(0, v2 & ~(v2 >> 63), 0);
    v33 = v38;
    if (v32)
    {
      v3 = sub_22766CCD0();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_22766CC90();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v35;
        v9 = v36;
        v11 = v37;
        v12 = v1;
        sub_2274DD7F0(v35, v36, v37, v1, &qword_28139D238, 0x277CBE4E0);
        v14 = v13;
        v15 = sub_22706FA40();

        v16 = v33;
        v38 = v33;
        v18 = *(v33 + 16);
        v17 = *(v33 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_226E9BF4C((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + v18 + 32) = v15;
        v33 = v16;
        if (v32)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE0B8, &unk_2276886F0);
          v7 = sub_22766C6A0();
          sub_22766CD70();
          v7(v34, 0);
          if (v6 == v31)
          {
LABEL_32:
            sub_226EB526C(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v19 = 1 << *(v12 + 32);
          if (v10 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v10 >> 6;
          v21 = *(v30 + 8 * (v10 >> 6));
          if (((v21 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v10 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_226EB526C(v10, v9, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            sub_226EB526C(v10, v9, 0);
          }

LABEL_31:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

int64_t sub_2274CFCF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_2274CFDA4(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2274CFEB4(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (*(v11 + v15) < v12)
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2274CFFC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_227665F20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v48 = &v41 - v16;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  if (v20)
  {
    v41 = a2;
    v21 = 0;
    v22 = __clz(__rbit64(v20));
    v23 = (v20 - 1) & v20;
    v24 = (v18 + 63) >> 6;
LABEL_9:
    v27 = v14[9];
    v28 = *(a1 + 48) + v27 * v22;
    v29 = v14[2];
    v42 = v14;
    v43 = v29;
    v44 = v14 + 2;
    v45 = v27;
    (v29)(v12, v28, v4, v15);
    v31 = v42 + 4;
    v30 = v42[4];
    v30(v48, v12, v4);
    v47 = a1;

    if (v23)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v33 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v33 >= v24)
      {

        v39 = v41;
        v30(v41, v48, v4);
        return (v42[7])(v39, 0, 1, v4);
      }

      v23 = *(v17 + 8 * v33);
      ++v21;
      if (v23)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v35 = v46;
          v43(v46, *(v47 + 48) + (v34 | (v33 << 6)) * v45, v4);
          v30(v9, v35, v4);
          sub_226E9946C(&qword_27D7BC1D0, MEMORY[0x277D51FE0]);
          v36 = v48;
          v37 = sub_22766BF80();
          v38 = *(v31 - 3);
          if (v37)
          {
            v38(v36, v4);
            result = (v30)(v36, v9, v4);
            v21 = v33;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = (v38)(v9, v4);
            v21 = v33;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v33 = v21;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v25 = 0;
    v24 = (v18 + 63) >> 6;
    while (v24 - 1 != v20)
    {
      v21 = v20 + 1;
      v26 = *(a1 + 64 + 8 * v20);
      v25 -= 64;
      ++v20;
      if (v26)
      {
        v41 = a2;
        v23 = (v26 - 1) & v26;
        v22 = __clz(__rbit64(v26)) - v25;
        goto LABEL_9;
      }
    }

    v40 = v14[7];

    return v40(a2, 1, 1, v4, v15);
  }

  return result;
}

uint64_t sub_2274D03A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 4;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 33);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (sub_227669C10())
      {
        v2 = v5;
      }

      else
      {
        v2 = v2;
      }

      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_2274D0410()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 112) persistentStoreCoordinator];
  v2 = [v1 persistentStores];
  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v3 = sub_22766C2C0();

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v5 = 0;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v24)
      {
        v13 = MEMORY[0x22AA991A0](v5, v3);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_14;
        }

        v13 = *(v3 + 8 * v5 + 32);
      }

      v14 = v13;
      v15 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v25[0] = 0;
      if ([v1 removePersistentStore:v13 error:v25])
      {
        v16 = v25[0];
      }

      else
      {
        v7 = i;
        v8 = v3;
        v9 = v1;
        v10 = v25[0];
        v11 = sub_2276622C0();

        v1 = v9;
        v3 = v8;
        i = v7;
        swift_willThrow();

        v12 = v11;
        v6 = v23;
      }

      ++v5;
      if (v15 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  v17 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v18 = *(v0 + 216);

  v19 = OBJC_IVAR____TtC15SeymourServices24PersistenceStoreDelegate_lock;
  v20 = sub_22766A9D0();
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  swift_defaultActor_destroy();
  v21 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_2274D0678()
{
  sub_2274D0410();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2274D06AC()
{
  result = sub_22766A9D0();
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

uint64_t sub_2274D0774()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2274D07E0()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

id sub_2274D0868(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14[1] = *MEMORY[0x277D85DE8];
  result = a1(a3, a4, a5, a6);
  if (!v8)
  {
    v14[0] = 0;
    if ([a8 save_])
    {
      result = v14[0];
      v11 = *MEMORY[0x277D85DE8];
      return result;
    }

    v12 = v14[0];
    sub_2276622C0();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2274D094C(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 80) = a1;
  v3 = sub_22766B390();
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274D0A10, v1, 0);
}

uint64_t sub_2274D0A10()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 80);
  sub_226E9D1B4();
  if (sub_227669C10())
  {
    v3 = *(MEMORY[0x277D0A890] + 4);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    v5 = type metadata accessor for PersistenceStoreDelegate();
    v6 = sub_226E9946C(qword_28139F288, type metadata accessor for PersistenceStoreDelegate);
    *v4 = v0;
    v4[1] = sub_2274D0B64;
    v7 = *(v0 + 40);
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v6, &unk_227678448, v7, v5, v8, v6);
  }

  else
  {
    v9 = *(v0 + 64);

    v10 = *(v0 + 8);

    return v10();
  }
}

void sub_2274D0B64()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    MEMORY[0x2822009F8](sub_2274D0C98, v5, 0);
  }
}

uint64_t sub_2274D0C98()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 216);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_22766CD20();

    if (v3)
    {
      goto LABEL_8;
    }
  }

  else if (*(v2 + 16))
  {
    goto LABEL_8;
  }

  v4 = v0[8];
  sub_22766A770();
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226E8E000, v5, v6, "Ending Monitoring", v7, 2u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  (*(v9 + 8))(v8, v10);
  v12 = v11[19];
  __swift_project_boxed_opaque_existential_0(v11 + 15, v11[18]);
  sub_22766AC50();
LABEL_8:
  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2274D0E1C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2274D0F2C, v2, 0);
}

uint64_t sub_2274D0F2C()
{
  v43 = v0;
  v1 = [*(v0 + 176) persistentStoreCoordinator];
  v2 = [v1 persistentStores];

  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v3 = sub_22766C2C0();

  if (v3 >> 62)
  {
    v5 = sub_22766CD20();

    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
LABEL_3:
      *(v0 + 200) = *(*(v0 + 112) + 160);

      return MEMORY[0x2822009F8](sub_2274D1370, 0, 0);
    }
  }

  v6 = *(v0 + 144);
  sub_22766A770();
  v7 = sub_22766B380();
  v8 = sub_22766C890();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226E8E000, v7, v8, "Aborting monitor startup due to no loaded stores.", v9, 2u);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);

  v10(v12, v13);
  v15 = sub_227664DD0();
  sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040]);
  v16 = swift_allocError();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D51020], v15);
  swift_willThrow();
  v18 = v16;
  sub_22766A770();
  v19 = v16;
  v20 = sub_22766B380();
  v21 = sub_22766C890();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 184);
  v24 = *(v0 + 128);
  v25 = *(v0 + 136);
  v26 = *(v0 + 120);
  if (v22)
  {
    v41 = *(v0 + 136);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 136315138;
    swift_getErrorValue();
    v40 = v23;
    v29 = *(v0 + 80);
    v30 = MEMORY[0x22AA995D0](*(v0 + 88), *(v0 + 96));
    v32 = sub_226E97AE8(v30, v31, &v42);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_226E8E000, v20, v21, "Got error while executing monitor transaction: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);

    v40(v41, v26);
  }

  else
  {

    v23(v25, v26);
  }

  v34 = *(v0 + 160);
  v33 = *(v0 + 168);
  v36 = *(v0 + 144);
  v35 = *(v0 + 152);
  v37 = *(v0 + 136);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_2274D1370()
{
  v1 = v0[25];
  v2 = *(v1 + 16);
  v0[26] = v2;
  if (v2)
  {
    v0[27] = 0;
    sub_226E91B50(v1 + 32, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
    v5 = *(v4 + 8);
    v17 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[28] = v7;
    *v7 = v0;
    v7[1] = sub_2274D1548;
    v8 = v0[14];

    return v17(&unk_2276886E8, v8, v3, v4);
  }

  else
  {
    v10 = v0[14];

    v12 = v0[20];
    v11 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];

    v16 = v0[1];

    return v16();
  }
}