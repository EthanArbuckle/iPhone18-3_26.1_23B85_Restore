uint64_t sub_1CA52A2F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_10_22(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(v2, v5);
  return v2;
}

uint64_t sub_1CA52A350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s22ToolKitConversionErrorOwet(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t _s22ToolKitConversionErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1CA52A480(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  if ((v1 + 1) >= 2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_1CA52A4A0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

id sub_1CA52A524()
{
  v0 = sub_1CA94B4D8();
  v167 = *(v0 - 8);
  v168 = v0;
  v1 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v169 = &v154 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CA949D18();
  v165 = *(v3 - 8);
  v166 = v3;
  v4 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v164 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9C88C0;
  *(inited + 64) = v7;
  *(inited + 72) = @"ActionKeywords";
  v8 = @"ActionClass";
  v9 = @"ActionKeywords";
  v174 = sub_1CA94C438();
  v175 = v10;
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA948E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v179 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v180 = v16;
  v17 = &v154 - v179;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDB9F690;
  v177 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v176 = v21;
  v178 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v154 - v178;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v174, v175, v11, v13, 0, 0, v17, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v175 = v25;
  *(inited + 80) = v24;
  *(inited + 104) = v25;
  *(inited + 112) = @"Description";
  v174 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v26 = swift_initStackObject();
  v163 = xmmword_1CA981310;
  *(v26 + 16) = xmmword_1CA981310;
  *(v26 + 32) = @"DescriptionSummary";
  v27 = @"Description";
  v28 = @"DescriptionSummary";
  v29 = sub_1CA94C438();
  v172 = v30;
  v31 = sub_1CA94C438();
  v33 = v32;
  v173 = &v154;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v154 - v179;
  sub_1CA948D98();
  v35 = [v18 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v154 - v178;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v29, v172, v31, v33, 0, 0, v34, v36);
  *(v26 + 64) = v175;
  *(v26 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v174;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v39;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  v40 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD00000000000002CLL;
  *(inited + 208) = 0x80000001CA9C8950;
  *(inited + 224) = v40;
  *(inited + 232) = @"Input";
  v41 = v40;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v42 = swift_initStackObject();
  v162 = xmmword_1CA981350;
  *(v42 + 16) = xmmword_1CA981350;
  *(v42 + 32) = 0x656C7069746C754DLL;
  *(v42 + 40) = 0xE800000000000000;
  v43 = MEMORY[0x1E69E6370];
  *(v42 + 48) = 1;
  *(v42 + 72) = v43;
  strcpy((v42 + 80), "ParameterKey");
  *(v42 + 93) = 0;
  *(v42 + 94) = -5120;
  *(v42 + 96) = 0x7475706E494657;
  *(v42 + 104) = 0xE700000000000000;
  *(v42 + 120) = v41;
  *(v42 + 128) = 0x6465726975716552;
  *(v42 + 136) = 0xE800000000000000;
  *(v42 + 144) = 1;
  *(v42 + 168) = v43;
  *(v42 + 176) = 0x7365707954;
  v44 = v43;
  *(v42 + 184) = 0xE500000000000000;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v42 + 216) = v174;
  *(v42 + 192) = &unk_1F4A03328;
  v45 = @"IconColor";
  v46 = @"IconSymbol";
  v47 = @"Input";
  v48 = sub_1CA94C1E8();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v173 = v49;
  *(inited + 240) = v48;
  *(inited + 264) = v49;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 0;
  *(inited + 304) = v44;
  *(inited + 312) = @"Name";
  v50 = @"InputPassthrough";
  v51 = @"Name";
  v52 = sub_1CA94C438();
  v54 = v53;
  v55 = sub_1CA94C438();
  v57 = v56;
  v161 = &v154;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v154 - v179;
  sub_1CA948D98();
  v59 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v154 - v178;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v52, v54, v55, v57, 0, 0, v58, v60);
  v62 = v175;
  *(inited + 344) = v175;
  *(inited + 352) = @"Output";
  v63 = swift_allocObject();
  *(v63 + 16) = v162;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 1;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438();
  v161 = v66;
  *&v162 = v65;
  v67 = sub_1CA94C438();
  v69 = v68;
  v172 = &v154;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v154 - v179;
  sub_1CA948D98();
  v71 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v154 - v178;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v162, v161, v67, v69, 0, 0, v70, v72);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v174;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A03358;
  v74 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v173;
  *(inited + 392) = @"Parameters";
  *&v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v173 = swift_allocObject();
  *(v173 + 1) = xmmword_1CA981360;
  v172 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v75 = swift_allocObject();
  v160 = xmmword_1CA981370;
  *(v75 + 16) = xmmword_1CA981370;
  *(v75 + 32) = @"Class";
  *(v75 + 40) = 0xD000000000000011;
  *(v75 + 48) = 0x80000001CA99E620;
  *(v75 + 64) = v74;
  *(v75 + 72) = @"DefaultValue";
  *(v75 + 80) = 0;
  *(v75 + 104) = MEMORY[0x1E69E6370];
  *(v75 + 112) = @"Description";
  v159 = @"Class";
  v76 = @"Parameters";
  v77 = @"DefaultValue";
  v78 = @"Description";
  v79 = sub_1CA94C438();
  v156 = v80;
  v157 = v79;
  v81 = sub_1CA94C438();
  v83 = v82;
  v158 = &v154;
  MEMORY[0x1EEE9AC00](v81);
  v84 = v179;
  sub_1CA948D98();
  v85 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v154 - v178;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 120) = sub_1CA2F9F14(v157, v156, v81, v83, 0, 0, &v154 - v84, v86);
  *(v75 + 144) = v175;
  *(v75 + 152) = @"Key";
  strcpy((v75 + 160), "WFCropToBounds");
  *(v75 + 175) = -18;
  *(v75 + 184) = MEMORY[0x1E69E6158];
  *(v75 + 192) = @"Label";
  v88 = @"Key";
  v89 = @"Label";
  v156 = v88;
  v155 = v89;
  v157 = sub_1CA94C438();
  v154 = v90;
  v91 = sub_1CA94C438();
  v93 = v92;
  v158 = &v154;
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948D98();
  v94 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v154 - v178;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v157, v154, v91, v93, 0, 0, &v154 - v84, v95);
  *(v75 + 224) = v175;
  *(v75 + 200) = v97;
  _s3__C3KeyVMa_0(0);
  v158 = v98;
  v157 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v173[4] = sub_1CA2F864C();
  v99 = swift_allocObject();
  *(v99 + 16) = v160;
  *(v99 + 32) = v159;
  *(v99 + 40) = 0xD000000000000019;
  *(v99 + 48) = 0x80000001CA99B030;
  v100 = MEMORY[0x1E69E6158];
  v101 = v156;
  *(v99 + 64) = MEMORY[0x1E69E6158];
  *(v99 + 72) = v101;
  *(v99 + 80) = 0x7475706E494657;
  *(v99 + 88) = 0xE700000000000000;
  v102 = v155;
  *(v99 + 104) = v100;
  *(v99 + 112) = v102;
  v103 = sub_1CA94C438();
  v159 = v104;
  *&v160 = v103;
  v105 = sub_1CA94C438();
  v156 = v106;
  v161 = &v154;
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v154 - v179;
  sub_1CA948D98();
  v108 = v177;
  v109 = [v177 bundleURL];
  v155 = &v154;
  v171 = inited;
  MEMORY[0x1EEE9AC00](v109);
  v110 = v178;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 120) = sub_1CA2F9F14(v160, v159, v105, v156, 0, 0, v107, &v154 - v110);
  *(v99 + 144) = v175;
  *(v99 + 152) = @"Placeholder";
  v112 = @"Placeholder";
  v113 = sub_1CA94C438();
  v159 = v114;
  *&v160 = v113;
  v115 = sub_1CA94C438();
  v156 = v116;
  v161 = &v154;
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v154 - v179;
  sub_1CA948D98();
  v118 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 160) = sub_1CA2F9F14(v160, v159, v115, v156, 0, 0, v117, &v154 - v110);
  *(v99 + 184) = v175;
  *(v99 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v120 = swift_allocObject();
  *(v120 + 16) = v163;
  v121 = @"PreferredTypes";
  v122 = v164;
  sub_1CA949CB8();
  v123 = sub_1CA949C68();
  v125 = v124;
  (*(v165 + 8))(v122, v166);
  *(v120 + 32) = v123;
  *(v120 + 40) = v125;
  v126 = v174;
  *(v99 + 224) = v174;
  *(v99 + 200) = v120;
  sub_1CA94C1E8();
  v127 = sub_1CA2F864C();
  v128 = v173;
  v173[5] = v127;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v130 = v171;
  v171[50] = v128;
  v130[53] = v129;
  v130[54] = @"ParameterSummary";
  v131 = @"ParameterSummary";
  v132 = sub_1CA94C438();
  v134 = v133;
  v135 = sub_1CA94C438();
  v137 = v136;
  v175 = &v154;
  MEMORY[0x1EEE9AC00](v135);
  v138 = &v154 - v179;
  sub_1CA948D98();
  v139 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v154 - v178;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v132, v134, v135, v137, 0, 0, v138, v140);
  v143 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v144 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v145 = v171;
  v171[55] = v143;
  v145[58] = v144;
  v145[59] = @"RemoteExecuteOnPlatforms";
  v145[60] = &unk_1F4A03388;
  v145[63] = v126;
  v145[64] = @"RequiredResources";
  v146 = v145;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1CA9813B0;
  v148 = v169;
  (*(v167 + 104))(v169, *MEMORY[0x1E69DB3F0], v168);
  v149 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource());
  v150 = @"RemoteExecuteOnPlatforms";
  v151 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v148);
  *(v147 + 32) = v152;
  v146[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  v146[65] = v147;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA52B978()
{
  v216 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001FLL;
  *(inited + 48) = 0x80000001CA9C8BD0;
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
  v232 = v12;
  v233 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v209 - v233;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v231 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v229 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v230 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v209 - v230;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v228 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v227 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionResult";
  v22 = @"Description";
  v23 = @"DescriptionResult";
  v24 = sub_1CA94C438();
  v223 = v25;
  v224 = v24;
  v26 = sub_1CA94C438();
  v222 = v27;
  v225 = &v209;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v209 - v233;
  sub_1CA948D98();
  v29 = v231;
  v30 = [v231 bundleURL];
  v226 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v230;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v224, v223, v26, v222, 0, 0, v28, &v209 - v32);
  *(v21 + 64) = v228;
  *(v21 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = sub_1CA94C438();
  v223 = v36;
  v224 = v35;
  v37 = sub_1CA94C438();
  v39 = v38;
  v225 = &v209;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v209 - v233;
  sub_1CA948D98();
  v41 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v224, v223, v37, v39, 0, 0, v40, &v209 - v32);
  *(v21 + 104) = v228;
  *(v21 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v227;
  v45 = sub_1CA6B3784();
  v46 = v226;
  v226[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 6579538;
  v46[21] = 0xE300000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0xD000000000000013;
  v46[26] = 0x80000001CA99A850;
  v46[28] = v47;
  v46[29] = @"Input";
  v48 = v47;
  v49 = v46;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v215 = xmmword_1CA981350;
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
  *(v50 + 120) = v48;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v221;
  *(v50 + 192) = &unk_1F4A033B8;
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"Input";
  v55 = sub_1CA94C1E8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v227 = v56;
  v49[30] = v55;
  v49[33] = v56;
  v49[34] = @"Name";
  v57 = @"Name";
  v58 = sub_1CA94C438();
  v222 = v59;
  v223 = v58;
  v60 = sub_1CA94C438();
  v62 = v61;
  v224 = &v209;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v209 - v233;
  sub_1CA948D98();
  v64 = v231;
  v65 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = v230;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v223, v222, v60, v62, 0, 0, v63, &v209 - v66);
  v69 = v226;
  v226[35] = v68;
  v70 = v228;
  v69[38] = v228;
  v69[39] = @"Output";
  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_1CA9813C0;
  *(v71 + 32) = 0x75736F6C63736944;
  *(v71 + 40) = 0xEF6C6576654C6572;
  *(v71 + 48) = 0x63696C627550;
  *(v71 + 56) = 0xE600000000000000;
  *(v71 + 72) = MEMORY[0x1E69E6158];
  *(v71 + 80) = 0x614E74757074754FLL;
  *(v71 + 88) = 0xEA0000000000656DLL;
  v72 = @"Output";
  v73 = sub_1CA94C438();
  v223 = v74;
  v224 = v73;
  v75 = sub_1CA94C438();
  v222 = v76;
  v225 = &v209;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v209 - v233;
  sub_1CA948D98();
  v78 = [v64 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 96) = sub_1CA2F9F14(v224, v223, v75, v222, 0, 0, v77, &v209 - v66);
  *(v71 + 120) = v70;
  *(v71 + 128) = 0x7365707954;
  *(v71 + 168) = v221;
  *(v71 + 136) = 0xE500000000000000;
  *(v71 + 144) = &unk_1F4A033E8;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = v226;
  v226[40] = v81;
  v82[43] = v227;
  v82[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_1CA981560;
  v227 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1CA981370;
  *(v83 + 32) = @"Class";
  *(v83 + 40) = 0xD000000000000014;
  *(v83 + 48) = 0x80000001CA99B500;
  *(v83 + 64) = v80;
  *(v83 + 72) = @"Key";
  *(v83 + 80) = 0x7475706E494657;
  *(v83 + 88) = 0xE700000000000000;
  *(v83 + 104) = v80;
  *(v83 + 112) = @"Label";
  v84 = @"Class";
  v85 = @"Key";
  v86 = @"Label";
  v87 = v84;
  v88 = v85;
  v89 = v86;
  v218 = v87;
  v219 = v88;
  v220 = v89;
  v90 = @"Parameters";
  v223 = sub_1CA94C438();
  *&v217 = v91;
  v92 = sub_1CA94C438();
  v214 = v93;
  v224 = &v209;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v233;
  sub_1CA948D98();
  v95 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v209 - v230;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 120) = sub_1CA2F9F14(v223, v217, v92, v214, 0, 0, &v209 - v94, v96);
  v98 = v228;
  *(v83 + 144) = v228;
  *(v83 + 152) = @"Multiline";
  *(v83 + 160) = 1;
  *(v83 + 184) = MEMORY[0x1E69E6370];
  *(v83 + 192) = @"Placeholder";
  v99 = @"Multiline";
  v100 = @"Placeholder";
  v223 = sub_1CA94C438();
  *&v217 = v101;
  v102 = sub_1CA94C438();
  v104 = v103;
  v224 = &v209;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v209 - v94;
  sub_1CA948D98();
  v106 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v209 - v230;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v223, v217, v102, v104, 0, 0, v105, v107);
  *(v83 + 224) = v98;
  *(v83 + 200) = v109;
  _s3__C3KeyVMa_0(0);
  v224 = v110;
  v223 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v222 + 32) = sub_1CA2F864C();
  v111 = swift_allocObject();
  v217 = xmmword_1CA981380;
  *(v111 + 16) = xmmword_1CA981380;
  v213 = 0xD000000000000011;
  v214 = 0x80000001CA9A0B80;
  v112 = v218;
  v113 = v219;
  *(v111 + 32) = v218;
  *(v111 + 40) = 0xD000000000000011;
  *(v111 + 48) = 0x80000001CA9A0B80;
  v114 = MEMORY[0x1E69E6158];
  *(v111 + 64) = MEMORY[0x1E69E6158];
  *(v111 + 72) = @"DefaultValue";
  v115 = MEMORY[0x1E69E63B0];
  *(v111 + 80) = 0x3FE0000000000000;
  *(v111 + 104) = v115;
  *(v111 + 112) = v113;
  *(v111 + 120) = 0x546B616570534657;
  *(v111 + 128) = 0xEF65746152747865;
  v116 = v220;
  *(v111 + 144) = v114;
  *(v111 + 152) = v116;
  v117 = @"DefaultValue";
  v218 = v112;
  v219 = v113;
  v220 = v116;
  v210 = v117;
  v118 = sub_1CA94C438();
  v120 = v119;
  v121 = sub_1CA94C438();
  v123 = v122;
  v212 = &v209;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v209 - v233;
  sub_1CA948D98();
  v125 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v209 - v230;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v111 + 160) = sub_1CA2F9F14(v118, v120, v121, v123, 0, 0, v124, v126);
  *(v111 + 184) = v228;
  *(v111 + 192) = @"MaximumValue";
  v128 = MEMORY[0x1E69E6530];
  *(v111 + 200) = 1;
  *(v111 + 224) = v128;
  *(v111 + 232) = @"MinimumValue";
  *(v111 + 264) = v128;
  *(v111 + 240) = 0;
  v129 = @"MaximumValue";
  v130 = @"MinimumValue";
  v212 = v129;
  v211 = v130;
  sub_1CA94C1E8();
  *(v222 + 40) = sub_1CA2F864C();
  v131 = swift_allocObject();
  *(v131 + 16) = v217;
  v132 = v218;
  v133 = v219;
  v135 = v213;
  v134 = v214;
  *(v131 + 32) = v218;
  *(v131 + 40) = v135;
  *(v131 + 48) = v134;
  v136 = MEMORY[0x1E69E6158];
  v137 = v210;
  *(v131 + 64) = MEMORY[0x1E69E6158];
  *(v131 + 72) = v137;
  *(v131 + 80) = 0x3FF0000000000000;
  *(v131 + 104) = MEMORY[0x1E69E63B0];
  *(v131 + 112) = v133;
  v214 = 0xD000000000000010;
  *(v131 + 120) = 0xD000000000000010;
  *(v131 + 128) = 0x80000001CA9B6940;
  v138 = v220;
  *(v131 + 144) = v136;
  *(v131 + 152) = v138;
  v218 = v132;
  v219 = v133;
  v220 = v138;
  *&v217 = v137;
  v139 = sub_1CA94C438();
  v141 = v140;
  v142 = sub_1CA94C438();
  v144 = v143;
  v213 = &v209;
  MEMORY[0x1EEE9AC00](v142);
  v145 = &v209 - v233;
  sub_1CA948D98();
  v146 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v209 - v230;
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 160) = sub_1CA2F9F14(v139, v141, v142, v144, 0, 0, v145, v147);
  v149 = v212;
  *(v131 + 184) = v228;
  *(v131 + 192) = v149;
  *(v131 + 200) = 0x4000000000000000;
  v150 = MEMORY[0x1E69E63B0];
  v151 = v211;
  *(v131 + 224) = MEMORY[0x1E69E63B0];
  *(v131 + 232) = v151;
  *(v131 + 264) = v150;
  *(v131 + 240) = 0x3FE0000000000000;
  sub_1CA94C1E8();
  v152 = sub_1CA2F864C();
  v153 = v222;
  *(v222 + 48) = v152;
  v154 = swift_allocObject();
  *(v154 + 16) = v215;
  *(v154 + 32) = v218;
  *(v154 + 40) = 0xD000000000000022;
  *(v154 + 48) = 0x80000001CA9B6980;
  v155 = MEMORY[0x1E69E6158];
  v156 = v217;
  *(v154 + 64) = MEMORY[0x1E69E6158];
  *(v154 + 72) = v156;
  *(v154 + 80) = 0x746C7561666544;
  *(v154 + 88) = 0xE700000000000000;
  v157 = v219;
  *(v154 + 104) = v155;
  *(v154 + 112) = v157;
  *&v215 = 0x80000001CA997010;
  *(v154 + 120) = 0xD000000000000013;
  *(v154 + 128) = 0x80000001CA997010;
  v158 = v220;
  *(v154 + 144) = v155;
  *(v154 + 152) = v158;
  v159 = sub_1CA94C438();
  v212 = v160;
  v161 = sub_1CA94C438();
  v163 = v162;
  v213 = &v209;
  MEMORY[0x1EEE9AC00](v161);
  v164 = &v209 - v233;
  sub_1CA948D98();
  v165 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = &v209 - v230;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v159, v212, v161, v163, 0, 0, v164, v166);
  *(v154 + 184) = v228;
  *(v154 + 160) = v168;
  sub_1CA94C1E8();
  *(v153 + 56) = sub_1CA2F864C();
  v169 = swift_allocObject();
  *(v169 + 16) = xmmword_1CA981300;
  *(v169 + 32) = @"AlwaysShowsButton";
  *(v169 + 40) = 1;
  v170 = v218;
  *(v169 + 64) = MEMORY[0x1E69E6370];
  *(v169 + 72) = v170;
  *(v169 + 80) = 0xD00000000000001FLL;
  *(v169 + 88) = 0x80000001CA9B69D0;
  v171 = MEMORY[0x1E69E6158];
  v172 = v217;
  *(v169 + 104) = MEMORY[0x1E69E6158];
  *(v169 + 112) = v172;
  *(v169 + 120) = 0x746C7561666544;
  *(v169 + 128) = 0xE700000000000000;
  *(v169 + 144) = v171;
  *(v169 + 152) = @"DisallowedVariableTypes";
  *(v169 + 160) = &unk_1F4A03418;
  v173 = v219;
  *(v169 + 184) = v221;
  *(v169 + 192) = v173;
  *(v169 + 200) = v214;
  *(v169 + 208) = 0x80000001CA9B69F0;
  v174 = v220;
  *(v169 + 224) = v171;
  *(v169 + 232) = v174;
  v175 = @"AlwaysShowsButton";
  v176 = @"DisallowedVariableTypes";
  v177 = sub_1CA94C438();
  v179 = v178;
  v180 = sub_1CA94C438();
  v182 = v181;
  v225 = &v209;
  MEMORY[0x1EEE9AC00](v180);
  v183 = &v209 - v233;
  sub_1CA948D98();
  v184 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = &v209 - v230;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 240) = sub_1CA2F9F14(v177, v179, v180, v182, 0, 0, v183, v185);
  *(v169 + 264) = v228;
  *(v169 + 272) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_1CA981310;
  v188 = @"RequiredResources";
  v189 = MEMORY[0x1E69E6158];
  *(v187 + 32) = sub_1CA94C1E8();
  *(v169 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v169 + 280) = v187;
  v190 = sub_1CA94C368();
  *(v169 + 344) = v189;
  *(v169 + 312) = v190;
  *(v169 + 320) = 0xD000000000000013;
  *(v169 + 328) = v215;
  sub_1CA94C1E8();
  v191 = sub_1CA2F864C();
  v192 = v222;
  *(v222 + 64) = v191;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v194 = v226;
  v226[45] = v192;
  v194[48] = v193;
  v194[49] = @"ParameterSummary";
  v195 = @"ParameterSummary";
  v196 = sub_1CA94C438();
  v198 = v197;
  v199 = sub_1CA94C438();
  v201 = v200;
  v228 = &v209;
  MEMORY[0x1EEE9AC00](v199);
  v202 = &v209 - v233;
  sub_1CA948D98();
  v203 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v209 - v230;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v206 = sub_1CA2F9F14(v196, v198, v199, v201, 0, 0, v202, v204);
  v207 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v194[53] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v194[50] = v207;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA52D268(void *a1, void *a2, void *a3, char a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:a1 action:a2 metadata:a3 isAutoShortcut:a4 & 1];

  return v7;
}

uint64_t sub_1CA52D2E0()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 144) = v1;
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_1(v2);

  return sub_1CA5F9B38(v3);
}

uint64_t sub_1CA52D36C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 152);
  *v3 = *v1;
  *(v2 + 160) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1CA52D48C()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16_23();
  v2 = v1[20];
  v3 = v1[18];
  v4 = [objc_allocWithZone(WFWorkflow) init];
  v1[21] = v4;
  [v4 addAction_];
  WFExecutableAppShortcut.name.getter();
  v5 = sub_1CA94C368();

  [v4 setName_];

  v1[2] = v1;
  v1[3] = sub_1CA52D5D0;
  swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445908, &qword_1CA9884C8);
  OUTLINED_FUNCTION_0_50(v6);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_7_30();
  [v4 configureAsSingleStepShortcutIfNecessary_];
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1CA52D5D0()
{
  OUTLINED_FUNCTION_0();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA52D6A0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 168);
  v2 = [objc_allocWithZone(WFAddShortcutEvent) init];
  v3 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  OUTLINED_FUNCTION_93();
  sub_1CA94C658();

  v4 = sub_1CA25B410();

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v4))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(v0 + 160);
  [v2 setActionCount_];
  v7 = @"ShortcutSourceAppShortcut";
  [v2 setShortcutSource_];

  [v2 track];
  OUTLINED_FUNCTION_2_4();
  v9 = *(v0 + 168);

  return v8(v9);
}

uint64_t sub_1CA52D7EC()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 144) = v1;
  *(v0 + 152) = v2 & 1;
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_6_1(v3);

  return sub_1CA59FD08(v4);
}

uint64_t sub_1CA52D880()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 160);
  *v3 = *v1;
  *(v2 + 168) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1CA52D9A0()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 168);
  v2 = [objc_allocWithZone(WFWorkflow) init];
  *(v0 + 176) = v2;
  [v2 addAction_];
  if (*(v0 + 152))
  {
    v3 = *(v0 + 144);
    WFExecutableAppShortcut.name.getter();
  }

  else
  {
    v4 = [*(v0 + 144) name];
    sub_1CA94C3A8();
  }

  v5 = sub_1CA94C368();

  [v2 setName_];

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1CA52DB54;
  v6 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445908, &qword_1CA9884C8);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CA44E498;
  *(v0 + 104) = &block_descriptor_46_0;
  *(v0 + 112) = v6;
  [v2 configureAsSingleStepShortcutIfNecessary_];
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1CA52DB54()
{
  OUTLINED_FUNCTION_0();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA52DC24()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 176);
  v2 = [objc_allocWithZone(WFAddShortcutEvent) init];
  v3 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  OUTLINED_FUNCTION_93();
  sub_1CA94C658();

  v4 = sub_1CA25B410();

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v4))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(v0 + 168);
  [v2 setActionCount_];
  v7 = @"ShortcutSourceAppShortcut";
  [v2 setShortcutSource_];

  [v2 track];
  OUTLINED_FUNCTION_2_4();
  v9 = *(v0 + 176);

  return v8(v9);
}

uint64_t sub_1CA52DD70()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 144) = v1;
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_1(v2);

  return sub_1CA5B9724(v3);
}

