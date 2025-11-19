uint64_t sub_1CA2AD3B4(char a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = v4[6];
  v7 = v4[5];
  v8 = v4[4];
  v9 = v4[3];
  v10 = v4[2];
  v11 = *v2;
  OUTLINED_FUNCTION_13();
  *v12 = v11;

  swift_unknownObjectRelease();

  if (v1)
  {
    if (v7)
    {
      v13 = v5[5];
      sub_1CA948AC8();

      (v13)[2](v13, 0, v5);
      _Block_release(v13);
    }

    else
    {
    }
  }

  else if (v7)
  {
    v14 = v5[5];
    v14[2](v14, a1 & 1, 0);
    _Block_release(v14);
  }

  v15 = *(v11 + 8);

  return v15();
}

id _s11WorkflowKit17ToolInvocationBoxCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA2AD690()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1CA2AD9FC;
  v8 = OUTLINED_FUNCTION_20_0();

  return v9(v8);
}

uint64_t sub_1CA2AD76C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2AD81C;
  v6 = OUTLINED_FUNCTION_20_0();

  return v7(v6);
}

uint64_t sub_1CA2AD81C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1CA2AD900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CA2AD9FC;

  return sub_1CA2A99B8(a1, v4, v5, v6);
}

uint64_t sub_1CA2AD9B4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CA2ADA34()
{
  v184[3] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA99D510;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v200 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v201 = v12;
  v13 = v184 - v200;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v197 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v199 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v198 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v184 - v198;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v195 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v194 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v193 = v184;
  MEMORY[0x1EEE9AC00](v30);
  v196 = inited;
  v33 = v184 - v200;
  sub_1CA948D98();
  v34 = [v197 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = v184 - v198;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v35);
  *(v24 + 64) = v195;
  *(v24 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v194;
  v39 = sub_1CA6B3784();
  v40 = v196;
  v196[20] = v39;
  v40[23] = v38;
  v40[24] = @"LocallyProcessesData";
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 200) = 1;
  v40[28] = v41;
  v40[29] = @"Name";
  v42 = @"LocallyProcessesData";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v194 = v184;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v184 - v200;
  sub_1CA948D98();
  v51 = v197;
  v52 = [v197 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v184 - v198;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v53);
  v56 = v195;
  v57 = v196;
  v196[30] = v55;
  v57[33] = v56;
  v57[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1CA97EDF0;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  *(v58 + 48) = 0;
  *(v58 + 72) = MEMORY[0x1E69E6370];
  *(v58 + 80) = 0x614E74757074754FLL;
  *(v58 + 88) = 0xEA0000000000656DLL;
  v59 = @"Output";
  v60 = sub_1CA94C438();
  v193 = v61;
  v62 = sub_1CA94C438();
  v64 = v63;
  v194 = v184;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v184 - v200;
  sub_1CA948D98();
  v66 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v184 - v198;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v60, v193, v62, v64, 0, 0, v65, v67);
  *(v58 + 120) = v56;
  *(v58 + 96) = v69;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v196;
  v196[35] = v71;
  v73[38] = v72;
  v73[39] = @"Parameters";
  v184[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v193 = swift_allocObject();
  *(v193 + 1) = xmmword_1CA981470;
  v192 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_initStackObject();
  v190 = xmmword_1CA981350;
  *(v74 + 16) = xmmword_1CA981350;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000015;
  *(v74 + 48) = 0x80000001CA99D5E0;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"Key";
  *(v74 + 80) = 0x656D6F484657;
  *(v74 + 88) = 0xE600000000000000;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"DisallowedVariableTypes";
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v194 = v75;
  *(v74 + 120) = &unk_1F49F2198;
  *(v74 + 144) = v75;
  *(v74 + 152) = @"Label";
  v76 = @"Class";
  v77 = @"Key";
  v78 = @"DisallowedVariableTypes";
  v79 = @"Label";
  v80 = v76;
  v81 = v77;
  v82 = v78;
  v83 = v79;
  v187 = v80;
  v189 = v81;
  v186 = v82;
  v188 = v83;
  v84 = @"Parameters";
  v85 = sub_1CA94C438();
  v87 = v86;
  v88 = sub_1CA94C438();
  v90 = v89;
  v185 = v184;
  MEMORY[0x1EEE9AC00](v88);
  v91 = v184 - v200;
  sub_1CA948D98();
  v92 = [v197 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = v184 - v198;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v85, v87, v88, v90, 0, 0, v91, v93);
  *(v74 + 184) = v195;
  *(v74 + 160) = v95;
  _s3__C3KeyVMa_0(0);
  v185 = v96;
  v184[4] = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v193[4] = sub_1CA2F864C();
  v97 = swift_allocObject();
  *(v97 + 16) = v190;
  *(v97 + 32) = v187;
  *(v97 + 40) = 0xD00000000000001CLL;
  *(v97 + 48) = 0x80000001CA99D610;
  v98 = MEMORY[0x1E69E6158];
  v99 = v186;
  *(v97 + 64) = MEMORY[0x1E69E6158];
  *(v97 + 72) = v99;
  *(v97 + 80) = &unk_1F49F21D8;
  v100 = v189;
  *(v97 + 104) = v194;
  *(v97 + 112) = v100;
  *(v97 + 120) = 0x767265534D484657;
  *(v97 + 128) = 0xEB00000000656369;
  v101 = v188;
  *(v97 + 144) = v98;
  *(v97 + 152) = v101;
  v102 = sub_1CA94C438();
  v184[0] = v103;
  v104 = sub_1CA94C438();
  v106 = v105;
  v184[1] = v184;
  MEMORY[0x1EEE9AC00](v104);
  v107 = v184 - v200;
  sub_1CA948D98();
  v108 = [v197 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = v198;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v102, v184[0], v104, v106, 0, 0, v107, v184 - v109);
  *(v97 + 184) = v195;
  *(v97 + 160) = v111;
  sub_1CA94C1E8();
  v193[5] = sub_1CA2F864C();
  v112 = swift_allocObject();
  *(v112 + 16) = v190;
  *(v112 + 32) = v187;
  *(v112 + 40) = 0xD000000000000023;
  *(v112 + 48) = 0x80000001CA99D650;
  v113 = MEMORY[0x1E69E6158];
  v114 = v186;
  *(v112 + 64) = MEMORY[0x1E69E6158];
  *(v112 + 72) = v114;
  *(v112 + 80) = &unk_1F49F2208;
  v115 = v189;
  *(v112 + 104) = v194;
  *(v112 + 112) = v115;
  *(v112 + 120) = 0xD000000000000012;
  *(v112 + 128) = 0x80000001CA99D680;
  v116 = v188;
  *(v112 + 144) = v113;
  *(v112 + 152) = v116;
  v117 = sub_1CA94C438();
  *&v190 = v118;
  v119 = sub_1CA94C438();
  v121 = v120;
  v191 = v184;
  MEMORY[0x1EEE9AC00](v119);
  v122 = v184 - v200;
  sub_1CA948D98();
  v123 = [v197 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v117, v190, v119, v121, 0, 0, v122, v184 - v109);
  *(v112 + 184) = v195;
  *(v112 + 160) = v125;
  sub_1CA94C1E8();
  v126 = sub_1CA2F864C();
  v127 = v193;
  v193[6] = v126;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v129 = v196;
  v196[40] = v127;
  v129[43] = v128;
  v129[44] = @"ParameterSummary";
  v193 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_1CA981570;
  v192 = "ic)";
  v130 = @"ParameterSummary";
  v131 = sub_1CA94C438();
  *&v190 = v132;
  v133 = sub_1CA94C438();
  v135 = v134;
  v191 = v184;
  MEMORY[0x1EEE9AC00](v133);
  v136 = v184 - v200;
  sub_1CA948D98();
  v137 = [v197 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = v184 - v198;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v131, v190, v133, v135, 0, 0, v136, v138);
  v141 = objc_allocWithZone(WFActionParameterSummaryValue);
  v142 = sub_1CA65DD78(0xD000000000000012, v192 | 0x8000000000000000, v140);
  *(v195 + 32) = v142;
  v192 = "Get ${WFHMService} in ${WFHome}";
  v143 = sub_1CA94C438();
  v189 = v144;
  *&v190 = v143;
  v145 = sub_1CA94C438();
  v147 = v146;
  v191 = v184;
  MEMORY[0x1EEE9AC00](v145);
  v148 = v200;
  sub_1CA948D98();
  v149 = v197;
  v150 = [v197 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = v198;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v190, v189, v145, v147, 0, 0, v184 - v148, v184 - v151);
  v154 = objc_allocWithZone(WFActionParameterSummaryValue);
  v155 = sub_1CA65DD78(0xD000000000000025, v192 | 0x8000000000000000, v153);
  *(v195 + 40) = v155;
  v191 = sub_1CA94C438();
  *&v190 = v156;
  v157 = sub_1CA94C438();
  v159 = v158;
  v192 = v184;
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948D98();
  v160 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v191, v190, v157, v159, 0, 0, v184 - v148, v184 - v151);
  v163 = objc_allocWithZone(WFActionParameterSummaryValue);
  v164 = sub_1CA65DD78(0x767265534D484657, 0xEB00000000656369, v162);
  v165 = v195;
  *(v195 + 48) = v164;
  v192 = "Get ${WFHMService}";
  v166 = sub_1CA94C438();
  v168 = v167;
  v169 = sub_1CA94C438();
  v171 = v170;
  v191 = v184;
  MEMORY[0x1EEE9AC00](v169);
  v172 = v184 - v200;
  sub_1CA948D98();
  v173 = [v197 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  v174 = v184 - v198;
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v176 = sub_1CA2F9F14(v166, v168, v169, v171, 0, 0, v172, v174);
  v177 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v165 + 56) = sub_1CA65DD78(0xD00000000000001ELL, v192 | 0x8000000000000000, v176);
  v178 = v193;
  v179 = sub_1CA65AF90();
  v180 = v196;
  v196[45] = v179;
  v180[48] = v178;
  v180[49] = @"RequiredResources";
  v180[50] = &unk_1F49F2238;
  v180[53] = v194;
  v180[54] = @"ResidentCompatible";
  v180[58] = MEMORY[0x1E69E6370];
  *(v180 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v181 = @"RequiredResources";
  v182 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2AEF10()
{
  v192 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x7041656469484657;
  *(inited + 48) = 0xEF6E6F6974634170;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v208 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v209 = v12;
  v13 = &v182 - v208;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v206 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v207 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v205 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v182 - v205;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v204 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v202 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v200 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v201 = &v182;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v182 - v208;
  sub_1CA948D98();
  v31 = [v206 bundleURL];
  v203 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v182 - v205;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v204;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v202;
  v37 = sub_1CA6B3784();
  v38 = v203;
  v203[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 0x6F6769646E49;
  v38[21] = 0xE600000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0x687361642E707061;
  v38[26] = 0xEA00000000006465;
  v38[28] = v39;
  v38[29] = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v45 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v182 - v208;
  sub_1CA948D98();
  v50 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v182 - v205;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  v54 = v203;
  v203[30] = v53;
  v54[33] = v204;
  v54[34] = @"Parameters";
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_1CA981470;
  v201 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1CA981370;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000016;
  *(v55 + 48) = 0x80000001CA99C4A0;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 64) = MEMORY[0x1E69E6158];
  *(v55 + 72) = @"DefaultValue";
  *(v55 + 80) = 7368769;
  *(v55 + 88) = 0xE300000000000000;
  *(v55 + 104) = v56;
  *(v55 + 112) = @"Items";
  v196 = swift_allocObject();
  v191 = xmmword_1CA981360;
  *(v196 + 1) = xmmword_1CA981360;
  v197 = @"Class";
  v57 = @"Parameters";
  v58 = @"DefaultValue";
  v59 = @"Items";
  v60 = sub_1CA94C438();
  v193 = v61;
  v194 = v60;
  v62 = sub_1CA94C438();
  *&v190 = v63;
  v195 = &v182;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v182 - v208;
  sub_1CA948D98();
  v65 = v206;
  v66 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v205;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v194, v193, v62, v190, 0, 0, v64, &v182 - v67);
  v70 = v196;
  v196[4] = v69;
  v71 = sub_1CA94C438();
  v193 = v72;
  v194 = v71;
  *&v190 = sub_1CA94C438();
  v74 = v73;
  v195 = &v182;
  MEMORY[0x1EEE9AC00](v190);
  v75 = &v182 - v208;
  sub_1CA948D98();
  v76 = [v65 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70[5] = sub_1CA2F9F14(v194, v193, v190, v74, 0, 0, v75, &v182 - v67);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v55 + 120) = v70;
  *(v55 + 144) = v78;
  *(v55 + 152) = @"Key";
  strcpy((v55 + 160), "WFHideAppMode");
  *(v55 + 174) = -4864;
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Label";
  v79 = @"Key";
  v80 = @"Label";
  v81 = v79;
  v82 = v80;
  v193 = v81;
  v194 = v82;
  v83 = sub_1CA94C438();
  v85 = v84;
  v86 = sub_1CA94C438();
  v88 = v87;
  v196 = &v182;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v182 - v208;
  sub_1CA948D98();
  v90 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v182 - v205;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v83, v85, v86, v88, 0, 0, v89, v91);
  *(v55 + 224) = v204;
  *(v55 + 200) = v93;
  _s3__C3KeyVMa_0(0);
  v196 = v94;
  v195 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v202 + 32) = sub_1CA2F864C();
  v95 = swift_initStackObject();
  v190 = xmmword_1CA981400;
  *(v95 + 16) = xmmword_1CA981400;
  *(v95 + 32) = @"AllowsMultipleValues";
  v96 = MEMORY[0x1E69E6370];
  *(v95 + 40) = 0;
  *(v95 + 64) = v96;
  *(v95 + 72) = @"AppSearchType";
  *(v95 + 80) = 0x7070416E65704FLL;
  *(v95 + 88) = 0xE700000000000000;
  v97 = MEMORY[0x1E69E6158];
  v98 = v197;
  *(v95 + 104) = MEMORY[0x1E69E6158];
  *(v95 + 112) = v98;
  v189 = 0x80000001CA99B070;
  *(v95 + 120) = 0xD000000000000014;
  *(v95 + 128) = 0x80000001CA99B070;
  v99 = v193;
  *(v95 + 144) = v97;
  *(v95 + 152) = v99;
  *(v95 + 160) = 0x7070414657;
  *(v95 + 168) = 0xE500000000000000;
  v100 = v194;
  *(v95 + 184) = v97;
  *(v95 + 192) = v100;
  v101 = @"AllowsMultipleValues";
  v102 = @"AppSearchType";
  v187 = v101;
  v186 = v102;
  v103 = sub_1CA94C438();
  v184 = v104;
  v185 = v103;
  v105 = sub_1CA94C438();
  v107 = v106;
  v188 = &v182;
  MEMORY[0x1EEE9AC00](v105);
  v108 = v208;
  sub_1CA948D98();
  v109 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = v205;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 200) = sub_1CA2F9F14(v185, v184, v105, v107, 0, 0, &v182 - v108, &v182 - v110);
  v112 = v204;
  *(v95 + 224) = v204;
  *(v95 + 232) = @"Placeholder";
  v188 = @"Placeholder";
  v113 = sub_1CA94C438();
  v183 = v114;
  v184 = v113;
  v115 = sub_1CA94C438();
  v182 = v116;
  v185 = &v182;
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v182 - v108;
  sub_1CA948D98();
  v118 = v206;
  v119 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 240) = sub_1CA2F9F14(v184, v183, v115, v182, 0, 0, v117, &v182 - v110);
  *(v95 + 264) = v112;
  *(v95 + 272) = @"RequiredResources";
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v121 = swift_allocObject();
  *(v121 + 16) = v200;
  v184 = @"RequiredResources";
  v122 = MEMORY[0x1E69E6158];
  *(v121 + 32) = sub_1CA94C1E8();
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v95 + 304) = v183;
  *(v95 + 280) = v121;
  sub_1CA94C1E8();
  *(v202 + 40) = sub_1CA2F864C();
  v123 = swift_allocObject();
  *(v123 + 16) = v190;
  *(v123 + 32) = v187;
  *(v123 + 40) = 1;
  v124 = v186;
  *(v123 + 64) = MEMORY[0x1E69E6370];
  *(v123 + 72) = v124;
  *(v123 + 80) = 0x7070416E65704FLL;
  *(v123 + 88) = 0xE700000000000000;
  v125 = v197;
  *(v123 + 104) = v122;
  *(v123 + 112) = v125;
  *(v123 + 120) = 0xD000000000000014;
  *(v123 + 128) = v189;
  v126 = v193;
  *(v123 + 144) = v122;
  *(v123 + 152) = v126;
  strcpy((v123 + 160), "WFAppsExcept");
  *(v123 + 173) = 0;
  *(v123 + 174) = -5120;
  v127 = v194;
  *(v123 + 184) = v122;
  *(v123 + 192) = v127;
  v197 = sub_1CA94C438();
  v194 = v128;
  v129 = sub_1CA94C438();
  v193 = v130;
  v198 = &v182;
  MEMORY[0x1EEE9AC00](v129);
  v131 = v208;
  sub_1CA948D98();
  v132 = [v118 bundleURL];
  *&v190 = &v182;
  MEMORY[0x1EEE9AC00](v132);
  v133 = v205;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 200) = sub_1CA2F9F14(v197, v194, v129, v193, 0, 0, &v182 - v131, &v182 - v133);
  v135 = v188;
  *(v123 + 224) = v204;
  *(v123 + 232) = v135;
  v197 = sub_1CA94C438();
  v194 = v136;
  v137 = sub_1CA94C438();
  v193 = v138;
  v198 = &v182;
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948D98();
  v139 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 240) = sub_1CA2F9F14(v197, v194, v137, v193, 0, 0, &v182 - v131, &v182 - v133);
  v141 = v184;
  *(v123 + 264) = v204;
  *(v123 + 272) = v141;
  v142 = swift_allocObject();
  *(v142 + 16) = v200;
  *(v142 + 32) = sub_1CA94C1E8();
  *(v123 + 304) = v183;
  *(v123 + 280) = v142;
  sub_1CA94C1E8();
  v143 = sub_1CA2F864C();
  v144 = v202;
  *(v202 + 48) = v143;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v146 = v203;
  v203[35] = v144;
  v146[38] = v145;
  v146[39] = @"ParameterSummary";
  v202 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v204 = swift_allocObject();
  *(v204 + 16) = v191;
  v201 = "Choose (WFAppsExcept)";
  v147 = @"ParameterSummary";
  v148 = sub_1CA94C438();
  v150 = v149;
  v151 = sub_1CA94C438();
  v153 = v152;
  *&v200 = &v182;
  MEMORY[0x1EEE9AC00](v151);
  v154 = &v182 - v208;
  sub_1CA948D98();
  v155 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = &v182 - v205;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v158 = sub_1CA2F9F14(v148, v150, v151, v153, 0, 0, v154, v156);
  v159 = objc_allocWithZone(WFActionParameterSummaryValue);
  v160 = sub_1CA65DD78(0xD000000000000013, v201 | 0x8000000000000000, v158);
  *(v204 + 32) = v160;
  v201 = "Hide ${WFHideAppMode} ${WFApp}";
  v161 = sub_1CA94C438();
  v163 = v162;
  v164 = sub_1CA94C438();
  v166 = v165;
  *&v200 = &v182;
  MEMORY[0x1EEE9AC00](v164);
  v167 = &v182 - v208;
  sub_1CA948D98();
  v168 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  v169 = &v182 - v205;
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v171 = sub_1CA2F9F14(v161, v163, v164, v166, 0, 0, v167, v169);
  v172 = objc_allocWithZone(WFActionParameterSummaryValue);
  v173 = sub_1CA65DD78(0xD00000000000001ALL, v201 | 0x8000000000000000, v171);
  *(v204 + 40) = v173;
  v174 = v202;
  v175 = sub_1CA65AF90();
  v176 = v203;
  v203[40] = v175;
  v176[43] = v174;
  v176[44] = @"RequiredResources";
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_1CA9813B0;
  v210 = 2;
  v211 = 0;
  v178 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v179 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v210);
  *(v177 + 32) = v180;
  v176[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v176[45] = v177;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFAlarmState.displayName.getter(uint64_t a1)
{
  v3 = sub_1CA949F78();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  if (v9)
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_5_0();
    if (qword_1EDB9F5F0 == -1)
    {
LABEL_9:
      OUTLINED_FUNCTION_3_3();
      v10 = sub_1CA94C368();
      OUTLINED_FUNCTION_3_3();
      sub_1CA94C368();
      v11 = OUTLINED_FUNCTION_14_2();
      v12 = OUTLINED_FUNCTION_2(v11, sel_localizedStringForKey_value_table_);

      v13 = sub_1CA94C3A8();
      return v13;
    }

LABEL_14:
    OUTLINED_FUNCTION_0_3();
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_5_0();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (!a1)
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_5_0();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v14 = *MEMORY[0x1E69E1130];
  sub_1CA949C58();
  v15 = sub_1CA949F68();
  v16 = sub_1CA94CC18();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = a1;
    OUTLINED_FUNCTION_7_5(&dword_1CA256000, v18, v19, "Attempted to get WFAlarmState display name for unhandled case: %ld");
    MEMORY[0x1CCAA4BF0](v17, -1, -1);
  }

  v20 = *(v6 + 8);
  v21 = OUTLINED_FUNCTION_3_3();
  v22(v21);
  return 0;
}

