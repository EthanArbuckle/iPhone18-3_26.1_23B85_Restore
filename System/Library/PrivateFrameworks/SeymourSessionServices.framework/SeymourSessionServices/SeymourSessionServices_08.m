uint64_t sub_265D3391C()
{
  v29 = v0;
  v1 = v0[20];
  v2 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v27 = v0[18];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[7];
    v13 = MEMORY[0x2667704D0](v0[8], v0[9]);
    v15 = sub_265CF4FFC(v13, v14, &v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - Couldn't deactivate workout session: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266770CF0](v11, -1, -1);
    MEMORY[0x266770CF0](v10, -1, -1);

    v27(v7, v9);
  }

  else
  {
    v16 = v0[18];
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];

    v16(v17, v19);
  }

  v20 = v0[20];
  v21 = v0[16];
  v22 = v0[17];
  v23 = v0[13];
  swift_willThrow();

  v24 = v0[1];
  v25 = v0[20];

  return v24();
}

uint64_t sub_265D33B1C()
{
  v1 = v0;
  v157 = sub_265D59DE0();
  v156 = *(v157 - 8);
  v2 = *(v156 + 64);
  v3 = MEMORY[0x28223BE20](v157);
  MEMORY[0x28223BE20](v3);
  v5 = v136 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v136 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v154 = v136 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v153 = v136 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v152 = v136 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v151 = v136 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v150 = v136 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v149 = v136 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v148 = v136 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v147 = v136 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v146 = v136 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v173 = v136 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = v136 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v172 = v136 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v171 = v136 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v170 = v136 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v169 = v136 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v168 = v136 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v167 = v136 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v166 = v136 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v165 = v136 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68 - 8);
  v164 = v136 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v163 = v136 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74 - 8);
  v162 = v136 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v161 = v136 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80 - 8);
  v160 = v136 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83 - 8);
  v159 = v136 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86 - 8);
  v158 = v136 - v88;
  v89 = sub_265D58130();
  v90 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89 - 8);
  v142 = v136 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_265D59090();
  v143 = *(v144 - 8);
  v92 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v141 = v136 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  v95 = sub_265D59530();
  v155 = v9;
  v145 = v5;
  v96 = v95;
  v97 = [objc_opt_self() gramUnitWithMetricPrefix_];
  [v96 doubleValueForUnit_];
  v99 = v98;

  v136[1] = v43;
  v139 = v1[22];
  v140 = v1[23];
  ObjectType = swift_getObjectType();
  v137 = sub_265D5A4C0();
  sub_265D589C0();
  v136[3] = sub_265D58CF0();
  v136[2] = v100;

  v101 = sub_265D58020();
  (*(*(v101 - 8) + 56))(v158, 1, 1, v101);
  v102 = sub_265D58410();
  (*(*(v102 - 8) + 56))(v159, 1, 1, v102);
  v103 = sub_265D58590();
  (*(*(v103 - 8) + 56))(v160, 1, 1, v103);
  v104 = sub_265D58050();
  (*(*(v104 - 8) + 56))(v161, 1, 1, v104);
  v105 = sub_265D58200();
  (*(*(v105 - 8) + 56))(v162, 1, 1, v105);
  v106 = sub_265D58BC0();
  (*(*(v106 - 8) + 56))(v163, 1, 1, v106);
  v107 = sub_265D583E0();
  (*(*(v107 - 8) + 56))(v164, 1, 1, v107);
  v108 = sub_265D581B0();
  (*(*(v108 - 8) + 56))(v165, 1, 1, v108);
  v109 = sub_265D57F50();
  (*(*(v109 - 8) + 56))(v166, 1, 1, v109);
  v110 = sub_265D582A0();
  (*(*(v110 - 8) + 56))(v167, 1, 1, v110);
  v111 = sub_265D58680();
  (*(*(v111 - 8) + 56))(v168, 1, 1, v111);
  v112 = sub_265D58210();
  (*(*(v112 - 8) + 56))(v169, 1, 1, v112);
  v113 = sub_265D57E80();
  (*(*(v113 - 8) + 56))(v170, 1, 1, v113);
  v114 = sub_265D58430();
  (*(*(v114 - 8) + 56))(v171, 1, 1, v114);
  v115 = sub_265D58300();
  (*(*(v115 - 8) + 56))(v172, 1, 1, v115);
  v116 = sub_265D586F0();
  (*(*(v116 - 8) + 56))(v43, 1, 1, v116);
  v117 = sub_265D57E90();
  (*(*(v117 - 8) + 56))(v173, 1, 1, v117);
  v118 = sub_265D581C0();
  (*(*(v118 - 8) + 56))(v146, 1, 1, v118);
  v119 = sub_265D58BB0();
  (*(*(v119 - 8) + 56))(v147, 1, 1, v119);
  v120 = sub_265D585C0();
  (*(*(v120 - 8) + 56))(v148, 1, 1, v120);
  v121 = sub_265D57EA0();
  (*(*(v121 - 8) + 56))(v149, 1, 1, v121);
  v122 = sub_265D57ED0();
  (*(*(v122 - 8) + 56))(v150, 1, 1, v122);
  v123 = sub_265D58240();
  (*(*(v123 - 8) + 56))(v151, 1, 1, v123);
  sub_265D5A030();
  v124 = v152;
  sub_265D583F0();
  v125 = sub_265D58400();
  (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
  v126 = sub_265D58600();
  (*(*(v126 - 8) + 56))(v153, 1, 1, v126);
  v127 = sub_265D58630();
  (*(*(v127 - 8) + 56))(v154, 1, 1, v127);
  v128 = sub_265D58B10();
  (*(*(v128 - 8) + 56))(v155, 1, 1, v128);
  sub_265D5A030();
  sub_265D580B0();
  v129 = v141;
  sub_265D59080();
  v130 = v144;
  sub_265D58ED0();
  (*(v143 + 8))(v129, v130);
  v131 = v145;
  sub_265D595F0();
  v132 = sub_265D59DD0();
  v133 = sub_265D5A080();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 134217984;
    *(v134 + 4) = v99;
    _os_log_impl(&dword_265C01000, v132, v133, "Updating session with body mass: %f", v134, 0xCu);
    MEMORY[0x266770CF0](v134, -1, -1);
  }

  return (*(v156 + 8))(v131, v157);
}

uint64_t sub_265D350E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v3[50] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v33 = sub_265D59090();
  v3[58] = v33;
  v34 = *(v33 - 8);
  v3[59] = v34;
  v35 = *(v34 + 64) + 15;
  v3[60] = swift_task_alloc();
  v36 = sub_265D58020();
  v3[61] = v36;
  v37 = *(v36 - 8);
  v3[62] = v37;
  v38 = *(v37 + 64) + 15;
  v3[63] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[64] = v39;
  v40 = *(v39 - 8);
  v3[65] = v40;
  v41 = *(v40 + 64) + 15;
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v42 = type metadata accessor for DistributedSessionPublisher.State(0);
  v3[68] = v42;
  v43 = *(*(v42 - 8) + 64) + 15;
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v44 = sub_265D59DE0();
  v3[71] = v44;
  v45 = *(v44 - 8);
  v3[72] = v45;
  v46 = *(v45 + 64) + 15;
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D35974, a2, 0);
}

uint64_t sub_265D35974()
{
  v207 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 536);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v7 = *(v0 + 184);
  sub_265D595F0();
  sub_265D59DC0();
  v8 = *(v2 + 8);
  v8(v1, v3);
  v9 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v5 + 16))(v4, v7 + v9, v6);
  v10 = (*(v5 + 88))(v4, v6);
  if (v10 == *MEMORY[0x277D4F250])
  {
    v157 = v10;
    v159 = v9;
    v161 = v7;
    v11 = *(v0 + 584);
    v12 = *(v0 + 560);
    v13 = *(v0 + 536);
    v14 = *(v0 + 504);
    v15 = *(v0 + 488);
    v16 = *(v0 + 496);
    v17 = *(v0 + 192);
    (*(*(v0 + 520) + 96))(v13, *(v0 + 512));
    sub_265D41F9C(v13, v12);
    sub_265D595F0();
    v199 = *(v16 + 16);
    v199(v14, v17, v15);
    v18 = sub_265D59DD0();
    v19 = sub_265D5A080();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 584);
    v22 = *(v0 + 568);
    v24 = *(v0 + 496);
    v23 = *(v0 + 504);
    v25 = *(v0 + 488);
    if (v20)
    {
      v194 = *(v0 + 568);
      v26 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v206 = v190;
      *v26 = 136315138;
      sub_265D40868(&qword_28003E600, MEMORY[0x277D50400]);
      v184 = v21;
      v187 = v8;
      v27 = sub_265D5A3B0();
      v29 = v28;
      (*(v24 + 8))(v23, v25);
      v30 = sub_265CF4FFC(v27, v29, &v206);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_265C01000, v18, v19, "DistributedSessionPublisher - Updating Rings: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v190);
      MEMORY[0x266770CF0](v190, -1, -1);
      MEMORY[0x266770CF0](v26, -1, -1);

      v187(v184, v194);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      v8(v21, v22);
    }

    v153 = *(v0 + 552);
    v155 = *(v0 + 544);
    v38 = *(v0 + 488);
    v39 = *(v0 + 496);
    v143 = *(v0 + 560);
    v145 = *(v0 + 480);
    v147 = *(v0 + 472);
    v149 = *(v0 + 464);
    v141 = *(v0 + 456);
    v40 = *(v0 + 448);
    v151 = *(v0 + 440);
    v42 = *(v0 + 392);
    v41 = *(v0 + 400);
    v44 = *(v0 + 376);
    v43 = *(v0 + 384);
    v195 = *(v0 + 368);
    v188 = *(v0 + 352);
    v191 = *(v0 + 360);
    v182 = *(v0 + 336);
    v185 = *(v0 + 344);
    v178 = *(v0 + 320);
    v180 = *(v0 + 328);
    v174 = *(v0 + 304);
    v176 = *(v0 + 312);
    v170 = *(v0 + 288);
    v172 = *(v0 + 296);
    v168 = *(v0 + 280);
    v45 = *(v0 + 184);
    v46 = *(v0 + 192);
    v137 = *(v45 + 176);
    v139 = *(v45 + 184);
    v166 = *(v0 + 272);
    v126 = *(v0 + 264);
    v127 = *(v0 + 256);
    v128 = *(v0 + 248);
    v129 = *(v0 + 240);
    v130 = *(v0 + 232);
    v131 = *(v0 + 224);
    v132 = *(v0 + 216);
    v133 = *(v0 + 208);
    v134 = *(v0 + 200);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CD9C34();
    sub_265D58CF0();

    v199(v40, v46, v38);
    v164 = *(v39 + 56);
    v164(v40, 0, 1, v38);
    v47 = sub_265D58410();
    (*(*(v47 - 8) + 56))(v41, 1, 1, v47);
    v48 = sub_265D58590();
    (*(*(v48 - 8) + 56))(v42, 1, 1, v48);
    v49 = sub_265D58050();
    (*(*(v49 - 8) + 56))(v43, 1, 1, v49);
    v50 = sub_265D58200();
    (*(*(v50 - 8) + 56))(v44, 1, 1, v50);
    v51 = sub_265D58BC0();
    (*(*(v51 - 8) + 56))(v195, 1, 1, v51);
    v52 = sub_265D583E0();
    (*(*(v52 - 8) + 56))(v191, 1, 1, v52);
    v53 = sub_265D581B0();
    (*(*(v53 - 8) + 56))(v188, 1, 1, v53);
    v54 = sub_265D57F50();
    (*(*(v54 - 8) + 56))(v185, 1, 1, v54);
    v55 = sub_265D582A0();
    (*(*(v55 - 8) + 56))(v182, 1, 1, v55);
    v56 = sub_265D58680();
    (*(*(v56 - 8) + 56))(v180, 1, 1, v56);
    v57 = sub_265D58210();
    (*(*(v57 - 8) + 56))(v178, 1, 1, v57);
    v58 = sub_265D57E80();
    (*(*(v58 - 8) + 56))(v176, 1, 1, v58);
    v59 = sub_265D58430();
    (*(*(v59 - 8) + 56))(v174, 1, 1, v59);
    v60 = sub_265D58300();
    (*(*(v60 - 8) + 56))(v172, 1, 1, v60);
    v61 = sub_265D586F0();
    (*(*(v61 - 8) + 56))(v170, 1, 1, v61);
    v62 = sub_265D57E90();
    (*(*(v62 - 8) + 56))(v168, 1, 1, v62);
    v63 = sub_265D581C0();
    (*(*(v63 - 8) + 56))(v166, 1, 1, v63);
    v64 = sub_265D58BB0();
    (*(*(v64 - 8) + 56))(v126, 1, 1, v64);
    v65 = sub_265D585C0();
    (*(*(v65 - 8) + 56))(v127, 1, 1, v65);
    v66 = sub_265D57EA0();
    (*(*(v66 - 8) + 56))(v128, 1, 1, v66);
    v67 = sub_265D57ED0();
    (*(*(v67 - 8) + 56))(v129, 1, 1, v67);
    v68 = sub_265D58240();
    (*(*(v68 - 8) + 56))(v130, 1, 1, v68);
    v69 = sub_265D58400();
    (*(*(v69 - 8) + 56))(v131, 1, 1, v69);
    v70 = sub_265D58600();
    (*(*(v70 - 8) + 56))(v132, 1, 1, v70);
    v71 = sub_265D58630();
    (*(*(v71 - 8) + 56))(v133, 1, 1, v71);
    v72 = sub_265D58B10();
    (*(*(v72 - 8) + 56))(v134, 1, 1, v72);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v147 + 8))(v145, v149);
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v199(v151, v46, v38);
    v164(v151, 0, 1, v38);
    sub_265D41F9C(v143, v153);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v74 = *(v0 + 552);
    v75 = *(v0 + 528);
    if (EnumCaseMultiPayload == 1)
    {
      v76 = *(v0 + 496);
      v200 = *(v0 + 488);
      v196 = *(v0 + 440);
      v78 = *(v0 + 416);
      v77 = *(v0 + 424);
      sub_265CA4AE8(v0 + 16, &qword_28003E528, &qword_265D5BF60);
      v79 = *(v74 + 2);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
      v203 = *(v74 + *(v80 + 96));
      v192 = *v74;
      sub_265D42374(v74 + *(v80 + 80), v77, &qword_28003E5E0, &qword_265D5C080);
      v81 = *(v80 + 80);
      *v75 = v192;
      *(v75 + 16) = v79;
      sub_265D42374(v196, v78, &qword_28003E5E0, &qword_265D5C080);
      v82 = *(v76 + 48);
      if (v82(v78, 1, v200) == 1)
      {
        v83 = *(v0 + 488);
        v84 = *(v0 + 416);
        sub_265D42374(*(v0 + 424), v75 + v81, &qword_28003E5E0, &qword_265D5C080);
        v85 = v82(v84, 1, v83);
        v86 = v161;
        if (v85 != 1)
        {
          sub_265CA4AE8(*(v0 + 416), &qword_28003E5E0, &qword_265D5C080);
        }
      }

      else
      {
        v94 = *(v0 + 488);
        v95 = *(v0 + 496);
        v96 = *(v0 + 416);
        sub_265CA4AE8(*(v0 + 424), &qword_28003E5E0, &qword_265D5C080);
        (*(v95 + 32))(v75 + v81, v96, v94);
        v164(v75 + v81, 0, 1, v94);
        v86 = v161;
      }

      v97 = *(v0 + 544);
      *(*(v0 + 528) + *(v80 + 96)) = v203;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v87 = *(v0 + 432);
      v88 = *v74;
      v201 = v74[4];
      v204 = v74[3];
      v197 = v74[5];
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
      v90 = *(v89 + 160);
      v91 = *(v74 + *(v89 + 176));
      sub_265C033C4((v74 + 8), v0 + 56);
      sub_265D42374(v74 + v90, v87, &qword_28003E5E0, &qword_265D5C080);
      *v75 = v88;
      v92 = v75 + 8;
      *(v0 + 128) = *(v0 + 48);
      v93 = *(v0 + 32);
      *(v0 + 96) = *(v0 + 16);
      *(v0 + 112) = v93;
      if (*(v0 + 120))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
        sub_265C033C4((v0 + 96), v92);
      }

      else
      {
        sub_265C033C4((v0 + 56), v92);
        if (*(v0 + 120))
        {
          sub_265CA4AE8(v0 + 96, &qword_28003E528, &qword_265D5BF60);
        }
      }

      v98 = *(v0 + 528);
      v99 = *(v0 + 488);
      v100 = *(v0 + 496);
      v101 = *(v0 + 440);
      v102 = *(v0 + 408);
      v103 = *(v89 + 160);
      *(v98 + 3) = v204;
      *(v98 + 4) = v201;
      *(v98 + 5) = v197;
      sub_265D42374(v101, v102, &qword_28003E5E0, &qword_265D5C080);
      v104 = *(v100 + 48);
      if (v104(v102, 1, v99) == 1)
      {
        v105 = *(v0 + 488);
        v106 = *(v0 + 408);
        sub_265D42374(*(v0 + 432), &v98[v103], &qword_28003E5E0, &qword_265D5C080);
        if (v104(v106, 1, v105) != 1)
        {
          sub_265CA4AE8(*(v0 + 408), &qword_28003E5E0, &qword_265D5C080);
        }
      }

      else
      {
        v107 = *(v0 + 488);
        v108 = *(v0 + 496);
        v109 = *(v0 + 408);
        sub_265CA4AE8(*(v0 + 432), &qword_28003E5E0, &qword_265D5C080);
        (*(v108 + 32))(&v98[v103], v109, v107);
        v164(&v98[v103], 0, 1, v107);
      }

      v110 = *(v0 + 544);
      *(*(v0 + 528) + *(v89 + 176)) = v91;
      swift_storeEnumTagMultiPayload();
      v86 = v161;
    }

    v111 = *(v0 + 528);
    v112 = *(v0 + 520);
    v113 = *(v0 + 512);
    (*(v112 + 104))(v111, v157, v113);
    swift_beginAccess();
    (*(v112 + 40))(v86 + v159, v111, v113);
    swift_endAccess();
  }

  else
  {
    v31 = *(v0 + 592);
    (*(*(v0 + 520) + 8))(*(v0 + 536), *(v0 + 512));
    sub_265D595F0();
    v32 = sub_265D59DD0();
    v33 = sub_265D5A070();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 592);
    v36 = *(v0 + 568);
    if (v34)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_265C01000, v32, v33, "DistributedSessionPublisher - No active session to update activity rings.", v37, 2u);
      MEMORY[0x266770CF0](v37, -1, -1);
    }

    v8(v35, v36);
  }

  v114 = *(v0 + 600);
  v115 = *(v0 + 592);
  v116 = *(v0 + 584);
  v117 = *(v0 + 560);
  v118 = *(v0 + 552);
  v119 = *(v0 + 536);
  v120 = *(v0 + 528);
  v121 = *(v0 + 504);
  v122 = *(v0 + 480);
  v123 = *(v0 + 456);
  v135 = *(v0 + 448);
  v136 = *(v0 + 440);
  v138 = *(v0 + 432);
  v140 = *(v0 + 424);
  v142 = *(v0 + 416);
  v144 = *(v0 + 408);
  v146 = *(v0 + 400);
  v148 = *(v0 + 392);
  v150 = *(v0 + 384);
  v152 = *(v0 + 376);
  v154 = *(v0 + 368);
  v156 = *(v0 + 360);
  v158 = *(v0 + 352);
  v160 = *(v0 + 344);
  v162 = *(v0 + 336);
  v163 = *(v0 + 328);
  v165 = *(v0 + 320);
  v167 = *(v0 + 312);
  v169 = *(v0 + 304);
  v171 = *(v0 + 296);
  v173 = *(v0 + 288);
  v175 = *(v0 + 280);
  v177 = *(v0 + 272);
  v179 = *(v0 + 264);
  v181 = *(v0 + 256);
  v183 = *(v0 + 248);
  v186 = *(v0 + 240);
  v189 = *(v0 + 232);
  v193 = *(v0 + 224);
  v198 = *(v0 + 216);
  v202 = *(v0 + 208);
  v205 = *(v0 + 200);

  v124 = *(v0 + 8);

  return v124();
}

uint64_t sub_265D36CDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 1080) = a4;
  *(v4 + 360) = a2;
  *(v4 + 368) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  *(v4 + 392) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  *(v4 + 400) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  *(v4 + 408) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  *(v4 + 416) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  *(v4 + 424) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  *(v4 + 432) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  *(v4 + 440) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  *(v4 + 448) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  *(v4 + 456) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  *(v4 + 464) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  *(v4 + 472) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  *(v4 + 480) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  *(v4 + 488) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  *(v4 + 496) = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  *(v4 + 504) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  *(v4 + 512) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  *(v4 + 520) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  *(v4 + 528) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  *(v4 + 536) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  *(v4 + 544) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  *(v4 + 552) = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  *(v4 + 560) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  *(v4 + 568) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  *(v4 + 576) = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  *(v4 + 584) = swift_task_alloc();
  v33 = sub_265D59090();
  *(v4 + 592) = v33;
  v34 = *(v33 - 8);
  *(v4 + 600) = v34;
  v35 = *(v34 + 64) + 15;
  *(v4 + 608) = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA30, &qword_265D5E230) - 8) + 64) + 15;
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA38, &qword_265D5E238) - 8) + 64) + 15;
  *(v4 + 632) = swift_task_alloc();
  v38 = sub_265D57F00();
  *(v4 + 640) = v38;
  v39 = *(v38 - 8);
  *(v4 + 648) = v39;
  v40 = *(v39 + 64) + 15;
  *(v4 + 656) = swift_task_alloc();
  *(v4 + 664) = swift_task_alloc();
  v41 = sub_265D58280();
  *(v4 + 672) = v41;
  v42 = *(v41 - 8);
  *(v4 + 680) = v42;
  v43 = *(v42 + 64) + 15;
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  *(v4 + 704) = swift_task_alloc();
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA40, &qword_265D5E240) - 8) + 64) + 15;
  *(v4 + 712) = swift_task_alloc();
  *(v4 + 720) = swift_task_alloc();
  v45 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA48, &qword_265D5E248) - 8) + 64) + 15;
  *(v4 + 728) = swift_task_alloc();
  v46 = sub_265D57D10();
  *(v4 + 736) = v46;
  v47 = *(v46 - 8);
  *(v4 + 744) = v47;
  v48 = *(v47 + 64) + 15;
  *(v4 + 752) = swift_task_alloc();
  v49 = sub_265D57E30();
  *(v4 + 760) = v49;
  v50 = *(v49 - 8);
  *(v4 + 768) = v50;
  v51 = *(v50 + 64) + 15;
  *(v4 + 776) = swift_task_alloc();
  *(v4 + 784) = swift_task_alloc();
  *(v4 + 792) = swift_task_alloc();
  *(v4 + 800) = swift_task_alloc();
  v52 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = swift_task_alloc();
  *(v4 + 856) = swift_task_alloc();
  *(v4 + 864) = swift_task_alloc();
  *(v4 + 872) = swift_task_alloc();
  *(v4 + 880) = swift_task_alloc();
  *(v4 + 888) = swift_task_alloc();
  *(v4 + 896) = swift_task_alloc();
  v53 = sub_265D58020();
  *(v4 + 904) = v53;
  v54 = *(v53 - 8);
  *(v4 + 912) = v54;
  v55 = *(v54 + 64) + 15;
  *(v4 + 920) = swift_task_alloc();
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = swift_task_alloc();
  v56 = sub_265D59DE0();
  *(v4 + 944) = v56;
  v57 = *(v56 - 8);
  *(v4 + 952) = v57;
  v58 = *(v57 + 64) + 15;
  *(v4 + 960) = swift_task_alloc();
  *(v4 + 968) = swift_task_alloc();
  *(v4 + 976) = swift_task_alloc();
  *(v4 + 984) = swift_task_alloc();
  *(v4 + 992) = swift_task_alloc();
  *(v4 + 1000) = swift_task_alloc();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  *(v4 + 1008) = v59;
  v60 = *(v59 - 8);
  *(v4 + 1016) = v60;
  v61 = *(v60 + 64) + 15;
  *(v4 + 1024) = swift_task_alloc();
  *(v4 + 1032) = swift_task_alloc();
  *(v4 + 1040) = swift_task_alloc();
  v62 = type metadata accessor for DistributedSessionPublisher.State(0);
  *(v4 + 1048) = v62;
  v63 = *(*(v62 - 8) + 64) + 15;
  *(v4 + 1056) = swift_task_alloc();
  *(v4 + 1064) = swift_task_alloc();
  *(v4 + 1072) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D378C0, a2, 0);
}