uint64_t sub_1CA52DDFC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 152);
  *v3 = *v1;
  *(v2 + 160) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1CA52DF1C()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16_23();
  v2 = v1[20];
  v3 = v1[18];
  v4 = [objc_allocWithZone(WFWorkflow) init];
  v1[21] = v4;
  [v4 addAction_];
  WFExecutableAppShortcut.name.getter();
  v5 = sub_1CA94C368();

  [v4 setName_];

  v1[2] = v1;
  v1[3] = sub_1CA52E060;
  swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445908, &qword_1CA9884C8);
  OUTLINED_FUNCTION_0_50(v6);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_7_30();
  [v4 configureAsSingleStepShortcutIfNecessary_];
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1CA52E060()
{
  OUTLINED_FUNCTION_0();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA52E130@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA27E524();
  *a2 = result;
  return result;
}

uint64_t sub_1CA52E15C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1CA94C218();
  return sub_1CA27C47C();
}

uint64_t sub_1CA52E188(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446338, &qword_1CA98AFB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return sub_1CA52E25C(v7);
}

uint64_t sub_1CA52E25C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446338, &qword_1CA98AFB8);
  OUTLINED_FUNCTION_1_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  (*(v4 + 16))(&v10 - v8, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446308, &unk_1CA98AE88);
  sub_1CA94A088();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void sub_1CA52E3B8()
{
  v0 = sub_1CA949F78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *MEMORY[0x1E69E10B0];
    sub_1CA949C58();
    v8 = sub_1CA949F68();
    v9 = sub_1CA94CC08();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1CA256000, v8, v9, "User shortcuts updated, injecting App Shortcuts", v10, 2u);
      MEMORY[0x1CCAA4BF0](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v11 = sub_1CA27E524();
    v12 = *&v6[OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_userShortcutDataSource];
    v13 = sub_1CA27BB44();
    sub_1CA27BF28(v11, v13);

    sub_1CA27C47C();
  }
}

uint64_t sub_1CA52E57C()
{
  v0 = sub_1CA949F78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *MEMORY[0x1E69E10B0];
    sub_1CA949C58();
    v8 = sub_1CA949F68();
    v9 = sub_1CA94CC08();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1CA256000, v8, v9, "App Shortcuts updated, processing update", v10, 2u);
      MEMORY[0x1CCAA4BF0](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v11 = *&v6[OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_appShortcutDataSource];
    sub_1CA278F60();
    sub_1CA279010();
  }

  return result;
}

uint64_t sub_1CA52E718(int a1)
{
  v27 = a1;
  v1 = type metadata accessor for AutoShortcutAppSection();
  v26 = *(v1 - 8);
  v2 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CA27E524();
  v6 = 0;
  v7 = 0;
  v29 = *(result + 16);
  v30 = result;
  v28 = result + 32;
  while (1)
  {
    if (v6 == v29)
    {

      return v7;
    }

    if (v6 >= *(v30 + 16))
    {
      break;
    }

    v8 = (v28 + 40 * v6);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = *(v11 + 16);
    v13 = (v10 >> 62) & 1;
    v31 = v8[4];
    v32 = v9;
    if (v12)
    {
      v14 = v26;
      v15 = v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      v16 = 0;
      v17 = *(v14 + 72);
      do
      {
        result = sub_1CA53261C(v15, v4);
        v18 = *(*(v4 + 7) + 16);
        v19 = __OFADD__(v16, v18);
        v16 += v18;
        if (v19)
        {
          __break(1u);
          goto LABEL_36;
        }

        sub_1CA532680(v4);
        v15 += v17;
        --v12;
      }

      while (v12);
      v20 = v10 < 0 || (v10 & 0x4000000000000000) != 0;
      if ((v27 & 1) == 0)
      {
        if (v20)
        {
          goto LABEL_32;
        }

LABEL_26:
        v24 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_27;
      }

      if (v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v10 < 0)
      {
        LOBYTE(v13) = 1;
      }

      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      if ((v27 & 1) == 0)
      {
        v16 = 0;
        if ((v13 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_32:
        v24 = sub_1CA94D328();
LABEL_27:

        v23 = v16 + v24;
        if (__OFADD__(v16, v24))
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }

      v16 = 0;
      if (v13)
      {
LABEL_24:
        result = sub_1CA94D328();
        goto LABEL_14;
      }
    }

    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
    v21 = v16 + result;
    if (__OFADD__(v16, result))
    {
      goto LABEL_39;
    }

    if (v31 >> 62)
    {
      v22 = sub_1CA94D328();
    }

    else
    {
      v22 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_40;
    }

LABEL_28:
    ++v6;
    v19 = __OFADD__(v7, v23);
    v7 += v23;
    if (v19)
    {
      goto LABEL_37;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CA52E9E0()
{
  v0 = sub_1CA949F78();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x1E69E10B0];
  sub_1CA949C58();
  v9 = sub_1CA949F68();
  v10 = sub_1CA94CBF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1CA256000, v9, v10, "Received LNAppShortcutsChanged notification, reloading App Shortcuts", v11, 2u);
    OUTLINED_FUNCTION_26();
  }

  (*(v3 + 8))(v7, v0);
  return sub_1CA2737DC(0xD000000000000022, 0x80000001CA9C8EB0, 0, 0);
}

BOOL sub_1CA52EB88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (qword_1EDB9F960 != -1)
  {
    swift_once();
  }

  sub_1CA2786EC(v3, v2);
  sub_1CA2786EC(v4, v5);
  sub_1CA27BAF0();
  v6 = sub_1CA94D1D8();

  return v6 == -1;
}

uint64_t sub_1CA52EC80(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (qword_1EDB9F960 != -1)
  {
    swift_once();
  }

  v6 = sub_1CA2786EC(v3, v2);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = sub_1CA2786EC(v4, v5);
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  if (v8 == v12 && v9 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_1CA94D7F8();
  }

  return v15 & 1;
}

uint64_t sub_1CA52ED70()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v1[3] = v0;
  sub_1CA94C838();
  v1[4] = OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_87();
  v4 = sub_1CA94C7C8();
  v1[5] = v4;
  v1[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA52EDF8, v4, v3);
}

uint64_t sub_1CA52EDF8()
{
  OUTLINED_FUNCTION_0();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_appShortcutDataSource);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_21_17(v2);

  return sub_1CA5F928C();
}

uint64_t sub_1CA52EE8C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v5[8] = v0;

  if (v0)
  {
    v11 = v5[5];
    v12 = v5[6];
    v13 = sub_1CA52F000;
  }

  else
  {
    v5[9] = v3;
    v11 = v5[5];
    v12 = v5[6];
    v13 = sub_1CA52EFA0;
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

uint64_t sub_1CA52EFA0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_2_4();
  v3 = *(v0 + 72);

  return v2(v3);
}

uint64_t sub_1CA52F000()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_5();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1CA52F05C()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x1E69E9840];
  v0[29] = v1;
  v0[30] = v2;
  v0[27] = v3;
  v0[28] = v4;
  sub_1CA94C838();
  v0[31] = OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_87();
  v5 = sub_1CA94C7C8();
  v0[32] = v5;
  v0[33] = v6;
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CA52F11C, v5, v6);
}

uint64_t sub_1CA52F11C()
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = [*(v0 + 216) identifier];
  sub_1CA94C3A8();

  objc_allocWithZone(MEMORY[0x1E69AC860]);
  sub_1CA94C218();
  v4 = sub_1CA334F5C();
  *(v0 + 272) = v4;
  v5 = [objc_allocWithZone(MEMORY[0x1E69ACF58]) initWithOptions_];
  *(v0 + 280) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CA9813B0;
  *(v6 + 32) = v4;
  sub_1CA25B3D0(0, &qword_1EC446320, 0x1E69AC860);
  v7 = v4;
  v8 = sub_1CA94C648();

  *(v0 + 144) = 0;
  v9 = [v5 actionsWithFullyQualifiedIdentifiers:v8 error:v0 + 144];

  v10 = *(v0 + 144);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446328, qword_1CA98C970);
    v11 = sub_1CA94C1C8();
    v12 = v10;

    v13 = [v7 bundleIdentifier];
    v14 = sub_1CA94C3A8();
    v16 = v15;

    v17 = sub_1CA323E30(v14, v16, v11);

    if (!v17)
    {
      goto LABEL_7;
    }

    v18 = [v7 actionIdentifier];
    v19 = sub_1CA94C3A8();
    v21 = v20;

    v22 = sub_1CA323E2C(v19, v21, v17);
    *(v0 + 288) = v22;

    if (v22)
    {
      v23 = *(v0 + 216);
      sub_1CA25B3D0(0, &qword_1EC4454E8, 0x1E69E0B98);
      *(v0 + 296) = sub_1CA52D268(v7, v23, v22, 1);
      *(v0 + 304) = [objc_opt_self() defaultDatabase];
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 208;
      *(v0 + 24) = sub_1CA52F5E8;
      v24 = swift_continuation_init();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4454F0, qword_1CA98AEC0);
      *(v0 + 200) = v25;
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1CA320A2C;
      *(v0 + 168) = &block_descriptor_20;
      *(v0 + 176) = v24;
      OUTLINED_FUNCTION_26_17(v25, sel_createWorkflowWithEnvironment_database_completionHandler_);
      v26 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    else
    {
LABEL_7:
      v27 = *(v0 + 248);

      OUTLINED_FUNCTION_2_4();
      v29 = *MEMORY[0x1E69E9840];

      return v28(0);
    }
  }

  else
  {
    v30 = *(v0 + 248);
    v31 = v10;

    sub_1CA948AD8();

    swift_willThrow();
    OUTLINED_FUNCTION_5();
    v33 = *MEMORY[0x1E69E9840];

    return v32();
  }
}

uint64_t sub_1CA52F5E8()
{
  OUTLINED_FUNCTION_0();
  v11 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = v4[6];
  *(v2 + 312) = v5;
  v6 = v4[33];
  v7 = v4[32];
  if (v5)
  {
    v8 = sub_1CA52FACC;
  }

  else
  {
    v8 = sub_1CA52F73C;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1CA52F73C()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 304);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  *(v0 + 320) = v3;

  if (v2)
  {
    v4 = [*(v0 + 224) localizedPhrase];
    sub_1CA94C3A8();

    v5 = sub_1CA94C368();
  }

  else
  {
    v5 = 0;
  }

  [v3 setName_];

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1CA52F8EC;
  v6 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445908, &qword_1CA9884C8);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1CA44E498;
  *(v0 + 168) = &block_descriptor_9;
  *(v0 + 176) = v6;
  [v3 configureAsSingleStepShortcutIfNecessary_];
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1CA52F8EC()
{
  OUTLINED_FUNCTION_0();
  v9 = *MEMORY[0x1E69E9840];
  v10 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CA52FA18, v6, v5);
}

uint64_t sub_1CA52FA18()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 320);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 248);

  OUTLINED_FUNCTION_2_4();
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_2();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1CA52FACC()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[31];

  swift_willThrow();

  v8 = v0[39];
  OUTLINED_FUNCTION_5();
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

uint64_t sub_1CA52FB94()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_10_23();
  v0[2] = sub_1CA94C838();
  v0[3] = sub_1CA94C828();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_4_41(v1);
  OUTLINED_FUNCTION_9_2();

  return sub_1CA52F05C();
}

uint64_t sub_1CA52FC3C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  v8 = v5[4];
  *v7 = *v1;
  v6[5] = v0;

  v9 = v5[3];
  v10 = v5[2];
  if (v2)
  {
    v11 = sub_1CA94C7C8();
    v13 = v12;
    v14 = sub_1CA52FE10;
  }

  else
  {
    v6[6] = v4;
    v11 = sub_1CA94C7C8();
    v13 = v15;
    v14 = sub_1CA52FDB0;
  }

  return MEMORY[0x1EEE6DFA0](v14, v11, v13);
}

uint64_t sub_1CA52FDB0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2_4();
  v3 = *(v0 + 48);

  return v2(v3);
}

uint64_t sub_1CA52FE10()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_5();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_1CA52FE6C()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v1[3] = v0;
  sub_1CA94C838();
  v1[4] = OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_87();
  v4 = sub_1CA94C7C8();
  v1[5] = v4;
  v1[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA52FEF4, v4, v3);
}

uint64_t sub_1CA52FEF4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC11WorkflowKit27AutoShortcutsAppsDataSource_appShortcutDataSource);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_21_17(v2);

  return sub_1CA52D2E0();
}

uint64_t sub_1CA52FF9C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v5[8] = v0;

  if (v0)
  {
    v11 = v5[5];
    v12 = v5[6];
    v13 = sub_1CA532EB0;
  }

  else
  {
    v5[9] = v3;
    v11 = v5[5];
    v12 = v5[6];
    v13 = sub_1CA532EAC;
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

uint64_t sub_1CA5300B0()
{
  OUTLINED_FUNCTION_0();
  v0[19] = v1;
  sub_1CA94C838();
  v0[20] = OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_87();
  v3 = sub_1CA94C7C8();
  v0[21] = v3;
  v0[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CA530138, v3, v2);
}

uint64_t sub_1CA530138()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16_23();
  v2 = v0[19];
  sub_1CA25B3D0(0, &qword_1EC446330, 0x1E69E0A50);
  v0[23] = sub_1CA5304D8(v2, [objc_allocWithZone(MEMORY[0x1E69E0A30]) initWithSurface_]);
  v0[24] = [objc_opt_self() defaultDatabase];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA5302B4;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4454F0, qword_1CA98AEC0);
  v5 = OUTLINED_FUNCTION_0_50(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1CA320A2C;
  v0[13] = &block_descriptor_16_0;
  v0[14] = v3;
  OUTLINED_FUNCTION_26_17(v5, sel_createWorkflowWithEnvironment_database_completionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1CA5302B4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 200) = v4;
  v5 = v3[22];
  v6 = v3[21];
  if (v4)
  {
    v7 = sub_1CA530448;
  }

  else
  {
    v7 = sub_1CA5303D8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CA5303D8()
{
  OUTLINED_FUNCTION_0();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];

  v4 = v0[18];
  OUTLINED_FUNCTION_2_4();

  return v5(v4);
}

uint64_t sub_1CA530448()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];

  swift_willThrow();

  OUTLINED_FUNCTION_2_4();

  return v5(0);
}

id sub_1CA5304D8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAction:a1 context:a2];

  return v4;
}

uint64_t sub_1CA530534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = sub_1CA27E524();
  v6 = (v15 + 64);
  v7 = *(v15 + 16) + 1;
  while (1)
  {
    if (!--v7)
    {

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v6 - 4);
    v8 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    if (v9 == a1 && v8 == a2)
    {
      break;
    }

    v6 += 5;
    if (sub_1CA94D7F8())
    {
      goto LABEL_11;
    }
  }

  v9 = a1;
LABEL_11:
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();

  *a3 = v9;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  return result;
}

id AutoShortcutsAppsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutoShortcutsAppsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoShortcutsAppsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA5307B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AutoShortcutsAppsDataSource();
  result = sub_1CA949FE8();
  *a1 = result;
  return result;
}

uint64_t sub_1CA5307F0()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1CA530828(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_132:
    v161 = *a1;
    if (!v161)
    {
      goto LABEL_175;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_169:
      v6 = sub_1CA627610(v6);
    }

    v129 = (v6 + 16);
    v130 = *(v6 + 16);
    while (v130 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_172;
      }

      v131 = v6;
      v132 = (v6 + 16 * v130);
      v133 = *v132;
      v134 = &v129[2 * v130];
      v6 = *(v134 + 1);
      sub_1CA531C78(&(*a3)[40 * *v132], &(*a3)[40 * *v134], &(*a3)[40 * v6], v161);
      if (v147)
      {
        break;
      }

      if (v6 < v133)
      {
        goto LABEL_160;
      }

      if (v130 - 2 >= *v129)
      {
        goto LABEL_161;
      }

      *v132 = v133;
      v132[1] = v6;
      v135 = *v129 - v130;
      if (*v129 < v130)
      {
        goto LABEL_162;
      }

      v130 = *v129 - 1;
      sub_1CA627628(v134 + 16, v135, v134);
      *v129 = v130;
      v6 = v131;
    }

LABEL_144:

    return;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5 + 1;
    v140 = v5;
    if (v5 + 1 >= v4)
    {
      goto LABEL_43;
    }

    v151 = v4;
    v8 = *a3;
    v9 = &(*a3)[40 * v7];
    v10 = v9[1];
    v12 = v9[2];
    v11 = v9[3];
    v13 = v9[4];
    v160[0] = *v9;
    v160[1] = v10;
    v160[2] = v12;
    v160[3] = v11;
    v160[4] = v13;
    v161 = v8;
    v14 = &v8[40 * v5];
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];
    v159[0] = *v14;
    v159[1] = v15;
    v159[2] = v16;
    v159[3] = v17;
    v159[4] = v18;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    v144 = sub_1CA52EC80(v160, v159);
    if (v147)
    {

      goto LABEL_144;
    }

    v137 = v6;

    v142 = 40 * v5;
    v6 = &v161[40 * v5 + 56];
    v19 = (v5 + 2);
    v20 = v151;
    while (1)
    {
      v21 = v19;
      if (v7 + 1 >= v20)
      {
        break;
      }

      v161 = v19;
      v148 = v7;
      v22 = *(v6 + 40);
      v23 = *(v6 + 48);
      v24 = *(v6 + 56);
      v25 = *(v6 - 8);
      v26 = *v6;
      v27 = *(v6 + 8);
      v28 = *(v6 + 16);
      v153 = *(v6 + 24);
      v155 = *(v6 - 16);
      v29 = qword_1EDB9F960;
      v30 = *(v6 + 32);
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      if (v29 != -1)
      {
        swift_once();
      }

      v31 = sub_1CA2786EC(v153, v30);
      if (v32)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0;
      }

      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = 0xE000000000000000;
      }

      v35 = sub_1CA2786EC(v155, v25);
      if (v36)
      {
        v37 = v35;
      }

      else
      {
        v37 = 0;
      }

      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0xE000000000000000;
      }

      if (v33 == v37 && v34 == v38)
      {
        v40 = 0;
      }

      else
      {
        v40 = sub_1CA94D7F8();
      }

      v6 += 40;
      v20 = v151;
      v7 = v148 + 1;
      v21 = v161;
      v19 = v161 + 1;
      if ((v144 ^ v40))
      {
        goto LABEL_30;
      }
    }

    v7 = v20;
LABEL_30:
    if (v144)
    {
      v41 = v140;
      if (v7 < v140)
      {
        goto LABEL_168;
      }

      v6 = v137;
      if (v140 < v7)
      {
        if (v20 >= v21)
        {
          v42 = v21;
        }

        else
        {
          v42 = v20;
        }

        v43 = 40 * v42 - 40;
        v44 = v142 + 24;
        v45 = v7;
        do
        {
          if (v41 != --v45)
          {
            v46 = *a3;
            if (!*a3)
            {
              goto LABEL_173;
            }

            v47 = &v46[v44];
            v48 = *&v46[v44 - 24];
            v49 = &v46[v43];
            v50 = *(v47 - 1);
            v51 = *v47;
            v52 = *(v49 + 4);
            v53 = *(v49 + 1);
            *(v47 - 24) = *v49;
            *(v47 - 8) = v53;
            *(v47 + 1) = v52;
            *v49 = v48;
            *(v49 + 8) = v50;
            *(v49 + 24) = v51;
          }

          ++v41;
          v43 -= 40;
          v44 += 40;
        }

        while (v41 < v45);
      }
    }

    else
    {
      v6 = v137;
    }

LABEL_43:
    v54 = a3[1];
    if (v7 >= v54)
    {
      goto LABEL_79;
    }

    if (__OFSUB__(v7, v140))
    {
      goto LABEL_165;
    }

    if (v7 - v140 >= a4)
    {
LABEL_79:
      v56 = v140;
      goto LABEL_80;
    }

    if (__OFADD__(v140, a4))
    {
      goto LABEL_166;
    }

    if (v140 + a4 >= v54)
    {
      v55 = a3[1];
    }

    else
    {
      v55 = (v140 + a4);
    }

    if (v55 < v140)
    {
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    v56 = v140;
    if (v7 != v55)
    {
      break;
    }

LABEL_80:
    if (v7 < v56)
    {
      goto LABEL_164;
    }

    v150 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = *(v6 + 16);
      sub_1CA2E49C0();
      v6 = v127;
    }

    v84 = *(v6 + 16);
    v85 = v84 + 1;
    if (v84 >= *(v6 + 24) >> 1)
    {
      sub_1CA2E49C0();
      v6 = v128;
    }

    *(v6 + 16) = v85;
    v86 = v6 + 32;
    v87 = (v6 + 32 + 16 * v84);
    *v87 = v140;
    v87[1] = v150;
    v161 = *a1;
    if (!v161)
    {
      goto LABEL_174;
    }

    if (v84)
    {
      while (1)
      {
        v88 = v85 - 1;
        v89 = (v86 + 16 * (v85 - 1));
        v90 = (v6 + 16 * v85);
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v91 = *(v6 + 32);
          v92 = *(v6 + 40);
          v101 = __OFSUB__(v92, v91);
          v93 = v92 - v91;
          v94 = v101;
LABEL_100:
          if (v94)
          {
            goto LABEL_151;
          }

          v106 = *v90;
          v105 = v90[1];
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_154;
          }

          v110 = v89[1];
          v111 = v110 - *v89;
          if (__OFSUB__(v110, *v89))
          {
            goto LABEL_157;
          }

          if (__OFADD__(v108, v111))
          {
            goto LABEL_159;
          }

          if (v108 + v111 >= v93)
          {
            if (v93 < v111)
            {
              v88 = v85 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        if (v85 < 2)
        {
          goto LABEL_153;
        }

        v113 = *v90;
        v112 = v90[1];
        v101 = __OFSUB__(v112, v113);
        v108 = v112 - v113;
        v109 = v101;
LABEL_115:
        if (v109)
        {
          goto LABEL_156;
        }

        v115 = *v89;
        v114 = v89[1];
        v101 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v101)
        {
          goto LABEL_158;
        }

        if (v116 < v108)
        {
          goto LABEL_129;
        }

LABEL_122:
        if (v88 - 1 >= v85)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (!*a3)
        {
          goto LABEL_171;
        }

        v120 = (v86 + 16 * (v88 - 1));
        v121 = *v120;
        v122 = v86 + 16 * v88;
        v123 = *(v122 + 8);
        sub_1CA531C78(&(*a3)[40 * *v120], &(*a3)[40 * *v122], &(*a3)[40 * v123], v161);
        if (v147)
        {
          goto LABEL_144;
        }

        if (v123 < v121)
        {
          goto LABEL_146;
        }

        v124 = v6;
        v6 = *(v6 + 16);
        if (v88 > v6)
        {
          goto LABEL_147;
        }

        *v120 = v121;
        v120[1] = v123;
        if (v88 >= v6)
        {
          goto LABEL_148;
        }

        v85 = v6 - 1;
        sub_1CA627628((v122 + 16), v6 - 1 - v88, (v86 + 16 * v88));
        *(v124 + 16) = v6 - 1;
        v125 = v6 > 2;
        v6 = v124;
        if (!v125)
        {
          goto LABEL_129;
        }
      }

      v95 = v86 + 16 * v85;
      v96 = *(v95 - 64);
      v97 = *(v95 - 56);
      v101 = __OFSUB__(v97, v96);
      v98 = v97 - v96;
      if (v101)
      {
        goto LABEL_149;
      }

      v100 = *(v95 - 48);
      v99 = *(v95 - 40);
      v101 = __OFSUB__(v99, v100);
      v93 = v99 - v100;
      v94 = v101;
      if (v101)
      {
        goto LABEL_150;
      }

      v102 = v90[1];
      v103 = v102 - *v90;
      if (__OFSUB__(v102, *v90))
      {
        goto LABEL_152;
      }

      v101 = __OFADD__(v93, v103);
      v104 = v93 + v103;
      if (v101)
      {
        goto LABEL_155;
      }

      if (v104 >= v98)
      {
        v118 = *v89;
        v117 = v89[1];
        v101 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v101)
        {
          goto LABEL_163;
        }

        if (v93 < v119)
        {
          v88 = v85 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_100;
    }

LABEL_129:
    v4 = a3[1];
    v5 = v150;
    if (v150 >= v4)
    {
      goto LABEL_132;
    }
  }

  v138 = v6;
  v152 = *a3;
  v57 = &(*a3)[40 * v7];
  v58 = v140 - v7;
  v141 = v55;
LABEL_53:
  v149 = v7;
  v59 = &v152[40 * v7];
  v60 = *v59;
  v61 = v59[1];
  v62 = v59[2];
  v63 = v59[3];
  v64 = v59[4];
  v143 = v58;
  v145 = v57;
  v65 = v58;
  while (1)
  {
    v154 = v65;
    v66 = *(v57 - 4);
    v157 = *(v57 - 5);
    v158 = v60;
    v68 = *(v57 - 3);
    v67 = *(v57 - 2);
    v69 = *(v57 - 1);
    v156 = qword_1EDB9F960;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    v161 = v66;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    if (v156 != -1)
    {
      swift_once();
    }

    v70 = sub_1CA2786EC(v158, v61);
    if (v71)
    {
      v72 = v70;
    }

    else
    {
      v72 = 0;
    }

    if (v71)
    {
      v73 = v71;
    }

    else
    {
      v73 = 0xE000000000000000;
    }

    v74 = sub_1CA2786EC(v157, v161);
    if (v75)
    {
      v76 = v74;
    }

    else
    {
      v76 = 0;
    }

    if (v75)
    {
      v77 = v75;
    }

    else
    {
      v77 = 0xE000000000000000;
    }

    if (v72 == v76 && v73 == v77)
    {

LABEL_77:
      v7 = v149 + 1;
      v57 = v145 + 40;
      v58 = v143 - 1;
      if ((v149 + 1) == v141)
      {
        v7 = v141;
        v6 = v138;
        goto LABEL_79;
      }

      goto LABEL_53;
    }

    v79 = sub_1CA94D7F8();

    if ((v79 & 1) == 0)
    {
      goto LABEL_77;
    }

    if (!v152)
    {
      break;
    }

    v60 = *v57;
    v61 = *(v57 + 1);
    v80 = *(v57 + 2);
    v81 = *(v57 + 3);
    v82 = *(v57 + 4);
    v83 = *(v57 - 24);
    *v57 = *(v57 - 40);
    *(v57 + 1) = v83;
    *(v57 + 4) = *(v57 - 1);
    *(v57 - 4) = v61;
    *(v57 - 3) = v80;
    *(v57 - 2) = v81;
    *(v57 - 1) = v82;
    *(v57 - 5) = v60;
    v57 -= 40;
    v65 = v154 + 1;
    if (v154 == -1)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
}