uint64_t WFAlarmType.displayName.getter(uint64_t a1)
{
  v3 = sub_1CA949F78();
  v4 = OUTLINED_FUNCTION_5_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_4();
  if (v9)
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_5_0();
    if (qword_1EDB9F5F0 == -1)
    {
LABEL_9:
      OUTLINED_FUNCTION_3_3();
      v10 = sub_1CA94C368();
      OUTLINED_FUNCTION_3_3();
      sub_1CA94C368();
      v11 = OUTLINED_FUNCTION_14_2();
      v12 = OUTLINED_FUNCTION_2(v11, sel_localizedStringForKey_value_table_);

      v13 = sub_1CA94C3A8();
      return v13;
    }

LABEL_14:
    OUTLINED_FUNCTION_0_3();
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_5_0();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (!a1)
  {
    sub_1CA94C438();
    OUTLINED_FUNCTION_5_0();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v14 = *MEMORY[0x1E69E1130];
  sub_1CA949C58();
  v15 = sub_1CA949F68();
  v16 = sub_1CA94CC18();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = a1;
    OUTLINED_FUNCTION_7_5(&dword_1CA256000, v18, v19, "Attempted to get WFAlarmType display name for unhandled case: %ld");
    MEMORY[0x1CCAA4BF0](v17, -1, -1);
  }

  v20 = *(v6 + 8);
  v21 = OUTLINED_FUNCTION_3_3();
  v22(v21);
  return 0;
}