uint64_t sub_265D378C0()
{
  v481 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 360);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v5], v3);
  v6 = (*(v2 + 88))(v1, v3);
  v448 = v0;
  if (v6 != *MEMORY[0x277D4F250])
  {
    v22 = *(v0 + 1000);
    (*(*(v0 + 1016) + 8))(*(v0 + 1040), *(v0 + 1008));
    sub_265D595F0();
    v23 = sub_265D59DD0();
    v24 = sub_265D5A070();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 1000);
    v27 = *(v0 + 952);
    v28 = *(v0 + 944);
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_265C01000, v23, v24, "DistributedSessionPublisher - No active session to fake update activity rings.", v29, 2u);
      MEMORY[0x266770CF0](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
    goto LABEL_55;
  }

  v420 = v6;
  v7 = *(v0 + 1072);
  v8 = *(v0 + 1040);
  v9 = *(v0 + 912);
  v10 = *(v0 + 904);
  v11 = *(v0 + 896);
  (*(*(v0 + 1016) + 96))(v8, *(v0 + 1008));
  sub_265D41F9C(v8, v7);
  sub_265CDA0C4(v11);
  v12 = *(v9 + 48);
  if (v12(v11, 1, v10) == 1)
  {
    v13 = *(v0 + 992);
    sub_265CA4AE8(*(v0 + 896), &qword_28003E5E0, &qword_265D5C080);
    sub_265D595F0();
    v14 = sub_265D59DD0();
    v15 = sub_265D5A070();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 1072);
    v18 = *(v0 + 992);
    v19 = *(v0 + 952);
    v20 = *(v0 + 944);
    if (v16)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_265C01000, v14, v15, "DistributedSessionPublisher - Skipping update because we don't have activity rings.", v21, 2u);
      MEMORY[0x266770CF0](v21, -1, -1);
    }

    (*(v19 + 8))(v18, v20);
    sub_265CDA484(v17);
    goto LABEL_55;
  }

  v410 = v12;
  v30 = *(v0 + 800);
  v31 = *(v0 + 1080);
  v32 = *(v0 + 368);
  v394 = *(*(v0 + 912) + 32);
  v394(*(v0 + 936), *(v0 + 896), *(v0 + 904));
  sub_265D5A030();
  sub_265D57FF0();
  sub_265D57E00();
  if (v31)
  {
    v33 = *(v0 + 960);
    v34 = *(v0 + 368);
    sub_265D595F0();
    v35 = v32;
    v36 = sub_265D59DD0();
    v37 = sub_265D5A070();
    sub_265D41E08(v34, 1);
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 1072);
    v476 = *(v0 + 960);
    v40 = *(v0 + 952);
    v41 = *(v0 + 944);
    v42 = *(v0 + 936);
    v43 = *(v0 + 912);
    v44 = *(v0 + 904);
    if (v38)
    {
      v470 = *(v0 + 904);
      v45 = swift_slowAlloc();
      v468 = v42;
      v46 = swift_slowAlloc();
      v480[0] = v46;
      *v45 = 136315138;
      swift_getErrorValue();
      v462 = v39;
      v47 = *(v0 + 280);
      v48 = MEMORY[0x2667704D0](*(v0 + 288), *(v0 + 296));
      v50 = sub_265CF4FFC(v48, v49, v480);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_265C01000, v36, v37, "DistributedSessionPublisher - Failed fetching calories: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266770CF0](v46, -1, -1);
      MEMORY[0x266770CF0](v45, -1, -1);

      (*(v40 + 8))(v476, v41);
      (*(v43 + 8))(v468, v470);
      v51 = v462;
    }

    else
    {

      (*(v40 + 8))(v476, v41);
      (*(v43 + 8))(v42, v44);
LABEL_52:
      v51 = v39;
    }

    sub_265CDA484(v51);
    goto LABEL_54;
  }

  v52 = *(v0 + 368);
  if (v52 >> 62)
  {
    goto LABEL_120;
  }

  for (i = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_265D5A2B0())
  {
    v380 = v5;
    v382 = v4;
    if (!i)
    {
      v57 = MEMORY[0x277D84F98];
LABEL_62:
      v79 = v448;
      v138 = *(v448 + 1072);
      v139 = sub_265CDA21C();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v480[0] = v139;
      sub_265D42000(v57, sub_265D40988, 0, isUniquelyReferenced_nonNull_native, v480);
      v141 = *(v448 + 984);
      v142 = *(v448 + 800);

      v143 = v480[0];
      v144 = swift_task_alloc();
      *(v144 + 16) = v142;
      v72 = sub_265D40A30(sub_265D4234C, v144, v143);

      sub_265D595F0();

      v80 = sub_265D59DD0();
      v145 = sub_265D5A080();

      v146 = os_log_type_enabled(v80, v145);
      v81 = *(v448 + 984);
      v32 = *(v448 + 952);
      v4 = *(v448 + 944);
      if (v146)
      {
        v147 = *(v448 + 760);
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v480[0] = v149;
        *v148 = 136315138;
        sub_265D40868(&qword_2813B9020, MEMORY[0x277CC9578]);
        v150 = sub_265D59E50();
        v479 = v4;
        v152 = v81;
        v153 = sub_265CF4FFC(v150, v151, v480);

        *(v148 + 4) = v153;
        _os_log_impl(&dword_265C01000, v80, v145, "DistributedSessionPublisher - updated calories %s", v148, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v149);
        MEMORY[0x266770CF0](v149, -1, -1);
        MEMORY[0x266770CF0](v148, -1, -1);

        v154 = *(v32 + 8);
        v154(v152, v479);
      }

      else
      {
LABEL_65:

        v154 = *(v32 + 8);
        v154(v81, v4);
      }

      v464 = v154;
      v155 = *(v79 + 1072);
      v156 = *(v79 + 1064);
      v157 = *(v79 + 1048);
      v158 = *(v79 + 904);
      v159 = *(v79 + 888);
      v160 = *(*(v79 + 912) + 56);
      *(v79 + 16) = 0u;
      *(v79 + 32) = 0u;
      *(v79 + 48) = 0;
      v467 = v160;
      v160(v159, 1, 1, v158);
      sub_265CD9D78(v155, v156);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v162 = *(v79 + 1064);
      v163 = *(v79 + 1032);
      if (EnumCaseMultiPayload == 1)
      {
        v452 = *(v79 + 904);
        v446 = *(v79 + 888);
        v164 = *(v79 + 872);
        v165 = *(v79 + 864);
        sub_265CA4AE8(v79 + 16, &qword_28003E528, &qword_265D5BF60);
        v166 = *(v162 + 2);
        v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
        v456 = *(v162 + *(v167 + 96));
        v442 = *v162;
        sub_265D42374(v162 + *(v167 + 80), v164, &qword_28003E5E0, &qword_265D5C080);
        v168 = *(v167 + 80);
        *v163 = v442;
        *(v163 + 16) = v166;
        sub_265D42374(v446, v165, &qword_28003E5E0, &qword_265D5C080);
        v169 = v410(v165, 1, v452);
        v170 = *(v79 + 904);
        v171 = *(v79 + 872);
        v172 = *(v79 + 864);
        if (v169 == 1)
        {
          sub_265D42374(v171, v163 + v168, &qword_28003E5E0, &qword_265D5C080);
          v173 = v382;
          v174 = v448;
          if (v410(v172, 1, v170) != 1)
          {
            sub_265CA4AE8(*(v448 + 864), &qword_28003E5E0, &qword_265D5C080);
          }
        }

        else
        {
          sub_265CA4AE8(v171, &qword_28003E5E0, &qword_265D5C080);
          v394(v163 + v168, v172, v170);
          v467(v163 + v168, 0, 1, v170);
          v173 = v382;
          v174 = v448;
        }

        v183 = v174[131];
        v184 = v174[129];
        v185 = *(v167 + 96);

        *(v184 + v185) = v72;
      }

      else
      {
        v175 = *(v79 + 880);
        v176 = *v162;
        v453 = v162[3];
        v443 = v162[5];
        v447 = v162[4];
        v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
        v178 = *(v177 + 160);
        v179 = *(v162 + *(v177 + 176));
        sub_265C033C4((v162 + 8), v79 + 176);
        sub_265D42374(v162 + v178, v175, &qword_28003E5E0, &qword_265D5C080);
        *v163 = v176;
        v180 = v163 + 8;
        v181 = *(v79 + 16);
        *(v79 + 232) = *(v79 + 32);
        *(v79 + 248) = *(v79 + 48);
        *(v79 + 216) = v181;
        v182 = (v79 + 176);
        if (*(v79 + 240))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v182);
          sub_265C033C4((v79 + 216), v180);
          v173 = v382;
        }

        else
        {
          sub_265C033C4(v182, v180);
          v173 = v382;
          if (*(v79 + 240))
          {
            sub_265CA4AE8(v79 + 216, &qword_28003E528, &qword_265D5BF60);
          }
        }

        v186 = *(v79 + 1032);
        v187 = *(v79 + 904);
        v188 = *(v79 + 888);
        v189 = *(v79 + 856);
        v190 = *(v177 + 160);
        v186[3] = v453;
        v186[4] = v447;
        v186[5] = v443;
        sub_265D42374(v188, v189, &qword_28003E5E0, &qword_265D5C080);
        v191 = v410(v189, 1, v187);
        v192 = *(v79 + 904);
        v193 = *(v79 + 880);
        v194 = *(v79 + 856);
        if (v191 == 1)
        {
          sub_265D42374(v193, v186 + v190, &qword_28003E5E0, &qword_265D5C080);
          v174 = v448;
          if (v410(v194, 1, v192) != 1)
          {
            sub_265CA4AE8(*(v448 + 856), &qword_28003E5E0, &qword_265D5C080);
          }
        }

        else
        {
          sub_265CA4AE8(v193, &qword_28003E5E0, &qword_265D5C080);
          v394(v186 + v190, v194, v192);
          v467(v186 + v190, 0, 1, v192);
          v174 = v448;
        }

        v195 = v174[131];
        v196 = v174[129];
        v197 = *(v177 + 176);

        *(v196 + v197) = v72;
      }

      swift_storeEnumTagMultiPayload();
      v198 = v174[129];
      v199 = v174[127];
      v200 = v174[126];
      v5 = v199 + 104;
      v201 = *(v199 + 104);
      (v201)(v198, v420, v200);
      v32 = v380;
      swift_beginAccess();
      v203 = *(v199 + 40);
      v4 = (v199 + 40);
      v202 = v203;
      v203(v173 + v380, v198, v200);
      swift_endAccess();
      v204 = 0;
      v205 = -1 << *(v72 + 32);
      if (-v205 < 64)
      {
        v206 = ~(-1 << -v205);
      }

      else
      {
        v206 = -1;
      }

      v207 = v206 & *(v72 + 64);
      v208 = (63 - v205) >> 6;
      for (j = 0.0; v207; j = j + *(*(v72 + 56) + ((v210 << 9) | (8 * v211))))
      {
        v210 = v204;
LABEL_90:
        v211 = __clz(__rbit64(v207));
        v207 &= v207 - 1;
      }

      while (1)
      {
        v210 = v204 + 1;
        if (__OFADD__(v204, 1))
        {
          break;
        }

        if (v210 >= v208)
        {
          v397 = v202;
          v440 = v201;
          v0 = v448;
          v212 = *(v448 + 936);
          v213 = *(v448 + 704);
          v214 = *(v448 + 680);
          v215 = *(v448 + 672);
          v216 = *(v448 + 664);
          v217 = *(v448 + 648);
          v218 = *(v448 + 640);

          sub_265D58000();
          sub_265D58250();
          v219 = *(v214 + 8);
          v219(v213, v215);
          sub_265D57EE0();
          v221 = v220;
          v222 = *(v217 + 8);
          v222(v216, v218);
          v223 = floor(j + v221);
          sub_265D58000();
          sub_265D58250();
          v219(v213, v215);
          sub_265D57EE0();
          v225 = v224;
          v457 = v222;
          v222(v216, v218);
          if (floor(v225) >= v223)
          {
            v39 = *(v448 + 1072);
            (*(*(v448 + 912) + 8))(*(v448 + 936), *(v448 + 904));
            goto LABEL_52;
          }

          v424 = v219;
          v226 = *(v448 + 976);
          sub_265D595F0();
          v227 = sub_265D59DD0();
          v228 = sub_265D5A080();
          if (os_log_type_enabled(v227, v228))
          {
            v229 = swift_slowAlloc();
            *v229 = 134217984;
            *(v229 + 4) = j;
            _os_log_impl(&dword_265C01000, v227, v228, "DistributedSessionPublisher - Updating rings with %f uncounted calories.", v229, 0xCu);
            MEMORY[0x266770CF0](v229, -1, -1);
          }

          v428 = *(v448 + 976);
          v408 = *(v448 + 968);
          v230 = v227;
          v231 = *(v448 + 952);
          v232 = *(v448 + 944);
          v233 = *(v448 + 936);
          v404 = *(v448 + 928);
          v418 = *(v448 + 920);
          v474 = *(v448 + 912);
          v414 = *(v448 + 904);
          v234 = *(v448 + 704);
          v235 = *(v448 + 696);
          v236 = *(v448 + 688);
          v393 = *(v448 + 680);
          v432 = *(v448 + 672);
          v237 = *(v448 + 664);
          v238 = *(v448 + 656);
          v377 = *(v448 + 648);
          v372 = *(v448 + 640);
          v386 = *(v448 + 632);
          v239 = *(v448 + 624);
          v400 = *(v448 + 616);

          v464(v428, v232);
          sub_265D58000();
          sub_265D58000();
          sub_265D58250();
          v424(v235, v432);
          sub_265D58000();
          sub_265D58250();
          v424(v236, v432);
          sub_265D57EE0();
          v457(v238, v372);
          sub_265D57EF0();
          v457(v237, v372);
          v240 = *(v377 + 56);
          v240(v239, 0, 1, v372);
          sub_265D58260();
          sub_265CA4AE8(v239, &qword_28003EA30, &qword_265D5E230);
          v424(v234, v432);
          (*(v393 + 56))(v386, 0, 1, v432);
          v240(v239, 1, 1, v372);
          v240(v400, 1, 1, v372);
          sub_265D5A030();
          sub_265D58010();
          sub_265CA4AE8(v400, &qword_28003EA30, &qword_265D5E230);
          sub_265CA4AE8(v239, &qword_28003EA30, &qword_265D5E230);
          sub_265CA4AE8(v386, &qword_28003EA38, &qword_265D5E238);
          sub_265D595F0();
          v326 = *(v474 + 16);
          v326(v418, v404, v414);
          v241 = sub_265D59DD0();
          v242 = sub_265D5A080();
          v243 = os_log_type_enabled(v241, v242);
          v244 = *(v448 + 968);
          v245 = *(v448 + 944);
          v246 = *(v448 + 920);
          v247 = *(v448 + 912);
          v248 = *(v448 + 904);
          if (v243)
          {
            v458 = *(v448 + 944);
            v249 = swift_slowAlloc();
            v250 = swift_slowAlloc();
            v480[0] = v250;
            *v249 = 136315138;
            sub_265D40868(&qword_28003E600, MEMORY[0x277D50400]);
            v251 = sub_265D5A3B0();
            v252 = v244;
            v254 = v253;
            (*(v247 + 8))(v246, v248);
            v255 = sub_265CF4FFC(v251, v254, v480);

            *(v249 + 4) = v255;
            _os_log_impl(&dword_265C01000, v241, v242, "DistributedSessionPublisher - Updating Rings: %s", v249, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v250);
            MEMORY[0x266770CF0](v250, -1, -1);
            MEMORY[0x266770CF0](v249, -1, -1);

            v256 = v252;
            v257 = v458;
          }

          else
          {

            (*(v247 + 8))(v246, v248);
            v256 = v244;
            v257 = v245;
          }

          v464(v256, v257);
          v387 = *(v448 + 1056);
          v390 = *(v448 + 1048);
          v258 = *(v448 + 928);
          v373 = *(v448 + 912);
          v375 = *(v448 + 936);
          v259 = *(v448 + 904);
          v260 = *(v448 + 848);
          v378 = *(v448 + 840);
          v366 = *(v448 + 600);
          v368 = *(v448 + 1072);
          v370 = *(v448 + 592);
          v360 = *(v448 + 608);
          v362 = *(v448 + 584);
          v261 = *(v448 + 576);
          v262 = *(v448 + 568);
          v263 = *(v448 + 560);
          v264 = *(v448 + 552);
          v265 = *(v448 + 544);
          v465 = *(v448 + 536);
          v459 = *(v448 + 528);
          v439 = *(v448 + 520);
          v436 = *(v448 + 512);
          v433 = *(v448 + 504);
          v429 = *(v448 + 496);
          v425 = *(v448 + 488);
          v419 = *(v448 + 480);
          v415 = *(v448 + 472);
          v409 = *(v448 + 464);
          v405 = *(v448 + 456);
          v266 = *(v448 + 360);
          v358 = *(v266 + 176);
          v364 = *(v266 + 184);
          v401 = *(v448 + 448);
          v328 = *(v448 + 440);
          v330 = *(v448 + 432);
          v332 = *(v448 + 424);
          v335 = *(v448 + 416);
          v337 = *(v448 + 408);
          v340 = *(v448 + 400);
          v343 = *(v448 + 392);
          v346 = *(v448 + 384);
          v349 = *(v448 + 376);
          swift_getObjectType();
          sub_265D5A4C0();
          sub_265CD9C34();
          sub_265D58CF0();

          v326(v260, v258, v259);
          v467(v260, 0, 1, v259);
          v267 = sub_265D58410();
          (*(*(v267 - 8) + 56))(v261, 1, 1, v267);
          v268 = sub_265D58590();
          (*(*(v268 - 8) + 56))(v262, 1, 1, v268);
          v269 = sub_265D58050();
          (*(*(v269 - 8) + 56))(v263, 1, 1, v269);
          v270 = sub_265D58200();
          (*(*(v270 - 8) + 56))(v264, 1, 1, v270);
          v271 = sub_265D58BC0();
          (*(*(v271 - 8) + 56))(v265, 1, 1, v271);
          v272 = sub_265D583E0();
          (*(*(v272 - 8) + 56))(v465, 1, 1, v272);
          v273 = sub_265D581B0();
          (*(*(v273 - 8) + 56))(v459, 1, 1, v273);
          v274 = sub_265D57F50();
          (*(*(v274 - 8) + 56))(v439, 1, 1, v274);
          v275 = sub_265D582A0();
          (*(*(v275 - 8) + 56))(v436, 1, 1, v275);
          v276 = sub_265D58680();
          (*(*(v276 - 8) + 56))(v433, 1, 1, v276);
          v277 = sub_265D58210();
          (*(*(v277 - 8) + 56))(v429, 1, 1, v277);
          v278 = sub_265D57E80();
          (*(*(v278 - 8) + 56))(v425, 1, 1, v278);
          v279 = sub_265D58430();
          (*(*(v279 - 8) + 56))(v419, 1, 1, v279);
          v280 = sub_265D58300();
          (*(*(v280 - 8) + 56))(v415, 1, 1, v280);
          v281 = sub_265D586F0();
          (*(*(v281 - 8) + 56))(v409, 1, 1, v281);
          v282 = sub_265D57E90();
          (*(*(v282 - 8) + 56))(v405, 1, 1, v282);
          v283 = sub_265D581C0();
          (*(*(v283 - 8) + 56))(v401, 1, 1, v283);
          v284 = sub_265D58BB0();
          (*(*(v284 - 8) + 56))(v328, 1, 1, v284);
          v285 = sub_265D585C0();
          (*(*(v285 - 8) + 56))(v330, 1, 1, v285);
          v286 = sub_265D57EA0();
          (*(*(v286 - 8) + 56))(v332, 1, 1, v286);
          v287 = sub_265D57ED0();
          (*(*(v287 - 8) + 56))(v335, 1, 1, v287);
          v288 = sub_265D58240();
          (*(*(v288 - 8) + 56))(v337, 1, 1, v288);
          v289 = sub_265D58400();
          (*(*(v289 - 8) + 56))(v340, 1, 1, v289);
          v290 = sub_265D58600();
          (*(*(v290 - 8) + 56))(v343, 1, 1, v290);
          v291 = sub_265D58630();
          (*(*(v291 - 8) + 56))(v346, 1, 1, v291);
          v292 = sub_265D58B10();
          (*(*(v292 - 8) + 56))(v349, 1, 1, v292);
          sub_265D5A030();
          sub_265D580B0();
          sub_265D59080();
          sub_265D58ED0();
          (*(v366 + 8))(v360, v370);
          (*(v373 + 8))(v375, v259);
          *(v448 + 88) = 0;
          *(v448 + 72) = 0u;
          *(v448 + 56) = 0u;
          v394(v378, v258, v259);
          v467(v378, 0, 1, v259);
          sub_265D41F9C(v368, v387);
          v293 = swift_getEnumCaseMultiPayload();
          v294 = *(v448 + 1056);
          v295 = *(v448 + 1024);
          if (v293 == 1)
          {
            v466 = *(v448 + 904);
            v296 = *(v448 + 840);
            v297 = *(v448 + 824);
            v298 = *(v448 + 816);
            sub_265CA4AE8(v448 + 56, &qword_28003E528, &qword_265D5BF60);
            v299 = *(v294 + 2);
            v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
            v475 = *(v294 + *(v300 + 96));
            v460 = *v294;
            sub_265D42374(v294 + *(v300 + 80), v297, &qword_28003E5E0, &qword_265D5C080);
            v301 = *(v300 + 80);
            *v295 = v460;
            *(v295 + 16) = v299;
            sub_265D42374(v296, v298, &qword_28003E5E0, &qword_265D5C080);
            v302 = v410(v298, 1, v466);
            v303 = *(v448 + 904);
            v304 = *(v448 + 824);
            v305 = *(v448 + 816);
            if (v302 == 1)
            {
              sub_265D42374(v304, v295 + v301, &qword_28003E5E0, &qword_265D5C080);
              v307 = v380;
              v306 = v382;
              v308 = v397;
              if (v410(v305, 1, v303) != 1)
              {
                sub_265CA4AE8(*(v448 + 816), &qword_28003E5E0, &qword_265D5C080);
              }
            }

            else
            {
              sub_265CA4AE8(v304, &qword_28003E5E0, &qword_265D5C080);
              v394(v295 + v301, v305, v303);
              v467(v295 + v301, 0, 1, v303);
              v307 = v380;
              v306 = v382;
              v308 = v397;
            }

            v0 = v448;
            v313 = *(v448 + 1048);
            *(*(v448 + 1024) + *(v300 + 96)) = v475;
            swift_storeEnumTagMultiPayload();
            goto LABEL_115;
          }

          v309 = *(v448 + 832);
          v310 = *v294;
          v454 = v294[4];
          v461 = v294[3];
          v437 = v294[5];
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
          v311 = *(v80 + 160);
          v312 = *(v294 + *(v80 + 176));
          sub_265C033C4((v294 + 8), v448 + 96);
          sub_265D42374(v294 + v311, v309, &qword_28003E5E0, &qword_265D5C080);
          *v295 = v310;
          v106 = v295 + 8;
          v79 = v448;
          *(v448 + 152) = *(v448 + 72);
          *(v448 + 168) = *(v448 + 88);
          *(v448 + 136) = *(v448 + 56);
          v472 = v312;
          v113 = (v448 + 96);
          if (!*(v448 + 160))
          {
            goto LABEL_108;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v113);
          sub_265C033C4((v448 + 136), v106);
          v307 = v380;
          v306 = v382;
          goto LABEL_110;
        }

        v207 = *(v72 + 64 + 8 * v210);
        ++v204;
        if (v207)
        {
          v204 = v210;
          goto LABEL_90;
        }
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v54 = 0;
    v55 = *(v448 + 368);
    v4 = (v55 & 0xC000000000000001);
    v406 = v55 & 0xFFFFFFFFFFFFFF8;
    v397 = (v32 + 32);
    v402 = (*(v448 + 744) + 8);
    v56 = *(v448 + 768);
    *&v461 = v56 + 16;
    v477 = (v56 + 32);
    v450 = v56;
    v430 = (v56 + 8);
    v57 = MEMORY[0x277D84F98];
    v388 = i;
    v391 = v32;
    v384 = v4;
LABEL_17:
    if (v4)
    {
      break;
    }

    if (v54 < *(v406 + 16))
    {
      v60 = *(v397 + v54);
      goto LABEL_20;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    ;
  }

  v60 = MEMORY[0x2667702E0](v54, v32);
LABEL_20:
  v416 = v54 + 1;
  if (__OFADD__(v54, 1))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v61 = v57;
  v62 = *(v448 + 792);
  v471 = *(v448 + 760);
  v63 = *(v448 + 752);
  v64 = *(v448 + 736);
  v65 = v60;
  v66 = [v60 dateInterval];
  sub_265D57CF0();

  sub_265D57D00();
  (*v402)(v63, v64);
  v412 = v65;
  v67 = [v65 quantity];
  v68 = [objc_opt_self() kilocalorieUnit];
  [v67 doubleValueForUnit_];
  v70 = v69;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA50, &unk_265D5E250);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE90, &qword_265D5B0C8);
  v72 = *(v71 - 8);
  v73 = *(v72 + 72);
  v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_265D5AF60;
  v76 = v75 + v74;
  v444 = v71;
  v77 = *(v71 + 48);
  v78 = v62;
  v4 = v448;
  *&v454 = *v461;
  (*v461)(v76, v78, v471);
  *(v76 + v77) = v70;
  v79 = sub_265C96BC8(v75);
  swift_setDeallocating();
  sub_265CA4AE8(v76, &qword_28003DE90, &qword_265D5B0C8);
  swift_deallocClassInstance();
  v80 = v61;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *(v79 + 64);
  v426 = v79 + 64;
  v480[0] = v61;
  v83 = -1 << *(v79 + 32);
  if (-v83 < 64)
  {
    v84 = ~(-1 << -v83);
  }

  else
  {
    v84 = -1;
  }

  v32 = v84 & v82;
  v422 = (63 - v83) >> 6;
  v440 = (v72 + 56);
  *&v437 = v72 + 48;
  v434 = v79;

  for (k = 0; ; k = v79)
  {
    v472 = v80;
    LODWORD(v467) = v81;
    if (!v32)
    {
      if (v422 <= (k + 1))
      {
        v86 = k + 1;
      }

      else
      {
        v86 = v422;
      }

      v87 = v86 - 1;
      while (1)
      {
        v5 = k + 1;
        if (__OFADD__(k, 1))
        {
          break;
        }

        if (v5 >= v422)
        {
          v123 = *(v4 + 90);
          v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260);
          (*(*(v124 - 8) + 56))(v123, 1, 1, v124);
          v32 = 0;
          goto LABEL_37;
        }

        v32 = *(v426 + 8 * v5);
        ++k;
        if (v32)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

    v5 = k;
LABEL_36:
    v88 = *(v4 + 98);
    v89 = *(v4 + 95);
    v90 = *(v4 + 90);
    v91 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v92 = v91 | (v5 << 6);
    (v454)(v88, *(v434 + 48) + *(v450 + 72) * v92, v89);
    v93 = *(*(v434 + 56) + 8 * v92);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260);
    v95 = *(v94 + 48);
    v4 = v448;
    (*(v450 + 32))(v90, v88, v89);
    *(v90 + v95) = v93;
    (*(*(v94 - 8) + 56))(v90, 0, 1, v94);
    v87 = v5;
LABEL_37:
    v96 = *(v4 + 89);
    sub_265D42374(*(v4 + 90), v96, &qword_28003EA40, &qword_265D5E240);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260);
    v98 = 1;
    if ((*(*(v97 - 8) + 48))(v96, 1, v97) != 1)
    {
      v99 = *(v4 + 91);
      v100 = *(v4 + 89);
      v101 = *(v97 + 48);
      v102 = *(v444 + 48);
      v103 = *(v100 + v101);
      (v454)(v99, v100, *(v4 + 95));
      *(v99 + v102) = v103;
      sub_265CA4AE8(v100, &qword_28003EA58, &unk_265D5E260);
      v98 = 0;
    }

    v104 = *(v4 + 91);
    (*v440)(v104, v98, 1, v444);
    if ((*v437)(v104, 1, v444) == 1)
    {
      v58 = *(v4 + 99);
      v59 = *(v4 + 95);

      (*v430)(v58, v59);

      v32 = v391;
      v54 = v416;
      v57 = v472;
      v4 = v384;
      if (v416 == v388)
      {
        goto LABEL_62;
      }

      goto LABEL_17;
    }

    v79 = v87;
    v105 = *(v4 + 97);
    v106 = *(v4 + 91);
    v72 = *(v444 + 48);
    v5 = *v477;
    (*v477)(v105, v106, *(v4 + 95));
    v107 = *(v106 + v72);
    v108 = v105;
    v80 = v472;
    v110 = sub_265CE2CC4(v108);
    v111 = *(v472 + 16);
    v112 = (v109 & 1) == 0;
    v113 = (v111 + v112);
    if (__OFADD__(v111, v112))
    {
      break;
    }

    v114 = v109;
    if (*(v472 + 24) >= v113)
    {
      if ((v467 & 1) == 0)
      {
        sub_265CE6318();
        v80 = v480[0];
      }
    }

    else
    {
      v115 = *(v4 + 97);
      sub_265CE4278(v113, v467 & 1);
      v80 = v480[0];
      v116 = sub_265CE2CC4(v115);
      if ((v114 & 1) != (v117 & 1))
      {
        v137 = *(v4 + 95);

        return sub_265D5A3F0();
      }

      v110 = v116;
    }

    v118 = *(v4 + 97);
    v119 = *(v4 + 95);
    if (v114)
    {
      (*v430)(*(v4 + 97), *(v4 + 95));
      *(*(v80 + 56) + 8 * v110) = v107;
    }

    else
    {
      *(v80 + 8 * (v110 >> 6) + 64) |= 1 << v110;
      (v5)(*(v80 + 48) + *(v450 + 72) * v110, v118, v119);
      *(*(v80 + 56) + 8 * v110) = v107;
      v120 = *(v80 + 16);
      v121 = __OFADD__(v120, 1);
      v122 = v120 + 1;
      if (v121)
      {
        __break(1u);
        goto LABEL_117;
      }

      *(v80 + 16) = v122;
    }

    v81 = 1;
  }

  __break(1u);