void sub_1CA531270(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_117:
    v170 = *a1;
    if (!v170)
    {
      goto LABEL_160;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_119;
    }

    goto LABEL_154;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v154 = v4;
      v138 = v6;
      v6 = *a3;
      v9 = v5;
      v10 = v5 + 1;
      v11 = (*a3 + 40 * v8);
      v12 = v11[1];
      v14 = v11[2];
      v13 = v11[3];
      v15 = v11[4];
      v165 = *v11;
      v166 = v12;
      v167 = v14;
      v168 = v13;
      v169 = v15;
      v16 = (v6 + 40 * v7);
      v17 = v16[1];
      v18 = v16[2];
      v19 = v16[3];
      v20 = v16[4];
      v160 = *v16;
      v161 = v17;
      v162 = v18;
      v163 = v19;
      v164 = v20;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      v152 = sub_1CA52EB88(&v165, &v160);
      if (v145)
      {

LABEL_129:

        return;
      }

      v150 = 40 * v9;
      v21 = (v6 + 40 * v9 + 56);
      v137 = v9;
      v22 = (v9 + 2);
      v8 = v10;
      v23 = v154;
      while (1)
      {
        v24 = v22;
        if (v8 + 1 >= v23)
        {
          break;
        }

        v170 = v22;
        v146 = v8;
        v25 = v21[4];
        v26 = v21[5];
        v27 = v21[6];
        v6 = v21[7];
        v28 = *(v21 - 1);
        v29 = *v21;
        v30 = v21[1];
        v31 = v21[2];
        v155 = v21[3];
        v157 = *(v21 - 2);
        v32 = qword_1EDB9F960;
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        if (v32 != -1)
        {
          swift_once();
        }

        v33 = sub_1CA2786EC(v155, v25);
        if (v34)
        {
          v35 = v33;
        }

        else
        {
          v35 = 0;
        }

        v36 = 0xE000000000000000;
        if (v34)
        {
          v37 = v34;
        }

        else
        {
          v37 = 0xE000000000000000;
        }

        v165 = v35;
        v166 = v37;
        v38 = sub_1CA2786EC(v157, v28);
        if (v39)
        {
          v40 = v38;
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v36 = v39;
        }

        v160 = v40;
        v161 = v36;
        sub_1CA27BAF0();
        v41 = sub_1CA94D1D8();

        v42 = v152 ^ (v41 != -1);
        v21 += 5;
        v8 = v146 + 1;
        v24 = v170;
        v22 = v170 + 1;
        v23 = v154;
        if ((v42 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v8 = v23;
LABEL_23:
      if (v152)
      {
        v7 = v137;
        if (v8 < v137)
        {
          goto LABEL_153;
        }

        v6 = v138;
        if (v137 < v8)
        {
          if (v23 >= v24)
          {
            v43 = v24;
          }

          else
          {
            v43 = v23;
          }

          v44 = 40 * v43 - 40;
          v45 = v150 + 24;
          v46 = v8;
          v47 = v137;
          do
          {
            if (v47 != --v46)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_158;
              }

              v49 = v48 + v45;
              v50 = *(v48 + v45 - 24);
              v51 = v48 + v44;
              v52 = *(v49 - 16);
              v53 = *v49;
              v54 = *(v51 + 32);
              v55 = *(v51 + 16);
              *(v49 - 24) = *v51;
              *(v49 - 8) = v55;
              *(v49 + 8) = v54;
              *v51 = v50;
              *(v51 + 8) = v52;
              *(v51 + 24) = v53;
            }

            ++v47;
            v44 -= 40;
            v45 += 40;
          }

          while (v47 < v46);
        }
      }

      else
      {
        v7 = v137;
        v6 = v138;
      }
    }

    v56 = a3[1];
    if (v8 < v56)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_150;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_64:
    if (v8 < v7)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = *(v6 + 16);
      sub_1CA2E49C0();
      v6 = v127;
    }

    v85 = *(v6 + 16);
    v86 = v85 + 1;
    if (v85 >= *(v6 + 24) >> 1)
    {
      sub_1CA2E49C0();
      v6 = v128;
    }

    *(v6 + 16) = v86;
    v87 = v6 + 32;
    v88 = (v6 + 32 + 16 * v85);
    *v88 = v7;
    v88[1] = v8;
    v170 = *a1;
    if (!v170)
    {
      goto LABEL_159;
    }

    v148 = v8;
    if (v85)
    {
      while (1)
      {
        v89 = v86 - 1;
        v90 = (v87 + 16 * (v86 - 1));
        v91 = (v6 + 16 * v86);
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v92 = *(v6 + 32);
          v93 = *(v6 + 40);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_84:
          if (v95)
          {
            goto LABEL_136;
          }

          v107 = *v91;
          v106 = v91[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_139;
          }

          v111 = v90[1];
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_144;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v86 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        if (v86 < 2)
        {
          goto LABEL_138;
        }

        v114 = *v91;
        v113 = v91[1];
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_99:
        if (v110)
        {
          goto LABEL_141;
        }

        v116 = *v90;
        v115 = v90[1];
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_143;
        }

        if (v117 < v109)
        {
          goto LABEL_113;
        }

LABEL_106:
        if (v89 - 1 >= v86)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v121 = v6;
        v122 = (v87 + 16 * (v89 - 1));
        v123 = *v122;
        v124 = v87 + 16 * v89;
        v6 = *(v124 + 8);
        sub_1CA532160((*a3 + 40 * *v122), (*a3 + 40 * *v124), *a3 + 40 * v6, v170);
        if (v145)
        {
          goto LABEL_129;
        }

        if (v6 < v123)
        {
          goto LABEL_131;
        }

        v125 = *(v121 + 16);
        if (v89 > v125)
        {
          goto LABEL_132;
        }

        *v122 = v123;
        v122[1] = v6;
        if (v89 >= v125)
        {
          goto LABEL_133;
        }

        v86 = v125 - 1;
        sub_1CA627628((v124 + 16), v125 - 1 - v89, (v87 + 16 * v89));
        v6 = v121;
        *(v121 + 16) = v125 - 1;
        if (v125 <= 2)
        {
          goto LABEL_113;
        }
      }

      v96 = v87 + 16 * v86;
      v97 = *(v96 - 64);
      v98 = *(v96 - 56);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_134;
      }

      v101 = *(v96 - 48);
      v100 = *(v96 - 40);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_135;
      }

      v103 = v91[1];
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_137;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_140;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = v90[1];
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_148;
        }

        if (v94 < v120)
        {
          v89 = v86 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_84;
    }

LABEL_113:
    v4 = a3[1];
    v5 = v148;
    if (v148 >= v4)
    {
      goto LABEL_117;
    }
  }

  v57 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_151;
  }

  if (v57 >= v56)
  {
    v57 = a3[1];
  }

  if (v57 < v7)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    v6 = sub_1CA627610(v6);
LABEL_119:
    v129 = (v6 + 16);
    v130 = *(v6 + 16);
    while (v130 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_157;
      }

      v131 = v6;
      v6 += 16 * v130;
      v132 = *v6;
      v133 = &v129[2 * v130];
      v134 = *(v133 + 1);
      sub_1CA532160((*a3 + 40 * *v6), (*a3 + 40 * *v133), *a3 + 40 * v134, v170);
      if (v145)
      {
        break;
      }

      if (v134 < v132)
      {
        goto LABEL_145;
      }

      if (v130 - 2 >= *v129)
      {
        goto LABEL_146;
      }

      *v6 = v132;
      *(v6 + 8) = v134;
      v135 = *v129 - v130;
      if (*v129 < v130)
      {
        goto LABEL_147;
      }

      v130 = *v129 - 1;
      sub_1CA627628(v133 + 16, v135, v133);
      *v129 = v130;
      v6 = v131;
    }

    goto LABEL_129;
  }

  if (v8 == v57)
  {
    goto LABEL_64;
  }

  v139 = v6;
  v149 = *a3;
  v58 = (*a3 + 40 * v8);
  v59 = v7 - v8;
  v141 = v57;
LABEL_45:
  v147 = v8;
  v60 = (v149 + 40 * v8);
  v61 = *v60;
  v62 = v60[1];
  v63 = v60[2];
  v64 = v60[3];
  v65 = v60[4];
  v142 = v59;
  v143 = v58;
  v66 = v59;
  while (1)
  {
    v158 = v61;
    v151 = v66;
    v67 = *(v58 - 4);
    v153 = *(v58 - 5);
    v69 = *(v58 - 3);
    v68 = *(v58 - 2);
    v70 = *(v58 - 1);
    v71 = qword_1EDB9F960;
    v156 = v62;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    v159 = v67;
    sub_1CA94C218();
    v170 = v69;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    if (v71 != -1)
    {
      swift_once();
    }

    v72 = sub_1CA2786EC(v158, v156);
    if (v73)
    {
      v74 = v72;
    }

    else
    {
      v74 = 0;
    }

    v75 = 0xE000000000000000;
    if (v73)
    {
      v76 = v73;
    }

    else
    {
      v76 = 0xE000000000000000;
    }

    v165 = v74;
    v166 = v76;
    v77 = sub_1CA2786EC(v153, v159);
    if (v78)
    {
      v79 = v77;
    }

    else
    {
      v79 = 0;
    }

    if (v78)
    {
      v75 = v78;
    }

    v160 = v79;
    v161 = v75;
    sub_1CA27BAF0();
    v80 = sub_1CA94D1D8();

    if (v80 != -1)
    {
LABEL_62:
      v8 = v147 + 1;
      v58 = v143 + 5;
      v59 = v142 - 1;
      if (v147 + 1 == v141)
      {
        v8 = v141;
        v6 = v139;
        goto LABEL_64;
      }

      goto LABEL_45;
    }

    if (!v149)
    {
      break;
    }

    v61 = *v58;
    v62 = v58[1];
    v81 = v58[2];
    v82 = v58[3];
    v83 = v58[4];
    v84 = *(v58 - 3);
    *v58 = *(v58 - 5);
    *(v58 + 1) = v84;
    v58[4] = *(v58 - 1);
    *(v58 - 4) = v62;
    *(v58 - 3) = v81;
    *(v58 - 2) = v82;
    *(v58 - 1) = v83;
    *(v58 - 5) = v61;
    v58 -= 5;
    v66 = v151 + 1;
    if (v151 == -1)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

uint64_t sub_1CA531C78(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1CA27B60C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[5 * v8];
    v73 = v10;
    v75 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_66;
      }

      v77 = v7;
      v12 = v6[1];
      v13 = v6[2];
      v14 = v6[3];
      v15 = v6[4];
      v16 = v4[1];
      v71 = *v6;
      v72 = *v4;
      v17 = v4[2];
      v18 = v4[3];
      v79 = v4;
      v19 = v4[4];
      v20 = qword_1EDB9F960;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      if (v20 != -1)
      {
        swift_once();
      }

      v21 = sub_1CA2786EC(v71, v12);
      if (v22)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }

      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0xE000000000000000;
      }

      v25 = sub_1CA2786EC(v72, v16);
      if (v26)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0;
      }

      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0xE000000000000000;
      }

      if (v23 == v27 && v24 == v28)
      {
      }

      else
      {
        v30 = sub_1CA94D7F8();

        if (v30)
        {
          v31 = v6;
          v32 = v77;
          v33 = v77 == v6;
          v6 += 5;
          v4 = v79;
          goto LABEL_29;
        }
      }

      v31 = v79;
      v4 = v79 + 5;
      v32 = v77;
      v33 = v77 == v79;
LABEL_29:
      v10 = v73;
      v5 = v75;
      if (!v33)
      {
        v34 = *v31;
        v35 = *(v31 + 1);
        v32[4] = v31[4];
        *v32 = v34;
        *(v32 + 1) = v35;
      }

      v7 = v32 + 5;
    }
  }

  sub_1CA27B60C(a2, (a3 - a2) / 40, a4);
  v10 = &v4[5 * v9];
  v80 = v4;
  v78 = v7;
LABEL_33:
  v36 = v5 - 40;
  v67 = v6 - 5;
  v68 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v74 = v10;
    v76 = v36;
    v38 = *(v10 - 5);
    v39 = *(v10 - 4);
    v10 -= 5;
    v41 = v10[2];
    v40 = v10[3];
    v42 = v10[4];
    v69 = v38;
    v70 = *(v6 - 5);
    v43 = v6;
    v44 = *(v6 - 4);
    v45 = *(v43 - 3);
    v46 = *(v43 - 2);
    v47 = *(v43 - 1);
    v48 = qword_1EDB9F960;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    if (v48 != -1)
    {
      swift_once();
    }

    v49 = sub_1CA2786EC(v69, v39);
    if (v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    v53 = sub_1CA2786EC(v70, v44);
    if (v54)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    if (v51 == v55 && v52 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_1CA94D7F8();
    }

    v5 = v76;
    v6 = v68;

    v7 = v78;
    v59 = (v76 + 40);
    if (v58)
    {
      v6 = v67;
      v4 = v80;
      v10 = v74;
      if (v59 != v68)
      {
        v62 = *v67;
        v63 = *(v67 + 1);
        *(v76 + 32) = v67[4];
        *v76 = v62;
        *(v76 + 16) = v63;
        v6 = v67;
      }

      goto LABEL_33;
    }

    v4 = v80;
    if (v74 != v59)
    {
      v60 = *v10;
      v61 = *(v10 + 1);
      *(v76 + 32) = v10[4];
      *v76 = v60;
      *(v76 + 16) = v61;
    }

    v36 = v76 - 40;
  }

LABEL_66:
  v64 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v64])
  {
    memmove(v6, v4, 40 * v64);
  }

  return 1;
}

uint64_t sub_1CA532160(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 >= v9)
  {
    sub_1CA27B60C(a2, (a3 - a2) / 40, a4);
    v10 = &v4[5 * v9];
    v61 = v4;
    v59 = v7;
LABEL_16:
    v27 = v5 - 40;
    v48 = v6 - 5;
    v49 = v6;
    while (v10 > v4 && v6 > v7)
    {
      v55 = v10;
      v57 = v27;
      v29 = *(v10 - 5);
      v30 = *(v10 - 4);
      v10 -= 5;
      v31 = v6;
      v32 = v10[2];
      v33 = v10[3];
      v34 = v10[4];
      v35 = *(v31 - 4);
      v51 = v29;
      v52 = *(v31 - 5);
      v36 = *(v31 - 3);
      v37 = *(v31 - 2);
      v38 = *(v31 - 1);
      v39 = qword_1EDB9F960;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      if (v39 != -1)
      {
        swift_once();
      }

      sub_1CA2786EC(v51, v30);
      sub_1CA2786EC(v52, v35);
      sub_1CA27BAF0();
      v40 = sub_1CA94D1D8();

      if (v40 == -1)
      {
        v5 = v57;
        v7 = v59;
        v6 = v48;
        v4 = v61;
        v10 = v55;
        if ((v57 + 40) != v49)
        {
          v43 = *v48;
          v44 = *(v48 + 1);
          *(v57 + 32) = v48[4];
          *v57 = v43;
          *(v57 + 16) = v44;
          v6 = v48;
        }

        goto LABEL_16;
      }

      v4 = v61;
      v7 = v59;
      v6 = v49;
      if (v55 != (v57 + 40))
      {
        v41 = *v10;
        v42 = *(v10 + 1);
        *(v57 + 32) = v10[4];
        *v57 = v41;
        *(v57 + 16) = v42;
      }

      v27 = v57 - 40;
    }
  }

  else
  {
    sub_1CA27B60C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[5 * v8];
    v54 = v10;
    v56 = v5;
    while (v4 < v10 && v6 < v5)
    {
      v58 = v7;
      v12 = v6[1];
      v50 = *v6;
      v13 = v6[2];
      v14 = v6[3];
      v15 = v6[4];
      v16 = v4[1];
      v53 = *v4;
      v17 = v4[2];
      v18 = v4[3];
      v60 = v4;
      v19 = v4[4];
      v20 = qword_1EDB9F960;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      if (v20 != -1)
      {
        swift_once();
      }

      sub_1CA2786EC(v50, v12);
      sub_1CA2786EC(v53, v16);
      sub_1CA27BAF0();
      v21 = sub_1CA94D1D8();

      if (v21 == -1)
      {
        v22 = v6;
        v23 = v58;
        v24 = v58 == v6;
        v6 += 5;
        v4 = v60;
      }

      else
      {
        v22 = v60;
        v4 = v60 + 5;
        v23 = v58;
        v24 = v58 == v60;
      }

      v10 = v54;
      v5 = v56;
      if (!v24)
      {
        v25 = *v22;
        v26 = *(v22 + 1);
        v23[4] = v22[4];
        *v23 = v25;
        *(v23 + 1) = v26;
      }

      v7 = v23 + 5;
    }

    v6 = v7;
  }

  v45 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v45])
  {
    memmove(v6, v4, 40 * v45);
  }

  return 1;
}

uint64_t sub_1CA53261C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoShortcutAppSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA532680(uint64_t a1)
{
  v2 = type metadata accessor for AutoShortcutAppSection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of AutoShortcutsAppsDataSource.getLNAction(for:)()
{
  OUTLINED_FUNCTION_14();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of static AutoShortcutsAppsDataSource.getWFWorkflow(for:phrase:bundleIdentifier:)()
{
  OUTLINED_FUNCTION_10_23();
  v7 = (*(v0 + 256) + **(v0 + 256));
  v1 = *(*(v0 + 256) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_41(v3);

  return v7(v5);
}

uint64_t dispatch thunk of AutoShortcutsAppsDataSource.getWFWorkflow(for:phrase:bundleIdentifier:)()
{
  OUTLINED_FUNCTION_10_23();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x108);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_41(v4);

  return v8(v6);
}

uint64_t dispatch thunk of AutoShortcutsAppsDataSource.getWFWorkflow(for:)()
{
  OUTLINED_FUNCTION_14();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x110);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return v8(v6);
}

{
  OUTLINED_FUNCTION_14();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x118);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return v8(v6);
}

uint64_t sub_1CA532DCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1CA532E30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

