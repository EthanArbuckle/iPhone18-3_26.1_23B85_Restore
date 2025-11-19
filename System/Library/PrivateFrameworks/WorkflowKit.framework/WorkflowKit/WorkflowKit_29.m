id sub_1CA544234()
{
  v49 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9CA560;
  *(inited + 64) = v1;
  *(inited + 72) = @"Discoverable";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 80) = 0;
  *(inited + 104) = v2;
  *(inited + 112) = @"InputPassthrough";
  *(inited + 120) = 1;
  *(inited + 144) = v2;
  *(inited + 152) = @"Name";
  v3 = @"ActionClass";
  v4 = @"Discoverable";
  v5 = @"InputPassthrough";
  v6 = @"Name";
  v7 = sub_1CA94C438();
  v50 = v8;
  v51 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v42 - v48;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v46 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v42 - v46;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v51, v50, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v45 = v21;
  *(inited + 160) = v20;
  *(inited + 184) = v21;
  *(inited + 192) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1CA9813B0;
  v50 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA981350;
  *(v22 + 32) = @"Class";
  *(v22 + 40) = 0xD000000000000011;
  *(v22 + 48) = 0x80000001CA99E620;
  v23 = MEMORY[0x1E69E6158];
  *(v22 + 64) = MEMORY[0x1E69E6158];
  *(v22 + 72) = @"DefaultValue";
  *(v22 + 80) = 1;
  *(v22 + 104) = MEMORY[0x1E69E6370];
  *(v22 + 112) = @"Key";
  *(v22 + 120) = 0x6E656857776F6853;
  *(v22 + 128) = 0xEB000000006E7552;
  *(v22 + 144) = v23;
  *(v22 + 152) = @"Label";
  v24 = @"Parameters";
  v25 = @"Class";
  v26 = @"DefaultValue";
  v27 = @"Key";
  v28 = @"Label";
  v29 = sub_1CA94C438();
  v43 = v30;
  v31 = sub_1CA94C438();
  v33 = v32;
  v44 = &v42;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v42 - v48;
  sub_1CA948D98();
  v35 = [v47 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v42 - v46;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v29, v43, v31, v33, 0, 0, v34, v36);
  *(v22 + 184) = v45;
  *(v22 + 160) = v38;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v39 = sub_1CA2F864C();
  v40 = v51;
  *(v51 + 32) = v39;
  *(inited + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 200) = v40;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA544854()
{
  v139 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x7079547465474657;
  *(inited + 48) = 0xEF6E6F6974634165;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v146 = inited;
  v2 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1CA981310;
  *(v3 + 32) = @"DescriptionSummary";
  v4 = @"ActionClass";
  v5 = @"Description";
  v6 = @"DescriptionSummary";
  v7 = sub_1CA94C438();
  v143 = v8;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v148 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = v14;
  v15 = &v130 - v148;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v144 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v147 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v145 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v130 - v145;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v7, v143, v9, v11, 0, 0, v15, v19);
  v143 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v3 + 64) = v143;
  *(v3 + 40) = v21;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v22 = v2;
  v23 = sub_1CA6B3784();
  v24 = v146;
  v146[10] = v23;
  v24[13] = v22;
  v24[14] = @"IconColor";
  v24[15] = 2036429383;
  v24[16] = 0xE400000000000000;
  v25 = MEMORY[0x1E69E6158];
  v24[18] = MEMORY[0x1E69E6158];
  v24[19] = @"IconSymbol";
  v24[20] = 0xD000000000000017;
  v24[21] = 0x80000001CA9ABBD0;
  v24[23] = v25;
  v24[24] = @"Input";
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v26 = swift_initStackObject();
  v142 = xmmword_1CA981350;
  *(v26 + 16) = xmmword_1CA981350;
  *(v26 + 32) = 0x656C7069746C754DLL;
  *(v26 + 40) = 0xE800000000000000;
  v27 = MEMORY[0x1E69E6370];
  *(v26 + 48) = 1;
  *(v26 + 72) = v27;
  strcpy((v26 + 80), "ParameterKey");
  *(v26 + 93) = 0;
  *(v26 + 94) = -5120;
  *(v26 + 96) = 0x7475706E494657;
  *(v26 + 104) = 0xE700000000000000;
  *(v26 + 120) = v25;
  *(v26 + 128) = 0x6465726975716552;
  *(v26 + 136) = 0xE800000000000000;
  *(v26 + 144) = 1;
  *(v26 + 168) = v27;
  *(v26 + 176) = 0x7365707954;
  v28 = v27;
  *(v26 + 184) = 0xE500000000000000;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v26 + 216) = v141;
  *(v26 + 192) = &unk_1F4A03F40;
  v29 = @"IconColor";
  v30 = @"IconSymbol";
  v31 = @"Input";
  v32 = sub_1CA94C1E8();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v140 = v33;
  v24[25] = v32;
  v24[28] = v33;
  v24[29] = @"Discoverable";
  *(v24 + 240) = 0;
  v24[33] = v28;
  v24[34] = @"Name";
  v34 = @"Discoverable";
  v35 = @"Name";
  v36 = sub_1CA94C438();
  v135 = v37;
  v136 = v36;
  v38 = sub_1CA94C438();
  v40 = v39;
  v137 = &v130;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v130 - v148;
  sub_1CA948D98();
  v42 = v144;
  v43 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = v145;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v136, v135, v38, v40, 0, 0, v41, &v130 - v44);
  v47 = v146;
  v146[35] = v46;
  v48 = v143;
  v47[38] = v143;
  v47[39] = @"Output";
  v49 = swift_initStackObject();
  *(v49 + 16) = v142;
  *(v49 + 32) = 0x75736F6C63736944;
  *(v49 + 40) = 0xEF6C6576654C6572;
  *(v49 + 48) = 0x63696C627550;
  *(v49 + 56) = 0xE600000000000000;
  *(v49 + 72) = MEMORY[0x1E69E6158];
  *(v49 + 80) = 0x656C7069746C754DLL;
  *(v49 + 88) = 0xE800000000000000;
  *(v49 + 96) = 1;
  *(v49 + 120) = MEMORY[0x1E69E6370];
  *(v49 + 128) = 0x614E74757074754FLL;
  *(v49 + 136) = 0xEA0000000000656DLL;
  v50 = @"Output";
  v51 = sub_1CA94C438();
  v136 = v52;
  v137 = v51;
  v135 = sub_1CA94C438();
  v54 = v53;
  v138 = &v130;
  MEMORY[0x1EEE9AC00](v135);
  v55 = &v130 - v148;
  sub_1CA948D98();
  v56 = [v42 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 144) = sub_1CA2F9F14(v137, v136, v135, v54, 0, 0, v55, &v130 - v44);
  *(v49 + 168) = v48;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 216) = v141;
  *(v49 + 184) = 0xE500000000000000;
  *(v49 + 192) = &unk_1F4A03F70;
  v58 = MEMORY[0x1E69E6158];
  v59 = sub_1CA94C1E8();
  v60 = v146;
  v146[40] = v59;
  v60[43] = v140;
  v60[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1CA981360;
  v140 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CA981300;
  *(v61 + 32) = @"AutocapitalizationType";
  *(v61 + 40) = 1701736270;
  *(v61 + 48) = 0xE400000000000000;
  *(v61 + 64) = v58;
  *(v61 + 72) = @"Class";
  *(v61 + 80) = 0xD000000000000014;
  *(v61 + 88) = 0x80000001CA99B500;
  *(v61 + 104) = v58;
  *(v61 + 112) = @"DefaultValue";
  *(v61 + 120) = 0x722E63696C627570;
  *(v61 + 128) = 0xEA00000000006674;
  *(v61 + 144) = v58;
  *(v61 + 152) = @"DisableAutocorrection";
  *(v61 + 160) = 1;
  *(v61 + 184) = MEMORY[0x1E69E6370];
  *(v61 + 192) = @"Key";
  *(v61 + 200) = 0x7954656C69464657;
  *(v61 + 208) = 0xEA00000000006570;
  *(v61 + 224) = v58;
  *(v61 + 232) = @"KeyboardType";
  *(v61 + 240) = 5001813;
  *(v61 + 248) = 0xE300000000000000;
  *(v61 + 264) = v58;
  *(v61 + 272) = @"Label";
  v62 = @"Class";
  v63 = @"Key";
  v64 = @"Label";
  v137 = v62;
  v136 = v63;
  v135 = v64;
  v65 = @"Parameters";
  v66 = @"AutocapitalizationType";
  v67 = @"DefaultValue";
  v68 = @"DisableAutocorrection";
  v69 = @"KeyboardType";
  v70 = sub_1CA94C438();
  v132 = v71;
  v133 = v70;
  v72 = sub_1CA94C438();
  v74 = v73;
  v134 = &v130;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v130 - v148;
  sub_1CA948D98();
  v76 = v144;
  v77 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v130 - v145;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 280) = sub_1CA2F9F14(v133, v132, v72, v74, 0, 0, v75, v78);
  v80 = v143;
  *(v61 + 304) = v143;
  *(v61 + 312) = @"Placeholder";
  v134 = @"Placeholder";
  v81 = sub_1CA94C438();
  v131 = v82;
  v132 = v81;
  v83 = sub_1CA94C438();
  v130 = v84;
  v133 = &v130;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v130 - v148;
  sub_1CA948D98();
  v86 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = v145;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v132, v131, v83, v130, 0, 0, v85, &v130 - v87);
  *(v61 + 344) = v80;
  *(v61 + 320) = v89;
  _s3__C3KeyVMa_0(0);
  v133 = v90;
  v132 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v141 + 32) = sub_1CA2F864C();
  v91 = swift_allocObject();
  *(v91 + 16) = v142;
  *(v91 + 32) = v137;
  *(v91 + 40) = 0xD000000000000019;
  *(v91 + 48) = 0x80000001CA99B030;
  v92 = MEMORY[0x1E69E6158];
  v93 = v136;
  *(v91 + 64) = MEMORY[0x1E69E6158];
  *(v91 + 72) = v93;
  *(v91 + 80) = 0x7475706E494657;
  *(v91 + 88) = 0xE700000000000000;
  v94 = v135;
  *(v91 + 104) = v92;
  *(v91 + 112) = v94;
  v95 = sub_1CA94C438();
  v137 = v96;
  v138 = v95;
  v136 = sub_1CA94C438();
  v98 = v97;
  *&v142 = &v130;
  MEMORY[0x1EEE9AC00](v136);
  v99 = v148;
  sub_1CA948D98();
  v100 = v144;
  v101 = [v144 bundleURL];
  v135 = &v130;
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v91 + 120) = sub_1CA2F9F14(v138, v137, v136, v98, 0, 0, &v130 - v99, &v130 - v87);
  v103 = v143;
  v104 = v134;
  *(v91 + 144) = v143;
  *(v91 + 152) = v104;
  v105 = sub_1CA94C438();
  v137 = v106;
  v138 = v105;
  v136 = sub_1CA94C438();
  v108 = v107;
  *&v142 = &v130;
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948D98();
  v109 = [v100 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v138, v137, v136, v108, 0, 0, &v130 - v99, &v130 - v87);
  *(v91 + 184) = v103;
  *(v91 + 160) = v111;
  sub_1CA94C1E8();
  v112 = sub_1CA2F864C();
  v113 = v141;
  *(v141 + 40) = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v115 = v146;
  v146[45] = v113;
  v115[48] = v114;
  v115[49] = @"ParameterSummary";
  v116 = @"ParameterSummary";
  v117 = sub_1CA94C438();
  v119 = v118;
  v120 = sub_1CA94C438();
  v122 = v121;
  v143 = &v130;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v130 - v148;
  sub_1CA948D98();
  v124 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v130 - v145;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  v128 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v115[53] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v115[50] = v128;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5459B8()
{
  v99 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFTextAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
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
  v104 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v105 = v12;
  v13 = &v94 - v104;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v103 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v101 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v102 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v94 - v102;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v100 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v98 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v96 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v97 = &v94;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v94 - v104;
  sub_1CA948D98();
  v30 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v94 - v102;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v96, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v100;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v98;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconName";
  *(inited + 160) = 1954047316;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"Name";
  v35 = @"IconName";
  v36 = @"Name";
  v37 = sub_1CA94C438();
  v39 = v38;
  v40 = sub_1CA94C438();
  v42 = v41;
  v98 = &v94;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v94 - v104;
  sub_1CA948D98();
  v44 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v94 - v102;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v37, v39, v40, v42, 0, 0, v43, v45);
  *(inited + 224) = v100;
  *(inited + 232) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = 0x75736F6C63736944;
  *(v47 + 40) = 0xEF6C6576654C6572;
  *(v47 + 48) = 0x63696C627550;
  *(v47 + 56) = 0xE600000000000000;
  *(v47 + 72) = MEMORY[0x1E69E6158];
  *(v47 + 80) = 0x656C7069746C754DLL;
  *(v47 + 88) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 96) = 0;
  *(v47 + 120) = v48;
  *(v47 + 128) = 0x614E74757074754FLL;
  *(v47 + 136) = 0xEA0000000000656DLL;
  v49 = @"Output";
  v50 = sub_1CA94C438();
  v97 = v51;
  v52 = sub_1CA94C438();
  v54 = v53;
  v98 = &v94;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v94 - v104;
  sub_1CA948D98();
  v56 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v94 - v102;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 144) = sub_1CA2F9F14(v50, v97, v52, v54, 0, 0, v55, v57);
  *(v47 + 168) = v100;
  *(v47 + 176) = 0x7365707954;
  *(v47 + 184) = 0xE500000000000000;
  *(v47 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 192) = &unk_1F4A03FA0;
  v59 = MEMORY[0x1E69E6158];
  v60 = sub_1CA94C1E8();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v60;
  *(inited + 264) = v61;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v98 = swift_allocObject();
  *(v98 + 1) = xmmword_1CA9813B0;
  v97 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_1CA981380;
  *(v62 + 32) = @"Class";
  *(v62 + 40) = 0xD000000000000014;
  *(v62 + 48) = 0x80000001CA99B500;
  *(v62 + 64) = v59;
  *(v62 + 72) = @"DefaultValue";
  *(v62 + 80) = 0;
  *(v62 + 88) = 0xE000000000000000;
  *(v62 + 104) = v59;
  *(v62 + 112) = @"Key";
  *(v62 + 120) = 0xD000000000000010;
  *(v62 + 128) = 0x80000001CA9CA7C0;
  *(v62 + 144) = v59;
  *(v62 + 152) = @"Label";
  v63 = @"Parameters";
  v64 = @"Class";
  v65 = @"DefaultValue";
  v66 = @"Key";
  v67 = @"Label";
  v68 = sub_1CA94C438();
  v95 = v69;
  v70 = sub_1CA94C438();
  v72 = v71;
  v96 = &v94;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v94 - v104;
  sub_1CA948D98();
  v74 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v94 - v102;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 160) = sub_1CA2F9F14(v68, v95, v70, v72, 0, 0, v73, v75);
  *(v62 + 184) = v100;
  *(v62 + 192) = @"Multiline";
  *(v62 + 200) = 1;
  *(v62 + 224) = MEMORY[0x1E69E6370];
  *(v62 + 232) = @"Placeholder";
  v77 = @"Multiline";
  v78 = @"Placeholder";
  v79 = sub_1CA94C438();
  v95 = v80;
  v81 = sub_1CA94C438();
  v83 = v82;
  v96 = &v94;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v94 - v104;
  sub_1CA948D98();
  v85 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v94 - v102;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v79, v95, v81, v83, 0, 0, v84, v86);
  *(v62 + 264) = v100;
  *(v62 + 240) = v88;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v89 = sub_1CA2F864C();
  v90 = v98;
  v98[4] = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v90;
  *(inited + 304) = v91;
  *(inited + 312) = @"ResidentCompatible";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v92 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t ContentPropertyPossibleValue.label.getter()
{
  switch(*(v0 + 8))
  {
    case 1:
      v1 = [*v0 spokenPhrase];
      goto LABEL_6;
    case 2:
      v2 = *v0;
      return sub_1CA94C3A8();
    case 3:
      v4 = [objc_allocWithZone(MEMORY[0x1E69ACEC8]) initWithValue:*v0 indentationLevel:0];
      v5 = [v4 title];

      v6 = [v5 wf_localizedString];
      goto LABEL_7;
    default:
      v1 = [*v0 stringValue];
LABEL_6:
      v6 = v1;
LABEL_7:
      v7 = sub_1CA94C3A8();

      return v7;
  }
}

uint64_t static ContentPropertyPossibleValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v4 != 1)
      {
        return 0;
      }

      goto LABEL_5;
    case 2:
      if (v4 == 2)
      {
        goto LABEL_5;
      }

      return 0;
    case 3:
      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    default:
      if (*(a2 + 8))
      {
        return 0;
      }

LABEL_5:
      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      v6 = v3;
      v7 = v2;
      v8 = sub_1CA94CFD8();

      return v8 & 1;
  }
}

uint64_t ContentPropertyPossibleValue.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1CCAA2780](*(v0 + 8));
  return sub_1CA94CFE8();
}

uint64_t ContentPropertyPossibleValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v2);
  sub_1CA94CFE8();
  return sub_1CA94D968();
}

uint64_t sub_1CA5468D0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1CA94D918();
  ContentPropertyPossibleValue.hash(into:)();
  return sub_1CA94D968();
}

uint64_t sub_1CA546944()
{
  v1 = v0[28];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1CA546A60;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4463D8, &qword_1CA98B2E8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CA546D74;
  v0[13] = &block_descriptor_22;
  v0[14] = v2;
  [v1 getValuesWithCompletionBlock_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA546A60()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1CA546B40, 0, 0);
}

uint64_t sub_1CA546B40()
{
  v2 = v0 + 208;
  v1 = *(v0 + 208);
  v3 = *(v1 + 16);
  if (v3)
  {
    v28 = (v0 + 80);
    v4 = (v0 + 144);
    v26 = *(v0 + 208);
    v5 = v1 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = v0 + 208;
    while (1)
    {
      sub_1CA25B374(v5, v28);
      sub_1CA2C0A20(v28, v4);
      v8 = OUTLINED_FUNCTION_70();
      sub_1CA25B374(v8, v9);
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      if (OUTLINED_FUNCTION_0_52())
      {
        break;
      }

      v11 = OUTLINED_FUNCTION_70();
      sub_1CA25B374(v11, v12);
      sub_1CA25B3D0(0, &qword_1EDB9F758, 0x1E696EA50);
      if (OUTLINED_FUNCTION_0_52())
      {
        v10 = 1;
        goto LABEL_9;
      }

      v13 = OUTLINED_FUNCTION_70();
      sub_1CA25B374(v13, v14);
      sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
      if (OUTLINED_FUNCTION_0_52())
      {
        v10 = 2;
        goto LABEL_9;
      }

      v19 = OUTLINED_FUNCTION_70();
      sub_1CA2C0A20(v19, v20);
      sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
      if (OUTLINED_FUNCTION_0_52())
      {
        v10 = 3;
        goto LABEL_10;
      }

LABEL_15:
      v5 += 32;
      if (!--v3)
      {

        v0 = v27;
        goto LABEL_20;
      }
    }

    v10 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v4);
LABEL_10:
    v15 = *(v2 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = *(v6 + 16);
      sub_1CA2E6D6C();
      v6 = v22;
    }

    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      OUTLINED_FUNCTION_3_39(v16);
      sub_1CA2E6D6C();
      v6 = v23;
    }

    *(v6 + 16) = v17 + 1;
    v18 = v6 + 16 * v17;
    *(v18 + 32) = v15;
    *(v18 + 40) = v10;
    v2 = v7;
    goto LABEL_15;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v24 = *(v0 + 8);

  return v24(v6);
}

uint64_t sub_1CA546D74(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v2 = sub_1CA94C658();
  return sub_1CA546634(v1, v2);
}