LABEL_108:
  sub_265C033C4(v113, v106);
  v307 = v380;
  v306 = v382;
  if (*(v79 + 160))
  {
    sub_265CA4AE8(v79 + 136, &qword_28003E528, &qword_265D5BF60);
  }

LABEL_110:
  v314 = *(v79 + 1024);
  v315 = *(v79 + 904);
  v316 = *(v79 + 840);
  v317 = *(v79 + 808);
  v318 = *(v80 + 160);
  v314[3] = v461;
  v314[4] = v454;
  v314[5] = v437;
  sub_265D42374(v316, v317, &qword_28003E5E0, &qword_265D5C080);
  v319 = v410(v317, 1, v315);
  v320 = *(v79 + 904);
  v321 = *(v79 + 832);
  v322 = *(v79 + 808);
  if (v319 == 1)
  {
    sub_265D42374(v321, v314 + v318, &qword_28003E5E0, &qword_265D5C080);
    v308 = v397;
    if (v410(v322, 1, v320) != 1)
    {
      sub_265CA4AE8(*(v448 + 808), &qword_28003E5E0, &qword_265D5C080);
    }
  }

  else
  {
    sub_265CA4AE8(v321, &qword_28003E5E0, &qword_265D5C080);
    v394(v314 + v318, v322, v320);
    v467(v314 + v318, 0, 1, v320);
    v308 = v397;
  }

  v0 = v448;
  v323 = *(v448 + 1048);
  *(*(v448 + 1024) + *(v80 + 176)) = v472;
  swift_storeEnumTagMultiPayload();
LABEL_115:
  v324 = *(v0 + 1024);
  v325 = *(v0 + 1008);
  (v440)(v324, v420, v325);
  swift_beginAccess();
  v308(&v306[v307], v324, v325);
  swift_endAccess();
LABEL_54:
  (*(*(v0 + 768) + 8))(*(v0 + 800), *(v0 + 760));
LABEL_55:
  v125 = *(v0 + 1072);
  v126 = *(v0 + 1064);
  v127 = *(v0 + 1056);
  v128 = *(v0 + 1040);
  v129 = *(v0 + 1032);
  v130 = *(v0 + 1024);
  v131 = *(v0 + 1000);
  v132 = *(v0 + 992);
  v133 = *(v0 + 984);
  v134 = *(v0 + 976);
  v327 = *(v0 + 968);
  v329 = *(v0 + 960);
  v331 = *(v0 + 936);
  v333 = *(v0 + 928);
  v334 = *(v0 + 920);
  v336 = *(v0 + 896);
  v338 = *(v0 + 888);
  v339 = *(v0 + 880);
  v341 = *(v0 + 872);
  v342 = *(v0 + 864);
  v344 = *(v0 + 856);
  v345 = *(v0 + 848);
  v347 = *(v0 + 840);
  v348 = *(v0 + 832);
  v350 = *(v0 + 824);
  v351 = *(v0 + 816);
  v352 = *(v0 + 808);
  v353 = *(v0 + 800);
  v354 = *(v0 + 792);
  v355 = *(v0 + 784);
  v356 = *(v0 + 776);
  v357 = *(v0 + 752);
  v359 = *(v0 + 728);
  v361 = *(v0 + 720);
  v363 = *(v0 + 712);
  v365 = *(v0 + 704);
  v367 = *(v0 + 696);
  v369 = *(v0 + 688);
  v371 = *(v0 + 664);
  v374 = *(v0 + 656);
  v376 = *(v0 + 632);
  v379 = *(v0 + 624);
  v381 = *(v0 + 616);
  v383 = *(v0 + 608);
  v385 = *(v0 + 584);
  v389 = *(v0 + 576);
  v392 = *(v0 + 568);
  v395 = *(v0 + 560);
  v396 = *(v0 + 552);
  v398 = *(v0 + 544);
  v399 = *(v0 + 536);
  v403 = *(v0 + 528);
  v407 = *(v0 + 520);
  v411 = *(v0 + 512);
  v413 = *(v0 + 504);
  v417 = *(v0 + 496);
  v421 = *(v0 + 488);
  v423 = *(v0 + 480);
  v427 = *(v0 + 472);
  v431 = *(v0 + 464);
  v435 = *(v0 + 456);
  v438 = *(v0 + 448);
  v441 = *(v0 + 440);
  v445 = *(v0 + 432);
  v449 = *(v0 + 424);
  v451 = *(v0 + 416);
  v455 = *(v0 + 408);
  v463 = *(v0 + 400);
  v469 = *(v0 + 392);
  v473 = *(v0 + 384);
  v478 = *(v0 + 376);

  v135 = *(v0 + 8);

  return v135();
}

uint64_t sub_265D3A540(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *a2;
  v10 = sub_265D57E30();
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  *&v8[*(v5 + 56)] = v9;
  v11 = sub_265D57DF0();
  sub_265CA4AE8(v8, &qword_28003EA58, &unk_265D5E260);
  return v11 & 1;
}

uint64_t sub_265D3A658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v33 = sub_265D59090();
  v3[35] = v33;
  v34 = *(v33 - 8);
  v3[36] = v34;
  v35 = *(v34 + 64) + 15;
  v3[37] = swift_task_alloc();
  v36 = sub_265D59DE0();
  v3[38] = v36;
  v37 = *(v36 - 8);
  v3[39] = v37;
  v38 = *(v37 + 64) + 15;
  v3[40] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[41] = v39;
  v40 = *(v39 - 8);
  v3[42] = v40;
  v41 = *(v40 + 64) + 15;
  v3[43] = swift_task_alloc();
  v42 = *(*(type metadata accessor for DistributedSessionPublisher.State(0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D3AE20, a2, 0);
}

uint64_t sub_265D3AE20()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D4F250])
  {
    v7 = v0[43];
    v6 = v0[44];
    v76 = v6;
    v82 = v0[37];
    v84 = v0[36];
    v86 = v0[35];
    v80 = v0[34];
    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    v110 = v0[27];
    v112 = v0[28];
    v108 = v0[26];
    v104 = v0[23];
    v106 = v0[24];
    v100 = v0[21];
    v102 = v0[22];
    v96 = v0[19];
    v98 = v0[20];
    v92 = v0[17];
    v94 = v0[18];
    v88 = v0[25];
    v90 = v0[16];
    v64 = v0[15];
    v65 = v0[14];
    v66 = v0[13];
    v67 = v0[12];
    v68 = v0[11];
    v13 = v0[9];
    v69 = v0[10];
    v70 = v0[8];
    v71 = v0[7];
    v14 = v0[5];
    v63 = v0[6];
    (*(v0[42] + 96))(v7, v0[41]);
    sub_265D41F9C(v7, v6);
    v74 = *(v14 + 176);
    v78 = *(v14 + 184);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CD9C34();
    sub_265D58CF0();

    v15 = sub_265D58020();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = sub_265D58410();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = sub_265D58590();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = sub_265D58050();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = sub_265D58200();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v20 = sub_265D58BC0();
    (*(*(v20 - 8) + 56))(v112, 1, 1, v20);
    v21 = sub_265D583E0();
    (*(*(v21 - 8) + 56))(v110, 1, 1, v21);
    v22 = sub_265D581B0();
    (*(*(v22 - 8) + 56))(v108, 1, 1, v22);
    v23 = sub_265D57F50();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v88, v63, v23);
    (*(v24 + 56))(v88, 0, 1, v23);
    v25 = sub_265D582A0();
    (*(*(v25 - 8) + 56))(v106, 1, 1, v25);
    v26 = sub_265D58680();
    (*(*(v26 - 8) + 56))(v104, 1, 1, v26);
    v27 = sub_265D58210();
    (*(*(v27 - 8) + 56))(v102, 1, 1, v27);
    v28 = sub_265D57E80();
    (*(*(v28 - 8) + 56))(v100, 1, 1, v28);
    v29 = sub_265D58430();
    (*(*(v29 - 8) + 56))(v98, 1, 1, v29);
    v30 = sub_265D58300();
    (*(*(v30 - 8) + 56))(v96, 1, 1, v30);
    v31 = sub_265D586F0();
    (*(*(v31 - 8) + 56))(v94, 1, 1, v31);
    v32 = sub_265D57E90();
    (*(*(v32 - 8) + 56))(v92, 1, 1, v32);
    v33 = sub_265D581C0();
    (*(*(v33 - 8) + 56))(v90, 1, 1, v33);
    v34 = sub_265D58BB0();
    (*(*(v34 - 8) + 56))(v64, 1, 1, v34);
    v35 = sub_265D585C0();
    (*(*(v35 - 8) + 56))(v65, 1, 1, v35);
    v36 = sub_265D57EA0();
    (*(*(v36 - 8) + 56))(v66, 1, 1, v36);
    v37 = sub_265D57ED0();
    (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
    v38 = sub_265D58240();
    (*(*(v38 - 8) + 56))(v68, 1, 1, v38);
    v39 = sub_265D58400();
    (*(*(v39 - 8) + 56))(v69, 1, 1, v39);
    v40 = sub_265D58600();
    (*(*(v40 - 8) + 56))(v13, 1, 1, v40);
    v41 = sub_265D58630();
    (*(*(v41 - 8) + 56))(v70, 1, 1, v41);
    v42 = sub_265D58B10();
    (*(*(v42 - 8) + 56))(v71, 1, 1, v42);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v84 + 8))(v82, v86);
    sub_265CDA484(v76);
  }

  else
  {
    v43 = v0[40];
    (*(v0[42] + 8))(v0[43], v0[41]);
    sub_265D595F0();
    v44 = sub_265D59DD0();
    v45 = sub_265D5A070();
    v46 = os_log_type_enabled(v44, v45);
    v48 = v0[39];
    v47 = v0[40];
    v49 = v0[38];
    if (v46)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_265C01000, v44, v45, "DistributedSessionPublisher - No active session to update workout calories.", v50, 2u);
      MEMORY[0x266770CF0](v50, -1, -1);
    }

    (*(v48 + 8))(v47, v49);
  }

  v52 = v0[43];
  v51 = v0[44];
  v53 = v0[40];
  v54 = v0[37];
  v55 = v0[33];
  v56 = v0[34];
  v58 = v0[31];
  v57 = v0[32];
  v60 = v0[29];
  v59 = v0[30];
  v72 = v0[28];
  v73 = v0[27];
  v75 = v0[26];
  v77 = v0[25];
  v79 = v0[24];
  v81 = v0[23];
  v83 = v0[22];
  v85 = v0[21];
  v87 = v0[20];
  v89 = v0[19];
  v91 = v0[18];
  v93 = v0[17];
  v95 = v0[16];
  v97 = v0[15];
  v99 = v0[14];
  v101 = v0[13];
  v103 = v0[12];
  v105 = v0[11];
  v107 = v0[10];
  v109 = v0[9];
  v111 = v0[8];
  v113 = v0[7];

  v61 = v0[1];

  return v61();
}

uint64_t sub_265D3BA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v33 = sub_265D59090();
  v3[35] = v33;
  v34 = *(v33 - 8);
  v3[36] = v34;
  v35 = *(v34 + 64) + 15;
  v3[37] = swift_task_alloc();
  v36 = sub_265D59DE0();
  v3[38] = v36;
  v37 = *(v36 - 8);
  v3[39] = v37;
  v38 = *(v37 + 64) + 15;
  v3[40] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[41] = v39;
  v40 = *(v39 - 8);
  v3[42] = v40;
  v41 = *(v40 + 64) + 15;
  v3[43] = swift_task_alloc();
  v42 = *(*(type metadata accessor for DistributedSessionPublisher.State(0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D3C208, a2, 0);
}

uint64_t sub_265D3C208()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D4F250])
  {
    v7 = v0[43];
    v6 = v0[44];
    v76 = v6;
    v82 = v0[37];
    v84 = v0[36];
    v86 = v0[35];
    v80 = v0[34];
    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    v110 = v0[27];
    v112 = v0[28];
    v88 = v0[26];
    v106 = v0[24];
    v108 = v0[25];
    v102 = v0[22];
    v104 = v0[23];
    v98 = v0[20];
    v100 = v0[21];
    v94 = v0[18];
    v96 = v0[19];
    v90 = v0[16];
    v92 = v0[17];
    v64 = v0[15];
    v65 = v0[14];
    v66 = v0[13];
    v67 = v0[12];
    v68 = v0[11];
    v69 = v0[10];
    v13 = v0[9];
    v70 = v0[8];
    v71 = v0[7];
    v63 = v0[6];
    v14 = v0[5];
    (*(v0[42] + 96))(v7, v0[41]);
    sub_265D41F9C(v7, v6);
    v74 = *(v14 + 176);
    v78 = *(v14 + 184);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CD9C34();
    sub_265D58CF0();

    v15 = sub_265D58020();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = sub_265D58410();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = sub_265D58590();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = sub_265D58050();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = sub_265D58200();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v20 = sub_265D58BC0();
    (*(*(v20 - 8) + 56))(v112, 1, 1, v20);
    v21 = sub_265D583E0();
    (*(*(v21 - 8) + 56))(v110, 1, 1, v21);
    v22 = sub_265D581B0();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v88, v63, v22);
    (*(v23 + 56))(v88, 0, 1, v22);
    v24 = sub_265D57F50();
    (*(*(v24 - 8) + 56))(v108, 1, 1, v24);
    v25 = sub_265D582A0();
    (*(*(v25 - 8) + 56))(v106, 1, 1, v25);
    v26 = sub_265D58680();
    (*(*(v26 - 8) + 56))(v104, 1, 1, v26);
    v27 = sub_265D58210();
    (*(*(v27 - 8) + 56))(v102, 1, 1, v27);
    v28 = sub_265D57E80();
    (*(*(v28 - 8) + 56))(v100, 1, 1, v28);
    v29 = sub_265D58430();
    (*(*(v29 - 8) + 56))(v98, 1, 1, v29);
    v30 = sub_265D58300();
    (*(*(v30 - 8) + 56))(v96, 1, 1, v30);
    v31 = sub_265D586F0();
    (*(*(v31 - 8) + 56))(v94, 1, 1, v31);
    v32 = sub_265D57E90();
    (*(*(v32 - 8) + 56))(v92, 1, 1, v32);
    v33 = sub_265D581C0();
    (*(*(v33 - 8) + 56))(v90, 1, 1, v33);
    v34 = sub_265D58BB0();
    (*(*(v34 - 8) + 56))(v64, 1, 1, v34);
    v35 = sub_265D585C0();
    (*(*(v35 - 8) + 56))(v65, 1, 1, v35);
    v36 = sub_265D57EA0();
    (*(*(v36 - 8) + 56))(v66, 1, 1, v36);
    v37 = sub_265D57ED0();
    (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
    v38 = sub_265D58240();
    (*(*(v38 - 8) + 56))(v68, 1, 1, v38);
    v39 = sub_265D58400();
    (*(*(v39 - 8) + 56))(v69, 1, 1, v39);
    v40 = sub_265D58600();
    (*(*(v40 - 8) + 56))(v13, 1, 1, v40);
    v41 = sub_265D58630();
    (*(*(v41 - 8) + 56))(v70, 1, 1, v41);
    v42 = sub_265D58B10();
    (*(*(v42 - 8) + 56))(v71, 1, 1, v42);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v84 + 8))(v82, v86);
    sub_265CDA484(v76);
  }

  else
  {
    v43 = v0[40];
    (*(v0[42] + 8))(v0[43], v0[41]);
    sub_265D595F0();
    v44 = sub_265D59DD0();
    v45 = sub_265D5A070();
    v46 = os_log_type_enabled(v44, v45);
    v48 = v0[39];
    v47 = v0[40];
    v49 = v0[38];
    if (v46)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_265C01000, v44, v45, "DistributedSessionPublisher - No active session to update workout distance.", v50, 2u);
      MEMORY[0x266770CF0](v50, -1, -1);
    }

    (*(v48 + 8))(v47, v49);
  }

  v52 = v0[43];
  v51 = v0[44];
  v53 = v0[40];
  v54 = v0[37];
  v55 = v0[33];
  v56 = v0[34];
  v58 = v0[31];
  v57 = v0[32];
  v60 = v0[29];
  v59 = v0[30];
  v72 = v0[28];
  v73 = v0[27];
  v75 = v0[26];
  v77 = v0[25];
  v79 = v0[24];
  v81 = v0[23];
  v83 = v0[22];
  v85 = v0[21];
  v87 = v0[20];
  v89 = v0[19];
  v91 = v0[18];
  v93 = v0[17];
  v95 = v0[16];
  v97 = v0[15];
  v99 = v0[14];
  v101 = v0[13];
  v103 = v0[12];
  v105 = v0[11];
  v107 = v0[10];
  v109 = v0[9];
  v111 = v0[8];
  v113 = v0[7];

  v61 = v0[1];

  return v61();
}

uint64_t sub_265D3CE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v33 = sub_265D59090();
  v3[35] = v33;
  v34 = *(v33 - 8);
  v3[36] = v34;
  v35 = *(v34 + 64) + 15;
  v3[37] = swift_task_alloc();
  v36 = sub_265D59DE0();
  v3[38] = v36;
  v37 = *(v36 - 8);
  v3[39] = v37;
  v38 = *(v37 + 64) + 15;
  v3[40] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[41] = v39;
  v40 = *(v39 - 8);
  v3[42] = v40;
  v41 = *(v40 + 64) + 15;
  v3[43] = swift_task_alloc();
  v42 = *(*(type metadata accessor for DistributedSessionPublisher.State(0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D3D5EC, a2, 0);
}

uint64_t sub_265D3D5EC()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D4F250])
  {
    v7 = v0[43];
    v6 = v0[44];
    v78 = v6;
    v84 = v0[37];
    v86 = v0[36];
    v88 = v0[35];
    v82 = v0[34];
    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v13 = v0[28];
    v12 = v0[29];
    v110 = v0[26];
    v112 = v0[27];
    v106 = v0[24];
    v108 = v0[25];
    v102 = v0[21];
    v104 = v0[23];
    v98 = v0[19];
    v100 = v0[20];
    v94 = v0[17];
    v96 = v0[18];
    v90 = v0[22];
    v92 = v0[16];
    v64 = v0[15];
    v65 = v0[14];
    v66 = v0[13];
    v67 = v0[12];
    v68 = v0[11];
    v69 = v0[10];
    v70 = v0[9];
    v71 = v0[8];
    v72 = v0[7];
    v14 = v0[5];
    v63 = v0[6];
    (*(v0[42] + 96))(v7, v0[41]);
    sub_265D41F9C(v7, v6);
    v76 = *(v14 + 176);
    v80 = *(v14 + 184);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CD9C34();
    sub_265D58CF0();

    v15 = sub_265D58020();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = sub_265D58410();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = sub_265D58590();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = sub_265D58050();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = sub_265D58200();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v20 = sub_265D58BC0();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    v21 = sub_265D583E0();
    (*(*(v21 - 8) + 56))(v112, 1, 1, v21);
    v22 = sub_265D581B0();
    (*(*(v22 - 8) + 56))(v110, 1, 1, v22);
    v23 = sub_265D57F50();
    (*(*(v23 - 8) + 56))(v108, 1, 1, v23);
    v24 = sub_265D582A0();
    (*(*(v24 - 8) + 56))(v106, 1, 1, v24);
    v25 = sub_265D58680();
    (*(*(v25 - 8) + 56))(v104, 1, 1, v25);
    v26 = sub_265D58210();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v90, v63, v26);
    (*(v27 + 56))(v90, 0, 1, v26);
    v28 = sub_265D57E80();
    (*(*(v28 - 8) + 56))(v102, 1, 1, v28);
    v29 = sub_265D58430();
    (*(*(v29 - 8) + 56))(v100, 1, 1, v29);
    v30 = sub_265D58300();
    (*(*(v30 - 8) + 56))(v98, 1, 1, v30);
    v31 = sub_265D586F0();
    (*(*(v31 - 8) + 56))(v96, 1, 1, v31);
    v32 = sub_265D57E90();
    (*(*(v32 - 8) + 56))(v94, 1, 1, v32);
    v33 = sub_265D581C0();
    (*(*(v33 - 8) + 56))(v92, 1, 1, v33);
    v34 = sub_265D58BB0();
    (*(*(v34 - 8) + 56))(v64, 1, 1, v34);
    v35 = sub_265D585C0();
    (*(*(v35 - 8) + 56))(v65, 1, 1, v35);
    v36 = sub_265D57EA0();
    (*(*(v36 - 8) + 56))(v66, 1, 1, v36);
    v37 = sub_265D57ED0();
    (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
    v38 = sub_265D58240();
    (*(*(v38 - 8) + 56))(v68, 1, 1, v38);
    v39 = sub_265D58400();
    (*(*(v39 - 8) + 56))(v69, 1, 1, v39);
    v40 = sub_265D58600();
    (*(*(v40 - 8) + 56))(v70, 1, 1, v40);
    v41 = sub_265D58630();
    (*(*(v41 - 8) + 56))(v71, 1, 1, v41);
    v42 = sub_265D58B10();
    (*(*(v42 - 8) + 56))(v72, 1, 1, v42);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v86 + 8))(v84, v88);
    sub_265CDA484(v78);
  }

  else
  {
    v43 = v0[40];
    (*(v0[42] + 8))(v0[43], v0[41]);
    sub_265D595F0();
    v44 = sub_265D59DD0();
    v45 = sub_265D5A070();
    v46 = os_log_type_enabled(v44, v45);
    v48 = v0[39];
    v47 = v0[40];
    v49 = v0[38];
    if (v46)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_265C01000, v44, v45, "DistributedSessionPublisher - No active session to update workout heart rate.", v50, 2u);
      MEMORY[0x266770CF0](v50, -1, -1);
    }

    (*(v48 + 8))(v47, v49);
  }

  v52 = v0[43];
  v51 = v0[44];
  v53 = v0[40];
  v54 = v0[37];
  v55 = v0[33];
  v56 = v0[34];
  v58 = v0[31];
  v57 = v0[32];
  v60 = v0[29];
  v59 = v0[30];
  v73 = v0[28];
  v74 = v0[27];
  v75 = v0[26];
  v77 = v0[25];
  v79 = v0[24];
  v81 = v0[23];
  v83 = v0[22];
  v85 = v0[21];
  v87 = v0[20];
  v89 = v0[19];
  v91 = v0[18];
  v93 = v0[17];
  v95 = v0[16];
  v97 = v0[15];
  v99 = v0[14];
  v101 = v0[13];
  v103 = v0[12];
  v105 = v0[11];
  v107 = v0[10];
  v109 = v0[9];
  v111 = v0[8];
  v113 = v0[7];

  v61 = v0[1];

  return v61();
}

