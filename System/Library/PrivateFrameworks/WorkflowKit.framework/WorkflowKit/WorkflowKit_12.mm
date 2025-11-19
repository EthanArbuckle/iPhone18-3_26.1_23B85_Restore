id sub_1CA38D414()
{
  v28[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v23);
  *(inited + 184) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v25;
  v26 = sub_1CA94C368();
  *(inited + 224) = v1;
  *(inited + 192) = v26;
  *(inited + 200) = 0xD00000000000001ALL;
  *(inited + 208) = 0x80000001CA9AD050;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA38D7C0()
{
  v33 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v32 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v23);
  v26 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v25;
  *(inited + 184) = v26;
  *(inited + 192) = @"Output";
  v27 = @"Output";
  v28 = MEMORY[0x1E69E6158];
  *(inited + 200) = sub_1CA94C1E8();
  *(inited + 224) = v32;
  *(inited + 232) = @"ResidentCompatible";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v29 = @"ResidentCompatible";
  v30 = sub_1CA94C368();
  *(inited + 304) = v28;
  *(inited + 272) = v30;
  *(inited + 280) = 0xD00000000000001ALL;
  *(inited + 288) = 0x80000001CA9938C0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA38DBD0()
{
  v171 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9AD0E0;
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
  v180 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v181 = v12;
  v13 = &v162 - v180;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v177 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v178 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v179 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v162 - v179;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v176 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v174 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA9813C0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v172 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v173 = &v162;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v162 - v180;
  sub_1CA948D98();
  v33 = v177;
  v34 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v175 = inited;
  v35 = &v162 - v179;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v27, v172, v29, v31, 0, 0, v32, v35);
  *(v24 + 64) = v176;
  *(v24 + 72) = @"DescriptionResult";
  v37 = @"DescriptionResult";
  v172 = sub_1CA94C438();
  *&v170 = v38;
  v39 = sub_1CA94C438();
  v41 = v40;
  v173 = &v162;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v162 - v180;
  sub_1CA948D98();
  v43 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = v179;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v172, v170, v39, v41, 0, 0, v42, &v162 - v44);
  v46 = v176;
  *(v24 + 104) = v176;
  *(v24 + 112) = @"DescriptionSummary";
  v47 = @"DescriptionSummary";
  v172 = sub_1CA94C438();
  *&v170 = v48;
  v169 = sub_1CA94C438();
  v50 = v49;
  v173 = &v162;
  MEMORY[0x1EEE9AC00](v169);
  v51 = &v162 - v180;
  sub_1CA948D98();
  v52 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v172, v170, v169, v50, 0, 0, v51, &v162 - v44);
  *(v24 + 144) = v46;
  *(v24 + 120) = v54;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v55 = v174;
  v56 = sub_1CA6B3784();
  v57 = v175;
  v175[20] = v56;
  v57[23] = v55;
  v57[24] = @"Input";
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  v170 = xmmword_1CA981350;
  *(v58 + 16) = xmmword_1CA981350;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  v59 = MEMORY[0x1E69E6370];
  *(v58 + 48) = 1;
  *(v58 + 72) = v59;
  strcpy((v58 + 80), "ParameterKey");
  *(v58 + 93) = 0;
  *(v58 + 94) = -5120;
  *(v58 + 96) = 0x7475706E494657;
  *(v58 + 104) = 0xE700000000000000;
  *(v58 + 120) = MEMORY[0x1E69E6158];
  *(v58 + 128) = 0x6465726975716552;
  *(v58 + 136) = 0xE800000000000000;
  *(v58 + 144) = 1;
  *(v58 + 168) = v59;
  *(v58 + 176) = 0x7365707954;
  *(v58 + 184) = 0xE500000000000000;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 216) = v174;
  *(v58 + 192) = &unk_1F49F7500;
  v60 = @"Input";
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v173 = v62;
  v57[25] = v61;
  v57[28] = v62;
  v57[29] = @"Name";
  v63 = @"Name";
  v64 = sub_1CA94C438();
  v168 = v65;
  v66 = sub_1CA94C438();
  v68 = v67;
  v169 = &v162;
  MEMORY[0x1EEE9AC00](v66);
  v69 = v180;
  sub_1CA948D98();
  v70 = v177;
  v71 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v162 - v179;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v64, v168, v66, v68, 0, 0, &v162 - v69, v72);
  v75 = v175;
  v76 = v176;
  v175[30] = v74;
  v75[33] = v76;
  v75[34] = @"Output";
  v77 = swift_allocObject();
  *(v77 + 16) = v170;
  *(v77 + 32) = 0x75736F6C63736944;
  *(v77 + 40) = 0xEF6C6576654C6572;
  *(v77 + 48) = 0x63696C627550;
  *(v77 + 56) = 0xE600000000000000;
  *(v77 + 72) = MEMORY[0x1E69E6158];
  *(v77 + 80) = 0x656C7069746C754DLL;
  *(v77 + 88) = 0xE800000000000000;
  *(v77 + 96) = 1;
  *(v77 + 120) = MEMORY[0x1E69E6370];
  *(v77 + 128) = 0x614E74757074754FLL;
  *(v77 + 136) = 0xEA0000000000656DLL;
  v78 = @"Output";
  v79 = sub_1CA94C438();
  v169 = v80;
  *&v170 = v79;
  v81 = sub_1CA94C438();
  v83 = v82;
  v172 = &v162;
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948D98();
  v84 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v162 - v179;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 144) = sub_1CA2F9F14(v170, v169, v81, v83, 0, 0, &v162 - v69, v85);
  *(v77 + 168) = v76;
  *(v77 + 176) = 0x7365707954;
  *(v77 + 216) = v174;
  *(v77 + 184) = 0xE500000000000000;
  *(v77 + 192) = &unk_1F49F7530;
  v87 = MEMORY[0x1E69E6158];
  v88 = sub_1CA94C1E8();
  v89 = v175;
  v175[35] = v88;
  v89[38] = v173;
  v89[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v173 = swift_allocObject();
  *(v173 + 1) = xmmword_1CA981360;
  v172 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CA981370;
  *(v90 + 32) = @"Class";
  *(v90 + 40) = 0xD000000000000019;
  *(v90 + 48) = 0x80000001CA9AD210;
  *(v90 + 64) = v87;
  *(v90 + 72) = @"Key";
  *(v90 + 80) = 0x6C666B726F574657;
  *(v90 + 88) = 0xEA0000000000776FLL;
  *(v90 + 104) = v87;
  *(v90 + 112) = @"Label";
  v91 = @"Class";
  v92 = @"Key";
  v93 = @"Label";
  v169 = v91;
  v168 = v92;
  v167 = v93;
  v94 = @"Parameters";
  v95 = sub_1CA94C438();
  v164 = v96;
  v165 = v95;
  v97 = sub_1CA94C438();
  v99 = v98;
  v166 = &v162;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v162 - v180;
  sub_1CA948D98();
  v101 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v162 - v179;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 120) = sub_1CA2F9F14(v165, v164, v97, v99, 0, 0, v100, v102);
  v104 = v176;
  *(v90 + 144) = v176;
  *(v90 + 152) = @"LegacyKey";
  strcpy((v90 + 160), "WFWorkflowName");
  *(v90 + 175) = -18;
  *(v90 + 184) = MEMORY[0x1E69E6158];
  *(v90 + 192) = @"Placeholder";
  v164 = @"Placeholder";
  v105 = @"LegacyKey";
  v165 = sub_1CA94C438();
  v163 = v106;
  v107 = sub_1CA94C438();
  v109 = v108;
  v166 = &v162;
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v162 - v180;
  sub_1CA948D98();
  v111 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v162 - v179;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v165, v163, v107, v109, 0, 0, v110, v112);
  *(v90 + 224) = v104;
  *(v90 + 200) = v114;
  _s3__C3KeyVMa_0(0);
  v166 = v115;
  v165 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v173[4] = sub_1CA2F864C();
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1CA981380;
  *(v116 + 32) = v169;
  *(v116 + 40) = 0xD000000000000019;
  *(v116 + 48) = 0x80000001CA99B030;
  v117 = MEMORY[0x1E69E6158];
  v118 = v168;
  *(v116 + 64) = MEMORY[0x1E69E6158];
  *(v116 + 72) = v118;
  *(v116 + 80) = 0x7475706E494657;
  *(v116 + 88) = 0xE700000000000000;
  v119 = v167;
  *(v116 + 104) = v117;
  *(v116 + 112) = v119;
  v120 = sub_1CA94C438();
  v168 = v121;
  v169 = v120;
  v122 = sub_1CA94C438();
  v167 = v123;
  *&v170 = &v162;
  MEMORY[0x1EEE9AC00](v122);
  v124 = v180;
  sub_1CA948D98();
  v125 = v177;
  v126 = [v177 bundleURL];
  v163 = &v162;
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v162 - v179;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v116 + 120) = sub_1CA2F9F14(v169, v168, v122, v167, 0, 0, &v162 - v124, v127);
  v129 = v164;
  *(v116 + 144) = v176;
  *(v116 + 152) = v129;
  v130 = sub_1CA94C438();
  v168 = v131;
  v169 = v130;
  v132 = sub_1CA94C438();
  v134 = v133;
  *&v170 = &v162;
  MEMORY[0x1EEE9AC00](v132);
  v135 = &v162 - v124;
  sub_1CA948D98();
  v136 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v136);
  v137 = v179;
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v116 + 160) = sub_1CA2F9F14(v169, v168, v132, v134, 0, 0, v135, &v162 - v137);
  *(v116 + 184) = v176;
  *(v116 + 192) = @"Optional";
  *(v116 + 200) = 1;
  v139 = MEMORY[0x1E69E6370];
  *(v116 + 224) = MEMORY[0x1E69E6370];
  *(v116 + 232) = @"ProcessIntoContentItems";
  *(v116 + 264) = v139;
  *(v116 + 240) = 1;
  v140 = @"Optional";
  v141 = @"ProcessIntoContentItems";
  sub_1CA94C1E8();
  v142 = sub_1CA2F864C();
  v143 = v173;
  v173[5] = v142;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v145 = v175;
  v175[40] = v143;
  v145[43] = v144;
  v145[44] = @"ParameterSummary";
  v146 = @"ParameterSummary";
  v147 = sub_1CA94C438();
  v149 = v148;
  v150 = sub_1CA94C438();
  v152 = v151;
  MEMORY[0x1EEE9AC00](v150);
  v153 = &v162 - v180;
  sub_1CA948D98();
  v154 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156 = sub_1CA2F9F14(v147, v149, v150, v152, 0, 0, v153, &v162 - v137);
  v157 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v158 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v159 = v175;
  v175[45] = v157;
  v159[48] = v158;
  v159[49] = @"RequiredResources";
  v159[53] = v174;
  v159[50] = &unk_1F49F7560;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v160 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA38F070()
{
  v167 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9A14D0;
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
  v183 = v12;
  v184 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v153 - v184;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v182 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v181 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v179 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v153 - v179;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v180 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v21 = swift_initStackObject();
  v175 = xmmword_1CA981350;
  *(v21 + 16) = xmmword_1CA981350;
  *(v21 + 32) = 0xD00000000000001DLL;
  *(v21 + 40) = 0x80000001CA99DA80;
  v22 = MEMORY[0x1E69E6370];
  *(v21 + 48) = 1;
  v164 = 0x80000001CA993290;
  v165 = 0xD000000000000010;
  *(v21 + 72) = v22;
  *(v21 + 80) = 0xD000000000000010;
  v172 = 0xD000000000000016;
  *(v21 + 88) = 0x80000001CA993290;
  *(v21 + 96) = 0xD000000000000016;
  *(v21 + 104) = 0x80000001CA9AD320;
  v23 = MEMORY[0x1E69E6158];
  *(v21 + 120) = MEMORY[0x1E69E6158];
  *(v21 + 128) = 1701667150;
  *(v21 + 136) = 0xE400000000000000;
  *(v21 + 144) = 0x74696D736E617254;
  *(v21 + 152) = 0xE800000000000000;
  *(v21 + 168) = v23;
  strcpy((v21 + 176), "TeamIdentifier");
  *(v21 + 216) = v23;
  *(v21 + 191) = -18;
  *(v21 + 192) = 0x3838344346384556;
  *(v21 + 200) = 0xEA00000000003555;
  v24 = @"AppDefinition";
  v25 = sub_1CA94C1E8();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 120) = v25;
  *(inited + 144) = v26;
  *(inited + 152) = @"Discontinued";
  v27 = v26;
  v166 = v26;
  *(inited + 160) = 1;
  *(inited + 184) = v22;
  *(inited + 192) = @"Input";
  v28 = swift_initStackObject();
  v178 = xmmword_1CA9813C0;
  *(v28 + 16) = xmmword_1CA9813C0;
  *(v28 + 32) = 0x656C7069746C754DLL;
  *(v28 + 40) = 0xE800000000000000;
  *(v28 + 48) = 1;
  *(v28 + 72) = v22;
  *(v28 + 80) = 0x6465726975716552;
  *(v28 + 88) = 0xE800000000000000;
  *(v28 + 96) = 1;
  *(v28 + 120) = v22;
  *(v28 + 128) = 0x7365707954;
  *(v28 + 136) = 0xE500000000000000;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v28 + 168) = v161;
  *(v28 + 144) = &unk_1F49F75A0;
  v29 = @"Discontinued";
  v30 = @"Input";
  v31 = MEMORY[0x1E69E6158];
  v32 = sub_1CA94C1E8();
  *(inited + 224) = v27;
  *(inited + 200) = v32;
  v162 = 0xE900000000000065;
  *(inited + 232) = sub_1CA94C368();
  strcpy((inited + 240), "ContentItems");
  *(inited + 253) = 0;
  *(inited + 254) = -5120;
  *(inited + 264) = v31;
  *(inited + 272) = @"Name";
  v33 = @"Name";
  v34 = sub_1CA94C438();
  v36 = v35;
  v37 = sub_1CA94C438();
  v39 = v38;
  v174 = inited;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v153 - v184;
  sub_1CA948D98();
  v41 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v153 - v179;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v34, v36, v37, v39, 0, 0, v40, v42);
  v45 = v174;
  v174[35] = v44;
  v45[38] = v180;
  v45[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_1CA981470;
  v176 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1CA981370;
  v47 = v172;
  *(v46 + 32) = @"Class";
  *(v46 + 40) = v47;
  *(v46 + 48) = 0x80000001CA99C4A0;
  v48 = MEMORY[0x1E69E6158];
  *(v46 + 64) = MEMORY[0x1E69E6158];
  *(v46 + 72) = @"DefaultValue";
  *(v46 + 80) = 0x65746F6D6552;
  *(v46 + 88) = 0xE600000000000000;
  *(v46 + 104) = v48;
  *(v46 + 112) = @"Items";
  v171 = swift_allocObject();
  *(v171 + 1) = xmmword_1CA981360;
  v172 = @"Class";
  v49 = @"Parameters";
  v50 = @"DefaultValue";
  v51 = @"Items";
  v52 = sub_1CA94C438();
  v168 = v53;
  v169 = v52;
  v54 = sub_1CA94C438();
  v160 = v55;
  v170 = &v153;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v153 - v184;
  sub_1CA948D98();
  v57 = v182;
  v58 = [v182 bundleURL];
  v159 = &v153;
  MEMORY[0x1EEE9AC00](v58);
  v59 = v179;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v169, v168, v54, v160, 0, 0, v56, &v153 - v59);
  v62 = v171;
  v171[4] = v61;
  v63 = sub_1CA94C438();
  v168 = v64;
  v169 = v63;
  v65 = sub_1CA94C438();
  v160 = v66;
  v170 = &v153;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v153 - v184;
  sub_1CA948D98();
  v68 = [v57 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v62[5] = sub_1CA2F9F14(v169, v168, v65, v160, 0, 0, v67, &v153 - v59);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v46 + 120) = v62;
  *(v46 + 144) = v70;
  *(v46 + 152) = @"Key";
  strcpy((v46 + 160), "TransmitSaveTo");
  *(v46 + 175) = -18;
  *(v46 + 184) = MEMORY[0x1E69E6158];
  *(v46 + 192) = @"Label";
  v71 = @"Key";
  v72 = @"Label";
  v73 = v71;
  v74 = v72;
  v168 = v73;
  v169 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v78 = sub_1CA94C438();
  v80 = v79;
  v171 = &v153;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v153 - v184;
  sub_1CA948D98();
  v82 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v153 - v179;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v75, v77, v78, v80, 0, 0, v81, v83);
  *(v46 + 224) = v180;
  *(v46 + 200) = v85;
  _s3__C3KeyVMa_0(0);
  v171 = v86;
  v170 = sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v177 + 32) = sub_1CA2F864C();
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1CA981380;
  v158 = 0x80000001CA99B500;
  *(v87 + 32) = v172;
  *(v87 + 40) = 0xD000000000000014;
  *(v87 + 48) = 0x80000001CA99B500;
  v88 = MEMORY[0x1E69E6158];
  v89 = v168;
  *(v87 + 64) = MEMORY[0x1E69E6158];
  *(v87 + 72) = v89;
  v160 = 0x80000001CA9AD400;
  *(v87 + 80) = 0xD000000000000014;
  *(v87 + 88) = 0x80000001CA9AD400;
  v90 = v169;
  *(v87 + 104) = v88;
  *(v87 + 112) = v90;
  v91 = sub_1CA94C438();
  v156 = v92;
  v157 = v91;
  v93 = sub_1CA94C438();
  v95 = v94;
  v159 = &v153;
  MEMORY[0x1EEE9AC00](v93);
  v96 = v184;
  sub_1CA948D98();
  v97 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v153 - v179;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 120) = sub_1CA2F9F14(v157, v156, v93, v95, 0, 0, &v153 - v96, v98);
  v100 = v180;
  *(v87 + 144) = v180;
  *(v87 + 152) = @"Placeholder";
  v159 = @"Placeholder";
  v101 = sub_1CA94C438();
  v155 = v102;
  v156 = v101;
  v154 = sub_1CA94C438();
  v104 = v103;
  v157 = &v153;
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948D98();
  v105 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = v179;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 160) = sub_1CA2F9F14(v156, v155, v154, v104, 0, 0, &v153 - v96, &v153 - v106);
  *(v87 + 184) = v100;
  *(v87 + 192) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1CA981310;
  v109 = @"RequiredResources";
  v110 = MEMORY[0x1E69E6158];
  *(v108 + 32) = sub_1CA94C1E8();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v87 + 200) = v108;
  *(v87 + 224) = v111;
  *(v87 + 232) = @"TextAlignment";
  *(v87 + 264) = v110;
  *(v87 + 240) = 0x7468676952;
  *(v87 + 248) = 0xE500000000000000;
  v157 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v177 + 40) = sub_1CA2F864C();
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1CA981300;
  *(v112 + 32) = @"AutocapitalizationType";
  *(v112 + 40) = 1701736270;
  *(v112 + 48) = 0xE400000000000000;
  v113 = v172;
  *(v112 + 64) = v110;
  *(v112 + 72) = v113;
  *(v112 + 80) = 0xD000000000000014;
  *(v112 + 88) = v158;
  *(v112 + 104) = v110;
  *(v112 + 112) = @"DisableAutocorrection";
  *(v112 + 120) = 1;
  v114 = v168;
  *(v112 + 144) = MEMORY[0x1E69E6370];
  *(v112 + 152) = v114;
  strcpy((v112 + 160), "TransmitPath");
  *(v112 + 173) = 0;
  *(v112 + 174) = -5120;
  *(v112 + 184) = v110;
  *(v112 + 192) = @"KeyboardType";
  *(v112 + 200) = 0x6372616553626557;
  *(v112 + 208) = 0xE900000000000068;
  v115 = v169;
  *(v112 + 224) = v110;
  *(v112 + 232) = v115;
  v116 = @"AutocapitalizationType";
  v117 = @"DisableAutocorrection";
  v118 = @"KeyboardType";
  v172 = sub_1CA94C438();
  v169 = v119;
  v120 = sub_1CA94C438();
  v168 = v121;
  v173 = &v153;
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v153 - v184;
  sub_1CA948D98();
  v123 = v182;
  v124 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = v106;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v112 + 240) = sub_1CA2F9F14(v172, v169, v120, v168, 0, 0, v122, &v153 - v106);
  v127 = v159;
  *(v112 + 264) = v180;
  *(v112 + 272) = v127;
  v172 = sub_1CA94C438();
  v169 = v128;
  v129 = sub_1CA94C438();
  v168 = v130;
  v173 = &v153;
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v153 - v184;
  sub_1CA948D98();
  v132 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v112 + 280) = sub_1CA2F9F14(v172, v169, v129, v168, 0, 0, v131, &v153 - v125);
  v134 = v157;
  *(v112 + 304) = v180;
  *(v112 + 312) = v134;
  v135 = MEMORY[0x1E69E6158];
  *(v112 + 344) = MEMORY[0x1E69E6158];
  *(v112 + 320) = 0x7468676952;
  *(v112 + 328) = 0xE500000000000000;
  sub_1CA94C1E8();
  v136 = sub_1CA2F864C();
  v137 = v177;
  *(v177 + 48) = v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v139 = v174;
  v174[40] = v137;
  v139[43] = v138;
  v139[44] = @"RequiredResources";
  v140 = v161;
  v139[48] = v161;
  v139[45] = &unk_1F49F7650;
  v141 = @"RequiredResources";
  v139[49] = sub_1CA94C368();
  v142 = swift_allocObject();
  *(v142 + 16) = v175;
  v143 = v164;
  *(v142 + 32) = v165;
  *(v142 + 40) = v143;
  *(v142 + 48) = 0xD00000000000001CLL;
  *(v142 + 56) = 0x80000001CA9AD2D0;
  *(v142 + 72) = v135;
  *(v142 + 80) = 0xD000000000000012;
  *(v142 + 88) = 0x80000001CA99DDA0;
  *(v142 + 96) = &unk_1F49F7680;
  *(v142 + 120) = v140;
  *(v142 + 128) = 0x7079547475706E49;
  *(v142 + 136) = v162;
  strcpy((v142 + 144), "ContentItems");
  *(v142 + 157) = 0;
  *(v142 + 158) = -5120;
  *(v142 + 168) = v135;
  *(v142 + 176) = 0x6F666E4972657355;
  *(v142 + 184) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v144 = swift_allocObject();
  *(v144 + 16) = v178;
  v145 = swift_allocObject();
  *(v145 + 16) = v175;
  strcpy((v145 + 32), "DestinationKey");
  *(v145 + 47) = -18;
  *(v145 + 48) = 0xD000000000000020;
  *(v145 + 56) = 0x80000001CA9AD4C0;
  *(v145 + 72) = v135;
  *(v145 + 80) = 0x73616C436D657449;
  *(v145 + 88) = 0xE900000000000073;
  *(v145 + 96) = 0x676E69727453534ELL;
  *(v145 + 104) = 0xE800000000000000;
  *(v145 + 120) = v135;
  strcpy((v145 + 128), "ParameterKey");
  *(v145 + 141) = 0;
  *(v145 + 142) = -5120;
  strcpy((v145 + 144), "TransmitSaveTo");
  *(v145 + 159) = -18;
  *(v145 + 168) = v135;
  strcpy((v145 + 176), "ValueMapping");
  *(v145 + 189) = 0;
  *(v145 + 190) = -5120;
  v146 = v135;
  v147 = sub_1CA94C1E8();
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v145 + 216) = v184;
  *(v145 + 192) = v147;
  *(v144 + 32) = sub_1CA94C1E8();
  v148 = swift_allocObject();
  *(v148 + 16) = v178;
  strcpy((v148 + 32), "DestinationKey");
  *(v148 + 47) = -18;
  *(v148 + 48) = 0xD000000000000026;
  *(v148 + 56) = 0x80000001CA9AD4F0;
  *(v148 + 72) = v146;
  *(v148 + 80) = 0x73616C436D657449;
  *(v148 + 88) = 0xE900000000000073;
  *(v148 + 96) = 0x676E69727453534ELL;
  *(v148 + 104) = 0xE800000000000000;
  *(v148 + 120) = v146;
  strcpy((v148 + 128), "ParameterKey");
  *(v148 + 168) = v146;
  *(v148 + 141) = 0;
  *(v148 + 142) = -5120;
  *(v148 + 144) = 0xD000000000000014;
  *(v148 + 152) = v160;
  *(v144 + 40) = sub_1CA94C1E8();
  v149 = swift_allocObject();
  *(v149 + 16) = v178;
  strcpy((v149 + 32), "DestinationKey");
  *(v149 + 47) = -18;
  *(v149 + 48) = 0xD00000000000001ELL;
  *(v149 + 56) = 0x80000001CA9AD520;
  *(v149 + 72) = v146;
  *(v149 + 80) = 0x73616C436D657449;
  *(v149 + 88) = 0xE900000000000073;
  *(v149 + 96) = 0x676E69727453534ELL;
  *(v149 + 104) = 0xE800000000000000;
  *(v149 + 120) = v146;
  strcpy((v149 + 128), "ParameterKey");
  *(v149 + 168) = v146;
  *(v149 + 141) = 0;
  *(v149 + 142) = -5120;
  strcpy((v149 + 144), "TransmitPath");
  *(v149 + 157) = 0;
  *(v149 + 158) = -5120;
  *(v144 + 48) = sub_1CA94C1E8();
  *(v142 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v142 + 192) = v144;
  v139[50] = sub_1CA94C1E8();
  v139[53] = v166;
  v139[54] = @"UserInterfaceClasses";
  v150 = @"UserInterfaceClasses";
  v151 = sub_1CA94C1E8();
  v139[58] = v184;
  v139[55] = v151;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA390824(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2)
{
  v52 = a1;
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE0, &qword_1CA982090);
  OUTLINED_FUNCTION_1_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CA8, &qword_1CA982130);
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
  OUTLINED_FUNCTION_1_0(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CB0, &qword_1CA982138);
  OUTLINED_FUNCTION_1_0(v56);
  v50 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_63();
  (*(v19 + 16))(v24, v51, v17);
  sub_1CA25C3BC(&qword_1EC441C78, &qword_1EC443C30, &qword_1CA9820D0);
  sub_1CA94C598();
  sub_1CA25C3BC(&qword_1EC441C88, &qword_1EC443CB0, &qword_1CA982138);
  v29 = v5;
  v30 = (v5 + 32);
  v31 = (v29 + 8);
  v51 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1CA94D148();
    if (__swift_getEnumTagSinglePayload(v16, 1, v3) == 1)
    {
      v40 = OUTLINED_FUNCTION_20_8();
      v41(v40);
      return v51;
    }

    (*v30)(v10, v16, v3);
    v52(&v54, v10);
    if (v2)
    {
      break;
    }

    (*v31)(v10, v3);
    v32 = v55;
    if (v55)
    {
      v49 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v51 + 16);
        sub_1CA26DADC();
        v51 = v38;
      }

      v33 = *(v51 + 16);
      v34 = v33 + 1;
      if (v33 >= *(v51 + 24) >> 1)
      {
        v47 = *(v51 + 16);
        v48 = v33 + 1;
        sub_1CA26DADC();
        v33 = v47;
        v34 = v48;
        v51 = v39;
      }

      v35 = v51;
      *(v51 + 16) = v34;
      v36 = v35 + 16 * v33;
      *(v36 + 32) = v49;
      *(v36 + 40) = v32;
    }
  }

  (*v31)(v10, v3);
  v43 = OUTLINED_FUNCTION_20_8();
  v44(v43);
  v42 = v51;

  return v42;
}

void sub_1CA390C0C(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A58, &qword_1CA988490) - 8);
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    a1(&v19, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {

      return;
    }

    v10 = v19;
    ++v6;
    if (v19 != 6)
    {
      v11 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v18 + 16);
        sub_1CA2E6404();
        v11 = v16;
      }

      v12 = v11;
      v13 = *(v11 + 16);
      v18 = v12;
      v14 = v13 + 1;
      if (v13 >= *(v12 + 24) >> 1)
      {
        sub_1CA2E6404();
        v14 = v13 + 1;
        v18 = v17;
      }

      *(v18 + 16) = v14;
      *(v18 + v13 + 32) = v10;
      v6 = v9;
    }
  }
}