uint64_t WFContentPropertyPossibleValuesGetter.unsafeTypedValues.getter()
{
  v0 = sub_1CA94CF48();
  v1 = *(v0 + 16);
  if (!v1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v53 = v0;
  v2 = v0 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1CA25B374(v2, v60);
    v4 = sub_1CA2C0A20(v60, v59);
    v12 = OUTLINED_FUNCTION_2_45(v4, v5, v6, v7, v8, v9, v10, v11, v53, v54, v55, v56, v57, v58, v59[0]);
    sub_1CA25B374(v12, v13);
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    v14 = OUTLINED_FUNCTION_1_38();
    if (v14)
    {
      __swift_destroy_boxed_opaque_existential_0(v59);
      v22 = 0;
      v23 = v54;
    }

    else
    {
      v24 = OUTLINED_FUNCTION_2_45(v14, v15, v16, v17, v18, v19, v20, v21, v53, v54, v55, v56, v57, v58, v59[0]);
      sub_1CA25B374(v24, v25);
      sub_1CA25B3D0(0, &qword_1EDB9F758, 0x1E696EA50);
      v26 = OUTLINED_FUNCTION_1_38();
      if (v26)
      {
        __swift_destroy_boxed_opaque_existential_0(v59);
        v23 = v54;
        v22 = 1;
      }

      else
      {
        v34 = OUTLINED_FUNCTION_2_45(v26, v27, v28, v29, v30, v31, v32, v33, v53, v54, v55, v56, v57, v58, v59[0]);
        sub_1CA25B374(v34, v35);
        sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
        v36 = OUTLINED_FUNCTION_1_38();
        if (v36)
        {
          __swift_destroy_boxed_opaque_existential_0(v59);
          v23 = v54;
          v22 = 2;
        }

        else
        {
          v44 = OUTLINED_FUNCTION_2_45(v36, v37, v38, v39, v40, v41, v42, v43, v53, v54, v55, v56, v57, v58, v59[0]);
          sub_1CA2C0A20(v44, v45);
          sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
          if (!OUTLINED_FUNCTION_1_38())
          {
            goto LABEL_16;
          }

          v23 = v54;
          v22 = 3;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = *(v3 + 16);
      sub_1CA2E6D6C();
      v3 = v50;
    }

    v47 = *(v3 + 16);
    v46 = *(v3 + 24);
    if (v47 >= v46 >> 1)
    {
      OUTLINED_FUNCTION_3_39(v46);
      sub_1CA2E6D6C();
      v3 = v51;
    }

    *(v3 + 16) = v47 + 1;
    v48 = v3 + 16 * v47;
    *(v48 + 32) = v23;
    *(v48 + 40) = v22;
LABEL_16:
    v2 += 32;
    --v1;
  }

  while (v1);

  return v3;
}

unint64_t sub_1CA546FD8()
{
  result = qword_1EC4463E0;
  if (!qword_1EC4463E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4463E0);
  }

  return result;
}

uint64_t sub_1CA547038(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_1CA547078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_1CA54710C()
{
  v158 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CA810;
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
  v167 = v12;
  v13 = v150 - v166;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v165 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v168 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v163 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v150 - v163;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v164 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  *&v162 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v161 = xmmword_1CA9813C0;
  *(v24 + 16) = xmmword_1CA9813C0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v156 = v28;
  v157 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v160 = v150;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v150 - v166;
  sub_1CA948D98();
  v33 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v150 - v163;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v157, v156, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v164;
  *(v24 + 72) = @"DescriptionResult";
  v36 = @"DescriptionResult";
  v37 = sub_1CA94C438();
  v156 = v38;
  v157 = v37;
  v155 = sub_1CA94C438();
  v40 = v39;
  v160 = v150;
  MEMORY[0x1EEE9AC00](v155);
  v41 = v166;
  sub_1CA948D98();
  v42 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  v43 = v163;
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v157, v156, v155, v40, 0, 0, v150 - v41, v150 - v43);
  *(v24 + 104) = v164;
  *(v24 + 112) = @"DescriptionSummary";
  v45 = @"DescriptionSummary";
  v46 = sub_1CA94C438();
  v156 = v47;
  v157 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v160 = v150;
  MEMORY[0x1EEE9AC00](v48);
  sub_1CA948D98();
  v51 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v157, v156, v48, v50, 0, 0, v150 - v41, v150 - v43);
  *(v24 + 144) = v164;
  *(v24 + 120) = v53;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v54 = v162;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v54;
  *(inited + 192) = @"DisabledOnPlatforms";
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 224) = v55;
  v56 = v55;
  v160 = v55;
  *(inited + 200) = &unk_1F4A04010;
  v57 = @"DisabledOnPlatforms";
  *(inited + 232) = sub_1CA94C368();
  v58 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v58;
  *(inited + 272) = @"Input";
  v59 = v58;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v60 = swift_initStackObject();
  v162 = xmmword_1CA981350;
  *(v60 + 16) = xmmword_1CA981350;
  *(v60 + 32) = 0x656C7069746C754DLL;
  *(v60 + 40) = 0xE800000000000000;
  *(v60 + 48) = 1;
  *(v60 + 72) = v59;
  strcpy((v60 + 80), "ParameterKey");
  *(v60 + 93) = 0;
  *(v60 + 94) = -5120;
  *(v60 + 96) = 0x7475706E49;
  *(v60 + 104) = 0xE500000000000000;
  *(v60 + 120) = MEMORY[0x1E69E6158];
  *(v60 + 128) = 0x6465726975716552;
  *(v60 + 136) = 0xE800000000000000;
  *(v60 + 144) = 0;
  *(v60 + 168) = v59;
  *(v60 + 176) = 0x7365707954;
  *(v60 + 216) = v56;
  *(v60 + 184) = 0xE500000000000000;
  *(v60 + 192) = &unk_1F4A04040;
  v61 = @"Input";
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v157 = v63;
  *(inited + 280) = v62;
  *(inited + 304) = v63;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 320) = 0;
  *(inited + 344) = v59;
  *(inited + 352) = @"Name";
  v64 = @"InputPassthrough";
  v65 = @"Name";
  v66 = sub_1CA94C438();
  v153 = v67;
  v154 = v66;
  v68 = sub_1CA94C438();
  v152 = v69;
  v155 = v150;
  MEMORY[0x1EEE9AC00](v68);
  v70 = v150 - v166;
  sub_1CA948D98();
  v71 = v165;
  v72 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v163;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v154, v153, v68, v152, 0, 0, v70, v150 - v73);
  v75 = v164;
  *(inited + 384) = v164;
  *(inited + 392) = @"Output";
  v76 = swift_allocObject();
  *(v76 + 16) = v161;
  *(v76 + 32) = 0x656C7069746C754DLL;
  *(v76 + 40) = 0xE800000000000000;
  *(v76 + 48) = 1;
  *(v76 + 72) = MEMORY[0x1E69E6370];
  *(v76 + 80) = 0x614E74757074754FLL;
  *(v76 + 88) = 0xEA0000000000656DLL;
  v77 = @"Output";
  v78 = sub_1CA94C438();
  v155 = v79;
  v156 = v78;
  v80 = sub_1CA94C438();
  v154 = v81;
  *&v161 = v150;
  MEMORY[0x1EEE9AC00](v80);
  v82 = v150 - v166;
  sub_1CA948D98();
  v83 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 96) = sub_1CA2F9F14(v156, v155, v80, v154, 0, 0, v82, v150 - v73);
  *(v76 + 120) = v75;
  *(v76 + 128) = 0x7365707954;
  *(v76 + 168) = v160;
  *(v76 + 136) = 0xE500000000000000;
  *(v76 + 144) = &unk_1F4A04070;
  v85 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v157;
  *(inited + 432) = @"ParameterCollapsingBehavior";
  *(inited + 440) = 0x726576654ELL;
  *(inited + 448) = 0xE500000000000000;
  *(inited + 464) = v85;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v161 = swift_allocObject();
  *(v161 + 16) = xmmword_1CA981360;
  v160 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v86 = swift_allocObject();
  *(v86 + 16) = v162;
  *(v86 + 32) = @"Class";
  *(v86 + 40) = 0xD000000000000019;
  *(v86 + 48) = 0x80000001CA99B030;
  *(v86 + 64) = v85;
  *(v86 + 72) = @"Key";
  *(v86 + 80) = 0x7475706E49;
  *(v86 + 88) = 0xE500000000000000;
  *(v86 + 104) = v85;
  *(v86 + 112) = @"Label";
  v87 = @"Class";
  v88 = @"Key";
  v155 = v87;
  v157 = v88;
  v89 = @"ParameterCollapsingBehavior";
  v90 = @"Parameters";
  v91 = @"Label";
  v92 = sub_1CA94C438();
  v152 = v93;
  v153 = v92;
  v151 = sub_1CA94C438();
  v95 = v94;
  v154 = v150;
  MEMORY[0x1EEE9AC00](v151);
  v159 = inited;
  v96 = v166;
  sub_1CA948D98();
  v97 = v165;
  v98 = [v165 bundleURL];
  v150[1] = v150;
  MEMORY[0x1EEE9AC00](v98);
  v99 = v163;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 120) = sub_1CA2F9F14(v153, v152, v151, v95, 0, 0, v150 - v96, v150 - v99);
  v101 = v164;
  *(v86 + 144) = v164;
  *(v86 + 152) = @"Placeholder";
  v102 = @"Placeholder";
  v103 = sub_1CA94C438();
  v152 = v104;
  v153 = v103;
  v105 = sub_1CA94C438();
  v107 = v106;
  v154 = v150;
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948D98();
  v108 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v153, v152, v105, v107, 0, 0, v150 - v96, v150 - v99);
  *(v86 + 184) = v101;
  *(v86 + 160) = v110;
  _s3__C3KeyVMa_0(0);
  v154 = v111;
  v153 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v161 + 32) = sub_1CA2F864C();
  v112 = swift_allocObject();
  *(v112 + 16) = v162;
  *(v112 + 32) = v155;
  *(v112 + 40) = 0xD00000000000001ALL;
  *(v112 + 48) = 0x80000001CA9CA970;
  *(v112 + 64) = MEMORY[0x1E69E6158];
  *(v112 + 72) = @"DefaultValue";
  v113 = @"DefaultValue";
  v114 = sub_1CA94C438();
  v156 = v115;
  v116 = sub_1CA94C438();
  v118 = v117;
  *&v162 = v150;
  MEMORY[0x1EEE9AC00](v116);
  v119 = v150 - v166;
  sub_1CA948D98();
  v120 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = v163;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v112 + 80) = sub_1CA2F9F14(v114, v156, v116, v118, 0, 0, v119, v150 - v121);
  v123 = v157;
  *(v112 + 104) = v164;
  *(v112 + 112) = v123;
  v124 = MEMORY[0x1E69E6158];
  *(v112 + 144) = MEMORY[0x1E69E6158];
  *(v112 + 120) = 0x747069726353;
  *(v112 + 128) = 0xE600000000000000;
  v125 = sub_1CA94C368();
  *(v112 + 184) = v124;
  *(v112 + 152) = v125;
  *(v112 + 160) = 0x726353656C707041;
  *(v112 + 168) = 0xEB00000000747069;
  sub_1CA94C1E8();
  v126 = sub_1CA2F864C();
  v127 = v161;
  *(v161 + 40) = v126;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v129 = v159;
  v159[60] = v127;
  v129[63] = v128;
  v129[64] = @"ParameterSummary";
  v130 = @"ParameterSummary";
  v131 = sub_1CA94C438();
  v133 = v132;
  v134 = sub_1CA94C438();
  v136 = v135;
  v164 = v150;
  MEMORY[0x1EEE9AC00](v134);
  v137 = v150 - v166;
  sub_1CA948D98();
  v138 = [v165 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v131, v133, v134, v136, 0, 0, v137, v150 - v121);
  v141 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v142 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v143 = v159;
  v159[68] = v142;
  v143[65] = v141;
  v143[69] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_1CA97EDF0;
  v169 = 2;
  v170 = 0;
  v145 = type metadata accessor for WFDeviceIdiomResource();
  v146 = objc_allocWithZone(v145);
  v147 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v169);
  *(v144 + 32) = v148;
  *(v144 + 88) = MEMORY[0x1E69E6158];
  *(v144 + 56) = v145;
  *(v144 + 64) = 0xD000000000000019;
  *(v144 + 72) = 0x80000001CA994500;
  v143[73] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v143[70] = v144;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA548500()
{
  v198 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000021;
  *(inited + 48) = 0x80000001CA9CAA60;
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
  v208 = v12;
  v209 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v187 - v209;
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
  v17 = v187 - v205;
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
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionNote";
  v22 = @"Description";
  v23 = @"DescriptionNote";
  v24 = sub_1CA94C438();
  v199 = v25;
  v200 = v24;
  v26 = sub_1CA94C438();
  v28 = v27;
  v201 = v187;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v187 - v209;
  sub_1CA948D98();
  v30 = v206;
  v31 = [v206 bundleURL];
  v203 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v205;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v200, v199, v26, v28, 0, 0, v29, v187 - v33);
  v35 = v204;
  *(v21 + 64) = v204;
  *(v21 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438();
  v199 = v38;
  v200 = v37;
  v39 = sub_1CA94C438();
  v41 = v40;
  v201 = v187;
  MEMORY[0x1EEE9AC00](v39);
  v42 = v187 - v209;
  sub_1CA948D98();
  v43 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v200, v199, v39, v41, 0, 0, v42, v187 - v33);
  *(v21 + 104) = v35;
  *(v21 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v46 = v202;
  v47 = sub_1CA6B3784();
  v48 = v203;
  *(v203 + 15) = v47;
  *(v48 + 18) = v46;
  *(v48 + 19) = @"DisabledOnPlatforms";
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v202 = v49;
  *(v48 + 20) = &unk_1F4A040D0;
  *(v48 + 23) = v49;
  *(v48 + 24) = @"IconColor";
  *(v48 + 25) = 6579538;
  *(v48 + 26) = 0xE300000000000000;
  v50 = MEMORY[0x1E69E6158];
  *(v48 + 28) = MEMORY[0x1E69E6158];
  *(v48 + 29) = @"IconSymbol";
  strcpy(v48 + 240, "airplayaudio");
  v48[253] = 0;
  *(v48 + 127) = -5120;
  *(v48 + 33) = v50;
  *(v48 + 34) = @"Name";
  v51 = @"DisabledOnPlatforms";
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"Name";
  v55 = sub_1CA94C438();
  v57 = v56;
  v58 = sub_1CA94C438();
  v60 = v59;
  v201 = v187;
  MEMORY[0x1EEE9AC00](v58);
  v61 = v187 - v209;
  sub_1CA948D98();
  v62 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = v187 - v205;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v48 + 35) = sub_1CA2F9F14(v55, v57, v58, v60, 0, 0, v61, v63);
  *(v48 + 38) = v204;
  *(v48 + 39) = @"Output";
  v65 = @"Output";
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v48 + 40) = v67;
  *(v48 + 43) = v68;
  *(v48 + 44) = @"Parameters";
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v201 = swift_allocObject();
  *(v201 + 1) = xmmword_1CA981360;
  v200 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_1CA981380;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000016;
  *(v69 + 48) = 0x80000001CA99C4A0;
  *(v69 + 64) = v66;
  *(v69 + 72) = @"DefaultValue";
  *(v69 + 80) = 7628115;
  *(v69 + 88) = 0xE300000000000000;
  *(v69 + 104) = v66;
  *(v69 + 112) = @"DisallowedVariableTypes";
  *(v69 + 120) = &unk_1F4A04140;
  *(v69 + 144) = v202;
  *(v69 + 152) = @"Items";
  v199 = swift_allocObject();
  v196 = xmmword_1CA981470;
  *&v199->data = xmmword_1CA981470;
  v70 = @"Class";
  v71 = @"DefaultValue";
  v72 = @"DisallowedVariableTypes";
  v192 = v70;
  v193 = v71;
  v195 = v72;
  v73 = @"Parameters";
  v74 = @"Items";
  v75 = sub_1CA94C438();
  v189 = v76;
  v190 = v75;
  v77 = sub_1CA94C438();
  v188 = v78;
  v191 = v187;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v187 - v209;
  sub_1CA948D98();
  v80 = v206;
  v81 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v187 - v205;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v190, v189, v77, v188, 0, 0, v79, v82);
  v85 = v199;
  v199[1].isa = v84;
  v86 = sub_1CA94C438();
  v189 = v87;
  v190 = v86;
  v188 = sub_1CA94C438();
  v89 = v88;
  v191 = v187;
  MEMORY[0x1EEE9AC00](v188);
  v90 = v209;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  v187[1] = v187;
  MEMORY[0x1EEE9AC00](v91);
  v92 = v205;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85[1].info = sub_1CA2F9F14(v190, v189, v188, v89, 0, 0, v187 - v90, v187 - v92);
  v94 = sub_1CA94C438();
  v189 = v95;
  v190 = v94;
  v96 = sub_1CA94C438();
  v188 = v97;
  v191 = v187;
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948D98();
  v98 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v190, v189, v96, v188, 0, 0, v187 - v90, v187 - v92);
  v101 = v199;
  v199[1].data = v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v69 + 160) = v101;
  *(v69 + 184) = v102;
  *(v69 + 192) = @"Key";
  *(v69 + 200) = 0xD000000000000015;
  *(v69 + 208) = 0x80000001CA9CACF0;
  *(v69 + 224) = MEMORY[0x1E69E6158];
  *(v69 + 232) = @"Label";
  v103 = @"Key";
  v104 = @"Label";
  v191 = v103;
  v199 = v104;
  v105 = sub_1CA94C438();
  v107 = v106;
  v108 = sub_1CA94C438();
  v110 = v109;
  v190 = v187;
  MEMORY[0x1EEE9AC00](v108);
  v111 = v187 - v209;
  sub_1CA948D98();
  v112 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  v113 = v187 - v205;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v105, v107, v108, v110, 0, 0, v111, v113);
  *(v69 + 264) = v204;
  *(v69 + 240) = v115;
  _s3__C3KeyVMa_0(0);
  v190 = v116;
  v189 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v201 + 4) = sub_1CA2F864C();
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1CA981300;
  *(v117 + 32) = @"AlwaysShowsButton";
  *(v117 + 40) = 1;
  v118 = v192;
  *(v117 + 64) = MEMORY[0x1E69E6370];
  *(v117 + 72) = v118;
  *(v117 + 80) = 0xD00000000000001BLL;
  *(v117 + 88) = 0x80000001CA9A1EB0;
  v119 = MEMORY[0x1E69E6158];
  v120 = v193;
  *(v117 + 104) = MEMORY[0x1E69E6158];
  *(v117 + 112) = v120;
  *(v117 + 120) = 0x6C61636F4CLL;
  *(v117 + 128) = 0xE500000000000000;
  *(v117 + 144) = v119;
  *(v117 + 152) = @"Description";
  v121 = @"AlwaysShowsButton";
  v122 = @"Description";
  v123 = sub_1CA94C438();
  v192 = v124;
  v193 = v123;
  v125 = sub_1CA94C438();
  v127 = v126;
  v194 = v187;
  MEMORY[0x1EEE9AC00](v125);
  v128 = v187 - v209;
  sub_1CA948D98();
  v129 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v205;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 160) = sub_1CA2F9F14(v193, v192, v125, v127, 0, 0, v128, v187 - v130);
  v132 = v195;
  *(v117 + 184) = v204;
  *(v117 + 192) = v132;
  *(v117 + 200) = &unk_1F4A04170;
  v133 = v191;
  *(v117 + 224) = v202;
  *(v117 + 232) = v133;
  strcpy((v117 + 240), "WFMediaRoute");
  *(v117 + 253) = 0;
  *(v117 + 254) = -5120;
  v134 = v199;
  *(v117 + 264) = MEMORY[0x1E69E6158];
  *(v117 + 272) = v134;
  v199 = sub_1CA94C438();
  v195 = v135;
  v136 = sub_1CA94C438();
  v138 = v137;
  v202 = v187;
  MEMORY[0x1EEE9AC00](v136);
  v139 = v209;
  sub_1CA948D98();
  v140 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v199, v195, v136, v138, 0, 0, v187 - v139, v187 - v130);
  *(v117 + 304) = v204;
  *(v117 + 280) = v142;
  v143 = sub_1CA94C368();
  *(v117 + 344) = MEMORY[0x1E69E6158];
  *(v117 + 312) = v143;
  strcpy((v117 + 320), "OutputDevice");
  *(v117 + 333) = 0;
  *(v117 + 334) = -5120;
  sub_1CA94C1E8();
  v144 = sub_1CA2F864C();
  v145 = v201;
  *(v201 + 5) = v144;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v147 = v203;
  *(v203 + 45) = v145;
  *(v147 + 48) = v146;
  *(v147 + 49) = @"ParameterSummary";
  v202 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v204 = swift_allocObject();
  *(v204 + 16) = v196;
  v201 = "yback destination.";
  v148 = @"ParameterSummary";
  v199 = sub_1CA94C438();
  v197 = v149;
  v150 = sub_1CA94C438();
  v152 = v151;
  v200 = v187;
  MEMORY[0x1EEE9AC00](v150);
  sub_1CA948D98();
  v153 = v206;
  v154 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = v187 - v205;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v157 = sub_1CA2F9F14(v199, v197, v150, v152, 0, 0, v187 - v139, v155);
  v158 = objc_allocWithZone(WFActionParameterSummaryValue);
  v159 = sub_1CA65DD78(0xD000000000000027, v201 | 0x8000000000000000, v157);
  *(v204 + 32) = v159;
  v201 = "back destinations";
  v199 = sub_1CA94C438();
  v197 = v160;
  v161 = sub_1CA94C438();
  v163 = v162;
  v200 = v187;
  MEMORY[0x1EEE9AC00](v161);
  v164 = v187 - v209;
  sub_1CA948D98();
  v165 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = v205;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v199, v197, v161, v163, 0, 0, v164, v187 - v166);
  v169 = objc_allocWithZone(WFActionParameterSummaryValue);
  v170 = sub_1CA65DD78(0xD00000000000002ALL, v201 | 0x8000000000000000, v168);
  *(v204 + 40) = v170;
  v201 = "ayback destinations";
  v171 = sub_1CA94C438();
  v173 = v172;
  v174 = sub_1CA94C438();
  v176 = v175;
  v200 = v187;
  MEMORY[0x1EEE9AC00](v174);
  v177 = v187 - v209;
  sub_1CA948D98();
  v178 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v180 = sub_1CA2F9F14(v171, v173, v174, v176, 0, 0, v177, v187 - v166);
  v181 = objc_allocWithZone(WFActionParameterSummaryValue);
  v182 = sub_1CA65DD78(0xD000000000000027, v201 | 0x8000000000000000, v180);
  *(v204 + 48) = v182;
  v183 = v202;
  v184 = sub_1CA65AF90();
  v185 = v203;
  *(v203 + 53) = v183;
  *(v185 + 50) = v184;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA549B54()
{
  v104 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CAF80;
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
  v13 = &v99 - v109;
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
  v17 = &v99 - v107;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v105 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v103 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v101 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v102 = &v99;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v99 - v109;
  sub_1CA948D98();
  v33 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v99 - v107;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v101, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v105;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v103;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1851881795;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  strcpy((inited + 240), "envelope.fill");
  *(inited + 254) = -4864;
  *(inited + 264) = v38;
  *(inited + 272) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"LocallyProcessesData";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v99 - v109;
  sub_1CA948D98();
  v51 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v99 - v107;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 344) = v105;
  *(inited + 352) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA981350;
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
  v102 = v57;
  v58 = sub_1CA94C438();
  v60 = v59;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v99 - v109;
  sub_1CA948D98();
  v62 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v99 - v107;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v56, v102, v58, v60, 0, 0, v61, v63);
  *(v54 + 168) = v105;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 192) = &unk_1F4A041E0;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v66;
  *(inited + 384) = v67;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v103 = swift_allocObject();
  *(v103 + 1) = xmmword_1CA9813B0;
  v102 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1CA981370;
  *(v68 + 32) = @"AllowsMultipleValues";
  *(v68 + 40) = 1;
  *(v68 + 64) = MEMORY[0x1E69E6370];
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD00000000000001CLL;
  *(v68 + 88) = 0x80000001CA9CB060;
  *(v68 + 104) = v65;
  *(v68 + 112) = @"Key";
  strcpy((v68 + 120), "WFEmailAddress");
  *(v68 + 135) = -18;
  *(v68 + 144) = v65;
  *(v68 + 152) = @"Label";
  v69 = @"Parameters";
  v70 = @"AllowsMultipleValues";
  v71 = @"Class";
  v72 = @"Key";
  v73 = @"Label";
  v74 = sub_1CA94C438();
  v100 = v75;
  v76 = sub_1CA94C438();
  v78 = v77;
  v101 = &v99;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v99 - v109;
  sub_1CA948D98();
  v80 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v99 - v107;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 160) = sub_1CA2F9F14(v74, v100, v76, v78, 0, 0, v79, v81);
  *(v68 + 184) = v105;
  *(v68 + 192) = @"Placeholder";
  v83 = @"Placeholder";
  v84 = sub_1CA94C438();
  v100 = v85;
  v86 = sub_1CA94C438();
  v88 = v87;
  v101 = &v99;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v99 - v109;
  sub_1CA948D98();
  v90 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v99 - v107;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v84, v100, v86, v88, 0, 0, v89, v91);
  *(v68 + 224) = v105;
  *(v68 + 200) = v93;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v94 = sub_1CA2F864C();
  v95 = v103;
  v103[4] = v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v95;
  *(inited + 424) = v96;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v97 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA54A8A0()
{
  v205 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9CB100;
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
  v222 = v12;
  v223 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v200 - v223;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v221 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v218 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v219 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v200 - v219;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v220 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v216 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v213 = v28;
  *&v214 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v215 = &v200;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v200 - v223;
  sub_1CA948D98();
  v33 = v221;
  v34 = [v221 bundleURL];
  v217 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v200 - v219;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v214, v213, v29, v31, 0, 0, v32, v36);
  v38 = v220;
  *(v24 + 64) = v220;
  *(v24 + 72) = @"DescriptionSummary";
  v39 = @"DescriptionSummary";
  v40 = sub_1CA94C438();
  v213 = v41;
  *&v214 = v40;
  v212 = sub_1CA94C438();
  v43 = v42;
  v215 = &v200;
  MEMORY[0x1EEE9AC00](v212);
  v44 = &v200 - v223;
  sub_1CA948D98();
  v45 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  v46 = v219;
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v48 = sub_1CA2F9F14(v214, v213, v212, v43, 0, 0, v44, &v200 - v46);
  *(v24 + 104) = v38;
  *(v24 + 80) = v48;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v49 = v216;
  v50 = sub_1CA6B3784();
  v51 = v217;
  v217[20] = v50;
  v51[23] = v49;
  v51[24] = @"Input";
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  v214 = xmmword_1CA981350;
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  *(v52 + 96) = 0x7475706E494657;
  *(v52 + 104) = 0xE700000000000000;
  *(v52 + 120) = MEMORY[0x1E69E6158];
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v210;
  *(v52 + 192) = &unk_1F4A04290;
  v54 = @"Input";
  v55 = sub_1CA94C1E8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v216 = v56;
  v51[25] = v55;
  v51[28] = v56;
  v51[29] = @"Name";
  v57 = @"Name";
  v58 = sub_1CA94C438();
  v211 = v59;
  v212 = v58;
  v60 = sub_1CA94C438();
  v209 = v61;
  v213 = &v200;
  MEMORY[0x1EEE9AC00](v60);
  v62 = v223;
  sub_1CA948D98();
  v63 = v221;
  v64 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v212, v211, v60, v209, 0, 0, &v200 - v62, &v200 - v46);
  v67 = v217;
  v217[30] = v66;
  v67[33] = v220;
  v67[34] = @"Output";
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1CA9813C0;
  *(v68 + 32) = 0x656C7069746C754DLL;
  *(v68 + 40) = 0xE800000000000000;
  *(v68 + 48) = 0;
  *(v68 + 72) = MEMORY[0x1E69E6370];
  *(v68 + 80) = 0x614E74757074754FLL;
  *(v68 + 88) = 0xEA0000000000656DLL;
  v69 = @"Output";
  v70 = sub_1CA94C438();
  v212 = v71;
  v213 = v70;
  v72 = sub_1CA94C438();
  v211 = v73;
  v215 = &v200;
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948D98();
  v74 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 96) = sub_1CA2F9F14(v213, v212, v72, v211, 0, 0, &v200 - v62, &v200 - v46);
  *(v68 + 120) = v220;
  *(v68 + 128) = 0x7365707954;
  *(v68 + 168) = v210;
  *(v68 + 136) = 0xE500000000000000;
  *(v68 + 144) = &unk_1F4A042C0;
  v76 = MEMORY[0x1E69E6158];
  v77 = sub_1CA94C1E8();
  v78 = v217;
  v217[35] = v77;
  v78[38] = v216;
  v78[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v216 = swift_allocObject();
  *(v216 + 16) = xmmword_1CA981570;
  v215 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v79 = swift_allocObject();
  *(v79 + 16) = v214;
  *(v79 + 32) = @"Class";
  *(v79 + 40) = 0xD000000000000014;
  *(v79 + 48) = 0x80000001CA99B500;
  *(v79 + 64) = v76;
  *(v79 + 72) = @"Key";
  *(v79 + 80) = 0xD000000000000013;
  *(v79 + 88) = 0x80000001CA9CB1F0;
  *(v79 + 104) = v76;
  *(v79 + 112) = @"Label";
  v80 = @"Class";
  v81 = @"Key";
  v82 = @"Label";
  v83 = v80;
  v84 = v81;
  v85 = v82;
  v208 = v83;
  v207 = v84;
  v206 = v85;
  v86 = @"Parameters";
  v211 = sub_1CA94C438();
  v209 = v87;
  v88 = sub_1CA94C438();
  v90 = v89;
  v212 = &v200;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v200 - v223;
  sub_1CA948D98();
  v92 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = v219;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 120) = sub_1CA2F9F14(v211, v209, v88, v90, 0, 0, v91, &v200 - v93);
  v95 = v220;
  *(v79 + 144) = v220;
  *(v79 + 152) = @"Placeholder";
  v209 = @"Placeholder";
  v211 = sub_1CA94C438();
  v204 = v96;
  v203 = sub_1CA94C438();
  v98 = v97;
  v212 = &v200;
  MEMORY[0x1EEE9AC00](v203);
  v99 = &v200 - v223;
  sub_1CA948D98();
  v100 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v211, v204, v203, v98, 0, 0, v99, &v200 - v93);
  *(v79 + 184) = v95;
  *(v79 + 160) = v102;
  _s3__C3KeyVMa_0(0);
  v212 = v103;
  v211 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v216 + 32) = sub_1CA2F864C();
  v104 = swift_allocObject();
  *(v104 + 16) = v214;
  v105 = v208;
  *(v104 + 32) = v208;
  *(v104 + 40) = 0xD000000000000021;
  *(v104 + 48) = 0x80000001CA9C4280;
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = @"Description";
  v106 = @"Description";
  v208 = v105;
  v204 = v106;
  v107 = sub_1CA94C438();
  v201 = v108;
  v202 = v107;
  v109 = sub_1CA94C438();
  v111 = v110;
  v203 = &v200;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v200 - v223;
  sub_1CA948D98();
  v113 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v200 - v219;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v104 + 80) = sub_1CA2F9F14(v202, v201, v109, v111, 0, 0, v112, v114);
  v116 = v220;
  v118 = v206;
  v117 = v207;
  *(v104 + 104) = v220;
  *(v104 + 112) = v117;
  *(v104 + 120) = 0xD000000000000012;
  *(v104 + 128) = 0x80000001CA9CB2F0;
  *(v104 + 144) = MEMORY[0x1E69E6158];
  *(v104 + 152) = v118;
  v207 = v117;
  v206 = v118;
  v119 = sub_1CA94C438();
  v201 = v120;
  v202 = v119;
  v121 = sub_1CA94C438();
  v123 = v122;
  v203 = &v200;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v200 - v223;
  sub_1CA948D98();
  v125 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v200 - v219;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v202, v201, v121, v123, 0, 0, v124, v126);
  *(v104 + 184) = v116;
  *(v104 + 160) = v128;
  sub_1CA94C1E8();
  *(v216 + 40) = sub_1CA2F864C();
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1CA981370;
  *(v129 + 32) = v208;
  *(v129 + 40) = 0xD00000000000001FLL;
  *(v129 + 48) = 0x80000001CA9C4130;
  v130 = v204;
  *(v129 + 64) = MEMORY[0x1E69E6158];
  *(v129 + 72) = v130;
  v131 = sub_1CA94C438();
  v202 = v132;
  v203 = v131;
  v133 = sub_1CA94C438();
  v135 = v134;
  v204 = &v200;
  MEMORY[0x1EEE9AC00](v133);
  v136 = &v200 - v223;
  sub_1CA948D98();
  v137 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v200 - v219;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 80) = sub_1CA2F9F14(v203, v202, v133, v135, 0, 0, v136, v138);
  v140 = v207;
  *(v129 + 104) = v220;
  *(v129 + 112) = v140;
  strcpy((v129 + 120), "WFEvernoteTags");
  *(v129 + 135) = -18;
  v141 = v206;
  *(v129 + 144) = MEMORY[0x1E69E6158];
  *(v129 + 152) = v141;
  v142 = sub_1CA94C438();
  v202 = v143;
  v203 = v142;
  v144 = sub_1CA94C438();
  v201 = v145;
  v204 = &v200;
  MEMORY[0x1EEE9AC00](v144);
  v146 = v223;
  sub_1CA948D98();
  v147 = v221;
  v148 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = v219;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 160) = sub_1CA2F9F14(v203, v202, v144, v201, 0, 0, &v200 - v146, &v200 - v149);
  v151 = v220;
  v152 = v209;
  *(v129 + 184) = v220;
  *(v129 + 192) = v152;
  v153 = sub_1CA94C438();
  v202 = v154;
  v203 = v153;
  v155 = sub_1CA94C438();
  v201 = v156;
  v204 = &v200;
  MEMORY[0x1EEE9AC00](v155);
  sub_1CA948D98();
  v157 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v159 = sub_1CA2F9F14(v203, v202, v155, v201, 0, 0, &v200 - v146, &v200 - v149);
  *(v129 + 224) = v151;
  *(v129 + 200) = v159;
  sub_1CA94C1E8();
  *(v216 + 48) = sub_1CA2F864C();
  v160 = swift_allocObject();
  *(v160 + 16) = v214;
  *(v160 + 32) = v208;
  *(v160 + 40) = 0xD000000000000019;
  *(v160 + 48) = 0x80000001CA99B030;
  v161 = MEMORY[0x1E69E6158];
  v162 = v207;
  *(v160 + 64) = MEMORY[0x1E69E6158];
  *(v160 + 72) = v162;
  *(v160 + 80) = 0x7475706E494657;
  *(v160 + 88) = 0xE700000000000000;
  v163 = v206;
  *(v160 + 104) = v161;
  *(v160 + 112) = v163;
  v213 = sub_1CA94C438();
  v208 = v164;
  v165 = sub_1CA94C438();
  v207 = v166;
  *&v214 = &v200;
  MEMORY[0x1EEE9AC00](v165);
  v167 = &v200 - v223;
  sub_1CA948D98();
  v168 = v221;
  v169 = [v221 bundleURL];
  v206 = &v200;
  MEMORY[0x1EEE9AC00](v169);
  v170 = v219;
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v160 + 120) = sub_1CA2F9F14(v213, v208, v165, v207, 0, 0, v167, &v200 - v170);
  v172 = v209;
  *(v160 + 144) = v220;
  *(v160 + 152) = v172;
  v213 = sub_1CA94C438();
  v209 = v173;
  v174 = sub_1CA94C438();
  v208 = v175;
  *&v214 = &v200;
  MEMORY[0x1EEE9AC00](v174);
  v176 = v223;
  sub_1CA948D98();
  v177 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v177);
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v179 = sub_1CA2F9F14(v213, v209, v174, v208, 0, 0, &v200 - v176, &v200 - v170);
  *(v160 + 184) = v220;
  *(v160 + 160) = v179;
  sub_1CA94C1E8();
  v180 = sub_1CA2F864C();
  v181 = v216;
  *(v216 + 56) = v180;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v183 = v217;
  v217[40] = v181;
  v183[43] = v182;
  v183[44] = @"ParameterSummary";
  v184 = @"ParameterSummary";
  v185 = sub_1CA94C438();
  v187 = v186;
  v188 = sub_1CA94C438();
  v190 = v189;
  MEMORY[0x1EEE9AC00](v188);
  sub_1CA948D98();
  v191 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v200 - v219;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v194 = sub_1CA2F9F14(v185, v187, v188, v190, 0, 0, &v200 - v176, v192);
  v195 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v196 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v197 = v217;
  v217[45] = v195;
  v197[48] = v196;
  v197[49] = @"RequiredResources";
  v197[53] = v210;
  v197[50] = &unk_1F4A042F0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v198 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA54C218()
{
  v88 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001FLL;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x80000001CA9CB4B0;
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
  v93 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v94 = v12;
  v13 = &v85 - v93;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v89 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v91 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v92 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v85 - v92;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v90 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v87 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v85 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v86 = &v85;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v85 - v93;
  sub_1CA948D98();
  v33 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v85 - v92;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v85, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v90;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v87;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"LocallyProcessesData";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"LocallyProcessesData";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v86 = v42;
  v43 = sub_1CA94C438();
  v45 = v44;
  v87 = &v85;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v85 - v93;
  sub_1CA948D98();
  v47 = v89;
  v48 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v85 - v92;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v86, v43, v45, 0, 0, v46, v49);
  *(inited + 264) = v90;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA9813C0;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  *(v51 + 48) = 0;
  *(v51 + 72) = MEMORY[0x1E69E6370];
  *(v51 + 80) = 0x614E74757074754FLL;
  *(v51 + 88) = 0xEA0000000000656DLL;
  v52 = @"Output";
  v53 = sub_1CA94C438();
  v86 = v54;
  v55 = sub_1CA94C438();
  v57 = v56;
  v87 = &v85;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v85 - v93;
  sub_1CA948D98();
  v59 = [v47 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v85 - v92;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 96) = sub_1CA2F9F14(v53, v86, v55, v57, 0, 0, v58, v60);
  *(v51 + 120) = v90;
  *(v51 + 128) = 0x7365707954;
  *(v51 + 136) = 0xE500000000000000;
  *(v51 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 144) = &unk_1F4A04370;
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v62;
  *(inited + 304) = v63;
  *(inited + 312) = @"Parameters";
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 320) = MEMORY[0x1E69E7CC0];
  *(inited + 344) = v64;
  *(inited + 352) = @"ParameterSummary";
  v65 = @"Parameters";
  v66 = @"ParameterSummary";
  v67 = sub_1CA94C438();
  v69 = v68;
  v70 = sub_1CA94C438();
  v72 = v71;
  v90 = &v85;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v85 - v93;
  sub_1CA948D98();
  v74 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v85 - v92;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v67, v69, v70, v72, 0, 0, v73, v75);
  v78 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v79 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v78;
  *(inited + 384) = v79;
  *(inited + 392) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1CA9813B0;
  v95 = 2;
  v96 = 0;
  v81 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v82 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v95);
  *(v80 + 32) = v83;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 400) = v80;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA54CCCC()
{
  v0 = sub_1CA949D18();
  v194 = *(v0 - 8);
  v195 = v0;
  v1 = *(v194 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v193 = &v186 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v192 = &v186 - v4;
  v196 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9CB640;
  *(inited + 64) = v6;
  *(inited + 72) = @"ActionKeywords";
  v207 = inited;
  v7 = @"ActionClass";
  v8 = @"ActionKeywords";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v211 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v212 = v17;
  v18 = &v186 - v211;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v206 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v209 = v21;
  v210 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v186 - v210;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v208 = v25;
  v26 = v207;
  v207[10] = v24;
  v26[13] = v25;
  v26[14] = @"Description";
  v205 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v27 = swift_initStackObject();
  v191 = xmmword_1CA97EDF0;
  *(v27 + 16) = xmmword_1CA97EDF0;
  *(v27 + 32) = @"DescriptionResult";
  v28 = @"Description";
  v29 = @"DescriptionResult";
  v203 = sub_1CA94C438();
  *&v202 = v30;
  v31 = sub_1CA94C438();
  v33 = v32;
  v204 = &v186;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v186 - v211;
  sub_1CA948D98();
  v35 = v206;
  v36 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v36);
  v37 = v210;
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v27 + 40) = sub_1CA2F9F14(v203, v202, v31, v33, 0, 0, v34, &v186 - v37);
  v39 = v208;
  *(v27 + 64) = v208;
  *(v27 + 72) = @"DescriptionSummary";
  v40 = @"DescriptionSummary";
  v203 = sub_1CA94C438();
  *&v202 = v41;
  v42 = sub_1CA94C438();
  v44 = v43;
  v204 = &v186;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v186 - v211;
  sub_1CA948D98();
  v46 = [v35 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v48 = sub_1CA2F9F14(v203, v202, v42, v44, 0, 0, v45, &v186 - v37);
  *(v27 + 104) = v39;
  *(v27 + 80) = v48;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v49 = v205;
  v50 = sub_1CA6B3784();
  v51 = v207;
  v207[15] = v50;
  v51[18] = v49;
  v51[19] = @"IconColor";
  v51[20] = 1953392980;
  v51[21] = 0xE400000000000000;
  v52 = MEMORY[0x1E69E6158];
  v51[23] = MEMORY[0x1E69E6158];
  v51[24] = @"IconSymbol";
  v51[25] = 0x7070697A2E636F64;
  v51[26] = 0xEA00000000007265;
  v51[28] = v52;
  v51[29] = @"IconSymbolColor";
  v51[30] = 1702194242;
  v51[31] = 0xE400000000000000;
  v51[33] = v52;
  v51[34] = @"Input";
  v53 = v52;
  v54 = v51;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  v202 = xmmword_1CA981350;
  *(v55 + 16) = xmmword_1CA981350;
  *(v55 + 32) = 0x656C7069746C754DLL;
  *(v55 + 40) = 0xE800000000000000;
  v56 = MEMORY[0x1E69E6370];
  *(v55 + 48) = 1;
  *(v55 + 72) = v56;
  strcpy((v55 + 80), "ParameterKey");
  *(v55 + 93) = 0;
  *(v55 + 94) = -5120;
  *(v55 + 96) = 0x7475706E494657;
  *(v55 + 104) = 0xE700000000000000;
  *(v55 + 120) = v53;
  *(v55 + 128) = 0x6465726975716552;
  *(v55 + 136) = 0xE800000000000000;
  *(v55 + 144) = 1;
  *(v55 + 168) = v56;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 184) = 0xE500000000000000;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v55 + 216) = v204;
  *(v55 + 192) = &unk_1F4A043A0;
  v57 = @"IconColor";
  v58 = @"IconSymbol";
  v59 = @"IconSymbolColor";
  v60 = @"Input";
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v205 = v62;
  v54[35] = v61;
  v54[38] = v62;
  v54[39] = @"Name";
  v63 = @"Name";
  v64 = sub_1CA94C438();
  v199 = v65;
  v200 = v64;
  v66 = sub_1CA94C438();
  v198 = v67;
  v201 = &v186;
  MEMORY[0x1EEE9AC00](v66);
  v68 = v211;
  sub_1CA948D98();
  v69 = v206;
  v70 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = v210;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v73 = sub_1CA2F9F14(v200, v199, v66, v198, 0, 0, &v186 - v68, &v186 - v71);
  v74 = v207;
  v207[40] = v73;
  v74[43] = v208;
  v74[44] = @"Output";
  v75 = swift_allocObject();
  *(v75 + 16) = v202;
  *(v75 + 32) = 0x75736F6C63736944;
  *(v75 + 40) = 0xEF6C6576654C6572;
  *(v75 + 48) = 0x63696C627550;
  *(v75 + 56) = 0xE600000000000000;
  *(v75 + 72) = MEMORY[0x1E69E6158];
  *(v75 + 80) = 0x656C7069746C754DLL;
  *(v75 + 88) = 0xE800000000000000;
  *(v75 + 96) = 0;
  *(v75 + 120) = MEMORY[0x1E69E6370];
  *(v75 + 128) = 0x614E74757074754FLL;
  *(v75 + 136) = 0xEA0000000000656DLL;
  v76 = @"Output";
  v77 = sub_1CA94C438();
  v201 = v78;
  *&v202 = v77;
  v79 = sub_1CA94C438();
  v81 = v80;
  v203 = &v186;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v186 - v68;
  sub_1CA948D98();
  v83 = [v69 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 144) = sub_1CA2F9F14(v202, v201, v79, v81, 0, 0, v82, &v186 - v71);
  *(v75 + 168) = v208;
  *(v75 + 176) = 0x7365707954;
  *(v75 + 216) = v204;
  *(v75 + 184) = 0xE500000000000000;
  *(v75 + 192) = &unk_1F4A043D0;
  v85 = MEMORY[0x1E69E6158];
  v86 = sub_1CA94C1E8();
  v87 = v207;
  v207[45] = v86;
  v87[48] = v205;
  v87[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v197 = swift_allocObject();
  *(v197 + 16) = xmmword_1CA981470;
  v205 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v88 = swift_allocObject();
  v190 = xmmword_1CA981370;
  *(v88 + 16) = xmmword_1CA981370;
  *(v88 + 32) = @"Class";
  *(v88 + 40) = 0xD000000000000014;
  *(v88 + 48) = 0x80000001CA99B500;
  *(v88 + 64) = v85;
  *(v88 + 72) = @"Key";
  *(v88 + 80) = 0x6D614E50495A4657;
  *(v88 + 88) = 0xE900000000000065;
  *(v88 + 104) = v85;
  *(v88 + 112) = @"Label";
  v89 = @"Class";
  v90 = @"Key";
  v91 = @"Label";
  v92 = v89;
  v93 = v90;
  v94 = v91;
  v200 = v92;
  v199 = v93;
  v198 = v94;
  v95 = @"Parameters";
  v201 = sub_1CA94C438();
  v189 = v96;
  v97 = sub_1CA94C438();
  v99 = v98;
  *&v202 = &v186;
  MEMORY[0x1EEE9AC00](v97);
  v100 = v211;
  sub_1CA948D98();
  v101 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v186 - v210;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 120) = sub_1CA2F9F14(v201, v189, v97, v99, 0, 0, &v186 - v100, v102);
  *(v88 + 144) = v208;
  *(v88 + 152) = @"Placeholder";
  v189 = @"Placeholder";
  v201 = sub_1CA94C438();
  v188 = v104;
  v105 = sub_1CA94C438();
  v107 = v106;
  *&v202 = &v186;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v186 - v100;
  sub_1CA948D98();
  v109 = v206;
  v110 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v186 - v210;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 160) = sub_1CA2F9F14(v201, v188, v105, v107, 0, 0, v108, v111);
  *(v88 + 184) = v208;
  *(v88 + 192) = @"TextAlignment";
  v113 = MEMORY[0x1E69E6158];
  *(v88 + 224) = MEMORY[0x1E69E6158];
  *(v88 + 200) = 0x7468676952;
  *(v88 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  *&v202 = v114;
  v201 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v115 = @"TextAlignment";
  sub_1CA94C1E8();
  v116 = sub_1CA2F864C();
  v117 = v197;
  *(v197 + 32) = v116;
  v118 = swift_initStackObject();
  *(v118 + 16) = xmmword_1CA9813C0;
  *(v118 + 32) = v200;
  *(v118 + 40) = 0xD000000000000018;
  *(v118 + 48) = 0x80000001CA9CB7B0;
  v119 = v199;
  *(v118 + 64) = v113;
  *(v118 + 72) = v119;
  *(v118 + 80) = 0x7669686372414657;
  *(v118 + 88) = 0xEF74616D726F4665;
  v120 = v198;
  *(v118 + 104) = v113;
  *(v118 + 112) = v120;
  v121 = sub_1CA94C438();
  v187 = v122;
  v123 = sub_1CA94C438();
  v125 = v124;
  v188 = &v186;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v186 - v211;
  sub_1CA948D98();
  v127 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v186 - v210;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v121, v187, v123, v125, 0, 0, v126, v128);
  *(v118 + 144) = v208;
  *(v118 + 120) = v130;
  sub_1CA94C1E8();
  *(v117 + 40) = sub_1CA2F864C();
  v131 = swift_allocObject();
  *(v131 + 16) = v190;
  *(v131 + 32) = v200;
  *(v131 + 40) = 0xD000000000000019;
  *(v131 + 48) = 0x80000001CA99B030;
  v132 = MEMORY[0x1E69E6158];
  v133 = v199;
  *(v131 + 64) = MEMORY[0x1E69E6158];
  *(v131 + 72) = v133;
  *(v131 + 80) = 0x7475706E494657;
  *(v131 + 88) = 0xE700000000000000;
  v134 = v198;
  *(v131 + 104) = v132;
  *(v131 + 112) = v134;
  v135 = sub_1CA94C438();
  v199 = v136;
  v200 = v135;
  v137 = sub_1CA94C438();
  v198 = v138;
  v203 = &v186;
  MEMORY[0x1EEE9AC00](v137);
  v139 = v211;
  sub_1CA948D98();
  v140 = v206;
  v141 = [v206 bundleURL];
  *&v190 = &v186;
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v186 - v210;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 120) = sub_1CA2F9F14(v200, v199, v137, v198, 0, 0, &v186 - v139, v142);
  v144 = v208;
  v145 = v189;
  *(v131 + 144) = v208;
  *(v131 + 152) = v145;
  v146 = sub_1CA94C438();
  v199 = v147;
  v200 = v146;
  v198 = sub_1CA94C438();
  v149 = v148;
  v203 = &v186;
  MEMORY[0x1EEE9AC00](v198);
  sub_1CA948D98();
  v150 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = v210;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 160) = sub_1CA2F9F14(v200, v199, v198, v149, 0, 0, &v186 - v139, &v186 - v151);
  *(v131 + 184) = v144;
  *(v131 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v153 = swift_allocObject();
  *(v153 + 16) = v191;
  v154 = @"PreferredTypes";
  v155 = v192;
  sub_1CA949CA8();
  v156 = sub_1CA949C68();
  v158 = v157;
  v159 = *(v194 + 8);
  v160 = v155;
  v161 = v195;
  v159(v160, v195);
  *(v153 + 32) = v156;
  *(v153 + 40) = v158;
  v162 = v193;
  sub_1CA949CE8();
  v163 = sub_1CA949C68();
  v165 = v164;
  v159(v162, v161);
  *(v153 + 48) = v163;
  *(v153 + 56) = v165;
  *(v131 + 224) = v204;
  *(v131 + 200) = v153;
  sub_1CA94C1E8();
  v166 = sub_1CA2F864C();
  v167 = v197;
  *(v197 + 48) = v166;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v169 = v207;
  v207[50] = v167;
  v169[53] = v168;
  v169[54] = @"ParameterSummary";
  v170 = @"ParameterSummary";
  v171 = sub_1CA94C438();
  v173 = v172;
  v174 = sub_1CA94C438();
  v176 = v175;
  v208 = &v186;
  MEMORY[0x1EEE9AC00](v174);
  v177 = &v186 - v211;
  sub_1CA948D98();
  v178 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v180 = sub_1CA2F9F14(v171, v173, v174, v176, 0, 0, v177, &v186 - v151);
  v181 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v182 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v183 = v207;
  v207[55] = v181;
  v183[58] = v182;
  v183[59] = @"ResidentCompatible";
  v183[63] = MEMORY[0x1E69E6370];
  *(v183 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v184 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA54E360()
{
  v212 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9CB880;
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
  v229 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v230 = v12;
  v13 = &v206 - v229;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v228 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v227 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v226 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v206 - v226;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v225 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v223 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v220 = v28;
  v221 = v27;
  v29 = sub_1CA94C438();
  v219 = v30;
  v222 = &v206;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v206 - v229;
  sub_1CA948D98();
  v32 = v228;
  v33 = [v228 bundleURL];
  v224 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v226;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v221, v220, v29, v219, 0, 0, v31, &v206 - v35);
  v37 = v225;
  *(v24 + 64) = v225;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v220 = v40;
  v221 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v222 = &v206;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v206 - v229;
  sub_1CA948D98();
  v45 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v221, v220, v41, v43, 0, 0, v44, &v206 - v35);
  *(v24 + 104) = v37;
  *(v24 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v48 = v223;
  v49 = sub_1CA6B3784();
  v50 = v224;
  v224[20] = v49;
  v50[23] = v48;
  v50[24] = @"Input";
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  v217 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  v52 = MEMORY[0x1E69E6370];
  *(v51 + 48) = 1;
  *(v51 + 72) = v52;
  strcpy((v51 + 80), "ParameterKey");
  *(v51 + 93) = 0;
  *(v51 + 94) = -5120;
  *(v51 + 96) = 0x7475706E494657;
  *(v51 + 104) = 0xE700000000000000;
  *(v51 + 120) = MEMORY[0x1E69E6158];
  *(v51 + 128) = 0x6465726975716552;
  *(v51 + 136) = 0xE800000000000000;
  *(v51 + 144) = 1;
  *(v51 + 168) = v52;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 184) = 0xE500000000000000;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v218;
  *(v51 + 192) = &unk_1F4A04480;
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v223 = v55;
  v50[25] = v54;
  v50[28] = v55;
  v50[29] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438();
  v219 = v58;
  v220 = v57;
  v59 = sub_1CA94C438();
  v61 = v60;
  v221 = &v206;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v206 - v229;
  sub_1CA948D98();
  v63 = v228;
  v64 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v226;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v220, v219, v59, v61, 0, 0, v62, &v206 - v65);
  v68 = v224;
  v69 = v225;
  v224[30] = v67;
  v68[33] = v69;
  v68[34] = @"Output";
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_1CA9813C0;
  *(v70 + 32) = 0x656C7069746C754DLL;
  *(v70 + 40) = 0xE800000000000000;
  *(v70 + 48) = 0;
  *(v70 + 72) = MEMORY[0x1E69E6370];
  *(v70 + 80) = 0x614E74757074754FLL;
  *(v70 + 88) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438();
  v220 = v73;
  v221 = v72;
  v74 = sub_1CA94C438();
  v219 = v75;
  v222 = &v206;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v206 - v229;
  sub_1CA948D98();
  v77 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 96) = sub_1CA2F9F14(v221, v220, v74, v219, 0, 0, v76, &v206 - v65);
  *(v70 + 120) = v69;
  *(v70 + 128) = 0x7365707954;
  *(v70 + 168) = v218;
  *(v70 + 136) = 0xE500000000000000;
  *(v70 + 144) = &unk_1F4A044B0;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v224;
  v224[35] = v80;
  v81[38] = v223;
  v81[39] = @"Parameters";
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_1CA981570;
  v222 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_allocObject();
  *(v82 + 16) = v217;
  *(v82 + 32) = @"Class";
  *(v82 + 40) = 0xD000000000000019;
  *(v82 + 48) = 0x80000001CA99B030;
  *(v82 + 64) = v79;
  *(v82 + 72) = @"Key";
  *(v82 + 80) = 0x7475706E494657;
  *(v82 + 88) = 0xE700000000000000;
  *(v82 + 104) = v79;
  *(v82 + 112) = @"Label";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = v83;
  v87 = v84;
  v88 = v85;
  v216 = v86;
  v214 = v87;
  v215 = v88;
  v89 = @"Parameters";
  v219 = sub_1CA94C438();
  v211 = v90;
  v91 = sub_1CA94C438();
  *&v210 = v92;
  v220 = &v206;
  MEMORY[0x1EEE9AC00](v91);
  v93 = v229;
  sub_1CA948D98();
  v94 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = v226;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v82 + 120) = sub_1CA2F9F14(v219, v211, v91, v210, 0, 0, &v206 - v93, &v206 - v95);
  v97 = v225;
  *(v82 + 144) = v225;
  *(v82 + 152) = @"Placeholder";
  v98 = @"Placeholder";
  v219 = sub_1CA94C438();
  v211 = v99;
  v100 = sub_1CA94C438();
  *&v210 = v101;
  v220 = &v206;
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948D98();
  v102 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v219, v211, v100, v210, 0, 0, &v206 - v93, &v206 - v95);
  *(v82 + 184) = v97;
  *(v82 + 160) = v104;
  _s3__C3KeyVMa_0(0);
  v220 = v105;
  v219 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v223 + 32) = sub_1CA2F864C();
  v106 = swift_allocObject();
  v210 = xmmword_1CA981370;
  *(v106 + 16) = xmmword_1CA981370;
  v107 = v216;
  *(v106 + 32) = v216;
  *(v106 + 40) = 0xD000000000000014;
  *(v106 + 48) = 0x80000001CA99B500;
  *(v106 + 64) = MEMORY[0x1E69E6158];
  *(v106 + 72) = @"Description";
  v108 = @"Description";
  v216 = v107;
  v211 = v108;
  v109 = sub_1CA94C438();
  v207 = v110;
  v208 = v109;
  v111 = sub_1CA94C438();
  v113 = v112;
  v209 = &v206;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v114 = v228;
  v115 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v206 - v226;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 80) = sub_1CA2F9F14(v208, v207, v111, v113, 0, 0, &v206 - v93, v116);
  v118 = v225;
  v119 = v214;
  v120 = v215;
  *(v106 + 104) = v225;
  *(v106 + 112) = v119;
  *(v106 + 120) = 0xD00000000000001ALL;
  *(v106 + 128) = 0x80000001CA9C40A0;
  *(v106 + 144) = MEMORY[0x1E69E6158];
  *(v106 + 152) = v120;
  v214 = v119;
  v215 = v120;
  v121 = sub_1CA94C438();
  v207 = v122;
  v208 = v121;
  v123 = sub_1CA94C438();
  v206 = v124;
  v209 = &v206;
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v206 - v229;
  sub_1CA948D98();
  v126 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = v226;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 160) = sub_1CA2F9F14(v208, v207, v123, v206, 0, 0, v125, &v206 - v127);
  *(v106 + 184) = v118;
  *(v106 + 192) = @"TextAlignment";
  v129 = MEMORY[0x1E69E6158];
  *(v106 + 224) = MEMORY[0x1E69E6158];
  *(v106 + 200) = 0x7468676952;
  *(v106 + 208) = 0xE500000000000000;
  v130 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v223 + 40) = sub_1CA2F864C();
  v131 = swift_allocObject();
  *(v131 + 16) = v210;
  *(v131 + 32) = v216;
  *(v131 + 40) = 0xD000000000000016;
  *(v131 + 48) = 0x80000001CA99C4A0;
  *(v131 + 64) = v129;
  *(v131 + 72) = @"DefaultValue";
  *(v131 + 80) = 0x646E65707041;
  *(v131 + 88) = 0xE600000000000000;
  *(v131 + 104) = v129;
  *(v131 + 112) = @"Items";
  v213 = swift_allocObject();
  *(v213 + 1) = xmmword_1CA981360;
  v132 = @"DefaultValue";
  v133 = @"Items";
  v134 = sub_1CA94C438();
  v208 = v135;
  v209 = v134;
  v136 = sub_1CA94C438();
  v207 = v137;
  *&v210 = &v206;
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v206 - v229;
  sub_1CA948D98();
  v139 = v228;
  v140 = [v228 bundleURL];
  v206 = &v206;
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v209, v208, v136, v207, 0, 0, v138, &v206 - v127);
  v213[4] = v142;
  v143 = sub_1CA94C438();
  v208 = v144;
  v209 = v143;
  v207 = sub_1CA94C438();
  v146 = v145;
  *&v210 = &v206;
  MEMORY[0x1EEE9AC00](v207);
  v147 = v229;
  sub_1CA948D98();
  v148 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v209, v208, v207, v146, 0, 0, &v206 - v147, &v206 - v127);
  v151 = v213;
  v213[5] = v150;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v131 + 120) = v151;
  v153 = v214;
  *(v131 + 144) = v152;
  *(v131 + 152) = v153;
  *(v131 + 160) = 0xD000000000000013;
  *(v131 + 168) = 0x80000001CA9CBAC0;
  v154 = v215;
  *(v131 + 184) = MEMORY[0x1E69E6158];
  *(v131 + 192) = v154;
  *&v210 = sub_1CA94C438();
  v156 = v155;
  v157 = sub_1CA94C438();
  v159 = v158;
  v213 = &v206;
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948D98();
  v160 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v206 - v226;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v163 = sub_1CA2F9F14(v210, v156, v157, v159, 0, 0, &v206 - v147, v161);
  *(v131 + 224) = v225;
  *(v131 + 200) = v163;
  sub_1CA94C1E8();
  *(v223 + 48) = sub_1CA2F864C();
  v164 = swift_allocObject();
  *(v164 + 16) = v217;
  *(v164 + 32) = v216;
  *(v164 + 40) = 0xD000000000000021;
  *(v164 + 48) = 0x80000001CA9C4280;
  v165 = v211;
  *(v164 + 64) = MEMORY[0x1E69E6158];
  *(v164 + 72) = v165;
  v166 = sub_1CA94C438();
  v216 = v167;
  *&v217 = v166;
  v168 = sub_1CA94C438();
  v213 = v169;
  v221 = &v206;
  MEMORY[0x1EEE9AC00](v168);
  v170 = &v206 - v229;
  sub_1CA948D98();
  v171 = v228;
  v172 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = v226;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v164 + 80) = sub_1CA2F9F14(v217, v216, v168, v213, 0, 0, v170, &v206 - v173);
  v175 = v214;
  *(v164 + 104) = v225;
  *(v164 + 112) = v175;
  *(v164 + 120) = 0xD00000000000001BLL;
  *(v164 + 128) = 0x80000001CA9C4350;
  v176 = v215;
  *(v164 + 144) = MEMORY[0x1E69E6158];
  *(v164 + 152) = v176;
  v177 = sub_1CA94C438();
  v216 = v178;
  *&v217 = v177;
  v215 = sub_1CA94C438();
  v180 = v179;
  v221 = &v206;
  MEMORY[0x1EEE9AC00](v215);
  v181 = v229;
  sub_1CA948D98();
  v182 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v182);
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v184 = sub_1CA2F9F14(v217, v216, v215, v180, 0, 0, &v206 - v181, &v206 - v173);
  *(v164 + 184) = v225;
  *(v164 + 160) = v184;
  sub_1CA94C1E8();
  v185 = sub_1CA2F864C();
  v186 = v223;
  *(v223 + 56) = v185;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v188 = v224;
  v224[40] = v186;
  v188[43] = v187;
  v188[44] = @"ParameterSummary";
  v189 = @"ParameterSummary";
  v190 = sub_1CA94C438();
  v192 = v191;
  v193 = sub_1CA94C438();
  v195 = v194;
  MEMORY[0x1EEE9AC00](v193);
  v196 = &v206 - v181;
  sub_1CA948D98();
  v197 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v197);
  v198 = &v206 - v226;
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v200 = sub_1CA2F9F14(v190, v192, v193, v195, 0, 0, v196, v198);
  v201 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v202 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v203 = v224;
  v224[45] = v201;
  v203[48] = v202;
  v203[49] = @"RequiredResources";
  v203[53] = v218;
  v203[50] = &unk_1F4A044E0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v204 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA54FD28(void *a1)
{
  v1 = [a1 string];
  v2 = sub_1CA94C3A8();
  v4 = v3;

  v5 = objc_allocWithZone(WFUserVisibleString);
  return sub_1CA5920A8(v2, v4, 1, 0x656C626169726156, 0xED0000656D614E20);
}