id sub_1CA532EEC()
{
  v212 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x7041746975514657;
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
  v228 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v229 = v12;
  v13 = &v201 - v228;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v225 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v226 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v227 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v201 - v227;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v224 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v222 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v216 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v221 = &v201;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v201 - v228;
  sub_1CA948D98();
  v31 = [v225 bundleURL];
  v223 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v201 - v227;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v224;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v222;
  v37 = sub_1CA6B3784();
  v38 = v223;
  *(v223 + 15) = v37;
  *(v38 + 18) = v36;
  *(v38 + 19) = @"IconColor";
  *(v38 + 20) = 0x6F6769646E49;
  *(v38 + 21) = 0xE600000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(v38 + 23) = MEMORY[0x1E69E6158];
  *(v38 + 24) = @"IconSymbol";
  strcpy(v38 + 200, "xmark.app.fill");
  v38[215] = -18;
  *(v38 + 28) = v39;
  *(v38 + 29) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v45 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v201 - v228;
  sub_1CA948D98();
  v50 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v201 - v227;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  v54 = v223;
  *(v223 + 30) = v53;
  *(v54 + 33) = v224;
  *(v54 + 34) = @"Parameters";
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_1CA981570;
  v221 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
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
  v219 = swift_allocObject();
  v211 = xmmword_1CA981360;
  *(v219 + 1) = xmmword_1CA981360;
  v57 = @"Class";
  v58 = @"DefaultValue";
  v215 = v57;
  v210 = v58;
  v59 = @"Parameters";
  v60 = @"Items";
  v61 = sub_1CA94C438();
  v213 = v62;
  v214 = v61;
  v63 = sub_1CA94C438();
  *&v209 = v64;
  v218 = &v201;
  MEMORY[0x1EEE9AC00](v63);
  v65 = v228;
  sub_1CA948D98();
  v66 = v225;
  v67 = [v225 bundleURL];
  v208 = &v201;
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v201 - v227;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v214, v213, v63, v209, 0, 0, &v201 - v65, v68);
  v71 = v219;
  v219[4] = v70;
  v72 = sub_1CA94C438();
  v213 = v73;
  v214 = v72;
  v74 = sub_1CA94C438();
  *&v209 = v75;
  v218 = &v201;
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948D98();
  v76 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v201 - v227;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71[5] = sub_1CA2F9F14(v214, v213, v74, v209, 0, 0, &v201 - v65, v77);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v55 + 120) = v71;
  *(v55 + 144) = v79;
  *(v55 + 152) = @"Key";
  strcpy((v55 + 160), "WFQuitAppMode");
  *(v55 + 174) = -4864;
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Label";
  v80 = @"Key";
  v81 = @"Label";
  v82 = v80;
  v83 = v81;
  v214 = v82;
  v207 = v83;
  v84 = sub_1CA94C438();
  v86 = v85;
  v87 = sub_1CA94C438();
  v89 = v88;
  v219 = &v201;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v201 - v228;
  sub_1CA948D98();
  v91 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v201 - v227;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v84, v86, v87, v89, 0, 0, v90, v92);
  *(v55 + 224) = v224;
  *(v55 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  v219 = v95;
  v218 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v222 + 32) = sub_1CA2F864C();
  v96 = swift_initStackObject();
  v209 = xmmword_1CA981400;
  *(v96 + 16) = xmmword_1CA981400;
  *(v96 + 32) = @"AllowsMultipleValues";
  v97 = MEMORY[0x1E69E6370];
  *(v96 + 40) = 1;
  *(v96 + 64) = v97;
  *(v96 + 72) = @"AppSearchType";
  *(v96 + 80) = 0x7070416E65704FLL;
  *(v96 + 88) = 0xE700000000000000;
  v98 = MEMORY[0x1E69E6158];
  v100 = v214;
  v99 = v215;
  *(v96 + 104) = MEMORY[0x1E69E6158];
  *(v96 + 112) = v99;
  v208 = 0x80000001CA99B070;
  *(v96 + 120) = 0xD000000000000014;
  *(v96 + 128) = 0x80000001CA99B070;
  *(v96 + 144) = v98;
  *(v96 + 152) = v100;
  strcpy((v96 + 160), "WFAppsExcept");
  *(v96 + 173) = 0;
  *(v96 + 174) = -5120;
  v101 = v207;
  *(v96 + 184) = v98;
  *(v96 + 192) = v101;
  v102 = @"AllowsMultipleValues";
  v103 = @"AppSearchType";
  v213 = v99;
  v214 = v100;
  v215 = v101;
  v206 = v102;
  v205 = v103;
  v104 = sub_1CA94C438();
  v203 = v105;
  v204 = v104;
  v106 = sub_1CA94C438();
  v108 = v107;
  v207 = &v201;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v201 - v228;
  sub_1CA948D98();
  v110 = v225;
  v111 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = v227;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v96 + 200) = sub_1CA2F9F14(v204, v203, v106, v108, 0, 0, v109, &v201 - v112);
  v114 = v224;
  *(v96 + 224) = v224;
  *(v96 + 232) = @"Placeholder";
  v207 = @"Placeholder";
  v115 = sub_1CA94C438();
  v202 = v116;
  v203 = v115;
  v117 = sub_1CA94C438();
  v201 = v118;
  v204 = &v201;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v201 - v228;
  sub_1CA948D98();
  v120 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v96 + 240) = sub_1CA2F9F14(v203, v202, v117, v201, 0, 0, v119, &v201 - v112);
  *(v96 + 264) = v114;
  *(v96 + 272) = @"RequiredResources";
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v122 = swift_allocObject();
  *(v122 + 16) = v216;
  v203 = @"RequiredResources";
  v123 = MEMORY[0x1E69E6158];
  *(v122 + 32) = sub_1CA94C1E8();
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v96 + 304) = v202;
  *(v96 + 280) = v122;
  sub_1CA94C1E8();
  *(v222 + 40) = sub_1CA2F864C();
  v124 = swift_allocObject();
  *(v124 + 16) = v209;
  *(v124 + 32) = v206;
  *(v124 + 40) = 0;
  v125 = v205;
  *(v124 + 64) = MEMORY[0x1E69E6370];
  *(v124 + 72) = v125;
  *(v124 + 80) = 0x7070416E65704FLL;
  *(v124 + 88) = 0xE700000000000000;
  v126 = v213;
  *(v124 + 104) = v123;
  *(v124 + 112) = v126;
  *(v124 + 120) = 0xD000000000000014;
  *(v124 + 128) = v208;
  v127 = v214;
  *(v124 + 144) = v123;
  *(v124 + 152) = v127;
  *(v124 + 160) = 0x7070414657;
  *(v124 + 168) = 0xE500000000000000;
  v128 = v215;
  *(v124 + 184) = v123;
  *(v124 + 192) = v128;
  v208 = sub_1CA94C438();
  v206 = v129;
  v130 = sub_1CA94C438();
  v205 = v131;
  *&v209 = &v201;
  MEMORY[0x1EEE9AC00](v130);
  v132 = v228;
  sub_1CA948D98();
  v133 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  v134 = v227;
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v124 + 200) = sub_1CA2F9F14(v208, v206, v130, v205, 0, 0, &v201 - v132, &v201 - v134);
  v136 = v224;
  v137 = v207;
  *(v124 + 224) = v224;
  *(v124 + 232) = v137;
  v138 = sub_1CA94C438();
  v207 = v139;
  v208 = v138;
  v140 = sub_1CA94C438();
  v206 = v141;
  *&v209 = &v201;
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948D98();
  v142 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v124 + 240) = sub_1CA2F9F14(v208, v207, v140, v206, 0, 0, &v201 - v132, &v201 - v134);
  v144 = v203;
  *(v124 + 264) = v136;
  *(v124 + 272) = v144;
  v145 = swift_allocObject();
  *(v145 + 16) = v216;
  v146 = MEMORY[0x1E69E6158];
  *(v145 + 32) = sub_1CA94C1E8();
  *(v124 + 304) = v202;
  *(v124 + 280) = v145;
  sub_1CA94C1E8();
  *(v222 + 48) = sub_1CA2F864C();
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1CA981350;
  *(v147 + 32) = v213;
  *(v147 + 40) = 0xD000000000000011;
  *(v147 + 48) = 0x80000001CA99E620;
  v148 = v210;
  *(v147 + 64) = v146;
  *(v147 + 72) = v148;
  *(v147 + 80) = 1;
  v149 = v214;
  *(v147 + 104) = MEMORY[0x1E69E6370];
  *(v147 + 112) = v149;
  *(v147 + 120) = 0xD000000000000012;
  *(v147 + 128) = 0x80000001CA9C8FE0;
  v150 = v215;
  *(v147 + 144) = v146;
  *(v147 + 152) = v150;
  v151 = sub_1CA94C438();
  *&v216 = v152;
  v153 = sub_1CA94C438();
  v155 = v154;
  v220 = &v201;
  MEMORY[0x1EEE9AC00](v153);
  v156 = &v201 - v228;
  sub_1CA948D98();
  v157 = v225;
  v158 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v201 - v227;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v161 = sub_1CA2F9F14(v151, v216, v153, v155, 0, 0, v156, v159);
  *(v147 + 184) = v224;
  *(v147 + 160) = v161;
  sub_1CA94C1E8();
  v162 = sub_1CA2F864C();
  v163 = v222;
  *(v222 + 56) = v162;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v165 = v223;
  *(v223 + 35) = v163;
  *(v165 + 38) = v164;
  *(v165 + 39) = @"ParameterSummary";
  v222 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v224 = swift_allocObject();
  *(v224 + 16) = v211;
  v221 = "Ask to Save Changes";
  v166 = @"ParameterSummary";
  v167 = sub_1CA94C438();
  v169 = v168;
  v170 = sub_1CA94C438();
  v172 = v171;
  v220 = &v201;
  MEMORY[0x1EEE9AC00](v170);
  v173 = &v201 - v228;
  sub_1CA948D98();
  v174 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v201 - v227;
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v177 = sub_1CA2F9F14(v167, v169, v170, v172, 0, 0, v173, v175);
  v178 = objc_allocWithZone(WFActionParameterSummaryValue);
  v179 = sub_1CA65DD78(0xD000000000000026, v221 | 0x8000000000000000, v177);
  *(v224 + 32) = v179;
  v221 = "Quit ${WFQuitAppMode} ${WFApp}";
  v180 = sub_1CA94C438();
  v182 = v181;
  v183 = sub_1CA94C438();
  v185 = v184;
  v220 = &v201;
  MEMORY[0x1EEE9AC00](v183);
  v186 = &v201 - v228;
  sub_1CA948D98();
  v187 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = &v201 - v227;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190 = sub_1CA2F9F14(v180, v182, v183, v185, 0, 0, v186, v188);
  v191 = objc_allocWithZone(WFActionParameterSummaryValue);
  v192 = sub_1CA65DD78(0xD00000000000002DLL, v221 | 0x8000000000000000, v190);
  *(v224 + 40) = v192;
  v193 = v222;
  v194 = sub_1CA65AF90();
  v195 = v223;
  *(v223 + 40) = v194;
  *(v195 + 43) = v193;
  *(v195 + 44) = @"RequiredResources";
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_1CA9813B0;
  v230 = 2;
  v231 = 0;
  v197 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v198 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v230);
  *(v196 + 32) = v199;
  *(v195 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v195 + 45) = v196;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA534704()
{
  v43 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v44 = v5;
  v45 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v39 - v42;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v40 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v39 - v40;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v45, v44, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v45 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 1702194242;
  *(inited + 128) = 0xE400000000000000;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0x69662E6F746F6870;
  *(inited + 168) = 0xEA00000000006C6CLL;
  *(inited + 184) = v19;
  *(inited + 192) = @"Input";
  v44 = 0x80000001CA9933B0;
  v20 = @"IconColor";
  v21 = @"IconSymbol";
  v22 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 200) = v23;
  *(inited + 224) = v24;
  *(inited + 232) = @"Name";
  v25 = @"Name";
  v26 = sub_1CA94C438();
  v28 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v39 = &v39;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v39 - v42;
  sub_1CA948D98();
  v33 = [v41 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v39 - v40;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v34);
  *(inited + 264) = v45;
  *(inited + 272) = @"ResidentCompatible";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v36 = @"ResidentCompatible";
  v37 = sub_1CA94C368();
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 312) = v37;
  *(inited + 320) = 0xD000000000000012;
  *(inited + 328) = v44;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA534C48()
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
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x80000001CA9C9210;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA534FA4()
{
  v147 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9C9240;
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
  v154 = v12;
  v157 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v140 - v157;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v156 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v153 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v155 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v140 - v155;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v151 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v150 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v148 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v149 = &v140;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v140 - v157;
  sub_1CA948D98();
  v33 = [v156 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v140 - v155;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v148, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v151;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v150;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v146 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v150;
  *(v38 + 192) = &unk_1F4A036D0;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v149 = v42;
  v152 = inited;
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v143 = v45;
  v144 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v145 = &v140;
  MEMORY[0x1EEE9AC00](v46);
  v49 = v157;
  sub_1CA948D98();
  v50 = [v156 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v140 - v155;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v144, v143, v46, v48, 0, 0, &v140 - v49, v51);
  v55 = v151;
  v54 = v152;
  v152[30] = v53;
  v54[33] = v55;
  v54[34] = @"Output";
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA9813C0;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  *(v56 + 48) = 1;
  *(v56 + 72) = MEMORY[0x1E69E6370];
  *(v56 + 80) = 0x614E74757074754FLL;
  *(v56 + 88) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438();
  v144 = v59;
  v145 = v58;
  v60 = sub_1CA94C438();
  v143 = v61;
  v148 = &v140;
  MEMORY[0x1EEE9AC00](v60);
  sub_1CA948D98();
  v62 = [v156 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v140 - v155;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 96) = sub_1CA2F9F14(v145, v144, v60, v143, 0, 0, &v140 - v49, v63);
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x7365707954;
  *(v56 + 168) = v150;
  *(v56 + 136) = 0xE500000000000000;
  *(v56 + 144) = &unk_1F4A03700;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = v152;
  v152[35] = v66;
  v67[38] = v149;
  v67[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v149 = swift_allocObject();
  *(v149 + 1) = xmmword_1CA981360;
  v148 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1CA981370;
  *(v68 + 32) = @"Class";
  *(v68 + 40) = 0xD000000000000011;
  *(v68 + 48) = 0x80000001CA99E620;
  *(v68 + 64) = v65;
  *(v68 + 72) = @"DefaultValue";
  *(v68 + 80) = 0;
  *(v68 + 104) = MEMORY[0x1E69E6370];
  *(v68 + 112) = @"Description";
  v144 = @"Class";
  v69 = @"Parameters";
  v70 = @"DefaultValue";
  v71 = @"Description";
  v72 = sub_1CA94C438();
  v74 = v73;
  v75 = sub_1CA94C438();
  v77 = v76;
  v143 = &v140;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v140 - v157;
  sub_1CA948D98();
  v79 = [v156 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v140 - v155;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 120) = sub_1CA2F9F14(v72, v74, v75, v77, 0, 0, v78, v80);
  v82 = v151;
  *(v68 + 144) = v151;
  *(v68 + 152) = @"Key";
  *(v68 + 160) = 0xD000000000000018;
  *(v68 + 168) = 0x80000001CA9C9420;
  *(v68 + 184) = MEMORY[0x1E69E6158];
  *(v68 + 192) = @"Label";
  v83 = @"Key";
  v84 = @"Label";
  v141 = v83;
  v140 = v84;
  v85 = sub_1CA94C438();
  v142 = v86;
  v87 = sub_1CA94C438();
  v89 = v88;
  v143 = &v140;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v140 - v157;
  sub_1CA948D98();
  v91 = [v156 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v140 - v155;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v85, v142, v87, v89, 0, 0, v90, v92);
  *(v68 + 224) = v82;
  *(v68 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  v143 = v95;
  v142 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v149[4] = sub_1CA2F864C();
  v96 = swift_allocObject();
  *(v96 + 16) = v146;
  *(v96 + 32) = v144;
  *(v96 + 40) = 0xD000000000000019;
  *(v96 + 48) = 0x80000001CA99B030;
  v97 = MEMORY[0x1E69E6158];
  v98 = v141;
  *(v96 + 64) = MEMORY[0x1E69E6158];
  *(v96 + 72) = v98;
  *(v96 + 80) = 0x7475706E494657;
  *(v96 + 88) = 0xE700000000000000;
  v99 = v140;
  *(v96 + 104) = v97;
  *(v96 + 112) = v99;
  v100 = sub_1CA94C438();
  v144 = v101;
  v145 = v100;
  v141 = sub_1CA94C438();
  v103 = v102;
  *&v146 = &v140;
  MEMORY[0x1EEE9AC00](v141);
  v104 = &v140 - v157;
  sub_1CA948D98();
  v105 = v156;
  v106 = [v156 bundleURL];
  v140 = &v140;
  MEMORY[0x1EEE9AC00](v106);
  v107 = v155;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v96 + 120) = sub_1CA2F9F14(v145, v144, v141, v103, 0, 0, v104, &v140 - v107);
  v109 = v151;
  *(v96 + 144) = v151;
  *(v96 + 152) = @"Placeholder";
  v110 = @"Placeholder";
  v111 = sub_1CA94C438();
  v144 = v112;
  v145 = v111;
  v141 = sub_1CA94C438();
  v114 = v113;
  *&v146 = &v140;
  MEMORY[0x1EEE9AC00](v141);
  v115 = &v140 - v157;
  sub_1CA948D98();
  v116 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v145, v144, v141, v114, 0, 0, v115, &v140 - v107);
  *(v96 + 184) = v109;
  *(v96 + 160) = v118;
  sub_1CA94C1E8();
  v119 = sub_1CA2F864C();
  v120 = v149;
  v149[5] = v119;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v122 = v152;
  v152[40] = v120;
  v122[43] = v121;
  v122[44] = @"ParameterSummary";
  v123 = @"ParameterSummary";
  v124 = sub_1CA94C438();
  v126 = v125;
  v127 = sub_1CA94C438();
  v129 = v128;
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v140 - v157;
  sub_1CA948D98();
  v131 = [v156 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  v132 = &v140 - v155;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134 = sub_1CA2F9F14(v124, v126, v127, v129, 0, 0, v130, v132);
  v135 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v136 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v137 = v152;
  v152[45] = v135;
  v137[48] = v136;
  v137[49] = @"RequiredResources";
  v137[53] = v150;
  v137[50] = &unk_1F4A03730;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v138 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA53618C()
{
  v143 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9C9510;
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
  v149 = v12;
  v152 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v131 - v152;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v151 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v150 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v148 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v131 - v148;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v147 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v146 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v142 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v145 = &v131;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v131 - v152;
  sub_1CA948D98();
  v33 = [v151 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v131 - v148;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v142, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v147;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v146;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x6C6C69662E676174;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v141 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x7475706E494657;
  *(v40 + 104) = 0xE700000000000000;
  *(v40 + 120) = v39;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v139;
  *(v40 + 192) = &unk_1F4A037B0;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"IconSymbolColor";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v46;
  *(inited + 344) = v47;
  *(inited + 352) = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v146 = &v131;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v131 - v152;
  sub_1CA948D98();
  v56 = [v151 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v131 - v148;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  *(inited + 384) = v147;
  *(inited + 392) = @"Parameters";
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v146 = swift_allocObject();
  *(v146 + 1) = xmmword_1CA981360;
  v145 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CA981380;
  *(v59 + 32) = @"AllowsMultipleValues";
  *(v59 + 40) = 1;
  *(v59 + 64) = MEMORY[0x1E69E6370];
  *(v59 + 72) = @"Class";
  *(v59 + 80) = 0xD000000000000015;
  *(v59 + 88) = 0x80000001CA99B1E0;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 104) = MEMORY[0x1E69E6158];
  *(v59 + 112) = @"FilePickerSupportedTypes";
  *(v59 + 120) = &unk_1F4A037E0;
  *(v59 + 144) = v139;
  *(v59 + 152) = @"Key";
  *(v59 + 160) = 0x7475706E494657;
  *(v59 + 168) = 0xE700000000000000;
  *(v59 + 184) = v60;
  *(v59 + 192) = @"Label";
  v61 = @"Class";
  v62 = @"Key";
  v63 = @"Label";
  v138 = v61;
  v137 = v62;
  v139 = v63;
  v64 = @"Parameters";
  v65 = @"AllowsMultipleValues";
  v66 = @"FilePickerSupportedTypes";
  v67 = sub_1CA94C438();
  v134 = v68;
  v135 = v67;
  v133 = sub_1CA94C438();
  v70 = v69;
  v136 = &v131;
  MEMORY[0x1EEE9AC00](v133);
  v71 = &v131 - v152;
  sub_1CA948D98();
  v72 = [v151 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v148;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 200) = sub_1CA2F9F14(v135, v134, v133, v70, 0, 0, v71, &v131 - v73);
  v75 = v147;
  *(v59 + 224) = v147;
  *(v59 + 232) = @"Placeholder";
  v136 = @"Placeholder";
  v76 = sub_1CA94C438();
  v133 = v77;
  v134 = v76;
  v78 = sub_1CA94C438();
  v132 = v79;
  v135 = &v131;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v131 - v152;
  sub_1CA948D98();
  v81 = [v151 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v134, v133, v78, v132, 0, 0, v80, &v131 - v73);
  *(v59 + 264) = v75;
  *(v59 + 240) = v83;
  _s3__C3KeyVMa_0(0);
  v135 = v84;
  v134 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v146[4] = sub_1CA2F864C();
  v85 = swift_initStackObject();
  *(v85 + 16) = v141;
  *(v85 + 32) = v138;
  *(v85 + 40) = 0xD00000000000001FLL;
  *(v85 + 48) = 0x80000001CA9C95B0;
  v86 = MEMORY[0x1E69E6158];
  v87 = v137;
  *(v85 + 64) = MEMORY[0x1E69E6158];
  *(v85 + 72) = v87;
  *(v85 + 80) = 0xD000000000000012;
  *(v85 + 88) = 0x80000001CA9C95D0;
  v88 = v139;
  *(v85 + 104) = v86;
  *(v85 + 112) = v88;
  v89 = sub_1CA94C438();
  v139 = v90;
  v140 = v89;
  v91 = sub_1CA94C438();
  v138 = v92;
  *&v141 = &v131;
  MEMORY[0x1EEE9AC00](v91);
  v93 = v152;
  sub_1CA948D98();
  v94 = v151;
  v95 = [v151 bundleURL];
  v137 = &v131;
  v144 = inited;
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v131 - v148;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 120) = sub_1CA2F9F14(v140, v139, v91, v138, 0, 0, &v131 - v93, v96);
  v98 = v147;
  v99 = v136;
  *(v85 + 144) = v147;
  *(v85 + 152) = v99;
  v100 = sub_1CA94C438();
  v139 = v101;
  v140 = v100;
  v102 = sub_1CA94C438();
  v138 = v103;
  *&v141 = &v131;
  MEMORY[0x1EEE9AC00](v102);
  sub_1CA948D98();
  v104 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = v148;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v140, v139, v102, v138, 0, 0, &v131 - v93, &v131 - v105);
  *(v85 + 184) = v98;
  *(v85 + 160) = v107;
  sub_1CA94C1E8();
  v108 = sub_1CA2F864C();
  v109 = v146;
  v146[5] = v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v111 = v144;
  v144[50] = v109;
  v111[53] = v110;
  v111[54] = @"ParameterSummary";
  v112 = @"ParameterSummary";
  v113 = sub_1CA94C438();
  v115 = v114;
  v116 = sub_1CA94C438();
  v118 = v117;
  v147 = &v131;
  MEMORY[0x1EEE9AC00](v116);
  v119 = &v131 - v152;
  sub_1CA948D98();
  v120 = [v151 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v113, v115, v116, v118, 0, 0, v119, &v131 - v105);
  v123 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v124 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v125 = v144;
  v144[55] = v123;
  v125[58] = v124;
  v125[59] = @"RequiredResources";
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_1CA9813B0;
  v153 = 2;
  v154 = 0;
  v127 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v128 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v153);
  *(v126 + 32) = v129;
  v125[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v125[60] = v126;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA537260()
{
  v103 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9C96F0;
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
  v108 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = v12;
  v13 = &v97 - v108;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v107 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v105 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v106 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v97 - v106;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v104 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v102 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v101 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v99 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v100 = &v97;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v97 - v108;
  sub_1CA948D98();
  v33 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v97 - v106;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v99, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v104;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v101;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconName";
  *(inited + 200) = 0x74756F6B726F57;
  *(inited + 208) = 0xE700000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"InputPassthrough";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v39 = @"IconName";
  v40 = @"InputPassthrough";
  v41 = sub_1CA94C368();
  *(inited + 304) = v38;
  *(inited + 272) = v41;
  *(inited + 280) = 0xD000000000000027;
  *(inited + 288) = 0x80000001CA9C9760;
  v42 = sub_1CA94C368();
  v99 = 0x80000001CA9C9790;
  *(inited + 312) = v42;
  *(inited + 320) = 0xD000000000000012;
  *(inited + 328) = 0x80000001CA9C9790;
  *(inited + 344) = v38;
  *(inited + 352) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v101 = &v97;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v97 - v108;
  sub_1CA948D98();
  v51 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v97 - v106;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 384) = v104;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v101 = swift_allocObject();
  *(v101 + 1) = xmmword_1CA9813B0;
  v100 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA981380;
  *(v54 + 32) = @"Class";
  *(v54 + 40) = 0xD00000000000001ALL;
  *(v54 + 48) = 0x80000001CA99B690;
  v55 = MEMORY[0x1E69E6158];
  *(v54 + 64) = MEMORY[0x1E69E6158];
  *(v54 + 72) = @"DefaultValue";
  v56 = @"Parameters";
  v57 = @"Class";
  v58 = @"DefaultValue";
  *(v54 + 80) = sub_1CA94C1E8();
  *(v54 + 104) = v102;
  *(v54 + 112) = @"Hidden";
  *(v54 + 144) = MEMORY[0x1E69E6370];
  *(v54 + 120) = 1;
  v59 = @"Hidden";
  *(v54 + 152) = sub_1CA94C368();
  *(v54 + 160) = 0xD000000000000012;
  *(v54 + 168) = v99;
  *(v54 + 184) = v55;
  *(v54 + 192) = @"Key";
  v102 = 0xD000000000000013;
  *(v54 + 200) = 0xD000000000000013;
  *(v54 + 208) = 0x80000001CA99B6D0;
  *(v54 + 224) = v55;
  *(v54 + 232) = @"Label";
  v60 = @"Key";
  v61 = @"Label";
  v62 = sub_1CA94C438();
  v98 = v63;
  v64 = sub_1CA94C438();
  v66 = v65;
  v99 = &v97;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v97 - v108;
  sub_1CA948D98();
  v68 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v97 - v106;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71 = sub_1CA2F9F14(v62, v98, v64, v66, 0, 0, v67, v69);
  *(v54 + 264) = v104;
  *(v54 + 240) = v71;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v72 = sub_1CA2F864C();
  v73 = v101;
  v101[4] = v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v73;
  *(inited + 424) = v74;
  *(inited + 432) = @"ParameterSummary";
  v75 = @"ParameterSummary";
  v76 = sub_1CA94C438();
  v78 = v77;
  v79 = sub_1CA94C438();
  v81 = v80;
  v104 = &v97;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v97 - v108;
  sub_1CA948D98();
  v83 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v97 - v106;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v76, v78, v79, v81, 0, 0, v82, v84);
  v87 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v88 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v87;
  *(inited + 464) = v88;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 480) = &unk_1F4A03890;
  *(inited + 504) = v89;
  *(inited + 512) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CA97EDF0;
  *(v90 + 56) = MEMORY[0x1E69E6158];
  *(v90 + 32) = v102;
  *(v90 + 40) = 0x80000001CA99A9A0;
  v110 = 2;
  v111 = 1;
  v91 = type metadata accessor for WFDeviceIdiomResource();
  v92 = objc_allocWithZone(v91);
  v93 = @"RemoteExecuteOnPlatforms";
  v94 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v110);
  *(v90 + 88) = v91;
  *(v90 + 64) = v95;
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 520) = v90;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

WFVariableString __swiftcall WFVariableString._bridgeToObjectiveC()()
{
  v1 = *v0;
  result._stringsAndVariables = v2;
  result.super.isa = v1;
  return result;
}

id static WFVariableString._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    a1 = [objc_allocWithZone(WFVariableString) init];
    v2 = 0;
  }

  *a2 = a1;

  return v2;
}

uint64_t WFVariableString.variables.getter()
{
  v1 = [*v0 variables];
  sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
  OUTLINED_FUNCTION_93();
  v2 = sub_1CA94C658();

  return v2;
}

WorkflowKit::WFVariableString __swiftcall WFVariableString.init()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(WFVariableString) init];
  *v1 = v2;
  result.variableString._stringsAndVariables = v3;
  result.variableString.super.isa = v2;
  return result;
}

id sub_1CA538038()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA94C368();

  v2 = [v0 initWithString_];

  return v2;
}

WorkflowKit::WFVariableString __swiftcall WFVariableString.init(variable:)(WFVariable variable)
{
  isa = variable.super.isa;
  v3 = v1;
  v4 = [objc_allocWithZone(WFVariableString) initWithVariable_];

  *v3 = v4;
  result.variableString._stringsAndVariables = v6;
  result.variableString.super.isa = v5;
  return result;
}

WorkflowKit::WFVariableString __swiftcall WFVariableString.init(stringsAndVariables:)(Swift::OpaquePointer stringsAndVariables)
{
  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  v3 = sub_1CA538154();
  *v2 = v3;
  result.variableString._stringsAndVariables = v4;
  result.variableString.super.isa = v3;
  return result;
}

id sub_1CA538154()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446360, &qword_1CA98AFF8);
  OUTLINED_FUNCTION_93();
  v1 = sub_1CA94C648();

  v2 = [v0 initWithStringsAndVariables_];

  return v2;
}

WorkflowKit::WFVariableString __swiftcall WFVariableString.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  v3 = sub_1CA538038();
  *v2 = v3;
  result.variableString._stringsAndVariables = v4;
  result.variableString.super.isa = v3;
  return result;
}

id WFVariableString.init(stringInterpolation:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  result = sub_1CA538154();
  *a2 = result;
  return result;
}

uint64_t WFVariableString.stringsAndVariables.getter()
{
  v1 = [*v0 stringsAndVariables];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446360, &qword_1CA98AFF8);
  OUTLINED_FUNCTION_93();
  v2 = sub_1CA94C658();

  return v2;
}

uint64_t sub_1CA5382FC(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t WFVariableString.process(context:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a1;
  v3[9] = a2;
  v3[10] = *v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA538370()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v1[1] = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446368, &qword_1CA98B008);
  *v3 = v0;
  v3[1] = sub_1CA53847C;

  return MEMORY[0x1EEE6DE38](v0 + 16);
}

uint64_t sub_1CA53847C()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v2 + 104) = v0;

  if (v0)
  {
    v8 = sub_1CA5385C8;
  }

  else
  {
    v9 = *(v2 + 88);

    v8 = sub_1CA53858C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CA53858C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return (*(v0 + 8))();
}

uint64_t sub_1CA5385C8()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

void sub_1CA538628(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4463A0, &qword_1CA98B2A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1CA539514;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA5388C0;
  aBlock[3] = &block_descriptor_16_1;
  v13 = _Block_copy(aBlock);

  [a2 processWithContext:a3 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_1CA5387E8(int a1, int a2, int a3, int a4, int a5, id a6)
{
  if (a6)
  {
    v6 = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4463A0, &qword_1CA98B2A0);
    return sub_1CA94C7D8();
  }

  else
  {
    sub_1CA94C218();
    sub_1CA948778();
    sub_1CA94C218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4463A0, &qword_1CA98B2A0);
    return sub_1CA94C7E8();
  }
}

uint64_t sub_1CA5388C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a2)
  {
    v10 = sub_1CA94C3A8();
    v12 = v11;
    if (v6)
    {
LABEL_3:
      v13 = sub_1CA94C3A8();
      v6 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:

  v15 = a5;
  v9(v10, v12, a3, v13, v6, a5);
}

uint64_t WFVariableString.processIntoContentItems(context:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5389B8()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA538ABC;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
  OUTLINED_FUNCTION_3_0(v4);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_44();
  v0[13] = v5;
  v0[14] = v3;
  [v1 processIntoContentItemsWithContext:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA538ABC()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 168) = v5;
  if (v5)
  {
    v6 = sub_1CA538BE0;
  }

  else
  {
    v6 = sub_1CA538BC4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA538BE0()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t WFVariableString.processIntoStringsAndAttachments(context:options:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = *v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA538C80()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA538D8C;
  v4 = swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
  OUTLINED_FUNCTION_3_0(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_44();
  v0[13] = v6;
  v0[14] = v4;
  [v1 processIntoStringsAndAttachmentsWithContext:v3 options:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA538D8C()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 176) = v5;
  if (v5)
  {
    v6 = sub_1CA538E94;
  }

  else
  {
    v6 = sub_1CA5395FC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA538E94()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2();
}

uint64_t WFVariableString.variables(ofType:)(uint64_t a1)
{
  v2 = [*v1 variablesOfType_];
  sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
  OUTLINED_FUNCTION_93();
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t WFVariableString.hash(into:)()
{
  v1 = *v0;
  v2 = sub_1CA94CFF8();
  return MEMORY[0x1CCAA2780](v2);
}

uint64_t WFVariableString.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  v2 = sub_1CA94CFF8();
  MEMORY[0x1CCAA2780](v2);
  return sub_1CA94D968();
}

uint64_t sub_1CA53905C()
{
  v1 = *v0;
  sub_1CA94D918();
  v2 = sub_1CA94CFF8();
  MEMORY[0x1CCAA2780](v2);
  return sub_1CA94D968();
}

id sub_1CA5390B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  result = sub_1CA538038();
  *a2 = result;
  return result;
}

id WFVariableString.init(serializedRepresentation:variableProvider:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  result = sub_1CA399E74(a1, a2, a3);
  *a4 = result;
  return result;
}

id WFVariableString.serializedRepresentation()()
{
  v1 = [*v0 serializedRepresentation];

  return v1;
}

uint64_t sub_1CA5391C4()
{
  sub_1CA94C368();
  MEMORY[0x1CCAA1490]();
  OUTLINED_FUNCTION_6_35();

  return sub_1CA94C6E8();
}

Swift::Void __swiftcall WFVariableStringInterpolation.appendInterpolation(_:)(WFVariable a1)
{
  v1 = a1.super.isa;
  MEMORY[0x1CCAA1490]();
  OUTLINED_FUNCTION_6_35();

  sub_1CA94C6E8();
}

id static WFVariableString._forceBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t static WFVariableString._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

unint64_t sub_1CA53931C()
{
  result = qword_1EC446378;
  if (!qword_1EC446378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446378);
  }

  return result;
}

unint64_t sub_1CA539374()
{
  result = qword_1EC446380;
  if (!qword_1EC446380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446380);
  }

  return result;
}

unint64_t sub_1CA5393CC()
{
  result = qword_1EC446388;
  if (!qword_1EC446388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446388);
  }

  return result;
}

unint64_t sub_1CA539424()
{
  result = qword_1EC446390;
  if (!qword_1EC446390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446390);
  }

  return result;
}