unint64_t sub_1CA2B0A90()
{
  result = qword_1EC4438B8;
  if (!qword_1EC4438B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4438C0, &qword_1CA9816A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4438B8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_1CA2B0B94()
{
  v116 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA99DA40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v122 = v12;
  v123 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v109 - v123;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v121 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v119 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v120 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v109 - v120;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v118 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v21 = swift_initStackObject();
  v117 = xmmword_1CA981350;
  *(v21 + 16) = xmmword_1CA981350;
  v22 = MEMORY[0x1E69E6370];
  *(v21 + 32) = 0xD00000000000001DLL;
  *(v21 + 40) = 0x80000001CA99DA80;
  *(v21 + 48) = 1;
  *(v21 + 72) = v22;
  *(v21 + 80) = 0xD000000000000010;
  *(v21 + 88) = 0x80000001CA993290;
  *(v21 + 96) = 0xD000000000000019;
  *(v21 + 104) = 0x80000001CA99DAA0;
  v23 = MEMORY[0x1E69E6158];
  *(v21 + 120) = MEMORY[0x1E69E6158];
  *(v21 + 128) = 1701667150;
  *(v21 + 136) = 0xE400000000000000;
  *(v21 + 144) = 0x64616552646F6F47;
  *(v21 + 152) = 0xEA00000000007265;
  *(v21 + 168) = v23;
  strcpy((v21 + 176), "TeamIdentifier");
  *(v21 + 216) = v23;
  *(v21 + 191) = -18;
  *(v21 + 192) = 0x34365057574A464ALL;
  *(v21 + 200) = 0xEA00000000004451;
  v24 = @"AppDefinition";
  v25 = sub_1CA94C1E8();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v114 = v26;
  *(inited + 120) = v25;
  *(inited + 144) = v26;
  *(inited + 152) = @"Description";
  v113 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1CA981310;
  *(v27 + 32) = @"DescriptionSummary";
  v28 = @"Description";
  v29 = @"DescriptionSummary";
  v30 = sub_1CA94C438();
  v111 = v31;
  v32 = sub_1CA94C438();
  v34 = v33;
  v112 = &v109;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v109 - v123;
  sub_1CA948D98();
  v36 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v109 - v120;
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39 = sub_1CA2F9F14(v30, v111, v32, v34, 0, 0, v35, v37);
  *(v27 + 64) = v118;
  *(v27 + 40) = v39;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v40 = v113;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v40;
  *(inited + 192) = @"Input";
  v41 = swift_initStackObject();
  *(v41 + 16) = v117;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  *(v41 + 48) = 0;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 72) = MEMORY[0x1E69E6370];
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x7475706E494657;
  *(v41 + 104) = 0xE700000000000000;
  *(v41 + 120) = MEMORY[0x1E69E6158];
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  v43 = v42;
  *(v41 + 184) = 0xE500000000000000;
  *(v41 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 192) = &unk_1F49F23A0;
  v44 = @"Input";
  *(inited + 200) = sub_1CA94C1E8();
  *(inited + 224) = v114;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v43;
  *(inited + 272) = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438();
  v49 = v48;
  v50 = sub_1CA94C438();
  v52 = v51;
  v115 = &v109;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v109 - v123;
  sub_1CA948D98();
  v54 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v109 - v120;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  *(inited + 304) = v118;
  *(inited + 312) = @"Output";
  v57 = @"Output";
  v58 = MEMORY[0x1E69E6158];
  v59 = sub_1CA94C1E8();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 320) = v59;
  *(inited + 344) = v60;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 1) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_allocObject();
  *(v61 + 16) = v117;
  *(v61 + 32) = @"Class";
  *(v61 + 40) = 0xD000000000000019;
  *(v61 + 48) = 0x80000001CA99B030;
  *(v61 + 64) = v58;
  *(v61 + 72) = @"Key";
  *(v61 + 80) = 0x7475706E494657;
  *(v61 + 88) = 0xE700000000000000;
  *(v61 + 104) = v58;
  *(v61 + 112) = @"Label";
  v62 = @"Parameters";
  v63 = @"Class";
  v64 = @"Key";
  v65 = @"Label";
  v66 = sub_1CA94C438();
  v111 = v67;
  v112 = v66;
  v68 = sub_1CA94C438();
  v110 = v69;
  v113 = &v109;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v109 - v123;
  sub_1CA948D98();
  v71 = v121;
  v72 = [v121 bundleURL];
  v109 = &v109;
  MEMORY[0x1EEE9AC00](v72);
  *&v117 = inited;
  v73 = v120;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 120) = sub_1CA2F9F14(v112, v111, v68, v110, 0, 0, v70, &v109 - v73);
  v75 = v118;
  *(v61 + 144) = v118;
  *(v61 + 152) = @"Placeholder";
  v76 = @"Placeholder";
  v77 = sub_1CA94C438();
  v111 = v78;
  v112 = v77;
  v110 = sub_1CA94C438();
  v80 = v79;
  v113 = &v109;
  MEMORY[0x1EEE9AC00](v110);
  v81 = &v109 - v123;
  sub_1CA948D98();
  v82 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v112, v111, v110, v80, 0, 0, v81, &v109 - v73);
  *(v61 + 184) = v75;
  *(v61 + 160) = v84;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v85 = sub_1CA2F864C();
  v86 = v115;
  v115[4] = v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v88 = v117;
  *(v117 + 360) = v86;
  v88[48] = v87;
  v88[49] = @"ParameterSummary";
  v89 = @"ParameterSummary";
  v90 = sub_1CA94C438();
  v92 = v91;
  v93 = sub_1CA94C438();
  v95 = v94;
  v118 = &v109;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v109 - v123;
  sub_1CA948D98();
  v97 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v109 - v120;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v90, v92, v93, v95, 0, 0, v96, v98);
  v101 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v102 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v88[50] = v101;
  v88[53] = v102;
  v88[54] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_1CA97EDF0;
  *(v103 + 56) = MEMORY[0x1E69E6158];
  *(v103 + 32) = 0xD000000000000011;
  *(v103 + 40) = 0x80000001CA993BE0;
  v124 = 2;
  v125 = 1;
  v104 = type metadata accessor for WFDeviceIdiomResource();
  v105 = objc_allocWithZone(v104);
  v106 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v124);
  *(v103 + 88) = v104;
  *(v103 + 64) = v107;
  v88[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v88[55] = v103;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2B1A68()
{
  v36 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = MEMORY[0x1E69E6158];
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 184) = v23;
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x746F6F7465756C62;
  *(inited + 208) = 0xE900000000000068;
  *(inited + 224) = v23;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v26 = @"IconColor";
  v27 = @"IconSymbol";
  v28 = @"InputPassthrough";
  v29 = sub_1CA94C368();
  *(inited + 304) = v23;
  *(inited + 272) = v29;
  *(inited + 280) = 0xD000000000000054;
  *(inited + 288) = 0x80000001CA99DBE0;
  *(inited + 312) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v30 = swift_initStackObject();
  v35 = xmmword_1CA981310;
  *(v30 + 16) = xmmword_1CA981310;
  *(v30 + 32) = 0x6574617473;
  *(v30 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v31 = swift_initStackObject();
  *(v31 + 16) = v35;
  *(v31 + 64) = v23;
  *(v31 + 32) = @"Key";
  *(v31 + 40) = 0x65756C61566E4FLL;
  *(v31 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v32 = @"Key";
  sub_1CA94C1E8();
  *(v30 + 48) = sub_1CA2F864C();
  v33 = sub_1CA94C1E8();
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 320) = v33;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2B200C()
{
  v126 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFSocialAction");
  *(inited + 55) = -18;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v134 = v12;
  v135 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v117 - v135;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v133 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v131 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v132 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v117 - v132;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v130 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v21 = swift_initStackObject();
  v123 = xmmword_1CA981350;
  *(v21 + 16) = xmmword_1CA981350;
  v22 = MEMORY[0x1E69E6370];
  *(v21 + 32) = 0xD00000000000001DLL;
  *(v21 + 40) = 0x80000001CA99DA80;
  *(v21 + 48) = 1;
  *(v21 + 72) = v22;
  *(v21 + 80) = 0xD000000000000010;
  v124 = 0xD000000000000014;
  v125 = 0x80000001CA993290;
  *(v21 + 88) = 0x80000001CA993290;
  *(v21 + 96) = 0xD000000000000014;
  *(v21 + 104) = 0x80000001CA99DC80;
  v23 = MEMORY[0x1E69E6158];
  *(v21 + 120) = MEMORY[0x1E69E6158];
  *(v21 + 128) = 1701667150;
  *(v21 + 136) = 0xE400000000000000;
  *(v21 + 144) = 0x72657474697754;
  *(v21 + 152) = 0xE700000000000000;
  *(v21 + 168) = v23;
  strcpy((v21 + 176), "TeamIdentifier");
  *(v21 + 216) = v23;
  *(v21 + 191) = -18;
  *(v21 + 192) = 0x3359335A4336364ELL;
  *(v21 + 200) = 0xEA00000000005842;
  v24 = @"AppDefinition";
  v25 = sub_1CA94C1E8();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v127 = v26;
  *(inited + 120) = v25;
  *(inited + 144) = v26;
  *(inited + 152) = @"Description";
  v122 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1CA97EDF0;
  *(v27 + 32) = @"DescriptionInput";
  v28 = @"Description";
  v29 = @"DescriptionInput";
  v30 = sub_1CA94C438();
  v119 = v31;
  v120 = v30;
  v32 = sub_1CA94C438();
  v118 = v33;
  *&v121 = &v117;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v117 - v135;
  sub_1CA948D98();
  v35 = v133;
  v36 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v36);
  v129 = inited;
  v37 = v132;
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v27 + 40) = sub_1CA2F9F14(v120, v119, v32, v118, 0, 0, v34, &v117 - v37);
  v39 = v130;
  *(v27 + 64) = v130;
  *(v27 + 72) = @"DescriptionSummary";
  v40 = @"DescriptionSummary";
  v41 = sub_1CA94C438();
  v119 = v42;
  v120 = v41;
  v43 = sub_1CA94C438();
  v45 = v44;
  *&v121 = &v117;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v117 - v135;
  sub_1CA948D98();
  v47 = [v35 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v49 = sub_1CA2F9F14(v120, v119, v43, v45, 0, 0, v46, &v117 - v37);
  *(v27 + 104) = v39;
  *(v27 + 80) = v49;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v50 = v122;
  v51 = sub_1CA6B3784();
  v52 = v129;
  v129[20] = v51;
  v52[23] = v50;
  v52[24] = @"Input";
  v53 = swift_allocObject();
  *(v53 + 16) = v123;
  *(v53 + 32) = 0x656C7069746C754DLL;
  *(v53 + 40) = 0xE800000000000000;
  *(v53 + 48) = 1;
  v54 = MEMORY[0x1E69E6370];
  *(v53 + 72) = MEMORY[0x1E69E6370];
  strcpy((v53 + 80), "ParameterKey");
  *(v53 + 93) = 0;
  *(v53 + 94) = -5120;
  *(v53 + 96) = 0x706E497465657754;
  *(v53 + 104) = 0xEA00000000007475;
  *(v53 + 120) = MEMORY[0x1E69E6158];
  *(v53 + 128) = 0x6465726975716552;
  *(v53 + 136) = 0xE800000000000000;
  *(v53 + 144) = 1;
  *(v53 + 168) = v54;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 184) = 0xE500000000000000;
  *&v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 216) = v123;
  *(v53 + 192) = &unk_1F49F2450;
  v55 = @"Input";
  v52[25] = sub_1CA94C1E8();
  v52[28] = v127;
  v52[29] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438();
  v59 = v58;
  v60 = sub_1CA94C438();
  v62 = v61;
  v122 = &v117;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v117 - v135;
  sub_1CA948D98();
  v64 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v117 - v132;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v57, v59, v60, v62, 0, 0, v63, v65);
  v69 = v129;
  v68 = v130;
  v129[30] = v67;
  v69[33] = v68;
  v69[34] = @"Output";
  v70 = @"Output";
  v71 = MEMORY[0x1E69E6158];
  v72 = sub_1CA94C1E8();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v122 = v73;
  v69[35] = v72;
  v69[38] = v73;
  v69[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_1CA9813B0;
  v119 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  v121 = xmmword_1CA981370;
  *(v74 + 16) = xmmword_1CA981370;
  v75 = v124;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = v75;
  *(v74 + 48) = 0x80000001CA99B500;
  *(v74 + 64) = v71;
  *(v74 + 72) = @"Key";
  *(v74 + 80) = 0x706E497465657754;
  *(v74 + 88) = 0xEA00000000007475;
  *(v74 + 104) = v71;
  *(v74 + 112) = @"Label";
  v76 = @"Parameters";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = sub_1CA94C438();
  v118 = v81;
  v82 = sub_1CA94C438();
  v84 = v83;
  v124 = &v117;
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v117 - v135;
  sub_1CA948D98();
  v86 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v117 - v132;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v80, v118, v82, v84, 0, 0, v85, v87);
  *(v74 + 144) = v130;
  *(v74 + 152) = @"Multiline";
  v89 = MEMORY[0x1E69E6370];
  *(v74 + 184) = MEMORY[0x1E69E6370];
  *(v74 + 160) = 1;
  v90 = @"Multiline";
  *(v74 + 192) = sub_1CA94C368();
  *(v74 + 224) = v89;
  *(v74 + 200) = 1;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v91 = sub_1CA2F864C();
  v92 = v120;
  *(v120 + 32) = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v94 = v129;
  v129[40] = v92;
  v94[43] = v93;
  v94[44] = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438();
  v98 = v97;
  v99 = sub_1CA94C438();
  v101 = v100;
  v130 = &v117;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v117 - v135;
  sub_1CA948D98();
  v103 = [v133 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v117 - v132;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  v107 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v108 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v94[45] = v107;
  v94[48] = v108;
  v94[49] = @"RequiredResources";
  v109 = v123;
  v94[53] = v123;
  v94[50] = &unk_1F49F24E0;
  v110 = @"RequiredResources";
  v94[54] = sub_1CA94C368();
  v111 = swift_allocObject();
  *(v111 + 16) = v121;
  v112 = v125;
  *(v111 + 32) = 0xD000000000000010;
  *(v111 + 40) = v112;
  *(v111 + 48) = 0xD000000000000023;
  *(v111 + 56) = 0x80000001CA99DD70;
  v113 = MEMORY[0x1E69E6158];
  *(v111 + 72) = MEMORY[0x1E69E6158];
  *(v111 + 80) = 0xD000000000000012;
  *(v111 + 88) = 0x80000001CA99DDA0;
  *(v111 + 96) = &unk_1F49F2510;
  *(v111 + 120) = v109;
  *(v111 + 128) = 0x7079547475706E49;
  *(v111 + 136) = 0xE900000000000065;
  strcpy((v111 + 144), "ContentItems");
  *(v111 + 157) = 0;
  *(v111 + 158) = -5120;
  *(v111 + 168) = v113;
  *(v111 + 176) = 0x5465636976726553;
  *(v111 + 184) = 0xEB00000000657079;
  *(v111 + 192) = 0xD000000000000018;
  *(v111 + 200) = 0x80000001CA99DDC0;
  *(v111 + 216) = v113;
  *(v111 + 224) = 0xD000000000000010;
  *(v111 + 264) = v113;
  *(v111 + 232) = 0x80000001CA99DDE0;
  *(v111 + 240) = 0xD000000000000018;
  *(v111 + 248) = 0x80000001CA99DE00;
  v94[55] = sub_1CA94C1E8();
  v94[58] = v127;
  v94[59] = @"UserInterfaceClasses";
  v114 = @"UserInterfaceClasses";
  v115 = sub_1CA94C1E8();
  v94[63] = v122;
  v94[60] = v115;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2B3038()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA99DE30;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v359 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  *&v360 = v5;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v361 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v336 - v361;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v363 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v364 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v362 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v336 - v362;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v360, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v358 = v19;
  v20 = v359;
  v359[10] = v18;
  v20[13] = v19;
  v20[14] = @"Description";
  *&v360 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v354 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v356 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v357 = &v336;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v336 - v361;
  sub_1CA948D98();
  v30 = [v12 bundleURL];
  v365 = v10;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v336 - v362;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v24, v356, v26, v28, 0, 0, v29, v32);
  *(v21 + 64) = v358;
  *(v21 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v35 = v360;
  v20[15] = sub_1CA6B3784();
  v20[18] = v35;
  v20[19] = @"IconColor";
  v20[20] = 1702194242;
  v20[21] = 0xE400000000000000;
  v36 = MEMORY[0x1E69E6158];
  v20[23] = MEMORY[0x1E69E6158];
  v20[24] = @"IconSymbol";
  v20[25] = 0x6B726F7774656ELL;
  v20[26] = 0xE700000000000000;
  v20[28] = v36;
  v20[29] = @"Name";
  v37 = @"IconColor";
  v38 = @"IconSymbol";
  v39 = @"Name";
  v40 = sub_1CA94C438();
  v42 = v41;
  v43 = sub_1CA94C438();
  v45 = v44;
  *&v360 = &v336;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v336 - v361;
  sub_1CA948D98();
  v47 = v363;
  v48 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v336 - v362;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v40, v42, v43, v45, 0, 0, v46, v49);
  v52 = v359;
  v359[30] = v51;
  v53 = v358;
  v52[33] = v358;
  v52[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  v360 = xmmword_1CA9813C0;
  *(v54 + 16) = xmmword_1CA9813C0;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  v55 = MEMORY[0x1E69E6370];
  *(v54 + 48) = 0;
  *(v54 + 72) = v55;
  *(v54 + 80) = 0x614E74757074754FLL;
  *(v54 + 88) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438();
  v356 = v58;
  v59 = sub_1CA94C438();
  v61 = v60;
  v357 = &v336;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v336 - v361;
  sub_1CA948D98();
  v63 = [v47 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v336 - v362;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 96) = sub_1CA2F9F14(v57, v356, v59, v61, 0, 0, v62, v64);
  *(v54 + 120) = v53;
  *(v54 + 128) = 0x7365707954;
  *(v54 + 136) = 0xE500000000000000;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 168) = v355;
  *(v54 + 144) = &unk_1F49F25C0;
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v69 = v359;
  v359[35] = v67;
  v69[38] = v68;
  v69[39] = @"Parameters";
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1CA981470;
  v356 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v71 = swift_initStackObject();
  *(v71 + 16) = v360;
  *(v71 + 32) = @"Class";
  *(v71 + 40) = 0xD000000000000018;
  *(v71 + 48) = 0x80000001CA99DF70;
  *(v71 + 64) = v66;
  *(v71 + 72) = @"Key";
  *(v71 + 80) = 0xD000000000000017;
  *(v71 + 88) = 0x80000001CA993600;
  v348 = 0x80000001CA993600;
  *(v71 + 104) = v66;
  *(v71 + 112) = @"Label";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v349 = v72;
  v344 = v73;
  v343 = v74;
  v75 = @"Parameters";
  v76 = sub_1CA94C438();
  v353 = v77;
  v78 = sub_1CA94C438();
  v80 = v79;
  *&v360 = &v336;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v336 - v361;
  sub_1CA948D98();
  v82 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v336 - v362;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v76, v353, v78, v80, 0, 0, v81, v83);
  *(v71 + 144) = v358;
  *(v71 + 120) = v85;
  _s3__C3KeyVMa_0(0);
  v87 = v86;
  v351 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v352 = v87;
  sub_1CA94C1E8();
  v88 = sub_1CA2F864C();
  v353 = v70;
  *(v70 + 32) = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1CA981400;
  *(v89 + 32) = v349;
  *(v89 + 40) = 0xD000000000000016;
  v346 = 0x80000001CA99C4A0;
  *(v89 + 48) = 0x80000001CA99C4A0;
  v90 = MEMORY[0x1E69E6158];
  *(v89 + 64) = MEMORY[0x1E69E6158];
  *(v89 + 72) = @"DefaultValue";
  strcpy((v89 + 80), "Network Name");
  *(v89 + 93) = 0;
  *(v89 + 94) = -5120;
  *(v89 + 104) = v90;
  *(v89 + 112) = @"Items";
  *(v89 + 120) = &unk_1F49F2600;
  *(v89 + 144) = v355;
  *(v89 + 152) = @"ItemDisplayNames";
  v345 = v89;
  *&v360 = swift_allocObject();
  *(v360 + 16) = xmmword_1CA981720;
  v91 = @"DefaultValue";
  v92 = @"Items";
  v342 = v91;
  v341 = v92;
  v93 = @"ItemDisplayNames";
  v94 = sub_1CA94C438();
  v339 = v95;
  v340 = v94;
  v96 = sub_1CA94C438();
  v338 = v97;
  v347 = &v336;
  MEMORY[0x1EEE9AC00](v96);
  v98 = v361;
  sub_1CA948D98();
  v99 = v363;
  v100 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v336 - v362;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v340, v339, v96, v338, 0, 0, &v336 - v98, v101);
  *(v360 + 32) = v103;
  v104 = sub_1CA94C438();
  v339 = v105;
  v340 = v104;
  v106 = sub_1CA94C438();
  v338 = v107;
  v347 = &v336;
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948D98();
  v108 = [v99 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v336 - v362;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v340, v339, v106, v338, 0, 0, &v336 - v98, v109);
  v112 = v360;
  *(v360 + 40) = v111;
  v113 = [objc_opt_self() currentDevice];
  LODWORD(v98) = [v113 hasCapability_];

  v114 = sub_1CA94C438();
  v361 = v115;
  if (v98)
  {
    v116 = sub_1CA94C438();
    v118 = v117;
    MEMORY[0x1EEE9AC00](v116);
    v120 = &v336 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA948D98();
    v121 = [v363 bundleURL];
    MEMORY[0x1EEE9AC00](v121);
    v122 = &v336 - v362;
    sub_1CA948B68();

    objc_allocWithZone(MEMORY[0x1E696B100]);
    v123 = v114;
    v124 = v361;
    v125 = v116;
    v126 = v118;
  }

  else
  {
    v127 = sub_1CA94C438();
    v129 = v128;
    MEMORY[0x1EEE9AC00](v127);
    v120 = &v336 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA948D98();
    v131 = [v363 bundleURL];
    MEMORY[0x1EEE9AC00](v131);
    v122 = &v336 - v362;
    sub_1CA948B68();

    objc_allocWithZone(MEMORY[0x1E696B100]);
    v123 = v114;
    v124 = v361;
    v125 = v127;
    v126 = v129;
  }

  v132 = sub_1CA2F9F14(v123, v124, v125, v126, 0, 0, v120, v122);
  v347 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  *(v112 + 48) = v132;
  v339 = sub_1CA94C438();
  v134 = v133;
  v135 = sub_1CA94C438();
  v137 = v136;
  v340 = &v336;
  MEMORY[0x1EEE9AC00](v135);
  v361 = (v138 + 15) & 0xFFFFFFFFFFFFFFF0;
  v139 = &v336 - v361;
  sub_1CA948D98();
  v140 = v363;
  v141 = [v363 bundleURL];
  v142 = v364;
  MEMORY[0x1EEE9AC00](v141);
  v362 = (v142 + 15) & 0xFFFFFFFFFFFFFFF0;
  v143 = &v336 - v362;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v339, v134, v135, v137, 0, 0, v139, v143);
  v146 = v360;
  *(v360 + 56) = v145;
  v147 = sub_1CA94C438();
  v338 = v148;
  v339 = v147;
  v149 = sub_1CA94C438();
  v337 = v150;
  v340 = &v336;
  MEMORY[0x1EEE9AC00](v149);
  v151 = v361;
  sub_1CA948D98();
  v152 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = v362;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v146 + 64) = sub_1CA2F9F14(v339, v338, v149, v337, 0, 0, &v336 - v151, &v336 - v153);
  v155 = sub_1CA94C438();
  v338 = v156;
  v339 = v155;
  v337 = sub_1CA94C438();
  v158 = v157;
  v340 = &v336;
  MEMORY[0x1EEE9AC00](v337);
  sub_1CA948D98();
  v159 = v363;
  v160 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v339, v338, v337, v158, 0, 0, &v336 - v151, &v336 - v153);
  *(v360 + 72) = v162;
  v163 = sub_1CA94C438();
  v338 = v164;
  v339 = v163;
  v165 = sub_1CA94C438();
  v337 = v166;
  v340 = &v336;
  MEMORY[0x1EEE9AC00](v165);
  v167 = v361;
  sub_1CA948D98();
  v168 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  v169 = &v336 - v362;
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v171 = sub_1CA2F9F14(v339, v338, v165, v337, 0, 0, &v336 - v167, v169);
  v172 = v360;
  *(v360 + 80) = v171;
  v173 = sub_1CA94C438();
  v338 = v174;
  v339 = v173;
  v175 = sub_1CA94C438();
  v337 = v176;
  v340 = &v336;
  MEMORY[0x1EEE9AC00](v175);
  v177 = &v336 - v167;
  sub_1CA948D98();
  v178 = v363;
  v179 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  v180 = v362;
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 88) = sub_1CA2F9F14(v339, v338, v175, v337, 0, 0, v177, &v336 - v180);
  v182 = sub_1CA94C438();
  v338 = v183;
  v339 = v182;
  v184 = sub_1CA94C438();
  v186 = v185;
  v340 = &v336;
  MEMORY[0x1EEE9AC00](v184);
  v187 = v361;
  sub_1CA948D98();
  v188 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190 = sub_1CA2F9F14(v339, v338, v184, v186, 0, 0, &v336 - v187, &v336 - v180);
  v191 = v360;
  *(v360 + 96) = v190;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v340 = v192;
  v193 = v344;
  v194 = v345;
  *(v345 + 160) = v191;
  *(v194 + 184) = v192;
  *(v194 + 192) = v193;
  strcpy((v194 + 200), "WFWiFiDetail");
  *(v194 + 213) = 0;
  *(v194 + 214) = -5120;
  v195 = v343;
  *(v194 + 224) = MEMORY[0x1E69E6158];
  *(v194 + 232) = v195;
  v339 = v193;
  v344 = v195;
  v343 = sub_1CA94C438();
  v197 = v196;
  v198 = sub_1CA94C438();
  v200 = v199;
  *&v360 = &v336;
  MEMORY[0x1EEE9AC00](v198);
  v201 = &v336 - v187;
  sub_1CA948D98();
  v202 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  v203 = &v336 - v362;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v194 + 240) = sub_1CA2F9F14(v343, v197, v198, v200, 0, 0, v201, v203);
  *(v194 + 264) = v358;
  *(v194 + 272) = @"RequiredResources";
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v205 = swift_allocObject();
  *(v205 + 16) = v354;
  v338 = @"RequiredResources";
  v206 = MEMORY[0x1E69E6158];
  *(v205 + 32) = sub_1CA94C1E8();
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v194 + 304) = v337;
  *(v194 + 280) = v205;
  sub_1CA94C1E8();
  *(v353 + 40) = sub_1CA2F864C();
  v207 = swift_allocObject();
  *(v207 + 16) = xmmword_1CA981380;
  *(v207 + 32) = v349;
  *(v207 + 40) = 0xD000000000000016;
  *(v207 + 48) = v346;
  v208 = v342;
  *(v207 + 64) = v206;
  *(v207 + 72) = v208;
  strcpy((v207 + 80), "Carrier Name");
  *(v207 + 93) = 0;
  *(v207 + 94) = -5120;
  v209 = v341;
  *(v207 + 104) = v206;
  *(v207 + 112) = v209;
  *&v360 = swift_allocObject();
  v350 = xmmword_1CA981560;
  *(v360 + 16) = xmmword_1CA981560;
  v210 = sub_1CA94C438();
  v345 = v211;
  v346 = v210;
  v212 = sub_1CA94C438();
  v342 = v213;
  v349 = &v336;
  MEMORY[0x1EEE9AC00](v212);
  v214 = v361;
  sub_1CA948D98();
  v215 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v215);
  v216 = &v336 - v362;
  sub_1CA948B68();

  v217 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v218 = sub_1CA2F9F14(v346, v345, v212, v342, 0, 0, &v336 - v214, v216);
  *(v360 + 32) = v218;
  v219 = sub_1CA94C438();
  v345 = v220;
  v346 = v219;
  v221 = sub_1CA94C438();
  v342 = v222;
  v349 = &v336;
  MEMORY[0x1EEE9AC00](v221);
  v223 = &v336 - v214;
  sub_1CA948D98();
  v224 = v363;
  v225 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v225);
  v226 = v362;
  sub_1CA948B68();

  v227 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v228 = sub_1CA2F9F14(v346, v345, v221, v342, 0, 0, v223, &v336 - v226);
  v229 = v360;
  *(v360 + 40) = v228;
  v230 = sub_1CA94C438();
  v345 = v231;
  v346 = v230;
  v232 = sub_1CA94C438();
  v342 = v233;
  v349 = &v336;
  MEMORY[0x1EEE9AC00](v232);
  v234 = v361;
  sub_1CA948D98();
  v235 = [v224 bundleURL];
  MEMORY[0x1EEE9AC00](v235);
  sub_1CA948B68();

  v236 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v229 + 48) = sub_1CA2F9F14(v346, v345, v232, v342, 0, 0, &v336 - v234, &v336 - v226);
  v237 = sub_1CA94C438();
  v345 = v238;
  v346 = v237;
  v239 = sub_1CA94C438();
  v342 = v240;
  v349 = &v336;
  MEMORY[0x1EEE9AC00](v239);
  v241 = &v336 - v234;
  sub_1CA948D98();
  v242 = v363;
  v243 = [v363 bundleURL];
  v341 = &v336;
  MEMORY[0x1EEE9AC00](v243);
  v244 = v362;
  sub_1CA948B68();

  v245 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v246 = sub_1CA2F9F14(v346, v345, v239, v342, 0, 0, v241, &v336 - v244);
  *(v360 + 56) = v246;
  v247 = sub_1CA94C438();
  v345 = v248;
  v346 = v247;
  v249 = sub_1CA94C438();
  v342 = v250;
  v349 = &v336;
  MEMORY[0x1EEE9AC00](v249);
  v251 = v361;
  sub_1CA948D98();
  v252 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v252);
  sub_1CA948B68();

  v253 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v254 = sub_1CA2F9F14(v346, v345, v249, v342, 0, 0, &v336 - v251, &v336 - v244);
  v255 = v360;
  *(v360 + 64) = v254;
  *(v207 + 120) = v255;
  v256 = v339;
  *(v207 + 144) = v340;
  *(v207 + 152) = v256;
  *(v207 + 160) = 0xD000000000000010;
  *(v207 + 168) = 0x80000001CA99E2C0;
  v257 = v344;
  *(v207 + 184) = MEMORY[0x1E69E6158];
  *(v207 + 192) = v257;
  v258 = sub_1CA94C438();
  v260 = v259;
  v261 = sub_1CA94C438();
  v263 = v262;
  *&v360 = &v336;
  MEMORY[0x1EEE9AC00](v261);
  v264 = &v336 - v251;
  sub_1CA948D98();
  v265 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v265);
  v266 = &v336 - v362;
  sub_1CA948B68();

  v267 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v207 + 200) = sub_1CA2F9F14(v258, v260, v261, v263, 0, 0, v264, v266);
  v268 = v338;
  *(v207 + 224) = v358;
  *(v207 + 232) = v268;
  v269 = swift_allocObject();
  *(v269 + 16) = v354;
  *(v269 + 32) = sub_1CA94C1E8();
  *(v207 + 264) = v337;
  *(v207 + 240) = v269;
  sub_1CA94C1E8();
  v270 = sub_1CA2F864C();
  v271 = v353;
  *(v353 + 48) = v270;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v273 = v359;
  v359[40] = v271;
  v273[43] = v272;
  v273[44] = @"ParameterSummary";
  v358 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *&v360 = swift_allocObject();
  *(v360 + 16) = v350;
  v274 = @"ParameterSummary";
  v356 = sub_1CA94C438();
  *&v354 = v275;
  v276 = sub_1CA94C438();
  v278 = v277;
  v357 = &v336;
  MEMORY[0x1EEE9AC00](v276);
  v279 = v361;
  sub_1CA948D98();
  v280 = v363;
  v281 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v281);
  v282 = &v336 - v362;
  sub_1CA948B68();

  v283 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v284 = sub_1CA2F9F14(v356, v354, v276, v278, 0, 0, &v336 - v279, v282);
  v285 = objc_allocWithZone(WFActionParameterSummaryValue);
  v286 = sub_1CA65DD78(0xD000000000000017, v348, v284);
  v287 = v360;
  *(v360 + 32) = v286;
  v357 = "etailsNetwork} network details";
  v288 = sub_1CA94C438();
  v353 = v289;
  *&v354 = v288;
  v290 = sub_1CA94C438();
  v352 = v291;
  v356 = &v336;
  MEMORY[0x1EEE9AC00](v290);
  sub_1CA948D98();
  v292 = [v280 bundleURL];
  MEMORY[0x1EEE9AC00](v292);
  v293 = v362;
  sub_1CA948B68();

  v294 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v295 = sub_1CA2F9F14(v354, v353, v290, v352, 0, 0, &v336 - v279, &v336 - v293);
  v296 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v287 + 40) = sub_1CA65DD78(0xD000000000000028, v357 | 0x8000000000000000, v295);
  v357 = "etwork's ${WFCellularDetail}";
  v297 = sub_1CA94C438();
  v353 = v298;
  *&v354 = v297;
  v299 = sub_1CA94C438();
  v301 = v300;
  v356 = &v336;
  MEMORY[0x1EEE9AC00](v299);
  sub_1CA948D98();
  v302 = v363;
  v303 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v303);
  sub_1CA948B68();

  v304 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v305 = sub_1CA2F9F14(v354, v353, v299, v301, 0, 0, &v336 - v279, &v336 - v293);
  v306 = objc_allocWithZone(WFActionParameterSummaryValue);
  v307 = sub_1CA65DD78(0xD000000000000024, v357 | 0x8000000000000000, v305);
  v308 = v360;
  *(v360 + 48) = v307;
  v357 = "etwork's ${WFWiFiDetail}";
  v309 = sub_1CA94C438();
  v353 = v310;
  *&v354 = v309;
  v311 = sub_1CA94C438();
  v352 = v312;
  v356 = &v336;
  MEMORY[0x1EEE9AC00](v311);
  sub_1CA948D98();
  v313 = [v302 bundleURL];
  MEMORY[0x1EEE9AC00](v313);
  sub_1CA948B68();

  v314 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v315 = sub_1CA2F9F14(v354, v353, v311, v352, 0, 0, &v336 - v279, &v336 - v293);
  v316 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v308 + 56) = sub_1CA65DD78(0xD000000000000032, v357 | 0x8000000000000000, v315);
  v357 = "),WFCellularDetail";
  v317 = sub_1CA94C438();
  v319 = v318;
  v320 = sub_1CA94C438();
  v322 = v321;
  v356 = &v336;
  MEMORY[0x1EEE9AC00](v320);
  v323 = &v336 - v361;
  sub_1CA948D98();
  v324 = [v363 bundleURL];
  MEMORY[0x1EEE9AC00](v324);
  v325 = &v336 - v362;
  sub_1CA948B68();

  v326 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v327 = sub_1CA2F9F14(v317, v319, v320, v322, 0, 0, v323, v325);
  v328 = objc_allocWithZone(WFActionParameterSummaryValue);
  v329 = sub_1CA65DD78(0xD00000000000002BLL, v357 | 0x8000000000000000, v327);
  *(v360 + 64) = v329;
  v330 = v358;
  v331 = sub_1CA65AF90();
  v332 = v359;
  v359[45] = v331;
  v332[48] = v330;
  v332[49] = @"RequiredResources";
  v332[50] = &unk_1F49F27B0;
  v332[53] = v355;
  v332[54] = @"ResidentCompatible";
  v332[58] = MEMORY[0x1E69E6370];
  *(v332 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v333 = @"RequiredResources";
  v334 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id AutoShortcutApp.color.getter()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = *(*(type metadata accessor for AutoShortcutAppSection() - 8) + 80);
    OUTLINED_FUNCTION_68_0();
    v4 = *(v1 + v3 + 48);

    return v4;
  }

  else
  {
    v6 = [objc_opt_self() colorWithPaletteColor_];

    return v6;
  }
}