uint64_t WFVariableFieldParameter.userVisibleStrings(in:for:)()
{
  v0 = sub_1CA949F78();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    v13 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v14 = sub_1CA949F68();
    v15 = sub_1CA94CC28();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1CA256000, v14, v15, "Incorrect parameter state class", v16, 2u);
      MEMORY[0x1CCAA4BF0](v16, -1, -1);
    }

    (*(v3 + 8))(v7, v0);
    if (sub_1CA25B410())
    {
      sub_1CA2E85F8();
      return v17;
    }

    return MEMORY[0x1E69E7CD0];
  }

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813B0;
  swift_unknownObjectRetain();
  *(inited + 32) = sub_1CA54FD28(v9);
  if (!sub_1CA25B410())
  {
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_1CA32E3CC();
    return MEMORY[0x1E69E7CD0];
  }

  sub_1CA2E85F8();
  v12 = v11;
  swift_unknownObjectRelease();
  return v12;
}

uint64_t WFVariableFieldParameter.rewrite(_:withStrings:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CA949F78();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = sub_1CA54FD28(v15);
    sub_1CA311D98(v16, a2);
    if (v17)
    {
      sub_1CA550384();
      v18 = sub_1CA538038();
      swift_unknownObjectRelease();

      return v18;
    }

    v24 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v25 = sub_1CA949F68();
    v26 = sub_1CA94CC28();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1CA256000, v25, v26, "Missing string", v27, 2u);
      MEMORY[0x1CCAA4BF0](v27, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v6 + 8))(v13, v3);
  }

  else
  {
    v20 = *MEMORY[0x1E69E1138];
    sub_1CA949C58();
    v21 = sub_1CA949F68();
    v22 = sub_1CA94CC28();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1CA256000, v21, v22, "Incorrect parameter state class", v23, 2u);
      MEMORY[0x1CCAA4BF0](v23, -1, -1);
    }

    (*(v6 + 8))(v11, v3);
  }

  return swift_unknownObjectRetain();
}