void Library.collections.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = sub_1CA949F78();
  v93 = OUTLINED_FUNCTION_1_0(v2);
  v94 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for LibraryModel.CategoryCollection(0);
  v10 = OUTLINED_FUNCTION_18_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  v107 = v14 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CC8, &unk_1CA982150);
  OUTLINED_FUNCTION_52(v87);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v84 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CB8, &qword_1CA982140);
  OUTLINED_FUNCTION_18_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_63();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CC0, &qword_1CA982148);
  OUTLINED_FUNCTION_1_0(v105);
  v86 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v84 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
  v30 = OUTLINED_FUNCTION_1_0(v29);
  v89 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_1();
  v104 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v84 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v39 = OUTLINED_FUNCTION_1_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3_1();
  v100 = v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v84 - v46;
  v48 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_22_6();
  v103 = v0;
  v98 = v49;
  v99 = v48;
  v97 = v50;
  v50(v47, v0 + v48, v38);
  swift_getKeyPath();
  sub_1CA94BF48();

  v51 = *(v41 + 8);
  v101 = v41 + 8;
  v102 = v38;
  v96 = v51;
  v51(v47, v38);
  v88 = MEMORY[0x1E69E7CC0];
  v109 = MEMORY[0x1E69E7CC0];
  v52 = *(v89 + 16);
  v84 = v37;
  v52(v104, v37, v29);
  sub_1CA25C3BC(&qword_1EC441C98, &qword_1EC443C40, &qword_1CA9844E0);
  v53 = v87;
  v85 = v29;
  sub_1CA94C598();
  v104 = sub_1CA25C3BC(&qword_1EC441CA8, &qword_1EC443CC0, &qword_1CA982148);
  v92 = *MEMORY[0x1E69E1098];
  v91 = (v94 + 8);
  *&v54 = 136446210;
  v90 = v54;
  v94 = v8;
  v95 = v1;
  while (1)
  {
    sub_1CA94D148();
    if (__swift_getEnumTagSinglePayload(v1, 1, v53) == 1)
    {
      break;
    }

    v55 = v8;
    sub_1CA393EE4(v1, v19, &qword_1EC443CC8, &unk_1CA982150);
    v57 = *v19;
    v56 = v19[1];
    v58 = v53;
    v59 = *(v53 + 48);
    v60 = v102;
    v61 = v100;
    v97(v100, v103 + v99, v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
    type metadata accessor for LibraryModel(0);
    sub_1CA34137C();
    sub_1CA94BEC8();
    v96(v61, v60);
    OUTLINED_FUNCTION_116();
    v62 = sub_1CA94C368();
    v63 = WFWorkflowTypeForCollectionIdentifier(v62);

    if (v63)
    {
      v64 = WFHumanReadableNameForWorkflowType();
      if (!v64)
      {
        __break(1u);
        return;
      }

      v65 = v64;
      v66 = sub_1CA94C3A8();
      v68 = v67;

      v69 = objc_allocWithZone(MEMORY[0x1E69E0DD0]);
      sub_1CA94C218();
      v70 = OUTLINED_FUNCTION_116();
      v72 = sub_1CA27E214(v70, v71, 0, v66, v68, 0, 0);

      OUTLINED_FUNCTION_0_21();
      sub_1CA393E8C(v107, v73);
      v74 = sub_1CA27080C(v19, &qword_1EC443CC8, &unk_1CA982150);
      v8 = v94;
      v1 = v95;
      v53 = v58;
      if (v72)
      {
        MEMORY[0x1CCAA1490](v74);
        OUTLINED_FUNCTION_8_8();
        if (v75)
        {
          OUTLINED_FUNCTION_11_3();
        }

        OUTLINED_FUNCTION_116();
        sub_1CA94C6E8();
        v88 = v109;
      }
    }

    else
    {
      v8 = v55;
      sub_1CA949C58();
      sub_1CA94C218();
      v76 = sub_1CA949F68();
      v77 = sub_1CA94CC28();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v108 = v79;
        *v78 = v90;
        v80 = OUTLINED_FUNCTION_116();
        *(v78 + 4) = sub_1CA26B54C(v80, v81, v82);
        _os_log_impl(&dword_1CA256000, v76, v77, "Can't map collection identifier to workflow type. Identifier: %{public}s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        v8 = v94;
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_26();
      }

      (*v91)(v8, v93);
      v53 = v58;
      v1 = v95;
      OUTLINED_FUNCTION_0_21();
      sub_1CA393E8C(v107, v83);
      sub_1CA27080C(v19, &qword_1EC443CC8, &unk_1CA982150);
    }
  }

  (*(v86 + 8))(v106, v105);
  (*(v89 + 8))(v84, v85);
  v109 = v88;
  if (qword_1EC442C58 != -1)
  {
    OUTLINED_FUNCTION_3_19();
  }

  qword_1EC442C60;
  MEMORY[0x1CCAA1490]();
  OUTLINED_FUNCTION_8_8();
  if (v75)
  {
    OUTLINED_FUNCTION_11_3();
  }

  OUTLINED_FUNCTION_116();
  sub_1CA94C6E8();
  OUTLINED_FUNCTION_36();
}

void sub_1CA391640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = WFGetBuiltInCollectionIdentifiers(0);
  v14 = sub_1CA94C8F8();

  LOBYTE(v13) = sub_1CA27AF18(a2, a3, v14);

  if (v13)
  {
    sub_1CA2D4310();
    sub_1CA27080C(v12, &qword_1EC443C90, &qword_1CA982120);
    sub_1CA2CB068();
  }

  else
  {
    sub_1CA2CA09C();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v15);
    sub_1CA27080C(v8, &qword_1EC443BE8, &qword_1CA982098);
    if (EnumTagSinglePayload != 1)
    {
      sub_1CA2CE3AC();
    }
  }
}

uint64_t sub_1CA3918C0()
{
  OUTLINED_FUNCTION_16_0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_17_5();
  return swift_endAccess();
}

void sub_1CA39194C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  if (sub_1CA94C3A8() == a2 && v9 == a3)
  {

    goto LABEL_9;
  }

  v11 = sub_1CA94D7F8();

  if (v11)
  {
LABEL_9:
    sub_1CA2D9AF4();
    swift_allocError();
    *v14 = xmmword_1CA9855C0;
    *(v14 + 16) = 2;
    swift_willThrow();
    return;
  }

  v12 = WFGetBuiltInCollectionIdentifiers(0);
  v13 = sub_1CA94C8F8();

  LOBYTE(v12) = sub_1CA27AF18(a2, a3, v13);

  if (v12)
  {
    sub_1CA2D4310();
    sub_1CA27080C(v8, &qword_1EC443C90, &qword_1CA982120);
    sub_1CA2CBCD0();
  }

  else
  {
    sub_1CA2CE8CC();
  }
}

uint64_t sub_1CA391B44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1CA94C3A8();
  v10 = v9;
  v11 = sub_1CA94C3A8();
  v13 = v12;
  v14 = a1;
  a6(v8, v10, v11, v13);

  return 1;
}

uint64_t sub_1CA391C50()
{
  OUTLINED_FUNCTION_16_0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_17_5();
  return swift_endAccess();
}

uint64_t sub_1CA391CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v34 = a8;
  v35 = a7;
  v37 = a6;
  v36 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  OUTLINED_FUNCTION_18_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  v23 = WFGetBuiltInCollectionIdentifiers(0);
  v24 = sub_1CA94C8F8();

  v25 = OUTLINED_FUNCTION_136_0();
  LOBYTE(v23) = sub_1CA27AF18(v25, v26, v24);

  if (v23)
  {
    OUTLINED_FUNCTION_136_0();
    sub_1CA2D4310();
    sub_1CA27080C(v22, &qword_1EC443C90, &qword_1CA982120);
    return v35(a4, v36, v37, a2, a3);
  }

  else
  {
    v28 = a4;
    v29 = v36;
    v30 = v37;
    OUTLINED_FUNCTION_136_0();
    sub_1CA2CA09C();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v31);
    result = sub_1CA27080C(v16, &qword_1EC443BE8, &qword_1CA982098);
    if (EnumTagSinglePayload != 1)
    {
      return v34(v28, v29, v30, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1CA391F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = sub_1CA94C3A8();
  v12 = v11;
  v13 = sub_1CA94C3A8();
  v15 = v14;
  v16 = a1;
  a7(v10, v12, a4, v13, v15);

  return 1;
}

uint64_t Library.collectionsAndFoldersContaining(shortcut:)()
{
  v1 = v0;
  v2 = sub_1CA94C368();
  v3 = [v1 collectionsContainingShortcut_];

  sub_1CA27E37C();
  v4 = sub_1CA94C658();

  v5 = sub_1CA94C368();
  v6 = [v1 folderContainingShortcut_];

  if (v6)
  {
    MEMORY[0x1CCAA1490]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA94C698();
    }

    OUTLINED_FUNCTION_187();
    sub_1CA94C6E8();
  }

  return v4;
}

uint64_t Library.collectionAndFolderIdentifiersContaining(shortcut:)()
{
  v22[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1CA94C368();
  v22[0] = 0;
  v2 = [v0 collectionsAndFoldersContainingShortcut:v1 error:v22];

  v3 = v22[0];
  if (v2)
  {
    sub_1CA27E37C();
    v4 = sub_1CA94C658();
    v5 = v3;

    v6 = sub_1CA25B410(v4);
    if (v6)
    {
      v7 = v6;
      v22[0] = MEMORY[0x1E69E7CC0];
      sub_1CA271524();
      if (v7 < 0)
      {
        __break(1u);
      }

      v8 = 0;
      v9 = v22[0];
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = OUTLINED_FUNCTION_136_0();
          v11 = MEMORY[0x1CCAA22D0](v10);
        }

        else
        {
          v11 = *(v4 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = [v11 identifier];
        v14 = sub_1CA94C3A8();
        v16 = v15;

        v22[0] = v9;
        v17 = v9[2];
        if (v17 >= v9[3] >> 1)
        {
          sub_1CA271524();
          v9 = v22[0];
        }

        ++v8;
        v9[2] = v17 + 1;
        v18 = &v9[2 * v17];
        v18[4] = v14;
        v18[5] = v16;
      }

      while (v7 != v8);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    result = sub_1CA2E2E2C(v9);
  }

  else
  {
    v19 = v22[0];
    sub_1CA948AD8();

    result = swift_willThrow();
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Library.shortcuts(inCategoryWithIdentifier:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_27_2();
  (*(v3 + 16))(v8, v0 + v9, v1);
  OUTLINED_FUNCTION_116();
  sub_1CA2D7330();
  v11 = v10;
  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_187();
  v14(v13);
  return v11;
}

void Library.collectionsContaining(shortcut:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v149 = v24;
  v150 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C38, &qword_1CA9820D8);
  OUTLINED_FUNCTION_18_0(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v132 - v30;
  v32 = type metadata accessor for LibraryModel.CategoryCollection(0);
  v33 = OUTLINED_FUNCTION_18_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v134 = &v132 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BA0, &unk_1CA9844D0);
  OUTLINED_FUNCTION_1_0(v39);
  v155 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v132 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CB8, &qword_1CA982140);
  v47 = OUTLINED_FUNCTION_18_0(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_3_1();
  v148 = v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = (&v132 - v52);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C40, &qword_1CA9844E0);
  v54 = OUTLINED_FUNCTION_1_0(v147);
  v152 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v58);
  v160 = &v132 - v59;
  v141 = type metadata accessor for LibraryModel(0);
  v60 = OUTLINED_FUNCTION_52(v141);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_6_0();
  v65 = v64 - v63;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  v67 = OUTLINED_FUNCTION_1_0(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v132 - v73;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CC0, &qword_1CA982148);
  OUTLINED_FUNCTION_1_0(v151);
  v132 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v78);
  v153 = &v132 - v79;
  v163 = MEMORY[0x1E69E7CC0];
  v80 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_27_2();
  v81 = *(v69 + 16);
  v158 = v80;
  v159 = v23;
  v156 = v81;
  v157 = v69 + 16;
  v81(v74, v23 + v80, v66);
  sub_1CA94BFD8();
  v82 = *(v69 + 8);
  v137 = v74;
  v146 = v69 + 8;
  v82(v74, v66);
  v83 = v152;
  OUTLINED_FUNCTION_22_6();
  v84 = v160;
  v85 = v147;
  v86(v160, v65, v147);
  sub_1CA393E8C(v65, type metadata accessor for LibraryModel);
  sub_1CA94BC58();
  v87 = *(v83 + 8);
  v152 = v83 + 8;
  v139 = v87;
  v87(v84, v85);
  v160 = 0;
  v138 = (v155 + 4);
  ++v155;
  v133 = MEMORY[0x1E69E7CC0];
  v145 = v31;
  v144 = v39;
  v142 = v53;
  v140 = v45;
  while (1)
  {
    v88 = v148;
    sub_1CA94BC68();
    sub_1CA393EE4(v88, v53, &qword_1EC443CB8, &qword_1CA982140);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443CC8, &unk_1CA982150);
    if (__swift_getEnumTagSinglePayload(v53, 1, v89) == 1)
    {
      break;
    }

    v91 = *v53;
    v90 = v53[1];
    (*v138)(v45, v53 + *(v89 + 48), v39);
    v92 = OUTLINED_FUNCTION_21_8(&a11);
    v93(v92);
    swift_getKeyPath();
    v94 = v39;
    v95 = v66;
    v96 = v143;
    v97 = v95;
    sub_1CA94BF48();

    v154 = v91;
    v161 = v91;
    v162 = v90;
    sub_1CA94C218();
    v98 = v147;
    sub_1CA94BC98();
    v139(v96, v98);

    if (__swift_getEnumTagSinglePayload(v31, 1, v94) == 1)
    {
      sub_1CA27080C(v31, &qword_1EC443C38, &qword_1CA9820D8);
      v99 = MEMORY[0x1E69E7CC0];
      v100 = v160;
    }

    else
    {
      sub_1CA34137C();
      v101 = v135;
      sub_1CA94BEC8();
      (*v155)(v31, v94);
      v102 = v134;
      v103 = sub_1CA393F44(v101, v134);
      MEMORY[0x1EEE9AC00](v103);
      OUTLINED_FUNCTION_98();
      *(v104 - 16) = v82;
      v100 = v160;
      v99 = sub_1CA390824(sub_1CA2D9C98, v105);
      OUTLINED_FUNCTION_0_21();
      sub_1CA393E8C(v102, v106);
    }

    v66 = v97;
    v107 = (v82)(v82, v97);
    v161 = v149;
    v162 = v150;
    MEMORY[0x1EEE9AC00](v107);
    OUTLINED_FUNCTION_98();
    *(v108 - 16) = &v161;
    v110 = sub_1CA2BFD14(sub_1CA36DB00, v109, v99);

    v45 = v140;
    v160 = v100;
    if (v110)
    {
      v111 = OUTLINED_FUNCTION_21_8(&v164);
      v112(v111);
      sub_1CA34137C();
      v113 = v136;
      v39 = v144;
      sub_1CA94BEC8();
      v82(v82, v97);
      LibraryModel.CategoryCollection.workflowCollection(id:)();
      v115 = v114;

      OUTLINED_FUNCTION_0_21();
      sub_1CA393E8C(v113, v116);
      v53 = v142;
      if (v115)
      {
        v121 = v115;
        MEMORY[0x1CCAA1490]();
        v31 = v145;
        if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CA94C698();
        }

        sub_1CA94C6E8();

        v122 = OUTLINED_FUNCTION_15_6();
        v123(v122, v39);
        v133 = v163;
      }

      else
      {
        v117 = OUTLINED_FUNCTION_15_6();
        v118(v117, v39);
        v31 = v145;
      }
    }

    else
    {
      v119 = OUTLINED_FUNCTION_15_6();
      v39 = v144;
      v120(v119, v144);

      v31 = v145;
      v53 = v142;
    }
  }

  (*(v132 + 8))(v153, v151);
  v156(v137, v159 + v158, v66);
  sub_1CA94C3A8();
  sub_1CA2D776C();
  v125 = v124;

  v126 = OUTLINED_FUNCTION_187();
  v127 = (v82)(v126);
  v161 = v149;
  v162 = v150;
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_98();
  *(v128 - 16) = &v161;
  v130 = sub_1CA2BFD14(sub_1CA2E9370, v129, v125);

  if (v130)
  {
    if (qword_1EC442C58 != -1)
    {
      OUTLINED_FUNCTION_3_19();
    }

    qword_1EC442C60;
    MEMORY[0x1CCAA1490]();
    OUTLINED_FUNCTION_8_8();
    if (v131)
    {
      OUTLINED_FUNCTION_11_3();
    }

    OUTLINED_FUNCTION_116();
    sub_1CA94C6E8();
  }

  OUTLINED_FUNCTION_36();
}

