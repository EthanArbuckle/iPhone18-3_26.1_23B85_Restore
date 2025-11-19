uint64_t OUTLINED_FUNCTION_115_1()
{
  *(v1 + 8) = v0;
  v3 = *(v2 + 80);
  return *(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_117_0()
{
  v2 = v0[29];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];

  return MEMORY[0x1EEE4ABF8]();
}

uint64_t OUTLINED_FUNCTION_118_0(uint64_t a1)
{

  return MEMORY[0x1EEE4AC00](v2, a1, v1);
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_120_0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE697B8](a1, a2, v4, v3, v2);
}

void OUTLINED_FUNCTION_137_1()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
}

void OUTLINED_FUNCTION_148_0()
{
  v4 = v1[31];
  v3 = v1[32];
  v6 = v1[29];
  v5 = v1[30];
  v8 = v1[25];
  v7 = v1[26];
  v9 = v1[24];
}

uint64_t OUTLINED_FUNCTION_152_0()
{
  v3 = v2 - *(v0 + 80);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_157_1(uint64_t a1)
{

  return sub_1CA2E9314(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_158_0()
{
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
}

id sub_1CA2E9698()
{
  v269 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA99F940;
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
  v285 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v286 = v12;
  v13 = &v259 - v285;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v283 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v282 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v284 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v259 - v284;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v281 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v278 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v279 = xmmword_1CA9813C0;
  *(v24 + 16) = xmmword_1CA9813C0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v275 = v28;
  v276 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v277 = &v259;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v259 - v285;
  sub_1CA948D98();
  v33 = v283;
  v34 = [v283 bundleURL];
  v280 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v259 - v284;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v276, v275, v29, v31, 0, 0, v32, v36);
  *(v24 + 64) = v281;
  *(v24 + 72) = @"DescriptionResult";
  v38 = @"DescriptionResult";
  v39 = sub_1CA94C438();
  v275 = v40;
  v276 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v277 = &v259;
  MEMORY[0x1EEE9AC00](v41);
  v44 = v285;
  sub_1CA948D98();
  v45 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  v46 = v284;
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v276, v275, v41, v43, 0, 0, &v259 - v44, &v259 - v46);
  v48 = v281;
  *(v24 + 104) = v281;
  *(v24 + 112) = @"DescriptionSummary";
  v49 = @"DescriptionSummary";
  v50 = sub_1CA94C438();
  v275 = v51;
  v276 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v277 = &v259;
  MEMORY[0x1EEE9AC00](v52);
  sub_1CA948D98();
  v55 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v276, v275, v52, v54, 0, 0, &v259 - v44, &v259 - v46);
  *(v24 + 144) = v48;
  *(v24 + 120) = v57;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v58 = v278;
  v59 = sub_1CA6B3784();
  v60 = v280;
  v280[20] = v59;
  v60[23] = v58;
  v60[24] = @"DisabledOnPlatforms";
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v60[28] = v61;
  v62 = v61;
  v274 = v61;
  v60[25] = &unk_1F49F2DD8;
  v63 = @"DisabledOnPlatforms";
  v60[29] = sub_1CA94C368();
  v64 = MEMORY[0x1E69E6370];
  *(v60 + 240) = 1;
  v60[33] = v64;
  v60[34] = @"Input";
  v65 = v64;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v66 = swift_initStackObject();
  v272 = xmmword_1CA981350;
  *(v66 + 16) = xmmword_1CA981350;
  *(v66 + 32) = 0x656C7069746C754DLL;
  *(v66 + 40) = 0xE800000000000000;
  *(v66 + 48) = 1;
  *(v66 + 72) = v65;
  strcpy((v66 + 80), "ParameterKey");
  *(v66 + 93) = 0;
  *(v66 + 94) = -5120;
  *(v66 + 96) = 0x7475706E49;
  *(v66 + 104) = 0xE500000000000000;
  *(v66 + 120) = MEMORY[0x1E69E6158];
  *(v66 + 128) = 0x6465726975716552;
  *(v66 + 136) = 0xE800000000000000;
  *(v66 + 144) = 0;
  *(v66 + 168) = v65;
  *(v66 + 176) = 0x7365707954;
  *(v66 + 216) = v62;
  *(v66 + 184) = 0xE500000000000000;
  *(v66 + 192) = &unk_1F49F2E08;
  v67 = @"Input";
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v278 = v69;
  v60[35] = v68;
  v60[38] = v69;
  v60[39] = @"InputPassthrough";
  *(v60 + 320) = 0;
  v60[43] = v65;
  v60[44] = @"Name";
  v70 = @"InputPassthrough";
  v71 = @"Name";
  v275 = sub_1CA94C438();
  v73 = v72;
  v74 = sub_1CA94C438();
  v76 = v75;
  v276 = &v259;
  MEMORY[0x1EEE9AC00](v74);
  v77 = v285;
  sub_1CA948D98();
  v78 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v259 - v284;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81 = sub_1CA2F9F14(v275, v73, v74, v76, 0, 0, &v259 - v77, v79);
  v82 = v280;
  v83 = v281;
  v280[45] = v81;
  v82[48] = v83;
  v82[49] = @"Output";
  v84 = swift_allocObject();
  *(v84 + 16) = v279;
  *(v84 + 32) = 0x656C7069746C754DLL;
  *(v84 + 40) = 0xE800000000000000;
  *(v84 + 48) = 0;
  *(v84 + 72) = MEMORY[0x1E69E6370];
  *(v84 + 80) = 0x614E74757074754FLL;
  *(v84 + 88) = 0xEA0000000000656DLL;
  v85 = @"Output";
  v86 = sub_1CA94C438();
  v276 = v87;
  v277 = v86;
  v88 = sub_1CA94C438();
  v90 = v89;
  *&v279 = &v259;
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948D98();
  v91 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v259 - v284;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 96) = sub_1CA2F9F14(v277, v276, v88, v90, 0, 0, &v259 - v77, v92);
  *(v84 + 120) = v83;
  *(v84 + 128) = 0x7365707954;
  *(v84 + 168) = v274;
  *(v84 + 136) = 0xE500000000000000;
  *(v84 + 144) = &unk_1F49F2E38;
  v94 = MEMORY[0x1E69E6158];
  v95 = sub_1CA94C1E8();
  v96 = v280;
  v280[50] = v95;
  v273 = @"ParameterCollapsingBehavior";
  v96[53] = v278;
  v96[54] = @"ParameterCollapsingBehavior";
  v96[55] = 0x726576654ELL;
  v96[56] = 0xE500000000000000;
  v271 = @"Parameters";
  v96[58] = v94;
  v96[59] = @"Parameters";
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v279 = swift_allocObject();
  *(v279 + 16) = xmmword_1CA981560;
  v278 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1CA981450;
  v268 = @"AutocapitalizationType";
  *(v97 + 32) = @"AutocapitalizationType";
  *(v97 + 40) = 1701736270;
  *(v97 + 48) = 0xE400000000000000;
  *(v97 + 64) = v94;
  *(v97 + 72) = @"Class";
  *(v97 + 80) = 0xD000000000000014;
  *(v97 + 88) = 0x80000001CA99B500;
  *&v267 = @"DisableAutocorrection";
  *(v97 + 104) = v94;
  *(v97 + 112) = @"DisableAutocorrection";
  *(v97 + 120) = 1;
  v264 = @"DisableAutoPeriods";
  v98 = MEMORY[0x1E69E6370];
  *(v97 + 144) = MEMORY[0x1E69E6370];
  *(v97 + 152) = @"DisableAutoPeriods";
  *(v97 + 160) = 1;
  v263 = @"DisableSmartDashes";
  *(v97 + 184) = v98;
  *(v97 + 192) = @"DisableSmartDashes";
  *(v97 + 200) = 1;
  v262 = @"DisableSmartQuotes";
  *(v97 + 224) = v98;
  *(v97 + 232) = @"DisableSmartQuotes";
  *(v97 + 240) = 1;
  v261 = @"DisableTextReplacement";
  *(v97 + 264) = v98;
  *(v97 + 272) = @"DisableTextReplacement";
  *(v97 + 280) = 0;
  v260 = @"DoNotLocalizeValues";
  *(v97 + 304) = v98;
  *(v97 + 312) = @"DoNotLocalizeValues";
  *(v97 + 320) = 1;
  *(v97 + 344) = v98;
  *(v97 + 352) = @"Key";
  *(v97 + 360) = 0x747069726353;
  *(v97 + 368) = 0xE600000000000000;
  *(v97 + 384) = v94;
  *(v97 + 392) = @"MonospaceFont";
  *(v97 + 400) = 1;
  *(v97 + 424) = v98;
  *(v97 + 432) = @"Multiline";
  *(v97 + 440) = 1;
  *(v97 + 464) = v98;
  *(v97 + 472) = @"Placeholder";
  *(v97 + 504) = v94;
  *(v97 + 480) = 0xD000000000000012;
  *(v97 + 488) = 0x80000001CA99FAF0;
  _s3__C3KeyVMa_0(0);
  v276 = v99;
  v275 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v100 = @"Class";
  v101 = @"Key";
  v102 = v100;
  v103 = v101;
  v104 = @"Placeholder";
  v105 = v102;
  v270 = v103;
  v265 = v104;
  v106 = v273;
  v107 = v271;
  v108 = v268;
  v109 = v267;
  v110 = v264;
  v111 = v263;
  v112 = v262;
  v113 = v261;
  v114 = v260;
  v115 = @"MonospaceFont";
  v116 = @"Multiline";
  sub_1CA94C1E8();
  *(v279 + 32) = sub_1CA2F864C();
  v117 = swift_allocObject();
  v267 = xmmword_1CA981370;
  *(v117 + 16) = xmmword_1CA981370;
  *(v117 + 32) = v105;
  *(v117 + 40) = 0xD00000000000001DLL;
  *(v117 + 48) = 0x80000001CA99FB10;
  *(v117 + 64) = MEMORY[0x1E69E6158];
  *(v117 + 72) = @"Description";
  v118 = @"Description";
  v271 = v105;
  v273 = v118;
  v119 = sub_1CA94C438();
  v264 = v120;
  v121 = sub_1CA94C438();
  v123 = v122;
  v268 = &v259;
  MEMORY[0x1EEE9AC00](v121);
  v124 = v285;
  sub_1CA948D98();
  v125 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v259 - v284;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 80) = sub_1CA2F9F14(v119, v264, v121, v123, 0, 0, &v259 - v124, v126);
  *(v117 + 104) = v281;
  *(v117 + 112) = @"DisallowedVariableTypes";
  *(v117 + 120) = &unk_1F49F2E78;
  v128 = v270;
  *(v117 + 144) = v274;
  *(v117 + 152) = v128;
  *(v117 + 160) = 0x6C6C656853;
  *(v117 + 168) = 0xE500000000000000;
  *(v117 + 184) = MEMORY[0x1E69E6158];
  *(v117 + 192) = @"Label";
  v129 = @"Label";
  v130 = @"DisallowedVariableTypes";
  v262 = v128;
  v263 = v129;
  v264 = v130;
  v131 = sub_1CA94C438();
  v133 = v132;
  v134 = sub_1CA94C438();
  v136 = v135;
  v270 = &v259;
  MEMORY[0x1EEE9AC00](v134);
  v137 = &v259 - v124;
  sub_1CA948D98();
  v138 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v259 - v284;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v141 = sub_1CA2F9F14(v131, v133, v134, v136, 0, 0, v137, v139);
  *(v117 + 224) = v281;
  *(v117 + 200) = v141;
  sub_1CA94C1E8();
  *(v279 + 40) = sub_1CA2F864C();
  v142 = swift_allocObject();
  *(v142 + 16) = v272;
  v268 = 0xD000000000000019;
  v143 = v271;
  *(v142 + 32) = v271;
  *(v142 + 40) = 0xD000000000000019;
  *(v142 + 48) = 0x80000001CA99B030;
  v144 = MEMORY[0x1E69E6158];
  v145 = v262;
  v146 = v263;
  *(v142 + 64) = MEMORY[0x1E69E6158];
  *(v142 + 72) = v145;
  *(v142 + 80) = 0x7475706E49;
  *(v142 + 88) = 0xE500000000000000;
  *(v142 + 104) = v144;
  *(v142 + 112) = v146;
  v270 = v143;
  v271 = v145;
  *&v272 = v146;
  v147 = sub_1CA94C438();
  v261 = v148;
  v262 = v147;
  v149 = sub_1CA94C438();
  v260 = v150;
  v263 = &v259;
  MEMORY[0x1EEE9AC00](v149);
  v151 = &v259 - v285;
  sub_1CA948D98();
  v152 = v283;
  v153 = [v283 bundleURL];
  v259 = &v259;
  MEMORY[0x1EEE9AC00](v153);
  v154 = v284;
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v142 + 120) = sub_1CA2F9F14(v262, v261, v149, v260, 0, 0, v151, &v259 - v154);
  v156 = v281;
  v157 = v265;
  *(v142 + 144) = v281;
  *(v142 + 152) = v157;
  v158 = sub_1CA94C438();
  v262 = v159;
  v263 = v158;
  v160 = sub_1CA94C438();
  v261 = v161;
  v265 = &v259;
  MEMORY[0x1EEE9AC00](v160);
  v162 = &v259 - v285;
  sub_1CA948D98();
  v163 = [v152 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v263, v262, v160, v261, 0, 0, v162, &v259 - v154);
  *(v142 + 184) = v156;
  *(v142 + 160) = v165;
  sub_1CA94C1E8();
  *(v279 + 48) = sub_1CA2F864C();
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_1CA981400;
  *(v166 + 32) = v270;
  *(v166 + 40) = 0xD000000000000016;
  *(v166 + 48) = 0x80000001CA99C4A0;
  v167 = MEMORY[0x1E69E6158];
  *(v166 + 64) = MEMORY[0x1E69E6158];
  *(v166 + 72) = @"DefaultValue";
  *(v166 + 80) = 0x6E69647473206F74;
  *(v166 + 88) = 0xE800000000000000;
  v168 = v273;
  *(v166 + 104) = v167;
  *(v166 + 112) = v168;
  v265 = @"DefaultValue";
  v169 = sub_1CA94C438();
  v262 = v170;
  v171 = sub_1CA94C438();
  v173 = v172;
  v263 = &v259;
  MEMORY[0x1EEE9AC00](v171);
  v174 = &v259 - v285;
  sub_1CA948D98();
  v175 = v283;
  v176 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  v177 = &v259 - v284;
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 120) = sub_1CA2F9F14(v169, v262, v171, v173, 0, 0, v174, v177);
  v179 = v264;
  *(v166 + 144) = v281;
  *(v166 + 152) = v179;
  *(v166 + 160) = &unk_1F49F2EB8;
  *(v166 + 184) = v274;
  *(v166 + 192) = @"Items";
  v274 = swift_allocObject();
  *(v274 + 1) = xmmword_1CA981360;
  v180 = @"Items";
  v181 = sub_1CA94C438();
  v263 = v182;
  v264 = v181;
  v183 = sub_1CA94C438();
  v262 = v184;
  v266 = &v259;
  MEMORY[0x1EEE9AC00](v183);
  v185 = v285;
  sub_1CA948D98();
  v186 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = v284;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v189 = sub_1CA2F9F14(v264, v263, v183, v262, 0, 0, &v259 - v185, &v259 - v187);
  v274[4] = v189;
  v190 = sub_1CA94C438();
  v263 = v191;
  v264 = v190;
  v262 = sub_1CA94C438();
  v193 = v192;
  v266 = &v259;
  MEMORY[0x1EEE9AC00](v262);
  sub_1CA948D98();
  v194 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v196 = sub_1CA2F9F14(v264, v263, v262, v193, 0, 0, &v259 - v185, &v259 - v187);
  v197 = v274;
  v274[5] = v196;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v166 + 200) = v197;
  v199 = v271;
  *(v166 + 224) = v198;
  *(v166 + 232) = v199;
  *(v166 + 240) = 0x646F4D7475706E49;
  *(v166 + 248) = 0xE900000000000065;
  v200 = v272;
  *(v166 + 264) = MEMORY[0x1E69E6158];
  *(v166 + 272) = v200;
  v266 = sub_1CA94C438();
  v202 = v201;
  v203 = sub_1CA94C438();
  v205 = v204;
  v274 = &v259;
  MEMORY[0x1EEE9AC00](v203);
  v206 = &v259 - v285;
  sub_1CA948D98();
  v207 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v207);
  v208 = &v259 - v284;
  sub_1CA948B68();

  v209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v210 = sub_1CA2F9F14(v266, v202, v203, v205, 0, 0, v206, v208);
  *(v166 + 304) = v281;
  *(v166 + 280) = v210;
  sub_1CA94C1E8();
  *(v279 + 56) = sub_1CA2F864C();
  v211 = swift_allocObject();
  *(v211 + 16) = v267;
  *(v211 + 32) = v270;
  *(v211 + 40) = 0xD000000000000011;
  *(v211 + 48) = 0x80000001CA99E620;
  v212 = v265;
  *(v211 + 64) = MEMORY[0x1E69E6158];
  *(v211 + 72) = v212;
  *(v211 + 80) = 0;
  v213 = v273;
  *(v211 + 104) = MEMORY[0x1E69E6370];
  *(v211 + 112) = v213;
  v214 = sub_1CA94C438();
  v273 = v215;
  v274 = v214;
  v216 = sub_1CA94C438();
  v270 = v217;
  v277 = &v259;
  MEMORY[0x1EEE9AC00](v216);
  v218 = &v259 - v285;
  sub_1CA948D98();
  v219 = v283;
  v220 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  v221 = v284;
  sub_1CA948B68();

  v222 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 120) = sub_1CA2F9F14(v274, v273, v216, v270, 0, 0, v218, &v259 - v221);
  v223 = v271;
  *(v211 + 144) = v281;
  *(v211 + 152) = v223;
  *(v211 + 160) = 0x6F6F5273416E7552;
  *(v211 + 168) = 0xE900000000000074;
  v224 = v272;
  *(v211 + 184) = MEMORY[0x1E69E6158];
  *(v211 + 192) = v224;
  v225 = sub_1CA94C438();
  v273 = v226;
  v274 = v225;
  v227 = sub_1CA94C438();
  *&v272 = v228;
  v277 = &v259;
  MEMORY[0x1EEE9AC00](v227);
  v229 = &v259 - v285;
  sub_1CA948D98();
  v230 = [v219 bundleURL];
  MEMORY[0x1EEE9AC00](v230);
  sub_1CA948B68();

  v231 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v232 = sub_1CA2F9F14(v274, v273, v227, v272, 0, 0, v229, &v259 - v221);
  *(v211 + 224) = v281;
  *(v211 + 200) = v232;
  sub_1CA94C1E8();
  v233 = sub_1CA2F864C();
  v234 = v279;
  *(v279 + 64) = v233;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v236 = v280;
  v280[60] = v234;
  v236[63] = v235;
  v236[64] = @"ParameterSummary";
  v237 = @"ParameterSummary";
  v238 = sub_1CA94C438();
  v240 = v239;
  v241 = sub_1CA94C438();
  v243 = v242;
  MEMORY[0x1EEE9AC00](v241);
  v244 = &v259 - v285;
  sub_1CA948D98();
  v245 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v245);
  v246 = &v259 - v284;
  sub_1CA948B68();

  v247 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v248 = sub_1CA2F9F14(v238, v240, v241, v243, 0, 0, v244, v246);
  v249 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v250 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v251 = v280;
  v280[68] = v250;
  v251[65] = v249;
  v251[69] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v252 = swift_allocObject();
  *(v252 + 16) = xmmword_1CA97EDF0;
  v287 = 2;
  v288 = 0;
  v253 = type metadata accessor for WFDeviceIdiomResource();
  v254 = objc_allocWithZone(v253);
  v255 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v287);
  *(v252 + 32) = v256;
  *(v252 + 88) = MEMORY[0x1E69E6158];
  v257 = v268;
  *(v252 + 56) = v253;
  *(v252 + 64) = v257;
  *(v252 + 72) = 0x80000001CA994500;
  v251[73] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v251[70] = v252;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2EB618()
{
  v164 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9A0000;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v173 = inited;
  v171 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v172 = sub_1CA94C438();
  v176 = v9;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v178 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v179 = v15;
  v16 = &v155 - v178;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB9F690;
  v175 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v174 = v20;
  v177 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v155 - v177;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v172, v176, v10, v12, 0, 0, v16, v21);
  v176 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v176;
  *(v6 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v24 = v171;
  v25 = sub_1CA6B3784();
  v26 = v173;
  v173[15] = v25;
  v26[18] = v24;
  v26[19] = @"Name";
  v27 = @"Name";
  v28 = sub_1CA94C438();
  v30 = v29;
  v31 = sub_1CA94C438();
  v33 = v32;
  v172 = &v155;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v155 - v178;
  sub_1CA948D98();
  v35 = [v17 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v155 - v177;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26[20] = sub_1CA2F9F14(v28, v30, v31, v33, 0, 0, v34, v36);
  v26[23] = v176;
  v26[24] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1CA9813C0;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 0;
  *(v38 + 72) = v39;
  *(v38 + 80) = 0x614E74757074754FLL;
  *(v38 + 88) = 0xEA0000000000656DLL;
  v40 = @"Output";
  v41 = sub_1CA94C438();
  v171 = v42;
  v43 = sub_1CA94C438();
  v45 = v44;
  v172 = &v155;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v155 - v178;
  sub_1CA948D98();
  v47 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v155 - v177;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v38 + 96) = sub_1CA2F9F14(v41, v171, v43, v45, 0, 0, v46, v48);
  *(v38 + 120) = v176;
  *(v38 + 128) = 0x7365707954;
  *(v38 + 136) = 0xE500000000000000;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 168) = v163;
  *(v38 + 144) = &unk_1F49F2F78;
  v50 = MEMORY[0x1E69E6158];
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v26[25] = v51;
  v26[28] = v52;
  v26[29] = @"Parameters";
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v172 = swift_allocObject();
  *(v172 + 1) = xmmword_1CA981470;
  v171 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v53 = swift_initStackObject();
  v161 = xmmword_1CA981370;
  *(v53 + 16) = xmmword_1CA981370;
  *(v53 + 32) = @"Class";
  *(v53 + 40) = 0xD000000000000014;
  *(v53 + 48) = 0x80000001CA99B500;
  *(v53 + 64) = v50;
  *(v53 + 72) = @"Key";
  strcpy((v53 + 80), "WFTrelloName");
  *(v53 + 93) = 0;
  *(v53 + 94) = -5120;
  *(v53 + 104) = v50;
  *(v53 + 112) = @"Label";
  v54 = @"Class";
  v55 = @"Key";
  v56 = @"Label";
  v57 = v54;
  v58 = v55;
  v59 = v56;
  v165 = v57;
  v169 = v58;
  v170 = v59;
  v60 = @"Parameters";
  v167 = sub_1CA94C438();
  v160 = v61;
  v62 = sub_1CA94C438();
  v159 = v63;
  v168 = &v155;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v155 - v178;
  sub_1CA948D98();
  v65 = v175;
  v66 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v177;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 120) = sub_1CA2F9F14(v167, v160, v62, v159, 0, 0, v64, &v155 - v67);
  *(v53 + 144) = v176;
  *(v53 + 152) = @"Placeholder";
  v160 = @"Placeholder";
  v167 = sub_1CA94C438();
  v159 = v69;
  v70 = sub_1CA94C438();
  v158 = v71;
  v168 = &v155;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v155 - v178;
  sub_1CA948D98();
  v73 = [v65 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 160) = sub_1CA2F9F14(v167, v159, v70, v158, 0, 0, v72, &v155 - v67);
  *(v53 + 184) = v176;
  *(v53 + 192) = @"TextAlignment";
  v75 = MEMORY[0x1E69E6158];
  *(v53 + 224) = MEMORY[0x1E69E6158];
  *(v53 + 200) = 0x7468676952;
  *(v53 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v168 = v76;
  v167 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v77 = @"TextAlignment";
  sub_1CA94C1E8();
  v172[4] = sub_1CA2F864C();
  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_1CA981350;
  *(v78 + 32) = v165;
  *(v78 + 40) = 0xD00000000000001CLL;
  *(v78 + 48) = 0x80000001CA9A0130;
  v79 = v169;
  *(v78 + 64) = v75;
  *(v78 + 72) = v79;
  strcpy((v78 + 80), "WFTrelloBoard");
  *(v78 + 94) = -4864;
  v80 = v170;
  *(v78 + 104) = v75;
  *(v78 + 112) = v80;
  v81 = sub_1CA94C438();
  v157 = v82;
  v158 = v81;
  v83 = sub_1CA94C438();
  v156 = v84;
  v159 = &v155;
  MEMORY[0x1EEE9AC00](v83);
  v85 = v178;
  sub_1CA948D98();
  v86 = v175;
  v87 = [v175 bundleURL];
  v155 = &v155;
  MEMORY[0x1EEE9AC00](v87);
  v88 = v177;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 120) = sub_1CA2F9F14(v158, v157, v83, v156, 0, 0, &v155 - v85, &v155 - v88);
  v90 = v176;
  v91 = v160;
  *(v78 + 144) = v176;
  *(v78 + 152) = v91;
  v92 = sub_1CA94C438();
  v158 = v93;
  v159 = v92;
  v94 = sub_1CA94C438();
  v96 = v95;
  v160 = &v155;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v155 - v85;
  sub_1CA948D98();
  v98 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v159, v158, v94, v96, 0, 0, v97, &v155 - v88);
  *(v78 + 184) = v90;
  *(v78 + 160) = v100;
  sub_1CA94C1E8();
  v172[5] = sub_1CA2F864C();
  v101 = swift_allocObject();
  *(v101 + 16) = v161;
  *(v101 + 32) = v165;
  *(v101 + 40) = 0xD000000000000016;
  *(v101 + 48) = 0x80000001CA99C4A0;
  v102 = MEMORY[0x1E69E6158];
  *(v101 + 64) = MEMORY[0x1E69E6158];
  *(v101 + 72) = @"DefaultValue";
  *(v101 + 80) = 7368532;
  *(v101 + 88) = 0xE300000000000000;
  *(v101 + 104) = v102;
  *(v101 + 112) = @"Items";
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_1CA981360;
  v103 = @"DefaultValue";
  v104 = @"Items";
  v162 = sub_1CA94C438();
  *&v161 = v105;
  v106 = sub_1CA94C438();
  v160 = v107;
  v165 = &v155;
  MEMORY[0x1EEE9AC00](v106);
  v108 = v178;
  sub_1CA948D98();
  v109 = [v175 bundleURL];
  v159 = &v155;
  MEMORY[0x1EEE9AC00](v109);
  v110 = v177;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v162, v161, v106, v160, 0, 0, &v155 - v108, &v155 - v110);
  *(v166 + 32) = v112;
  v162 = sub_1CA94C438();
  *&v161 = v113;
  v160 = sub_1CA94C438();
  v115 = v114;
  v165 = &v155;
  MEMORY[0x1EEE9AC00](v160);
  sub_1CA948D98();
  v116 = v175;
  v117 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v162, v161, v160, v115, 0, 0, &v155 - v108, &v155 - v110);
  v120 = v166;
  *(v166 + 40) = v119;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v101 + 120) = v120;
  v122 = v169;
  *(v101 + 144) = v121;
  *(v101 + 152) = v122;
  *(v101 + 160) = 0xD000000000000010;
  *(v101 + 168) = 0x80000001CA9A01C0;
  v123 = v170;
  *(v101 + 184) = MEMORY[0x1E69E6158];
  *(v101 + 192) = v123;
  v169 = sub_1CA94C438();
  v125 = v124;
  v126 = sub_1CA94C438();
  v128 = v127;
  v170 = &v155;
  MEMORY[0x1EEE9AC00](v126);
  v129 = &v155 - v178;
  sub_1CA948D98();
  v130 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v155 - v177;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v169, v125, v126, v128, 0, 0, v129, v131);
  *(v101 + 224) = v176;
  *(v101 + 200) = v133;
  sub_1CA94C1E8();
  v134 = sub_1CA2F864C();
  v135 = v172;
  v172[6] = v134;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v137 = v173;
  v173[30] = v135;
  v137[33] = v136;
  v137[34] = @"ParameterSummary";
  v138 = @"ParameterSummary";
  v139 = sub_1CA94C438();
  v141 = v140;
  v142 = sub_1CA94C438();
  v144 = v143;
  MEMORY[0x1EEE9AC00](v142);
  v145 = &v155 - v178;
  sub_1CA948D98();
  v146 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v155 - v177;
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v149 = sub_1CA2F9F14(v139, v141, v142, v144, 0, 0, v145, v147);
  v150 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v151 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v152 = v173;
  v173[35] = v150;
  v152[38] = v151;
  v152[39] = @"RequiredResources";
  v152[43] = v163;
  v152[40] = &unk_1F49F2FA8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v153 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2ECA1C()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v6 = MEMORY[0x1E69E6370];
  *(inited + 104) = v5;
  *(inited + 112) = @"Discoverable";
  *(inited + 144) = v6;
  *(inited + 120) = 0;
  v7 = @"Discoverable";
  v8 = sub_1CA94C368();
  *(inited + 184) = v1;
  *(inited + 152) = v8;
  *(inited + 160) = 0xD00000000000005DLL;
  *(inited + 168) = 0x80000001CA9A02A0;
  v9 = sub_1CA94C368();
  *(inited + 224) = v1;
  *(inited + 192) = v9;
  *(inited + 200) = 0xD000000000000013;
  *(inited + 208) = 0x80000001CA9A0300;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