unint64_t sub_1CA550384()
{
  result = qword_1EC4463E8;
  if (!qword_1EC4463E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4463E8);
  }

  return result;
}

id sub_1CA5503FC()
{
  v110 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
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
  v115 = v12;
  v117 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v103 - v117;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v114 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v116 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v113 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v103 - v113;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v112 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x80000001CA993A80;
  *(inited + 184) = v22;
  *(inited + 192) = @"Description";
  *&v111 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v108 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v109 = &v103;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v103 - v117;
  sub_1CA948D98();
  v33 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v103 - v113;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v108, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v112;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v111;
  *(inited + 200) = sub_1CA6B3784();
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 2036429383;
  *(inited + 248) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x7265626D756ELL;
  *(inited + 288) = 0xE600000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v111 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v109;
  *(v39 + 192) = &unk_1F4A04560;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v108 = v46;
  *(inited + 320) = v45;
  *(inited + 344) = v46;
  *(inited + 352) = @"LocallyProcessesData";
  *(inited + 360) = 1;
  *(inited + 384) = v41;
  *(inited + 392) = @"Name";
  v47 = @"LocallyProcessesData";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v104 = v50;
  v105 = v49;
  v51 = sub_1CA94C438();
  v103 = v52;
  v106 = &v103;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v103 - v117;
  sub_1CA948D98();
  v54 = v114;
  v55 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v113;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v105, v104, v51, v103, 0, 0, v53, &v103 - v56);
  v58 = v112;
  *(inited + 424) = v112;
  *(inited + 432) = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v111;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v105 = v62;
  v106 = v61;
  v104 = sub_1CA94C438();
  v64 = v63;
  v107 = &v103;
  MEMORY[0x1EEE9AC00](v104);
  v65 = &v103 - v117;
  sub_1CA948D98();
  v66 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v106, v105, v104, v64, 0, 0, v65, &v103 - v56);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 216) = v109;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A04590;
  v68 = MEMORY[0x1E69E6158];
  *(inited + 440) = sub_1CA94C1E8();
  *(inited + 464) = v108;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v109 = swift_allocObject();
  *(v109 + 1) = xmmword_1CA9813B0;
  v108 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  *(v69 + 16) = v111;
  *(v69 + 32) = @"AllowsDecimalNumbers";
  *(v69 + 40) = 1;
  *(v69 + 64) = MEMORY[0x1E69E6370];
  *(v69 + 72) = @"Class";
  *(v69 + 80) = 0xD000000000000016;
  *(v69 + 88) = 0x80000001CA99C180;
  *(v69 + 104) = v68;
  *(v69 + 112) = @"Key";
  *(v69 + 120) = 0x7475706E494657;
  *(v69 + 128) = 0xE700000000000000;
  *(v69 + 144) = v68;
  *(v69 + 152) = @"Label";
  v70 = @"Parameters";
  v71 = @"AllowsDecimalNumbers";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v75 = sub_1CA94C438();
  v107 = v76;
  v77 = sub_1CA94C438();
  v79 = v78;
  *&v111 = &v103;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v103 - v117;
  sub_1CA948D98();
  v81 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v103 - v113;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v75, v107, v77, v79, 0, 0, v80, v82);
  *(v69 + 184) = v112;
  *(v69 + 160) = v84;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v85 = sub_1CA2F864C();
  v86 = v109;
  v109[4] = v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v86;
  *(inited + 504) = v87;
  *(inited + 512) = @"ParameterSummary";
  v88 = @"ParameterSummary";
  v89 = sub_1CA94C438();
  v91 = v90;
  v92 = sub_1CA94C438();
  v94 = v93;
  v112 = &v103;
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v103 - v117;
  sub_1CA948D98();
  v96 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v103 - v113;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v89, v91, v92, v94, 0, 0, v95, v97);
  v100 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v100;
  *(inited + 552) = @"ResidentCompatible";
  *(inited + 584) = MEMORY[0x1E69E6370];
  *(inited + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v101 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5512CC()
{
  v126 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9CBDB0;
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
  v129 = v12;
  v133 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v119 - v133;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v131 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v130 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v132 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v119 - v132;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v128 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v127 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v124 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v125 = &v119;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v119 - v133;
  sub_1CA948D98();
  v30 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v119 - v132;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v124, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v128;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v127;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x6E65657247;
  *(inited + 168) = 0xE500000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x80000001CA9CBE30;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v123 = xmmword_1CA981350;
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
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v127;
  *(v37 + 192) = &unk_1F4A045C0;
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v125 = v44;
  *(inited + 240) = v43;
  *(inited + 264) = v44;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 0;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438();
  v121 = v48;
  v49 = sub_1CA94C438();
  v51 = v50;
  v122 = &v119;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v119 - v133;
  sub_1CA948D98();
  v53 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v119 - v132;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v47, v121, v49, v51, 0, 0, v52, v54);
  v56 = v128;
  *(inited + 344) = v128;
  *(inited + 352) = @"Output";
  v57 = swift_allocObject();
  *(v57 + 16) = v123;
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
  v122 = v60;
  *&v123 = v59;
  v61 = sub_1CA94C438();
  v63 = v62;
  v124 = &v119;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v119 - v133;
  sub_1CA948D98();
  v65 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v119 - v132;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 144) = sub_1CA2F9F14(v123, v122, v61, v63, 0, 0, v64, v66);
  *(v57 + 168) = v56;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v127;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_1F4A045F0;
  v68 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *&v123 = @"Parameters";
  *(inited + 384) = v125;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v125 = swift_allocObject();
  *(v125 + 1) = xmmword_1CA9813B0;
  v124 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CA9813E0;
  *(v69 + 32) = @"AllowsMultipleValues";
  *(v69 + 40) = 0;
  v70 = MEMORY[0x1E69E6370];
  *(v69 + 64) = MEMORY[0x1E69E6370];
  *(v69 + 72) = @"AutocapitalizationType";
  *(v69 + 80) = 1701736270;
  *(v69 + 88) = 0xE400000000000000;
  *(v69 + 104) = v68;
  *(v69 + 112) = @"Class";
  *(v69 + 120) = 0xD000000000000014;
  *(v69 + 128) = 0x80000001CA99B500;
  *(v69 + 144) = v68;
  *(v69 + 152) = @"DisableAutocorrection";
  *(v69 + 160) = 1;
  *(v69 + 184) = v70;
  *(v69 + 192) = @"Key";
  *(v69 + 200) = 0x7475706E494657;
  *(v69 + 208) = 0xE700000000000000;
  *(v69 + 224) = v68;
  *(v69 + 232) = @"KeyboardType";
  *(v69 + 240) = 5001813;
  *(v69 + 248) = 0xE300000000000000;
  *(v69 + 264) = v68;
  *(v69 + 272) = @"Label";
  v71 = v123;
  v72 = @"AllowsMultipleValues";
  v73 = @"AutocapitalizationType";
  v74 = @"Class";
  v75 = @"DisableAutocorrection";
  v76 = @"Key";
  v77 = @"KeyboardType";
  v78 = @"Label";
  v79 = sub_1CA94C438();
  v121 = v80;
  v122 = v79;
  v81 = sub_1CA94C438();
  v120 = v82;
  *&v123 = &v119;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v119 - v133;
  sub_1CA948D98();
  v84 = v131;
  v85 = [v131 bundleURL];
  v119 = &v119;
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v119 - v132;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 280) = sub_1CA2F9F14(v122, v121, v81, v120, 0, 0, v83, v86);
  *(v69 + 304) = v128;
  *(v69 + 312) = @"Placeholder";
  v88 = @"Placeholder";
  v89 = sub_1CA94C438();
  v121 = v90;
  v122 = v89;
  v91 = sub_1CA94C438();
  v93 = v92;
  *&v123 = &v119;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v119 - v133;
  sub_1CA948D98();
  v95 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v119 - v132;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 320) = sub_1CA2F9F14(v122, v121, v91, v93, 0, 0, v94, v96);
  *(v69 + 344) = v128;
  *(v69 + 352) = @"TextContentType";
  *(v69 + 384) = MEMORY[0x1E69E6158];
  *(v69 + 360) = 5001813;
  *(v69 + 368) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v98 = @"TextContentType";
  sub_1CA94C1E8();
  v99 = sub_1CA2F864C();
  v100 = v125;
  v125[4] = v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v100;
  *(inited + 424) = v101;
  *(inited + 432) = @"ParameterSummary";
  v102 = @"ParameterSummary";
  v103 = sub_1CA94C438();
  v105 = v104;
  v106 = sub_1CA94C438();
  v108 = v107;
  v128 = &v119;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v119 - v133;
  sub_1CA948D98();
  v110 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v119 - v132;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  v114 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v115 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v114;
  *(inited + 464) = v115;
  *(inited + 472) = @"RequiredResources";
  *(inited + 480) = &unk_1F4A04620;
  *(inited + 504) = v127;
  *(inited + 512) = @"ResidentCompatible";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v116 = @"RequiredResources";
  v117 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5522F4()
{
  v134 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9A9740;
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
  v142 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v143 = v12;
  v13 = &v128 - v142;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v139 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v141 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v138 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v128 - v138;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v140 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v137 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v135 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v136 = &v128;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v128 - v142;
  sub_1CA948D98();
  v33 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v128 - v138;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v135, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v140;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v137;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v137 = v38;
  *(inited + 200) = &unk_1F4A04690;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v135 = sub_1CA94C438();
  v133 = v43;
  v44 = sub_1CA94C438();
  v46 = v45;
  v136 = &v128;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v128 - v142;
  sub_1CA948D98();
  v48 = v139;
  v49 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v138;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v135, v133, v44, v46, 0, 0, v47, &v128 - v50);
  *(inited + 304) = v140;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1CA9813C0;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  *(v52 + 48) = 1;
  *(v52 + 72) = MEMORY[0x1E69E6370];
  *(v52 + 80) = 0x614E74757074754FLL;
  *(v52 + 88) = 0xEA0000000000656DLL;
  v53 = @"Output";
  v135 = sub_1CA94C438();
  v133 = v54;
  v55 = sub_1CA94C438();
  v132 = v56;
  v136 = &v128;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v128 - v142;
  sub_1CA948D98();
  v58 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v52 + 96) = sub_1CA2F9F14(v135, v133, v55, v132, 0, 0, v57, &v128 - v50);
  *(v52 + 120) = v140;
  *(v52 + 128) = 0x7365707954;
  *(v52 + 168) = v137;
  *(v52 + 136) = 0xE500000000000000;
  *(v52 + 144) = &unk_1F4A046C0;
  v60 = MEMORY[0x1E69E6158];
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v61;
  *(inited + 344) = v62;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v136 = swift_allocObject();
  *(v136 + 1) = xmmword_1CA981360;
  v135 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1CA981370;
  *(v63 + 32) = @"Class";
  *(v63 + 40) = 0xD000000000000012;
  *(v63 + 48) = 0x80000001CA99B980;
  *(v63 + 64) = v60;
  *(v63 + 72) = @"DefaultValue";
  v64 = MEMORY[0x1E69E6530];
  *(v63 + 80) = 1;
  *(v63 + 104) = v64;
  *(v63 + 112) = @"Key";
  *(v63 + 120) = 0xD000000000000015;
  *(v63 + 128) = 0x80000001CA9A9870;
  *(v63 + 144) = v60;
  *(v63 + 152) = @"StepperDescription";
  v65 = @"Class";
  v66 = @"DefaultValue";
  v67 = @"Key";
  v132 = v65;
  v131 = v66;
  v130 = v67;
  v68 = @"Parameters";
  v69 = @"StepperDescription";
  v70 = sub_1CA94C438();
  v128 = v71;
  v72 = sub_1CA94C438();
  v74 = v73;
  v129 = &v128;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v128 - v142;
  sub_1CA948D98();
  v76 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v128 - v138;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 160) = sub_1CA2F9F14(v70, v128, v72, v74, 0, 0, v75, v77);
  *(v63 + 184) = v140;
  *(v63 + 192) = @"StepperNoun";
  v79 = @"StepperNoun";
  v80 = sub_1CA94C438();
  v128 = v81;
  v129 = v80;
  v82 = v81;
  v148 = 0;
  v149 = 0xE000000000000000;
  sub_1CA94D408();

  v148 = v80;
  v149 = v82;
  v146 = 10;
  v147 = 0xE100000000000000;
  v144 = 32;
  v145 = 0xE100000000000000;
  sub_1CA27BAF0();
  v148 = sub_1CA94D1B8();
  v149 = v83;
  v84 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v85 = v148;
  v86 = v149;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v128 - v142;
  sub_1CA948D98();
  v88 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v128 - v138;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91 = sub_1CA2F9F14(v85, v86, v129, v128, 0, 0, v87, v89);
  *(v63 + 224) = v140;
  *(v63 + 200) = v91;
  _s3__C3KeyVMa_0(0);
  v129 = v92;
  v128 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v136[4] = sub_1CA2F864C();
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1CA981350;
  *(v93 + 32) = v132;
  *(v93 + 40) = 0xD000000000000011;
  *(v93 + 48) = 0x80000001CA99E620;
  v94 = MEMORY[0x1E69E6158];
  v95 = v131;
  *(v93 + 64) = MEMORY[0x1E69E6158];
  *(v93 + 72) = v95;
  *(v93 + 80) = 1;
  v96 = v130;
  *(v93 + 104) = MEMORY[0x1E69E6370];
  *(v93 + 112) = v96;
  *(v93 + 120) = 0xD000000000000029;
  *(v93 + 128) = 0x80000001CA9CC070;
  *(v93 + 144) = v94;
  *(v93 + 152) = @"Label";
  v97 = @"Label";
  v98 = sub_1CA94C438();
  v132 = v99;
  v100 = sub_1CA94C438();
  v102 = v101;
  v133 = &v128;
  MEMORY[0x1EEE9AC00](v100);
  v103 = &v128 - v142;
  sub_1CA948D98();
  v104 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v128 - v138;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v98, v132, v100, v102, 0, 0, v103, v105);
  *(v93 + 184) = v140;
  *(v93 + 160) = v107;
  sub_1CA94C1E8();
  v108 = sub_1CA2F864C();
  v109 = v136;
  v136[5] = v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v109;
  *(inited + 384) = v110;
  *(inited + 392) = @"ParameterSummary";
  v111 = @"ParameterSummary";
  v112 = sub_1CA94C438();
  v114 = v113;
  v115 = sub_1CA94C438();
  v117 = v116;
  v140 = &v128;
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v128 - v142;
  sub_1CA948D98();
  v119 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v128 - v138;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v112, v114, v115, v117, 0, 0, v118, v120);
  v123 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v124 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v123;
  *(inited + 424) = v124;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v137;
  *(inited + 440) = &unk_1F4A046F0;
  v125 = @"RequiredResources";
  v126 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v126;
  *(inited + 480) = 0x6F746F6850;
  *(inited + 488) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5533D8()
{
  v86 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x80000001CA9CC110;
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
  v92 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = v12;
  v13 = &v81 - v92;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v90 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v88 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v81 - v89;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v91 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v87 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v84 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v81 - v92;
  sub_1CA948D98();
  v33 = [v90 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v81 - v89;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v84, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v91;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v87;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v87 = v38;
  *(inited + 200) = &unk_1F4A04760;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v83 = v44;
  v84 = v43;
  v45 = sub_1CA94C438();
  v82 = v46;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v81 - v92;
  sub_1CA948D98();
  v48 = v90;
  v49 = [v90 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v89;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v84, v83, v45, v82, 0, 0, v47, &v81 - v50);
  *(inited + 304) = v91;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1CA9813C0;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  *(v52 + 48) = 1;
  *(v52 + 72) = MEMORY[0x1E69E6370];
  *(v52 + 80) = 0x614E74757074754FLL;
  *(v52 + 88) = 0xEA0000000000656DLL;
  v53 = @"Output";
  v54 = sub_1CA94C438();
  v83 = v55;
  v84 = v54;
  v56 = sub_1CA94C438();
  v82 = v57;
  v85 = &v81;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v81 - v92;
  sub_1CA948D98();
  v59 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v52 + 96) = sub_1CA2F9F14(v84, v83, v56, v82, 0, 0, v58, &v81 - v50);
  *(v52 + 120) = v91;
  *(v52 + 128) = 0x7365707954;
  *(v52 + 168) = v87;
  *(v52 + 136) = 0xE500000000000000;
  *(v52 + 144) = &unk_1F4A04790;
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v61;
  *(inited + 344) = v62;
  *(inited + 352) = @"Parameters";
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 360) = MEMORY[0x1E69E7CC0];
  *(inited + 384) = v63;
  *(inited + 392) = @"ParameterSummary";
  v64 = @"Parameters";
  v65 = @"ParameterSummary";
  v66 = sub_1CA94C438();
  v68 = v67;
  v69 = sub_1CA94C438();
  v71 = v70;
  v91 = &v81;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v81 - v92;
  sub_1CA948D98();
  v73 = [v90 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v81 - v89;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v66, v68, v69, v71, 0, 0, v72, v74);
  v77 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v78 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v77;
  *(inited + 424) = v78;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v87;
  *(inited + 440) = &unk_1F4A047C0;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v79 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA553E14(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_1CA94C218();
    sub_1CA368948(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1CA553F18(unint64_t a1, void *a2)
{
  v2 = a1;
  v14[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1CA94D2F8();
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    sub_1CA94C948();
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
    v6 = v14[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    if (!*(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11))))))
    {
LABEL_18:
      sub_1CA28A224();
      return;
    }

    while (1)
    {
      sub_1CA368D08(v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1CA94D358())
      {
        type metadata accessor for WFUserVisibleString();
        swift_dynamicCast();
        v12 = v5;
        v13 = v6;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1CA5540DC(uint64_t a1)
{
  v3 = [v1 variableString];
  v4 = [v3 userVisibleStringsForUseCase_];
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C8F8();

  v6 = [v1 subtitle];
  v7 = [v6 userVisibleStringsForUseCase_];
  v8 = sub_1CA94C8F8();

  sub_1CA553F18(v8, v5);
}

void sub_1CA554258()
{
  sub_1CA25B3D0(0, &qword_1EC4463F0, off_1E836DF30);
  v1 = [v0 variableString];
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v2 = OUTLINED_FUNCTION_0_53();
  v3 = [v1 rewrittenWithStrings_];

  v13 = v3;
  v4 = [v0 synonyms];
  sub_1CA25B3D0(0, &qword_1EC443808, off_1E836DF38);
  v5 = sub_1CA94C658();

  v6 = [v0 subtitle];
  v7 = OUTLINED_FUNCTION_0_53();
  v8 = [v6 rewrittenWithStrings_];

  v12 = v8;
  v9.variableString.super.isa = &v13;
  v9.variableString._stringsAndVariables = v5;
  WFChooseFromMenuItemParameterState.init(variableString:synonyms:subtitle:)(v11, v9, &v12, v10);
}

id sub_1CA554490()
{
  v212 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9CC2A0;
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
  v227 = v12;
  v228 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
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
  v224 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v201 - v224;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v223 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v219 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v221 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v211 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v220 = &v201;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v201 - v228;
  sub_1CA948D98();
  v34 = [v225 bundleURL];
  v222 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v201 - v224;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v223;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v221;
  v40 = sub_1CA6B3784();
  v41 = v222;
  v222[20] = v40;
  v41[23] = v39;
  v41[24] = @"IconName";
  v41[25] = 0x74756F6B726F57;
  v41[26] = 0xE700000000000000;
  v42 = MEMORY[0x1E69E6158];
  v41[28] = MEMORY[0x1E69E6158];
  v41[29] = @"InputPassthrough";
  v41[33] = MEMORY[0x1E69E6370];
  *(v41 + 240) = 1;
  v43 = v41;
  v44 = @"IconName";
  v45 = @"InputPassthrough";
  v46 = sub_1CA94C368();
  v43[38] = v42;
  v43[34] = v46;
  v43[35] = 0xD000000000000029;
  v43[36] = 0x80000001CA9CC300;
  v47 = sub_1CA94C368();
  v218 = 0x80000001CA9CC330;
  *&v215 = 0xD000000000000014;
  v43[39] = v47;
  v43[40] = 0xD000000000000014;
  v43[41] = 0x80000001CA9CC330;
  v43[43] = v42;
  v43[44] = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v201 - v228;
  sub_1CA948D98();
  v56 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v201 - v224;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  v60 = v222;
  v222[45] = v59;
  v60[48] = v223;
  v60[49] = @"Parameters";
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v221 = swift_allocObject();
  *(v221 + 16) = xmmword_1CA981570;
  v220 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_initStackObject();
  v207 = xmmword_1CA981380;
  *(v61 + 16) = xmmword_1CA981380;
  v210 = 0xD00000000000001ALL;
  *(v61 + 32) = @"Class";
  *(v61 + 40) = 0xD00000000000001ALL;
  *(v61 + 48) = 0x80000001CA99B690;
  v62 = MEMORY[0x1E69E6158];
  *(v61 + 64) = MEMORY[0x1E69E6158];
  *(v61 + 72) = @"DefaultValue";
  v63 = @"Class";
  v64 = @"DefaultValue";
  v65 = v63;
  v66 = v64;
  v214 = v65;
  v216 = v66;
  v67 = @"Parameters";
  *(v61 + 80) = sub_1CA94C1E8();
  *(v61 + 104) = v219;
  *(v61 + 112) = @"Hidden";
  *(v61 + 144) = MEMORY[0x1E69E6370];
  *(v61 + 120) = 1;
  v68 = @"Hidden";
  v69 = sub_1CA94C368();
  v70 = v215;
  *(v61 + 152) = v69;
  *(v61 + 160) = v70;
  *(v61 + 168) = v218;
  *(v61 + 184) = v62;
  *(v61 + 192) = @"Key";
  v209 = 0xD000000000000013;
  *(v61 + 200) = 0xD000000000000013;
  *(v61 + 208) = 0x80000001CA99B6D0;
  *(v61 + 224) = v62;
  *(v61 + 232) = @"Label";
  v71 = @"Key";
  v72 = @"Label";
  v73 = v71;
  v74 = v72;
  v205 = v73;
  *&v215 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v78 = sub_1CA94C438();
  v80 = v79;
  v219 = &v201;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v201 - v228;
  sub_1CA948D98();
  v82 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v201 - v224;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v75, v77, v78, v80, 0, 0, v81, v83);
  *(v61 + 264) = v223;
  *(v61 + 240) = v85;
  _s3__C3KeyVMa_0(0);
  v219 = v86;
  v218 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v221 + 32) = sub_1CA2F864C();
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1CA981370;
  *(v87 + 32) = @"AllowsMultipleValues";
  *(v87 + 40) = 0;
  v88 = v214;
  *(v87 + 64) = MEMORY[0x1E69E6370];
  *(v87 + 72) = v88;
  v206 = 0xD000000000000023;
  *(v87 + 80) = 0xD000000000000023;
  *(v87 + 88) = 0x80000001CA9CC380;
  v89 = MEMORY[0x1E69E6158];
  v90 = v205;
  *(v87 + 104) = MEMORY[0x1E69E6158];
  *(v87 + 112) = v90;
  *(v87 + 120) = 0x4E74756F6B726F77;
  *(v87 + 128) = 0xEB00000000656D61;
  v91 = v215;
  *(v87 + 144) = v89;
  *(v87 + 152) = v91;
  v213 = v88;
  v214 = v90;
  *&v215 = v91;
  v92 = @"AllowsMultipleValues";
  v93 = sub_1CA94C438();
  v203 = v94;
  v204 = v93;
  v95 = sub_1CA94C438();
  v202 = v96;
  v205 = &v201;
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v201 - v228;
  sub_1CA948D98();
  v98 = v225;
  v99 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = v224;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 160) = sub_1CA2F9F14(v204, v203, v95, v202, 0, 0, v97, &v201 - v100);
  v102 = v223;
  *(v87 + 184) = v223;
  *(v87 + 192) = @"Prompt";
  v103 = @"Prompt";
  v104 = sub_1CA94C438();
  v203 = v105;
  v204 = v104;
  v106 = sub_1CA94C438();
  v202 = v107;
  v205 = &v201;
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v201 - v228;
  sub_1CA948D98();
  v109 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v204, v203, v106, v202, 0, 0, v108, &v201 - v100);
  *(v87 + 224) = v102;
  *(v87 + 200) = v111;
  sub_1CA94C1E8();
  *(v221 + 40) = sub_1CA2F864C();
  v112 = swift_allocObject();
  *(v112 + 16) = v207;
  *(v112 + 32) = v213;
  *(v112 + 40) = 0xD000000000000011;
  *(v112 + 48) = 0x80000001CA99E620;
  v113 = MEMORY[0x1E69E6158];
  v114 = v216;
  *(v112 + 64) = MEMORY[0x1E69E6158];
  *(v112 + 72) = v114;
  *(v112 + 80) = 1;
  v115 = v214;
  *(v112 + 104) = MEMORY[0x1E69E6370];
  *(v112 + 112) = v115;
  *(v112 + 120) = 0x6E456E65704F7369;
  *(v112 + 128) = 0xEB00000000646564;
  v116 = v215;
  *(v112 + 144) = v113;
  *(v112 + 152) = v116;
  v117 = sub_1CA94C438();
  v119 = v118;
  v120 = sub_1CA94C438();
  v122 = v121;
  *&v207 = &v201;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v201 - v228;
  sub_1CA948D98();
  v124 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v201 - v224;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  *(v112 + 184) = v223;
  *(v112 + 160) = v127;
  v128 = sub_1CA94C368();
  v129 = MEMORY[0x1E69E6158];
  *(v112 + 224) = MEMORY[0x1E69E6158];
  *(v112 + 192) = v128;
  *(v112 + 200) = 0x6E6F697461727544;
  *(v112 + 208) = 0xE800000000000000;
  v130 = sub_1CA94C368();
  *(v112 + 264) = v129;
  *(v112 + 232) = v130;
  *(v112 + 240) = 0x616F47206E65704FLL;
  *(v112 + 248) = 0xE90000000000006CLL;
  sub_1CA94C1E8();
  *(v221 + 48) = sub_1CA2F864C();
  v131 = swift_allocObject();
  v217 = xmmword_1CA981400;
  *(v131 + 16) = xmmword_1CA981400;
  v132 = v206;
  *(v131 + 32) = v213;
  *(v131 + 40) = v132;
  *(v131 + 48) = 0x80000001CA9CC450;
  v133 = v216;
  *(v131 + 64) = v129;
  *(v131 + 72) = v133;
  *(v131 + 80) = 13617;
  *(v131 + 88) = 0xE200000000000000;
  v134 = v214;
  *(v131 + 104) = v129;
  *(v131 + 112) = v134;
  *(v131 + 120) = 0x4774756F6B726F57;
  *(v131 + 128) = 0xEB000000006C616FLL;
  v135 = v215;
  *(v131 + 144) = v129;
  *(v131 + 152) = v135;
  v136 = sub_1CA94C438();
  v138 = v137;
  v139 = sub_1CA94C438();
  v141 = v140;
  v216 = &v201;
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v201 - v228;
  sub_1CA948D98();
  v143 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v201 - v224;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 160) = sub_1CA2F9F14(v136, v138, v139, v141, 0, 0, v142, v144);
  *(v131 + 184) = v223;
  *(v131 + 192) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v146 = swift_allocObject();
  *(v146 + 16) = v211;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v147 = swift_allocObject();
  v215 = xmmword_1CA9813C0;
  *(v147 + 16) = xmmword_1CA9813C0;
  strcpy((v147 + 32), "WFParameterKey");
  *(v147 + 47) = -18;
  *(v147 + 48) = 0x6E456E65704F7369;
  *(v147 + 56) = 0xEB00000000646564;
  v148 = MEMORY[0x1E69E6158];
  *(v147 + 72) = MEMORY[0x1E69E6158];
  *(v147 + 80) = 0xD000000000000010;
  *(v147 + 88) = 0x80000001CA993570;
  *(v147 + 96) = 0;
  *(v147 + 120) = MEMORY[0x1E69E6370];
  *(v147 + 128) = 0x72756F7365524657;
  *(v147 + 168) = v148;
  v149 = v148;
  *(v147 + 136) = 0xEF7373616C436563;
  *(v147 + 144) = 0xD00000000000001BLL;
  *(v147 + 152) = 0x80000001CA993590;
  v150 = @"RequiredResources";
  *(v146 + 32) = sub_1CA94C1E8();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v131 + 200) = v146;
  *(v131 + 224) = v151;
  *(v131 + 232) = @"TextAlignment";
  *(v131 + 264) = v149;
  *(v131 + 240) = 0x7468676952;
  *(v131 + 248) = 0xE500000000000000;
  v152 = @"TextAlignment";
  v153 = sub_1CA94C368();
  *(v131 + 304) = v149;
  *(v131 + 272) = v153;
  *(v131 + 280) = 0x4E74756F6B726F77;
  *(v131 + 288) = 0xEB00000000656D61;
  sub_1CA94C1E8();
  v154 = sub_1CA2F864C();
  v155 = v221;
  *(v221 + 56) = v154;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v157 = v222;
  v222[50] = v155;
  v157[53] = v156;
  v157[54] = @"ParameterSummary";
  v221 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_1CA981360;
  v220 = "WFWorkoutGoalKey";
  v158 = @"ParameterSummary";
  v159 = sub_1CA94C438();
  v161 = v160;
  v162 = sub_1CA94C438();
  v164 = v163;
  v219 = &v201;
  MEMORY[0x1EEE9AC00](v162);
  v165 = &v201 - v228;
  sub_1CA948D98();
  v166 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  v167 = &v201 - v224;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v159, v161, v162, v164, 0, 0, v165, v167);
  v170 = objc_allocWithZone(WFActionParameterSummaryValue);
  v171 = sub_1CA65DD78(0xD000000000000026, v220 | 0x8000000000000000, v169);
  *(v223 + 32) = v171;
  v220 = "nEnded} ${WorkoutGoal}";
  v172 = sub_1CA94C438();
  v174 = v173;
  v175 = sub_1CA94C438();
  v177 = v176;
  v219 = &v201;
  MEMORY[0x1EEE9AC00](v175);
  v178 = &v201 - v228;
  sub_1CA948D98();
  v179 = [v225 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  v180 = &v201 - v224;
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182 = sub_1CA2F9F14(v172, v174, v175, v177, 0, 0, v178, v180);
  v183 = objc_allocWithZone(WFActionParameterSummaryValue);
  v184 = sub_1CA65DD78(v210, v220 | 0x8000000000000000, v182);
  *(v223 + 40) = v184;
  v185 = v221;
  v186 = sub_1CA65AF90();
  v187 = v222;
  v222[55] = v186;
  v187[58] = v185;
  v187[59] = @"RemoteExecuteOnPlatforms";
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v187[60] = &unk_1F4A04870;
  v187[63] = v188;
  v187[64] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v189 = swift_allocObject();
  *(v189 + 16) = v215;
  v190 = MEMORY[0x1E69E6158];
  *(v189 + 56) = MEMORY[0x1E69E6158];
  *(v189 + 32) = v209;
  *(v189 + 40) = 0x80000001CA99A9A0;
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_1CA97EDF0;
  *(v191 + 32) = 0x656372756F736552;
  *(v191 + 40) = 0xE900000000000073;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v192 = swift_allocObject();
  *(v192 + 16) = v217;
  v193 = @"RemoteExecuteOnPlatforms";
  v194 = @"RequiredResources";
  *(v192 + 32) = sub_1CA94C1E8();
  *(v192 + 40) = sub_1CA94C1E8();
  *(v192 + 48) = sub_1CA94C1E8();
  *(v192 + 56) = sub_1CA94C1E8();
  *(v192 + 64) = sub_1CA94C1E8();
  *(v192 + 72) = sub_1CA94C1E8();
  *(v192 + 80) = sub_1CA94C1E8();
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v191 + 48) = v192;
  *(v191 + 72) = v195;
  *(v191 + 80) = 0x72756F7365524657;
  *(v191 + 120) = v190;
  *(v191 + 88) = 0xEF7373616C436563;
  *(v191 + 96) = 0xD000000000000019;
  *(v191 + 104) = 0x80000001CA9CC580;
  v196 = sub_1CA94C1E8();
  *(v189 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v189 + 64) = v196;
  v229 = 2;
  v230 = 1;
  v197 = type metadata accessor for WFDeviceIdiomResource();
  v198 = objc_allocWithZone(v197);
  WFDeviceIdiomResource.init(requirement:)(&v229);
  *(v189 + 120) = v197;
  *(v189 + 96) = v199;
  v187[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v187[65] = v189;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA555E24()
{
  v0 = sub_1CA949D18();
  v204 = *(v0 - 8);
  v205 = v0;
  v1 = *(v204 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v203 = &v191 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v202 = &v191 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v201 = &v191 - v6;
  v206 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9CC5E0;
  *(inited + 64) = v8;
  *(inited + 72) = @"ActionKeywords";
  v9 = @"ActionClass";
  v10 = @"ActionKeywords";
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA94C438();
  v16 = v15;
  v17 = sub_1CA948E58();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v215 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v216 = v19;
  v20 = &v191 - v215;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v213 = qword_1EDB9F690;
  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  v217 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v214 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v191 - v214;
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v11, v13, v14, v16, 0, 0, v20, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v212 = v27;
  *(inited + 80) = v26;
  *(inited + 104) = v27;
  *(inited + 112) = @"AppDefinition";
  v28 = @"AppDefinition";
  v29 = sub_1CA94C1E8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v29;
  *(inited + 144) = v30;
  *(inited + 152) = @"Description";
  v210 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v31 = swift_initStackObject();
  v209 = xmmword_1CA9813C0;
  *(v31 + 16) = xmmword_1CA9813C0;
  *(v31 + 32) = @"DescriptionInput";
  v32 = @"Description";
  v33 = @"DescriptionInput";
  v34 = sub_1CA94C438();
  v207 = v35;
  v36 = sub_1CA94C438();
  v38 = v37;
  v208 = &v191;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v191 - v215;
  sub_1CA948D98();
  v40 = v213;
  v41 = [v213 bundleURL];
  v211 = inited;
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v191 - v214;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v31 + 40) = sub_1CA2F9F14(v34, v207, v36, v38, 0, 0, v39, v42);
  *(v31 + 64) = v212;
  *(v31 + 72) = @"DescriptionResult";
  v44 = @"DescriptionResult";
  v207 = sub_1CA94C438();
  v200 = v45;
  v46 = sub_1CA94C438();
  v48 = v47;
  v208 = &v191;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v191 - v215;
  sub_1CA948D98();
  v50 = [v40 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v214;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v31 + 80) = sub_1CA2F9F14(v207, v200, v46, v48, 0, 0, v49, &v191 - v51);
  v53 = v212;
  *(v31 + 104) = v212;
  *(v31 + 112) = @"DescriptionSummary";
  v54 = @"DescriptionSummary";
  v207 = sub_1CA94C438();
  v200 = v55;
  *&v199 = sub_1CA94C438();
  v57 = v56;
  v208 = &v191;
  MEMORY[0x1EEE9AC00](v199);
  v58 = &v191 - v215;
  sub_1CA948D98();
  v59 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v207, v200, v199, v57, 0, 0, v58, &v191 - v51);
  *(v31 + 144) = v53;
  *(v31 + 120) = v61;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v62 = v210;
  v63 = sub_1CA6B3784();
  v64 = v211;
  v211[20] = v63;
  v64[23] = v62;
  v64[24] = @"DisabledOnPlatforms";
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v64[25] = &unk_1F4A04C60;
  v64[28] = v65;
  v64[29] = @"Input";
  v66 = v65;
  v210 = v65;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_1CA981350;
  *(v67 + 32) = 0x656C7069746C754DLL;
  *(v67 + 40) = 0xE800000000000000;
  v68 = MEMORY[0x1E69E6370];
  *(v67 + 48) = 1;
  *(v67 + 72) = v68;
  strcpy((v67 + 80), "ParameterKey");
  *(v67 + 93) = 0;
  *(v67 + 94) = -5120;
  *(v67 + 96) = 0x7475706E494657;
  *(v67 + 104) = 0xE700000000000000;
  *(v67 + 120) = MEMORY[0x1E69E6158];
  *(v67 + 128) = 0x6465726975716552;
  *(v67 + 136) = 0xE800000000000000;
  *(v67 + 144) = 1;
  *(v67 + 168) = v68;
  *(v67 + 176) = 0x7365707954;
  v69 = v68;
  *(v67 + 216) = v66;
  *(v67 + 184) = 0xE500000000000000;
  *(v67 + 192) = &unk_1F4A04C90;
  v70 = @"DisabledOnPlatforms";
  v71 = @"Input";
  v72 = sub_1CA94C1E8();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v208 = v73;
  v64[30] = v72;
  v64[33] = v73;
  v64[34] = @"InputPassthrough";
  *(v64 + 280) = 0;
  v64[38] = v69;
  v64[39] = @"Name";
  v74 = @"InputPassthrough";
  v75 = @"Name";
  v76 = sub_1CA94C438();
  v198 = v77;
  *&v199 = v76;
  v78 = sub_1CA94C438();
  v80 = v79;
  v200 = &v191;
  MEMORY[0x1EEE9AC00](v78);
  v81 = v215;
  sub_1CA948D98();
  v82 = v213;
  v83 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v191 - v214;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v199, v198, v78, v80, 0, 0, &v191 - v81, v84);
  v87 = v211;
  v88 = v212;
  v211[40] = v86;
  v87[43] = v88;
  v87[44] = @"Output";
  v89 = swift_allocObject();
  *(v89 + 16) = v209;
  *(v89 + 32) = 0x656C7069746C754DLL;
  *(v89 + 40) = 0xE800000000000000;
  *(v89 + 48) = 1;
  *(v89 + 72) = MEMORY[0x1E69E6370];
  *(v89 + 80) = 0x614E74757074754FLL;
  *(v89 + 88) = 0xEA0000000000656DLL;
  v90 = @"Output";
  v200 = sub_1CA94C438();
  *&v199 = v91;
  v92 = sub_1CA94C438();
  v94 = v93;
  v207 = &v191;
  MEMORY[0x1EEE9AC00](v92);
  sub_1CA948D98();
  v95 = [v82 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v191 - v214;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 96) = sub_1CA2F9F14(v200, v199, v92, v94, 0, 0, &v191 - v81, v96);
  *(v89 + 120) = v88;
  *(v89 + 128) = 0x7365707954;
  *(v89 + 168) = v210;
  *(v89 + 136) = 0xE500000000000000;
  *(v89 + 144) = &unk_1F4A04CE0;
  v98 = MEMORY[0x1E69E6158];
  v99 = sub_1CA94C1E8();
  v100 = v211;
  v211[45] = v99;
  v100[48] = v208;
  v100[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v208 = swift_allocObject();
  *(v208 + 1) = xmmword_1CA981360;
  v207 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v101 = swift_allocObject();
  v199 = xmmword_1CA981370;
  *(v101 + 16) = xmmword_1CA981370;
  *(v101 + 32) = @"Class";
  *(v101 + 40) = 0xD000000000000014;
  *(v101 + 48) = 0x80000001CA99B500;
  *(v101 + 64) = v98;
  *(v101 + 72) = @"Description";
  v198 = @"Class";
  v102 = @"Parameters";
  v103 = @"Description";
  v104 = sub_1CA94C438();
  v196 = v105;
  v106 = sub_1CA94C438();
  v108 = v107;
  v197 = &v191;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v191 - v215;
  sub_1CA948D98();
  v110 = v213;
  v111 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v191 - v214;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 80) = sub_1CA2F9F14(v104, v196, v106, v108, 0, 0, v109, v112);
  *(v101 + 104) = v212;
  *(v101 + 112) = @"Key";
  *(v101 + 120) = 0x6D614E6D75626C41;
  *(v101 + 128) = 0xE900000000000065;
  *(v101 + 144) = MEMORY[0x1E69E6158];
  *(v101 + 152) = @"Label";
  v114 = @"Key";
  v115 = @"Label";
  v195 = v114;
  v194 = v115;
  v196 = sub_1CA94C438();
  v193 = v116;
  v117 = sub_1CA94C438();
  v192 = v118;
  v197 = &v191;
  MEMORY[0x1EEE9AC00](v117);
  v119 = v215;
  sub_1CA948D98();
  v120 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v191 - v214;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 160) = sub_1CA2F9F14(v196, v193, v117, v192, 0, 0, &v191 - v119, v121);
  v123 = v212;
  *(v101 + 184) = v212;
  *(v101 + 192) = @"Placeholder";
  v193 = @"Placeholder";
  v196 = sub_1CA94C438();
  v192 = v124;
  v125 = sub_1CA94C438();
  v191 = v126;
  v197 = &v191;
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v191 - v119;
  sub_1CA948D98();
  v128 = v213;
  v129 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v214;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v196, v192, v125, v191, 0, 0, v127, &v191 - v130);
  *(v101 + 224) = v123;
  *(v101 + 200) = v132;
  _s3__C3KeyVMa_0(0);
  v197 = v133;
  v196 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v208[4] = sub_1CA2F864C();
  v134 = swift_allocObject();
  *(v134 + 16) = v199;
  *(v134 + 32) = v198;
  *(v134 + 40) = 0xD000000000000019;
  *(v134 + 48) = 0x80000001CA99B030;
  v135 = MEMORY[0x1E69E6158];
  v136 = v195;
  *(v134 + 64) = MEMORY[0x1E69E6158];
  *(v134 + 72) = v136;
  *(v134 + 80) = 0x7475706E494657;
  *(v134 + 88) = 0xE700000000000000;
  v137 = v194;
  *(v134 + 104) = v135;
  *(v134 + 112) = v137;
  v138 = sub_1CA94C438();
  v198 = v139;
  *&v199 = v138;
  v140 = sub_1CA94C438();
  v195 = v141;
  v200 = &v191;
  MEMORY[0x1EEE9AC00](v140);
  v142 = v215;
  sub_1CA948D98();
  v143 = [v128 bundleURL];
  v194 = &v191;
  MEMORY[0x1EEE9AC00](v143);
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v134 + 120) = sub_1CA2F9F14(v199, v198, v140, v195, 0, 0, &v191 - v142, &v191 - v130);
  v145 = v212;
  v146 = v193;
  *(v134 + 144) = v212;
  *(v134 + 152) = v146;
  v147 = sub_1CA94C438();
  v198 = v148;
  *&v199 = v147;
  v149 = sub_1CA94C438();
  v195 = v150;
  v200 = &v191;
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948D98();
  v151 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v134 + 160) = sub_1CA2F9F14(v199, v198, v149, v195, 0, 0, &v191 - v142, &v191 - v130);
  *(v134 + 184) = v145;
  *(v134 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v153 = swift_allocObject();
  *(v153 + 16) = v209;
  v154 = @"PreferredTypes";
  v155 = v201;
  sub_1CA949CB8();
  v156 = sub_1CA949C68();
  v158 = v157;
  v159 = *(v204 + 8);
  v160 = v155;
  v161 = v205;
  v159(v160, v205);
  *(v153 + 32) = v156;
  *(v153 + 40) = v158;
  v162 = v202;
  sub_1CA949CD8();
  v163 = sub_1CA949C68();
  v165 = v164;
  v159(v162, v161);
  *(v153 + 48) = v163;
  *(v153 + 56) = v165;
  v166 = v203;
  sub_1CA949CC8();
  v167 = sub_1CA949C68();
  v169 = v168;
  v159(v166, v161);
  *(v153 + 64) = v167;
  *(v153 + 72) = v169;
  *(v134 + 224) = v210;
  *(v134 + 200) = v153;
  sub_1CA94C1E8();
  v170 = sub_1CA2F864C();
  v171 = v208;
  v208[5] = v170;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v173 = v211;
  v211[50] = v171;
  v173[53] = v172;
  v173[54] = @"ParameterSummary";
  v174 = @"ParameterSummary";
  v175 = sub_1CA94C438();
  v177 = v176;
  v178 = sub_1CA94C438();
  v180 = v179;
  MEMORY[0x1EEE9AC00](v178);
  v181 = &v191 - v215;
  sub_1CA948D98();
  v182 = [v213 bundleURL];
  MEMORY[0x1EEE9AC00](v182);
  v183 = &v191 - v214;
  sub_1CA948B68();

  v184 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v185 = sub_1CA2F9F14(v175, v177, v178, v180, 0, 0, v181, v183);
  v186 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v187 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v188 = v211;
  v211[55] = v186;
  v188[58] = v187;
  v188[59] = @"RequiredResources";
  v188[63] = v210;
  v188[60] = &unk_1F4A04D10;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v189 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA557514()
{
  v83 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001FLL;
  *(inited + 48) = 0x80000001CA9CC910;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  *&v82 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CA981310;
  *(v2 + 32) = @"DescriptionSummary";
  v3 = @"ActionClass";
  v4 = @"Description";
  v5 = @"DescriptionSummary";
  v6 = sub_1CA94C438();
  v87 = v7;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v90 = v13;
  v14 = &v78 - v89;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v85 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v88 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v84 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v78 - v84;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v87, v8, v10, 0, 0, v14, v18);
  v86 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v2 + 64) = v86;
  *(v2 + 40) = v20;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v21 = v82;
  *(inited + 80) = sub_1CA6B3784();
  *(inited + 104) = v21;
  *(inited + 112) = @"DisabledOnPlatforms";
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v87 = v22;
  *(inited + 120) = &unk_1F4A04D40;
  *(inited + 144) = v22;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v23 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000001CA9CC990;
  *(inited + 224) = v23;
  *(inited + 232) = @"Name";
  v24 = @"DisabledOnPlatforms";
  v25 = @"IconColor";
  v26 = @"IconSymbol";
  v27 = @"Name";
  v28 = sub_1CA94C438();
  v80 = v29;
  v81 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  *&v82 = &v78;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v78 - v89;
  sub_1CA948D98();
  v34 = v85;
  v35 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = v84;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v81, v80, v30, v32, 0, 0, v33, &v78 - v36);
  *(inited + 264) = v86;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v82 = xmmword_1CA9813C0;
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
  v79 = v42;
  v80 = v41;
  v43 = sub_1CA94C438();
  v45 = v44;
  v81 = &v78;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v78 - v89;
  sub_1CA948D98();
  v47 = [v34 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v38 + 96) = sub_1CA2F9F14(v80, v79, v43, v45, 0, 0, v46, &v78 - v36);
  v49 = v87;
  *(v38 + 120) = v86;
  *(v38 + 128) = 0x7365707954;
  *(v38 + 168) = v49;
  *(v38 + 136) = 0xE500000000000000;
  *(v38 + 144) = &unk_1F4A04D70;
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v50;
  *(inited + 304) = v51;
  *(inited + 312) = @"ParameterSummary";
  v52 = @"ParameterSummary";
  v53 = sub_1CA94C438();
  v55 = v54;
  v56 = sub_1CA94C438();
  v58 = v57;
  v86 = &v78;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v78 - v89;
  sub_1CA948D98();
  v60 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v78 - v84;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v53, v55, v56, v58, 0, 0, v59, v61);
  v64 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v65 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v66 = swift_allocObject();
  *(v66 + 16) = v82;
  v91 = 2;
  v92 = 1;
  v67 = type metadata accessor for WFDeviceIdiomResource();
  v68 = objc_allocWithZone(v67);
  v69 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v91);
  *(v66 + 32) = v70;
  *(v66 + 56) = v67;
  *(v66 + 64) = 0xD000000000000019;
  *(v66 + 72) = 0x80000001CA9932D0;
  v71 = MEMORY[0x1E69E6158];
  *(v66 + 120) = MEMORY[0x1E69E6158];
  *(v66 + 88) = v71;
  *(v66 + 96) = 0xD000000000000016;
  *(v66 + 104) = 0x80000001CA99A800;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 360) = v66;
  *(inited + 384) = v72;
  *(inited + 392) = @"UserInterfaceClasses";
  v73 = @"UserInterfaceClasses";
  v74 = sub_1CA94C1E8();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 400) = v74;
  *(inited + 424) = v75;
  *(inited + 432) = @"UserInterfaces";
  *(inited + 464) = v87;
  *(inited + 440) = &unk_1F4A04E00;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v76 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA557F40()
{
  v31 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
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
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438();
  v30 = v8;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v7, v30, v9, v11, 0, 0, v15, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Output";
  v24 = @"Output";
  v25 = MEMORY[0x1E69E6158];
  *(inited + 160) = sub_1CA94C1E8();
  *(inited + 184) = v5;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v26 = @"ResidentCompatible";
  v27 = sub_1CA94C368();
  *(inited + 264) = v25;
  *(inited + 232) = v27;
  *(inited + 240) = 0xD00000000000001ALL;
  *(inited + 248) = 0x80000001CA9945C0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA5582F4()
{
  OUTLINED_FUNCTION_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1CA94ADC8();
  v0[4] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[5] = v4;
  v6 = *(v5 + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5583B0()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[7];
  v2 = v0[2];
  sub_1CA94A8B8();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1CA558450;
  v4 = v0[7];
  v5 = v0[3];

  return sub_1CA2FD878();
}

uint64_t sub_1CA558450()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[5];
  v8 = v4[4];
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v2[9] = v11;
  v2[10] = v0;

  v12 = *(v7 + 8);
  v2[11] = v12;
  v2[12] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v6, v8);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CA5585C0()
{
  v26 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_1CA94A8B8();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x1E69DB0B0] || v5 == *MEMORY[0x1E69DB0A0])
  {
LABEL_6:
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    (*(v0 + 88))(*(v0 + 48), *(v0 + 32));
    sub_1CA2FFC58();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    v11 = *(v0 + 48);
    v10 = *(v0 + 56);

    OUTLINED_FUNCTION_5();

    return v12();
  }

  if (v5 != *MEMORY[0x1E69DB098] && v5 != *MEMORY[0x1E69DB088])
  {
    if (v5 != *MEMORY[0x1E69DB0A8])
    {
      v24 = *(v0 + 32);

      return sub_1CA94D7E8();
    }

    goto LABEL_6;
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 72);
  v17 = *(v0 + 56);
  v18 = *(v0 + 16);
  (*(v0 + 88))(*(v0 + 48), *(v0 + 32));
  v19 = sub_1CA94A898();
  v25[3] = MEMORY[0x1E69E6158];
  v25[0] = v19;
  v25[1] = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v22 = sub_1CA320AB4(v25, v16);

  v23 = *(v0 + 8);

  return v23(v22);
}