void Library.collection(workflowType:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = sub_1CA949F78();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  v12 = WFWorkflowCollectionIdentifierForWorkflowType(v2);
  if (v12)
  {
    v13 = v12;
    [v0 collectionWithIdentifier_];
  }

  else
  {
    v14 = *MEMORY[0x1E69E1098];
    sub_1CA949C58();
    v15 = v2;
    v16 = sub_1CA949F68();
    v17 = sub_1CA94CC18();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136446210;
      v20 = sub_1CA94C3A8();
      v22 = sub_1CA26B54C(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1CA256000, v16, v17, "Can't map workflow type to a collection. workflowType: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    (*(v6 + 8))(v11, v3);
  }

  OUTLINED_FUNCTION_36();
}

void Library.collection(identifier:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  v5 = OUTLINED_FUNCTION_52(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-v11];
  if (sub_1CA94C3A8() == v3 && v13 == v1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_187();
    v15 = sub_1CA94D7F8();

    if ((v15 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v16);
      *&v20[-16] = v3;
      *&v20[-8] = v1;
      OUTLINED_FUNCTION_16_0();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
      sub_1CA94BFF8();
      swift_endAccess();
      sub_1CA393FDC(v12, v10);
      v17 = type metadata accessor for LibraryModel.CategoryCollection(0);
      if (__swift_getEnumTagSinglePayload(v10, 1, v17) == 1)
      {
        sub_1CA27080C(v12, &qword_1EC443C90, &qword_1CA982120);
        sub_1CA27080C(v10, &qword_1EC443C90, &qword_1CA982120);
      }

      else
      {
        OUTLINED_FUNCTION_187();
        LibraryModel.CategoryCollection.workflowCollection(id:)();
        sub_1CA27080C(v12, &qword_1EC443C90, &qword_1CA982120);
        OUTLINED_FUNCTION_0_21();
        sub_1CA393E8C(v10, v19);
      }

      goto LABEL_12;
    }
  }

  if (qword_1EC442C58 != -1)
  {
    OUTLINED_FUNCTION_3_19();
  }

  v18 = qword_1EC442C60;
LABEL_12:
  OUTLINED_FUNCTION_36();
}

NSNumber_optional __swiftcall Library.indexOfShortcut(identifier:inCollectionWithIdentifier:)(Swift::String identifier, Swift::String inCollectionWithIdentifier)
{
  OUTLINED_FUNCTION_37_0();
  v5 = v4;
  v7 = v6;
  v39 = v8;
  v40 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  OUTLINED_FUNCTION_52(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_63();
  v22 = WFGetBuiltInCollectionIdentifiers(0);
  v23 = sub_1CA94C8F8();

  v24 = OUTLINED_FUNCTION_187();
  LOBYTE(v22) = sub_1CA27AF18(v24, v25, v23);

  if (v22)
  {
    v38[3] = v5;
    v38[1] = v38;
    MEMORY[0x1EEE9AC00](v26);
    v27 = v40;
    v38[-2] = v39;
    v38[-1] = v27;
    v38[2] = v7;
    v28 = OBJC_IVAR___WFLibrary_capsule;
    OUTLINED_FUNCTION_16_0();
    swift_beginAccess();
    sub_1CA94BFF8();
    sub_1CA27080C(v3, &qword_1EC443C90, &qword_1CA982120);
    swift_endAccess();
    OUTLINED_FUNCTION_22_6();
    v29(v17, v2 + v28, v10);
    sub_1CA2D9214();
  }

  else
  {
    v32 = OBJC_IVAR___WFLibrary_capsule;
    OUTLINED_FUNCTION_27_2();
    OUTLINED_FUNCTION_22_6();
    v33(v17, v2 + v32, v10);
    sub_1CA2D7EC0();
  }

  v34 = v30;
  v35 = v31;
  (*(v12 + 8))(v17, v10);
  if ((v35 & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  OUTLINED_FUNCTION_36();
  result.value.super.super.isa = v36;
  result.is_nil = v37;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Library.setShortcutOrdering(_:forCollectionIdentifier:)(Swift::OpaquePointer _, Swift::String forCollectionIdentifier)
{
  OUTLINED_FUNCTION_16_0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94BFF8();
  swift_endAccess();
}

void sub_1CA393A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - v13;
  v15 = WFGetBuiltInCollectionIdentifiers(0);
  v16 = sub_1CA94C8F8();

  LOBYTE(v15) = sub_1CA27AF18(a2, a3, v16);

  if (v15)
  {
    sub_1CA2D4310();
    sub_1CA27080C(v14, &qword_1EC443C90, &qword_1CA982120);
    sub_1CA2CCCCC(a4, a2, a3, v17, v18, v19, v20, v21, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  }

  else
  {
    sub_1CA2CA09C();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v22);
    sub_1CA27080C(v10, &qword_1EC443BE8, &qword_1CA982098);
    if (EnumTagSinglePayload == 1)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1CA94D408();

      v32 = 0xD000000000000023;
      v33 = 0x80000001CA9AD570;
      MEMORY[0x1CCAA1300](a2, a3);
      v29 = v32;
      v30 = v33;
      sub_1CA2D9AF4();
      swift_allocError();
      *v31 = v29;
      *(v31 + 8) = v30;
      *(v31 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      sub_1CA2CEAC4(a4, a2, a3, v24, v25, v26, v27, v28, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    }
  }
}

void sub_1CA393DA0(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  sub_1CA391640(a1, v1[2], v1[3]);
}

void sub_1CA393E00(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  sub_1CA39194C(a1, v1[2], v1[3]);
}

uint64_t sub_1CA393E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CA393EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_52(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1CA393F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryModel.CategoryCollection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CA393FA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CA2D4310();
}

uint64_t sub_1CA393FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C90, &qword_1CA982120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CA3940B8()
{
  v407 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9AD5B0;
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
  v439 = v12;
  v440 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v396 - v440;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v436 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v438 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v437 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v396 - v437;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v435 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v406 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v434 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v423 = xmmword_1CA97EDF0;
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v27 = sub_1CA94C438();
  v431 = v28;
  *&v432 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v433 = v396;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v396 - v440;
  sub_1CA948D98();
  v33 = [v436 bundleURL];
  v427 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v437;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v432, v431, v29, v31, 0, 0, v32, v396 - v35);
  v37 = v435;
  *(v24 + 64) = v435;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v431 = v40;
  *&v432 = v39;
  v430 = sub_1CA94C438();
  v42 = v41;
  v433 = v396;
  MEMORY[0x1EEE9AC00](v430);
  v43 = v396 - v440;
  sub_1CA948D98();
  v44 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v432, v431, v430, v42, 0, 0, v43, v396 - v35);
  *(v24 + 104) = v37;
  *(v24 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v47 = v434;
  v48 = sub_1CA6B3784();
  v49 = v427;
  v427[20] = v48;
  v49[23] = v47;
  v49[24] = @"Input";
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v414 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 1;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x7475706E494657;
  *(v50 + 104) = 0xE700000000000000;
  *(v50 + 120) = MEMORY[0x1E69E6158];
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v422;
  *(v50 + 192) = &unk_1F49F77D0;
  v52 = @"Input";
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v415 = v54;
  v49[25] = v53;
  v49[28] = v54;
  v49[29] = @"Name";
  v55 = @"Name";
  v56 = sub_1CA94C438();
  v58 = v57;
  v59 = sub_1CA94C438();
  v61 = v60;
  v434 = v396;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v396 - v440;
  sub_1CA948D98();
  v63 = v436;
  v64 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v396 - v437;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v56, v58, v59, v61, 0, 0, v62, v65);
  v68 = v435;
  v69 = v427;
  v427[30] = v67;
  v69[33] = v68;
  v69[34] = @"Output";
  v70 = swift_allocObject();
  *(v70 + 16) = v414;
  *(v70 + 32) = 0x75736F6C63736944;
  *(v70 + 40) = 0xEF6C6576654C6572;
  *(v70 + 48) = 0x63696C627550;
  *(v70 + 56) = 0xE600000000000000;
  *(v70 + 72) = MEMORY[0x1E69E6158];
  *(v70 + 80) = 0x656C7069746C754DLL;
  *(v70 + 88) = 0xE800000000000000;
  *(v70 + 96) = 0;
  *(v70 + 120) = MEMORY[0x1E69E6370];
  *(v70 + 128) = 0x614E74757074754FLL;
  *&v426 = 0xEA0000000000656DLL;
  *(v70 + 136) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438();
  v433 = v73;
  v74 = sub_1CA94C438();
  v76 = v75;
  v434 = v396;
  MEMORY[0x1EEE9AC00](v74);
  v77 = v396 - v440;
  sub_1CA948D98();
  v78 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = v396 - v437;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 144) = sub_1CA2F9F14(v72, v433, v74, v76, 0, 0, v77, v79);
  *(v70 + 168) = v68;
  *(v70 + 176) = 0x7365707954;
  *(v70 + 216) = v422;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = &unk_1F49F7830;
  v81 = MEMORY[0x1E69E6158];
  v82 = sub_1CA94C1E8();
  v83 = v427;
  v427[35] = v82;
  v83[38] = v415;
  v83[39] = @"Parameters";
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v434 = swift_allocObject();
  *(v434 + 1) = xmmword_1CA983CF0;
  v433 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v84 = swift_allocObject();
  *(v84 + 16) = v414;
  v405 = 0xD000000000000019;
  *(v84 + 32) = @"Class";
  *(v84 + 40) = 0xD000000000000019;
  *(v84 + 48) = 0x80000001CA99B030;
  *(v84 + 64) = v81;
  *(v84 + 72) = @"Key";
  *(v84 + 80) = 0x7475706E494657;
  *(v84 + 88) = 0xE700000000000000;
  *(v84 + 104) = v81;
  *(v84 + 112) = @"Label";
  v85 = @"Class";
  v86 = @"Key";
  v87 = @"Label";
  v88 = v85;
  v89 = v86;
  v90 = v87;
  v424 = v88;
  v421 = v89;
  v425 = v90;
  v91 = @"Parameters";
  v92 = sub_1CA94C438();
  v429 = v93;
  v430 = v92;
  v94 = sub_1CA94C438();
  v420 = v95;
  *&v432 = v396;
  MEMORY[0x1EEE9AC00](v94);
  v96 = v440;
  sub_1CA948D98();
  v97 = v436;
  v98 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = v396 - v437;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 120) = sub_1CA2F9F14(v430, v429, v94, v420, 0, 0, v396 - v96, v99);
  v101 = v435;
  *(v84 + 144) = v435;
  *(v84 + 152) = @"Placeholder";
  v412 = @"Placeholder";
  v102 = sub_1CA94C438();
  v429 = v103;
  v430 = v102;
  v104 = sub_1CA94C438();
  v420 = v105;
  *&v432 = v396;
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948D98();
  v106 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v396 - v437;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v430, v429, v104, v420, 0, 0, v396 - v96, v107);
  *(v84 + 184) = v101;
  *(v84 + 160) = v109;
  _s3__C3KeyVMa_0(0);
  v430 = v110;
  v429 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v434[4] = sub_1CA2F864C();
  v111 = swift_initStackObject();
  v432 = xmmword_1CA9813C0;
  *(v111 + 16) = xmmword_1CA9813C0;
  v416 = 0xD00000000000001DLL;
  v112 = v424;
  v113 = v425;
  *(v111 + 32) = v424;
  *(v111 + 40) = 0xD00000000000001DLL;
  *(v111 + 48) = 0x80000001CA9AD6A0;
  v114 = MEMORY[0x1E69E6158];
  v115 = v421;
  *(v111 + 64) = MEMORY[0x1E69E6158];
  *(v111 + 72) = v115;
  strcpy((v111 + 80), "WFComposeInApp");
  *(v111 + 95) = -18;
  *(v111 + 104) = v114;
  *(v111 + 112) = v113;
  v420 = v112;
  v424 = v115;
  v425 = v113;
  v116 = sub_1CA94C438();
  v118 = v117;
  v119 = sub_1CA94C438();
  v121 = v120;
  v421 = v396;
  MEMORY[0x1EEE9AC00](v119);
  v122 = v396 - v440;
  sub_1CA948D98();
  v123 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v396 - v437;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, v124);
  *(v111 + 144) = v435;
  *(v111 + 120) = v126;
  sub_1CA94C1E8();
  v434[5] = sub_1CA2F864C();
  v127 = swift_allocObject();
  v413 = xmmword_1CA981370;
  *(v127 + 16) = xmmword_1CA981370;
  v128 = v420;
  *(v127 + 32) = v420;
  *(v127 + 40) = 0xD00000000000001BLL;
  *(v127 + 48) = 0x80000001CA9AD710;
  *(v127 + 64) = MEMORY[0x1E69E6158];
  *(v127 + 72) = @"Description";
  v411 = v128;
  v129 = @"Description";
  v130 = sub_1CA94C438();
  v419 = v131;
  v420 = v130;
  v132 = sub_1CA94C438();
  v417 = v133;
  v421 = v396;
  MEMORY[0x1EEE9AC00](v132);
  v134 = v396 - v440;
  sub_1CA948D98();
  v135 = v436;
  v136 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v136);
  v137 = v437;
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 80) = sub_1CA2F9F14(v420, v419, v132, v417, 0, 0, v134, v396 - v137);
  v139 = v435;
  v140 = v424;
  v141 = v425;
  *(v127 + 104) = v435;
  *(v127 + 112) = v140;
  *(v127 + 120) = 0x614E676F6C424657;
  *(v127 + 128) = v426;
  *(v127 + 144) = MEMORY[0x1E69E6158];
  *(v127 + 152) = v141;
  v410 = v140;
  v409 = v141;
  v142 = sub_1CA94C438();
  v424 = v143;
  v425 = v142;
  v144 = sub_1CA94C438();
  v421 = v145;
  *&v426 = v396;
  MEMORY[0x1EEE9AC00](v144);
  v146 = v396 - v440;
  sub_1CA948D98();
  v147 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 160) = sub_1CA2F9F14(v425, v424, v144, v421, 0, 0, v146, v396 - v137);
  *(v127 + 184) = v139;
  *(v127 + 192) = @"RequiredResources";
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v149 = swift_allocObject();
  v426 = xmmword_1CA981310;
  *(v149 + 16) = xmmword_1CA981310;
  v150 = swift_allocObject();
  *(v150 + 16) = v432;
  strcpy((v150 + 32), "WFParameterKey");
  *(v150 + 47) = -18;
  strcpy((v150 + 48), "WFComposeInApp");
  *(v150 + 63) = -18;
  v419 = 0x80000001CA993570;
  v421 = 0xD000000000000010;
  v151 = MEMORY[0x1E69E6158];
  *(v150 + 72) = MEMORY[0x1E69E6158];
  *(v150 + 80) = 0xD000000000000010;
  *(v150 + 88) = 0x80000001CA993570;
  *(v150 + 96) = 0;
  *(v150 + 120) = MEMORY[0x1E69E6370];
  *(v150 + 128) = 0x72756F7365524657;
  v424 = 0x80000001CA993590;
  *(v150 + 168) = v151;
  *(v150 + 136) = 0xEF7373616C436563;
  *(v150 + 144) = 0xD00000000000001BLL;
  *(v150 + 152) = 0x80000001CA993590;
  v417 = @"RequiredResources";
  *(v149 + 32) = sub_1CA94C1E8();
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v127 + 224) = v425;
  *(v127 + 200) = v149;
  sub_1CA94C1E8();
  v434[6] = sub_1CA2F864C();
  v152 = swift_allocObject();
  *(v152 + 16) = v432;
  v154 = v410;
  v153 = v411;
  v155 = v416;
  *(v152 + 32) = v411;
  *(v152 + 40) = v155;
  *(v152 + 48) = 0x80000001CA99FB10;
  *(v152 + 64) = v151;
  *(v152 + 72) = v154;
  *(v152 + 80) = 0x795474736F504657;
  *(v152 + 88) = 0xEA00000000006570;
  v156 = v409;
  *(v152 + 104) = v151;
  *(v152 + 112) = v156;
  v411 = v153;
  v410 = v154;
  v416 = v156;
  v157 = sub_1CA94C438();
  v159 = v158;
  v160 = sub_1CA94C438();
  v162 = v161;
  v409 = v396;
  MEMORY[0x1EEE9AC00](v160);
  v163 = v396 - v440;
  sub_1CA948D98();
  v164 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  v165 = v396 - v437;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v157, v159, v160, v162, 0, 0, v163, v165);
  *(v152 + 144) = v435;
  *(v152 + 120) = v167;
  sub_1CA94C1E8();
  v434[7] = sub_1CA2F864C();
  v168 = swift_allocObject();
  v403 = xmmword_1CA981380;
  *(v168 + 16) = xmmword_1CA981380;
  v404 = 0xD000000000000016;
  v169 = v411;
  *(v168 + 32) = v411;
  *(v168 + 40) = 0xD000000000000016;
  *(v168 + 48) = 0x80000001CA99C4A0;
  v170 = MEMORY[0x1E69E6158];
  *(v168 + 64) = MEMORY[0x1E69E6158];
  *(v168 + 72) = @"DefaultValue";
  *(v168 + 80) = 0x776F4E2074736F50;
  *(v168 + 88) = 0xE800000000000000;
  *(v168 + 104) = v170;
  *(v168 + 112) = @"Items";
  v418 = swift_allocObject();
  *&v418->data = xmmword_1CA981570;
  v411 = v169;
  v171 = @"DefaultValue";
  v172 = @"Items";
  v408 = sub_1CA94C438();
  v402 = v173;
  v174 = sub_1CA94C438();
  v401 = v175;
  v409 = v396;
  MEMORY[0x1EEE9AC00](v174);
  v176 = v440;
  sub_1CA948D98();
  v177 = v436;
  v178 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  v179 = v396 - v437;
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v181 = sub_1CA2F9F14(v408, v402, v174, v401, 0, 0, v396 - v176, v179);
  v182 = v418;
  v418[1].isa = v181;
  v408 = sub_1CA94C438();
  v402 = v183;
  v184 = sub_1CA94C438();
  v401 = v185;
  v409 = v396;
  MEMORY[0x1EEE9AC00](v184);
  sub_1CA948D98();
  v186 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = v437;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182[1].info = sub_1CA2F9F14(v408, v402, v184, v401, 0, 0, v396 - v176, v396 - v187);
  v408 = sub_1CA94C438();
  v402 = v189;
  v190 = sub_1CA94C438();
  v401 = v191;
  v409 = v396;
  MEMORY[0x1EEE9AC00](v190);
  v192 = v396 - v440;
  sub_1CA948D98();
  v193 = v436;
  v194 = [v436 bundleURL];
  v400 = v396;
  MEMORY[0x1EEE9AC00](v194);
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v196 = sub_1CA2F9F14(v408, v402, v190, v401, 0, 0, v192, v396 - v187);
  v418[1].data = v196;
  v408 = sub_1CA94C438();
  v402 = v197;
  v198 = sub_1CA94C438();
  v401 = v199;
  v409 = v396;
  MEMORY[0x1EEE9AC00](v198);
  v200 = v440;
  sub_1CA948D98();
  v201 = [v193 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v203 = sub_1CA2F9F14(v408, v402, v198, v401, 0, 0, v396 - v200, v396 - v187);
  v204 = v418;
  v418[1].length = v203;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v168 + 120) = v204;
  v206 = v410;
  *(v168 + 144) = v205;
  *(v168 + 152) = v206;
  *(v168 + 160) = 0x745374736F504657;
  *(v168 + 168) = 0xEB00000000657461;
  v207 = v416;
  *(v168 + 184) = MEMORY[0x1E69E6158];
  *(v168 + 192) = v207;
  v410 = v206;
  v418 = v207;
  v208 = sub_1CA94C438();
  v409 = v209;
  v210 = sub_1CA94C438();
  v212 = v211;
  v416 = v396;
  MEMORY[0x1EEE9AC00](v210);
  sub_1CA948D98();
  v213 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  v214 = v396 - v437;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v216 = sub_1CA2F9F14(v208, v409, v210, v212, 0, 0, v396 - v200, v214);
  v217 = v417;
  *(v168 + 200) = v216;
  *(v168 + 224) = v435;
  *(v168 + 232) = v217;
  v218 = swift_allocObject();
  *(v218 + 16) = v426;
  v219 = swift_allocObject();
  *(v219 + 16) = v432;
  strcpy((v219 + 32), "WFParameterKey");
  *(v219 + 47) = -18;
  strcpy((v219 + 48), "WFComposeInApp");
  *(v219 + 63) = -18;
  v220 = MEMORY[0x1E69E6158];
  v221 = v421;
  *(v219 + 72) = MEMORY[0x1E69E6158];
  *(v219 + 80) = v221;
  *(v219 + 88) = v419;
  *(v219 + 96) = 0;
  *(v219 + 120) = MEMORY[0x1E69E6370];
  *(v219 + 128) = 0x72756F7365524657;
  *(v219 + 168) = v220;
  *(v219 + 136) = 0xEF7373616C436563;
  *(v219 + 144) = 0xD00000000000001BLL;
  *(v219 + 152) = v424;
  v402 = v217;
  *(v218 + 32) = sub_1CA94C1E8();
  *(v168 + 264) = v425;
  *(v168 + 240) = v218;
  sub_1CA94C1E8();
  v434[8] = sub_1CA2F864C();
  v222 = swift_allocObject();
  *(v222 + 16) = v413;
  v224 = v410;
  v223 = v411;
  *(v222 + 32) = v411;
  *(v222 + 40) = 0xD000000000000014;
  v416 = 0x80000001CA99B500;
  v417 = 0xD000000000000014;
  *(v222 + 48) = 0x80000001CA99B500;
  *(v222 + 64) = v220;
  *(v222 + 72) = v224;
  *(v222 + 80) = 0x695474736F504657;
  *(v222 + 88) = 0xEB00000000656C74;
  v225 = v418;
  *(v222 + 104) = v220;
  *(v222 + 112) = v225;
  v409 = v223;
  v408 = v224;
  v410 = v225;
  v411 = sub_1CA94C438();
  v401 = v226;
  v227 = sub_1CA94C438();
  v400 = v228;
  v418 = v396;
  MEMORY[0x1EEE9AC00](v227);
  v229 = v440;
  sub_1CA948D98();
  v230 = [v436 bundleURL];
  v399 = v396;
  MEMORY[0x1EEE9AC00](v230);
  v231 = v437;
  sub_1CA948B68();

  v232 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v222 + 120) = sub_1CA2F9F14(v411, v401, v227, v400, 0, 0, v396 - v229, v396 - v231);
  v233 = v435;
  v234 = v412;
  *(v222 + 144) = v435;
  *(v222 + 152) = v234;
  v411 = v234;
  v412 = sub_1CA94C438();
  v401 = v235;
  v236 = sub_1CA94C438();
  v400 = v237;
  v418 = v396;
  MEMORY[0x1EEE9AC00](v236);
  v238 = v396 - v229;
  sub_1CA948D98();
  v239 = v436;
  v240 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v240);
  sub_1CA948B68();

  v241 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v222 + 160) = sub_1CA2F9F14(v412, v401, v236, v400, 0, 0, v238, v396 - v231);
  v242 = v402;
  *(v222 + 184) = v233;
  *(v222 + 192) = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = v426;
  v244 = swift_allocObject();
  *(v244 + 16) = v432;
  strcpy((v244 + 32), "WFParameterKey");
  *(v244 + 47) = -18;
  *(v244 + 48) = 0x795474736F504657;
  *(v244 + 56) = 0xEA00000000006570;
  v412 = 0x80000001CA9A2F30;
  v418 = 0xD000000000000011;
  v245 = MEMORY[0x1E69E6158];
  *(v244 + 72) = MEMORY[0x1E69E6158];
  *(v244 + 80) = 0xD000000000000011;
  *(v244 + 88) = 0x80000001CA9A2F30;
  *(v244 + 96) = &unk_1F49F7860;
  *(v244 + 120) = v422;
  *(v244 + 128) = 0x72756F7365524657;
  *(v244 + 168) = v245;
  *(v244 + 136) = 0xEF7373616C436563;
  *(v244 + 144) = 0xD00000000000001BLL;
  *(v244 + 152) = v424;
  v401 = v242;
  *(v243 + 32) = sub_1CA94C1E8();
  *(v222 + 224) = v425;
  *(v222 + 200) = v243;
  sub_1CA94C1E8();
  v434[9] = sub_1CA2F864C();
  v246 = swift_allocObject();
  *(v246 + 16) = v413;
  v248 = v408;
  v247 = v409;
  v249 = v416;
  v250 = v417;
  *(v246 + 32) = v409;
  *(v246 + 40) = v250;
  *(v246 + 48) = v249;
  *(v246 + 64) = v245;
  *(v246 + 72) = v248;
  strcpy((v246 + 80), "WFPostSource");
  *(v246 + 93) = 0;
  *(v246 + 94) = -5120;
  v251 = v410;
  *(v246 + 104) = v245;
  *(v246 + 112) = v251;
  v409 = v247;
  v408 = v248;
  v410 = v251;
  v252 = sub_1CA94C438();
  v399 = v253;
  v400 = v252;
  v254 = sub_1CA94C438();
  v398 = v255;
  v402 = v396;
  MEMORY[0x1EEE9AC00](v254);
  v256 = v396 - v440;
  sub_1CA948D98();
  v257 = [v239 bundleURL];
  MEMORY[0x1EEE9AC00](v257);
  v258 = v437;
  sub_1CA948B68();

  v259 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v246 + 120) = sub_1CA2F9F14(v400, v399, v254, v398, 0, 0, v256, v396 - v258);
  v260 = v435;
  v261 = v411;
  *(v246 + 144) = v435;
  *(v246 + 152) = v261;
  v400 = v261;
  v402 = sub_1CA94C438();
  v399 = v262;
  v263 = sub_1CA94C438();
  v398 = v264;
  v411 = v396;
  MEMORY[0x1EEE9AC00](v263);
  v265 = v396 - v440;
  sub_1CA948D98();
  v266 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v266);
  sub_1CA948B68();

  v267 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v246 + 160) = sub_1CA2F9F14(v402, v399, v263, v398, 0, 0, v265, v396 - v258);
  *(v246 + 184) = v260;
  v268 = v401;
  *(v246 + 192) = v401;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v269 = swift_allocObject();
  *(v269 + 16) = v426;
  v411 = v268;
  v270 = MEMORY[0x1E69E6158];
  *(v269 + 32) = sub_1CA94C1E8();
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v246 + 224) = v401;
  *(v246 + 200) = v269;
  sub_1CA94C1E8();
  v434[10] = sub_1CA2F864C();
  v271 = swift_allocObject();
  *(v271 + 16) = v413;
  v273 = v408;
  v272 = v409;
  v274 = v416;
  v275 = v417;
  *(v271 + 32) = v409;
  *(v271 + 40) = v275;
  *(v271 + 48) = v274;
  *(v271 + 64) = v270;
  *(v271 + 72) = v273;
  strcpy((v271 + 80), "WFPostCaption");
  *(v271 + 94) = -4864;
  *(v271 + 104) = v270;
  v276 = v410;
  *(v271 + 112) = v410;
  v409 = v272;
  v408 = v273;
  v410 = v276;
  v277 = sub_1CA94C438();
  v398 = v278;
  v399 = v277;
  v279 = sub_1CA94C438();
  v397 = v280;
  *&v413 = v396;
  MEMORY[0x1EEE9AC00](v279);
  v281 = v440;
  sub_1CA948D98();
  v282 = v436;
  v283 = [v436 bundleURL];
  v396[1] = v396;
  MEMORY[0x1EEE9AC00](v283);
  sub_1CA948B68();

  v284 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v271 + 120) = sub_1CA2F9F14(v399, v398, v279, v397, 0, 0, v396 - v281, v396 - v258);
  v285 = v400;
  *(v271 + 144) = v435;
  *(v271 + 152) = v285;
  *&v413 = v285;
  v286 = sub_1CA94C438();
  v398 = v287;
  v399 = v286;
  v288 = sub_1CA94C438();
  v397 = v289;
  v400 = v396;
  MEMORY[0x1EEE9AC00](v288);
  sub_1CA948D98();
  v290 = [v282 bundleURL];
  MEMORY[0x1EEE9AC00](v290);
  sub_1CA948B68();

  v291 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v271 + 160) = sub_1CA2F9F14(v399, v398, v288, v397, 0, 0, v396 - v281, v396 - v258);
  v292 = v411;
  *(v271 + 184) = v435;
  *(v271 + 192) = v292;
  v293 = swift_allocObject();
  *(v293 + 16) = v423;
  v294 = swift_allocObject();
  *(v294 + 16) = v432;
  strcpy((v294 + 32), "WFParameterKey");
  *(v294 + 47) = -18;
  *(v294 + 48) = 0x795474736F504657;
  *(v294 + 56) = 0xEA00000000006570;
  v295 = MEMORY[0x1E69E6158];
  v296 = v418;
  *(v294 + 72) = MEMORY[0x1E69E6158];
  *(v294 + 80) = v296;
  *(v294 + 88) = v412;
  *(v294 + 96) = &unk_1F49F7930;
  *(v294 + 120) = v422;
  *(v294 + 128) = 0x72756F7365524657;
  *(v294 + 168) = v295;
  *(v294 + 136) = 0xEF7373616C436563;
  *(v294 + 144) = 0xD00000000000001BLL;
  v297 = v424;
  *(v294 + 152) = v424;
  *(v293 + 32) = sub_1CA94C1E8();
  v298 = swift_allocObject();
  *(v298 + 16) = v432;
  strcpy((v298 + 32), "WFParameterKey");
  *(v298 + 47) = -18;
  strcpy((v298 + 48), "WFComposeInApp");
  *(v298 + 63) = -18;
  v299 = MEMORY[0x1E69E6158];
  v300 = v421;
  *(v298 + 72) = MEMORY[0x1E69E6158];
  *(v298 + 80) = v300;
  *(v298 + 88) = v419;
  *(v298 + 96) = 0;
  *(v298 + 120) = MEMORY[0x1E69E6370];
  *(v298 + 128) = 0x72756F7365524657;
  *(v298 + 168) = v299;
  *(v298 + 136) = 0xEF7373616C436563;
  *(v298 + 144) = 0xD00000000000001BLL;
  *(v298 + 152) = v297;
  v301 = v299;
  *(v293 + 40) = sub_1CA94C1E8();
  *(v271 + 224) = v425;
  *(v271 + 200) = v293;
  sub_1CA94C1E8();
  v434[11] = sub_1CA2F864C();
  v302 = swift_allocObject();
  *(v302 + 16) = v414;
  v303 = v416;
  v304 = v417;
  *(v302 + 32) = v409;
  *(v302 + 40) = v304;
  *(v302 + 48) = v303;
  v305 = v408;
  *(v302 + 64) = v301;
  *(v302 + 72) = v305;
  *(v302 + 80) = 0x615474736F504657;
  *(v302 + 88) = 0xEA00000000007367;
  v306 = v410;
  *(v302 + 104) = v301;
  *(v302 + 112) = v306;
  v307 = sub_1CA94C438();
  v399 = v308;
  v400 = v307;
  v309 = sub_1CA94C438();
  v398 = v310;
  *&v414 = v396;
  MEMORY[0x1EEE9AC00](v309);
  v311 = v440;
  sub_1CA948D98();
  v312 = v436;
  v313 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v313);
  v314 = v396 - v437;
  sub_1CA948B68();

  v315 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v302 + 120) = sub_1CA2F9F14(v400, v399, v309, v398, 0, 0, v396 - v311, v314);
  v316 = v435;
  v317 = v413;
  *(v302 + 144) = v435;
  *(v302 + 152) = v317;
  v318 = sub_1CA94C438();
  v399 = v319;
  v400 = v318;
  v320 = sub_1CA94C438();
  v398 = v321;
  *&v414 = v396;
  MEMORY[0x1EEE9AC00](v320);
  sub_1CA948D98();
  v322 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v322);
  v323 = v396 - v437;
  sub_1CA948B68();

  v324 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v325 = sub_1CA2F9F14(v400, v399, v320, v398, 0, 0, v396 - v311, v323);
  *(v302 + 184) = v316;
  *(v302 + 160) = v325;
  sub_1CA94C1E8();
  v434[12] = sub_1CA2F864C();
  v326 = swift_allocObject();
  *(v326 + 16) = v403;
  v327 = v416;
  v328 = v417;
  *(v326 + 32) = v409;
  *(v326 + 40) = v328;
  *(v326 + 48) = v327;
  v329 = MEMORY[0x1E69E6158];
  v330 = v408;
  *(v326 + 64) = MEMORY[0x1E69E6158];
  *(v326 + 72) = v330;
  *(v326 + 80) = v418;
  *(v326 + 88) = 0x80000001CA9AD9D0;
  v331 = v410;
  *(v326 + 104) = v329;
  *(v326 + 112) = v331;
  v332 = sub_1CA94C438();
  v416 = v333;
  v417 = v332;
  v334 = sub_1CA94C438();
  *&v414 = v335;
  v431 = v396;
  MEMORY[0x1EEE9AC00](v334);
  v336 = v440;
  sub_1CA948D98();
  v337 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v337);
  v338 = v437;
  sub_1CA948B68();

  v339 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v326 + 120) = sub_1CA2F9F14(v417, v416, v334, v414, 0, 0, v396 - v336, v396 - v338);
  v340 = v435;
  *(v326 + 144) = v435;
  *(v326 + 152) = @"Multiline";
  *(v326 + 160) = 1;
  v341 = v413;
  *(v326 + 184) = MEMORY[0x1E69E6370];
  *(v326 + 192) = v341;
  v342 = @"Multiline";
  v343 = sub_1CA94C438();
  v416 = v344;
  v417 = v343;
  v345 = sub_1CA94C438();
  v347 = v346;
  v431 = v396;
  MEMORY[0x1EEE9AC00](v345);
  v348 = v396 - v336;
  sub_1CA948D98();
  v349 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v349);
  sub_1CA948B68();

  v350 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v326 + 200) = sub_1CA2F9F14(v417, v416, v345, v347, 0, 0, v348, v396 - v338);
  v351 = v411;
  *(v326 + 224) = v340;
  *(v326 + 232) = v351;
  v352 = swift_allocObject();
  *(v352 + 16) = v426;
  *(v352 + 32) = sub_1CA94C1E8();
  *(v326 + 264) = v401;
  *(v326 + 240) = v352;
  sub_1CA94C1E8();
  v353 = sub_1CA2F864C();
  v354 = v434;
  v434[13] = v353;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v356 = v427;
  v427[40] = v354;
  v356[43] = v355;
  v356[44] = @"ParameterSummary";
  v357 = @"ParameterSummary";
  v358 = sub_1CA94C438();
  v360 = v359;
  v361 = sub_1CA94C438();
  v363 = v362;
  MEMORY[0x1EEE9AC00](v361);
  v364 = v396 - v440;
  sub_1CA948D98();
  v365 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v365);
  v366 = v396 - v437;
  sub_1CA948B68();

  v367 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v368 = sub_1CA2F9F14(v358, v360, v361, v363, 0, 0, v364, v366);
  v369 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v370 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v371 = v427;
  v427[45] = v369;
  v371[48] = v370;
  v371[49] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v372 = swift_allocObject();
  *(v372 + 16) = v432;
  v373 = swift_allocObject();
  *(v373 + 16) = v423;
  v440 = 0x80000001CA99B240;
  *(v373 + 32) = v418;
  *(v373 + 40) = 0x80000001CA99B240;
  v374 = swift_allocObject();
  *(v374 + 16) = v426;
  v375 = swift_allocObject();
  *(v375 + 16) = v432;
  strcpy((v375 + 32), "WFParameterKey");
  *(v375 + 47) = -18;
  strcpy((v375 + 48), "WFComposeInApp");
  *(v375 + 63) = -18;
  v376 = MEMORY[0x1E69E6158];
  v377 = v421;
  *(v375 + 72) = MEMORY[0x1E69E6158];
  *(v375 + 80) = v377;
  *(v375 + 88) = v419;
  *(v375 + 96) = 0;
  *(v375 + 120) = MEMORY[0x1E69E6370];
  *(v375 + 128) = 0x72756F7365524657;
  *(v375 + 168) = v376;
  *(v375 + 136) = 0xEF7373616C436563;
  *(v375 + 144) = 0xD00000000000001BLL;
  *(v375 + 152) = v424;
  v378 = @"RequiredResources";
  *(v374 + 32) = sub_1CA94C1E8();
  *(v373 + 48) = v374;
  *(v373 + 72) = v425;
  *(v373 + 80) = 0x72756F7365524657;
  *(v373 + 120) = v376;
  v379 = v404;
  *(v373 + 88) = 0xEF7373616C436563;
  *(v373 + 96) = v379;
  *(v373 + 104) = 0x80000001CA9ADA60;
  v380 = sub_1CA94C1E8();
  *(v372 + 56) = v415;
  *(v372 + 32) = v380;
  v381 = swift_allocObject();
  *(v381 + 16) = v423;
  v382 = v418;
  v383 = v440;
  *(v381 + 32) = v418;
  *(v381 + 40) = v383;
  v384 = swift_allocObject();
  *(v384 + 16) = v423;
  v385 = swift_allocObject();
  *(v385 + 16) = v432;
  strcpy((v385 + 32), "WFParameterKey");
  *(v385 + 47) = -18;
  *(v385 + 48) = 0x795474736F504657;
  *(v385 + 56) = 0xEA00000000006570;
  *(v385 + 72) = v376;
  *(v385 + 80) = v382;
  *(v385 + 88) = v412;
  *(v385 + 96) = &unk_1F49F7A00;
  *(v385 + 120) = v422;
  *(v385 + 128) = 0x72756F7365524657;
  *(v385 + 168) = v376;
  *(v385 + 136) = 0xEF7373616C436563;
  *(v385 + 144) = 0xD00000000000001BLL;
  v386 = v424;
  *(v385 + 152) = v424;
  *(v384 + 32) = sub_1CA94C1E8();
  v387 = swift_allocObject();
  *(v387 + 16) = v432;
  strcpy((v387 + 32), "WFParameterKey");
  *(v387 + 47) = -18;
  strcpy((v387 + 48), "WFComposeInApp");
  *(v387 + 63) = -18;
  v388 = v421;
  *(v387 + 72) = v376;
  *(v387 + 80) = v388;
  *(v387 + 88) = v419;
  *(v387 + 96) = 1;
  *(v387 + 120) = MEMORY[0x1E69E6370];
  *(v387 + 128) = 0x72756F7365524657;
  *(v387 + 168) = v376;
  *(v387 + 136) = 0xEF7373616C436563;
  *(v387 + 144) = 0xD00000000000001BLL;
  *(v387 + 152) = v386;
  *(v384 + 40) = sub_1CA94C1E8();
  *(v381 + 48) = v384;
  *(v381 + 72) = v425;
  *(v381 + 80) = 0x72756F7365524657;
  *(v381 + 120) = v376;
  v389 = v405;
  *(v381 + 88) = 0xEF7373616C436563;
  *(v381 + 96) = v389;
  *(v381 + 104) = 0x80000001CA9932D0;
  *(v372 + 64) = sub_1CA94C1E8();
  *(v372 + 120) = v376;
  *(v372 + 88) = v415;
  *(v372 + 96) = 0xD00000000000001CLL;
  *(v372 + 104) = 0x80000001CA993620;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v391 = v427;
  v427[53] = v390;
  v391[50] = v372;
  v391[54] = sub_1CA94C368();
  v391[55] = sub_1CA94C1E8();
  v392 = v406;
  v391[58] = v406;
  v391[59] = @"UserInterfaceClasses";
  v393 = @"UserInterfaceClasses";
  v394 = sub_1CA94C1E8();
  v391[63] = v392;
  v391[60] = v394;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3975F4()
{
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  strcpy((inited + 32), "DocumentTypes");
  *(inited + 46) = -4864;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 48) = &unk_1F49F7AF0;
  *(inited + 72) = v1;
  strcpy((inited + 80), "ExportedTypes");
  *(inited + 94) = -4864;
  *(inited + 96) = &unk_1F49F7B20;
  *(inited + 120) = v1;
  *(inited + 128) = 0xD000000000000010;
  v290 = 0xD000000000000010;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 136) = 0x80000001CA9A8AF0;
  *(inited + 144) = 0x3531363331333934;
  *(inited + 152) = 0xE900000000000034;
  *(inited + 168) = v2;
  *(inited + 176) = 1701667150;
  *(inited + 184) = 0xE400000000000000;
  v3 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v297 = v11;
  v299 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v247 - v299;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v295 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v296 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v298 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v247 - v298;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v294 = v19;
  *(inited + 192) = v18;
  *(inited + 216) = v19;
  *(inited + 224) = 0x6D656863534C5255;
  *(inited + 232) = 0xEA00000000007365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v270 = swift_allocObject();
  v283 = xmmword_1CA97EDF0;
  *(v270 + 16) = xmmword_1CA97EDF0;
  v20 = swift_initStackObject();
  v269 = v20;
  *(v20 + 16) = v283;
  *(v20 + 32) = 0x736E6F69746341;
  *(v20 + 40) = 0xE700000000000000;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v280 = swift_allocObject();
  *(v280 + 16) = v283;
  v21 = swift_initStackObject();
  v263 = xmmword_1CA9813E0;
  *(v21 + 16) = xmmword_1CA9813E0;
  strcpy((v21 + 32), "ActionKeywords");
  *(v21 + 47) = -18;
  v22 = sub_1CA94C438();
  v24 = v23;
  v25 = sub_1CA94C438();
  v27 = v26;
  *&v292 = &v247;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v247 - v299;
  sub_1CA948D98();
  v29 = [v295 bundleURL];
  v268 = inited;
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v247 - v298;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 48) = sub_1CA2F9F14(v22, v24, v25, v27, 0, 0, v28, v30);
  *(v21 + 72) = v294;
  strcpy((v21 + 80), "CreationDate");
  *(v21 + 93) = 0;
  *(v21 + 94) = -5120;
  v262 = sub_1CA948CB8();
  *(v21 + 120) = v262;
  __swift_allocate_boxed_opaque_existential_1((v21 + 96));
  sub_1CA948C28();
  *(v21 + 128) = 0x7470697263736544;
  *(v21 + 136) = 0xEB000000006E6F69;
  v275 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1CA981310;
  *(v32 + 32) = @"DescriptionSummary";
  v267 = @"DescriptionSummary";
  v33 = sub_1CA94C438();
  v291 = v34;
  v35 = sub_1CA94C438();
  v37 = v36;
  *&v292 = &v247;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v247 - v299;
  sub_1CA948D98();
  v39 = [v295 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v247 - v298;
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v33, v291, v35, v37, 0, 0, v38, v40);
  *(v32 + 64) = v294;
  *(v32 + 40) = v42;
  type metadata accessor for DescriptionKey(0);
  v266 = v43;
  v265 = sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v275;
  v45 = sub_1CA6B3784();
  v248 = v21;
  *(v21 + 144) = v45;
  *(v21 + 168) = v44;
  *(v21 + 176) = 0x74616D726F46;
  *(v21 + 184) = 0xE600000000000000;
  *(v21 + 192) = 0xD000000000000016;
  *(v21 + 200) = 0x80000001CA9ADB10;
  v46 = MEMORY[0x1E69E6158];
  *(v21 + 216) = MEMORY[0x1E69E6158];
  *(v21 + 224) = 0x696669746E656449;
  v47 = v46;
  v264 = 0xEA00000000007265;
  *(v21 + 232) = 0xEA00000000007265;
  *(v21 + 240) = 0x6174657461657263;
  *(v21 + 248) = 0xEA00000000006B73;
  *(v21 + 264) = v46;
  strcpy((v21 + 272), "InputMapping");
  *(v21 + 285) = 0;
  *(v21 + 286) = -5120;
  v281 = swift_allocObject();
  v292 = xmmword_1CA9813C0;
  *(v281 + 1) = xmmword_1CA9813C0;
  v48 = swift_allocObject();
  v282 = xmmword_1CA981380;
  *(v48 + 16) = xmmword_1CA981380;
  strcpy((v48 + 32), "DestinationKey");
  *(v48 + 47) = -18;
  *(v48 + 48) = 0x656D614E6B736174;
  *(v48 + 56) = 0xE800000000000000;
  v49 = v47;
  *(v48 + 72) = v47;
  *(v48 + 80) = 0x74616E6974736544;
  *(v48 + 88) = 0xEF657079546E6F69;
  strcpy((v48 + 96), "URLQueryValue");
  *(v48 + 110) = -4864;
  *(v48 + 120) = v47;
  *(v48 + 128) = 0x73616C436D657449;
  v286 = 0xE900000000000073;
  v278 = 0x80000001CA993390;
  *(v48 + 136) = 0xE900000000000073;
  *(v48 + 144) = 0xD000000000000013;
  *(v48 + 152) = 0x80000001CA993390;
  *(v48 + 168) = v47;
  *(v48 + 176) = 0x6574656D61726150;
  *(v48 + 184) = 0xEB00000000495572;
  v291 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v50 = swift_allocObject();
  *(v50 + 16) = v292;
  v276 = 0xD000000000000014;
  v277 = 0x80000001CA99B500;
  *(v50 + 32) = @"Class";
  *(v50 + 40) = 0xD000000000000014;
  *(v50 + 48) = 0x80000001CA99B500;
  *(v50 + 64) = v47;
  *(v50 + 72) = @"Label";
  v51 = @"Class";
  v52 = @"Label";
  v53 = v51;
  v54 = v52;
  v285 = v53;
  v273 = v54;
  v55 = sub_1CA94C438();
  v287 = v56;
  v288 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  v289 = &v247;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v247 - v299;
  sub_1CA948D98();
  v61 = [v295 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v247 - v298;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v50 + 80) = sub_1CA2F9F14(v288, v287, v57, v59, 0, 0, v60, v62);
  *(v50 + 104) = v294;
  *(v50 + 112) = @"TextAlignment";
  *(v50 + 144) = v49;
  *(v50 + 120) = 0x7468676952;
  *(v50 + 128) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v289 = v64;
  v288 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v274 = @"TextAlignment";
  sub_1CA94C1E8();
  v65 = v291;
  *(v48 + 192) = sub_1CA2F864C();
  *(v48 + 216) = v65;
  *(v48 + 224) = 0x654B656372756F53;
  v287 = 0xE900000000000079;
  *(v48 + 232) = 0xE900000000000079;
  strcpy((v48 + 240), "ClearTaskName");
  *(v48 + 254) = -4864;
  *(v48 + 264) = v49;
  *(v48 + 272) = 0x7954656372756F53;
  *(v48 + 312) = v49;
  *(v48 + 280) = 0xEA00000000006570;
  *(v48 + 288) = 0x6574656D61726150;
  *(v48 + 296) = 0xE900000000000072;
  v281[4] = sub_1CA94C1E8();
  v66 = swift_allocObject();
  *(v66 + 16) = v282;
  strcpy((v66 + 32), "DestinationKey");
  *(v66 + 47) = -18;
  *(v66 + 48) = 0x656D614E7473696CLL;
  *(v66 + 56) = 0xE800000000000000;
  *(v66 + 72) = v49;
  *(v66 + 80) = 0x74616E6974736544;
  *(v66 + 88) = 0xEF657079546E6F69;
  strcpy((v66 + 96), "URLQueryValue");
  *(v66 + 110) = -4864;
  *(v66 + 120) = v49;
  *(v66 + 128) = 0x73616C436D657449;
  *(v66 + 136) = v286;
  *(v66 + 144) = 0xD000000000000013;
  *(v66 + 152) = v278;
  *(v66 + 168) = v49;
  *(v66 + 176) = 0x6574656D61726150;
  *(v66 + 184) = 0xEB00000000495572;
  v67 = swift_allocObject();
  *(v67 + 16) = v292;
  v68 = v285;
  v70 = v276;
  v69 = v277;
  *(v67 + 32) = v285;
  *(v67 + 40) = v70;
  *(v67 + 48) = v69;
  v71 = v273;
  *(v67 + 64) = v49;
  *(v67 + 72) = v71;
  v285 = v68;
  v273 = v71;
  v271 = sub_1CA94C438();
  *&v260 = v72;
  v73 = sub_1CA94C438();
  v75 = v74;
  v272 = &v247;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v247 - v299;
  sub_1CA948D98();
  v77 = [v295 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v247 - v298;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 80) = sub_1CA2F9F14(v271, v260, v73, v75, 0, 0, v76, v78);
  v80 = v274;
  *(v67 + 104) = v294;
  *(v67 + 112) = v80;
  *(v67 + 144) = v49;
  *(v67 + 120) = 0x7468676952;
  *(v67 + 128) = 0xE500000000000000;
  sub_1CA94C1E8();
  v81 = v291;
  *(v66 + 192) = sub_1CA2F864C();
  *(v66 + 216) = v81;
  *(v66 + 224) = 0x654B656372756F53;
  *(v66 + 232) = v287;
  strcpy((v66 + 240), "ClearListName");
  *(v66 + 254) = -4864;
  *(v66 + 264) = v49;
  *(v66 + 272) = 0x7954656372756F53;
  *(v66 + 312) = v49;
  *(v66 + 280) = 0xEA00000000006570;
  *(v66 + 288) = 0x6574656D61726150;
  *(v66 + 296) = 0xE900000000000072;
  v281[5] = sub_1CA94C1E8();
  v82 = swift_allocObject();
  v260 = xmmword_1CA981400;
  *(v82 + 16) = xmmword_1CA981400;
  strcpy((v82 + 32), "DestinationKey");
  *(v82 + 47) = -18;
  strcpy((v82 + 48), "taskPosition");
  *(v82 + 61) = 0;
  *(v82 + 62) = -5120;
  *(v82 + 72) = v49;
  *(v82 + 80) = 0x74616E6974736544;
  *(v82 + 88) = 0xEF657079546E6F69;
  strcpy((v82 + 96), "URLQueryValue");
  *(v82 + 110) = -4864;
  *(v82 + 120) = v49;
  *(v82 + 128) = 0x73616C436D657449;
  v259 = 0x80000001CA993A80;
  *(v82 + 136) = v286;
  *(v82 + 144) = 0xD000000000000013;
  *(v82 + 152) = 0x80000001CA993A80;
  v258 = 0x80000001CA9A8C50;
  v83 = v290;
  *(v82 + 168) = v49;
  *(v82 + 176) = v83;
  v84 = MEMORY[0x1E69E6530];
  *(v82 + 184) = 0x80000001CA9A8C50;
  *(v82 + 192) = 1;
  *(v82 + 216) = v84;
  *(v82 + 224) = 0x6574656D61726150;
  *(v82 + 232) = 0xEB00000000495572;
  v85 = swift_allocObject();
  *(v85 + 16) = v292;
  v86 = v285;
  *(v85 + 32) = v285;
  *(v85 + 40) = 0xD000000000000012;
  v256 = 0x80000001CA99B980;
  v257 = 0xD000000000000012;
  *(v85 + 48) = 0x80000001CA99B980;
  v87 = v273;
  *(v85 + 64) = v49;
  *(v85 + 72) = v87;
  v272 = v86;
  v271 = v87;
  v285 = sub_1CA94C438();
  v273 = v88;
  v89 = sub_1CA94C438();
  v254 = v90;
  v255 = v89;
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v247 - v299;
  sub_1CA948D98();
  v92 = v295;
  v93 = [v295 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v298;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 80) = sub_1CA2F9F14(v285, v273, v255, v254, 0, 0, v91, &v247 - v94);
  v96 = v294;
  *(v85 + 104) = v294;
  *(v85 + 112) = @"StepperPrefix";
  v255 = @"StepperPrefix";
  v273 = sub_1CA94C438();
  v254 = v97;
  v98 = sub_1CA94C438();
  v252 = v99;
  v253 = v98;
  v285 = &v247;
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v247 - v299;
  sub_1CA948D98();
  v101 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v273, v254, v253, v252, 0, 0, v100, &v247 - v94);
  *(v85 + 144) = v96;
  *(v85 + 120) = v103;
  sub_1CA94C1E8();
  v104 = v291;
  *(v82 + 240) = sub_1CA2F864C();
  *(v82 + 264) = v104;
  *(v82 + 272) = 0x654B656372756F53;
  v285 = 0xD000000000000011;
  *(v82 + 280) = v287;
  *(v82 + 288) = 0xD000000000000011;
  *(v82 + 296) = 0x80000001CA9ADBA0;
  v105 = MEMORY[0x1E69E6158];
  *(v82 + 312) = MEMORY[0x1E69E6158];
  *(v82 + 320) = 0x7954656372756F53;
  *(v82 + 360) = v105;
  *(v82 + 328) = 0xEA00000000006570;
  *(v82 + 336) = 0x6574656D61726150;
  *(v82 + 344) = 0xE900000000000072;
  v106 = sub_1CA94C1E8();
  v107 = v281;
  v281[6] = v106;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v273 = v108;
  v109 = v248;
  v248[36] = v107;
  v109[39] = v108;
  v109[40] = 1701667150;
  v109[41] = 0xE400000000000000;
  v110 = sub_1CA94C438();
  v253 = v111;
  v254 = v110;
  v112 = sub_1CA94C438();
  v252 = v113;
  v281 = &v247;
  MEMORY[0x1EEE9AC00](v112);
  v114 = v299;
  sub_1CA948D98();
  v115 = [v295 bundleURL];
  *&v251 = &v247;
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v247 - v298;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109[42] = sub_1CA2F9F14(v254, v253, v112, v252, 0, 0, &v247 - v114, v116);
  v281 = 0x80000001CA9A8F60;
  v118 = v290;
  v109[45] = v294;
  v109[46] = v118;
  v109[47] = 0x80000001CA9A8F60;
  v119 = sub_1CA94C438();
  v252 = v120;
  v253 = v119;
  v121 = sub_1CA94C438();
  *&v251 = v122;
  v254 = &v247;
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948D98();
  v123 = [v295 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v247 - v298;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v253, v252, v121, v251, 0, 0, &v247 - v114, v124);
  v127 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v128 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v109[48] = v127;
  v253 = 0x80000001CA99B240;
  v254 = v128;
  v129 = v285;
  v109[51] = v128;
  v109[52] = v129;
  v109[53] = 0x80000001CA99B240;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v130 = swift_allocObject();
  v251 = xmmword_1CA9813B0;
  *(v130 + 16) = xmmword_1CA9813B0;
  v300 = 2;
  v301 = 1;
  v250 = type metadata accessor for WFDeviceIdiomResource();
  v131 = objc_allocWithZone(v250);
  WFDeviceIdiomResource.init(requirement:)(&v300);
  *(v130 + 32) = v132;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v109[57] = v249;
  v109[54] = v130;
  *(v280 + 32) = sub_1CA94C1E8();
  v133 = swift_allocObject();
  *(v133 + 16) = v263;
  strcpy((v133 + 32), "ActionKeywords");
  *(v133 + 47) = -18;
  v248 = sub_1CA94C438();
  v135 = v134;
  v136 = sub_1CA94C438();
  v138 = v137;
  *&v263 = &v247;
  MEMORY[0x1EEE9AC00](v136);
  v139 = &v247 - v299;
  sub_1CA948D98();
  v140 = v295;
  v141 = [v295 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v247 - v298;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v133 + 48) = sub_1CA2F9F14(v248, v135, v136, v138, 0, 0, v139, v142);
  *(v133 + 72) = v294;
  strcpy((v133 + 80), "CreationDate");
  *(v133 + 93) = 0;
  *(v133 + 94) = -5120;
  *(v133 + 120) = v262;
  __swift_allocate_boxed_opaque_existential_1((v133 + 96));
  sub_1CA948C28();
  *(v133 + 128) = 0x7470697263736544;
  *(v133 + 136) = 0xEB000000006E6F69;
  v144 = swift_allocObject();
  *(v144 + 16) = v283;
  *(v144 + 32) = @"DescriptionInput";
  v145 = @"DescriptionInput";
  v146 = sub_1CA94C438();
  v262 = v147;
  *&v263 = v146;
  v148 = sub_1CA94C438();
  v261 = v149;
  *&v283 = &v247;
  MEMORY[0x1EEE9AC00](v148);
  v150 = &v247 - v299;
  sub_1CA948D98();
  v151 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v247 - v298;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v144 + 40) = sub_1CA2F9F14(v263, v262, v148, v261, 0, 0, v150, v152);
  v154 = v294;
  v155 = v267;
  *(v144 + 64) = v294;
  *(v144 + 72) = v155;
  v267 = sub_1CA94C438();
  *&v263 = v156;
  v157 = sub_1CA94C438();
  v159 = v158;
  *&v283 = &v247;
  MEMORY[0x1EEE9AC00](v157);
  v160 = &v247 - v299;
  sub_1CA948D98();
  v161 = [v295 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v247 - v298;
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v164 = sub_1CA2F9F14(v267, v263, v157, v159, 0, 0, v160, v162);
  *(v144 + 104) = v154;
  *(v144 + 80) = v164;
  sub_1CA94C1E8();
  v165 = v275;
  *(v133 + 144) = sub_1CA6B3784();
  *(v133 + 168) = v165;
  *(v133 + 176) = 0x74616D726F46;
  *(v133 + 184) = 0xE600000000000000;
  *(v133 + 192) = 0xD000000000000026;
  *(v133 + 200) = 0x80000001CA9ADCB0;
  v166 = MEMORY[0x1E69E6158];
  *(v133 + 216) = MEMORY[0x1E69E6158];
  *(v133 + 224) = 0x696669746E656449;
  *(v133 + 232) = v264;
  *(v133 + 240) = 0x696C657461657263;
  *(v133 + 248) = 0xEA00000000007473;
  *(v133 + 264) = v166;
  strcpy((v133 + 272), "InputMapping");
  *(v133 + 285) = 0;
  *(v133 + 286) = -5120;
  v167 = swift_allocObject();
  *(v167 + 16) = v292;
  v168 = v167;
  *&v283 = v167;
  v169 = swift_allocObject();
  *(v169 + 16) = v282;
  *(v169 + 32) = 0xD000000000000013;
  *(v169 + 40) = 0x80000001CA9ACAF0;
  *(v169 + 48) = 0xD000000000000025;
  *(v169 + 56) = 0x80000001CA9ADCE0;
  *(v169 + 72) = v166;
  strcpy((v169 + 80), "DestinationKey");
  *(v169 + 95) = -18;
  *(v169 + 96) = 0x736B736174;
  *(v169 + 104) = 0xE500000000000000;
  *(v169 + 120) = v166;
  *(v169 + 128) = 0x74616E6974736544;
  *(v169 + 136) = 0xEF657079546E6F69;
  *(v169 + 144) = 0x74736275534C5255;
  *(v169 + 152) = 0xEF6E6F6974757469;
  v170 = v285;
  *(v169 + 168) = v166;
  *(v169 + 176) = v170;
  *(v169 + 184) = 0x80000001CA9ADD10;
  *(v169 + 192) = 11311;
  *(v169 + 200) = 0xE200000000000000;
  *(v169 + 216) = v166;
  strcpy((v169 + 224), "InputRequired");
  *(v169 + 238) = -4864;
  v171 = MEMORY[0x1E69E6370];
  *(v169 + 240) = 0;
  *(v169 + 264) = v171;
  *(v169 + 272) = 0x7954656372756F53;
  *(v169 + 312) = v166;
  *(v169 + 280) = 0xEA00000000006570;
  *(v169 + 288) = 0x7475706E49;
  *(v169 + 296) = 0xE500000000000000;
  *(v168 + 32) = sub_1CA94C1E8();
  v172 = swift_allocObject();
  *(v172 + 16) = v282;
  strcpy((v172 + 32), "DestinationKey");
  *(v172 + 47) = -18;
  *(v172 + 48) = 0x656D614E7473696CLL;
  *(v172 + 56) = 0xE800000000000000;
  *(v172 + 72) = v166;
  *(v172 + 80) = 0x74616E6974736544;
  *(v172 + 88) = 0xEF657079546E6F69;
  strcpy((v172 + 96), "URLQueryValue");
  *(v172 + 110) = -4864;
  *(v172 + 120) = v166;
  *(v172 + 128) = 0x73616C436D657449;
  *(v172 + 136) = v286;
  *(v172 + 144) = 0xD000000000000013;
  *(v172 + 152) = v278;
  *(v172 + 168) = v166;
  *(v172 + 176) = 0x6574656D61726150;
  *(v172 + 184) = 0xEB00000000495572;
  v173 = swift_allocObject();
  *(v173 + 16) = v292;
  v175 = v276;
  v174 = v277;
  *(v173 + 32) = v272;
  *(v173 + 40) = v175;
  *(v173 + 48) = v174;
  v176 = v271;
  *(v173 + 64) = v166;
  *(v173 + 72) = v176;
  v177 = sub_1CA94C438();
  v278 = v178;
  v279 = v177;
  v179 = sub_1CA94C438();
  v181 = v180;
  *&v282 = &v247;
  MEMORY[0x1EEE9AC00](v179);
  v182 = &v247 - v299;
  sub_1CA948D98();
  v183 = [v295 bundleURL];
  MEMORY[0x1EEE9AC00](v183);
  v184 = &v247 - v298;
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v173 + 80) = sub_1CA2F9F14(v279, v278, v179, v181, 0, 0, v182, v184);
  v186 = v274;
  *(v173 + 104) = v294;
  *(v173 + 112) = v186;
  v187 = MEMORY[0x1E69E6158];
  *(v173 + 144) = MEMORY[0x1E69E6158];
  *(v173 + 120) = 0x7468676952;
  *(v173 + 128) = 0xE500000000000000;
  sub_1CA94C1E8();
  v188 = v291;
  *(v172 + 192) = sub_1CA2F864C();
  *(v172 + 216) = v188;
  *(v172 + 224) = 0x654B656372756F53;
  *(v172 + 232) = v287;
  strcpy((v172 + 240), "ClearListName");
  *(v172 + 254) = -4864;
  *(v172 + 264) = v187;
  *(v172 + 272) = 0x7954656372756F53;
  *(v172 + 312) = v187;
  *(v172 + 280) = 0xEA00000000006570;
  *(v172 + 288) = 0x6574656D61726150;
  *(v172 + 296) = 0xE900000000000072;
  *(v283 + 40) = sub_1CA94C1E8();
  v189 = swift_allocObject();
  *(v189 + 16) = v260;
  strcpy((v189 + 32), "DestinationKey");
  *(v189 + 47) = -18;
  strcpy((v189 + 48), "listPosition");
  *(v189 + 61) = 0;
  *(v189 + 62) = -5120;
  *(v189 + 72) = v187;
  *(v189 + 80) = 0x74616E6974736544;
  *(v189 + 88) = 0xEF657079546E6F69;
  strcpy((v189 + 96), "URLQueryValue");
  *(v189 + 110) = -4864;
  *(v189 + 120) = v187;
  *(v189 + 128) = 0x73616C436D657449;
  *(v189 + 136) = v286;
  *(v189 + 144) = 0xD000000000000013;
  *(v189 + 152) = v259;
  v190 = v290;
  *(v189 + 168) = v187;
  *(v189 + 176) = v190;
  *(v189 + 184) = v258;
  *(v189 + 192) = 1;
  *(v189 + 216) = MEMORY[0x1E69E6530];
  *(v189 + 224) = 0x6574656D61726150;
  *(v189 + 232) = 0xEB00000000495572;
  v191 = swift_allocObject();
  *(v191 + 16) = v292;
  v192 = v256;
  v193 = v257;
  *(v191 + 32) = v272;
  *(v191 + 40) = v193;
  *(v191 + 48) = v192;
  v194 = v271;
  *(v191 + 64) = v187;
  *(v191 + 72) = v194;
  *&v292 = sub_1CA94C438();
  v286 = v195;
  v284 = sub_1CA94C438();
  *&v282 = v196;
  v293 = &v247;
  MEMORY[0x1EEE9AC00](v284);
  v197 = &v247 - v299;
  sub_1CA948D98();
  v198 = v295;
  v199 = [v295 bundleURL];
  v279 = &v247;
  MEMORY[0x1EEE9AC00](v199);
  v200 = v298;
  sub_1CA948B68();

  v201 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v191 + 80) = sub_1CA2F9F14(v292, v286, v284, v282, 0, 0, v197, &v247 - v200);
  v202 = v255;
  *(v191 + 104) = v294;
  *(v191 + 112) = v202;
  *&v292 = sub_1CA94C438();
  v286 = v203;
  v284 = sub_1CA94C438();
  *&v282 = v204;
  v293 = &v247;
  MEMORY[0x1EEE9AC00](v284);
  v205 = &v247 - v299;
  sub_1CA948D98();
  v206 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  sub_1CA948B68();

  v207 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v208 = sub_1CA2F9F14(v292, v286, v284, v282, 0, 0, v205, &v247 - v200);
  *(v191 + 144) = v294;
  *(v191 + 120) = v208;
  sub_1CA94C1E8();
  v209 = v291;
  *(v189 + 240) = sub_1CA2F864C();
  *(v189 + 264) = v209;
  *(v189 + 272) = 0x654B656372756F53;
  v210 = v285;
  *(v189 + 280) = v287;
  *(v189 + 288) = v210;
  *(v189 + 296) = 0x80000001CA9ADD80;
  v211 = MEMORY[0x1E69E6158];
  *(v189 + 312) = MEMORY[0x1E69E6158];
  *(v189 + 320) = 0x7954656372756F53;
  *(v189 + 360) = v211;
  *(v189 + 328) = 0xEA00000000006570;
  *(v189 + 336) = 0x6574656D61726150;
  *(v189 + 344) = 0xE900000000000072;
  v212 = sub_1CA94C1E8();
  v213 = v283;
  *(v283 + 48) = v212;
  *(v133 + 288) = v213;
  *(v133 + 312) = v273;
  *(v133 + 320) = 1701667150;
  *(v133 + 328) = 0xE400000000000000;
  v214 = sub_1CA94C438();
  v291 = v215;
  *&v292 = v214;
  v216 = sub_1CA94C438();
  v289 = v217;
  v293 = &v247;
  MEMORY[0x1EEE9AC00](v216);
  v218 = v299;
  sub_1CA948D98();
  v219 = v295;
  v220 = [v295 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  v221 = &v247 - v298;
  sub_1CA948B68();

  v222 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v133 + 336) = sub_1CA2F9F14(v292, v291, v216, v289, 0, 0, &v247 - v218, v221);
  v223 = v290;
  *(v133 + 360) = v294;
  *(v133 + 368) = v223;
  *(v133 + 376) = v281;
  v293 = sub_1CA94C438();
  *&v292 = v224;
  v225 = sub_1CA94C438();
  v291 = v226;
  v294 = &v247;
  MEMORY[0x1EEE9AC00](v225);
  sub_1CA948D98();
  v227 = [v219 bundleURL];
  MEMORY[0x1EEE9AC00](v227);
  v228 = &v247 - v298;
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v230 = sub_1CA2F9F14(v293, v292, v225, v291, 0, 0, &v247 - v218, v228);
  v231 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v133 + 384) = v231;
  v232 = v285;
  *(v133 + 408) = v254;
  *(v133 + 416) = v232;
  *(v133 + 424) = v253;
  v233 = swift_allocObject();
  *(v233 + 16) = v251;
  v300 = 2;
  v301 = 1;
  v234 = objc_allocWithZone(v250);
  WFDeviceIdiomResource.init(requirement:)(&v300);
  *(v233 + 32) = v235;
  *(v133 + 456) = v249;
  *(v133 + 432) = v233;
  v236 = MEMORY[0x1E69E6158];
  v237 = sub_1CA94C1E8();
  v238 = v280;
  *(v280 + 40) = v237;
  v239 = v269;
  v269[6] = v238;
  v239[9] = v273;
  v239[10] = 0x656D65686353;
  v239[15] = v236;
  v239[11] = 0xE600000000000000;
  v239[12] = 0x7070617261656C63;
  v239[13] = 0xE800000000000000;
  v240 = sub_1CA94C1E8();
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v242 = v270;
  *(v270 + 32) = v240;
  v242[11] = v236;
  v242[7] = v241;
  v242[8] = 0x7070617261656C63;
  v242[9] = 0xEB00000000617865;
  v243 = v242;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v245 = v268;
  *(v268 + 264) = v244;
  *(v245 + 240) = v243;
  return sub_1CA94C1E8();
}