unint64_t sub_1CA2ECC0C()
{
  result = qword_1EC4419A0;
  if (!qword_1EC4419A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4419A0);
  }

  return result;
}

unint64_t sub_1CA2ECC50()
{
  result = qword_1EDB9FB10;
  if (!qword_1EDB9FB10)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9FB10);
  }

  return result;
}

uint64_t sub_1CA2ECD28@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  result = a2();
  if (v9)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  OUTLINED_FUNCTION_25_4();
  if (v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    sub_1CA2F10F8(v11, a1, a4);
    v13 = 0;
  }

  v14 = a3(0);

  return __swift_storeEnumTagSinglePayload(a4, v13, 1, v14);
}

uint64_t sub_1CA2ECDF0(uint64_t a1)
{
  sub_1CA69B1F8(a1);
  v2 = sub_1CA2F13A4(a1, MEMORY[0x1E69E6DE0]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_3_3();
  v10 = sub_1CA2F1510(v5, v6, v7, v2, v4, v8, v9);
  v11 = OUTLINED_FUNCTION_70();
  sub_1CA2974B8(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_2_10();
  if (v10)
  {
    sub_1CA2974B8(v14, v15, v16);
    return 0;
  }

  else
  {
    sub_1CA4FD0C8(v14, v15, v16, a1);
    v17 = v18;
    v19 = OUTLINED_FUNCTION_2_10();
    sub_1CA2974B8(v19, v20, v21);
  }

  return v17;
}

uint64_t sub_1CA2ECF24(uint64_t a1)
{
  result = sub_1CA4FCA34(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_25_4();
  if (v6 == v8)
  {
    return 0;
  }

  else
  {
    return sub_1CA4FD234(v6, v7, 0, a1);
  }
}

uint64_t sub_1CA2ECF9C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
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

uint64_t sub_1CA2ED098(uint64_t a1, void (*a2)(void), unint64_t *a3, uint64_t *a4)
{
  a2();
  v7 = sub_1CA2F13A4(a1, MEMORY[0x1E69E69B0]);
  v9 = v8;
  v10 = OUTLINED_FUNCTION_3_3();
  v15 = sub_1CA2F1510(v10, v11, v12, v7, v9, v13, v14);
  v16 = OUTLINED_FUNCTION_162();
  sub_1CA2974B8(v16, v17, v18);
  v19 = OUTLINED_FUNCTION_2_10();
  if (v15)
  {
    sub_1CA2974B8(v19, v20, v21);
    return 0;
  }

  else
  {
    sub_1CA2F11B0(v19, v20, v21, a1, a3, a4);
    v22 = v23;
    v24 = OUTLINED_FUNCTION_2_10();
    sub_1CA2974B8(v24, v25, v26);
  }

  return v22;
}

unint64_t sub_1CA2ED190(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_7_9();
      sub_1CA94D408();
      MEMORY[0x1CCAA1300](0xD00000000000003FLL, 0x80000001CA9A0460);
      sub_1CA94ADC8();
      sub_1CA2F104C();
      goto LABEL_12;
    case 2:
      OUTLINED_FUNCTION_7_9();
      sub_1CA94D408();

      OUTLINED_FUNCTION_22_4();
      v7 = v6 | 6;
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_7_9();
      sub_1CA94D408();

      OUTLINED_FUNCTION_22_4();
LABEL_10:
      v10 = v7;
      v8 = OUTLINED_FUNCTION_20_0();
      MEMORY[0x1CCAA1300](v8);
      return v10;
    case 4:
      v4 = 0xD00000000000004CLL;
      if (!(a1 ^ 1 | a2))
      {
        v4 = 0xD000000000000042;
      }

      if (a1 | a2)
      {
        return v4;
      }

      else
      {
        return 0xD000000000000032;
      }

    default:
      OUTLINED_FUNCTION_7_9();
      sub_1CA94D408();
      MEMORY[0x1CCAA1300](0xD00000000000001DLL, 0x80000001CA9A04A0);
      sub_1CA94ADC8();
      sub_1CA2F104C();
      v3 = sub_1CA94C908();
      MEMORY[0x1CCAA1300](v3);

      MEMORY[0x1CCAA1300](0xD00000000000001ELL, 0x80000001CA9A04C0);
LABEL_12:
      v9 = sub_1CA94C908();
      MEMORY[0x1CCAA1300](v9);

      return v10;
  }
}

unint64_t sub_1CA2ED3C8(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1CA2ED190(a1, a2, a3);
  if (!v4)
  {
    v5 = OUTLINED_FUNCTION_134();
    return sub_1CA2ED3C8(v5);
  }

  return result;
}

uint64_t sub_1CA2ED428(uint64_t a1, uint64_t a2, char a3)
{
  result = 200;
  switch(a3)
  {
    case 1:
      result = 300;
      break;
    case 2:
      result = 500;
      break;
    case 3:
      result = 600;
      break;
    case 4:
      result = 300 * a1 + 100;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA2ED47C(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v6;
  v7 = OUTLINED_FUNCTION_134();
  v9 = sub_1CA2ED3C8(v7, v8, a3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  return sub_1CA94C1E8();
}

uint64_t WFContentCollection.TypedValueResolutionContext.init(expectedType:displayRepresentationConfig:containerProvider:typeProvider:temporaryFileDirectoryURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1CA94AD08();
  OUTLINED_FUNCTION_52(v12);
  (*(v13 + 32))(a6, a1);
  v14 = type metadata accessor for WFContentCollection.TypedValueResolutionContext();
  v15 = v14[5];
  v16 = sub_1CA94B728();
  OUTLINED_FUNCTION_52(v16);
  (*(v17 + 32))(a6 + v15, a2);
  sub_1CA27F268(a3, a6 + v14[6]);
  sub_1CA27F268(a4, a6 + v14[7]);
  v18 = a6 + v14[8];

  return sub_1CA2ED774(a5, v18);
}

uint64_t type metadata accessor for WFContentCollection.TypedValueResolutionContext()
{
  result = qword_1EC441968;
  if (!qword_1EC441968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA2ED774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2ED7E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1CA94AC88();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  v3[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = sub_1CA949F78();
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v13 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v3[21] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v15 = sub_1CA94ADC8();
  v3[23] = v15;
  v16 = *(v15 - 8);
  v3[24] = v16;
  v17 = *(v16 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2EDA58, 0, 0);
}

void sub_1CA2EDA58()
{
  v173 = v0;
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[22];
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  v4 = v2[5];
  v5 = *MEMORY[0x1E69DB488];
  v6 = sub_1CA94B668();
  OUTLINED_FUNCTION_52(v6);
  (*(v7 + 104))(v3 + v4, v5);
  v8 = v3 + v2[6];
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  *(v3 + v2[7]) = [objc_opt_self() defaultContext];
  static WFContentItem.toolkitTypeIdentifier(context:)(v3, v1);
  sub_1CA2F146C(v3, type metadata accessor for WFContentItem.ToolKitTypeResolutionContext);
  v9 = v0[20];
  v10 = v0[4];
  v11 = sub_1CA948D28();
  v0[27] = v11;
  OUTLINED_FUNCTION_1_0(v11);
  v13 = v12;
  v0[28] = v12;
  v0[29] = *(v14 + 64);
  v15 = swift_task_alloc();
  v0[30] = v15;
  sub_1CA948D18();
  v0[31] = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v16 = swift_task_alloc();
  v17 = *(v13 + 16);
  v0[32] = v17;
  v0[33] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v16, v15, v11);
  v18 = v10;
  v19 = sub_1CA949F68();
  v20 = sub_1CA94CC38();

  if (os_log_type_enabled(v19, v20))
  {
    v159 = v20;
    log = v19;
    v21 = v0[4];
    v22 = OUTLINED_FUNCTION_30_2();
    v171 = OUTLINED_FUNCTION_29_4();
    *v22 = 136315394;
    sub_1CA2F14C4();
    sub_1CA94D798();
    v167 = (v13 + 8);
    (*(v13 + 8))(v16, v11);
    v23 = OUTLINED_FUNCTION_3_3();
    v26 = sub_1CA26B54C(v23, v24, v25);

    *(v22 + 4) = v26;
    buf = v22;
    *(v22 + 12) = 2080;
    v27 = [v21 items];
    v28 = sub_1CA94C658();

    v29 = sub_1CA25B410(v28);
    if (v29)
    {
      v30 = v29;
      v172[0] = MEMORY[0x1E69E7CC0];
      sub_1CA271524();
      if (v30 < 0)
      {
LABEL_30:
        __break(1u);
        return;
      }

      v31 = 0;
      v32 = v172[0];
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1CCAA22D0](v31, v28);
        }

        else
        {
          v33 = *(v28 + 8 * v31 + 32);
        }

        v34 = v33;
        v35 = [v34 debugDescription];
        v36 = sub_1CA94C3A8();
        v38 = v37;

        v172[0] = v32;
        v39 = *(v32 + 16);
        if (v39 >= *(v32 + 24) >> 1)
        {
          sub_1CA271524();
          v32 = v172[0];
        }

        ++v31;
        *(v32 + 16) = v39 + 1;
        v40 = v32 + 16 * v39;
        *(v40 + 32) = v36;
        *(v40 + 40) = v38;
      }

      while (v30 != v31);
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    v50 = v0[20];
    v52 = v0[15];
    v51 = v0[16];
    v53 = MEMORY[0x1CCAA14D0](v32, MEMORY[0x1E69E6158]);
    v55 = v54;

    v56 = sub_1CA26B54C(v53, v55, &v171);

    *(buf + 14) = v56;
    _os_log_impl(&dword_1CA256000, log, v159, "[%s] Resolving content collection: %s", buf, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    v57 = *(v51 + 8);
    v46 = v51 + 8;
    v57(v50, v52);
    v44 = v167;
  }

  else
  {
    v41 = v0[20];
    v42 = v0[15];
    v43 = v0[16];

    v45 = *(v13 + 8);
    v44 = (v13 + 8);
    v45(v16, v11);
    v47 = *(v43 + 8);
    v46 = v43 + 8;
    v48 = OUTLINED_FUNCTION_3_3();
    v49(v48);
  }

  v0[34] = v46;
  v0[35] = v44;
  v59 = v0[13];
  v58 = v0[14];
  v60 = v0[12];
  v61 = v0[3];
  v168 = v0[4];

  v62 = sub_1CA94AD08();
  OUTLINED_FUNCTION_52(v62);
  v64 = *(v63 + 16);
  v64(v60, v61, v62);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v62);
  sub_1CA94B658();
  sub_1CA27080C(v60, &unk_1EC445A40, &unk_1CA983150);
  v65 = type metadata accessor for WFContentCollection.TypedValueResolutionContext();
  v66 = v65[5];
  v67 = v59[5];
  v68 = sub_1CA94B728();
  OUTLINED_FUNCTION_52(v68);
  (*(v69 + 16))(v58 + v67, v61 + v66);
  v70 = v59[6];
  v64(v58 + v70, v61, v62);
  __swift_storeEnumTagSinglePayload(v58 + v70, 0, 1, v62);
  sub_1CA2C9578(v61 + v65[6], v58 + v59[7]);
  sub_1CA2C9578(v61 + v65[7], v58 + v59[8]);
  sub_1CA2F13FC(v61 + v65[8], v58 + v59[9]);
  v71 = [v168 items];
  v72 = sub_1CA94C658();
  v0[36] = v72;

  v73 = sub_1CA25B410(v72);
  v74 = MEMORY[0x1E69E7CC0];
  v0[38] = MEMORY[0x1E69E7CC0];
  v0[39] = v74;
  v0[37] = v73;
  v75 = v0[36];
  if (!v73)
  {
    v80 = v0[32];
    v79 = v0[33];
    v82 = v0[30];
    v81 = v0[31];
    v83 = v0[29];
    v84 = v0[27];
    v85 = v0[17];
    v86 = v0[36];

    sub_1CA949C58();
    v87 = swift_task_alloc();
    v80(v87, v82, v84);
    v88 = sub_1CA949F68();
    v89 = sub_1CA94CC38();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v0[35];
    loga = v0[34];
    v165 = v0[30];
    v93 = v0[27];
    v92 = v0[28];
    v94 = v0[26];
    v95 = v0[24];
    v169 = v0[23];
    v153 = v0[16];
    v96 = v0[15];
    v154 = v96;
    bufa = v0[17];
    v160 = v0[14];
    if (v90)
    {
      v146 = v0[5];
      v97 = OUTLINED_FUNCTION_30_2();
      v172[0] = OUTLINED_FUNCTION_29_4();
      *v97 = 136315394;
      sub_1CA2F14C4();
      HIDWORD(v147) = v89;
      v149 = v93;
      v98 = sub_1CA94D798();
      v99 = v87;
      v101 = v100;
      v102 = *(v92 + 8);
      v102(v99, v93);
      v103 = v102;
      v104 = sub_1CA26B54C(v98, v101, v172);

      *(v97 + 4) = v104;
      *(v97 + 12) = 2080;
      v105 = sub_1CA94C218();
      v106 = MEMORY[0x1CCAA14D0](v105, v146);
      v108 = v107;

      v109 = sub_1CA26B54C(v106, v108, v172);

      *(v97 + 14) = v109;
      _os_log_impl(&dword_1CA256000, v88, BYTE4(v147), "[%s] Resolved content collection into: %s", v97, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      v118 = OUTLINED_FUNCTION_19_3(v110, v111, v112, v113, v114, v115, v116, v117, v146, v147, v149, v94, v153, v154, bufa);
      v119(v118);
      OUTLINED_FUNCTION_0_11();
      sub_1CA2F146C(v160, v120);
      v103(v165, v150);
      (*(v95 + 8))(v152, v169);
    }

    else
    {

      v121 = *(v92 + 8);
      v122 = v121(v87, v93);
      v130 = OUTLINED_FUNCTION_19_3(v122, v123, v124, v125, v126, v127, v128, v129, v145, v147, v148, v151, v153, v154, bufa);
      v131(v130);
      OUTLINED_FUNCTION_0_11();
      sub_1CA2F146C(v160, v132);
      v121(v165, v93);
      (*(v95 + 8))(v94, v169);
    }

    v133 = v0[30];
    v135 = v0[25];
    v134 = v0[26];
    v136 = v0[22];
    v138 = v0[19];
    v137 = v0[20];
    v140 = v0[17];
    v139 = v0[18];
    v141 = v0[14];
    v155 = v0[12];
    bufb = v0[11];
    v161 = v0[10];
    logb = v0[9];
    v166 = v0[8];
    v170 = v0[7];

    v142 = v0[1];
    OUTLINED_FUNCTION_27_0();

    __asm { BRAA            X2, X16 }
  }

  if ((v75 & 0xC000000000000001) != 0)
  {
    v76 = MEMORY[0x1CCAA22D0](0);
    goto LABEL_19;
  }

  if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v76 = *(v75 + 32);
LABEL_19:
  v0[40] = v76;
  v0[41] = 1;
  v77 = swift_task_alloc();
  v0[42] = v77;
  *v77 = v0;
  OUTLINED_FUNCTION_4_7(v77);
  OUTLINED_FUNCTION_27_0();

  WFContentItem.resolve(with:)();
}

uint64_t sub_1CA2EE55C()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v2 + 344) = v0;

  if (v0)
  {
    v8 = *(v2 + 288);

    v9 = sub_1CA2EF164;
  }

  else
  {
    v9 = sub_1CA2EE66C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

id sub_1CA2EE66C()
{
  v210 = v3;
  v195 = *(v3 + 320);
  OUTLINED_FUNCTION_14_6();
  v4 = *(v3 + 152);
  v5 = *(v3 + 80);
  v203 = *(v3 + 88);
  v7 = *(v3 + 40);
  v6 = *(v3 + 48);
  sub_1CA949C58();
  v206 = swift_task_alloc();
  v0(v206, v1, v2);
  v8 = *(v6 + 16);
  v8(v5, v203, v7);
  v9 = v195;
  v10 = sub_1CA949F68();
  v11 = sub_1CA94CC38();

  v199 = v8;
  if (os_log_type_enabled(v10, v11))
  {
    v162 = *(v3 + 280);
    v163 = *(v3 + 320);
    v13 = *(v3 + 216);
    v12 = *(v3 + 224);
    v185 = *(v3 + 152);
    v190 = *(v3 + 272);
    v177 = *(v3 + 128);
    v181 = *(v3 + 120);
    v165 = *(v3 + 72);
    v166 = *(v3 + 80);
    loga = v10;
    v14 = *(v3 + 40);
    v15 = *(v3 + 48);
    v16 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v209 = v172;
    *v16 = 136315650;
    sub_1CA2F14C4();
    LODWORD(v169) = v11;
    v17 = sub_1CA94D798();
    v19 = v18;
    v196 = *(v12 + 8);
    v196(v206, v13);
    sub_1CA26B54C(v17, v19, &v209);
    OUTLINED_FUNCTION_28_3();
    *(v16 + 4) = v206;
    *(v16 + 12) = 2080;
    v20 = [v163 debugDescription];
    v21 = sub_1CA94C3A8();
    v23 = v22;

    v24 = sub_1CA26B54C(v21, v23, &v209);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    v25 = OUTLINED_FUNCTION_3_3();
    (v8)(v25);
    v26 = sub_1CA94C408();
    v28 = v27;
    v29 = *(v15 + 8);
    v29(v166, v14);
    v30 = OUTLINED_FUNCTION_23_4();
    sub_1CA26B54C(v30, v28, v31);
    OUTLINED_FUNCTION_28_3();
    *(v16 + 24) = v26;
    _os_log_impl(&dword_1CA256000, loga, v169, "[%s] Resolved %s into %s", v16, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    v32 = *(v177 + 8);
    v32(v185, v181);
  }

  else
  {
    v33 = *(v3 + 280);
    v34 = *(v3 + 216);
    v35 = *(v3 + 224);
    v186 = *(v3 + 152);
    v191 = *(v3 + 272);
    v37 = *(v3 + 120);
    v36 = *(v3 + 128);
    v38 = *(v3 + 80);
    v39 = *(v3 + 40);
    v40 = *(v3 + 48);

    v41 = *(v40 + 8);
    v42 = OUTLINED_FUNCTION_162();
    v41(v42);
    v29 = v41;
    v196 = *(v35 + 8);
    v196(v206, v34);
    v32 = *(v36 + 8);
    v32(v186, v37);
  }

  v43 = *(v3 + 192);
  v44 = *(v3 + 200);
  v45 = *(v3 + 184);
  v46 = *(v3 + 88);
  v47 = *(v3 + 16);

  sub_1CA94AC28();
  OUTLINED_FUNCTION_21_6();
  sub_1CA2B5928();
  v49 = v48;
  v51 = *(v43 + 8);
  v50 = (v43 + 8);
  v51(v44, v45);
  v52 = &unk_1CA982000;
  if (v49 & 1) != 0 || (v53 = *(v3 + 208), v54 = *(v3 + 16), sub_1CA2B5928(), (v55))
  {
    v56 = *(v3 + 304);
    v199(*(v3 + 64), *(v3 + 88), *(v3 + 40));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v3 + 304);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v157 = *(v58 + 16);
      v158 = *(v3 + 304);
      sub_1CA2E4D50();
      v58 = v159;
    }

    v59 = *(v58 + 16);
    if (v59 >= *(v58 + 24) >> 1)
    {
      sub_1CA2E4D50();
      v58 = v160;
    }

    v60 = *(v3 + 88);
    v61 = *(v3 + 64);
    v62 = *(v3 + 40);
    v63 = *(v3 + 48);

    v64 = OUTLINED_FUNCTION_21_6();
    (v29)(v64);
    *(v58 + 16) = v59 + 1;
    result = (*(v63 + 32))(v58 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v59, v61, v62);
    v66 = v58;
  }

  else
  {
    v187 = v32;
    v192 = v29;
    OUTLINED_FUNCTION_14_6();
    v67 = *(v3 + 144);
    v68 = *(v3 + 88);
    v69 = *(v3 + 56);
    v70 = *(v3 + 40);
    sub_1CA949C58();
    v207 = swift_task_alloc();
    v50(v207, v49, v44);
    v71 = OUTLINED_FUNCTION_9_5();
    (v199)(v71);
    v72 = sub_1CA949F68();
    v182 = sub_1CA94CC38();
    v73 = os_log_type_enabled(v72, v182);
    v74 = *(v3 + 320);
    v75 = *(v3 + 280);
    v76 = *(v3 + 216);
    v204 = *(v3 + 144);
    v200 = *(v3 + 120);
    v77 = *(v3 + 88);
    v78 = *(v3 + 56);
    v79 = *(v3 + 40);
    if (v73)
    {
      v166 = *(v3 + 48) + 8;
      v178 = *(v3 + 272);
      v80 = OUTLINED_FUNCTION_30_2();
      v169 = OUTLINED_FUNCTION_29_4();
      v209 = v169;
      v165 = v79;
      v52 = &unk_1CA982000;
      *v80 = 136315394;
      sub_1CA2F14C4();
      v172 = v74;
      sub_1CA94D798();
      logb = v77;
      v82 = v81;
      v196(v207, v76);
      v83 = OUTLINED_FUNCTION_23_4();
      v85 = sub_1CA26B54C(v83, v82, v84);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      sub_1CA94AC38();
      v87 = v86;
      v192(v78, v165);
      v88 = OUTLINED_FUNCTION_23_4();
      v90 = sub_1CA26B54C(v88, v87, v89);

      *(v80 + 14) = v90;
      _os_log_impl(&dword_1CA256000, v72, v182, "[%s] Dropping %s as it doesn't match any of the expected types", v80, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      v187(v204, v200);
      v192(logb, v165);
    }

    else
    {

      v192(v78, v79);
      v196(v207, v76);
      v187(v204, v200);
      v192(v77, v79);
      v52 = &unk_1CA982000;
    }

    v58 = *(v3 + 304);
    v66 = *(v3 + 312);
  }

  v91 = *(v3 + 328);
  *(v3 + 304) = v58;
  *(v3 + 312) = v66;
  v92 = *(v3 + 288);
  if (v91 == *(v3 + 296))
  {
    v205 = v66;
    v94 = *(v3 + 256);
    v93 = *(v3 + 264);
    v96 = *(v3 + 240);
    v95 = *(v3 + 248);
    v97 = *(v3 + 232);
    v98 = *(v3 + 216);
    v99 = *(v3 + 136);

    sub_1CA949C58();
    v208 = swift_task_alloc();
    v94(v208, v96, v98);
    v100 = sub_1CA949F68();
    v101 = sub_1CA94CC38();
    v102 = os_log_type_enabled(v100, v101);
    v103 = *(v3 + 280);
    v201 = *(v3 + 240);
    v105 = *(v3 + 216);
    v104 = *(v3 + 224);
    v106 = *(v3 + 208);
    v107 = *(v3 + 184);
    v179 = *(v3 + 128);
    v183 = *(v3 + 136);
    v193 = *(v3 + 272);
    v197 = (*(v3 + 192) + 8);
    log = *(v3 + 120);
    v188 = *(v3 + 112);
    if (v102)
    {
      v164 = *(v3 + 40);
      LODWORD(v165) = v101;
      v108 = v52;
      v109 = OUTLINED_FUNCTION_30_2();
      v209 = OUTLINED_FUNCTION_29_4();
      *v109 = v108[73];
      sub_1CA2F14C4();
      v110 = sub_1CA94D798();
      v170 = v107;
      v112 = v111;
      v167 = *(v104 + 8);
      v167(v208, v105);
      sub_1CA26B54C(v110, v112, &v209);
      OUTLINED_FUNCTION_28_3();
      *(v109 + 4) = v208;
      *(v109 + 12) = 2080;
      v113 = sub_1CA94C218();
      v114 = MEMORY[0x1CCAA14D0](v113, v164);
      v116 = v115;

      v117 = OUTLINED_FUNCTION_23_4();
      sub_1CA26B54C(v117, v116, v118);
      OUTLINED_FUNCTION_28_3();
      *(v109 + 14) = v114;
      _os_log_impl(&dword_1CA256000, v100, v165, "[%s] Resolved content collection into: %s", v109, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      v127 = OUTLINED_FUNCTION_20_4(v119, v120, v121, v122, v123, v124, v125, v126, v161, v162, v164, v165, v167, v170, v106, log, v179, v183);
      v128(v127);
      OUTLINED_FUNCTION_0_11();
      sub_1CA2F146C(v188, v129);
      v168(v201, v105);
      (*v197)(v173, v171);
    }

    else
    {

      v131 = *(v104 + 8);
      v132 = v131(v208, v105);
      v140 = OUTLINED_FUNCTION_20_4(v132, v133, v134, v135, v136, v137, v138, v139, v161, v162, v163, v165, v166, v169, v172, log, v179, v183);
      v141(v140);
      OUTLINED_FUNCTION_0_11();
      sub_1CA2F146C(v188, v142);
      v131(v201, v105);
      v143 = *v197;
      v144 = OUTLINED_FUNCTION_70();
      v146(v144, v145);
    }

    v147 = *(v3 + 240);
    v149 = *(v3 + 200);
    v148 = *(v3 + 208);
    v150 = *(v3 + 176);
    v151 = *(v3 + 152);
    v152 = *(v3 + 160);
    v154 = *(v3 + 136);
    v153 = *(v3 + 144);
    v155 = *(v3 + 112);
    v180 = *(v3 + 96);
    v184 = *(v3 + 88);
    v189 = *(v3 + 80);
    v194 = *(v3 + 72);
    v198 = *(v3 + 64);
    v202 = *(v3 + 56);

    v156 = *(v3 + 8);

    return v156(v205);
  }

  if ((v92 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1CCAA22D0](v91);
  }

  else
  {
    if (v91 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:
      __break(1u);
      return result;
    }

    result = *(v92 + 8 * v91 + 32);
  }

  *(v3 + 320) = result;
  *(v3 + 328) = v91 + 1;
  if (__OFADD__(v91, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v130 = swift_task_alloc();
  *(v3 + 336) = v130;
  *v130 = v3;
  OUTLINED_FUNCTION_4_7();

  return WFContentItem.resolve(with:)();
}

uint64_t sub_1CA2EF164()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 112);

  OUTLINED_FUNCTION_0_11();
  sub_1CA2F146C(v9, v10);
  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_20_0();
  v13(v12);
  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_70();
  v16(v15);

  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  v19 = *(v0 + 176);
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 112);
  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  v29 = *(v0 + 80);
  v30 = *(v0 + 72);
  v31 = *(v0 + 64);
  v32 = *(v0 + 56);
  v33 = *(v0 + 344);

  OUTLINED_FUNCTION_5();

  return v27();
}

uint64_t WFContentCollection.resolve(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0) - 8) + 64);
  v1[15] = OUTLINED_FUNCTION_13_5();
  v1[16] = swift_task_alloc();
  v5 = sub_1CA94AC88();
  v1[17] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[18] = v6;
  v8 = *(v7 + 64);
  v1[19] = OUTLINED_FUNCTION_13_5();
  v1[20] = swift_task_alloc();
  v9 = sub_1CA94ADC8();
  v1[21] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[22] = v10;
  v12 = *(v11 + 64) + 15;
  v1[23] = swift_task_alloc();
  v13 = sub_1CA94AD08();
  v1[24] = v13;
  OUTLINED_FUNCTION_12(v13);
  v1[25] = v14;
  v16 = *(v15 + 64);
  v1[26] = OUTLINED_FUNCTION_13_5();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v17 = sub_1CA949EE8();
  v1[29] = v17;
  OUTLINED_FUNCTION_12(v17);
  v1[30] = v18;
  v20 = *(v19 + 64);
  v1[31] = OUTLINED_FUNCTION_13_5();
  v1[32] = swift_task_alloc();
  v21 = sub_1CA949F08();
  v1[33] = v21;
  OUTLINED_FUNCTION_12(v21);
  v1[34] = v22;
  v24 = *(v23 + 64);
  v1[35] = OUTLINED_FUNCTION_13_5();
  v1[36] = swift_task_alloc();
  v25 = sub_1CA949B18();
  v1[37] = v25;
  OUTLINED_FUNCTION_12(v25);
  v1[38] = v26;
  v28 = *(v27 + 64) + 15;
  v1[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2EF594, 0, 0);
}

uint64_t sub_1CA2EF594()
{
  v39 = v0;
  v1 = v0[36];
  v2 = v0[32];
  v3 = *MEMORY[0x1E69E10F8];
  v4 = swift_allocObject();
  *(v4 + 16) = 32;
  v5 = swift_allocObject();
  *(v5 + 16) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4441A0, &off_1CA9827D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  *(inited + 32) = sub_1CA2F0CCC;
  *(inited + 40) = v4;
  *(inited + 48) = sub_1CA2F1550;
  *(inited + 56) = v5;
  *(inited + 64) = sub_1CA2F0C74;
  *(inited + 72) = 0;
  sub_1CA949AD8();
  sub_1CA949EF8();
  sub_1CA949EC8();
  v7 = sub_1CA949EF8();
  v8 = sub_1CA94CE18();
  if (sub_1CA94D078())
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = 0;
    v37 = 0;
    v38 = v10;
    *v9 = 258;
    v36 = v9 + 2;
    while (v11 != 48)
    {
      v13 = *(inited + v11 + 32);
      v12 = *(inited + v11 + 40);

      v13(&v36, &v37, &v38);

      v11 += 16;
    }

    v14 = v0[32];

    v15 = sub_1CA949ED8();
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v7, v8, v15, "resolveContentCollection", "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {
  }

  v16 = v0[39];
  v18 = v0[35];
  v17 = v0[36];
  v19 = v0[33];
  v20 = v0[34];
  v21 = v0[32];
  v23 = v0[29];
  v22 = v0[30];
  v35 = v0[13];
  (*(v22 + 16))(v0[31], v21, v23);
  v24 = sub_1CA949F48();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_1CA949F38();
  (*(v20 + 16))(v18, v17, v19);
  sub_1CA949B28();
  (*(v22 + 8))(v21, v23);
  v27 = *(v20 + 8);
  v28 = OUTLINED_FUNCTION_20_0();
  v29(v28);
  v30 = sub_1CA94ACE8();
  v0[40] = v30;
  v31 = swift_task_alloc();
  v0[41] = v31;
  *v31 = v0;
  v31[1] = sub_1CA2EF8F8;
  v32 = v0[13];
  v33 = v0[14];

  return sub_1CA2ED7E4(v30, v32);
}

uint64_t sub_1CA2EF8F8()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 328);
  *v3 = *v1;
  v2[42] = v6;
  v2[43] = v0;

  if (v0)
  {
    v7 = sub_1CA2F02C8;
  }

  else
  {
    v8 = v2[40];

    v7 = sub_1CA2EFA0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA2EFA0C()
{
  v1 = v0[13];
  v125 = v0[42];
  v128 = sub_1CA94ACE8();
  v2 = *(v125 + 16);
  if (v2)
  {
    v3 = v0[42];
    v4 = v0[22];
    v5 = v0[18];
    v141 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8CEC();
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v131 = *(v5 + 56);
    v135 = v6;
    v8 = (v5 - 8);
    v9 = v0;
    do
    {
      v10 = v9;
      v11 = v9[23];
      v12 = v10[20];
      v13 = v10[17];
      v14 = OUTLINED_FUNCTION_9_5();
      v135(v14);
      sub_1CA94AC28();
      v15 = *v8;
      v16 = OUTLINED_FUNCTION_162();
      v17(v16);
      v18 = *(v141 + 16);
      if (v18 >= *(v141 + 24) >> 1)
      {
        sub_1CA2B8CEC();
      }

      v19 = v10[23];
      v20 = v10[21];
      *(v141 + 16) = v18 + 1;
      (*(v4 + 32))(v141 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v19, v20);
      v7 += v131;
      --v2;
      v9 = v10;
    }

    while (v2);
  }

  else
  {
    v9 = v0;
  }

  v21 = v9[28];
  v23 = v9[24];
  v22 = v9[25];
  v24 = v9[13];
  sub_1CA2E2EEC();
  v25 = v9;
  v27 = v26;
  v28 = *(v22 + 16);
  v28(v21, v24, v23);
  v29 = *(v22 + 88);
  v30 = OUTLINED_FUNCTION_21_6();
  v32 = v31(v30);
  if (v32 == *MEMORY[0x1E69DAF30])
  {
    goto LABEL_9;
  }

  if (v32 == *MEMORY[0x1E69DAF18])
  {
    v52 = v25[27];
    v51 = v25[28];
    v53 = v25[24];
    (*(v25[25] + 96))(v51, v53);
    v54 = *v51;
    v55 = swift_projectBox();
    v28(v52, v55, v53);
    if (!*(v125 + 16))
    {
      v110 = [v25[14] items];
      sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
      v111 = sub_1CA94C658();

      v112 = sub_1CA25B410(v111);

      if (v112)
      {
        v113 = v25[42];
        v114 = v25[27];
        v116 = v25[24];
        v115 = v25[25];

        sub_1CA2F0CD4();
        swift_allocError();
        *v117 = v128;
        *(v117 + 8) = v27;
        *(v117 + 16) = 0;
        swift_willThrow();
        v118 = *(v115 + 8);
        v119 = OUTLINED_FUNCTION_162();
        v120(v119);

        goto LABEL_12;
      }
    }

    v57 = v25[26];
    v56 = v25[27];
    v59 = v25[24];
    v58 = v25[25];
    v60 = v25[18];
    v139 = v25[17];
    v133 = v25[42];
    v137 = v25[12];

    sub_1CA94A888();
    v61 = swift_allocBox();
    v62 = OUTLINED_FUNCTION_9_5();
    (v28)(v62);
    sub_1CA94A848();
    (*(v58 + 8))(v56, v59);
    *v137 = v61;
    v63 = *MEMORY[0x1E69DAE18];
    (*(v60 + 104))();

LABEL_17:
    v71 = v25;
LABEL_18:
    v73 = v71[38];
    v72 = v71[39];
    v75 = v71[36];
    v74 = v71[37];
    v76 = v71[35];
    v78 = v71[31];
    v77 = v71[32];
    v80 = v71[27];
    v79 = v71[28];
    v124 = v71[26];
    v127 = v71[23];
    v130 = v71[20];
    v134 = v71[19];
    v138 = v71[16];
    v140 = v71[15];
    sub_1CA2F0408();
    v81 = *(v73 + 8);
    v82 = OUTLINED_FUNCTION_20_0();
    v83(v82);

    OUTLINED_FUNCTION_5();
    goto LABEL_19;
  }

  if (v32 == *MEMORY[0x1E69DAF48])
  {
    v85 = v25[42];
    v86 = v25[28];
    v88 = v25[24];
    v87 = v25[25];
    v89 = v25[17];
    v90 = v25[15];

    v91 = *(v87 + 8);
    v92 = OUTLINED_FUNCTION_70();
    v93(v92);
    OUTLINED_FUNCTION_6_10();
    sub_1CA2ECF9C(v85, v94, v90);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v90, 1, v89);
    v96 = v25[17];
    v97 = v25[18];
    v98 = v25[15];
    v99 = v25[12];
    if (EnumTagSinglePayload == 1)
    {
      v100 = sub_1CA94AC18();
      v101 = swift_allocBox();
      (*(*(v100 - 8) + 104))(v102, *MEMORY[0x1E69DADD8], v100);
      *v99 = v101;
      (*(v97 + 104))(v99, *MEMORY[0x1E69DAE70], v96);
      v71 = v25;
      if (__swift_getEnumTagSinglePayload(v98, 1, v96) != 1)
      {
        sub_1CA27080C(v25[15], &qword_1EC444C60, &qword_1CA9827D0);
      }
    }

    else
    {
      (*(v97 + 32))(v25[12], v25[15], v25[17]);
      v71 = v25;
    }

    goto LABEL_18;
  }

  v103 = v32 == *MEMORY[0x1E69DAF38] || v32 == *MEMORY[0x1E69DAF20];
  if (v103 || v32 == *MEMORY[0x1E69DAF28])
  {
LABEL_9:
    v33 = v25[42];
    v35 = v25[16];
    v34 = v25[17];
    (*(v25[25] + 8))(v25[28], v25[24]);
    OUTLINED_FUNCTION_6_10();
    sub_1CA2ECF9C(v33, v36, v35);

    if (__swift_getEnumTagSinglePayload(v35, 1, v34) == 1)
    {
      sub_1CA27080C(v25[16], &qword_1EC444C60, &qword_1CA9827D0);
      sub_1CA2F0CD4();
      swift_allocError();
      *v37 = v128;
      *(v37 + 8) = v27;
      *(v37 + 16) = 0;
LABEL_11:
      swift_willThrow();
LABEL_12:
      v39 = v25[38];
      v38 = v25[39];
      v41 = v25[36];
      v40 = v25[37];
      v42 = v25[35];
      v43 = v25[31];
      v44 = v25[32];
      v45 = v25[27];
      v46 = v25[28];
      v122 = v25[26];
      v123 = v25[23];
      v126 = v25[20];
      v129 = v25[19];
      v132 = v25[16];
      v136 = v25[15];
      sub_1CA2F0408();
      v47 = *(v39 + 8);
      v48 = OUTLINED_FUNCTION_20_0();
      v49(v48);

      v50 = v25[1];
LABEL_19:

      return v50();
    }

    v65 = v25[18];
    v64 = v25[19];
    v67 = v25[16];
    v66 = v25[17];
    v68 = v25[12];

    v69 = *(v65 + 32);
    v70 = OUTLINED_FUNCTION_21_6();
    v69(v70);
    (v69)(v68, v64, v66);
    goto LABEL_17;
  }

  if (v32 == *MEMORY[0x1E69DAF40])
  {
    v105 = v25[42];
    v106 = v25[28];
    v108 = v25[24];
    v107 = v25[25];

    (*(v107 + 8))(v106, v108);
    sub_1CA2F0CD4();
    swift_allocError();
    *v109 = 0xD000000000000031;
    *(v109 + 8) = 0x80000001CA9A0340;
    *(v109 + 16) = 2;
    goto LABEL_11;
  }

  v121 = v25[24];

  return sub_1CA94D7E8();
}