uint64_t sub_1CA5587D4()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA558838()
{
  OUTLINED_FUNCTION_0();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = sub_1CA94B5A8();
  v0[11] = v4;
  OUTLINED_FUNCTION_12(v4);
  v0[12] = v5;
  v7 = *(v6 + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00) - 8) + 64) + 15;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v9 = sub_1CA94ADC8();
  v0[17] = v9;
  OUTLINED_FUNCTION_12(v9);
  v0[18] = v10;
  v12 = *(v11 + 64) + 15;
  v0[19] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CA558990()
{
  OUTLINED_FUNCTION_6();
  v1 = [*(v0 + 72) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  *(v0 + 160) = sub_1CA55DB30();
  v2 = *(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 168) = [v2 valueType];
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_1CA558B14;
  v4 = *(v0 + 152);
  v5 = *(v0 + 80);

  return sub_1CA2FF3B4();
}

uint64_t sub_1CA558B14()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v2 + 176);
  *v4 = *v1;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA558C38()
{
  v1 = v0[20];
  v2 = v0[9];
  v0[6] = sub_1CA94C3A8();
  v0[7] = v3;
  v0[24] = v3;
  v4 = [v2 displayRepresentation];
  v0[25] = v4;
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_1CA559020;
    v6 = v0[15];
    v7 = v0[10];

    return sub_1CA3BC4F4();
  }

  else
  {
    v9 = v0[15];
    v10 = v0[10];
    v37 = sub_1CA94B458();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v37);
    result = type metadata accessor for LinkValueTransformContext(0);
    v11 = *(v10 + *(result + 32));
    if (v11)
    {
      v12 = 0;
      v13 = v0[12];
      v14 = *(v11 + 16);
      v15 = (v13 + 8);
      while (v14 != v12)
      {
        if (v12 >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v13 + 16))(v0[14], v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12, v0[11]);
        v16 = sub_1CA94B598();
        v18 = v17;
        if (v16 == sub_1CA94C3A8() && v18 == v19)
        {

LABEL_17:
          v23 = v0[16];
          v24 = v0[13];
          v25 = v0[11];
          (*(v0[12] + 32))(v24, v0[14], v25);
          sub_1CA94B578();
          (*v15)(v24, v25);
          v22 = v37;
          goto LABEL_18;
        }

        v21 = sub_1CA94D7F8();

        if (v21)
        {
          goto LABEL_17;
        }

        result = (*v15)(v0[14], v0[11]);
        ++v12;
      }
    }

    v22 = v37;
    __swift_storeEnumTagSinglePayload(v0[16], 1, 1, v37);