uint64_t sub_265D3E220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v33 = sub_265D59090();
  v3[38] = v33;
  v34 = *(v33 - 8);
  v3[39] = v34;
  v35 = *(v34 + 64) + 15;
  v3[40] = swift_task_alloc();
  v36 = sub_265D58B10();
  v3[41] = v36;
  v37 = *(v36 - 8);
  v3[42] = v37;
  v38 = *(v37 + 64) + 15;
  v3[43] = swift_task_alloc();
  v39 = sub_265D59DE0();
  v3[44] = v39;
  v40 = *(v39 - 8);
  v3[45] = v40;
  v41 = *(v40 + 64) + 15;
  v3[46] = swift_task_alloc();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[47] = v42;
  v43 = *(v42 - 8);
  v3[48] = v43;
  v44 = *(v43 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v45 = type metadata accessor for DistributedSessionPublisher.State(0);
  v3[51] = v45;
  v46 = *(*(v45 - 8) + 64) + 15;
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D3EA54, a2, 0);
}

uint64_t sub_265D3EA54()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 64);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  v6 = (*(v3 + 88))(v1, v2);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v76 = v5;
    v77 = v4;
    v78 = v6;
    v7 = *(v0 + 416);
    v8 = *(v0 + 400);
    v9 = *(v0 + 344);
    v86 = *(v0 + 336);
    v90 = *(v0 + 328);
    v98 = *(v0 + 312);
    v94 = *(v0 + 320);
    v96 = *(v0 + 304);
    v10 = *(v0 + 288);
    v92 = *(v0 + 296);
    v11 = *(v0 + 272);
    v12 = *(v0 + 280);
    v13 = *(v0 + 264);
    v130 = *(v0 + 240);
    v132 = *(v0 + 248);
    v126 = *(v0 + 224);
    v128 = *(v0 + 232);
    v122 = *(v0 + 208);
    v124 = *(v0 + 216);
    v118 = *(v0 + 192);
    v120 = *(v0 + 200);
    v114 = *(v0 + 256);
    v116 = *(v0 + 184);
    v112 = *(v0 + 176);
    v108 = *(v0 + 160);
    v110 = *(v0 + 168);
    v104 = *(v0 + 144);
    v106 = *(v0 + 152);
    v100 = *(v0 + 128);
    v102 = *(v0 + 136);
    v79 = *(v0 + 120);
    v80 = *(v0 + 112);
    v81 = *(v0 + 104);
    v82 = *(v0 + 96);
    v83 = *(v0 + 88);
    v84 = *(v0 + 80);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    (*(*(v0 + 384) + 96))(v8, *(v0 + 376));
    sub_265D41F9C(v8, v7);
    sub_265D59180();
    sub_265D59190();
    sub_265D5A030();
    sub_265D58AD0();
    v85 = *(v15 + 176);
    v88 = *(v15 + 184);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CD9C34();
    sub_265D58CF0();

    v16 = sub_265D58020();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = sub_265D58410();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    v18 = sub_265D58590();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = sub_265D58050();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = sub_265D58200();
    (*(*(v20 - 8) + 56))(v114, 1, 1, v20);
    v21 = sub_265D58BC0();
    (*(*(v21 - 8) + 56))(v132, 1, 1, v21);
    v22 = sub_265D583E0();
    (*(*(v22 - 8) + 56))(v130, 1, 1, v22);
    v23 = sub_265D581B0();
    (*(*(v23 - 8) + 56))(v128, 1, 1, v23);
    v24 = sub_265D57F50();
    (*(*(v24 - 8) + 56))(v126, 1, 1, v24);
    v25 = sub_265D582A0();
    (*(*(v25 - 8) + 56))(v124, 1, 1, v25);
    v26 = sub_265D58680();
    (*(*(v26 - 8) + 56))(v122, 1, 1, v26);
    v27 = sub_265D58210();
    (*(*(v27 - 8) + 56))(v120, 1, 1, v27);
    v28 = sub_265D57E80();
    (*(*(v28 - 8) + 56))(v118, 1, 1, v28);
    v29 = sub_265D58430();
    (*(*(v29 - 8) + 56))(v116, 1, 1, v29);
    v30 = sub_265D58300();
    (*(*(v30 - 8) + 56))(v112, 1, 1, v30);
    v31 = sub_265D586F0();
    (*(*(v31 - 8) + 56))(v110, 1, 1, v31);
    v32 = sub_265D57E90();
    (*(*(v32 - 8) + 56))(v108, 1, 1, v32);
    v33 = sub_265D581C0();
    (*(*(v33 - 8) + 56))(v106, 1, 1, v33);
    v34 = sub_265D58BB0();
    (*(*(v34 - 8) + 56))(v104, 1, 1, v34);
    v35 = sub_265D585C0();
    (*(*(v35 - 8) + 56))(v102, 1, 1, v35);
    v36 = sub_265D57EA0();
    (*(*(v36 - 8) + 56))(v100, 1, 1, v36);
    v37 = sub_265D57ED0();
    (*(*(v37 - 8) + 56))(v79, 1, 1, v37);
    v38 = sub_265D58240();
    (*(*(v38 - 8) + 56))(v80, 1, 1, v38);
    v39 = sub_265D58400();
    (*(*(v39 - 8) + 56))(v81, 1, 1, v39);
    v40 = sub_265D58600();
    (*(*(v40 - 8) + 56))(v82, 1, 1, v40);
    v41 = sub_265D58630();
    (*(*(v41 - 8) + 56))(v83, 1, 1, v41);
    (*(v86 + 16))(v84, v9, v90);
    (*(v86 + 56))(v84, 0, 1, v90);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v98 + 8))(v94, v96);
    v42 = sub_265D58B00();
    *(v0 + 424) = v42;
    *(v0 + 428) = BYTE4(v42) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E8, &qword_265D5C088);
    sub_265D57F80();
    v43 = *(v0 + 429);
    if (v43 < 3 || v43 == 5)
    {
      v44 = *(v0 + 416);
      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
      sub_265CDA484(v44);
    }

    else
    {
      v66 = *(v0 + 408);
      v65 = *(v0 + 416);
      v68 = *(v0 + 384);
      v67 = *(v0 + 392);
      v69 = *(v0 + 376);
      v70 = *(v0 + 336);
      v134 = *(v0 + 344);
      v71 = *(v0 + 328);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
      v73 = *(v72 + 80);
      v74 = *(v72 + 96);
      *v67 = sub_265CD9C34();
      v67[1] = sub_265CD9E44();
      v67[2] = sub_265CD9F80();
      sub_265CDA0C4(v67 + v73);
      v75 = sub_265CDA21C();
      (*(v70 + 8))(v134, v71);
      sub_265CDA484(v65);
      *(v67 + v74) = v75;
      swift_storeEnumTagMultiPayload();
      (*(v68 + 104))(v67, v78, v69);
      swift_beginAccess();
      (*(v68 + 40))(v77 + v76, v67, v69);
      swift_endAccess();
    }
  }

  else
  {
    v45 = *(v0 + 368);
    (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
    sub_265D595F0();
    v46 = sub_265D59DD0();
    v47 = sub_265D5A070();
    v48 = os_log_type_enabled(v46, v47);
    v50 = *(v0 + 360);
    v49 = *(v0 + 368);
    v51 = *(v0 + 352);
    if (v48)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_265C01000, v46, v47, "DistributedSessionPublisher - No active session to update elapsed time.", v52, 2u);
      MEMORY[0x266770CF0](v52, -1, -1);
    }

    (*(v50 + 8))(v49, v51);
  }

  v53 = *(v0 + 416);
  v54 = *(v0 + 392);
  v55 = *(v0 + 400);
  v56 = *(v0 + 368);
  v57 = *(v0 + 344);
  v58 = *(v0 + 320);
  v60 = *(v0 + 288);
  v59 = *(v0 + 296);
  v61 = *(v0 + 272);
  v62 = *(v0 + 280);
  v87 = *(v0 + 264);
  v89 = *(v0 + 256);
  v91 = *(v0 + 248);
  v93 = *(v0 + 240);
  v95 = *(v0 + 232);
  v97 = *(v0 + 224);
  v99 = *(v0 + 216);
  v101 = *(v0 + 208);
  v103 = *(v0 + 200);
  v105 = *(v0 + 192);
  v107 = *(v0 + 184);
  v109 = *(v0 + 176);
  v111 = *(v0 + 168);
  v113 = *(v0 + 160);
  v115 = *(v0 + 152);
  v117 = *(v0 + 144);
  v119 = *(v0 + 136);
  v121 = *(v0 + 128);
  v123 = *(v0 + 120);
  v125 = *(v0 + 112);
  v127 = *(v0 + 104);
  v129 = *(v0 + 96);
  v131 = *(v0 + 88);
  v133 = *(v0 + 80);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_265D3F814()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v1 = v0[22];
  swift_unknownObjectRelease();
  v2 = v0[24];

  v3 = v0[26];

  v4 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_lock;
  v5 = sub_265D59930();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_265D3F920()
{
  v0 = sub_265D59930();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_265D3FA2C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_265D3FA2C()
{
  if (!qword_28003E9D8)
  {
    type metadata accessor for DistributedSessionPublisher.State(255);
    v0 = sub_265D590F0();
    if (!v1)
    {
      atomic_store(v0, &qword_28003E9D8);
    }
  }
}

void sub_265D3FAA4()
{
  sub_265D3FB18(319);
  if (v0 <= 0x3F)
  {
    sub_265D3FD38(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_265D3FB18(uint64_t a1)
{
  if (!qword_28003E9F0)
  {
    MEMORY[0x28223BE20](a1);
    sub_265D58D00();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E9F8, ">X");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003EA00, &unk_265D5E018);
    sub_265D3FCEC();
    sub_265D59220();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E5E0, &qword_265D5C080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003EA08, &qword_265D5E028);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28003E9F0);
    }
  }
}

unint64_t sub_265D3FCEC()
{
  result = qword_2813B6CD0;
  if (!qword_2813B6CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B6CD0);
  }

  return result;
}

void sub_265D3FD38(uint64_t a1)
{
  if (!qword_28003EA10)
  {
    MEMORY[0x28223BE20](a1);
    sub_265D58D00();
    sub_265D3FCEC();
    sub_265D59220();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E5E0, &qword_265D5C080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003EA08, &qword_265D5E028);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28003EA10);
    }
  }
}

uint64_t sub_265D3FEDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D3FF70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265D40070(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265D2DB08(a1);
}

uint64_t sub_265D40104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4DFF8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DistributedSessionPublisher(0);
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v10, a4);
}

uint64_t sub_265D401CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C96620;

  return sub_265D32104(a1, a2);
}

uint64_t sub_265D40270(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C978E0;

  return sub_265D32558(a1, a2);
}

uint64_t sub_265D40314(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C978E0;

  return sub_265D32A78(a1, a2);
}

uint64_t sub_265D403B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E010] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DistributedSessionPublisher(0);
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265D40480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFF0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for DistributedSessionPublisher(0);
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v8, a3);
}

uint64_t sub_265D40538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for DistributedSessionPublisher(0);
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v8, a3);
}

uint64_t sub_265D405F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE8] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for DistributedSessionPublisher(0);
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v8, a3);
}

uint64_t sub_265D406A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D40730(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265D40868(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_265D408F8(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_265D40BB0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_265D40988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE90, &qword_265D5B0C8) + 48);
  v6 = *(a1 + v4);
  v7 = sub_265D57E30();
  result = (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
  return result;
}

uint64_t sub_265D40A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_265D40BB0(v9, v7, a3, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v12 = swift_slowAlloc();
  v13 = sub_265D408F8(v12, v7, a3, v5);
  result = MEMORY[0x266770CF0](v12, -1, -1);
  if (!v3)
  {
    result = v13;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_265D40BB0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_265D57E30();
  v5 = *(*(v38 - 8) + 64);
  result = MEMORY[0x28223BE20](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v37;
    v20 = v38;
LABEL_11:
    v23 = v36;
    (*(v34 + 16))(v19, v36[6] + *(v34 + 72) * v18, v20);
    v40 = *(v23[7] + 8 * v18);
    v24 = v39;
    v25 = v35(v19, &v40);
    v39 = v24;
    if (v24)
    {
      return (*v32)(v19, v20);
    }

    v26 = v25;
    result = (*v32)(v19, v20);
    if (v26)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return sub_265D40E08(v30, v29, v31, v36);
      }
    }
  }

  v21 = v9;
  v19 = v37;
  v20 = v38;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_265D40E08(v30, v29, v31, v36);
    }

    v22 = v11[v9];
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265D40E08(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = sub_265D57E30();
  v45 = *(v47 - 8);
  v8 = *(v45 + 64);
  v9 = MEMORY[0x28223BE20](v47);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = v39 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE98, &qword_265D5B0D0);
  result = sub_265D5A2E0();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v39[1] = v45 + 16;
  v40 = result;
  v46 = v45 + 32;
  v17 = result + 64;
  v41 = a1;
  v39[0] = a4;
  v18 = v47;
  while (v15)
  {
    v19 = v11;
    v20 = __clz(__rbit64(v15));
    v43 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v45;
    v44 = *(v45 + 72);
    v26 = v42;
    (*(v45 + 16))(v42, v24 + v44 * v23, v18);
    v27 = *(a4[7] + 8 * v23);
    v28 = *(v25 + 32);
    v11 = v19;
    v28(v19, v26, v18);
    v14 = v40;
    v29 = *(v40 + 40);
    sub_265D40868(&qword_2813B9020, MEMORY[0x277CC9578]);
    result = sub_265D59E60();
    v30 = -1 << *(v14 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      a1 = v41;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v17 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    a1 = v41;
LABEL_26:
    *(v17 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v28)(*(v14 + 48) + v33 * v44, v11, v47);
    *(*(v14 + 56) + 8 * v33) = v27;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39[0];
    v15 = v43;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v11;
      v20 = __clz(__rbit64(v22));
      v43 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_265D411A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v43 - v5;
  v6 = sub_265D57E30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA40, &qword_265D5E240);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v48 = a1;
  v46 = v21;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v28, v6);
    v29 = *(*(v18 + 56) + 8 * v28);
    v30 = *(v45 + 48);
    v31 = v10;
    v32 = v45;
    (*(v7 + 32))(v17, v31, v6);
    *&v17[v30] = v29;
    v33 = v44;
    (*(v44 + 56))(v17, 0, 1, v32);
    v26 = v23;
LABEL_11:
    *v1 = v18;
    v1[1] = v19;
    v34 = v47;
    v1[2] = v46;
    v1[3] = v26;
    v1[4] = v27;
    v35 = v1[5];
    v36 = v1[6];
    sub_265D42374(v17, v34, &qword_28003EA40, &qword_265D5E240);
    v37 = 1;
    v38 = (*(v33 + 48))(v34, 1, v32);
    v39 = v48;
    if (v38 != 1)
    {
      v40 = v34;
      v41 = v43;
      sub_265D42374(v40, v43, &qword_28003EA58, &unk_265D5E260);
      v35(v41);
      sub_265CA4AE8(v41, &qword_28003EA58, &unk_265D5E260);
      v37 = 0;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE90, &qword_265D5B0C8);
    return (*(*(v42 - 8) + 56))(v39, v37, 1, v42);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v33 = v44;
        v32 = v45;
        (*(v44 + 56))(&v43 - v16, 1, 1, v45);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_265D41574(uint64_t a1)
{
  v2 = sub_265D59DE0();
  v50 = *(v2 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D581A0();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v49 = a1;
  sub_265D58A70();
  v16 = sub_265D58600();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v15, 1, v16) == 1)
  {
    sub_265CA4AE8(v15, &qword_28003E2F8, &qword_265D5B680);
    v19 = 0;
    goto LABEL_8;
  }

  v44 = v5;
  v45 = v2;
  v20 = sub_265D585E0();
  v22 = v21;
  v24 = v23;
  v43 = *(v17 + 8);
  v43(v15, v16);
  v53 = v20;
  v54 = v22;
  v55 = v24 & 1;
  v51 = xmmword_265D5B470;
  v52 = 1;
  sub_265CA48E8();
  sub_265CA493C();
  v25 = sub_265D57F90();
  sub_265C037E8(v53, v54, v55);
  if (v25)
  {
    sub_265D58A70();
    if (v18(v13, 1, v16) != 1)
    {
      v32 = sub_265D585F0();
      v34 = v33;
      v43(v13, v16);
      v53 = v32;
      LOBYTE(v54) = v34 & 1;
      *&v51 = 0;
      BYTE8(v51) = 1;
      sub_265CEB398();
      sub_265CEB3EC();
      v35 = sub_265D57F90();
      v2 = v45;
      if (v35)
      {
        v36 = v46;
        sub_265D58A10();
        v37 = sub_265D58190();
        v39 = v38;
        v41 = v40;
        (*(v47 + 8))(v36, v48);
        v53 = v37;
        v54 = v39;
        v41 &= 1u;
        v55 = v41;
        v51 = xmmword_265D5BC50;
        v52 = 1;
        sub_265CD4AAC();
        sub_265CD4B00();
        v42 = sub_265D57F90();
        sub_265C037E8(v37, v39, v41);
        v19 = v42 ^ 1;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_7;
    }

    sub_265CA4AE8(v13, &qword_28003E2F8, &qword_265D5B680);
  }

  v19 = 0;
  v2 = v45;
LABEL_7:
  v5 = v44;
LABEL_8:
  sub_265D595F0();
  v26 = sub_265D59DD0();
  v27 = sub_265D5A080();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v5;
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v19 & 1;
    _os_log_impl(&dword_265C01000, v26, v27, "DistributedSessionPublisher - shouldStartSession - %{BOOL}d", v29, 8u);
    v30 = v29;
    v5 = v28;
    MEMORY[0x266770CF0](v30, -1, -1);
  }

  (*(v50 + 8))(v5, v2);
  return v19 & 1;
}

uint64_t sub_265D41A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D2EA88(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_265D41B24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D2F4B8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_265D41BE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D2FEE8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_265D41CA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D30918(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_265D41D64(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265C96620;

  return sub_265D312F4(a1, v1);
}

void sub_265D41E08(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_265D41E14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_265C978E0;

  return sub_265D31BC4(a1, v4, v5, v6, v7, v8);
}

id sub_265D41EDC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_265D41EE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D36CDC(a1, v4, v5, v6);
}

uint64_t sub_265D41F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistributedSessionPublisher.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D42000(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v46 = sub_265D57E30();
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v46);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA48, &qword_265D5E248);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v43 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v47 = a1;
  v48 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v49 = v19;
  v50 = 0;
  v51 = v22 & v20;
  v52 = a2;
  v53 = a3;
  v23 = (v10 + 32);
  v44 = (v10 + 8);
  v45 = v10;

  v43 = a3;

  while (1)
  {
    sub_265D411A0(v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE90, &qword_265D5B0C8);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_265D4236C();
    }

    v25 = *(v24 + 48);
    v26 = *v23;
    (*v23)(v13, v17, v46);
    v27 = *&v17[v25];
    v28 = *a5;
    v30 = sub_265CE2CC4(v13);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if (a4)
      {
        v38 = *a5;
        if ((v29 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_265CE6318();
        v38 = *a5;
        if ((v34 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v44)(v13, v46);
      *(v38[7] + 8 * v30) = v27;
      a4 = 1;
    }

    else
    {
      sub_265CE4278(v33, a4 & 1);
      v35 = *a5;
      v36 = sub_265CE2CC4(v13);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_21;
      }

      v30 = v36;
      v38 = *a5;
      if (v34)
      {
        goto LABEL_5;
      }

LABEL_14:
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v26((v38[6] + *(v45 + 72) * v30), v13, v46);
      *(v38[7] + 8 * v30) = v27;
      v39 = v38[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_20;
      }

      v38[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_265D5A3F0();
  __break(1u);
  return result;
}

uint64_t sub_265D42374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_265D423DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D350E0(a1, v5, v4);
}

uint64_t sub_265D42488(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D3E220(a1, v5, v4);
}

uint64_t sub_265D42534(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D3CE24(a1, v5, v4);
}

uint64_t sub_265D425E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C96620;

  return sub_265D3BA40(a1, v5, v4);
}

uint64_t sub_265D4268C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D3A658(a1, v5, v4);
}

uint64_t getEnumTagSinglePayload for TimestampOffsetResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimestampOffsetResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_265D42790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v32 = a3;
  v31 = sub_265D58F70();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_265D58AC0();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265D58670();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265D59DE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v17 + 8))(v20, v16);
  (*(v7 + 16))(v10, v29, v28);
  v21 = v30;
  v22 = -*(v30 + 24);
  sub_265D58650();
  v23 = *v21;
  v24 = v21[1];
  swift_getObjectType();
  v25 = v31;
  (*(v3 + 104))(v6, *MEMORY[0x277D4EBE0], v31);
  sub_265D58C50();
  (*(v3 + 8))(v6, v25);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_265D42ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_265D58AC0();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_265D581A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58A10();
  v10 = sub_265D58190();
  v12 = v11;
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  if (v14)
  {
    v15 = v31;
    v16 = *(v31 + 64);
    v17 = sub_265D58B60();
    if (v17 == sub_265D58B60())
    {
      return sub_265D58970();
    }

    else
    {
      v22 = sub_265D58B50();
      v24 = v23;
      v25 = v30;
      (*(v30 + 16))(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
      v26 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v15;
      (*(v25 + 32))(v27 + v26, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      v28 = (v27 + ((v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v28 = v22;
      v28[1] = v24;

      return sub_265D58930();
    }
  }

  else
  {
    sub_265CA4B90(v10, v12, 0);
    v19 = sub_265D57FE0();
    sub_265D284E8();
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D50390], v19);
    *(swift_allocObject() + 16) = v20;
    return sub_265D58940();
  }
}

uint64_t sub_265D42E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_265D59DE0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  sub_265D595E0();
  sub_265D59DC0();
  (*(v13 + 8))(v16, v12);
  v18 = *(a3 + 56);
  v21 = a3;
  v22 = a4;
  v23 = sub_265CD757C;
  v24 = v17;
  v25 = a5;
  v26 = a6;
  sub_265D58CA0();
}

void sub_265D42FAC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a5;
  v65 = a6;
  v77 = a4;
  v78 = a3;
  v73 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v67 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v62 - v12;
  v66 = v13;
  MEMORY[0x28223BE20](v11);
  v68 = &v62 - v14;
  v15 = sub_265D58AC0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v72 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v63 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v62 - v23;
  v76 = sub_265D57DA0();
  v71 = *(v76 - 8);
  v25 = *(v71 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DistributedSessionCoordinator.State(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDF0, &qword_265D5AFA0);
  v32 = &v30[*(v31 + 48)];
  v33 = *(v16 + 16);
  v33(v30, a2, v15);
  v34 = v77;
  *v32 = v78;
  *(v32 + 1) = v34;
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v35 = OBJC_IVAR____TtC22SeymourSessionServices29DistributedSessionCoordinator_state;
  v36 = v73;
  swift_beginAccess();

  v37 = v36;
  sub_265D44274(v30, v36 + v35);
  swift_endAccess();
  v33(v72, a2, v15);
  sub_265D57D70();
  v38 = v71;
  v39 = v76;
  if ((*(v71 + 48))(v24, 1) == 1)
  {
    sub_265D4440C(v24);
    v40 = sub_265D57FE0();
    sub_265D284E8();
    v41 = swift_allocError();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D50360], v40);
    v78(v41, 1);
  }

  else
  {
    v43 = v74;
    (*(v38 + 32))(v74, v24, v39);
    v44 = *(v36 + 48);
    __swift_project_boxed_opaque_existential_1((v37 + 16), *(v37 + 40));
    v45 = v63;
    (*(v38 + 16))(v63, v43, v39);
    (*(v38 + 56))(v45, 0, 1, v39);
    v46 = v75;
    sub_265D59970();
    sub_265D4440C(v45);
    v47 = swift_allocObject();
    v48 = v77;
    *(v47 + 16) = v78;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_265D44474;
    *(v49 + 24) = v47;
    v50 = v69;
    v51 = v67;
    v52 = v46;
    v53 = v70;
    (*(v69 + 16))(v67, v52, v70);
    v54 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v55 = (v66 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    (*(v50 + 32))(v56 + v54, v51, v53);
    v57 = (v56 + v55);
    *v57 = sub_265D0F264;
    v57[1] = v49;

    v58 = v68;
    sub_265D58930();
    v59 = *(v50 + 8);
    v59(v75, v53);
    v60 = sub_265D58960();
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    v60(sub_265CA442C, v61);

    v59(v58, v53);
    (*(v38 + 8))(v74, v76);
  }
}

uint64_t sub_265D436A0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  sub_265D442D8(v0 + OBJC_IVAR____TtC22SeymourSessionServices29DistributedSessionCoordinator_state);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_265D4373C()
{
  result = type metadata accessor for DistributedSessionCoordinator.State(319);
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

uint64_t sub_265D43838()
{
  sub_265D43890();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_265D43890()
{
  if (!qword_2813B8FF8)
  {
    sub_265D58AC0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E3B8, &qword_265D5DDA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813B8FF8);
    }
  }
}