unint64_t sub_1CA539488()
{
  result = qword_1EC446398;
  if (!qword_1EC446398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446398);
  }

  return result;
}

uint64_t sub_1CA539514(int a1, int a2, int a3, int a4, int a5, void *a6)
{
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4463A0, &qword_1CA98B2A0) - 8) + 80);

  return sub_1CA5387E8(a1, a2, a3, a4, a5, a6);
}

uint64_t block_copy_helper_14_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA539620()
{
  v13 = v0;
  v1 = *(v0 + 16);
  sub_1CA94AAA8();
  v2 = sub_1CA94D048();
  sub_1CA94AA88();
  v3 = objc_allocWithZone(MEMORY[0x1E696E7E8]);
  v4 = sub_1CA471124(v2);
  v12[3] = sub_1CA25B3D0(0, &qword_1EC4463B8, 0x1E696E7E8);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 currencyAmountValueType];
  v8 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v9 = sub_1CA320AB4(v12, v7);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1CA539750()
{
  OUTLINED_FUNCTION_0();
  v0[12] = v1;
  v0[13] = v2;
  v0[11] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00) - 8) + 64) + 15;
  v0[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA5397EC, 0, 0);
}

uint64_t sub_1CA5397EC()
{
  v3 = [*(v0 + 96) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v4 = sub_1CA55BC3C(v0 + 16);
  *(v0 + 120) = v4;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v6 = [v4 amount];
  v7 = v6;
  if (!v6)
  {
    sub_1CA25B3D0(0, &qword_1EC4463B0, 0x1E696AB90);
    v7 = sub_1CA94CFB8();
  }

  v8 = *(v0 + 96);
  *(v0 + 48) = sub_1CA94D068();
  *(v0 + 56) = v9;
  *(v0 + 64) = v10;

  *(v0 + 72) = sub_1CA5EF428(v4);
  *(v0 + 80) = v11;
  *(v0 + 128) = v11;
  v12 = [v8 displayRepresentation];
  *(v0 + 136) = v12;
  if (v12)
  {
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_1CA539A20;
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);

    return sub_1CA3BC4F4();
  }

  else
  {
    OUTLINED_FUNCTION_0_51();
    v16 = sub_1CA94B458();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v16);
    OUTLINED_FUNCTION_3_38();

    OUTLINED_FUNCTION_5();

    return v17();
  }
}

uint64_t sub_1CA539A20()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = *(v2 + 144);
  *v4 = *v1;
  *(v3 + 152) = v0;

  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = *(v3 + 128);

    v8 = sub_1CA539C14;
  }

  else
  {

    v8 = sub_1CA539B64;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CA539B64()
{
  OUTLINED_FUNCTION_0_51();
  v2 = sub_1CA94B458();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
  OUTLINED_FUNCTION_3_38();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA539C14()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 152);
  v2 = *(v0 + 112);

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA539C78(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CA30A15C;

  return sub_1CA539750();
}

uint64_t sub_1CA539D28()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1CA30A2D4;

  return sub_1CA539600(v2);
}