uint64_t TypedValue.ID.variable.getter()
{
  v2 = sub_1CA94AC58();
  if (!v1)
  {
    v3 = v2;
    v0 = sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_90();
    v7 = sub_1CA399E74(v4, v5, v6);
    if (v7)
    {
      v0 = v7;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1CA399EE4();
      swift_allocError();
      *v9 = v3;
      swift_willThrow();
    }
  }

  return v0;
}

id sub_1CA399E74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSerializedRepresentation:a1 variableProvider:a2 parameter:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v4;
}

unint64_t sub_1CA399EE4()
{
  result = qword_1EC444A68;
  if (!qword_1EC444A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444A68);
  }

  return result;
}

void DisplayRepresentation.init(from:with:displayRepresentationConfig:)(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A78, &qword_1CA985618);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v70 - v19);
  v21 = OUTLINED_FUNCTION_47_4(v18, sel_localizedLabelForPossibleState_);
  if (v21)
  {
    v22 = v21;
    v23 = sub_1CA94C3A8();
    v74 = v24;
    v75 = v23;

    v26 = OUTLINED_FUNCTION_47_4(v25, sel_localizedSubtitleLabelForPossibleState_);
    if (v26)
    {
      v27 = v26;
      v28 = sub_1CA94C3A8();
      v73 = v29;
    }

    else
    {
      v28 = 0;
      v73 = 0;
    }

    v37 = OUTLINED_FUNCTION_47_4(v26, sel_accessoryImageForPossibleState_);
    if (v37)
    {
      v38 = v37;
      DisplayRepresentationConfiguration.image(from:)(v37, v20);
    }

    else
    {
      v39 = OUTLINED_FUNCTION_47_4(0, sel_accessoryIconForPossibleState_);
      if (v39)
      {
        v40 = v39;
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (v41)
        {
          v42 = v41;
          v72 = v28;
          v43 = [v41 symbolName];
          v44 = sub_1CA94C3A8();
          v70 = v45;
          v71 = v44;

          v46 = [v42 symbolColors];
          sub_1CA25B3D0(0, &unk_1EC441710, 0x1E69E09E0);
          v47 = sub_1CA94C658();

          if (sub_1CA25B410(v47))
          {
            sub_1CA275D70(0, (v47 & 0xC000000000000001) == 0, v47);
            if ((v47 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x1CCAA22D0](0, v47);
            }

            else
            {
              v48 = *(v47 + 32);
            }

            v49 = v48;
          }

          else
          {

            v49 = 0;
          }

          MEMORY[0x1CCAA01E0](v71, v70, v49, 0);

          v54 = *MEMORY[0x1E69DB390];
          v55 = sub_1CA94B318();
          OUTLINED_FUNCTION_52(v55);
          (*(v56 + 104))(v20, v54, v55);
          OUTLINED_FUNCTION_89();
          __swift_storeEnumTagSinglePayload(v57, v58, v59, v55);
          goto LABEL_20;
        }
      }

      sub_1CA94B318();
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    }

LABEL_20:
    sub_1CA2D9D20(v20, v16, &unk_1EC444A78, &qword_1CA985618);
    sub_1CA94B2E8();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    sub_1CA94B358();

    v64 = sub_1CA94B728();
    OUTLINED_FUNCTION_52(v64);
    (*(v65 + 8))(a3);
    sub_1CA27080C(v20, &unk_1EC444A78, &qword_1CA985618);
    sub_1CA94B458();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    OUTLINED_FUNCTION_36();
    return;
  }

  v30 = sub_1CA94B728();
  OUTLINED_FUNCTION_52(v30);
  (*(v31 + 8))(a3);

  sub_1CA94B458();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_36();

  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
}