uint64_t sub_1CA2F02C8()
{
  v1 = v0[40];

  v19 = v0[43];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[27];
  v10 = v0[28];
  v13 = v0[26];
  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[15];
  sub_1CA2F0408();
  (*(v2 + 8))(v3, v4);

  OUTLINED_FUNCTION_5();

  return v11();
}

uint64_t sub_1CA2F0408()
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

uint64_t sub_1CA2F077C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2F0828;

  return WFContentCollection.resolve(with:)();
}

uint64_t sub_1CA2F0828()
{
  OUTLINED_FUNCTION_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA2F0910(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E69DB368] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  v8 = sub_1CA2F10A4(&unk_1EC4441C8);
  *v6 = v2;
  v6[1] = sub_1CA2F1548;

  return MEMORY[0x1EEE4B290](a1, a2, v7, v8);
}

uint64_t sub_1CA2F0A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CA94AA48();
  OUTLINED_FUNCTION_52(v4);
  v6 = *(v5 + 104);
  if ((a1 - 1) > 7)
  {
    v7 = MEMORY[0x1E69DACE0];
  }

  else
  {
    v7 = qword_1E8372AF0[a1 - 1];
  }

  v8 = *v7;

  return v6(a2, v8);
}

uint64_t sub_1CA2F0A90()
{
  v1 = sub_1CA94AA48();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  v8 = *(v4 + 88);
  v9 = OUTLINED_FUNCTION_3_3();
  v11 = v10(v9);
  v12 = 0;
  if (v11 != *MEMORY[0x1E69DACE0])
  {
    if (v11 == *MEMORY[0x1E69DACF0])
    {
      return 1;
    }

    else if (v11 == *MEMORY[0x1E69DACD8])
    {
      return 2;
    }

    else if (v11 == *MEMORY[0x1E69DACF8])
    {
      return 3;
    }

    else if (v11 == *MEMORY[0x1E69DACB8])
    {
      return 4;
    }

    else if (v11 == *MEMORY[0x1E69DACC8])
    {
      return 5;
    }

    else if (v11 == *MEMORY[0x1E69DACD0])
    {
      return 6;
    }

    else if (v11 == *MEMORY[0x1E69DACC0])
    {
      return 7;
    }

    else if (v11 == *MEMORY[0x1E69DACE8])
    {
      return 8;
    }

    else
    {
      v13 = *(v4 + 8);
      v14 = OUTLINED_FUNCTION_3_3();
      v15(v14);
      return 0;
    }
  }

  return v12;
}

uint64_t sub_1CA2F0C74(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  sub_1CA949AE8();
  v5 = sub_1CA94D438();
  v7 = sub_1CA26B54C(v5, v6, a3);

  v9 = *a1;
  *v9 = v7;
  *a1 = v9 + 1;
  return result;
}

unint64_t sub_1CA2F0CD4()
{
  result = qword_1EC4441A8;
  if (!qword_1EC4441A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4441A8);
  }

  return result;
}

