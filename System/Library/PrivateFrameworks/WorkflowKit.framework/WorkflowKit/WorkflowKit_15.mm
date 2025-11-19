id sub_1CA3DF73C()
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
  *(inited + 200) = &unk_1F49F8B90;
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
  *(inited + 280) = 0xD000000000000015;
  *(inited + 288) = 0x80000001CA993900;
  v32 = sub_1CA94C368();
  *(inited + 344) = v31;
  *(inited + 312) = v32;
  *(inited + 320) = 1953720652;
  *(inited + 328) = 0xE400000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3DFB70()
{
  v603 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9B1F40;
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
  v632 = v12;
  v630 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v588 - v630;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v631 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v633 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v634 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v588 - v634;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v629 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v629;
  *(inited + 80) = v19;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD00000000000001ALL;
  *(inited + 128) = 0x80000001CA9B1FA0;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  v628 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v623 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438();
  v25 = v24;
  v26 = sub_1CA94C438();
  v28 = v27;
  v627 = &v588;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v588 - v630;
  sub_1CA948D98();
  v30 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v614 = inited;
  v31 = &v588 - v634;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v31);
  *(v20 + 64) = v629;
  *(v20 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v628;
  v35 = sub_1CA6B3784();
  v36 = v614;
  v614[20] = v35;
  v36[23] = v34;
  v36[24] = @"IconColor";
  v36[25] = 1851881795;
  v36[26] = 0xE400000000000000;
  v37 = MEMORY[0x1E69E6158];
  v36[28] = MEMORY[0x1E69E6158];
  v36[29] = @"IconSymbol";
  v36[30] = 0x6D69746B63697571;
  v36[31] = 0xE900000000000065;
  v36[33] = v37;
  v36[34] = @"Input";
  v38 = v36;
  v622 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v621 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x616964654D4657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v37;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v612;
  *(v39 + 192) = &unk_1F49F8BC0;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v628 = v46;
  v38[35] = v45;
  v38[38] = v46;
  v38[39] = @"InputPassthrough";
  *(v38 + 320) = 0;
  v38[43] = v41;
  v38[44] = @"Name";
  v47 = @"InputPassthrough";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v627 = &v588;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v588 - v630;
  sub_1CA948D98();
  v56 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v588 - v634;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  v60 = v614;
  v614[45] = v59;
  v61 = v629;
  v60[48] = v629;
  v60[49] = @"Output";
  v62 = swift_allocObject();
  *(v62 + 16) = v621;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x1E69E6158];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  *(v62 + 96) = 1;
  *(v62 + 120) = MEMORY[0x1E69E6370];
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v63 = @"Output";
  v64 = sub_1CA94C438();
  v626 = v65;
  v66 = sub_1CA94C438();
  v68 = v67;
  v627 = &v588;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v588 - v630;
  sub_1CA948D98();
  v70 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v588 - v634;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 144) = sub_1CA2F9F14(v64, v626, v66, v68, 0, 0, v69, v71);
  *(v62 + 168) = v61;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 216) = v612;
  *(v62 + 184) = 0xE500000000000000;
  *(v62 + 192) = &unk_1F49F8BF0;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v614;
  v614[50] = v74;
  v75[53] = v628;
  v75[54] = @"Parameters";
  v609 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v628 = swift_allocObject();
  *(v628 + 16) = xmmword_1CA985F20;
  v627 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_allocObject();
  *(v76 + 16) = v621;
  v601 = 0xD000000000000019;
  v602 = 0x80000001CA99B030;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD000000000000019;
  *(v76 + 48) = 0x80000001CA99B030;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"Key";
  *(v76 + 80) = 0x616964654D4657;
  *(v76 + 88) = 0xE700000000000000;
  *(v76 + 104) = v73;
  *(v76 + 112) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v618 = v80;
  v619 = v81;
  v620 = v82;
  v83 = @"Parameters";
  v624 = sub_1CA94C438();
  v617 = v84;
  v616 = sub_1CA94C438();
  v86 = v85;
  v625 = &v588;
  MEMORY[0x1EEE9AC00](v616);
  v87 = v630;
  sub_1CA948D98();
  v88 = v631;
  v89 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v588 - v634;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 120) = sub_1CA2F9F14(v624, v617, v616, v86, 0, 0, &v588 - v87, v90);
  v92 = v629;
  *(v76 + 144) = v629;
  *(v76 + 152) = @"Placeholder";
  v600 = @"Placeholder";
  v624 = sub_1CA94C438();
  v617 = v93;
  v94 = sub_1CA94C438();
  v96 = v95;
  v625 = &v588;
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948D98();
  v97 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v588 - v634;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v624, v617, v94, v96, 0, 0, &v588 - v87, v98);
  *(v76 + 184) = v92;
  *(v76 + 160) = v100;
  _s3__C3KeyVMa_0(0);
  v625 = v101;
  v624 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v628 + 32) = sub_1CA2F864C();
  v102 = swift_allocObject();
  *(v102 + 16) = v621;
  v599 = 0x80000001CA99E620;
  v611 = 0xD000000000000011;
  v103 = v618;
  v104 = v619;
  *(v102 + 32) = v618;
  *(v102 + 40) = 0xD000000000000011;
  *(v102 + 48) = 0x80000001CA99E620;
  v105 = MEMORY[0x1E69E6158];
  *(v102 + 64) = MEMORY[0x1E69E6158];
  *(v102 + 72) = @"DefaultValue";
  *(v102 + 80) = 0;
  *(v102 + 104) = MEMORY[0x1E69E6370];
  *(v102 + 112) = v104;
  v607 = 0x80000001CA9B20A0;
  *(v102 + 120) = 0xD000000000000010;
  *(v102 + 128) = 0x80000001CA9B20A0;
  v106 = v620;
  *(v102 + 144) = v105;
  *(v102 + 152) = v106;
  v107 = @"DefaultValue";
  v618 = v103;
  v619 = v104;
  v620 = v106;
  v617 = v107;
  v108 = sub_1CA94C438();
  v110 = v109;
  v111 = sub_1CA94C438();
  v113 = v112;
  *&v621 = &v588;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v588 - v630;
  sub_1CA948D98();
  v115 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v588 - v634;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v108, v110, v111, v113, 0, 0, v114, v116);
  *(v102 + 184) = v629;
  *(v102 + 160) = v118;
  sub_1CA94C1E8();
  *(v628 + 40) = sub_1CA2F864C();
  v119 = swift_allocObject();
  v615 = xmmword_1CA981380;
  *(v119 + 16) = xmmword_1CA981380;
  v605 = 0x80000001CA99C4A0;
  v610 = 0xD000000000000016;
  v121 = v617;
  v120 = v618;
  *(v119 + 32) = v618;
  *(v119 + 40) = 0xD000000000000016;
  *(v119 + 48) = 0x80000001CA99C4A0;
  v122 = MEMORY[0x1E69E6158];
  *(v119 + 64) = MEMORY[0x1E69E6158];
  *(v119 + 72) = v121;
  *(v119 + 80) = 4273229;
  *(v119 + 88) = 0xE300000000000000;
  *(v119 + 104) = v122;
  *(v119 + 112) = @"Items";
  *&v621 = swift_allocObject();
  *(v621 + 16) = xmmword_1CA981360;
  v123 = @"Items";
  v606 = v120;
  v592 = v121;
  *&v604 = v123;
  v124 = sub_1CA94C438();
  v616 = v125;
  v617 = v124;
  v126 = sub_1CA94C438();
  v613 = v127;
  v618 = &v588;
  MEMORY[0x1EEE9AC00](v126);
  v128 = v630;
  sub_1CA948D98();
  v129 = v631;
  v130 = [v631 bundleURL];
  v608 = &v588;
  MEMORY[0x1EEE9AC00](v130);
  v131 = v634;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v617, v616, v126, v613, 0, 0, &v588 - v128, &v588 - v131);
  *(v621 + 32) = v133;
  v134 = sub_1CA94C438();
  v616 = v135;
  v617 = v134;
  v136 = sub_1CA94C438();
  v613 = v137;
  v618 = &v588;
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948D98();
  v138 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v617, v616, v136, v613, 0, 0, &v588 - v128, &v588 - v131);
  v141 = v621;
  *(v621 + 40) = v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v608 = v142;
  *(v119 + 120) = v141;
  v143 = v619;
  v144 = v620;
  *(v119 + 144) = v142;
  *(v119 + 152) = v143;
  v598 = 0xD000000000000012;
  *(v119 + 160) = 0xD000000000000012;
  *(v119 + 168) = 0x80000001CA9B2140;
  *(v119 + 184) = MEMORY[0x1E69E6158];
  *(v119 + 192) = v144;
  v596 = v143;
  v597 = v144;
  v145 = sub_1CA94C438();
  v147 = v146;
  v148 = sub_1CA94C438();
  v150 = v149;
  *&v621 = &v588;
  MEMORY[0x1EEE9AC00](v148);
  v151 = &v588 - v630;
  sub_1CA948D98();
  v152 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = &v588 - v634;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 200) = sub_1CA2F9F14(v145, v147, v148, v150, 0, 0, v151, v153);
  *(v119 + 224) = v629;
  *(v119 + 232) = @"RequiredResources";
  v619 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v155 = swift_allocObject();
  *(v155 + 16) = v623;
  v156 = @"RequiredResources";
  v157 = swift_initStackObject();
  v621 = xmmword_1CA9813C0;
  *(v157 + 16) = xmmword_1CA9813C0;
  strcpy((v157 + 32), "WFParameterKey");
  *(v157 + 47) = -18;
  v158 = v607;
  *(v157 + 48) = 0xD000000000000010;
  *(v157 + 56) = v158;
  v616 = 0x80000001CA993570;
  v159 = MEMORY[0x1E69E6158];
  *(v157 + 72) = MEMORY[0x1E69E6158];
  *(v157 + 80) = 0xD000000000000010;
  *(v157 + 88) = 0x80000001CA993570;
  *(v157 + 96) = 1;
  *(v157 + 120) = MEMORY[0x1E69E6370];
  *(v157 + 128) = 0x72756F7365524657;
  v618 = 0x80000001CA993590;
  *(v157 + 168) = v159;
  v620 = 0xD00000000000001BLL;
  *(v157 + 136) = 0xEF7373616C436563;
  *(v157 + 144) = 0xD00000000000001BLL;
  *(v157 + 152) = 0x80000001CA993590;
  v594 = v156;
  *(v155 + 32) = sub_1CA94C1E8();
  v617 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v119 + 264) = v617;
  *(v119 + 240) = v155;
  sub_1CA94C1E8();
  *(v628 + 48) = sub_1CA2F864C();
  v160 = swift_allocObject();
  v593 = v160;
  *(v160 + 16) = v615;
  v161 = v606;
  v162 = v610;
  *(v160 + 32) = v606;
  *(v160 + 40) = v162;
  *(v160 + 48) = v605;
  v163 = v592;
  *(v160 + 64) = v159;
  *(v160 + 72) = v163;
  *(v160 + 80) = 0x6F72687473736150;
  *(v160 + 88) = 0xEB00000000686775;
  v164 = v604;
  *(v160 + 104) = v159;
  *(v160 + 112) = v164;
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_1CA981720;
  v595 = v161;
  v606 = v163;
  v166 = sub_1CA94C438();
  v590 = v167;
  v591 = v166;
  v168 = sub_1CA94C438();
  v589 = v169;
  v592 = &v588;
  MEMORY[0x1EEE9AC00](v168);
  v170 = &v588 - v630;
  sub_1CA948D98();
  v171 = v631;
  v172 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = v634;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175 = sub_1CA2F9F14(v591, v590, v168, v589, 0, 0, v170, &v588 - v173);
  v613 = v165;
  *(v165 + 32) = v175;
  v176 = sub_1CA94C438();
  v590 = v177;
  v591 = v176;
  v178 = sub_1CA94C438();
  v589 = v179;
  v592 = &v588;
  MEMORY[0x1EEE9AC00](v178);
  v180 = v630;
  sub_1CA948D98();
  v181 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v165 + 40) = sub_1CA2F9F14(v591, v590, v178, v589, 0, 0, &v588 - v180, &v588 - v173);
  v183 = sub_1CA94C438();
  v590 = v184;
  v591 = v183;
  v185 = sub_1CA94C438();
  v187 = v186;
  v592 = &v588;
  MEMORY[0x1EEE9AC00](v185);
  sub_1CA948D98();
  v188 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  v189 = v634;
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v191 = sub_1CA2F9F14(v591, v590, v185, v187, 0, 0, &v588 - v180, &v588 - v189);
  v192 = v613;
  v613[6] = v191;
  v193 = sub_1CA94C438();
  v590 = v194;
  v591 = v193;
  v195 = sub_1CA94C438();
  v589 = v196;
  v592 = &v588;
  MEMORY[0x1EEE9AC00](v195);
  v197 = v630;
  sub_1CA948D98();
  v198 = v631;
  v199 = [v631 bundleURL];
  v588 = &v588;
  MEMORY[0x1EEE9AC00](v199);
  sub_1CA948B68();

  v200 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v192 + 56) = sub_1CA2F9F14(v591, v590, v195, v589, 0, 0, &v588 - v197, &v588 - v189);
  v201 = sub_1CA94C438();
  v590 = v202;
  v591 = v201;
  v589 = sub_1CA94C438();
  v204 = v203;
  v592 = &v588;
  MEMORY[0x1EEE9AC00](v589);
  sub_1CA948D98();
  v205 = v198;
  v206 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v588 - v634;
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v209 = sub_1CA2F9F14(v591, v590, v589, v204, 0, 0, &v588 - v197, v207);
  v210 = v613;
  v613[8] = v209;
  v211 = sub_1CA94C438();
  v590 = v212;
  v591 = v211;
  v213 = sub_1CA94C438();
  v589 = v214;
  v592 = &v588;
  MEMORY[0x1EEE9AC00](v213);
  v215 = &v588 - v630;
  sub_1CA948D98();
  v216 = [v205 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  v217 = v634;
  sub_1CA948B68();

  v218 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v210 + 72) = sub_1CA2F9F14(v591, v590, v213, v589, 0, 0, v215, &v588 - v217);
  v219 = sub_1CA94C438();
  v590 = v220;
  v591 = v219;
  v221 = sub_1CA94C438();
  v589 = v222;
  v592 = &v588;
  MEMORY[0x1EEE9AC00](v221);
  v223 = v630;
  sub_1CA948D98();
  v224 = v631;
  v225 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v225);
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v227 = sub_1CA2F9F14(v591, v590, v221, v589, 0, 0, &v588 - v223, &v588 - v217);
  v228 = v613;
  v613[10] = v227;
  v229 = sub_1CA94C438();
  v590 = v230;
  v591 = v229;
  v231 = sub_1CA94C438();
  v589 = v232;
  v592 = &v588;
  MEMORY[0x1EEE9AC00](v231);
  sub_1CA948D98();
  v233 = [v224 bundleURL];
  MEMORY[0x1EEE9AC00](v233);
  v234 = &v588 - v634;
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v228 + 88) = sub_1CA2F9F14(v591, v590, v231, v589, 0, 0, &v588 - v223, v234);
  v236 = sub_1CA94C438();
  v590 = v237;
  v591 = v236;
  v238 = sub_1CA94C438();
  v240 = v239;
  v592 = &v588;
  MEMORY[0x1EEE9AC00](v238);
  v241 = v630;
  sub_1CA948D98();
  v242 = v631;
  v243 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v243);
  v244 = &v588 - v634;
  sub_1CA948B68();

  v245 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v246 = sub_1CA2F9F14(v591, v590, v238, v240, 0, 0, &v588 - v241, v244);
  v247 = v593;
  v248 = v613;
  v613[12] = v246;
  v247[15] = v248;
  v249 = v596;
  v250 = v597;
  v247[18] = v608;
  v247[19] = v249;
  v247[20] = 0x53616964654D4657;
  v247[21] = 0xEB00000000657A69;
  v247[23] = MEMORY[0x1E69E6158];
  v247[24] = v250;
  v596 = v249;
  v597 = v250;
  v251 = sub_1CA94C438();
  v591 = v252;
  v592 = v251;
  v253 = sub_1CA94C438();
  v255 = v254;
  v613 = &v588;
  MEMORY[0x1EEE9AC00](v253);
  sub_1CA948D98();
  v256 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v256);
  v257 = &v588 - v634;
  sub_1CA948B68();

  v258 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v247[25] = sub_1CA2F9F14(v592, v591, v253, v255, 0, 0, &v588 - v241, v257);
  v259 = v594;
  v247[28] = v629;
  v247[29] = v259;
  v260 = swift_allocObject();
  *(v260 + 16) = v623;
  v261 = swift_allocObject();
  *(v261 + 16) = v621;
  strcpy((v261 + 32), "WFParameterKey");
  *(v261 + 47) = -18;
  v262 = v607;
  *(v261 + 48) = 0xD000000000000010;
  *(v261 + 56) = v262;
  v263 = MEMORY[0x1E69E6158];
  *(v261 + 72) = MEMORY[0x1E69E6158];
  *(v261 + 80) = 0xD000000000000010;
  *(v261 + 88) = v616;
  *(v261 + 96) = 0;
  *(v261 + 120) = MEMORY[0x1E69E6370];
  *(v261 + 128) = 0x72756F7365524657;
  *(v261 + 168) = v263;
  *(v261 + 136) = 0xEF7373616C436563;
  v264 = v618;
  *(v261 + 144) = v620;
  *(v261 + 152) = v264;
  v607 = v259;
  *(v260 + 32) = sub_1CA94C1E8();
  v247[33] = v617;
  v247[30] = v260;
  sub_1CA94C1E8();
  *(v628 + 56) = sub_1CA2F864C();
  v265 = swift_allocObject();
  *(v265 + 16) = v615;
  v266 = v595;
  v267 = v610;
  *(v265 + 32) = v595;
  *(v265 + 40) = v267;
  v268 = v606;
  *(v265 + 48) = v605;
  *(v265 + 64) = v263;
  *(v265 + 72) = v268;
  *(v265 + 80) = 0x6C616D726F4ELL;
  *(v265 + 88) = 0xE600000000000000;
  v269 = v604;
  *(v265 + 104) = v263;
  *(v265 + 112) = v269;
  *(v265 + 120) = &unk_1F49F8C20;
  *(v265 + 144) = v612;
  *(v265 + 152) = @"ItemDisplayNames";
  v613 = swift_allocObject();
  *(v613 + 1) = xmmword_1CA981560;
  v609 = v266;
  v270 = @"ItemDisplayNames";
  *&v604 = sub_1CA94C438();
  v595 = v271;
  v272 = sub_1CA94C438();
  v594 = v273;
  v605 = &v588;
  MEMORY[0x1EEE9AC00](v272);
  v274 = v630;
  sub_1CA948D98();
  v275 = v631;
  v276 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v276);
  v277 = &v588 - v634;
  sub_1CA948B68();

  v278 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v279 = sub_1CA2F9F14(v604, v595, v272, v594, 0, 0, &v588 - v274, v277);
  v613[4] = v279;
  *&v604 = sub_1CA94C438();
  v595 = v280;
  v594 = sub_1CA94C438();
  v282 = v281;
  v605 = &v588;
  MEMORY[0x1EEE9AC00](v594);
  sub_1CA948D98();
  v283 = [v275 bundleURL];
  MEMORY[0x1EEE9AC00](v283);
  v284 = v634;
  sub_1CA948B68();

  v285 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v286 = sub_1CA2F9F14(v604, v595, v594, v282, 0, 0, &v588 - v274, &v588 - v284);
  v613[5] = v286;
  *&v604 = sub_1CA94C438();
  v595 = v287;
  v288 = sub_1CA94C438();
  v594 = v289;
  v605 = &v588;
  MEMORY[0x1EEE9AC00](v288);
  sub_1CA948D98();
  v290 = v631;
  v291 = [v631 bundleURL];
  v593 = &v588;
  MEMORY[0x1EEE9AC00](v291);
  sub_1CA948B68();

  v292 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v293 = sub_1CA2F9F14(v604, v595, v288, v594, 0, 0, &v588 - v274, &v588 - v284);
  v294 = v613;
  v613[6] = v293;
  *&v604 = sub_1CA94C438();
  v595 = v295;
  v296 = sub_1CA94C438();
  v594 = v297;
  v605 = &v588;
  MEMORY[0x1EEE9AC00](v296);
  v298 = v630;
  sub_1CA948D98();
  v299 = [v290 bundleURL];
  v593 = &v588;
  MEMORY[0x1EEE9AC00](v299);
  v300 = v634;
  sub_1CA948B68();

  v301 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v294 + 56) = sub_1CA2F9F14(v604, v595, v296, v594, 0, 0, &v588 - v298, &v588 - v300);
  *&v604 = sub_1CA94C438();
  v595 = v302;
  v303 = sub_1CA94C438();
  v594 = v304;
  v605 = &v588;
  MEMORY[0x1EEE9AC00](v303);
  v305 = &v588 - v298;
  sub_1CA948D98();
  v306 = v631;
  v307 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v307);
  sub_1CA948B68();

  v308 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v309 = sub_1CA2F9F14(v604, v595, v303, v594, 0, 0, v305, &v588 - v300);
  v310 = v613;
  v613[8] = v309;
  *(v265 + 160) = v310;
  v311 = v596;
  v312 = v597;
  *(v265 + 184) = v608;
  *(v265 + 192) = v311;
  strcpy((v265 + 200), "WFMediaSpeed");
  *(v265 + 213) = 0;
  *(v265 + 214) = -5120;
  *(v265 + 224) = MEMORY[0x1E69E6158];
  *(v265 + 232) = v312;
  v608 = v311;
  v613 = v312;
  *&v604 = sub_1CA94C438();
  v314 = v313;
  v315 = sub_1CA94C438();
  v317 = v316;
  v605 = &v588;
  MEMORY[0x1EEE9AC00](v315);
  v318 = &v588 - v630;
  sub_1CA948D98();
  v319 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v319);
  v320 = &v588 - v634;
  sub_1CA948B68();

  v321 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v322 = sub_1CA2F9F14(v604, v314, v315, v317, 0, 0, v318, v320);
  *(v265 + 264) = v629;
  *(v265 + 240) = v322;
  sub_1CA94C1E8();
  *(v628 + 64) = sub_1CA2F864C();
  v323 = swift_allocObject();
  v604 = xmmword_1CA981370;
  *(v323 + 16) = xmmword_1CA981370;
  v325 = v608;
  v324 = v609;
  v326 = v611;
  *(v323 + 32) = v609;
  *(v323 + 40) = v326;
  *(v323 + 48) = v599;
  v327 = MEMORY[0x1E69E6158];
  v328 = v606;
  *(v323 + 64) = MEMORY[0x1E69E6158];
  *(v323 + 72) = v328;
  *(v323 + 80) = 0;
  *(v323 + 104) = MEMORY[0x1E69E6370];
  *(v323 + 112) = v325;
  *(v323 + 120) = v620;
  *(v323 + 128) = 0x80000001CA9B23F0;
  v329 = v613;
  *(v323 + 144) = v327;
  *(v323 + 152) = v329;
  v606 = v324;
  v608 = v325;
  v609 = v329;
  v330 = sub_1CA94C438();
  v332 = v331;
  v333 = sub_1CA94C438();
  v335 = v334;
  v613 = &v588;
  MEMORY[0x1EEE9AC00](v333);
  v336 = &v588 - v630;
  sub_1CA948D98();
  v337 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v337);
  v338 = &v588 - v634;
  sub_1CA948B68();

  v339 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v323 + 160) = sub_1CA2F9F14(v330, v332, v333, v335, 0, 0, v336, v338);
  v340 = v607;
  *(v323 + 184) = v629;
  *(v323 + 192) = v340;
  v341 = swift_allocObject();
  *(v341 + 16) = v623;
  v342 = swift_allocObject();
  *(v342 + 16) = v621;
  strcpy((v342 + 32), "WFParameterKey");
  *(v342 + 47) = -18;
  *(v342 + 48) = 0x53616964654D4657;
  *(v342 + 56) = 0xEB00000000657A69;
  v343 = MEMORY[0x1E69E6158];
  v344 = v611;
  *(v342 + 72) = MEMORY[0x1E69E6158];
  *(v342 + 80) = v344;
  *(v342 + 88) = 0x80000001CA9A2F30;
  *(v342 + 96) = &unk_1F49F8C90;
  *(v342 + 120) = v612;
  *(v342 + 128) = 0x72756F7365524657;
  *(v342 + 168) = v343;
  *(v342 + 136) = 0xEF7373616C436563;
  v345 = v618;
  *(v342 + 144) = v620;
  *(v342 + 152) = v345;
  v613 = v340;
  *(v341 + 32) = sub_1CA94C1E8();
  *(v323 + 224) = v617;
  *(v323 + 200) = v341;
  sub_1CA94C1E8();
  *(v628 + 72) = sub_1CA2F864C();
  v346 = swift_allocObject();
  *(v346 + 16) = xmmword_1CA981300;
  *(v346 + 32) = @"AllowsDecimalNumbers";
  *(v346 + 40) = 1;
  v347 = v606;
  *(v346 + 64) = MEMORY[0x1E69E6370];
  *(v346 + 72) = v347;
  *(v346 + 80) = v610;
  *(v346 + 88) = 0x80000001CA99C180;
  *(v346 + 104) = v343;
  *(v346 + 112) = @"Description";
  v612 = v347;
  v348 = @"AllowsDecimalNumbers";
  v349 = @"Description";
  v350 = sub_1CA94C438();
  v606 = v351;
  v607 = v350;
  v352 = sub_1CA94C438();
  v605 = v353;
  v610 = &v588;
  MEMORY[0x1EEE9AC00](v352);
  v354 = v630;
  sub_1CA948D98();
  v355 = v631;
  v356 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v356);
  v357 = &v588 - v634;
  sub_1CA948B68();

  v358 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v359 = sub_1CA2F9F14(v607, v606, v352, v605, 0, 0, &v588 - v354, v357);
  v360 = v609;
  *(v346 + 120) = v359;
  v361 = v608;
  *(v346 + 144) = v629;
  *(v346 + 152) = v361;
  *(v346 + 160) = v598;
  *(v346 + 168) = 0x80000001CA9B2590;
  *(v346 + 184) = MEMORY[0x1E69E6158];
  *(v346 + 192) = v360;
  v606 = v361;
  v607 = v360;
  v362 = sub_1CA94C438();
  v608 = v363;
  v609 = v362;
  v364 = sub_1CA94C438();
  v605 = v365;
  v610 = &v588;
  MEMORY[0x1EEE9AC00](v364);
  sub_1CA948D98();
  v366 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v366);
  v367 = v634;
  sub_1CA948B68();

  v368 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v346 + 200) = sub_1CA2F9F14(v609, v608, v364, v605, 0, 0, &v588 - v354, &v588 - v367);
  v369 = v629;
  v370 = v600;
  *(v346 + 224) = v629;
  *(v346 + 232) = v370;
  v610 = v370;
  v608 = sub_1CA94C438();
  v605 = v371;
  v372 = sub_1CA94C438();
  v374 = v373;
  v609 = &v588;
  MEMORY[0x1EEE9AC00](v372);
  v375 = &v588 - v630;
  sub_1CA948D98();
  v376 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v376);
  sub_1CA948B68();

  v377 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v346 + 240) = sub_1CA2F9F14(v608, v605, v372, v374, 0, 0, v375, &v588 - v367);
  v378 = v613;
  *(v346 + 264) = v369;
  *(v346 + 272) = v378;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v379 = swift_allocObject();
  *(v379 + 16) = v623;
  v608 = v378;
  v380 = MEMORY[0x1E69E6158];
  *(v379 + 32) = sub_1CA94C1E8();
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v346 + 280) = v379;
  *(v346 + 304) = v381;
  *(v346 + 312) = @"TextAlignment";
  *(v346 + 344) = v380;
  *(v346 + 320) = 0x7468676952;
  *(v346 + 328) = 0xE500000000000000;
  v609 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v628 + 80) = sub_1CA2F864C();
  v382 = swift_allocObject();
  *(v382 + 16) = v621;
  v613 = 0xD000000000000014;
  v383 = v612;
  *(v382 + 32) = v612;
  *(v382 + 40) = 0xD000000000000014;
  *(v382 + 48) = 0x80000001CA9B2600;
  v384 = v606;
  *(v382 + 64) = v380;
  *(v382 + 72) = v384;
  *(v382 + 80) = 0x617461646174654DLL;
  *(v382 + 88) = 0xE800000000000000;
  *(v382 + 104) = v380;
  v385 = v607;
  *(v382 + 112) = v607;
  v605 = v383;
  v600 = v384;
  v607 = v385;
  v386 = sub_1CA94C438();
  v388 = v387;
  v389 = sub_1CA94C438();
  v391 = v390;
  v612 = &v588;
  MEMORY[0x1EEE9AC00](v389);
  v392 = &v588 - v630;
  sub_1CA948D98();
  v393 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v393);
  v394 = &v588 - v634;
  sub_1CA948B68();

  v395 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v396 = sub_1CA2F9F14(v386, v388, v389, v391, 0, 0, v392, v394);
  *(v382 + 144) = v629;
  *(v382 + 120) = v396;
  sub_1CA94C1E8();
  *(v628 + 88) = sub_1CA2F864C();
  v397 = swift_allocObject();
  *(v397 + 16) = v615;
  v612 = 0x80000001CA99B500;
  v398 = v605;
  v399 = v613;
  *(v397 + 32) = v605;
  *(v397 + 40) = v399;
  *(v397 + 48) = 0x80000001CA99B500;
  v400 = MEMORY[0x1E69E6158];
  v401 = v600;
  *(v397 + 64) = MEMORY[0x1E69E6158];
  *(v397 + 72) = v401;
  *(v397 + 80) = 0x61646174654D4657;
  *(v397 + 88) = 0xEF656C7469546174;
  v402 = v607;
  *(v397 + 104) = v400;
  *(v397 + 112) = v402;
  v606 = v398;
  v605 = v401;
  v607 = v402;
  v403 = sub_1CA94C438();
  v598 = v404;
  v599 = v403;
  v597 = sub_1CA94C438();
  v406 = v405;
  v600 = &v588;
  MEMORY[0x1EEE9AC00](v597);
  v407 = v630;
  sub_1CA948D98();
  v408 = v631;
  v409 = [v631 bundleURL];
  v596 = &v588;
  MEMORY[0x1EEE9AC00](v409);
  v410 = &v588 - v634;
  sub_1CA948B68();

  v411 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v397 + 120) = sub_1CA2F9F14(v599, v598, v597, v406, 0, 0, &v588 - v407, v410);
  v412 = v629;
  v413 = v610;
  *(v397 + 144) = v629;
  *(v397 + 152) = v413;
  v610 = v413;
  v414 = sub_1CA94C438();
  v598 = v415;
  v599 = v414;
  v416 = sub_1CA94C438();
  v418 = v417;
  v600 = &v588;
  MEMORY[0x1EEE9AC00](v416);
  v419 = &v588 - v407;
  sub_1CA948D98();
  v420 = [v408 bundleURL];
  MEMORY[0x1EEE9AC00](v420);
  v421 = &v588 - v634;
  sub_1CA948B68();

  v422 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v397 + 160) = sub_1CA2F9F14(v599, v598, v416, v418, 0, 0, v419, v421);
  v423 = v608;
  *(v397 + 184) = v412;
  *(v397 + 192) = v423;
  v424 = swift_allocObject();
  *(v424 + 16) = v623;
  v425 = swift_allocObject();
  *(v425 + 16) = v621;
  strcpy((v425 + 32), "WFParameterKey");
  *(v425 + 47) = -18;
  *(v425 + 48) = 0x617461646174654DLL;
  *(v425 + 56) = 0xE800000000000000;
  v426 = MEMORY[0x1E69E6158];
  *(v425 + 72) = MEMORY[0x1E69E6158];
  *(v425 + 80) = 0xD000000000000010;
  *(v425 + 88) = v616;
  *(v425 + 96) = 1;
  *(v425 + 120) = MEMORY[0x1E69E6370];
  *(v425 + 128) = 0x72756F7365524657;
  *(v425 + 168) = v426;
  *(v425 + 136) = 0xEF7373616C436563;
  v427 = v618;
  *(v425 + 144) = v620;
  *(v425 + 152) = v427;
  v600 = v423;
  *(v424 + 32) = sub_1CA94C1E8();
  *(v397 + 200) = v424;
  v428 = v609;
  *(v397 + 224) = v617;
  *(v397 + 232) = v428;
  *(v397 + 264) = v426;
  *(v397 + 240) = 0x7468676952;
  *(v397 + 248) = 0xE500000000000000;
  v609 = v428;
  sub_1CA94C1E8();
  *(v628 + 96) = sub_1CA2F864C();
  v429 = swift_allocObject();
  *(v429 + 16) = v615;
  v431 = v605;
  v430 = v606;
  v432 = v612;
  v433 = v613;
  *(v429 + 32) = v606;
  *(v429 + 40) = v433;
  *(v429 + 48) = v432;
  *(v429 + 64) = v426;
  *(v429 + 72) = v431;
  *(v429 + 80) = 0xD000000000000010;
  *(v429 + 88) = 0x80000001CA9B2690;
  v434 = v607;
  *(v429 + 104) = v426;
  *(v429 + 112) = v434;
  v606 = v430;
  v605 = v431;
  v608 = v434;
  v435 = sub_1CA94C438();
  v598 = v436;
  v599 = v435;
  v437 = sub_1CA94C438();
  v597 = v438;
  v607 = &v588;
  MEMORY[0x1EEE9AC00](v437);
  v439 = v630;
  sub_1CA948D98();
  v440 = v631;
  v441 = [v631 bundleURL];
  v596 = &v588;
  MEMORY[0x1EEE9AC00](v441);
  v442 = v634;
  sub_1CA948B68();

  v443 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v429 + 120) = sub_1CA2F9F14(v599, v598, v437, v597, 0, 0, &v588 - v439, &v588 - v442);
  v444 = v629;
  v445 = v610;
  *(v429 + 144) = v629;
  *(v429 + 152) = v445;
  v610 = v445;
  v446 = sub_1CA94C438();
  v598 = v447;
  v599 = v446;
  v597 = sub_1CA94C438();
  v449 = v448;
  v607 = &v588;
  MEMORY[0x1EEE9AC00](v597);
  sub_1CA948D98();
  v450 = [v440 bundleURL];
  MEMORY[0x1EEE9AC00](v450);
  sub_1CA948B68();

  v451 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v429 + 160) = sub_1CA2F9F14(v599, v598, v597, v449, 0, 0, &v588 - v439, &v588 - v442);
  v452 = v600;
  *(v429 + 184) = v444;
  *(v429 + 192) = v452;
  v453 = swift_allocObject();
  *(v453 + 16) = v623;
  v454 = swift_allocObject();
  *(v454 + 16) = v621;
  strcpy((v454 + 32), "WFParameterKey");
  *(v454 + 47) = -18;
  *(v454 + 48) = 0x617461646174654DLL;
  *(v454 + 56) = 0xE800000000000000;
  v455 = MEMORY[0x1E69E6158];
  *(v454 + 72) = MEMORY[0x1E69E6158];
  *(v454 + 80) = 0xD000000000000010;
  *(v454 + 88) = v616;
  *(v454 + 96) = 1;
  *(v454 + 120) = MEMORY[0x1E69E6370];
  *(v454 + 128) = 0x72756F7365524657;
  *(v454 + 168) = v455;
  *(v454 + 136) = 0xEF7373616C436563;
  v456 = v618;
  *(v454 + 144) = v620;
  *(v454 + 152) = v456;
  v599 = v452;
  *(v453 + 32) = sub_1CA94C1E8();
  *(v429 + 200) = v453;
  v457 = v609;
  *(v429 + 224) = v617;
  *(v429 + 232) = v457;
  *(v429 + 264) = v455;
  *(v429 + 240) = 0x7468676952;
  *(v429 + 248) = 0xE500000000000000;
  v609 = v457;
  sub_1CA94C1E8();
  *(v628 + 104) = sub_1CA2F864C();
  v458 = swift_allocObject();
  *(v458 + 16) = v615;
  v460 = v605;
  v459 = v606;
  v461 = v612;
  v462 = v613;
  *(v458 + 32) = v606;
  *(v458 + 40) = v462;
  *(v458 + 48) = v461;
  *(v458 + 64) = v455;
  *(v458 + 72) = v460;
  *(v458 + 80) = 0x61646174654D4657;
  *(v458 + 88) = 0xEF6D75626C416174;
  v463 = v608;
  *(v458 + 104) = v455;
  *(v458 + 112) = v463;
  v607 = v459;
  v600 = v460;
  v605 = v463;
  v606 = sub_1CA94C438();
  v598 = v464;
  v597 = sub_1CA94C438();
  v466 = v465;
  v608 = &v588;
  MEMORY[0x1EEE9AC00](v597);
  sub_1CA948D98();
  v467 = v631;
  v468 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v468);
  v469 = &v588 - v634;
  sub_1CA948B68();

  v470 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v458 + 120) = sub_1CA2F9F14(v606, v598, v597, v466, 0, 0, &v588 - v439, v469);
  v471 = v629;
  v472 = v610;
  *(v458 + 144) = v629;
  *(v458 + 152) = v472;
  v606 = v472;
  v608 = sub_1CA94C438();
  v598 = v473;
  v474 = sub_1CA94C438();
  v476 = v475;
  v610 = &v588;
  MEMORY[0x1EEE9AC00](v474);
  v477 = &v588 - v630;
  sub_1CA948D98();
  v478 = [v467 bundleURL];
  MEMORY[0x1EEE9AC00](v478);
  v479 = &v588 - v634;
  sub_1CA948B68();

  v480 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v458 + 160) = sub_1CA2F9F14(v608, v598, v474, v476, 0, 0, v477, v479);
  v481 = v599;
  *(v458 + 184) = v471;
  *(v458 + 192) = v481;
  v482 = swift_allocObject();
  *(v482 + 16) = v623;
  v483 = swift_allocObject();
  *(v483 + 16) = v621;
  strcpy((v483 + 32), "WFParameterKey");
  *(v483 + 47) = -18;
  *(v483 + 48) = 0x617461646174654DLL;
  *(v483 + 56) = 0xE800000000000000;
  v484 = MEMORY[0x1E69E6158];
  *(v483 + 72) = MEMORY[0x1E69E6158];
  *(v483 + 80) = 0xD000000000000010;
  *(v483 + 88) = v616;
  *(v483 + 96) = 1;
  *(v483 + 120) = MEMORY[0x1E69E6370];
  *(v483 + 128) = 0x72756F7365524657;
  *(v483 + 168) = v484;
  *(v483 + 136) = 0xEF7373616C436563;
  v485 = v618;
  *(v483 + 144) = v620;
  *(v483 + 152) = v485;
  v599 = v481;
  *(v482 + 32) = sub_1CA94C1E8();
  *(v458 + 200) = v482;
  v486 = v609;
  *(v458 + 224) = v617;
  *(v458 + 232) = v486;
  *(v458 + 264) = v484;
  *(v458 + 240) = 0x7468676952;
  *(v458 + 248) = 0xE500000000000000;
  v610 = v486;
  sub_1CA94C1E8();
  *(v628 + 112) = sub_1CA2F864C();
  v487 = swift_allocObject();
  *(v487 + 16) = v615;
  v488 = v607;
  v489 = v612;
  v490 = v613;
  *(v487 + 32) = v607;
  *(v487 + 40) = v490;
  *(v487 + 48) = v489;
  v491 = v600;
  *(v487 + 64) = v484;
  *(v487 + 72) = v491;
  *(v487 + 80) = 0x61646174654D4657;
  *(v487 + 88) = 0xEF65726E65476174;
  v492 = v605;
  *(v487 + 104) = v484;
  *(v487 + 112) = v492;
  v608 = v488;
  v607 = v491;
  v609 = v492;
  v600 = sub_1CA94C438();
  v598 = v493;
  v494 = sub_1CA94C438();
  v597 = v495;
  v605 = &v588;
  MEMORY[0x1EEE9AC00](v494);
  v496 = v630;
  sub_1CA948D98();
  v497 = v631;
  v498 = [v631 bundleURL];
  v596 = &v588;
  MEMORY[0x1EEE9AC00](v498);
  v499 = v634;
  sub_1CA948B68();

  v500 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v487 + 120) = sub_1CA2F9F14(v600, v598, v494, v597, 0, 0, &v588 - v496, &v588 - v499);
  v501 = v629;
  v502 = v606;
  *(v487 + 144) = v629;
  *(v487 + 152) = v502;
  v606 = v502;
  v600 = sub_1CA94C438();
  v598 = v503;
  v597 = sub_1CA94C438();
  v505 = v504;
  v605 = &v588;
  MEMORY[0x1EEE9AC00](v597);
  v506 = &v588 - v496;
  sub_1CA948D98();
  v507 = [v497 bundleURL];
  MEMORY[0x1EEE9AC00](v507);
  sub_1CA948B68();

  v508 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v487 + 160) = sub_1CA2F9F14(v600, v598, v597, v505, 0, 0, v506, &v588 - v499);
  v509 = v599;
  *(v487 + 184) = v501;
  *(v487 + 192) = v509;
  v510 = swift_allocObject();
  *(v510 + 16) = v623;
  v511 = swift_allocObject();
  *(v511 + 16) = v621;
  strcpy((v511 + 32), "WFParameterKey");
  *(v511 + 47) = -18;
  *(v511 + 48) = 0x617461646174654DLL;
  *(v511 + 56) = 0xE800000000000000;
  v512 = MEMORY[0x1E69E6158];
  *(v511 + 72) = MEMORY[0x1E69E6158];
  *(v511 + 80) = 0xD000000000000010;
  *(v511 + 88) = v616;
  *(v511 + 96) = 1;
  *(v511 + 120) = MEMORY[0x1E69E6370];
  *(v511 + 128) = 0x72756F7365524657;
  *(v511 + 168) = v512;
  *(v511 + 136) = 0xEF7373616C436563;
  v513 = v618;
  *(v511 + 144) = v620;
  *(v511 + 152) = v513;
  v605 = v509;
  *(v510 + 32) = sub_1CA94C1E8();
  *(v487 + 200) = v510;
  v514 = v610;
  *(v487 + 224) = v617;
  *(v487 + 232) = v514;
  *(v487 + 264) = v512;
  *(v487 + 240) = 0x7468676952;
  *(v487 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v628 + 120) = sub_1CA2F864C();
  v515 = swift_allocObject();
  *(v515 + 16) = v615;
  v516 = v612;
  v517 = v613;
  *(v515 + 32) = v608;
  *(v515 + 40) = v517;
  *(v515 + 48) = v516;
  v518 = v607;
  *(v515 + 64) = v512;
  *(v515 + 72) = v518;
  strcpy((v515 + 80), "WFMetadataYear");
  *(v515 + 95) = -18;
  v519 = v609;
  *(v515 + 104) = v512;
  *(v515 + 112) = v519;
  v520 = sub_1CA94C438();
  v612 = v521;
  v613 = v520;
  v522 = sub_1CA94C438();
  v600 = v523;
  *&v615 = &v588;
  MEMORY[0x1EEE9AC00](v522);
  v524 = v630;
  sub_1CA948D98();
  v525 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v525);
  v526 = v634;
  sub_1CA948B68();

  v527 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v515 + 120) = sub_1CA2F9F14(v613, v612, v522, v600, 0, 0, &v588 - v524, &v588 - v526);
  v528 = v629;
  v529 = v606;
  *(v515 + 144) = v629;
  *(v515 + 152) = v529;
  v530 = sub_1CA94C438();
  v612 = v531;
  v613 = v530;
  v532 = sub_1CA94C438();
  v600 = v533;
  *&v615 = &v588;
  MEMORY[0x1EEE9AC00](v532);
  sub_1CA948D98();
  v534 = v631;
  v535 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v535);
  sub_1CA948B68();

  v536 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v515 + 160) = sub_1CA2F9F14(v613, v612, v532, v600, 0, 0, &v588 - v524, &v588 - v526);
  v537 = v605;
  *(v515 + 184) = v528;
  *(v515 + 192) = v537;
  v538 = swift_allocObject();
  *(v538 + 16) = v623;
  v539 = swift_allocObject();
  *(v539 + 16) = v621;
  strcpy((v539 + 32), "WFParameterKey");
  *(v539 + 47) = -18;
  *(v539 + 48) = 0x617461646174654DLL;
  *(v539 + 56) = 0xE800000000000000;
  v540 = MEMORY[0x1E69E6158];
  *(v539 + 72) = MEMORY[0x1E69E6158];
  *(v539 + 80) = 0xD000000000000010;
  *(v539 + 88) = v616;
  *(v539 + 96) = 1;
  *(v539 + 120) = MEMORY[0x1E69E6370];
  *(v539 + 128) = 0x72756F7365524657;
  *(v539 + 168) = v540;
  *(v539 + 136) = 0xEF7373616C436563;
  v541 = v618;
  *(v539 + 144) = v620;
  *(v539 + 152) = v541;
  v542 = v540;
  *(v538 + 32) = sub_1CA94C1E8();
  *(v515 + 200) = v538;
  v543 = v610;
  *(v515 + 224) = v617;
  *(v515 + 232) = v543;
  *(v515 + 264) = v542;
  *(v515 + 240) = 0x7468676952;
  *(v515 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v628 + 128) = sub_1CA2F864C();
  v544 = swift_allocObject();
  *(v544 + 16) = v604;
  v546 = v601;
  v545 = v602;
  *(v544 + 32) = v608;
  *(v544 + 40) = v546;
  *(v544 + 48) = v545;
  v547 = v607;
  *(v544 + 64) = v542;
  *(v544 + 72) = v547;
  *(v544 + 80) = v611;
  *(v544 + 88) = 0x80000001CA9B2800;
  v548 = v609;
  *(v544 + 104) = v542;
  *(v544 + 112) = v548;
  *&v615 = sub_1CA94C438();
  v613 = v549;
  v550 = sub_1CA94C438();
  v612 = v551;
  v626 = &v588;
  MEMORY[0x1EEE9AC00](v550);
  v552 = v630;
  sub_1CA948D98();
  v553 = [v534 bundleURL];
  v611 = &v588;
  MEMORY[0x1EEE9AC00](v553);
  v554 = v634;
  sub_1CA948B68();

  v555 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v544 + 120) = sub_1CA2F9F14(v615, v613, v550, v612, 0, 0, &v588 - v552, &v588 - v554);
  v556 = v606;
  *(v544 + 144) = v629;
  *(v544 + 152) = v556;
  *&v615 = sub_1CA94C438();
  v613 = v557;
  v558 = sub_1CA94C438();
  v612 = v559;
  v626 = &v588;
  MEMORY[0x1EEE9AC00](v558);
  v560 = v552;
  sub_1CA948D98();
  v561 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v561);
  sub_1CA948B68();

  v562 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v544 + 160) = sub_1CA2F9F14(v615, v613, v558, v612, 0, 0, &v588 - v552, &v588 - v554);
  v563 = v605;
  *(v544 + 184) = v629;
  *(v544 + 192) = v563;
  v564 = swift_allocObject();
  *(v564 + 16) = v623;
  v565 = swift_allocObject();
  *(v565 + 16) = v621;
  strcpy((v565 + 32), "WFParameterKey");
  *(v565 + 47) = -18;
  *(v565 + 48) = 0x617461646174654DLL;
  *(v565 + 56) = 0xE800000000000000;
  v566 = MEMORY[0x1E69E6158];
  *(v565 + 72) = MEMORY[0x1E69E6158];
  *(v565 + 80) = 0xD000000000000010;
  *(v565 + 88) = v616;
  *(v565 + 96) = 1;
  *(v565 + 120) = MEMORY[0x1E69E6370];
  *(v565 + 128) = 0x72756F7365524657;
  *(v565 + 168) = v566;
  *(v565 + 136) = 0xEF7373616C436563;
  v567 = v618;
  *(v565 + 144) = v620;
  *(v565 + 152) = v567;
  *(v564 + 32) = sub_1CA94C1E8();
  *(v544 + 224) = v617;
  *(v544 + 200) = v564;
  sub_1CA94C1E8();
  v568 = sub_1CA2F864C();
  v569 = v628;
  *(v628 + 136) = v568;
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v571 = v614;
  v614[55] = v569;
  v571[58] = v570;
  v571[59] = @"ParameterSummary";
  v572 = @"ParameterSummary";
  v573 = sub_1CA94C438();
  v575 = v574;
  v576 = sub_1CA94C438();
  v578 = v577;
  MEMORY[0x1EEE9AC00](v576);
  sub_1CA948D98();
  v579 = [v631 bundleURL];
  MEMORY[0x1EEE9AC00](v579);
  v580 = &v588 - v634;
  sub_1CA948B68();

  v581 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v582 = sub_1CA2F9F14(v573, v575, v576, v578, 0, 0, &v588 - v560, v580);
  v583 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v584 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v585 = v614;
  v614[60] = v583;
  v585[63] = v584;
  v585[64] = @"ResidentCompatible";
  v585[68] = MEMORY[0x1E69E6370];
  *(v585 + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v586 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA3E4650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1CA271524();
    v5 = sub_1CA2BE29C(v2);
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

uint64_t sub_1CA3E4888(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v57 = a1;
  v58 = a2;
  OUTLINED_FUNCTION_4_12();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v59 = v17 - v16;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_12();
  v61 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - v25;
  v27 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  v55 = v29 - v28;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_12();
  v49 = v31;
  v50 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v46 - v35;
  v37 = sub_1CA94CA28();
  if (!v37)
  {
    return sub_1CA94C6B8();
  }

  v60 = v37;
  v64 = sub_1CA94D548();
  v51 = sub_1CA94D558();
  sub_1CA94D4F8();
  result = sub_1CA94C9F8();
  if ((v60 & 0x8000000000000000) == 0)
  {
    v46 = v12;
    v47 = a5;
    v39 = 0;
    v52 = (v61 + 16);
    v53 = v61 + 8;
    v54 = v8;
    while (!__OFADD__(v39, 1))
    {
      v61 = v39 + 1;
      v40 = sub_1CA94CB28();
      (*v52)(v26);
      v40(v63, 0);
      v41 = v62;
      v57(v26, v59);
      if (v41)
      {
        v44 = OUTLINED_FUNCTION_16_12();
        v45(v44);
        (*(v49 + 8))(v36, v50);

        return (*(v46 + 32))(v48, v59, v47);
      }

      v62 = 0;
      v42 = OUTLINED_FUNCTION_16_12();
      v43(v42);
      sub_1CA94D538();
      result = sub_1CA94CA68();
      ++v39;
      if (v61 == v60)
      {
        (*(v49 + 8))(v36, v50);
        return v64;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CA3E4C5C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA25B410(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCAA22D0](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_1CA3E4D48@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_1CA2C9578(v7, v9);
      v8 = v4(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_0(v9);
      }

      if (v8)
      {
        return sub_1CA27F268(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

id TableTemplateValue.__allocating_init(compoundType:rows:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = objc_allocWithZone(v1);
  return TableTemplateValue.init(compoundType:rows:)(v2, v0);
}

id TableTemplateValue.init(compoundType:rows:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  *(v2 + qword_1EC444E10) = a1;
  *(v2 + qword_1EC444E18) = a2;
  v5 = *((v4 & v3) + 0x50);
  v6 = *((v4 & v3) + 0x58);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for TableTemplateValue();
  return objc_msgSendSuper2(&v8, sel_init);
}

id TableTemplateValue.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v5 = sub_1CA94CF78();
  if (!v5)
  {

    v12 = *(v4 + 80);
LABEL_6:
    v13 = *(v4 + 88);
    type metadata accessor for TableTemplateValue();
    OUTLINED_FUNCTION_93();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  v7 = sub_1CA94C978();
  v8 = *(v4 + 80);
  v9 = sub_1CA94CF88();
  if (!v9)
  {

    goto LABEL_6;
  }

  *(v2 + qword_1EC444E10) = v7;
  *(v2 + qword_1EC444E18) = v9;
  v10 = *(v4 + 88);
  v15.receiver = v2;
  v15.super_class = type metadata accessor for TableTemplateValue();
  v11 = objc_msgSendSuper2(&v15, sel_init);

  return v11;
}

void sub_1CA3E50D4(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *(v1 + qword_1EC444E10);
  v6 = sub_1CA94C988();
  v7 = sub_1CA94C368();
  [a1 encodeObject:v6 forKey:v7];

  v8 = *(v1 + qword_1EC444E18);
  v9 = *((v4 & v3) + 0x50);
  v10 = sub_1CA94C648();
  v11 = sub_1CA94C368();
  [a1 encodeObject:v10 forKey:v11];
}

void sub_1CA3E51E4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1CA3E50D4(v4);
}

id TableTemplateValue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TableTemplateValue.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TableTemplateValue();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t TableTemplateRowState.summaryFormatString.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  result = (*(a1 + 80))();
  if ((result & 1) != 0 || (v5 = *(a1 + 152), v6 = OUTLINED_FUNCTION_69(), v8 = *(v7(v6) + 16), result = , !v8))
  {
    v14 = 9;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_69();
    TableTemplateRowState.activeOperator.getter(v9, v10, v11);
    if (v16)
    {
      sub_1CA27F268(&v15, v17);
      v12 = v18;
      v13 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v13 + 40))(v12, v13);
      return __swift_destroy_boxed_opaque_existential_0(v17);
    }

    result = sub_1CA3E585C(&v15);
    v14 = 8;
  }

  *a2 = v14;
  return result;
}

void TableTemplateRowState.activeOperator.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_4_12();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  if ((*(v15 + 80))())
  {
    goto LABEL_2;
  }

  v16 = *(a2 + 152);
  v17 = OUTLINED_FUNCTION_69();
  v19 = v18(v17);
  MEMORY[0x1EEE9AC00](v19);
  *(&v37 - 4) = a1;
  *(&v37 - 3) = a2;
  *(&v37 - 2) = v3;
  sub_1CA3E4D48(sub_1CA3E5E2C, v19, &v40);

  if (v41)
  {
    sub_1CA27F268(&v40, &v37);
    sub_1CA27F268(&v37, a3);
    return;
  }

  sub_1CA3E585C(&v40);
  (*(v8 + 16))(v14, v3, a1);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_2:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v20 = v39;
  if (v38 != 1)
  {
LABEL_12:

    goto LABEL_2;
  }

  if (!v37)
  {

    v30 = OUTLINED_FUNCTION_52_0();
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    *(a3 + 32) = OUTLINED_FUNCTION_4_27(&qword_1EC444E38);
    v32 = swift_allocObject();
    *a3 = v32;
    *(v32 + 16) = 0;
    goto LABEL_17;
  }

  if (v37 == 2)
  {

    v25 = OUTLINED_FUNCTION_52_0();
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    *(a3 + 32) = OUTLINED_FUNCTION_4_27(&qword_1EC444E38);
    v27 = swift_allocObject();
    *a3 = v27;
    *(v27 + 16) = 2;
LABEL_17:
    OUTLINED_FUNCTION_7_17();
    *(v33 + 24) = v34;
    *(v33 + 32) = v35;
    *(v33 + 40) = 1;
    return;
  }

  if (v37 != 99)
  {
    if (v37 == 4)
    {

      v21 = OUTLINED_FUNCTION_52_0();
      *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      *(a3 + 32) = sub_1CA25C3BC(&unk_1EC444E48, &qword_1EC444E40, &qword_1CA98F950);
      OUTLINED_FUNCTION_7_17();
      *a3 = v23;
      *(a3 + 8) = v24;
      *(a3 + 16) = 1;
      return;
    }

    goto LABEL_12;
  }

  if (v39)
  {
    v28 = [v39 isCaseInsensitive];
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
    OUTLINED_FUNCTION_3_22();
    *(a3 + 32) = sub_1CA25C3BC(v29, &qword_1EC444E20, &unk_1CA9917A0);

    *a3 = 0xD000000000000019;
    *(a3 + 8) = 0x80000001CA9B28F0;
    *(a3 + 16) = 0;
    *(a3 + 17) = v28;
  }

  else
  {
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
    OUTLINED_FUNCTION_3_22();
    *(a3 + 32) = sub_1CA25C3BC(v36, &qword_1EC444E20, &unk_1CA9917A0);

    *a3 = 0xD000000000000019;
    *(a3 + 8) = 0x80000001CA9B28F0;
    *(a3 + 16) = 0;
  }
}

uint64_t sub_1CA3E585C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4456B0, &unk_1CA985F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA3E58C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v49 = a3;
  v52 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v43 - v6;
  v7 = sub_1CA94D098();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  v8 = *(v45 + 64);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v47 = &v43 - v10;
  v51 = *(v7 - 8);
  v11 = v51;
  v12 = *(v51 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = *(v21 + 24);
  v25 = v21;
  v26 = v49;
  v24(v20, v25);
  v28 = v47;
  v27 = AssociatedTypeWitness;
  v29 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v19, v29 ^ 1u, 1, v27);
  (*(v53 + 128))(v26);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v27);
  v30 = *(TupleTypeMetadata2 + 48);
  v52 = v11;
  v31 = v11;
  v32 = v27;
  v33 = *(v31 + 16);
  v33(v28, v19, v7);
  v33(v28 + v30, v17, v7);
  if (__swift_getEnumTagSinglePayload(v28, 1, v32) != 1)
  {
    v43 = v17;
    v33(v50, v28, v7);
    v36 = v32;
    if (__swift_getEnumTagSinglePayload(v28 + v30, 1, v32) != 1)
    {
      TupleTypeMetadata2 = v19;
      v37 = v46;
      v38 = v44;
      (*(v46 + 32))(v44, v28 + v30, v36);
      v39 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
      v40 = v50;
      v35 = sub_1CA94C358();
      v41 = *(v37 + 8);
      v41(v38, v36);
      v34 = *(v51 + 8);
      v34(v43, v7);
      v41(v40, v36);
      v19 = TupleTypeMetadata2;
      v34(v28, v7);
      goto LABEL_8;
    }

    v34 = *(v51 + 8);
    v34(v43, v7);
    (*(v46 + 8))(v50, v32);
    goto LABEL_6;
  }

  v34 = *(v51 + 8);
  v34(v17, v7);
  if (__swift_getEnumTagSinglePayload(v28 + v30, 1, v32) != 1)
  {
LABEL_6:
    (*(v45 + 8))(v28, TupleTypeMetadata2);
    v35 = 0;
    goto LABEL_8;
  }

  v34(v28, v7);
  v35 = 1;
LABEL_8:
  v34(v19, v7);
  return v35 & 1;
}

void __swiftcall TableTemplateRowState.makeOperatorParameter(key:)(WFParameter *__return_ptr retstr, Swift::String key)
{
  v4 = v3;
  v5 = v2;
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_4_12();
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  (*(v11 + 16))(v10 - v9);
  if (swift_dynamicCast())
  {
  }

  v12 = *(v4 + 152);
  sub_1CA94C218();
  v12(v5, v4);
  v13 = objc_allocWithZone(type metadata accessor for RowTemplateOperatorPickerParameter());
  sub_1CA3E7A10();
}

uint64_t TableTemplateParameterState.rows.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t TableTemplateParameterState.containedVariables.getter(uint64_t a1)
{
  v6 = *(v1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_14();
  sub_1CA94C758();
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444470, &unk_1CA983510);
  swift_getWitnessTable();
  sub_1CA25C3BC(&qword_1EC444E58, &unk_1EC444470, &unk_1CA983510);
  v2 = sub_1CA94C618();

  return v2;
}

uint64_t TableTemplateParameterState.init(compoundType:rows:requiresBoundedDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TableTemplateParameterState.init(serializedRepresentation:variableProvider:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v57 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v47 - v16;
  OUTLINED_FUNCTION_4_12();
  v56 = v18;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v58 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v47 - v24;
  v64 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if ((OUTLINED_FUNCTION_14_15() & 1) == 0)
  {
    swift_unknownObjectRelease();

LABEL_24:
    result = swift_unknownObjectRelease();
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    return result;
  }

  v55 = a5;
  v60 = a2;
  v61 = a3;
  v26 = sub_1CA94C3A8();
  v28 = sub_1CA323E28(v26, v27);

  if (!v28)
  {
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  v64 = v28;
  v29 = OUTLINED_FUNCTION_14_15();
  v30 = v61;
  if ((v29 & 1) == 0)
  {
LABEL_21:
    swift_unknownObjectRelease();
LABEL_23:

    goto LABEL_24;
  }

  v31 = v63;
  v32 = sub_1CA323E28(0xD00000000000001DLL, 0x80000001CA9B2A90);

  if (!v32)
  {
    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  v47[1] = v32;
  v47[0] = sub_1CA94C978();
  v64 = sub_1CA94C6B8();
  v33 = sub_1CA323E28(0xD000000000000020, 0x80000001CA9B2A40);

  if (!v33)
  {
    goto LABEL_27;
  }

  v63 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E60, &qword_1CA985F80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v34 = v62;
  result = sub_1CA25B410(v62);
  if (!result)
  {

    goto LABEL_27;
  }

  if (result >= 1)
  {
    v36 = 0;
    v55 = *(v55 + 8);
    v53 = *(v55 + 48);
    v54 = v55 + 48;
    v51 = (v56 + 32);
    v52 = v34 & 0xC000000000000001;
    v49 = (v56 + 8);
    v50 = (v56 + 16);
    v48 = (v57 + 8);
    v56 = v34;
    v57 = v31;
    do
    {
      v37 = result;
      if (v52)
      {
        v38 = MEMORY[0x1CCAA22D0](v36, v34);
      }

      else
      {
        v38 = *(v34 + 8 * v36 + 32);
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      v39 = v60;
      swift_unknownObjectRetain();
      v40 = v61;
      v41 = v61;
      v53(v38, v39, v40, a4, v55);
      if (__swift_getEnumTagSinglePayload(v17, 1, a4) == 1)
      {
        swift_unknownObjectRelease();
        (*v48)(v17, v59);
      }

      else
      {
        (*v51)(v25, v17, a4);
        (*v50)(v58, v25, a4);
        sub_1CA94C758();
        sub_1CA94C708();
        swift_unknownObjectRelease();
        (*v49)(v25, a4);
      }

      v34 = v56;
      ++v36;
      result = v37;
    }

    while (v37 != v36);

    v30 = v61;
LABEL_27:
    v42 = sub_1CA323E28(0xD00000000000001DLL, 0x80000001CA9B2A70);

    if (v42)
    {
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        v44 = [v43 BOOLValue];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_33:
        v45 = v47[0];
        result = swift_unknownObjectRelease();
        v46 = v64;
        *a6 = v45;
        *(a6 + 8) = v46;
        *(a6 + 16) = v44;
        return result;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v44 = 0;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t TableTemplateParameterState.init(variable:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v31 = a4;
  sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v29 = v8;
  v30 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  OUTLINED_FUNCTION_4_12();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  v32 = sub_1CA94C6B8();
  v24 = *(a3 + 176);
  v25 = a1;
  v24();
  if (__swift_getEnumTagSinglePayload(v13, 1, a2) == 1)
  {

    result = (*(v29 + 8))(v13, v30);
  }

  else
  {
    (*(v15 + 32))(v23, v13, a2);
    (*(v15 + 16))(v21, v23, a2);
    sub_1CA94C758();
    sub_1CA94C708();

    result = (*(v15 + 8))(v23, a2);
  }

  v28 = v31;
  v27 = v32;
  *v31 = 0;
  v28[1] = v27;
  *(v28 + 16) = 0;
  return result;
}

Swift::Void __swiftcall TableTemplateParameterState.replace(variable:with:)(WFVariable_optional *variable, WFVariable_optional *with)
{
  v4 = v3;
  v13 = *(v3 + 8);
  v10 = *(v2 + 16);
  v11 = variable;
  v12 = with;
  v5 = sub_1CA94C758();
  sub_1CA94C218();
  OUTLINED_FUNCTION_2_0();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1CA3E4888(sub_1CA3E872C, &v9, v5, v10, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  swift_bridgeObjectRelease_n();
  *(v4 + 8) = v8;
}

id TableTemplateParameterState.variable.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v17[1] = *(v1 + 8);
  sub_1CA94C758();
  OUTLINED_FUNCTION_2_0();
  swift_getWitnessTable();
  sub_1CA94CAD8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    (*(v6 + 8))(v11, v4);
    return 0;
  }

  v12 = (*(*(*(a1 + 24) + 8) + 32))(v3);
  (*(*(v3 - 8) + 8))(v11, v3);
  if (!sub_1CA25B410(v12))
  {

    return 0;
  }

  sub_1CA275D70(0, (v12 & 0xC000000000000001) == 0, v12);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v16 = OUTLINED_FUNCTION_13_14();
    v13 = MEMORY[0x1CCAA22D0](v16);
  }

  else
  {
    v13 = *(v12 + 32);
  }

  v14 = v13;

  return v14;
}

uint64_t TableTemplateParameterState.serializedRepresentation.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  OUTLINED_FUNCTION_18_15();
  v6 = sub_1CA94C1E8();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = sub_1CA94C988();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v6;
  sub_1CA32EA0C(v9, 0xD00000000000001DLL, 0x80000001CA9B2A90, isUniquelyReferenced_nonNull_native, &v23);

  v11 = v23;
  v12 = sub_1CA94C7A8();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v11;
  sub_1CA32EA0C(v12, 0xD00000000000001DLL, 0x80000001CA9B2A70, v13, &v23);

  v14 = v23;
  v23 = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_14();
  sub_1CA94C758();
  swift_getWitnessTable();
  sub_1CA94C5B8();

  v15 = sub_1CA94C648();

  v16 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v14;
  sub_1CA32EA0C(v15, 0xD000000000000020, 0x80000001CA9B2A40, v16, &v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444E68, &unk_1CA987B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA97EDF0;
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v18;
  *(inited + 48) = sub_1CA94C368();
  *(inited + 56) = sub_1CA94C3A8();
  *(inited + 64) = v19;
  OUTLINED_FUNCTION_18_15();
  v20 = sub_1CA94C1A8();

  *(inited + 72) = v20;
  OUTLINED_FUNCTION_18_15();
  sub_1CA94C1E8();
  OUTLINED_FUNCTION_18_15();
  v21 = sub_1CA94C1A8();

  return v21;
}

uint64_t TableTemplateParameterState.process(context:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = *(a2 + 16);
  OUTLINED_FUNCTION_4_12();
  v3[9] = v4;
  v3[10] = *(v5 + 64);
  v6 = swift_task_alloc();
  v7 = *v2;
  v8 = v2[1];
  v3[11] = v6;
  v3[12] = v7;
  v3[13] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CA3E7068, 0, 0);
}

uint64_t sub_1CA3E7068()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = *(v0[7] + 24);
  v0[14] = v3;
  v0[15] = *(v3 + 8);
  v0[16] = swift_getAssociatedTypeWitness();
  v0[2] = sub_1CA94C6B8();
  sub_1CA94C218();
  v4 = sub_1CA94C668();
  v0[3] = v4;
  v5 = v0[13];
  v6 = v0[8];
  if (v4 == sub_1CA94C6F8())
  {
    OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_13_14();
    type metadata accessor for TableTemplateValue();
    v7 = v0[2];
    TableTemplateValue.__allocating_init(compoundType:rows:)();

    v8 = OUTLINED_FUNCTION_1_3();

    return v9(v8);
  }

  else
  {
    v11 = v0[13];
    v12 = v0[8];
    v13 = sub_1CA94C6D8();
    v14 = sub_1CA94C688();
    if (v13)
    {
      v15 = OUTLINED_FUNCTION_6_22(v14, v0[13]);
      v18(v15, v16 + v17 * v4);
    }

    else
    {
      v33 = v0[10];
      v34 = v0[8];
      result = sub_1CA94D468();
      if (v33 != 8)
      {
        __break(1u);
        return result;
      }

      v35 = result;
      v36 = v0[11];
      v37 = v0[8];
      v38 = v0[9];
      v0[4] = v35;
      (*(v38 + 16))(v36, v0 + 4, v37);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_17_6();
    v19 = sub_1CA94C738();
    OUTLINED_FUNCTION_9_16(v19, v20, v21, v22, v23, v24, v25, v26, v39, v40, v42);
    v41 = v27 + *v27;
    v29 = *(v28 + 4);
    v30 = swift_task_alloc();
    v0[17] = v30;
    *v30 = v0;
    v31 = OUTLINED_FUNCTION_1_24(v30);

    return v32(v31);
  }
}

uint64_t sub_1CA3E72D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v15 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = v3[13];
    v6 = v3[11];
    v7 = v3[8];
    v8 = v3[9];

    v9 = *(v8 + 8);
    v10 = OUTLINED_FUNCTION_52_0();
    v11(v10);
    v12 = v3[2];

    v13 = sub_1CA3E7660;
  }

  else
  {
    (*(v3[9] + 8))(v3[11], v3[8]);
    v13 = sub_1CA3E7430;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1CA3E7430()
{
  v1 = v0[18];
  if (v1)
  {
    v0[5] = v1;
    v2 = v0[16];
    sub_1CA94C758();
    sub_1CA94C708();
  }

  v3 = v0[3];
  v4 = v0[13];
  v5 = v0[8];
  if (v3 == sub_1CA94C6F8())
  {
    OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_13_14();
    type metadata accessor for TableTemplateValue();
    v6 = v0[2];
    TableTemplateValue.__allocating_init(compoundType:rows:)();

    v7 = OUTLINED_FUNCTION_1_3();

    return v8(v7);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[8];
    v12 = sub_1CA94C6D8();
    v13 = sub_1CA94C688();
    if (v12)
    {
      v14 = OUTLINED_FUNCTION_6_22(v13, v0[13]);
      v17(v14, v15 + v16 * v3);
    }

    else
    {
      v32 = v0[10];
      v33 = v0[8];
      result = sub_1CA94D468();
      if (v32 != 8)
      {
        __break(1u);
        return result;
      }

      v34 = result;
      v35 = v0[11];
      v36 = v0[8];
      v37 = v0[9];
      v0[4] = v34;
      (*(v37 + 16))(v35, v0 + 4, v36);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_17_6();
    v18 = sub_1CA94C738();
    OUTLINED_FUNCTION_9_16(v18, v19, v20, v21, v22, v23, v24, v25, v38, v39, v41);
    v40 = v26 + *v26;
    v28 = *(v27 + 4);
    v29 = swift_task_alloc();
    v0[17] = v29;
    *v29 = v0;
    v30 = OUTLINED_FUNCTION_1_24();

    return v31(v30);
  }
}

uint64_t sub_1CA3E7660()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t static TableTemplateParameterState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  v8 = *(*(*(a4 + 8) + 8) + 8);
  if (sub_1CA94C788())
  {
    return v4 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t TableTemplateParameterState.hash(into:)()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  MEMORY[0x1CCAA2780](*v1);
  v4 = *(v0 + 16);
  v5 = *(*(*(v0 + 24) + 8) + 8);
  sub_1CA94C768();
  return sub_1CA94D938();
}

uint64_t TableTemplateParameterState.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  sub_1CA94D918();
  TableTemplateParameterState.hash(into:)();
  return sub_1CA94D968();
}

uint64_t sub_1CA3E7804(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA3E78A8;

  return TableTemplateParameterState.process(context:)(a1, a2);
}

uint64_t sub_1CA3E78A8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1CA3E79C0()
{
  sub_1CA94D918();
  TableTemplateParameterState.hash(into:)();
  return sub_1CA94D968();
}

id sub_1CA3E7A10()
{
  OUTLINED_FUNCTION_49_0();
  *&v1[OBJC_IVAR____TtC11WorkflowKitP33_4F21910BB89D8A2662B5B8AC5ABCCA7D34RowTemplateOperatorPickerParameter_operators] = v3;
  v1[OBJC_IVAR____TtC11WorkflowKitP33_4F21910BB89D8A2662B5B8AC5ABCCA7D34RowTemplateOperatorPickerParameter_showLegacyComparisonAsValid] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = v2;
  *(inited + 48) = v0;
  *(inited + 64) = v6;
  *(inited + 72) = @"Label";
  v7 = v1;
  v8 = @"Key";
  v9 = @"Label";
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDB9F690;
  OUTLINED_FUNCTION_69();
  v11 = sub_1CA94C368();
  OUTLINED_FUNCTION_69();
  v12 = sub_1CA94C368();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = sub_1CA94C3A8();
  v16 = v15;

  *(inited + 80) = v14;
  *(inited + 88) = v16;
  *(inited + 104) = v6;
  *(inited + 112) = @"HideClearButton";
  v17 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v17;
  *(inited + 152) = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = @"HideClearButton";
  v20 = @"DisallowedVariableTypes";
  v21 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA3E8B40(&qword_1EC441A60, type metadata accessor for WFVariableType);
  OUTLINED_FUNCTION_52_0();
  v22 = sub_1CA94C8F8();

  sub_1CA3E4650(v22);
  v24 = v23;

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = v24;
  _s3__C3KeyVMa_0(0);
  sub_1CA3E8B40(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v25 = sub_1CA2F864C();
  v28.receiver = v7;
  v28.super_class = type metadata accessor for RowTemplateOperatorPickerParameter();
  v26 = objc_msgSendSuper2(&v28, sel_initWithDefinition_, v25);

  return v26;
}

uint64_t sub_1CA3E7DD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_4F21910BB89D8A2662B5B8AC5ABCCA7D34RowTemplateOperatorPickerParameter_operators);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v4 = v1 + 32;
    do
    {
      sub_1CA2C9578(v4, v23);
      v5 = v24;
      v6 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v7 = *(v6 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v22 = AssociatedConformanceWitness;
      __swift_allocate_boxed_opaque_existential_1(v20);
      v7(v5, v6);
      v9 = AssociatedTypeWitness;
      v10 = v22;
      __swift_project_boxed_opaque_existential_1(v20, AssociatedTypeWitness);
      v11 = swift_getAssociatedTypeWitness();
      v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v11);
      (*(AssociatedConformanceWitness + 32))(v9, v10);
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v13 = swift_dynamicCast();
      v14 = objc_allocWithZone(WFNumberSubstitutableState);
      if (v13)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }

      v16 = [v14 initWithNumber_];

      __swift_destroy_boxed_opaque_existential_0(v20);
      v17 = WFVariableSubstitutableParameterStateUpcast(v16);

      __swift_destroy_boxed_opaque_existential_0(v23);
      sub_1CA94D4D8();
      v18 = *(v26 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v26;
  }

  return result;
}

id sub_1CA3E803C(void *a1)
{
  sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
  swift_getObjCClassFromMetadata();
  v3 = WFVariableSubstitutableParameterStateDowncast(a1);
  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      result = [v4 number];
      if (result)
      {
        v23 = result;
        v6 = 0;
        v7 = *(v1 + OBJC_IVAR____TtC11WorkflowKitP33_4F21910BB89D8A2662B5B8AC5ABCCA7D34RowTemplateOperatorPickerParameter_operators);
        v24 = *(v7 + 16);
        v8 = v7 + 32;
        while (v24 != v6)
        {
          if (v6 >= *(v7 + 16))
          {
            __break(1u);
            return result;
          }

          sub_1CA2C9578(v8, &v29);
          v9 = v30;
          v10 = v31;
          __swift_project_boxed_opaque_existential_1(&v29, v30);
          v11 = *(v10 + 24);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v28 = AssociatedConformanceWitness;
          __swift_allocate_boxed_opaque_existential_1(v26);
          v11(v9, v10);
          v13 = AssociatedTypeWitness;
          v14 = v28;
          __swift_project_boxed_opaque_existential_1(v26, AssociatedTypeWitness);
          v15 = swift_getAssociatedTypeWitness();
          v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x1EEE9AC00](v15);
          (*(AssociatedConformanceWitness + 32))(v13, v14);
          sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v17 = v23;
            v18 = sub_1CA94CFD8();

            __swift_destroy_boxed_opaque_existential_0(v26);
            if (v18)
            {
              sub_1CA27F268(&v29, v32);
              sub_1CA27F268(v32, v33);
              v21 = v34;
              v22 = v35;
              __swift_project_boxed_opaque_existential_1(v33, v34);
              v3 = (*(v22 + 32))(v21, v22);

              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0(v33);
              return v3;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v26);
          }

          result = __swift_destroy_boxed_opaque_existential_0(&v29);
          v8 += 40;
          ++v6;
        }

        sub_1CA94C978();
        v19 = WFDefaultLocalizedLabelForContentOperator();
        if (v19)
        {
          v20 = v19;
          v3 = sub_1CA94C3A8();

          swift_unknownObjectRelease();
          return v3;
        }
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return v3;
}

id sub_1CA3E83DC()
{
  sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
  swift_getObjCClassFromMetadata();
  v0 = OUTLINED_FUNCTION_93();
  result = WFVariableSubstitutableParameterStateDowncast(v0);
  if (result)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA3E84E0(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for RowTemplateOperatorPickerParameter();
  if (objc_msgSendSuper2(&v9, sel_parameterStateIsValid_, a1))
  {
    LOBYTE(v3) = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC11WorkflowKitP33_4F21910BB89D8A2662B5B8AC5ABCCA7D34RowTemplateOperatorPickerParameter_showLegacyComparisonAsValid) == 1 && (v4 = sub_1CA3E83DC()) != 0)
  {
    v5 = v4;
    v6 = [v4 number];
    v3 = v6;
    if (v6)
    {
      v7 = [v6 integerValue];

      LOBYTE(v3) = sub_1CA6030C8(v7, &unk_1F49F8D60);
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

id sub_1CA3E8660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RowTemplateOperatorPickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA3E86A8@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

id WFContentOperator.description.getter()
{
  result = WFDefaultLocalizedLabelForContentOperator();
  if (result)
  {
    v1 = result;
    sub_1CA94C3A8();

    return OUTLINED_FUNCTION_52_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA3E8750(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA3E878C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA3E87E4(uint64_t a1)
{
  result = sub_1CA3E8B40(qword_1EC444E78, type metadata accessor for WFContentOperator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA3E8A6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA3E8AA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1CA3E8AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA3E8B40(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CA3E8BBC()
{
  v98 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9B2AD0;
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
  v103 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = v12;
  v13 = &v92 - v103;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v102 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v100 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v101 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v92 - v101;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v99 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v97 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v95 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v96 = &v92;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v92 - v103;
  sub_1CA948D98();
  v30 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v92 - v101;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v95, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v99;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v97;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 6579538;
  *(inited + 168) = 0xE300000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "forward.fill");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
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
  v97 = &v92;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v92 - v103;
  sub_1CA948D98();
  v48 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v92 - v101;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v99;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v96 = swift_allocObject();
  *(v96 + 1) = xmmword_1CA9813B0;
  v95 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981380;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD00000000000001BLL;
  *(v51 + 48) = 0x80000001CA9A1EB0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"DefaultValue";
  *(v51 + 80) = 0x6C61636F4CLL;
  *(v51 + 88) = 0xE500000000000000;
  *(v51 + 104) = v52;
  *(v51 + 112) = @"DisallowedVariableTypes";
  v53 = v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v97 = v54;
  *(v51 + 120) = &unk_1F49F8DA0;
  *(v51 + 144) = v54;
  *(v51 + 152) = @"Key";
  strcpy((v51 + 160), "WFMediaRoute");
  *(v51 + 173) = 0;
  *(v51 + 174) = -5120;
  *(v51 + 184) = v53;
  *(v51 + 192) = @"Label";
  v55 = @"Parameters";
  v56 = @"Class";
  v57 = @"DefaultValue";
  v58 = @"DisallowedVariableTypes";
  v59 = @"Key";
  v60 = @"Label";
  v61 = sub_1CA94C438();
  v93 = v62;
  v63 = sub_1CA94C438();
  v65 = v64;
  v94 = &v92;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v92 - v103;
  sub_1CA948D98();
  v67 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v92 - v101;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v61, v93, v63, v65, 0, 0, v66, v68);
  *(v51 + 224) = v99;
  *(v51 + 200) = v70;
  v71 = sub_1CA94C368();
  *(v51 + 264) = MEMORY[0x1E69E6158];
  *(v51 + 232) = v71;
  *(v51 + 240) = 0x746E696F70646E45;
  *(v51 + 248) = 0xE800000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v72 = sub_1CA2F864C();
  v73 = v96;
  v96[4] = v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v73;
  *(inited + 344) = v74;
  *(inited + 352) = @"ParameterSummary";
  v75 = @"ParameterSummary";
  v76 = sub_1CA94C438();
  v78 = v77;
  v79 = sub_1CA94C438();
  v81 = v80;
  v99 = &v92;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v92 - v103;
  sub_1CA948D98();
  v83 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v92 - v101;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v76, v78, v79, v81, 0, 0, v82, v84);
  v87 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v88 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v87;
  *(inited + 384) = v88;
  *(inited + 392) = @"RequiredResources";
  *(inited + 424) = v97;
  *(inited + 400) = &unk_1F49F8DD0;
  v89 = @"RequiredResources";
  v90 = sub_1CA94C368();
  *(inited + 464) = MEMORY[0x1E69E6158];
  *(inited + 432) = v90;
  *(inited + 440) = 0x64726177726F46;
  *(inited + 448) = 0xE700000000000000;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3E978C()
{
  v1 = *(v0 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_name);
  v2 = *(v0 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_name + 8);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA3E9848()
{
  v1 = *(v0 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_cloudKitMetadata);
  v2 = *(v0 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_cloudKitMetadata + 8);
  v3 = OUTLINED_FUNCTION_23();
  sub_1CA3F0B98(v3, v4);
  return OUTLINED_FUNCTION_23();
}

id sub_1CA3E9880(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (v6 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_name);
  *v7 = a1;
  v7[1] = a2;
  *(v6 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_icon) = a3;
  *(v6 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_encryptedSchemaVersion) = a4;
  v8 = (v6 + OBJC_IVAR___WFDatabaseLegacyFolderRecord_cloudKitMetadata);
  *v8 = a5;
  v8[1] = a6;
  v10.super_class = WFDatabaseLegacyFolderRecord;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1CA3E9B04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1CA948BF8();
    v5 = OUTLINED_FUNCTION_23();
    sub_1CA39F318(v5, v6);
  }

  return v4;
}

uint64_t sub_1CA3E9B74()
{
  v1 = *(v0 + OBJC_IVAR___WFDatabaseLegacyOrderingRecord_cloudKitMetadata);
  v2 = *(v0 + OBJC_IVAR___WFDatabaseLegacyOrderingRecord_cloudKitMetadata + 8);
  v3 = OUTLINED_FUNCTION_23();
  sub_1CA3F0B98(v3, v4);
  return OUTLINED_FUNCTION_23();
}

id sub_1CA3E9BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR___WFDatabaseLegacyOrderingRecord_shortcuts) = a1;
  *(v4 + OBJC_IVAR___WFDatabaseLegacyOrderingRecord_folders) = a2;
  v5 = (v4 + OBJC_IVAR___WFDatabaseLegacyOrderingRecord_cloudKitMetadata);
  *v5 = a3;
  v5[1] = a4;
  v7.super_class = WFDatabaseLegacyOrderingRecord;
  return objc_msgSendSuper2(&v7, sel_init);
}

id _sSo28WFDatabaseLegacyFolderRecordC11WorkflowKitEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t WFDatabase.allCollectionIdentifiersForSync()()
{
  v1 = WFGetBuiltInCollectionIdentifiers(1);
  v2 = sub_1CA94C8F8();

  v7 = v2;
  v5[2] = &v7;
  v6 = v0;
  sub_1CA3EA248(0x6C6C6F6320746567, 0xEF736E6F69746365, sub_1CA3EA22C, v5);
  v3 = sub_1CA3342DC(v7);

  return v3;
}

void sub_1CA3E9E54(int a1, id a2)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v2 = [a2 library];
  v3 = [v2 folders];

  sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410(v4);
  if (v5)
  {
    v6 = v5;
    v35[0] = MEMORY[0x1E69E7CC0];
    sub_1CA271524();
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v7 = 0;
    v8 = v35[0];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCAA22D0](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v10 identifier];
      v12 = sub_1CA94C3A8();
      v14 = v13;

      v35[0] = v8;
      v15 = v8[2];
      if (v15 >= v8[3] >> 1)
      {
        sub_1CA271524();
        v8 = v35[0];
      }

      ++v7;
      v8[2] = v15 + 1;
      v16 = &v8[2 * v15];
      v16[4] = v12;
      v16[5] = v14;
    }

    while (v6 != v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA342798(v8);
  v17 = [objc_opt_self() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E6158];
  *(v18 + 16) = xmmword_1CA981310;
  *(v18 + 56) = v19;
  *(v18 + 32) = 0x696669746E656469;
  *(v18 + 40) = 0xEA00000000007265;
  v20 = sub_1CA94C648();

  [v17 setPropertiesToFetch_];

  v35[0] = 0;
  v21 = [v17 execute_];
  v22 = v35[0];
  if (!v21)
  {
    v33 = v35[0];
    sub_1CA948AD8();

    swift_willThrow();
    goto LABEL_25;
  }

  v23 = v21;
  sub_1CA25B3D0(0, &unk_1EC441930, off_1E836E0D8);
  v24 = sub_1CA94C658();
  v25 = v22;

  v26 = sub_1CA25B410(v24);
  if (v26)
  {
    v27 = v26;
    if (v26 >= 1)
    {
      for (i = 0; i != v27; ++i)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1CCAA22D0](i, v24);
        }

        else
        {
          v29 = *(v24 + 8 * i + 32);
        }

        v30 = v29;
        v31 = sub_1CA3F132C(v29, &selRef_identifier);
        if (v32)
        {
          sub_1CA368948(v35, v31, v32);
        }

        else
        {
        }
      }

      goto LABEL_23;
    }

LABEL_27:
    __break(1u);
  }

LABEL_23:

LABEL_25:
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CA3EA248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = sub_1CA94C368();
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CA3F18BC;
  *(v9 + 24) = v8;
  v19 = sub_1CA3F19F0;
  v20 = v9;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v17 = sub_1CA3F0F08;
  v18 = &block_descriptor_109;
  v10 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v11 = [v4 performOperationWithReason:v7 block:v10 error:&aBlock];
  _Block_release(v10);

  v12 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&v21, &aBlock);
    swift_dynamicCast();
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CA3EA484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F1888;
  *(v10 + 24) = v9;
  v21 = sub_1CA3F19F0;
  v22 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v19 = sub_1CA3F0F08;
  v20 = &block_descriptor_99;
  v11 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v12 = [v5 performOperationWithReason:v8 block:v11 error:&aBlock];
  _Block_release(v11);

  v13 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v12)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&v23, &aBlock);
    type metadata accessor for WFDatabaseRecordSyncOperation(0);
    swift_dynamicCast();

    result = v17;
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CA3EA6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F1804;
  *(v10 + 24) = v9;
  v22 = sub_1CA3F19F0;
  v23 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v20 = sub_1CA3F0F08;
  v21 = &block_descriptor_89;
  v11 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v12 = [v5 performOperationWithReason:v8 block:v11 error:&aBlock];
  _Block_release(v11);

  v13 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v12)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    v15 = sub_1CA2C0A20(&v24, &aBlock);
    type metadata accessor for WFDatabaseLegacyFolderRecord(v15);
    swift_dynamicCast();

    result = v18;
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CA3EA908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F17D4;
  *(v10 + 24) = v9;
  v22 = sub_1CA3F19F0;
  v23 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v20 = sub_1CA3F0F08;
  v21 = &block_descriptor_79;
  v11 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v12 = [v5 performOperationWithReason:v8 block:v11 error:&aBlock];
  _Block_release(v11);

  v13 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v12)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    v15 = sub_1CA2C0A20(&v24, &aBlock);
    type metadata accessor for WFDatabaseLegacyOrderingRecord(v15);
    swift_dynamicCast();

    result = v18;
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CA3EAB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F1190;
  *(v10 + 24) = v9;
  v21 = sub_1CA3F19F0;
  v22 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v19 = sub_1CA3F0F08;
  v20 = &block_descriptor_46;
  v11 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v12 = [v5 performOperationWithReason:v8 block:v11 error:&aBlock];
  _Block_release(v11);

  v13 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v12)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&v23, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444F78, &unk_1CA986230);
    swift_dynamicCast();

    result = v17;
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CA3EAD98()
{
  OUTLINED_FUNCTION_16_13();
  v28 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_11_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  OUTLINED_FUNCTION_11_1();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CA3F1164;
  *(v5 + 24) = v4;
  v25 = sub_1CA3F19F0;
  v26 = v5;
  OUTLINED_FUNCTION_4_28();
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_0_29();
  v23 = v6;
  v24 = &block_descriptor_36;
  v7 = _Block_copy(&aBlock);

  v15 = OUTLINED_FUNCTION_20_11(v8, sel_performOperationWithReason_block_error_, v9, v10, v11, v12, v13, v14, v20, 0);
  _Block_release(v7);

  v16 = aBlock;
  v17 = OUTLINED_FUNCTION_14_16();

  if (v17)
  {
    __break(1u);
  }

  if (v15)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&v27, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444F70, &qword_1CA986228);
    OUTLINED_FUNCTION_21_11();

    result = v21;
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CA3EAF84()
{
  OUTLINED_FUNCTION_16_13();
  v28 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_11_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  OUTLINED_FUNCTION_11_1();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CA3F10E8;
  *(v5 + 24) = v4;
  v25 = sub_1CA3F19F0;
  v26 = v5;
  OUTLINED_FUNCTION_4_28();
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_0_29();
  v23 = v6;
  v24 = &block_descriptor_26;
  v7 = _Block_copy(&aBlock);

  v15 = OUTLINED_FUNCTION_20_11(v8, sel_performOperationWithReason_block_error_, v9, v10, v11, v12, v13, v14, v20, 0);
  _Block_release(v7);

  v16 = aBlock;
  v17 = OUTLINED_FUNCTION_14_16();

  if (v17)
  {
    __break(1u);
  }

  if (v15)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&v27, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    OUTLINED_FUNCTION_21_11();

    result = v21;
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

id WFDatabase.desiredFolderSyncOperation(forCollection:)(uint64_t a1, uint64_t a2)
{
  v5 = WFGetBuiltInCollectionIdentifiers(1);
  v6 = sub_1CA94C8F8();

  LOBYTE(v5) = sub_1CA27AF18(a1, a2, v6);

  if (v5)
  {
    type metadata accessor for WFDatabaseRecordSyncOperation(0);
    return sub_1CA3EB330(0);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = a2;
    return sub_1CA3EA484(v9 + 12, v10 | 0x8000000000000000, sub_1CA3EB8D0, v11);
  }
}

id sub_1CA3EB330(uint64_t a1)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_171();
  v4 = sub_1CA94C368();

  v5 = [v1 initWithOperationType:a1 reason:v4];

  return v5;
}