uint64_t sub_265D4390C(uint64_t a1)
{
  v2 = type metadata accessor for DistributedSessionCoordinator.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDF0, &qword_265D5AFA0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC22SeymourSessionServices29DistributedSessionCoordinator_state;
  swift_beginAccess();
  sub_265D44274(v5, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_265D43A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265D59DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D595E0();
  sub_265D59DC0();
  (*(v7 + 8))(v10, v6);
  v11 = *(a1 + 56);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  sub_265D58AC0();
  return sub_265D58CA0();
}

uint64_t sub_265D43B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v66 = sub_265D59DE0();
  v63 = *(v66 - 8);
  v7 = *(v63 + 64);
  v8 = MEMORY[0x28223BE20](v66);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = type metadata accessor for DistributedSessionCoordinator.State(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = OBJC_IVAR____TtC22SeymourSessionServices29DistributedSessionCoordinator_state;
  swift_beginAccess();
  v61 = a1;
  sub_265D44210(a1 + v22, v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDF0, &qword_265D5AFA0);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    sub_265D595E0();
    v25 = sub_265D59DD0();
    v26 = sub_265D5A070();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_265C01000, v25, v26, "No session to activate", v27, 2u);
      MEMORY[0x266770CF0](v27, -1, -1);
    }

    (*(v63 + 8))(v14, v66);
    v28 = sub_265D57FE0();
    sub_265D284E8();
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D50358], v28);
    return swift_willThrow();
  }

  v31 = &v21[*(v23 + 48)];
  v33 = *v31;
  v32 = *(v31 + 1);
  v57 = v33;
  v58 = v19;
  v59 = v32;
  v34 = sub_265D58AC0();
  v55 = *(v34 - 8);
  (*(v55 + 32))(a4, v21, v34);
  v35 = sub_265D589D0();
  v56 = a2;
  if (v35 == a2 && v36 == v62)
  {

    v37 = v62;
LABEL_9:
    sub_265D595E0();

    v39 = sub_265D59DD0();
    v40 = sub_265D5A080();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v64 = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_265CF4FFC(v56, v37, &v64);
      _os_log_impl(&dword_265C01000, v39, v40, "Activating distributed session: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266770CF0](v42, -1, -1);
      MEMORY[0x266770CF0](v41, -1, -1);
    }

    (*(v63 + 8))(v12, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    sub_265D5A4B0();
    v43 = v64;
    v44 = v65;
    v57(v64, v65);

    sub_265CA4470(v43, v44);
    v45 = v58;
    (*(v24 + 56))(v58, 1, 1, v23);
    v46 = v61;
    swift_beginAccess();
    sub_265D44274(v45, v46 + v22);
    return swift_endAccess();
  }

  v54 = a4;
  v37 = v62;
  v38 = sub_265D5A3C0();

  if (v38)
  {
    goto LABEL_9;
  }

  v47 = v60;
  sub_265D595E0();
  v48 = sub_265D59DD0();
  v49 = sub_265D5A070();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_265C01000, v48, v49, "Session identifier mismatch, cannot activate", v50, 2u);
    MEMORY[0x266770CF0](v50, -1, -1);
  }

  (*(v63 + 8))(v47, v66);
  v51 = sub_265D57FE0();
  sub_265D284E8();
  swift_allocError();
  (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D50338], v51);
  swift_willThrow();

  return (*(v55 + 8))(v54, v34);
}

uint64_t sub_265D44210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistributedSessionCoordinator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D44274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistributedSessionCoordinator.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D442D8(uint64_t a1)
{
  v2 = type metadata accessor for DistributedSessionCoordinator.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D44334(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_265D58AC0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_265D42E04(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_265D4440C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D44474(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 1);
}

uint64_t sub_265D444A8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265D4A454(a1, a2, v2 + v6, v8, v9);
}

void *sub_265D44564()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[6];
  swift_unknownObjectRelease();
  v4 = v0[9];
  swift_unknownObjectRelease();
  v5 = v0[12];
  swift_unknownObjectRelease();
  v6 = v0[15];
  swift_unknownObjectRelease();
  v7 = v0[18];
  swift_unknownObjectRelease();
  v8 = v0[22];

  return v0;
}

uint64_t sub_265D445BC()
{
  sub_265D44564();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SessionConnectionPool.MultiplexMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionConnectionPool.MultiplexMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265D44768()
{
  result = qword_28003EA68;
  if (!qword_28003EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003EA68);
  }

  return result;
}

uint64_t sub_265D447C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v9 + 8))(v12, v8);
  v13 = a1[15];
  a1[15] = a2;
  a1[16] = a3;
  a1[17] = a4;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_265D44900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v9 + 8))(v12, v8);
  v13 = a1[18];
  a1[18] = a2;
  a1[19] = a3;
  a1[20] = a4;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_265D44A38(uint64_t a1, unsigned __int8 a2, double a3)
{
  swift_beginAccess();
  v6 = *(a1 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 176);
  *(a1 + 176) = 0x8000000000000000;
  sub_265CE5740(a2, isUniquelyReferenced_nonNull_native, a3);
  *(a1 + 176) = v9;
  return swift_endAccess();
}

uint64_t sub_265D44AD0(void *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v3 + 8))(v6, v2);
  v7 = a1[15];
  a1[16] = 0;
  a1[17] = 0;
  a1[15] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v8 = a1[22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a1[22];
  a1[22] = 0x8000000000000000;
  sub_265CE5740(2u, isUniquelyReferenced_nonNull_native, 0.0);
  a1[22] = v12;
  return swift_endAccess();
}

uint64_t sub_265D44C40(void *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v3 + 8))(v6, v2);
  v7 = a1[18];
  a1[19] = 0;
  a1[20] = 0;
  a1[18] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v8 = a1[22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a1[22];
  a1[22] = 0x8000000000000000;
  sub_265CE5740(3u, isUniquelyReferenced_nonNull_native, 0.0);
  a1[22] = v12;
  return swift_endAccess();
}

uint64_t sub_265D44DB0@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 168);
  if (v5 <= 1)
  {
    if (*(a1 + 168))
    {
      if (a2 > 2u)
      {
        if (a2 == 3)
        {
LABEL_17:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
          v12 = swift_allocObject();
          v13 = *(a1 + 112);
          v14 = *(a1 + 96);
          *(v12 + 16) = xmmword_265D5AF60;
          *(v12 + 32) = v14;
          v15 = v12;
          *(v12 + 48) = v13;
LABEL_20:
          swift_unknownObjectRetain();
          result = v15;
          goto LABEL_21;
        }
      }

      else if (a2 - 1 < 2)
      {
        result = MEMORY[0x277D84F90];
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
      v7 = swift_allocObject();
      v16 = *(a1 + 112);
      v17 = *(a1 + 96);
      *(v7 + 16) = xmmword_265D5E440;
      *(v7 + 32) = v17;
      *(v7 + 48) = v16;
      v10 = *(a1 + 88);
      v11 = *(a1 + 72);
    }

    else
    {
      result = MEMORY[0x277D84F90];
      if (a2 > 1u)
      {
        if (a2 == 3)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      if (a2)
      {
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
      v7 = swift_allocObject();
      v8 = *(a1 + 112);
      v9 = *(a1 + 96);
      *(v7 + 16) = xmmword_265D5E440;
      *(v7 + 32) = v9;
      *(v7 + 48) = v8;
      v10 = *(a1 + 64);
      v11 = *(a1 + 48);
    }

    *(v7 + 56) = v11;
    v15 = v7;
    *(v7 + 72) = v10;
    swift_unknownObjectRetain();
    goto LABEL_20;
  }

  if (v5 == 2)
  {
    result = sub_265D452AC(a2);
  }

  else if (v5 == 3)
  {
    result = sub_265D44F70(a2);
  }

  else
  {
    result = sub_265D45668(a2);
  }

LABEL_21:
  *a3 = result;
  return result;
}

uint64_t sub_265D44F70(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v21 = *(v1 + 112);
      v38 = *(v1 + 96);
      v22 = *(v1 + 136);
      v40 = *(v1 + 120);
      v39 = v21;
      v41 = v22;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v23 = 0;
      v2 = MEMORY[0x277D84F90];
LABEL_22:
      v24 = &v38 + 3 * v23;
      while (++v23 != 3)
      {
        v25 = v24 + 3;
        v26 = *v24;
        v24 += 3;
        if (v26)
        {
          v27 = *(v25 - 2);
          v28 = *(v25 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_265D46D10(0, *(v2 + 16) + 1, 1, v2);
          }

          v30 = *(v2 + 16);
          v29 = *(v2 + 24);
          if (v30 >= v29 >> 1)
          {
            v2 = sub_265D46D10((v29 > 1), v30 + 1, 1, v2);
          }

          *(v2 + 16) = v30 + 1;
          v31 = (v2 + 24 * v30);
          v31[4] = v26;
          v31[5] = v27;
          v31[6] = v28;
          goto LABEL_22;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
LABEL_31:
      swift_arrayDestroy();
      return v2;
    }
  }

  else
  {
    if (a1 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
      v2 = swift_allocObject();
      v18 = *(v1 + 112);
      v19 = *(v1 + 96);
      *(v2 + 16) = xmmword_265D5E440;
      *(v2 + 32) = v19;
      *(v2 + 48) = v18;
      v20 = *(v1 + 40);
      *(v2 + 56) = *(v1 + 24);
      *(v2 + 72) = v20;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      return v2;
    }

    if (a1 == 3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v3 = *(v1 + 112);
  v32 = *(v1 + 96);
  v33 = v3;
  v4 = *(v1 + 40);
  v34 = *(v1 + 24);
  v35 = v4;
  v5 = *(v1 + 136);
  v36 = *(v1 + 120);
  v37 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = swift_unknownObjectRetain();
  v7 = 0;
  v2 = MEMORY[0x277D84F90];
LABEL_7:
  if (v7 <= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  v10 = &v32 + 3 * v7;
  while (1)
  {
    if (v7 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
      goto LABEL_31;
    }

    if (v9 == ++v7)
    {
      break;
    }

    v11 = v10 + 3;
    v12 = *v10;
    v10 += 3;
    if (v12)
    {
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_265D46D10(0, *(v2 + 16) + 1, 1, v2);
        v2 = result;
      }

      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_265D46D10((v15 > 1), v16 + 1, 1, v2);
        v2 = result;
      }

      *(v2 + 16) = v16 + 1;
      v17 = (v2 + 24 * v16);
      v17[4] = v12;
      v17[5] = v13;
      v17[6] = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265D452AC(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (a1 == 2)
    {
      v28 = *(v1 + 112);
      v46 = *(v1 + 96);
      v29 = *(v1 + 160);
      v48 = *(v1 + 144);
      v47 = v28;
      v49 = v29;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v30 = 0;
      v5 = MEMORY[0x277D84F90];
LABEL_29:
      v31 = &v46 + 3 * v30;
      while (++v30 != 3)
      {
        v32 = v31 + 3;
        v33 = *v31;
        v31 += 3;
        if (v33)
        {
          v34 = *(v32 - 2);
          v35 = *(v32 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_265D46D10(0, v5[2] + 1, 1, v5);
          }

          v37 = v5[2];
          v36 = v5[3];
          if (v37 >= v36 >> 1)
          {
            v5 = sub_265D46D10((v36 > 1), v37 + 1, 1, v5);
          }

          v5[2] = v37 + 1;
          v38 = &v5[3 * v37];
          v38[4] = v33;
          v38[5] = v34;
          v38[6] = v35;
          goto LABEL_29;
        }
      }

      goto LABEL_37;
    }

    if (a1 == 3)
    {
      v2 = *(v1 + 112);
      v50 = *(v1 + 96);
      v3 = *(v1 + 136);
      v52 = *(v1 + 120);
      v51 = v2;
      v53 = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v4 = 0;
      v5 = MEMORY[0x277D84F90];
LABEL_5:
      v6 = &v50 + 3 * v4;
      while (++v4 != 3)
      {
        v7 = v6 + 3;
        v8 = *v6;
        v6 += 3;
        if (v8)
        {
          v9 = *(v7 - 2);
          v10 = *(v7 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_265D46D10(0, v5[2] + 1, 1, v5);
          }

          v12 = v5[2];
          v11 = v5[3];
          if (v12 >= v11 >> 1)
          {
            v5 = sub_265D46D10((v11 > 1), v12 + 1, 1, v5);
          }

          v5[2] = v12 + 1;
          v13 = &v5[3 * v12];
          v13[4] = v8;
          v13[5] = v9;
          v13[6] = v10;
          goto LABEL_5;
        }
      }

LABEL_37:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
LABEL_38:
      swift_arrayDestroy();
      return v5;
    }
  }

  v39 = *(v1 + 96);
  v41 = *(v1 + 112);
  v14 = *(v1 + 160);
  v42 = *(v1 + 144);
  v43 = v14;
  v15 = *(v1 + 136);
  v44 = *(v1 + 120);
  v45 = v15;
  v40 = v39;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = swift_unknownObjectRetain();
  v17 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_15:
  if (v17 <= 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18 + 1;
  v20 = &v40 + 3 * v17;
  while (1)
  {
    if (v17 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
      goto LABEL_38;
    }

    if (v19 == ++v17)
    {
      break;
    }

    v21 = v20 + 3;
    v22 = *v20;
    v20 += 3;
    if (v22)
    {
      v23 = *(v21 - 2);
      v24 = *(v21 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_265D46D10(0, v5[2] + 1, 1, v5);
        v5 = result;
      }

      v26 = v5[2];
      v25 = v5[3];
      if (v26 >= v25 >> 1)
      {
        result = sub_265D46D10((v25 > 1), v26 + 1, 1, v5);
        v5 = result;
      }

      v5[2] = v26 + 1;
      v27 = &v5[3 * v26];
      v27[4] = v22;
      v27[5] = v23;
      v27[6] = v24;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265D45668(unsigned __int8 a1)
{
  v2 = MEMORY[0x277D84F90];
  if (a1 <= 1u)
  {
    if (a1)
    {
      return v2;
    }
  }

  else
  {
    if (a1 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
      v2 = swift_allocObject();
      v14 = *(v1 + 112);
      v15 = *(v1 + 96);
      *(v2 + 16) = xmmword_265D5AF60;
      *(v2 + 32) = v15;
      *(v2 + 48) = v14;
      swift_unknownObjectRetain();
      return v2;
    }

    if (a1 == 3)
    {
      return v2;
    }
  }

  v3 = *(v1 + 112);
  v17 = *(v1 + 96);
  v18 = v3;
  v4 = *(v1 + 136);
  v19 = *(v1 + 120);
  v20 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = 0;
LABEL_7:
  v6 = &v17 + 3 * v5;
  while (++v5 != 3)
  {
    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if (v8)
    {
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_265D46D10(0, *(v2 + 16) + 1, 1, v2);
      }

      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        v2 = sub_265D46D10((v11 > 1), v12 + 1, 1, v2);
      }

      *(v2 + 16) = v12 + 1;
      v13 = (v2 + 24 * v12);
      v13[4] = v8;
      v13[5] = v9;
      v13[6] = v10;
      goto LABEL_7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_265D4582C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 168);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v23 = *(a1 + 160);
      v47 = *(a1 + 144);
      v48 = v23;
      v24 = *(a1 + 136);
      v49 = *(a1 + 120);
      v50 = v24;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v25 = 0;
      v8 = MEMORY[0x277D84F90];
LABEL_16:
      v26 = &v47 + 3 * v25;
      while (++v25 != 3)
      {
        v27 = v26 + 3;
        v28 = *v26;
        v26 += 3;
        if (v28)
        {
          v29 = *(v27 - 2);
          v30 = *(v27 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_265D46D10(0, v8[2] + 1, 1, v8);
          }

          v32 = v8[2];
          v31 = v8[3];
          v33 = v32 + 1;
          if (v32 >= v31 >> 1)
          {
            v35 = sub_265D46D10((v31 > 1), v32 + 1, 1, v8);
            v33 = v32 + 1;
            v8 = v35;
          }

          v8[2] = v33;
          v34 = &v8[3 * v32];
          v34[4] = v28;
          v34[5] = v29;
          v34[6] = v30;
          goto LABEL_16;
        }
      }
    }

    else
    {
      if (v4 != 3)
      {
        v38 = *(a1 + 128);
        v39 = *(a1 + 136);
        v51[0] = *(a1 + 120);
        v37 = v51[0];
        v51[1] = v38;
        v51[2] = v39;
        swift_unknownObjectRetain();
        if (v51[0])
        {
          swift_unknownObjectRetain();
          v8 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_265D46D10(0, v8[2] + 1, 1, v8);
          }

          v41 = v8[2];
          v40 = v8[3];
          if (v41 >= v40 >> 1)
          {
            v8 = sub_265D46D10((v40 > 1), v41 + 1, 1, v8);
          }

          v8[2] = v41 + 1;
          v42 = &v8[3 * v41];
          v42[4] = v37;
          v42[5] = v38;
          v42[6] = v39;
        }

        else
        {
          v8 = MEMORY[0x277D84F90];
        }

        result = sub_265D46E84(v51);
        goto LABEL_35;
      }

      v5 = *(a1 + 40);
      v43 = *(a1 + 24);
      v44 = v5;
      v6 = *(a1 + 136);
      v45 = *(a1 + 120);
      v46 = v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
LABEL_5:
      v9 = &v43 + 3 * v7;
      while (++v7 != 3)
      {
        v10 = v9 + 3;
        v11 = *v9;
        v9 += 3;
        if (v11)
        {
          v12 = *(v10 - 2);
          v13 = *(v10 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_265D46D10(0, v8[2] + 1, 1, v8);
          }

          v15 = v8[2];
          v14 = v8[3];
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            v18 = sub_265D46D10((v14 > 1), v15 + 1, 1, v8);
            v16 = v15 + 1;
            v8 = v18;
          }

          v8[2] = v16;
          v17 = &v8[3 * v15];
          v17[4] = v11;
          v17[5] = v12;
          v17[6] = v13;
          goto LABEL_5;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
    result = swift_arrayDestroy();
LABEL_35:
    *a2 = v8;
    return result;
  }

  if (*(a1 + 168))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
    v19 = swift_allocObject();
    v20 = xmmword_265D5AF60;
    v21 = *(a1 + 88);
    v22 = *(a1 + 72);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
    v19 = swift_allocObject();
    v20 = xmmword_265D5AF60;
    v21 = *(a1 + 64);
    v22 = *(a1 + 48);
  }

  *(v19 + 16) = v20;
  *(v19 + 32) = v22;
  *(v19 + 48) = v21;
  *a2 = v19;
  return swift_unknownObjectRetain();
}

uint64_t sub_265D45BE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (*(a1 + 120))
  {
    v6 = *(a1 + 48);
    v44 = *(a1 + 56);
    swift_unknownObjectRetain();
    if (*(a1 + 144))
    {
LABEL_3:
      v7 = *(a1 + 72);
      v41 = *(a1 + 80);
      swift_unknownObjectRetain();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v44 = *(a1 + 128);
    if (*(a1 + 144))
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  v41 = *(a1 + 152);
LABEL_6:
  v8 = *(a1 + 168);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v51 = v7;
      v52 = v41;
      v53 = v6;
      v54 = v44;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v26 = 0;
      v11 = MEMORY[0x277D84F90];
LABEL_21:
      v27 = &v51 + 3 * v26;
      while (++v26 != 3)
      {
        v28 = v27 + 3;
        v29 = *v27;
        v27 += 3;
        if (v29)
        {
          v46 = a2;
          v30 = *(v28 - 2);
          v43 = *(v28 - 1);
          swift_unknownObjectRetain();
          v31 = v3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_265D46D10(0, v11[2] + 1, 1, v11);
          }

          v33 = v11[2];
          v32 = v11[3];
          v34 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            v57 = v33 + 1;
            v36 = sub_265D46D10((v32 > 1), v33 + 1, 1, v11);
            v34 = v57;
            v11 = v36;
          }

          v11[2] = v34;
          v35 = &v11[3 * v33];
          v35[4] = v29;
          v35[5] = v30;
          v35[6] = v43;
          v3 = v31;
          a2 = v46;
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (v8 != 3)
      {
        v55 = v6;
        v56 = v44;
        swift_unknownObjectRetain();
        if (v6)
        {
          swift_unknownObjectRetain();
          v11 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_265D46D10(0, v11[2] + 1, 1, v11);
          }

          v38 = v11[2];
          v37 = v11[3];
          if (v38 >= v37 >> 1)
          {
            v11 = sub_265D46D10((v37 > 1), v38 + 1, 1, v11);
          }

          v11[2] = v38 + 1;
          v39 = &v11[3 * v38];
          v39[4] = v6;
          *(v39 + 5) = v44;
        }

        else
        {
          v11 = MEMORY[0x277D84F90];
        }

        sub_265D46E84(&v55);
        goto LABEL_40;
      }

      v9 = *(a1 + 40);
      v47 = *(a1 + 24);
      v48 = v9;
      v49 = v6;
      v50 = v44;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
LABEL_10:
      v12 = &v47 + 3 * v10;
      while (++v10 != 3)
      {
        v13 = v12 + 3;
        v14 = *v12;
        v12 += 3;
        if (v14)
        {
          v45 = a2;
          v15 = *(v13 - 1);
          v42 = *(v13 - 2);
          swift_unknownObjectRetain();
          v16 = v3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_265D46D10(0, v11[2] + 1, 1, v11);
          }

          v18 = v11[2];
          v17 = v11[3];
          v19 = v18 + 1;
          if (v18 >= v17 >> 1)
          {
            v57 = v18 + 1;
            v21 = sub_265D46D10((v17 > 1), v18 + 1, 1, v11);
            v19 = v57;
            v11 = v21;
          }

          v11[2] = v19;
          v20 = &v11[3 * v18];
          v20[4] = v14;
          v20[5] = v42;
          v20[6] = v15;
          v3 = v16;
          a2 = v45;
          goto LABEL_10;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
    swift_arrayDestroy();
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  if (*(a1 + 168))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
    v22 = swift_allocObject();
    v11 = v22;
    v23 = xmmword_265D5AF60;
    v24 = *(a1 + 88);
    v25 = *(a1 + 72);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
    v22 = swift_allocObject();
    v11 = v22;
    v23 = xmmword_265D5AF60;
    v24 = *(a1 + 64);
    v25 = *(a1 + 48);
  }

  *(v22 + 16) = v23;
  *(v22 + 32) = v25;
  *(v22 + 48) = v24;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
LABEL_41:
  result = swift_unknownObjectRelease();
  *a2 = v11;
  return result;
}

uint64_t sub_265D46028@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + qword_265D5E5C0[a1]);
  v4 = *(a2 + qword_265D5E5E8[a1]);
  *a3 = *(a2 + qword_265D5E598[a1]);
  a3[1] = v3;
  a3[2] = v4;
  return swift_unknownObjectRetain();
}

double sub_265D4607C(unsigned __int8 a1)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 16);
  v23 = v1;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA88, &unk_265D5E588);
  sub_265D58CA0();
  if ((v26 & 1) == 0)
  {
    return v25;
  }

  sub_265D595F0();
  v9 = sub_265D59DD0();
  v10 = sub_265D5A070();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = *&v12;
    v13 = 0xEB00000000656369;
    v14 = 0x7665446C61636F6CLL;
    *v11 = 136446210;
    v15 = 0x8000000265D5FC00;
    v16 = 0x8000000265D5FC20;
    v17 = 0xD000000000000018;
    if (a1 != 3)
    {
      v17 = 0xD000000000000010;
      v16 = 0x8000000265D5FC40;
    }

    if (a1 == 2)
    {
      v17 = 0xD000000000000014;
    }

    else
    {
      v15 = v16;
    }

    if (a1)
    {
      v14 = 0xD000000000000016;
      v13 = 0x8000000265D5FBE0;
    }

    if (a1 <= 1u)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if (a1 <= 1u)
    {
      v19 = v13;
    }

    else
    {
      v19 = v15;
    }

    v20 = sub_265CF4FFC(v18, v19, &v25);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_265C01000, v9, v10, "No offset set for update source: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266770CF0](v12, -1, -1);
    MEMORY[0x266770CF0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return 0.0;
}

uint64_t sub_265D46328@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 176);
  if (*(v6 + 16) && (v7 = sub_265CE2900(a2), (v8 & 1) != 0))
  {
    v9 = 0;
    v10 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  *a3 = v10;
  *(a3 + 8) = v9;
  return swift_endAccess();
}

uint64_t sub_265D463BC()
{
  v1 = *(v0 + 16);
  sub_265D58CA0();
  return v3;
}

uint64_t sub_265D46630()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E810, &qword_265D5D278);
  sub_265D58CA0();
  return v3;
}

uint64_t sub_265D466AC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E810, &qword_265D5D278);
  sub_265D58CA0();
  return v3;
}

uint64_t sub_265D46720()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
  sub_265D58CA0();
  return v3;
}

void *sub_265D467C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3B0, &qword_265D5B8E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3B8, &qword_265D5DDA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265D468F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E818, &qword_265D5D280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265D46A00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDE0, &unk_265D5AF90);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_265D46B34(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_265D46D10(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_265D46E58@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  *a1 = *(v1 + 144);
  *(a1 + 16) = v2;
  return swift_unknownObjectRetain();
}

uint64_t sub_265D46E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D46FA4(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D470C0, 0, 0);
}