LABEL_18:
    v26 = v0[15];
    if (__swift_getEnumTagSinglePayload(v26, 1, v22) != 1)
    {
      sub_1CA30A3DC(v26);
      v27 = v0[15];
    }

    v28 = v0[24];
    v29 = v0[6];
    v30 = v0[19];
    v31 = v0[20];
    v32 = v0[16];
    v34 = v0[13];
    v33 = v0[14];
    v35 = v0[8];
    sub_1CA94A8A8();

    OUTLINED_FUNCTION_5();

    return v36();
  }
}

uint64_t sub_1CA558F84()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);

  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA559020()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[26];
  *v4 = *v1;
  v3[27] = v0;

  v6 = v2[25];
  if (v0)
  {
    v7 = v3[24];
    (*(v3[18] + 8))(v3[19], v3[17]);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA55916C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_1CA94B458();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  (*(*(v3 - 8) + 32))(v2, v1, v3);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = v0[24];
  v5 = v0[6];
  v6 = v0[19];
  v7 = v0[20];
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[8];
  sub_1CA94A8A8();

  OUTLINED_FUNCTION_5();

  return v13();
}

uint64_t sub_1CA55928C()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);

  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA559328()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1CA30A15C;

  return sub_1CA558838();
}

uint64_t sub_1CA5593D4()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA559470;

  return sub_1CA5582F4();
}

uint64_t sub_1CA559470()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v1;
  OUTLINED_FUNCTION_13();
  *v9 = v8;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v10 = *(v8 + 8);

  return v10();
}

id sub_1CA5595A0()
{
  v145 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B0DB0;
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
  v151 = v12;
  v153 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v135 - v153;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v150 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v149 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v152 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v135 - v152;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v148 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  v23 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v23;
  *(inited + 192) = @"DeletesInput";
  *(inited + 200) = 1;
  *(inited + 224) = v23;
  *(inited + 232) = @"Description";
  v147 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionNote";
  v25 = @"DeletesInput";
  v26 = @"Description";
  v27 = @"DescriptionNote";
  v144 = sub_1CA94C438();
  *&v143 = v28;
  v29 = sub_1CA94C438();
  v142 = v30;
  v146 = &v135;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v135 - v153;
  sub_1CA948D98();
  v32 = v150;
  v33 = [v150 bundleURL];
  v141 = &v135;
  MEMORY[0x1EEE9AC00](v33);
  v34 = v152;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v144, v143, v29, v142, 0, 0, v31, &v135 - v34);
  v36 = v148;
  *(v24 + 64) = v148;
  *(v24 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v144 = sub_1CA94C438();
  *&v143 = v38;
  v39 = sub_1CA94C438();
  v142 = v40;
  v146 = &v135;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v135 - v153;
  sub_1CA948D98();
  v42 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v144, v143, v39, v142, 0, 0, v41, &v135 - v34);
  *(v24 + 104) = v36;
  *(v24 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v45 = v147;
  *(inited + 240) = sub_1CA6B3784();
  *(inited + 264) = v45;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v46 = swift_initStackObject();
  v143 = xmmword_1CA981350;
  *(v46 + 16) = xmmword_1CA981350;
  *(v46 + 32) = 0x656C7069746C754DLL;
  *(v46 + 40) = 0xE800000000000000;
  *(v46 + 48) = 1;
  v47 = MEMORY[0x1E69E6370];
  *(v46 + 72) = MEMORY[0x1E69E6370];
  strcpy((v46 + 80), "ParameterKey");
  *(v46 + 93) = 0;
  *(v46 + 94) = -5120;
  strcpy((v46 + 96), "WFInputEvents");
  *(v46 + 110) = -4864;
  *(v46 + 120) = MEMORY[0x1E69E6158];
  *(v46 + 128) = 0x6465726975716552;
  *(v46 + 136) = 0xE800000000000000;
  *(v46 + 144) = 1;
  *(v46 + 168) = v47;
  *(v46 + 176) = 0x7365707954;
  v48 = v47;
  *(v46 + 184) = 0xE500000000000000;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v46 + 216) = v144;
  *(v46 + 192) = &unk_1F4A04EF0;
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v50;
  *(inited + 304) = v51;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 320) = 0;
  *(inited + 344) = v48;
  *(inited + 352) = @"Name";
  v52 = @"InputPassthrough";
  v53 = @"Name";
  v54 = sub_1CA94C438();
  v56 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  v147 = &v135;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v135 - v153;
  sub_1CA948D98();
  v61 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v135 - v152;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  *(inited + 384) = v148;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v147 = swift_allocObject();
  *(v147 + 1) = xmmword_1CA981360;
  v146 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1CA981370;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD000000000000011;
  *(v64 + 48) = 0x80000001CA99E620;
  *(v64 + 64) = MEMORY[0x1E69E6158];
  *(v64 + 72) = @"DefaultValue";
  *(v64 + 80) = 0;
  *(v64 + 104) = MEMORY[0x1E69E6370];
  *(v64 + 112) = @"Description";
  v141 = @"Class";
  v65 = @"Parameters";
  v66 = @"DefaultValue";
  v67 = @"Description";
  v68 = sub_1CA94C438();
  v138 = v69;
  v139 = v68;
  v70 = sub_1CA94C438();
  v137 = v71;
  v140 = &v135;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v135 - v153;
  sub_1CA948D98();
  v73 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v135 - v152;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 120) = sub_1CA2F9F14(v139, v138, v70, v137, 0, 0, v72, v74);
  v76 = v148;
  *(v64 + 144) = v148;
  *(v64 + 152) = @"Key";
  *(v64 + 160) = 0xD00000000000001DLL;
  *(v64 + 168) = 0x80000001CA9CCCB0;
  *(v64 + 184) = MEMORY[0x1E69E6158];
  *(v64 + 192) = @"Label";
  v77 = @"Key";
  v78 = @"Label";
  v138 = v77;
  v137 = v78;
  v139 = sub_1CA94C438();
  v136 = v79;
  v80 = sub_1CA94C438();
  v82 = v81;
  v140 = &v135;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v135 - v153;
  sub_1CA948D98();
  v84 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v135 - v152;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v139, v136, v80, v82, 0, 0, v83, v85);
  *(v64 + 224) = v76;
  *(v64 + 200) = v87;
  _s3__C3KeyVMa_0(0);
  v140 = v88;
  v139 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v147[4] = sub_1CA2F864C();
  v89 = swift_allocObject();
  *(v89 + 16) = v143;
  *(v89 + 32) = v141;
  *(v89 + 40) = 0xD000000000000019;
  *(v89 + 48) = 0x80000001CA99B030;
  v90 = MEMORY[0x1E69E6158];
  v91 = v138;
  *(v89 + 64) = MEMORY[0x1E69E6158];
  *(v89 + 72) = v91;
  strcpy((v89 + 80), "WFInputEvents");
  *(v89 + 94) = -4864;
  v92 = v137;
  *(v89 + 104) = v90;
  *(v89 + 112) = v92;
  v93 = sub_1CA94C438();
  v141 = v94;
  v142 = v93;
  v138 = sub_1CA94C438();
  v96 = v95;
  *&v143 = &v135;
  MEMORY[0x1EEE9AC00](v138);
  v97 = v153;
  sub_1CA948D98();
  v98 = v150;
  v99 = [v150 bundleURL];
  v137 = &v135;
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v135 - v152;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v89 + 120) = sub_1CA2F9F14(v142, v141, v138, v96, 0, 0, &v135 - v97, v100);
  v102 = v148;
  *(v89 + 144) = v148;
  *(v89 + 152) = @"Placeholder";
  v103 = @"Placeholder";
  v104 = sub_1CA94C438();
  v141 = v105;
  v142 = v104;
  v138 = sub_1CA94C438();
  v107 = v106;
  *&v143 = &v135;
  MEMORY[0x1EEE9AC00](v138);
  v108 = &v135 - v97;
  sub_1CA948D98();
  v109 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v135 - v152;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v142, v141, v138, v107, 0, 0, v108, v110);
  *(v89 + 184) = v102;
  *(v89 + 160) = v112;
  sub_1CA94C1E8();
  v113 = sub_1CA2F864C();
  v114 = v147;
  v147[5] = v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v114;
  *(inited + 424) = v115;
  *(inited + 432) = @"ParameterSummary";
  v116 = @"ParameterSummary";
  v117 = sub_1CA94C438();
  v119 = v118;
  v120 = sub_1CA94C438();
  v122 = v121;
  v148 = &v135;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v135 - v153;
  sub_1CA948D98();
  v124 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v135 - v152;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  v128 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v129 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v128;
  *(inited + 464) = v129;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  *(inited + 480) = &unk_1F4A04F20;
  v130 = v144;
  *(inited + 504) = v144;
  *(inited + 512) = @"RequiredResources";
  *(inited + 544) = v130;
  *(inited + 520) = &unk_1F4A04F50;
  v131 = @"RemoteExecuteOnPlatforms";
  v132 = @"RequiredResources";
  *(inited + 552) = sub_1CA94C368();
  v133 = MEMORY[0x1E69E6158];
  *(inited + 584) = MEMORY[0x1E69E6158];
  *(inited + 560) = 0x746E657645;
  *(inited + 568) = 0xE500000000000000;
  *(inited + 592) = sub_1CA94C368();
  *(inited + 624) = v133;
  *(inited + 600) = 0xD00000000000001ALL;
  *(inited + 608) = 0x80000001CA9938C0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA55A7E0()
{
  v34[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
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
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v23);
  v26 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v25;
  *(inited + 184) = v26;
  *(inited + 192) = @"RequiredResources";
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = &unk_1F4A04FD0;
  *(inited + 224) = v27;
  *(inited + 232) = @"SuggestedAsInitialAction";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 0;
  v28 = @"RequiredResources";
  v29 = @"SuggestedAsInitialAction";
  v30 = sub_1CA94C368();
  v31 = MEMORY[0x1E69E6158];
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v30;
  *(inited + 280) = 0xD00000000000001ALL;
  *(inited + 288) = 0x80000001CA9938C0;
  v32 = sub_1CA94C368();
  *(inited + 344) = v31;
  *(inited + 312) = v32;
  *(inited + 320) = 0x7261646E656C6143;
  *(inited + 328) = 0xE800000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA55AC1C()
{
  v134 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9CCE10;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v137 = inited;
  v135 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v136 = sub_1CA94C438();
  v138 = v9;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v142 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v143 = v15;
  v16 = &v121 - v142;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB9F690;
  v141 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v139 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v140 = v20;
  v21 = &v121 - v139;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v136, v138, v10, v12, 0, 0, v16, v21);
  v138 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v138;
  *(v6 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v24 = v135;
  v25 = sub_1CA6B3784();
  v26 = v137;
  v137[15] = v25;
  v26[18] = v24;
  v26[19] = @"Name";
  v27 = @"Name";
  v28 = sub_1CA94C438();
  v30 = v29;
  v31 = sub_1CA94C438();
  v33 = v32;
  v136 = &v121;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v121 - v142;
  sub_1CA948D98();
  v35 = [v17 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v121 - v139;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26[20] = sub_1CA2F9F14(v28, v30, v31, v33, 0, 0, v34, v36);
  v26[23] = v138;
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
  v135 = v42;
  v43 = sub_1CA94C438();
  v45 = v44;
  v136 = &v121;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v121 - v142;
  sub_1CA948D98();
  v47 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v121 - v139;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v38 + 96) = sub_1CA2F9F14(v41, v135, v43, v45, 0, 0, v46, v48);
  *(v38 + 120) = v138;
  *(v38 + 128) = 0x7365707954;
  *(v38 + 136) = 0xE500000000000000;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 168) = v133;
  *(v38 + 144) = &unk_1F4A05090;
  v50 = MEMORY[0x1E69E6158];
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v26[25] = v51;
  v26[28] = v52;
  v26[29] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v136 = swift_allocObject();
  *(v136 + 1) = xmmword_1CA981360;
  v135 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v53 = swift_initStackObject();
  v131 = xmmword_1CA981370;
  *(v53 + 16) = xmmword_1CA981370;
  v130 = 0x80000001CA99B500;
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
  v128 = v54;
  v127 = v55;
  v129 = v56;
  v57 = @"Parameters";
  v58 = sub_1CA94C438();
  v124 = v59;
  v125 = v58;
  v60 = sub_1CA94C438();
  v62 = v61;
  v126 = &v121;
  MEMORY[0x1EEE9AC00](v60);
  v63 = v142;
  sub_1CA948D98();
  v64 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v139;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 120) = sub_1CA2F9F14(v125, v124, v60, v62, 0, 0, &v121 - v63, &v121 - v65);
  v67 = v138;
  *(v53 + 144) = v138;
  *(v53 + 152) = @"Placeholder";
  v126 = @"Placeholder";
  v68 = sub_1CA94C438();
  v123 = v69;
  v124 = v68;
  v70 = sub_1CA94C438();
  v122 = v71;
  v125 = &v121;
  MEMORY[0x1EEE9AC00](v70);
  sub_1CA948D98();
  v72 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 160) = sub_1CA2F9F14(v124, v123, v70, v122, 0, 0, &v121 - v63, &v121 - v65);
  *(v53 + 184) = v67;
  *(v53 + 192) = @"TextAlignment";
  v74 = MEMORY[0x1E69E6158];
  *(v53 + 224) = MEMORY[0x1E69E6158];
  *(v53 + 200) = 0x7468676952;
  *(v53 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v125 = v75;
  v124 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v76 = @"TextAlignment";
  sub_1CA94C1E8();
  v136[4] = sub_1CA2F864C();
  v77 = swift_allocObject();
  *(v77 + 16) = v131;
  *(v77 + 32) = v128;
  *(v77 + 40) = 0xD000000000000014;
  *(v77 + 48) = v130;
  v78 = v127;
  *(v77 + 64) = v74;
  *(v77 + 72) = v78;
  *(v77 + 80) = 0xD000000000000013;
  *(v77 + 88) = 0x80000001CA9CCF00;
  v79 = v129;
  *(v77 + 104) = v74;
  *(v77 + 112) = v79;
  v80 = sub_1CA94C438();
  v130 = v81;
  *&v131 = v80;
  v129 = sub_1CA94C438();
  v83 = v82;
  v132 = &v121;
  MEMORY[0x1EEE9AC00](v129);
  v84 = &v121 - v142;
  sub_1CA948D98();
  v85 = v141;
  v86 = [v141 bundleURL];
  v128 = &v121;
  MEMORY[0x1EEE9AC00](v86);
  v87 = v139;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 120) = sub_1CA2F9F14(v131, v130, v129, v83, 0, 0, v84, &v121 - v87);
  *(v77 + 144) = v138;
  *(v77 + 152) = @"Multiline";
  *(v77 + 160) = 1;
  v89 = v126;
  *(v77 + 184) = MEMORY[0x1E69E6370];
  *(v77 + 192) = v89;
  v90 = @"Multiline";
  v91 = sub_1CA94C438();
  v130 = v92;
  *&v131 = v91;
  v93 = sub_1CA94C438();
  v95 = v94;
  v132 = &v121;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v121 - v142;
  sub_1CA948D98();
  v97 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v131, v130, v93, v95, 0, 0, v96, &v121 - v87);
  *(v77 + 224) = v138;
  *(v77 + 200) = v99;
  sub_1CA94C1E8();
  v100 = sub_1CA2F864C();
  v101 = v136;
  v136[5] = v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v103 = v137;
  v137[30] = v101;
  v103[33] = v102;
  v103[34] = @"ParameterSummary";
  v104 = @"ParameterSummary";
  v105 = sub_1CA94C438();
  v107 = v106;
  v108 = sub_1CA94C438();
  v110 = v109;
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v121 - v142;
  sub_1CA948D98();
  v112 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v121 - v139;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v105, v107, v108, v110, 0, 0, v111, v113);
  v116 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v117 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v118 = v137;
  v137[35] = v116;
  v118[38] = v117;
  v118[39] = @"RequiredResources";
  v118[43] = v133;
  v118[40] = &unk_1F4A050C0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v119 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA55BD6C(uint64_t a1)
{
  sub_1CA25B374(a1, v6);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447110, &qword_1CA98E7A0);
  if (swift_dynamicCast())
  {
    return v6[5];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4463F8, &qword_1CA98B468);
  sub_1CA55DADC(&qword_1EC446400, &qword_1EC4463F8, &qword_1CA98B468);
  swift_allocError();
  v5 = v4;
  sub_1CA25B374(a1, v4);
  *(v5 + 32) = v2;
  return swift_willThrow();
}

uint64_t sub_1CA55BE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CA25B374(a1, v12);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446408, &qword_1CA98B470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD0, &unk_1CA981530);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    return (*(*(v8 - 8) + 32))(a2, v7, v8);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_1CA55DA74(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446410, &qword_1CA98B478);
    sub_1CA55DADC(&qword_1EC446418, &qword_1EC446410, &qword_1CA98B478);
    OUTLINED_FUNCTION_1_39();
    v11 = v10;
    sub_1CA25B374(a1, v10);
    *(v11 + 32) = v8;
    return swift_willThrow();
  }
}

uint64_t sub_1CA55C37C(uint64_t a1)
{
  sub_1CA25B374(a1, v7);
  v2 = MEMORY[0x1E69E6158];
  if (OUTLINED_FUNCTION_21_18())
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4464A0, &qword_1CA98B4B8);
  sub_1CA55DADC(&qword_1EC4464A8, &qword_1EC4464A0, &qword_1CA98B4B8);
  OUTLINED_FUNCTION_1_39();
  v5 = v4;
  sub_1CA25B374(a1, v4);
  *(v5 + 32) = v2;
  return swift_willThrow();
}

uint64_t sub_1CA55C5B0(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  sub_1CA25B374(a1, v13);
  a2(0);
  if (OUTLINED_FUNCTION_21_18())
  {
    return v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1CA55DADC(a5, a3, a4);
  v10 = swift_allocError();
  OUTLINED_FUNCTION_2_46(v10, v11);
  return OUTLINED_FUNCTION_11_27();
}

uint64_t sub_1CA55C74C()
{
  OUTLINED_FUNCTION_0();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_1CA94AC88();
  v0[5] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[6] = v4;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = sub_1CA94ADC8();
  v0[8] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[9] = v8;
  v10 = *(v9 + 64) + 15;
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA55C850()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[10];
  v2 = v0[3];
  sub_1CA94A868();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1CA55C8F0;
  v4 = v0[10];
  v5 = v0[4];

  return sub_1CA2FD878();
}

uint64_t sub_1CA55C8F0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  v8 = v4[8];
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v12 + 96) = v11;
  *(v12 + 104) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1CA55CA4C()
{
  OUTLINED_FUNCTION_14();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v2 = v0[3];
  result = sub_1CA94A878();
  v0[14] = result;
  v4 = *(result + 16);
  v0[16] = 0;
  v0[17] = v1;
  v0[15] = v4;
  if (v4)
  {
    if (*(result + 16))
    {
      (*(v0[6] + 16))(v0[7], result + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)), v0[5]);
      v5 = swift_task_alloc();
      v0[18] = v5;
      *v5 = v0;
      v6 = OUTLINED_FUNCTION_5_34(v5);

      return TypedValueTransformer.transform(input:with:)(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = v0[12];
    v8 = v0[10];
    v9 = v0[7];

    v10 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    sub_1CA55D9F0(MEMORY[0x1E69E7CC0], v7);

    v11 = OUTLINED_FUNCTION_1_3();

    return v12(v11);
  }

  return result;
}

uint64_t sub_1CA55CBA0()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA55CC08()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 144);
  *v4 = *v1;
  v3[19] = v7;
  v3[20] = v0;

  if (v0)
  {
    v8 = v3[17];
    v9 = v3[14];
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA55CD20()
{
  MEMORY[0x1CCAA1490](*(v0 + 152));
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CA94C698();
  }

  v1 = *(v0 + 152);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_1CA94C6E8();

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 16);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128) + 1;
  *(v0 + 128) = v7;
  *(v0 + 136) = v5;
  result = *(v0 + 112);
  if (v7 == v6)
  {
    v9 = *(v0 + 96);
    v10 = *(v0 + 80);
    v11 = *(v0 + 56);

    v12 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    sub_1CA55D9F0(v5, v9);

    v13 = OUTLINED_FUNCTION_1_3();

    return v14(v13);
  }

  else if (v7 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    (*(*(v0 + 48) + 16))(*(v0 + 56), result + ((*(*(v0 + 48) + 80) + 32) & ~*(*(v0 + 48) + 80)) + *(*(v0 + 48) + 72) * v7, *(v0 + 40));
    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v16 = OUTLINED_FUNCTION_5_34();

    return TypedValueTransformer.transform(input:with:)(v16);
  }

  return result;
}

uint64_t sub_1CA55CEF4()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 160);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA55CF8C()
{
  OUTLINED_FUNCTION_0();
  v0[7] = v1;
  v0[8] = v2;
  v0[6] = v3;
  v4 = sub_1CA94AD08();
  v0[9] = v4;
  OUTLINED_FUNCTION_12(v4);
  v0[10] = v5;
  v7 = *(v6 + 64) + 15;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v8 = sub_1CA94AC88();
  v0[13] = v8;
  OUTLINED_FUNCTION_12(v8);
  v0[14] = v9;
  v11 = *(v10 + 64) + 15;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CA55D0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = [*(v18 + 56) valueType];
  *(v18 + 136) = v19;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  *(v18 + 144) = v20;
  if (!v20)
  {

    sub_1CA2FFC58();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    v24 = *(v18 + 120);
    v23 = *(v18 + 128);
    v26 = *(v18 + 88);
    v25 = *(v18 + 96);

    OUTLINED_FUNCTION_5();
    goto LABEL_4;
  }

  [*(v18 + 56) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v21 = sub_1CA55BD6C(v18 + 16);
  *(v18 + 152) = v21;
  v29 = v21;
  __swift_destroy_boxed_opaque_existential_0((v18 + 16));
  result = sub_1CA25B410(v29);
  v31 = MEMORY[0x1E69E7CC0];
  *(v18 + 160) = result;
  *(v18 + 168) = v31;
  v32 = *(v18 + 152);
  if (!result)
  {
    v43 = *(v18 + 144);
    v44 = *(v18 + 96);
    v45 = *(v18 + 64);
    v46 = *(v18 + 152);

    v47 = [v43 memberValueType];
    v48 = v45 + *(type metadata accessor for LinkValueTransformContext(0) + 20);
    sub_1CA94B0F8();
    sub_1CA94CB68();
    v49 = *(v18 + 136);
    v50 = *(v18 + 128);
    v56 = *(v18 + 120);
    v52 = *(v18 + 88);
    v51 = *(v18 + 96);
    v54 = *(v18 + 72);
    v53 = *(v18 + 80);
    v55 = *(v18 + 48);

    (*(v53 + 16))(v52, v51, v54);
    sub_1CA94A848();

    (*(v53 + 8))(v51, v54);

    OUTLINED_FUNCTION_5();
LABEL_4:
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  if ((v32 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1CCAA22D0](0);
  }

  else
  {
    if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v33 = *(v32 + 32);
  }

  *(v18 + 176) = v33;
  *(v18 + 184) = 1;
  v34 = swift_task_alloc();
  *(v18 + 192) = v34;
  *v34 = v18;
  OUTLINED_FUNCTION_4_42(v34);
  OUTLINED_FUNCTION_24();

  return TypedValueTransformer.transform(input:with:)(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1CA55D3D8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v3[25] = v0;

  if (v0)
  {
    v9 = v3[21];
    v10 = v3[19];
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

id sub_1CA55D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 168);
  (*(*(v18 + 112) + 16))(*(v18 + 120), *(v18 + 128), *(v18 + 104));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v18 + 168);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v58 = *(v21 + 16);
    v59 = *(v18 + 168);
    sub_1CA2E4D50();
    v21 = v60;
  }

  v22 = *(v21 + 16);
  if (v22 >= *(v21 + 24) >> 1)
  {
    sub_1CA2E4D50();
    v21 = v61;
  }

  v24 = *(v18 + 120);
  v23 = *(v18 + 128);
  v25 = *(v18 + 104);
  v26 = *(v18 + 112);

  (*(v26 + 8))(v23, v25);
  *(v21 + 16) = v22 + 1;
  result = (*(v26 + 32))(v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v24, v25);
  v28 = *(v18 + 200);
  v29 = *(v18 + 184);
  *(v18 + 168) = v21;
  v30 = *(v18 + 152);
  if (v29 == *(v18 + 160))
  {
    v31 = *(v18 + 144);
    v32 = *(v18 + 96);
    v33 = *(v18 + 64);
    v34 = *(v18 + 152);

    v35 = [v31 memberValueType];
    v36 = v33 + *(type metadata accessor for LinkValueTransformContext(0) + 20);
    sub_1CA94B0F8();
    sub_1CA94CB68();
    v37 = *(v18 + 136);
    if (v28)
    {

      v39 = *(v18 + 120);
      v38 = *(v18 + 128);
      v41 = *(v18 + 88);
      v40 = *(v18 + 96);
    }

    else
    {
      v62 = *(v18 + 128);
      v63 = *(v18 + 120);
      v52 = *(v18 + 88);
      v51 = *(v18 + 96);
      v54 = *(v18 + 72);
      v53 = *(v18 + 80);
      v55 = *(v18 + 48);

      (*(v53 + 16))(v52, v51, v54);
      sub_1CA94A848();

      (*(v53 + 8))(v51, v54);
    }

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  if ((v30 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1CCAA22D0](v29);
  }

  else
  {
    if (v29 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      __break(1u);
      return result;
    }

    result = *(v30 + 8 * v29 + 32);
  }

  *(v18 + 176) = result;
  *(v18 + 184) = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v42 = swift_task_alloc();
  *(v18 + 192) = v42;
  *v42 = v18;
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_24();

  return TypedValueTransformer.transform(input:with:)(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1CA55D818()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 176);

  v2 = *(v0 + 200);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA55D8A8()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1CA2DF78C;

  return sub_1CA55CF8C();
}

uint64_t sub_1CA55D954()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA2FFB5C;

  return sub_1CA55C74C();
}

id sub_1CA55D9F0(uint64_t a1, void *a2)
{
  sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  v4 = sub_1CA94C648();

  v5 = [v2 initWithValues:v4 memberValueType:a2];

  return v5;
}

uint64_t sub_1CA55DA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446408, &qword_1CA98B470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA55DADC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ContainerDefinition.Origin.init(from:)@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = sub_1CA94B178();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69DB310];
  if (v3 == 1)
  {
    v6 = MEMORY[0x1E69DB300];
  }

  if (v3 == 3)
  {
    v6 = MEMORY[0x1E69DB308];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

BOOL sub_1CA55DBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA949F78();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  sub_1CA94C218();
  v7 = sub_1CA275C94(a1, a2, 0);
  v8 = [v7 applicationState];
  v9 = [v8 isInstalled];

  return (v9 & 1) != 0;
}