void __swiftcall AutoShortcutApp.init(bundleIdentifier:autoShortcuts:)(WorkflowKit::AutoShortcutApp *__return_ptr retstr, Swift::String bundleIdentifier, Swift::OpaquePointer autoShortcuts)
{
  OUTLINED_FUNCTION_71_0();
  v6 = v5;
  OUTLINED_FUNCTION_49_0();
  v20 = v7;
  v8 = objc_opt_self();
  sub_1CA94C218();
  v9 = [v8 lockedAppBundleIdentifiers];
  v10 = sub_1CA94C8F8();

  v11 = sub_1CA27AF18(v4, v3, v10);

  v21 = MEMORY[0x1E69E7CC0];
  v12 = sub_1CA25B418(v6);
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {

      *v20 = v4;
      v20[1] = v3;
      v20[2] = v21;
      v19 = MEMORY[0x1E69E7CC0];
      v20[3] = MEMORY[0x1E69E7CC0];
      v20[4] = v19;
      OUTLINED_FUNCTION_73();
      return;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1CCAA22D0](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v14 = *(v6 + 8 * i + 32);
    }

    v15 = v14;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 && (v16 = [v14 entityInfo]) != 0)
    {
      v17 = v16;
    }

    else
    {
      sub_1CA94D4D8();
      v18 = *(v21 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1CA2B5928()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1CA94ADC8();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  if (*(v0 + 16))
  {
    v5 = *(v0 + 40);
    OUTLINED_FUNCTION_20_1();
    sub_1CA2BC028(v6, v7);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_32();
    do
    {
      OUTLINED_FUNCTION_38(v8);
      if (!v9)
      {
        break;
      }

      v10 = OUTLINED_FUNCTION_40_0();
      v11(v10);
      OUTLINED_FUNCTION_20_1();
      sub_1CA2BC028(&qword_1EC443AB0, v12);
      OUTLINED_FUNCTION_57();
      v13 = OUTLINED_FUNCTION_62_1();
      v14(v13);
      v8 = v0 + 1;
    }

    while ((v5 & 1) == 0);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA2B5A74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_1CA94D368();

    return v4 & 1;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v6 = *(a2 + 40);
  sub_1CA94D918();
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  sub_1CA36417C(v29, v8, v7, v9, *(a1 + 40));
  sub_1CA94D968();
  OUTLINED_FUNCTION_32();
  v13 = v12 & ~v11;
  if (((*(a2 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v11;
  v25 = v9;
  v16 = v10 != 4 || (v7 | v8 | v9) != 0;
  v27 = v16;
  v28 = v10;
  v17 = v10;
  v26 = v7;
  while (2)
  {
    v18 = *(*(a2 + 48) + 8 * v13);
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v18 + 32);
    switch(*(v18 + 40))
    {
      case 1:
        if (v17 != 1)
        {
          goto LABEL_33;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        OUTLINED_FUNCTION_35();
        v23 = sub_1CA94CFD8();

        goto LABEL_30;
      case 2:
        if (v17 != 2)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      case 3:
        if (v17 != 3)
        {
          goto LABEL_33;
        }

LABEL_25:
        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        OUTLINED_FUNCTION_35();
        v24 = sub_1CA94CFD8();

        v17 = v28;
        if ((v24 & 1) != 0 && v20 == v7)
        {
          return 1;
        }

        goto LABEL_33;
      case 4:
        if (!v27)
        {
          return 1;
        }

        goto LABEL_33;
      default:
        if (v17)
        {
          goto LABEL_33;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        OUTLINED_FUNCTION_35();
        if ((sub_1CA94CFD8() & 1) == 0)
        {

          v7 = v26;
          v17 = v28;
          goto LABEL_33;
        }

        v7 = v26;
        if (v20 != v26 || v21 != v25)
        {
          v23 = sub_1CA94D7F8();

LABEL_30:
          v17 = v28;
          if (v23)
          {
            return 1;
          }

LABEL_33:
          v13 = (v13 + 1) & v14;
          if (((*(a2 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
    }
  }
}

uint64_t sub_1CA2B5D28(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v5 = a2[5];
    sub_1CA94D908();
    OUTLINED_FUNCTION_46_1();
    do
    {
      OUTLINED_FUNCTION_41_2(v6);
      if (!v8)
      {
        break;
      }

      v6 = v7 + 1;
    }

    while (*(a2[6] + 8 * v7) != a1);
  }

  return v2;
}

void sub_1CA2B5D88()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1CA949498();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  if (*(v0 + 16))
  {
    v5 = *(v0 + 40);
    OUTLINED_FUNCTION_19_1();
    sub_1CA2BC028(v6, v7);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_32();
    do
    {
      OUTLINED_FUNCTION_38(v8);
      if (!v9)
      {
        break;
      }

      v10 = OUTLINED_FUNCTION_40_0();
      v11(v10);
      OUTLINED_FUNCTION_19_1();
      sub_1CA2BC028(&qword_1EC443A28, v12);
      OUTLINED_FUNCTION_57();
      v13 = OUTLINED_FUNCTION_62_1();
      v14(v13);
      v8 = v0 + 1;
    }

    while ((v5 & 1) == 0);
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA2B5ED4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a1;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = (a3 + 40);
  v9 = MEMORY[0x1E69E7CC0];
  v20 = v7;
  while (1)
  {
    if (v7 == v6)
    {

      return;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v10 = *v8;
    v23 = *(v8 - 1);
    v24 = v10;
    v11 = v23;
    v12 = v5(&v23);
    if (v3)
    {
      v19 = v23;

      return;
    }

    v13 = v23;
    if (v12)
    {
      v14 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = *(v9 + 16);
        sub_1CA27B0E8();
        v9 = v25;
      }

      v17 = *(v9 + 16);
      if (v17 >= *(v9 + 24) >> 1)
      {
        sub_1CA27B0E8();
        v9 = v25;
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
      v4 = a3;
      v7 = v20;
      v5 = a1;
    }

    else
    {
    }

    v8 += 16;
    ++v6;
  }

  __break(1u);
}

void __swiftcall AutoShortcutApp.init(bundleIdentifier:sections:deprecatedItems:userShortcuts:)(WorkflowKit::AutoShortcutApp *__return_ptr retstr, Swift::String bundleIdentifier, Swift::OpaquePointer sections, Swift::OpaquePointer deprecatedItems, Swift::OpaquePointer userShortcuts)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  v12 = objc_opt_self();
  sub_1CA94C218();
  v13 = [v12 lockedAppBundleIdentifiers];
  v14 = sub_1CA94C8F8();

  v15 = OUTLINED_FUNCTION_69();
  v17 = sub_1CA27AF18(v15, v16, v14);

  v23 = object;

  v27 = MEMORY[0x1E69E7CC0];
  sub_1CA25B418(deprecatedItems._rawValue);
  OUTLINED_FUNCTION_63_0();
  while (1)
  {
    if (v7 == v8)
    {

      retstr->bundleIdentifier._countAndFlagsBits = countAndFlagsBits;
      retstr->bundleIdentifier._object = v23;
      retstr->autoShortcuts._rawValue = v27;
      retstr->sections = sections;
      retstr->userShortcuts = userShortcuts;
      return;
    }

    if (v6)
    {
      v18 = MEMORY[0x1CCAA22D0](v8, deprecatedItems._rawValue);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_15;
      }

      v18 = *(deprecatedItems._rawValue + v8 + 4);
    }

    v19 = v18;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v17 && (v20 = [v18 entityInfo]) != 0)
    {
      v21 = v20;
    }

    else
    {
      sub_1CA94D4D8();
      v22 = v27[2];
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    ++v8;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

Swift::Int __swiftcall AutoShortcutApp.numberOfShortcuts(includeUserShortcuts:)(Swift::Bool includeUserShortcuts)
{
  OUTLINED_FUNCTION_77_1();
  v26 = v2;
  v27 = v3;
  v5 = v4;
  v6 = type metadata accessor for AutoShortcutAppSection();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[2];
  v11 = v1[3];
  v13 = v1[4];
  v14 = *(v11 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v8 + 72);
    while (1)
    {
      result = sub_1CA2BC070(v16, v10, type metadata accessor for AutoShortcutAppSection);
      v19 = *(*(v10 + 7) + 16);
      v20 = __OFADD__(v15, v19);
      v15 += v19;
      if (v20)
      {
        break;
      }

      sub_1CA2BC0CC(v10, type metadata accessor for AutoShortcutAppSection);
      v16 += v17;
      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v15 = 0;
LABEL_7:
  v21 = v12;
  if (v5)
  {
    result = sub_1CA25B418(v12);
    v22 = v15 + result;
    if (__OFADD__(v15, result))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v23 = sub_1CA25B418(v13);
    v20 = __OFADD__(v22, v23);
    v21 = v22 + v23;
    if (!v20)
    {
LABEL_13:
      OUTLINED_FUNCTION_76_0();
      return result;
    }

    __break(1u);
  }

  v24 = sub_1CA25B418(v21);
  v20 = __OFADD__(v15, v24);
  result = v15 + v24;
  if (!v20)
  {
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t static AutoShortcutApp.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1CA94D7F8()) && (sub_1CA2B6B9C(), (v9) && (sub_1CA2B671C(v4, v5))
  {
    OUTLINED_FUNCTION_23();
    sub_1CA2B6B9C();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1CA2B642C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *(v4 - 1);
      v7 = *v4;
      if (*v3)
      {
        if ((*v4 & 1) == 0)
        {
          return;
        }
      }

      else if (*v4)
      {
        return;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      v8 = v6;
      v9 = v5;
      v10 = v8;
      v11 = v9;
      v12 = sub_1CA94CFD8();

      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

void sub_1CA2B652C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for DrawerAction(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v33 = &a9 - v32;
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = v25 + v35;
    v37 = v23 + v35;
    v38 = *(v31 + 72);
    do
    {
      v39 = OUTLINED_FUNCTION_69();
      sub_1CA2BC070(v39, v40, v41);
      sub_1CA2BC070(v37, v30, type metadata accessor for DrawerAction);
      v42 = *(v26 + 28);
      v43 = *&v33[v42];
      v44 = *&v33[v42 + 8];
      v45 = &v30[v42];
      if (v43 == *v45 && v44 == *(v45 + 1))
      {
        sub_1CA2BC0CC(v30, type metadata accessor for DrawerAction);
        sub_1CA2BC0CC(v33, type metadata accessor for DrawerAction);
      }

      else
      {
        v47 = sub_1CA94D7F8();
        sub_1CA2BC0CC(v30, type metadata accessor for DrawerAction);
        sub_1CA2BC0CC(v33, type metadata accessor for DrawerAction);
        if ((v47 & 1) == 0)
        {
          break;
        }
      }

      v37 += v38;
      v36 += v38;
      --v34;
    }

    while (v34);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA2B671C(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for AutoShortcutAppSection();
  v4 = *(*(v48 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v48);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v42 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_38;
  }

  if (!v11 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v45 = *(v8 + 72);
  while (1)
  {
    sub_1CA2BC070(v13, v10, type metadata accessor for AutoShortcutAppSection);
    sub_1CA2BC070(v14, v7, type metadata accessor for AutoShortcutAppSection);
    v15 = *v10;
    v16 = v10[1];
    v18 = v10[2];
    v17 = v10[3];
    v19 = *v7;
    v20 = v7[1];
    v21 = v7[2];
    v22 = v7[3];
    v49 = v13;
    if (!v16)
    {
      v24 = v19;
      if (v20)
      {
        v47 = v15;
        sub_1CA94C218();
        sub_1CA94C218();
        v16 = 0;
        goto LABEL_36;
      }

      sub_1CA2BBC74(v15, 0);
      v30 = v24;
      v31 = 0;
      goto LABEL_21;
    }

    v47 = v15;
    if (!v20)
    {
      v24 = v19;
      sub_1CA94C218();
      sub_1CA94C218();
      goto LABEL_36;
    }

    v23 = v15 == v19 && v16 == v20;
    v46 = v22;
    if (!v23)
    {
      v24 = v19;
      v25 = v21;
      v26 = sub_1CA94D7F8();
      v21 = v25;
      v22 = v46;
      v19 = v24;
      if ((v26 & 1) == 0)
      {
        break;
      }
    }

    if (v18 == v21 && v17 == v22)
    {
      v32 = v19;
      sub_1CA280EAC(v19, v20);
      v33 = v47;
      sub_1CA280EAC(v47, v16);
      sub_1CA2BBC74(v33, v16);
      v30 = v32;
      v31 = v20;
LABEL_21:
      sub_1CA2BBC74(v30, v31);
      goto LABEL_22;
    }

    v28 = v19;
    v42 = v21;
    v43 = v19;
    v44 = sub_1CA94D7F8();
    sub_1CA280EAC(v28, v20);
    v29 = v47;
    sub_1CA280EAC(v47, v16);
    sub_1CA2BBC74(v29, v16);
    sub_1CA2BBC74(v43, v20);
    if ((v44 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_22:
    v34 = v10[4] == v7[4] && v10[5] == v7[5];
    if (!v34 && (sub_1CA94D7F8() & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
    v35 = v10[6];
    v36 = v7[6];
    if ((sub_1CA94CFD8() & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_1CA2B642C(v10[7], v7[7]);
    if ((v37 & 1) == 0)
    {
      goto LABEL_37;
    }

    v38 = *(v48 + 32);
    v39 = sub_1CA948CE8();
    sub_1CA2BC0CC(v7, type metadata accessor for AutoShortcutAppSection);
    sub_1CA2BC0CC(v10, type metadata accessor for AutoShortcutAppSection);
    if (v39)
    {
      v14 += v45;
      v13 = v49 + v45;
      if (--v11)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  v40 = v47;
  sub_1CA280EAC(v24, v20);
  sub_1CA280EAC(v40, v16);
LABEL_36:
  sub_1CA2BBC74(v47, v16);
  sub_1CA2BBC74(v24, v20);
LABEL_37:
  sub_1CA2BC0CC(v7, type metadata accessor for AutoShortcutAppSection);
  sub_1CA2BC0CC(v10, type metadata accessor for AutoShortcutAppSection);
LABEL_38:
  v39 = 0;
  return v39 & 1;
}

void sub_1CA2B6B9C()
{
  OUTLINED_FUNCTION_71_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_49_0();
  v7 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CA94D328())
  {
    if (v0 >> 62)
    {
      v9 = sub_1CA94D328();
    }

    else
    {
      v9 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != v9 || !i)
    {
      goto LABEL_29;
    }

    v10 = v1 & 0xFFFFFFFFFFFFFF8;
    v11 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 < 0)
    {
      v10 = v1;
    }

    if (v7)
    {
      v11 = v10;
    }

    v12 = v0 & 0xFFFFFFFFFFFFFF8;
    v13 = (v0 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 < 0)
    {
      v12 = v0;
    }

    if (v0 >> 62)
    {
      v13 = v12;
    }

    if (v11 == v13)
    {
LABEL_29:
      OUTLINED_FUNCTION_73();
      return;
    }

    if (i < 0)
    {
      break;
    }

    v3 = sub_1CA25B3D0(0, v5, v3);
    v24 = v1;
    v14 = v1 & 0xC000000000000001;
    v1 = v0;
    v15 = v0 & 0xC000000000000001;
    v16 = 4;
    v0 = i;
    while (1)
    {
      v17 = v16 - 4;
      v7 = v16 - 3;
      if (__OFADD__(v16 - 4, 1))
      {
        break;
      }

      if (v14)
      {
        v18 = MEMORY[0x1CCAA22D0](v16 - 4, v24);
      }

      else
      {
        if (v17 >= *(v23 + 16))
        {
          goto LABEL_31;
        }

        v18 = *(v24 + 8 * v16);
      }

      v5 = v18;
      if (v15)
      {
        v19 = MEMORY[0x1CCAA22D0](v16 - 4, v1);
      }

      else
      {
        if (v17 >= *(v22 + 16))
        {
          goto LABEL_32;
        }

        v19 = *(v1 + 8 * v16);
      }

      v20 = v19;
      v21 = sub_1CA94CFD8();

      if (v21)
      {
        ++v16;
        if (v7 != v0)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
}

uint64_t sub_1CA2B6D50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA2B6DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1CA94D7F8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void AutoShortcutApp.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1CA94C458();
  sub_1CA2BBB6C();
  sub_1CA2BB954(a1, v6);
  OUTLINED_FUNCTION_23();
  sub_1CA2BBB6C();
}

uint64_t AutoShortcutApp.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA2BBB6C();
  sub_1CA2BB954(v7, v4);
  sub_1CA2BBB6C();
  return sub_1CA94D968();
}

uint64_t sub_1CA2B6F18@<X0>(uint64_t *a1@<X8>)
{
  result = AutoShortcutApp.bundleIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA2B6F4C()
{
  v3[9] = *v0;
  v1 = *(v0 + 24);
  v4 = *(v0 + 8);
  v5 = v1;
  sub_1CA94D918();
  AutoShortcutApp.hash(into:)(v3);
  return sub_1CA94D968();
}

void static AutoShortcutAppSection.SectionType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  if (!v1)
  {
    if (!v6)
    {
      v36 = *v0;
      OUTLINED_FUNCTION_27_5();
      sub_1CA2BBC74(v37, v38);
      v34 = v5;
      v35 = 0;
      goto LABEL_17;
    }

LABEL_14:
    v20 = OUTLINED_FUNCTION_16_2();
    sub_1CA280EAC(v20, v21);
    v22 = OUTLINED_FUNCTION_9_4();
    sub_1CA280EAC(v22, v23);
    v24 = OUTLINED_FUNCTION_9_4();
    sub_1CA2BBC74(v24, v25);
    v26 = OUTLINED_FUNCTION_16_2();
    sub_1CA2BBC74(v26, v27);
    goto LABEL_18;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  if (*v0 != v5 || v1 != v6)
  {
    v10 = *v0;
    if ((sub_1CA94D7F8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (v3 == v8 && v2 == v7)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_27_5();
    sub_1CA280EAC(v28, v29);
    v30 = OUTLINED_FUNCTION_9_4();
    sub_1CA280EAC(v30, v31);
    v32 = OUTLINED_FUNCTION_9_4();
    sub_1CA2BBC74(v32, v33);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_27_5();
LABEL_17:
    sub_1CA2BBC74(v34, v35);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_69();
  sub_1CA94D7F8();
  v12 = OUTLINED_FUNCTION_16_2();
  sub_1CA280EAC(v12, v13);
  v14 = OUTLINED_FUNCTION_9_4();
  sub_1CA280EAC(v14, v15);
  v16 = OUTLINED_FUNCTION_9_4();
  sub_1CA2BBC74(v16, v17);
  v18 = OUTLINED_FUNCTION_16_2();
  sub_1CA2BBC74(v18, v19);
LABEL_18:
  OUTLINED_FUNCTION_36();
}

uint64_t AutoShortcutAppSection.SectionType.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x1CCAA2780](0);
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = *v0;
  MEMORY[0x1CCAA2780](1);
  sub_1CA94C458();

  return sub_1CA94C458();
}

uint64_t AutoShortcutAppSection.SectionType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1CA94D918();
  if (v2)
  {
    MEMORY[0x1CCAA2780](1);
    sub_1CA94C458();
    sub_1CA94C458();
  }

  else
  {
    MEMORY[0x1CCAA2780](0);
  }

  return sub_1CA94D968();
}

uint64_t sub_1CA2B7204()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1CA94D918();
  AutoShortcutAppSection.SectionType.hash(into:)();
  return sub_1CA94D968();
}

uint64_t AutoShortcutAppSection.sectionType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1CA280EAC(v2, v3);
}

void AutoShortcutAppSection.applyingFilter(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = v0[7];
  sub_1CA94C218();
  v4 = OUTLINED_FUNCTION_69();
  sub_1CA2B5ED4(v4, v5, v3);
  v7 = v6;
  v44 = v0[1];
  v45 = *v0;
  v8 = v0[2];
  v9 = v0[4];
  v47 = v0[3];
  v48 = v9;
  v49 = v0[5];
  v46 = v0[6];
  v42 = type metadata accessor for AutoShortcutAppSection();
  v10 = *(v42 + 32);
  v11 = sub_1CA948D28();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v19 = (v18 - v17);
  v41 = v14;
  v20 = *(v14 + 16);
  v20(v18 - v17, v0 + v10, v11);
  *v2 = v45;
  v2[1] = v44;
  v2[2] = v8;
  v2[3] = v47;
  v2[4] = v9;
  v2[5] = v49;
  v2[6] = v46;
  v21 = *(v42 + 32);
  v43 = v2;
  v20(v2 + v21, v19, v11);
  v22 = objc_opt_self();
  sub_1CA280EAC(v45, v44);
  v23 = v46;
  sub_1CA94C218();
  v24 = [v22 lockedAppBundleIdentifiers];
  v25 = sub_1CA94C8F8();

  v26 = sub_1CA27AF18(v9, v49, v25);

  v27 = 0;
  OUTLINED_FUNCTION_60_1();
  v29 = MEMORY[0x1E69E7CC0];
  v50 = v28;
LABEL_2:
  for (i = (v28 + 16 * v27); ; i += 16)
  {
    if (v11 == v27)
    {
      (*(v41 + 8))(v19, v11);

      v43[7] = v29;
      OUTLINED_FUNCTION_36();
      return;
    }

    if (v27 >= *(v7 + 16))
    {
      break;
    }

    v31 = *(i - 1);
    v32 = *i;
    v33 = v31;
    if ((v26 & v32 & 1) == 0)
    {
      v37 = v48 & v32;
LABEL_10:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = *(v29 + 16);
        sub_1CA27B0E8();
      }

      v39 = *(v29 + 16);
      if (v39 >= *(v29 + 24) >> 1)
      {
        sub_1CA27B0E8();
      }

      ++v27;
      *(v29 + 16) = v39 + 1;
      v40 = v29 + 16 * v39;
      *(v40 + 32) = v31;
      *(v40 + 40) = v37 & 1;
      v28 = v50;
      goto LABEL_2;
    }

    v34 = v33;
    v35 = [v33 entityInfo];
    if (!v35)
    {
      v37 = 1;
      goto LABEL_10;
    }

    v36 = v35;

    ++v27;
  }

  __break(1u);
}

void static AutoShortcutAppSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_49_0();
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  if (!v4)
  {
    if (!v7)
    {
      v33 = *v2;
      OUTLINED_FUNCTION_25_1();
      sub_1CA2BBC74(v34, v35);
      OUTLINED_FUNCTION_50();
      goto LABEL_19;
    }

    v21 = v3[1];
    sub_1CA94C218();
    sub_1CA94C218();
    goto LABEL_29;
  }

  if (!v7)
  {
    v22 = v2[1];
    sub_1CA94C218();
    sub_1CA94C218();
    v23 = OUTLINED_FUNCTION_8_1();
    sub_1CA2BBC74(v23, v24);
LABEL_30:
    OUTLINED_FUNCTION_50();
    sub_1CA2BBC74(v47, v48);
    goto LABEL_31;
  }

  if (*v2 != *v3 || v4 != v7)
  {
    v11 = *v2;
    if ((sub_1CA94D7F8() & 1) == 0)
    {
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_50();
      sub_1CA280EAC(v41, v42);
      v43 = OUTLINED_FUNCTION_8_1();
      sub_1CA280EAC(v43, v44);
LABEL_29:
      OUTLINED_FUNCTION_25_1();
      sub_1CA2BBC74(v45, v46);
      OUTLINED_FUNCTION_35();
      goto LABEL_30;
    }
  }

  if (v6 != v9 || v5 != v8)
  {
    OUTLINED_FUNCTION_50();
    v49[0] = sub_1CA94D7F8();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_50();
    sub_1CA280EAC(v13, v14);
    v15 = OUTLINED_FUNCTION_8_1();
    sub_1CA280EAC(v15, v16);
    v17 = OUTLINED_FUNCTION_8_1();
    sub_1CA2BBC74(v17, v18);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_50();
    sub_1CA2BBC74(v19, v20);
    if ((v49[0] & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_25_1();
  sub_1CA280EAC(v25, v26);
  v27 = OUTLINED_FUNCTION_8_1();
  sub_1CA280EAC(v27, v28);
  v29 = OUTLINED_FUNCTION_8_1();
  sub_1CA2BBC74(v29, v30);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_25_1();
LABEL_19:
  sub_1CA2BBC74(v31, v32);
LABEL_20:
  v36 = v1[4] == v0[4] && v1[5] == v0[5];
  if (v36 || (sub_1CA94D7F8() & 1) != 0)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
    v37 = v1[6];
    v38 = v0[6];
    if (sub_1CA94CFD8())
    {
      sub_1CA2B642C(v1[7], v0[7]);
      if (v39)
      {
        v40 = *(type metadata accessor for AutoShortcutAppSection() + 32);
        sub_1CA948CE8();
      }
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_70_2();
}

void AutoShortcutAppSection.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0;
  v3 = v2;
  if (v0[1])
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = *v0;
    MEMORY[0x1CCAA2780](1);
    sub_1CA94C458();
    sub_1CA94C458();
  }

  else
  {
    MEMORY[0x1CCAA2780](0);
  }

  v7 = v0[4];
  v8 = v0[5];
  sub_1CA94C458();
  v9 = v0[6];
  sub_1CA94CFE8();
  sub_1CA2BB7D0(v3, v1[7]);
  LODWORD(v9) = *(type metadata accessor for AutoShortcutAppSection() + 32);
  sub_1CA948D28();
  sub_1CA277284();
  sub_1CA94C298();
  OUTLINED_FUNCTION_76_0();
}

uint64_t AutoShortcutAppSection.hashValue.getter()
{
  sub_1CA94D918();
  AutoShortcutAppSection.hash(into:)();
  return sub_1CA94D968();
}

uint64_t sub_1CA2B78A8()
{
  sub_1CA94D918();
  AutoShortcutAppSection.hash(into:)();
  return sub_1CA94D968();
}

void sub_1CA2B78E4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E48C(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A60, &qword_1CA981B48);
  OUTLINED_FUNCTION_45_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B798C(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1CA32E48C(v6 + v5, 1);
  v1 = *v2;
  v7 = *(*v2 + 16);
  v8 = (*(*v2 + 24) >> 1) - v7;
  v9 = sub_1CA2BAA48(&v43, *v2 + 40 * v7 + 32, v8, a1);
  if (v9 < v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
LABEL_24:
      *(v1 + 16) = v10 + v3 + 1;
      goto LABEL_7;
    }

    *(v1 + 16) = v13;
  }

  if (v9 != v8)
  {
LABEL_7:

    *v2 = v1;
    return;
  }

LABEL_10:
  if (!v44)
  {
    goto LABEL_7;
  }

  v14 = v44 - 1;
  if (__OFSUB__(v44, 1))
  {
    goto LABEL_26;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < *(v43 + 16))
  {
    v15 = *(v1 + 16);
    v16 = v43 + 40 * v14;
    v17 = *(v16 + 32);
    v18 = *(v16 + 40);
    v19 = *(v16 + 48);
    v20 = *(v16 + 56);
    v21 = *(v16 + 64);
    v22 = *(v16 + 65);
    OUTLINED_FUNCTION_54();
    v24 = v23;
    v26 = v25;
    sub_1CA2BC124();
    v10 = v15;
    v27 = v24;
    v36 = v26 + 25;
    v37 = v26;
LABEL_15:
    v39 = v27;
    v40 = *(v1 + 24) >> 1;
    v38 = v10;
    if (v40 < v10 + 1)
    {
      sub_1CA2E4ABC();
      v10 = v38;
      v27 = v39;
      v1 = v35;
      v40 = *(v35 + 24) >> 1;
    }

    v3 = 0;
    v28 = 40 * v10;
    v29 = (v36 + 40 * v27);
    for (i = -1; ; --i)
    {
      if (v10 + v3 >= v40)
      {
        *(v1 + 16) = v10 + v3;
        v27 -= v3;
        v10 += v3;
        goto LABEL_15;
      }

      v31 = v1 + v28;
      *(v31 + 32) = v42;
      *(v31 + 40) = v41;
      *(v31 + 48) = v19;
      *(v31 + 56) = v20;
      *(v31 + 64) = v21;
      *(v31 + 65) = v22 & 1;
      if (v27 == v3)
      {
        goto LABEL_24;
      }

      if (v27 + i >= *(v37 + 16))
      {
        break;
      }

      v32 = *(v29 - 33);
      v33 = *(v29 - 25);
      v19 = *(v29 - 17);
      v20 = *(v29 - 9);
      v21 = *(v29 - 1);
      v34 = *v29;
      v29 -= 40;
      v22 = v34;
      OUTLINED_FUNCTION_54();
      sub_1CA2BC124();
      v10 = v38;
      v27 = v39;
      ++v3;
      v28 += 40;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
}

void sub_1CA2B7CFC()
{
  OUTLINED_FUNCTION_77_1();
  v4 = OUTLINED_FUNCTION_55_0(v3);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  v5(v4, 1);
  v11 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v11 + 24) >> 1) - *(v11 + 16) < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v9);
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v11;
    OUTLINED_FUNCTION_76_0();
    return;
  }

  v12 = *(v11 + 16);
  v8 = __OFADD__(v12, v0);
  v13 = v12 + v0;
  if (!v8)
  {
    *(v11 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B7DD0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E4EC(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A40, &qword_1CA981B28);
  OUTLINED_FUNCTION_45_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B7EA0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E51C(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B7F60(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E54C(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B7FF4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA274DD0(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B80DC()
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  v5 = _s17ControlFlowBranchVMa(0);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438E8, &qword_1CA9819D8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - v21;
  v23 = *(v4 + 16);
  v24 = *(*v0 + 16);
  if (__OFADD__(v24, v23))
  {
    __break(1u);
    goto LABEL_10;
  }

  v51 = v20;
  v52 = v5;
  sub_1CA32E57C(v24 + v23, 1);
  v2 = *v0;
  v1 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v5 = *(v8 + 72);
  v25 = *(*v0 + 16);
  v26 = (*(*v0 + 24) >> 1) - v25;
  v27 = sub_1CA2BB06C(&v53, *v0 + v1 + v5 * v25, v26, v4);
  if (v27 < v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v27)
  {
    v30 = *(v2 + 16);
    v31 = __OFADD__(v30, v27);
    v32 = v30 + v27;
    if (v31)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v2 + 16) = v32;
  }

  if (v27 != v26)
  {
    sub_1CA28A224();
LABEL_8:
    *v0 = v2;
    OUTLINED_FUNCTION_36();
    return;
  }

LABEL_11:
  v26 = *(v2 + 16);
  v28 = v54;
  v46 = v54;
  v47 = v53;
  v29 = v55;
  v23 = v56;
  v44 = v55;
  if (v57)
  {
    v33 = (v57 - 1) & v57;
    v34 = __clz(__rbit64(v57)) | (v56 << 6);
    v45 = (v55 + 64) >> 6;
LABEL_19:
    OUTLINED_FUNCTION_30_0(*(v47 + 56) + v34 * v5);
    v37 = 0;
LABEL_20:
    v50 = v26;
    __swift_storeEnumTagSinglePayload(v22, v37, 1, v52);
    while (2)
    {
      v38 = v51;
      sub_1CA2BBE68(v22, v51);
      if (__swift_getEnumTagSinglePayload(v38, 1, v52) != 1)
      {
        sub_1CA2BBED8(v38);
        v49 = *(v2 + 24) >> 1;
        if (v49 < v50 + 1)
        {
          sub_1CA2E6984();
          v2 = v43;
          v49 = *(v43 + 24) >> 1;
        }

        v48 = v2 + v1;
        v39 = v52;
        while (1)
        {
          sub_1CA2BBE68(v22, v18);
          if (__swift_getEnumTagSinglePayload(v18, 1, v39) == 1)
          {
            break;
          }

          sub_1CA2BBF40(v18, v13);
          v38 = v50;
          if (v50 >= v49)
          {
            sub_1CA2BC0CC(v13, _s17ControlFlowBranchVMa);
            goto LABEL_38;
          }

          sub_1CA2BBED8(v22);
          sub_1CA2BBF40(v13, v48 + v38 * v5);
          if (!v33)
          {
            while (1)
            {
              v40 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              if (v40 >= v45)
              {
                v33 = 0;
                v42 = 1;
                goto LABEL_34;
              }

              v33 = *(v46 + 8 * v40);
              ++v23;
              if (v33)
              {
                v23 = v40;
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_40;
          }

          v40 = v23;
LABEL_33:
          v41 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          OUTLINED_FUNCTION_30_0(*(v47 + 56) + (v41 | (v40 << 6)) * v5);
          v42 = 0;
LABEL_34:
          v50 = v38 + 1;
          v39 = v52;
          __swift_storeEnumTagSinglePayload(v22, v42, 1, v52);
        }

        sub_1CA2BBED8(v18);
        v38 = v50;
LABEL_38:
        *(v2 + 16) = v38;
        continue;
      }

      break;
    }

LABEL_40:
    sub_1CA2BBED8(v22);
    sub_1CA28A224();
    sub_1CA2BBED8(v38);
    goto LABEL_8;
  }

LABEL_14:
  v45 = (v29 + 64) >> 6;
  while (1)
  {
    v35 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v35 >= ((v29 + 64) >> 6))
    {
      v33 = 0;
      v37 = 1;
      goto LABEL_20;
    }

    v36 = *(v28 + 8 * v35);
    ++v23;
    if (v36)
    {
      v33 = (v36 - 1) & v36;
      v34 = __clz(__rbit64(v36)) | (v35 << 6);
      v23 = v35;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1CA2B8514(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E5AC(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1CA2B85A8(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  v9 = sub_1CA2B8B40(a1);
  v10 = sub_1CA25B418(*v1);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1CA277E18(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_1CA2BB294(&v26, (v3 + 8 * v13 + 32), (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v13, v8);
  if (result < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_7:
    result = sub_1CA28A224();
    *v7 = v2;
    return result;
  }

LABEL_10:
  v3 = *(v3 + 16);
  v4 = v26;
  v5 = v27;
  v6 = v29;
  v24 = v28;
  v8 = v30;
  if (v26 < 0)
  {
LABEL_14:
    if (!sub_1CA94D358())
    {
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    result = swift_dynamicCast();
    v18 = v25;
    goto LABEL_22;
  }

  if (v30)
  {
    v17 = v29;
LABEL_20:
    v19 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = *(*(v26 + 48) + ((v17 << 9) | (8 * v19)));
    result = v18;
  }

  else
  {
    while (1)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_44;
      }

      if (v17 >= ((v28 + 64) >> 6))
      {
        break;
      }

      v8 = *(v27 + 8 * v17);
      ++v6;
      if (v8)
      {
        v6 = v17;
        goto LABEL_20;
      }
    }

    v18 = 0;
    v8 = 0;
  }

  v29 = v6;
  v30 = v8;
LABEL_22:
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (v3 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1CA94C698();
  }

  v2 = *v7;
  v20 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v23 = *v7 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 >= v20)
    {
      *(v23 + 16) = v3;
      goto LABEL_23;
    }

    *(v23 + 32 + 8 * v3++) = v18;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1CA94D358())
    {
      goto LABEL_41;
    }

    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    result = swift_dynamicCast();
    v18 = v25;
LABEL_37:
    if (!v18)
    {
LABEL_41:
      *(v23 + 16) = v3;
      goto LABEL_7;
    }
  }

  if (v8)
  {
LABEL_33:
    v22 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = *(*(v4 + 48) + ((v6 << 9) | (8 * v22)));
    result = v18;
LABEL_34:
    v26 = v4;
    v27 = v5;
    v28 = v24;
    v29 = v6;
    v30 = v8;
    goto LABEL_37;
  }

  while (1)
  {
    v21 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v21 >= ((v24 + 64) >> 6))
    {
      v18 = 0;
      v8 = 0;
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v21);
    ++v6;
    if (v8)
    {
      v6 = v21;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_1CA2B88B4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA32E5C4(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
  OUTLINED_FUNCTION_45_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1CA2B8988()
{
  OUTLINED_FUNCTION_77_1();
  v4 = OUTLINED_FUNCTION_55_0(v3);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(v4, 1);
  v9 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v11 = *(v8(0) - 8);
  if (v10 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v9;
    OUTLINED_FUNCTION_76_0();
    return;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v0);
  v15 = v14 + v0;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1CA2B8A88(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1CA32E5F4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1CA2B8B40(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1CA94D328();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1CA2B8B60(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
      result = sub_1CA94C6C8();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1CA2B8C14(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if (dynamic_cast_existential_0_class_conditional(v6))
  {
    v7 = &unk_1EC443910;
    v8 = &unk_1CA981A00;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
}

uint64_t sub_1CA2B8C74(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA2B92E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CA2B8C94()
{
  v1 = *v0;
  sub_1CA2BA79C();
  *v0 = v2;
}

void sub_1CA2B8CEC()
{
  v1 = *v0;
  sub_1CA2BA79C();
  *v0 = v2;
}

void *sub_1CA2B8D44(void *a1, int64_t a2, char a3)
{
  result = sub_1CA2B95C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CA2B8DA8()
{
  v1 = *v0;
  sub_1CA2BA320();
  *v0 = v2;
}

uint64_t sub_1CA2B8DF8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA2B96DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CA2B8E18()
{
  v1 = *v0;
  sub_1CA2BA79C();
  *v0 = v2;
}

uint64_t sub_1CA2B8EB4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA2B98D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA2B8ED4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA2B99EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA2B8EF4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA2B9B04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CA2B8F14()
{
  v1 = *v0;
  OUTLINED_FUNCTION_43_1();
  sub_1CA2BA79C();
  *v0 = v2;
}

void sub_1CA2B8F5C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_42_1();
  sub_1CA2BA79C();
  *v0 = v2;
}

uint64_t sub_1CA2B8FA4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA2B9F6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA2B8FC4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA2BA058(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CA2B8FE4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA2BA168(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CA2B9004()
{
  v1 = *v0;
  sub_1CA2BA260();
  *v0 = v2;
}

void sub_1CA2B9024()
{
  v1 = *v0;
  sub_1CA2BA320();
  *v0 = v2;
}

void sub_1CA2B9070()
{
  v1 = *v0;
  sub_1CA27B64C();
  *v0 = v2;
}

uint64_t sub_1CA2B9090(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1CA2BA3F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CA2B90B0()
{
  v1 = *v0;
  sub_1CA2BA79C();
  *v0 = v2;
}

void sub_1CA2B9108()
{
  v1 = *v0;
  sub_1CA2BA5C4();
  *v0 = v2;
}

void *sub_1CA2B9128(void *a1, int64_t a2, char a3)
{
  result = sub_1CA2BA684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CA2B9148()
{
  v1 = *v0;
  sub_1CA2BA79C();
  *v0 = v2;
}

void sub_1CA2B91A0()
{
  v1 = *v0;
  sub_1CA2BA79C();
  *v0 = v2;
}

void sub_1CA2B91F8()
{
  OUTLINED_FUNCTION_39_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443930, &qword_1CA981A28);
      v8 = OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_5_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA43F004(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447350, &unk_1CA981A30);
    OUTLINED_FUNCTION_24_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1CA2B92E8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A50, &qword_1CA986840);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1CA26E4B4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1CA2B93F8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439D8, &unk_1CA981AD0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580) - 8) + 80);
  if (v5)
  {
    sub_1CA270D10();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1CA2B95C4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A90, &qword_1CA981B78);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1CA278E60(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A98, &unk_1CA981B80);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA2B96DC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_1CA2B8C14(&qword_1EC443A70, &unk_1CA9843A0, &qword_1EC443A78, &qword_1CA981B60);
      v11 = *(v10 + 52);
      v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      *(v13 + 16) = v8;
      *(v13 + 24) = 2 * ((v14 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1CA440434((a4 + 32), v8, (v13 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v13;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v13 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CA2B97F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_75_0(a1, a2, a3, a4, a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1CA2B98D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1CA440440((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443948, &unk_1CA981A40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA2B99EC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F30, &unk_1CA981AA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1CA440440((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C0, &qword_1CA981A50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA2B9B04(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A38, &qword_1CA981B20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1CA43F0B8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A40, &qword_1CA981B28);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CA2B9D04()
{
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_39_2();
  if (v3)
  {
    OUTLINED_FUNCTION_7_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_22_0();
      if (v5)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A10, &unk_1CA9826E0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = _swift_stdlib_malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v13 - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_22;
  }

  v12[2] = v7;
  v12[3] = 2 * ((v13 - v11) / v10);
LABEL_17:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10) - 8) + 80);
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    sub_1CA43F2A4();
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_76_0();
}

void sub_1CA2B9EAC()
{
  OUTLINED_FUNCTION_39_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444090, &unk_1CA981AF0);
      v8 = OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_5_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA43F004(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A00, &qword_1CA987610);
    OUTLINED_FUNCTION_24_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1CA2B9F6C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4439F0, &qword_1CA981AE8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_1CA2729F0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA2BA058(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4439E0, &unk_1CA982680);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1CA440434((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA2BA168(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439B8, &unk_1CA981AB0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 2);
      if (v5)
      {
LABEL_13:
        sub_1CA43F2B8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 2 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CA2BA260()
{
  OUTLINED_FUNCTION_39_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4439C0, &unk_1CA982640);
      v8 = OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_5_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA27B60C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444000, &unk_1CA981AC0);
    OUTLINED_FUNCTION_24_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1CA2BA320()
{
  OUTLINED_FUNCTION_65_0();
  if ((v5 & 1) == 0)
  {
    v9 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(v0 + 16);
    if (v9 <= v12)
    {
      v13 = *(v0 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_75_0(v3, v4, v5, v6, v7, v8);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v12, v14 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v10)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1CA2BA3F0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_1CA2B8C14(&qword_1EC443900, &qword_1CA9819F0, &qword_1EC443908, &qword_1CA9819F8);
      v11 = *(v10 + 52);
      v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      *(v13 + 16) = v8;
      *(v13 + 24) = 2 * ((v14 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1CA440434((a4 + 32), v8, (v13 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v13;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v13 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CA2BA504()
{
  OUTLINED_FUNCTION_39_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443990, &qword_1CA981A88);
      v8 = OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_5_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA278E64(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1CA2BA5C4()
{
  OUTLINED_FUNCTION_39_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443980, &qword_1CA981A78);
      v8 = OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_5_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_14_3();
        sub_1CA278E60(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F70, &qword_1CA981A80);
    OUTLINED_FUNCTION_24_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1CA2BA684(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443960, &qword_1CA981A58);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1CA278E60(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1CA2BA79C()
{
  OUTLINED_FUNCTION_37_0();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_7_1();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_22_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_3();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_75_0(v0, v1, v2, v3, v4, v5);
  v17 = *(v9(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(*(v9(0) - 8) + 80);
  OUTLINED_FUNCTION_68_0();
  if (v11)
  {
    v7(v10 + v24, v15, v20 + v24);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA2BA934()
{
  OUTLINED_FUNCTION_72();
  v3 = v1 + 64;
  v2 = *(v1 + 64);
  v4 = -(-1 << *(v1 + 32));
  OUTLINED_FUNCTION_12_2();
  v8 = v7 & v6;
  if (!v9)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_56_0(v11);
    OUTLINED_FUNCTION_70_2();
    return;
  }

  v10 = v5;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    v15 = (v13 - v14) >> 6;
    while (v12 < v10)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v17 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v8 = *(v3 + 8 * v17);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v11;
LABEL_12:
      OUTLINED_FUNCTION_18_4();
      if (v18)
      {
        sub_1CA94C218();
        swift_unknownObjectRetain();
        v11 = v17;
        goto LABEL_17;
      }

      v0 += 24;
      sub_1CA94C218();
      swift_unknownObjectRetain();
      v12 = v16;
      v11 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CA2BAA48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    v10 = a3 - 1;
    for (i = (a4 + 40 * v6 + 25); ; i -= 40)
    {
      v12 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v12 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = *(i - 25);
      v14 = *(i - 17);
      v15 = *(i - 9);
      v16 = *(i - 1);
      v17 = *i;
      *v8 = *(i - 33);
      *(v8 + 8) = v13;
      *(v8 + 16) = v14;
      *(v8 + 24) = v15;
      *(v8 + 32) = v16;
      *(v8 + 33) = v17;
      if (!(v10 + v9))
      {
        sub_1CA2BC124();
        v12 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 40;
      result = sub_1CA2BC124();
      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1CA2BAB3C()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_33_0();
  v4 = *(v1 + 56);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_4_2();
  if (!v7)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_11_4(v13);
    OUTLINED_FUNCTION_36();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_67_0();
    while (v10 < v8)
    {
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v3)
          {
            OUTLINED_FUNCTION_61_0();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_66_0();
        }

        __break(1u);
        break;
      }

      v11 = v9;
      OUTLINED_FUNCTION_21_3();
      if (v12)
      {
        sub_1CA94C218();
        v13 = v11;
        goto LABEL_17;
      }

      v0 += 16;
      sub_1CA94C218();
      OUTLINED_FUNCTION_64_0();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1CA2BAC10()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1CA94B1C8();
  v44 = OUTLINED_FUNCTION_1_0(v8);
  v45 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v35 - v14;
  v15 = *(v1 + 64);
  v41 = -1 << *(v1 + 32);
  OUTLINED_FUNCTION_12_2();
  v19 = v18 & v17;
  if (!v5)
  {
    v22 = 0;
LABEL_19:
    v34 = ~v41;
    *v7 = v1;
    v7[1] = v16;
    v7[2] = v34;
    v7[3] = v22;
    v7[4] = v19;
    OUTLINED_FUNCTION_36();
    return;
  }

  v20 = v3;
  if (!v3)
  {
    v22 = 0;
    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v36 = v7;
    v37 = v16;
    v21 = 0;
    v22 = 0;
    v23 = (63 - v41) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    v40 = v20;
    while (v21 < v20)
    {
      if (__OFADD__(v21, 1))
      {
        goto LABEL_23;
      }

      if (!v19)
      {
        v16 = v37;
        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v24 >= v23)
          {
            v19 = 0;
            v7 = v36;
            goto LABEL_19;
          }

          v19 = *(v37 + 8 * v24);
          ++v22;
          if (v19)
          {
            v46 = v21 + 1;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v46 = v21 + 1;
      v24 = v22;
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v1;
      v27 = *(v1 + 56);
      v29 = v44;
      v28 = v45;
      v30 = *(v45 + 72);
      v31 = v43;
      (*(v45 + 16))(v43, v27 + v30 * (v25 | (v24 << 6)), v44);
      v32 = *(v28 + 32);
      v33 = v42;
      v32(v42, v31, v29);
      v32(v5, v33, v29);
      v20 = v40;
      v21 = v46;
      if (v46 == v40)
      {
        v22 = v24;
        v7 = v36;
        v16 = v37;
        v1 = v26;
        goto LABEL_19;
      }

      v5 += v30;
      v22 = v24;
      v1 = v26;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

void sub_1CA2BAE84()
{
  OUTLINED_FUNCTION_72();
  v3 = v1 + 64;
  v2 = *(v1 + 64);
  v4 = -(-1 << *(v1 + 32));
  OUTLINED_FUNCTION_12_2();
  v8 = v7 & v6;
  if (!v9)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_56_0(v11);
    OUTLINED_FUNCTION_70_2();
    return;
  }

  v10 = v5;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    v15 = (v13 - v14) >> 6;
    while (v12 < v10)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v17 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v8 = *(v3 + 8 * v17);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v11;
LABEL_12:
      OUTLINED_FUNCTION_18_4();
      if (v18)
      {
        sub_1CA94C218();
        sub_1CA94C218();
        v11 = v17;
        goto LABEL_17;
      }

      v0 += 24;
      sub_1CA94C218();
      sub_1CA94C218();
      v12 = v16;
      v11 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1CA2BAF98()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_33_0();
  v4 = *(v1 + 56);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_4_2();
  if (!v7)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_11_4(v15);
    OUTLINED_FUNCTION_36();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_67_0();
    while (v10 < v8)
    {
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v3)
          {
            OUTLINED_FUNCTION_61_0();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_66_0();
        }

        __break(1u);
        break;
      }

      v11 = v9;
      OUTLINED_FUNCTION_26_2();
      if (v13)
      {
        v16 = v12;
        v15 = v11;
        goto LABEL_17;
      }

      v0 += 8;
      v14 = v12;
      OUTLINED_FUNCTION_64_0();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CA2BB06C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = _s17ControlFlowBranchVMa(0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - v14;
  v32 = a4;
  v18 = *(a4 + 64);
  v17 = a4 + 64;
  v16 = v18;
  v19 = -1 << *(v17 - 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  if (!a2)
  {
    v23 = 0;
    a3 = 0;
LABEL_21:
    *a1 = v32;
    a1[1] = v17;
    a1[2] = ~v19;
    a1[3] = v23;
    a1[4] = v21;
    return a3;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = -1 << *(v17 - 32);
    v30 = a1;
    v22 = 0;
    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (1)
    {
      if (v22 >= a3)
      {
        goto LABEL_24;
      }

      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_25;
      }

      if (!v21)
      {
        while (1)
        {
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v26 >= v24)
          {
            v21 = 0;
            a3 = v22;
            goto LABEL_19;
          }

          v21 = *(v17 + 8 * v26);
          ++v23;
          if (v21)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v26 = v23;
LABEL_15:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = *(v31 + 72);
      sub_1CA2BC070(*(v32 + 56) + v28 * (v27 | (v26 << 6)), v12, _s17ControlFlowBranchVMa);
      sub_1CA2BBF40(v12, v15);
      result = sub_1CA2BBF40(v15, a2);
      if (v25 == a3)
      {
        break;
      }

      a2 += v28;
      v22 = v25;
      v23 = v26;
    }

    v23 = v26;
LABEL_19:
    v19 = v29;
    a1 = v30;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1CA2BB294(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    sub_1CA28D4F8();
    result = sub_1CA94C948();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v17 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v11 = v19 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v21 = v7;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_1CA94D358())
        {
          goto LABEL_25;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v20;
        v7 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CA2BB48C()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_33_0();
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_4_2();
  if (!v7)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_11_4(v13);
    OUTLINED_FUNCTION_36();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_67_0();
    while (v10 < v8)
    {
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v3)
          {
            OUTLINED_FUNCTION_61_0();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_66_0();
        }

        __break(1u);
        break;
      }

      v11 = v9;
      OUTLINED_FUNCTION_21_3();
      if (v12)
      {
        sub_1CA94C218();
        v13 = v11;
        goto LABEL_17;
      }

      v0 += 16;
      sub_1CA94C218();
      OUTLINED_FUNCTION_64_0();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1CA2BB560()
{
  OUTLINED_FUNCTION_71_0();
  v2 = v0 + 64;
  v1 = *(v0 + 64);
  v3 = -1 << *(v0 + 32);
  OUTLINED_FUNCTION_12_2();
  v11 = v10 & v9;
  if (!v5)
  {
    v14 = 0;
LABEL_18:
    *v4 = v7;
    v4[1] = v2;
    v4[2] = ~v8;
    v4[3] = v14;
    v4[4] = v11;
    OUTLINED_FUNCTION_73();
    return;
  }

  if (!v6)
  {
    v14 = 0;
    goto LABEL_18;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v12 = v5;
    v27 = v8;
    v28 = v4;
    v13 = 0;
    v14 = 0;
    v15 = (63 - v8) >> 6;
    v29 = v7;
    while (1)
    {
      if (v13 >= v6)
      {
        goto LABEL_21;
      }

      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      if (!v11)
      {
        while (1)
        {
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            v11 = 0;
            v4 = v28;
            goto LABEL_16;
          }

          v11 = *(v2 + 8 * v17);
          ++v14;
          if (v11)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v17 = v14;
LABEL_12:
      v18 = (*(v7 + 56) + 48 * (__clz(__rbit64(v11)) | (v17 << 6)));
      v19 = v18[1];
      v11 &= v11 - 1;
      v20 = v18[2];
      v21 = v18[3];
      v22 = v18[4];
      v23 = v18[5];
      *v12 = *v18;
      v12[1] = v19;
      v12[2] = v20;
      v12[3] = v21;
      v12[4] = v22;
      v12[5] = v23;
      v24 = v6;
      if (v16 == v6)
      {
        break;
      }

      v12 += 6;
      v25 = v22;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      v13 = v16;
      v14 = v17;
      v7 = v29;
      v6 = v24;
    }

    v26 = v22;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    v14 = v17;
    v4 = v28;
    v7 = v29;
LABEL_16:
    v8 = v27;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1CA2BB6FC()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_33_0();
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_4_2();
  if (!v7)
  {
    OUTLINED_FUNCTION_51_1();
LABEL_17:
    OUTLINED_FUNCTION_11_4(v15);
    OUTLINED_FUNCTION_36();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_67_0();
    while (v10 < v8)
    {
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v3)
          {
            OUTLINED_FUNCTION_61_0();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_66_0();
        }

        __break(1u);
        break;
      }

      v11 = v9;
      OUTLINED_FUNCTION_26_2();
      if (v13)
      {
        v16 = v12;
        v15 = v11;
        goto LABEL_17;
      }

      v0 += 8;
      v14 = v12;
      OUTLINED_FUNCTION_64_0();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1CA2BB7D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1CCAA2780](v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v4 += 16;
      MEMORY[0x1CCAA2780](v6);
      v7 = v5;
      sub_1CA94CFE8();

      --v3;
    }

    while (v3);
  }
}

void sub_1CA2BB848()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0;
  v2 = type metadata accessor for DrawerAction(0);
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = *(v1 + 16);
  MEMORY[0x1CCAA2780](v11);
  if (v11)
  {
    v12 = (v10 + *(v2 + 28));
    v13 = *(v5 + 80);
    OUTLINED_FUNCTION_68_0();
    v15 = v1 + v14;
    v16 = *(v5 + 72);
    do
    {
      sub_1CA2BC070(v15, v10, type metadata accessor for DrawerAction);
      v17 = *v12;
      v18 = v12[1];
      sub_1CA94C458();
      sub_1CA2BC0CC(v10, type metadata accessor for DrawerAction);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_76_0();
}

uint64_t sub_1CA2BB954(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AutoShortcutAppSection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x1CCAA2780](v8);
  if (v8)
  {
    v10 = 0;
    v11 = *(v3 + 32);
    v25[0] = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v25[1] = v11;
    v12 = *(v4 + 72);
    do
    {
      sub_1CA2BC070(v25[0] + v12 * v10, v7, type metadata accessor for AutoShortcutAppSection);
      if (v7[1])
      {
        v14 = v7[2];
        v13 = v7[3];
        v15 = *v7;
        MEMORY[0x1CCAA2780](1);
        sub_1CA94C458();
        sub_1CA94C458();
      }

      else
      {
        MEMORY[0x1CCAA2780](0);
      }

      v16 = v7[4];
      v17 = v7[5];
      sub_1CA94C458();
      v18 = v7[6];
      sub_1CA94CFE8();
      v19 = v7[7];
      MEMORY[0x1CCAA2780](*(v19 + 16));
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = (v19 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;
          v21 += 16;
          MEMORY[0x1CCAA2780](v23);
          v24 = v22;
          sub_1CA94CFE8();

          --v20;
        }

        while (v20);
      }

      ++v10;
      sub_1CA948D28();
      sub_1CA277284();
      sub_1CA94C298();
      result = sub_1CA2BC0CC(v7, type metadata accessor for AutoShortcutAppSection);
    }

    while (v10 != v8);
  }

  return result;
}

void sub_1CA2BBB6C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = sub_1CA25B418(v1);
  MEMORY[0x1CCAA2780](v2);
  v3 = sub_1CA25B418(v0);
  if (v3)
  {
    v4 = v3;
    if (v3 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1CCAA22D0](i, v0);
        }

        else
        {
          v6 = *(v0 + 8 * i + 32);
        }

        v7 = v6;
        sub_1CA94CFE8();
      }
    }
  }
}

uint64_t sub_1CA2BBC0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCAA2780](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x1CCAA27B0](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1CA2BBC74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1CA2BBCBC()
{
  result = qword_1EC4438D0;
  if (!qword_1EC4438D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4438D0);
  }

  return result;
}

unint64_t sub_1CA2BBD14()
{
  result = qword_1EC4438D8;
  if (!qword_1EC4438D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4438D8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA2BBDC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA2BBE10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1CA2BBE68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438E8, &qword_1CA9819D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2BBED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438E8, &qword_1CA9819D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA2BBF40(uint64_t a1, uint64_t a2)
{
  v4 = _s17ControlFlowBranchVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2BBFA4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_7(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_47_0();
  }

  else
  {
    OUTLINED_FUNCTION_48();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_17();
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA2BC028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA2BC070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_52(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_23();
  v8(v7);
  return a2;
}

uint64_t sub_1CA2BC0CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id OUTLINED_FUNCTION_47_0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void sub_1CA2BC194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1CA271524();
    v5 = sub_1CA2BE090(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v1;
    v25 = v2 + 56;
    v26 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v27 = v3;
        v9 = *(*(v2 + 48) + 8 * v5);
        v10 = sub_1CA94C3A8();
        v12 = v11;
        v13 = *(v29 + 16);
        if (v13 >= *(v29 + 24) >> 1)
        {
          sub_1CA271524();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v25;
        v2 = v26;
        v15 = 1 << *(v26 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v25 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v26 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1CA2974B8(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1CA2974B8(v5, v27, 0);
        }

LABEL_19:
        if (++v6 == v24)
        {
          return;
        }

        v4 = 0;
        v3 = *(v26 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1CA2BC3E0(uint64_t a1)
{
  v2 = v1;
  v4 = v1[2];
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDB9F690;
  v6 = sub_1CA94C368();
  v7 = sub_1CA94C368();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_1CA94C3A8();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = @"Key";
  v13 = *(a1 + 48);
  v14 = MEMORY[0x1E69E6158];
  *(inited + 40) = *(a1 + 40);
  *(inited + 48) = v13;
  *(inited + 64) = v14;
  *(inited + 72) = @"Label";
  *(inited + 80) = v9;
  *(inited + 88) = v11;
  *(inited + 104) = v14;
  *(inited + 112) = @"DatePickerMode";
  v15 = @"Key";
  sub_1CA94C218();
  v16 = @"Label";
  v17 = @"DatePickerMode";
  v18 = WFDatePickerModeFromCalendarUnits(v4);
  v19 = sub_1CA94C3A8();
  v21 = v20;

  *(inited + 120) = v19;
  *(inited + 128) = v21;
  *(inited + 144) = v14;
  *(inited + 152) = @"DisallowedVariableTypes";
  v22 = @"DisallowedVariableTypes";
  if (RowTemplateParameterOptions.variablesDisabled.getter())
  {
    sub_1CA25B3D0(0, &qword_1EC443AC8, off_1E836E208);
    v23 = [swift_getObjCClassFromMetadata() allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA2BE130(&qword_1EC441A60, type metadata accessor for WFVariableType);
    v24 = sub_1CA94C8F8();

    sub_1CA2BC194(v24);
    v26 = v25;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = v26;
  _s3__C3KeyVMa_0(0);
  sub_1CA2BE130(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  OUTLINED_FUNCTION_7_6();
  sub_1CA94C1E8();
  v27 = sub_1CA2F864C();
  v28 = &unk_1CA981000;
  if (v2[5])
  {
    v29 = v2[4];
    sub_1CA2BDFE4(a1, v61, &unk_1EC4456C0, &qword_1CA987A30);
    if (v62)
    {
      v30 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v31 = OUTLINED_FUNCTION_8_2(v30);
      v33 = v32(v31);
      __swift_destroy_boxed_opaque_existential_0(v61);
      if (v33)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_5_3();
        v34 = swift_dynamicCastObjCClass();
        v28 = &unk_1CA981000;
        if (v34 && (v35 = [v34 value]) != 0)
        {
          v36 = v35;
          v37 = swift_initStackObject();
          *(v37 + 16) = xmmword_1CA981310;
          *(v37 + 32) = @"MaximumValue";
          *(v37 + 64) = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
          *(v37 + 40) = v36;
          v38 = @"MaximumValue";
          v39 = v36;
          OUTLINED_FUNCTION_7_6();
          sub_1CA94C1E8();
          OUTLINED_FUNCTION_7_6();
          v40 = sub_1CA94C1A8();

          v41 = [v27 definitionByAddingEntriesInDictionary_];

          v28 = &unk_1CA981000;
          swift_unknownObjectRelease();
          v27 = v41;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v28 = &unk_1CA981000;
      }
    }

    else
    {
      sub_1CA27080C(v61, &unk_1EC4456C0, &qword_1CA987A30);
    }
  }

  if (v2[7])
  {
    v42 = v2[6];
    sub_1CA2BDFE4(a1, v61, &unk_1EC4456C0, &qword_1CA987A30);
    if (v62)
    {
      v43 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v44 = OUTLINED_FUNCTION_8_2(v43);
      v46 = v45(v44);
      __swift_destroy_boxed_opaque_existential_0(v61);
      if (v46)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_5_3();
        v47 = swift_dynamicCastObjCClass();
        if (v47 && (v48 = [v47 value]) != 0)
        {
          v49 = v48;
          v50 = swift_initStackObject();
          *(v50 + 16) = v28[49];
          *(v50 + 32) = @"MinimumValue";
          *(v50 + 64) = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
          *(v50 + 40) = v49;
          v51 = @"MinimumValue";
          v52 = v49;
          OUTLINED_FUNCTION_7_6();
          sub_1CA94C1E8();
          OUTLINED_FUNCTION_7_6();
          v53 = sub_1CA94C1A8();

          v54 = [v27 definitionByAddingEntriesInDictionary_];

          swift_unknownObjectRelease();
          v27 = v54;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1CA27080C(v61, &unk_1EC4456C0, &qword_1CA987A30);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v55 = swift_initStackObject();
  *(v55 + 16) = v28[49];
  v56 = *v2;
  v57 = v2[1];
  *(v55 + 32) = v56;
  *(v55 + 40) = v57;
  v58 = objc_allocWithZone(WFDatePickerParameter);
  sub_1CA94C218();
  *(v55 + 48) = [v58 initWithDefinition_];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v59 = sub_1CA94C1E8();

  return v59;
}

uint64_t sub_1CA2BCAE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CA2BCB0C, 0, 0);
}

uint64_t sub_1CA2BCB0C()
{
  if (*(v0[2] + 16) && (v1 = v0[4], v2 = *v1, v3 = v1[1], v4 = sub_1CA271BF8(), (v5 & 1) != 0))
  {
    v6 = *(*(v0[2] + 56) + 8 * v4);
    v0[5] = v6;
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v7 = swift_task_alloc();
      v0[6] = v7;
      *v7 = v0;
      v7[1] = sub_1CA2BCCCC;
      v8 = v0[3];

      return sub_1CA32B590(v8);
    }

    else
    {
      sub_1CA2A741C();
      swift_allocError();
      *v11 = v6;
      *(v11 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();
      v12 = v0[5];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v13();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v10(0);
  }
}

uint64_t sub_1CA2BCCCC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;
  *(v2 + 64) = v0;

  if (v0)
  {
    v7 = sub_1CA2BCF10;
  }

  else
  {
    v7 = sub_1CA2BCDD0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA2BCDD0()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    v6 = *(v0 + 40);
    swift_unknownObjectRelease();
    v4 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v2 = swift_dynamicCastObjCClass();
  v3 = *(v0 + 40);
  if (v2)
  {
    v4 = v2;
    v5 = *(v0 + 40);
    swift_unknownObjectRelease();
LABEL_5:
    v7 = *(v0 + 40);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_4();

    return v8(v4);
  }

  sub_1CA2A741C();
  swift_allocError();
  v11 = v10;
  *(v10 + 24) = swift_getObjectType();
  *v11 = v1;
  *(v11 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  v12 = *(v0 + 40);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v13();
}

uint64_t sub_1CA2BCF10()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA2BCF74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  *(v2 + 64) = *(a2 + 16);
  *(v2 + 24) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0) - 8) + 64);
  *(v2 + 32) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_1CA2BD05C;

  return sub_1CA2BCAE8(v3, v4);
}

uint64_t sub_1CA2BD05C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v1;
  *(v2 + 48) = v6;
  *(v2 + 56) = v0;

  if (v0)
  {
    v7 = sub_1CA2BD3A4;
  }

  else
  {
    v7 = sub_1CA2BD160;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA2BD160()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    v6 = *(v0 + 32);
    v4 = sub_1CA948CB8();
    goto LABEL_5;
  }

  v2 = *(v0 + 24) + 15;
  v3 = swift_task_alloc();
  v4 = sub_1CA948CB8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_1CA2BE044();
  sub_1CA94D6D8();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  v6 = *(v0 + 32);
  if (EnumTagSinglePayload == 1)
  {

LABEL_5:
    v7 = v6;
    v8 = 1;
    goto LABEL_7;
  }

  (*(*(v4 - 8) + 32))(*(v0 + 32), v3, v4);

  v7 = v6;
  v8 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v4);
  v9 = *(v0 + 32);
  v10 = *(v0 + 24) + 15;
  v11 = swift_task_alloc();
  sub_1CA2BDFE4(v9, v11, &qword_1EC4466D0, &qword_1CA991AA0);
  sub_1CA948CB8();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) != 1)
  {
    v12 = sub_1CA948C58();
    (*(*(v4 - 8) + 8))(v11, v4);
  }

  v13 = *(v0 + 32);
  v14 = *(v0 + 64);
  v15 = *(v0 + 16);

  v16 = &selRef_setAnotherDate_;
  if (!v14)
  {
    v16 = &selRef_setDate_;
  }

  [v15 *v16];

  sub_1CA27080C(v13, &qword_1EC4466D0, &qword_1CA991AA0);

  OUTLINED_FUNCTION_5();

  return v17();
}

uint64_t sub_1CA2BD3A4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_5();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1CA2BD400()
{
  OUTLINED_FUNCTION_0();
  *(v1 + 16) = v0;
  *(v1 + 24) = *v2;
  v3 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v4 = *(MEMORY[0x1E6996C50] + 4);
  v5 = swift_task_alloc();
  *(v1 + 40) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2BD4C0;

  return MEMORY[0x1EEDF81A0](v3);
}

uint64_t sub_1CA2BD4C0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v1;
  *(v2 + 48) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v7(0);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA2BD5F0, 0, 0);
  }
}

uint64_t sub_1CA2BD5F0()
{
  OUTLINED_FUNCTION_0();
  if (v0[6])
  {
    v1 = v0[6];
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v2 = swift_dynamicCastObjCClass();
    v0[7] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[8] = v3;
      *v3 = v0;
      v3[1] = sub_1CA2BD6F0;
      v5 = v0[3];
      v4 = v0[4];
      v6 = v0[2];

      return sub_1CA2BCAE8(v5, v4);
    }

    swift_unknownObjectRelease_n();
  }

  OUTLINED_FUNCTION_2_4();

  return v8(0);
}

uint64_t sub_1CA2BD6F0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 80) = v0;

  if (v0)
  {
    v7 = sub_1CA2BD8A0;
  }

  else
  {
    v7 = sub_1CA2BD7F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA2BD7F4()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = WFDateComparisonResultForComparisonOperator(4uLL, *(v0 + 56), *(v0 + 72), 0, *(*(v0 + 16) + 24), 0);
  }

  else
  {
    v3 = 0;
    v4 = *(v0 + 48);
  }

  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_2_4();

  return v5(v3);
}

uint64_t sub_1CA2BD8A0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 48);
  swift_unknownObjectRelease_n();
  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA2BD904(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  v7 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v7;
  v8 = swift_task_alloc();
  *(v3 + 80) = v8;
  *v8 = v3;
  v8[1] = sub_1CA2BD9BC;

  return sub_1CA2BCF74(a1, a2);
}

uint64_t sub_1CA2BD9BC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 80);
  v5 = *v0;

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA2BDAA4()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  v3 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v3;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v4[1] = sub_1CA2BDB5C;

  return sub_1CA2BD400();
}

uint64_t sub_1CA2BDB5C()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 80);
  v9 = *v1;

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

BOOL sub_1CA2BDC78(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1CA2BDCA8(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443AD8, &qword_1CA981BC8);
  v4 = OUTLINED_FUNCTION_52(v32);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = sub_1CA94ACC8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  v19 = *(v12 + 16);
  v31 = v2;
  v19(v16, v2, v11);
  v20 = MEMORY[0x1E69DAEB0];
  v29 = sub_1CA2BE130(&qword_1EC4468A0, MEMORY[0x1E69DAEB0]);
  sub_1CA94D278();
  v21 = v20;
  v22 = v32;
  sub_1CA2BE130(&qword_1EC443AE0, v21);
  v30 = a2;
  v23 = sub_1CA94C358();
  v24 = *(v22 + 48);
  *v10 = (v23 & 1) == 0;
  if (v23)
  {
    (*(v12 + 32))(&v10[v24], v18, v11);
  }

  else
  {
    (*(v12 + 8))(v18, v11);
    v25 = v30;
    v19(&v10[v24], v30, v11);
    v19(v16, v25, v11);
    sub_1CA94D288();
  }

  v26 = v33;
  sub_1CA2BE174(v10, v33);
  v27 = *v26;
  (*(v12 + 32))(v34, &v26[*(v22 + 48)], v11);
  return v27;
}

id WFDatePickerModeFromCalendarUnits(__int16 a1)
{
  v1 = *MEMORY[0x1E69E0FF8];
  v2 = *MEMORY[0x1E69E1008];
  if ((a1 & 0xE0) != 0)
  {
    v1 = *MEMORY[0x1E69E1000];
  }

  else
  {
    v2 = *MEMORY[0x1E69E0FF8];
  }

  if ((a1 & 0x201C) != 0)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CA2BDFE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_52(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1CA2BE044()
{
  result = qword_1EC443AD0;
  if (!qword_1EC443AD0)
  {
    sub_1CA948CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443AD0);
  }

  return result;
}

uint64_t sub_1CA2BE090(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1CA94D2B8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1CA2BE0D0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1CA94D2E8();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_1CA94D2B8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1CA2BE130(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA2BE174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443AD8, &qword_1CA981BC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CA2BE1F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1CA2BE238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1CA2BE2DC()
{
  v157 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA99E4C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v166 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  *&v167 = v12;
  v13 = &v144 - v166;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v162 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v164 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v165 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v144 - v165;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v161 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  *&v160 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v156 = xmmword_1CA97EDF0;
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionAttribution";
  v22 = @"Description";
  v23 = @"DescriptionAttribution";
  v158 = sub_1CA94C438();
  v155 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v159 = &v144;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v144 - v166;
  sub_1CA948D98();
  v29 = v162;
  v30 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v163 = inited;
  v31 = v165;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v158, v155, v25, v27, 0, 0, v28, &v144 - v31);
  v33 = v161;
  *(v21 + 64) = v161;
  *(v21 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v158 = sub_1CA94C438();
  v155 = v35;
  v36 = sub_1CA94C438();
  v38 = v37;
  v159 = &v144;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v144 - v166;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v158, v155, v36, v38, 0, 0, v39, &v144 - v31);
  *(v21 + 104) = v33;
  *(v21 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v43 = v160;
  v44 = sub_1CA6B3784();
  v45 = v163;
  v163[15] = v44;
  v45[18] = v43;
  v45[19] = @"Discoverable";
  v46 = MEMORY[0x1E69E6370];
  *(v45 + 160) = 0;
  v45[23] = v46;
  v45[24] = @"IconName";
  v45[25] = 0x6D617A616853;
  v45[26] = 0xE600000000000000;
  v45[28] = MEMORY[0x1E69E6158];
  v45[29] = @"InputPassthrough";
  *(v45 + 240) = 0;
  v45[33] = v46;
  v45[34] = @"Name";
  v47 = @"Discoverable";
  v48 = @"IconName";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438();
  v53 = v52;
  v54 = sub_1CA94C438();
  v56 = v55;
  *&v160 = &v144;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v144 - v166;
  sub_1CA948D98();
  v58 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v144 - v165;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  v62 = v163;
  v163[35] = v61;
  v62[38] = v161;
  v62[39] = @"Output";
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v63 = swift_initStackObject();
  v160 = xmmword_1CA981350;
  *(v63 + 16) = xmmword_1CA981350;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 0;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438();
  v158 = v66;
  v67 = sub_1CA94C438();
  v69 = v68;
  v159 = &v144;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v144 - v166;
  sub_1CA948D98();
  v71 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v144 - v165;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v65, v158, v67, v69, 0, 0, v70, v72);
  *(v63 + 168) = v161;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v63 + 192) = &unk_1F49F27E0;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v154 = v76;
  v77 = v163;
  v163[40] = v75;
  v77[43] = v76;
  v77[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v159 = swift_allocObject();
  *(v159 + 1) = xmmword_1CA981360;
  v158 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_allocObject();
  *(v78 + 16) = v160;
  v150 = 0x80000001CA99E620;
  *(v78 + 32) = @"Class";
  *(v78 + 40) = 0xD000000000000011;
  *(v78 + 48) = 0x80000001CA99E620;
  *(v78 + 64) = v74;
  *(v78 + 72) = @"DefaultValue";
  *(v78 + 80) = 1;
  *(v78 + 104) = MEMORY[0x1E69E6370];
  *(v78 + 112) = @"Key";
  v152 = 0xD00000000000001ELL;
  v153 = 0x80000001CA99E640;
  *(v78 + 120) = 0xD00000000000001ELL;
  *(v78 + 128) = 0x80000001CA99E640;
  *(v78 + 144) = v74;
  *(v78 + 152) = @"Label";
  v79 = @"Class";
  v80 = @"DefaultValue";
  v81 = @"Key";
  v82 = @"Label";
  v148 = v79;
  v147 = v80;
  v146 = v81;
  v149 = v82;
  v83 = @"Parameters";
  v84 = sub_1CA94C438();
  v144 = v85;
  v86 = sub_1CA94C438();
  v88 = v87;
  v145 = &v144;
  MEMORY[0x1EEE9AC00](v86);
  v89 = v166;
  sub_1CA948D98();
  v90 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v144 - v165;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v84, v144, v86, v88, 0, 0, &v144 - v89, v91);
  *(v78 + 184) = v161;
  *(v78 + 160) = v93;
  _s3__C3KeyVMa_0(0);
  v145 = v94;
  v144 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v159[4] = sub_1CA2F864C();
  v95 = swift_allocObject();
  *(v95 + 16) = v160;
  *(v95 + 32) = v148;
  *(v95 + 40) = 0xD000000000000011;
  *(v95 + 48) = v150;
  v96 = MEMORY[0x1E69E6158];
  v97 = v147;
  *(v95 + 64) = MEMORY[0x1E69E6158];
  *(v95 + 72) = v97;
  *(v95 + 80) = 1;
  v98 = v146;
  *(v95 + 104) = MEMORY[0x1E69E6370];
  *(v95 + 112) = v98;
  *(v95 + 120) = 0xD000000000000027;
  *(v95 + 128) = 0x80000001CA99E690;
  v99 = v149;
  *(v95 + 144) = v96;
  *(v95 + 152) = v99;
  v100 = sub_1CA94C438();
  v151 = v101;
  v102 = sub_1CA94C438();
  v104 = v103;
  *&v160 = &v144;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v144 - v89;
  sub_1CA948D98();
  v106 = v162;
  v107 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v144 - v165;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v100, v151, v102, v104, 0, 0, v105, v108);
  *(v95 + 184) = v161;
  *(v95 + 160) = v110;
  sub_1CA94C1E8();
  v111 = sub_1CA2F864C();
  v112 = v159;
  v159[5] = v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v114 = v163;
  v163[45] = v112;
  v114[48] = v113;
  v114[49] = @"ParameterSummary";
  v115 = @"ParameterSummary";
  v116 = sub_1CA94C438();
  v118 = v117;
  v119 = sub_1CA94C438();
  v121 = v120;
  v161 = &v144;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v144 - v166;
  sub_1CA948D98();
  v123 = [v106 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v144 - v165;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, v124);
  v127 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v128 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v129 = v163;
  v163[50] = v127;
  v129[53] = v128;
  v129[54] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v130 = swift_allocObject();
  v167 = xmmword_1CA9813C0;
  *(v130 + 16) = xmmword_1CA9813C0;
  *(v130 + 32) = 0xD00000000000001ALL;
  *(v130 + 40) = 0x80000001CA993FA0;
  v131 = MEMORY[0x1E69E6158];
  *(v130 + 88) = MEMORY[0x1E69E6158];
  *(v130 + 56) = v131;
  *(v130 + 64) = 0xD00000000000001CLL;
  *(v130 + 72) = 0x80000001CA993620;
  v132 = swift_initStackObject();
  *(v132 + 16) = v156;
  *(v132 + 32) = 0xD000000000000011;
  *(v132 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1CA981310;
  v134 = swift_allocObject();
  *(v134 + 16) = v167;
  strcpy((v134 + 32), "WFParameterKey");
  *(v134 + 47) = -18;
  v135 = v153;
  *(v134 + 48) = v152;
  *(v134 + 56) = v135;
  *(v134 + 72) = v131;
  *(v134 + 80) = 0xD000000000000010;
  *(v134 + 88) = 0x80000001CA993570;
  *(v134 + 96) = 1;
  *(v134 + 120) = MEMORY[0x1E69E6370];
  *(v134 + 128) = 0x72756F7365524657;
  *(v134 + 168) = v131;
  *(v134 + 136) = 0xEF7373616C436563;
  *(v134 + 144) = 0xD00000000000001BLL;
  *(v134 + 152) = 0x80000001CA993590;
  v136 = @"RequiredResources";
  *(v133 + 32) = sub_1CA94C1E8();
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v132 + 48) = v133;
  *(v132 + 72) = v137;
  *(v132 + 80) = 0x72756F7365524657;
  *(v132 + 120) = v131;
  *(v132 + 88) = 0xEF7373616C436563;
  *(v132 + 96) = 0xD000000000000019;
  *(v132 + 104) = 0x80000001CA9932D0;
  v138 = sub_1CA94C1E8();
  *(v130 + 120) = v154;
  *(v130 + 96) = v138;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v140 = v163;
  v163[55] = v130;
  v140[58] = v139;
  v140[59] = @"UserInterfaceClasses";
  v141 = @"UserInterfaceClasses";
  v142 = sub_1CA94C1E8();
  v140[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v140[60] = v142;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2BF578()
{
  v0 = sub_1CA94C3A8();
  v2 = v1;
  if (v0 == sub_1CA94C3A8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_3_5();
  }

  return v5 & 1;
}

uint64_t sub_1CA2BF5F0()
{
  OUTLINED_FUNCTION_7_7();
  v3 = "VariableOverrides";
  v4 = v2;
  switch(v5)
  {
    case 1:
      v4 = OUTLINED_FUNCTION_4_3(0x704Fu);
      break;
    case 2:
      v4 = 0x6C6261766F6D6552;
      v0 = 0xE900000000000065;
      break;
    case 3:
      v0 = 0xE700000000000000;
      v4 = 0x6465646E756F42;
      break;
    case 4:
      v0 = 0xE600000000000000;
      v4 = 0x6E6564646948;
      break;
    case 5:
      v0 = 0xE600000000000000;
      v4 = 0x7365756C6156;
      break;
    case 6:
      v4 = 0xD000000000000011;
      v0 = 0x80000001CA99A950;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_5_8();
      break;
    case 2:
      v2 = 0x6C6261766F6D6552;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6465646E756F42;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x6E6564646948;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x7365756C6156;
      break;
    case 6:
      v2 = 0xD000000000000011;
      v6 = (v3 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v2 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_5();
  }

  return v8 & 1;
}

uint64_t sub_1CA2BF790()
{
  OUTLINED_FUNCTION_7_7();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_4_3(0x706Fu);
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_4_3(0x706Fu);
      v0 = 0xEC000000646E615FLL;
      break;
    case 3:
      v0 = 0xE500000000000000;
      v3 = 0x65756C6176;
      break;
    case 4:
      v3 = 0x61765F726568746FLL;
      v0 = 0xEB0000000065756CLL;
      break;
    case 5:
      v0 = 0xE400000000000000;
      v3 = 1953066613;
      break;
    default:
      break;
  }

  v5 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_5_8();
      break;
    case 2:
      OUTLINED_FUNCTION_5_8();
      v5 = 0xEC000000646E615FLL;
      break;
    case 3:
      v5 = 0xE500000000000000;
      v2 = 0x65756C6176;
      break;
    case 4:
      v2 = 0x61765F726568746FLL;
      v5 = 0xEB0000000065756CLL;
      break;
    case 5:
      v5 = 0xE400000000000000;
      v2 = 1953066613;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_3_5();
  }

  return v7 & 1;
}

uint64_t sub_1CA2BF900(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    case 2:
      v5 = 0x776F6C666B726F77;
      v3 = 0xEA00000000006449;
      break;
    case 3:
      v5 = 0xD000000000000010;
      v3 = 0x80000001CA99A760;
      break;
    case 4:
      v5 = 0x456E75527473616CLL;
      v3 = 0xEC000000746E6576;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1701667182;
      break;
    case 2:
      v2 = 0x776F6C666B726F77;
      v6 = 0xEA00000000006449;
      break;
    case 3:
      v2 = 0xD000000000000010;
      v6 = 0x80000001CA99A760;
      break;
    case 4:
      v2 = 0x456E75527473616CLL;
      v6 = 0xEC000000746E6576;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_5();
  }

  return v8 & 1;
}

uint64_t sub_1CA2BFA78(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7469646E6F434657;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x756F706D6F434657;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001CA996FE0;
    }

    else
    {
      v6 = 0xEE0065707954646ELL;
    }
  }

  else
  {
    v5 = 0x7469646E6F434657;
    v6 = 0xEC000000736E6F69;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x756F706D6F434657;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001CA996FE0;
    }

    else
    {
      v2 = 0xEE0065707954646ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CA94D7F8();
  }

  return v8 & 1;
}

uint64_t sub_1CA2BFB90()
{
  sub_1CA94A378();
  sub_1CA2C0C14();
  sub_1CA94C628();
  sub_1CA94C628();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1CA94D7F8();
  }

  return v1 & 1;
}