void DisplayRepresentationConfiguration.image(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1CA94B6E8();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v76 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A88, &unk_1CA985620);
  v17 = OUTLINED_FUNCTION_18_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v76 - v20;
  v22 = sub_1CA94B3A8();
  v23 = OUTLINED_FUNCTION_1_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_0();
  v30 = (v29 - v28);
  v31 = a1;
  sub_1CA94B398();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
  {
    v55 = *(v25 + 32);
    v55(v30, v21, v22);
    v55(a2, v30, v22);
    v56 = *MEMORY[0x1E69DB390];
    v57 = sub_1CA94B318();
    OUTLINED_FUNCTION_52(v57);
    v59 = *(v58 + 104);
    OUTLINED_FUNCTION_14_0();
    v60();
LABEL_9:
    OUTLINED_FUNCTION_89();
    v54 = v57;
    goto LABEL_10;
  }

  v82 = a2;
  sub_1CA27080C(v21, &qword_1EC444A88, &unk_1CA985620);
  sub_1CA94B6C8();
  v32 = *(v7 + 104);
  v32(v12, *MEMORY[0x1E69DB4B8], v4);
  OUTLINED_FUNCTION_105();
  v33 = sub_1CA94B6D8();
  v34 = *(v7 + 8);
  v34(v12, v4);
  v34(v15, v4);
  if (v33)
  {
    v79 = v32;
    v35 = sub_1CA948BA8();
    v81 = &v76;
    v36 = OUTLINED_FUNCTION_1_0(v35);
    v78 = v37;
    v39 = *(v38 + 64);
    MEMORY[0x1EEE9AC00](v36);
    OUTLINED_FUNCTION_6_0();
    v77 = (v41 - v40);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
    v80 = &v76;
    v43 = OUTLINED_FUNCTION_18_0(v42);
    v45 = *(v44 + 64);
    MEMORY[0x1EEE9AC00](v43);
    v47 = &v76 - v46;
    sub_1CA39E320(v31, &v76 - v46);
    if (__swift_getEnumTagSinglePayload(v47, 1, v35) != 1)
    {
      v61 = v77;
      v62 = *(v78 + 32);
      v62(v77, v47, v35);
      v62(v82, v61, v35);
      v63 = *MEMORY[0x1E69DB388];
      v64 = sub_1CA94B318();
      OUTLINED_FUNCTION_52(v64);
      v66 = *(v65 + 104);
      OUTLINED_FUNCTION_14_0();
      v67();
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v64);
      goto LABEL_11;
    }

    sub_1CA27080C(v47, &qword_1EC444A90, &qword_1CA9827C0);
    v32 = v79;
  }

  sub_1CA94B6C8();
  v32(v12, *MEMORY[0x1E69DB4B0], v4);
  OUTLINED_FUNCTION_105();
  v48 = sub_1CA94B6D8();
  v34(v12, v4);
  v34(v15, v4);
  if (v48)
  {
    v49 = sub_1CA39F2B4(v31);
    if (v50 >> 60 != 15)
    {
      v71 = v82;
      *v82 = v49;
      v71[1] = v50;
      v72 = *MEMORY[0x1E69DB380];
      v57 = sub_1CA94B318();
      OUTLINED_FUNCTION_52(v57);
      v74 = *(v73 + 104);
      OUTLINED_FUNCTION_14_0();
      v75();
      goto LABEL_9;
    }
  }

  sub_1CA94B318();
  OUTLINED_FUNCTION_46();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
LABEL_11:
  OUTLINED_FUNCTION_36();
}

uint64_t DisplayRepresentation.init(from:thumbnailSize:displayRepresentationConfig:)()
{
  OUTLINED_FUNCTION_0();
  v0[8] = v1;
  v0[6] = v2;
  v0[7] = v3;
  v0[4] = v4;
  v0[5] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64) + 15;
  v0[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A78, &qword_1CA985618);
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  v0[10] = OUTLINED_FUNCTION_13_5();
  v0[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A98, &unk_1CA988BE0);
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  v0[12] = OUTLINED_FUNCTION_13_5();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AA0, &qword_1CA985640);
  OUTLINED_FUNCTION_18_0(v15);
  v17 = *(v16 + 64);
  v0[16] = OUTLINED_FUNCTION_13_5();
  v0[17] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A70, &qword_1CA985648);
  OUTLINED_FUNCTION_18_0(v18);
  v20 = *(v19 + 64);
  v0[18] = OUTLINED_FUNCTION_13_5();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AB0, &unk_1CA985650);
  OUTLINED_FUNCTION_18_0(v21);
  v23 = *(v22 + 64);
  v0[22] = OUTLINED_FUNCTION_13_5();
  v0[23] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AB8, &qword_1CA988BF0);
  OUTLINED_FUNCTION_18_0(v24);
  v26 = *(v25 + 64);
  v0[24] = OUTLINED_FUNCTION_13_5();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1CA39AAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_33_6();
  v38 = v36[5];
  v39 = [v38 richListTitle];
  v36[2] = sub_1CA94C3A8();
  v36[3] = v40;

  v41 = [objc_opt_self() wf:v38 securelyArchivedDataWithRootObject:?];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1CA948C08();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xF000000000000000;
  }

  v36[28] = v43;
  v36[29] = v45;
  v46 = v36[5];
  v47 = [v46 getListSubtitle_];
  if ([v46 loadsListSubtitleAsynchronously] && v47)
  {
    v48 = v36[26];
    v49 = MEMORY[0x1E69DB370];
    if (v45 >> 60 == 15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AC0, &qword_1CA985668);
      OUTLINED_FUNCTION_46();
    }

    else
    {
      sub_1CA25CF98(v43, v45);
      sub_1CA94B3E8();
      v60 = *v49;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AC0, &qword_1CA985668);
      OUTLINED_FUNCTION_52(v61);
      v63 = *(v62 + 104);
      v64 = OUTLINED_FUNCTION_26_6();
      v65(v64);
      OUTLINED_FUNCTION_89();
      v53 = v61;
    }

    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    v66 = v36[5];
    sub_1CA2D9CD4(v36[26], v36[27], &qword_1EC444AB8, &qword_1CA988BF0);
    v67 = [v66 getListAltText_];
    if ([v66 loadsListAltTextAsynchronously] && v67)
    {
      if (v36[29] >> 60 == 15)
      {
        v68 = v36[20];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445AC0, L"b\t\r");
        v69 = OUTLINED_FUNCTION_0_22();
      }

      else
      {
        v76 = v36[28];
        v48 = v36[20];
        v77 = OUTLINED_FUNCTION_23();
        sub_1CA25CF98(v77, v78);
        OUTLINED_FUNCTION_23();
        sub_1CA94B3E8();
        v79 = *v49;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445AC0, L"b\t\r");
        OUTLINED_FUNCTION_52(v80);
        v82 = *(v81 + 104);
        v83 = OUTLINED_FUNCTION_26_6();
        v84(v83);
        OUTLINED_FUNCTION_89();
        v72 = v80;
      }

      __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
      v86 = v36[6];
      v85 = v36[7];
      v87 = v36[5];
      v88 = sub_1CA2D9CD4(v36[20], v36[21], &unk_1EC445A70, &qword_1CA985648);
      v89 = OUTLINED_FUNCTION_22_7(v88, sel_getListThumbnail_forSize_);
      if ([v87 loadsListThumbnailAsynchronously] && v89)
      {
        OUTLINED_FUNCTION_27_10();
        if (!v91 & v90)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
          OUTLINED_FUNCTION_29_8();
        }

        else
        {
          v99 = v36[28];
          v100 = v36[14];
          v101 = OUTLINED_FUNCTION_52_0();
          sub_1CA25CF98(v101, v102);
          OUTLINED_FUNCTION_52_0();
          sub_1CA94B3E8();
          v48 = *v49;
          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
          OUTLINED_FUNCTION_52(v103);
          v105 = *(v104 + 104);
          v106 = OUTLINED_FUNCTION_28_5();
          v107(v106);
          OUTLINED_FUNCTION_32_5();
        }

        v110 = OUTLINED_FUNCTION_3_20(v108, v109);
        v113 = OUTLINED_FUNCTION_36_5(v110, v111, v112, &unk_1CA988BE0);
        v115 = OUTLINED_FUNCTION_35_5(v113, v114, &qword_1EC444AB8, &qword_1CA988BF0);
        OUTLINED_FUNCTION_37_5(v115, v116, &unk_1EC445A70, &qword_1CA985648);
        v117 = OUTLINED_FUNCTION_16_9();
        sub_1CA2D9D20(v117, v118, v119, &unk_1CA988BE0);
        sub_1CA94B2E8();
        v120 = OUTLINED_FUNCTION_0_22();
        __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
        OUTLINED_FUNCTION_14_12();
        sub_1CA39F318(a17, a18);

        v124 = sub_1CA94B728();
        OUTLINED_FUNCTION_52(v124);
        (*(v125 + 8))(a16);
        sub_1CA27080C(v37, &qword_1EC444A98, &unk_1CA988BE0);
        sub_1CA27080C(v48, &unk_1EC445A70, &qword_1CA985648);
        sub_1CA27080C(a15, &qword_1EC444AB8, &qword_1CA988BF0);

        OUTLINED_FUNCTION_3_6();
        OUTLINED_FUNCTION_6_19();

        return v127(v126, v127, v128, v129, v130, v131, v132, v133, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
      }

      else
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_77();
        v36[32] = v92;
        *v92 = v93;
        OUTLINED_FUNCTION_4_22(v92);
        OUTLINED_FUNCTION_6_19();

        return WFContentItem.asyncDisplayImage(with:displayRepresentationConfig:)(v94, v95, v96, v97);
      }
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      v36[31] = v73;
      *v73 = v74;
      OUTLINED_FUNCTION_11_11(v73);
      OUTLINED_FUNCTION_6_19();

      return WFContentItem.asyncDisplayAltText()();
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    v36[30] = v54;
    *v54 = v55;
    v54[1] = sub_1CA39B0F0;
    v56 = v36[23];
    v57 = v36[5];
    OUTLINED_FUNCTION_6_19();

    return WFContentItem.asyncDisplaySubtitle()();
  }
}

uint64_t sub_1CA39B0F0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 240);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA39B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_33_6();
  sub_1CA2D9CD4(v38[23], v38[22], &qword_1EC444AB0, &unk_1CA985650);
  v40 = sub_1CA94B418();
  v41 = OUTLINED_FUNCTION_46_3(v40);
  v42 = v38[25];
  if (v41 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AC0, &qword_1CA985668);
    v43 = OUTLINED_FUNCTION_0_22();
  }

  else
  {
    (*(*(v36 - 8) + 32))(v38[25], v38[22], v36);
    v47 = *MEMORY[0x1E69DB378];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AC0, &qword_1CA985668);
    OUTLINED_FUNCTION_52(v37);
    (*(v48 + 104))(v42, v47, v37);
    OUTLINED_FUNCTION_89();
    v46 = v37;
  }

  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v49 = v38[5];
  sub_1CA2D9CD4(v38[25], v38[27], &qword_1EC444AB8, &qword_1CA988BF0);
  v50 = [v49 getListAltText_];
  if ([v49 loadsListAltTextAsynchronously] && v50)
  {
    v51 = MEMORY[0x1E69DB370];
    if (v38[29] >> 60 == 15)
    {
      v52 = v38[20];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445AC0, L"b\t\r");
      v53 = OUTLINED_FUNCTION_0_22();
    }

    else
    {
      v61 = v38[28];
      v37 = v38[20];
      v62 = OUTLINED_FUNCTION_23();
      sub_1CA25CF98(v62, v63);
      OUTLINED_FUNCTION_23();
      sub_1CA94B3E8();
      v64 = *v51;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445AC0, L"b\t\r");
      OUTLINED_FUNCTION_52(v65);
      v67 = *(v66 + 104);
      v68 = OUTLINED_FUNCTION_26_6();
      v69(v68);
      OUTLINED_FUNCTION_89();
      v56 = v65;
    }

    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    v71 = v38[6];
    v70 = v38[7];
    v72 = v38[5];
    v73 = sub_1CA2D9CD4(v38[20], v38[21], &unk_1EC445A70, &qword_1CA985648);
    v74 = OUTLINED_FUNCTION_22_7(v73, sel_getListThumbnail_forSize_);
    if ([v72 loadsListThumbnailAsynchronously] && v74)
    {
      OUTLINED_FUNCTION_27_10();
      if (!v76 & v75)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
        OUTLINED_FUNCTION_29_8();
      }

      else
      {
        v84 = v38[28];
        v85 = v38[14];
        v86 = OUTLINED_FUNCTION_52_0();
        sub_1CA25CF98(v86, v87);
        OUTLINED_FUNCTION_52_0();
        sub_1CA94B3E8();
        v37 = *v51;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
        OUTLINED_FUNCTION_52(v88);
        v90 = *(v89 + 104);
        v91 = OUTLINED_FUNCTION_28_5();
        v92(v91);
        OUTLINED_FUNCTION_32_5();
      }

      v95 = OUTLINED_FUNCTION_3_20(v93, v94);
      v98 = OUTLINED_FUNCTION_36_5(v95, v96, v97, &unk_1CA988BE0);
      v100 = OUTLINED_FUNCTION_35_5(v98, v99, &qword_1EC444AB8, &qword_1CA988BF0);
      OUTLINED_FUNCTION_37_5(v100, v101, &unk_1EC445A70, &qword_1CA985648);
      v102 = OUTLINED_FUNCTION_16_9();
      sub_1CA2D9D20(v102, v103, v104, &unk_1CA988BE0);
      sub_1CA94B2E8();
      v105 = OUTLINED_FUNCTION_0_22();
      __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
      OUTLINED_FUNCTION_14_12();
      sub_1CA39F318(a17, a18);

      v109 = sub_1CA94B728();
      OUTLINED_FUNCTION_52(v109);
      (*(v110 + 8))(a16);
      sub_1CA27080C(v39, &qword_1EC444A98, &unk_1CA988BE0);
      sub_1CA27080C(v37, &unk_1EC445A70, &qword_1CA985648);
      sub_1CA27080C(a15, &qword_1EC444AB8, &qword_1CA988BF0);

      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_6_19();

      return v112(v111, v112, v113, v114, v115, v116, v117, v118, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      v38[32] = v77;
      *v77 = v78;
      OUTLINED_FUNCTION_4_22(v77);
      OUTLINED_FUNCTION_6_19();

      return WFContentItem.asyncDisplayImage(with:displayRepresentationConfig:)(v79, v80, v81, v82);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    v38[31] = v57;
    *v57 = v58;
    OUTLINED_FUNCTION_11_11(v57);
    OUTLINED_FUNCTION_6_19();

    return WFContentItem.asyncDisplayAltText()();
  }
}

uint64_t sub_1CA39B6F8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 248);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA39B7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_33_6();
  sub_1CA2D9CD4(v38[17], v38[16], &unk_1EC444AA0, &qword_1CA985640);
  v40 = sub_1CA94B3C8();
  v41 = OUTLINED_FUNCTION_46_3(v40);
  v42 = v38[19];
  if (v41 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445AC0, L"b\t\r");
    v43 = OUTLINED_FUNCTION_0_22();
  }

  else
  {
    (*(*(v36 - 8) + 32))(v38[19], v38[16], v36);
    v47 = *MEMORY[0x1E69DB378];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445AC0, L"b\t\r");
    OUTLINED_FUNCTION_52(v37);
    (*(v48 + 104))(v42, v47, v37);
    OUTLINED_FUNCTION_89();
    v46 = v37;
  }

  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v50 = v38[6];
  v49 = v38[7];
  v51 = v38[5];
  v52 = sub_1CA2D9CD4(v38[19], v38[21], &unk_1EC445A70, &qword_1CA985648);
  v53 = OUTLINED_FUNCTION_22_7(v52, sel_getListThumbnail_forSize_);
  if ([v51 loadsListThumbnailAsynchronously] && v53)
  {
    OUTLINED_FUNCTION_27_10();
    if (!v55 & v54)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
      OUTLINED_FUNCTION_29_8();
    }

    else
    {
      v64 = v38[28];
      v65 = v38[14];
      v66 = OUTLINED_FUNCTION_52_0();
      sub_1CA25CF98(v66, v67);
      OUTLINED_FUNCTION_52_0();
      sub_1CA94B3E8();
      v37 = *MEMORY[0x1E69DB370];
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
      OUTLINED_FUNCTION_52(v68);
      v70 = *(v69 + 104);
      v71 = OUTLINED_FUNCTION_28_5();
      v72(v71);
      OUTLINED_FUNCTION_32_5();
    }

    v75 = OUTLINED_FUNCTION_3_20(v73, v74);
    v78 = OUTLINED_FUNCTION_36_5(v75, v76, v77, &unk_1CA988BE0);
    v80 = OUTLINED_FUNCTION_35_5(v78, v79, &qword_1EC444AB8, &qword_1CA988BF0);
    OUTLINED_FUNCTION_37_5(v80, v81, &unk_1EC445A70, &qword_1CA985648);
    v82 = OUTLINED_FUNCTION_16_9();
    sub_1CA2D9D20(v82, v83, v84, &unk_1CA988BE0);
    sub_1CA94B2E8();
    v85 = OUTLINED_FUNCTION_0_22();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    OUTLINED_FUNCTION_14_12();
    sub_1CA39F318(a17, a18);

    v89 = sub_1CA94B728();
    OUTLINED_FUNCTION_52(v89);
    (*(v90 + 8))(a16);
    sub_1CA27080C(v39, &qword_1EC444A98, &unk_1CA988BE0);
    sub_1CA27080C(v37, &unk_1EC445A70, &qword_1CA985648);
    sub_1CA27080C(a15, &qword_1EC444AB8, &qword_1CA988BF0);

    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_6_19();

    return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    v38[32] = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_4_22(v56);
    OUTLINED_FUNCTION_6_19();

    return WFContentItem.asyncDisplayImage(with:displayRepresentationConfig:)(v58, v59, v60, v61);
  }
}

uint64_t sub_1CA39BBCC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 256);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA39BCB0()
{
  v1 = v0[10];
  sub_1CA2D9CD4(v0[11], v1, &unk_1EC444A78, &qword_1CA985618);
  v2 = sub_1CA94B318();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
    v4 = 1;
  }

  else
  {
    (*(*(v2 - 8) + 32))(v0[13], v0[10], v2);
    v5 = *MEMORY[0x1E69DB378];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444AD0, &qword_1CA985688);
    OUTLINED_FUNCTION_52(v3);
    v7 = *(v6 + 104);
    OUTLINED_FUNCTION_14_0();
    v8();
    v4 = 0;
  }

  v30 = v0[28];
  v31 = v0[29];
  v27 = v0[3];
  v28 = v0[2];
  v9 = v0[27];
  v10 = v0[24];
  v32 = v0[26];
  v33 = v0[25];
  v34 = v0[23];
  v35 = v0[22];
  v11 = v0[21];
  v12 = v0[18];
  v36 = v0[19];
  v37 = v0[17];
  v13 = v0[15];
  v38 = v0[16];
  v39 = v0[14];
  v14 = v0[13];
  v24 = v0[12];
  v40 = v0[11];
  v41 = v0[10];
  v15 = v0[9];
  v29 = v0[8];
  v26 = v0[5];
  v25 = v0[4];
  __swift_storeEnumTagSinglePayload(v14, v4, 1, v3);
  sub_1CA2D9CD4(v14, v13, &qword_1EC444A98, &unk_1CA988BE0);
  sub_1CA2D9D20(v9, v10, &qword_1EC444AB8, &qword_1CA988BF0);
  sub_1CA2D9D20(v11, v12, &unk_1EC445A70, &qword_1CA985648);
  sub_1CA2D9D20(v13, v24, &qword_1EC444A98, &unk_1CA988BE0);
  sub_1CA94B2E8();
  v16 = OUTLINED_FUNCTION_0_22();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  sub_1CA94B348();
  sub_1CA39F318(v30, v31);

  v20 = sub_1CA94B728();
  OUTLINED_FUNCTION_52(v20);
  (*(v21 + 8))(v29);
  sub_1CA27080C(v13, &qword_1EC444A98, &unk_1CA988BE0);
  sub_1CA27080C(v11, &unk_1EC445A70, &qword_1CA985648);
  sub_1CA27080C(v9, &qword_1EC444AB8, &qword_1CA988BF0);

  OUTLINED_FUNCTION_3_6();

  return v22();
}

uint64_t WFContentItem.asyncDisplaySubtitle()()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1CA39C0EC;

  return WFContentItem.asyncListSubtitle()();
}

uint64_t sub_1CA39C0EC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  OUTLINED_FUNCTION_42_4(v3, v4);
  v6 = *(v5 + 48);
  v7 = *v0;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v10 + 56) = v9;

  v11 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA39C1C8()
{
  OUTLINED_FUNCTION_0();
  if (v0[7])
  {
    v1 = v0[3];
    v2 = v0[5];
    sub_1CA94B3D8();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[5];
  sub_1CA94B418();
  v5 = OUTLINED_FUNCTION_24_1();
  __swift_storeEnumTagSinglePayload(v5, v3, 1, v6);
  v7 = v0[1];

  return v7();
}

uint64_t WFContentItem.asyncDisplayAltText()()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1CA39C2E4;

  return WFContentItem.asyncListAltText()();
}

uint64_t sub_1CA39C2E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  OUTLINED_FUNCTION_42_4(v3, v4);
  v6 = *(v5 + 48);
  v7 = *v0;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v10 + 56) = v9;

  v11 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA39C3C0()
{
  OUTLINED_FUNCTION_0();
  if (v0[7])
  {
    v1 = v0[3];
    v2 = v0[5];
    sub_1CA94B3D8();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[5];
  sub_1CA94B3C8();
  v5 = OUTLINED_FUNCTION_24_1();
  __swift_storeEnumTagSinglePayload(v5, v3, 1, v6);
  v7 = v0[1];

  return v7();
}

uint64_t WFContentItem.asyncDisplayImage(with:displayRepresentationConfig:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1CA39C4F8;

  return WFContentItem.asyncListThumbnail(with:)(a3, a4);
}

uint64_t sub_1CA39C4F8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA39C5E0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 24);
    DisplayRepresentationConfiguration.image(from:)(*(v0 + 40), *(v0 + 16));
  }

  else
  {
    v3 = *(v0 + 16);
    sub_1CA94B318();
    v4 = OUTLINED_FUNCTION_0_22();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

void DisplayRepresentation.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CA94B728();
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  _sSo13WFContentItemC11WorkflowKitE27TypedValueResolutionContextV7default34displayRepresentationConfigurationAE04ToolD007DisplaykL0V_tFZfA__0();
  v11 = [objc_opt_self() defaultContext];
  DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(a1, v10, v11, a2);
}

void DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v152 = a3;
  v146 = a1;
  v136 = a4;
  v147 = sub_1CA94B6E8();
  v5 = OUTLINED_FUNCTION_1_0(v147);
  v139 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v138 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A78, &qword_1CA985618);
  v12 = OUTLINED_FUNCTION_18_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  v143 = (&v131 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  v18 = OUTLINED_FUNCTION_18_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  v144 = &v131 - v22;
  v23 = sub_1CA949EE8();
  v24 = OUTLINED_FUNCTION_1_0(v23);
  v150 = v25;
  v151 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_19();
  v148 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v131 - v31;
  v149 = sub_1CA949F08();
  v33 = OUTLINED_FUNCTION_1_0(v149);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v131 - v39;
  v135 = sub_1CA949B18();
  v41 = OUTLINED_FUNCTION_1_0(v135);
  v134 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6_0();
  v145 = v46 - v45;
  v47 = *MEMORY[0x1E69E10F8];
  v48 = swift_allocObject();
  *(v48 + 16) = 32;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4441A0, &off_1CA9827D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  *(inited + 32) = sub_1CA2F0CCC;
  *(inited + 40) = v48;
  *(inited + 48) = sub_1CA2F1550;
  *(inited + 56) = v49;
  *(inited + 64) = sub_1CA2F0C74;
  *(inited + 72) = 0;
  sub_1CA949AD8();
  sub_1CA949EF8();
  sub_1CA949EC8();
  v51 = sub_1CA949EF8();
  v52 = sub_1CA94CE18();
  v53 = sub_1CA94D078();
  v142 = a2;
  if (v53)
  {
    LODWORD(v133) = v52;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = 0;
    v153 = v55;
    v154 = 0;
    *v54 = 258;
    v155 = v54 + 2;
    while (v56 != 48)
    {
      v58 = *(inited + v56 + 32);
      v57 = *(inited + v56 + 40);

      v58(&v155, &v154, &v153);

      v56 += 16;
    }

    v59 = sub_1CA949ED8();
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v51, v133, v59, "resolveDisplayRepresentation", "%s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x1CCAA4BF0](v55, -1, -1);
    MEMORY[0x1CCAA4BF0](v54, -1, -1);
  }

  else
  {
  }

  v61 = v150;
  v60 = v151;
  (v150[2])(v148, v32, v151);
  v62 = sub_1CA949F48();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_1CA949F38();
  v65 = v149;
  (*(v35 + 16))(v137, v40, v149);
  sub_1CA949B28();
  (v61[1])(v32, v60);
  (*(v35 + 8))(v40, v65);
  v66 = v146;
  v67 = [v146 title];
  v68 = &selRef_isInputParameter;
  v69 = v152;
  v70 = [v152 locale];
  v71 = sub_1CA948E58();
  v150 = &v131;
  v72 = OUTLINED_FUNCTION_1_0(v71);
  v74 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v132 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = &v131 - v132;
  sub_1CA948DA8();

  sub_1CA948D48();
  v151 = *(v74 + 8);
  v151(v77, v71);
  v78 = sub_1CA94C368();

  v79 = [v67 localizedStringForLocaleIdentifier_];

  v137 = sub_1CA94C3A8();
  v133 = v80;

  v81 = [v66 subtitle];
  v149 = v71;
  v150 = v76;
  v148 = v74 + 8;
  if (v81)
  {
    v82 = v81;
    v83 = [v69 locale];
    v131 = &v131;
    MEMORY[0x1EEE9AC00](v83);
    v84 = &v131 - v132;
    sub_1CA948DA8();

    sub_1CA948D48();
    v151(v84, v71);
    v85 = sub_1CA94C368();

    v86 = [v82 &selRef:v85 messageCameFromPairedDevice:? + 6];

    v87 = sub_1CA94C3A8();
    v131 = v88;
  }

  else
  {
    v87 = 0;
    v131 = 0;
  }

  v89 = v143;
  v90 = v144;
  v91 = v146;
  v92 = [v146 snippetPluginModel];
  v93 = v142;
  if (v92)
  {
    v94 = v92;
    sub_1CA39D8D4();

    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  v96 = sub_1CA94B2E8();
  __swift_storeEnumTagSinglePayload(v90, v95, 1, v96);
  v97 = v138;
  sub_1CA94B6C8();
  v98 = (*(v139 + 88))(v97, v147);
  v99 = v98 == *MEMORY[0x1E69DB4C0];
  v132 = v87;
  if (v99)
  {
    goto LABEL_23;
  }

  v99 = v98 == *MEMORY[0x1E69DB4B0] || v98 == *MEMORY[0x1E69DB4B8];
  if (!v99)
  {
    goto LABEL_39;
  }

  v100 = [v91 image];
  if (!v100)
  {
LABEL_23:
    sub_1CA94B318();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
  }

  else
  {
    v101 = v100;
    v102 = [v100 wf_image];
    DisplayRepresentationConfiguration.image(from:)(v102, v89);

    v90 = v144;
  }

  v107 = v140;
  sub_1CA2D9D20(v89, v141, &unk_1EC444A78, &qword_1CA985618);
  sub_1CA2D9D20(v90, v107, &qword_1EC444A70, &qword_1CA985610);
  v108 = sub_1CA39F244(v91);
  v109 = MEMORY[0x1E69E7CC0];
  if (!v108)
  {
    goto LABEL_36;
  }

  v110 = v108;
  v111 = sub_1CA25B410(v108);
  if (!v111)
  {

    v89 = v143;
LABEL_36:
    v127 = v146;
LABEL_37:
    sub_1CA94B358();
    sub_1CA27080C(v89, &unk_1EC444A78, &qword_1CA985618);
    sub_1CA27080C(v90, &qword_1EC444A70, &qword_1CA985610);
    v128 = v145;
    sub_1CA39D560();

    (*(v134 + 8))(v128, v135);
    v129 = sub_1CA94B728();
    OUTLINED_FUNCTION_52(v129);
    (*(v130 + 8))(v93);
    OUTLINED_FUNCTION_36();
    return;
  }

  v112 = v111;
  v155 = v109;
  sub_1CA271524();
  if ((v112 & 0x8000000000000000) == 0)
  {
    v113 = 0;
    v114 = v155;
    v147 = v110 & 0xC000000000000001;
    v115 = v150;
    do
    {
      if (v147)
      {
        v116 = MEMORY[0x1CCAA22D0](v113, v110);
      }

      else
      {
        v116 = *(v110 + 8 * v113 + 32);
      }

      v117 = v116;
      v118 = v68;
      v119 = [v69 v68[255]];
      MEMORY[0x1EEE9AC00](v119);
      sub_1CA948DA8();

      sub_1CA948D48();
      v151(&v131 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0), v149);
      v120 = sub_1CA94C368();

      v121 = [v117 localizedStringForLocaleIdentifier_];

      v122 = sub_1CA94C3A8();
      v124 = v123;

      v155 = v114;
      v125 = *(v114 + 2);
      if (v125 >= *(v114 + 3) >> 1)
      {
        sub_1CA271524();
        v114 = v155;
      }

      ++v113;
      *(v114 + 2) = v125 + 1;
      v126 = &v114[16 * v125];
      *(v126 + 4) = v122;
      *(v126 + 5) = v124;
      v69 = v152;
      v68 = v118;
      v115 = v150;
    }

    while (v112 != v113);

    v93 = v142;
    v127 = v146;
    v89 = v143;
    v90 = v144;
    goto LABEL_37;
  }

  __break(1u);
LABEL_39:
  sub_1CA94D7E8();
  __break(1u);
}