uint64_t WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_1CA94B6B8();
  v7[9] = v8;
  OUTLINED_FUNCTION_12(v8);
  v7[10] = v9;
  v11 = *(v10 + 64);
  v7[11] = OUTLINED_FUNCTION_13_5();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v12 = sub_1CA94B058();
  v7[14] = v12;
  OUTLINED_FUNCTION_12(v12);
  v7[15] = v13;
  v15 = *(v14 + 64);
  v7[16] = OUTLINED_FUNCTION_13_5();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v16 = sub_1CA94B178();
  v7[19] = v16;
  OUTLINED_FUNCTION_12(v16);
  v7[20] = v17;
  v19 = *(v18 + 64);
  v7[21] = OUTLINED_FUNCTION_13_5();
  v7[22] = swift_task_alloc();
  v20 = sub_1CA94A378();
  v7[23] = v20;
  OUTLINED_FUNCTION_12(v20);
  v7[24] = v21;
  v23 = *(v22 + 64) + 15;
  v7[25] = swift_task_alloc();
  v24 = sub_1CA949F78();
  v7[26] = v24;
  OUTLINED_FUNCTION_12(v24);
  v7[27] = v25;
  v27 = *(v26 + 64);
  v7[28] = OUTLINED_FUNCTION_13_5();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA55E168, 0, 0);
}

uint64_t sub_1CA55E168()
{
  v249 = v0;
  v3 = v0;
  v4 = [*(v0 + 64) identifier];
  v5 = sub_1CA94C3A8();
  v7 = v6;

  if (qword_1EC442D90 != -1)
  {
    OUTLINED_FUNCTION_5_35();
  }

  v8 = sub_1CA27AF18(v5, v7, qword_1EC446530);

  if (v8)
  {
    v9 = *(v0 + 280);
    v10 = *(v0 + 64);
    v11 = *MEMORY[0x1E69E1108];
    v12 = *(v3 + 280);
    sub_1CA949C58();
    v13 = v10;
    v14 = sub_1CA949F68();
    sub_1CA94CBF8();

    v15 = OUTLINED_FUNCTION_65();
    v16 = *(v3 + 280);
    v17 = *(v3 + 208);
    v18 = *(v3 + 216);
    if (v15)
    {
      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_10_24();
      v19 = OUTLINED_FUNCTION_9_27(4.8149e-34);
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_6_36(v20, v21, v22, v23, v24, v25, v26, v27, v233);
      OUTLINED_FUNCTION_7_31();
      *(v1 + 4) = v19;
      v30 = "Discarding action %s from Spotlight index due to presence in deny list.";
LABEL_34:
      OUTLINED_FUNCTION_20_20(&dword_1CA256000, v28, v29, v30);
      __swift_destroy_boxed_opaque_existential_0(v2);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v18 + 8))(v245, v17);
LABEL_68:
      v247 = 0;
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v32 = *(v0 + 16);
  v31 = *(v0 + 24);
  v33 = *MEMORY[0x1E69E0FB0];
  v34 = sub_1CA94C3A8();
  v36 = *(v0 + 40);
  if (v34 != v32 || v35 != v31)
  {
    v38 = *(v3 + 16);
    v39 = *(v3 + 24);
    v40 = sub_1CA94D7F8();

    if ((v40 & 1) == 0 || !v36)
    {
      goto LABEL_16;
    }

LABEL_14:
    v41 = *(v3 + 32);
    v42 = *(v3 + 40);
    if ((sub_1CA94C528() & 1) == 0)
    {
      v43 = *(v3 + 32);
      sub_1CA25B3D0(0, &qword_1EC441980, 0x1E69635F8);
      if (!sub_1CA55DBDC(v43, v42))
      {
        v68 = *(v3 + 272);
        v69 = *(v3 + 64);
        v70 = *MEMORY[0x1E69E1108];
        sub_1CA949C58();
        v71 = v69;
        v14 = sub_1CA949F68();
        sub_1CA94CBF8();

        v72 = OUTLINED_FUNCTION_65();
        v16 = *(v3 + 272);
        v17 = *(v3 + 208);
        v18 = *(v3 + 216);
        if (v72)
        {
          OUTLINED_FUNCTION_8_24();
          OUTLINED_FUNCTION_3_41();
          OUTLINED_FUNCTION_10_24();
          v73 = OUTLINED_FUNCTION_9_27(4.8149e-34);
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_6_36(v74, v75, v76, v77, v78, v79, v80, v81, v233);
          OUTLINED_FUNCTION_7_31();
          *(v1 + 4) = v73;
          v30 = "Discarding action %s from Spotlight index because the corresponding attributed app is not installed.";
          goto LABEL_34;
        }

LABEL_67:

        (*(v18 + 8))(v16, v17);
        goto LABEL_68;
      }
    }

    goto LABEL_16;
  }

  if (v36)
  {
    goto LABEL_14;
  }

LABEL_16:
  v45 = *(v3 + 192);
  v44 = *(v3 + 200);
  v46 = *(v3 + 184);
  v47 = *(v3 + 48);
  (*(v45 + 104))(v44, *MEMORY[0x1E69DAA40], v46);
  OUTLINED_FUNCTION_134();
  LOBYTE(v47) = sub_1CA2BFB90();
  (*(v45 + 8))(v44, v46);
  if (v47)
  {
    v48 = *(v3 + 16);
    v49 = *(v3 + 24);
    sub_1CA25B3D0(0, &qword_1EC445D20, 0x1E6963620);
    sub_1CA94C218();
    v50 = sub_1CA55F98C(v48, v49, 1);
    v51 = *(v3 + 176);
    v52 = *(v3 + 152);
    v53 = *(v3 + 160);
    v1 = *(v3 + 64);
    v54 = [v50 developerType];
    v56 = *(v53 + 104);
    v2 = v53 + 104;
    v55 = v56;
    v57 = *MEMORY[0x1E69DB300];
    v58 = *MEMORY[0x1E69DB310];
    if (v54 == 1)
    {
      v58 = *MEMORY[0x1E69DB300];
    }

    if (v54 == 3)
    {
      v59 = *MEMORY[0x1E69DB308];
    }

    else
    {
      v59 = v58;
    }

    v55(v51, v59, v52);
    objc_opt_self();
    v60 = swift_dynamicCastObjCClass();
    v61 = *(v3 + 176);
    if (v60)
    {
      v63 = *(v3 + 160);
      v62 = *(v3 + 168);
      v1 = *(v3 + 152);
      v2 = *(v3 + 64);
      v55(v62, v57, v1);
      sub_1CA55FAE8(&qword_1EC446538, MEMORY[0x1E69DB318]);
      v64 = v2;
      v65 = sub_1CA94C358();
      v66 = *(v63 + 8);
      v66(v62, v1);
      v67 = *(v3 + 64);
      if ((v65 & 1) == 0)
      {
        v163 = *(v3 + 264);
        v164 = *MEMORY[0x1E69E1108];
        sub_1CA949C58();
        v165 = v67;
        v166 = sub_1CA949F68();
        LOBYTE(v163) = sub_1CA94CBF8();

        v243 = v163;
        v167 = os_log_type_enabled(v166, v163);
        v246 = *(v3 + 264);
        v169 = *(v3 + 208);
        v168 = *(v3 + 216);
        v170 = *(v3 + 176);
        v171 = *(v3 + 152);
        v172 = *(v3 + 64);
        if (v167)
        {
          log = v166;
          v173 = swift_slowAlloc();
          v240 = v170;
          v174 = swift_slowAlloc();
          v248 = v174;
          *v173 = 136315138;
          v236 = v172;
          v238 = v171;
          v175 = [v172 identifier];
          v176 = sub_1CA94C3A8();
          v235 = v169;
          v178 = v177;

          v179 = sub_1CA26B54C(v176, v178, &v248);

          *(v173 + 4) = v179;
          _os_log_impl(&dword_1CA256000, log, v243, "Discarding action %s from Spotlight index because it is a custom SiriKit intent from a non-system app.", v173, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v174);
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_26();

          (*(v168 + 8))(v246, v235);
          v181 = v238;
          v180 = v240;
        }

        else
        {

          (*(v168 + 8))(v246, v169);
          v180 = OUTLINED_FUNCTION_69_0();
        }

        v66(v180, v181);
        goto LABEL_68;
      }

      v66(*(v3 + 176), *(v3 + 152));
    }

    else
    {
      v82 = *(v3 + 152);
      v83 = *(v3 + 160);

      v84 = *(v83 + 8);
      v85 = OUTLINED_FUNCTION_52_0();
      v86(v85);
    }
  }

  v87 = *(v3 + 64);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v88 = *(v3 + 256);
    v89 = *(v3 + 64);
    v90 = *MEMORY[0x1E69E1108];
    sub_1CA949C58();
    v91 = v89;
    v14 = sub_1CA949F68();
    sub_1CA94CBF8();

    v92 = OUTLINED_FUNCTION_65();
    v16 = *(v3 + 256);
    v17 = *(v3 + 208);
    v18 = *(v3 + 216);
    if (v92)
    {
      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_10_24();
      v93 = OUTLINED_FUNCTION_9_27(4.8149e-34);
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_6_36(v94, v95, v96, v97, v98, v99, v100, v101, v233);
      OUTLINED_FUNCTION_7_31();
      *(v1 + 4) = v93;
      v30 = "Discarding action %s from Spotlight index because it is an interchange action.";
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  v102 = *(v3 + 64);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v103 = *(v3 + 248);
    v104 = *(v3 + 64);
    v105 = *MEMORY[0x1E69E1108];
    sub_1CA949C58();
    v106 = v104;
    v14 = sub_1CA949F68();
    sub_1CA94CBF8();

    v107 = OUTLINED_FUNCTION_65();
    v16 = *(v3 + 248);
    v17 = *(v3 + 208);
    v18 = *(v3 + 216);
    if (v107)
    {
      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_10_24();
      v108 = OUTLINED_FUNCTION_9_27(4.8149e-34);
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_6_36(v109, v110, v111, v112, v113, v114, v115, v116, v233);
      OUTLINED_FUNCTION_7_31();
      *(v1 + 4) = v108;
      v30 = "Discarding action %s from Spotlight index because it is an Find/Filter action.";
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  v117 = *(*(v3 + 56) + 16);
  *(v3 + 288) = v117;
  if (!v117)
  {
    v120 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v182 = *(v120 + 16);
    if (v182)
    {
      v1 = 0;
      v2 = *(v3 + 80);
      while (v182 != v1)
      {
        if (v1 >= *(v120 + 16))
        {
          __break(1u);
          return MEMORY[0x1EEE4B148]();
        }

        v183 = *(v3 + 88);
        v184 = *(v3 + 72);
        v185 = *(v2 + 80);
        OUTLINED_FUNCTION_4_43();
        (*(v2 + 16))(v183, v186 + *(v2 + 72) * v1++, v184);
        v187 = sub_1CA94B678();
        v188 = *(v2 + 8);
        v189 = OUTLINED_FUNCTION_52_0();
        v190(v189);
        if (v187)
        {
          goto LABEL_59;
        }
      }

      v206 = *(v3 + 232);
      v207 = *(v3 + 64);

      v208 = *MEMORY[0x1E69E1108];
      sub_1CA949C58();
      v209 = v207;
      v14 = sub_1CA949F68();
      sub_1CA94CBF8();

      v210 = OUTLINED_FUNCTION_65();
      v16 = *(v3 + 232);
      v17 = *(v3 + 208);
      v18 = *(v3 + 216);
      if (!v210)
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_10_24();
      *v1 = 136315138;
      v211 = [v2 + 16 identifier];
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_6_36(v212, v213, v214, v215, v216, v217, v218, v219, v233);
      OUTLINED_FUNCTION_7_31();
      *(v1 + 4) = v211;
      v30 = "Discarding action %s from Spotlight index because it does not satisfy any platform annotations";
      goto LABEL_34;
    }

LABEL_59:
    v191 = *(v3 + 64);

    if ([v191 defaultParameterSummaryContainsRequiredParameters])
    {
      v247 = 1;
LABEL_69:
      v221 = *(v3 + 272);
      v220 = *(v3 + 280);
      v223 = *(v3 + 256);
      v222 = *(v3 + 264);
      v224 = v3;
      v227 = v3 + 240;
      v226 = *(v3 + 240);
      v225 = *(v227 + 8);
      OUTLINED_FUNCTION_19_19();
      v237 = v224[16];
      v239 = v224[13];
      v241 = v224[12];
      v244 = v224[11];

      v228 = v224[1];

      return v228(v247);
    }

    v192 = *(v3 + 224);
    v193 = *(v3 + 64);
    v194 = *MEMORY[0x1E69E1108];
    sub_1CA949C58();
    v195 = v193;
    v14 = sub_1CA949F68();
    sub_1CA94CBF8();

    v196 = OUTLINED_FUNCTION_65();
    v18 = *(v3 + 216);
    v16 = *(v3 + 224);
    v17 = *(v3 + 208);
    if (v196)
    {
      OUTLINED_FUNCTION_8_24();
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_10_24();
      v197 = OUTLINED_FUNCTION_9_27(4.8149e-34);
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_0_55();
      OUTLINED_FUNCTION_6_36(v198, v199, v200, v201, v202, v203, v204, v205, v233);
      OUTLINED_FUNCTION_7_31();
      *(v1 + 4) = v197;
      v30 = "Discarding action %s from Spotlight index because its parameter summary does not contain all required parameters";
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  v118 = 0;
  v119 = *(v3 + 120);
  *(v3 + 360) = *(v119 + 80);
  *(v3 + 364) = *MEMORY[0x1E69DB220];
  *(v3 + 368) = *MEMORY[0x1E69DB218];
  *(v3 + 372) = *MEMORY[0x1E69DB208];
  *(v3 + 296) = *(v119 + 72);
  *(v3 + 304) = *(v119 + 16);
  v120 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v3 + 312) = v118;
    *(v3 + 320) = v120;
    v121 = *(v3 + 296);
    v122 = *(v3 + 304);
    v1 = *(v3 + 364);
    v123 = *(v3 + 360);
    v125 = *(v3 + 136);
    v124 = *(v3 + 144);
    v126 = *(v3 + 112);
    v127 = *(v3 + 120);
    v128 = *(v3 + 56);
    OUTLINED_FUNCTION_17_15();
    *(v3 + 328) = (v127 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v122(v124);
    v129 = OUTLINED_FUNCTION_134();
    v122(v129);
    v130 = *(v127 + 88);
    v2 = v127 + 88;
    v131 = OUTLINED_FUNCTION_69_0();
    v133 = v132(v131);
    if (v133 == v1)
    {
      v135 = *(v3 + 96);
      v134 = *(v3 + 104);
      v136 = *(v3 + 72);
      v137 = *(v3 + 80);
      (*(*(v3 + 120) + 96))(*(v3 + 136), *(v3 + 112));
      v138 = *(v137 + 32);
      v139 = OUTLINED_FUNCTION_134();
      v138(v139);
      v140 = OUTLINED_FUNCTION_34_12();
      v141(v140);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_16_24();
        v120 = v161;
      }

      v142 = *(v120 + 16);
      v242 = v138;
      v245 = v120;
      if (v142 >= *(v120 + 24) >> 1)
      {
        v143 = v142 + 1;
        sub_1CA2E5C14();
        v245 = v162;
      }

      else
      {
        v143 = v142 + 1;
      }

      v144 = *(v3 + 144);
      v146 = *(v3 + 112);
      v145 = *(v3 + 120);
      v1 = *(v3 + 96);
      v2 = *(v3 + 72);
      v147 = *(v3 + 80);
      v148 = *(v147 + 8);
      v147 += 8;
      v148(*(v3 + 104), v2);
      v149 = *(v145 + 8);
      v150 = OUTLINED_FUNCTION_69_0();
      v151(v150);
      *(v245 + 16) = v143;
      v120 = v245;
      v152 = *(v147 + 72);
      OUTLINED_FUNCTION_4_43();
      v242(v153 + *(v147 + 64) * v142, v1, v2);
      goto LABEL_48;
    }

    v154 = *(v3 + 372);
    v155 = *(v3 + 368);
    v156 = *(v3 + 120);
    v157 = *(v156 + 8);
    *(v3 + 336) = v157;
    *(v3 + 344) = (v156 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v133 == v155 || v133 == v154)
    {
      break;
    }

    v159 = *(v3 + 136);
    (v157)(*(v3 + 144), *(v3 + 112));
    v160 = OUTLINED_FUNCTION_52_0();
    v157(v160);
LABEL_48:
    v118 = *(v3 + 312) + 1;
    if (v118 == *(v3 + 288))
    {
      goto LABEL_54;
    }
  }

  (v157)(*(v3 + 136), *(v3 + 112));
  v230 = *(MEMORY[0x1E69DB210] + 4);
  v231 = swift_task_alloc();
  *(v3 + 352) = v231;
  *v231 = v3;
  OUTLINED_FUNCTION_2_47(v231);
  v232 = *(v3 + 144);

  return MEMORY[0x1EEE4B148]();
}

uint64_t sub_1CA55EFE8(char a1)
{
  v2 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 376) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1CA55F0E8, 0, 0);
}

uint64_t sub_1CA55F0E8()
{
  v146 = v0;
  if (*(v0 + 376))
  {
    v1 = *(v0 + 344);
    (*(v0 + 336))(*(v0 + 144), *(v0 + 112));
    v2 = *(v0 + 320);
    while (1)
    {
      v3 = *(v0 + 312) + 1;
      if (v3 == *(v0 + 288))
      {
        break;
      }

      *(v0 + 312) = v3;
      *(v0 + 320) = v2;
      v4 = *(v0 + 296);
      v5 = *(v0 + 304);
      v6 = *(v0 + 364);
      v7 = *(v0 + 360);
      v9 = *(v0 + 136);
      v8 = *(v0 + 144);
      v10 = *(v0 + 112);
      v11 = *(v0 + 120);
      v12 = *(v0 + 56);
      OUTLINED_FUNCTION_17_15();
      *(v0 + 328) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v5(v8);
      v13 = OUTLINED_FUNCTION_134();
      v5(v13);
      v14 = *(v11 + 88);
      v15 = OUTLINED_FUNCTION_69_0();
      v17 = v16(v15);
      if (v17 == v6)
      {
        v26 = *(v0 + 96);
        v25 = *(v0 + 104);
        v27 = *(v0 + 72);
        v28 = *(v0 + 80);
        (*(*(v0 + 120) + 96))(*(v0 + 136), *(v0 + 112));
        v29 = *(v28 + 32);
        v30 = OUTLINED_FUNCTION_134();
        v141 = v31;
        (v31)(v30);
        v32 = OUTLINED_FUNCTION_34_12();
        v33(v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_16_24();
          v2 = v47;
        }

        v34 = *(v2 + 16);
        if (v34 >= *(v2 + 24) >> 1)
        {
          sub_1CA2E5C14();
          v2 = v48;
        }

        v35 = *(v0 + 144);
        v36 = *(v0 + 112);
        v37 = *(v0 + 120);
        v38 = *(v0 + 96);
        v40 = *(v0 + 72);
        v39 = *(v0 + 80);
        v41 = *(v39 + 8);
        v39 += 8;
        v41(*(v0 + 104), v40);
        v42 = *(v37 + 8);
        v43 = OUTLINED_FUNCTION_69_0();
        v44(v43);
        *(v2 + 16) = v34 + 1;
        v45 = *(v39 + 72);
        OUTLINED_FUNCTION_4_43();
        v141(v46 + *(v39 + 64) * v34, v38, v40);
      }

      else
      {
        v18 = *(v0 + 372);
        v19 = *(v0 + 368);
        v20 = *(v0 + 120);
        v21 = *(v20 + 8);
        *(v0 + 336) = v21;
        *(v0 + 344) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v17 == v19 || v17 == v18)
        {
          (v21)(*(v0 + 136), *(v0 + 112));
          v92 = *(MEMORY[0x1E69DB210] + 4);
          v93 = swift_task_alloc();
          *(v0 + 352) = v93;
          *v93 = v0;
          OUTLINED_FUNCTION_2_47();
          v94 = *(v0 + 144);

          return MEMORY[0x1EEE4B148]();
        }

        v23 = *(v0 + 136);
        (v21)(*(v0 + 144), *(v0 + 112));
        v24 = OUTLINED_FUNCTION_52_0();
        v21(v24);
      }
    }

    v80 = *(v2 + 16);
    if (v80)
    {
      v81 = 0;
      v82 = *(v0 + 80);
      while (v80 != v81)
      {
        if (v81 >= *(v2 + 16))
        {
          __break(1u);
          return MEMORY[0x1EEE4B148]();
        }

        v83 = *(v0 + 88);
        v84 = *(v0 + 72);
        v85 = *(v82 + 80);
        OUTLINED_FUNCTION_4_43();
        (*(v82 + 16))(v83, v86 + *(v82 + 72) * v81++, v84);
        v87 = sub_1CA94B678();
        v88 = *(v82 + 8);
        v89 = OUTLINED_FUNCTION_52_0();
        v90(v89);
        if (v87)
        {
          goto LABEL_22;
        }
      }

      v114 = *(v0 + 232);
      v115 = *(v0 + 64);

      v116 = *MEMORY[0x1E69E1108];
      sub_1CA949C58();
      v117 = v115;
      v99 = sub_1CA949F68();
      sub_1CA94CBF8();

      v118 = OUTLINED_FUNCTION_65();
      v102 = *(v0 + 232);
      v103 = *(v0 + 208);
      v101 = *(v0 + 216);
      if (!v118)
      {
        goto LABEL_33;
      }

      v119 = *(v0 + 64);
      swift_slowAlloc();
      v144 = v102;
      v105 = OUTLINED_FUNCTION_3_41();
      v145 = v105;
      *v102 = 136315138;
      v120 = [v119 identifier];
      v121 = sub_1CA94C3A8();
      v123 = v122;

      v124 = sub_1CA26B54C(v121, v123, &v145);

      *(v102 + 4) = v124;
      v113 = "Discarding action %s from Spotlight index because it does not satisfy any platform annotations";
      goto LABEL_32;
    }

LABEL_22:
    v91 = *(v0 + 64);

    if ([v91 defaultParameterSummaryContainsRequiredParameters])
    {
      v143 = 1;
      goto LABEL_35;
    }

    v95 = *(v0 + 224);
    v96 = *(v0 + 64);
    v97 = *MEMORY[0x1E69E1108];
    sub_1CA949C58();
    v98 = v96;
    v99 = sub_1CA949F68();
    sub_1CA94CBF8();

    v100 = OUTLINED_FUNCTION_65();
    v101 = *(v0 + 216);
    v102 = *(v0 + 224);
    v103 = *(v0 + 208);
    if (v100)
    {
      v104 = *(v0 + 64);
      swift_slowAlloc();
      v144 = v102;
      v105 = OUTLINED_FUNCTION_3_41();
      v145 = v105;
      *v102 = 136315138;
      v106 = [v104 identifier];
      v107 = sub_1CA94C3A8();
      v109 = v108;

      v110 = sub_1CA26B54C(v107, v109, &v145);

      *(v102 + 4) = v110;
      v113 = "Discarding action %s from Spotlight index because its parameter summary does not contain all required parameters";
LABEL_32:
      OUTLINED_FUNCTION_20_20(&dword_1CA256000, v111, v112, v113);
      __swift_destroy_boxed_opaque_existential_0(v105);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v101 + 8))(v144, v103);
      goto LABEL_34;
    }

LABEL_33:

    (*(v101 + 8))(v102, v103);
  }

  else
  {
    v49 = *(v0 + 320);
    v50 = *(v0 + 328);
    v51 = *(v0 + 304);
    v52 = *(v0 + 240);
    v53 = *(v0 + 144);
    v54 = *(v0 + 128);
    v55 = *(v0 + 112);
    v56 = *(v0 + 64);

    v57 = *MEMORY[0x1E69E1108];
    sub_1CA949C58();
    v51(v54, v53, v55);
    v58 = v56;
    v59 = sub_1CA949F68();
    v60 = sub_1CA94CBF8();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 336);
    v63 = *(v0 + 240);
    v64 = *(v0 + 216);
    v142 = *(v0 + 208);
    v65 = *(v0 + 144);
    v66 = *(v0 + 128);
    v67 = *(v0 + 112);
    if (v61)
    {
      v134 = *(v0 + 344);
      v68 = *(v0 + 64);
      v139 = *(v0 + 240);
      v69 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v69 = 136315394;
      v70 = [v68 identifier];
      v133 = v60;
      v71 = v62;
      v72 = sub_1CA94C3A8();
      v137 = v65;
      v74 = v73;

      v75 = sub_1CA26B54C(v72, v74, &v145);

      *(v69 + 4) = v75;
      *(v69 + 12) = 2080;
      sub_1CA55FAE8(&qword_1EC441CF8, MEMORY[0x1E69DB228]);
      v76 = sub_1CA94D798();
      v78 = v77;
      v71(v66, v67);
      v79 = sub_1CA26B54C(v76, v78, &v145);

      *(v69 + 14) = v79;
      _os_log_impl(&dword_1CA256000, v59, v133, "Discarding action %s from Spotlight index because a runtime requirement is not satisfied: %s", v69, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v64 + 8))(v139, v142);
      v71(v137, v67);
    }

    else
    {

      v62(v66, v67);
      (*(v64 + 8))(v63, v142);
      v62(v65, v67);
    }
  }

LABEL_34:
  v143 = 0;
LABEL_35:
  v126 = *(v0 + 272);
  v125 = *(v0 + 280);
  v128 = *(v0 + 256);
  v127 = *(v0 + 264);
  v130 = *(v0 + 240);
  v129 = *(v0 + 248);
  OUTLINED_FUNCTION_19_19();
  v135 = *(v0 + 128);
  v136 = *(v0 + 104);
  v138 = *(v0 + 96);
  v140 = *(v0 + 88);

  v131 = *(v0 + 8);

  return v131(v143);
}