void sub_1CA2F0D84()
{
  sub_1CA94AD08();
  if (v0 <= 0x3F)
  {
    sub_1CA94B728();
    if (v1 <= 0x3F)
    {
      sub_1CA2F0E70(319, &qword_1EC442210);
      if (v2 <= 0x3F)
      {
        sub_1CA2F0E70(319, &qword_1EC4424D8);
        if (v3 <= 0x3F)
        {
          sub_1CA2F0EC4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1CA2F0E70(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1CA2F0EC4()
{
  if (!qword_1EC4441B8)
  {
    sub_1CA948BA8();
    v0 = sub_1CA94D098();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4441B8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit44ContentCollectionToTypedValueResolutionErrorO(uint64_t a1)
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

uint64_t sub_1CA2F0F4C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1CA2F0F8C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CA2F0FD0(uint64_t result, unsigned int a2)
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

unint64_t sub_1CA2F0FF8()
{
  result = qword_1EC4441C0;
  if (!qword_1EC4441C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4441C0);
  }

  return result;
}

unint64_t sub_1CA2F104C()
{
  result = qword_1EC441D00;
  if (!qword_1EC441D00)
  {
    sub_1CA94ADC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441D00);
  }

  return result;
}

uint64_t sub_1CA2F10A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, &qword_1EC441960, 0x1E6996D40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CA2F10F8(unint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0 || (v5 = *(a2 + 32), OUTLINED_FUNCTION_25_4(), v10 <= v9))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v7 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v7 + 36) != v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v11 = *(v7 + 48);
  v12 = v8(0);
  v13 = OUTLINED_FUNCTION_52(v12);
  v15 = *(v14 + 16);
  v16 = v11 + *(v14 + 72) * a1;

  v15(a3, v16, v13);
}

void sub_1CA2F11B0(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v7 = a5;
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v11 = OUTLINED_FUNCTION_134();
      MEMORY[0x1CCAA21A0](v11);
      sub_1CA25B3D0(0, v7, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1CA25B3D0(0, a5, a6);
    OUTLINED_FUNCTION_134();
    if (sub_1CA94D308() == *(a4 + 36))
    {
      OUTLINED_FUNCTION_134();
      sub_1CA94D318();
      swift_dynamicCast();
      v7 = v21;
      v12 = *(a4 + 40);
      v13 = sub_1CA94CFC8();
      v14 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v10 = v13 & v14;
        if (((*(a4 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1CA94CFD8();

        if (v16)
        {
          goto LABEL_15;
        }

        v13 = v10 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || (v17 = *(a4 + 32), OUTLINED_FUNCTION_25_4(), v18 <= v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v19 = *(*(a4 + 48) + 8 * v10);

  v20 = v19;
}

uint64_t sub_1CA2F13A4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    return a2(a1);
  }

  else
  {
    result = 1 << *(a1 + 32);
    v4 = *(v2 + 36);
  }

  return result;
}

uint64_t sub_1CA2F13FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2F146C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_52(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1CA2F14C4()
{
  result = qword_1EC442D08;
  if (!qword_1EC442D08)
  {
    sub_1CA948D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442D08);
  }

  return result;
}

uint64_t sub_1CA2F1510(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    if (a6)
    {
      return a7(result, a2, a4, a5);
    }
  }

  else if ((a6 & 1) == 0)
  {
    if (a2 == a5)
    {
      return result == a4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1CA2F1590()
{
  v116 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
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
  v121 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v122 = v12;
  v13 = v110 - v121;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v120 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v119 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v123 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v110 - v123;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v118;
  *(inited + 80) = v19;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD000000000000012;
  *(inited + 128) = 0x80000001CA9933B0;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  *&v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438();
  v114 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v115 = v110;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v110 - v121;
  sub_1CA948D98();
  v29 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v110 - v123;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v114, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v118;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v33 = v117;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v33;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1702194242;
  *(inited + 208) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x69662E6F746F6870;
  *(inited + 248) = 0xEA00000000006C6CLL;
  *(inited + 264) = v34;
  *(inited + 272) = @"Input";
  v35 = v34;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v117 = xmmword_1CA981350;
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x7475706E494657;
  *(v36 + 104) = 0xE700000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v115;
  *(v36 + 192) = &unk_1F49F3028;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v114 = v42;
  *(inited + 280) = v41;
  *(inited + 304) = v42;
  *(inited + 312) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v111 = v45;
  v46 = sub_1CA94C438();
  v48 = v47;
  v112 = v110;
  MEMORY[0x1EEE9AC00](v46);
  v49 = v110 - v121;
  sub_1CA948D98();
  v50 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v110 - v123;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v44, v111, v46, v48, 0, 0, v49, v51);
  v53 = v118;
  *(inited + 344) = v118;
  *(inited + 352) = @"Output";
  v54 = swift_allocObject();
  *(v54 + 16) = v117;
  *(v54 + 32) = 0x75736F6C63736944;
  *(v54 + 40) = 0xEF6C6576654C6572;
  *(v54 + 48) = 0x63696C627550;
  *(v54 + 56) = 0xE600000000000000;
  *(v54 + 72) = MEMORY[0x1E69E6158];
  *(v54 + 80) = 0x656C7069746C754DLL;
  *(v54 + 88) = 0xE800000000000000;
  *(v54 + 96) = 1;
  *(v54 + 120) = MEMORY[0x1E69E6370];
  *(v54 + 128) = 0x614E74757074754FLL;
  *(v54 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v111 = v57;
  v112 = v56;
  v58 = sub_1CA94C438();
  v60 = v59;
  v113 = v110;
  MEMORY[0x1EEE9AC00](v58);
  v61 = v110 - v121;
  sub_1CA948D98();
  v62 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = v110 - v123;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v112, v111, v58, v60, 0, 0, v61, v63);
  *(v54 + 168) = v53;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 216) = v115;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 192) = &unk_1F49F3058;
  v65 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v114;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 1) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_initStackObject();
  *(v66 + 16) = v117;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000019;
  *(v66 + 48) = 0x80000001CA99B030;
  *(v66 + 64) = v65;
  *(v66 + 72) = @"Key";
  *(v66 + 80) = 0x7475706E494657;
  *(v66 + 88) = 0xE700000000000000;
  *(v66 + 104) = v65;
  *(v66 + 112) = @"Label";
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"Key";
  v70 = @"Label";
  v71 = sub_1CA94C438();
  v112 = v72;
  v113 = v71;
  v73 = sub_1CA94C438();
  v111 = v74;
  *&v117 = v110;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v121;
  sub_1CA948D98();
  v76 = v120;
  v77 = [v120 bundleURL];
  v110[1] = v110;
  MEMORY[0x1EEE9AC00](v77);
  v78 = v110 - v123;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 120) = sub_1CA2F9F14(v113, v112, v73, v111, 0, 0, v110 - v75, v78);
  v80 = v118;
  *(v66 + 144) = v118;
  *(v66 + 152) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438();
  v112 = v83;
  v113 = v82;
  v111 = sub_1CA94C438();
  v85 = v84;
  *&v117 = v110;
  MEMORY[0x1EEE9AC00](v111);
  v86 = v110 - v75;
  sub_1CA948D98();
  v87 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v110 - v123;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v113, v112, v111, v85, 0, 0, v86, v88);
  *(v66 + 184) = v80;
  *(v66 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v91 = sub_1CA2F864C();
  v92 = v115;
  v115[4] = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v92;
  *(inited + 424) = v93;
  *(inited + 432) = @"ParameterSummary";
  v94 = @"ParameterSummary";
  v95 = sub_1CA94C438();
  v97 = v96;
  v98 = sub_1CA94C438();
  v100 = v99;
  v118 = v110;
  MEMORY[0x1EEE9AC00](v98);
  v101 = v110 - v121;
  sub_1CA948D98();
  v102 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v110 - v123;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v103);
  v106 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v107 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v106;
  *(inited + 464) = v107;
  *(inited + 472) = @"ResidentCompatible";
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v108 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2F24E8()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A0770;
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
  v124 = v12;
  v126 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v112 - v126;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v125 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v112 - v122;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v120 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v117 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v118 = &v112;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v112 - v126;
  sub_1CA948D98();
  v30 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v112 - v122;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v117, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v121;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v120;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000022;
  *(inited + 208) = 0x80000001CA9A08B0;
  *(inited + 224) = v35;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v35;
  *(inited + 272) = @"Input";
  v36 = v35;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v116 = xmmword_1CA981350;
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
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v120;
  *(v37 + 192) = &unk_1F49F3088;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v118 = v44;
  *(inited + 280) = v43;
  *(inited + 304) = v44;
  *(inited + 312) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v114 = v47;
  v48 = sub_1CA94C438();
  v50 = v49;
  v115 = &v112;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v112 - v126;
  sub_1CA948D98();
  v52 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v112 - v122;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v114, v48, v50, 0, 0, v51, v53);
  v55 = v121;
  *(inited + 344) = v121;
  *(inited + 352) = @"Output";
  v56 = swift_allocObject();
  *(v56 + 16) = v116;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = MEMORY[0x1E69E6158];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 1;
  *(v56 + 120) = MEMORY[0x1E69E6370];
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438();
  v115 = v59;
  *&v116 = v58;
  v60 = sub_1CA94C438();
  v62 = v61;
  v117 = &v112;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v112 - v126;
  sub_1CA948D98();
  v64 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v112 - v122;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 144) = sub_1CA2F9F14(v116, v115, v60, v62, 0, 0, v63, v65);
  *(v56 + 168) = v55;
  *(v56 + 176) = 0x7365707954;
  v67 = v120;
  *(v56 + 216) = v120;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 192) = &unk_1F49F30B8;
  v68 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v118;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CA981370;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000015;
  *(v69 + 48) = 0x80000001CA99B1E0;
  *(v69 + 64) = v68;
  *(v69 + 72) = @"FilePickerSupportedTypes";
  *(v69 + 80) = &unk_1F49F30E8;
  *(v69 + 104) = v67;
  *(v69 + 112) = @"Key";
  *(v69 + 120) = 0x7475706E494657;
  *(v69 + 128) = 0xE700000000000000;
  *(v69 + 144) = v68;
  *(v69 + 152) = @"Label";
  v70 = @"Parameters";
  v71 = @"Class";
  v72 = @"FilePickerSupportedTypes";
  v73 = @"Key";
  v74 = @"Label";
  v75 = sub_1CA94C438();
  v114 = v76;
  v115 = v75;
  v77 = sub_1CA94C438();
  v113 = v78;
  *&v116 = &v112;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v112 - v126;
  sub_1CA948D98();
  v80 = v123;
  v81 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v122;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 160) = sub_1CA2F9F14(v115, v114, v77, v113, 0, 0, v79, &v112 - v82);
  *(v69 + 184) = v121;
  *(v69 + 192) = @"Placeholder";
  v84 = @"Placeholder";
  v85 = sub_1CA94C438();
  v114 = v86;
  v115 = v85;
  v87 = sub_1CA94C438();
  v113 = v88;
  *&v116 = &v112;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v112 - v126;
  sub_1CA948D98();
  v90 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v115, v114, v87, v113, 0, 0, v89, &v112 - v82);
  *(v69 + 224) = v121;
  *(v69 + 200) = v92;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v93 = sub_1CA2F864C();
  v94 = v118;
  v118[4] = v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v94;
  *(inited + 424) = v95;
  *(inited + 432) = @"ParameterSummary";
  v96 = @"ParameterSummary";
  v97 = sub_1CA94C438();
  v99 = v98;
  v100 = sub_1CA94C438();
  v102 = v101;
  v121 = &v112;
  MEMORY[0x1EEE9AC00](v100);
  v103 = &v112 - v126;
  sub_1CA948D98();
  v104 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v112 - v122;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v97, v99, v100, v102, 0, 0, v103, v105);
  v108 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v109 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v108;
  *(inited + 464) = v109;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 504) = v120;
  *(inited + 480) = &unk_1F49F3118;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v110 = @"RemoteExecuteOnPlatforms";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2F343C()
{
  v135 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9A0A40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v139 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v141 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v142 = v11;
  v12 = v124 - v141;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v138 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v140 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v143 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v124 - v143;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v139, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v139 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v137 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v134 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v136 = v124;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v124 - v141;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v124 - v143;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v134, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v139;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v137;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"Discoverable";
  v35 = MEMORY[0x1E69E6370];
  *(inited + 160) = 0;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000023;
  *(inited + 248) = 0x80000001CA9A0AD0;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"Discoverable";
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v137 = v124;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v124 - v141;
  sub_1CA948D98();
  v48 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v124 - v143;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v139;
  *(inited + 312) = @"Parameters";
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v137 = swift_allocObject();
  *(v137 + 1) = xmmword_1CA981360;
  v136 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981370;
  *(v51 + 32) = @"AllowsMultipleValues";
  *(v51 + 40) = 1;
  *(v51 + 64) = MEMORY[0x1E69E6370];
  *(v51 + 72) = @"Class";
  *(v51 + 80) = 0xD00000000000001BLL;
  *(v51 + 88) = 0x80000001CA9A0B30;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 104) = MEMORY[0x1E69E6158];
  *(v51 + 112) = @"Key";
  *(v51 + 120) = 0x7645726573554657;
  *(v51 + 128) = 0xEB00000000746E65;
  *(v51 + 144) = v52;
  *(v51 + 152) = @"Label";
  v53 = @"Class";
  v54 = @"Key";
  v55 = @"Label";
  v127 = v53;
  v131 = v54;
  v132 = v55;
  v56 = @"Parameters";
  v57 = @"AllowsMultipleValues";
  v128 = sub_1CA94C438();
  v126 = v58;
  v59 = sub_1CA94C438();
  v125 = v60;
  v129 = v124;
  MEMORY[0x1EEE9AC00](v59);
  v133 = inited;
  v61 = v141;
  sub_1CA948D98();
  v62 = v138;
  v63 = [v138 bundleURL];
  v124[1] = v124;
  MEMORY[0x1EEE9AC00](v63);
  v64 = v143;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 160) = sub_1CA2F9F14(v128, v126, v59, v125, 0, 0, v124 - v61, v124 - v64);
  *(v51 + 184) = v139;
  *(v51 + 192) = @"Placeholder";
  v66 = @"Placeholder";
  v128 = sub_1CA94C438();
  v126 = v67;
  v68 = sub_1CA94C438();
  v125 = v69;
  v129 = v124;
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948D98();
  v70 = [v62 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v128, v126, v68, v125, 0, 0, v124 - v61, v124 - v64);
  *(v51 + 224) = v139;
  *(v51 + 200) = v72;
  _s3__C3KeyVMa_0(0);
  v129 = v73;
  v128 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v137[4] = sub_1CA2F864C();
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981400;
  *(v74 + 32) = v127;
  *(v74 + 40) = 0xD000000000000011;
  *(v74 + 48) = 0x80000001CA9A0B80;
  *(v74 + 64) = MEMORY[0x1E69E6158];
  *(v74 + 72) = @"DefaultValue";
  v75 = MEMORY[0x1E69E6530];
  *(v74 + 80) = 1;
  *(v74 + 104) = v75;
  *(v74 + 112) = @"Description";
  v76 = @"DefaultValue";
  v77 = @"Description";
  v78 = sub_1CA94C438();
  v126 = v79;
  v127 = v78;
  v80 = sub_1CA94C438();
  v125 = v81;
  v130 = v124;
  MEMORY[0x1EEE9AC00](v80);
  sub_1CA948D98();
  v82 = v138;
  v83 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = v124 - v143;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v127, v126, v80, v125, 0, 0, v124 - v61, v84);
  v86 = v139;
  v87 = v131;
  *(v74 + 144) = v139;
  *(v74 + 152) = v87;
  *(v74 + 160) = 0x616279616C504657;
  *(v74 + 168) = 0xEF64656570536B63;
  v88 = v132;
  *(v74 + 184) = MEMORY[0x1E69E6158];
  *(v74 + 192) = v88;
  v89 = sub_1CA94C438();
  v130 = v90;
  v131 = v89;
  v91 = sub_1CA94C438();
  v93 = v92;
  v132 = v124;
  MEMORY[0x1EEE9AC00](v91);
  v94 = v124 - v141;
  sub_1CA948D98();
  v95 = [v82 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = v124 - v143;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 200) = sub_1CA2F9F14(v131, v130, v91, v93, 0, 0, v94, v96);
  *(v74 + 224) = v86;
  *(v74 + 232) = @"MaximumValue";
  *(v74 + 240) = 1;
  v98 = MEMORY[0x1E69E6530];
  *(v74 + 264) = MEMORY[0x1E69E6530];
  *(v74 + 272) = @"MinimumValue";
  *(v74 + 304) = v98;
  *(v74 + 280) = -1;
  v99 = @"MaximumValue";
  v100 = @"MinimumValue";
  sub_1CA94C1E8();
  v101 = sub_1CA2F864C();
  v102 = v137;
  v137[5] = v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v104 = v133;
  v133[40] = v102;
  v104[43] = v103;
  v104[44] = @"ParameterSummary";
  v105 = @"ParameterSummary";
  v106 = sub_1CA94C438();
  v108 = v107;
  v109 = sub_1CA94C438();
  v111 = v110;
  v139 = v124;
  MEMORY[0x1EEE9AC00](v109);
  v112 = v124 - v141;
  sub_1CA948D98();
  v113 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = v124 - v143;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v106, v108, v109, v111, 0, 0, v112, v114);
  v117 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v118 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v104[45] = v117;
  v104[48] = v118;
  v104[49] = @"RequiredResources";
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1CA9813B0;
  v144 = 2;
  v145 = 0;
  v120 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v121 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v144);
  *(v119 + 32) = v122;
  v104[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v104[50] = v119;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2F43C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA27BB44();
  *a2 = result;
  return result;
}

uint64_t sub_1CA2F43EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1CA94C218();
  return sub_1CA273CD0();
}

uint64_t sub_1CA2F4418(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444270, &qword_1CA982C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return sub_1CA2F4560(v7);
}

uint64_t sub_1CA2F44EC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4441D8, &qword_1CA982AC8);
  sub_1CA94A078();
  return swift_endAccess();
}

uint64_t sub_1CA2F4560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444270, &qword_1CA982C90);
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v10 - v8, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4441D8, &qword_1CA982AC8);
  sub_1CA94A088();
  swift_endAccess();
  return (*(v5 + 8))(a1, v2);
}

uint64_t AppAssociatedShortcutsLoader.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AppAssociatedShortcutsDataSource.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AppAssociatedShortcutsDataSource.init()();
  return v3;
}

uint64_t sub_1CA2F4708(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_result) == result)
  {
    return sub_1CA273AD8(0xD000000000000018, 0x80000001CA9A0CA0);
  }

  return result;
}

uint64_t sub_1CA2F47AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA2F47C0()
{
  OUTLINED_FUNCTION_6();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1CA25B3D0(0, &qword_1EC4441F0, off_1E836F510);
  sub_1CA2F487C(v2, *(*(v1 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_loader) + 16));
  OUTLINED_FUNCTION_2_4();

  return v3();
}

id sub_1CA2F487C(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v4 = [swift_getObjCClassFromMetadata() workflowWithReference:a1 database:a2 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1CA2F495C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA2F4970()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2F4A00;
  v2 = *(v0 + 16);

  return sub_1CA2F4FEC(v2);
}

uint64_t sub_1CA2F4A00()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  v4 = *(v3 + 32);
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  OUTLINED_FUNCTION_2_4();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t AppAssociatedShortcutsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource__collections;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4441D8, &qword_1CA982AC8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkflowKit32AppAssociatedShortcutsDataSource_loader);

  return v0;
}

uint64_t AppAssociatedShortcutsDataSource.__deallocating_deinit()
{
  AppAssociatedShortcutsDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA2F4BE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2F6BEC;

  return sub_1CA2F495C(v2);
}

uint64_t sub_1CA2F4C7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2F6BEC;

  return sub_1CA2F47AC(v2);
}

uint64_t sub_1CA2F4D10@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppAssociatedShortcutsDataSource();
  result = sub_1CA949FE8();
  *a1 = result;
  return result;
}

void sub_1CA2F4D5C()
{
  v1 = [*(v0 + 16) sortedVisibleAppAssociatedWorkflows];
  if ([v1 fetchError])
  {
    swift_willThrow();
  }

  else
  {
    sub_1CA26E9BC(v1);
  }
}

uint64_t sub_1CA2F4DE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA2F4E00()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 16);
  v4 = sub_1CA94C368();
  v5 = [v3 sortedVisibleWorkflowsWithAssociatedAppBundleIdentifier_];

  if ([v5 fetchError])
  {
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A90, &qword_1CA981B78);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1CA981310;
    sub_1CA94C218();
    v10 = [v5 descriptors];
    sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
    OUTLINED_FUNCTION_5_3();
    v11 = sub_1CA94C658();

    if (qword_1EDB9F960 != -1)
    {
      OUTLINED_FUNCTION_1_11();
      swift_once();
    }

    v12 = sub_1CA2786EC(v0[2], v0[3]);
    if (v13)
    {
      v14 = v12;
      v16 = v0[2];
      v15 = v0[3];
    }

    else
    {
      v17 = v0[3];
      v15 = sub_1CA94C218();
      v16 = v0[2];
      v14 = v16;
      v13 = v15;
    }

    *(v9 + 32) = v14;
    *(v9 + 40) = v13;
    *(v9 + 48) = v16;
    *(v9 + 56) = v15;
    *(v9 + 64) = 0;
    *(v9 + 72) = v11;

    OUTLINED_FUNCTION_2_4();

    return v18(v9);
  }
}

void sub_1CA2F5000()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v3;
  v4 = [v1 name];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

  v7 = [v6 serializedRepresentation];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  *(inited + 72) = swift_getObjectType();
  *(inited + 48) = v7;
  v8 = sub_1CA94C1E8();
  v9 = [objc_opt_self() sharedRegistry];
  v10 = sub_1CA94C368();
  sub_1CA2F5264(v8);
  v12 = v11;

  v13 = sub_1CA2F6338(v10, v12, v9);

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_2_4();

    v14();
  }

  else
  {

    v15 = sub_1CA94C3A8();
    v17 = v16;
    v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1CA298568(v15, v17, 5, 0);
    swift_willThrow();
    v19 = *(v0 + 8);

    v19();
  }
}

void sub_1CA2F5264(uint64_t a1)
{
  OUTLINED_FUNCTION_142(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444290, &qword_1CA982CB0);
    OUTLINED_FUNCTION_5_3();
    v3 = sub_1CA94D688();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  OUTLINED_FUNCTION_7_10();
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = v3 + 64;

  sub_1CA94C218();
  v11 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    OUTLINED_FUNCTION_18_6(__clz(__rbit64(v8)) | (v11 << 6));
    v15 = *v13;
    v14 = v13[1];
    sub_1CA25B374(v17 + 32 * v16, v41);
    *&v40 = v15;
    *(&v40 + 1) = v14;
    v38[2] = v40;
    v39[0] = v41[0];
    v39[1] = v41[1];
    v38[0] = v40;
    sub_1CA94C218();
    swift_dynamicCast();
    sub_1CA2C0A20(v39, v33);
    v34 = v30;
    v35 = v31;
    v36 = v32;
    sub_1CA2C0A20(v33, v37);
    v30 = v34;
    v31 = v35;
    v32 = v36;
    sub_1CA2C0A20(v37, v38);
    v18 = *(v3 + 40);
    v19 = sub_1CA94D378() & ~(-1 << *(v3 + 32));
    if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_5_2();
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        if (*(v10 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    v8 &= v8 - 1;
    OUTLINED_FUNCTION_2_11();
    *(v10 + v24) |= v25;
    OUTLINED_FUNCTION_14_7(v26);
    *v27 = v30;
    v27[1] = v31;
    OUTLINED_FUNCTION_13_6(v28);
    sub_1CA2C0A20(v38, v29);
    OUTLINED_FUNCTION_12_6();
  }

  while (v8);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1CA2F54CC(uint64_t a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
  v2 = *(*(v52 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v47 - v5;
  v53 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442A0, &unk_1CA982CC0);
    OUTLINED_FUNCTION_5_3();
    v6 = sub_1CA94D688();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v8 = *(v53 + 64);
  v7 = v53 + 64;
  v9 = 1 << *(v53 + 32);
  OUTLINED_FUNCTION_19_4();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v47 = v6 + 8;

  result = sub_1CA94C218();
  v16 = 0;
  v49 = v6;
  for (i = v7; v12; v7 = i)
  {
    v17 = v16;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = v18 | (v17 << 6);
    v20 = *(v53 + 56);
    v21 = (*(v53 + 48) + 16 * v19);
    v23 = *v21;
    v54 = v21[1];
    v22 = v54;
    v24 = sub_1CA94AC88();
    OUTLINED_FUNCTION_1_0(v24);
    v26 = v25;
    v28 = v20 + *(v27 + 72) * v19;
    v29 = v52;
    v30 = v50;
    (*(v25 + 16))(&v50[*(v52 + 48)], v28, v24);
    *v30 = v23;
    v30[1] = v22;
    v31 = v30;
    v32 = v51;
    sub_1CA2F6B10(v31, v51);
    v33 = *(v29 + 48);
    v34 = *v32;
    v35 = *(v32 + 1);
    v56 = v24;
    v57 = MEMORY[0x1E69DAE80];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
    (*(v26 + 32))(boxed_opaque_existential_1, &v32[v33], v24);
    sub_1CA27F268(&v55, v59);
    v37 = v34;
    sub_1CA27F268(v59, v60);
    sub_1CA27F268(v60, &v58);
    sub_1CA94C218();
    v6 = v49;
    result = sub_1CA271BF8();
    v38 = result;
    if (v39)
    {
      v40 = (v6[6] + 16 * result);
      v41 = v40[1];
      *v40 = v37;
      v40[1] = v35;

      v42 = (v6[7] + 40 * v38);
      __swift_destroy_boxed_opaque_existential_0(v42);
      result = sub_1CA27F268(&v58, v42);
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_18;
      }

      *(v47 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v43 = (v6[6] + 16 * result);
      *v43 = v37;
      v43[1] = v35;
      result = sub_1CA27F268(&v58, v6[7] + 40 * result);
      v44 = v6[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_19;
      }

      v6[2] = v46;
    }

    v16 = v17;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v6;
    }

    v12 = *(v7 + 8 * v17);
    ++v16;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_1CA2F5880(uint64_t a1)
{
  OUTLINED_FUNCTION_142(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444290, &qword_1CA982CB0);
    OUTLINED_FUNCTION_5_3();
    v3 = sub_1CA94D688();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  OUTLINED_FUNCTION_7_10();
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = v3 + 64;

  sub_1CA94C218();
  v11 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    OUTLINED_FUNCTION_18_6(__clz(__rbit64(v8)) | (v11 << 6));
    v14 = v13[1];
    v17 = *(v16 + 8 * v15);
    *&v38[0] = *v13;
    *(&v38[0] + 1) = v14;
    sub_1CA94C218();
    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    swift_dynamicCast();
    v34 = v30;
    v35 = v31;
    v36 = v32;
    sub_1CA2C0A20(&v33, v37);
    v30 = v34;
    v31 = v35;
    v32 = v36;
    sub_1CA2C0A20(v37, v38);
    v18 = *(v3 + 40);
    v19 = sub_1CA94D378() & ~(-1 << *(v3 + 32));
    if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_5_2();
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        if (*(v10 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    v8 &= v8 - 1;
    OUTLINED_FUNCTION_2_11();
    *(v10 + v24) |= v25;
    OUTLINED_FUNCTION_14_7(v26);
    *v27 = v30;
    v27[1] = v31;
    OUTLINED_FUNCTION_13_6(v28);
    sub_1CA2C0A20(v38, v29);
    OUTLINED_FUNCTION_12_6();
  }

  while (v8);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1CA2F5AEC(uint64_t a1)
{
  OUTLINED_FUNCTION_142(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444290, &qword_1CA982CB0);
    OUTLINED_FUNCTION_5_3();
    v3 = sub_1CA94D688();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  OUTLINED_FUNCTION_7_10();
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = v3 + 64;

  sub_1CA94C218();
  v11 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    OUTLINED_FUNCTION_18_6(__clz(__rbit64(v8)) | (v11 << 6));
    v15 = *v13;
    v14 = v13[1];
    sub_1CA2F6AB4(v17 + 40 * v16, v47);
    v45 = v15;
    v46 = v14;
    v42 = v47[0];
    v43 = v47[1];
    v44 = v48;
    v32 = v15;
    v33 = v14;
    sub_1CA94C218();
    swift_dynamicCast();
    v30[0] = v42;
    v30[1] = v43;
    v31 = v44;
    swift_dynamicCast();
    v38 = v34;
    v39 = v35;
    v40 = v36;
    sub_1CA2C0A20(&v37, v41);
    v34 = v38;
    v35 = v39;
    v36 = v40;
    sub_1CA2C0A20(v41, v30);
    v18 = *(v3 + 40);
    v19 = sub_1CA94D378() & ~(-1 << *(v3 + 32));
    if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_5_2();
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        if (*(v10 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    v8 &= v8 - 1;
    OUTLINED_FUNCTION_2_11();
    *(v10 + v24) |= v25;
    OUTLINED_FUNCTION_14_7(v26);
    *v27 = v34;
    v27[1] = v35;
    OUTLINED_FUNCTION_13_6(v28);
    sub_1CA2C0A20(v30, v29);
    OUTLINED_FUNCTION_12_6();
  }

  while (v8);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1CA2F5D8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_142(a1);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444278, qword_1CA982C98);
    OUTLINED_FUNCTION_5_3();
    v5 = sub_1CA94D688();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v6 = *(v3 + 64);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_19_4();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  result = sub_1CA94C218();
  v13 = 0;
  while (v9)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    OUTLINED_FUNCTION_18_6(v15 | (v14 << 6));
    v18 = *v16;
    v17 = v16[1];
    v32 = *(v20 + 8 * v19);
    sub_1CA94C218();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    swift_dynamicCast();
    sub_1CA2C0A20(&v33, v35);
    sub_1CA2C0A20(v35, v36);
    sub_1CA2C0A20(v36, &v34);
    result = sub_1CA271BF8();
    v21 = result;
    if (v22)
    {
      v23 = (v5[6] + 16 * result);
      v24 = v23[1];
      *v23 = v18;
      v23[1] = v17;

      v25 = (v5[7] + 32 * v21);
      __swift_destroy_boxed_opaque_existential_0(v25);
      result = sub_1CA2C0A20(&v34, v25);
      v13 = v14;
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_17;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v26 = (v5[6] + 16 * result);
      *v26 = v18;
      v26[1] = v17;
      result = sub_1CA2C0A20(&v34, (v5[7] + 32 * result));
      v27 = v5[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_18;
      }

      v5[2] = v29;
      v13 = v14;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v5;
    }

    v9 = *(v3 + 64 + 8 * v14);
    ++v13;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t AppAssociatedShortcutsLoader.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1CA2F6034(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA2F60C8;

  return sub_1CA2F4FEC(v2);
}

uint64_t sub_1CA2F60C8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  OUTLINED_FUNCTION_2_4();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

id sub_1CA2F61C8(SEL *a1)
{
  v3 = [v1 icon];
  v4 = [v3 *a1];

  return v4;
}

uint64_t sub_1CA2F6244()
{
  v1 = [v0 name];
  v2 = sub_1CA94C3A8();

  return v2;
}

uint64_t sub_1CA2F62E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
  result = sub_1CA94D428();
  *a1 = result;
  return result;
}

id sub_1CA2F6338(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C1A8();

  v6 = [a3 createActionWithIdentifier:a1 serializedParameters:v5];

  return v6;
}

unint64_t sub_1CA2F63C4(uint64_t a1)
{
  result = sub_1CA2F63EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2F63EC()
{
  result = qword_1EC442038[0];
  if (!qword_1EC442038[0])
  {
    type metadata accessor for AppAssociatedShortcutsDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442038);
  }

  return result;
}

uint64_t dispatch thunk of AppAssociatedShortcutsDataSource.workflow(for:)()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 176);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_8(v4);

  return v7(v6);
}

uint64_t dispatch thunk of AppAssociatedShortcutsDataSource.action(for:)()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 184);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_8(v4);

  return v7(v6);
}

uint64_t dispatch thunk of AppAssociatedShortcutsLoader.loadItemsForBundleIdentifier(_:)()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  v5 = *(v4 + 104);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v8[1] = sub_1CA2F68C4;

  return v11(v3, v1);
}

uint64_t sub_1CA2F68C4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  OUTLINED_FUNCTION_2_4();

  return v6(v0);
}