uint64_t DisplayRepresentation.init(from:displayRepresentationConfig:)(void *a1, uint64_t a2)
{
  v4 = sub_1CA94B728();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  if (a1)
  {
    (*(v7 + 16))(v11 - v10, a2, v4);
    v12 = objc_opt_self();
    v13 = a1;
    v14 = [v12 defaultContext];
    v15 = OUTLINED_FUNCTION_105();
    DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(v15, v16, v17, v18);

    v19 = *(v7 + 8);
    v20 = OUTLINED_FUNCTION_52_0();
    v21(v20);
    sub_1CA94B458();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_89();
    return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  else
  {
    v27 = *(v7 + 8);
    v28 = OUTLINED_FUNCTION_52_0();
    v29(v28);
    sub_1CA94B458();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_46();

    return __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }
}

uint64_t sub_1CA39D560()
{
  v29 = sub_1CA949F18();
  v32 = *(v29 - 8);
  v0 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1CA949EE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA949F08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA949AC8();
  v30 = sub_1CA949AF8();
  v13 = v12;
  sub_1CA949B08();
  v14 = sub_1CA949EF8();
  sub_1CA949F28();
  v28 = sub_1CA94CE08();
  result = sub_1CA94D078();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v7);
  }

  v24 = v14;
  v25 = v8;
  v26 = v3;
  v27 = v2;
  if ((v13 & 1) == 0)
  {
    v17 = v31;
    v16 = v32;
    v18 = v30;
    if (v30)
    {
      v19 = v29;
LABEL_9:

      sub_1CA949F58();

      v20 = (*(v16 + 88))(v17, v19);
      v14 = v24;
      if (v20 == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v17, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1CA949ED8();
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v14, v28, v23, v18, v21, v22, 2u);
      MEMORY[0x1CCAA4BF0](v22, -1, -1);
      v3 = v26;
      v2 = v27;
      v8 = v25;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  v17 = v31;
  v16 = v32;
  if (HIDWORD(v30))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    v19 = v29;
    if (v30 >> 16 <= 0x10)
    {
      v18 = &v33;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1CA39D8D4()
{
  v1 = [v0 pluginModelData];
  sub_1CA948C08();

  v2 = [v0 bundleIdentifier];
  sub_1CA94C3A8();

  OUTLINED_FUNCTION_105();

  JUMPOUT(0x1CCAA0150);
}

uint64_t sub_1CA39D990()
{
  OUTLINED_FUNCTION_0();
  if ([*(v0 + 96) getListSubtitle_])
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_41_5();

    return v5(v4);
  }
}

uint64_t sub_1CA39DA2C()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v2 = OUTLINED_FUNCTION_38_4();
  sub_1CA39DDCC(v2, v1, &unk_1F4A0F278, sub_1CA39F57C, &block_descriptor_25_0, &selRef_getListSubtitle_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA39DAE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1CA94C3A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

uint64_t sub_1CA39DB78()
{
  OUTLINED_FUNCTION_0();
  if ([*(v0 + 96) getListAltText_])
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_41_5();

    return v5(v4);
  }
}

uint64_t sub_1CA39DC14()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v2 = OUTLINED_FUNCTION_38_4();
  sub_1CA39DDCC(v2, v1, &unk_1F4A0F228, sub_1CA39F3B4, &block_descriptor_19, &selRef_getListAltText_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA39DCD0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(*v0 + 8);

  return v4(v2, v3);
}

void sub_1CA39DDCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v13[4] = a4;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1CA39DAE8;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  [a2 *a6];
  _Block_release(v12);
}

uint64_t sub_1CA39DE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 64) + 40);
  *v3 = a1;
  v3[1] = a2;
  sub_1CA94C218();

  return swift_continuation_resume();
}

uint64_t WFContentItem.asyncListThumbnail(with:)(double a1, double a2)
{
  *(v3 + 104) = v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA39DF04()
{
  OUTLINED_FUNCTION_0();
  if ([*(v0 + 104) getListThumbnail:0 forSize:{*(v0 + 88), *(v0 + 96)}])
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4(0);
  }
}

uint64_t sub_1CA39DFAC()
{
  v1 = *(v0 + 13);
  v3 = v0[11];
  v2 = v0[12];
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 10;
  v4 = OUTLINED_FUNCTION_38_4();
  sub_1CA39E13C(v4, v1, v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA39E054()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 80);
  v3 = *(*v0 + 8);

  return v3(v2);
}

void sub_1CA39E13C(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v10[4] = sub_1CA39F33C;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CA39E274;
  v10[3] = &block_descriptor_4;
  v9 = _Block_copy(v10);

  [a2 getListThumbnail:v9 forSize:{a3, a4}];
  _Block_release(v9);
}

uint64_t sub_1CA39E220(void *a1, uint64_t a2, uint64_t a3)
{
  **(*(a3 + 64) + 40) = a1;
  v3 = a1;

  return swift_continuation_resume();
}

uint64_t sub_1CA39E274(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {
    type metadata accessor for WFContentItemListThumbnailOption(0);
    sub_1CA39F35C();
    v3 = sub_1CA94C1C8();
  }

  v7 = a2;
  v6(a2, v3);
}

uint64_t sub_1CA39E320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_1CA949F78();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v93 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v93 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v93 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v93 - v17;
  v19 = sub_1CA948BA8();
  v20 = *(v19 - 8);
  v101 = v19;
  v102 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v93 - v22;
  v24 = [a1 URL];
  if (v24)
  {
    v25 = v24;
    v97 = v7;
    sub_1CA948B68();

    MEMORY[0x1EEE9AC00](v26);
    v27 = v93 - v22;
    v28 = objc_opt_self();
    sub_1CA948B38();
    v29 = sub_1CA94C368();

    v30 = [v28 createSharedTemporaryFileWithFilename_];

    MEMORY[0x1EEE9AC00](v31);
    v32 = v93 - v22;
    if (v30)
    {
      v96 = v93;
      sub_1CA948B68();

      v34 = v101;
      v33 = v102;
      (*(v102 + 32))(v27, v32, v101);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
      v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v35 - 8);
      v38 = v93 - v37;
      v39 = [objc_opt_self() defaultManager];
      sub_1CA94CBD8();
      sub_1CA27080C(v38, &qword_1EC444A90, &qword_1CA9827C0);

      v77 = v100;
      sub_1CA39EFD4(v100);
      v90 = *(v33 + 8);
      v90(v27, v34);
      v90(v23, v34);
      return __swift_storeEnumTagSinglePayload(v77, 0, 1, v34);
    }

    v62 = *MEMORY[0x1E69E1110];
    v63 = sub_1CA949C58();
    MEMORY[0x1EEE9AC00](v63);
    v64 = v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = v101;
    v65 = v102;
    (*(v102 + 16))(v64, v23, v101);
    v67 = sub_1CA949F68();
    v68 = sub_1CA94CC18();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v97 = v93;
      v70 = v69;
      v96 = swift_slowAlloc();
      v103[0] = v96;
      *v70 = 136315138;
      sub_1CA39F3D0();
      v71 = sub_1CA94D798();
      v73 = v72;
      v74 = *(v65 + 8);
      v74(v64, v101);
      v75 = sub_1CA26B54C(v71, v73, v103);
      v66 = v101;

      *(v70 + 4) = v75;
      _os_log_impl(&dword_1CA256000, v67, v68, "DisplayRepresentationConfiguration: Unable to create temporary file for: %s", v70, 0xCu);
      v76 = v96;
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x1CCAA4BF0](v76, -1, -1);
      MEMORY[0x1CCAA4BF0](v70, -1, -1);

      (*(v98 + 8))(v18, v99);
      v74(v23, v66);
    }

    else
    {

      v89 = *(v65 + 8);
      v89(v64, v66);
      (*(v98 + 8))(v18, v99);
      v89(v23, v66);
    }

    v84 = v100;
    v85 = v66;
    return __swift_storeEnumTagSinglePayload(v84, 1, 1, v85);
  }

  v93[1] = v16;
  v94 = v13;
  v97 = v93;
  MEMORY[0x1EEE9AC00](0);
  v95 = v93 - v22;
  v96 = objc_opt_self();
  v40 = sub_1CA948D28();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = v93 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D18();
  v45 = sub_1CA948CC8();
  v47 = v46;
  (*(v41 + 8))(v44, v40);
  v103[0] = v45;
  v103[1] = v47;
  MEMORY[0x1CCAA1300](1735290926, 0xE400000000000000);
  v48 = sub_1CA94C368();

  v49 = [v96 createSharedTemporaryFileWithFilename_];

  MEMORY[0x1EEE9AC00](v50);
  v51 = v93 - v22;
  if (!v49)
  {
    v78 = *MEMORY[0x1E69E1110];
    sub_1CA949C58();
    v79 = sub_1CA949F68();
    v80 = sub_1CA94CC18();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v101;
    if (v81)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1CA256000, v79, v80, "DisplayRepresentationConfiguration: Unable to create temporary file for image", v83, 2u);
      MEMORY[0x1CCAA4BF0](v83, -1, -1);
    }

    (*(v98 + 8))(v10, v99);
    v84 = v100;
    v85 = v82;
    return __swift_storeEnumTagSinglePayload(v84, 1, 1, v85);
  }

  sub_1CA948B68();

  v52 = v101;
  v53 = *(v102 + 32);
  v54 = v95;
  v53(v95, v51, v101);
  v55 = sub_1CA39F2B4(a1);
  if (v56 >> 60 == 15)
  {
    v57 = v54;
    v58 = *MEMORY[0x1E69E1110];
    sub_1CA949C58();
    v59 = sub_1CA949F68();
    v60 = sub_1CA94CC18();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1CA256000, v59, v60, "DisplayRepresentationConfiguration: Unable to create PNG representation for image", v61, 2u);
      MEMORY[0x1CCAA4BF0](v61, -1, -1);
    }

    (*(v98 + 8))(v94, v99);
    (*(v102 + 8))(v57, v52);
    return __swift_storeEnumTagSinglePayload(v100, 1, 1, v52);
  }

  else
  {
    v86 = v55;
    v87 = v56;
    v88 = sub_1CA948C18();
    v96 = v93;
    MEMORY[0x1EEE9AC00](v88);
    sub_1CA39EFD4(v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v102 + 8))(v54, v52);
    sub_1CA39F318(v86, v87);
    v92 = v100;
    v53(v100, v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v52);
    return __swift_storeEnumTagSinglePayload(v92, 0, 1, v52);
  }
}

size_t sub_1CA39EFD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9BA8];
  sub_1CA948B88();
  v4 = *MEMORY[0x1E69E9BE0];
  sub_1CA94C418();

  v5 = sandbox_extension_issue_file();

  if (v5)
  {
    result = strlen(v5);
    v7 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v8 = sub_1CA948BC8();
      v9 = *(*(v8 - 8) + 64);
      MEMORY[0x1EEE9AC00](v8);
      v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 104))(v11, *MEMORY[0x1E6969008]);
      v13 = MEMORY[0x1CCA9DA30](v5, v7, v11);
      v15 = v14;
      v16 = sub_1CA948B48();
      v17 = sub_1CA948BF8();
      MEMORY[0x1CCAA3300](v16, v17);
      sub_1CA266F2C(v13, v15);

      v18 = sub_1CA948BA8();
      return (*(*(v18 - 8) + 16))(a1, v1, v18);
    }
  }

  else
  {
    sub_1CA39F41C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CA39F1F4()
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](0);
  return sub_1CA94D968();
}

uint64_t sub_1CA39F244(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EC441780, 0x1E69AC9E0);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA39F2B4(void *a1)
{
  v1 = [a1 PNGRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA948C08();

  return v3;
}

uint64_t sub_1CA39F318(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CA266F2C(a1, a2);
  }

  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CA39F35C()
{
  result = qword_1EC4436A0;
  if (!qword_1EC4436A0)
  {
    type metadata accessor for WFContentItemListThumbnailOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4436A0);
  }

  return result;
}

unint64_t sub_1CA39F3D0()
{
  result = qword_1EC444AE8;
  if (!qword_1EC444AE8)
  {
    sub_1CA948BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444AE8);
  }

  return result;
}

unint64_t sub_1CA39F41C()
{
  result = qword_1EC444AF0;
  if (!qword_1EC444AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444AF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SandboxExtensionError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA39F520()
{
  result = qword_1EC444AF8;
  if (!qword_1EC444AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444AF8);
  }

  return result;
}

id OUTLINED_FUNCTION_47_4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id sub_1CA39F5D8()
{
  v85 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9ADEA0;
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
  v88 = v12;
  v91 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v79 - v91;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v87 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v89 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v90 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v79 - v90;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v86 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v84 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v83 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"FocusFilterDescription";
  v22 = @"Description";
  v23 = @"FocusFilterDescription";
  v24 = sub_1CA94C438();
  v81 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v82 = &v79;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v79 - v91;
  sub_1CA948D98();
  v30 = [v87 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v79 - v90;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v81, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v86;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v84;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"DisabledOnPlatforms";
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F7B50;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1702194242;
  *(inited + 208) = 0xE400000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 264) = v36;
  v37 = v36;
  *(inited + 240) = 0x6E61726165707061;
  *(inited + 248) = 0xEA00000000006563;
  v38 = @"DisabledOnPlatforms";
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = sub_1CA94C368();
  *(inited + 304) = v37;
  *(inited + 272) = v41;
  *(inited + 280) = 0xD000000000000055;
  *(inited + 288) = 0x80000001CA9ADF30;
  *(inited + 312) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v42 = swift_initStackObject();
  v84 = v42;
  *(v42 + 16) = v83;
  *(v42 + 32) = 0x656C797473;
  *(v42 + 40) = 0xE500000000000000;
  *&v83 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1CA9813C0;
  *(v43 + 32) = @"Label";
  v44 = @"Label";
  v45 = sub_1CA94C438();
  v80 = v46;
  v81 = v45;
  v47 = sub_1CA94C438();
  v79 = v48;
  v82 = &v79;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v79 - v91;
  sub_1CA948D98();
  v50 = v87;
  v51 = [v87 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v79 - v90;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 40) = sub_1CA2F9F14(v81, v80, v47, v79, 0, 0, v49, v52);
  v54 = v86;
  *(v43 + 64) = v86;
  *(v43 + 72) = @"Placeholder";
  v55 = @"Placeholder";
  v56 = sub_1CA94C438();
  v80 = v57;
  v81 = v56;
  v79 = sub_1CA94C438();
  v59 = v58;
  v82 = &v79;
  MEMORY[0x1EEE9AC00](v79);
  v60 = &v79 - v91;
  sub_1CA948D98();
  v61 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v79 - v90;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 80) = sub_1CA2F9F14(v81, v80, v79, v59, 0, 0, v60, v62);
  *(v43 + 104) = v54;
  *(v43 + 112) = @"Prompt";
  v64 = @"Prompt";
  v65 = sub_1CA94C438();
  v81 = v66;
  v67 = sub_1CA94C438();
  v69 = v68;
  v82 = &v79;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v79 - v91;
  sub_1CA948D98();
  v71 = [v87 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v79 - v90;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v65, v81, v67, v69, 0, 0, v70, v72);
  *(v43 + 144) = v86;
  *(v43 + 120) = v74;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v84 + 48) = sub_1CA2F864C();
  v75 = sub_1CA94C1E8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 320) = v75;
  *(inited + 344) = v76;
  *(inited + 352) = @"ResidentCompatible";
  *(inited + 384) = MEMORY[0x1E69E6370];
  *(inited + 360) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v77 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3A0078()
{
  v232 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9AE020;
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
  v248 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v249 = v12;
  v13 = &v225 - v248;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v250 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v251 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v252 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v225 - v252;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v247 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v246 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v243 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v245 = &v225;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v225 - v248;
  sub_1CA948D98();
  v30 = inited;
  v31 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v225 - v252;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v24, v243, v26, v28, 0, 0, v29, v32);
  *(v21 + 64) = v247;
  *(v21 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v35 = v246;
  *(v30 + 120) = sub_1CA6B3784();
  *(v30 + 144) = v35;
  *(v30 + 152) = @"IconName";
  *(v30 + 160) = 1954047316;
  *(v30 + 168) = 0xE400000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(v30 + 184) = MEMORY[0x1E69E6158];
  *(v30 + 192) = @"Input";
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v240 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E494657;
  *(v37 + 104) = 0xE700000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  v39 = v38;
  *(v37 + 184) = 0xE500000000000000;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v246;
  *(v37 + 192) = &unk_1F49F7B80;
  v40 = @"IconName";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v244 = v30;
  v245 = v43;
  *(v30 + 200) = v42;
  *(v30 + 224) = v43;
  *(v30 + 232) = @"InputPassthrough";
  *(v30 + 240) = 0;
  *(v30 + 264) = v39;
  *(v30 + 272) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v241 = sub_1CA94C438();
  v239 = v46;
  v47 = sub_1CA94C438();
  v238 = v48;
  v242 = &v225;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v248;
  sub_1CA948D98();
  v50 = v250;
  v51 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v252;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v241, v239, v47, v238, 0, 0, &v225 - v49, &v225 - v52);
  v55 = v244;
  v244[35] = v54;
  v56 = v247;
  v55[38] = v247;
  v55[39] = @"Output";
  v57 = swift_initStackObject();
  *(v57 + 16) = v240;
  *(v57 + 32) = 0x75736F6C63736944;
  *(v57 + 40) = 0xEF6C6576654C6572;
  *(v57 + 48) = 0x63696C627550;
  *(v57 + 56) = 0xE600000000000000;
  *(v57 + 72) = MEMORY[0x1E69E6158];
  *(v57 + 80) = 0x656C7069746C754DLL;
  *(v57 + 88) = 0xE800000000000000;
  *(v57 + 96) = 1;
  *(v57 + 120) = MEMORY[0x1E69E6370];
  *(v57 + 128) = 0x614E74757074754FLL;
  *(v57 + 136) = 0xEA0000000000656DLL;
  v58 = @"Output";
  v59 = sub_1CA94C438();
  v241 = v60;
  v242 = v59;
  v239 = sub_1CA94C438();
  v62 = v61;
  v243 = &v225;
  MEMORY[0x1EEE9AC00](v239);
  sub_1CA948D98();
  v63 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 144) = sub_1CA2F9F14(v242, v241, v239, v62, 0, 0, &v225 - v49, &v225 - v52);
  *(v57 + 168) = v56;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v246;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_1F49F7BB0;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = v244;
  v244[40] = v66;
  v67[43] = v245;
  v67[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v246 = swift_allocObject();
  *(v246 + 16) = xmmword_1CA981560;
  v245 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  v236 = xmmword_1CA981380;
  *(v68 + 16) = xmmword_1CA981380;
  v239 = 0x80000001CA99B500;
  *(v68 + 32) = @"Class";
  *(v68 + 40) = 0xD000000000000014;
  *(v68 + 48) = 0x80000001CA99B500;
  *(v68 + 64) = v65;
  *(v68 + 72) = @"Description";
  v69 = @"Class";
  v70 = @"Description";
  v71 = v69;
  v72 = v70;
  v235 = v71;
  v234 = v72;
  v73 = @"Parameters";
  v74 = sub_1CA94C438();
  v241 = v75;
  v76 = sub_1CA94C438();
  v78 = v77;
  v242 = &v225;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v225 - v248;
  sub_1CA948D98();
  v80 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v225 - v252;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 80) = sub_1CA2F9F14(v74, v241, v76, v78, 0, 0, v79, v81);
  *(v68 + 104) = v247;
  *(v68 + 112) = @"Key";
  v237 = 0xD000000000000011;
  *(v68 + 120) = 0xD000000000000011;
  *(v68 + 128) = 0x80000001CA9AE180;
  *(v68 + 144) = MEMORY[0x1E69E6158];
  *(v68 + 152) = @"Label";
  v83 = @"Key";
  v84 = @"Label";
  v85 = v83;
  v86 = v84;
  *&v231 = v85;
  v233 = v86;
  v241 = sub_1CA94C438();
  v238 = v87;
  v88 = sub_1CA94C438();
  v90 = v89;
  v242 = &v225;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v225 - v248;
  sub_1CA948D98();
  v92 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v225 - v252;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 160) = sub_1CA2F9F14(v241, v238, v88, v90, 0, 0, v91, v93);
  v95 = v247;
  *(v68 + 184) = v247;
  *(v68 + 192) = @"Multiline";
  *(v68 + 200) = 1;
  *(v68 + 224) = MEMORY[0x1E69E6370];
  *(v68 + 232) = @"Placeholder";
  v96 = @"Multiline";
  v97 = @"Placeholder";
  v238 = v96;
  v230 = v97;
  v241 = sub_1CA94C438();
  v229 = v98;
  v99 = sub_1CA94C438();
  v101 = v100;
  v242 = &v225;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v225 - v248;
  sub_1CA948D98();
  v103 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v225 - v252;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v241, v229, v99, v101, 0, 0, v102, v104);
  *(v68 + 264) = v95;
  *(v68 + 240) = v106;
  _s3__C3KeyVMa_0(0);
  v242 = v107;
  v241 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v246 + 32) = sub_1CA2F864C();
  v108 = swift_allocObject();
  *(v108 + 16) = v236;
  v110 = v234;
  v109 = v235;
  *(v108 + 32) = v235;
  *(v108 + 40) = 0xD000000000000014;
  *(v108 + 48) = v239;
  *(v108 + 64) = MEMORY[0x1E69E6158];
  *(v108 + 72) = v110;
  v235 = v109;
  *&v236 = v110;
  v111 = sub_1CA94C438();
  v229 = v112;
  v113 = sub_1CA94C438();
  v115 = v114;
  v234 = &v225;
  MEMORY[0x1EEE9AC00](v113);
  v116 = v248;
  sub_1CA948D98();
  v117 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v225 - v252;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120 = sub_1CA2F9F14(v111, v229, v113, v115, 0, 0, &v225 - v116, v118);
  v121 = v233;
  *(v108 + 80) = v120;
  v122 = v231;
  *(v108 + 104) = v247;
  *(v108 + 112) = v122;
  *(v108 + 120) = 0xD000000000000014;
  *(v108 + 128) = 0x80000001CA9AE270;
  *(v108 + 144) = MEMORY[0x1E69E6158];
  *(v108 + 152) = v121;
  v234 = v122;
  v233 = v121;
  v123 = sub_1CA94C438();
  v228 = v124;
  v229 = v123;
  v125 = sub_1CA94C438();
  v227 = v126;
  *&v231 = &v225;
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v225 - v116;
  sub_1CA948D98();
  v128 = v250;
  v129 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v225 - v252;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 160) = sub_1CA2F9F14(v229, v228, v125, v227, 0, 0, v127, v130);
  v132 = v247;
  v133 = v238;
  *(v108 + 184) = v247;
  *(v108 + 192) = v133;
  *(v108 + 200) = 1;
  v134 = v230;
  *(v108 + 224) = MEMORY[0x1E69E6370];
  *(v108 + 232) = v134;
  v135 = sub_1CA94C438();
  v229 = v136;
  v230 = v135;
  v137 = sub_1CA94C438();
  v228 = v138;
  *&v231 = &v225;
  MEMORY[0x1EEE9AC00](v137);
  v139 = v248;
  sub_1CA948D98();
  v140 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v225 - v252;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v230, v229, v137, v228, 0, 0, &v225 - v139, v141);
  *(v108 + 264) = v132;
  *(v108 + 240) = v143;
  sub_1CA94C1E8();
  *(v246 + 40) = sub_1CA2F864C();
  v144 = swift_allocObject();
  v231 = xmmword_1CA981370;
  *(v144 + 16) = xmmword_1CA981370;
  v230 = 0x80000001CA99E620;
  v145 = v235;
  v146 = v237;
  *(v144 + 32) = v235;
  *(v144 + 40) = v146;
  *(v144 + 48) = 0x80000001CA99E620;
  *(v144 + 64) = MEMORY[0x1E69E6158];
  *(v144 + 72) = @"DefaultValue";
  *(v144 + 80) = 1;
  v147 = v236;
  *(v144 + 104) = MEMORY[0x1E69E6370];
  *(v144 + 112) = v147;
  v148 = @"DefaultValue";
  v235 = v145;
  v229 = v148;
  v149 = sub_1CA94C438();
  v226 = v150;
  v227 = v149;
  v151 = sub_1CA94C438();
  v153 = v152;
  v228 = &v225;
  MEMORY[0x1EEE9AC00](v151);
  v154 = &v225 - v139;
  sub_1CA948D98();
  v155 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = v252;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v144 + 120) = sub_1CA2F9F14(v227, v226, v151, v153, 0, 0, v154, &v225 - v156);
  v158 = v247;
  v160 = v233;
  v159 = v234;
  *(v144 + 144) = v247;
  *(v144 + 152) = v159;
  *(v144 + 160) = 0xD00000000000001ALL;
  *(v144 + 168) = 0x80000001CA9AE3A0;
  *(v144 + 184) = MEMORY[0x1E69E6158];
  *(v144 + 192) = v160;
  v234 = v159;
  v233 = v160;
  v161 = sub_1CA94C438();
  v226 = v162;
  v227 = v161;
  v163 = sub_1CA94C438();
  v165 = v164;
  v228 = &v225;
  MEMORY[0x1EEE9AC00](v163);
  v166 = &v225 - v248;
  sub_1CA948D98();
  v167 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v227, v226, v163, v165, 0, 0, v166, &v225 - v156);
  *(v144 + 224) = v158;
  *(v144 + 200) = v169;
  sub_1CA94C1E8();
  *(v246 + 48) = sub_1CA2F864C();
  v170 = swift_allocObject();
  *(v170 + 16) = v231;
  v171 = v237;
  *(v170 + 32) = v235;
  *(v170 + 40) = v171;
  *(v170 + 48) = v230;
  v172 = v229;
  *(v170 + 64) = MEMORY[0x1E69E6158];
  *(v170 + 72) = v172;
  *(v170 + 80) = 0;
  v173 = v236;
  *(v170 + 104) = MEMORY[0x1E69E6370];
  *(v170 + 112) = v173;
  *&v236 = sub_1CA94C438();
  *&v231 = v174;
  v175 = sub_1CA94C438();
  v230 = v176;
  v237 = &v225;
  MEMORY[0x1EEE9AC00](v175);
  v177 = v248;
  sub_1CA948D98();
  v178 = v250;
  v179 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  v180 = v252;
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 120) = sub_1CA2F9F14(v236, v231, v175, v230, 0, 0, &v225 - v177, &v225 - v180);
  v182 = v234;
  *(v170 + 144) = v247;
  *(v170 + 152) = v182;
  *(v170 + 160) = 0xD00000000000001ELL;
  *(v170 + 168) = 0x80000001CA9AE4A0;
  v183 = v233;
  *(v170 + 184) = MEMORY[0x1E69E6158];
  *(v170 + 192) = v183;
  *&v236 = sub_1CA94C438();
  *&v231 = v184;
  v185 = sub_1CA94C438();
  v230 = v186;
  v237 = &v225;
  MEMORY[0x1EEE9AC00](v185);
  sub_1CA948D98();
  v187 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v189 = sub_1CA2F9F14(v236, v231, v185, v230, 0, 0, &v225 - v177, &v225 - v180);
  *(v170 + 224) = v247;
  *(v170 + 200) = v189;
  sub_1CA94C1E8();
  *(v246 + 56) = sub_1CA2F864C();
  v190 = swift_allocObject();
  *(v190 + 16) = v240;
  v191 = v234;
  *(v190 + 32) = v235;
  *(v190 + 40) = 0xD000000000000014;
  *(v190 + 48) = v239;
  v192 = MEMORY[0x1E69E6158];
  *(v190 + 64) = MEMORY[0x1E69E6158];
  *(v190 + 72) = v191;
  *(v190 + 80) = 0x7475706E494657;
  *(v190 + 88) = 0xE700000000000000;
  v193 = v233;
  *(v190 + 104) = v192;
  *(v190 + 112) = v193;
  v194 = sub_1CA94C438();
  *&v240 = v195;
  v196 = sub_1CA94C438();
  v198 = v197;
  v243 = &v225;
  MEMORY[0x1EEE9AC00](v196);
  v199 = &v225 - v248;
  sub_1CA948D98();
  v200 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v200);
  v201 = &v225 - v252;
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v190 + 120) = sub_1CA2F9F14(v194, v240, v196, v198, 0, 0, v199, v201);
  v203 = v238;
  *(v190 + 144) = v247;
  *(v190 + 152) = v203;
  *(v190 + 184) = MEMORY[0x1E69E6370];
  *(v190 + 160) = 1;
  sub_1CA94C1E8();
  v204 = sub_1CA2F864C();
  v205 = v246;
  *(v246 + 64) = v204;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v207 = v244;
  v244[45] = v205;
  v207[48] = v206;
  v207[49] = @"ParameterSummary";
  v208 = @"ParameterSummary";
  v209 = sub_1CA94C438();
  v211 = v210;
  v212 = sub_1CA94C438();
  v214 = v213;
  MEMORY[0x1EEE9AC00](v212);
  v215 = &v225 - v248;
  sub_1CA948D98();
  v216 = [v250 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  v217 = &v225 - v252;
  sub_1CA948B68();

  v218 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v219 = sub_1CA2F9F14(v209, v211, v212, v214, 0, 0, v215, v217);
  v220 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v221 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v222 = v244;
  v244[50] = v220;
  v222[53] = v221;
  v222[54] = @"ResidentCompatible";
  v222[58] = MEMORY[0x1E69E6370];
  *(v222 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v223 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3A1C74()
{
  v105 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9AE5E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v107 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v111 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = v11;
  v12 = v101 - v111;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v108 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v109 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v110 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v101 - v110;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v107, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v107 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v106 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  *&v103 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v104 = v101;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v101 - v111;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v101 - v110;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v103, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v107;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v106;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000012;
  *(inited + 208) = 0x80000001CA9AE660;
  *(inited + 224) = v35;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v35;
  *(inited + 272) = @"Input";
  v36 = v35;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E494657;
  *(v37 + 104) = 0xE700000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v106;
  *(v37 + 192) = &unk_1F49F7BE0;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *&v103 = v44;
  *(inited + 280) = v43;
  *(inited + 304) = v44;
  *(inited + 312) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v102 = v101;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v101 - v111;
  sub_1CA948D98();
  v53 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v101 - v110;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v107;
  *(inited + 352) = @"Output";
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA9813C0;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 72) = MEMORY[0x1E69E6158];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 1;
  v58 = MEMORY[0x1E69E6370];
  *(v56 + 120) = MEMORY[0x1E69E6370];
  *(v56 + 128) = 0x7365707954;
  v59 = v106;
  *(v56 + 168) = v106;
  *(v56 + 136) = 0xE500000000000000;
  *(v56 + 144) = &unk_1F49F7C10;
  v60 = @"Output";
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v103;
  *(inited + 392) = @"Parameters";
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v102 = swift_allocObject();
  v103 = xmmword_1CA9813B0;
  *(v102 + 1) = xmmword_1CA9813B0;
  v101[2] = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CA981370;
  *(v61 + 32) = @"AllowsMultipleValues";
  *(v61 + 40) = 1;
  *(v61 + 64) = v58;
  *(v61 + 72) = @"Class";
  *(v61 + 80) = 0xD000000000000015;
  *(v61 + 88) = 0x80000001CA99B1E0;
  *(v61 + 104) = v57;
  *(v61 + 112) = @"FilePickerSupportedTypes";
  *(v61 + 120) = &unk_1F49F7C40;
  *(v61 + 144) = v59;
  *(v61 + 152) = @"Key";
  *(v61 + 160) = 0x7475706E494657;
  *(v61 + 168) = 0xE700000000000000;
  *(v61 + 184) = v57;
  *(v61 + 192) = @"Label";
  v62 = @"Parameters";
  v63 = @"AllowsMultipleValues";
  v64 = @"Class";
  v65 = @"FilePickerSupportedTypes";
  v66 = @"Key";
  v67 = @"Label";
  v68 = sub_1CA94C438();
  v101[0] = v69;
  v70 = sub_1CA94C438();
  v72 = v71;
  v101[1] = v101;
  MEMORY[0x1EEE9AC00](v70);
  v73 = v101 - v111;
  sub_1CA948D98();
  v74 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = v101 - v110;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v68, v101[0], v70, v72, 0, 0, v73, v75);
  *(v61 + 224) = v107;
  *(v61 + 200) = v77;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v78 = sub_1CA2F864C();
  v79 = v102;
  v102[4] = v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v79;
  *(inited + 424) = v80;
  *(inited + 432) = @"ParameterSummary";
  v81 = @"ParameterSummary";
  v82 = sub_1CA94C438();
  v84 = v83;
  v85 = sub_1CA94C438();
  v87 = v86;
  v107 = v101;
  MEMORY[0x1EEE9AC00](v85);
  v88 = v101 - v111;
  sub_1CA948D98();
  v89 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v101 - v110;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v82, v84, v85, v87, 0, 0, v88, v90);
  v93 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v94 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v93;
  *(inited + 464) = v94;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 480) = &unk_1F49F7C70;
  *(inited + 504) = v106;
  *(inited + 512) = @"RequiredResources";
  v95 = swift_allocObject();
  *(v95 + 16) = v103;
  v113 = 2;
  v114 = 0;
  v96 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v97 = @"RemoteExecuteOnPlatforms";
  v98 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v113);
  *(v95 + 32) = v99;
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 520) = v95;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFWorkflow.actionIdentifiersPublisher.getter()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B00, &qword_1CA985810);
  v0 = OUTLINED_FUNCTION_1_0(v27);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B08, &qword_1CA985818);
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B10, &unk_1CA985820);
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v26 - v21;
  swift_getKeyPath();
  sub_1CA948B08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA3A2EB0();
  sub_1CA94A0D8();
  (*(v18 + 8))(v22, v15);
  sub_1CA25C3BC(&qword_1EC444B20, &qword_1EC444B08, &qword_1CA985818);
  sub_1CA3A2F08();
  sub_1CA94A0F8();
  (*(v10 + 8))(v14, v7);
  sub_1CA25C3BC(&qword_1EC444B30, &qword_1EC444B00, &qword_1CA985810);
  v23 = v27;
  v24 = sub_1CA94A0C8();
  (*(v2 + 8))(v6, v23);
  return v24;
}