id sub_1CA539DF0()
{
  v0 = sub_1CA949D18();
  v148 = *(v0 - 8);
  v149 = v0;
  v1 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v147 = &v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFMarkupAction");
  *(inited + 55) = -18;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = inited;
  v6 = @"ActionClass";
  v7 = @"ActionKeywords";
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA948E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v156 = v16;
  v158 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v140 - v158;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v154 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v155 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v157 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v140 - v157;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v8, v10, v11, v13, 0, 0, v17, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v151 = v5;
  v152 = v24;
  v5[10] = v23;
  v5[13] = v24;
  v5[14] = @"Description";
  v153 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1CA97EDF0;
  *(v25 + 32) = @"DescriptionResult";
  v26 = @"Description";
  v27 = @"DescriptionResult";
  v145 = sub_1CA94C438();
  *&v144 = v28;
  v143 = sub_1CA94C438();
  v30 = v29;
  v146 = &v140;
  MEMORY[0x1EEE9AC00](v143);
  v31 = &v140 - v158;
  sub_1CA948D98();
  v32 = v154;
  v33 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v157;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v25 + 40) = sub_1CA2F9F14(v145, v144, v143, v30, 0, 0, v31, &v140 - v34);
  v36 = v152;
  *(v25 + 64) = v152;
  *(v25 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v145 = sub_1CA94C438();
  *&v144 = v38;
  v143 = sub_1CA94C438();
  v40 = v39;
  v146 = &v140;
  MEMORY[0x1EEE9AC00](v143);
  v41 = &v140 - v158;
  sub_1CA948D98();
  v42 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v145, v144, v143, v40, 0, 0, v41, &v140 - v34);
  *(v25 + 104) = v36;
  *(v25 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v45 = v153;
  v46 = sub_1CA6B3784();
  v47 = v151;
  v151[15] = v46;
  v47[18] = v45;
  v47[19] = @"IconColor";
  v47[20] = 2036429383;
  v47[21] = 0xE400000000000000;
  v48 = MEMORY[0x1E69E6158];
  v47[23] = MEMORY[0x1E69E6158];
  v47[24] = @"IconSymbol";
  v47[25] = 0xD00000000000001BLL;
  v47[26] = 0x80000001CA9C98E0;
  v47[28] = v48;
  v47[29] = @"Input";
  v49 = v48;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v50 = swift_initStackObject();
  v144 = xmmword_1CA981350;
  *(v50 + 16) = xmmword_1CA981350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 48) = 1;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x656D75636F444657;
  *(v50 + 104) = 0xEA0000000000746ELL;
  *(v50 + 120) = v49;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 184) = 0xE500000000000000;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v50 + 216) = v153;
  *(v50 + 192) = &unk_1F4A038C0;
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"Input";
  v55 = sub_1CA94C1E8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v146 = v56;
  v47[30] = v55;
  v47[33] = v56;
  v47[34] = @"Name";
  v57 = @"Name";
  v58 = sub_1CA94C438();
  v142 = v59;
  v60 = sub_1CA94C438();
  v62 = v61;
  v143 = &v140;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v140 - v158;
  sub_1CA948D98();
  v64 = v154;
  v65 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v140 - v157;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v58, v142, v60, v62, 0, 0, v63, v66);
  v69 = v151;
  v70 = v152;
  v151[35] = v68;
  v69[38] = v70;
  v69[39] = @"Output";
  v71 = swift_allocObject();
  *(v71 + 16) = v144;
  *(v71 + 32) = 0x75736F6C63736944;
  *(v71 + 40) = 0xEF6C6576654C6572;
  *(v71 + 48) = 0x63696C627550;
  *(v71 + 56) = 0xE600000000000000;
  *(v71 + 72) = MEMORY[0x1E69E6158];
  *(v71 + 80) = 0x656C7069746C754DLL;
  *(v71 + 88) = 0xE800000000000000;
  *(v71 + 96) = 1;
  *(v71 + 120) = MEMORY[0x1E69E6370];
  *(v71 + 128) = 0x614E74757074754FLL;
  *(v71 + 136) = 0xEA0000000000656DLL;
  v72 = @"Output";
  v73 = sub_1CA94C438();
  v143 = v74;
  *&v144 = v73;
  v75 = sub_1CA94C438();
  v77 = v76;
  v145 = &v140;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v140 - v158;
  sub_1CA948D98();
  v79 = [v64 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v140 - v157;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 144) = sub_1CA2F9F14(v144, v143, v75, v77, 0, 0, v78, v80);
  *(v71 + 168) = v70;
  *(v71 + 176) = 0x7365707954;
  *(v71 + 216) = v153;
  *(v71 + 184) = 0xE500000000000000;
  *(v71 + 192) = &unk_1F4A03900;
  v82 = MEMORY[0x1E69E6158];
  v83 = sub_1CA94C1E8();
  v84 = v151;
  v151[40] = v83;
  v84[43] = v146;
  v84[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v146 = swift_allocObject();
  *(v146 + 1) = xmmword_1CA9813B0;
  v145 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1CA981370;
  *(v85 + 32) = @"Class";
  *(v85 + 40) = 0xD000000000000019;
  *(v85 + 48) = 0x80000001CA99B030;
  *(v85 + 64) = v82;
  *(v85 + 72) = @"Key";
  *(v85 + 80) = 0x656D75636F444657;
  *(v85 + 88) = 0xEA0000000000746ELL;
  *(v85 + 104) = v82;
  *(v85 + 112) = @"Label";
  v86 = @"Parameters";
  v87 = @"Class";
  v88 = @"Key";
  v89 = @"Label";
  v90 = sub_1CA94C438();
  v142 = v91;
  v143 = v90;
  v92 = sub_1CA94C438();
  v141 = v93;
  *&v144 = &v140;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v140 - v158;
  sub_1CA948D98();
  v95 = v154;
  v96 = [v154 bundleURL];
  v140 = &v140;
  MEMORY[0x1EEE9AC00](v96);
  v97 = v84;
  v98 = &v140 - v157;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 120) = sub_1CA2F9F14(v143, v142, v92, v141, 0, 0, v94, v98);
  v100 = v152;
  *(v85 + 144) = v152;
  *(v85 + 152) = @"Placeholder";
  v101 = @"Placeholder";
  v102 = sub_1CA94C438();
  v142 = v103;
  v143 = v102;
  v141 = sub_1CA94C438();
  v105 = v104;
  *&v144 = &v140;
  MEMORY[0x1EEE9AC00](v141);
  v106 = &v140 - v158;
  sub_1CA948D98();
  v107 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v140 - v157;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 160) = sub_1CA2F9F14(v143, v142, v141, v105, 0, 0, v106, v108);
  *(v85 + 184) = v100;
  *(v85 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1CA981310;
  v111 = @"PreferredTypes";
  v112 = v147;
  sub_1CA949CA8();
  v113 = sub_1CA949C68();
  v115 = v114;
  (*(v148 + 8))(v112, v149);
  *(v110 + 32) = v113;
  *(v110 + 40) = v115;
  *(v85 + 224) = v153;
  *(v85 + 200) = v110;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v116 = sub_1CA2F864C();
  v117 = v146;
  v146[4] = v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v97[45] = v117;
  v97[48] = v118;
  v97[49] = @"ParameterSummary";
  v119 = @"ParameterSummary";
  v120 = sub_1CA94C438();
  v122 = v121;
  v123 = sub_1CA94C438();
  v125 = v124;
  v152 = &v140;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v140 - v158;
  sub_1CA948D98();
  v127 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v140 - v157;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v120, v122, v123, v125, 0, 0, v126, v128);
  v131 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v132 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v97[50] = v131;
  v97[53] = v132;
  v97[54] = @"RequiredResources";
  v97[55] = &unk_1F4A03940;
  v133 = v153;
  v97[58] = v153;
  v97[59] = @"UserInterfaceClasses";
  v134 = @"RequiredResources";
  v135 = @"UserInterfaceClasses";
  v136 = sub_1CA94C1E8();
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v97[60] = v136;
  v97[63] = v137;
  v97[64] = @"UserInterfaces";
  v97[68] = v133;
  v97[65] = &unk_1F4A039D0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v138 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA53AFB4()
{
  v226 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x7365726464414657;
  *(inited + 48) = 0xEF6E6F6974634173;
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
  v245 = v12;
  v246 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v219 - v246;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v241 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v243 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v244 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v219 - v244;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v242 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v240 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
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
  v239 = &v219;
  MEMORY[0x1EEE9AC00](v30);
  v235 = inited;
  v33 = &v219 - v246;
  sub_1CA948D98();
  v34 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v219 - v244;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v35);
  *(v24 + 64) = v242;
  *(v24 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v240;
  v39 = sub_1CA6B3784();
  v40 = v235;
  v235[20] = v39;
  v40[23] = v38;
  v40[24] = @"IconColor";
  v40[25] = 1953392980;
  v40[26] = 0xE400000000000000;
  v41 = MEMORY[0x1E69E6158];
  v40[28] = MEMORY[0x1E69E6158];
  v40[29] = @"IconSymbol";
  v40[30] = 0x6E697070616DLL;
  v40[31] = 0xE600000000000000;
  v40[33] = v41;
  v40[34] = @"IconSymbolColor";
  v40[35] = 0x6E65657247;
  v40[36] = 0xE500000000000000;
  v40[38] = v41;
  v40[39] = @"InputPassthrough";
  v42 = MEMORY[0x1E69E6370];
  *(v40 + 320) = 0;
  v40[43] = v42;
  v40[44] = @"LocallyProcessesData";
  *(v40 + 360) = 1;
  v40[48] = v42;
  v40[49] = @"Name";
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"IconSymbolColor";
  v46 = @"InputPassthrough";
  v47 = @"LocallyProcessesData";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v240 = &v219;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v219 - v246;
  sub_1CA948D98();
  v56 = v241;
  v57 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v219 - v244;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v58);
  v61 = v235;
  v235[50] = v60;
  v62 = v242;
  v61[53] = v242;
  v61[54] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v63 = swift_initStackObject();
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
  v239 = v66;
  v67 = sub_1CA94C438();
  v69 = v68;
  v240 = &v219;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v219 - v246;
  sub_1CA948D98();
  v71 = [v56 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v219 - v244;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v65, v239, v67, v69, 0, 0, v70, v72);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v63 + 192) = &unk_1F4A03A40;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v77 = v235;
  v235[55] = v75;
  v77[58] = v76;
  v77[59] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v240 = swift_allocObject();
  *(v240 + 1) = xmmword_1CA981410;
  v239 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_allocObject();
  v233 = xmmword_1CA981380;
  *(v78 + 16) = xmmword_1CA981380;
  *(v78 + 32) = @"AutocapitalizationType";
  *(v78 + 40) = 0x7364726F57;
  *(v78 + 48) = 0xE500000000000000;
  *(v78 + 64) = v74;
  *(v78 + 72) = @"Class";
  v234 = 0x80000001CA99B500;
  *(v78 + 80) = 0xD000000000000014;
  *(v78 + 88) = 0x80000001CA99B500;
  *(v78 + 104) = v74;
  *(v78 + 112) = @"Key";
  strcpy((v78 + 120), "WFAddressLine1");
  *(v78 + 135) = -18;
  *(v78 + 144) = v74;
  *(v78 + 152) = @"Label";
  v79 = @"AutocapitalizationType";
  v80 = @"Class";
  v81 = @"Key";
  v82 = @"Label";
  v83 = v79;
  v84 = v80;
  v85 = v81;
  v86 = v82;
  v230 = v83;
  v229 = v84;
  v228 = v85;
  v232 = v86;
  v87 = @"Parameters";
  v236 = sub_1CA94C438();
  v231 = v88;
  v89 = sub_1CA94C438();
  v91 = v90;
  v237 = &v219;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v219 - v246;
  sub_1CA948D98();
  v93 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v219 - v244;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 160) = sub_1CA2F9F14(v236, v231, v89, v91, 0, 0, v92, v94);
  v96 = v242;
  *(v78 + 184) = v242;
  *(v78 + 192) = @"Placeholder";
  v231 = @"Placeholder";
  v236 = sub_1CA94C438();
  v227 = v97;
  v98 = sub_1CA94C438();
  *&v225 = v99;
  v237 = &v219;
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v219 - v246;
  sub_1CA948D98();
  v101 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v219 - v244;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 200) = sub_1CA2F9F14(v236, v227, v98, v225, 0, 0, v100, v102);
  *(v78 + 224) = v96;
  *(v78 + 232) = @"TextContentType";
  v104 = MEMORY[0x1E69E6158];
  *(v78 + 264) = MEMORY[0x1E69E6158];
  v227 = 0xD000000000000012;
  *(v78 + 240) = 0xD000000000000012;
  *(v78 + 248) = 0x80000001CA9C9B20;
  _s3__C3KeyVMa_0(0);
  v237 = v105;
  v236 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v224 = @"TextContentType";
  sub_1CA94C1E8();
  v240[4] = sub_1CA2F864C();
  v106 = swift_allocObject();
  v225 = xmmword_1CA981370;
  *(v106 + 16) = xmmword_1CA981370;
  v108 = v229;
  v107 = v230;
  *(v106 + 32) = v230;
  *(v106 + 40) = 0x7364726F57;
  *(v106 + 48) = 0xE500000000000000;
  *(v106 + 64) = v104;
  *(v106 + 72) = v108;
  v109 = v234;
  *(v106 + 80) = 0xD000000000000014;
  *(v106 + 88) = v109;
  v110 = v228;
  *(v106 + 104) = v104;
  *(v106 + 112) = v110;
  strcpy((v106 + 120), "WFAddressLine2");
  *(v106 + 135) = -18;
  v111 = v232;
  *(v106 + 144) = v104;
  *(v106 + 152) = v111;
  v223 = v107;
  v229 = v108;
  v222 = v110;
  v228 = v111;
  v112 = sub_1CA94C438();
  v114 = v113;
  v115 = sub_1CA94C438();
  v117 = v116;
  v232 = &v219;
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v219 - v246;
  sub_1CA948D98();
  v119 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v219 - v244;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 160) = sub_1CA2F9F14(v112, v114, v115, v117, 0, 0, v118, v120);
  v122 = v224;
  *(v106 + 184) = v242;
  *(v106 + 192) = v122;
  v123 = MEMORY[0x1E69E6158];
  *(v106 + 224) = MEMORY[0x1E69E6158];
  *(v106 + 200) = v227;
  *(v106 + 208) = 0x80000001CA9C9B60;
  v230 = v122;
  sub_1CA94C1E8();
  v240[5] = sub_1CA2F864C();
  v124 = swift_allocObject();
  *(v124 + 16) = v233;
  v125 = v223;
  *(v124 + 32) = v223;
  *(v124 + 40) = 0x7364726F57;
  *(v124 + 48) = 0xE500000000000000;
  v126 = v123;
  v128 = v228;
  v127 = v229;
  *(v124 + 64) = v123;
  *(v124 + 72) = v127;
  *(v124 + 80) = 0xD000000000000014;
  *(v124 + 88) = v234;
  *(v124 + 104) = v123;
  v129 = v222;
  *(v124 + 112) = v222;
  *(v124 + 120) = 0x797469434657;
  *(v124 + 128) = 0xE600000000000000;
  *(v124 + 144) = v126;
  *(v124 + 152) = v128;
  v232 = v125;
  v229 = v127;
  v223 = v129;
  v224 = v128;
  v227 = sub_1CA94C438();
  v222 = v130;
  v221 = sub_1CA94C438();
  v132 = v131;
  v228 = &v219;
  MEMORY[0x1EEE9AC00](v221);
  v133 = v246;
  sub_1CA948D98();
  v134 = v241;
  v135 = [v241 bundleURL];
  v220 = &v219;
  MEMORY[0x1EEE9AC00](v135);
  v136 = v244;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v124 + 160) = sub_1CA2F9F14(v227, v222, v221, v132, 0, 0, &v219 - v133, &v219 - v136);
  v138 = v242;
  v139 = v231;
  *(v124 + 184) = v242;
  *(v124 + 192) = v139;
  v227 = v139;
  v228 = sub_1CA94C438();
  v222 = v140;
  v141 = sub_1CA94C438();
  v221 = v142;
  v231 = &v219;
  MEMORY[0x1EEE9AC00](v141);
  sub_1CA948D98();
  v143 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v228, v222, v141, v221, 0, 0, &v219 - v133, &v219 - v136);
  v146 = v230;
  *(v124 + 200) = v145;
  *(v124 + 224) = v138;
  *(v124 + 232) = v146;
  v147 = MEMORY[0x1E69E6158];
  *(v124 + 264) = MEMORY[0x1E69E6158];
  *(v124 + 240) = 0x4373736572646441;
  *(v124 + 248) = 0xEB00000000797469;
  v231 = v146;
  sub_1CA94C1E8();
  v240[6] = sub_1CA2F864C();
  v148 = swift_allocObject();
  *(v148 + 16) = v233;
  *(v148 + 32) = v232;
  *(v148 + 40) = 0x7364726F57;
  *(v148 + 48) = 0xE500000000000000;
  v149 = v229;
  *(v148 + 64) = v147;
  *(v148 + 72) = v149;
  *(v148 + 80) = 0xD000000000000014;
  *(v148 + 88) = v234;
  v150 = v223;
  *(v148 + 104) = v147;
  *(v148 + 112) = v150;
  *(v148 + 120) = 0x65746174534657;
  *(v148 + 128) = 0xE700000000000000;
  *(v148 + 144) = v147;
  v151 = v224;
  *(v148 + 152) = v224;
  v228 = v149;
  v229 = v150;
  v230 = v151;
  v152 = sub_1CA94C438();
  v222 = v153;
  v223 = v152;
  v154 = sub_1CA94C438();
  v221 = v155;
  v224 = &v219;
  MEMORY[0x1EEE9AC00](v154);
  v156 = &v219 - v246;
  sub_1CA948D98();
  v157 = v241;
  v158 = [v241 bundleURL];
  v220 = &v219;
  MEMORY[0x1EEE9AC00](v158);
  v159 = v244;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v148 + 160) = sub_1CA2F9F14(v223, v222, v154, v221, 0, 0, v156, &v219 - v159);
  v161 = v242;
  v162 = v227;
  *(v148 + 184) = v242;
  *(v148 + 192) = v162;
  v227 = v162;
  v163 = sub_1CA94C438();
  v222 = v164;
  v223 = v163;
  v221 = sub_1CA94C438();
  v166 = v165;
  v224 = &v219;
  MEMORY[0x1EEE9AC00](v221);
  v167 = &v219 - v246;
  sub_1CA948D98();
  v168 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v148 + 200) = sub_1CA2F9F14(v223, v222, v221, v166, 0, 0, v167, &v219 - v159);
  v170 = v231;
  *(v148 + 224) = v161;
  *(v148 + 232) = v170;
  v171 = MEMORY[0x1E69E6158];
  *(v148 + 264) = MEMORY[0x1E69E6158];
  strcpy((v148 + 240), "AddressState");
  *(v148 + 253) = 0;
  *(v148 + 254) = -5120;
  sub_1CA94C1E8();
  v240[7] = sub_1CA2F864C();
  v172 = swift_allocObject();
  *(v172 + 16) = v233;
  *(v172 + 32) = v228;
  *(v172 + 40) = 0xD000000000000014;
  *(v172 + 48) = v234;
  v173 = v229;
  *(v172 + 64) = v171;
  *(v172 + 72) = v173;
  strcpy((v172 + 80), "WFPostalCode");
  *(v172 + 93) = 0;
  *(v172 + 94) = -5120;
  *(v172 + 104) = v171;
  *(v172 + 112) = @"KeyboardType";
  *(v172 + 120) = 0xD000000000000015;
  *(v172 + 128) = 0x80000001CA9C9BE0;
  v174 = v230;
  *(v172 + 144) = v171;
  *(v172 + 152) = v174;
  v175 = @"KeyboardType";
  *&v233 = sub_1CA94C438();
  v224 = v176;
  v177 = sub_1CA94C438();
  v223 = v178;
  v234 = &v219;
  MEMORY[0x1EEE9AC00](v177);
  v179 = v246;
  sub_1CA948D98();
  v180 = v241;
  v181 = [v241 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  v182 = &v219 - v244;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 160) = sub_1CA2F9F14(v233, v224, v177, v223, 0, 0, &v219 - v179, v182);
  v184 = v242;
  v185 = v227;
  *(v172 + 184) = v242;
  *(v172 + 192) = v185;
  *&v233 = sub_1CA94C438();
  v224 = v186;
  v187 = sub_1CA94C438();
  v223 = v188;
  v234 = &v219;
  MEMORY[0x1EEE9AC00](v187);
  sub_1CA948D98();
  v189 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v189);
  v190 = &v219 - v244;
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 200) = sub_1CA2F9F14(v233, v224, v187, v223, 0, 0, &v219 - v179, v190);
  v192 = v231;
  *(v172 + 224) = v184;
  *(v172 + 232) = v192;
  v193 = MEMORY[0x1E69E6158];
  *(v172 + 264) = MEMORY[0x1E69E6158];
  *(v172 + 240) = 0x6F436C6174736F50;
  *(v172 + 248) = 0xEA00000000006564;
  sub_1CA94C1E8();
  v240[8] = sub_1CA2F864C();
  v194 = swift_allocObject();
  *(v194 + 16) = v225;
  *(v194 + 32) = v232;
  *(v194 + 40) = 0x7364726F57;
  *(v194 + 48) = 0xE500000000000000;
  v195 = v228;
  *(v194 + 64) = v193;
  *(v194 + 72) = v195;
  *(v194 + 80) = 0xD000000000000017;
  *(v194 + 88) = 0x80000001CA9C9C50;
  v196 = v229;
  *(v194 + 104) = v193;
  *(v194 + 112) = v196;
  *(v194 + 120) = 0x72746E756F434657;
  *(v194 + 128) = 0xE900000000000079;
  v197 = v230;
  *(v194 + 144) = v193;
  *(v194 + 152) = v197;
  v234 = sub_1CA94C438();
  *&v233 = v198;
  v199 = sub_1CA94C438();
  v232 = v200;
  v238 = &v219;
  MEMORY[0x1EEE9AC00](v199);
  v201 = &v219 - v246;
  sub_1CA948D98();
  v202 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  v203 = v244;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v194 + 160) = sub_1CA2F9F14(v234, v233, v199, v232, 0, 0, v201, &v219 - v203);
  v205 = v227;
  *(v194 + 184) = v242;
  *(v194 + 192) = v205;
  v234 = sub_1CA94C438();
  *&v233 = v206;
  v207 = sub_1CA94C438();
  v232 = v208;
  v238 = &v219;
  MEMORY[0x1EEE9AC00](v207);
  v209 = &v219 - v246;
  sub_1CA948D98();
  v210 = [v180 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v212 = sub_1CA2F9F14(v234, v233, v207, v232, 0, 0, v209, &v219 - v203);
  *(v194 + 224) = v242;
  *(v194 + 200) = v212;
  sub_1CA94C1E8();
  v213 = sub_1CA2F864C();
  v214 = v240;
  v240[9] = v213;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v216 = v235;
  v235[60] = v214;
  v216[63] = v215;
  v216[64] = @"ResidentCompatible";
  v216[68] = MEMORY[0x1E69E6370];
  *(v216 + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v217 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA53CBE4()
{
  v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v659 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = sub_1CA94C1E8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000011;
  v656 = 0xD000000000000011;
  *(inited + 88) = 0x80000001CA9AC960;
  *(inited + 96) = sub_1CA94C1E8();
  v657 = v2;
  *(inited + 120) = v2;
  *(inited + 128) = 1701667150;
  *(inited + 136) = 0xE400000000000000;
  v3 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v676 = v11;
  v677 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v631 - v677;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v675 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v679 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v678 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v631 - v678;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v674 = v19;
  *(inited + 144) = v18;
  *(inited + 168) = v19;
  *(inited + 176) = 0x6D656863534C5255;
  v642 = 0xEA00000000007365;
  *(inited + 184) = 0xEA00000000007365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v20 = swift_allocObject();
  v646 = v20;
  v647 = xmmword_1CA97EDF0;
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 32) = 0x6F646F7774;
  *(v20 + 40) = 0xE500000000000000;
  v21 = swift_initStackObject();
  v645 = v21;
  v658 = xmmword_1CA9813C0;
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = 0x736E6F69746341;
  *(v21 + 40) = 0xE700000000000000;
  v672 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v644 = swift_allocObject();
  v650 = xmmword_1CA981310;
  *(v644 + 16) = xmmword_1CA981310;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA9813E0;
  strcpy((v22 + 32), "ActionKeywords");
  *(v22 + 47) = -18;
  v23 = sub_1CA94C438();
  v25 = v24;
  v26 = sub_1CA94C438();
  v28 = v27;
  v671 = &v631;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v631 - v677;
  sub_1CA948D98();
  v30 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v643 = inited;
  v31 = &v631 - v678;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 48) = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v31);
  *(v22 + 72) = v674;
  strcpy((v22 + 80), "CreationDate");
  *(v22 + 93) = 0;
  *(v22 + 94) = -5120;
  v641 = sub_1CA948CB8();
  *(v22 + 120) = v641;
  __swift_allocate_boxed_opaque_existential_1((v22 + 96));
  sub_1CA948C28();
  *(v22 + 128) = 0x7470697263736544;
  *(v22 + 136) = 0xEB000000006E6F69;
  v671 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v33 = swift_initStackObject();
  *(v33 + 16) = v650;
  *(v33 + 32) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = sub_1CA94C438();
  v669 = v36;
  v37 = sub_1CA94C438();
  v39 = v38;
  v670 = &v631;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v631 - v677;
  sub_1CA948D98();
  v41 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v631 - v678;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v35, v669, v37, v39, 0, 0, v40, v42);
  *(v33 + 64) = v674;
  *(v33 + 40) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v45 = v671;
  v46 = sub_1CA6B3784();
  v640 = v22;
  *(v22 + 144) = v46;
  *(v22 + 168) = v45;
  *(v22 + 176) = 0x74616D726F46;
  *(v22 + 184) = 0xE600000000000000;
  *(v22 + 192) = 0xD00000000000003FLL;
  *(v22 + 200) = 0x80000001CA9C9D10;
  v47 = MEMORY[0x1E69E6158];
  *(v22 + 216) = MEMORY[0x1E69E6158];
  *(v22 + 224) = 0x696669746E656449;
  *(v22 + 232) = 0xEA00000000007265;
  *(v22 + 240) = 6579297;
  *(v22 + 248) = 0xE300000000000000;
  *(v22 + 264) = v47;
  strcpy((v22 + 272), "InputMapping");
  *(v22 + 285) = 0;
  *(v22 + 286) = -5120;
  v672 = swift_allocObject();
  *(v672 + 1) = xmmword_1CA981340;
  v48 = swift_allocObject();
  v664 = xmmword_1CA981380;
  *(v48 + 16) = xmmword_1CA981380;
  strcpy((v48 + 32), "DestinationKey");
  *(v48 + 47) = -18;
  *(v48 + 48) = 1802723700;
  *(v48 + 56) = 0xE400000000000000;
  *(v48 + 72) = v47;
  *(v48 + 80) = 0x74616E6974736544;
  *(v48 + 88) = 0xEF657079546E6F69;
  strcpy((v48 + 96), "URLQueryValue");
  *(v48 + 110) = -4864;
  *(v48 + 120) = v47;
  *(v48 + 128) = 0x73616C436D657449;
  v665 = 0x80000001CA993390;
  *(v48 + 136) = 0xE900000000000073;
  *(v48 + 144) = 0xD000000000000013;
  *(v48 + 152) = 0x80000001CA993390;
  *(v48 + 168) = v47;
  *(v48 + 176) = 0x6574656D61726150;
  *(v48 + 184) = 0xEB00000000495572;
  v671 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v670 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v49 = swift_allocObject();
  *(v49 + 16) = v659;
  v662 = 0x80000001CA99B500;
  v663 = 0xD000000000000014;
  *(v49 + 32) = @"Class";
  *(v49 + 40) = 0xD000000000000014;
  *(v49 + 48) = 0x80000001CA99B500;
  *(v49 + 64) = v47;
  *(v49 + 72) = @"Label";
  v50 = @"Class";
  v51 = @"Label";
  v52 = v50;
  v53 = v51;
  v648 = v52;
  v651 = v53;
  v54 = sub_1CA94C438();
  v667 = v55;
  v668 = v54;
  v56 = sub_1CA94C438();
  v666 = v57;
  v669 = &v631;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v631 - v677;
  sub_1CA948D98();
  v59 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = v678;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 80) = sub_1CA2F9F14(v668, v667, v56, v666, 0, 0, v58, &v631 - v60);
  v62 = v674;
  *(v49 + 104) = v674;
  *(v49 + 112) = @"Placeholder";
  v649 = @"Placeholder";
  v63 = sub_1CA94C438();
  v667 = v64;
  v668 = v63;
  v65 = sub_1CA94C438();
  v666 = v66;
  v669 = &v631;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v631 - v677;
  sub_1CA948D98();
  v68 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 120) = sub_1CA2F9F14(v668, v667, v65, v666, 0, 0, v67, &v631 - v60);
  *(v49 + 144) = v62;
  *(v49 + 152) = @"TextAlignment";
  v70 = MEMORY[0x1E69E6158];
  *(v49 + 184) = MEMORY[0x1E69E6158];
  *(v49 + 160) = 0x7468676952;
  *(v49 + 168) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v669 = v71;
  v668 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  *&v639 = @"TextAlignment";
  sub_1CA94C1E8();
  v72 = v671;
  *(v48 + 192) = sub_1CA2F864C();
  *(v48 + 216) = v72;
  *(v48 + 224) = 0x654B656372756F53;
  v667 = 0xE900000000000079;
  *(v48 + 232) = 0xE900000000000079;
  *(v48 + 240) = 0x7361546F646F7774;
  *(v48 + 248) = 0xE90000000000006BLL;
  *(v48 + 264) = v70;
  *(v48 + 272) = 0x7954656372756F53;
  *(v48 + 312) = v70;
  *(v48 + 280) = 0xEA00000000006570;
  *(v48 + 288) = 0x6574656D61726150;
  v666 = 0xE900000000000072;
  *(v48 + 296) = 0xE900000000000072;
  v672[4] = sub_1CA94C1E8();
  v73 = swift_allocObject();
  v661 = xmmword_1CA981300;
  *(v73 + 16) = xmmword_1CA981300;
  v660 = 0x80000001CA9ACAF0;
  *(v73 + 32) = 0xD000000000000013;
  *(v73 + 40) = 0x80000001CA9ACAF0;
  v654 = 0x80000001CA9ACCF0;
  v74 = v663;
  *(v73 + 48) = v663;
  *(v73 + 56) = 0x80000001CA9ACCF0;
  *(v73 + 72) = v70;
  *(v73 + 80) = 0x6D726F4665746144;
  v655 = 0xEA00000000007461;
  *(v73 + 88) = 0xEA00000000007461;
  *(v73 + 96) = 0x2D4D4D2D79797979;
  *(v73 + 104) = 0xEA00000000006464;
  *(v73 + 120) = v70;
  strcpy((v73 + 128), "DestinationKey");
  *(v73 + 143) = -18;
  *(v73 + 144) = 6649188;
  *(v73 + 152) = 0xE300000000000000;
  *(v73 + 168) = v70;
  *(v73 + 176) = 0x74616E6974736544;
  *(v73 + 184) = 0xEF657079546E6F69;
  strcpy((v73 + 192), "URLQueryValue");
  *(v73 + 206) = -4864;
  *(v73 + 216) = v70;
  *(v73 + 224) = 0x73616C436D657449;
  v653 = 0x80000001CA993AC0;
  v75 = v656;
  *(v73 + 232) = 0xE900000000000073;
  *(v73 + 240) = v75;
  *(v73 + 248) = 0x80000001CA993AC0;
  *(v73 + 264) = v70;
  *(v73 + 272) = 0x6574656D61726150;
  *(v73 + 280) = 0xEB00000000495572;
  v76 = swift_allocObject();
  *(v76 + 16) = v664;
  *(v76 + 64) = v70;
  v652 = 0x80000001CA9AB710;
  v77 = v648;
  *(v76 + 32) = v648;
  *(v76 + 40) = v74;
  *(v76 + 48) = 0x80000001CA9AB710;
  v648 = v77;
  *(v76 + 72) = sub_1CA94C368();
  *(v76 + 80) = 1702125892;
  *(v76 + 88) = 0xE400000000000000;
  v78 = v651;
  *(v76 + 104) = v70;
  *(v76 + 112) = v78;
  v638 = v78;
  v79 = sub_1CA94C438();
  v636 = v80;
  v637 = v79;
  v81 = sub_1CA94C438();
  v635 = v82;
  v651 = &v631;
  MEMORY[0x1EEE9AC00](v81);
  v83 = v677;
  sub_1CA948D98();
  v84 = v675;
  v85 = [v675 bundleURL];
  v634 = &v631;
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v631 - v678;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 120) = sub_1CA2F9F14(v637, v636, v81, v635, 0, 0, &v631 - v83, v86);
  v88 = v674;
  v89 = v649;
  *(v76 + 144) = v674;
  *(v76 + 152) = v89;
  v649 = v89;
  v90 = sub_1CA94C438();
  v636 = v91;
  v637 = v90;
  v92 = sub_1CA94C438();
  v635 = v93;
  v651 = &v631;
  MEMORY[0x1EEE9AC00](v92);
  sub_1CA948D98();
  v94 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v631 - v678;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 160) = sub_1CA2F9F14(v637, v636, v92, v635, 0, 0, &v631 - v83, v95);
  *(v76 + 184) = v88;
  *(v76 + 192) = @"ResultType";
  *(v76 + 200) = 0x676E69727453;
  *(v76 + 208) = 0xE600000000000000;
  v97 = MEMORY[0x1E69E6158];
  v98 = v639;
  *(v76 + 224) = MEMORY[0x1E69E6158];
  *(v76 + 232) = v98;
  *(v76 + 264) = v97;
  v99 = v97;
  *(v76 + 240) = 0x7468676952;
  *(v76 + 248) = 0xE500000000000000;
  v100 = @"ResultType";
  *&v639 = v98;
  v651 = v100;
  sub_1CA94C1E8();
  v101 = v671;
  *(v73 + 288) = sub_1CA2F864C();
  *(v73 + 312) = v101;
  *(v73 + 320) = 0x654B656372756F53;
  *(v73 + 328) = v667;
  strcpy((v73 + 336), "twodoDueDate");
  *(v73 + 349) = 0;
  *(v73 + 350) = -5120;
  *(v73 + 360) = v99;
  *(v73 + 368) = 0x7954656372756F53;
  *(v73 + 408) = v99;
  *(v73 + 376) = 0xEA00000000006570;
  *(v73 + 384) = 0x6574656D61726150;
  *(v73 + 392) = v666;
  v672[5] = sub_1CA94C1E8();
  v102 = swift_allocObject();
  *(v102 + 16) = v661;
  *(v102 + 32) = 0xD000000000000013;
  v103 = v663;
  *(v102 + 40) = v660;
  *(v102 + 48) = v103;
  v104 = v655;
  *(v102 + 56) = v654;
  *(v102 + 72) = v99;
  *(v102 + 80) = 0x6D726F4665746144;
  *(v102 + 88) = v104;
  *(v102 + 96) = 0x6D6D3A4848;
  *(v102 + 104) = 0xE500000000000000;
  *(v102 + 120) = v99;
  strcpy((v102 + 128), "DestinationKey");
  *(v102 + 143) = -18;
  *(v102 + 144) = 0x656D6954657564;
  *(v102 + 152) = 0xE700000000000000;
  *(v102 + 168) = v99;
  *(v102 + 176) = 0x74616E6974736544;
  *(v102 + 184) = 0xEF657079546E6F69;
  strcpy((v102 + 192), "URLQueryValue");
  *(v102 + 206) = -4864;
  *(v102 + 216) = v99;
  *(v102 + 224) = 0x73616C436D657449;
  *(v102 + 232) = 0xE900000000000073;
  v105 = v653;
  *(v102 + 240) = v656;
  *(v102 + 248) = v105;
  *(v102 + 264) = v99;
  *(v102 + 272) = 0x6574656D61726150;
  v106 = v99;
  *(v102 + 280) = 0xEB00000000495572;
  v107 = swift_allocObject();
  *(v107 + 16) = v664;
  *(v107 + 64) = v106;
  v108 = v648;
  *(v107 + 32) = v648;
  *(v107 + 40) = v103;
  *(v107 + 48) = v652;
  v648 = v108;
  *(v107 + 72) = sub_1CA94C368();
  *(v107 + 80) = 1701669204;
  *(v107 + 88) = 0xE400000000000000;
  v109 = v638;
  *(v107 + 104) = v106;
  *(v107 + 112) = v109;
  v638 = v109;
  v110 = sub_1CA94C438();
  v635 = v111;
  v636 = v110;
  v112 = sub_1CA94C438();
  v634 = v113;
  v637 = &v631;
  MEMORY[0x1EEE9AC00](v112);
  v114 = v677;
  sub_1CA948D98();
  v115 = [v84 bundleURL];
  v633 = &v631;
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v631 - v678;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 120) = sub_1CA2F9F14(v636, v635, v112, v634, 0, 0, &v631 - v114, v116);
  v118 = v674;
  v119 = v649;
  *(v107 + 144) = v674;
  *(v107 + 152) = v119;
  v649 = v119;
  v120 = sub_1CA94C438();
  v635 = v121;
  v636 = v120;
  v634 = sub_1CA94C438();
  v123 = v122;
  v637 = &v631;
  MEMORY[0x1EEE9AC00](v634);
  sub_1CA948D98();
  v124 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v631 - v678;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 160) = sub_1CA2F9F14(v636, v635, v634, v123, 0, 0, &v631 - v114, v125);
  v127 = v651;
  *(v107 + 184) = v118;
  *(v107 + 192) = v127;
  *(v107 + 200) = 0x676E69727453;
  *(v107 + 208) = 0xE600000000000000;
  v128 = MEMORY[0x1E69E6158];
  v129 = v639;
  *(v107 + 224) = MEMORY[0x1E69E6158];
  *(v107 + 232) = v129;
  *(v107 + 264) = v128;
  *(v107 + 240) = 0x7468676952;
  *(v107 + 248) = 0xE500000000000000;
  *&v639 = v129;
  sub_1CA94C1E8();
  v130 = v671;
  *(v102 + 288) = sub_1CA2F864C();
  *(v102 + 312) = v130;
  *(v102 + 320) = 0x654B656372756F53;
  *(v102 + 328) = v667;
  strcpy((v102 + 336), "twodoDueTime");
  *(v102 + 349) = 0;
  *(v102 + 350) = -5120;
  *(v102 + 360) = v128;
  *(v102 + 368) = 0x7954656372756F53;
  *(v102 + 408) = v128;
  *(v102 + 376) = 0xEA00000000006570;
  *(v102 + 384) = 0x6574656D61726150;
  *(v102 + 392) = v666;
  v672[6] = sub_1CA94C1E8();
  v131 = swift_allocObject();
  *(v131 + 16) = v661;
  v132 = v660;
  *(v131 + 32) = 0xD000000000000013;
  *(v131 + 40) = v132;
  v133 = v663;
  v134 = v654;
  v135 = v655;
  *(v131 + 48) = v663;
  *(v131 + 56) = v134;
  *(v131 + 72) = v128;
  *(v131 + 80) = 0x6D726F4665746144;
  v660 = 0xD000000000000010;
  *(v131 + 88) = v135;
  *(v131 + 96) = 0xD000000000000010;
  *(v131 + 104) = 0x80000001CA9C9DE0;
  *(v131 + 120) = v128;
  strcpy((v131 + 128), "DestinationKey");
  *(v131 + 143) = -18;
  *(v131 + 144) = 0x7472617473;
  *(v131 + 152) = 0xE500000000000000;
  *(v131 + 168) = v128;
  *(v131 + 176) = 0x74616E6974736544;
  *(v131 + 184) = 0xEF657079546E6F69;
  strcpy((v131 + 192), "URLQueryValue");
  *(v131 + 206) = -4864;
  *(v131 + 216) = v128;
  *(v131 + 224) = 0x73616C436D657449;
  *(v131 + 232) = 0xE900000000000073;
  v136 = v653;
  *(v131 + 240) = v656;
  *(v131 + 248) = v136;
  *(v131 + 264) = v128;
  *(v131 + 272) = 0x6574656D61726150;
  *(v131 + 280) = 0xEB00000000495572;
  v137 = swift_allocObject();
  *(v137 + 16) = v664;
  *(v137 + 64) = v128;
  v138 = v648;
  *(v137 + 32) = v648;
  *(v137 + 40) = v133;
  *(v137 + 48) = v652;
  v654 = v138;
  *(v137 + 72) = sub_1CA94C368();
  *(v137 + 80) = 1702125892;
  *(v137 + 88) = 0xE400000000000000;
  v139 = v638;
  *(v137 + 104) = v128;
  *(v137 + 112) = v139;
  v653 = v139;
  v652 = sub_1CA94C438();
  v648 = v140;
  v141 = sub_1CA94C438();
  v638 = v142;
  v655 = &v631;
  MEMORY[0x1EEE9AC00](v141);
  v143 = &v631 - v677;
  sub_1CA948D98();
  v144 = v675;
  v145 = [v675 bundleURL];
  v637 = &v631;
  MEMORY[0x1EEE9AC00](v145);
  v146 = v678;
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v137 + 120) = sub_1CA2F9F14(v652, v648, v141, v638, 0, 0, v143, &v631 - v146);
  v148 = v674;
  v149 = v649;
  *(v137 + 144) = v674;
  *(v137 + 152) = v149;
  v655 = v149;
  v150 = sub_1CA94C438();
  v648 = v151;
  v649 = v150;
  v152 = sub_1CA94C438();
  v638 = v153;
  v652 = &v631;
  MEMORY[0x1EEE9AC00](v152);
  v154 = &v631 - v677;
  sub_1CA948D98();
  v155 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v137 + 160) = sub_1CA2F9F14(v649, v648, v152, v638, 0, 0, v154, &v631 - v146);
  v157 = v651;
  *(v137 + 184) = v148;
  *(v137 + 192) = v157;
  *(v137 + 200) = 0x676E69727453;
  *(v137 + 208) = 0xE600000000000000;
  v158 = MEMORY[0x1E69E6158];
  v159 = v639;
  *(v137 + 224) = MEMORY[0x1E69E6158];
  *(v137 + 232) = v159;
  *(v137 + 264) = v158;
  v160 = v158;
  *(v137 + 240) = 0x7468676952;
  *(v137 + 248) = 0xE500000000000000;
  v649 = v159;
  sub_1CA94C1E8();
  v161 = v671;
  *(v131 + 288) = sub_1CA2F864C();
  *(v131 + 312) = v161;
  *(v131 + 320) = 0x654B656372756F53;
  *(v131 + 328) = v667;
  *(v131 + 336) = 0x6174536F646F7774;
  *(v131 + 344) = 0xEA00000000007472;
  *(v131 + 360) = v160;
  *(v131 + 368) = 0x7954656372756F53;
  *(v131 + 408) = v160;
  *(v131 + 376) = 0xEA00000000006570;
  *(v131 + 384) = 0x6574656D61726150;
  *(v131 + 392) = v666;
  v672[7] = sub_1CA94C1E8();
  v162 = swift_allocObject();
  *(v162 + 16) = v664;
  strcpy((v162 + 32), "DestinationKey");
  *(v162 + 47) = -18;
  *(v162 + 48) = 0x7473694C726F66;
  *(v162 + 56) = 0xE700000000000000;
  *(v162 + 72) = v160;
  *(v162 + 80) = 0x74616E6974736544;
  *(v162 + 88) = 0xEF657079546E6F69;
  strcpy((v162 + 96), "URLQueryValue");
  *(v162 + 110) = -4864;
  *(v162 + 120) = v160;
  *(v162 + 128) = 0x73616C436D657449;
  *(v162 + 136) = 0xE900000000000073;
  *(v162 + 144) = 0xD000000000000013;
  *(v162 + 152) = v665;
  *(v162 + 168) = v160;
  *(v162 + 176) = 0x6574656D61726150;
  *(v162 + 184) = 0xEB00000000495572;
  v163 = swift_allocObject();
  *(v163 + 16) = v658;
  v165 = v653;
  v164 = v654;
  v166 = v662;
  v167 = v663;
  *(v163 + 32) = v654;
  *(v163 + 40) = v167;
  *(v163 + 48) = v166;
  *(v163 + 64) = v160;
  *(v163 + 72) = v165;
  v651 = v164;
  v652 = v165;
  v168 = sub_1CA94C438();
  v653 = v169;
  v170 = sub_1CA94C438();
  v172 = v171;
  v654 = &v631;
  MEMORY[0x1EEE9AC00](v170);
  v173 = &v631 - v677;
  sub_1CA948D98();
  v174 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v631 - v678;
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v163 + 80) = sub_1CA2F9F14(v168, v653, v170, v172, 0, 0, v173, v175);
  v177 = v649;
  *(v163 + 104) = v674;
  *(v163 + 112) = v177;
  v178 = MEMORY[0x1E69E6158];
  *(v163 + 144) = MEMORY[0x1E69E6158];
  *(v163 + 120) = 0x7468676952;
  *(v163 + 128) = 0xE500000000000000;
  v654 = v177;
  sub_1CA94C1E8();
  v179 = v671;
  *(v162 + 192) = sub_1CA2F864C();
  *(v162 + 216) = v179;
  *(v162 + 224) = 0x654B656372756F53;
  *(v162 + 232) = v667;
  *(v162 + 240) = 0x73694C6F646F7774;
  *(v162 + 248) = 0xE900000000000074;
  *(v162 + 264) = v178;
  *(v162 + 272) = 0x7954656372756F53;
  *(v162 + 312) = v178;
  *(v162 + 280) = 0xEA00000000006570;
  *(v162 + 288) = 0x6574656D61726150;
  *(v162 + 296) = v666;
  v672[8] = sub_1CA94C1E8();
  v180 = swift_allocObject();
  *(v180 + 16) = v664;
  strcpy((v180 + 32), "DestinationKey");
  *(v180 + 47) = -18;
  strcpy((v180 + 48), "forParentName");
  *(v180 + 62) = -4864;
  *(v180 + 72) = v178;
  *(v180 + 80) = 0x74616E6974736544;
  *(v180 + 88) = 0xEF657079546E6F69;
  strcpy((v180 + 96), "URLQueryValue");
  *(v180 + 110) = -4864;
  *(v180 + 120) = v178;
  *(v180 + 128) = 0x73616C436D657449;
  *(v180 + 136) = 0xE900000000000073;
  *(v180 + 144) = 0xD000000000000013;
  *(v180 + 152) = v665;
  *(v180 + 168) = v178;
  *(v180 + 176) = 0x6574656D61726150;
  *(v180 + 184) = 0xEB00000000495572;
  v181 = swift_allocObject();
  *(v181 + 16) = v659;
  v182 = v651;
  v183 = v652;
  v184 = v662;
  v185 = v663;
  *(v181 + 32) = v651;
  *(v181 + 40) = v185;
  *(v181 + 48) = v184;
  *(v181 + 64) = v178;
  *(v181 + 72) = v183;
  v653 = v182;
  v652 = v183;
  v186 = sub_1CA94C438();
  v648 = v187;
  v649 = v186;
  *&v639 = sub_1CA94C438();
  v189 = v188;
  v651 = &v631;
  MEMORY[0x1EEE9AC00](v639);
  v190 = v677;
  sub_1CA948D98();
  v191 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v631 - v678;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v181 + 80) = sub_1CA2F9F14(v649, v648, v639, v189, 0, 0, &v631 - v190, v192);
  v194 = v674;
  v195 = v655;
  *(v181 + 104) = v674;
  *(v181 + 112) = v195;
  v655 = v195;
  v196 = sub_1CA94C438();
  v648 = v197;
  v649 = v196;
  v198 = sub_1CA94C438();
  v200 = v199;
  v651 = &v631;
  MEMORY[0x1EEE9AC00](v198);
  sub_1CA948D98();
  v201 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  v202 = &v631 - v678;
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v181 + 120) = sub_1CA2F9F14(v649, v648, v198, v200, 0, 0, &v631 - v190, v202);
  v204 = v654;
  *(v181 + 144) = v194;
  *(v181 + 152) = v204;
  v205 = MEMORY[0x1E69E6158];
  *(v181 + 184) = MEMORY[0x1E69E6158];
  *(v181 + 160) = 0x7468676952;
  *(v181 + 168) = 0xE500000000000000;
  v654 = v204;
  sub_1CA94C1E8();
  v206 = v671;
  *(v180 + 192) = sub_1CA2F864C();
  *(v180 + 216) = v206;
  *(v180 + 224) = 0x654B656372756F53;
  *(v180 + 232) = v667;
  *(v180 + 240) = 0x7261506F646F7774;
  *(v180 + 248) = 0xEF656D614E746E65;
  *(v180 + 264) = v205;
  *(v180 + 272) = 0x7954656372756F53;
  *(v180 + 312) = v205;
  *(v180 + 280) = 0xEA00000000006570;
  *(v180 + 288) = 0x6574656D61726150;
  *(v180 + 296) = v666;
  v672[9] = sub_1CA94C1E8();
  v207 = swift_allocObject();
  *(v207 + 16) = v664;
  strcpy((v207 + 32), "DestinationKey");
  *(v207 + 47) = -18;
  *(v207 + 48) = 1936154996;
  *(v207 + 56) = 0xE400000000000000;
  *(v207 + 72) = v205;
  *(v207 + 80) = 0x74616E6974736544;
  *(v207 + 88) = 0xEF657079546E6F69;
  strcpy((v207 + 96), "URLQueryValue");
  *(v207 + 110) = -4864;
  *(v207 + 120) = v205;
  *(v207 + 128) = 0x73616C436D657449;
  *(v207 + 136) = 0xE900000000000073;
  *(v207 + 144) = 0xD000000000000013;
  *(v207 + 152) = v665;
  *(v207 + 168) = v205;
  *(v207 + 176) = 0x6574656D61726150;
  *(v207 + 184) = 0xEB00000000495572;
  v208 = swift_allocObject();
  *(v208 + 16) = v659;
  v210 = v652;
  v209 = v653;
  v211 = v662;
  v212 = v663;
  *(v208 + 32) = v653;
  *(v208 + 40) = v212;
  *(v208 + 48) = v211;
  *(v208 + 64) = v205;
  *(v208 + 72) = v210;
  v653 = v209;
  v652 = v210;
  v213 = sub_1CA94C438();
  v648 = v214;
  v649 = v213;
  v215 = sub_1CA94C438();
  *&v639 = v216;
  v651 = &v631;
  MEMORY[0x1EEE9AC00](v215);
  v217 = v677;
  sub_1CA948D98();
  v218 = [v675 bundleURL];
  v638 = &v631;
  MEMORY[0x1EEE9AC00](v218);
  v219 = v678;
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v208 + 80) = sub_1CA2F9F14(v649, v648, v215, v639, 0, 0, &v631 - v217, &v631 - v219);
  v221 = v674;
  v222 = v655;
  *(v208 + 104) = v674;
  *(v208 + 112) = v222;
  v655 = v222;
  v223 = sub_1CA94C438();
  v648 = v224;
  v649 = v223;
  v225 = sub_1CA94C438();
  *&v639 = v226;
  v651 = &v631;
  MEMORY[0x1EEE9AC00](v225);
  sub_1CA948D98();
  v227 = [v675 bundleURL];
  v638 = &v631;
  MEMORY[0x1EEE9AC00](v227);
  sub_1CA948B68();

  v228 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v208 + 120) = sub_1CA2F9F14(v649, v648, v225, v639, 0, 0, &v631 - v217, &v631 - v219);
  v229 = v654;
  *(v208 + 144) = v221;
  *(v208 + 152) = v229;
  v230 = MEMORY[0x1E69E6158];
  *(v208 + 184) = MEMORY[0x1E69E6158];
  *(v208 + 160) = 0x7468676952;
  *(v208 + 168) = 0xE500000000000000;
  v648 = v229;
  sub_1CA94C1E8();
  v231 = v671;
  *(v207 + 192) = sub_1CA2F864C();
  *(v207 + 216) = v231;
  *(v207 + 224) = 0x654B656372756F53;
  *(v207 + 232) = v667;
  *(v207 + 240) = 0x6761546F646F7774;
  *(v207 + 248) = 0xE900000000000073;
  *(v207 + 264) = v230;
  *(v207 + 272) = 0x7954656372756F53;
  *(v207 + 312) = v230;
  *(v207 + 280) = 0xEA00000000006570;
  *(v207 + 288) = 0x6574656D61726150;
  *(v207 + 296) = v666;
  v672[10] = sub_1CA94C1E8();
  v232 = swift_allocObject();
  *(v232 + 16) = v664;
  strcpy((v232 + 32), "DestinationKey");
  *(v232 + 47) = -18;
  *(v232 + 48) = 0x6E6F697461636F6CLL;
  *(v232 + 56) = 0xE900000000000073;
  *(v232 + 72) = v230;
  *(v232 + 80) = 0x74616E6974736544;
  *(v232 + 88) = 0xEF657079546E6F69;
  strcpy((v232 + 96), "URLQueryValue");
  *(v232 + 110) = -4864;
  *(v232 + 120) = v230;
  *(v232 + 128) = 0x73616C436D657449;
  *(v232 + 136) = 0xE900000000000073;
  *(v232 + 144) = 0xD000000000000013;
  *(v232 + 152) = v665;
  *(v232 + 168) = v230;
  *(v232 + 176) = 0x6574656D61726150;
  *(v232 + 184) = 0xEB00000000495572;
  v233 = swift_allocObject();
  *(v233 + 16) = v659;
  v235 = v652;
  v234 = v653;
  v236 = v662;
  v237 = v663;
  *(v233 + 32) = v653;
  *(v233 + 40) = v237;
  *(v233 + 48) = v236;
  *(v233 + 64) = v230;
  *(v233 + 72) = v235;
  v654 = v234;
  v653 = v235;
  v651 = sub_1CA94C438();
  v649 = v238;
  *&v639 = sub_1CA94C438();
  v240 = v239;
  v652 = &v631;
  MEMORY[0x1EEE9AC00](v639);
  v241 = &v631 - v677;
  sub_1CA948D98();
  v242 = v675;
  v243 = [v675 bundleURL];
  v638 = &v631;
  MEMORY[0x1EEE9AC00](v243);
  v244 = &v631 - v678;
  sub_1CA948B68();

  v245 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v233 + 80) = sub_1CA2F9F14(v651, v649, v639, v240, 0, 0, v241, v244);
  v246 = v674;
  v247 = v655;
  *(v233 + 104) = v674;
  *(v233 + 112) = v247;
  v649 = v247;
  v248 = sub_1CA94C438();
  v651 = v249;
  v652 = v248;
  v250 = sub_1CA94C438();
  *&v639 = v251;
  v655 = &v631;
  MEMORY[0x1EEE9AC00](v250);
  v252 = &v631 - v677;
  sub_1CA948D98();
  v253 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v253);
  v254 = &v631 - v678;
  sub_1CA948B68();

  v255 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v233 + 120) = sub_1CA2F9F14(v652, v651, v250, v639, 0, 0, v252, v254);
  v256 = v648;
  *(v233 + 144) = v246;
  *(v233 + 152) = v256;
  v257 = MEMORY[0x1E69E6158];
  *(v233 + 184) = MEMORY[0x1E69E6158];
  *(v233 + 160) = 0x7468676952;
  *(v233 + 168) = 0xE500000000000000;
  sub_1CA94C1E8();
  v258 = v671;
  *(v232 + 192) = sub_1CA2F864C();
  *(v232 + 216) = v258;
  *(v232 + 224) = 0x654B656372756F53;
  *(v232 + 232) = v667;
  strcpy((v232 + 240), "twodoLocations");
  *(v232 + 255) = -18;
  *(v232 + 264) = v257;
  *(v232 + 272) = 0x7954656372756F53;
  *(v232 + 312) = v257;
  *(v232 + 280) = 0xEA00000000006570;
  *(v232 + 288) = 0x6574656D61726150;
  *(v232 + 296) = v666;
  v672[11] = sub_1CA94C1E8();
  v259 = swift_allocObject();
  v639 = xmmword_1CA981370;
  *(v259 + 16) = xmmword_1CA981370;
  strcpy((v259 + 32), "DestinationKey");
  *(v259 + 47) = -18;
  *(v259 + 48) = 0x64657272617473;
  *(v259 + 56) = 0xE700000000000000;
  *(v259 + 72) = v257;
  *(v259 + 80) = 0x74616E6974736544;
  *(v259 + 88) = 0xEF657079546E6F69;
  strcpy((v259 + 96), "URLQueryValue");
  *(v259 + 110) = -4864;
  *(v259 + 120) = v257;
  *(v259 + 128) = 0x6574656D61726150;
  *(v259 + 136) = 0xEB00000000495572;
  v260 = swift_allocObject();
  *(v260 + 16) = v647;
  v262 = v653;
  v261 = v654;
  v263 = v656;
  *(v260 + 32) = v654;
  *(v260 + 40) = v263;
  *(v260 + 48) = 0x80000001CA99E620;
  *(v260 + 64) = v257;
  *(v260 + 72) = v262;
  v655 = v261;
  *&v647 = v262;
  v264 = sub_1CA94C438();
  v654 = v265;
  v266 = sub_1CA94C438();
  v268 = v267;
  v656 = &v631;
  MEMORY[0x1EEE9AC00](v266);
  v269 = &v631 - v677;
  sub_1CA948D98();
  v270 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v270);
  v271 = &v631 - v678;
  sub_1CA948B68();

  v272 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v273 = sub_1CA2F9F14(v264, v654, v266, v268, 0, 0, v269, v271);
  *(v260 + 104) = v674;
  *(v260 + 80) = v273;
  sub_1CA94C1E8();
  v274 = v671;
  *(v259 + 144) = sub_1CA2F864C();
  *(v259 + 168) = v274;
  *(v259 + 176) = 0x654B656372756F53;
  *(v259 + 184) = v667;
  strcpy((v259 + 192), "twodoStarred");
  *(v259 + 205) = 0;
  *(v259 + 206) = -5120;
  v275 = MEMORY[0x1E69E6158];
  *(v259 + 216) = MEMORY[0x1E69E6158];
  *(v259 + 224) = 0x7954656372756F53;
  *(v259 + 264) = v275;
  *(v259 + 232) = 0xEA00000000006570;
  *(v259 + 240) = 0x6574656D61726150;
  *(v259 + 248) = v666;
  v672[12] = sub_1CA94C1E8();
  v276 = swift_allocObject();
  *(v276 + 16) = v661;
  strcpy((v276 + 32), "DestinationKey");
  *(v276 + 47) = -18;
  *(v276 + 48) = 1701869940;
  *(v276 + 56) = 0xE400000000000000;
  *(v276 + 72) = v275;
  *(v276 + 80) = 0x74616E6974736544;
  *(v276 + 88) = 0xEF657079546E6F69;
  strcpy((v276 + 96), "URLQueryValue");
  *(v276 + 110) = -4864;
  *(v276 + 120) = v275;
  *(v276 + 128) = 0x73616C436D657449;
  *(v276 + 136) = 0xE900000000000073;
  *(v276 + 144) = 0xD000000000000013;
  *(v276 + 152) = v665;
  v654 = 0x80000001CA9A8C50;
  v277 = v660;
  *(v276 + 168) = v275;
  *(v276 + 176) = v277;
  *(v276 + 184) = 0x80000001CA9A8C50;
  *(v276 + 192) = 1802723668;
  *(v276 + 200) = 0xE400000000000000;
  *(v276 + 216) = v275;
  *(v276 + 224) = 0x6574656D61726150;
  *(v276 + 232) = 0xEB00000000495572;
  v278 = swift_allocObject();
  v636 = v278;
  *(v278 + 16) = v658;
  v652 = 0xD000000000000016;
  v653 = 0x80000001CA99C4A0;
  v279 = v655;
  *(v278 + 32) = v655;
  *(v278 + 40) = 0xD000000000000016;
  *(v278 + 48) = 0x80000001CA99C4A0;
  *(v278 + 64) = v275;
  *(v278 + 72) = @"Items";
  v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v656 = swift_allocObject();
  *(v656 + 1) = xmmword_1CA981470;
  v280 = @"Items";
  v637 = v279;
  v635 = v280;
  v638 = sub_1CA94C438();
  v634 = v281;
  v282 = sub_1CA94C438();
  v633 = v283;
  v655 = &v631;
  MEMORY[0x1EEE9AC00](v282);
  v284 = v677;
  sub_1CA948D98();
  v285 = v675;
  v286 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v286);
  v287 = &v631 - v678;
  sub_1CA948B68();

  v288 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v289 = sub_1CA2F9F14(v638, v634, v282, v633, 0, 0, &v631 - v284, v287);
  v290 = v656;
  v656[4] = v289;
  v638 = sub_1CA94C438();
  v634 = v291;
  v292 = sub_1CA94C438();
  v633 = v293;
  v655 = &v631;
  MEMORY[0x1EEE9AC00](v292);
  sub_1CA948D98();
  v294 = [v285 bundleURL];
  v632 = &v631;
  MEMORY[0x1EEE9AC00](v294);
  v295 = v678;
  sub_1CA948B68();

  v296 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v290[5] = sub_1CA2F9F14(v638, v634, v292, v633, 0, 0, &v631 - v284, &v631 - v295);
  v638 = sub_1CA94C438();
  v634 = v297;
  v298 = sub_1CA94C438();
  v633 = v299;
  v655 = &v631;
  MEMORY[0x1EEE9AC00](v298);
  sub_1CA948D98();
  v300 = v675;
  v301 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v301);
  sub_1CA948B68();

  v302 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v303 = sub_1CA2F9F14(v638, v634, v298, v633, 0, 0, &v631 - v284, &v631 - v295);
  v304 = v656;
  v656[6] = v303;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v655 = v305;
  v306 = v636;
  v636[10] = v304;
  v307 = v647;
  v306[13] = v305;
  v306[14] = v307;
  v638 = v307;
  *&v647 = sub_1CA94C438();
  v634 = v308;
  v309 = sub_1CA94C438();
  v311 = v310;
  v656 = &v631;
  MEMORY[0x1EEE9AC00](v309);
  v312 = &v631 - v677;
  sub_1CA948D98();
  v313 = [v300 bundleURL];
  MEMORY[0x1EEE9AC00](v313);
  v314 = &v631 - v678;
  sub_1CA948B68();

  v315 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v316 = sub_1CA2F9F14(v647, v634, v309, v311, 0, 0, v312, v314);
  v306[18] = v674;
  v306[15] = v316;
  sub_1CA94C1E8();
  v317 = v671;
  *(v276 + 240) = sub_1CA2F864C();
  *(v276 + 264) = v317;
  *(v276 + 272) = 0x654B656372756F53;
  *(v276 + 280) = v667;
  *(v276 + 288) = 0x7079546F646F7774;
  *(v276 + 296) = 0xE900000000000065;
  v318 = MEMORY[0x1E69E6158];
  *(v276 + 312) = MEMORY[0x1E69E6158];
  *(v276 + 320) = 0x7954656372756F53;
  *(v276 + 328) = 0xEA00000000006570;
  *(v276 + 336) = 0x6574656D61726150;
  *(v276 + 344) = v666;
  *(v276 + 360) = v318;
  strcpy((v276 + 368), "ValueMapping");
  *(v276 + 381) = 0;
  *(v276 + 382) = -5120;
  v319 = v318;
  v320 = sub_1CA94C1E8();
  *(v276 + 408) = v657;
  *(v276 + 384) = v320;
  v672[13] = sub_1CA94C1E8();
  v321 = swift_allocObject();
  *(v321 + 16) = v661;
  strcpy((v321 + 32), "DestinationKey");
  *(v321 + 47) = -18;
  *(v321 + 48) = 0x79546E6F69746361;
  *(v321 + 56) = 0xEA00000000006570;
  *(v321 + 72) = v319;
  *(v321 + 80) = 0x74616E6974736544;
  *(v321 + 88) = 0xEF657079546E6F69;
  *(v321 + 96) = 0x74736275534C5255;
  *(v321 + 104) = 0xEF6E6F6974757469;
  *(v321 + 120) = v319;
  *(v321 + 128) = 0x73616C436D657449;
  *(v321 + 136) = 0xE900000000000073;
  *(v321 + 144) = 0xD000000000000013;
  *(v321 + 152) = v665;
  v322 = v660;
  *(v321 + 168) = v319;
  *(v321 + 176) = v322;
  *(v321 + 184) = v654;
  *(v321 + 192) = 1701736270;
  *(v321 + 200) = 0xE400000000000000;
  *(v321 + 216) = v319;
  *(v321 + 224) = 0x6574656D61726150;
  *(v321 + 232) = 0xEB00000000495572;
  v323 = swift_allocObject();
  v636 = v323;
  *(v323 + 16) = v658;
  v324 = v637;
  v326 = v652;
  v325 = v653;
  *(v323 + 32) = v637;
  *(v323 + 40) = v326;
  *(v323 + 48) = v325;
  v327 = v635;
  *(v323 + 64) = v319;
  *(v323 + 72) = v327;
  v656 = swift_allocObject();
  *(v656 + 1) = xmmword_1CA98B2D0;
  v637 = v324;
  *&v647 = v327;
  v328 = sub_1CA94C438();
  v633 = v329;
  v634 = v328;
  v330 = sub_1CA94C438();
  v632 = v331;
  v635 = &v631;
  MEMORY[0x1EEE9AC00](v330);
  v332 = v677;
  sub_1CA948D98();
  v333 = v675;
  v334 = [v675 bundleURL];
  v631 = &v631;
  MEMORY[0x1EEE9AC00](v334);
  v335 = &v631 - v678;
  sub_1CA948B68();

  v336 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v337 = sub_1CA2F9F14(v634, v633, v330, v632, 0, 0, &v631 - v332, v335);
  v338 = v656;
  v656[4] = v337;
  v339 = sub_1CA94C438();
  v633 = v340;
  v634 = v339;
  v632 = sub_1CA94C438();
  v342 = v341;
  v635 = &v631;
  MEMORY[0x1EEE9AC00](v632);
  sub_1CA948D98();
  v343 = [v333 bundleURL];
  MEMORY[0x1EEE9AC00](v343);
  v344 = v678;
  sub_1CA948B68();

  v345 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v346 = v338;
  v338[5] = sub_1CA2F9F14(v634, v633, v632, v342, 0, 0, &v631 - v332, &v631 - v344);
  v347 = sub_1CA94C438();
  v633 = v348;
  v634 = v347;
  v349 = sub_1CA94C438();
  v632 = v350;
  v635 = &v631;
  MEMORY[0x1EEE9AC00](v349);
  v351 = v677;
  sub_1CA948D98();
  v352 = v675;
  v353 = [v675 bundleURL];
  v631 = &v631;
  MEMORY[0x1EEE9AC00](v353);
  sub_1CA948B68();

  v354 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v346[6] = sub_1CA2F9F14(v634, v633, v349, v632, 0, 0, &v631 - v351, &v631 - v344);
  v355 = sub_1CA94C438();
  v633 = v356;
  v634 = v355;
  v357 = sub_1CA94C438();
  v632 = v358;
  v635 = &v631;
  MEMORY[0x1EEE9AC00](v357);
  v359 = &v631 - v351;
  sub_1CA948D98();
  v360 = [v352 bundleURL];
  MEMORY[0x1EEE9AC00](v360);
  v361 = v678;
  sub_1CA948B68();

  v362 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v363 = sub_1CA2F9F14(v634, v633, v357, v632, 0, 0, v359, &v631 - v361);
  v364 = v656;
  v656[7] = v363;
  v365 = sub_1CA94C438();
  v633 = v366;
  v634 = v365;
  v367 = sub_1CA94C438();
  v632 = v368;
  v635 = &v631;
  MEMORY[0x1EEE9AC00](v367);
  v369 = &v631 - v677;
  sub_1CA948D98();
  v370 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v370);
  sub_1CA948B68();

  v371 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v364[8] = sub_1CA2F9F14(v634, v633, v367, v632, 0, 0, v369, &v631 - v361);
  v372 = sub_1CA94C438();
  v633 = v373;
  v634 = v372;
  v374 = sub_1CA94C438();
  v632 = v375;
  v635 = &v631;
  MEMORY[0x1EEE9AC00](v374);
  v376 = v677;
  sub_1CA948D98();
  v377 = v675;
  v378 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v378);
  v379 = &v631 - v678;
  sub_1CA948B68();

  v380 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v381 = sub_1CA2F9F14(v634, v633, v374, v632, 0, 0, &v631 - v376, v379);
  v656[9] = v381;
  v382 = sub_1CA94C438();
  v633 = v383;
  v634 = v382;
  v384 = sub_1CA94C438();
  v632 = v385;
  v635 = &v631;
  MEMORY[0x1EEE9AC00](v384);
  v386 = &v631 - v376;
  sub_1CA948D98();
  v387 = [v377 bundleURL];
  MEMORY[0x1EEE9AC00](v387);
  v388 = v678;
  sub_1CA948B68();

  v389 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v390 = sub_1CA2F9F14(v634, v633, v384, v632, 0, 0, v386, &v631 - v388);
  v391 = v636;
  v393 = v655;
  v392 = v656;
  v656[10] = v390;
  v391[10] = v392;
  v394 = v638;
  v391[13] = v393;
  v391[14] = v394;
  v656 = v394;
  v395 = sub_1CA94C438();
  v634 = v396;
  v635 = v395;
  v397 = sub_1CA94C438();
  v633 = v398;
  v638 = &v631;
  MEMORY[0x1EEE9AC00](v397);
  v399 = &v631 - v677;
  sub_1CA948D98();
  v400 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v400);
  sub_1CA948B68();

  v401 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v402 = sub_1CA2F9F14(v635, v634, v397, v633, 0, 0, v399, &v631 - v388);
  v391[18] = v674;
  v391[15] = v402;
  sub_1CA94C1E8();
  v403 = v671;
  *(v321 + 240) = sub_1CA2F864C();
  *(v321 + 264) = v403;
  *(v321 + 272) = 0x654B656372756F53;
  *(v321 + 280) = v667;
  *(v321 + 288) = 0x7463416F646F7774;
  *(v321 + 296) = 0xEF657079546E6F69;
  v404 = MEMORY[0x1E69E6158];
  *(v321 + 312) = MEMORY[0x1E69E6158];
  *(v321 + 320) = 0x7954656372756F53;
  *(v321 + 328) = 0xEA00000000006570;
  *(v321 + 336) = 0x6574656D61726150;
  *(v321 + 344) = v666;
  *(v321 + 360) = v404;
  strcpy((v321 + 368), "ValueMapping");
  *(v321 + 381) = 0;
  *(v321 + 382) = -5120;
  v405 = v404;
  v406 = sub_1CA94C1E8();
  *(v321 + 408) = v657;
  *(v321 + 384) = v406;
  v672[14] = sub_1CA94C1E8();
  v407 = swift_allocObject();
  *(v407 + 16) = v664;
  strcpy((v407 + 32), "DestinationKey");
  *(v407 + 47) = -18;
  *(v407 + 48) = 0x61566E6F69746361;
  *(v407 + 56) = 0xEB0000000065756CLL;
  *(v407 + 72) = v405;
  *(v407 + 80) = 0x74616E6974736544;
  *(v407 + 88) = 0xEF657079546E6F69;
  *(v407 + 96) = 0x74736275534C5255;
  *(v407 + 104) = 0xEF6E6F6974757469;
  *(v407 + 120) = v405;
  *(v407 + 128) = 0x73616C436D657449;
  *(v407 + 136) = 0xE900000000000073;
  *(v407 + 144) = 0xD000000000000013;
  *(v407 + 152) = v665;
  *(v407 + 168) = v405;
  *(v407 + 176) = 0x6574656D61726150;
  v408 = v405;
  *(v407 + 184) = 0xEB00000000495572;
  v409 = swift_allocObject();
  *(v409 + 16) = v639;
  v410 = v637;
  v411 = v662;
  v412 = v663;
  *(v409 + 32) = v637;
  *(v409 + 40) = v412;
  *(v409 + 48) = v411;
  *(v409 + 64) = v408;
  v413 = v656;
  *(v409 + 72) = v656;
  v638 = v410;
  *&v639 = v413;
  v414 = sub_1CA94C438();
  v636 = v415;
  v637 = v414;
  v416 = sub_1CA94C438();
  v635 = v417;
  v656 = &v631;
  MEMORY[0x1EEE9AC00](v416);
  v418 = &v631 - v677;
  sub_1CA948D98();
  v419 = v675;
  v420 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v420);
  v421 = &v631 - v678;
  sub_1CA948B68();

  v422 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v409 + 80) = sub_1CA2F9F14(v637, v636, v416, v635, 0, 0, v418, v421);
  v423 = v674;
  v424 = v649;
  *(v409 + 104) = v674;
  *(v409 + 112) = v424;
  v425 = sub_1CA94C438();
  v636 = v426;
  v637 = v425;
  v635 = sub_1CA94C438();
  v428 = v427;
  v656 = &v631;
  MEMORY[0x1EEE9AC00](v635);
  v429 = &v631 - v677;
  sub_1CA948D98();
  v430 = [v419 bundleURL];
  MEMORY[0x1EEE9AC00](v430);
  v431 = &v631 - v678;
  sub_1CA948B68();

  v432 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v409 + 120) = sub_1CA2F9F14(v637, v636, v635, v428, 0, 0, v429, v431);
  *(v409 + 144) = v423;
  *(v409 + 152) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v433 = swift_allocObject();
  *(v433 + 16) = v650;
  v434 = @"RequiredResources";
  v435 = MEMORY[0x1E69E6158];
  *(v433 + 32) = sub_1CA94C1E8();
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v409 + 160) = v433;
  v437 = v648;
  *(v409 + 184) = v436;
  *(v409 + 192) = v437;
  *(v409 + 224) = v435;
  *(v409 + 200) = 0x7468676952;
  *(v409 + 208) = 0xE500000000000000;
  sub_1CA94C1E8();
  v438 = v671;
  *(v407 + 192) = sub_1CA2F864C();
  *(v407 + 216) = v438;
  *(v407 + 224) = 0x654B656372756F53;
  v439 = v660;
  *(v407 + 232) = v667;
  *(v407 + 240) = v439;
  *(v407 + 248) = 0x80000001CA9CA130;
  *(v407 + 264) = v435;
  *(v407 + 272) = 0x7954656372756F53;
  *(v407 + 312) = v435;
  *(v407 + 280) = 0xEA00000000006570;
  *(v407 + 288) = 0x6574656D61726150;
  *(v407 + 296) = v666;
  v672[15] = sub_1CA94C1E8();
  v440 = swift_allocObject();
  *(v440 + 16) = v661;
  strcpy((v440 + 32), "DestinationKey");
  *(v440 + 47) = -18;
  *(v440 + 48) = 0x797469726F697270;
  *(v440 + 56) = 0xE800000000000000;
  *(v440 + 72) = v435;
  *(v440 + 80) = 0x74616E6974736544;
  *(v440 + 88) = 0xEF657079546E6F69;
  strcpy((v440 + 96), "URLQueryValue");
  *(v440 + 110) = -4864;
  *(v440 + 120) = v435;
  *(v440 + 128) = 0x73616C436D657449;
  *(v440 + 136) = 0xE900000000000073;
  *(v440 + 144) = 0xD000000000000013;
  *(v440 + 152) = v665;
  *(v440 + 168) = v435;
  *(v440 + 176) = v439;
  *(v440 + 184) = v654;
  *(v440 + 192) = 1701736270;
  *(v440 + 200) = 0xE400000000000000;
  *(v440 + 216) = v435;
  *(v440 + 224) = 0x6574656D61726150;
  *(v440 + 232) = 0xEB00000000495572;
  v441 = swift_allocObject();
  v648 = v441;
  *(v441 + 16) = v658;
  v442 = v638;
  v444 = v652;
  v443 = v653;
  *(v441 + 32) = v638;
  *(v441 + 40) = v444;
  *(v441 + 48) = v443;
  v445 = v647;
  *(v441 + 64) = v435;
  *(v441 + 72) = v445;
  v656 = swift_allocObject();
  *(v656 + 1) = xmmword_1CA981570;
  *&v650 = v442;
  v446 = sub_1CA94C438();
  v636 = v447;
  v637 = v446;
  v448 = sub_1CA94C438();
  v635 = v449;
  v638 = &v631;
  MEMORY[0x1EEE9AC00](v448);
  v450 = v677;
  sub_1CA948D98();
  v451 = v675;
  v452 = [v675 bundleURL];
  v634 = &v631;
  MEMORY[0x1EEE9AC00](v452);
  v453 = &v631 - v678;
  sub_1CA948B68();

  v454 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v455 = sub_1CA2F9F14(v637, v636, v448, v635, 0, 0, &v631 - v450, v453);
  v656[4] = v455;
  v456 = sub_1CA94C438();
  v636 = v457;
  v637 = v456;
  v458 = sub_1CA94C438();
  v635 = v459;
  v638 = &v631;
  MEMORY[0x1EEE9AC00](v458);
  sub_1CA948D98();
  v460 = [v451 bundleURL];
  MEMORY[0x1EEE9AC00](v460);
  v461 = v678;
  sub_1CA948B68();

  v462 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v463 = sub_1CA2F9F14(v637, v636, v458, v635, 0, 0, &v631 - v450, &v631 - v461);
  v464 = v656;
  v656[5] = v463;
  v465 = sub_1CA94C438();
  v636 = v466;
  v637 = v465;
  v467 = sub_1CA94C438();
  v635 = v468;
  v638 = &v631;
  MEMORY[0x1EEE9AC00](v467);
  v469 = v677;
  sub_1CA948D98();
  v470 = [v675 bundleURL];
  v634 = &v631;
  MEMORY[0x1EEE9AC00](v470);
  sub_1CA948B68();

  v471 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v464[6] = sub_1CA2F9F14(v637, v636, v467, v635, 0, 0, &v631 - v469, &v631 - v461);
  v472 = sub_1CA94C438();
  v636 = v473;
  v637 = v472;
  v635 = sub_1CA94C438();
  v475 = v474;
  v638 = &v631;
  MEMORY[0x1EEE9AC00](v635);
  sub_1CA948D98();
  v476 = v675;
  v477 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v477);
  v478 = &v631 - v678;
  sub_1CA948B68();

  v479 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v480 = sub_1CA2F9F14(v637, v636, v635, v475, 0, 0, &v631 - v469, v478);
  v482 = v655;
  v481 = v656;
  v656[7] = v480;
  v483 = v648;
  v648[2].data = v481;
  v484 = v639;
  v483[3].info = v482;
  v483[3].data = v484;
  v656 = v484;
  v485 = sub_1CA94C438();
  v637 = v486;
  v638 = v485;
  v487 = sub_1CA94C438();
  v636 = v488;
  *&v639 = &v631;
  MEMORY[0x1EEE9AC00](v487);
  v489 = &v631 - v677;
  sub_1CA948D98();
  v490 = [v476 bundleURL];
  MEMORY[0x1EEE9AC00](v490);
  v491 = v678;
  sub_1CA948B68();

  v492 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v493 = sub_1CA2F9F14(v638, v637, v487, v636, 0, 0, v489, &v631 - v491);
  v483[4].data = v674;
  v483[3].length = v493;
  sub_1CA94C1E8();
  v494 = v671;
  *(v440 + 240) = sub_1CA2F864C();
  *(v440 + 264) = v494;
  *(v440 + 272) = 0x654B656372756F53;
  *(v440 + 280) = v667;
  strcpy((v440 + 288), "twodoPriority");
  *(v440 + 302) = -4864;
  v495 = MEMORY[0x1E69E6158];
  *(v440 + 312) = MEMORY[0x1E69E6158];
  *(v440 + 320) = 0x7954656372756F53;
  *(v440 + 328) = 0xEA00000000006570;
  *(v440 + 336) = 0x6574656D61726150;
  *(v440 + 344) = v666;
  *(v440 + 360) = v495;
  strcpy((v440 + 368), "ValueMapping");
  *(v440 + 381) = 0;
  *(v440 + 382) = -5120;
  v496 = v495;
  v497 = sub_1CA94C1E8();
  *(v440 + 408) = v657;
  *(v440 + 384) = v497;
  v672[16] = sub_1CA94C1E8();
  v498 = swift_allocObject();
  *(v498 + 16) = v661;
  strcpy((v498 + 32), "DestinationKey");
  *(v498 + 47) = -18;
  *(v498 + 48) = 0x746165706572;
  *(v498 + 56) = 0xE600000000000000;
  *(v498 + 72) = v496;
  *(v498 + 80) = 0x74616E6974736544;
  *(v498 + 88) = 0xEF657079546E6F69;
  strcpy((v498 + 96), "URLQueryValue");
  *(v498 + 110) = -4864;
  *(v498 + 120) = v496;
  *(v498 + 128) = 0x73616C436D657449;
  *(v498 + 136) = 0xE900000000000073;
  *(v498 + 144) = 0xD000000000000013;
  *(v498 + 152) = v665;
  v499 = v660;
  *(v498 + 168) = v496;
  *(v498 + 176) = v499;
  *(v498 + 184) = v654;
  *(v498 + 192) = 0x726576654ELL;
  *(v498 + 200) = 0xE500000000000000;
  *(v498 + 216) = v496;
  *(v498 + 224) = 0x6574656D61726150;
  *(v498 + 232) = 0xEB00000000495572;
  v500 = swift_allocObject();
  v654 = v500;
  *(v500 + 16) = v658;
  v502 = v652;
  v501 = v653;
  *(v500 + 32) = v650;
  *(v500 + 40) = v502;
  *(v500 + 48) = v501;
  v503 = v647;
  *(v500 + 64) = v496;
  *(v500 + 72) = v503;
  *&v661 = swift_allocObject();
  *(v661 + 16) = xmmword_1CA981560;
  v504 = sub_1CA94C438();
  v652 = v505;
  v653 = v504;
  v506 = sub_1CA94C438();
  v651 = v507;
  *&v658 = &v631;
  MEMORY[0x1EEE9AC00](v506);
  v508 = v677;
  sub_1CA948D98();
  v509 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v509);
  sub_1CA948B68();

  v510 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v511 = sub_1CA2F9F14(v653, v652, v506, v651, 0, 0, &v631 - v508, &v631 - v491);
  v512 = v661;
  *(v661 + 32) = v511;
  v513 = sub_1CA94C438();
  v652 = v514;
  v653 = v513;
  v515 = sub_1CA94C438();
  v651 = v516;
  *&v658 = &v631;
  MEMORY[0x1EEE9AC00](v515);
  v517 = &v631 - v508;
  sub_1CA948D98();
  v518 = v675;
  v519 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v519);
  sub_1CA948B68();

  v520 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v512 + 40) = sub_1CA2F9F14(v653, v652, v515, v651, 0, 0, v517, &v631 - v491);
  v521 = sub_1CA94C438();
  v652 = v522;
  v653 = v521;
  v523 = sub_1CA94C438();
  v651 = v524;
  *&v658 = &v631;
  MEMORY[0x1EEE9AC00](v523);
  v525 = v677;
  sub_1CA948D98();
  v526 = [v518 bundleURL];
  MEMORY[0x1EEE9AC00](v526);
  v527 = v678;
  sub_1CA948B68();

  v528 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v529 = sub_1CA2F9F14(v653, v652, v523, v651, 0, 0, &v631 - v525, &v631 - v527);
  v530 = v661;
  *(v661 + 48) = v529;
  v531 = sub_1CA94C438();
  v652 = v532;
  v653 = v531;
  v533 = sub_1CA94C438();
  v651 = v534;
  *&v658 = &v631;
  MEMORY[0x1EEE9AC00](v533);
  v535 = &v631 - v525;
  sub_1CA948D98();
  v536 = v675;
  v537 = [v675 bundleURL];
  v648 = &v631;
  MEMORY[0x1EEE9AC00](v537);
  sub_1CA948B68();

  v538 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v530 + 56) = sub_1CA2F9F14(v653, v652, v533, v651, 0, 0, v535, &v631 - v527);
  v539 = sub_1CA94C438();
  v652 = v540;
  v653 = v539;
  v541 = sub_1CA94C438();
  v651 = v542;
  *&v658 = &v631;
  MEMORY[0x1EEE9AC00](v541);
  v543 = v677;
  sub_1CA948D98();
  v544 = [v536 bundleURL];
  v648 = &v631;
  MEMORY[0x1EEE9AC00](v544);
  v545 = v678;
  sub_1CA948B68();

  v546 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v547 = sub_1CA2F9F14(v653, v652, v541, v651, 0, 0, &v631 - v543, &v631 - v545);
  v548 = v661;
  *(v661 + 64) = v547;
  v549 = v654;
  v654[2].data = v548;
  v550 = v656;
  *(v549 + 104) = v655;
  *(v549 + 112) = v550;
  *&v658 = sub_1CA94C438();
  v655 = v551;
  v552 = sub_1CA94C438();
  v653 = v553;
  *&v661 = &v631;
  MEMORY[0x1EEE9AC00](v552);
  sub_1CA948D98();
  v554 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v554);
  sub_1CA948B68();

  v555 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v556 = sub_1CA2F9F14(v658, v655, v552, v653, 0, 0, &v631 - v543, &v631 - v545);
  v557 = v654;
  v654[4].data = v674;
  *(v557 + 120) = v556;
  sub_1CA94C1E8();
  v558 = v671;
  *(v498 + 240) = sub_1CA2F864C();
  *(v498 + 264) = v558;
  *(v498 + 272) = 0x654B656372756F53;
  *(v498 + 280) = v667;
  *(v498 + 288) = 0x7065526F646F7774;
  *(v498 + 296) = 0xEB00000000746165;
  v559 = MEMORY[0x1E69E6158];
  *(v498 + 312) = MEMORY[0x1E69E6158];
  *(v498 + 320) = 0x7954656372756F53;
  *(v498 + 328) = 0xEA00000000006570;
  *(v498 + 336) = 0x6574656D61726150;
  *(v498 + 344) = v666;
  *(v498 + 360) = v559;
  strcpy((v498 + 368), "ValueMapping");
  *(v498 + 381) = 0;
  *(v498 + 382) = -5120;
  v560 = v559;
  v561 = sub_1CA94C1E8();
  *(v498 + 408) = v657;
  *(v498 + 384) = v561;
  v672[17] = sub_1CA94C1E8();
  v562 = swift_allocObject();
  *(v562 + 16) = v664;
  strcpy((v562 + 32), "DestinationKey");
  *(v562 + 47) = -18;
  *(v562 + 48) = 1702129518;
  *(v562 + 56) = 0xE400000000000000;
  *(v562 + 72) = v560;
  *(v562 + 80) = 0x74616E6974736544;
  *(v562 + 88) = 0xEF657079546E6F69;
  strcpy((v562 + 96), "URLQueryValue");
  *(v562 + 110) = -4864;
  *(v562 + 120) = v560;
  *(v562 + 128) = 0x73616C436D657449;
  *(v562 + 136) = 0xE900000000000073;
  *(v562 + 144) = 0xD000000000000013;
  *(v562 + 152) = v665;
  *(v562 + 168) = v560;
  *(v562 + 176) = 0x6574656D61726150;
  v563 = v560;
  *(v562 + 184) = 0xEB00000000495572;
  v564 = swift_allocObject();
  *(v564 + 16) = v659;
  v565 = v662;
  v566 = v663;
  *(v564 + 32) = v650;
  *(v564 + 40) = v566;
  *(v564 + 48) = v565;
  v567 = v656;
  *(v564 + 64) = v563;
  *(v564 + 72) = v567;
  v670 = sub_1CA94C438();
  v665 = v568;
  v569 = sub_1CA94C438();
  v571 = v570;
  v673 = &v631;
  MEMORY[0x1EEE9AC00](v569);
  v572 = &v631 - v677;
  sub_1CA948D98();
  v573 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v573);
  v574 = &v631 - v678;
  sub_1CA948B68();

  v575 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v576 = sub_1CA2F9F14(v670, v665, v569, v571, 0, 0, v572, v574);
  v577 = v674;
  *(v564 + 80) = v576;
  *(v564 + 104) = v577;
  *(v564 + 112) = @"Multiline";
  v578 = MEMORY[0x1E69E6370];
  *(v564 + 120) = 1;
  v579 = v649;
  *(v564 + 144) = v578;
  *(v564 + 152) = v579;
  v580 = @"Multiline";
  v670 = sub_1CA94C438();
  v665 = v581;
  v582 = sub_1CA94C438();
  v584 = v583;
  v673 = &v631;
  MEMORY[0x1EEE9AC00](v582);
  v585 = &v631 - v677;
  sub_1CA948D98();
  v586 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v586);
  v587 = &v631 - v678;
  sub_1CA948B68();

  v588 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v589 = sub_1CA2F9F14(v670, v665, v582, v584, 0, 0, v585, v587);
  *(v564 + 184) = v577;
  *(v564 + 160) = v589;
  sub_1CA94C1E8();
  v590 = v671;
  *(v562 + 192) = sub_1CA2F864C();
  *(v562 + 216) = v590;
  *(v562 + 224) = 0x654B656372756F53;
  *(v562 + 232) = v667;
  *(v562 + 240) = 0x746F4E6F646F7774;
  *(v562 + 248) = v642;
  v591 = MEMORY[0x1E69E6158];
  *(v562 + 264) = MEMORY[0x1E69E6158];
  *(v562 + 272) = 0x7954656372756F53;
  *(v562 + 312) = v591;
  *(v562 + 280) = 0xEA00000000006570;
  *(v562 + 288) = 0x6574656D61726150;
  *(v562 + 296) = v666;
  v592 = sub_1CA94C1E8();
  v593 = v672;
  v672[18] = v592;
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v673 = v594;
  v595 = v640;
  v640[36] = v593;
  v596 = v660;
  v595[39] = v594;
  v595[40] = v596;
  v595[41] = 0x80000001CA9B8B90;
  v595[45] = v641;
  __swift_allocate_boxed_opaque_existential_1(v595 + 42);
  sub_1CA948C28();
  v595[46] = 1701667150;
  v595[47] = 0xE400000000000000;
  v597 = sub_1CA94C438();
  v671 = v598;
  v599 = sub_1CA94C438();
  v601 = v600;
  v672 = &v631;
  MEMORY[0x1EEE9AC00](v599);
  v602 = &v631 - v677;
  sub_1CA948D98();
  v603 = v675;
  v604 = [v675 bundleURL];
  MEMORY[0x1EEE9AC00](v604);
  v605 = &v631 - v678;
  sub_1CA948B68();

  v606 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v595[48] = sub_1CA2F9F14(v597, v671, v599, v601, 0, 0, v602, v605);
  v607 = v660;
  v595[51] = v674;
  v595[52] = v607;
  v595[53] = 0x80000001CA9A8F60;
  v608 = sub_1CA94C438();
  v672 = v609;
  v610 = sub_1CA94C438();
  v612 = v611;
  v674 = &v631;
  MEMORY[0x1EEE9AC00](v610);
  v613 = &v631 - v677;
  sub_1CA948D98();
  v614 = [v603 bundleURL];
  MEMORY[0x1EEE9AC00](v614);
  v615 = &v631 - v678;
  sub_1CA948B68();

  v616 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v617 = sub_1CA2F9F14(v608, v672, v610, v612, 0, 0, v613, v615);
  v618 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v595[57] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v595[54] = v618;
  v619 = MEMORY[0x1E69E6158];
  v620 = sub_1CA94C1E8();
  v621 = v644;
  v622 = v645;
  *(v644 + 32) = v620;
  *(v622 + 48) = v621;
  *(v622 + 72) = v673;
  strcpy((v622 + 80), "Capabilities");
  *(v622 + 93) = 0;
  *(v622 + 94) = -5120;
  v623 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v622 + 96) = &unk_1F4A03EB0;
  *(v622 + 120) = v623;
  *(v622 + 128) = 0x656D65686353;
  *(v622 + 168) = v619;
  *(v622 + 136) = 0xE600000000000000;
  *(v622 + 144) = 0x6F646F7774;
  *(v622 + 152) = 0xE500000000000000;
  v624 = sub_1CA94C1E8();
  v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v626 = v646;
  *(v646 + 88) = v625;
  *(v626 + 64) = v624;
  v627 = v626;
  v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v629 = v643;
  *(v643 + 216) = v628;
  *(v629 + 192) = v627;
  return sub_1CA94C1E8();
}