uint64_t dispatch thunk of AppAssociatedShortcutsLoader.action(for:)()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 112);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_8(v4);

  return v7(v6);
}

uint64_t sub_1CA2F6B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444298, &qword_1CA982CB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA2F6B80(void *a1)
{
  v1 = [a1 associatedAppBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

id sub_1CA2F6C24()
{
  v104 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  v103 = xmmword_1CA981450;
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x6E656D6D6F434657;
  *(inited + 48) = 0xEF6E6F6974634174;
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
  v109 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v110 = v12;
  v13 = &v97 - v109;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v108 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v106 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v107 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v97 - v107;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v105 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Appearance";
  *(inited + 120) = 0x746E656D6D6F43;
  *(inited + 128) = 0xE700000000000000;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  v102 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Appearance";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438();
  v100 = v26;
  v27 = sub_1CA94C438();
  v29 = v28;
  v101 = &v97;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v97 - v109;
  sub_1CA948D98();
  v31 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v97 - v107;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v25, v100, v27, v29, 0, 0, v30, v32);
  *(v21 + 64) = v105;
  *(v21 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v35 = v102;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x7261656C43;
  *(inited + 208) = 0xE500000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000010;
  *(inited + 248) = 0x80000001CA9A0DD0;
  *(inited + 264) = v36;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 0x776F6C6C6559;
  *(inited + 288) = 0xE600000000000000;
  *(inited + 304) = v36;
  *(inited + 312) = @"InputPassthrough";
  v37 = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  *(inited + 344) = v37;
  *(inited + 352) = @"Name";
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"IconSymbolColor";
  v41 = @"InputPassthrough";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v45 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v102 = &v97;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v97 - v109;
  sub_1CA948D98();
  v50 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v97 - v107;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  v100 = @"Parameters";
  *(inited + 384) = v105;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v102 = swift_allocObject();
  *(v102 + 1) = xmmword_1CA9813B0;
  v101 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v53 = swift_allocObject();
  *(v53 + 16) = v103;
  *&v103 = @"AutocapitalizationType";
  *(v53 + 32) = @"AutocapitalizationType";
  *(v53 + 40) = 0x65636E65746E6553;
  *(v53 + 48) = 0xE900000000000073;
  v99 = @"Class";
  v54 = MEMORY[0x1E69E6158];
  *(v53 + 64) = MEMORY[0x1E69E6158];
  *(v53 + 72) = @"Class";
  *(v53 + 80) = 0xD000000000000014;
  *(v53 + 88) = 0x80000001CA99B500;
  v98 = @"DisableAutoPeriods";
  *(v53 + 104) = v54;
  *(v53 + 112) = @"DisableAutoPeriods";
  *(v53 + 120) = 0;
  v55 = MEMORY[0x1E69E6370];
  *(v53 + 144) = MEMORY[0x1E69E6370];
  *(v53 + 152) = @"DisableSmartDashes";
  *(v53 + 160) = 0;
  *(v53 + 184) = v55;
  *(v53 + 192) = @"DisableSmartQuotes";
  *(v53 + 200) = 0;
  *(v53 + 224) = v55;
  *(v53 + 232) = @"DisableTextReplacement";
  *(v53 + 240) = 0;
  *(v53 + 264) = v55;
  *(v53 + 272) = @"DisallowedVariableTypes";
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 280) = &unk_1F49F3148;
  *(v53 + 304) = v56;
  *(v53 + 312) = @"ImportQuestionBehavior";
  *(v53 + 320) = 0x6E6564646948;
  *(v53 + 328) = 0xE600000000000000;
  v57 = MEMORY[0x1E69E6158];
  *(v53 + 344) = MEMORY[0x1E69E6158];
  *(v53 + 352) = @"Key";
  *(v53 + 360) = 0xD000000000000013;
  *(v53 + 368) = 0x80000001CA9A0E10;
  *(v53 + 384) = v57;
  *(v53 + 392) = @"Label";
  v58 = v100;
  v59 = v103;
  v60 = v99;
  v61 = v98;
  v62 = @"DisableSmartDashes";
  v63 = @"DisableSmartQuotes";
  v64 = @"DisableTextReplacement";
  v65 = @"DisallowedVariableTypes";
  v66 = @"ImportQuestionBehavior";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438();
  v100 = v70;
  v71 = sub_1CA94C438();
  v73 = v72;
  *&v103 = &v97;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v97 - v109;
  sub_1CA948D98();
  v75 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v97 - v107;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 400) = sub_1CA2F9F14(v69, v100, v71, v73, 0, 0, v74, v76);
  *(v53 + 424) = v105;
  *(v53 + 432) = @"Multiline";
  *(v53 + 440) = 1;
  *(v53 + 464) = MEMORY[0x1E69E6370];
  *(v53 + 472) = @"Placeholder";
  v78 = @"Multiline";
  v79 = @"Placeholder";
  v80 = sub_1CA94C438();
  v100 = v81;
  v82 = sub_1CA94C438();
  v84 = v83;
  *&v103 = &v97;
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v97 - v109;
  sub_1CA948D98();
  v86 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v97 - v107;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v80, v100, v82, v84, 0, 0, v85, v87);
  *(v53 + 504) = v105;
  *(v53 + 480) = v89;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v90 = sub_1CA2F864C();
  v91 = v102;
  v102[4] = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v91;
  *(inited + 424) = v92;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 440) = 1;
  v93 = MEMORY[0x1E69E6370];
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 472) = @"SnappingPassthrough";
  *(inited + 504) = v93;
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v94 = @"ResidentCompatible";
  v95 = @"SnappingPassthrough";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2F7864()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0x65746F6D65525654;
  *(inited + 128) = 0xE800000000000000;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000012;
  *(inited + 168) = 0x80000001CA9A0EE0;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFParameter.ToolKitTypeIdentifierParameterError.hashValue.getter()
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](0);
  return sub_1CA94D968();
}

uint64_t sub_1CA2F7AFC()
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](0);
  return sub_1CA94D968();
}

uint64_t static WFParameter.toolkitTypeIdentifier()@<X0>(void *a1@<X8>)
{
  type metadata accessor for WFAskLLMModelParameter();
  if (swift_dynamicCastMetatype())
  {
    v2 = swift_allocObject();
    v3 = *MEMORY[0x1E69E0FB0];
    v2[2] = sub_1CA94C3A8();
    v2[3] = v4;
    swift_getMetatypeMetadata();
    v2[4] = sub_1CA94C408();
    v2[5] = v5;
    *a1 = v2;
    v6 = *MEMORY[0x1E69DB098];
    v7 = sub_1CA94ADC8();
    return (*(*(v7 - 8) + 104))(a1, v6, v7);
  }

  else
  {
    sub_1CA2F7C50();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_1CA2F7C50()
{
  result = qword_1EC4442A8;
  if (!qword_1EC4442A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4442A8);
  }

  return result;
}

unint64_t sub_1CA2F7CA8()
{
  result = qword_1EC4442B0;
  if (!qword_1EC4442B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4442B0);
  }

  return result;
}

uint64_t _s35ToolKitTypeIdentifierParameterErrorOwet(unsigned int *a1, int a2)
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

_BYTE *_s35ToolKitTypeIdentifierParameterErrorOwst(_BYTE *result, int a2, int a3)
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

id sub_1CA2F7E30()
{
  v70 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x80000001CA9A0F10;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v72 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = v11;
  v12 = &v66 - v75;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v71 = v15;
  v73 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v66 - v73;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v72, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v72 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v69 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438();
  v67 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v68 = &v66;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v66 - v75;
  sub_1CA948D98();
  v29 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v66 - v73;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v67, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v72;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v33 = v69;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v33;
  *(inited + 152) = @"Name";
  v34 = @"Name";
  v35 = sub_1CA94C438();
  v68 = v36;
  v37 = sub_1CA94C438();
  v39 = v38;
  v69 = &v66;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v66 - v75;
  sub_1CA948D98();
  v41 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = v73;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 160) = sub_1CA2F9F14(v35, v68, v37, v39, 0, 0, v40, &v66 - v42);
  *(inited + 184) = v72;
  *(inited + 192) = @"ParameterSummary";
  v44 = @"ParameterSummary";
  v45 = sub_1CA94C438();
  v69 = v46;
  v47 = sub_1CA94C438();
  v49 = v48;
  v72 = &v66;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v66 - v75;
  sub_1CA948D98();
  v51 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v45, v69, v47, v49, 0, 0, v50, &v66 - v42);
  v54 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v55 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 200) = v54;
  *(inited + 224) = v55;
  *(inited + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA981360;
  v77 = 3;
  v78 = 1;
  v57 = type metadata accessor for WFDeviceIdiomResource();
  v58 = objc_allocWithZone(v57);
  v59 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v77);
  *(v56 + 32) = v60;
  v77 = 2;
  v78 = 1;
  v61 = objc_allocWithZone(v57);
  WFDeviceIdiomResource.init(requirement:)(&v77);
  *(v56 + 40) = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 240) = v56;
  *(inited + 264) = v63;
  *(inited + 272) = @"RequiresUnlock";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v64 = @"RequiresUnlock";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2F864C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s3__C3KeyVMa_0(0);
  OUTLINED_FUNCTION_0_12();
  sub_1CA2FA080(v1, v2);
  v3 = sub_1CA94C1A8();

  v4 = [v0 initWithDictionary_];

  return v4;
}

uint64_t static WFActionDefinitionRegistry.actionDefinitionForSearch()()
{
  v1 = sub_1CA949F78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() searchActionEnabled])
  {
    v138 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_1CA981470;
    v146 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981350;
    v7 = MEMORY[0x1E69E6158];
    *(inited + 32) = @"Class";
    *(inited + 40) = 0xD000000000000014;
    *(inited + 48) = 0x80000001CA99B500;
    *(inited + 64) = v7;
    *(inited + 72) = @"Key";
    *(inited + 80) = 0x547475706E494657;
    *(inited + 88) = 0xEB00000000747865;
    *(inited + 104) = v7;
    *(inited + 112) = @"Label";
    v8 = @"Class";
    v9 = @"Key";
    v10 = v8;
    v11 = v9;
    v12 = @"Label";
    v140 = v10;
    v139 = v11;
    v137 = v12;
    sub_1CA94C438();
    v145 = v13;
    sub_1CA94C438();
    v14 = sub_1CA948E58();
    v142 = &v133;
    v15 = *(*(v14 - 8) + 64);
    MEMORY[0x1EEE9AC00](v14 - 8);
    v150 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v151 = v16;
    v17 = &v133 - v150;
    sub_1CA948D98();
    if (qword_1EDB9F5F0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDB9F690;
    v144 = qword_1EDB9F690;
    v19 = [qword_1EDB9F690 bundleURL];
    v20 = sub_1CA948BA8();
    v148 = *(*(v20 - 8) + 64);
    MEMORY[0x1EEE9AC00](v20 - 8);
    v149 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
    OUTLINED_FUNCTION_1_12();
    sub_1CA948B68();

    v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_2_12();
    v29 = sub_1CA2F9F14(v23, v24, v25, v26, v27, v28, v17, v2);
    v30 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
    *(inited + 120) = v29;
    *(inited + 144) = v30;
    *(inited + 152) = @"Placeholder";
    v145 = v30;
    v31 = @"Placeholder";
    sub_1CA94C438();
    v141 = v32;
    v33 = sub_1CA94C438();
    v35 = v34;
    v142 = &v133;
    MEMORY[0x1EEE9AC00](v33);
    OUTLINED_FUNCTION_5_12();
    v38 = v36 - v37;
    sub_1CA948D98();
    v39 = [v18 bundleURL];
    MEMORY[0x1EEE9AC00](v39);
    OUTLINED_FUNCTION_4_9();
    v42 = v40 - v41;
    sub_1CA948B68();

    v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_2_12();
    v50 = sub_1CA2F9F14(v44, v45, v46, v47, v48, v49, v38, v42);
    *(inited + 184) = v30;
    *(inited + 160) = v50;
    _s3__C3KeyVMa_0(0);
    v142 = v51;
    OUTLINED_FUNCTION_0_12();
    v141 = sub_1CA2FA080(v52, v53);
    sub_1CA94C1E8();
    *(v147 + 32) = sub_1CA2F864C();
    v54 = swift_initStackObject();
    v135 = xmmword_1CA981400;
    *(v54 + 16) = xmmword_1CA981400;
    OUTLINED_FUNCTION_6_5();
    v55[4] = v140;
    v55[5] = 0xD00000000000002ALL;
    v55[6] = v56;
    v55[8] = MEMORY[0x1E69E6158];
    v55[9] = v139;
    OUTLINED_FUNCTION_6_5();
    v58[10] = v57 + 11;
    v58[11] = v59;
    v58[13] = v60;
    v58[14] = @"DefaultValue";
    v58[15] = 7105601;
    v58[16] = 0xE300000000000000;
    v61 = v137;
    v58[18] = v60;
    v58[19] = v61;
    v134 = @"DefaultValue";
    sub_1CA94C438();
    v62 = sub_1CA94C438();
    v137 = &v133;
    MEMORY[0x1EEE9AC00](v62);
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_1_12();
    sub_1CA948D98();
    v63 = [v144 bundleURL];
    MEMORY[0x1EEE9AC00](v63);
    OUTLINED_FUNCTION_4_9();
    v66 = v64 - v65;
    sub_1CA948B68();

    v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_2_12();
    *(v54 + 160) = sub_1CA2F9F14(v68, v69, v70, v71, v72, v73, v35, v66);
    *(v54 + 184) = v145;
    *(v54 + 192) = @"DisallowedVariableTypes";
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    v137 = v74;
    *(v54 + 200) = &unk_1F49F3208;
    *(v54 + 224) = v74;
    *(v54 + 232) = @"AllowsMultipleValues";
    v75 = MEMORY[0x1E69E6370];
    *(v54 + 240) = 1;
    *(v54 + 264) = v75;
    *(v54 + 272) = @"AllowsEmptyValue";
    *(v54 + 304) = v75;
    *(v54 + 280) = 0;
    v136 = @"DisallowedVariableTypes";
    v76 = @"AllowsMultipleValues";
    v77 = @"AllowsEmptyValue";
    sub_1CA94C1E8();
    *(v147 + 40) = sub_1CA2F864C();
    v78 = swift_initStackObject();
    *(v78 + 16) = v135;
    OUTLINED_FUNCTION_6_5();
    v79[4] = v140;
    v79[5] = 0xD000000000000012;
    v79[6] = v80;
    v81 = v139;
    v79[8] = MEMORY[0x1E69E6158];
    v79[9] = v81;
    OUTLINED_FUNCTION_6_5();
    v83[10] = v82 + 6;
    v83[11] = v84;
    v85 = v134;
    v83[13] = v86;
    v83[14] = v85;
    v87 = MEMORY[0x1E69E6530];
    v83[15] = 5;
    v83[18] = v87;
    v83[19] = @"MinimumValue";
    v83[20] = 1;
    v83[23] = v87;
    v83[24] = @"StepperDescription";
    v88 = @"MinimumValue";
    v89 = @"StepperDescription";
    sub_1CA94C438();
    v90 = sub_1CA94C438();
    v143 = &v133;
    MEMORY[0x1EEE9AC00](v90);
    OUTLINED_FUNCTION_5_12();
    OUTLINED_FUNCTION_1_12();
    sub_1CA948D98();
    v91 = [v144 bundleURL];
    MEMORY[0x1EEE9AC00](v91);
    OUTLINED_FUNCTION_4_9();
    v94 = v92 - v93;
    sub_1CA948B68();

    v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_2_12();
    *(v78 + 200) = sub_1CA2F9F14(v96, v97, v98, v99, v100, v101, v35, v94);
    *(v78 + 224) = v145;
    *(v78 + 232) = @"StepperNoun";
    v102 = @"StepperNoun";
    v103 = sub_1CA94C438();
    v105 = v104;
    v143 = v104;
    v156 = 0;
    v157 = 0xE000000000000000;
    sub_1CA94D408();

    v156 = v103;
    v157 = v105;
    v154 = 10;
    v155 = 0xE100000000000000;
    v152 = 32;
    v153 = 0xE100000000000000;
    sub_1CA27BAF0();
    v156 = sub_1CA94D1B8();
    v157 = v106;
    v107 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
    MEMORY[0x1EEE9AC00](v107);
    OUTLINED_FUNCTION_5_12();
    v110 = v108 - v109;
    sub_1CA948D98();
    v111 = [v144 bundleURL];
    MEMORY[0x1EEE9AC00](v111);
    OUTLINED_FUNCTION_4_9();
    v114 = v112 - v113;
    sub_1CA948B68();

    v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_2_12();
    *(v78 + 240) = sub_1CA2F9F14(v116, v117, v118, v119, v120, v121, v110, v114);
    v123 = v136;
    v122 = v137;
    *(v78 + 264) = v145;
    *(v78 + 272) = v123;
    *(v78 + 304) = v122;
    *(v78 + 280) = &unk_1F49F3248;
    sub_1CA94C1E8();
    v124 = sub_1CA2F864C();
    v125 = v147;
    *(v147 + 48) = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442B8, &qword_1CA982DA8);
    v126 = swift_allocObject();
    *(v126 + 16) = xmmword_1CA981310;
    *(v126 + 32) = @"Watch";
    v127 = swift_allocObject();
    *(v127 + 16) = v126;
    *(v127 + 24) = v125;
    v128 = @"Watch";
    static WFActionDefinitionRegistry.register(_:_:)(0xD000000000000023, 0x80000001CA999F00, sub_1CA2FA078, v127);
  }

  else
  {
    sub_1CA949C58();
    v130 = sub_1CA949F68();
    v131 = sub_1CA94CC08();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_1CA256000, v130, v131, "search action feature flag is not enabled", v132, 2u);
      MEMORY[0x1CCAA4BF0](v132, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

id sub_1CA2F92FC(uint64_t a1, uint64_t a2)
{
  v101 = a1;
  v102 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9A10F0;
  *(inited + 64) = v3;
  *(inited + 72) = @"Description";
  v100 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1CA97EDF0;
  *(v4 + 32) = @"DescriptionSummary";
  v5 = @"ActionClass";
  v6 = @"Description";
  v7 = @"DescriptionSummary";
  v103 = sub_1CA94C438();
  v104 = v8;
  v9 = sub_1CA94C438();
  *&v99 = v10;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v109 = v13;
  v106 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (&v97 - v106);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDB9F690;
  v108 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v107 = v18;
  v105 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v97 - v105;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v103, v104, v9, v99, 0, 0, v14, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v4 + 40) = v21;
  *(v4 + 64) = v22;
  *(v4 + 72) = @"DescriptionResult";
  v104 = v22;
  v23 = @"DescriptionResult";
  v24 = sub_1CA94C438();
  v98 = v25;
  *&v99 = v24;
  v26 = sub_1CA94C438();
  v28 = v27;
  v103 = &v97;
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v97 - v106);
  sub_1CA948D98();
  v30 = [v15 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v97 - v105;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v99, v98, v26, v28, 0, 0, v29, v31);
  *(v4 + 104) = v22;
  *(v4 + 80) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA2FA080(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v100;
  *(inited + 80) = sub_1CA6B3784();
  *(inited + 104) = v34;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 1702194242;
  *(inited + 128) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0x697966696E67616DLL;
  *(inited + 168) = 0xEF7373616C67676ELL;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconSymbolColor";
  *(inited + 200) = 0x6574696857;
  *(inited + 208) = 0xE500000000000000;
  *(inited + 224) = v35;
  *(inited + 232) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"IconSymbolColor";
  v39 = @"Name";
  v40 = sub_1CA94C438();
  v42 = v41;
  v43 = sub_1CA94C438();
  v45 = v44;
  v103 = &v97;
  MEMORY[0x1EEE9AC00](v43);
  v46 = (&v97 - v106);
  sub_1CA948D98();
  v47 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v97 - v105;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v40, v42, v43, v45, 0, 0, v46, v48);
  *(inited + 264) = v104;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v99 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 0;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x547475706E494657;
  *(v50 + 104) = 0xEB00000000747865;
  v52 = MEMORY[0x1E69E6158];
  *(v50 + 120) = MEMORY[0x1E69E6158];
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v103;
  *(v50 + 192) = &unk_1F49F3288;
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v100 = v55;
  *(inited + 280) = v54;
  *(inited + 304) = v55;
  *(inited + 312) = @"Output";
  v56 = swift_allocObject();
  *(v56 + 16) = v99;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = v52;
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 1;
  *(v56 + 120) = v51;
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438();
  v98 = v59;
  v60 = sub_1CA94C438();
  v62 = v61;
  *&v99 = &v97;
  MEMORY[0x1EEE9AC00](v60);
  v63 = (&v97 - v106);
  sub_1CA948D98();
  v64 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v97 - v105;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 144) = sub_1CA2F9F14(v58, v98, v60, v62, 0, 0, v63, v65);
  *(v56 + 168) = v104;
  *(v56 + 176) = 0x7365707954;
  *(v56 + 216) = v103;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 192) = &unk_1F49F32B8;
  *(inited + 320) = sub_1CA94C1E8();
  v67 = v101;
  *(inited + 344) = v100;
  *(inited + 352) = @"DisabledOnPlatforms";
  v68 = *(v67 + 16);
  if (v68)
  {
    v110 = MEMORY[0x1E69E7CC0];
    v69 = @"DisabledOnPlatforms";
    sub_1CA271524();
    v71 = v109;
    v70 = v110;
    v72 = (v67 + 32);
    do
    {
      v73 = *v72;
      v74 = sub_1CA94C3A8();
      v76 = v75;
      v110 = v70;
      v77 = *(v70 + 16);
      if (v77 >= *(v70 + 24) >> 1)
      {
        sub_1CA271524();
        v70 = v110;
      }

      *(v70 + 16) = v77 + 1;
      v78 = v70 + 16 * v77;
      *(v78 + 32) = v74;
      *(v78 + 40) = v76;
      ++v72;
      --v68;
    }

    while (v68);
  }

  else
  {
    v79 = @"DisabledOnPlatforms";
    v70 = MEMORY[0x1E69E7CC0];
    v71 = v109;
  }

  v109 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  *(inited + 360) = v70;
  *(inited + 384) = v103;
  *(inited + 392) = @"Parameters";
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v102;
  *(inited + 424) = v80;
  *(inited + 432) = @"ParameterSummary";
  v81 = @"Parameters";
  sub_1CA94C218();
  v82 = @"ParameterSummary";
  v83 = sub_1CA94C438();
  v85 = v84;
  v86 = sub_1CA94C438();
  v88 = v87;
  v106 = &v97;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v97 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  v90 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v97 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v83, v85, v86, v88, 0, 0, v89, v92);
  v95 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 464) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v95;
  type metadata accessor for Key(0);
  sub_1CA2FA080(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2F9F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = sub_1CA94C368();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_1CA94C368();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_1CA94C368();

LABEL_6:
  v17 = sub_1CA948D88();
  v18 = sub_1CA948B48();
  v19 = [v9 initWithKey:v14 defaultValue:v15 table:v16 locale:v17 bundleURL:v18];

  v20 = sub_1CA948BA8();
  OUTLINED_FUNCTION_7_2(v20);
  (*(v21 + 8))(a8);
  v22 = sub_1CA948E58();
  OUTLINED_FUNCTION_7_2(v22);
  (*(v23 + 8))(a7);
  return v19;
}