void sub_1CA3A2CF4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 actions];
  sub_1CA3A2F84();
  v4 = sub_1CA94C658();

  *a2 = v4;
}

void sub_1CA3A2D58(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    if (v3 < 0)
    {
      v15 = *a1;
    }

    v4 = sub_1CA94D328();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_13;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1CA271524();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v16 = a2;
    v6 = 0;
    v5 = v17;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCAA22D0](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 identifier];
      v10 = sub_1CA94C3A8();
      v12 = v11;

      v13 = *(v17 + 16);
      if (v13 >= *(v17 + 24) >> 1)
      {
        sub_1CA271524();
      }

      ++v6;
      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v12;
    }

    while (v4 != v6);
    a2 = v16;
LABEL_13:
    *a2 = v5;
    return;
  }

  __break(1u);
}

unint64_t sub_1CA3A2EB0()
{
  result = qword_1EC444B18;
  if (!qword_1EC444B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444B10, &unk_1CA985820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444B18);
  }

  return result;
}

unint64_t sub_1CA3A2F08()
{
  result = qword_1EC444B28;
  if (!qword_1EC444B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443E20, &qword_1CA986220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444B28);
  }

  return result;
}

unint64_t sub_1CA3A2F84()
{
  result = qword_1EDB9F5D0;
  if (!qword_1EDB9F5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB9F5D0);
  }

  return result;
}

id sub_1CA3A2FFC()
{
  v140 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9AE780;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v146 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v147 = v13;
  v14 = &v132 - v146;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v142 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v144 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v141 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v132 - v141;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v145 = v21;
  v2[10] = v20;
  v2[13] = v21;
  v2[14] = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v143 = v2;
  v2[15] = v23;
  v2[18] = v24;
  v2[19] = @"Description";
  v139 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1CA97EDF0;
  *(v25 + 32) = @"DescriptionResult";
  v26 = @"Description";
  v27 = @"DescriptionResult";
  v28 = sub_1CA94C438();
  v136 = v29;
  v137 = v28;
  v30 = sub_1CA94C438();
  v135 = v31;
  v138 = &v132;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v132 - v146;
  sub_1CA948D98();
  v33 = v142;
  v34 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = v141;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v25 + 40) = sub_1CA2F9F14(v137, v136, v30, v135, 0, 0, v32, &v132 - v35);
  *(v25 + 64) = v145;
  *(v25 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438();
  v136 = v39;
  v137 = v38;
  v40 = sub_1CA94C438();
  v42 = v41;
  v138 = &v132;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v132 - v146;
  sub_1CA948D98();
  v44 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v137, v136, v40, v42, 0, 0, v43, &v132 - v35);
  *(v25 + 104) = v145;
  *(v25 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v47 = v139;
  v48 = sub_1CA6B3784();
  v49 = v143;
  v143[20] = v48;
  v49[23] = v47;
  v49[24] = @"InputPassthrough";
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 200) = 0;
  v49[28] = v50;
  v49[29] = @"Name";
  v51 = @"InputPassthrough";
  v52 = @"Name";
  v53 = sub_1CA94C438();
  v137 = v54;
  v138 = v53;
  v55 = sub_1CA94C438();
  v57 = v56;
  v139 = &v132;
  MEMORY[0x1EEE9AC00](v55);
  v58 = v146;
  sub_1CA948D98();
  v59 = v142;
  v60 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v132 - v141;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v138, v137, v55, v57, 0, 0, &v132 - v58, v61);
  v64 = v143;
  v143[30] = v63;
  v64[33] = v145;
  v64[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_1CA9813C0;
  *(v65 + 32) = 0x656C7069746C754DLL;
  *(v65 + 40) = 0xE800000000000000;
  *(v65 + 48) = 0;
  *(v65 + 72) = MEMORY[0x1E69E6370];
  *(v65 + 80) = 0x614E74757074754FLL;
  *(v65 + 88) = 0xEA0000000000656DLL;
  v66 = @"Output";
  v67 = sub_1CA94C438();
  v137 = v68;
  v138 = v67;
  v69 = sub_1CA94C438();
  v71 = v70;
  v139 = &v132;
  MEMORY[0x1EEE9AC00](v69);
  sub_1CA948D98();
  v72 = [v59 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v132 - v141;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 96) = sub_1CA2F9F14(v138, v137, v69, v71, 0, 0, &v132 - v58, v73);
  *(v65 + 120) = v145;
  *(v65 + 128) = 0x7365707954;
  *(v65 + 136) = 0xE500000000000000;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v65 + 168) = v139;
  *(v65 + 144) = &unk_1F49F7CE0;
  v75 = MEMORY[0x1E69E6158];
  v76 = sub_1CA94C1E8();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v78 = v143;
  v143[35] = v76;
  v78[38] = v77;
  v78[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v138 = swift_allocObject();
  *(v138 + 1) = xmmword_1CA9813B0;
  v137 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v79 = swift_initStackObject();
  *(v79 + 16) = xmmword_1CA981370;
  *(v79 + 32) = @"Class";
  *(v79 + 40) = 0xD000000000000014;
  *(v79 + 48) = 0x80000001CA99B500;
  *(v79 + 64) = v75;
  *(v79 + 72) = @"Key";
  strcpy((v79 + 80), "CalendarName");
  *(v79 + 93) = 0;
  *(v79 + 94) = -5120;
  *(v79 + 104) = v75;
  *(v79 + 112) = @"Label";
  v80 = @"Parameters";
  v81 = @"Class";
  v82 = @"Key";
  v83 = @"Label";
  v84 = sub_1CA94C438();
  v134 = v85;
  v135 = v84;
  v86 = sub_1CA94C438();
  v133 = v87;
  v136 = &v132;
  MEMORY[0x1EEE9AC00](v86);
  v88 = v146;
  sub_1CA948D98();
  v89 = v142;
  v90 = [v142 bundleURL];
  v132 = &v132;
  MEMORY[0x1EEE9AC00](v90);
  v91 = v141;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 120) = sub_1CA2F9F14(v135, v134, v86, v133, 0, 0, &v132 - v88, &v132 - v91);
  v93 = v145;
  *(v79 + 144) = v145;
  *(v79 + 152) = @"Placeholder";
  v94 = @"Placeholder";
  v95 = sub_1CA94C438();
  v134 = v96;
  v135 = v95;
  v97 = sub_1CA94C438();
  v133 = v98;
  v136 = &v132;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v132 - v88;
  sub_1CA948D98();
  v100 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 160) = sub_1CA2F9F14(v135, v134, v97, v133, 0, 0, v99, &v132 - v91);
  *(v79 + 184) = v93;
  *(v79 + 192) = @"Prompt";
  v102 = @"Prompt";
  v103 = sub_1CA94C438();
  v135 = v104;
  v105 = sub_1CA94C438();
  v107 = v106;
  v136 = &v132;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v132 - v146;
  sub_1CA948D98();
  v109 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v103, v135, v105, v107, 0, 0, v108, &v132 - v91);
  *(v79 + 224) = v145;
  *(v79 + 200) = v111;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v112 = sub_1CA2F864C();
  v113 = v138;
  v138[4] = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v115 = v143;
  v143[40] = v113;
  v115[43] = v114;
  v115[44] = @"ParameterSummary";
  v116 = @"ParameterSummary";
  v117 = sub_1CA94C438();
  v119 = v118;
  v120 = sub_1CA94C438();
  v122 = v121;
  v145 = &v132;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v132 - v146;
  sub_1CA948D98();
  v124 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, &v132 - v91);
  v127 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v128 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v129 = v143;
  v143[45] = v127;
  v129[48] = v128;
  v129[49] = @"RequiredResources";
  v129[53] = v139;
  v129[50] = &unk_1F49F7D10;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v130 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static OpenWorkflowActionMigration.workflowNeedsMigration(_:fromClientVersion:)()
{
  v0 = sub_1CA94C368();
  v1 = sub_1CA94C368();
  v2 = WFBundleVersionLessThan(v0, v1);

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C368();
  v4 = sub_1CA94C1A8();
  HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(v3, v4);

  return HasActionsWithIdentifier;
}