void sub_1CA3EB3A8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1CA3EB8EC(a2, a3);
  v7 = v6;
  if (v6 && [v6 tombstoned])
  {
    type metadata accessor for WFDatabaseRecordSyncOperation(0);
    v8 = sub_1CA3EB330(2);
LABEL_38:

    goto LABEL_39;
  }

  v9 = [a1 library];
  v10 = sub_1CA94C368();
  v47[0] = 0;
  v11 = [v9 folderWithIdentifier:v10 error:v47];

  if (v11)
  {
    if (!v7)
    {
      v23 = 0xD000000000000010;
      v24 = v47[0];
      sub_1CA26DADC();
      v26 = v25;
      v27 = v25[2];
      v28 = v27 + 1;
      v29 = "folder order changed";
      if (v27 >= v25[3] >> 1)
      {
        sub_1CA26DADC();
        v26 = v30;
      }

      goto LABEL_36;
    }

    v12 = v47[0];
    v13 = v7;
    v14 = [v11 name];
    v15 = sub_1CA94C3A8();
    v17 = v16;

    v18 = sub_1CA3F132C(v13, &selRef_temporarySyncFolderName);
    if (v19)
    {
      if (v15 == v18 && v19 == v17)
      {

LABEL_21:
        v26 = MEMORY[0x1E69E7CC0];
LABEL_22:
        v34 = [v11 glyphCharacter];
        if ([v13 temporarySyncFolderIcon] != v34)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = v26[2];
            sub_1CA26DADC();
            v26 = v42;
          }

          v35 = v26[2];
          if (v35 >= v26[3] >> 1)
          {
            sub_1CA26DADC();
            v26 = v43;
          }

          v26[2] = v35 + 1;
          v36 = &v26[2 * v35];
          strcpy(v36 + 32, "icon changed");
          v36[45] = 0;
          *(v36 + 23) = -5120;
        }

        v37 = [v13 lastSyncedEncryptedSchemaVersion];
        if (v37 == [v13 wantedEncryptedSchemaVersion])
        {

          if (!v26[2])
          {

            type metadata accessor for WFDatabaseRecordSyncOperation(0);
            v8 = sub_1CA3EB330(0);

LABEL_39:
            *a4 = v8;
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = v26[2];
          sub_1CA26DADC();
          v26 = v45;
        }

        v27 = v26[2];
        v28 = v27 + 1;
        if (v27 >= v26[3] >> 1)
        {
          sub_1CA26DADC();
          v26 = v46;
        }

        v29 = "no sync metadata";
        v23 = 0xD000000000000020;
LABEL_36:
        v26[2] = v28;
        v38 = &v26[2 * v27];
        v38[4] = v23;
        v38[5] = v29 | 0x8000000000000000;
LABEL_37:
        type metadata accessor for WFDatabaseRecordSyncOperation(0);
        v47[0] = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
        sub_1CA26E4D4();
        sub_1CA94C308();

        v8 = sub_1CA3EB330(1);

        goto LABEL_38;
      }

      v21 = sub_1CA94D7F8();

      if (v21)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    sub_1CA26DADC();
    v26 = v31;
    v32 = v31[2];
    if (v32 >= v31[3] >> 1)
    {
      sub_1CA26DADC();
      v26 = v40;
    }

    v26[2] = v32 + 1;
    v33 = &v26[2 * v32];
    strcpy(v33 + 32, "name changed");
    v33[45] = 0;
    *(v33 + 23) = -5120;
    goto LABEL_22;
  }

  v22 = v47[0];
  sub_1CA948AD8();

  swift_willThrow();