uint64_t sub_1CA2FA080(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CA2FA0FC()
{
  sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"Discoverable";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 80) = 0;
  *(inited + 104) = v2;
  *(inited + 112) = @"Name";
  v3 = @"ActionClass";
  v4 = @"Discoverable";
  v5 = @"Name";
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v15, v20);
  *(inited + 144) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v22;
  v23 = sub_1CA94C368();
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 152) = v23;
  *(inited + 160) = 0xD00000000000001ELL;
  *(inited + 168) = 0x80000001CA9A12E0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2FA458()
{
  v134 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9A1310;
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
  v141 = v12;
  v143 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v123 - v143;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v140 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v142 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v139 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v123 - v139;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v138 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  *&v137 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v135 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v136 = &v123;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v123 - v143;
  sub_1CA948D98();
  v30 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v123 - v139;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v135, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v138;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v137;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000001CA99B480;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6C6C69662E657965;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v137 = xmmword_1CA981350;
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x7475706E494657;
  *(v36 + 104) = 0xE700000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  v38 = v37;
  *(v36 + 184) = 0xE500000000000000;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v133;
  *(v36 + 192) = &unk_1F49F3338;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v38;
  *(inited + 312) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v136 = &v123;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v123 - v143;
  sub_1CA948D98();
  v53 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v123 - v139;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v138;
  *(inited + 352) = @"Parameters";
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v136 = swift_allocObject();
  *(v136 + 1) = xmmword_1CA981360;
  v135 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = v137;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000019;
  *(v56 + 48) = 0x80000001CA99B030;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"Key";
  *(v56 + 80) = 0x7475706E494657;
  *(v56 + 88) = 0xE700000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Label";
  v58 = @"Class";
  v59 = @"Key";
  v60 = @"Label";
  v129 = v58;
  v128 = v59;
  v130 = v60;
  v61 = @"Parameters";
  v62 = sub_1CA94C438();
  v125 = v63;
  v126 = v62;
  v124 = sub_1CA94C438();
  v65 = v64;
  v127 = &v123;
  MEMORY[0x1EEE9AC00](v124);
  v66 = &v123 - v143;
  sub_1CA948D98();
  v67 = v140;
  v68 = [v140 bundleURL];
  v123 = &v123;
  MEMORY[0x1EEE9AC00](v68);
  v69 = v139;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 120) = sub_1CA2F9F14(v126, v125, v124, v65, 0, 0, v66, &v123 - v69);
  v71 = v138;
  *(v56 + 144) = v138;
  *(v56 + 152) = @"Placeholder";
  v72 = @"Placeholder";
  v73 = sub_1CA94C438();
  v125 = v74;
  v126 = v73;
  v75 = sub_1CA94C438();
  v124 = v76;
  v127 = &v123;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v123 - v143;
  sub_1CA948D98();
  v78 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v126, v125, v75, v124, 0, 0, v77, &v123 - v69);
  *(v56 + 184) = v71;
  *(v56 + 160) = v80;
  _s3__C3KeyVMa_0(0);
  v127 = v81;
  v126 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v136[4] = sub_1CA2F864C();
  v82 = swift_allocObject();
  *(v82 + 16) = v137;
  *(v82 + 32) = v129;
  *(v82 + 40) = 0xD000000000000011;
  *(v82 + 48) = 0x80000001CA99E620;
  v83 = MEMORY[0x1E69E6158];
  v84 = v128;
  *(v82 + 64) = MEMORY[0x1E69E6158];
  *(v82 + 72) = v84;
  *(v82 + 80) = 0xD00000000000001BLL;
  *(v82 + 88) = 0x80000001CA9A13D0;
  v85 = v130;
  *(v82 + 104) = v83;
  *(v82 + 112) = v85;
  v86 = sub_1CA94C438();
  v131 = v87;
  v88 = sub_1CA94C438();
  v90 = v89;
  *&v137 = &v123;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v123 - v143;
  sub_1CA948D98();
  v92 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v123 - v139;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v82 + 120) = sub_1CA2F9F14(v86, v131, v88, v90, 0, 0, v91, v93);
  *(v82 + 144) = v138;
  *(v82 + 152) = @"RequiredResources";
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1CA9813B0;
  v144 = 1;
  v145 = 0;
  v96 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v97 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v144);
  *(v95 + 32) = v98;
  *(v82 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v82 + 160) = v95;
  sub_1CA94C1E8();
  v99 = sub_1CA2F864C();
  v100 = v136;
  v136[5] = v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v100;
  *(inited + 384) = v101;
  *(inited + 392) = @"ParameterSummary";
  v102 = @"ParameterSummary";
  v103 = sub_1CA94C438();
  v105 = v104;
  v106 = sub_1CA94C438();
  v108 = v107;
  v138 = &v123;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v123 - v143;
  sub_1CA948D98();
  v110 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v123 - v139;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  v114 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v115 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v114;
  *(inited + 424) = v115;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F49F3368;
  v116 = v133;
  *(inited + 464) = v133;
  *(inited + 472) = @"RequiresUnlock";
  *(inited + 480) = 1;
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 512) = @"UserInterfaceClasses";
  v117 = @"RequiredResources";
  v118 = @"RequiresUnlock";
  v119 = @"UserInterfaceClasses";
  v120 = sub_1CA94C1E8();
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 520) = v120;
  *(inited + 552) = @"UserInterfaces";
  *(inited + 584) = v116;
  *(inited + 560) = &unk_1F49F33F8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v121 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2FB450()
{
  v112 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
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
  v117 = v12;
  v119 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v105 - v119;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v116 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v118 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v115 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v105 - v115;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v114 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v21 = swift_initStackObject();
  v113 = xmmword_1CA981350;
  *(v21 + 16) = xmmword_1CA981350;
  v22 = MEMORY[0x1E69E6370];
  *(v21 + 32) = 0xD00000000000001DLL;
  *(v21 + 40) = 0x80000001CA99DA80;
  *(v21 + 48) = 1;
  *(v21 + 72) = v22;
  *(v21 + 80) = 0xD000000000000010;
  *(v21 + 88) = 0x80000001CA993290;
  *(v21 + 96) = 0xD000000000000013;
  *(v21 + 104) = 0x80000001CA9A1520;
  v23 = MEMORY[0x1E69E6158];
  *(v21 + 120) = MEMORY[0x1E69E6158];
  *(v21 + 128) = 1701667150;
  *(v21 + 136) = 0xE400000000000000;
  *(v21 + 144) = 0x6E6E6F436B736544;
  *(v21 + 152) = 0xEB00000000746365;
  *(v21 + 168) = v23;
  strcpy((v21 + 176), "TeamIdentifier");
  *(v21 + 216) = v23;
  *(v21 + 191) = -18;
  *(v21 + 192) = 0x3544585638363556;
  *(v21 + 200) = 0xEA00000000003850;
  v24 = @"AppDefinition";
  v25 = sub_1CA94C1E8();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v110 = v26;
  *(inited + 120) = v25;
  *(inited + 144) = v26;
  *(inited + 152) = @"Description";
  v109 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1CA981310;
  *(v27 + 32) = @"DescriptionSummary";
  v28 = @"Description";
  v29 = @"DescriptionSummary";
  v30 = sub_1CA94C438();
  v107 = v31;
  v32 = sub_1CA94C438();
  v34 = v33;
  v108 = &v105;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v105 - v119;
  sub_1CA948D98();
  v36 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v105 - v115;
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39 = sub_1CA2F9F14(v30, v107, v32, v34, 0, 0, v35, v37);
  *(v27 + 64) = v114;
  *(v27 + 40) = v39;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v40 = v109;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v40;
  *(inited + 192) = @"Discontinued";
  *(inited + 200) = 1;
  v41 = MEMORY[0x1E69E6370];
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 232) = @"Input";
  v42 = swift_allocObject();
  *(v42 + 16) = v113;
  *(v42 + 32) = 0x656C7069746C754DLL;
  *(v42 + 40) = 0xE800000000000000;
  *(v42 + 48) = 1;
  *(v42 + 72) = v41;
  strcpy((v42 + 80), "ParameterKey");
  *(v42 + 93) = 0;
  *(v42 + 94) = -5120;
  *(v42 + 96) = 0x7475706E494657;
  *(v42 + 104) = 0xE700000000000000;
  *(v42 + 120) = MEMORY[0x1E69E6158];
  *(v42 + 128) = 0x6465726975716552;
  *(v42 + 136) = 0xE800000000000000;
  *(v42 + 144) = 1;
  *(v42 + 168) = v41;
  *(v42 + 176) = 0x7365707954;
  *(v42 + 184) = 0xE500000000000000;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v42 + 216) = v111;
  *(v42 + 192) = &unk_1F49F3428;
  v43 = @"Discontinued";
  v44 = @"Input";
  *(inited + 240) = sub_1CA94C1E8();
  *(inited + 264) = v110;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v41;
  *(inited + 312) = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438();
  v49 = v48;
  v50 = sub_1CA94C438();
  v52 = v51;
  v110 = &v105;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v105 - v119;
  sub_1CA948D98();
  v54 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v105 - v115;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  *(inited + 344) = v114;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v110 = swift_allocObject();
  *(v110 + 1) = xmmword_1CA9813B0;
  v109 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_allocObject();
  *(v57 + 16) = v113;
  *(v57 + 32) = @"Class";
  *(v57 + 40) = 0xD000000000000019;
  *(v57 + 48) = 0x80000001CA99B030;
  v58 = MEMORY[0x1E69E6158];
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"Key";
  *(v57 + 80) = 0x7475706E494657;
  *(v57 + 88) = 0xE700000000000000;
  *(v57 + 104) = v58;
  *(v57 + 112) = @"Label";
  v59 = @"Parameters";
  v60 = @"Class";
  v61 = @"Key";
  v62 = @"Label";
  v63 = sub_1CA94C438();
  v107 = v64;
  v108 = v63;
  v65 = sub_1CA94C438();
  v106 = v66;
  *&v113 = &v105;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v105 - v119;
  sub_1CA948D98();
  v68 = v116;
  v69 = [v116 bundleURL];
  v105 = &v105;
  MEMORY[0x1EEE9AC00](v69);
  v70 = v115;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 120) = sub_1CA2F9F14(v108, v107, v65, v106, 0, 0, v67, &v105 - v70);
  v72 = v114;
  *(v57 + 144) = v114;
  *(v57 + 152) = @"Placeholder";
  v73 = @"Placeholder";
  v74 = sub_1CA94C438();
  v107 = v75;
  v108 = v74;
  v76 = sub_1CA94C438();
  v106 = v77;
  *&v113 = &v105;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v105 - v119;
  sub_1CA948D98();
  v79 = [v68 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v81 = sub_1CA2F9F14(v108, v107, v76, v106, 0, 0, v78, &v105 - v70);
  *(v57 + 184) = v72;
  *(v57 + 160) = v81;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v82 = sub_1CA2F864C();
  v83 = v110;
  v110[4] = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v83;
  *(inited + 384) = v84;
  *(inited + 392) = @"ParameterSummary";
  v85 = @"ParameterSummary";
  v86 = sub_1CA94C438();
  v88 = v87;
  v89 = sub_1CA94C438();
  v91 = v90;
  v114 = &v105;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v105 - v119;
  sub_1CA948D98();
  v93 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v105 - v115;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v86, v88, v89, v91, 0, 0, v92, v94);
  v97 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v98 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v97;
  *(inited + 424) = v98;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v111;
  *(inited + 440) = &unk_1F49F3468;
  v99 = @"RequiredResources";
  *(inited + 472) = sub_1CA94C368();
  v100 = sub_1CA94C1E8();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 480) = v100;
  *(inited + 504) = v101;
  *(inited + 512) = @"UserInterfaceClasses";
  v102 = @"UserInterfaceClasses";
  v103 = sub_1CA94C1E8();
  *(inited + 544) = v101;
  *(inited + 520) = v103;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2FC30C()
{
  v159 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A16F0;
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
  v166 = v12;
  v167 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v148 - v167;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v165 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v164 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v168 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v148 - v168;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v163 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v162 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v160 = sub_1CA94C438();
  v158 = v27;
  v28 = sub_1CA94C438();
  v157 = v29;
  v161 = &v148;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v148 - v167;
  sub_1CA948D98();
  v31 = v165;
  v32 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v168;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v160, v158, v28, v157, 0, 0, v30, &v148 - v33);
  v35 = v163;
  *(v24 + 64) = v163;
  *(v24 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v160 = sub_1CA94C438();
  v158 = v37;
  v157 = sub_1CA94C438();
  v39 = v38;
  v161 = &v148;
  MEMORY[0x1EEE9AC00](v157);
  v40 = &v148 - v167;
  sub_1CA948D98();
  v41 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v160, v158, v157, v39, 0, 0, v40, &v148 - v33);
  *(v24 + 104) = v35;
  *(v24 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v162;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v44;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v45 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x662E7265646C6F66;
  *(inited + 248) = 0xEB000000006C6C69;
  *(inited + 264) = v45;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v45;
  *(inited + 312) = @"Input";
  v46 = v45;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = 0x656C7069746C754DLL;
  *(v47 + 40) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 48) = 1;
  *(v47 + 72) = v48;
  strcpy((v47 + 80), "ParameterKey");
  *(v47 + 93) = 0;
  *(v47 + 94) = -5120;
  *(v47 + 96) = 0x7265646C6F464657;
  *(v47 + 104) = 0xE800000000000000;
  *(v47 + 120) = v46;
  *(v47 + 128) = 0x6465726975716552;
  *(v47 + 136) = 0xE800000000000000;
  *(v47 + 144) = 1;
  *(v47 + 168) = v48;
  *(v47 + 176) = 0x7365707954;
  *(v47 + 184) = 0xE500000000000000;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 216) = v162;
  *(v47 + 192) = &unk_1F49F3588;
  v49 = @"IconColor";
  v50 = @"IconSymbol";
  v51 = @"IconSymbolColor";
  v52 = @"Input";
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v161 = v54;
  *(inited + 320) = v53;
  *(inited + 344) = v54;
  *(inited + 352) = @"Name";
  v55 = @"Name";
  v56 = sub_1CA94C438();
  v156 = v57;
  v157 = v56;
  v58 = sub_1CA94C438();
  v60 = v59;
  v158 = &v148;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v148 - v167;
  sub_1CA948D98();
  v62 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v148 - v168;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v157, v156, v58, v60, 0, 0, v61, v63);
  v65 = v163;
  *(inited + 384) = v163;
  *(inited + 392) = @"Output";
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CA9813C0;
  *(v66 + 32) = 0x656C7069746C754DLL;
  *(v66 + 40) = 0xE800000000000000;
  *(v66 + 48) = 1;
  *(v66 + 72) = MEMORY[0x1E69E6370];
  *(v66 + 80) = 0x614E74757074754FLL;
  *(v66 + 88) = 0xEA0000000000656DLL;
  v67 = @"Output";
  v68 = sub_1CA94C438();
  v157 = v69;
  v158 = v68;
  v156 = sub_1CA94C438();
  v71 = v70;
  v160 = &v148;
  MEMORY[0x1EEE9AC00](v156);
  v72 = &v148 - v167;
  sub_1CA948D98();
  v73 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v148 - v168;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 96) = sub_1CA2F9F14(v158, v157, v156, v71, 0, 0, v72, v74);
  *(v66 + 120) = v65;
  *(v66 + 128) = 0x7365707954;
  v76 = v162;
  *(v66 + 168) = v162;
  *(v66 + 136) = 0xE500000000000000;
  *(v66 + 144) = &unk_1F49F35B8;
  v77 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v161;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v161 = swift_allocObject();
  *(v161 + 1) = xmmword_1CA981360;
  v160 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_allocObject();
  v154 = xmmword_1CA981370;
  *(v78 + 16) = xmmword_1CA981370;
  *(v78 + 32) = @"Class";
  *(v78 + 40) = 0xD000000000000015;
  *(v78 + 48) = 0x80000001CA99B1E0;
  *(v78 + 64) = v77;
  *(v78 + 72) = @"FilePickerSupportedTypes";
  *(v78 + 80) = &unk_1F49F35E8;
  *(v78 + 104) = v76;
  *(v78 + 112) = @"Key";
  *(v78 + 120) = 0x7265646C6F464657;
  *(v78 + 128) = 0xE800000000000000;
  *(v78 + 144) = v77;
  *(v78 + 152) = @"Label";
  v79 = @"Class";
  v80 = @"Key";
  v81 = @"Label";
  v153 = v79;
  v156 = v80;
  v157 = v81;
  v82 = @"Parameters";
  v83 = @"FilePickerSupportedTypes";
  v84 = sub_1CA94C438();
  v150 = v85;
  v151 = v84;
  v86 = sub_1CA94C438();
  v149 = v87;
  v152 = &v148;
  MEMORY[0x1EEE9AC00](v86);
  v158 = inited;
  v88 = v167;
  sub_1CA948D98();
  v89 = v165;
  v90 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v148 - v168;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 160) = sub_1CA2F9F14(v151, v150, v86, v149, 0, 0, &v148 - v88, v91);
  v93 = v163;
  *(v78 + 184) = v163;
  *(v78 + 192) = @"Placeholder";
  v94 = @"Placeholder";
  v95 = sub_1CA94C438();
  v150 = v96;
  v151 = v95;
  v149 = sub_1CA94C438();
  v98 = v97;
  v152 = &v148;
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948D98();
  v99 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v148 - v168;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v151, v150, v149, v98, 0, 0, &v148 - v88, v100);
  *(v78 + 224) = v93;
  *(v78 + 200) = v102;
  _s3__C3KeyVMa_0(0);
  v152 = v103;
  v151 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v161[4] = sub_1CA2F864C();
  v104 = swift_allocObject();
  *(v104 + 16) = v154;
  *(v104 + 32) = v153;
  *(v104 + 40) = 0xD000000000000011;
  *(v104 + 48) = 0x80000001CA99E620;
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = @"DefaultValue";
  *(v104 + 80) = 0;
  *(v104 + 104) = MEMORY[0x1E69E6370];
  *(v104 + 112) = @"Description";
  v105 = @"DefaultValue";
  v106 = @"Description";
  v107 = sub_1CA94C438();
  v153 = v108;
  *&v154 = v107;
  v109 = sub_1CA94C438();
  v150 = v110;
  v155 = &v148;
  MEMORY[0x1EEE9AC00](v109);
  v111 = &v148 - v88;
  sub_1CA948D98();
  v112 = v165;
  v113 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v148 - v168;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v104 + 120) = sub_1CA2F9F14(v154, v153, v109, v150, 0, 0, v111, v114);
  v116 = v156;
  *(v104 + 144) = v163;
  *(v104 + 152) = v116;
  *(v104 + 160) = 0x7669737275636552;
  *(v104 + 168) = 0xE900000000000065;
  v117 = v157;
  *(v104 + 184) = MEMORY[0x1E69E6158];
  *(v104 + 192) = v117;
  v118 = sub_1CA94C438();
  v155 = v119;
  v156 = v118;
  v120 = sub_1CA94C438();
  v122 = v121;
  v157 = &v148;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v148 - v167;
  sub_1CA948D98();
  v124 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v148 - v168;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v156, v155, v120, v122, 0, 0, v123, v125);
  *(v104 + 224) = v163;
  *(v104 + 200) = v127;
  sub_1CA94C1E8();
  v128 = sub_1CA2F864C();
  v129 = v161;
  v161[5] = v128;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v131 = v158;
  v158[55] = v129;
  v131[58] = v130;
  v131[59] = @"ParameterSummary";
  v132 = @"ParameterSummary";
  v133 = sub_1CA94C438();
  v135 = v134;
  v136 = sub_1CA94C438();
  v138 = v137;
  v163 = &v148;
  MEMORY[0x1EEE9AC00](v136);
  v139 = &v148 - v167;
  sub_1CA948D98();
  v140 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v148 - v168;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v133, v135, v136, v138, 0, 0, v139, v141);
  v144 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v145 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v131[60] = v144;
  v131[63] = v145;
  v131[64] = @"RemoteExecuteOnPlatforms";
  v131[68] = v162;
  v131[65] = &unk_1F49F3618;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v146 = @"RemoteExecuteOnPlatforms";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA2FD680()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0xD000000000000010;
  *(inited + 128) = 0x80000001CA9A19F0;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000017;
  *(inited + 168) = 0x80000001CA9A1A10;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA2FD878()
{
  OUTLINED_FUNCTION_0();
  v0[14] = v1;
  v0[15] = v2;
  v3 = sub_1CA94AD98();
  v0[16] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[17] = v4;
  v6 = *(v5 + 64);
  v0[18] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94AD88();
  v0[19] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[20] = v8;
  v10 = *(v9 + 64);
  v0[21] = OUTLINED_FUNCTION_45();
  v11 = sub_1CA94ADC8();
  v0[22] = v11;
  OUTLINED_FUNCTION_12(v11);
  v0[23] = v12;
  v14 = *(v13 + 64);
  v0[24] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1CA2FD9B8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[14];
  v5 = OUTLINED_FUNCTION_19_5();
  v6(v5);
  v7 = *(v2 + 88);
  v8 = OUTLINED_FUNCTION_3_3();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x1E69DB0B0])
  {
    v11 = v0[24];
    v12 = v0[22];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];
    v16 = OUTLINED_FUNCTION_14_1(v0[23]);
    v17(v16);
    v0[32] = *v11;
    swift_projectBox();
    v18 = OUTLINED_FUNCTION_22();
    v19(v18);
    v20 = swift_task_alloc();
    v0[33] = v20;
    *v20 = v0;
    v20[1] = sub_1CA2FE09C;
    v21 = v0[18];
    v22 = v0[15];

    return sub_1CA6A3220(v21);
  }

  if (v10 == *MEMORY[0x1E69DB0A0])
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    sub_1CA2FFC58();
    v24 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_11_8(v24, v25);