uint64_t sub_265D470C0()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D59450();
    v5 = *(MEMORY[0x277D4DFF0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for MindfulMinutesAccumulator();
    v8 = sub_265D4B940(&qword_28003EAB0, type metadata accessor for MindfulMinutesAccumulator);
    *v6 = v0;
    v6[1] = sub_265D47230;
    v9 = v0[16];

    return MEMORY[0x2821AE8D8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265D47230()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D47418, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265D47418()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "MindfulMinutesAccumulator - Failed to start session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265D47600(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4771C, 0, 0);
}

uint64_t sub_265D4771C()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D59020();
    v5 = *(MEMORY[0x277D4DFE0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for MindfulMinutesAccumulator();
    v8 = sub_265D4B940(&qword_28003EAB0, type metadata accessor for MindfulMinutesAccumulator);
    *v6 = v0;
    v6[1] = sub_265D4788C;
    v9 = v0[16];

    return MEMORY[0x2821AE8C8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265D4788C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D47A74, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265D47A74()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "MindfulMinutesAccumulator - Failed to end session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265D47C5C(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58130();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D47D78, 0, 0);
}

uint64_t sub_265D47D78()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D58E60();
    v5 = *(MEMORY[0x277D4DFE8] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for MindfulMinutesAccumulator();
    v8 = sub_265D4B940(&qword_28003EAB0, type metadata accessor for MindfulMinutesAccumulator);
    *v6 = v0;
    v6[1] = sub_265D47EE8;
    v9 = v0[16];

    return MEMORY[0x2821AE8D0](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265D47EE8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D480D0, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265D480D0()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "MindfulMinutesAccumulator - Failed to update session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265D482B8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF20, &qword_265D5B140);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_265D57E30();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = sub_265D596E0();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  v13 = sub_265D58AC0();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v16 = sub_265D59DE0();
  v2[21] = v16;
  v17 = *(v16 - 8);
  v2[22] = v17;
  v18 = *(v17 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4852C, v1, 0);
}

uint64_t sub_265D4852C()
{
  v60 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 48);
  sub_265D595F0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  if (v8)
  {
    v57 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v53 = v7;
    v16 = swift_slowAlloc();
    v59 = v16;
    *v15 = 136315138;
    sub_265D4B940(&qword_28003E7E8, MEMORY[0x277D53AE0]);
    v17 = sub_265D5A3B0();
    v55 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v59);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v53, "MindfulMinutesAccumulator - starting %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v55, v57);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = *(v0 + 128);
  v22 = *(v0 + 136);
  v23 = *(v0 + 112);
  v24 = *(v0 + 120);
  v25 = *(v0 + 48);
  v26 = sub_265D59390();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_265D59380();
  (*(v21 + 104))(v22, *MEMORY[0x277D4F9B8], v24);
  v30 = sub_265D59710();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_265D59700();
  sub_265D58AB0();
  v34 = sub_265D58BB0();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 48))(v23, 1, v34);
  v37 = *(v0 + 112);
  if (v36 == 1)
  {
    sub_265CA4AE8(*(v0 + 112), &qword_28003E568, &unk_265D5C010);
  }

  else
  {
    v38 = sub_265D58BA0();
    (*(v35 + 8))(v37, v34);
    *(v0 + 196) = BYTE4(v38) & 1;
    *(v0 + 192) = v38;
    *(v0 + 200) = 0;
    *(v0 + 204) = 1;
    sub_265CEB2F0();
    sub_265CEB344();
    if (sub_265D57F90())
    {
      v39 = *(v0 + 96);
      v40 = *(v0 + 104);
      v41 = *(v0 + 88);
      *(v0 + 40) = v29;
      sub_265D57E20();
      sub_265D59440();
      (*(v39 + 8))(v40, v41);
      sub_265D596F0();
    }
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 160);
  v54 = *(v0 + 136);
  v56 = *(v0 + 112);
  v58 = *(v0 + 104);
  v44 = v33;
  v46 = *(v0 + 72);
  v45 = *(v0 + 80);
  v48 = *(v0 + 56);
  v47 = *(v0 + 64);
  v49 = *(v0 + 48);
  *v45 = sub_265D589C0();
  v45[1] = v29;
  v45[2] = v44;
  (*(v46 + 104))(v45, *MEMORY[0x277D4F250], v47);
  v50 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_state;
  swift_beginAccess();
  (*(v46 + 40))(v48 + v50, v45, v47);
  swift_endAccess();

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_265D489DC(char *a1, uint64_t a2, double a3)
{
  v72 = a2;
  v74 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v67 - v10;
  v77 = v12;
  MEMORY[0x28223BE20](v9);
  v14 = &v67 - v13;
  v15 = sub_265D59DE0();
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = *(v80 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = &v67 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E980, &unk_265D5E880);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_265D581A0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_265D588E0();
  v79 = *(v82 - 8);
  v28 = *(v79 + 64);
  v29 = MEMORY[0x28223BE20](v82);
  v73 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v67 - v31;
  sub_265D58F50();
  if (v33 <= a3)
  {
    v68 = v8;
    v69 = v11;
    v70 = v14;
    v71 = v4;
    v72 = sub_265D59370();
    sub_265D589D0();
    v67 = v38;
    sub_265D58A10();
    sub_265D58160();
    (*(v24 + 8))(v27, v23);
    sub_265D58A20();
    sub_265D588D0();
    v39 = v75;
    sub_265D595F0();
    v40 = v73;
    (*(v79 + 16))(v73, v32, v82);
    v41 = sub_265D59DD0();
    v42 = sub_265D5A080();
    v43 = v32;
    if (os_log_type_enabled(v41, v42))
    {
      v44 = swift_slowAlloc();
      v74 = v32;
      v45 = v44;
      v46 = swift_slowAlloc();
      v83 = v46;
      *v45 = 141558274;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2080;
      sub_265D4B940(&qword_28003EAA8, MEMORY[0x277D538B8]);
      v47 = v40;
      v48 = v82;
      v49 = sub_265D5A3B0();
      v51 = v50;
      v79 = *(v79 + 8);
      (v79)(v47, v48);
      v52 = sub_265CF4FFC(v49, v51, &v83);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_265C01000, v41, v42, "MindfulMinutesAccumulator - Adding mindful session - Adding mindful session job: %{mask.hash}s", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266770CF0](v46, -1, -1);
      v43 = v74;
      MEMORY[0x266770CF0](v45, -1, -1);
    }

    else
    {

      v79 = *(v79 + 8);
      (v79)(v40, v82);
    }

    (*(v80 + 8))(v39, v81);
    v53 = v76[18];
    __swift_project_boxed_opaque_existential_1(v76 + 14, v76[17]);
    v54 = v69;
    sub_265D58C00();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_265D491C4;
    *(v55 + 24) = 0;
    v56 = v78;
    v57 = v68;
    v58 = v71;
    (*(v78 + 16))(v68, v54, v71);
    v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v60 = (v77 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    (*(v56 + 32))(v61 + v59, v57, v58);
    v62 = (v61 + v60);
    *v62 = sub_265D0F264;
    v62[1] = v55;
    v63 = v70;
    sub_265D58930();
    v64 = *(v56 + 8);
    v64(v54, v58);
    v65 = sub_265D58960();
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    *(v66 + 24) = 0;
    v65(sub_265CA442C, v66);

    v64(v63, v58);
    return (v79)(v43, v82);
  }

  else
  {
    sub_265D595F0();
    v34 = sub_265D59DD0();
    v35 = sub_265D5A080();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = a3;
      _os_log_impl(&dword_265C01000, v34, v35, "MindfulMinutesAccumulator - not inserting mindful minutes because duration is too short (%f", v36, 0xCu);
      MEMORY[0x266770CF0](v36, -1, -1);
    }

    return (*(v80 + 8))(v19, v81);
  }
}

uint64_t sub_265D491C4(void *a1)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595B0();
  v8 = a1;
  v9 = sub_265D59DD0();
  v10 = sub_265D5A070();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18[1] = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = MEMORY[0x2667704D0](v18[3], v18[4]);
    v16 = sub_265CF4FFC(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_265C01000, v9, v10, "MindfulMinutesAccumulator - Error adding standalone mindful session job: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266770CF0](v13, -1, -1);
    MEMORY[0x266770CF0](v12, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_265D493A0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v1 = v0[19];
  swift_unknownObjectRelease();
  v2 = v0[21];

  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_lock;
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_state;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF20, &qword_265D5B140);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MindfulMinutesAccumulator()
{
  result = qword_2813B7568;
  if (!qword_2813B7568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265D494D0()
{
  v0 = sub_265D59930();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_265D495D0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_265D495D0()
{
  if (!qword_2813B8FD0)
  {
    v0 = sub_265D590F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FD0);
    }
  }
}

uint64_t sub_265D49678@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF20, &qword_265D5B140);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D4970C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF20, &qword_265D5B140);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265D4980C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265D482B8(a1);
}

uint64_t sub_265D498A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4DFF8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for MindfulMinutesAccumulator();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v10, a4);
}

uint64_t sub_265D49968(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C96620;

  return (sub_265D4B294)(a1, v4, v5);
}

uint64_t sub_265D49A28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return (sub_265D4AE64)(a1, v4, v5);
}

uint64_t sub_265D49AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E008] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for MindfulMinutesAccumulator();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265D49BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E010] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for MindfulMinutesAccumulator();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265D49C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFF0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for MindfulMinutesAccumulator();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v8, a3);
}

uint64_t sub_265D49D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for MindfulMinutesAccumulator();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v8, a3);
}

uint64_t sub_265D49DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE8] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for MindfulMinutesAccumulator();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v8, a3);
}

uint64_t sub_265D49EA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D49F28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_265D4A064()
{
  result = qword_28003EAA0;
  if (!qword_28003EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003EAA0);
  }

  return result;
}

uint64_t sub_265D4A0B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;
  sub_265D583A0();

  return sub_265D58930();
}

uint64_t sub_265D4A15C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_265D58930();
}

uint64_t sub_265D4A200(void (*a1)(_BYTE *), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E218, &qword_265D5B598);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v19[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v19[-v16];
  a3(a5);
  swift_storeEnumTagMultiPayload();
  sub_265D4B8D0(v12, v15);
  sub_265D4B8D0(v15, v17);
  a1(v17);
  return sub_265CA4AE8(v17, &qword_28003E218, &qword_265D5B598);
}

void sub_265D4A374(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_265CA4470(v6, 0);
}

uint64_t sub_265D4A4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_265D58960();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a4;
  v14[5] = a5;

  v13(a9, v14);
}

uint64_t sub_265D4A560(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void))
{
  v25 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E218, &qword_265D5B598);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v24 - v17);
  sub_265D4B814(a1, &v24 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    a4(*v18);
    v20 = sub_265D58960();
    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a3;

    v20(sub_265CA4008, v21);

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v23 = sub_265D583A0();
    (*(*(v23 - 8) + 32))(v16, v18, v23);
    swift_storeEnumTagMultiPayload();
    v25(v16);
    return sub_265CA4AE8(v16, &qword_28003E218, &qword_265D5B598);
  }
}

uint64_t sub_265D4A7EC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1);
    v15 = sub_265D58960();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_265CA4BF4, v16);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    return a3(&v18);
  }
}

uint64_t sub_265D4A978(uint64_t a1)
{
  v2 = sub_265D59DE0();
  v50 = *(v2 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D581A0();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v49 = a1;
  sub_265D58A70();
  v16 = sub_265D58600();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v15, 1, v16) == 1)
  {
    sub_265CA4AE8(v15, &qword_28003E2F8, &qword_265D5B680);
    v19 = 0;
    goto LABEL_8;
  }

  v44 = v5;
  v45 = v2;
  v20 = sub_265D585E0();
  v22 = v21;
  v24 = v23;
  v43 = *(v17 + 8);
  v43(v15, v16);
  v53 = v20;
  v54 = v22;
  v55 = v24 & 1;
  v51 = xmmword_265D5B470;
  v52 = 1;
  sub_265CA48E8();
  sub_265CA493C();
  v25 = sub_265D57F90();
  sub_265C037E8(v53, v54, v55);
  if (v25)
  {
    sub_265D58A70();
    if (v18(v13, 1, v16) != 1)
    {
      v32 = sub_265D585F0();
      v34 = v33;
      v43(v13, v16);
      v53 = v32;
      LOBYTE(v54) = v34 & 1;
      *&v51 = 0;
      BYTE8(v51) = 1;
      sub_265CEB398();
      sub_265CEB3EC();
      v35 = sub_265D57F90();
      v2 = v45;
      if (v35)
      {
        v36 = v46;
        sub_265D58A10();
        v37 = sub_265D58190();
        v39 = v38;
        v41 = v40;
        (*(v47 + 8))(v36, v48);
        v53 = v37;
        v54 = v39;
        v42 = v41 & 1;
        v55 = v41 & 1;
        v51 = xmmword_265D5BC50;
        v52 = 1;
        sub_265CD4AAC();
        sub_265CD4B00();
        v19 = sub_265D57F90();
        sub_265C037E8(v37, v39, v42);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_7;
    }

    sub_265CA4AE8(v13, &qword_28003E2F8, &qword_265D5B680);
  }

  v19 = 0;
  v2 = v45;
LABEL_7:
  v5 = v44;
LABEL_8:
  sub_265D595F0();
  v26 = sub_265D59DD0();
  v27 = sub_265D5A080();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v5;
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v19 & 1;
    _os_log_impl(&dword_265C01000, v26, v27, "MindfulMinutesAccumulator - shouldStartSession - %{BOOL}d", v29, 8u);
    v30 = v29;
    v5 = v28;
    MEMORY[0x266770CF0](v30, -1, -1);
  }

  (*(v50 + 8))(v5, v2);
  return v19 & 1;
}

uint64_t sub_265D4AE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a2;
  v4[6] = a3;
  v4[4] = a1;
  v5 = sub_265D57E30();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_265D59DE0();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4AF90, v3, 0);
}

uint64_t sub_265D4AF90()
{
  v37 = v0;
  v1 = v0[4];
  v2 = sub_265D58BA0();
  if ((v2 & 0x100000000) != 0)
  {
    v11 = v2;
    v12 = v0[13];
    sub_265D595F0();
    v13 = sub_265D59DD0();
    v14 = sub_265D5A080();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[13];
    v18 = v0[10];
    v17 = v0[11];
    if (v15)
    {
      v35 = v0[13];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      v21 = sub_265D58B90();
      v23 = sub_265CF4FFC(v21, v22, &v36);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_265C01000, v13, v14, "MindfulMinutesAccumulator - Updating workout state to: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x266770CF0](v20, -1, -1);
      MEMORY[0x266770CF0](v19, -1, -1);

      (*(v17 + 8))(v35, v18);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v24 = (v11 - 1);
    v25 = v0[7];
    v26 = (v0[8] + 8);
    v27 = v0[9];
    v28 = v0[5];
    v29 = v0[6];
    if (v24 > 2)
    {
      sub_265D596F0();
      v0[2] = v28;

      sub_265D57E20();
      sub_265D59390();
      sub_265D59440();
    }

    else
    {
      sub_265D596C0();
      v0[3] = v28;

      sub_265D57E20();
      sub_265D59390();
      sub_265D59430();
    }

    (*v26)(v27, v25);
  }

  else
  {
    v3 = v0[12];
    sub_265D595F0();
    v4 = sub_265D59DD0();
    v5 = sub_265D5A070();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_265C01000, v4, v5, "Unknown Playback State.", v10, 2u);
      MEMORY[0x266770CF0](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
  }

  v31 = v0[12];
  v30 = v0[13];
  v32 = v0[9];

  v33 = v0[1];

  return v33();
}

uint64_t sub_265D4B294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF20, &qword_265D5B140);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = sub_265D58AC0();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = sub_265D59DE0();
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4B41C, v3, 0);
}

uint64_t sub_265D4B41C()
{
  v38 = v0;
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[5];
  sub_265D595F0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  v14 = v0[12];
  v13 = v0[13];
  if (v8)
  {
    v35 = v0[15];
    v15 = swift_slowAlloc();
    v33 = v7;
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315138;
    sub_265D4B940(&qword_28003E7E8, MEMORY[0x277D53AE0]);
    v17 = sub_265D5A3B0();
    v34 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v33, "MindfulMinutesAccumulator - Ending %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v34, v35);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = v0[17];
  v36 = v0[14];
  v23 = v0[10];
  v22 = v0[11];
  v24 = v0[8];
  v25 = v0[9];
  v27 = v0[6];
  v26 = v0[7];
  v28 = v0[5];
  (*(v23 + 104))(v22, *MEMORY[0x277D4F258], v25);
  v29 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_state;
  swift_beginAccess();
  (*(v23 + 40))(v24 + v29, v22, v25);
  swift_endAccess();
  sub_265D596D0();
  sub_265D489DC(v28, v27, v30);

  v31 = v0[1];

  return v31();
}

uint64_t sub_265D4B6F8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265D4A4A0(a1, a2, v2 + v6, *v7, v7[1], &unk_28003E1F0, &qword_265D5B8B0, &unk_287780318, sub_265D4B7E4);
}

uint64_t sub_265D4B814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E218, &qword_265D5B598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265D4B8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E218, &qword_265D5B598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D4B940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265D4B9A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_265D4BE60();
  *a2 = result;
  return result;
}

void sub_265D4B9D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656369;
  v4 = 0x7665446C61636F6CLL;
  v5 = 0x8000000265D5FC00;
  v6 = 0x8000000265D5FC20;
  v7 = 0xD000000000000018;
  if (v2 != 3)
  {
    v7 = 0xD000000000000010;
    v6 = 0x8000000265D5FC40;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000265D5FBE0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_265D4BA8C()
{
  result = qword_2813B8948;
  if (!qword_2813B8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B8948);
  }

  return result;
}

unint64_t sub_265D4BAE0()
{
  v1 = *v0;
  v2 = 0x7665446C61636F6CLL;
  v3 = 0xD000000000000018;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_265D4BB90()
{
  v1 = *v0;
  sub_265D5A460();
  sub_265D59EF0();

  return sub_265D5A4A0();
}

uint64_t sub_265D4BC88()
{
  *v0;
  *v0;
  *v0;
  sub_265D59EF0();
}

uint64_t sub_265D4BD6C()
{
  v1 = *v0;
  sub_265D5A460();
  sub_265D59EF0();

  return sub_265D5A4A0();
}

uint64_t sub_265D4BE60()
{
  v0 = sub_265D5A2F0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_265D4BEAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_265D4BEF0(uint64_t a1)
{
  v23 = a1;
  v24 = sub_265D59DE0();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAB8, &qword_265D5E990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CEF820]) init];
  v29 = sub_265D4C39C;
  v30 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_265D4BEAC;
  v28 = &block_descriptor_3;
  v11 = _Block_copy(&aBlock);
  [v10 setInvalidationHandler_];
  _Block_release(v11);
  v29 = sub_265D4C3C0;
  v30 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_265D4BEAC;
  v28 = &block_descriptor_3;
  v12 = _Block_copy(&aBlock);
  [v10 setInterruptionHandler_];
  _Block_release(v12);
  (*(v6 + 16))(v9, v23, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v9, v5);
  v29 = sub_265D4C81C;
  v30 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_265D4C8A8;
  v28 = &block_descriptor_6;
  v15 = _Block_copy(&aBlock);

  [v10 setAaDeviceRouteChangedHandler_];
  _Block_release(v15);
  *(swift_allocObject() + 16) = v10;
  v16 = v10;
  sub_265D59FB0();
  sub_265D595C0();
  v17 = sub_265D59DD0();
  v18 = sub_265D5A080();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_265C01000, v17, v18, "Activating AASystemStateMonitor...", v19, 2u);
    MEMORY[0x266770CF0](v19, -1, -1);
  }

  (*(v1 + 8))(v4, v24);
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v29 = sub_265D4CDE0;
  v30 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_265C93674;
  v28 = &block_descriptor_15;
  v21 = _Block_copy(&aBlock);
  v22 = v16;

  [v22 activateWithCompletion_];
  _Block_release(v21);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265D4C3CC(const char *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595C0();
  v7 = sub_265D59DD0();
  v8 = sub_265D5A080();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_265C01000, v7, v8, a1, v9, 2u);
    MEMORY[0x266770CF0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_265D4C508(int a1, void *a2, uint64_t a3)
{
  v27 = a3;
  v28 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAC0, &qword_265D5E998);
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v26);
  v7 = &v25 - v6;
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_265D595C0();
  v16 = sub_265D59DD0();
  v17 = sub_265D5A080();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v28 & 1;
    _os_log_impl(&dword_265C01000, v16, v17, "AADevice routed -- %{BOOL}d", v18, 8u);
    MEMORY[0x266770CF0](v18, -1, -1);
  }

  v19 = *(v9 + 8);
  v19(v15, v8);
  if (a2)
  {
    v20 = [a2 heartRateMonitorCapability] == 2;
  }

  else
  {
    v20 = 0;
  }

  sub_265D595C0();
  v21 = sub_265D59DD0();
  v22 = sub_265D5A080();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v20;
    _os_log_impl(&dword_265C01000, v21, v22, "AADevice is HRM capable? -- %{BOOL}d", v23, 8u);
    MEMORY[0x266770CF0](v23, -1, -1);
  }

  v19(v13, v8);
  v29 = v28 & v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAB8, &qword_265D5E990);
  sub_265D59FC0();
  return (*(v4 + 8))(v7, v26);
}

uint64_t sub_265D4C81C(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAB8, &qword_265D5E990) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_265D4C508(a1, a2, v6);
}

void sub_265D4C8A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_265D4C920(uint64_t a1, void *a2)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595C0();
  v8 = sub_265D59DD0();
  v9 = sub_265D5A080();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_265C01000, v8, v9, "Heart rate device routed stream cancelled...", v10, 2u);
    MEMORY[0x266770CF0](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return [a2 invalidate];
}

void sub_265D4CA78(void *a1, void *a2)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1)
  {
    v15 = a1;
    sub_265D595C0();
    v16 = a1;
    v17 = sub_265D59DD0();
    v18 = sub_265D5A080();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v37 = v5;
      v20 = v19;
      v21 = swift_slowAlloc();
      v36 = a2;
      v22 = v21;
      v40 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v23 = MEMORY[0x2667704D0](v38, v39);
      v25 = sub_265CF4FFC(v23, v24, &v40);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_265C01000, v17, v18, "Failed to activate AASystemStateMonitor: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v26 = v22;
      a2 = v36;
      MEMORY[0x266770CF0](v26, -1, -1);
      v27 = v20;
      v5 = v37;
      MEMORY[0x266770CF0](v27, -1, -1);
    }

    v28 = *(v5 + 8);
    v28(v12, v4);
    sub_265D595C0();
    v29 = sub_265D59DD0();
    v30 = sub_265D5A080();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_265C01000, v29, v30, "Invalidating AASystemStateMonitor...", v31, 2u);
      MEMORY[0x266770CF0](v31, -1, -1);
    }

    v28(v9, v4);
    [a2 invalidate];
  }

  else
  {
    sub_265D595C0();
    v32 = sub_265D59DD0();
    v33 = sub_265D5A080();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_265C01000, v32, v33, "AASystemStateMonitor activated.", v34, 2u);
      MEMORY[0x266770CF0](v34, -1, -1);
    }

    (*(v5 + 8))(v14, v4);
  }
}

uint64_t Platform.appRequirementNotificationName(for:)(unsigned __int8 a1, char a2)
{
  if (a2 != 2)
  {
    return 0;
  }

  sub_265D59420();
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return sub_265D593E0();
    }

    else
    {
      return sub_265D593F0();
    }
  }

  else if (a1)
  {
    return sub_265D59410();
  }

  else
  {
    return sub_265D59400();
  }
}

uint64_t sub_265D4CE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_265C97870(a3, v27 - v11, &qword_28003E530, &qword_265D5BF68);
  v13 = sub_265D59FA0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_265CA4AE8(v12, &qword_28003E530, &qword_265D5BF68);
  }

  else
  {
    sub_265D59F90();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_265D59F50();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_265D59EE0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_265D4D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_265C97870(a3, v27 - v11, &qword_28003E530, &qword_265D5BF68);
  v13 = sub_265D59FA0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_265CA4AE8(v12, &qword_28003E530, &qword_265D5BF68);
  }

  else
  {
    sub_265D59F90();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_265D59F50();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_265D59EE0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAE8, &qword_265D5EC28);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAE8, &qword_265D5EC28);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_265D4D49C(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4D5B8, 0, 0);
}