Swift::Void __swiftcall OpenWorkflowActionMigration.migrateWorkflow()()
{
  v1 = v0;
  v2 = [v0 actions];
  if (v2)
  {
    v3 = v2;
    v69 = sub_1CA948AF8();
    v70 = &v64;
    v68 = *(v69 - 8);
    v4 = *(v68 + 64);
    MEMORY[0x1EEE9AC00](v69);
    v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v71 = v3;
    sub_1CA94CF68();
    v77 = "onDestinationAction";
    v78 = 0x80000001CA9AE970;
    v79 = 0x80000001CA9A2890;
    v76 = 0x80000001CA99E7A0;
    v67 = 0x80000001CA9AE9A0;
    v7 = MEMORY[0x1E69E7CA0];
    v74 = xmmword_1CA981310;
    v75 = v1;
    while (1)
    {
      do
      {
        sub_1CA948AE8();
        if (!v87)
        {
          (*(v68 + 8))(v6, v69);
          [v1 finish];

          return;
        }

        sub_1CA2C0A20(&v86, &v84);
        sub_1CA25B3D0(0, &qword_1EC443AE8, 0x1E695DF90);
      }

      while ((swift_dynamicCast() & 1) == 0);
      v8 = v7;
      v9 = v82;
      v10 = [v1 actionIdentifierKey];
      v11 = sub_1CA94C3A8();
      v13 = v12;

      *&v82 = v11;
      *(&v82 + 1) = v13;
      v14 = [v9 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v14)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_9_0();
      }

      OUTLINED_FUNCTION_2_7();
      v7 = v8;
      if (!v15)
      {
        break;
      }

      OUTLINED_FUNCTION_0_23();
      if (!swift_dynamicCast())
      {
        goto LABEL_17;
      }

      if (v80 == 0xD000000000000020 && v78 == *(&v80 + 1))
      {

LABEL_19:
        v18 = [v1 actionIdentifierKey];
        v19 = sub_1CA94C3A8();
        v21 = v20;

        v22 = sub_1CA94C368();
        *&v84 = v19;
        *(&v84 + 1) = v21;
        [v9 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
        v23 = sub_1CA94C1E8();
        *&v82 = 0xD00000000000001ALL;
        *(&v82 + 1) = v79;
        v24 = [v9 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v24)
        {
          sub_1CA94D258();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_9_0();
        }

        v7 = v8;
        OUTLINED_FUNCTION_2_7();
        if (v25)
        {
          OUTLINED_FUNCTION_0_23();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_27;
          }

          v26 = v80;
          v27 = sub_1CA94C1A8();

          *&v84 = 0xD000000000000013;
          *(&v84 + 1) = v76;
          [v26 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          *&v82 = 0x6C666B726F574657;
          *(&v82 + 1) = 0xEA0000000000776FLL;
          v28 = sub_1CA94D848();
          v72 = v26;
          v29 = [v26 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          v1 = v75;
          if (v29)
          {
            sub_1CA94D258();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_9_0();
          }

          OUTLINED_FUNCTION_2_7();
          if (v33)
          {
            sub_1CA25B3D0(0, &qword_1EC444B40, 0x1E695DF20);
            OUTLINED_FUNCTION_0_23();
            if (swift_dynamicCast())
            {
              v34 = v80;
              v35 = [v80 mutableCopy];
              if (v35)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }
          }

          else
          {
            sub_1CA2C0A74(&v84);
          }

          v34 = 0;
LABEL_35:
          v35 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
LABEL_36:
          v73 = v35;
          if (v34)
          {
            strcpy(&v80, "workflowName");
            BYTE13(v80) = 0;
            HIWORD(v80) = -5120;
            v36 = v34;
            v37 = [v36 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            v38 = v36;

            if (v37)
            {
              sub_1CA94D258();
              swift_unknownObjectRelease();
            }

            else
            {
              v80 = 0u;
              v81 = 0u;
            }

            v7 = v8;
            v82 = v80;
            v83 = v81;
            if (*(&v81 + 1))
            {
              sub_1CA2C0A20(&v82, &v84);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
              inited = swift_initStackObject();
              *(inited + 16) = v74;
              *(inited + 32) = 7955819;
              *(inited + 40) = 0xE300000000000000;
              sub_1CA25B374(&v84, inited + 48);
              sub_1CA94C1E8();
              v40 = sub_1CA94C1A8();

              OUTLINED_FUNCTION_2_24(1819568500);
              [v73 __swift_setObject_forKeyedSubscript_];

              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0(&v84);
              goto LABEL_45;
            }
          }

          else
          {
            OUTLINED_FUNCTION_9_0();
          }

          sub_1CA2C0A74(&v82);
          if (!v34)
          {
            v53 = 0;
            OUTLINED_FUNCTION_9_0();
            v43 = v73;
            goto LABEL_57;
          }

          v38 = v34;
LABEL_45:
          *&v80 = 0xD000000000000012;
          *(&v80 + 1) = v67;
          v41 = v38;
          v42 = [v41 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          v66 = v41;

          if (v42)
          {
            sub_1CA94D258();
            swift_unknownObjectRelease();
          }

          else
          {
            v80 = 0u;
            v81 = 0u;
          }

          v43 = v73;
          v82 = v80;
          v83 = v81;
          if (!*(&v81 + 1))
          {
            v53 = v66;
LABEL_57:
            sub_1CA2C0A74(&v82);
            goto LABEL_63;
          }

          sub_1CA2C0A20(&v82, &v84);
          __swift_project_boxed_opaque_existential_1(&v84, v85);
          v44 = sub_1CA94D7D8();
          *&v82 = 0x696669746E656469;
          *(&v82 + 1) = 0xEA00000000007265;
          [v43 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1CA25B374(&v84, &v82);
          if (swift_dynamicCast())
          {
            v45 = [objc_opt_self() defaultDatabase];
            v46 = sub_1CA94C368();

            v47 = [v45 referenceForWorkflowID_];

            if (!v47)
            {
              goto LABEL_60;
            }

            v48 = objc_opt_self();
            v49 = [v47 icon];
            v50 = [v48 imageWithIcon:v49 size:{31.0, 31.0}];

            if (!v50 || (v51 = sub_1CA3A4EE8(v50), v52 >> 60 == 15))
            {

              goto LABEL_60;
            }

            v54 = v51;
            v55 = v52;
            sub_1CA25B3D0(0, &unk_1EDB9F6C0, 0x1E69AC870);
            sub_1CA25CF98(v54, v55);
            v56 = sub_1CA3A4D4C(v54, v55, 1);
            if (v56)
            {
              v57 = v56;
              v58 = [v56 serializedRepresentation];
              v65 = v55;
              v59 = v58;
              OUTLINED_FUNCTION_2_24(1734438249);
              v60 = sub_1CA94D848();
              v64 = v54;
              [v43 __swift_setObject_forKeyedSubscript_];

              sub_1CA39F318(v64, v65);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
LABEL_60:
              __swift_destroy_boxed_opaque_existential_0(&v84);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0(&v84);
              sub_1CA39F318(v54, v55);
            }

            v7 = v8;
            goto LABEL_62;
          }

          __swift_destroy_boxed_opaque_existential_0(&v84);
LABEL_62:
          v53 = v66;
LABEL_63:
          v61 = sub_1CA94C368();
          v62 = v72;
          [v72 removeObjectForKey_];

          *&v84 = 0x746567726174;
          *(&v84 + 1) = 0xE600000000000000;
          v63 = v43;
          [v62 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1CA2C0A74(&v84);
LABEL_27:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444B38, &qword_1CA985868);
          v30 = swift_initStackObject();
          *(v30 + 16) = v74;
          v31 = v76;
          *(v30 + 32) = 0xD000000000000013;
          *(v30 + 40) = v31;
          *(v30 + 48) = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
          sub_1CA94C1E8();
          v32 = sub_1CA94C1A8();

          *&v84 = 0xD00000000000001ALL;
          *(&v84 + 1) = v79;
          [v9 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
          v1 = v75;
        }
      }

      else
      {
        v17 = sub_1CA94D7F8();

        if (v17)
        {
          goto LABEL_19;
        }

LABEL_17:
      }
    }

    sub_1CA2C0A74(&v84);
    goto LABEL_17;
  }
}

id sub_1CA3A4D4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1CA948BF8();
  v8 = [v6 initWithData:v7 renderingMode:a3];

  sub_1CA266F2C(a1, a2);
  return v8;
}

id OpenWorkflowActionMigration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OpenWorkflowActionMigration.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OpenWorkflowActionMigration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA3A4EE8(void *a1)
{
  v2 = [a1 PNGRepresentation];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA948C08();

  return v3;
}

id sub_1CA3A4FB0()
{
  v171 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9AE9F0;
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
  v186 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v187 = v12;
  v13 = &v166 - v186;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v185 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v184 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v183 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v166 - v183;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v182 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v180 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v179 = &v166;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v166 - v186;
  sub_1CA948D98();
  v31 = [v185 bundleURL];
  v181 = inited;
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v166 - v183;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v32);
  *(v21 + 64) = v182;
  *(v21 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v35 = v180;
  v36 = sub_1CA6B3784();
  v37 = v181;
  v181[15] = v36;
  v37[18] = v35;
  v37[19] = @"IconColor";
  v37[20] = 2036429383;
  v37[21] = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  v37[23] = MEMORY[0x1E69E6158];
  v37[24] = @"IconSymbol";
  v37[25] = 0xD000000000000016;
  v37[26] = 0x80000001CA9AEA40;
  v37[28] = v38;
  v37[29] = @"Input";
  v39 = v38;
  v40 = v37;
  *&v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA981370;
  *(v41 + 32) = 0xD00000000000001DLL;
  *(v41 + 40) = 0x80000001CA9A3ED0;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  *(v41 + 80) = 0x656C7069746C754DLL;
  *(v41 + 88) = 0xE800000000000000;
  *(v41 + 96) = 0;
  *(v41 + 120) = v42;
  strcpy((v41 + 128), "ParameterKey");
  *(v41 + 141) = 0;
  *(v41 + 142) = -5120;
  *(v41 + 144) = 0x7475706E494657;
  *(v41 + 152) = 0xE700000000000000;
  *(v41 + 168) = v39;
  *(v41 + 176) = 0x6465726975716552;
  *(v41 + 184) = 0xE800000000000000;
  *(v41 + 192) = 1;
  *(v41 + 216) = v42;
  *(v41 + 224) = 0x7365707954;
  *(v41 + 232) = 0xE500000000000000;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 264) = v180;
  *(v41 + 240) = &unk_1F49F7E00;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v179 = v47;
  v40[30] = v46;
  v40[33] = v47;
  v40[34] = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v177 = &v166;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v186;
  sub_1CA948D98();
  v56 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v166 - v183;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, &v166 - v55, v57);
  v60 = v181;
  v181[35] = v59;
  v60[38] = v182;
  v60[39] = @"Output";
  v61 = swift_allocObject();
  v178 = xmmword_1CA981350;
  *(v61 + 16) = xmmword_1CA981350;
  *(v61 + 32) = 0x75736F6C63736944;
  *(v61 + 40) = 0xEF6C6576654C6572;
  *(v61 + 48) = 0x63696C627550;
  *(v61 + 56) = 0xE600000000000000;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 80) = 0x656C7069746C754DLL;
  *(v61 + 88) = 0xE800000000000000;
  *(v61 + 96) = 0;
  *(v61 + 120) = MEMORY[0x1E69E6370];
  *(v61 + 128) = 0x614E74757074754FLL;
  *(v61 + 136) = 0xEA0000000000656DLL;
  v62 = @"Output";
  v63 = sub_1CA94C438();
  v176 = v64;
  v65 = sub_1CA94C438();
  v67 = v66;
  v177 = &v166;
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948D98();
  v68 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v166 - v183;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 144) = sub_1CA2F9F14(v63, v176, v65, v67, 0, 0, &v166 - v55, v69);
  *(v61 + 168) = v182;
  *(v61 + 176) = 0x7365707954;
  *(v61 + 216) = v180;
  *(v61 + 184) = 0xE500000000000000;
  *(v61 + 192) = &unk_1F49F7E30;
  v71 = MEMORY[0x1E69E6158];
  v72 = sub_1CA94C1E8();
  v73 = v181;
  v181[40] = v72;
  v73[43] = v179;
  v73[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_1CA981470;
  v179 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_initStackObject();
  *(v74 + 16) = v178;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000014;
  *(v74 + 48) = 0x80000001CA99B500;
  *(v74 + 64) = v71;
  *(v74 + 72) = @"Key";
  *(v74 + 80) = 0x656D614E4657;
  *(v74 + 88) = 0xE600000000000000;
  *(v74 + 104) = v71;
  *(v74 + 112) = @"Label";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v176 = v78;
  v175 = v79;
  v174 = v80;
  v81 = @"Parameters";
  v172 = sub_1CA94C438();
  v170 = v82;
  v83 = sub_1CA94C438();
  v85 = v84;
  v173 = &v166;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v166 - v186;
  sub_1CA948D98();
  v87 = v185;
  v88 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = v183;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v172, v170, v83, v85, 0, 0, v86, &v166 - v89);
  v91 = v182;
  *(v74 + 144) = v182;
  *(v74 + 152) = @"Placeholder";
  v170 = @"Placeholder";
  v172 = sub_1CA94C438();
  v169 = v92;
  v93 = sub_1CA94C438();
  v168 = v94;
  v173 = &v166;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v166 - v186;
  sub_1CA948D98();
  v96 = [v87 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v172, v169, v93, v168, 0, 0, v95, &v166 - v89);
  *(v74 + 184) = v91;
  *(v74 + 160) = v98;
  _s3__C3KeyVMa_0(0);
  v173 = v99;
  v172 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v180 + 32) = sub_1CA2F864C();
  v100 = swift_allocObject();
  *(v100 + 16) = v178;
  *(v100 + 32) = v176;
  *(v100 + 40) = 0xD000000000000011;
  *(v100 + 48) = 0x80000001CA99E620;
  *(v100 + 64) = MEMORY[0x1E69E6158];
  *(v100 + 72) = @"Description";
  v101 = @"Description";
  v102 = sub_1CA94C438();
  v167 = v103;
  v168 = v102;
  v104 = sub_1CA94C438();
  v106 = v105;
  v169 = &v166;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v166 - v186;
  sub_1CA948D98();
  v108 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v166 - v183;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 80) = sub_1CA2F9F14(v168, v167, v104, v106, 0, 0, v107, v109);
  v111 = v182;
  v112 = v175;
  *(v100 + 104) = v182;
  *(v100 + 112) = v112;
  *(v100 + 120) = 0xD00000000000001ALL;
  *(v100 + 128) = 0x80000001CA9AEC30;
  v113 = v174;
  *(v100 + 144) = MEMORY[0x1E69E6158];
  *(v100 + 152) = v113;
  v114 = sub_1CA94C438();
  v167 = v115;
  v168 = v114;
  v116 = sub_1CA94C438();
  v166 = v117;
  v169 = &v166;
  MEMORY[0x1EEE9AC00](v116);
  v118 = v186;
  sub_1CA948D98();
  v119 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = v183;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v168, v167, v116, v166, 0, 0, &v166 - v118, &v166 - v120);
  *(v100 + 184) = v111;
  *(v100 + 160) = v122;
  sub_1CA94C1E8();
  *(v180 + 40) = sub_1CA2F864C();
  v123 = swift_allocObject();
  *(v123 + 16) = v178;
  *(v123 + 32) = v176;
  *(v123 + 40) = 0xD000000000000019;
  *(v123 + 48) = 0x80000001CA99B030;
  v124 = MEMORY[0x1E69E6158];
  v125 = v175;
  *(v123 + 64) = MEMORY[0x1E69E6158];
  *(v123 + 72) = v125;
  *(v123 + 80) = 0x7475706E494657;
  *(v123 + 88) = 0xE700000000000000;
  v126 = v174;
  *(v123 + 104) = v124;
  *(v123 + 112) = v126;
  v127 = sub_1CA94C438();
  v176 = v128;
  v177 = v127;
  v129 = sub_1CA94C438();
  v175 = v130;
  *&v178 = &v166;
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v166 - v118;
  sub_1CA948D98();
  v132 = v185;
  v133 = [v185 bundleURL];
  v174 = &v166;
  MEMORY[0x1EEE9AC00](v133);
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 120) = sub_1CA2F9F14(v177, v176, v129, v175, 0, 0, v131, &v166 - v120);
  v135 = v182;
  v136 = v170;
  *(v123 + 144) = v182;
  *(v123 + 152) = v136;
  v137 = sub_1CA94C438();
  v176 = v138;
  v177 = v137;
  v139 = sub_1CA94C438();
  v175 = v140;
  *&v178 = &v166;
  MEMORY[0x1EEE9AC00](v139);
  v141 = &v166 - v186;
  sub_1CA948D98();
  v142 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v177, v176, v139, v175, 0, 0, v141, &v166 - v120);
  *(v123 + 184) = v135;
  *(v123 + 160) = v144;
  sub_1CA94C1E8();
  v145 = sub_1CA2F864C();
  v146 = v180;
  *(v180 + 48) = v145;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v148 = v181;
  v181[45] = v146;
  v148[48] = v147;
  v148[49] = @"ParameterSummary";
  v149 = @"ParameterSummary";
  v150 = sub_1CA94C438();
  v152 = v151;
  v153 = sub_1CA94C438();
  v155 = v154;
  MEMORY[0x1EEE9AC00](v153);
  v156 = &v166 - v186;
  sub_1CA948D98();
  v157 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v166 - v183;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160 = sub_1CA2F9F14(v150, v152, v153, v155, 0, 0, v156, v158);
  v161 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v162 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v163 = v181;
  v181[50] = v161;
  v163[53] = v162;
  v163[54] = @"ResidentCompatible";
  v163[58] = MEMORY[0x1E69E6370];
  *(v163 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v164 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3A64B0()
{
  v145 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9AED30;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v149 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v153 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v154 = v11;
  v12 = &v136 - v153;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v150 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v151 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v152 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v136 - v152;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v149, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v149 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v148 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v146 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v147 = &v136;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v136 - v153;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v136 - v152;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v146, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v149;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v148;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 6579538;
  *(inited + 168) = 0xE300000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "playpause.fill");
  *(inited + 215) = -18;
  *(inited + 224) = v35;
  *(inited + 232) = @"InputPassthrough";
  v36 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"IconColor";
  v38 = @"IconSymbol";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v148 = &v136;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v136 - v153;
  sub_1CA948D98();
  v48 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v136 - v152;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v149;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v148 = swift_allocObject();
  *(v148 + 1) = xmmword_1CA981360;
  v147 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981370;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD000000000000016;
  *(v51 + 48) = 0x80000001CA99C4A0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"DefaultValue";
  *(v51 + 80) = 0x7561502F79616C50;
  *(v51 + 88) = 0xEA00000000006573;
  *(v51 + 104) = v52;
  *(v51 + 112) = @"Items";
  v146 = swift_allocObject();
  *(v146 + 1) = xmmword_1CA981470;
  v53 = @"Class";
  v54 = @"DefaultValue";
  v142 = v53;
  v141 = v54;
  v55 = @"Parameters";
  v56 = @"Items";
  v57 = sub_1CA94C438();
  v139 = v58;
  v140 = v57;
  v59 = sub_1CA94C438();
  v138 = v60;
  v144 = &v136;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v136 - v153;
  sub_1CA948D98();
  v62 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v136 - v152;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = sub_1CA2F9F14(v140, v139, v59, v138, 0, 0, v61, v63);
  v66 = v146;
  v146[4] = v65;
  v67 = sub_1CA94C438();
  v138 = v68;
  v139 = v67;
  v69 = sub_1CA94C438();
  v137 = v70;
  v140 = &v136;
  MEMORY[0x1EEE9AC00](v69);
  v144 = inited;
  v71 = v153;
  sub_1CA948D98();
  v72 = v150;
  v73 = [v150 bundleURL];
  v136 = &v136;
  MEMORY[0x1EEE9AC00](v73);
  v74 = v152;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 40) = sub_1CA2F9F14(v139, v138, v69, v137, 0, 0, &v136 - v71, &v136 - v74);
  v76 = sub_1CA94C438();
  v138 = v77;
  v139 = v76;
  v78 = sub_1CA94C438();
  v137 = v79;
  v140 = &v136;
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948D98();
  v80 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v139, v138, v78, v137, 0, 0, &v136 - v71, &v136 - v74);
  v83 = v146;
  v146[6] = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v51 + 120) = v83;
  *(v51 + 144) = v84;
  *(v51 + 152) = @"Key";
  *(v51 + 160) = 0xD000000000000013;
  *(v51 + 168) = 0x80000001CA9AEE60;
  *(v51 + 184) = MEMORY[0x1E69E6158];
  *(v51 + 192) = @"Label";
  v85 = @"Key";
  v86 = @"Label";
  v137 = v85;
  v138 = v86;
  v87 = sub_1CA94C438();
  v140 = v88;
  v89 = sub_1CA94C438();
  v91 = v90;
  v146 = &v136;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v136 - v153;
  sub_1CA948D98();
  v93 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v152;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v87, v140, v89, v91, 0, 0, v92, &v136 - v94);
  *(v51 + 224) = v149;
  *(v51 + 200) = v96;
  _s3__C3KeyVMa_0(0);
  v140 = v97;
  v139 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v148[4] = sub_1CA2F864C();
  v98 = swift_initStackObject();
  *(v98 + 16) = xmmword_1CA981380;
  *(v98 + 32) = v142;
  *(v98 + 40) = 0xD00000000000001BLL;
  *(v98 + 48) = 0x80000001CA9A1EB0;
  v99 = MEMORY[0x1E69E6158];
  v100 = v141;
  *(v98 + 64) = MEMORY[0x1E69E6158];
  *(v98 + 72) = v100;
  *(v98 + 80) = 0x6C61636F4CLL;
  *(v98 + 88) = 0xE500000000000000;
  *(v98 + 104) = v99;
  *(v98 + 112) = @"DisallowedVariableTypes";
  v101 = v99;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v146 = v102;
  *(v98 + 120) = &unk_1F49F7E60;
  v103 = v137;
  *(v98 + 144) = v102;
  *(v98 + 152) = v103;
  strcpy((v98 + 160), "WFMediaRoute");
  *(v98 + 173) = 0;
  *(v98 + 174) = -5120;
  v104 = v138;
  *(v98 + 184) = v101;
  *(v98 + 192) = v104;
  v105 = @"DisallowedVariableTypes";
  v106 = sub_1CA94C438();
  v142 = v107;
  v108 = sub_1CA94C438();
  v110 = v109;
  v143 = &v136;
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v136 - v153;
  sub_1CA948D98();
  v112 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v106, v142, v108, v110, 0, 0, v111, &v136 - v94);
  *(v98 + 224) = v149;
  *(v98 + 200) = v114;
  v115 = sub_1CA94C368();
  *(v98 + 264) = MEMORY[0x1E69E6158];
  *(v98 + 232) = v115;
  *(v98 + 240) = 0x746E696F70646E45;
  *(v98 + 248) = 0xE800000000000000;
  sub_1CA94C1E8();
  v116 = sub_1CA2F864C();
  v117 = v148;
  v148[5] = v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v119 = v144;
  v144[40] = v117;
  v119[43] = v118;
  v119[44] = @"ParameterSummary";
  v120 = @"ParameterSummary";
  v121 = sub_1CA94C438();
  v123 = v122;
  v124 = sub_1CA94C438();
  v126 = v125;
  v149 = &v136;
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v136 - v153;
  sub_1CA948D98();
  v128 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v136 - v152;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v131 = sub_1CA2F9F14(v121, v123, v124, v126, 0, 0, v127, v129);
  v132 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v133 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v119[45] = v132;
  v119[48] = v133;
  v119[49] = @"RequiredResources";
  v119[53] = v146;
  v119[50] = &unk_1F49F7E90;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v134 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3A7594()
{
  v229 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9AEF20;
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
  v236 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v237 = v12;
  v13 = v221 - v236;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v234 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v235 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v233 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v221 - v233;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v230 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v232 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
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
  v228 = v221;
  MEMORY[0x1EEE9AC00](v30);
  v33 = v221 - v236;
  sub_1CA948D98();
  v34 = [v234 bundleURL];
  v231 = inited;
  MEMORY[0x1EEE9AC00](v34);
  v35 = v221 - v233;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v35);
  *(v24 + 64) = v230;
  *(v24 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v232;
  v39 = sub_1CA6B3784();
  v40 = v231;
  v231[20] = v39;
  v40[23] = v38;
  v40[24] = @"IconColor";
  v40[25] = 1702194242;
  v40[26] = 0xE400000000000000;
  v41 = MEMORY[0x1E69E6158];
  v40[28] = MEMORY[0x1E69E6158];
  v40[29] = @"IconSymbol";
  v40[30] = 0x656E6F687069;
  v40[31] = 0xE600000000000000;
  v40[33] = v41;
  v40[34] = @"InputPassthrough";
  v42 = MEMORY[0x1E69E6370];
  *(v40 + 280) = 0;
  v40[38] = v42;
  v40[39] = @"LocallyProcessesData";
  *(v40 + 320) = 1;
  v40[43] = v42;
  v40[44] = @"Name";
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"InputPassthrough";
  v46 = @"LocallyProcessesData";
  v47 = @"Name";
  v48 = sub_1CA94C438();
  v227 = v49;
  v228 = v48;
  v50 = sub_1CA94C438();
  v52 = v51;
  v232 = v221;
  MEMORY[0x1EEE9AC00](v50);
  v53 = v221 - v236;
  sub_1CA948D98();
  v54 = v234;
  v55 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v233;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v58 = sub_1CA2F9F14(v228, v227, v50, v52, 0, 0, v53, v221 - v56);
  v59 = v231;
  v231[45] = v58;
  v60 = v230;
  v59[48] = v230;
  v59[49] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_1CA9813C0;
  *(v61 + 32) = 0x656C7069746C754DLL;
  *(v61 + 40) = 0xE800000000000000;
  *(v61 + 48) = 0;
  *(v61 + 72) = MEMORY[0x1E69E6370];
  *(v61 + 80) = 0x614E74757074754FLL;
  *(v61 + 88) = 0xEA0000000000656DLL;
  v62 = @"Output";
  v63 = sub_1CA94C438();
  v227 = v64;
  v228 = v63;
  v65 = sub_1CA94C438();
  v226 = v66;
  v232 = v221;
  MEMORY[0x1EEE9AC00](v65);
  v67 = v221 - v236;
  sub_1CA948D98();
  v68 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 96) = sub_1CA2F9F14(v228, v227, v65, v226, 0, 0, v67, v221 - v56);
  *(v61 + 120) = v60;
  *(v61 + 128) = 0x7365707954;
  *(v61 + 136) = 0xE500000000000000;
  *(v61 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v61 + 144) = &unk_1F49F7F00;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v231;
  v231[50] = v71;
  v73[53] = v72;
  v73[54] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v228 = swift_allocObject();
  *(v228 + 1) = xmmword_1CA9813B0;
  v227 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  v226 = v74;
  *(v74 + 16) = xmmword_1CA981370;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000016;
  *(v74 + 48) = 0x80000001CA99C4A0;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"DefaultValue";
  *(v74 + 80) = 0x4E20656369766544;
  *(v74 + 88) = 0xEB00000000656D61;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Items";
  v232 = swift_allocObject();
  *(v232 + 1) = xmmword_1CA9858B0;
  v75 = @"Parameters";
  v76 = @"Class";
  v77 = @"DefaultValue";
  v78 = @"Items";
  v79 = sub_1CA94C438();
  v223 = v80;
  v224 = v79;
  v81 = sub_1CA94C438();
  v222 = v82;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v81);
  v83 = v236;
  sub_1CA948D98();
  v84 = v234;
  v85 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = v221 - v233;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v224, v223, v81, v222, 0, 0, v221 - v83, v86);
  v89 = v232;
  v232[4] = v88;
  v90 = sub_1CA94C438();
  v223 = v91;
  v224 = v90;
  v222 = sub_1CA94C438();
  v93 = v92;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v222);
  sub_1CA948D98();
  v94 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = v233;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89[5] = sub_1CA2F9F14(v224, v223, v222, v93, 0, 0, v221 - v83, v221 - v95);
  v97 = sub_1CA94C438();
  v223 = v98;
  v224 = v97;
  v222 = sub_1CA94C438();
  v100 = v99;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v222);
  v101 = v236;
  sub_1CA948D98();
  v102 = v234;
  v103 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v224, v223, v222, v100, 0, 0, v221 - v101, v221 - v95);
  v106 = v232;
  v232[6] = v105;
  v107 = sub_1CA94C438();
  v223 = v108;
  v224 = v107;
  v109 = sub_1CA94C438();
  v222 = v110;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948D98();
  v111 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = v233;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106[7] = sub_1CA2F9F14(v224, v223, v109, v222, 0, 0, v221 - v101, v221 - v112);
  v114 = sub_1CA94C438();
  v223 = v115;
  v224 = v114;
  v116 = sub_1CA94C438();
  v222 = v117;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v116);
  v118 = v236;
  sub_1CA948D98();
  v119 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v224, v223, v116, v222, 0, 0, v221 - v118, v221 - v112);
  v122 = v232;
  v232[8] = v121;
  v123 = sub_1CA94C438();
  v223 = v124;
  v224 = v123;
  v125 = sub_1CA94C438();
  v222 = v126;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v125);
  v127 = v221 - v118;
  sub_1CA948D98();
  v128 = v234;
  v129 = [v234 bundleURL];
  v221[1] = v221;
  MEMORY[0x1EEE9AC00](v129);
  v130 = v233;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122[9] = sub_1CA2F9F14(v224, v223, v125, v222, 0, 0, v127, v221 - v130);
  v132 = sub_1CA94C438();
  v223 = v133;
  v224 = v132;
  v134 = sub_1CA94C438();
  v222 = v135;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v134);
  v136 = v236;
  sub_1CA948D98();
  v137 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139 = sub_1CA2F9F14(v224, v223, v134, v222, 0, 0, v221 - v136, v221 - v130);
  v140 = v232;
  v232[10] = v139;
  v141 = sub_1CA94C438();
  v223 = v142;
  v224 = v141;
  v222 = sub_1CA94C438();
  v144 = v143;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v222);
  v145 = v221 - v136;
  sub_1CA948D98();
  v146 = v128;
  v147 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140[11] = sub_1CA2F9F14(v224, v223, v222, v144, 0, 0, v145, v221 - v130);
  v149 = sub_1CA94C438();
  v223 = v150;
  v224 = v149;
  v151 = sub_1CA94C438();
  v222 = v152;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v151);
  v153 = v236;
  sub_1CA948D98();
  v154 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156 = sub_1CA2F9F14(v224, v223, v151, v222, 0, 0, v221 - v153, v221 - v130);
  v157 = v232;
  v232[12] = v156;
  v158 = sub_1CA94C438();
  v223 = v159;
  v224 = v158;
  v160 = sub_1CA94C438();
  v222 = v161;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v160);
  v162 = v221 - v153;
  sub_1CA948D98();
  v163 = v234;
  v164 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v157[13] = sub_1CA2F9F14(v224, v223, v160, v222, 0, 0, v162, v221 - v130);
  v166 = sub_1CA94C438();
  v223 = v167;
  v224 = v166;
  v168 = sub_1CA94C438();
  v222 = v169;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v168);
  v170 = v221 - v236;
  sub_1CA948D98();
  v171 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v171);
  v172 = v233;
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v174 = sub_1CA2F9F14(v224, v223, v168, v222, 0, 0, v170, v221 - v172);
  v232[14] = v174;
  v175 = sub_1CA94C438();
  v223 = v176;
  v224 = v175;
  v222 = sub_1CA94C438();
  v178 = v177;
  v225 = v221;
  MEMORY[0x1EEE9AC00](v222);
  v179 = v236;
  sub_1CA948D98();
  v180 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182 = sub_1CA2F9F14(v224, v223, v222, v178, 0, 0, v221 - v179, v221 - v172);
  v183 = v232;
  v232[15] = v182;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v185 = v226;
  *(v226 + 120) = v183;
  *(v185 + 144) = v184;
  *(v185 + 152) = @"Key";
  strcpy((v185 + 160), "WFDeviceDetail");
  *(v185 + 175) = -18;
  *(v185 + 184) = MEMORY[0x1E69E6158];
  *(v185 + 192) = @"Label";
  v186 = @"Key";
  v187 = @"Label";
  v188 = sub_1CA94C438();
  v225 = v189;
  v190 = sub_1CA94C438();
  v192 = v191;
  v232 = v221;
  MEMORY[0x1EEE9AC00](v190);
  v193 = v221 - v179;
  sub_1CA948D98();
  v194 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = v221 - v233;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197 = sub_1CA2F9F14(v188, v225, v190, v192, 0, 0, v193, v195);
  *(v185 + 224) = v230;
  *(v185 + 200) = v197;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v198 = sub_1CA2F864C();
  v199 = v228;
  v228[4] = v198;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v201 = v231;
  v231[55] = v199;
  v201[58] = v200;
  v201[59] = @"ParameterSummary";
  v202 = @"ParameterSummary";
  v203 = sub_1CA94C438();
  v205 = v204;
  v206 = sub_1CA94C438();
  v208 = v207;
  MEMORY[0x1EEE9AC00](v206);
  v209 = v221 - v236;
  sub_1CA948D98();
  v210 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  v211 = v221 - v233;
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v213 = sub_1CA2F9F14(v203, v205, v206, v208, 0, 0, v209, v211);
  v214 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v215 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v216 = v231;
  v231[60] = v214;
  v216[63] = v215;
  v216[64] = @"ResidentCompatible";
  v217 = MEMORY[0x1E69E6370];
  v216[68] = MEMORY[0x1E69E6370];
  *(v216 + 520) = 1;
  v216[69] = @"SuggestedAsInitialAction";
  v216[73] = v217;
  *(v216 + 560) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v218 = @"ResidentCompatible";
  v219 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3A8F40()
{
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001CA9A8AF0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x3737343932363431;
  *(inited + 56) = 0xEA00000000003235;
  *(inited + 72) = v1;
  *(inited + 80) = 1701667150;
  *(inited + 88) = 0xE400000000000000;
  v2 = sub_1CA94C438();
  v4 = v3;
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA948E58();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v2, v4, v5, v7, 0, 0, v11, v16);
  v19 = sub_1CA344264();
  *(inited + 96) = v18;
  *(inited + 120) = v19;
  *(inited + 128) = 0x6D656863534C5255;
  *(inited + 136) = 0xEA00000000007365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1CA981310;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  strcpy((v21 + 32), "Capabilities");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v21 + 48) = &unk_1F49F7F40;
  *(v21 + 72) = v22;
  *(v21 + 80) = 0x656D65686353;
  *(v21 + 120) = MEMORY[0x1E69E6158];
  *(v21 + 88) = 0xE600000000000000;
  *(v21 + 96) = 0xD000000000000014;
  *(v21 + 104) = 0x80000001CA9AF3D0;
  *(v20 + 32) = sub_1CA94C1E8();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(inited + 144) = v20;
  return sub_1CA94C1E8();
}

id sub_1CA3A9320()
{
  v117 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9AF400;
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
  v13 = v108 - v123;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v120 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v118 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v119 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v108 - v119;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v116 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v114 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v115 = v108;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v108 - v123;
  sub_1CA948D98();
  v33 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v108 - v119;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v114, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v121;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v116;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x4C52554657;
  *(v38 + 104) = 0xE500000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  v40 = v39;
  *(v38 + 184) = 0xE500000000000000;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v116;
  *(v38 + 192) = &unk_1F49F7FB0;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v42;
  *(inited + 224) = v43;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v40;
  *(inited + 272) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v115 = v108;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v108 - v123;
  sub_1CA948D98();
  v53 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v108 - v119;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v113 = @"Parameters";
  *(inited + 304) = v121;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 1) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA9813E0;
  *(v56 + 32) = @"AllowsMultipleValues";
  *(v56 + 40) = 1;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 64) = MEMORY[0x1E69E6370];
  *(v56 + 72) = @"AutocapitalizationType";
  *(v56 + 80) = 1701736270;
  *(v56 + 88) = 0xE400000000000000;
  v58 = MEMORY[0x1E69E6158];
  *(v56 + 104) = MEMORY[0x1E69E6158];
  *(v56 + 112) = @"Class";
  *(v56 + 120) = 0xD000000000000014;
  *(v56 + 128) = 0x80000001CA99B500;
  *(v56 + 144) = v58;
  *(v56 + 152) = @"DisableAutocorrection";
  *(v56 + 160) = 1;
  *(v56 + 184) = v57;
  *(v56 + 192) = @"Key";
  *(v56 + 200) = 0x4C52554657;
  *(v56 + 208) = 0xE500000000000000;
  *(v56 + 224) = v58;
  *(v56 + 232) = @"KeyboardType";
  *(v56 + 240) = 5001813;
  *(v56 + 248) = 0xE300000000000000;
  *(v56 + 264) = v58;
  *(v56 + 272) = @"Label";
  v59 = v113;
  v60 = @"AllowsMultipleValues";
  v61 = @"AutocapitalizationType";
  v62 = @"Class";
  v63 = @"DisableAutocorrection";
  v64 = @"Key";
  v65 = @"KeyboardType";
  v66 = @"Label";
  v67 = sub_1CA94C438();
  v110 = v68;
  v111 = v67;
  v69 = sub_1CA94C438();
  v109 = v70;
  v112 = v108;
  MEMORY[0x1EEE9AC00](v69);
  v71 = v108 - v123;
  sub_1CA948D98();
  v72 = v120;
  v73 = [v120 bundleURL];
  v108[1] = v108;
  MEMORY[0x1EEE9AC00](v73);
  v113 = inited;
  v74 = v119;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 280) = sub_1CA2F9F14(v111, v110, v69, v109, 0, 0, v71, v108 - v74);
  *(v56 + 304) = v121;
  *(v56 + 312) = @"Placeholder";
  v76 = @"Placeholder";
  v77 = sub_1CA94C438();
  v110 = v78;
  v111 = v77;
  v79 = sub_1CA94C438();
  v81 = v80;
  v112 = v108;
  MEMORY[0x1EEE9AC00](v79);
  v82 = v108 - v123;
  sub_1CA948D98();
  v83 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 320) = sub_1CA2F9F14(v111, v110, v79, v81, 0, 0, v82, v108 - v74);
  *(v56 + 344) = v121;
  *(v56 + 352) = @"TextContentType";
  *(v56 + 384) = MEMORY[0x1E69E6158];
  *(v56 + 360) = 5001813;
  *(v56 + 368) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v85 = @"TextContentType";
  sub_1CA94C1E8();
  v86 = sub_1CA2F864C();
  v87 = v115;
  v115[4] = v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v89 = v113;
  v113[10].isa = v87;
  v89[10].length = v88;
  v89[11].isa = @"ParameterSummary";
  v90 = @"ParameterSummary";
  v91 = sub_1CA94C438();
  v93 = v92;
  v94 = sub_1CA94C438();
  v96 = v95;
  v121 = v108;
  MEMORY[0x1EEE9AC00](v94);
  v97 = v108 - v123;
  sub_1CA948D98();
  v98 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = v108 - v119;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v91, v93, v94, v96, 0, 0, v97, v99);
  v102 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v103 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v89[11].info = v102;
  v89[12].isa = v103;
  v89[12].info = @"RemoteExecuteOnPlatforms";
  v89[12].data = &unk_1F49F7FE0;
  v104 = v116;
  v89[13].info = v116;
  v89[13].data = @"RequiredResources";
  v89[14].data = v104;
  v89[13].length = &unk_1F49F8010;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v105 = @"RemoteExecuteOnPlatforms";
  v106 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id TableTemplateValue<>.propertyQuery(metadata:actionIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + qword_1EC444E18);
  v18 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v7 = sub_1CA25B410(v6);
  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1CCAA22D0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v13 = MEMORY[0x1CCAA22D0](0, v4);
      goto LABEL_18;
    }

    if (a3)
    {
      v4 = sub_1CA94C368();
    }

    else
    {
      v4 = 0;
    }

    v12 = WFLNPropertyQueryForRowTemplateValue(v10, a1, v4);

    ++v8;
    if (v12)
    {
      MEMORY[0x1CCAA1490]();
      v4 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v18 = v20;
      v8 = v11;
    }
  }

  v4 = v18;
  if (sub_1CA25B410(v18) == 1)
  {
    sub_1CA275D70(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_25;
    }

    v13 = *(v18 + 32);
LABEL_18:
    v14 = v13;

    return v14;
  }

  v16 = *(v17 + qword_1EC444E10);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1CA25B3D0(0, &qword_1EC444668, 0x1E69AC770);
      return sub_1CA33A808();
    }

    else
    {
      type metadata accessor for WFTableTemplateCompoundType(0);
      result = sub_1CA94D838();
      __break(1u);
    }
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC444668, 0x1E69AC770);
    return sub_1CA3AAA50();
  }

  return result;
}

uint64_t TableTemplateValue<>.spotlightQuery(actionIdentifier:metadata:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = *MEMORY[0x1E69ACCD8];
  v8 = sub_1CA94C3A8();
  v10 = v9;
  v11 = [a3 identifier];
  v12 = sub_1CA94C3A8();
  v14 = v13;

  Value = type metadata accessor for WFSpotlightQueryValue();
  v16 = objc_allocWithZone(Value);
  v17 = &v16[OBJC_IVAR____TtC11WorkflowKit21WFSpotlightQueryValue_stringValue];
  *v17 = v12;
  v17[1] = v14;
  v41.receiver = v16;
  v41.super_class = Value;
  v18 = objc_msgSendSuper2(&v41, sel_init);
  v19 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryCondition());
  v20 = v8;
  v21 = v19;
  v22 = sub_1CA44123C(v20, v10, 4, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1CA9813B0;
  v35 = v23;
  *(v23 + 32) = v22;
  v37 = v4;
  v24 = *(v4 + qword_1EC444E18);
  v38 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  v25 = sub_1CA25B410(v24);
  v36 = v22;
  v26 = 0;
  while (1)
  {
    if (v25 == v26)
    {
      v40 = v35;
      sub_1CA2B7C54(v38);
      v30 = v40;
      v21 = *(v37 + qword_1EC444E10);
      if (v21)
      {
        if (v21 != 1)
        {
          goto LABEL_19;
        }

        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      v32 = objc_allocWithZone(type metadata accessor for WFSpotlightQueryBuilder());
      v33 = sub_1CA440B68(v31, v30);

      return v33;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1CCAA22D0](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v21 = v27;
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    v29 = sub_1CA3AAAD4(a1, a2, a3);

    ++v26;
    if (v29)
    {
      MEMORY[0x1CCAA1490]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      v21 = &v40;
      sub_1CA94C6E8();
      v38 = v40;
      v26 = v28;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  type metadata accessor for WFTableTemplateCompoundType(0);
  v40 = v21;
  result = sub_1CA94D838();
  __break(1u);
  return result;
}