id sub_1CA542800()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  OUTLINED_FUNCTION_93();
  v1 = sub_1CA94C648();

  v2 = [v0 initWithParameterStates_];

  return v2;
}

void WFURLParameter.userVisibleStrings(in:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1CA949F78();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  if (a2 == 1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      swift_unknownObjectRetain();
      v13 = [v12 variableString];
      v14 = [v13 userVisibleStringsForUseCase_];
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      sub_1CA94C8F8();

      swift_unknownObjectRelease();
LABEL_4:

      return;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      swift_unknownObjectRetain();
      v17 = [v16 variable];
      if (v17)
      {
        v18 = v17;
        v14 = [v17 userVisibleStringsForUseCase_];
        type metadata accessor for WFUserVisibleString();
        sub_1CA3434EC();
        sub_1CA94C8F8();
        swift_unknownObjectRelease();

        goto LABEL_4;
      }

      v23 = sub_1CA543244(v16);
      if (v23)
      {
        v24 = v23;
        v25 = sub_1CA25B410();
        if (!v25)
        {
LABEL_23:
          swift_unknownObjectRelease();

          return;
        }

        v26 = v25;
        if (v25 >= 1)
        {
          v27 = 0;
          do
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v28 = MEMORY[0x1CCAA22D0](v27, v24);
            }

            else
            {
              v28 = *(v24 + 8 * v27 + 32);
              swift_unknownObjectRetain();
            }

            ++v27;
            v29 = [v3 userVisibleStringsInParameterState:v28 forUseCase:1];
            type metadata accessor for WFUserVisibleString();
            sub_1CA3434EC();
            v30 = sub_1CA94C8F8();

            sub_1CA342840(v30);
            swift_unknownObjectRelease();
          }

          while (v26 != v27);
          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_34;
      }

      if (sub_1CA25B410())
      {
        sub_1CA2E85F8();
        OUTLINED_FUNCTION_87();
      }

      swift_unknownObjectRelease();
      return;
    }

    v19 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v20 = sub_1CA949F68();
    v21 = sub_1CA94CC28();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1CA256000, v20, v21, "Incorrect parameter state class", v22, 2u);
      MEMORY[0x1CCAA4BF0](v22, -1, -1);
    }

    (*(v8 + 8))(v2, v5);
    if (!sub_1CA25B410())
    {
      return;
    }