uint64_t sub_265D4D5B8()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D58F20();
    v5 = *(MEMORY[0x277D4DFF0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for SessionAppTerminationMonitor(0);
    v8 = sub_265D51BBC(&qword_28003EAF0, type metadata accessor for SessionAppTerminationMonitor);
    *v6 = v0;
    v6[1] = sub_265D4D728;
    v9 = v0[16];

    return MEMORY[0x2821AE8D8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265D4D728()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D4D910, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265D4D910()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "SessionAppTerminationMonitor - Failed to start session: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265D4DAF8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4DC14, 0, 0);
}

uint64_t sub_265D4DC14()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D59020();
    v5 = *(MEMORY[0x277D4DFE0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for SessionAppTerminationMonitor(0);
    v8 = sub_265D51BBC(&qword_28003EAF0, type metadata accessor for SessionAppTerminationMonitor);
    *v6 = v0;
    v6[1] = sub_265D4DD84;
    v9 = v0[16];

    return MEMORY[0x2821AE8C8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265D4DD84()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D4DF6C, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265D4DF6C()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "SessionAppTerminationMonitor - Failed to end session: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265D4E154(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58130();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4E270, 0, 0);
}

uint64_t sub_265D4E270()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D58E60();
    v5 = *(MEMORY[0x277D4DFE8] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for SessionAppTerminationMonitor(0);
    v8 = sub_265D51BBC(&qword_28003EAF0, type metadata accessor for SessionAppTerminationMonitor);
    *v6 = v0;
    v6[1] = sub_265D4E3E0;
    v9 = v0[16];

    return MEMORY[0x2821AE8D0](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265D4E3E0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D4E5C8, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265D4E5C8()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "SessionAppTerminationMonitor - Failed to update session: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265D4E7B0()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  v2 = *(v0 + 128);

  v3 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_lock;
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_265D4E8AC()
{
  v0 = sub_265D59930();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_265D4EB40(319, &qword_2813B8FD8, type metadata accessor for SessionAppTerminationMonitor.State, MEMORY[0x277D4F260]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_265D4EA18()
{
  sub_265D4EAF4();
  if (v0 <= 0x3F)
  {
    sub_265D4EB40(319, &qword_2813B9008, MEMORY[0x277D529D8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_265D58D00();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_265D4EAF4()
{
  result = qword_2813B6CF0;
  if (!qword_2813B6CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B6CF0);
  }

  return result;
}

void sub_265D4EB40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_265D4EBEC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_265D58AC0();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v2[15] = *(v4 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = sub_265D59DE0();
  v2[18] = v5;
  v6 = *(v5 - 8);
  v2[19] = v6;
  v7 = *(v6 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  v2[23] = v8;
  v9 = *(v8 - 8);
  v2[24] = v9;
  v10 = *(v9 + 64) + 15;
  v2[25] = swift_task_alloc();
  v11 = sub_265D581A0();
  v2[26] = v11;
  v12 = *(v11 - 8);
  v2[27] = v12;
  v13 = *(v12 + 64) + 15;
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4EDF8, v1, 0);
}

uint64_t sub_265D4EDF8()
{
  v96 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[11];
  sub_265D58A10();
  v5 = sub_265D58190();
  v7 = v6;
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  if (v9)
  {
    v10 = *(v0[12] + 136);
    v11 = sub_265D58B50();
    v13 = v12;
    v14 = sub_265D59E90();
    v15 = [objc_opt_self() predicateMatchingBundleIdentifier_];

    sub_265D4EAF4();
    v16 = v15;
    v17 = sub_265D51F78(v16);

    if (v17)
    {
      v94 = v16;
      v36 = v11;
      v37 = v0[24];
      v38 = v0[25];
      v88 = v0[17];
      v39 = v0[14];
      v84 = v0[22];
      v86 = v0[13];
      v40 = v0[11];
      v80 = v0[23];
      v82 = v0[12];
      v91 = sub_265D589D0();
      v89 = v41;
      v42 = type metadata accessor for SessionAppTerminationMonitor.State(0);
      v43 = *(v42 + 28);

      v44 = v17;
      sub_265D58A70();
      v45 = sub_265D589C0();
      *v38 = v91;
      v38[1] = v89;
      v92 = v36;
      v38[2] = v36;
      v38[3] = v13;
      v90 = v44;
      v38[4] = v44;
      *(v38 + *(v42 + 32)) = v45;
      (*(v37 + 104))(v38, *MEMORY[0x277D4F250], v80);
      v46 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
      swift_beginAccess();
      (*(v37 + 40))(v82 + v46, v38, v80);
      swift_endAccess();
      sub_265D595E0();
      v47 = *(v39 + 16);
      v47(v88, v40, v86);

      v48 = sub_265D59DD0();
      LOBYTE(v40) = sub_265D5A080();

      v87 = v40;
      v49 = os_log_type_enabled(v48, v40);
      v50 = v0[22];
      v52 = v0[18];
      v51 = v0[19];
      v53 = v0[17];
      v55 = v0[13];
      v54 = v0[14];
      if (v49)
      {
        v85 = v47;
        v56 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v95[0] = v83;
        *v56 = 141558530;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_265CF4FFC(v92, v13, v95);
        *(v56 + 22) = 2082;
        v79 = v52;
        v81 = v50;
        v57 = sub_265D589D0();
        v59 = v58;
        (*(v54 + 8))(v53, v55);
        v60 = sub_265CF4FFC(v57, v59, v95);

        *(v56 + 24) = v60;
        _os_log_impl(&dword_265C01000, v48, v87, "SessionAppTerminationMonitor: monitoring %{mask.hash}s for session %{public}s!", v56, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v83, -1, -1);
        v61 = v56;
        v47 = v85;
        MEMORY[0x266770CF0](v61, -1, -1);

        (*(v51 + 8))(v81, v79);
      }

      else
      {

        (*(v54 + 8))(v53, v55);
        (*(v51 + 8))(v50, v52);
      }

      v62 = v0[16];
      v63 = v0[13];
      v64 = v0[14];
      v65 = v0[12];
      v47(v62, v0[11], v63);
      v66 = (*(v64 + 80) + 40) & ~*(v64 + 80);
      v67 = swift_allocObject();
      *(v67 + 2) = v92;
      *(v67 + 3) = v13;
      *(v67 + 4) = v65;
      (*(v64 + 32))(&v67[v66], v62, v63);
      v0[6] = sub_265D5203C;
      v0[7] = v67;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_265D50B98;
      v0[5] = &block_descriptor_4;
      v68 = _Block_copy(v0 + 2);
      v69 = v0[7];

      [v90 monitorForDeath_];
      _Block_release(v68);
    }

    else
    {
      v18 = v0[21];
      sub_265D595E0();

      v19 = sub_265D59DD0();
      v20 = sub_265D5A070();

      v21 = os_log_type_enabled(v19, v20);
      v22 = v0[21];
      v24 = v0[18];
      v23 = v0[19];
      if (v21)
      {
        v25 = swift_slowAlloc();
        v93 = v16;
        v95[0] = swift_slowAlloc();
        v26 = v95[0];
        *v25 = 141558274;
        *(v25 + 4) = 1752392040;
        *(v25 + 12) = 2080;
        v27 = sub_265CF4FFC(v11, v13, v95);

        *(v25 + 14) = v27;
        _os_log_impl(&dword_265C01000, v19, v20, "SessionAppTerminationMonitor: RBSProcessHandle failed to initialize for %{mask.hash}s", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x266770CF0](v26, -1, -1);
        MEMORY[0x266770CF0](v25, -1, -1);
      }

      else
      {
      }

      (*(v23 + 8))(v22, v24);
    }
  }

  else
  {
    v28 = v0[20];
    sub_265C037E8(v5, v7, 0);
    sub_265D595F0();
    v29 = sub_265D59DD0();
    v30 = sub_265D5A070();
    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[19];
    v32 = v0[20];
    v34 = v0[18];
    if (v31)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_265C01000, v29, v30, "SessionAppTerminationMonitor: Unknown media type", v35, 2u);
      MEMORY[0x266770CF0](v35, -1, -1);
    }

    (*(v33 + 8))(v32, v34);
  }

  v70 = v0[28];
  v71 = v0[25];
  v73 = v0[21];
  v72 = v0[22];
  v74 = v0[20];
  v76 = v0[16];
  v75 = v0[17];

  v77 = v0[1];

  return v77();
}

uint64_t sub_265D4F534(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v64 = a5;
  v62 = a3;
  v9 = sub_265D58AC0();
  v67 = *(v9 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v58 - v13;
  v14 = sub_265D59DE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v22 = [a1 bundle];
  if (v22 && (v23 = v22, v24 = [v22 identifier], v23, v24))
  {
    v25 = sub_265D59EA0();
    v27 = v26;

    v28 = [a2 status];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 error];
    }

    else
    {
      v30 = 0;
    }

    sub_265D595E0();

    v36 = v30;
    v37 = v30;
    v38 = sub_265D59DD0();
    v39 = sub_265D5A080();

    v62 = v37;

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v61 = v25;
      v41 = v40;
      v60 = swift_slowAlloc();
      v69 = v60;
      *v41 = 141558530;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_265CF4FFC(v61, v27, &v69);
      *(v41 + 22) = 2082;
      v68 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAE0, &qword_265D5EC10);
      v42 = sub_265D5A0E0();
      v44 = sub_265CF4FFC(v42, v43, &v69);
      v59 = v14;
      v45 = v9;
      v46 = v44;

      *(v41 + 24) = v46;
      v9 = v45;
      v47 = v39;
      v48 = v27;
      _os_log_impl(&dword_265C01000, v38, v47, "SessionAppTerminationMonitor: %{mask.hash}s was terminated -> %{public}s", v41, 0x20u);
      v49 = v60;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v49, -1, -1);
      v50 = v41;
      v25 = v61;
      MEMORY[0x266770CF0](v50, -1, -1);

      (*(v15 + 8))(v21, v59);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
      v48 = v27;
    }

    v51 = sub_265D59FA0();
    v52 = v63;
    (*(*(v51 - 8) + 56))(v63, 1, 1, v51);
    v53 = swift_allocObject();
    swift_weakInit();
    v54 = v67;
    v55 = v65;
    (*(v67 + 16))(v65, v66, v9);
    v56 = (*(v54 + 80) + 56) & ~*(v54 + 80);
    v57 = swift_allocObject();
    *(v57 + 2) = 0;
    *(v57 + 3) = 0;
    *(v57 + 4) = v53;
    *(v57 + 5) = v25;
    *(v57 + 6) = v48;
    (*(v54 + 32))(&v57[v56], v55, v9);
    sub_265D4D17C(0, 0, v52, &unk_265D5EC08, v57);
  }

  else
  {
    sub_265D595E0();

    v31 = sub_265D59DD0();
    v32 = sub_265D5A070();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v69 = v34;
      *v33 = 141558274;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_265CF4FFC(v62, a4, &v69);
      _os_log_impl(&dword_265C01000, v31, v32, "SessionAppTerminationMonitor: This appears to be a testing handle for %{mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266770CF0](v34, -1, -1);
      MEMORY[0x266770CF0](v33, -1, -1);
    }

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_265D4FB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_265D4FB7C, 0, 0);
}

uint64_t sub_265D4FB7C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 72);
    *(v0 + 88) = sub_265D589D0();
    *(v0 + 96) = v5;

    return MEMORY[0x2822009F8](sub_265D4FC50, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_265D4FC50()
{
  v1 = *(v0 + 80);
  sub_265D4FCFC(*(v0 + 56), *(v0 + 64), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x2822009F8](sub_265D4FCD4, 0, 0);
}

uint64_t sub_265D4FCFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v147 = a3;
  v148 = a4;
  v149 = a1;
  v150 = a2;
  v5 = sub_265D57ED0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v137 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_265D58FD0();
  v138 = *(v139 - 8);
  v8 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v136 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D59650();
  v144 = *(v10 - 8);
  v145 = v10;
  v11 = *(v144 + 64);
  MEMORY[0x28223BE20](v10);
  v143 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265D59DE0();
  v14 = *(v13 - 8);
  v151 = v13;
  v152 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v134 = &v131 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v140 = &v131 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v141 = &v131 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v142 = &v131 - v26;
  MEMORY[0x28223BE20](v25);
  v131 = &v131 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v132 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v131 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v131 - v37;
  v39 = type metadata accessor for SessionAppTerminationMonitor.State(0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v133 = (&v131 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v135 = (&v131 - v47);
  MEMORY[0x28223BE20](v46);
  v49 = (&v131 - v48);
  v50 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  swift_beginAccess();
  v51 = *(v35 + 16);
  v146 = v4;
  v51(v38, v4 + v50, v34);
  if ((*(v35 + 88))(v38, v34) == *MEMORY[0x277D4F250])
  {
    (*(v35 + 96))(v38, v34);
    sub_265D51D0C(v38, v49);
    v53 = v149;
    v52 = v150;
    if (v49[2] == v149 && v49[3] == v150 || (sub_265D5A3C0() & 1) != 0)
    {
      v54 = v147;
      v55 = v148;
      v56 = v152;
      if (*v49 == v147 && v49[1] == v148 || (sub_265D5A3C0() & 1) != 0)
      {
        v57 = *(v39 + 28);
        v148 = v49;
        sub_265C97870(v49 + v57, v33, &qword_28003E2F8, &qword_265D5B680);
        v58 = sub_265D58600();
        v59 = *(v58 - 8);
        v60 = *(v59 + 48);
        if (v60(v33, 1, v58) == 1)
        {
          v61 = v146;
        }

        else
        {
          v66 = sub_265D585F0();
          v68 = v67;
          v69 = v33;
          v70 = *(v59 + 8);
          v70(v69, v58);
          v155 = v66;
          LOBYTE(v156) = v68 & 1;
          *&v153 = 0;
          BYTE8(v153) = 1;
          sub_265CEB398();
          sub_265CEB3EC();
          v71 = sub_265D57F90();
          v61 = v146;
          if ((v71 & 1) == 0)
          {
LABEL_30:
            v106 = v142;
            sub_265D595E0();
            sub_265D59DC0();
            v109 = *(v56 + 8);
            v108 = v56 + 8;
            v107 = v109;
            v110 = v151;
            v109(v106, v151);
            v111 = *(v61 + 136);
            v112 = sub_265D58B30();
            v114 = v143;
            v113 = v144;
            v115 = v145;
            (*(v144 + 104))(v143, *MEMORY[0x277D4F928], v145);
            LOBYTE(v106) = sub_265CA7344(v114, v112);

            (*(v113 + 8))(v114, v115);
            v49 = v148;
            if (v106)
            {
              v152 = v108;
              v116 = v141;
              sub_265D595E0();
              v117 = v135;
              sub_265D51C4C(v49, v135);
              v118 = v150;

              v119 = sub_265D59DD0();
              v120 = sub_265D5A080();

              if (os_log_type_enabled(v119, v120))
              {
                v121 = swift_slowAlloc();
                v122 = swift_slowAlloc();
                v155 = v122;
                *v121 = 141558530;
                *(v121 + 4) = 1752392040;
                *(v121 + 12) = 2080;
                *(v121 + 14) = sub_265CF4FFC(v149, v118, &v155);
                *(v121 + 22) = 2082;
                v123 = *v117;
                v124 = v117[1];

                sub_265D51CB0(v117);
                v125 = sub_265CF4FFC(v123, v124, &v155);
                v61 = v146;

                *(v121 + 24) = v125;
                _os_log_impl(&dword_265C01000, v119, v120, "SessionAppTerminationMonitor Handling app termination for %{mask.hash}s on session %{public}s", v121, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x266770CF0](v122, -1, -1);
                MEMORY[0x266770CF0](v121, -1, -1);

                v126 = v141;
              }

              else
              {

                sub_265D51CB0(v117);
                v126 = v116;
              }

              v107(v126, v110);
              v128 = *(v61 + 112);
              v127 = *(v61 + 120);
              swift_getObjectType();
              sub_265D5A030();
              LOBYTE(v155) = 1;
              sub_265D57EB0();
              v129 = v136;
              sub_265D58FC0();
              v130 = v139;
              sub_265D58ED0();
              (*(v138 + 8))(v129, v130);
            }

            goto LABEL_35;
          }

          v72 = v132;
          sub_265C97870(v148 + v57, v132, &qword_28003E2F8, &qword_265D5B680);
          if (v60(v72, 1, v58) != 1)
          {
            v92 = v72;
            v93 = sub_265D585E0();
            v95 = v94;
            v97 = v96;
            v70(v92, v58);
            v155 = v93;
            v156 = v95;
            v157 = v97 & 1;
            v153 = xmmword_265D5B470;
            v154 = 1;
            sub_265CA48E8();
            sub_265CA493C();
            v98 = sub_265D57F90();
            sub_265C037E8(v155, v156, v157);
            if (v98)
            {
              v99 = *(v61 + 136);
              v100 = sub_265D58B60();
              if (v100 == sub_265D58B60())
              {
                v101 = v131;
                sub_265D595E0();
                v102 = sub_265D59DD0();
                v103 = sub_265D5A080();
                if (os_log_type_enabled(v102, v103))
                {
                  v104 = swift_slowAlloc();
                  *v104 = 0;
                  _os_log_impl(&dword_265C01000, v102, v103, "Ignoring App Termination for a TV <-> Phone Workout on Phone.", v104, 2u);
                  MEMORY[0x266770CF0](v104, -1, -1);
                }

                (*(v56 + 8))(v101, v151);
                v105 = v148;
                return sub_265D51CB0(v105);
              }
            }

            goto LABEL_30;
          }

          v33 = v72;
        }

        sub_265CA4AE8(v33, &qword_28003E2F8, &qword_265D5B680);
        goto LABEL_30;
      }

      v79 = v140;
      sub_265D595E0();
      v83 = v133;
      sub_265D51C4C(v49, v133);

      v84 = sub_265D59DD0();
      v85 = sub_265D5A080();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v155 = v150;
        *v86 = 136315394;
        v87 = *v83;
        v88 = v83[1];

        sub_265D51CB0(v83);
        v89 = v54;
        v90 = sub_265CF4FFC(v87, v88, &v155);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2080;
        *(v86 + 14) = sub_265CF4FFC(v89, v55, &v155);
        _os_log_impl(&dword_265C01000, v84, v85, "SessionAppTerminationMonitor: App termination for session (%s doesn't match current session %s", v86, 0x16u);
        v91 = v150;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v91, -1, -1);
        MEMORY[0x266770CF0](v86, -1, -1);

        (*(v56 + 8))(v140, v151);
LABEL_35:
        v105 = v49;
        return sub_265D51CB0(v105);
      }

      sub_265D51CB0(v83);
    }

    else
    {
      v73 = v134;
      sub_265D595E0();
      sub_265D51C4C(v49, v43);

      v74 = sub_265D59DD0();
      v75 = sub_265D5A080();

      v76 = os_log_type_enabled(v74, v75);
      v56 = v152;
      if (!v76)
      {

        sub_265D51CB0(v43);
        (*(v56 + 8))(v73, v151);
        goto LABEL_35;
      }

      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v155 = v78;
      *v77 = 141558786;
      *(v77 + 4) = 1752392040;
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_265CF4FFC(v53, v52, &v155);
      *(v77 + 22) = 2160;
      *(v77 + 24) = 1752392040;
      *(v77 + 32) = 2080;
      v79 = v73;
      v80 = *(v43 + 2);
      v81 = *(v43 + 3);

      sub_265D51CB0(v43);
      v82 = sub_265CF4FFC(v80, v81, &v155);

      *(v77 + 34) = v82;
      _os_log_impl(&dword_265C01000, v74, v75, "SessionAppTerminationMonitor: Terminated Bundle identifier (%{mask.hash}s does not match monitored bundle identifier (%{mask.hash}s)", v77, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v78, -1, -1);
      MEMORY[0x266770CF0](v77, -1, -1);
    }

    (*(v56 + 8))(v79, v151);
    goto LABEL_35;
  }

  (*(v35 + 8))(v38, v34);
  sub_265D595E0();
  v62 = sub_265D59DD0();
  v63 = sub_265D5A080();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_265C01000, v62, v63, "SessionAppTerminationMonitor: App terminated when SessionAppTerminationMonitor inactive. Ignoring", v64, 2u);
    MEMORY[0x266770CF0](v64, -1, -1);
  }

  return (*(v152 + 8))(v18, v151);
}

void sub_265D50B98(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t sub_265D50C1C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = sub_265D59DE0();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SessionAppTerminationMonitor.State(0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D50D7C, v2, 0);
}

uint64_t sub_265D50D7C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x277D4F250])
  {
    v6 = v0[16];
    v7 = v0[17];
    v8 = v0[8];
    (*(v0[14] + 96))(v6, v0[13]);
    sub_265D51D0C(v6, v7);
    if (*v7 == *v8 && v7[1] == v8[1] || (sub_265D5A3C0() & 1) != 0)
    {
      v9 = v0[12];
      sub_265D595F0();
      v10 = sub_265D59DD0();
      v11 = sub_265D5A080();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_265C01000, v10, v11, "SessionAppTerminationMonitor - ended session so ending monitoring", v12, 2u);
        MEMORY[0x266770CF0](v12, -1, -1);
      }

      v26 = v0[17];
      v14 = v0[14];
      v13 = v0[15];
      v16 = v0[12];
      v15 = v0[13];
      v18 = v0[10];
      v17 = v0[11];

      (*(v17 + 8))(v16, v18);
      (*(v14 + 104))(v13, *MEMORY[0x277D4F258], v15);
      swift_beginAccess();
      (*(v14 + 40))(v4 + v5, v13, v15);
      swift_endAccess();
      v19 = v26;
    }

    else
    {
      v19 = v0[17];
    }

    sub_265D51CB0(v19);
  }

  else
  {
    (*(v0[14] + 8))(v0[16], v0[13]);
  }

  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[15];
  v23 = v0[12];

  v24 = v0[1];

  return v24();
}

uint64_t sub_265D51014@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D510A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265D511A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265D4EBEC(a1);
}

uint64_t sub_265D51238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4DFF8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v10, a4);
}

uint64_t sub_265D51300(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265C96620;

  return sub_265D50C1C(v4, a2);
}

uint64_t sub_265D51394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E000] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265D5145C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E008] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265D51524(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for SessionAppTerminationMonitor.State(0);
  v3[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D51624, v2, 0);
}

uint64_t sub_265D51624()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  sub_265D51C4C(v0[6], v1);
  v8 = *(v2 + 28);
  sub_265CA4AE8(v1 + v8, &qword_28003E2F8, &qword_265D5B680);
  v9 = sub_265D58600();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v1 + v8, v7, v9);
  (*(v10 + 56))(v1 + v8, 0, 1, v9);
  sub_265D51C4C(v1, v3);
  (*(v4 + 104))(v3, *MEMORY[0x277D4F250], v5);
  v11 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  swift_beginAccess();
  (*(v4 + 40))(v6 + v11, v3, v5);
  swift_endAccess();
  sub_265D51CB0(v1);

  v12 = v0[1];

  return v12();
}

uint64_t sub_265D517D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFF0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v8, a3);
}

uint64_t sub_265D5188C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v8, a3);
}

uint64_t sub_265D51944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE8] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v8, a3);
}

uint64_t sub_265D519FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D51A84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265D51BBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265D51C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionAppTerminationMonitor.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D51CB0(uint64_t a1)
{
  v2 = type metadata accessor for SessionAppTerminationMonitor.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D51D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionAppTerminationMonitor.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D51D70(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_265D51E64;

  return v6(v2 + 32);
}

uint64_t sub_265D51E64()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

id sub_265D51F78(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_265D57D60();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_265D5203C(void *a1, void *a2)
{
  v5 = *(sub_265D58AC0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_265D4F534(a1, a2, v6, v7, v8, v9);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265D520DC(uint64_t a1)
{
  v4 = *(sub_265D58AC0() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_265C96620;

  return sub_265D4FB54(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_265D521E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D51D70(a1, v5);
}

uint64_t sub_265D522A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C96620;

  return sub_265D51D70(a1, v5);
}

uint64_t sub_265D52358(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D1CD70(a1, v5);
}

unint64_t sub_265D52410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E820, &qword_265D5D288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265D5EC70;
  *(inited + 32) = 0x79636E6574616CLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_265D5A020();
  *(inited + 56) = 0xD00000000000001CLL;
  *(inited + 64) = 0x8000000265D62480;
  *(inited + 72) = sub_265D59E90();
  *(inited + 80) = 0x656372756F73;
  *(inited + 88) = 0xE600000000000000;
  v1 = sub_265D59E90();

  *(inited + 96) = v1;
  v2 = sub_265C96DB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E828, &qword_265D5D290);
  swift_arrayDestroy();
  return v2;
}

unint64_t sub_265D5260C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  return sub_265D52410();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_265D52630(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265D52678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265D526CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, int a4@<W6>, uint64_t a5@<X8>)
{
  v31 = a4;
  v29 = a2;
  v30 = a3;
  v25 = a5;
  v26 = a1;
  v5 = sub_265D59DE0();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C0, &qword_265D5C9C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v21 - v11;
  sub_265D58B40();
  v32 = sub_265D58760();
  sub_265D1DEE0();
  sub_265D57FC0();
  v24 = v33;
  v21[3] = v34;
  sub_265D59990();
  v23 = v13;
  v22 = sub_265D59C80();
  sub_265D59C90();

  sub_265D57F10();
  v14 = sub_265D57F40();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_265D583B0();
  sub_265D59ED0();
  sub_265D5A030();
  sub_265D58850();
  sub_265D5A030();
  v16 = v15;
  sub_265D595E0();
  sub_265D59DC0();
  (*(v27 + 8))(v8, v28);
  v18 = v29;
  v17 = v30;
  *(v29 + 56) = v16;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  __swift_project_boxed_opaque_existential_1((v17 + 72), *(v17 + 96));
  v19 = off_28777D8B0[0];
  type metadata accessor for RemoteParticipantHandshakeRegistry();
  return v19();
}

uint64_t sub_265D529B8()
{
  v0 = sub_265D58F70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v1 + 104))(v4, *MEMORY[0x277D4E860], v0);
  sub_265D58870();
  sub_265D588C0();
  sub_265D58C40();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_265D52B20(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v79 = a4;
  v78 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v64 - v8;
  v9 = sub_265D58870();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  v16 = sub_265D588C0();
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = *(v74 + 64);
  MEMORY[0x28223BE20](v16);
  v73 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_265D59DE0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v76 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v64 - v24;
  sub_265D58890();
  v27 = v26;
  sub_265D588A0();
  v29 = v28;
  sub_265D595E0();
  sub_265D59DC0();
  v30 = *(v20 + 8);
  v30(v25, v19);
  if (*(a2 + 72))
  {
    sub_265D57690();
    v31 = swift_allocError();
    *v32 = 1;
    v80 = v31;
    return swift_willThrow();
  }

  else
  {
    v69 = v30;
    v70 = v19;
    v66 = v13;
    v67 = v15;
    v71 = v9;
    v34 = *(a2 + 56);
    sub_265D5A030();
    *(a2 + 56) = sub_265D2C19C(v34, v27, v29, v35);
    *(a2 + 64) = v36;
    *(a2 + 72) = 1;
    v37 = v76;
    sub_265D595F0();
    v39 = v73;
    v38 = v74;
    v40 = v75;
    (*(v74 + 16))(v73, a1, v75);
    v41 = sub_265D59DD0();
    v42 = sub_265D5A080();
    v43 = os_log_type_enabled(v41, v42);
    v68 = a1;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v64 = v44;
      v65 = swift_slowAlloc();
      v81 = v65;
      *v44 = 136446210;
      sub_265D576E4(&qword_28003EB08, MEMORY[0x277D53818]);
      v45 = sub_265D5A3B0();
      v47 = v46;
      (*(v38 + 8))(v39, v40);
      v48 = sub_265CF4FFC(v45, v47, &v81);

      v49 = v64;
      *(v64 + 1) = v48;
      v50 = v42;
      v51 = v49;
      _os_log_impl(&dword_265C01000, v41, v50, "Participant handshake succeeded with response: %{public}s", v49, 0xCu);
      v52 = v65;
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266770CF0](v52, -1, -1);
      MEMORY[0x266770CF0](v51, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v39, v40);
    }

    v69(v37, v70);
    v53 = v78;
    __swift_project_boxed_opaque_existential_1((v78 + 72), *(v78 + 96));
    v54 = off_28777D8C8[0];
    type metadata accessor for RemoteParticipantHandshakeRegistry();
    v55 = v77;
    v54();
    v56 = v55;
    v57 = sub_265D59BA0();
    v58 = *(v57 - 8);
    v59 = (*(v58 + 48))(v55, 1, v57);
    v60 = v71;
    if (v59 == 1)
    {
      return sub_265CA4AE8(v56, &qword_28003E6C8, &unk_265D5C9D0);
    }

    else
    {
      v61 = v66;
      sub_265D59B70();
      (*(v58 + 8))(v56, v57);
      v62 = v72;
      v63 = v67;
      (*(v72 + 32))(v67, v61, v60);
      __swift_project_boxed_opaque_existential_1((v53 + 72), *(v53 + 96));
      off_28777D8B0[0]();
      __swift_project_boxed_opaque_existential_1((v53 + 72), *(v53 + 96));
      off_28777D8B8[0]();
      return (*(v62 + 8))(v63, v60);
    }
  }
}

uint64_t sub_265D531A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_265C97624(a3, v5);
  swift_beginAccess();
  sub_265CE15C4(v5, a2);
  return swift_endAccess();
}

uint64_t sub_265D5321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 208);
  v7 = sub_265CE2890(a2);
  if (v8)
  {
    v9 = v7;
    v10 = *(a1 + 208);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 208);
    *(a1 + 208) = 0x8000000000000000;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_265CE66D8();
    }

    sub_265C033C4((*(v12 + 56) + 40 * v9), a3);
    sub_265CE5120(v9, v12);
    *(a1 + 208) = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return swift_endAccess();
}