LABEL_40:
  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CA3EB8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  sub_1CA94C218();
  v6 = sub_1CA623D0C(a1, a2, 2);
  v7 = [v3 objectForDescriptor:v6 properties:0 createIfNecessary:0];

  if (v7)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t WFDatabase.desiredOrderingSyncOperation(forCollection:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  return sub_1CA3EA484(0xD000000000000023, 0x80000001CA9B2CB0, sub_1CA3EBF28, v3);
}

void sub_1CA3EBA6C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id *a4@<X8>)
{
  v9 = sub_1CA3EB8EC(a2, a3);
  v10 = WFGetBuiltInCollectionIdentifiers(1);
  v11 = sub_1CA94C8F8();

  LOBYTE(v10) = sub_1CA27AF18(a2, a3, v11);

  if (v10)
  {
    goto LABEL_6;
  }

  if (!v9)
  {
    v13 = [a1 library];
    v14 = sub_1CA94C368();
    v15 = [v13 hasFolderWithIdentifier_];

    if ((v15 & 1) == 0)
    {
      type metadata accessor for WFDatabaseRecordSyncOperation(0);
      *a4 = sub_1CA3EB330(0);
      return;
    }

LABEL_6:
    v16 = sub_1CA3EBF44(v9, a2, a3);
    if (v4)
    {

      return;
    }

    v17 = v16;
    if (v9)
    {
      v18 = sub_1CA3F13EC(v9, &selRef_deserializedLastRemoteShortcutOrdering);
    }

    else
    {
      v18 = 0;
    }

    v19 = [v17 shortcuts];
    v20 = sub_1CA94C658();

    if (v18)
    {
      v21 = sub_1CA2B6DAC(v18, v20);

      if (v21)
      {
        v22 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_1CA26DADC();
    v22 = v23;
    v24 = *(v23 + 16);
    if (v24 >= *(v23 + 24) >> 1)
    {
      sub_1CA26DADC();
      v22 = v35;
    }

    *(v22 + 16) = v24 + 1;
    v25 = v22 + 16 * v24;
    *(v25 + 32) = 0xD000000000000016;
    *(v25 + 40) = 0x80000001CA9B2FF0;
LABEL_18:
    if (sub_1CA94C3A8() == a2 && v26 == a3)
    {

      if (v9)
      {
LABEL_24:
        v29 = sub_1CA3F13EC(v9, &selRef_deserializedLastRemoteCollectionOrdering);
LABEL_27:
        v30 = sub_1CA3F14BC(v17, &selRef_folders);
        if (v29)
        {
          if (v30)
          {
            v31 = sub_1CA2B6DAC(v29, v30);

            if (v31)
            {
              goto LABEL_39;
            }

LABEL_34:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = *(v22 + 16);
              sub_1CA26DADC();
              v22 = v37;
            }

            v32 = *(v22 + 16);
            if (v32 >= *(v22 + 24) >> 1)
            {
              sub_1CA26DADC();
              v22 = v38;
            }

            *(v22 + 16) = v32 + 1;
            v33 = v22 + 16 * v32;
            *(v33 + 32) = 0xD000000000000014;
            *(v33 + 40) = 0x80000001CA9B3010;
            goto LABEL_39;
          }

LABEL_33:

          goto LABEL_34;
        }

        if (v30)
        {
          goto LABEL_33;
        }

LABEL_39:
        if (*(v22 + 16))
        {
          type metadata accessor for WFDatabaseRecordSyncOperation(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
          sub_1CA26E4D4();
          sub_1CA94C308();

          v34 = 1;
        }

        else
        {

          type metadata accessor for WFDatabaseRecordSyncOperation(0);
          v34 = 0;
        }

        v12 = sub_1CA3EB330(v34);

        goto LABEL_43;
      }
    }

    else
    {
      v28 = sub_1CA94D7F8();

      if ((v28 & 1) == 0)
      {
        goto LABEL_39;
      }

      if (v9)
      {
        goto LABEL_24;
      }
    }

    v29 = 0;
    goto LABEL_27;
  }

  if (![v9 tombstoned])
  {
    goto LABEL_6;
  }

  type metadata accessor for WFDatabaseRecordSyncOperation(0);
  v12 = sub_1CA3EB330(2);
LABEL_43:

  *a4 = v12;
}

uint64_t sub_1CA3EBF44(void *a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  if (sub_1CA94C3A8() == a2 && v7 == a3)
  {

LABEL_9:
    v16 = [v3 library];
    v17 = sub_1CA94C368();
    v64[0] = 0;
    v18 = [v16 shortcutsInFolderWithIdentifier:v17 error:v64];

    v19 = v64[0];
    if (!v18)
    {
      goto LABEL_33;
    }

    v61 = a1;
    v20 = sub_1CA94C658();
    v21 = v19;

    v22 = [v3 library];
    v23 = [v22 folders];

    sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
    v24 = sub_1CA94C658();

    v25 = sub_1CA25B410(v24);
    v62 = v20;
    if (v25)
    {
      v26 = v25;
      v64[0] = MEMORY[0x1E69E7CC0];
      sub_1CA271524();
      if (v26 < 0)
      {
        __break(1u);
      }

      v27 = 0;
      v28 = v64[0];
      v63 = v24 & 0xC000000000000001;
      v29 = v24;
      do
      {
        if (v63)
        {
          v30 = MEMORY[0x1CCAA22D0](v27, v24);
        }

        else
        {
          v30 = *(v24 + 8 * v27 + 32);
        }

        v31 = v30;
        v32 = [v31 identifier];
        v33 = sub_1CA94C3A8();
        v35 = v34;

        v64[0] = v28;
        v36 = *(v28 + 16);
        if (v36 >= *(v28 + 24) >> 1)
        {
          sub_1CA271524();
          v28 = v64[0];
        }

        ++v27;
        *(v28 + 16) = v36 + 1;
        v37 = v28 + 16 * v36;
        *(v37 + 32) = v33;
        *(v37 + 40) = v35;
        v24 = v29;
      }

      while (v26 != v27);
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    if (!v61)
    {
      v43 = 0;
      v44 = 0xF000000000000000;
LABEL_41:
      objc_allocWithZone(WFDatabaseLegacyOrderingRecord);
      v50 = v62;
      v51 = v28;
      v52 = v43;
LABEL_42:
      result = sub_1CA3F1250(v50, v51, v52, v44);
      goto LABEL_43;
    }

    v38 = v61;
    v39 = sub_1CA3F14BC(v38, &selRef_deserializedLastRemoteCollectionOrdering);
    if (v39)
    {
      v40 = v39;
      v41 = sub_1CA3F14BC(v38, &selRef_deserializedLastRemoteCollectionOrderingSubset);
      if (!v41)
      {

        goto LABEL_40;
      }

      v42 = v41;
      if (sub_1CA2B6DAC(v40, v41))
      {
      }

      else
      {
        if (sub_1CA2B6DAC(v28, v42) & 1) != 0 || (sub_1CA2B6DAC(v40, v28))
        {

          v28 = v40;
          goto LABEL_40;
        }

        sub_1CA25B3D0(0, &unk_1EC444900, 0x1E695DFB8);
        sub_1CA360FF0(v40);

        v55 = sub_1CA56040C();
        sub_1CA360FF0(v28);

        v56 = sub_1CA56040C();
        sub_1CA360FF0(v42);

        v57 = sub_1CA56040C();
        v58 = [objc_opt_self() wf:v55 orderedSetByMergingOrderedSet:v56 withOrderedSet:v57 baseOrderedSet:?];
        v59 = [v58 array];
        v60 = sub_1CA94C658();

        v28 = sub_1CA3610E8(v60);
      }
    }

LABEL_40:
    v43 = sub_1CA3F1388(v38);
    v44 = v53;
    goto LABEL_41;
  }

  v9 = sub_1CA94D7F8();

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = WFGetBuiltInCollectionIdentifiers(0);
  v11 = sub_1CA94C8F8();

  LOBYTE(v10) = sub_1CA27AF18(a2, a3, v11);

  v12 = [v3 library];
  v13 = sub_1CA94C368();
  if (v10)
  {
    v14 = [v12 shortcutsInCategoryWithIdentifier_];

    v15 = sub_1CA94C658();
LABEL_31:

    if (a1)
    {
      v46 = sub_1CA3F1388(a1);
      v44 = v47;
    }

    else
    {
      v46 = 0;
      v44 = 0xF000000000000000;
    }

    objc_allocWithZone(WFDatabaseLegacyOrderingRecord);
    v50 = v15;
    v51 = 0;
    v52 = v46;
    goto LABEL_42;
  }

  v64[0] = 0;
  v14 = [v12 shortcutsInFolderWithIdentifier:v13 error:v64];

  v19 = v64[0];
  if (v14)
  {
    v15 = sub_1CA94C658();
    v45 = v19;
    goto LABEL_31;
  }

LABEL_33:
  v48 = v19;
  sub_1CA948AD8();

  result = swift_willThrow();
LABEL_43:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1CA3EC5A4()
{
  OUTLINED_FUNCTION_15_9();
  v3 = v2;
  v4 = v1;
  v5 = OUTLINED_FUNCTION_171();
  v6 = v0(v5, v3);

  return v6;
}

void sub_1CA3EC65C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 library];
  v8 = sub_1CA94C368();
  v26[0] = 0;
  v9 = [v7 folderWithIdentifier:v8 error:v26];

  if (v9)
  {
    v10 = v26[0];
    if ([v9 isFolder])
    {
      v25 = a4;
      v11 = sub_1CA3EB8EC(a2, a3);
      v12 = [v9 name];
      v13 = sub_1CA94C3A8();
      v15 = v14;

      v16 = [v9 glyphCharacter];
      if (v11)
      {
        v17 = [v11 wantedEncryptedSchemaVersion];
        v18 = sub_1CA3F144C(v11);
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v17 = 0;
        v20 = 0xF000000000000000;
      }

      v22 = objc_allocWithZone(WFDatabaseLegacyFolderRecord);
      v23 = sub_1CA3F1198(v13, v15, v16, v17, v18, v20);

      *v25 = v23;
    }

    else
    {
      sub_1CA3F1834();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    v21 = v26[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1CA3EC908(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = WFGetBuiltInCollectionIdentifiers(1);
  v8 = sub_1CA94C8F8();

  LOBYTE(v7) = sub_1CA27AF18(a1, a2, v8);

  if (v7)
  {
    v9 = sub_1CA3ECA08(a1, a2);
  }

  else
  {
    v9 = sub_1CA3EB8EC(a1, a2);
  }

  v10 = v9;
  v11 = v9;
  v12 = sub_1CA3EBF44(v10, a1, a2);

  if (!v3)
  {
    *a3 = v12;
  }
}

id sub_1CA3ECA08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  sub_1CA94C218();
  v6 = sub_1CA623D0C(a1, a2, 2);
  result = [v3 objectForDescriptor:v6 properties:0 createIfNecessary:1];
  if (result)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClassUnconditional();

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA3ECAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = OUTLINED_FUNCTION_15_9();
  v9 = v8;
  v10 = v5;
  v11 = a5(v7, v9);

  return v11;
}

void sub_1CA3ECC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v16 = sub_1CA3ECA08(a2, a3);
  sub_1CA3F15B4(a4, a5, v16);
  [v16 setTemporarySyncFolderIcon_];
  [v16 setLastSyncedEncryptedSchemaVersion_];
  sub_1CA3F160C(a8, a9, v16);
  v17 = sub_1CA94C3A8();
  v19 = sub_1CA3EB8EC(v17, v18);

  if (!v19)
  {
LABEL_6:
    v20 = [a1 library];
    v21 = sub_1CA94C368();
    v41[0] = 0;
    v22 = [v20 folderWithIdentifier:v21 error:v41];

    if (!v22)
    {
      v31 = v41[0];
      v32 = sub_1CA948AD8();

      swift_willThrow();
      goto LABEL_20;
    }

    v40 = a6;
    v23 = v41[0];
    v24 = [v22 name];
    v25 = sub_1CA94C3A8();
    v27 = v26;

    if (v25 == a4 && v27 == a5)
    {

      v30 = v40;
    }

    else
    {
      v29 = sub_1CA94D7F8();

      v30 = v40;
      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if ([v22 glyphCharacter] == v30)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_16:
    v33 = [a1 library];
    v34 = sub_1CA94C368();
    v35 = sub_1CA94C368();
    v41[0] = 0;
    v36 = [v33 updateFolderWithIdentifier:v34 newName:v35 newIcon:v30 error:v41];

    if (v36)
    {
      v37 = v41[0];

      [a1 libraryDidChange];
      [a1 addPendingUpdatedDescriptor_];
    }

    else
    {
      v38 = v41[0];
      sub_1CA948AD8();

      swift_willThrow();
    }

    goto LABEL_19;
  }

  sub_1CA3ECFB4(v19, v16);
  if (!v9)
  {
    sub_1CA3ED6F0(v19);

    goto LABEL_6;
  }

LABEL_20:
  v39 = *MEMORY[0x1E69E9840];
}

void *sub_1CA3ECFB4(void *a1, void *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  result = sub_1CA3F132C(a2, &selRef_identifier);
  if (v6)
  {
    v7 = result;
    v8 = v6;
    v9 = [v2 library];
    v81 = v7;
    v10 = sub_1CA94C368();
    v11 = [v9 hasFolderWithIdentifier_];

    if ((v11 & 1) == 0)
    {
      v12 = sub_1CA3F132C(a2, &selRef_temporarySyncFolderName);
      if (v13)
      {
        v74 = v12;
        v76 = v13;
        v75 = [a2 temporarySyncFolderIcon];
        v14 = sub_1CA3F14BC(a2, &selRef_deserializedLastRemoteShortcutOrdering);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1CA3F14BC(a1, &selRef_deserializedLastRemoteCollectionOrdering);
          if (v16)
          {
            v17 = v16;
            v73 = v15;
            v83 = v81;
            v84 = v8;
            MEMORY[0x1EEE9AC00](v16);
            v71 = &v83;
            if (sub_1CA2BFD14(sub_1CA36DB00, v70, v17))
            {
              v80 = v17;
              v18 = [v2 library];
              v19 = [v18 folders];

              sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
              v20 = sub_1CA94C658();

              v21 = sub_1CA25B410(v20);
              v72 = v2;
              if (v21)
              {
                v22 = v21;
                v83 = MEMORY[0x1E69E7CC0];
                sub_1CA271524();
                if (v22 < 0)
                {
                  goto LABEL_54;
                }

                v23 = 0;
                v24 = v83;
                v77 = v20 & 0xC000000000000001;
                v78 = v22;
                v79 = v20;
                do
                {
                  if (v77)
                  {
                    v25 = MEMORY[0x1CCAA22D0](v23, v20);
                  }

                  else
                  {
                    v25 = *(v20 + 8 * v23 + 32);
                  }

                  v26 = v25;
                  v27 = [v26 identifier];
                  v28 = sub_1CA94C3A8();
                  v30 = v29;

                  v83 = v24;
                  v31 = v24[2];
                  if (v31 >= v24[3] >> 1)
                  {
                    sub_1CA271524();
                    v24 = v83;
                  }

                  ++v23;
                  v24[2] = v31 + 1;
                  v32 = &v24[2 * v31];
                  v32[4] = v28;
                  v32[5] = v30;
                  v20 = v79;
                }

                while (v78 != v23);
              }

              else
              {

                v24 = MEMORY[0x1E69E7CC0];
              }

              v34 = 0;
              v35 = v80;
              v36 = *(v80 + 16);
              v78 = v80 + 40;
              v79 = MEMORY[0x1E69E7CC0];
LABEL_24:
              v37 = (v78 + 16 * v34);
              while (v36 != v34)
              {
                if (v34 >= *(v35 + 16))
                {
                  __break(1u);
                  goto LABEL_52;
                }

                v39 = *(v37 - 1);
                v38 = *v37;
                v83 = v39;
                v84 = v38;
                MEMORY[0x1EEE9AC00](v35);
                v71 = &v83;
                sub_1CA94C218();
                if (sub_1CA2BFD14(sub_1CA36DB00, v70, v24))
                {
                  goto LABEL_35;
                }

                if (v39 == v81 && v8 == v38)
                {
                  v39 = v81;
LABEL_35:
                  v41 = v79;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v82 = v41;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v43 = *(v41 + 16);
                    sub_1CA271524();
                    v41 = v82;
                  }

                  v35 = v80;
                  v44 = *(v41 + 16);
                  v45 = v44 + 1;
                  if (v44 >= *(v41 + 24) >> 1)
                  {
                    v79 = v44 + 1;
                    sub_1CA271524();
                    v45 = v79;
                    v35 = v80;
                    v41 = v82;
                  }

                  ++v34;
                  *(v41 + 16) = v45;
                  v79 = v41;
                  v46 = v41 + 16 * v44;
                  *(v46 + 32) = v39;
                  *(v46 + 40) = v38;
                  goto LABEL_24;
                }

                if (sub_1CA94D7F8())
                {
                  goto LABEL_35;
                }

                v37 += 2;
                ++v34;
                v35 = v80;
              }

              v47 = sub_1CA58A568(v81, v8, v79);
              v49 = v48;

              if (v49)
              {
                v50 = 0;
              }

              else
              {
                v50 = v47;
              }

              v51 = v72;
              v52 = [v72 library];
              v53 = sub_1CA94C368();

              v54 = v75;
              if ((v75 & 0x8000000000000000) != 0)
              {
LABEL_52:
                __break(1u);
              }

              else if (!(v75 >> 16))
              {
                v55 = v81;
                v56 = sub_1CA94C368();
                v83 = 0;
                v57 = [v52 insertFolderWithName:v53 icon:v54 identifier:v56 insertAt:v50 error:&v83];

                v58 = v83;
                if (v57)
                {

                  v59 = [v51 library];
                  v60 = sub_1CA94C648();

                  v61 = sub_1CA94C368();
                  v83 = 0;
                  v62 = [v59 setShortcutOrdering:v60 forCollectionIdentifier:v61 error:&v83];

                  v63 = v83;
                  if (v62)
                  {
                    sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
                    v64 = v63;
                    v65 = sub_1CA623D0C(v55, v8, 2);
                    [v51 addPendingInsertedDescriptor_];

                    v66 = sub_1CA94C3A8();
                    v68 = sub_1CA623D0C(v66, v67, 2);
                    [v51 addPendingUpdatedDescriptor_];

                    result = [v51 libraryDidChange];
                    goto LABEL_18;
                  }

                  v69 = v83;
                }

                else
                {
                  v69 = v58;
                }

                sub_1CA948AD8();

                result = swift_willThrow();
                goto LABEL_18;
              }

              __break(1u);
LABEL_54:
              __break(1u);
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_18:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA3ED6F0(void *a1)
{
  v3 = sub_1CA3F14BC(a1, &selRef_deserializedLastRemoteCollectionOrdering);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v39 = v5;
  v6 = [v1 library];
  v7 = [v6 folders];

  sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
  v8 = sub_1CA94C658();

  v9 = sub_1CA25B410(v8);
  v37 = a1;
  if (v9)
  {
    v10 = v9;
    v40[0] = v4;
    sub_1CA271524();
    if (v10 < 0)
    {
      goto LABEL_28;
    }

    v11 = 0;
    v12 = v40[0];
    v38 = v8 & 0xC000000000000001;
    v13 = v8;
    v14 = v10;
    do
    {
      if (v38)
      {
        v15 = MEMORY[0x1CCAA22D0](v11, v8);
      }

      else
      {
        v15 = *(v8 + 8 * v11 + 32);
      }

      v16 = v15;
      v17 = [v16 identifier];
      v18 = sub_1CA94C3A8();
      v20 = v19;

      v40[0] = v12;
      v21 = *(v12 + 16);
      if (v21 >= *(v12 + 24) >> 1)
      {
        sub_1CA271524();
        v12 = v40[0];
      }

      ++v11;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v20;
      v8 = v13;
    }

    while (v14 != v11);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v24 = 0;
  v25 = *(v39 + 16);
  v26 = v39 + 40;
  v38 = MEMORY[0x1E69E7CC0];
  v36 = v39 + 40;
LABEL_16:
  for (i = (v26 + 16 * v24); ; i += 2)
  {
    if (v25 == v24)
    {

      sub_1CA3F1548(v38, v37);
      return;
    }

    if (v24 >= *(v39 + 16))
    {
      break;
    }

    v28 = *(i - 1);
    v29 = *i;
    v40[0] = v28;
    v40[1] = v29;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v35[2] = v40;
    sub_1CA94C218();
    if (sub_1CA2BFD14(sub_1CA36DB00, v35, v12))
    {
      v30 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = *(v38 + 16);
        sub_1CA271524();
        v38 = v41;
      }

      v32 = *(v38 + 16);
      if (v32 >= *(v38 + 24) >> 1)
      {
        sub_1CA271524();
        v38 = v41;
      }

      ++v24;
      v33 = v38;
      *(v38 + 16) = v32 + 1;
      v34 = v33 + 16 * v32;
      *(v34 + 32) = v28;
      *(v34 + 40) = v29;
      v26 = v36;
      goto LABEL_16;
    }

    ++v24;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1CA3EDA34()
{
  OUTLINED_FUNCTION_16_13();
  v20 = *MEMORY[0x1E69E9840];
  v19 = 1;
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = swift_allocObject();
  v4[2] = &v19;
  v4[3] = v1;
  v4[4] = v0;
  OUTLINED_FUNCTION_11_1();
  v5 = swift_allocObject();
  v5[2] = sub_1CA3F17C8;
  v5[3] = v4;
  v18[4] = sub_1CA3F1A20;
  v18[5] = v5;
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_2_28();
  v18[2] = v6;
  v18[3] = &block_descriptor_69;
  v7 = _Block_copy(v18);

  OUTLINED_FUNCTION_19_8(v8, sel_performTransactionWithReason_block_error_, v9, v10, v11, v12, v13, v14, 0);
  _Block_release(v7);

  v15 = v18[0];
  v16 = OUTLINED_FUNCTION_13_15();

  if (v16)
  {
    __break(1u);
  }

  if (v15)
  {
    swift_willThrow();

LABEL_9:
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  if ((v19 & 1) == 0)
  {

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1CA3EDBDC()
{
  OUTLINED_FUNCTION_16_13();
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = swift_allocObject();
  v4[2] = v21;
  v4[3] = v1;
  v4[4] = v0;
  OUTLINED_FUNCTION_11_1();
  v5 = swift_allocObject();
  v5[2] = sub_1CA3F10D4;
  v5[3] = v4;
  v20[4] = sub_1CA3F10E0;
  v20[5] = v5;
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_2_28();
  v20[2] = v6;
  v20[3] = &block_descriptor_16;
  v7 = _Block_copy(v20);

  OUTLINED_FUNCTION_19_8(v8, sel_performTransactionWithReason_block_error_, v9, v10, v11, v12, v13, v14, 0);
  _Block_release(v7);

  v15 = v20[0];
  v16 = OUTLINED_FUNCTION_13_15();

  if (v16)
  {
    __break(1u);
  }

  if (v15)
  {
    swift_willThrow();
    v18 = v21[0];

LABEL_9:
    v19 = *MEMORY[0x1E69E9840];
    return v16;
  }

  v16 = v21[0];
  if (v21[0])
  {

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_1CA3EDF0C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v206 = a7;
  v213[9] = *MEMORY[0x1E69E9840];
  v13 = sub_1CA949F78();
  v203 = *(v13 - 8);
  v204 = v13;
  v14 = *(v203 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v202 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v192 - v17;
  v208 = a1;
  v207 = sub_1CA3ECA08(a2, a3);
  v19 = sub_1CA3F1388(v207);
  if (v20 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v21 = v20;
  v201 = a3;
  v200 = a2;
  v209 = a4;
  v210 = a5;
  v22 = v19;
  v23 = objc_opt_self();
  v24 = sub_1CA948BF8();
  v213[0] = 0;
  v25 = v21;
  v26 = [v23 recordFromSystemFieldsData:v24 error:v213];

  if (!v26)
  {
    v41 = v213[0];
    v42 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA39F318(v22, v25);
LABEL_14:
    v211 = 0;

    a4 = v209;
    a5 = v210;
    a2 = v200;
    a3 = v201;
LABEL_15:
    sub_1CA3F1664(a4, a5, v207);
    goto LABEL_16;
  }

  v199 = v25;
  v198 = v22;
  v27 = v213[0];
  v28 = sub_1CA948BF8();
  v213[0] = 0;
  v29 = [v23 recordFromSystemFieldsData:v28 error:v213];

  if (!v29)
  {
    v43 = v213[0];
    v42 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA39F318(v198, v199);

    goto LABEL_14;
  }

  v205 = a6;
  v30 = v213[0];
  v197 = v26;
  v31 = sub_1CA68ECF8(v26);
  v33 = MEMORY[0x1E69E1090];
  v34 = v199;
  v196 = v29;
  if (!v32)
  {
    v195 = 1;
    a2 = v200;
LABEL_87:
    a3 = v201;
    goto LABEL_92;
  }

  v35 = v31;
  v36 = v32;
  v37 = sub_1CA68ECF8(v29);
  a2 = v200;
  if (!v38)
  {

    v195 = 1;
    goto LABEL_87;
  }

  v39 = v35 == v37 && v36 == v38;
  a3 = v201;
  if (v39)
  {
  }

  else
  {
    v40 = sub_1CA94D7F8();

    if ((v40 & 1) == 0)
    {
      v195 = 1;
      goto LABEL_92;
    }
  }

  v147 = *v33;
  sub_1CA949C58();
  sub_1CA94C218();
  v148 = sub_1CA949F68();
  v149 = sub_1CA94CBF8();

  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v213[0] = v151;
    *v150 = 136446210;
    *(v150 + 4) = sub_1CA26B54C(a2, a3, v213);
    _os_log_impl(&dword_1CA256000, v148, v149, "Local WFWorkflowCollectionRecord with identifier %{public}s has the same recordChangeTag as fetched ordering record, this is likely our own change, discarding it.", v150, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v151);
    MEMORY[0x1CCAA4BF0](v151, -1, -1);
    MEMORY[0x1CCAA4BF0](v150, -1, -1);
  }

  (*(v203 + 8))(v18, v204);
  v195 = 0;
LABEL_92:
  v152 = v197;
  v153 = sub_1CA948CB8();
  v201 = &v192;
  v194 = v153;
  v154 = *(v153 - 8);
  v155 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v156 = (v155 + 15) & 0xFFFFFFFFFFFFFFF0;
  v200 = &v192 - v156;
  v157 = [v152 modificationDate];
  if (!v157)
  {
    sub_1CA39F318(v198, v34);

LABEL_99:
    a6 = v205;
    goto LABEL_100;
  }

  v158 = v157;
  v159 = v200;
  sub_1CA948C78();

  MEMORY[0x1EEE9AC00](v160);
  v193 = &v192 - v156;
  v161 = v196;
  v162 = [v196 modificationDate];
  if (!v162)
  {
    (*(v154 + 8))(v159, v194);
    sub_1CA39F318(v198, v199);

    goto LABEL_99;
  }

  v163 = v162;
  v192 = &v192;
  v164 = v193;
  sub_1CA948C78();

  v165 = sub_1CA948C98();
  a6 = v205;
  if (v165 != -1)
  {
    v166 = *MEMORY[0x1E69E1090];
    v167 = v202;
    v168 = sub_1CA949C58();
    v208 = &v192;
    MEMORY[0x1EEE9AC00](v168);
    v169 = &v192 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
    v170 = *(v154 + 16);
    v171 = v164;
    v172 = v194;
    v173 = v170(v169, v171, v194);
    v206 = &v192;
    MEMORY[0x1EEE9AC00](v173);
    v170(v169, v159, v172);
    v174 = sub_1CA949F68();
    v175 = sub_1CA94CC28();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v213[0] = v205;
      *v176 = 136315394;
      sub_1CA3F177C();
      v195 = v175;
      v177 = sub_1CA94D798();
      v179 = v178;
      v180 = *(v154 + 8);
      v180(v169, v172);
      v181 = sub_1CA26B54C(v177, v179, v213);

      *(v176 + 4) = v181;
      *(v176 + 12) = 2080;
      v182 = sub_1CA94D798();
      v184 = v183;
      v180(v169, v172);
      v185 = sub_1CA26B54C(v182, v184, v213);

      *(v176 + 14) = v185;
      _os_log_impl(&dword_1CA256000, v174, v195, "Remote record modification date %s is not greater than local record modification date %s", v176, 0x16u);
      v186 = v205;
      swift_arrayDestroy();
      MEMORY[0x1CCAA4BF0](v186, -1, -1);
      MEMORY[0x1CCAA4BF0](v176, -1, -1);
      sub_1CA39F318(v198, v199);

      (*(v203 + 8))(v202, v204);
      v180(v193, v172);
      v180(v200, v172);
    }

    else
    {
      sub_1CA39F318(v198, v199);

      v190 = *(v154 + 8);
      v190(v169, v172);
      v190(v169, v172);
      (*(v203 + 8))(v167, v204);
      v190(v193, v172);
      v190(v200, v172);
    }

    sub_1CA3F1664(v209, v210, v207);
    goto LABEL_106;
  }

  sub_1CA39F318(v198, v199);

  v187 = *(v154 + 8);
  v188 = v164;
  v189 = v194;
  v187(v188, v194);
  v187(v159, v189);
LABEL_100:
  sub_1CA3F1664(v209, v210, v207);
  if ((v195 & 1) == 0)
  {
    goto LABEL_106;
  }

LABEL_16:
  if (sub_1CA94C3A8() == a2 && v44 == a3)
  {
  }

  else
  {
    v46 = sub_1CA94D7F8();

    if ((v46 & 1) == 0)
    {
      v47 = WFGetBuiltInCollectionIdentifiers(0);
      v48 = sub_1CA94C8F8();

      LOBYTE(v47) = sub_1CA27AF18(a2, a3, v48);

      sub_1CA3F16BC(a6, v207);
      v49 = [v208 library];
      if (v47)
      {
        v50 = sub_1CA94C648();
        v51 = sub_1CA94C368();
        v213[0] = 0;
        v52 = [v49 setShortcutOrdering:v50 forCollectionIdentifier:v51 error:v213];

        v53 = v213[0];
        if (v52)
        {
          sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
          sub_1CA94C218();
          v54 = v53;
          v55 = sub_1CA623D0C(a2, a3, 2);
          v56 = v208;
          [v208 addPendingUpdatedDescriptor_];

          [v56 libraryDidChange];
LABEL_106:

          goto LABEL_107;
        }

        goto LABEL_80;
      }

      v133 = sub_1CA94C368();
      v134 = [v49 hasFolderWithIdentifier_];

      if (v134)
      {
        v135 = v208;
        v136 = [v208 &selRef_matchesURL_];
        v137 = sub_1CA94C648();
        v138 = sub_1CA94C368();
        v213[0] = 0;
        v139 = [v136 setShortcutOrdering:v137 forCollectionIdentifier:v138 error:v213];

        v53 = v213[0];
        if (v139)
        {
          sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
          sub_1CA94C218();
          v140 = v53;
          v141 = sub_1CA623D0C(a2, a3, 2);
          [v135 addPendingUpdatedDescriptor_];

          [v135 libraryDidChange];
          goto LABEL_106;
        }

        goto LABEL_80;
      }

      v143 = sub_1CA94C3A8();
      v145 = sub_1CA3EB8EC(v143, v144);

      if (!v145)
      {
        goto LABEL_106;
      }

      v122 = v207;
      v146 = v211;
      sub_1CA3ECFB4(v145, v207);
      if (!v146)
      {
        v211 = 0;
        sub_1CA3ED6F0(v145);

        goto LABEL_106;
      }

      goto LABEL_81;
    }
  }

  v204 = @"Root";
  v57 = v207;
  v58 = sub_1CA3F14BC(v207, &selRef_deserializedLastRemoteCollectionOrdering);
  if (v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = MEMORY[0x1E69E7CC0];
  }

  v205 = a6;
  sub_1CA3F16BC(a6, v57);
  sub_1CA3F171C(v206, v57);
  v60 = sub_1CA94C218();
  v61 = sub_1CA2E2E2C(v60);
  v62 = *(v59 + 16);
  if (v62)
  {
    v63 = 0;
    v210 = v59 + 32;
    do
    {
      if (v63 >= *(v59 + 16))
      {
        goto LABEL_110;
      }

      v64 = (v210 + 16 * v63);
      v66 = *v64;
      v65 = v64[1];
      if (*(v61 + 16))
      {
        v67 = *(v61 + 40);
        sub_1CA94D918();
        sub_1CA94C218();
        sub_1CA94C458();
        v68 = sub_1CA94D968();
        v69 = ~(-1 << *(v61 + 32));
        while (1)
        {
          v70 = v68 & v69;
          if (((*(v61 + 56 + (((v68 & v69) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v68 & v69)) & 1) == 0)
          {
            break;
          }

          v71 = (*(v61 + 48) + 16 * v70);
          if (*v71 != v66 || v71[1] != v65)
          {
            v73 = sub_1CA94D7F8();
            v68 = v70 + 1;
            if ((v73 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_1CA94C218();
      }

      v74 = [v208 library];
      v75 = sub_1CA94C368();

      [v74 deleteFolderWithIdentifier_];

LABEL_42:
      ++v63;
    }

    while (v63 != v62);
  }

  v77 = v206;
  v76 = v207;
  v78 = v206[2];
  v79 = v211;
  v80 = v208;
  if (v78)
  {
    v81 = v206 + 5;
    for (i = v206[2]; i; --i)
    {
      v83 = *(v81 - 1);
      v84 = *v81;
      sub_1CA94C218();
      v85 = sub_1CA3EB8EC(v83, v84);

      if (v85)
      {
        sub_1CA3ECFB4(v76, v85);
        if (v79)
        {

          v122 = v85;
          goto LABEL_81;
        }
      }

      v81 += 2;
    }
  }

  v210 = v78;
  v86 = [v80 library];
  v87 = [v86 folders];

  sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
  v88 = sub_1CA94C658();

  v89 = sub_1CA25B410(v88);
  v211 = v79;
  if (v89)
  {
    v90 = v89;
    v213[0] = MEMORY[0x1E69E7CC0];
    sub_1CA271524();
    if (v90 < 0)
    {
      goto LABEL_111;
    }

    v91 = 0;
    v92 = v213[0];
    v209 = v88 & 0xC000000000000001;
    v93 = v88;
    v94 = v90;
    do
    {
      if (v209)
      {
        v95 = MEMORY[0x1CCAA22D0](v91, v88);
      }

      else
      {
        v95 = *(v88 + 8 * v91 + 32);
      }

      v96 = v95;
      v97 = [v96 identifier];
      v98 = sub_1CA94C3A8();
      v100 = v99;

      v213[0] = v92;
      v101 = v92[2];
      if (v101 >= v92[3] >> 1)
      {
        sub_1CA271524();
        v92 = v213[0];
      }

      ++v91;
      v92[2] = v101 + 1;
      v102 = &v92[2 * v101];
      v102[4] = v98;
      v102[5] = v100;
      v88 = v93;
    }

    while (v94 != v91);

    v77 = v206;
  }

  else
  {

    v92 = MEMORY[0x1E69E7CC0];
  }

  v104 = 0;
  v105 = v77 + 40;
  v106 = MEMORY[0x1E69E7CC0];
  v107 = v210;
  v209 = v105;
LABEL_61:
  v108 = (v105 + 16 * v104);
  for (j = v104; v107 != j; ++j)
  {
    if (j >= v107)
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
    }

    v104 = j + 1;
    if (__OFADD__(j, 1))
    {
      goto LABEL_109;
    }

    v111 = *(v108 - 1);
    v110 = *v108;
    v213[0] = v111;
    v213[1] = v110;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    *(&v192 - 2) = v213;
    sub_1CA94C218();
    v112 = v211;
    v113 = sub_1CA2BFD14(sub_1CA2E9370, (&v192 - 4), v92);
    v211 = v112;
    if (v113)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v212 = v106;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v114 = *(v106 + 16);
        sub_1CA271524();
        v106 = v212;
      }

      v105 = v209;
      v115 = *(v106 + 16);
      if (v115 >= *(v106 + 24) >> 1)
      {
        sub_1CA271524();
        v106 = v212;
      }

      *(v106 + 16) = v115 + 1;
      v116 = v106 + 16 * v115;
      *(v116 + 32) = v111;
      *(v116 + 40) = v110;
      v107 = v210;
      goto LABEL_61;
    }

    v108 += 2;
    v107 = v210;
  }

  v117 = v208;
  v118 = [v208 library];
  v119 = sub_1CA94C648();

  v213[0] = 0;
  v120 = [v118 moveFolders:v119 toIndex:0 error:v213];

  v53 = v213[0];
  if ((v120 & 1) == 0)
  {
LABEL_80:
    v142 = v53;
    sub_1CA948AD8();

    swift_willThrow();
    v122 = v207;
    goto LABEL_81;
  }

  v121 = v213[0];
  v122 = v207;
  sub_1CA3ED6F0(v207);
  v123 = [v117 library];
  v124 = sub_1CA94C648();
  v213[0] = 0;
  v125 = [v123 setShortcutOrdering:v124 forCollectionIdentifier:v204 error:v213];

  v126 = v213[0];
  if (v125)
  {
    sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
    v127 = sub_1CA94C3A8();
    v129 = v128;
    v130 = v126;
    v131 = sub_1CA623D0C(v127, v129, 2);
    [v117 addPendingUpdatedDescriptor_];

    [v117 libraryDidChange];
    goto LABEL_106;
  }

  v132 = v213[0];
  sub_1CA948AD8();

  swift_willThrow();
LABEL_81:

LABEL_107:
  v191 = *MEMORY[0x1E69E9840];
}

void sub_1CA3EF53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, SEL *a6)
{
  v8 = sub_1CA3ECA08(a2, a3);
  if (a5 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1CA948BF8();
  }

  [v8 *a6];
}

uint64_t sub_1CA3EF628(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void *, unint64_t, uint64_t, uint64_t))
{
  v8 = a3;
  if (a3)
  {
    v10 = a4;
    v11 = a1;
    v12 = v8;
    v8 = sub_1CA948C08();
    v14 = v13;
  }

  else
  {
    v15 = a4;
    v16 = a1;
    v14 = 0xF000000000000000;
  }

  v17 = sub_1CA94C3A8();
  v19 = v18;

  a6(v8, v14, v17, v19);

  sub_1CA39F318(v8, v14);
  return 1;
}

id sub_1CA3EF78C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA3EB8EC(a2, a3);
  if (v6)
  {
    v7 = v6;
    v8 = [a1 context];
    [v8 deleteObject_];
  }

  v9 = [a1 library];
  v10 = sub_1CA94C368();
  [v9 deleteFolderWithIdentifier_];

  sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  sub_1CA94C218();
  v11 = sub_1CA623D0C(a2, a3, 2);
  [a1 addPendingDeletedDescriptor_];

  return [a1 libraryDidChange];
}

Swift::OpaquePointer_optional __swiftcall WFDatabase.lastRemoteShortcutOrdering(forCollection:)(Swift::String forCollection)
{
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_1_25();
  sub_1CA3EF9F0(0xD00000000000001CLL, v1, v2, v3);
  v5 = 0;
  result.value._rawValue = v5;
  result.is_nil = v4;
  return result;
}

uint64_t sub_1CA3EF9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F1510;
  *(v10 + 24) = v9;
  v20 = sub_1CA3F19F0;
  v21 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v18 = sub_1CA3F0F08;
  v19 = &block_descriptor_56;
  v11 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v12 = [v5 performOperationWithReason:v8 block:v11 error:&aBlock];
  _Block_release(v11);

  v13 = aBlock;
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  if (v12)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&aBlock, &v16);
    swift_dynamicCast();

    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA3EFC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_11_1();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  OUTLINED_FUNCTION_11_1();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CA3F108C;
  *(v10 + 24) = v9;
  v22 = sub_1CA3F1094;
  v23 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_0_29();
  v20 = v11;
  v21 = &block_descriptor_7;
  v12 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v13 = [v5 performOperationWithReason:v8 block:v12 error:&aBlock];
  _Block_release(v12);

  v14 = aBlock;
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  if (v13)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20(&aBlock, &v18);
    type metadata accessor for WFDatabaseRecordSyncOperation(0);
    swift_dynamicCast();

    result = v17;
    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    sub_1CA948AD8();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall WFDatabase.lastRemoteFolderOrdering(forCollection:)(Swift::String forCollection)
{
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_1_25();
  sub_1CA3EF9F0(0xD00000000000001ALL, v1, v2, v3);
  v5 = 0;
  result.value._rawValue = v5;
  result.is_nil = v4;
  return result;
}

void *sub_1CA3EFEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  result = sub_1CA3EB8EC(a2, a3);
  if (result)
  {
    v8 = result;
    v9 = [result *a5];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1CA94C658();
    }

    else
    {

      v11 = 0;
    }

    v12 = *a4;
    *a4 = v11;
  }

  return result;
}

id sub_1CA3EFFC0()
{
  OUTLINED_FUNCTION_15_9();
  v3 = v2;
  v4 = v1;
  v5 = OUTLINED_FUNCTION_171();
  v6 = v0(v5, v3);

  if (v6)
  {
    v7 = sub_1CA94C648();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

Swift::String __swiftcall WFDatabase.debugLegacyFolderSyncState()()
{
  v10 = MEMORY[0x1E69E7CC0];
  v8 = &v10;
  v6[2] = sub_1CA3F0AB8;
  v6[3] = &v7;
  sub_1CA3EAB48(0x6E79732064616572, 0xEF65746174732063, sub_1CA3F0AD4, v6);
  v9 = v10;
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v0 = sub_1CA94C308();
  v2 = v1;
  swift_bridgeObjectRelease_n();
  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void sub_1CA3F0154(void *a1, void *a2)
{
  v111 = *MEMORY[0x1E69E9840];
  v109 = 0;
  v97 = [objc_opt_self() fetchRequest];
  v3 = [v97 execute_];
  v4 = v109;
  if (!v3)
  {
    v94 = v109;
    sub_1CA948AD8();

    swift_willThrow();
    goto LABEL_58;
  }

  v5 = v3;
  sub_1CA25B3D0(0, &unk_1EC441930, off_1E836E0D8);
  v6 = sub_1CA94C658();
  v7 = v4;

  v104 = sub_1CA25B410(v6);
  if (!v104)
  {
LABEL_55:

    goto LABEL_59;
  }

  v8 = 0;
  v103 = v6 & 0xC000000000000001;
  v98 = v6 + 32;
  v99 = v6 & 0xFFFFFFFFFFFFFF8;
  v100 = a1;
  v101 = v6;
  while (1)
  {
    if (v103)
    {
      v9 = MEMORY[0x1CCAA22D0](v8, v6);
    }

    else
    {
      if (v8 >= *(v99 + 16))
      {
        goto LABEL_61;
      }

      v9 = *(v98 + 8 * v8);
    }

    v10 = v9;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
    }

    v12 = sub_1CA3F132C(v9, &selRef_identifier);
    if (v13)
    {
      break;
    }

LABEL_52:
    if (v8 == v104)
    {
      goto LABEL_55;
    }
  }

  v14 = v12;
  v15 = v13;
  v16 = *a1;
  sub_1CA94C218();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v83 = *(v16 + 16);
    sub_1CA26DADC();
    v16 = v84;
    *a1 = v84;
  }

  v18 = *(v16 + 16);
  if (v18 >= *(v16 + 24) >> 1)
  {
    sub_1CA26DADC();
    v16 = v85;
    *a1 = v85;
  }

  *(v16 + 16) = v18 + 1;
  v19 = v16 + 16 * v18;
  *(v19 + 32) = v14;
  *(v19 + 40) = v15;
  v20 = sub_1CA94C368();
  v109 = 0;
  v21 = [a2 orderingRecordForCollection:v20 error:&v109];

  v22 = v109;
  if (v21)
  {
    v107 = v10;
    v105 = v8;
    v109 = 0x74756374726F6873;
    v110 = 0xEB00000000203A73;
    v23 = v22;
    v106 = v21;
    v24 = [v21 shortcuts];
    sub_1CA94C658();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    sub_1CA26E4D4();
    v25 = sub_1CA94C308();
    v27 = v26;

    MEMORY[0x1CCAA1300](v25, v27);

    v28 = v109;
    v29 = v110;
    sub_1CA26DADC();
    v31 = v30;
    v32 = v30[2];
    if (v32 >= v30[3] >> 1)
    {
      sub_1CA26DADC();
      v31 = v86;
    }

    v31[2] = v32 + 1;
    v33 = &v31[2 * v32];
    v33[4] = v28;
    v33[5] = v29;
    v35 = v14 == sub_1CA94C3A8() && v15 == v34;
    v36 = v107;
    if (v35)
    {
    }

    else
    {
      v37 = sub_1CA94D7F8();

      if ((v37 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (sub_1CA3F14BC(v106, &selRef_folders))
    {
      v109 = 0x3A737265646C6F66;
      v110 = 0xE900000000000020;
      v38 = sub_1CA94C308();
      v40 = v39;

      MEMORY[0x1CCAA1300](v38, v40);

      v41 = v109;
      v42 = v110;
      v43 = v31[2];
      if (v43 >= v31[3] >> 1)
      {
        sub_1CA26DADC();
        v31 = v93;
      }

      v31[2] = v43 + 1;
      v44 = &v31[2 * v43];
      v44[4] = v41;
      v44[5] = v42;
    }

LABEL_29:
    if (sub_1CA3F14BC(v107, &selRef_deserializedLastRemoteCollectionOrdering))
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      sub_1CA94D408();

      v109 = 0xD000000000000019;
      v110 = 0x80000001CA9B2FD0;
      v45 = sub_1CA94C308();
      v47 = v46;

      MEMORY[0x1CCAA1300](v45, v47);

      v48 = v109;
      v49 = v110;
      v50 = v31[2];
      if (v50 >= v31[3] >> 1)
      {
        sub_1CA26DADC();
        v31 = v90;
      }

      v31[2] = v50 + 1;
      v51 = &v31[2 * v50];
      v51[4] = v48;
      v51[5] = v49;
    }

    if (sub_1CA3F14BC(v107, &selRef_deserializedLastRemoteCollectionOrderingSubset))
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      sub_1CA94D408();

      v109 = 0xD00000000000001FLL;
      v110 = 0x80000001CA9B2FB0;
      v52 = sub_1CA94C308();
      v54 = v53;

      MEMORY[0x1CCAA1300](v52, v54);

      v55 = v109;
      v56 = v110;
      v57 = v31[2];
      if (v57 >= v31[3] >> 1)
      {
        sub_1CA26DADC();
        v31 = v91;
      }

      v31[2] = v57 + 1;
      v58 = &v31[2 * v57];
      v58[4] = v55;
      v58[5] = v56;
    }

    if (sub_1CA3F14BC(v107, &selRef_deserializedLastRemoteShortcutOrdering))
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      sub_1CA94D408();

      v109 = 0xD000000000000017;
      v110 = 0x80000001CA9B2F90;
      v59 = sub_1CA94C308();
      v61 = v60;

      MEMORY[0x1CCAA1300](v59, v61);

      v62 = v109;
      v63 = v110;
      v64 = v31[2];
      v65 = v64 + 1;
      if (v64 >= v31[3] >> 1)
      {
        sub_1CA26DADC();
        v31 = v92;
      }

      v31[2] = v65;
      v66 = &v31[2 * v64];
      v66[4] = v62;
      v66[5] = v63;
    }

    else
    {
      v65 = v31[2];
      if (!v65)
      {

        v67 = MEMORY[0x1E69E7CC0];
LABEL_47:
        v109 = v67;
        v75 = sub_1CA94C308();
        v77 = v76;

        v78 = *a1;
        v79 = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v78;
        if ((v79 & 1) == 0)
        {
          v87 = *(v78 + 16);
          sub_1CA26DADC();
          v78 = v88;
          *a1 = v88;
        }

        v80 = *(v78 + 16);
        if (v80 >= *(v78 + 24) >> 1)
        {
          sub_1CA26DADC();
          *a1 = v89;
        }

        v81 = *a1;
        *(v81 + 16) = v80 + 1;
        v82 = v81 + 16 * v80;
        *(v82 + 32) = v75;
        *(v82 + 40) = v77;
        v6 = v101;
        v8 = v105;
        goto LABEL_52;
      }
    }

    v108 = MEMORY[0x1E69E7CC0];
    sub_1CA271524();
    v67 = v108;
    v68 = v31 + 5;
    do
    {
      v69 = *(v68 - 1);
      v70 = *v68;
      v109 = 8224;
      v110 = 0xE200000000000000;
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](v69, v70);

      v72 = v109;
      v71 = v110;
      v73 = v108[2];
      if (v73 >= v108[3] >> 1)
      {
        sub_1CA271524();
      }

      v108[2] = v73 + 1;
      v74 = &v108[2 * v73];
      v74[4] = v72;
      v74[5] = v71;
      v68 += 2;
      --v65;
    }

    while (v65);

    a1 = v100;
    v36 = v107;
    goto LABEL_47;
  }

  v95 = v109;

  sub_1CA948AD8();

  swift_willThrow();
LABEL_58:

LABEL_59:
  v96 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CA3F0AD4@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1CA3F0B98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CA25CF98(a1, a2);
  }

  return a1;
}

void *sub_1CA3F0BAC(uint64_t a1, _BYTE *a2, void *(*a3)(uint64_t *__return_ptr))
{
  result = a3(&v5);
  *a2 = 0;
  return result;
}

void sub_1CA3F0C38(uint64_t a1, void **a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = *a2;
  *a2 = v5;
}

uint64_t sub_1CA3F0D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_9_17(a1, a2, a3, a4);
  *(v4 + 24) = v7(v6);
  return v5();
}

uint64_t sub_1CA3F0E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_9_17(a1, a2, a3, a4);
  *(v4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  return v5();
}

id sub_1CA3F0F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  (*(a1 + 32))(v11, a2);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_1CA94D7D8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1CA3F1094()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1CCAA4BF0);
  }

  return result;
}

id sub_1CA3F1198(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = sub_1CA94C368();

  if (a6 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1CA948BF8();
    sub_1CA39F318(a5, a6);
  }

  v13 = [v6 initWithName:v11 icon:a3 encryptedSchemaVersion:a4 cloudKitMetadata:v12];

  return v13;
}

id sub_1CA3F1250(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1CA94C648();

  if (a2)
  {
    v9 = sub_1CA94C648();
  }

  else
  {
    v9 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1CA948BF8();
    sub_1CA39F318(a3, a4);
  }

  v11 = [v4 initWithShortcuts:v8 folders:v9 cloudKitMetadata:v10];

  return v11;
}

uint64_t sub_1CA3F132C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1CA94C3A8();
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA3F1388(void *a1)
{
  v1 = [a1 cloudKitOrderingRecordMetadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA948C08();

  return v3;
}

uint64_t sub_1CA3F13EC(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1CA94C658();

  return v4;
}

uint64_t sub_1CA3F144C(void *a1)
{
  v2 = [a1 cloudKitFolderRecordMetadata];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA948C08();

  return v3;
}

uint64_t sub_1CA3F14BC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1CA94C658();

  return v4;
}

uint64_t sub_1CA3F1510@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(a1 + 24) = MEMORY[0x1E69E7CA8] + 8;
  return v2();
}

void sub_1CA3F1548(uint64_t a1, void *a2)
{
  v3 = sub_1CA94C648();

  [a2 setDeserializedLastRemoteCollectionOrderingSubset_];
}

void sub_1CA3F15B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();
  [a3 setTemporarySyncFolderName_];
}

void sub_1CA3F160C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA948BF8();
  [a3 setCloudKitFolderRecordMetadata_];
}

void sub_1CA3F1664(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA948BF8();
  [a3 setCloudKitOrderingRecordMetadata_];
}

void sub_1CA3F16BC(uint64_t a1, void *a2)
{
  v3 = sub_1CA94C648();
  [a2 setDeserializedLastRemoteShortcutOrdering_];
}

void sub_1CA3F171C(uint64_t a1, void *a2)
{
  v3 = sub_1CA94C648();
  [a2 setDeserializedLastRemoteCollectionOrdering_];
}

unint64_t sub_1CA3F177C()
{
  result = qword_1EC444F80;
  if (!qword_1EC444F80)
  {
    sub_1CA948CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444F80);
  }

  return result;
}

unint64_t sub_1CA3F1834()
{
  result = qword_1EC444F88;
  if (!qword_1EC444F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444F88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyFolderSyncError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA3F1974()
{
  result = qword_1EC444F90;
  if (!qword_1EC444F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444F90);
  }

  return result;
}

id sub_1CA3F1A58()
{
  v32 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v5 = sub_1CA94C368();
  *(inited + 144) = v1;
  *(inited + 112) = v5;
  *(inited + 120) = 0xD00000000000005DLL;
  *(inited + 128) = 0x80000001CA9B30E0;
  v6 = sub_1CA94C368();
  *(inited + 184) = v1;
  *(inited + 152) = v6;
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x80000001CA9B3140;
  *(inited + 192) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v7 = swift_initStackObject();
  v30 = xmmword_1CA981310;
  *(v7 + 16) = xmmword_1CA981310;
  strcpy((v7 + 32), "dateComponents");
  *(v7 + 47) = -18;
  v31 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v8 = swift_initStackObject();
  *(v8 + 16) = v30;
  *(v8 + 32) = @"Prompt";
  v9 = @"Prompt";
  v10 = sub_1CA94C438();
  v29 = v11;
  *&v30 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v30, v29, v12, v14, 0, 0, v18, v23);
  *(v8 + 64) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v8 + 40) = v25;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v7 + 48) = sub_1CA2F864C();
  v26 = sub_1CA94C1E8();
  *(inited + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 200) = v26;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3F1F94()
{
  v771 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  v768 = xmmword_1CA981420;
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9B31D0;
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
  v806 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v807 = v12;
  v13 = &v756 - v806;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v804 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v803 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v756 - v803;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v802 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v805 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v796 = xmmword_1CA97EDF0;
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v27 = sub_1CA94C438();
  v800 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v801 = &v756;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v756 - v806;
  sub_1CA948D98();
  v33 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v794 = inited;
  v34 = v803;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v800, v29, v31, 0, 0, v32, &v756 - v34);
  v37 = v802;
  *(v24 + 40) = v36;
  *(v24 + 64) = v37;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v799 = v40;
  v800 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v801 = &v756;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v756 - v806;
  sub_1CA948D98();
  v45 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v800, v799, v41, v43, 0, 0, v44, &v756 - v34);
  *(v24 + 104) = v37;
  *(v24 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v48 = v805;
  v49 = sub_1CA6B3784();
  v50 = v794;
  v794[20] = v49;
  v50[23] = v48;
  v50[24] = @"InputPassthrough";
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 200) = 0;
  v50[28] = v51;
  v50[29] = @"Name";
  v52 = @"InputPassthrough";
  v53 = @"Name";
  v54 = sub_1CA94C438();
  v799 = v55;
  v800 = v54;
  v56 = sub_1CA94C438();
  v58 = v57;
  v801 = &v756;
  MEMORY[0x1EEE9AC00](v56);
  v59 = v806;
  sub_1CA948D98();
  v805 = qword_1EDB9F690;
  v60 = [qword_1EDB9F690 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = v803;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v800, v799, v56, v58, 0, 0, &v756 - v59, &v756 - v61);
  v64 = v802;
  v65 = v794;
  v794[30] = v63;
  v65[33] = v64;
  v65[34] = @"Output";
  v786 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v66 = swift_initStackObject();
  v795 = xmmword_1CA9813C0;
  *(v66 + 16) = xmmword_1CA9813C0;
  *(v66 + 32) = 0x656C7069746C754DLL;
  *(v66 + 40) = 0xE800000000000000;
  *(v66 + 48) = 0;
  *(v66 + 72) = MEMORY[0x1E69E6370];
  *(v66 + 80) = 0x614E74757074754FLL;
  *(v66 + 88) = 0xEA0000000000656DLL;
  v67 = @"Output";
  v68 = sub_1CA94C438();
  v799 = v69;
  v800 = v68;
  v798 = sub_1CA94C438();
  v71 = v70;
  v801 = &v756;
  MEMORY[0x1EEE9AC00](v798);
  sub_1CA948D98();
  v72 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 96) = sub_1CA2F9F14(v800, v799, v798, v71, 0, 0, &v756 - v59, &v756 - v61);
  *(v66 + 120) = v64;
  *(v66 + 128) = 0x7365707954;
  *(v66 + 136) = 0xE500000000000000;
  v778 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v66 + 168) = v778;
  *(v66 + 144) = &unk_1F49F8E80;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v770 = v76;
  v77 = v794;
  v794[35] = v75;
  v77[38] = v76;
  v77[39] = @"Parameters";
  v793 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v801 = swift_allocObject();
  *(v801 + 1) = xmmword_1CA9858F0;
  v800 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v799 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_initStackObject();
  v792 = xmmword_1CA981380;
  *(v78 + 16) = xmmword_1CA981380;
  v769 = 0x80000001CA99B500;
  v790 = 0xD000000000000014;
  *(v78 + 32) = @"Class";
  *(v78 + 40) = 0xD000000000000014;
  *(v78 + 48) = 0x80000001CA99B500;
  *(v78 + 64) = v74;
  *(v78 + 72) = @"Description";
  v79 = @"Parameters";
  v791 = @"Class";
  v788 = @"Description";
  v797 = sub_1CA94C438();
  v789 = v80;
  v81 = sub_1CA94C438();
  v83 = v82;
  v798 = &v756;
  MEMORY[0x1EEE9AC00](v81);
  v84 = v806;
  sub_1CA948D98();
  v85 = v805;
  v86 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v756 - v803;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 80) = sub_1CA2F9F14(v797, v789, v81, v83, 0, 0, &v756 - v84, v87);
  *(v78 + 104) = v802;
  *(v78 + 112) = @"Key";
  v789 = 0xD000000000000013;
  *(v78 + 120) = 0xD000000000000013;
  *(v78 + 128) = 0x80000001CA9B3350;
  *(v78 + 144) = MEMORY[0x1E69E6158];
  *(v78 + 152) = @"Label";
  v784 = @"Key";
  *&v785 = @"Label";
  v797 = sub_1CA94C438();
  v787 = v89;
  v90 = sub_1CA94C438();
  v783 = v91;
  v798 = &v756;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v756 - v84;
  sub_1CA948D98();
  v93 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v803;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 160) = sub_1CA2F9F14(v797, v787, v90, v783, 0, 0, v92, &v756 - v94);
  v96 = v802;
  *(v78 + 184) = v802;
  *(v78 + 192) = @"Prompt";
  v787 = @"Prompt";
  v797 = sub_1CA94C438();
  v783 = v97;
  *&v782 = sub_1CA94C438();
  v99 = v98;
  v798 = &v756;
  MEMORY[0x1EEE9AC00](v782);
  v100 = &v756 - v806;
  sub_1CA948D98();
  v101 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 200) = sub_1CA2F9F14(v797, v783, v782, v99, 0, 0, v100, &v756 - v94);
  *(v78 + 224) = v96;
  *(v78 + 232) = @"TextAlignment";
  v103 = MEMORY[0x1E69E6158];
  *(v78 + 264) = MEMORY[0x1E69E6158];
  *(v78 + 240) = 0x7468676952;
  *(v78 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v798 = v104;
  v797 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v767 = @"TextAlignment";
  sub_1CA94C1E8();
  v801[4] = sub_1CA2F864C();
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1CA981300;
  v106 = v791;
  *(v105 + 32) = v791;
  *(v105 + 40) = 0xD00000000000001ELL;
  *(v105 + 48) = 0x80000001CA9B3400;
  v107 = v788;
  *(v105 + 64) = v103;
  *(v105 + 72) = v107;
  v777 = v106;
  v781 = v107;
  v788 = sub_1CA94C438();
  v783 = v108;
  v109 = sub_1CA94C438();
  v111 = v110;
  v791 = &v756;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v756 - v806;
  sub_1CA948D98();
  v113 = v805;
  v114 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v756 - v803;
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v117 = sub_1CA2F9F14(v788, v783, v109, v111, 0, 0, v112, v115);
  v118 = v790;
  *(v105 + 80) = v117;
  v119 = v802;
  v120 = v784;
  v121 = v785;
  *(v105 + 104) = v802;
  *(v105 + 112) = v120;
  *(v105 + 120) = v118;
  *(v105 + 128) = 0x80000001CA9B34A0;
  *(v105 + 144) = MEMORY[0x1E69E6158];
  *(v105 + 152) = v121;
  v788 = v120;
  v791 = v121;
  v122 = sub_1CA94C438();
  v783 = v123;
  v784 = v122;
  v124 = sub_1CA94C438();
  *&v782 = v125;
  *&v785 = &v756;
  MEMORY[0x1EEE9AC00](v124);
  v126 = v806;
  sub_1CA948D98();
  v127 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = v803;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 160) = sub_1CA2F9F14(v784, v783, v124, v782, 0, 0, &v756 - v126, &v756 - v128);
  *(v105 + 184) = v119;
  *(v105 + 192) = @"LegacyKey";
  *&v785 = 0xD000000000000016;
  *(v105 + 200) = 0xD000000000000016;
  *(v105 + 208) = 0x80000001CA9B34E0;
  v130 = v787;
  *(v105 + 224) = MEMORY[0x1E69E6158];
  *(v105 + 232) = v130;
  v779 = v130;
  v131 = @"LegacyKey";
  v132 = sub_1CA94C438();
  v783 = v133;
  v784 = v132;
  v134 = sub_1CA94C438();
  v136 = v135;
  v787 = &v756;
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948D98();
  v137 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 240) = sub_1CA2F9F14(v784, v783, v134, v136, 0, 0, &v756 - v126, &v756 - v128);
  *(v105 + 264) = v802;
  *(v105 + 272) = @"Optional";
  *(v105 + 280) = 1;
  *(v105 + 304) = MEMORY[0x1E69E6370];
  *(v105 + 312) = @"RequiredResources";
  v784 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v139 = swift_allocObject();
  v782 = xmmword_1CA981310;
  *(v139 + 16) = xmmword_1CA981310;
  v787 = 0x80000001CA993590;
  v140 = @"Optional";
  v780 = @"RequiredResources";
  v141 = MEMORY[0x1E69E6158];
  *(v139 + 32) = sub_1CA94C1E8();
  v783 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v105 + 344) = v783;
  *(v105 + 320) = v139;
  sub_1CA94C1E8();
  v801[5] = sub_1CA2F864C();
  v142 = swift_allocObject();
  *(v142 + 16) = v792;
  v776 = 0x80000001CA99C4A0;
  v143 = v777;
  v144 = v785;
  *(v142 + 32) = v777;
  *(v142 + 40) = v144;
  *(v142 + 48) = 0x80000001CA99C4A0;
  *(v142 + 64) = v141;
  *(v142 + 72) = @"DefaultValue";
  *(v142 + 80) = 0x7472656C41206F4ELL;
  *(v142 + 88) = 0xE800000000000000;
  *(v142 + 104) = v141;
  *(v142 + 112) = @"Items";
  v773 = swift_allocObject();
  *(v773 + 1) = xmmword_1CA981360;
  v774 = v143;
  v765 = @"DefaultValue";
  v775 = @"Items";
  *&v772 = sub_1CA94C438();
  *&v766 = v145;
  v764 = sub_1CA94C438();
  v147 = v146;
  v777 = &v756;
  MEMORY[0x1EEE9AC00](v764);
  v148 = v806;
  sub_1CA948D98();
  v149 = v805;
  v150 = [v805 bundleURL];
  v763 = &v756;
  MEMORY[0x1EEE9AC00](v150);
  v151 = v803;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v772, v766, v764, v147, 0, 0, &v756 - v148, &v756 - v151);
  v154 = v773;
  v773[4] = v153;
  *&v772 = sub_1CA94C438();
  *&v766 = v155;
  v156 = sub_1CA94C438();
  v158 = v157;
  v777 = &v756;
  MEMORY[0x1EEE9AC00](v156);
  v159 = &v756 - v148;
  sub_1CA948D98();
  v160 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v154 + 40) = sub_1CA2F9F14(v772, v766, v156, v158, 0, 0, v159, &v756 - v151);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v777 = v162;
  *(v142 + 120) = v154;
  v163 = v788;
  *(v142 + 144) = v162;
  *(v142 + 152) = v163;
  strcpy((v142 + 160), "WFAlertEnabled");
  *(v142 + 175) = -18;
  v164 = v791;
  *(v142 + 184) = MEMORY[0x1E69E6158];
  *(v142 + 192) = v164;
  v764 = v163;
  v773 = v164;
  v788 = sub_1CA94C438();
  *&v772 = v165;
  *&v766 = sub_1CA94C438();
  v167 = v166;
  v791 = &v756;
  MEMORY[0x1EEE9AC00](v766);
  v168 = &v756 - v806;
  sub_1CA948D98();
  v169 = v805;
  v170 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = v803;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v142 + 200) = sub_1CA2F9F14(v788, v772, v766, v167, 0, 0, v168, &v756 - v171);
  v173 = v802;
  v174 = v779;
  *(v142 + 224) = v802;
  *(v142 + 232) = v174;
  v788 = v174;
  v779 = sub_1CA94C438();
  *&v772 = v175;
  v176 = sub_1CA94C438();
  *&v766 = v177;
  v791 = &v756;
  MEMORY[0x1EEE9AC00](v176);
  v178 = v806;
  sub_1CA948D98();
  v179 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v181 = sub_1CA2F9F14(v779, v772, v176, v766, 0, 0, &v756 - v178, &v756 - v171);
  *(v142 + 264) = v173;
  *(v142 + 240) = v181;
  sub_1CA94C1E8();
  v801[6] = sub_1CA2F864C();
  v182 = swift_allocObject();
  v772 = xmmword_1CA981400;
  *(v182 + 16) = xmmword_1CA981400;
  v184 = v774;
  v183 = v775;
  v185 = v785;
  *(v182 + 32) = v774;
  *(v182 + 40) = v185;
  *(v182 + 48) = v776;
  v186 = MEMORY[0x1E69E6158];
  v187 = v765;
  *(v182 + 64) = MEMORY[0x1E69E6158];
  *(v182 + 72) = v187;
  *(v182 + 80) = 0x656D6954207441;
  *(v182 + 88) = 0xE700000000000000;
  *(v182 + 104) = v186;
  *(v182 + 112) = v183;
  v791 = swift_allocObject();
  v766 = xmmword_1CA981570;
  *(v791 + 1) = xmmword_1CA981570;
  v188 = v187;
  v189 = v183;
  v779 = v184;
  v190 = v188;
  v765 = v189;
  v775 = v190;
  v191 = sub_1CA94C438();
  v762 = v192;
  v763 = v191;
  v193 = sub_1CA94C438();
  v761 = v194;
  v774 = &v756;
  MEMORY[0x1EEE9AC00](v193);
  sub_1CA948D98();
  v195 = v805;
  v196 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  v197 = &v756 - v803;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v199 = sub_1CA2F9F14(v763, v762, v193, v761, 0, 0, &v756 - v178, v197);
  v791[4] = v199;
  v200 = sub_1CA94C438();
  v762 = v201;
  v763 = v200;
  v202 = sub_1CA94C438();
  v761 = v203;
  v774 = &v756;
  MEMORY[0x1EEE9AC00](v202);
  v204 = v806;
  sub_1CA948D98();
  v205 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  v206 = v803;
  sub_1CA948B68();

  v207 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v208 = sub_1CA2F9F14(v763, v762, v202, v761, 0, 0, &v756 - v204, &v756 - v206);
  v209 = v791;
  v791[5] = v208;
  v210 = sub_1CA94C438();
  v762 = v211;
  v763 = v210;
  v212 = sub_1CA94C438();
  v761 = v213;
  v774 = &v756;
  MEMORY[0x1EEE9AC00](v212);
  v214 = &v756 - v204;
  sub_1CA948D98();
  v215 = v805;
  v216 = [v805 bundleURL];
  v760 = &v756;
  MEMORY[0x1EEE9AC00](v216);
  sub_1CA948B68();

  v217 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v209[6] = sub_1CA2F9F14(v763, v762, v212, v761, 0, 0, v214, &v756 - v206);
  v218 = sub_1CA94C438();
  v762 = v219;
  v763 = v218;
  v220 = sub_1CA94C438();
  v761 = v221;
  v774 = &v756;
  MEMORY[0x1EEE9AC00](v220);
  v222 = &v756 - v806;
  sub_1CA948D98();
  v223 = [v215 bundleURL];
  MEMORY[0x1EEE9AC00](v223);
  v224 = &v756 - v803;
  sub_1CA948B68();

  v225 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v226 = sub_1CA2F9F14(v763, v762, v220, v761, 0, 0, v222, v224);
  v227 = v791;
  v791[7] = v226;
  *(v182 + 120) = v227;
  v228 = v764;
  *(v182 + 144) = v777;
  *(v182 + 152) = v228;
  v774 = 0x80000001CA994630;
  *(v182 + 160) = 0xD000000000000010;
  *(v182 + 168) = 0x80000001CA994630;
  v229 = v773;
  *(v182 + 184) = MEMORY[0x1E69E6158];
  *(v182 + 192) = v229;
  v764 = v228;
  v773 = v229;
  v230 = sub_1CA94C438();
  v762 = v231;
  v763 = v230;
  v761 = sub_1CA94C438();
  v233 = v232;
  v791 = &v756;
  MEMORY[0x1EEE9AC00](v761);
  v234 = v806;
  sub_1CA948D98();
  v235 = v805;
  v236 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v236);
  v237 = v803;
  sub_1CA948B68();

  v238 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v182 + 200) = sub_1CA2F9F14(v763, v762, v761, v233, 0, 0, &v756 - v234, &v756 - v237);
  v239 = v802;
  v240 = v788;
  *(v182 + 224) = v802;
  *(v182 + 232) = v240;
  v791 = v240;
  v241 = sub_1CA94C438();
  v762 = v242;
  v763 = v241;
  v761 = sub_1CA94C438();
  v244 = v243;
  v788 = &v756;
  MEMORY[0x1EEE9AC00](v761);
  sub_1CA948D98();
  v245 = [v235 bundleURL];
  MEMORY[0x1EEE9AC00](v245);
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v182 + 240) = sub_1CA2F9F14(v763, v762, v761, v244, 0, 0, &v756 - v234, &v756 - v237);
  v247 = v780;
  *(v182 + 264) = v239;
  *(v182 + 272) = v247;
  v248 = swift_allocObject();
  *(v248 + 16) = v782;
  v788 = 0x80000001CA993570;
  v780 = v247;
  v249 = MEMORY[0x1E69E6158];
  *(v248 + 32) = sub_1CA94C1E8();
  *(v182 + 304) = v783;
  *(v182 + 280) = v248;
  sub_1CA94C1E8();
  v801[7] = sub_1CA2F864C();
  v250 = swift_allocObject();
  *(v250 + 16) = v792;
  v251 = v779;
  v252 = v789;
  *(v250 + 32) = v779;
  *(v250 + 40) = v252;
  *(v250 + 48) = 0x80000001CA99B730;
  v253 = v781;
  *(v250 + 64) = v249;
  *(v250 + 72) = v253;
  v760 = v251;
  v761 = v253;
  v779 = sub_1CA94C438();
  v255 = v254;
  v256 = sub_1CA94C438();
  v258 = v257;
  v781 = &v756;
  MEMORY[0x1EEE9AC00](v256);
  v259 = &v756 - v806;
  sub_1CA948D98();
  v260 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v260);
  v261 = &v756 - v803;
  sub_1CA948B68();

  v262 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v250 + 80) = sub_1CA2F9F14(v779, v255, v256, v258, 0, 0, v259, v261);
  v263 = v764;
  *(v250 + 104) = v802;
  *(v250 + 112) = v263;
  *(v250 + 120) = 0x4C7472656C414657;
  *(v250 + 128) = 0xEF6E6F697461636FLL;
  v264 = v773;
  *(v250 + 144) = MEMORY[0x1E69E6158];
  *(v250 + 152) = v264;
  v265 = v263;
  v266 = v264;
  v267 = v265;
  v268 = v266;
  v762 = v267;
  v763 = v268;
  v779 = sub_1CA94C438();
  v773 = v269;
  v270 = sub_1CA94C438();
  v764 = v271;
  v781 = &v756;
  MEMORY[0x1EEE9AC00](v270);
  v272 = v806;
  sub_1CA948D98();
  v273 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v273);
  v274 = v803;
  sub_1CA948B68();

  v275 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v250 + 160) = sub_1CA2F9F14(v779, v773, v270, v764, 0, 0, &v756 - v272, &v756 - v274);
  v276 = v791;
  *(v250 + 184) = v802;
  *(v250 + 192) = v276;
  v773 = v276;
  v781 = sub_1CA94C438();
  v779 = v277;
  v278 = sub_1CA94C438();
  v764 = v279;
  v791 = &v756;
  MEMORY[0x1EEE9AC00](v278);
  sub_1CA948D98();
  v280 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v280);
  sub_1CA948B68();

  v281 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v250 + 200) = sub_1CA2F9F14(v781, v779, v278, v764, 0, 0, &v756 - v272, &v756 - v274);
  v282 = v780;
  *(v250 + 224) = v802;
  *(v250 + 232) = v282;
  v781 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v283 = swift_allocObject();
  *(v283 + 16) = v796;
  v284 = swift_allocObject();
  *(v284 + 16) = v795;
  strcpy((v284 + 32), "WFParameterKey");
  *(v284 + 47) = -18;
  strcpy((v284 + 48), "WFAlertEnabled");
  *(v284 + 63) = -18;
  v285 = MEMORY[0x1E69E6158];
  *(v284 + 72) = MEMORY[0x1E69E6158];
  *(v284 + 80) = 0xD000000000000010;
  v286 = v787;
  *(v284 + 88) = v788;
  *(v284 + 96) = 0x7472656C41;
  *(v284 + 104) = 0xE500000000000000;
  *(v284 + 120) = v285;
  *(v284 + 128) = 0x72756F7365524657;
  *(v284 + 168) = v285;
  *(v284 + 136) = 0xEF7373616C436563;
  *(v284 + 144) = 0xD00000000000001BLL;
  v779 = 0xD00000000000001BLL;
  *(v284 + 152) = v286;
  v759 = v282;
  *(v283 + 32) = sub_1CA94C1E8();
  v287 = swift_allocObject();
  *(v287 + 16) = v795;
  strcpy((v287 + 32), "WFParameterKey");
  *(v287 + 47) = -18;
  *(v287 + 48) = 0xD000000000000010;
  *(v287 + 56) = v774;
  v764 = 0x80000001CA9A2F30;
  v791 = 0xD000000000000011;
  *(v287 + 72) = v285;
  *(v287 + 80) = 0xD000000000000011;
  *(v287 + 88) = 0x80000001CA9A2F30;
  *(v287 + 96) = &unk_1F49F8FB0;
  *(v287 + 120) = v778;
  *(v287 + 128) = 0x72756F7365524657;
  *(v287 + 168) = v285;
  *(v287 + 136) = 0xEF7373616C436563;
  *(v287 + 144) = 0xD00000000000001BLL;
  *(v287 + 152) = v286;
  *(v283 + 40) = sub_1CA94C1E8();
  v780 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v250 + 264) = v780;
  *(v250 + 240) = v283;
  sub_1CA94C1E8();
  v801[8] = sub_1CA2F864C();
  v288 = swift_allocObject();
  *(v288 + 16) = v772;
  *(v288 + 32) = @"AllowsMultipleValues";
  *(v288 + 40) = 0;
  v289 = v760;
  v290 = v761;
  *(v288 + 64) = MEMORY[0x1E69E6370];
  *(v288 + 72) = v289;
  *(v288 + 80) = 0xD000000000000017;
  *(v288 + 88) = 0x80000001CA9A37F0;
  *(v288 + 104) = v285;
  *(v288 + 112) = v290;
  v291 = v289;
  v292 = v290;
  v293 = v291;
  v294 = v292;
  v760 = v293;
  v761 = v294;
  v295 = @"AllowsMultipleValues";
  v296 = sub_1CA94C438();
  v757 = v297;
  v758 = v296;
  v298 = sub_1CA94C438();
  v300 = v299;
  *&v772 = &v756;
  MEMORY[0x1EEE9AC00](v298);
  v301 = v806;
  sub_1CA948D98();
  v302 = v805;
  v303 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v303);
  v304 = &v756 - v803;
  sub_1CA948B68();

  v305 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v288 + 120) = sub_1CA2F9F14(v758, v757, v298, v300, 0, 0, &v756 - v301, v304);
  v306 = v762;
  v307 = v763;
  *(v288 + 144) = v802;
  *(v288 + 152) = v306;
  strcpy((v288 + 160), "WFAlertPerson");
  *(v288 + 174) = -4864;
  *(v288 + 184) = MEMORY[0x1E69E6158];
  *(v288 + 192) = v307;
  v762 = v306;
  v763 = v307;
  v308 = sub_1CA94C438();
  v757 = v309;
  v758 = v308;
  v310 = sub_1CA94C438();
  v756 = v311;
  *&v772 = &v756;
  MEMORY[0x1EEE9AC00](v310);
  sub_1CA948D98();
  v312 = [v302 bundleURL];
  MEMORY[0x1EEE9AC00](v312);
  v313 = v803;
  sub_1CA948B68();

  v314 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v288 + 200) = sub_1CA2F9F14(v758, v757, v310, v756, 0, 0, &v756 - v301, &v756 - v313);
  v315 = v802;
  v316 = v773;
  *(v288 + 224) = v802;
  *(v288 + 232) = v316;
  v317 = sub_1CA94C438();
  v757 = v318;
  v758 = v317;
  v756 = sub_1CA94C438();
  v320 = v319;
  *&v772 = &v756;
  MEMORY[0x1EEE9AC00](v756);
  v321 = &v756 - v806;
  sub_1CA948D98();
  v322 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v322);
  sub_1CA948B68();

  v323 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v288 + 240) = sub_1CA2F9F14(v758, v757, v756, v320, 0, 0, v321, &v756 - v313);
  *(v288 + 264) = v315;
  v324 = v759;
  *(v288 + 272) = v759;
  v325 = swift_allocObject();
  *(v325 + 16) = v796;
  *&v772 = v324;
  v326 = MEMORY[0x1E69E6158];
  *(v325 + 32) = sub_1CA94C1E8();
  *(v325 + 40) = sub_1CA94C1E8();
  *(v288 + 304) = v783;
  *(v288 + 280) = v325;
  sub_1CA94C1E8();
  v801[9] = sub_1CA2F864C();
  v327 = swift_allocObject();
  *(v327 + 16) = xmmword_1CA9813E0;
  v328 = v760;
  *(v327 + 32) = v760;
  *(v327 + 40) = 0xD00000000000001CLL;
  *(v327 + 48) = 0x80000001CA9AC750;
  *(v327 + 64) = v326;
  *(v327 + 72) = @"DefaultUnit";
  *(v327 + 80) = 29798;
  *(v327 + 88) = 0xE200000000000000;
  v329 = v775;
  *(v327 + 104) = v326;
  *(v327 + 112) = v329;
  *(v327 + 120) = 1000;
  v330 = v761;
  *(v327 + 144) = MEMORY[0x1E69E6530];
  *(v327 + 152) = v330;
  v759 = v328;
  v760 = v330;
  v331 = @"DefaultUnit";
  v332 = sub_1CA94C438();
  v757 = v333;
  v758 = v332;
  v334 = sub_1CA94C438();
  v756 = v335;
  v761 = &v756;
  MEMORY[0x1EEE9AC00](v334);
  v336 = v806;
  sub_1CA948D98();
  v337 = v805;
  v338 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v338);
  v339 = v803;
  sub_1CA948B68();

  v340 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v341 = sub_1CA2F9F14(v758, v757, v334, v756, 0, 0, &v756 - v336, &v756 - v339);
  v342 = v762;
  *(v327 + 160) = v341;
  v343 = v802;
  *(v327 + 184) = v802;
  *(v327 + 192) = v342;
  *(v327 + 200) = 0xD000000000000015;
  *(v327 + 208) = 0x80000001CA9B3A50;
  v344 = v763;
  *(v327 + 224) = MEMORY[0x1E69E6158];
  *(v327 + 232) = v344;
  v761 = v342;
  v762 = v344;
  v345 = sub_1CA94C438();
  v757 = v346;
  v758 = v345;
  v347 = sub_1CA94C438();
  v756 = v348;
  v763 = &v756;
  MEMORY[0x1EEE9AC00](v347);
  sub_1CA948D98();
  v349 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v349);
  sub_1CA948B68();

  v350 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v327 + 240) = sub_1CA2F9F14(v758, v757, v347, v756, 0, 0, &v756 - v336, &v756 - v339);
  v351 = v772;
  *(v327 + 264) = v343;
  *(v327 + 272) = v351;
  v352 = swift_allocObject();
  *(v352 + 16) = v796;
  v353 = swift_allocObject();
  *(v353 + 16) = v795;
  strcpy((v353 + 32), "WFParameterKey");
  *(v353 + 47) = -18;
  strcpy((v353 + 48), "WFAlertEnabled");
  *(v353 + 63) = -18;
  v354 = MEMORY[0x1E69E6158];
  *(v353 + 72) = MEMORY[0x1E69E6158];
  *(v353 + 80) = 0xD000000000000010;
  *(v353 + 88) = v788;
  *(v353 + 96) = 0x7472656C41;
  *(v353 + 104) = 0xE500000000000000;
  *(v353 + 120) = v354;
  *(v353 + 128) = 0x72756F7365524657;
  *(v353 + 168) = v354;
  v355 = v354;
  v356 = v779;
  *(v353 + 136) = 0xEF7373616C436563;
  *(v353 + 144) = v356;
  v357 = v787;
  *(v353 + 152) = v787;
  *(v352 + 32) = sub_1CA94C1E8();
  v358 = swift_allocObject();
  *(v358 + 16) = v795;
  strcpy((v358 + 32), "WFParameterKey");
  *(v358 + 47) = -18;
  *(v358 + 48) = 0xD000000000000010;
  *(v358 + 56) = v774;
  v359 = v791;
  *(v358 + 72) = v355;
  *(v358 + 80) = v359;
  *(v358 + 88) = v764;
  *(v358 + 96) = &unk_1F49F90F0;
  *(v358 + 120) = v778;
  *(v358 + 128) = 0x72756F7365524657;
  *(v358 + 168) = v355;
  *(v358 + 136) = 0xEF7373616C436563;
  *(v358 + 144) = v356;
  *(v358 + 152) = v357;
  *(v352 + 40) = sub_1CA94C1E8();
  *(v327 + 280) = v352;
  v360 = v767;
  *(v327 + 304) = v780;
  *(v327 + 312) = v360;
  *(v327 + 320) = 0x7468676952;
  *(v327 + 328) = 0xE500000000000000;
  *(v327 + 344) = v355;
  *(v327 + 352) = @"WFUnitType";
  *(v327 + 384) = v355;
  *(v327 + 360) = 0x6874676E654CLL;
  *(v327 + 368) = 0xE600000000000000;
  v774 = v360;
  v361 = @"WFUnitType";
  sub_1CA94C1E8();
  v801[10] = sub_1CA2F864C();
  v362 = swift_allocObject();
  *(v362 + 16) = v768;
  v363 = v759;
  v364 = v760;
  v365 = v790;
  *(v362 + 32) = v759;
  *(v362 + 40) = v365;
  *(v362 + 48) = 0x80000001CA9AB710;
  *(v362 + 64) = v355;
  *(v362 + 72) = v364;
  v763 = v363;
  *&v768 = v364;
  v767 = sub_1CA94C438();
  v367 = v366;
  v368 = sub_1CA94C438();
  v370 = v369;
  v778 = &v756;
  MEMORY[0x1EEE9AC00](v368);
  v371 = &v756 - v806;
  sub_1CA948D98();
  v372 = v805;
  v373 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v373);
  v374 = &v756 - v803;
  sub_1CA948B68();

  v375 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v376 = sub_1CA2F9F14(v767, v367, v368, v370, 0, 0, v371, v374);
  *(v362 + 104) = v802;
  *(v362 + 80) = v376;
  *(v362 + 112) = sub_1CA94C368();
  *(v362 + 120) = 1;
  v377 = v761;
  v378 = v762;
  *(v362 + 144) = MEMORY[0x1E69E6370];
  *(v362 + 152) = v377;
  *(v362 + 160) = v791;
  *(v362 + 168) = 0x80000001CA9B3BC0;
  *(v362 + 184) = MEMORY[0x1E69E6158];
  *(v362 + 192) = v378;
  v764 = v377;
  v767 = v378;
  v379 = sub_1CA94C438();
  v761 = v380;
  v762 = v379;
  v381 = sub_1CA94C438();
  v760 = v382;
  v778 = &v756;
  MEMORY[0x1EEE9AC00](v381);
  v383 = v806;
  sub_1CA948D98();
  v384 = [v372 bundleURL];
  MEMORY[0x1EEE9AC00](v384);
  v385 = &v756 - v803;
  sub_1CA948B68();

  v386 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v362 + 200) = sub_1CA2F9F14(v762, v761, v381, v760, 0, 0, &v756 - v383, v385);
  *(v362 + 224) = v802;
  *(v362 + 232) = @"Placeholder";
  v778 = @"Placeholder";
  v387 = sub_1CA94C438();
  v760 = v388;
  v761 = v387;
  v389 = sub_1CA94C438();
  v759 = v390;
  v762 = &v756;
  MEMORY[0x1EEE9AC00](v389);
  sub_1CA948D98();
  v391 = v805;
  v392 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v392);
  v393 = v803;
  sub_1CA948B68();

  v394 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v362 + 240) = sub_1CA2F9F14(v761, v760, v389, v759, 0, 0, &v756 - v383, &v756 - v393);
  v395 = v802;
  v396 = v773;
  *(v362 + 264) = v802;
  *(v362 + 272) = v396;
  v397 = sub_1CA94C438();
  v761 = v398;
  v762 = v397;
  v399 = sub_1CA94C438();
  v760 = v400;
  v773 = &v756;
  MEMORY[0x1EEE9AC00](v399);
  v401 = &v756 - v806;
  sub_1CA948D98();
  v402 = [v391 bundleURL];
  MEMORY[0x1EEE9AC00](v402);
  sub_1CA948B68();

  v403 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v362 + 280) = sub_1CA2F9F14(v762, v761, v399, v760, 0, 0, v401, &v756 - v393);
  v404 = v772;
  *(v362 + 304) = v395;
  *(v362 + 312) = v404;
  v405 = swift_allocObject();
  *(v405 + 16) = v796;
  v406 = MEMORY[0x1E69E6158];
  *(v405 + 32) = sub_1CA94C1E8();
  *(v405 + 40) = sub_1CA94C1E8();
  *(v362 + 320) = v405;
  *(v362 + 344) = v783;
  *(v362 + 352) = @"ResultType";
  strcpy((v362 + 360), "WFDetectedDate");
  *(v362 + 375) = -18;
  v407 = v774;
  *(v362 + 384) = v406;
  *(v362 + 392) = v407;
  *(v362 + 424) = v406;
  *(v362 + 400) = 0x7468676952;
  *(v362 + 408) = 0xE500000000000000;
  v408 = @"ResultType";
  sub_1CA94C1E8();
  v801[11] = sub_1CA2F864C();
  v409 = swift_allocObject();
  *(v409 + 16) = xmmword_1CA981370;
  v410 = v763;
  v411 = v785;
  *(v409 + 32) = v763;
  *(v409 + 40) = v411;
  v412 = v775;
  *(v409 + 48) = v776;
  *(v409 + 64) = v406;
  *(v409 + 72) = v412;
  *(v409 + 80) = 1701736270;
  *(v409 + 88) = 0xE400000000000000;
  v413 = v765;
  *(v409 + 104) = v406;
  *(v409 + 112) = v413;
  *&v785 = swift_allocObject();
  *(v785 + 16) = v766;
  v784 = v410;
  v414 = sub_1CA94C438();
  v775 = v415;
  v776 = v414;
  v416 = sub_1CA94C438();
  v773 = v417;
  v783 = &v756;
  MEMORY[0x1EEE9AC00](v416);
  v418 = &v756 - v806;
  sub_1CA948D98();
  v419 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v419);
  v420 = v803;
  sub_1CA948B68();

  v421 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v422 = sub_1CA2F9F14(v776, v775, v416, v773, 0, 0, v418, &v756 - v420);
  v423 = v785;
  *(v785 + 32) = v422;
  v424 = sub_1CA94C438();
  v775 = v425;
  v776 = v424;
  v426 = sub_1CA94C438();
  v773 = v427;
  v783 = &v756;
  MEMORY[0x1EEE9AC00](v426);
  v428 = v806;
  sub_1CA948D98();
  v429 = [v805 bundleURL];
  *&v772 = &v756;
  MEMORY[0x1EEE9AC00](v429);
  sub_1CA948B68();

  v430 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v423 + 40) = sub_1CA2F9F14(v776, v775, v426, v773, 0, 0, &v756 - v428, &v756 - v420);
  v431 = sub_1CA94C438();
  v775 = v432;
  v776 = v431;
  v433 = sub_1CA94C438();
  v773 = v434;
  v783 = &v756;
  MEMORY[0x1EEE9AC00](v433);
  v435 = &v756 - v428;
  sub_1CA948D98();
  v436 = v805;
  v437 = [v805 bundleURL];
  *&v772 = &v756;
  MEMORY[0x1EEE9AC00](v437);
  v438 = v803;
  sub_1CA948B68();

  v439 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v440 = sub_1CA2F9F14(v776, v775, v433, v773, 0, 0, v435, &v756 - v438);
  *(v785 + 48) = v440;
  v441 = sub_1CA94C438();
  v775 = v442;
  v776 = v441;
  v443 = sub_1CA94C438();
  v773 = v444;
  v783 = &v756;
  MEMORY[0x1EEE9AC00](v443);
  v445 = &v756 - v806;
  sub_1CA948D98();
  v446 = [v436 bundleURL];
  MEMORY[0x1EEE9AC00](v446);
  sub_1CA948B68();

  v447 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v448 = sub_1CA2F9F14(v776, v775, v443, v773, 0, 0, v445, &v756 - v438);
  v449 = v785;
  *(v785 + 56) = v448;
  *(v409 + 120) = v449;
  v450 = v764;
  *(v409 + 144) = v777;
  *(v409 + 152) = v450;
  *(v409 + 160) = 0x69726F6972504657;
  *(v409 + 168) = 0xEA00000000007974;
  v451 = v767;
  *(v409 + 184) = MEMORY[0x1E69E6158];
  *(v409 + 192) = v451;
  v783 = v450;
  *&v785 = v451;
  v452 = sub_1CA94C438();
  v454 = v453;
  v455 = sub_1CA94C438();
  v457 = v456;
  v777 = &v756;
  MEMORY[0x1EEE9AC00](v455);
  v458 = &v756 - v806;
  sub_1CA948D98();
  v459 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v459);
  v460 = &v756 - v803;
  sub_1CA948B68();

  v461 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v462 = sub_1CA2F9F14(v452, v454, v455, v457, 0, 0, v458, v460);
  *(v409 + 224) = v802;
  *(v409 + 200) = v462;
  sub_1CA94C1E8();
  v801[12] = sub_1CA2F864C();
  v463 = swift_allocObject();
  *(v463 + 16) = v795;
  v465 = v783;
  v464 = v784;
  v466 = v791;
  *(v463 + 32) = v784;
  *(v463 + 40) = v466;
  *(v463 + 48) = 0x80000001CA99E620;
  v467 = MEMORY[0x1E69E6158];
  *(v463 + 64) = MEMORY[0x1E69E6158];
  *(v463 + 72) = v465;
  *(v463 + 80) = 0x67616C464657;
  *(v463 + 88) = 0xE600000000000000;
  v468 = v785;
  *(v463 + 104) = v467;
  *(v463 + 112) = v468;
  v784 = v464;
  v777 = v465;
  *&v785 = v468;
  v469 = sub_1CA94C438();
  v471 = v470;
  v472 = sub_1CA94C438();
  v474 = v473;
  v783 = &v756;
  MEMORY[0x1EEE9AC00](v472);
  v475 = &v756 - v806;
  sub_1CA948D98();
  v476 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v476);
  v477 = &v756 - v803;
  sub_1CA948B68();

  v478 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v479 = sub_1CA2F9F14(v469, v471, v472, v474, 0, 0, v475, v477);
  *(v463 + 144) = v802;
  *(v463 + 120) = v479;
  sub_1CA94C1E8();
  v801[13] = sub_1CA2F864C();
  v480 = swift_allocObject();
  *(v480 + 16) = v792;
  v481 = v784;
  *(v480 + 32) = v784;
  strcpy((v480 + 40), "WFURLParameter");
  *(v480 + 55) = -18;
  v482 = v768;
  *(v480 + 64) = MEMORY[0x1E69E6158];
  *(v480 + 72) = v482;
  v784 = v481;
  v783 = v482;
  v775 = sub_1CA94C438();
  v773 = v483;
  v484 = sub_1CA94C438();
  v486 = v485;
  v776 = &v756;
  MEMORY[0x1EEE9AC00](v484);
  v487 = v806;
  sub_1CA948D98();
  v488 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v488);
  v489 = &v756 - v803;
  sub_1CA948B68();

  v490 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v491 = sub_1CA2F9F14(v775, v773, v484, v486, 0, 0, &v756 - v487, v489);
  v492 = v777;
  *(v480 + 80) = v491;
  *(v480 + 104) = v802;
  *(v480 + 112) = v492;
  *(v480 + 120) = 0x4C52554657;
  *(v480 + 128) = 0xE500000000000000;
  v493 = v785;
  *(v480 + 144) = MEMORY[0x1E69E6158];
  *(v480 + 152) = v493;
  v776 = v492;
  v777 = v493;
  v775 = sub_1CA94C438();
  v773 = v494;
  v495 = sub_1CA94C438();
  *&v772 = v496;
  *&v785 = &v756;
  MEMORY[0x1EEE9AC00](v495);
  v497 = &v756 - v487;
  sub_1CA948D98();
  v498 = v805;
  v499 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v499);
  v500 = v803;
  sub_1CA948B68();

  v501 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v480 + 160) = sub_1CA2F9F14(v775, v773, v495, v772, 0, 0, v497, &v756 - v500);
  v502 = v802;
  v503 = v778;
  *(v480 + 184) = v802;
  *(v480 + 192) = v503;
  v775 = sub_1CA94C438();
  v773 = v504;
  v505 = sub_1CA94C438();
  v507 = v506;
  *&v785 = &v756;
  MEMORY[0x1EEE9AC00](v505);
  v508 = &v756 - v806;
  sub_1CA948D98();
  v509 = [v498 bundleURL];
  MEMORY[0x1EEE9AC00](v509);
  sub_1CA948B68();

  v510 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v480 + 200) = sub_1CA2F9F14(v775, v773, v505, v507, 0, 0, v508, &v756 - v500);
  v511 = v774;
  *(v480 + 224) = v502;
  *(v480 + 232) = v511;
  v512 = MEMORY[0x1E69E6158];
  *(v480 + 264) = MEMORY[0x1E69E6158];
  *(v480 + 240) = 0x7468676952;
  *(v480 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  v801[14] = sub_1CA2F864C();
  v513 = swift_allocObject();
  v785 = xmmword_1CA981350;
  *(v513 + 16) = xmmword_1CA981350;
  v774 = 0xD000000000000019;
  v775 = 0x80000001CA99B030;
  v515 = v783;
  v514 = v784;
  *(v513 + 32) = v784;
  *(v513 + 40) = 0xD000000000000019;
  *(v513 + 48) = 0x80000001CA99B030;
  *(v513 + 64) = v512;
  *(v513 + 72) = v515;
  v784 = v514;
  v783 = v515;
  *&v772 = sub_1CA94C438();
  *&v768 = v516;
  v517 = sub_1CA94C438();
  v767 = v518;
  v773 = &v756;
  MEMORY[0x1EEE9AC00](v517);
  v519 = v806;
  sub_1CA948D98();
  v520 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v520);
  v521 = v803;
  sub_1CA948B68();

  v522 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v513 + 80) = sub_1CA2F9F14(v772, v768, v517, v767, 0, 0, &v756 - v519, &v756 - v521);
  v523 = v802;
  v524 = v776;
  v525 = v777;
  *(v513 + 104) = v802;
  *(v513 + 112) = v524;
  *(v513 + 120) = 0x736567616D494657;
  *(v513 + 128) = 0xE800000000000000;
  *(v513 + 144) = MEMORY[0x1E69E6158];
  *(v513 + 152) = v525;
  v776 = v524;
  v777 = v525;
  *&v772 = sub_1CA94C438();
  *&v768 = v526;
  v527 = sub_1CA94C438();
  v529 = v528;
  v773 = &v756;
  MEMORY[0x1EEE9AC00](v527);
  sub_1CA948D98();
  v530 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v530);
  sub_1CA948B68();

  v531 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v532 = sub_1CA2F9F14(v772, v768, v527, v529, 0, 0, &v756 - v519, &v756 - v521);
  *(v513 + 184) = v523;
  *(v513 + 160) = v532;
  sub_1CA94C1E8();
  v801[15] = sub_1CA2F864C();
  v533 = swift_allocObject();
  *(v533 + 16) = v785;
  v535 = v783;
  v534 = v784;
  v537 = v774;
  v536 = v775;
  *(v533 + 32) = v784;
  *(v533 + 40) = v537;
  *(v533 + 48) = v536;
  *(v533 + 64) = MEMORY[0x1E69E6158];
  *(v533 + 72) = v535;
  v784 = v534;
  v783 = v535;
  v538 = sub_1CA94C438();
  v773 = v539;
  v774 = v538;
  v540 = sub_1CA94C438();
  *&v772 = v541;
  v775 = &v756;
  MEMORY[0x1EEE9AC00](v540);
  v542 = v806;
  sub_1CA948D98();
  v543 = v805;
  v544 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v544);
  v545 = &v756 - v803;
  sub_1CA948B68();

  v546 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v547 = sub_1CA2F9F14(v774, v773, v540, v772, 0, 0, &v756 - v542, v545);
  v548 = v776;
  *(v533 + 80) = v547;
  v549 = v802;
  *(v533 + 104) = v802;
  *(v533 + 112) = v548;
  strcpy((v533 + 120), "WFParentTask");
  *(v533 + 133) = 0;
  *(v533 + 134) = -5120;
  v550 = v777;
  *(v533 + 144) = MEMORY[0x1E69E6158];
  *(v533 + 152) = v550;
  v776 = v548;
  v777 = v550;
  v551 = sub_1CA94C438();
  v773 = v552;
  v774 = v551;
  v553 = sub_1CA94C438();
  v555 = v554;
  v775 = &v756;
  MEMORY[0x1EEE9AC00](v553);
  sub_1CA948D98();
  v556 = [v543 bundleURL];
  MEMORY[0x1EEE9AC00](v556);
  v557 = &v756 - v803;
  sub_1CA948B68();

  v558 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v559 = sub_1CA2F9F14(v774, v773, v553, v555, 0, 0, &v756 - v542, v557);
  *(v533 + 184) = v549;
  *(v533 + 160) = v559;
  sub_1CA94C1E8();
  v801[16] = sub_1CA2F864C();
  v560 = swift_allocObject();
  *(v560 + 16) = v785;
  v561 = v789;
  *(v560 + 32) = v784;
  *(v560 + 40) = v561;
  *(v560 + 48) = 0x80000001CA9B3F90;
  v562 = v783;
  *(v560 + 64) = MEMORY[0x1E69E6158];
  *(v560 + 72) = v562;
  v563 = sub_1CA94C438();
  v774 = v564;
  v775 = v563;
  v565 = sub_1CA94C438();
  v773 = v566;
  *&v785 = &v756;
  MEMORY[0x1EEE9AC00](v565);
  v567 = &v756 - v806;
  sub_1CA948D98();
  v568 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v568);
  v569 = v803;
  sub_1CA948B68();

  v570 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v560 + 80) = sub_1CA2F9F14(v775, v774, v565, v773, 0, 0, v567, &v756 - v569);
  v571 = v802;
  v572 = v776;
  *(v560 + 104) = v802;
  *(v560 + 112) = v572;
  *(v560 + 120) = 0x736761544657;
  *(v560 + 128) = 0xE600000000000000;
  v573 = v777;
  *(v560 + 144) = MEMORY[0x1E69E6158];
  *(v560 + 152) = v573;
  v574 = sub_1CA94C438();
  v774 = v575;
  v775 = v574;
  v576 = sub_1CA94C438();
  v773 = v577;
  *&v785 = &v756;
  MEMORY[0x1EEE9AC00](v576);
  v578 = &v756 - v806;
  sub_1CA948D98();
  v579 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v579);
  sub_1CA948B68();

  v580 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v581 = sub_1CA2F9F14(v775, v774, v576, v773, 0, 0, v578, &v756 - v569);
  *(v560 + 184) = v571;
  *(v560 + 160) = v581;
  sub_1CA94C1E8();
  v801[17] = sub_1CA2F864C();
  v582 = swift_allocObject();
  *(v582 + 16) = v792;
  v583 = v790;
  *(v582 + 32) = v784;
  *(v582 + 40) = v583;
  *(v582 + 48) = v769;
  v584 = v783;
  *(v582 + 64) = MEMORY[0x1E69E6158];
  *(v582 + 72) = v584;
  *&v792 = sub_1CA94C438();
  v790 = v585;
  v586 = sub_1CA94C438();
  v588 = v587;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v586);
  v589 = &v756 - v806;
  sub_1CA948D98();
  v590 = v805;
  v591 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v591);
  v592 = &v756 - v803;
  sub_1CA948B68();

  v593 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v582 + 80) = sub_1CA2F9F14(v792, v790, v586, v588, 0, 0, v589, v592);
  v594 = v802;
  v595 = v776;
  *(v582 + 104) = v802;
  *(v582 + 112) = v595;
  *(v582 + 120) = v789;
  *(v582 + 128) = 0x80000001CA9B40B0;
  v596 = v777;
  *(v582 + 144) = MEMORY[0x1E69E6158];
  *(v582 + 152) = v596;
  *&v792 = sub_1CA94C438();
  v790 = v597;
  v598 = sub_1CA94C438();
  v789 = v599;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v598);
  v600 = v806;
  sub_1CA948D98();
  v601 = [v590 bundleURL];
  *&v785 = &v756;
  MEMORY[0x1EEE9AC00](v601);
  v602 = v803;
  sub_1CA948B68();

  v603 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v582 + 160) = sub_1CA2F9F14(v792, v790, v598, v789, 0, 0, &v756 - v600, &v756 - v602);
  *(v582 + 184) = v594;
  *(v582 + 192) = @"Multiline";
  *(v582 + 200) = 1;
  v604 = v778;
  *(v582 + 224) = MEMORY[0x1E69E6370];
  *(v582 + 232) = v604;
  v605 = @"Multiline";
  *&v792 = sub_1CA94C438();
  v790 = v606;
  v607 = sub_1CA94C438();
  v609 = v608;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v607);
  sub_1CA948D98();
  v610 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v610);
  sub_1CA948B68();

  v611 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v612 = sub_1CA2F9F14(v792, v790, v607, v609, 0, 0, &v756 - v600, &v756 - v602);
  *(v582 + 264) = v802;
  *(v582 + 240) = v612;
  sub_1CA94C1E8();
  v613 = sub_1CA2F864C();
  v614 = v801;
  v801[18] = v613;
  v615 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v616 = v794;
  v794[40] = v614;
  v616[43] = v615;
  v616[44] = @"ParameterSummary";
  v801 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v802 = swift_allocObject();
  *(v802 + 16) = xmmword_1CA983CF0;
  v800 = "Notes (WFCalendarItemNotes)";
  v617 = @"ParameterSummary";
  v618 = sub_1CA94C438();
  v797 = v619;
  v798 = v618;
  v620 = sub_1CA94C438();
  v622 = v621;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v620);
  v623 = v806;
  sub_1CA948D98();
  v624 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v624);
  v625 = v803;
  sub_1CA948B68();

  v626 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v627 = sub_1CA2F9F14(v798, v797, v620, v622, 0, 0, &v756 - v623, &v756 - v625);
  v628 = objc_allocWithZone(WFActionParameterSummaryValue);
  v629 = sub_1CA65DD78(0xD000000000000055, v800 | 0x8000000000000000, v627);
  *(v802 + 32) = v629;
  v800 = "tion} ${WFAlertCustomTime}";
  v630 = sub_1CA94C438();
  v797 = v631;
  v798 = v630;
  v632 = sub_1CA94C438();
  v634 = v633;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v632);
  v635 = &v756 - v623;
  sub_1CA948D98();
  v636 = v805;
  v637 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v637);
  sub_1CA948B68();

  v638 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v639 = sub_1CA2F9F14(v798, v797, v632, v634, 0, 0, v635, &v756 - v625);
  v640 = objc_allocWithZone(WFActionParameterSummaryValue);
  v641 = sub_1CA65DD78(0xD000000000000059, v800 | 0x8000000000000000, v639);
  *(v802 + 40) = v641;
  v800 = "tion} at ${WFAlertLocation}";
  v642 = sub_1CA94C438();
  v798 = v643;
  v644 = sub_1CA94C438();
  v646 = v645;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v644);
  v647 = &v756 - v806;
  sub_1CA948D98();
  v648 = [v636 bundleURL];
  MEMORY[0x1EEE9AC00](v648);
  v649 = &v756 - v803;
  sub_1CA948B68();

  v650 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v651 = sub_1CA2F9F14(v642, v798, v644, v646, 0, 0, v647, v649);
  v652 = objc_allocWithZone(WFActionParameterSummaryValue);
  v653 = sub_1CA65DD78(0xD000000000000058, v800 | 0x8000000000000000, v651);
  v654 = v802;
  *(v802 + 48) = v653;
  v800 = "tion} from ${WFAlertLocation}";
  v655 = sub_1CA94C438();
  v797 = v656;
  v798 = v655;
  v657 = sub_1CA94C438();
  v659 = v658;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v657);
  v660 = &v756 - v806;
  sub_1CA948D98();
  v661 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v661);
  v662 = v803;
  sub_1CA948B68();

  v663 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v664 = sub_1CA2F9F14(v798, v797, v657, v659, 0, 0, v660, &v756 - v662);
  v665 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v654 + 56) = sub_1CA65DD78(0xD000000000000058, v800 | 0x8000000000000000, v664);
  v800 = "tion} ${WFAlertPerson}";
  v666 = sub_1CA94C438();
  v797 = v667;
  v798 = v666;
  v668 = sub_1CA94C438();
  v670 = v669;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v668);
  v671 = &v756 - v806;
  sub_1CA948D98();
  v672 = v805;
  v673 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v673);
  sub_1CA948B68();

  v674 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v675 = sub_1CA2F9F14(v798, v797, v668, v670, 0, 0, v671, &v756 - v662);
  v676 = objc_allocWithZone(WFActionParameterSummaryValue);
  v677 = sub_1CA65DD78(0xD00000000000002CLL, v800 | 0x8000000000000000, v675);
  v678 = v802;
  *(v802 + 64) = v677;
  v800 = "${WFAlertEnabled}";
  v679 = sub_1CA94C438();
  v797 = v680;
  v798 = v679;
  v681 = sub_1CA94C438();
  v683 = v682;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v681);
  v684 = &v756 - v806;
  sub_1CA948D98();
  v685 = [v672 bundleURL];
  MEMORY[0x1EEE9AC00](v685);
  v686 = &v756 - v803;
  sub_1CA948B68();

  v687 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v688 = sub_1CA2F9F14(v798, v797, v681, v683, 0, 0, v684, v686);
  v689 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v678 + 72) = sub_1CA65DD78(0xD00000000000006ALL, v800 | 0x8000000000000000, v688);
  v800 = " ${WFAlertCustomTime}";
  v690 = sub_1CA94C438();
  v797 = v691;
  v798 = v690;
  v692 = sub_1CA94C438();
  v694 = v693;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v692);
  v695 = v806;
  sub_1CA948D98();
  v696 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v696);
  v697 = &v756 - v803;
  sub_1CA948B68();

  v698 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v699 = sub_1CA2F9F14(v798, v797, v692, v694, 0, 0, &v756 - v695, v697);
  v700 = objc_allocWithZone(WFActionParameterSummaryValue);
  v701 = sub_1CA65DD78(0xD00000000000006ELL, v800 | 0x8000000000000000, v699);
  *(v802 + 80) = v701;
  v800 = " at ${WFAlertLocation}";
  v702 = sub_1CA94C438();
  v797 = v703;
  v798 = v702;
  v704 = sub_1CA94C438();
  v706 = v705;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v704);
  v707 = &v756 - v695;
  sub_1CA948D98();
  v708 = v805;
  v709 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v709);
  v710 = v803;
  sub_1CA948B68();

  v711 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v712 = sub_1CA2F9F14(v798, v797, v704, v706, 0, 0, v707, &v756 - v710);
  v713 = objc_allocWithZone(WFActionParameterSummaryValue);
  v714 = sub_1CA65DD78(0xD00000000000006DLL, v800 | 0x8000000000000000, v712);
  *(v802 + 88) = v714;
  v800 = " from ${WFAlertLocation}";
  v715 = sub_1CA94C438();
  v797 = v716;
  v798 = v715;
  v717 = sub_1CA94C438();
  v719 = v718;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v717);
  v720 = &v756 - v806;
  sub_1CA948D98();
  v721 = [v708 bundleURL];
  MEMORY[0x1EEE9AC00](v721);
  sub_1CA948B68();

  v722 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v723 = sub_1CA2F9F14(v798, v797, v717, v719, 0, 0, v720, &v756 - v710);
  v724 = objc_allocWithZone(WFActionParameterSummaryValue);
  v725 = sub_1CA65DD78(0xD00000000000006DLL, v800 | 0x8000000000000000, v723);
  v726 = v802;
  *(v802 + 96) = v725;
  v800 = " ${WFAlertPerson}";
  v727 = sub_1CA94C438();
  v729 = v728;
  v730 = sub_1CA94C438();
  v732 = v731;
  v799 = &v756;
  MEMORY[0x1EEE9AC00](v730);
  v733 = &v756 - v806;
  sub_1CA948D98();
  v734 = [v805 bundleURL];
  MEMORY[0x1EEE9AC00](v734);
  v735 = &v756 - v803;
  sub_1CA948B68();

  v736 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v737 = sub_1CA2F9F14(v727, v729, v730, v732, 0, 0, v733, v735);
  v738 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v726 + 104) = sub_1CA65DD78(0xD000000000000041, v800 | 0x8000000000000000, v737);
  v739 = v801;
  v740 = sub_1CA65AF90();
  v741 = v794;
  v794[45] = v740;
  v741[48] = v739;
  v741[49] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v742 = swift_allocObject();
  *(v742 + 16) = v796;
  v743 = MEMORY[0x1E69E6158];
  *(v742 + 56) = MEMORY[0x1E69E6158];
  v807 = 0xD000000000000018;
  *(v742 + 32) = 0xD000000000000018;
  *(v742 + 40) = 0x80000001CA993D70;
  v744 = swift_allocObject();
  *(v744 + 16) = v796;
  *(v744 + 32) = v791;
  *(v744 + 40) = 0x80000001CA99B240;
  v745 = swift_allocObject();
  *(v745 + 16) = v782;
  v746 = swift_allocObject();
  *(v746 + 16) = v795;
  strcpy((v746 + 32), "WFParameterKey");
  *(v746 + 47) = -18;
  *(v746 + 48) = 0x4C7472656C414657;
  *(v746 + 56) = 0xEF6E6F697461636FLL;
  *(v746 + 72) = v743;
  *(v746 + 80) = 0xD000000000000010;
  *(v746 + 88) = v788;
  v747 = @"RequiredResources";
  v748 = sub_1CA94C1E8();
  v749 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v746 + 96) = v748;
  *(v746 + 120) = v749;
  *(v746 + 128) = 0x72756F7365524657;
  *(v746 + 168) = v743;
  v750 = v779;
  *(v746 + 136) = 0xEF7373616C436563;
  *(v746 + 144) = v750;
  *(v746 + 152) = v787;
  *(v745 + 32) = sub_1CA94C1E8();
  *(v744 + 48) = v745;
  *(v744 + 72) = v780;
  *(v744 + 80) = 0x72756F7365524657;
  *(v744 + 120) = v743;
  v751 = v807;
  *(v744 + 88) = 0xEF7373616C436563;
  *(v744 + 96) = v751;
  *(v744 + 104) = 0x80000001CA994040;
  v752 = sub_1CA94C1E8();
  *(v742 + 88) = v770;
  *(v742 + 64) = v752;
  v753 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v754 = v794;
  v794[53] = v753;
  v754[50] = v742;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3F7CDC()
{
  v302 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9B48D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v319 = inited;
  v318 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CA97EDF0;
  *(v2 + 32) = @"DescriptionNote";
  v3 = @"ActionClass";
  v4 = @"Description";
  v5 = @"DescriptionNote";
  v320 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v323 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v324 = v13;
  v14 = &v298 - v323;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDB9F690;
  v322 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v325 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v321 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v298 - v321;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v320, v7, v8, v10, 0, 0, v14, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v2 + 40) = v21;
  *(v2 + 64) = v22;
  *(v2 + 72) = @"DescriptionSummary";
  v320 = v22;
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v316 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v317 = &v298;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v298 - v323;
  sub_1CA948D98();
  v30 = [v15 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v298 - v321;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v316, v26, v28, 0, 0, v29, v31);
  *(v2 + 104) = v22;
  *(v2 + 80) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v318;
  v35 = sub_1CA6B3784();
  v36 = v319;
  v319[10] = v35;
  v36[13] = v34;
  v36[14] = @"IconColor";
  v36[15] = 0x65676E61724FLL;
  v36[16] = 0xE600000000000000;
  v37 = MEMORY[0x1E69E6158];
  v36[18] = MEMORY[0x1E69E6158];
  v36[19] = @"IconSymbol";
  v36[20] = 0x6C75622E7473696CLL;
  v36[21] = 0xEB0000000074656CLL;
  v36[23] = v37;
  v36[24] = @"Input";
  v38 = v37;
  v39 = v36;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v313 = xmmword_1CA981370;
  *(v40 + 16) = xmmword_1CA981370;
  *(v40 + 32) = 0xD00000000000001DLL;
  *(v40 + 40) = 0x80000001CA9A3ED0;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  *(v40 + 80) = 0x656C7069746C754DLL;
  *(v40 + 88) = 0xE800000000000000;
  *(v40 + 96) = 1;
  *(v40 + 120) = v41;
  strcpy((v40 + 128), "ParameterKey");
  *(v40 + 141) = 0;
  *(v40 + 142) = -5120;
  *(v40 + 144) = 0x7475706E494657;
  *(v40 + 152) = 0xE700000000000000;
  *(v40 + 168) = v38;
  *(v40 + 176) = 0x6465726975716552;
  *(v40 + 184) = 0xE800000000000000;
  *(v40 + 192) = 1;
  *(v40 + 216) = v41;
  *(v40 + 224) = 0x7365707954;
  *(v40 + 232) = 0xE500000000000000;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 264) = v314;
  *(v40 + 240) = &unk_1F49F9268;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v318 = v46;
  v39[25] = v45;
  v39[28] = v46;
  v39[29] = @"ActionKeywords";
  v47 = @"ActionKeywords";
  v315 = sub_1CA94C438();
  *&v312 = v48;
  v49 = sub_1CA94C438();
  v51 = v50;
  v316 = &v298;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v323;
  sub_1CA948D98();
  v53 = v322;
  v54 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v298 - v321;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v315, v312, v49, v51, 0, 0, &v298 - v52, v55);
  v58 = v319;
  v59 = v320;
  v319[30] = v57;
  v58[33] = v59;
  v58[34] = @"Name";
  v60 = @"Name";
  v315 = sub_1CA94C438();
  *&v312 = v61;
  v62 = sub_1CA94C438();
  v64 = v63;
  v316 = &v298;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v298 - v52;
  sub_1CA948D98();
  v66 = [v53 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v321;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v315, v312, v62, v64, 0, 0, v65, &v298 - v67);
  v70 = v319;
  v319[35] = v69;
  v70[38] = v59;
  v70[39] = @"Output";
  v71 = swift_allocObject();
  v300 = xmmword_1CA981350;
  *(v71 + 16) = xmmword_1CA981350;
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
  v316 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v317 = &v298;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v298 - v323;
  sub_1CA948D98();
  v79 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 144) = sub_1CA2F9F14(v73, v316, v75, v77, 0, 0, v78, &v298 - v67);
  *(v71 + 168) = v320;
  *(v71 + 176) = 0x7365707954;
  v81 = v314;
  *(v71 + 216) = v314;
  *(v71 + 184) = 0xE500000000000000;
  *(v71 + 192) = &unk_1F49F9298;
  v82 = MEMORY[0x1E69E6158];
  v83 = sub_1CA94C1E8();
  v84 = v319;
  v319[40] = v83;
  v84[43] = v318;
  v84[44] = @"Parameters";
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v318 = swift_allocObject();
  v312 = xmmword_1CA981560;
  *(v318 + 16) = xmmword_1CA981560;
  v317 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1CA981400;
  *(v85 + 32) = @"Class";
  *(v85 + 40) = 0xD000000000000016;
  *(v85 + 48) = 0x80000001CA99C4A0;
  *(v85 + 64) = v82;
  *(v85 + 72) = @"DefaultValue";
  *(v85 + 80) = 0x7449207473726946;
  *(v85 + 88) = 0xEA00000000006D65;
  *(v85 + 104) = v82;
  *(v85 + 112) = @"DisallowedVariableTypes";
  *(v85 + 120) = &unk_1F49F92C8;
  *(v85 + 144) = v81;
  *(v85 + 152) = @"ItemDisplayNames";
  v315 = swift_allocObject();
  *(v315 + 1) = v312;
  v310 = @"Class";
  v86 = @"Parameters";
  v87 = @"DefaultValue";
  v88 = @"DisallowedVariableTypes";
  v89 = @"ItemDisplayNames";
  v90 = sub_1CA94C438();
  v308 = v91;
  *&v309 = v90;
  v92 = sub_1CA94C438();
  v307 = v93;
  v311 = &v298;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v298 - v323;
  sub_1CA948D98();
  v95 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = v321;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v309, v308, v92, v307, 0, 0, v94, &v298 - v96);
  v315[4] = v98;
  v99 = sub_1CA94C438();
  v308 = v100;
  *&v309 = v99;
  v101 = sub_1CA94C438();
  v307 = v102;
  v311 = &v298;
  MEMORY[0x1EEE9AC00](v101);
  v103 = v323;
  sub_1CA948D98();
  v104 = v322;
  v105 = [v322 bundleURL];
  v306 = &v298;
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v309, v308, v101, v307, 0, 0, &v298 - v103, &v298 - v96);
  v108 = v315;
  v315[5] = v107;
  v109 = sub_1CA94C438();
  v308 = v110;
  *&v309 = v109;
  v111 = sub_1CA94C438();
  v307 = v112;
  v311 = &v298;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v113 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v298 - v321;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 48) = sub_1CA2F9F14(v309, v308, v111, v307, 0, 0, &v298 - v103, v114);
  v116 = sub_1CA94C438();
  v308 = v117;
  *&v309 = v116;
  v118 = sub_1CA94C438();
  v307 = v119;
  v311 = &v298;
  MEMORY[0x1EEE9AC00](v118);
  v120 = v323;
  sub_1CA948D98();
  v121 = v322;
  v122 = [v322 bundleURL];
  v306 = &v298;
  MEMORY[0x1EEE9AC00](v122);
  v123 = v321;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v309, v308, v118, v307, 0, 0, &v298 - v120, &v298 - v123);
  v315[7] = v125;
  v126 = sub_1CA94C438();
  v308 = v127;
  *&v309 = v126;
  v128 = sub_1CA94C438();
  v307 = v129;
  v311 = &v298;
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948D98();
  v130 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v309, v308, v128, v307, 0, 0, &v298 - v120, &v298 - v123);
  v133 = v315;
  v315[8] = v132;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v85 + 160) = v133;
  *(v85 + 184) = v134;
  *(v85 + 192) = @"Items";
  *(v85 + 200) = &unk_1F49F92F8;
  *(v85 + 224) = v314;
  *(v85 + 232) = @"Key";
  *(v85 + 240) = 0x70536D6574494657;
  *(v85 + 248) = 0xEF72656966696365;
  *(v85 + 264) = MEMORY[0x1E69E6158];
  *(v85 + 272) = @"Label";
  v135 = @"Key";
  v136 = @"Label";
  v137 = v135;
  v138 = v136;
  v308 = v137;
  *&v309 = v138;
  v139 = @"Items";
  v140 = sub_1CA94C438();
  v142 = v141;
  v143 = sub_1CA94C438();
  v145 = v144;
  v315 = &v298;
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v298 - v323;
  sub_1CA948D98();
  v147 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v298 - v321;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v140, v142, v143, v145, 0, 0, v146, v148);
  *(v85 + 304) = v320;
  *(v85 + 280) = v150;
  _s3__C3KeyVMa_0(0);
  v315 = v151;
  v314 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v318 + 32) = sub_1CA2F864C();
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_1CA981380;
  v311 = 0x80000001CA99C180;
  v153 = v310;
  *(v152 + 32) = v310;
  *(v152 + 40) = 0xD000000000000016;
  *(v152 + 48) = 0x80000001CA99C180;
  v154 = MEMORY[0x1E69E6158];
  v155 = v308;
  v156 = v309;
  *(v152 + 64) = MEMORY[0x1E69E6158];
  *(v152 + 72) = v155;
  *(v152 + 80) = 0x6E496D6574494657;
  *(v152 + 88) = 0xEB00000000786564;
  *(v152 + 104) = v154;
  *(v152 + 112) = v156;
  v305 = v153;
  v304 = v155;
  v303 = v156;
  v157 = sub_1CA94C438();
  v308 = v158;
  *&v309 = v157;
  v159 = sub_1CA94C438();
  v161 = v160;
  v310 = &v298;
  MEMORY[0x1EEE9AC00](v159);
  v162 = v323;
  sub_1CA948D98();
  v163 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  v164 = v321;
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v152 + 120) = sub_1CA2F9F14(v309, v308, v159, v161, 0, 0, &v298 - v162, &v298 - v164);
  v166 = v320;
  *(v152 + 144) = v320;
  *(v152 + 152) = @"Placeholder";
  v299 = @"Placeholder";
  v167 = sub_1CA94C438();
  v308 = v168;
  *&v309 = v167;
  v169 = sub_1CA94C438();
  v307 = v170;
  v310 = &v298;
  MEMORY[0x1EEE9AC00](v169);
  sub_1CA948D98();
  v171 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v171);
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v152 + 160) = sub_1CA2F9F14(v309, v308, v169, v307, 0, 0, &v298 - v162, &v298 - v164);
  *(v152 + 184) = v166;
  *(v152 + 192) = @"RequiredResources";
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v173 = swift_allocObject();
  v309 = xmmword_1CA981310;
  *(v173 + 16) = xmmword_1CA981310;
  v308 = @"RequiredResources";
  v174 = MEMORY[0x1E69E6158];
  *(v173 + 32) = sub_1CA94C1E8();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v307 = v175;
  *(v152 + 200) = v173;
  *(v152 + 224) = v175;
  *(v152 + 232) = @"TextAlignment";
  *(v152 + 264) = v174;
  *(v152 + 240) = 0x7468676952;
  *(v152 + 248) = 0xE500000000000000;
  v306 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v318 + 40) = sub_1CA2F864C();
  v176 = swift_allocObject();
  *(v176 + 16) = v313;
  v178 = v304;
  v177 = v305;
  *(v176 + 32) = v305;
  *(v176 + 40) = 0xD000000000000016;
  *(v176 + 48) = v311;
  *(v176 + 64) = v174;
  *(v176 + 72) = v178;
  *(v176 + 80) = 0xD000000000000010;
  *(v176 + 88) = 0x80000001CA9B4C10;
  *(v176 + 104) = v174;
  v179 = v303;
  *(v176 + 112) = v303;
  v305 = v177;
  v304 = v178;
  v303 = v179;
  v180 = sub_1CA94C438();
  v182 = v181;
  v183 = sub_1CA94C438();
  v185 = v184;
  v298 = &v298;
  MEMORY[0x1EEE9AC00](v183);
  v186 = &v298 - v323;
  sub_1CA948D98();
  v187 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = &v298 - v321;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 120) = sub_1CA2F9F14(v180, v182, v183, v185, 0, 0, v186, v188);
  v190 = v308;
  *(v176 + 144) = v320;
  *(v176 + 152) = v190;
  v191 = swift_allocObject();
  *(v191 + 16) = v309;
  v192 = MEMORY[0x1E69E6158];
  *(v191 + 32) = sub_1CA94C1E8();
  *(v176 + 160) = v191;
  v193 = v306;
  *(v176 + 184) = v307;
  *(v176 + 192) = v193;
  *(v176 + 224) = v192;
  *(v176 + 200) = 0x7468676952;
  *(v176 + 208) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v318 + 48) = sub_1CA2F864C();
  v194 = swift_allocObject();
  *(v194 + 16) = v313;
  *(v194 + 32) = v305;
  *(v194 + 40) = 0xD000000000000016;
  *(v194 + 48) = v311;
  v195 = v304;
  *(v194 + 64) = v192;
  *(v194 + 72) = v195;
  strcpy((v194 + 80), "WFItemRangeEnd");
  *(v194 + 95) = -18;
  v196 = v303;
  *(v194 + 104) = v192;
  *(v194 + 112) = v196;
  v197 = sub_1CA94C438();
  v199 = v198;
  v200 = sub_1CA94C438();
  v202 = v201;
  *&v313 = &v298;
  MEMORY[0x1EEE9AC00](v200);
  v203 = &v298 - v323;
  sub_1CA948D98();
  v204 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v204);
  v205 = &v298 - v321;
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v194 + 120) = sub_1CA2F9F14(v197, v199, v200, v202, 0, 0, v203, v205);
  v207 = v308;
  *(v194 + 144) = v320;
  *(v194 + 152) = v207;
  v208 = swift_allocObject();
  *(v208 + 16) = v309;
  v209 = MEMORY[0x1E69E6158];
  *(v208 + 32) = sub_1CA94C1E8();
  *(v194 + 160) = v208;
  v210 = v306;
  *(v194 + 184) = v307;
  *(v194 + 192) = v210;
  *(v194 + 224) = v209;
  *(v194 + 200) = 0x7468676952;
  *(v194 + 208) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v318 + 56) = sub_1CA2F864C();
  v211 = swift_allocObject();
  *(v211 + 16) = v300;
  *(v211 + 32) = v305;
  *(v211 + 40) = 0xD000000000000019;
  *(v211 + 48) = 0x80000001CA99B030;
  v212 = v304;
  *(v211 + 64) = v209;
  *(v211 + 72) = v212;
  *(v211 + 80) = 0x7475706E494657;
  *(v211 + 88) = 0xE700000000000000;
  v213 = v303;
  *(v211 + 104) = v209;
  *(v211 + 112) = v213;
  *&v313 = sub_1CA94C438();
  v311 = v214;
  v215 = sub_1CA94C438();
  v310 = v216;
  v316 = &v298;
  MEMORY[0x1EEE9AC00](v215);
  v217 = &v298 - v323;
  sub_1CA948D98();
  v218 = v322;
  v219 = [v322 bundleURL];
  *&v309 = &v298;
  MEMORY[0x1EEE9AC00](v219);
  v220 = v321;
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 120) = sub_1CA2F9F14(v313, v311, v215, v310, 0, 0, v217, &v298 - v220);
  v222 = v320;
  v223 = v299;
  *(v211 + 144) = v320;
  *(v211 + 152) = v223;
  *&v313 = sub_1CA94C438();
  v311 = v224;
  v225 = sub_1CA94C438();
  v310 = v226;
  v316 = &v298;
  MEMORY[0x1EEE9AC00](v225);
  v227 = &v298 - v323;
  sub_1CA948D98();
  v228 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v230 = sub_1CA2F9F14(v313, v311, v225, v310, 0, 0, v227, &v298 - v220);
  *(v211 + 184) = v222;
  *(v211 + 160) = v230;
  sub_1CA94C1E8();
  v231 = sub_1CA2F864C();
  v232 = v318;
  *(v318 + 64) = v231;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v234 = v319;
  v319[45] = v232;
  v234[48] = v233;
  v234[49] = @"ParameterSummary";
  v318 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v320 = swift_allocObject();
  *(v320 + 16) = v312;
  v317 = "ndex";
  v235 = @"ParameterSummary";
  v236 = sub_1CA94C438();
  v314 = v237;
  v315 = v236;
  v238 = sub_1CA94C438();
  v240 = v239;
  v316 = &v298;
  MEMORY[0x1EEE9AC00](v238);
  v241 = v323;
  sub_1CA948D98();
  v242 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v242);
  v243 = v321;
  sub_1CA948B68();

  v244 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v245 = sub_1CA2F9F14(v315, v314, v238, v240, 0, 0, &v298 - v241, &v298 - v243);
  v246 = objc_allocWithZone(WFActionParameterSummaryValue);
  v247 = sub_1CA65DD78(0xD000000000000023, v317 | 0x8000000000000000, v245);
  v248 = v320;
  *(v320 + 32) = v247;
  v317 = "ifier} from ${WFInput}";
  v249 = sub_1CA94C438();
  v314 = v250;
  v315 = v249;
  v251 = sub_1CA94C438();
  v253 = v252;
  v316 = &v298;
  MEMORY[0x1EEE9AC00](v251);
  v254 = &v298 - v241;
  sub_1CA948D98();
  v255 = v322;
  v256 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v256);
  sub_1CA948B68();

  v257 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v258 = sub_1CA2F9F14(v315, v314, v251, v253, 0, 0, v254, &v298 - v243);
  v259 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v248 + 40) = sub_1CA65DD78(0xD000000000000032, v317 | 0x8000000000000000, v258);
  v317 = "ndex} from ${WFInput}";
  v260 = sub_1CA94C438();
  v314 = v261;
  v315 = v260;
  v262 = sub_1CA94C438();
  *&v313 = v263;
  v316 = &v298;
  MEMORY[0x1EEE9AC00](v262);
  v264 = v323;
  sub_1CA948D98();
  v265 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v265);
  v266 = &v298 - v321;
  sub_1CA948B68();

  v267 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v268 = sub_1CA2F9F14(v315, v314, v262, v313, 0, 0, &v298 - v264, v266);
  v269 = objc_allocWithZone(WFActionParameterSummaryValue);
  v270 = sub_1CA65DD78(0xD000000000000047, v317 | 0x8000000000000000, v268);
  *(v320 + 48) = v270;
  v317 = "WFItemRangeEnd} from ${WFInput}";
  v271 = sub_1CA94C438();
  v314 = v272;
  v315 = v271;
  v273 = sub_1CA94C438();
  *&v313 = v274;
  v316 = &v298;
  MEMORY[0x1EEE9AC00](v273);
  v275 = &v298 - v264;
  sub_1CA948D98();
  v276 = [v255 bundleURL];
  MEMORY[0x1EEE9AC00](v276);
  v277 = v321;
  sub_1CA948B68();

  v278 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v279 = sub_1CA2F9F14(v315, v314, v273, v313, 0, 0, v275, &v298 - v277);
  v280 = objc_allocWithZone(WFActionParameterSummaryValue);
  v281 = sub_1CA65DD78(0xD000000000000022, v317 | 0x8000000000000000, v279);
  v282 = v320;
  *(v320 + 56) = v281;
  v317 = "Last Item),WFInput";
  v283 = sub_1CA94C438();
  v315 = v284;
  v285 = sub_1CA94C438();
  v287 = v286;
  v316 = &v298;
  MEMORY[0x1EEE9AC00](v285);
  v288 = &v298 - v323;
  sub_1CA948D98();
  v289 = [v322 bundleURL];
  MEMORY[0x1EEE9AC00](v289);
  sub_1CA948B68();

  v290 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v291 = sub_1CA2F9F14(v283, v315, v285, v287, 0, 0, v288, &v298 - v277);
  v292 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v282 + 64) = sub_1CA65DD78(0xD000000000000024, v317 | 0x8000000000000000, v291);
  v293 = v318;
  v294 = sub_1CA65AF90();
  v295 = v319;
  v319[50] = v294;
  v295[53] = v293;
  v295[54] = @"ResidentCompatible";
  v295[58] = MEMORY[0x1E69E6370];
  *(v295 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v296 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}