LABEL_14:
    sub_1CA2E85F8();
    return;
  }

  if (a2)
  {
LABEL_34:
    type metadata accessor for WFUserStringUseCase(0);
    sub_1CA94D838();
    __break(1u);
    return;
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CA94D328())
  {

    goto LABEL_14;
  }
}

uint64_t WFURLParameter.rewrite(_:withStrings:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CA949F78();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    sub_1CA25B3D0(0, &qword_1EC4463D0, off_1E836F458);
    OUTLINED_FUNCTION_87();
    swift_unknownObjectRetain();
    v12 = [v11 variableString];
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    v13 = sub_1CA94C1A8();
    v14 = [v12 rewrittenWithStrings_];

    v38 = v14;
    v15.variableString.super.isa = &v38;
    WFVariableStringParameterState.init(variableString:)(v15);
    OUTLINED_FUNCTION_87();
    swift_unknownObjectRelease();
    return v1;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    v24 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v25 = sub_1CA949F68();
    v26 = sub_1CA94CC28();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1CA256000, v25, v26, "Incorrect parameter state class", v27, 2u);
      MEMORY[0x1CCAA4BF0](v27, -1, -1);
    }

    (*(v7 + 8))(v1, v4);
    swift_unknownObjectRetain();
    return a1;
  }

  v18 = v17;
  swift_unknownObjectRetain();
  v19 = [v18 variable];
  if (v19)
  {
    v20 = v19;
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    v21 = sub_1CA94C1A8();
    v22 = [v20 rewrittenWithStrings_];

    v23 = [objc_allocWithZone(WFMultipleValueParameterState) initWithVariable_];
    swift_unknownObjectRelease();

    return v23;
  }

  v28 = sub_1CA543244(v18);
  if (!v28)
  {
    return a1;
  }

  v29 = v28;
  v30 = sub_1CA25B410();
  if (!v30)
  {
    goto LABEL_18;
  }

  v31 = v30;
  v38 = MEMORY[0x1E69E7CC0];
  result = sub_1CA94D508();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1CCAA22D0](v32, v29);
      }

      else
      {
        v33 = *(v29 + 8 * v32 + 32);
        swift_unknownObjectRetain();
      }

      ++v32;
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v34 = sub_1CA94C1A8();
      v35 = [v2 rewriteParameterState:v33 withStrings:v34];
      swift_unknownObjectRelease();

      sub_1CA94D4D8();
      v36 = v38[2];
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    while (v31 != v32);
LABEL_18:

    v37 = sub_1CA25B3D0(0, &qword_1EC446DB0, off_1E836EBE0);
    sub_1CA542800();
    OUTLINED_FUNCTION_87();
    swift_unknownObjectRelease();
    return v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA543244(void *a1)
{
  v1 = [a1 parameterStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v3 = sub_1CA94C658();

  return v3;
}

id sub_1CA5432E4()
{
  v115 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  v13 = &v108 - v121;
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
  v118 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v108 - v118;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v117;
  *(inited + 80) = v19;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD000000000000017;
  *(inited + 128) = 0x80000001CA993AA0;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  *&v116 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438();
  v113 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v114 = &v108;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v108 - v121;
  sub_1CA948D98();
  v29 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v108 - v118;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v113, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v117;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v33 = v116;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v33;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x65676E61724FLL;
  *(inited + 208) = 0xE600000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000010;
  *(inited + 248) = 0x80000001CA9CA420;
  *(inited + 264) = v34;
  *(inited + 272) = @"Input";
  v35 = v34;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v116 = xmmword_1CA981350;
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
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v114;
  *(v36 + 192) = &unk_1F4A03EE0;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v113 = v42;
  *(inited + 280) = v41;
  *(inited + 304) = v42;
  *(inited + 312) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v109 = v45;
  v110 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v111 = &v108;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v108 - v121;
  sub_1CA948D98();
  v50 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v118;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v110, v109, v46, v48, 0, 0, v49, &v108 - v51);
  v53 = v117;
  *(inited + 344) = v117;
  *(inited + 352) = @"Output";
  v54 = swift_allocObject();
  *(v54 + 16) = v116;
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
  v110 = v57;
  v111 = v56;
  v109 = sub_1CA94C438();
  v59 = v58;
  v112 = &v108;
  MEMORY[0x1EEE9AC00](v109);
  v60 = &v108 - v121;
  sub_1CA948D98();
  v61 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v111, v110, v109, v59, 0, 0, v60, &v108 - v51);
  *(v54 + 168) = v53;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 216) = v114;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 192) = &unk_1F4A03F10;
  v63 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v113;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v114 = swift_allocObject();
  *(v114 + 1) = xmmword_1CA9813B0;
  v113 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_initStackObject();
  *(v64 + 16) = v116;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD000000000000019;
  *(v64 + 48) = 0x80000001CA99B030;
  *(v64 + 64) = v63;
  *(v64 + 72) = @"Key";
  *(v64 + 80) = 0x7475706E494657;
  *(v64 + 88) = 0xE700000000000000;
  *(v64 + 104) = v63;
  *(v64 + 112) = @"Label";
  v65 = @"Parameters";
  v66 = @"Class";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438();
  v111 = v70;
  v112 = v69;
  v71 = sub_1CA94C438();
  v110 = v72;
  *&v116 = &v108;
  MEMORY[0x1EEE9AC00](v71);
  v73 = v121;
  sub_1CA948D98();
  v74 = v120;
  v75 = [v120 bundleURL];
  v109 = &v108;
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v108 - v118;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 120) = sub_1CA2F9F14(v112, v111, v71, v110, 0, 0, &v108 - v73, v76);
  v78 = v117;
  *(v64 + 144) = v117;
  *(v64 + 152) = @"Placeholder";
  v79 = @"Placeholder";
  v80 = sub_1CA94C438();
  v111 = v81;
  v112 = v80;
  v110 = sub_1CA94C438();
  v83 = v82;
  *&v116 = &v108;
  MEMORY[0x1EEE9AC00](v110);
  v84 = &v108 - v73;
  sub_1CA948D98();
  v85 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v108 - v118;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v112, v111, v110, v83, 0, 0, v84, v86);
  *(v64 + 184) = v78;
  *(v64 + 160) = v88;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v89 = sub_1CA2F864C();
  v90 = v114;
  v114[4] = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v90;
  *(inited + 424) = v91;
  *(inited + 432) = @"ParameterSummary";
  v92 = @"ParameterSummary";
  v93 = sub_1CA94C438();
  v95 = v94;
  v96 = sub_1CA94C438();
  v98 = v97;
  v117 = &v108;
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v108 - v121;
  sub_1CA948D98();
  v100 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v108 - v118;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v93, v95, v96, v98, 0, 0, v99, v101);
  v104 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v105 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v104;
  *(inited + 464) = v105;
  *(inited + 472) = @"ResidentCompatible";
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v106 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}