id sub_1CA55F98C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1CA94C368();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1CA55FA74()
{
  result = sub_1CA2E2E2C(&unk_1F4A05100);
  qword_1EC446530 = result;
  return result;
}

uint64_t static SpotlightDenyList.actionIdentifiers.getter()
{
  if (qword_1EC442D90 != -1)
  {
    OUTLINED_FUNCTION_5_35();
  }

  return sub_1CA94C218();
}

uint64_t sub_1CA55FAE8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SpotlightDenyList(_BYTE *result, int a2, int a3)
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

id sub_1CA55FC10()
{
  v66 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x666F646E61484657;
  *(inited + 48) = 0xEF6E6F6974634166;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v68 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v11;
  v12 = &v62 - v71;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v70 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v67 = v15;
  v69 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v62 - v69;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v68, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v68 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v65 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438();
  v63 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v64 = &v62;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v62 - v71;
  sub_1CA948D98();
  v29 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v62 - v69;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v63, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v68;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v33 = v65;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v33;
  *(inited + 152) = @"Discontinued";
  v34 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v34;
  *(inited + 192) = @"IconName";
  *(inited + 200) = 0xD000000000000013;
  *(inited + 208) = 0x80000001CA9CCFF0;
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v34;
  *(inited + 272) = @"Name";
  v35 = @"Discontinued";
  v36 = @"IconName";
  v37 = @"InputPassthrough";
  v38 = @"Name";
  v39 = sub_1CA94C438();
  v64 = v40;
  v41 = sub_1CA94C438();
  v43 = v42;
  v65 = &v62;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v62 - v71;
  sub_1CA948D98();
  v45 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  v46 = v69;
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v39, v64, v41, v43, 0, 0, v44, &v62 - v46);
  *(inited + 304) = v68;
  *(inited + 312) = @"ParameterSummary";
  v48 = @"ParameterSummary";
  v49 = sub_1CA94C438();
  v65 = v50;
  v51 = sub_1CA94C438();
  v53 = v52;
  v68 = &v62;
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v62 - v71;
  sub_1CA948D98();
  v55 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v49, v65, v51, v53, 0, 0, v54, &v62 - v46);
  v58 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v59 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v58;
  *(inited + 344) = v59;
  *(inited + 352) = @"RequiredResources";
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 360) = &unk_1F4A066D0;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v60 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA56040C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA94C648();

  v2 = [v0 initWithArray_];

  return v2;
}

id sub_1CA560484(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11WorkflowKit16WFRemoteAppValue_value] = a1;
  v4 = OBJC_IVAR____TtC11WorkflowKit16WFRemoteAppValue_sourceContainer;
  v5 = sub_1CA94B1C8();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v2[v4], a2, v5);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for WFRemoteAppValue();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a2, v5);
  return v7;
}

uint64_t type metadata accessor for WFRemoteAppValue()
{
  result = qword_1EC446548;
  if (!qword_1EC446548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA56068C()
{
  result = sub_1CA94B1C8();
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

id sub_1CA56072C()
{
  sub_1CA25B3D0(0, &unk_1EC444900, 0x1E695DFB8);
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F8, &unk_1CA987A00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA981310;
  *(v1 + 32) = type metadata accessor for WFRemoteAppValue();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v2 = sub_1CA94C648();

  v3 = [v0 typesWithClasses_];

  sub_1CA25B3D0(0, &qword_1EC444818, 0x1E6996ED0);
  v4 = sub_1CA94C658();

  sub_1CA3612C4(v4);

  return sub_1CA56040C();
}

id sub_1CA560880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFRemoteAppValueContentItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1CA5608D8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFRemoteAppValueContentItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1CA560980(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1CA560A10()
{
  v135 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9CD180;
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
  v142 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v126 - v142;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v140 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v139 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v138 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v126 - v138;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v137 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v134 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v132 = sub_1CA94C438();
  *&v131 = v27;
  v28 = sub_1CA94C438();
  v130 = v29;
  *&v133 = v126;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v126 - v142;
  sub_1CA948D98();
  v31 = v140;
  v32 = [v140 bundleURL];
  v136 = inited;
  MEMORY[0x1EEE9AC00](v32);
  v33 = v138;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v132, v131, v28, v130, 0, 0, v30, v126 - v33);
  *(v24 + 64) = v137;
  *(v24 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v132 = sub_1CA94C438();
  *&v131 = v36;
  v37 = sub_1CA94C438();
  v39 = v38;
  *&v133 = v126;
  MEMORY[0x1EEE9AC00](v37);
  v40 = v126 - v142;
  sub_1CA948D98();
  v41 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v132, v131, v37, v39, 0, 0, v40, v126 - v33);
  *(v24 + 104) = v137;
  *(v24 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v134;
  v45 = sub_1CA6B3784();
  v46 = v136;
  v136[20] = v45;
  v46[23] = v44;
  v46[24] = @"Input";
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  v131 = xmmword_1CA981350;
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = 0x656C7069746C754DLL;
  *(v47 + 40) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 48) = 1;
  *(v47 + 72) = v48;
  strcpy((v47 + 80), "ParameterKey");
  *(v47 + 93) = 0;
  *(v47 + 94) = -5120;
  *(v47 + 96) = 0x7475706E494657;
  *(v47 + 104) = 0xE700000000000000;
  *(v47 + 120) = MEMORY[0x1E69E6158];
  *(v47 + 128) = 0x6465726975716552;
  *(v47 + 136) = 0xE800000000000000;
  *(v47 + 144) = 1;
  *(v47 + 168) = v48;
  *(v47 + 176) = 0x7365707954;
  *(v47 + 184) = 0xE500000000000000;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 216) = v134;
  *(v47 + 192) = &unk_1F4A06740;
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *&v133 = v51;
  v46[25] = v50;
  v46[28] = v51;
  v46[29] = @"Name";
  v52 = @"Name";
  v129 = sub_1CA94C438();
  v54 = v53;
  v55 = sub_1CA94C438();
  v57 = v56;
  v130 = v126;
  MEMORY[0x1EEE9AC00](v55);
  v58 = v142;
  sub_1CA948D98();
  v59 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = v126 - v138;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v62 = sub_1CA2F9F14(v129, v54, v55, v57, 0, 0, v126 - v58, v60);
  v63 = v136;
  v64 = v137;
  v136[30] = v62;
  v63[33] = v64;
  v63[34] = @"Output";
  v65 = swift_initStackObject();
  *(v65 + 16) = v131;
  *(v65 + 32) = 0x75736F6C63736944;
  *(v65 + 40) = 0xEF6C6576654C6572;
  *(v65 + 48) = 0x63696C627550;
  *(v65 + 56) = 0xE600000000000000;
  *(v65 + 72) = MEMORY[0x1E69E6158];
  *(v65 + 80) = 0x656C7069746C754DLL;
  *(v65 + 88) = 0xE800000000000000;
  *(v65 + 96) = 1;
  *(v65 + 120) = MEMORY[0x1E69E6370];
  *(v65 + 128) = 0x614E74757074754FLL;
  *(v65 + 136) = 0xEA0000000000656DLL;
  v66 = @"Output";
  v67 = sub_1CA94C438();
  v130 = v68;
  *&v131 = v67;
  v69 = sub_1CA94C438();
  v129 = v70;
  v132 = v126;
  MEMORY[0x1EEE9AC00](v69);
  sub_1CA948D98();
  v71 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = v126 - v138;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 144) = sub_1CA2F9F14(v131, v130, v69, v129, 0, 0, v126 - v58, v72);
  *(v65 + 168) = v64;
  *(v65 + 176) = 0x7365707954;
  *(v65 + 216) = v134;
  *(v65 + 184) = 0xE500000000000000;
  *(v65 + 192) = &unk_1F4A06770;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = v136;
  v136[35] = v75;
  v76[38] = v133;
  v76[39] = @"Parameters";
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v132 = swift_allocObject();
  v133 = xmmword_1CA9813B0;
  *(v132 + 1) = xmmword_1CA9813B0;
  *&v131 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1CA981420;
  *(v77 + 32) = @"AllowsMultipleValues";
  *(v77 + 40) = 1;
  v78 = MEMORY[0x1E69E6370];
  *(v77 + 64) = MEMORY[0x1E69E6370];
  *(v77 + 72) = @"AutocapitalizationType";
  *(v77 + 80) = 1701736270;
  *(v77 + 88) = 0xE400000000000000;
  *(v77 + 104) = v74;
  *(v77 + 112) = @"Class";
  *(v77 + 120) = 0xD000000000000014;
  *(v77 + 128) = 0x80000001CA99B500;
  *(v77 + 144) = v74;
  *(v77 + 152) = @"DisableAutocorrection";
  *(v77 + 160) = 1;
  *(v77 + 184) = v78;
  *(v77 + 192) = @"Key";
  *(v77 + 200) = 0x7475706E494657;
  *(v77 + 208) = 0xE700000000000000;
  *(v77 + 224) = v74;
  *(v77 + 232) = @"KeyboardType";
  *(v77 + 240) = 5001813;
  *(v77 + 248) = 0xE300000000000000;
  *(v77 + 264) = v74;
  *(v77 + 272) = @"Label";
  v79 = @"Parameters";
  v80 = @"AllowsMultipleValues";
  v81 = @"AutocapitalizationType";
  v82 = @"Class";
  v83 = @"DisableAutocorrection";
  v84 = @"Key";
  v85 = @"KeyboardType";
  v86 = @"Label";
  v87 = sub_1CA94C438();
  v128 = v88;
  v129 = v87;
  v89 = sub_1CA94C438();
  v127 = v90;
  v130 = v126;
  MEMORY[0x1EEE9AC00](v89);
  v91 = v126 - v142;
  sub_1CA948D98();
  v92 = v140;
  v93 = [v140 bundleURL];
  v126[1] = v126;
  MEMORY[0x1EEE9AC00](v93);
  v94 = v138;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 280) = sub_1CA2F9F14(v129, v128, v89, v127, 0, 0, v91, v126 - v94);
  v96 = v137;
  *(v77 + 304) = v137;
  *(v77 + 312) = @"Placeholder";
  v97 = @"Placeholder";
  v98 = sub_1CA94C438();
  v128 = v99;
  v129 = v98;
  v100 = sub_1CA94C438();
  v127 = v101;
  v130 = v126;
  MEMORY[0x1EEE9AC00](v100);
  v102 = v126 - v142;
  sub_1CA948D98();
  v103 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 320) = sub_1CA2F9F14(v129, v128, v100, v127, 0, 0, v102, v126 - v94);
  *(v77 + 344) = v96;
  *(v77 + 352) = @"Prompt";
  v105 = @"Prompt";
  v106 = sub_1CA94C438();
  v108 = v107;
  v109 = sub_1CA94C438();
  v111 = v110;
  v130 = v126;
  MEMORY[0x1EEE9AC00](v109);
  v112 = v126 - v142;
  sub_1CA948D98();
  v113 = [v140 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = v126 - v138;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 360) = sub_1CA2F9F14(v106, v108, v109, v111, 0, 0, v112, v114);
  *(v77 + 384) = v137;
  *(v77 + 392) = @"TextContentType";
  *(v77 + 424) = MEMORY[0x1E69E6158];
  *(v77 + 400) = 5001813;
  *(v77 + 408) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v116 = @"TextContentType";
  sub_1CA94C1E8();
  v117 = sub_1CA2F864C();
  v118 = v132;
  v132[4] = v117;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v120 = v136;
  v136[40] = v118;
  v120[43] = v119;
  v120[44] = @"RequiredResources";
  v121 = swift_allocObject();
  *(v121 + 16) = v133;
  v143 = 2;
  v144 = 0;
  v122 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v123 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v143);
  *(v121 + 32) = v124;
  v120[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v120[45] = v121;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFEncodedTypedValue.resolve(to:withVariableSource:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ContentGraphRepresentationContext(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1CA94AC88();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA561BBC, 0, 0);
}

uint64_t sub_1CA561BBC()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  v4 = sub_1CA9489C8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1CA9489B8();
  v7 = [v3 data];
  v8 = sub_1CA948C08();
  v10 = v9;

  sub_1CA381204();
  sub_1CA9489A8();
  sub_1CA266F2C(v8, v10);

  v11 = v0[6];
  v12 = *(v0[5] + 24);
  v13 = sub_1CA94B258();
  __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
  if (qword_1EC442008 != -1)
  {
    swift_once();
  }

  v14 = v0[6];
  v15 = v0[3];
  v16 = qword_1EC442010;
  v14[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
  v14[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
  *v14 = v16;
  v14[5] = 0;
  v14[6] = v15;

  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1CA561DF0;
  v18 = v0[9];
  v19 = v0[6];
  v20 = v0[2];

  return TypedValue.resolve(to:in:)();
}

uint64_t sub_1CA561DF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v4 + 88) = v1;

  if (v1)
  {
    v8 = sub_1CA561FB0;
  }

  else
  {
    *(v4 + 96) = a1;
    v8 = sub_1CA561F10;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CA561F10()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1CA56204C(v0[6]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[12];

  return v4(v5);
}

uint64_t sub_1CA561FB0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1CA56204C(v0[6]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1CA56204C(uint64_t a1)
{
  v2 = type metadata accessor for ContentGraphRepresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA5620A8(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  swift_unknownObjectRetain();
  v10 = a1;

  return sub_1CA67052C(&unk_1CA98B590, v9);
}

uint64_t sub_1CA562140(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1CA562218;

  return WFEncodedTypedValue.resolve(to:withVariableSource:)(ObjCClassMetadata, a2);
}

uint64_t sub_1CA562218(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;
  OUTLINED_FUNCTION_13();
  *v10 = v9;

  swift_unknownObjectRelease();

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = sub_1CA948AC8();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    v11[2](*(v5 + 32), a1, 0);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_1CA5623D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CA2DBC14;

  return sub_1CA562140(v2, v3, v5, v4);
}

id sub_1CA5624C4()
{
  v194 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9CD440;
  *(inited + 64) = v1;
  *(inited + 72) = @"Discoverable";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 80) = 0;
  *(inited + 104) = v2;
  *(inited + 112) = @"IconName";
  *(inited + 120) = 0x6567616D49;
  *(inited + 128) = 0xE500000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"Input";
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v3 = swift_initStackObject();
  v199 = xmmword_1CA981350;
  *(v3 + 16) = xmmword_1CA981350;
  *(v3 + 32) = 0x656C7069746C754DLL;
  *(v3 + 40) = 0xE800000000000000;
  *(v3 + 48) = 1;
  *(v3 + 72) = v2;
  strcpy((v3 + 80), "ParameterKey");
  *(v3 + 93) = 0;
  *(v3 + 94) = -5120;
  *(v3 + 96) = 0x6567616D494657;
  *(v3 + 104) = 0xE700000000000000;
  *(v3 + 120) = v1;
  *(v3 + 128) = 0x6465726975716552;
  *(v3 + 136) = 0xE800000000000000;
  *(v3 + 144) = 1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0x7365707954;
  *(v3 + 184) = 0xE500000000000000;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v3 + 216) = v205;
  *(v3 + 192) = &unk_1F4A067A0;
  v4 = @"ActionClass";
  v5 = @"Discoverable";
  v6 = @"IconName";
  v7 = @"Input";
  v8 = sub_1CA94C1E8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 160) = v8;
  v204 = v9;
  *(inited + 184) = v9;
  *(inited + 192) = @"InputPassthrough";
  *(inited + 200) = 0;
  *(inited + 224) = v2;
  *(inited + 232) = @"Name";
  v200 = inited;
  v10 = @"InputPassthrough";
  v11 = @"Name";
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA94C438();
  v17 = v16;
  v18 = sub_1CA948E58();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v210 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v211 = v20;
  v21 = v184 - v210;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v207 = qword_1EDB9F690;
  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v208 = v24;
  v209 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v184 - v209;
  sub_1CA948B68();

  v26 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v27 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v21, v25);
  v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v206 = v28;
  v29 = v200;
  v200[30] = v27;
  v29[33] = v28;
  v29[34] = @"Output";
  v30 = swift_initStackObject();
  *(v30 + 16) = v199;
  *(v30 + 32) = 0x75736F6C63736944;
  *(v30 + 40) = 0xEF6C6576654C6572;
  *(v30 + 48) = 0x63696C627550;
  *(v30 + 56) = 0xE600000000000000;
  *(v30 + 72) = MEMORY[0x1E69E6158];
  *(v30 + 80) = 0x656C7069746C754DLL;
  *(v30 + 88) = 0xE800000000000000;
  *(v30 + 96) = 1;
  *(v30 + 120) = MEMORY[0x1E69E6370];
  *(v30 + 128) = 0x614E74757074754FLL;
  *(v30 + 136) = 0xEA0000000000656DLL;
  v31 = @"Output";
  v32 = sub_1CA94C438();
  v202 = v33;
  v34 = sub_1CA94C438();
  v36 = v35;
  v203 = v184;
  MEMORY[0x1EEE9AC00](v34);
  v37 = v184 - v210;
  sub_1CA948D98();
  v38 = [v207 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  v39 = v184 - v209;
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v30 + 144) = sub_1CA2F9F14(v32, v202, v34, v36, 0, 0, v37, v39);
  *(v30 + 168) = v206;
  *(v30 + 176) = 0x7365707954;
  *(v30 + 216) = v205;
  *(v30 + 184) = 0xE500000000000000;
  *(v30 + 192) = &unk_1F4A067D0;
  v41 = MEMORY[0x1E69E6158];
  v29[35] = sub_1CA94C1E8();
  v29[38] = v204;
  v29[39] = @"Parameters";
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v205 = swift_allocObject();
  v193 = xmmword_1CA981570;
  *(v205 + 16) = xmmword_1CA981570;
  v204 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1CA9813C0;
  *(v42 + 32) = @"Class";
  *(v42 + 40) = 0xD000000000000011;
  *(v42 + 48) = 0x80000001CA99E620;
  *(v42 + 64) = v41;
  *(v42 + 72) = @"Key";
  *(v42 + 80) = 0xD000000000000012;
  *(v42 + 88) = 0x80000001CA9CD460;
  *(v42 + 104) = v41;
  *(v42 + 112) = @"Label";
  v43 = @"Class";
  v44 = @"Key";
  v45 = @"Label";
  v46 = v43;
  v47 = v44;
  v48 = v45;
  v198 = v46;
  v192 = v47;
  v195 = v48;
  v49 = @"Parameters";
  v50 = sub_1CA94C438();
  v52 = v51;
  v53 = sub_1CA94C438();
  v55 = v54;
  v203 = v184;
  MEMORY[0x1EEE9AC00](v53);
  v56 = v184 - v210;
  sub_1CA948D98();
  v57 = [v207 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = v184 - v209;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v50, v52, v53, v55, 0, 0, v56, v58);
  *(v42 + 144) = v206;
  *(v42 + 120) = v60;
  _s3__C3KeyVMa_0(0);
  v203 = v61;
  v202 = sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v205 + 32) = sub_1CA2F864C();
  v62 = swift_allocObject();
  *(v62 + 16) = v199;
  v63 = v198;
  *(v62 + 32) = v198;
  *(v62 + 40) = 0xD000000000000019;
  *(v62 + 48) = 0x80000001CA99B030;
  v64 = MEMORY[0x1E69E6158];
  v65 = v192;
  *(v62 + 64) = MEMORY[0x1E69E6158];
  *(v62 + 72) = v65;
  *(v62 + 80) = 0x6567616D494657;
  *(v62 + 88) = 0xE700000000000000;
  v66 = v195;
  *(v62 + 104) = v64;
  *(v62 + 112) = v66;
  v196 = v63;
  v198 = v65;
  *&v199 = v66;
  v192 = sub_1CA94C438();
  *&v191 = v67;
  v68 = sub_1CA94C438();
  v190 = v69;
  v195 = v184;
  MEMORY[0x1EEE9AC00](v68);
  v70 = v210;
  sub_1CA948D98();
  v71 = v207;
  v72 = [v207 bundleURL];
  v189 = v184;
  MEMORY[0x1EEE9AC00](v72);
  v73 = v209;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 120) = sub_1CA2F9F14(v192, v191, v68, v190, 0, 0, v184 - v70, v184 - v73);
  v75 = v206;
  *(v62 + 144) = v206;
  *(v62 + 152) = @"Placeholder";
  v76 = @"Placeholder";
  v192 = sub_1CA94C438();
  *&v191 = v77;
  v78 = sub_1CA94C438();
  v190 = v79;
  v195 = v184;
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948D98();
  v80 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v192, v191, v78, v190, 0, 0, v184 - v70, v184 - v73);
  *(v62 + 184) = v75;
  *(v62 + 160) = v82;
  sub_1CA94C1E8();
  *(v205 + 40) = sub_1CA2F864C();
  v83 = swift_allocObject();
  v191 = xmmword_1CA981370;
  *(v83 + 16) = xmmword_1CA981370;
  v190 = 0x80000001CA99C4A0;
  *(v83 + 32) = v196;
  *(v83 + 40) = 0xD000000000000016;
  *(v83 + 48) = 0x80000001CA99C4A0;
  v84 = MEMORY[0x1E69E6158];
  *(v83 + 64) = MEMORY[0x1E69E6158];
  *(v83 + 72) = @"DefaultValue";
  *(v83 + 80) = 1195724874;
  *(v83 + 88) = 0xE400000000000000;
  *(v83 + 104) = v84;
  *(v83 + 112) = @"Items";
  v195 = swift_allocObject();
  *&v195->data = xmmword_1CA981470;
  v85 = @"DefaultValue";
  v86 = @"Items";
  v188 = v85;
  v189 = v86;
  v87 = sub_1CA94C438();
  v186 = v88;
  v187 = v87;
  v89 = sub_1CA94C438();
  v185 = v90;
  v192 = v184;
  MEMORY[0x1EEE9AC00](v89);
  v91 = v184 - v210;
  sub_1CA948D98();
  v92 = v207;
  v93 = [v207 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v184 - v209;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v187, v186, v89, v185, 0, 0, v91, v94);
  v97 = v195;
  v195[1].isa = v96;
  v98 = sub_1CA94C438();
  v186 = v99;
  v187 = v98;
  v100 = sub_1CA94C438();
  v185 = v101;
  v192 = v184;
  MEMORY[0x1EEE9AC00](v100);
  v102 = v210;
  sub_1CA948D98();
  v103 = [v92 bundleURL];
  v184[1] = v184;
  MEMORY[0x1EEE9AC00](v103);
  v104 = v209;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v97 + 40) = sub_1CA2F9F14(v187, v186, v100, v185, 0, 0, v184 - v102, v184 - v104);
  v106 = sub_1CA94C438();
  v186 = v107;
  v187 = v106;
  v108 = sub_1CA94C438();
  v185 = v109;
  v192 = v184;
  MEMORY[0x1EEE9AC00](v108);
  sub_1CA948D98();
  v110 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v187, v186, v108, v185, 0, 0, v184 - v102, v184 - v104);
  v113 = v195;
  v195[1].data = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v192 = v114;
  *(v83 + 120) = v113;
  v115 = v198;
  *(v83 + 144) = v114;
  *(v83 + 152) = v115;
  strcpy((v83 + 160), "WFFileFormat");
  *(v83 + 173) = 0;
  *(v83 + 174) = -5120;
  v116 = v199;
  *(v83 + 184) = MEMORY[0x1E69E6158];
  *(v83 + 192) = v116;
  v117 = sub_1CA94C438();
  v187 = v118;
  v119 = sub_1CA94C438();
  v121 = v120;
  v195 = v184;
  MEMORY[0x1EEE9AC00](v119);
  v122 = v184 - v210;
  sub_1CA948D98();
  v123 = [v207 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v184 - v209;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v126 = sub_1CA2F9F14(v117, v187, v119, v121, 0, 0, v122, v124);
  *(v83 + 224) = v206;
  *(v83 + 200) = v126;
  sub_1CA94C1E8();
  *(v205 + 48) = sub_1CA2F864C();
  v127 = swift_allocObject();
  *(v127 + 16) = v191;
  *(v127 + 32) = v196;
  *(v127 + 40) = 0xD000000000000016;
  *(v127 + 48) = v190;
  v128 = MEMORY[0x1E69E6158];
  v129 = v188;
  *(v127 + 64) = MEMORY[0x1E69E6158];
  *(v127 + 72) = v129;
  *(v127 + 80) = 0x6C6C616D53;
  *(v127 + 88) = 0xE500000000000000;
  v130 = v189;
  *(v127 + 104) = v128;
  *(v127 + 112) = v130;
  v201 = swift_allocObject();
  *(v201 + 1) = v193;
  v131 = sub_1CA94C438();
  v195 = v132;
  v196 = v131;
  v133 = sub_1CA94C438();
  *&v193 = v134;
  v197 = v184;
  MEMORY[0x1EEE9AC00](v133);
  v135 = v210;
  sub_1CA948D98();
  v136 = v207;
  v137 = [v207 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = v184 - v209;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v196, v195, v133, v193, 0, 0, v184 - v135, v138);
  v201[4] = v140;
  v141 = sub_1CA94C438();
  v195 = v142;
  v196 = v141;
  v143 = sub_1CA94C438();
  *&v193 = v144;
  v197 = v184;
  MEMORY[0x1EEE9AC00](v143);
  sub_1CA948D98();
  v145 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  v146 = v209;
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v196, v195, v143, v193, 0, 0, v184 - v135, v184 - v146);
  v149 = v201;
  v201[5] = v148;
  v150 = sub_1CA94C438();
  v195 = v151;
  v196 = v150;
  v152 = sub_1CA94C438();
  *&v193 = v153;
  v197 = v184;
  MEMORY[0x1EEE9AC00](v152);
  v154 = v210;
  sub_1CA948D98();
  v155 = v207;
  v156 = [v207 bundleURL];
  *&v191 = v184;
  MEMORY[0x1EEE9AC00](v156);
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v149[6] = sub_1CA2F9F14(v196, v195, v152, v193, 0, 0, v184 - v154, v184 - v146);
  v158 = sub_1CA94C438();
  v195 = v159;
  v196 = v158;
  v160 = sub_1CA94C438();
  v162 = v161;
  v197 = v184;
  MEMORY[0x1EEE9AC00](v160);
  sub_1CA948D98();
  v163 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v196, v195, v160, v162, 0, 0, v184 - v154, v184 - v146);
  v166 = v201;
  v201[7] = v165;
  *(v127 + 120) = v166;
  v167 = v198;
  *(v127 + 144) = v192;
  *(v127 + 152) = v167;
  *(v127 + 160) = 0x657A69534657;
  *(v127 + 168) = 0xE600000000000000;
  v168 = v199;
  *(v127 + 184) = MEMORY[0x1E69E6158];
  *(v127 + 192) = v168;
  v169 = sub_1CA94C438();
  *&v199 = v170;
  v171 = sub_1CA94C438();
  v173 = v172;
  v201 = v184;
  MEMORY[0x1EEE9AC00](v171);
  v174 = v184 - v210;
  sub_1CA948D98();
  v175 = [v207 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  v176 = v184 - v209;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178 = sub_1CA2F9F14(v169, v199, v171, v173, 0, 0, v174, v176);
  *(v127 + 224) = v206;
  *(v127 + 200) = v178;
  sub_1CA94C1E8();
  v179 = sub_1CA2F864C();
  v180 = v205;
  *(v205 + 56) = v179;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v182 = v200;
  v200[43] = v181;
  v182[40] = v180;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}