LABEL_7:
    OUTLINED_FUNCTION_4_10();

    OUTLINED_FUNCTION_5();

    return v26();
  }

  if (v10 == *MEMORY[0x1E69DB098])
  {
    v27 = v0[24];
    v28 = v0[22];
    v29 = OUTLINED_FUNCTION_14_1(v0[23]);
    v30(v29);
    v31 = *v27;
    v0[29] = *v27;
    v33 = *(v31 + 32);
    v32 = *(v31 + 40);
    v34 = swift_task_alloc();
    v0[30] = v34;
    *v34 = v0;
    v35 = sub_1CA2FDF24;
  }

  else if (v10 == *MEMORY[0x1E69DB088])
  {
    v36 = v0[24];
    v38 = v0[21];
    v37 = v0[22];
    v39 = v0[19];
    v40 = v0[20];
    v41 = OUTLINED_FUNCTION_14_1(v0[23]);
    v42(v41);
    v0[25] = *v36;
    swift_projectBox();
    v43 = OUTLINED_FUNCTION_22();
    v44(v43);
    v33 = sub_1CA94AD78();
    v32 = v45;
    v0[26] = v45;
    v34 = swift_task_alloc();
    v0[27] = v34;
    *v34 = v0;
    v35 = sub_1CA2FDD80;
  }

  else
  {
    v47 = v0[23];
    v46 = v0[24];
    v48 = v0[22];
    if (v10 != *MEMORY[0x1E69DB0A8])
    {
      sub_1CA2FFC58();
      OUTLINED_FUNCTION_127();
      *v52 = 0;
      swift_willThrow();
      (*(v47 + 8))(v46, v48);
      goto LABEL_7;
    }

    (*(v47 + 96))(v0[24], v0[22]);
    v49 = *v46;
    v0[35] = *v46;
    v33 = *(v49 + 16);
    v32 = *(v49 + 24);
    v34 = swift_task_alloc();
    v0[36] = v34;
    *v34 = v0;
    v35 = sub_1CA2FE2AC;
  }

  v34[1] = v35;
  v51 = v0[14];
  v50 = v0[15];

  return sub_1CA2FE59C(v51, v50, v33, v32);
}

uint64_t sub_1CA2FDD80()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 216);
  v8 = *(v7 + 208);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v11 + 224) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CA2FDE9C()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_20_5();
  v2(v1);

  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_4_10();

  v4 = OUTLINED_FUNCTION_1_3();

  return v5(v4);
}

uint64_t sub_1CA2FDF24()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v9 + 248) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA2FE024()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 232);

  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_4_10();

  v3 = OUTLINED_FUNCTION_1_3();

  return v4(v3);
}

uint64_t sub_1CA2FE09C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v9 + 272) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA2FE19C()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_18_7();
  v2(v1);

  v3 = *(v0 + 72);
  OUTLINED_FUNCTION_4_10();

  v4 = OUTLINED_FUNCTION_1_3();

  return v5(v4);
}

uint64_t sub_1CA2FE224()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_18_7();
  v2(v1);

  v3 = *(v0 + 272);
  OUTLINED_FUNCTION_4_10();

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA2FE2AC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v9 + 296) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA2FE3AC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 280);

  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_4_10();

  v3 = OUTLINED_FUNCTION_1_3();

  return v4(v3);
}

uint64_t sub_1CA2FE424()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_20_5();
  v2(v1);

  v3 = *(v0 + 224);
  OUTLINED_FUNCTION_4_10();

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA2FE4AC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 232);

  v2 = *(v0 + 248);
  OUTLINED_FUNCTION_4_10();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA2FE524()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 280);

  v2 = *(v0 + 296);
  OUTLINED_FUNCTION_4_10();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA2FE59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1CA94AD98();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1CA949328();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_1CA94AF18();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_1CA94B068();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v17 = sub_1CA94AEE8();
  v4[18] = v17;
  v18 = *(v17 - 8);
  v4[19] = v18;
  v19 = *(v18 + 64) + 15;
  v4[20] = swift_task_alloc();
  v20 = sub_1CA94AD48();
  v4[21] = v20;
  v21 = *(v20 - 8);
  v4[22] = v21;
  v22 = *(v21 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA2FE838, 0, 0);
}

uint64_t sub_1CA2FE838()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for TypedValueConversionContext(0) + 20));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 8);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_1CA2FE978;
  v8 = v0[24];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v8, v9, v10, v3, v4);
}

uint64_t sub_1CA2FE978()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA2FEA74()
{
  v2 = v0 + 24;
  v1 = v0[24];
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[22];
  v6 = OUTLINED_FUNCTION_19_5();
  v7(v6);
  v8 = *(v5 + 88);
  v9 = OUTLINED_FUNCTION_3_3();
  v11 = v10(v9);
  if (v11 != *MEMORY[0x1E69DAFA8])
  {
    v28 = v11;
    if (v11 == *MEMORY[0x1E69DAF98])
    {
      v29 = v0[22];
      v30 = v0[20];
      v31 = v0[18];
      v32 = v0[19];
      v34 = v0[16];
      v33 = v0[17];
      v35 = v0[15];
      (*(v29 + 96))(v0[23], v0[21]);
      v36 = *(v32 + 32);
      v37 = OUTLINED_FUNCTION_13_0();
      v38(v37);
      (*(v34 + 104))(v33, *MEMORY[0x1E69DB238], v35);
      v39 = sub_1CA94AEC8();
      v40 = *(v34 + 8);
      v41 = OUTLINED_FUNCTION_70();
      v42(v41);
      v43 = (v32 + 8);
      v44 = v0[20];
      v45 = v0[18];
      if (v39)
      {
        v47 = v0[4];
        v46 = v0[5];
        sub_1CA25B3D0(0, &qword_1EC4442D0, 0x1E69AC818);
        sub_1CA94C218();
        sub_1CA4ECDAC(v47, v46);
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x1E69AC7F0]) init];
      }

      (*v43)(v44, v45);
      v53 = *(v29 + 8);
LABEL_12:
      v54 = *v2;
      OUTLINED_FUNCTION_12_7();
      v53();

      v55 = v0[1];
      OUTLINED_FUNCTION_24();

      __asm { BRAA            X2, X16 }
    }

    if (v11 == *MEMORY[0x1E69DAF80])
    {
      v48 = v0[24];
      v49 = v0[21];
      v50 = v0[22];
      v52 = v0[4];
      v51 = v0[5];
      sub_1CA25B3D0(0, &qword_1EC4442C8, 0x1E69AC890);
      sub_1CA94C218();
      sub_1CA4ECDB8(v52, v51);
      v53 = *(v50 + 8);
      (v53)(v48, v49);
      v2 = v0 + 23;
      goto LABEL_12;
    }

    if (v11 == *MEMORY[0x1E69DAF90])
    {
      v59 = v0[23];
      v58 = v0[24];
      v60 = v0[21];
      v61 = v0[22];
      sub_1CA2FFC58();
      v62 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_11_8(v62, v63);
      v64 = *(v61 + 8);
      v64(v58, v60);
      v65 = OUTLINED_FUNCTION_70();
      (v64)(v65);
    }

    else if (v11 == *MEMORY[0x1E69DAFA0])
    {
      v66 = v0[23];
      v67 = v0[21];
      v69 = v0[13];
      v68 = v0[14];
      v71 = v0[11];
      v70 = v0[12];
      v72 = v0[9];
      v73 = v0[10];
      v74 = OUTLINED_FUNCTION_14_1(v0[22]);
      v75(v74);
      v76 = *(v69 + 32);
      v77 = OUTLINED_FUNCTION_13_0();
      v78(v77);
      v79 = sub_1CA949338();
      sub_1CA94AF08();
      sub_1CA949318();
      v80 = sub_1CA3118B4(v71, v79);

      v81 = *(v73 + 8);
      v82 = OUTLINED_FUNCTION_70();
      v83(v82);
      if (v80)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v84 = v0[22];
          (*(v0[13] + 8))(v0[14], v0[12]);
          v53 = *(v84 + 8);
          goto LABEL_12;
        }
      }

      v94 = v0[24];
      v95 = v0[21];
      v96 = v0[22];
      v98 = v0[13];
      v97 = v0[14];
      v99 = v0[12];
      sub_1CA2FFC58();
      v100 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_11_8(v100, v101);
      (*(v98 + 8))(v97, v99);
      (*(v96 + 8))(v94, v95);
    }

    else
    {
      v85 = v0[22];
      v86 = *MEMORY[0x1E69DAF88];
      sub_1CA2FFC58();
      OUTLINED_FUNCTION_127();
      v88 = (v85 + 8);
      v89 = v0[23];
      v90 = v0[24];
      v91 = v0[21];
      *v87 = v28 == v86;
      swift_willThrow();
      v92 = *v88;
      (*v88)(v90, v91);
      v93 = OUTLINED_FUNCTION_70();
      v92(v93);
    }

    OUTLINED_FUNCTION_6_11();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  v12 = v0[23];
  v13 = v0[21];
  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[6];
  v17 = OUTLINED_FUNCTION_14_1(v0[22]);
  v18(v17);
  v19 = *(v15 + 32);
  v20 = OUTLINED_FUNCTION_13_0();
  v21(v20);
  v22 = swift_task_alloc();
  v0[27] = v22;
  *v22 = v0;
  v22[1] = sub_1CA2FF0E8;
  v23 = v0[8];
  v24 = v0[3];
  OUTLINED_FUNCTION_24();

  return sub_1CA6A3220(v25);
}

uint64_t sub_1CA2FF044()
{
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_6_11();

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA2FF0E8()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 216);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 232) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA2FF1F8()
{
  v2 = v1[22];
  (*(v1[7] + 8))(v1[8], v1[6]);
  v3 = *(v2 + 8);
  v4 = v1[29];
  OUTLINED_FUNCTION_12_7();
  v5(v0);

  v6 = OUTLINED_FUNCTION_1_3();

  return v7(v6);
}

uint64_t sub_1CA2FF2DC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_3_3();
  v6(v5);
  v7 = v0[28];
  OUTLINED_FUNCTION_6_11();

  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA2FF3B4()
{
  OUTLINED_FUNCTION_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080) - 8) + 64);
  v0[7] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94B1C8();
  v0[8] = v5;
  OUTLINED_FUNCTION_12(v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v0[10] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94B168();
  v0[11] = v9;
  OUTLINED_FUNCTION_12(v9);
  v0[12] = v10;
  v12 = *(v11 + 64);
  v0[13] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CA2FF4DC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[6];
  v5 = *(type metadata accessor for LinkValueTransformContext(0) + 20);
  MEMORY[0x1CCA9FFE0]();
  v6 = (*(v2 + 88))(v1, v3);
  if (v6 == *MEMORY[0x1E69DB2E8])
  {
    v7 = v0[10];
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[7];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_1CA94AD88();
    v11 = swift_allocBox();
    v0[2] = v11;
    v0[3] = v12;
    v0[14] = v11;
    (*(v9 + 16))(v7, v4 + v5, v8);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v8);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_1CA2FF714;
    v14 = v0[6];

    return LinkValueTransformContext.sourceTypeName.getter();
  }

  else if (v6 == *MEMORY[0x1E69DB2E0])
  {
    v17 = v0[4];
    v16 = v0[5];
    sub_1CA94B0F8();
    sub_1CA94CB58();

    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[7];

    OUTLINED_FUNCTION_5();

    return v21();
  }

  else
  {
    v22 = v0[11];

    return sub_1CA94D7E8();
  }
}

uint64_t sub_1CA2FF714()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  v10 = *(v9 + 120);
  v11 = *v1;
  OUTLINED_FUNCTION_13();
  *v12 = v11;
  v7[16] = v0;

  if (v0)
  {
    v14 = v7[9];
    v13 = v7[10];
    v15 = v7[8];
    sub_1CA2FF9AC(v7[7]);
    v16 = *(v14 + 8);
    v17 = OUTLINED_FUNCTION_3_3();
    v18(v17);
  }

  else
  {
    v19 = v7[3];
    v7[17] = v3;
    v7[18] = v5;
    v7[19] = v19;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1CA2FF84C()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[4];
  sub_1CA94AD58();
  *v7 = v4;
  v8 = *MEMORY[0x1E69DB088];
  v9 = sub_1CA94ADC8();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[7];

  OUTLINED_FUNCTION_5();

  return v13();
}

uint64_t sub_1CA2FF928()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[14];
  swift_deallocBox();
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];

  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA2FF9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA2FFA14()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1CA2DF78C;

  return sub_1CA2FF3B4();
}

uint64_t sub_1CA2FFAC0()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA2FFB5C;

  return sub_1CA2FD878();
}

uint64_t sub_1CA2FFB5C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

unint64_t sub_1CA2FFC58()
{
  result = qword_1EC4442C0;
  if (!qword_1EC4442C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4442C0);
  }

  return result;
}

id sub_1CA2FFCE0()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9A1A40;
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
  v124 = v12;
  v125 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v113 - v125;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v121 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v113 - v122;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v120 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v118 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v116 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v117 = &v113;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v113 - v125;
  sub_1CA948D98();
  v30 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v113 - v122;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v116, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v120;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v118;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"DisabledOnPlatforms";
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F36C8;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  v36 = v35;
  v116 = v35;
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v37 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x642E6E6F2E636F64;
  *(inited + 248) = 0xEF6C6C69662E636FLL;
  *(inited + 264) = v37;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v37;
  *(inited + 312) = @"Input";
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 0;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = v37;
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 216) = v36;
  *(v38 + 184) = 0xE500000000000000;
  *(v38 + 192) = &unk_1F49F36F8;
  v40 = @"DisabledOnPlatforms";
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v43 = @"IconSymbolColor";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v118 = v46;
  *(inited + 320) = v45;
  *(inited + 344) = v46;
  *(inited + 352) = @"InputPassthrough";
  *(inited + 360) = 0;
  *(inited + 384) = MEMORY[0x1E69E6370];
  *(inited + 392) = @"Name";
  v47 = @"InputPassthrough";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v113 = v50;
  v114 = v49;
  v51 = sub_1CA94C438();
  v53 = v52;
  v115 = &v113;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v113 - v125;
  sub_1CA948D98();
  v55 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v113 - v122;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v114, v113, v51, v53, 0, 0, v54, v56);
  v58 = v120;
  *(inited + 424) = v120;
  *(inited + 432) = @"Output";
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA9813C0;
  *(v59 + 32) = 0x656C7069746C754DLL;
  *(v59 + 40) = 0xE800000000000000;
  *(v59 + 48) = 1;
  *(v59 + 72) = MEMORY[0x1E69E6370];
  *(v59 + 80) = 0x614E74757074754FLL;
  *(v59 + 88) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v114 = v62;
  v115 = v61;
  v113 = sub_1CA94C438();
  v64 = v63;
  v117 = &v113;
  MEMORY[0x1EEE9AC00](v113);
  v65 = &v113 - v125;
  sub_1CA948D98();
  v66 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v113 - v122;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v115, v114, v113, v64, 0, 0, v65, v67);
  v70 = v116;
  *(v59 + 96) = v69;
  *(v59 + 120) = v58;
  *(v59 + 128) = 0x7365707954;
  *(v59 + 168) = v70;
  *(v59 + 136) = 0xE500000000000000;
  *(v59 + 144) = &unk_1F49F3728;
  v71 = MEMORY[0x1E69E6158];
  *(inited + 440) = sub_1CA94C1E8();
  *(inited + 464) = v118;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1CA981370;
  *(v72 + 32) = @"Class";
  *(v72 + 40) = 0xD000000000000015;
  *(v72 + 48) = 0x80000001CA99B1E0;
  *(v72 + 64) = v71;
  *(v72 + 72) = @"FilePickerSupportedTypes";
  *(v72 + 80) = &unk_1F49F3758;
  *(v72 + 104) = v70;
  *(v72 + 112) = @"Key";
  *(v72 + 120) = 0x7475706E494657;
  *(v72 + 128) = 0xE700000000000000;
  *(v72 + 144) = v71;
  *(v72 + 152) = @"Label";
  v73 = @"Parameters";
  v74 = @"Class";
  v75 = @"FilePickerSupportedTypes";
  v76 = @"Key";
  v77 = @"Label";
  v78 = sub_1CA94C438();
  v114 = v79;
  v115 = v78;
  v80 = sub_1CA94C438();
  v113 = v81;
  v116 = &v113;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v113 - v125;
  sub_1CA948D98();
  v83 = v123;
  v84 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = v122;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 160) = sub_1CA2F9F14(v115, v114, v80, v113, 0, 0, v82, &v113 - v85);
  *(v72 + 184) = v120;
  *(v72 + 192) = @"Placeholder";
  v87 = @"Placeholder";
  v88 = sub_1CA94C438();
  v114 = v89;
  v115 = v88;
  v90 = sub_1CA94C438();
  v113 = v91;
  v116 = &v113;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v113 - v125;
  sub_1CA948D98();
  v93 = [v83 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v115, v114, v90, v113, 0, 0, v92, &v113 - v85);
  *(v72 + 224) = v120;
  *(v72 + 200) = v95;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v96 = sub_1CA2F864C();
  v97 = v118;
  *(v118 + 32) = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v97;
  *(inited + 504) = v98;
  *(inited + 512) = @"ParameterSummary";
  v99 = @"ParameterSummary";
  v100 = sub_1CA94C438();
  v102 = v101;
  v103 = sub_1CA94C438();
  v105 = v104;
  v120 = &v113;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v113 - v125;
  sub_1CA948D98();
  v107 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v113 - v122;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  v111 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v111;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_1CA94C438();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_1CA94C438();
    }

LABEL_9:
    __break(1u);
    return sub_1CA94C438();
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB9F690;

  return v1;
}

id sub_1CA300D18()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDB9F690 = result;
  return result;
}