uint64_t sub_265D532F4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v2 = v0[25];

  v3 = v0[26];

  return swift_deallocClassInstance();
}

uint64_t sub_265D53380()
{
  v0 = sub_265D59DE0();
  v38 = *(v0 - 8);
  v39 = v0;
  v1 = *(v38 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v36 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  sub_265D58A70();
  v12 = sub_265D58600();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    sub_265CA4AE8(v11, &qword_28003E2F8, &qword_265D5B680);
    v15 = 0;
  }

  else
  {
    v16 = sub_265D585E0();
    v18 = v17;
    v20 = v19;
    (*(v13 + 8))(v11, v12);
    v43 = v16;
    v44 = v18;
    v45 = v20 & 1;
    v41 = 0uLL;
    v42 = 1;
    sub_265CA48E8();
    sub_265CA493C();
    v15 = sub_265D57F90();
    sub_265CA4B90(v43, v44, v45);
  }

  sub_265D580F0();
  if (v14(v9, 1, v12) == 1)
  {
    return sub_265CA4AE8(v9, &qword_28003E2F8, &qword_265D5B680);
  }

  v22 = sub_265D585E0();
  v24 = v23;
  v26 = v25;
  (*(v13 + 8))(v9, v12);
  v43 = v22;
  v44 = v24;
  v45 = v26 & 1;
  v41 = xmmword_265D5BC40;
  v42 = 1;
  sub_265CA48E8();
  sub_265CA493C();
  LODWORD(v22) = sub_265D57F90();
  result = sub_265CA4B90(v43, v44, v45);
  if (v15 & v22)
  {
    v27 = v36;
    sub_265D595F0();
    v28 = sub_265D59DD0();
    v29 = sub_265D5A080();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_265C01000, v28, v29, "Canceling handshake because session has moved to standalone state.", v30, 2u);
      MEMORY[0x266770CF0](v30, -1, -1);
    }

    v31 = *(v38 + 8);
    v32 = v27;
    v33 = v39;
    v31(v32, v39);
    v34 = v37;
    sub_265D595F0();
    sub_265D59DC0();
    v31(v34, v33);
    v35 = *(v40 + 200);
    return sub_265D58CA0();
  }

  return result;
}

uint64_t sub_265D537E0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a1;
  v53 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E208, &qword_265D5D7D0);
  v47 = *(v48 - 8);
  v46 = *(v47 + 64);
  v4 = MEMORY[0x28223BE20](v48);
  v44 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v43 = &v41[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E260, &unk_265D5EDA0);
  v51 = *(v7 - 8);
  v52 = v7;
  v50 = *(v51 + 64);
  v8 = MEMORY[0x28223BE20](v7);
  v49 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v45 = &v41[-v10];
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D595F0();
  sub_265D59DC0();
  v16 = *(v12 + 8);
  v16(v15, v11);
  sub_265C97624(v2 + 160, v58);
  __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
  v57[3] = &type metadata for MachTimestampOffsetCalculator;
  v57[4] = &off_28777FD18;
  type metadata accessor for MachTimestampOffsetExchange();
  v17 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v57, &type metadata for MachTimestampOffsetCalculator);
  *(v17 + 40) = &type metadata for MachTimestampOffsetCalculator;
  *(v17 + 48) = &off_28777FD18;
  *(v17 + 56) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 2;
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  v18 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_265D59D20();
  sub_265D595F0();
  sub_265D59DC0();
  v16(v15, v11);
  v19 = *(v2 + 200);
  v54 = v3;
  LOBYTE(v16) = v42;
  v55 = v42;
  v56 = v58;
  sub_265D58CA0();
  __swift_project_boxed_opaque_existential_1(v58, v59);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v16;
  *(v20 + 32) = v17;

  v21 = v43;
  LOBYTE(v12) = v16;
  sub_265D59CE0();

  v22 = v47;
  v23 = v44;
  v24 = v48;
  (*(v47 + 16))(v44, v21, v48);
  v25 = v22;
  v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v27 = (v46 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v25 + 32))(v28 + v26, v23, v24);
  v29 = (v28 + v27);
  *v29 = sub_265D5773C;
  v29[1] = v17;

  v30 = v45;
  sub_265D58930();
  (*(v25 + 8))(v21, v24);
  v31 = swift_allocObject();
  *(v31 + 16) = v3;
  *(v31 + 24) = v12;
  v32 = v51;
  v33 = v52;
  v34 = v49;
  (*(v51 + 16))(v49, v30, v52);
  v35 = v32;
  v36 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v37 = (v50 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  (*(v35 + 32))(v38 + v36, v34, v33);
  v39 = (v38 + v37);
  *v39 = sub_265D57744;
  v39[1] = v31;

  sub_265D58930();

  (*(v35 + 8))(v30, v33);
  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

uint64_t sub_265D53E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v81 = a7;
  v94 = a6;
  v91 = a3;
  v92 = a4;
  v90 = a2;
  v74 = a1;
  v93 = a8;
  v73 = sub_265D583D0();
  v9 = *(v73 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v73);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E298, &qword_265D5B620);
  v75 = *(v79 - 8);
  v77 = *(v75 + 64);
  v11 = MEMORY[0x28223BE20](v79);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v70 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E288, &qword_265D5B610);
  v80 = *(v85 - 8);
  v83 = *(v80 + 64);
  v14 = MEMORY[0x28223BE20](v85);
  v82 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E278, &qword_265D5B600);
  v88 = *(v17 - 8);
  v89 = v17;
  v87 = *(v88 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v86 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v70 - v20;
  v21 = sub_265D59DE0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v22 + 8))(v25, v21);
  v26 = *(a5 + 152);
  v27 = sub_265D58B20();
  v29 = v28;
  v30 = *(a5 + 144);
  __swift_project_boxed_opaque_existential_1((a5 + 112), *(a5 + 136));
  sub_265D59A60();
  v31 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v73;
  (*(v9 + 16))(v31, v74, v73);
  v33 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v34 = (v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v27;
  *(v35 + 24) = v29;
  (*(v9 + 32))(v35 + v33, v31, v32);
  v36 = v81;
  *(v35 + v34) = v81;
  v37 = v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v37 = a5;
  v72 = a5;
  *(v37 + 8) = v94;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_265D57B5C;
  *(v38 + 24) = v35;
  v39 = v75;
  v40 = v76;
  v41 = v71;
  v42 = v79;
  (*(v75 + 16))(v76, v71, v79);
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v77 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v39 + 32))(v45 + v43, v40, v42);
  v46 = (v45 + v44);
  *v46 = sub_265D57B54;
  v46[1] = v38;
  sub_265D58870();

  v47 = v78;
  sub_265D58930();
  (*(v39 + 8))(v41, v42);
  v48 = swift_allocObject();
  v49 = v91;
  v48[2] = v90;
  v48[3] = v49;
  v48[4] = v92;
  v50 = v80;
  v51 = v82;
  v52 = v47;
  v53 = v85;
  (*(v80 + 16))(v82, v47, v85);
  v54 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v55 = (v83 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  (*(v50 + 32))(v56 + v54, v51, v53);
  v57 = (v56 + v55);
  *v57 = sub_265D57B8C;
  v57[1] = v48;
  sub_265D588C0();
  swift_unknownObjectRetain();
  v58 = v84;
  sub_265D58930();
  (*(v50 + 8))(v52, v53);
  v59 = swift_allocObject();
  v60 = v72;
  *(v59 + 16) = v36;
  *(v59 + 24) = v60;
  *(v59 + 32) = v94;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_265D57B90;
  *(v61 + 24) = v59;
  v63 = v88;
  v62 = v89;
  v64 = v86;
  (*(v88 + 16))(v86, v58, v89);
  v65 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v66 = (v87 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  (*(v63 + 32))(v67 + v65, v64, v62);
  v68 = (v67 + v66);
  *v68 = sub_265D57B58;
  v68[1] = v61;

  sub_265D58930();
  return (*(v63 + 8))(v58, v62);
}

uint64_t sub_265D54670(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E270, &qword_265D5B5F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = *(a1 + 2);

  sub_265D58940();
  v10 = swift_allocObject();
  v15 = *a1;
  *(v10 + 16) = v15;
  *(v10 + 32) = v9;
  (*(v3 + 16))(v6, v8, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v6, v2);
  v13 = (v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_265D57794;
  v13[1] = v10;
  swift_unknownObjectRetain();
  sub_265D58930();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_265D54894@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (*(result + 72) == 1)
  {
    *a2 = *(result + 56);
  }

  else
  {
    sub_265D57690();
    swift_allocError();
    *v2 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_265D54900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_265D583D0();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v9;
  MEMORY[0x28223BE20](v8);
  v67 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E208, &qword_265D5D7D0);
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v68 = v15;
  v69 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v64 - v16;
  v17 = sub_265D59DE0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  sub_265D595F0();
  v64 = "ordinator";
  sub_265D59DC0();
  v27 = *(v18 + 8);
  v26 = v18 + 8;
  v25 = v27;
  v27(v24, v17);
  v73 = a1;
  v28 = sub_265D583C0();
  if (v29)
  {
    v30 = v28;
    sub_265C97624((v2 + 160), &v77);
    __swift_mutable_project_boxed_opaque_existential_1(&v77, v79);
    v76[3] = &type metadata for MachTimestampOffsetCalculator;
    v76[4] = &off_28777FD18;
    type metadata accessor for MachTimestampOffsetExchange();
    v31 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v76, &type metadata for MachTimestampOffsetCalculator);
    *(v31 + 40) = &type metadata for MachTimestampOffsetCalculator;
    *(v31 + 48) = &off_28777FD18;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    *(v31 + 72) = 2;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    __swift_destroy_boxed_opaque_existential_1Tm(&v77);
    v66 = a2;
    v32 = *(v2 + 6);
    __swift_project_boxed_opaque_existential_1(v2 + 2, *(v2 + 5));
    sub_265D59D20();
    sub_265D595F0();
    sub_265D59DC0();
    v33 = v25(v24, v17);
    v34 = *(v2 + 25);
    MEMORY[0x28223BE20](v33);
    *(&v64 - 4) = v3;
    *(&v64 - 24) = v30;
    *(&v64 - 2) = &v77;
    sub_265D58CA0();
    __swift_project_boxed_opaque_existential_1(&v77, v79);
    v64 = v30;
    v35 = v70;
    v36 = v73;
    sub_265D59CF0();
    v38 = v74;
    v37 = v75;
    v39 = v67;
    (*(v74 + 16))(v67, v36, v75);
    v40 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v41 = v40 + v65;
    v42 = (v40 + v65) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v3;
    (*(v38 + 32))(v43 + v40, v39, v37);
    *(v43 + v41) = v64;
    *(v43 + v42 + 8) = v31;
    v45 = v71;
    v44 = v72;
    v46 = v69;
    (*(v71 + 16))(v69, v35, v72);
    v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v48 = (v68 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    (*(v45 + 32))(v49 + v47, v46, v44);
    v50 = (v49 + v48);
    *v50 = sub_265D572A0;
    v50[1] = v43;

    sub_265D58930();
    (*(v45 + 8))(v35, v44);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  }

  else
  {
    v71 = v26;
    v72 = v25;
    v52 = v17;
    sub_265D595F0();
    v53 = v74;
    v54 = v75;
    (*(v74 + 16))(v10, v73, v75);
    v55 = sub_265D59DD0();
    v56 = sub_265D5A070();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v66 = a2;
      v58 = v57;
      *v57 = 134349056;
      v77 = sub_265D583C0();
      v78 = v59 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAF8, &qword_265D5ED98);
      sub_265D57F60();
      v60 = v76[0];
      (*(v53 + 8))(v10, v54);
      *(v58 + 1) = v60;
      _os_log_impl(&dword_265C01000, v55, v56, "Cannot handshake with unknown participant role: %{public}ld", v58, 0xCu);
      MEMORY[0x266770CF0](v58, -1, -1);
    }

    else
    {
      (*(v53 + 8))(v10, v54);
    }

    v72(v22, v52);
    v61 = sub_265D58580();
    sub_265D576E4(&qword_28003E220, MEMORY[0x277D52688]);
    v62 = swift_allocError();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D525E8], v61);
    *(swift_allocObject() + 16) = v62;
    return sub_265D58940();
  }
}

uint64_t sub_265D550C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v175 = a5;
  v176 = a4;
  v137 = a3;
  v167 = a6;
  v170 = sub_265D583D0();
  v9 = *(v170 - 1);
  v139 = *(v9 + 64);
  MEMORY[0x28223BE20](v170);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E298, &qword_265D5B620);
  v140 = *(v144 - 8);
  v142 = *(v140 + 64);
  v12 = MEMORY[0x28223BE20](v144);
  v141 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v131 = &v131 - v14;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E288, &qword_265D5B610);
  v148 = *(v149 - 8);
  v146 = *(v148 + 64);
  v15 = MEMORY[0x28223BE20](v149);
  v145 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v143 = &v131 - v17;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E278, &qword_265D5B600);
  v152 = *(v153 - 8);
  v151 = *(v152 + 64);
  v18 = MEMORY[0x28223BE20](v153);
  v150 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v147 = &v131 - v20;
  v21 = sub_265D59DE0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v177 = *(v156 - 8);
  v154 = *(v177 + 64);
  v26 = MEMORY[0x28223BE20](v156);
  v155 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v171 = &v131 - v29;
  MEMORY[0x28223BE20](v28);
  v172 = &v131 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E270, &qword_265D5B5F8);
  v161 = *(v31 - 8);
  v162 = v31;
  v160 = *(v161 + 64);
  v32 = MEMORY[0x28223BE20](v31);
  v158 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v157 = &v131 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E260, &unk_265D5EDA0);
  v165 = *(v35 - 8);
  v166 = v35;
  v164 = *(v165 + 64);
  v36 = MEMORY[0x28223BE20](v35);
  v163 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v159 = &v131 - v38;
  v39 = a1[1];
  v169 = *a1;
  v173 = a1[2];
  v174 = v39;
  sub_265D595F0();
  sub_265D59DC0();
  (*(v22 + 8))(v25, v21);
  v40 = *(a2 + 152);
  v41 = sub_265D58B20();
  v43 = v42;
  v168 = a2;
  v44 = *(a2 + 144);
  __swift_project_boxed_opaque_existential_1((a2 + 112), *(a2 + 136));
  sub_265D59A60();
  v45 = *(v9 + 16);
  v136 = v9 + 16;
  v138 = v45;
  v132 = v11;
  v46 = v170;
  v45(v11, a3, v170);
  v47 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v133 = *(v9 + 80);
  v139 += 7;
  v48 = (v139 + v47) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  *(v49 + 24) = v43;
  v50 = *(v9 + 32);
  v134 = v9 + 32;
  v135 = v50;
  v50(v49 + v47, v11, v46);
  *(v49 + v48) = v175;
  v51 = v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
  v52 = v168;
  *v51 = v168;
  *(v51 + 8) = v176;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_265D5737C;
  *(v53 + 24) = v49;
  v54 = v140;
  v55 = v141;
  v56 = v131;
  v57 = v144;
  (*(v140 + 16))(v141, v131, v144);
  v58 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v59 = (v142 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  (*(v54 + 32))(v60 + v58, v55, v57);
  v61 = (v60 + v59);
  *v61 = sub_265D1DD8C;
  v61[1] = v53;
  sub_265D58870();

  v62 = v143;
  sub_265D58930();
  (*(v54 + 8))(v56, v57);
  v63 = swift_allocObject();
  v64 = v173;
  v65 = v174;
  *(v63 + 2) = v169;
  *(v63 + 3) = v65;
  *(v63 + 4) = v64;
  v66 = v148;
  v67 = v145;
  v68 = v149;
  (*(v148 + 16))(v145, v62, v149);
  v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v70 = (v146 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (*(v66 + 32))(v71 + v69, v67, v68);
  v72 = (v71 + v70);
  *v72 = sub_265D573BC;
  v72[1] = v63;
  sub_265D588C0();
  swift_unknownObjectRetain();
  v73 = v147;
  sub_265D58930();
  (*(v66 + 8))(v62, v68);
  v74 = swift_allocObject();
  *(v74 + 16) = v175;
  *(v74 + 24) = v52;
  *(v74 + 32) = v176;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_265D573F0;
  *(v75 + 24) = v74;
  v76 = v152;
  v77 = v150;
  v78 = v153;
  (*(v152 + 16))(v150, v73, v153);
  v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v80 = (v151 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v76 + 32))(v81 + v79, v77, v78);
  v82 = (v81 + v80);
  *v82 = sub_265D57410;
  v82[1] = v75;

  v83 = v171;
  sub_265D58930();
  (*(v76 + 8))(v73, v78);
  v84 = v132;
  v85 = v170;
  v138(v132, v137, v170);
  v86 = (v133 + 16) & ~v133;
  v87 = (v139 + v86) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v135(v88 + v86, v84, v85);
  *(v88 + v87) = v52;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_265D57440;
  *(v89 + 24) = v88;
  v90 = v177;
  v91 = *(v177 + 16);
  v153 = v177 + 16;
  v170 = v91;
  v92 = v155;
  v93 = v83;
  v94 = v156;
  (v91)(v155, v93, v156);
  v95 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v152 = v95;
  v96 = (v154 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  v154 = *(v90 + 32);
  v154(v97 + v95, v92, v94);
  v98 = (v97 + v96);
  *v98 = sub_265D0F264;
  v98[1] = v89;

  v99 = v172;
  sub_265D58930();
  v100 = v90 + 8;
  v101 = *(v90 + 8);
  v177 = v100;
  v102 = v171;
  v101(v171, v94);
  v103 = swift_allocObject();
  v104 = v175;
  *(v103 + 16) = sub_265D57510;
  *(v103 + 24) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_265D5752C;
  *(v105 + 24) = v103;
  (v170)(v102, v99, v94);
  v106 = swift_allocObject();
  v154(v106 + v152, v102, v94);
  v107 = (v106 + v96);
  *v107 = sub_265D57560;
  v107[1] = v105;

  v108 = v157;
  sub_265D58930();
  v101(v172, v94);
  v109 = swift_allocObject();
  v110 = v173;
  v111 = v174;
  *(v109 + 2) = v169;
  *(v109 + 3) = v111;
  *(v109 + 4) = v110;
  v112 = v161;
  v113 = v162;
  v114 = v158;
  (*(v161 + 16))(v158, v108, v162);
  v115 = v112;
  v116 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v117 = (v160 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
  v118 = swift_allocObject();
  (*(v115 + 32))(v118 + v116, v114, v113);
  v119 = (v118 + v117);
  *v119 = sub_265D57590;
  v119[1] = v109;
  swift_unknownObjectRetain();
  v120 = v159;
  sub_265D58930();
  (*(v115 + 8))(v108, v113);
  v121 = swift_allocObject();
  *(v121 + 16) = v168;
  *(v121 + 24) = v176;
  v122 = v165;
  v123 = v166;
  v124 = v163;
  (*(v165 + 16))(v163, v120, v166);
  v125 = v122;
  v126 = (*(v122 + 80) + 16) & ~*(v122 + 80);
  v127 = (v164 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
  v128 = swift_allocObject();
  (*(v125 + 32))(v128 + v126, v124, v123);
  v129 = (v128 + v127);
  *v129 = sub_265D575F4;
  v129[1] = v121;

  sub_265D58930();
  return (*(v125 + 8))(v120, v123);
}

id sub_265D56100(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v28 = sub_265D595A0();
  v27 = *(v28 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v28);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265D583D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265D58900();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v19 = a1;
  if (MEMORY[0x26676E9D0](a1) != 4)
  {
    (*(v7 + 16))(v10, v24, v6);
    sub_265D588F0();
    v20 = *(v25 + 56);
    v25 = *(v25 + 64);
    swift_getObjectType();
    (*(v12 + 16))(v16, v18, v11);
    v21 = v26;
    sub_265D59590();
    v22 = v28;
    sub_265D58ED0();
    (*(v27 + 8))(v21, v22);
    (*(v12 + 8))(v18, v11);
  }

  swift_willThrow();
  return a1;
}

uint64_t sub_265D563DC(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    v1 = *(result + 56);
    v2 = *(result + 64);
  }

  else
  {
    sub_265D57690();
    swift_allocError();
    *v3 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_265D56444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v22[0] = a6;
  v22[1] = a5;
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  sub_265D595F0();
  v17 = sub_265D59DD0();
  v18 = sub_265D5A080();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349312;
    *(v19 + 4) = v15;
    *(v19 + 12) = 2050;
    *(v19 + 14) = v16;
    _os_log_impl(&dword_265C01000, v17, v18, "Calculated offset: %{public}f with uncertainty: %{public}f", v19, 0x16u);
    MEMORY[0x266770CF0](v19, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = v15;
  v20[6] = v16;
  swift_unknownObjectRetain();
  return sub_265D58940();
}

uint64_t sub_265D56604(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_265D59DE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D595F0();
  sub_265D59DC0();
  (*(v6 + 8))(v9, v5);
  v10 = *(a2 + 200);
  v13 = a2;
  v14 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6E8, &unk_265D5CB70);
  sub_265D58CA0();
  return sub_265CA4AE8(v15, &qword_28003E6E8, &unk_265D5CB70);
}

uint64_t sub_265D56764(uint64_t a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v25 - v4;
  swift_beginAccess();
  v26 = a1;
  v6 = *(a1 + 208);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v28 = (v2 + 8);
  v27 = v6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_12:
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v18 = v17 | (v14 << 6);
      v19 = *(*(v27 + 48) + v18);
      sub_265C97624(*(v27 + 56) + 40 * v18, v29);
      LOBYTE(v30) = v19;
      sub_265C033C4(v29, &v30 + 8);
      v16 = v14;
LABEL_13:
      v33[1] = v31;
      v33[2] = v32;
      v33[0] = v30;
      if (!v32)
      {
        break;
      }

      sub_265C033C4((v33 + 8), &v30);
      __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
      sub_265D59CD0();
      v20 = v34;
      v21 = sub_265D58960();
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      v21(sub_265D57234, v22);

      (*v28)(v5, v20);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v30);
      v13 = v16;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v23 = sub_265C9581C(MEMORY[0x277D84F90]);
    v24 = *(v26 + 208);
    *(v26 + 208) = v23;
  }

  else
  {
LABEL_5:
    if (v11 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v11;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v10 = 0;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        goto LABEL_13;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_265D56A50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24[3] = a1;
  v24[4] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v12 + 8))(v15, v11);
  v16 = *(v4 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EB10, &qword_265D5EDB0);
  sub_265D58CA0();
  v17 = v25[0];
  v18 = *(v25[0] + 16);
  if (v18)
  {
    v24[2] = a3;
    v26 = MEMORY[0x277D84F90];
    sub_265CF570C(0, v18, 0);
    v19 = v26;
    v24[1] = v17;
    v20 = v17 + 32;
    do
    {
      sub_265C97624(v20, v25);
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      sub_265D59CB0();
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v26 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_265CF570C(v21 > 1, v22 + 1, 1);
        v19 = v26;
      }

      *(v19 + 16) = v22 + 1;
      (*(v7 + 32))(v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22, v10, v6);
      v20 += 40;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v25[0] = v19;
  sub_265CD77F0();
  v23 = sub_265D5A090();
  sub_265D58F10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EB18, &qword_265D5EDB8);
  sub_265D57AD8();
  sub_265D58920();
}

uint64_t sub_265D56DAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 208);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(a1 + 208);

  v10 = 0;
  for (i = MEMORY[0x277D84F90]; v6; result = sub_265C033C4(v18, i + 40 * v16 + 32))
  {
LABEL_10:
    while (1)
    {
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_265C97624(*(v3 + 56) + 40 * (v13 | (v10 << 6)), v18);
      sub_265C033C4(v18, &v19);
      __swift_project_boxed_opaque_existential_1(&v19, v20);
      if (sub_265D59CC0())
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v19);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    sub_265C033C4(&v19, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = i;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_265CF576C(0, *(i + 16) + 1, 1);
      i = v21;
    }

    v16 = *(i + 16);
    v15 = *(i + 24);
    if (v16 >= v15 >> 1)
    {
      sub_265CF576C((v15 > 1), v16 + 1, 1);
      i = v21;
    }

    *(i + 16) = v16 + 1;
  }

LABEL_6:
  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      *a2 = i;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265D56F7C()
{
  v1 = sub_265D59DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_265D595F0();
  sub_265D59DC0();
  (*(v2 + 8))(v5, v1);
  v7 = *(v6 + 200);
  return sub_265D58CA0();
}

uint64_t sub_265D570CC(uint64_t result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_265D57114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_265D58930();
}

void sub_265D5719C(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(v6);
  v4 = v6[0];
  v5 = v6[1];
  v7 = 0;
  a1(v6);

  sub_265CA45E8(v4, v5, 0);
}

uint64_t sub_265D57234(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_265D572A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_265D583D0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + 16);
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v10 = *(v2 + v7);

  return sub_265D550C8(a1, v8, v2 + v6, v10, v9, a2);
}

uint64_t sub_265D573BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_265D529B8();
}

id sub_265D57440(void *a1)
{
  v3 = *(sub_265D583D0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_265D56100(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265D5752C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = v7;
    a1[1] = v8;
  }

  return result;
}

unint64_t sub_265D57690()
{
  result = qword_28003EB00;
  if (!qword_28003EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003EB00);
  }

  return result;
}

uint64_t sub_265D576E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265D577D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 40);
  return swift_unknownObjectRetain();
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_265D583D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 9, v3 | 7);
}

uint64_t sub_265D578F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265D583D0() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 24);
  return sub_265D526CC(*(v1 + 16), *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t objectdestroy_32Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_265D579F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_265D57AD8()
{
  result = qword_28003EB20;
  if (!qword_28003EB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003EB18, &qword_265D5EDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003EB20);
  }

  return result;
}

uint64_t sub_265D57BF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265D57C38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}