id sub_1CA300DD8()
{
  v157 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9A1C00;
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
  v172 = v12;
  v175 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v153 - v175;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v171 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v173 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v174 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v153 - v174;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v170 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  *&v169 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v165 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v167 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v168 = &v153;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v153 - v175;
  sub_1CA948D98();
  v33 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v153 - v174;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v167, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v170;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v169;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x662E7265646C6F66;
  *(inited + 248) = 0xEB000000006C6C69;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v39 = v38;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v169 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 0;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x656C69464657;
  *(v40 + 104) = 0xE600000000000000;
  *(v40 + 120) = v39;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v168;
  *(v40 + 192) = &unk_1F49F37C8;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"IconSymbolColor";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v167 = v47;
  *(inited + 320) = v46;
  *(inited + 344) = v47;
  *(inited + 352) = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v162 = v50;
  v163 = v49;
  v51 = sub_1CA94C438();
  v53 = v52;
  v166 = &v153;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v153 - v175;
  sub_1CA948D98();
  v55 = v171;
  v56 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v153 - v174;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v163, v162, v51, v53, 0, 0, v54, v57);
  v59 = v170;
  *(inited + 384) = v170;
  *(inited + 392) = @"Output";
  v60 = swift_allocObject();
  *(v60 + 16) = v169;
  *(v60 + 32) = 0x75736F6C63736944;
  *(v60 + 40) = 0xEF6C6576654C6572;
  *(v60 + 48) = 0x63696C627550;
  *(v60 + 56) = 0xE600000000000000;
  *(v60 + 72) = MEMORY[0x1E69E6158];
  *(v60 + 80) = 0x656C7069746C754DLL;
  *(v60 + 88) = 0xE800000000000000;
  *(v60 + 96) = 0;
  *(v60 + 120) = MEMORY[0x1E69E6370];
  *(v60 + 128) = 0x614E74757074754FLL;
  *(v60 + 136) = 0xEA0000000000656DLL;
  v61 = @"Output";
  v62 = sub_1CA94C438();
  v162 = v63;
  v163 = v62;
  v64 = sub_1CA94C438();
  v66 = v65;
  v166 = &v153;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v153 - v175;
  sub_1CA948D98();
  v68 = [v55 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v153 - v174;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 144) = sub_1CA2F9F14(v163, v162, v64, v66, 0, 0, v67, v69);
  *(v60 + 168) = v59;
  *(v60 + 176) = 0x7365707954;
  v71 = v168;
  *(v60 + 216) = v168;
  *(v60 + 184) = 0xE500000000000000;
  *(v60 + 192) = &unk_1F49F37F8;
  v72 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v167;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_1CA981470;
  v166 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  *(v73 + 16) = v169;
  v155 = 0xD000000000000015;
  v156 = 0x80000001CA99B1E0;
  *(v73 + 32) = @"Class";
  *(v73 + 40) = 0xD000000000000015;
  *(v73 + 48) = 0x80000001CA99B1E0;
  *(v73 + 64) = v72;
  *(v73 + 72) = @"FilePickerSupportedTypes";
  *(v73 + 80) = &unk_1F49F3828;
  *(v73 + 104) = v71;
  *(v73 + 112) = @"Key";
  *(v73 + 120) = 0x656C69464657;
  *(v73 + 128) = 0xE600000000000000;
  *(v73 + 144) = v72;
  *(v73 + 152) = @"Label";
  v74 = @"Class";
  v75 = @"Key";
  v76 = @"Label";
  v77 = v74;
  v78 = v75;
  v79 = v76;
  v80 = @"FilePickerSupportedTypes";
  v160 = v77;
  v161 = v78;
  v162 = v79;
  v154 = v80;
  v81 = @"Parameters";
  v82 = sub_1CA94C438();
  v158 = v83;
  v84 = sub_1CA94C438();
  v86 = v85;
  v159 = &v153;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v153 - v175;
  sub_1CA948D98();
  v88 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v153 - v174;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91 = sub_1CA2F9F14(v82, v158, v84, v86, 0, 0, v87, v89);
  *(v73 + 184) = v170;
  *(v73 + 160) = v91;
  _s3__C3KeyVMa_0(0);
  v159 = v92;
  v158 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v167 + 32) = sub_1CA2F864C();
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1CA981380;
  v95 = v155;
  v94 = v156;
  *(v93 + 32) = v160;
  *(v93 + 40) = v95;
  *(v93 + 48) = v94;
  v96 = MEMORY[0x1E69E6158];
  *(v93 + 64) = MEMORY[0x1E69E6158];
  *(v93 + 72) = @"DefaultsToShortcutsFolder";
  *(v93 + 80) = 1;
  v97 = MEMORY[0x1E69E6370];
  *(v93 + 104) = MEMORY[0x1E69E6370];
  *(v93 + 112) = @"Optional";
  *(v93 + 120) = 0;
  v98 = v154;
  *(v93 + 144) = v97;
  *(v93 + 152) = v98;
  *(v93 + 160) = &unk_1F49F3858;
  v99 = v161;
  *(v93 + 184) = v168;
  *(v93 + 192) = v99;
  *(v93 + 200) = 0x7265646C6F464657;
  *(v93 + 208) = 0xE800000000000000;
  v100 = v162;
  *(v93 + 224) = v96;
  *(v93 + 232) = v100;
  v101 = @"DefaultsToShortcutsFolder";
  v102 = @"Optional";
  v103 = sub_1CA94C438();
  v155 = v104;
  v105 = sub_1CA94C438();
  v107 = v106;
  v156 = &v153;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v153 - v175;
  sub_1CA948D98();
  v109 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v153 - v174;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v103, v155, v105, v107, 0, 0, v108, v110);
  *(v93 + 264) = v170;
  *(v93 + 240) = v112;
  sub_1CA94C1E8();
  *(v167 + 40) = sub_1CA2F864C();
  v113 = swift_allocObject();
  *(v113 + 16) = v169;
  *(v113 + 32) = v160;
  *(v113 + 40) = 0xD000000000000011;
  *&v169 = 0xD000000000000011;
  *(v113 + 48) = 0x80000001CA99E620;
  v114 = MEMORY[0x1E69E6158];
  *(v113 + 64) = MEMORY[0x1E69E6158];
  *(v113 + 72) = @"DefaultValue";
  *(v113 + 80) = 0;
  *(v113 + 104) = MEMORY[0x1E69E6370];
  *(v113 + 112) = v161;
  *(v113 + 120) = 0xD000000000000011;
  *(v113 + 128) = 0x80000001CA9A1CB0;
  v115 = v162;
  *(v113 + 144) = v114;
  *(v113 + 152) = v115;
  v116 = @"DefaultValue";
  v117 = sub_1CA94C438();
  v162 = v118;
  v119 = sub_1CA94C438();
  v121 = v120;
  v163 = &v153;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v153 - v175;
  sub_1CA948D98();
  v123 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v153 - v174;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v117, v162, v119, v121, 0, 0, v122, v124);
  *(v113 + 184) = v170;
  *(v113 + 160) = v126;
  sub_1CA94C1E8();
  v127 = sub_1CA2F864C();
  v128 = v167;
  *(v167 + 48) = v127;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v128;
  *(inited + 464) = v129;
  *(inited + 472) = @"ParameterSummary";
  v130 = @"ParameterSummary";
  v131 = sub_1CA94C438();
  v133 = v132;
  v134 = sub_1CA94C438();
  v136 = v135;
  v170 = &v153;
  MEMORY[0x1EEE9AC00](v134);
  v137 = &v153 - v175;
  sub_1CA948D98();
  v138 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v153 - v174;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v141 = sub_1CA2F9F14(v131, v133, v134, v136, 0, 0, v137, v139);
  v142 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v143 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v142;
  *(inited + 504) = v143;
  *(inited + 512) = @"RemoteExecuteOnPlatforms";
  *(inited + 544) = v168;
  *(inited + 520) = &unk_1F49F3888;
  *(inited + 552) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v144 = swift_allocObject();
  *(v144 + 16) = v165;
  v145 = swift_initStackObject();
  *(v145 + 16) = xmmword_1CA97EDF0;
  *(v145 + 32) = v169;
  *(v145 + 40) = 0x80000001CA99B240;
  v146 = swift_allocObject();
  *(v146 + 16) = v165;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1CA9813C0;
  strcpy((v147 + 32), "WFParameterKey");
  *(v147 + 47) = -18;
  *(v147 + 48) = 0xD000000000000010;
  *(v147 + 56) = 0x80000001CA99B260;
  v148 = MEMORY[0x1E69E6158];
  *(v147 + 72) = MEMORY[0x1E69E6158];
  *(v147 + 80) = 0xD000000000000010;
  *(v147 + 88) = 0x80000001CA993570;
  *(v147 + 96) = 1;
  *(v147 + 120) = MEMORY[0x1E69E6370];
  *(v147 + 128) = 0x72756F7365524657;
  *(v147 + 168) = v148;
  *(v147 + 136) = 0xEF7373616C436563;
  *(v147 + 144) = 0xD00000000000001BLL;
  *(v147 + 152) = 0x80000001CA993590;
  v149 = @"RemoteExecuteOnPlatforms";
  v150 = @"RequiredResources";
  *(v146 + 32) = sub_1CA94C1E8();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v145 + 48) = v146;
  *(v145 + 72) = v151;
  *(v145 + 80) = 0x72756F7365524657;
  *(v145 + 120) = v148;
  *(v145 + 88) = 0xEF7373616C436563;
  *(v145 + 96) = 0xD000000000000019;
  *(v145 + 104) = 0x80000001CA9932D0;
  *(v144 + 32) = sub_1CA94C1E8();
  *(inited + 584) = v151;
  *(inited + 560) = v144;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA302268()
{
  v130 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9A1D90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v134 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v138 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v139 = v11;
  v12 = &v119 - v138;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v135 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v136 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v137 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v119 - v137;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v134, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v134 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v133 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v129 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v131 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v132 = &v119;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v119 - v138;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v119 - v137;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v131, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v134;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v133;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"DisabledOnPlatforms";
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v133 = v35;
  *(inited + 160) = &unk_1F49F38B8;
  *(inited + 184) = v35;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 6579538;
  *(inited + 208) = 0xE300000000000000;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000010;
  *(inited + 248) = 0x80000001CA9A1E40;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"DisabledOnPlatforms";
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v132 = &v119;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v119 - v138;
  sub_1CA948D98();
  v48 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v119 - v137;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v134;
  *(inited + 312) = @"Parameters";
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v132 = swift_allocObject();
  v127 = xmmword_1CA981360;
  *(v132 + 1) = xmmword_1CA981360;
  v131 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  v125 = xmmword_1CA981370;
  *(v51 + 16) = xmmword_1CA981370;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD00000000000001BLL;
  *(v51 + 48) = 0x80000001CA9A1EB0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"DisallowedVariableTypes";
  *(v51 + 80) = &unk_1F49F38E8;
  *(v51 + 104) = v133;
  *(v51 + 112) = @"Key";
  *(v51 + 120) = 0x6574756F524657;
  *(v51 + 128) = 0xE700000000000000;
  *(v51 + 144) = v52;
  *(v51 + 152) = @"Label";
  v53 = @"Class";
  v54 = @"DisallowedVariableTypes";
  v55 = @"Key";
  v56 = @"Label";
  v121 = v53;
  v120 = v54;
  v119 = v55;
  v122 = v56;
  v57 = @"Parameters";
  v58 = sub_1CA94C438();
  v123 = v59;
  v60 = sub_1CA94C438();
  v62 = v61;
  v124 = &v119;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v119 - v138;
  sub_1CA948D98();
  v64 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v119 - v137;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v58, v123, v60, v62, 0, 0, v63, v65);
  *(v51 + 184) = v134;
  *(v51 + 160) = v67;
  v68 = sub_1CA94C368();
  v69 = MEMORY[0x1E69E6158];
  *(v51 + 224) = MEMORY[0x1E69E6158];
  *(v51 + 192) = v68;
  *(v51 + 200) = 0xD000000000000020;
  *(v51 + 208) = 0x80000001CA9A1EF0;
  _s3__C3KeyVMa_0(0);
  v124 = v70;
  v123 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v132[4] = sub_1CA2F864C();
  v71 = swift_initStackObject();
  *(v71 + 16) = v125;
  *(v71 + 32) = v121;
  *(v71 + 40) = 0xD00000000000001ELL;
  *(v71 + 48) = 0x80000001CA9A1F20;
  v72 = v120;
  *(v71 + 64) = v69;
  *(v71 + 72) = v72;
  *(v71 + 80) = &unk_1F49F3918;
  v73 = v119;
  *(v71 + 104) = v133;
  *(v71 + 112) = v73;
  *(v71 + 120) = 0x6E657473694C4657;
  *(v71 + 128) = 0xEF65646F4D676E69;
  v74 = v122;
  *(v71 + 144) = v69;
  *(v71 + 152) = v74;
  v75 = sub_1CA94C438();
  *&v125 = v76;
  v77 = sub_1CA94C438();
  v79 = v78;
  v126 = &v119;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v119 - v138;
  sub_1CA948D98();
  v81 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v119 - v137;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 160) = sub_1CA2F9F14(v75, v125, v77, v79, 0, 0, v80, v82);
  *(v71 + 184) = v134;
  *(v71 + 192) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v84 = swift_allocObject();
  *(v84 + 16) = v129;
  v85 = @"RequiredResources";
  *(v84 + 32) = sub_1CA94C1E8();
  *(v71 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v71 + 200) = v84;
  sub_1CA94C1E8();
  v86 = sub_1CA2F864C();
  v87 = v132;
  v132[5] = v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v87;
  *(inited + 344) = v88;
  *(inited + 352) = @"ParameterSummary";
  v132 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v134 = swift_allocObject();
  *(v134 + 16) = v127;
  v89 = @"ParameterSummary";
  v90 = sub_1CA94C438();
  v92 = v91;
  v93 = sub_1CA94C438();
  v95 = v94;
  v131 = &v119;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v119 - v138;
  sub_1CA948D98();
  v97 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v119 - v137;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v90, v92, v93, v95, 0, 0, v96, v98);
  v101 = objc_allocWithZone(WFActionParameterSummaryValue);
  v102 = sub_1CA65DD78(0x6574756F524657, 0xE700000000000000, v100);
  *(v134 + 32) = v102;
  v131 = "l mode on ${WFRoute}";
  v103 = sub_1CA94C438();
  v105 = v104;
  v106 = sub_1CA94C438();
  v108 = v107;
  *&v129 = &v119;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v119 - v138;
  sub_1CA948D98();
  v110 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v119 - v137;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  v114 = objc_allocWithZone(WFActionParameterSummaryValue);
  v115 = sub_1CA65DD78(0xD000000000000017, v131 | 0x8000000000000000, v113);
  *(v134 + 40) = v115;
  v116 = v132;
  *(inited + 360) = sub_1CA65AF90();
  *(inited + 384) = v116;
  *(inited + 392) = @"RequiredResources";
  *(inited + 424) = v133;
  *(inited + 400) = &unk_1F49F39C8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v117 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static WFActionDefinitionRegistry.actionDefinitionForAskLLM()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v168 = swift_allocObject();
  *(v168 + 1) = xmmword_1CA981360;
  v180 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"AutocapitalizationType";
  *(inited + 40) = 0x65636E65746E6553;
  *(inited + 48) = 0xE900000000000073;
  *(inited + 64) = v1;
  *(inited + 72) = @"Class";
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CA99B500;
  *(inited + 104) = v1;
  *(inited + 112) = @"Description";
  v177 = @"Class";
  v2 = @"AutocapitalizationType";
  v167 = @"Description";
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB9F690;
  v4 = sub_1CA94C368();
  v5 = sub_1CA94C368();

  v179 = v3;
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_1CA94C3A8();
  v9 = v8;

  *(inited + 120) = v7;
  *(inited + 128) = v9;
  *(inited + 144) = v1;
  *(inited + 152) = @"DisableAutocorrection";
  v10 = MEMORY[0x1E69E6370];
  *(inited + 160) = 0;
  *(inited + 184) = v10;
  *(inited + 192) = @"Key";
  *(inited + 200) = 0x6F72504D4C4C4657;
  *(inited + 208) = 0xEB0000000074706DLL;
  *(inited + 224) = v1;
  *(inited + 232) = @"Label";
  v11 = @"Key";
  v12 = @"Label";
  v166 = v11;
  v176 = v12;
  v13 = @"DisableAutocorrection";
  v14 = sub_1CA94C438();
  v171 = v15;
  v16 = sub_1CA94C438();
  v18 = v17;
  v19 = sub_1CA948E58();
  v175 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v174 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v160 - v174;
  sub_1CA948D98();
  v22 = [v3 bundleURL];
  v23 = sub_1CA948BA8();
  v173 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v172 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v160 - v172;
  sub_1CA948B68();

  v26 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v27 = sub_1CA2F9F14(v14, v171, v16, v18, 0, 0, v21, v25);
  v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v171 = v28;
  *(inited + 240) = v27;
  *(inited + 264) = v28;
  *(inited + 272) = @"Multiline";
  *(inited + 280) = 1;
  v29 = MEMORY[0x1E69E6370];
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 312) = @"Placeholder";
  v30 = @"Multiline";
  v31 = @"Placeholder";
  sub_1CA94C438();
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C368();
  v32 = OUTLINED_FUNCTION_5_13();

  v33 = v179;
  v34 = OUTLINED_FUNCTION_4_11(v179, sel_localizedStringForKey_value_table_);

  v35 = sub_1CA94C3A8();
  v37 = v36;

  *(inited + 320) = v35;
  *(inited + 328) = v37;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 352) = @"ProcessIntoContentItems";
  *(inited + 384) = v29;
  *(inited + 360) = 1;
  _s3__C3KeyVMa_0(0);
  v170 = v39;
  v169 = sub_1CA2FA080(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v40 = @"ProcessIntoContentItems";
  sub_1CA94C1E8();
  v168[4] = sub_1CA2F864C();
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA981350;
  OUTLINED_FUNCTION_6_5();
  v42[4] = v177;
  v42[5] = 0xD000000000000016;
  v42[6] = v43;
  v42[8] = v38;
  v42[9] = @"DisallowedVariableTypes";
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 80) = &unk_1F49F39F8;
  v165 = v44;
  v45 = v166;
  *(v41 + 104) = v44;
  *(v41 + 112) = v45;
  *(v41 + 120) = 0x646F4D4D4C4C4657;
  *(v41 + 128) = 0xEA00000000006C65;
  v46 = v176;
  *(v41 + 144) = v38;
  *(v41 + 152) = v46;
  v164 = @"DisallowedVariableTypes";
  v47 = sub_1CA94C438();
  v161 = v48;
  v162 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v163 = &v160;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v160 - v174;
  sub_1CA948D98();
  v53 = v33;
  v54 = [v33 bundleURL];
  v55 = MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_3_9(v55, v56, v57, v58, v59, v60, v61, v62, v160);

  v63 = &selRef_isInputParameter;
  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = v52;
  v66 = v45;
  v67 = inited;
  v68 = v53;
  v69 = sub_1CA2F9F14(v162, v161, v49, v51, 0, 0, v65, v67);
  *(v41 + 184) = v171;
  *(v41 + 160) = v69;
  sub_1CA94C1E8();
  v70 = sub_1CA2F864C();
  v71 = v168;
  v168[5] = v70;
  v181 = v71;
  v72 = static WFActionDefinitionRegistry.continuousChatEnabled()();
  v73 = v177;
  if (v72)
  {
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1CA981380;
    OUTLINED_FUNCTION_6_5();
    *(v75 + 32) = v73;
    *(v75 + 40) = 0xD000000000000011;
    *(v75 + 48) = v76;
    v77 = MEMORY[0x1E69E6158];
    *(v75 + 64) = MEMORY[0x1E69E6158];
    *(v75 + 72) = @"DefaultValue";
    *(v75 + 80) = 0;
    v78 = v167;
    *(v75 + 104) = MEMORY[0x1E69E6370];
    *(v75 + 112) = v78;
    v79 = v73;
    v80 = v78;
    v81 = @"DefaultValue";
    sub_1CA94C438();
    OUTLINED_FUNCTION_1_2();
    sub_1CA94C368();
    v82 = OUTLINED_FUNCTION_5_13();

    v83 = OUTLINED_FUNCTION_4_11(v68, sel_localizedStringForKey_value_table_);

    v84 = sub_1CA94C3A8();
    v86 = v85;

    *(v74 + 120) = v84;
    *(v74 + 128) = v86;
    *(v74 + 144) = v77;
    *(v74 + 152) = v66;
    *(v74 + 160) = 0x7055776F6C6C6F46;
    *(v74 + 168) = 0xE800000000000000;
    v87 = v164;
    *(v74 + 184) = v77;
    *(v74 + 192) = v87;
    *(v74 + 200) = &unk_1F49F3A28;
    v88 = v176;
    *(v74 + 224) = v165;
    *(v74 + 232) = v88;
    v89 = v66;
    v90 = v88;
    v91 = v87;
    sub_1CA94C438();
    OUTLINED_FUNCTION_1_2();
    v49 = sub_1CA94C438();
    v168 = &v160;
    v92 = MEMORY[0x1EEE9AC00](v49);
    OUTLINED_FUNCTION_2_13(v92, v93, v94, v95, v96, v97, v98, v99, v160);
    v100 = [v68 bundleURL];
    MEMORY[0x1EEE9AC00](v100);
    v101 = &v160 - v172;
    sub_1CA948B68();

    v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
    v103 = OUTLINED_FUNCTION_0_13();
    v110 = sub_1CA2F9F14(v103, v104, v105, v106, v107, v108, v109, v101);
    *(v74 + 264) = v171;
    *(v74 + 240) = v110;
    sub_1CA94C1E8();
    sub_1CA2F864C();
    MEMORY[0x1CCAA1490]();
    if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA94C698();
    }

    sub_1CA94C6E8();
    v68 = v179;
    v73 = v177;
    v63 = 0x1FAE4E000;
    v66 = v166;
  }

  v111 = swift_initStackObject();
  *(v111 + 16) = xmmword_1CA981370;
  OUTLINED_FUNCTION_6_5();
  v112[4] = v73;
  v112[5] = 0xD000000000000025;
  v112[6] = v113;
  v114 = v63;
  v115 = v68;
  v116 = MEMORY[0x1E69E6158];
  v117 = v167;
  v112[8] = MEMORY[0x1E69E6158];
  v112[9] = v117;
  v118 = v73;
  v119 = v117;
  sub_1CA94C438();
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C368();
  v120 = OUTLINED_FUNCTION_5_13();

  v121 = OUTLINED_FUNCTION_4_11(v115, v114 + 3668);

  v122 = sub_1CA94C3A8();
  v124 = v123;

  *(v111 + 80) = v122;
  *(v111 + 88) = v124;
  *(v111 + 104) = v116;
  *(v111 + 112) = v66;
  OUTLINED_FUNCTION_6_5();
  *(v111 + 120) = 0xD000000000000016;
  *(v111 + 128) = v125;
  v126 = v176;
  *(v111 + 144) = v116;
  *(v111 + 152) = v126;
  v127 = v66;
  v128 = v126;
  sub_1CA94C438();
  OUTLINED_FUNCTION_1_2();
  v129 = sub_1CA94C438();
  v178 = &v160;
  v130 = MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_2_13(v130, v131, v132, v133, v134, v135, v136, v137, v160);
  v138 = [v179 bundleURL];
  v139 = MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_3_9(v139, v140, v141, v142, v143, v144, v145, v146, v160);

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = OUTLINED_FUNCTION_0_13();
  *(v111 + 160) = sub_1CA2F9F14(v148, v149, v150, v151, v152, v153, v154, v116);
  v155 = v164;
  *(v111 + 184) = v171;
  *(v111 + 192) = v155;
  *(v111 + 224) = v165;
  *(v111 + 200) = &unk_1F49F3A68;
  v156 = v155;
  sub_1CA94C1E8();
  sub_1CA2F864C();
  MEMORY[0x1CCAA1490]();
  if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CA94C698();
  }

  sub_1CA94C6E8();
  v157 = v181;
  v158 = swift_allocObject();
  *(v158 + 16) = v157;
  static WFActionDefinitionRegistry.register(_:_:)(0xD00000000000001ALL, 0x80000001CA9A2470, sub_1CA304C7C, v158);
}

uint64_t static WFActionDefinitionRegistry.continuousChatEnabled()()
{
  v0 = *MEMORY[0x1E69E0FB8];
  v1 = sub_1CA94C3A8();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1CA304C84(v1, v3);
  v6 = 1;
  if (v5)
  {
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x80000001CA9A2510;
    *(inited + 72) = MEMORY[0x1E69E6370];
    *(inited + 48) = 1;
    sub_1CA94C1E8();
    v9 = sub_1CA94C1A8();

    [v7 registerDefaults_];

    v10 = sub_1CA94C368();
    v6 = [v7 BOOLForKey_];
  }

  return v6;
}

id sub_1CA303EDC(uint64_t *a1)
{
  v107 = a1;
  v108 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFAskLLMAction");
  *(inited + 55) = -18;
  *(inited + 64) = v2;
  *(inited + 72) = @"ActionKeywords";
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v111 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v113 = v12;
  v115 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v100 - v115;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDB9F690;
  v110 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v114 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v112 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v100 - v112;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v111, v6, v7, v9, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v111 = v21;
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"Description";
  v109 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438();
  v105 = v26;
  v27 = sub_1CA94C438();
  v29 = v28;
  v106 = &v100;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v100 - v115;
  sub_1CA948D98();
  v31 = [v14 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v100 - v112;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v25, v105, v27, v29, 0, 0, v30, v32);
  *(v22 + 64) = v111;
  *(v22 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA2FA080(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v35 = v109;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v35;
  *(inited + 152) = @"Input";
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v104 = xmmword_1CA981350;
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x6F72504D4C4C4657;
  *(v36 + 104) = 0xEB0000000074706DLL;
  *(v36 + 120) = MEMORY[0x1E69E6158];
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v109;
  *(v36 + 192) = &unk_1F49F3AA8;
  v38 = @"Input";
  v39 = sub_1CA94C1E8();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v106 = v40;
  *(inited + 160) = v39;
  *(inited + 184) = v40;
  *(inited + 192) = @"Name";
  v41 = @"Name";
  v42 = sub_1CA94C438();
  v101 = v43;
  v102 = v42;
  v44 = sub_1CA94C438();
  v100 = v45;
  v103 = &v100;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v100 - v115;
  sub_1CA948D98();
  v47 = v110;
  v48 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v112;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v102, v101, v44, v100, 0, 0, v46, &v100 - v49);
  *(inited + 224) = v111;
  *(inited + 232) = @"Output";
  v51 = swift_initStackObject();
  *(v51 + 16) = v104;
  *(v51 + 32) = 0x75736F6C63736944;
  *(v51 + 40) = 0xEF6C6576654C6572;
  *(v51 + 48) = 0x63696C627550;
  *(v51 + 56) = 0xE600000000000000;
  *(v51 + 72) = MEMORY[0x1E69E6158];
  *(v51 + 80) = 0x656C7069746C754DLL;
  *(v51 + 88) = 0xE800000000000000;
  *(v51 + 96) = 1;
  *(v51 + 120) = MEMORY[0x1E69E6370];
  *(v51 + 128) = 0x614E74757074754FLL;
  *(v51 + 136) = 0xEA0000000000656DLL;
  v52 = @"Output";
  v53 = sub_1CA94C438();
  v103 = v54;
  *&v104 = v53;
  v55 = sub_1CA94C438();
  v57 = v56;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v100 - v115;
  sub_1CA948D98();
  v59 = [v47 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 144) = sub_1CA2F9F14(v104, v103, v55, v57, 0, 0, v58, &v100 - v49);
  *(v51 + 168) = v111;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 216) = v109;
  *(v51 + 184) = 0xE500000000000000;
  *(v51 + 192) = &unk_1F49F3AD8;
  *(inited + 240) = sub_1CA94C1E8();
  *(inited + 264) = v106;
  *(inited + 272) = @"Parameters";
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v107;
  *(inited + 304) = v61;
  *(inited + 312) = @"ParameterSummary";
  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v111 = swift_allocObject();
  v104 = xmmword_1CA981360;
  *(v111 + 16) = xmmword_1CA981360;
  v62 = @"Parameters";
  sub_1CA94C218();
  v63 = @"ParameterSummary";
  v64 = sub_1CA94C438();
  v66 = v65;
  v67 = sub_1CA94C438();
  v69 = v68;
  v107 = &v100;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v100 - v115;
  sub_1CA948D98();
  v71 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v100 - v112;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v64, v66, v67, v69, 0, 0, v70, v72);
  v75 = objc_allocWithZone(WFActionParameterSummaryValue);
  v76 = sub_1CA65DD78(0x646F4D4D4C4C4657, 0xEA00000000006C65, v74);
  *(v111 + 32) = v76;
  v107 = "Use ${WFLLMModel} model";
  v77 = sub_1CA94C438();
  v79 = v78;
  v80 = sub_1CA94C438();
  v82 = v81;
  v103 = &v100;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v100 - v115;
  sub_1CA948D98();
  v84 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v100 - v112;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v77, v79, v80, v82, 0, 0, v83, v85);
  v88 = objc_allocWithZone(WFActionParameterSummaryValue);
  v89 = sub_1CA65DD78(0xD000000000000013, v107 | 0x8000000000000000, v87);
  *(v111 + 40) = v89;
  v90 = v106;
  *(inited + 320) = sub_1CA65AF90();
  *(inited + 344) = v90;
  *(inited + 352) = @"RequiredResources";
  v91 = swift_allocObject();
  *(v91 + 16) = v104;
  v92 = objc_allocWithZone(type metadata accessor for WFAppleIntelligenceAccessResource());
  v93 = @"RequiredResources";
  *(v91 + 32) = [v92 init];
  *(v91 + 40) = [objc_allocWithZone(WFLLMActionAvailabilityResource) init];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442D8, &unk_1CA982E00);
  *(inited + 360) = v91;
  *(inited + 384) = v94;
  *(inited + 392) = @"UserInterfaceClasses";
  v95 = @"UserInterfaceClasses";
  v96 = sub_1CA94C1E8();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 400) = v96;
  *(inited + 424) = v97;
  *(inited + 432) = @"UserInterfaces";
  *(inited + 464) = v109;
  *(inited + 440) = &unk_1F49F3BB8;
  type metadata accessor for Key(0);
  sub_1CA2FA080(&qword_1EDB9FB10, type metadata accessor for Key);
  v98 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}