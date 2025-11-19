uint64_t sub_1CA35B280(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CA35B2FC()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  v125 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v12;
  v13 = &v115 - v125;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v124 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v115 - v122;
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
  v120 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v117 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v115 - v125;
  sub_1CA948D98();
  v33 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v115 - v122;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v117, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v121;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v120;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v120 = v38;
  *(inited + 200) = &unk_1F49F61D8;
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
  v116 = v44;
  v117 = v43;
  v45 = sub_1CA94C438();
  v47 = v46;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v115 - v125;
  sub_1CA948D98();
  v49 = v123;
  v50 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v122;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v117, v116, v45, v47, 0, 0, v48, &v115 - v51);
  v53 = v121;
  *(inited + 304) = v121;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA9813C0;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  *(v54 + 48) = 1;
  *(v54 + 72) = MEMORY[0x1E69E6370];
  *(v54 + 80) = 0x614E74757074754FLL;
  *(v54 + 88) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v116 = v57;
  v117 = v56;
  v58 = sub_1CA94C438();
  v115 = v59;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v115 - v125;
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 96) = sub_1CA2F9F14(v117, v116, v58, v115, 0, 0, v60, &v115 - v51);
  *(v54 + 120) = v53;
  *(v54 + 128) = 0x7365707954;
  *(v54 + 168) = v120;
  *(v54 + 136) = 0xE500000000000000;
  *(v54 + 144) = &unk_1F49F6208;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CA981370;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000012;
  *(v66 + 48) = 0x80000001CA99B980;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"DefaultValue";
  v67 = MEMORY[0x1E69E6530];
  *(v66 + 80) = 1;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Key";
  *(v66 + 120) = 0xD000000000000015;
  *(v66 + 128) = 0x80000001CA9A9870;
  *(v66 + 144) = v63;
  *(v66 + 152) = @"StepperDescription";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"DefaultValue";
  v71 = @"Key";
  v72 = @"StepperDescription";
  v73 = sub_1CA94C438();
  v115 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v116 = &v115;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v115 - v125;
  sub_1CA948D98();
  v79 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v115 - v122;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 160) = sub_1CA2F9F14(v73, v115, v75, v77, 0, 0, v78, v80);
  *(v66 + 184) = v121;
  *(v66 + 192) = @"StepperNoun";
  v82 = @"StepperNoun";
  v83 = sub_1CA94C438();
  v115 = v84;
  v116 = v83;
  v85 = v84;
  v131 = 0;
  v132 = 0xE000000000000000;
  sub_1CA94D408();

  v131 = v83;
  v132 = v85;
  v129 = 10;
  v130 = 0xE100000000000000;
  v127 = 32;
  v128 = 0xE100000000000000;
  sub_1CA27BAF0();
  v131 = sub_1CA94D1B8();
  v132 = v86;
  v87 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v88 = v131;
  v89 = v132;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v115 - v125;
  sub_1CA948D98();
  v91 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v115 - v122;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v88, v89, v116, v115, 0, 0, v90, v92);
  *(v66 + 224) = v121;
  *(v66 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v95 = sub_1CA2F864C();
  v96 = v118;
  v118[4] = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v96;
  *(inited + 384) = v97;
  *(inited + 392) = @"ParameterSummary";
  v98 = @"ParameterSummary";
  v99 = sub_1CA94C438();
  v101 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  v121 = &v115;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v115 - v125;
  sub_1CA948D98();
  v106 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v115 - v122;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v99, v101, v102, v104, 0, 0, v105, v107);
  v110 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v111 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v110;
  *(inited + 424) = v111;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v120;
  *(inited + 440) = &unk_1F49F6238;
  v112 = @"RequiredResources";
  v113 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v113;
  *(inited + 480) = 0x6F6850206576694CLL;
  *(inited + 488) = 0xEA00000000006F74;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA35C1E0()
{
  v184 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A9990;
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
  v199 = v12;
  v200 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v179 - v200;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v195 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v198 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v197 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v179 - v197;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v196 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v193 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v191 = sub_1CA94C438();
  *&v190 = v27;
  v28 = sub_1CA94C438();
  v30 = v29;
  v192 = &v179;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v179 - v200;
  sub_1CA948D98();
  v32 = v195;
  v33 = [v195 bundleURL];
  v194 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v179 - v197;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v191, v190, v28, v30, 0, 0, v31, v35);
  v37 = v196;
  *(v24 + 64) = v196;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v191 = sub_1CA94C438();
  *&v190 = v39;
  v40 = sub_1CA94C438();
  v42 = v41;
  v192 = &v179;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v179 - v200;
  sub_1CA948D98();
  v44 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v179 - v197;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v191, v190, v40, v42, 0, 0, v43, v45);
  *(v24 + 104) = v37;
  *(v24 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v48 = v193;
  v49 = sub_1CA6B3784();
  v50 = v194;
  v194[20] = v49;
  v50[23] = v48;
  v50[24] = @"Input";
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  v190 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  v52 = MEMORY[0x1E69E6370];
  *(v51 + 48) = 0;
  *(v51 + 72) = v52;
  strcpy((v51 + 80), "ParameterKey");
  *(v51 + 93) = 0;
  *(v51 + 94) = -5120;
  *(v51 + 96) = 0x7475706E494657;
  *(v51 + 104) = 0xE700000000000000;
  *(v51 + 120) = MEMORY[0x1E69E6158];
  *(v51 + 128) = 0x6465726975716552;
  *(v51 + 136) = 0xE800000000000000;
  *(v51 + 144) = 0;
  *(v51 + 168) = v52;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 184) = 0xE500000000000000;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v191;
  *(v51 + 192) = &unk_1F49F62A8;
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v193 = v55;
  v50[25] = v54;
  v50[28] = v55;
  v50[29] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438();
  v188 = v58;
  v59 = sub_1CA94C438();
  v61 = v60;
  v189 = &v179;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v179 - v200;
  sub_1CA948D98();
  v63 = v195;
  v64 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v197;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v57, v188, v59, v61, 0, 0, v62, &v179 - v65);
  v68 = v194;
  v194[30] = v67;
  v68[33] = v196;
  v68[34] = @"Output";
  v69 = swift_allocObject();
  *(v69 + 16) = v190;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 1;
  *(v69 + 120) = MEMORY[0x1E69E6370];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438();
  *&v190 = v72;
  v73 = sub_1CA94C438();
  v75 = v74;
  v192 = &v179;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v179 - v200;
  sub_1CA948D98();
  v77 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 144) = sub_1CA2F9F14(v71, v190, v73, v75, 0, 0, v76, &v179 - v65);
  *(v69 + 168) = v196;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v191;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_1F49F62D8;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v194;
  v194[35] = v80;
  v81[38] = v193;
  v81[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_1CA981470;
  v192 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *&v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_allocObject();
  v183 = xmmword_1CA981370;
  *(v82 + 16) = xmmword_1CA981370;
  *(v82 + 64) = v79;
  *(v82 + 32) = @"Class";
  *(v82 + 40) = 0xD000000000000013;
  *(v82 + 48) = 0x80000001CA99B730;
  v189 = @"Class";
  v83 = @"Parameters";
  *(v82 + 72) = sub_1CA94C368();
  *(v82 + 80) = 1;
  *(v82 + 104) = MEMORY[0x1E69E6370];
  *(v82 + 112) = @"Key";
  *(v82 + 120) = 0x7475706E494657;
  *(v82 + 128) = 0xE700000000000000;
  *(v82 + 144) = v79;
  *(v82 + 152) = @"Label";
  v84 = @"Key";
  v85 = @"Label";
  v86 = v84;
  v87 = v85;
  v187 = v86;
  v188 = v87;
  v88 = sub_1CA94C438();
  v90 = v89;
  v91 = sub_1CA94C438();
  v93 = v92;
  v186 = &v179;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v179 - v200;
  sub_1CA948D98();
  v95 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v179 - v197;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v88, v90, v91, v93, 0, 0, v94, v96);
  *(v82 + 184) = v196;
  *(v82 + 160) = v98;
  *(v82 + 192) = sub_1CA94C368();
  *(v82 + 224) = MEMORY[0x1E69E6370];
  *(v82 + 200) = 1;
  _s3__C3KeyVMa_0(0);
  v186 = v99;
  v185 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v193 + 32) = sub_1CA2F864C();
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1CA981400;
  *(v100 + 32) = v189;
  *(v100 + 40) = 0xD000000000000014;
  *(v100 + 48) = 0x80000001CA99B500;
  *(v100 + 64) = MEMORY[0x1E69E6158];
  *(v100 + 72) = @"Description";
  v101 = @"Description";
  v102 = sub_1CA94C438();
  v181 = v103;
  v104 = sub_1CA94C438();
  v106 = v105;
  v182 = &v179;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v179 - v200;
  sub_1CA948D98();
  v108 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v179 - v197;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 80) = sub_1CA2F9F14(v102, v181, v104, v106, 0, 0, v107, v109);
  v111 = v187;
  *(v100 + 104) = v196;
  *(v100 + 112) = v111;
  strcpy((v100 + 120), "WFSearchQuery");
  *(v100 + 134) = -4864;
  v112 = v188;
  *(v100 + 144) = MEMORY[0x1E69E6158];
  *(v100 + 152) = v112;
  v113 = sub_1CA94C438();
  v180 = v114;
  v181 = v113;
  v115 = sub_1CA94C438();
  v179 = v116;
  v182 = &v179;
  MEMORY[0x1EEE9AC00](v115);
  v117 = v200;
  sub_1CA948D98();
  v118 = v195;
  v119 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v179 - v197;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 160) = sub_1CA2F9F14(v181, v180, v115, v179, 0, 0, &v179 - v117, v120);
  *(v100 + 184) = v196;
  *(v100 + 192) = @"Placeholder";
  v122 = @"Placeholder";
  v123 = sub_1CA94C438();
  v180 = v124;
  v181 = v123;
  v125 = sub_1CA94C438();
  v179 = v126;
  v182 = &v179;
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948D98();
  v127 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = v197;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 200) = sub_1CA2F9F14(v181, v180, v125, v179, 0, 0, &v179 - v117, &v179 - v128);
  v130 = v196;
  *(v100 + 224) = v196;
  *(v100 + 232) = @"Prompt";
  v131 = @"Prompt";
  v132 = sub_1CA94C438();
  v180 = v133;
  v181 = v132;
  v134 = sub_1CA94C438();
  v136 = v135;
  v182 = &v179;
  MEMORY[0x1EEE9AC00](v134);
  v137 = &v179 - v200;
  sub_1CA948D98();
  v138 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 240) = sub_1CA2F9F14(v181, v180, v134, v136, 0, 0, v137, &v179 - v128);
  *(v100 + 264) = v130;
  *(v100 + 272) = @"TextAlignment";
  v140 = MEMORY[0x1E69E6158];
  *(v100 + 304) = MEMORY[0x1E69E6158];
  *(v100 + 280) = 0x7468676952;
  *(v100 + 288) = 0xE500000000000000;
  v182 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v193 + 40) = sub_1CA2F864C();
  v141 = swift_allocObject();
  *(v141 + 16) = v183;
  *(v141 + 32) = v189;
  *(v141 + 40) = 0xD000000000000026;
  *(v141 + 48) = 0x80000001CA9A9BD0;
  v142 = v187;
  *(v141 + 64) = v140;
  *(v141 + 72) = v142;
  strcpy((v141 + 80), "WFSearchRadius");
  *(v141 + 95) = -18;
  v143 = v188;
  *(v141 + 104) = v140;
  *(v141 + 112) = v143;
  v144 = sub_1CA94C438();
  v146 = v145;
  v147 = sub_1CA94C438();
  v149 = v148;
  *&v190 = &v179;
  MEMORY[0x1EEE9AC00](v147);
  v150 = &v179 - v200;
  sub_1CA948D98();
  v151 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v179 - v197;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v141 + 120) = sub_1CA2F9F14(v144, v146, v147, v149, 0, 0, v150, v152);
  v154 = v182;
  *(v141 + 144) = v196;
  *(v141 + 152) = v154;
  *(v141 + 160) = 0x7468676952;
  *(v141 + 168) = 0xE500000000000000;
  v155 = MEMORY[0x1E69E6158];
  *(v141 + 184) = MEMORY[0x1E69E6158];
  *(v141 + 192) = @"WFUnitType";
  *(v141 + 224) = v155;
  *(v141 + 200) = 0x6874676E654CLL;
  *(v141 + 208) = 0xE600000000000000;
  v156 = @"WFUnitType";
  sub_1CA94C1E8();
  v157 = sub_1CA2F864C();
  v158 = v193;
  *(v193 + 48) = v157;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v160 = v194;
  v194[40] = v158;
  v160[43] = v159;
  v160[44] = @"ParameterSummary";
  v161 = @"ParameterSummary";
  v162 = sub_1CA94C438();
  v164 = v163;
  v165 = sub_1CA94C438();
  v167 = v166;
  MEMORY[0x1EEE9AC00](v165);
  v168 = &v179 - v200;
  sub_1CA948D98();
  v169 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  v170 = &v179 - v197;
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v172 = sub_1CA2F9F14(v162, v164, v165, v167, 0, 0, v168, v170);
  v173 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v174 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v175 = v194;
  v194[45] = v173;
  v175[48] = v174;
  v175[49] = @"RequiredResources";
  v175[50] = &unk_1F49F6308;
  v175[53] = v191;
  v175[54] = @"ResidentCompatible";
  v175[58] = MEMORY[0x1E69E6370];
  *(v175 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v176 = @"RequiredResources";
  v177 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA35D8FC()
{
  v114 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000025;
  *(inited + 48) = 0x80000001CA9A9CA0;
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
  v118 = v12;
  v120 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v106 - v120;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v117 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v116 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v119 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v106 - v119;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v115 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v113 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v111 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v112 = &v106;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v106 - v120;
  sub_1CA948D98();
  v30 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v106 - v119;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v111, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v115;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v113;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000001CA99B480;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD00000000000002CLL;
  *(inited + 208) = 0x80000001CA9A9D20;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v110 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E49;
  *(v37 + 104) = 0xE500000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v113;
  *(v37 + 192) = &unk_1F49F6348;
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
  *(inited + 312) = @"Discoverable";
  *(inited + 320) = 0;
  *(inited + 344) = v38;
  *(inited + 352) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Discoverable";
  v46 = @"Name";
  v47 = sub_1CA94C438();
  v49 = v48;
  v50 = sub_1CA94C438();
  v52 = v51;
  v112 = &v106;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v106 - v120;
  sub_1CA948D98();
  v54 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v106 - v119;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  *(inited + 384) = v115;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v112 = swift_allocObject();
  *(v112 + 1) = xmmword_1CA9813B0;
  v111 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_allocObject();
  *(v57 + 16) = v110;
  *(v57 + 32) = @"Class";
  *(v57 + 40) = 0xD000000000000019;
  *(v57 + 48) = 0x80000001CA99B030;
  v58 = MEMORY[0x1E69E6158];
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"Key";
  *(v57 + 80) = 0x7475706E49;
  *(v57 + 88) = 0xE500000000000000;
  *(v57 + 104) = v58;
  *(v57 + 112) = @"Label";
  v59 = @"Parameters";
  v60 = @"Class";
  v61 = @"Key";
  v62 = @"Label";
  v63 = sub_1CA94C438();
  v108 = v64;
  v109 = v63;
  v65 = sub_1CA94C438();
  v107 = v66;
  *&v110 = &v106;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v106 - v120;
  sub_1CA948D98();
  v68 = v117;
  v69 = [v117 bundleURL];
  v106 = &v106;
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v106 - v119;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 120) = sub_1CA2F9F14(v109, v108, v65, v107, 0, 0, v67, v70);
  v72 = v115;
  *(v57 + 144) = v115;
  *(v57 + 152) = @"Placeholder";
  v73 = @"Placeholder";
  v74 = sub_1CA94C438();
  v108 = v75;
  v109 = v74;
  v76 = sub_1CA94C438();
  v107 = v77;
  *&v110 = &v106;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v106 - v120;
  sub_1CA948D98();
  v79 = [v68 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v106 - v119;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v109, v108, v76, v107, 0, 0, v78, v80);
  *(v57 + 184) = v72;
  *(v57 + 160) = v82;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v83 = sub_1CA2F864C();
  v84 = v112;
  v112[4] = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v84;
  *(inited + 424) = v85;
  *(inited + 432) = @"ParameterSummary";
  v86 = @"ParameterSummary";
  v87 = sub_1CA94C438();
  v89 = v88;
  v90 = sub_1CA94C438();
  v92 = v91;
  v115 = &v106;
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v106 - v120;
  sub_1CA948D98();
  v94 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v106 - v119;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v87, v89, v90, v92, 0, 0, v93, v95);
  v98 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v99 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v98;
  *(inited + 464) = v99;
  *(inited + 472) = @"RequiredResources";
  *(inited + 480) = &unk_1F49F6378;
  v100 = v113;
  *(inited + 504) = v113;
  *(inited + 512) = @"UserInterfaceClasses";
  v101 = @"RequiredResources";
  v102 = @"UserInterfaceClasses";
  v103 = sub_1CA94C1E8();
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 520) = v103;
  *(inited + 552) = @"UserInterfaces";
  *(inited + 584) = v100;
  *(inited + 560) = &unk_1F49F6408;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v104 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA35E684(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1CA35E710(uint64_t a1, _OWORD *a2)
{
  v2 = *(*(a1 + 64) + 40);
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  return swift_continuation_throwingResume();
}

uint64_t sub_1CA35E738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_1CA35E784(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA35E7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_5(a1, a2, a3, a4);
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v4 + 40) = v8;
  *v8 = v4;
  v9 = OUTLINED_FUNCTION_13_2(v8);

  return v10(v9);
}

uint64_t sub_1CA35E8C4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_1CA35E9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA35EAB4;

  return sub_1CA35E7CC(a1, a2, a3, v8);
}

uint64_t sub_1CA35EAB4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1CA35EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_5(a1, a2, a3, a4);
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v4 + 40) = v8;
  *v8 = v4;
  v9 = OUTLINED_FUNCTION_13_2(v8);

  return v10(v9);
}

uint64_t sub_1CA35ECDC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_1CA35EDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA35FF60;

  return sub_1CA35EBE4(a1, a2, a3, v8);
}

uint64_t sub_1CA35EEB4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 240) = a4;
  *(v5 + 248) = v4;
  *(v5 + 224) = a1;
  *(v5 + 232) = a3;
  *(v5 + 256) = *a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA35EED4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[28];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA35EFC4;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC444760, &unk_1CA983EF0);
  OUTLINED_FUNCTION_3_0(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_3();
  [v1 getStringRepresentation_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA35EFC4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA35F0C0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9_9();
  v8 = v1 + *v1;
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_14_10(v4);

  return v6(v5);
}

uint64_t sub_1CA35F1AC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 296);
  *v3 = *v1;
  v2[38] = v6;
  v2[39] = v7;
  v2[40] = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA35F2B0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_8();
  if (v3)
  {
    *(v0 + 208) = v2;
    OUTLINED_FUNCTION_6_17(v1);
    OUTLINED_FUNCTION_7_12();
    v4 = sub_1CA94D1E8();
  }

  else
  {
    *(v0 + 176) = v2;
    OUTLINED_FUNCTION_6_17(v1);
    OUTLINED_FUNCTION_7_12();
    v4 = sub_1CA94D238();
  }

  v5 = v4;

  OUTLINED_FUNCTION_2_4();

  return v6(v5 & 1);
}

uint64_t sub_1CA35F368()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 272);
  swift_willThrow();
  v2 = *(v0 + 272);
  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA35F3D0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 288);

  v2 = *(v0 + 320);
  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA35F430(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1CA35E684(v4, a3);
  }

  v6 = sub_1CA94C3A8();
  return sub_1CA35E738(v4, v6, v7);
}

uint64_t sub_1CA35F4A4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2A715C;

  return sub_1CA35EEB4(a1, a2, a3, v8);
}

uint64_t sub_1CA35F560(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 240) = a4;
  *(v5 + 248) = v4;
  *(v5 + 224) = a1;
  *(v5 + 232) = a3;
  *(v5 + 256) = *a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA35F580()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[28];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA35F670;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC444760, &unk_1CA983EF0);
  OUTLINED_FUNCTION_3_0(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_3();
  [v1 getStringRepresentation_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA35F670()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA35F76C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9_9();
  v8 = v1 + *v1;
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_14_10(v4);

  return v6(v5);
}

uint64_t sub_1CA35F858()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 296);
  *v3 = *v1;
  v2[38] = v6;
  v2[39] = v7;
  v2[40] = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA35F95C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_8();
  if (v3)
  {
    *(v0 + 208) = v2;
    OUTLINED_FUNCTION_6_17(v1);
    OUTLINED_FUNCTION_7_12();
    v4 = sub_1CA94D1E8();
  }

  else
  {
    *(v0 + 176) = v2;
    OUTLINED_FUNCTION_6_17(v1);
    OUTLINED_FUNCTION_7_12();
    v4 = sub_1CA94D238();
  }

  v5 = v4;

  OUTLINED_FUNCTION_2_4();

  return v6((v5 & 1) == 0);
}

uint64_t sub_1CA35FA18(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA35FF98;

  return sub_1CA35F560(a1, a2, a3, v8);
}

uint64_t sub_1CA35FAD4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA35FB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA35FBA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_1CA35FD0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t ToolKitValueTransformable.transform<A>(using:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_22();
  v10 = *(v9 + 48);
  OUTLINED_FUNCTION_4_19();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4_4(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1_19(v15);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_150();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_22();
  v10 = *(v9 + 40);
  OUTLINED_FUNCTION_4_19();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4_4(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1_19(v15);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_150();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t sub_1CA3601B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of ToolKitValueTransformer.transform(input:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_22();
  v10 = *(v9 + 48);
  OUTLINED_FUNCTION_4_19();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4_4(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1_19(v15);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_150();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t dispatch thunk of BidirectionalToolKitValueTransformer.transform(input:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_22();
  v10 = *(v9 + 40);
  OUTLINED_FUNCTION_4_19();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4_4(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1_19(v15);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_150();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t WFWorkflowActionTree.availableVariableNames(at:)()
{
  v31 = MEMORY[0x1E69E7CD0];
  v1 = *(v0 + OBJC_IVAR___WFWorkflowActionTree_variableAvailability);
  sub_1CA367290();
  v3 = v2;
  result = sub_1CA25B410(v2);
  v29 = result;
  if (result)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1CCAA22D0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v7 = *(v3 + 32 + 8 * v5);
      }

      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v9 = sub_1CA365194();
      if (v10)
      {
        v11 = v9;
        v12 = v10;
        v13 = v31;
        if (*(v31 + 16))
        {
          v14 = *(v31 + 40);
          sub_1CA94D918();
          sub_1CA94C458();
          sub_1CA94D968();
          v15 = *(v13 + 32);
          OUTLINED_FUNCTION_60_0();
          v18 = ~v17;
          while (1)
          {
            v19 = v16 & v18;
            if (((*(v13 + 56 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v18)) & 1) == 0)
            {
              break;
            }

            v20 = (*(v13 + 48) + 16 * v19);
            if (*v20 != v11 || v12 != v20[1])
            {
              v22 = sub_1CA94D7F8();
              v16 = v19 + 1;
              if ((v22 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_18;
          }
        }

        sub_1CA94C218();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = *(v6 + 16);
          OUTLINED_FUNCTION_21();
          sub_1CA26DADC();
          v6 = v27;
        }

        v24 = *(v6 + 16);
        v23 = *(v6 + 24);
        if (v24 >= v23 >> 1)
        {
          OUTLINED_FUNCTION_64(v23);
          sub_1CA26DADC();
          v6 = v28;
        }

        *(v6 + 16) = v24 + 1;
        v25 = v6 + 16 * v24;
        *(v25 + 32) = v11;
        *(v25 + 40) = v12;
        sub_1CA368948(&v30, v11, v12);
      }

      else
      {
LABEL_18:
      }

      if (v5 == v29)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_27:

    return v6;
  }

  return result;
}

Swift::Bool __swiftcall WFWorkflowActionTree.isVariableNameAvailable(_:at:)(Swift::String _, Swift::Int at)
{
  OUTLINED_FUNCTION_44_4();
  v3 = sub_1CA9491F8();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v9 = *(v2 + OBJC_IVAR___WFWorkflowActionTree_variableAvailability);
  OUTLINED_FUNCTION_69();
  sub_1CA366EB4();
  v10 = sub_1CA949198();
  v11 = *(v6 + 8);
  v12 = OUTLINED_FUNCTION_104();
  v13(v12);
  return (v10 & 1) == 0;
}

uint64_t WFWorkflowActionTree.__possibleContentClasses(namedVariable:at:)()
{
  WFWorkflowActionTree.possibleContentClasses(namedVariable:at:)();
  sub_1CA360CAC();
  OUTLINED_FUNCTION_87();

  return v0;
}

void WFWorkflowActionTree.possibleContentClasses(namedVariable:at:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v51 = v4;
  v52 = v5;
  v6 = sub_1CA94C368();
  v54 = v1;
  v7 = [v1 actionsProvidingVariableNamed:v6 atIndex:v3];

  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  OUTLINED_FUNCTION_5_3();
  v8 = sub_1CA94C658();

  v9 = sub_1CA25B410(v8);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v53 = OBJC_IVAR___WFWorkflowActionTree_variableAvailability;
    v55 = v8 & 0xC000000000000001;
    v48 = v8 + 32;
    v13 = MEMORY[0x1E69E7CC0];
    v49 = v9;
    v50 = v8;
    while (1)
    {
      sub_1CA275D70(v11, v55 == 0, v8);
      v14 = v55 ? MEMORY[0x1CCAA22D0](v11, v8) : *(v48 + 8 * v11);
      v15 = v14;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v17 = [v14 identifier];
      v18 = sub_1CA94C3A8();
      v20 = v19;

      v59 = v18;
      v60 = v20;
      MEMORY[0x1EEE9AC00](v21);
      OUTLINED_FUNCTION_98();
      *(v22 - 16) = &v59;
      LOBYTE(v17) = sub_1CA2BFD14(sub_1CA2E9370, v23, &unk_1F49F6438);
      v56 = v12;

      if (v17 & 1) != 0 && (v59 = v51, v60 = v52, strcpy(v57, "Repeat Index"), v57[13] = 0, v58 = -5120, sub_1CA27BAF0(), (sub_1CA94D238()))
      {
        v24 = *(v13 + 16);
        v25 = 32;
        while (v24)
        {
          v26 = *(v13 + v25);
          v25 += 8;
          --v24;
          if (v26 == sub_1CA25B3D0(0, &qword_1EC4447F0, 0x1E6996EC0))
          {

            goto LABEL_28;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_20_7();
          sub_1CA2E5130();
          v13 = v46;
        }

        v12 = v56;
        v44 = *(v13 + 16);
        v43 = *(v13 + 24);
        if (v44 >= v43 >> 1)
        {
          OUTLINED_FUNCTION_64(v43);
          OUTLINED_FUNCTION_20_7();
          sub_1CA2E5130();
          v13 = v47;
        }

        v45 = sub_1CA25B3D0(0, &qword_1EC4447F0, 0x1E6996EC0);
        *(v13 + 16) = v44 + 1;
        *(v13 + 8 * v44 + 32) = v45;
      }

      else
      {
        v27 = *&v54[v53];
        v28 = v54;
        v29 = v15;
        v30 = sub_1CA365410(v29, v27, v28, v29);
        v31 = v30;
        v32 = *(v30 + 16);
        if (v32)
        {
          v33 = 0;
          v34 = v30 + 32;
          while (v33 < *(v31 + 16))
          {
            v35 = *(v34 + 8 * v33++);
            v36 = *(v13 + 16);
            v37 = 32;
            while (v36)
            {
              v38 = *(v13 + v37);
              v37 += 8;
              --v36;
              if (v38 == v35)
              {
                goto LABEL_25;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_20_7();
              sub_1CA2E5130();
              v13 = v41;
            }

            v40 = *(v13 + 16);
            v39 = *(v13 + 24);
            if (v40 >= v39 >> 1)
            {
              OUTLINED_FUNCTION_64(v39);
              OUTLINED_FUNCTION_20_7();
              sub_1CA2E5130();
              v13 = v42;
            }

            *(v13 + 16) = v40 + 1;
            *(v13 + 8 * v40 + 32) = v35;
LABEL_25:
            if (v33 == v32)
            {

              v10 = v49;
              v8 = v50;
              goto LABEL_28;
            }
          }

          __break(1u);
          break;
        }

LABEL_28:
        v12 = v56;
      }

      if (v11 == v10)
      {

        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_37:
    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA360CAC()
{
  OUTLINED_FUNCTION_71_0();
  if (*(v0 + 16))
  {
    v1 = v0;
    v2 = OUTLINED_FUNCTION_14_11();
    sub_1CA2B8D64(v2, v3, v4);
    do
    {
      v9 = *(v1 + 32);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
      OUTLINED_FUNCTION_52_2();
      OUTLINED_FUNCTION_36_4();
      if (v7)
      {
        sub_1CA2B8D64(v6 > 1, v5, 1);
      }

      OUTLINED_FUNCTION_45_4();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_1CA360D8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8DA8();
    v2 = v9;
    v4 = (a1 + 32);
    do
    {
      v7 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
      swift_dynamicCast();
      v9 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1CA2B8DA8();
        v2 = v9;
      }

      *(v2 + 16) = v5 + 1;
      sub_1CA2C0A20(&v8, (v2 + 32 * v5 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CA360EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8ED4(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1CA2C9578(v4, v10);
      v5 = OUTLINED_FUNCTION_116();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C0, &qword_1CA981A50);
      swift_dynamicCast();
      v12 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1CA2B8ED4(v7 > 1, v8 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v8 + 1;
      sub_1CA27F268(&v11, v2 + 40 * v8 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CA360FF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_14_11();
    sub_1CA2B8DA8();
    v2 = v10;
    v4 = (a1 + 40);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      sub_1CA94C218();
      swift_dynamicCast();
      v10 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1CA2B8DA8();
        v2 = v10;
      }

      *(v2 + 16) = v5 + 1;
      sub_1CA2C0A20(&v9, (v2 + 32 * v5 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CA3610E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_14_11();
    sub_1CA271524();
    v2 = v13;
    v4 = a1 + 32;
    do
    {
      sub_1CA25B374(v4, v10);
      swift_dynamicCast();
      v5 = v11;
      v6 = v12;
      v13 = v2;
      v7 = *(v2 + 16);
      if (v7 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_43_5();
        sub_1CA271524();
        v2 = v13;
      }

      *(v2 + 16) = v7 + 1;
      v8 = v2 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v6;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1CA3611E0()
{
  OUTLINED_FUNCTION_71_0();
  if (*(v0 + 16))
  {
    v1 = v0;
    v2 = OUTLINED_FUNCTION_14_11();
    sub_1CA2B8FC4(v2, v3, v4);
    do
    {
      v9 = *(v1 + 32);
      sub_1CA94C218();
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444050, &unk_1CA9842E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
      OUTLINED_FUNCTION_52_2();
      OUTLINED_FUNCTION_36_4();
      if (v7)
      {
        sub_1CA2B8FC4(v6 > 1, v5, 1);
      }

      OUTLINED_FUNCTION_45_4();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_73();
}

void sub_1CA3612C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1CA94D328();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8DA8();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v11;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = OUTLINED_FUNCTION_106();
          MEMORY[0x1CCAA22D0](v7);
        }

        else
        {
          v8 = *(a1 + 8 * v5 + 32);
        }

        sub_1CA25B3D0(0, &qword_1EC444818, 0x1E6996ED0);
        swift_dynamicCast();
        v11 = v6;
        OUTLINED_FUNCTION_36_4();
        if (v9)
        {
          sub_1CA2B8DA8();
          v6 = v11;
        }

        ++v5;
        *(v6 + 16) = v1;
        sub_1CA2C0A20(&v10, (v6 + 32 * v2 + 32));
      }

      while (v4 != v5);
    }
  }
}

uint64_t sub_1CA361448(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8DA8();
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      v9 = *v4;
      sub_1CA94C218();
      v5 = OUTLINED_FUNCTION_116();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      swift_dynamicCast();
      v11 = v2;
      v7 = *(v2 + 16);
      if (v7 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_43_5();
        sub_1CA2B8DA8();
        v2 = v11;
      }

      *(v2 + 16) = v7 + 1;
      sub_1CA2C0A20(&v10, (v2 + 32 * v7 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void WFWorkflowActionTree.actionsProvidingVariable(named:at:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = sub_1CA9491F8();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v8 = *&v0[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
  OUTLINED_FUNCTION_104();
  sub_1CA366EB4();
  OUTLINED_FUNCTION_71_3(&qword_1EC4447F8);
  v9 = sub_1CA94CA28();
  if (!v9)
  {
    v30 = *(v5 + 8);
    v31 = OUTLINED_FUNCTION_106();
    v32(v31);
LABEL_12:
    OUTLINED_FUNCTION_36();
    return;
  }

  v10 = v9;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1CA94D508();
  v11 = sub_1CA9490E8();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v37 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v18 = v17 - v16;
  sub_1CA94C9F8();
  if (v10 < 0)
  {
    goto LABEL_15;
  }

  v34 = v11;
  v35 = &v33;
  v36 = v5;
  while (1)
  {
    v19 = sub_1CA94CB28();
    v21 = *v20;
    v19(&v38, 0);
    v22 = [v1 actions];
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v23 = sub_1CA94C658();

    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = OUTLINED_FUNCTION_119();
      MEMORY[0x1CCAA22D0](v26);
      goto LABEL_8;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v21 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v24 = *(v23 + 8 * v21 + 32);
LABEL_8:

    sub_1CA94D4D8();
    v25 = *(v39 + 16);
    sub_1CA94D518();
    sub_1CA94D528();
    sub_1CA94D4E8();
    sub_1CA94CA68();
    if (!--v10)
    {
      (*(v37 + 8))(v18, v34);
      v27 = *(v36 + 8);
      v28 = OUTLINED_FUNCTION_106();
      v29(v28);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void WFWorkflowActionTree.availableOutputActions(at:)()
{
  OUTLINED_FUNCTION_71_0();
  v1 = *(v0 + OBJC_IVAR___WFWorkflowActionTree_variableAvailability);
  sub_1CA367290();
  v3 = v2;
  v16 = MEMORY[0x1E69E7CC0];
  v4 = sub_1CA25B410(v2);
  v5 = 0;
LABEL_2:
  v6 = v5;
  while (1)
  {
    while (1)
    {
      if (v6 == v4)
      {

        OUTLINED_FUNCTION_73();
        return;
      }

      if ((v3 & 0xC000000000000001) == 0)
      {
        break;
      }

      v8 = OUTLINED_FUNCTION_106();
      v9 = MEMORY[0x1CCAA22D0](v8);
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_19;
      }

      v11 = *(v9 + 16);
      v12 = *(v9 + 40);
      v14 = *(v9 + 32);
      v15 = *(v9 + 24);
      sub_1CA36D3B8(v11, v15, v14, v12);
      swift_unknownObjectRelease();
      if (v12 == 1)
      {
        v5 = v6;
        goto LABEL_12;
      }

      sub_1CA36D434(v11, v15, v14, v12);
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v5 = v6 + 1;
    v7 = *(v3 + 32 + 8 * v6++);
    if (*(v7 + 40) == 1)
    {
      *(v7 + 16);
LABEL_12:
      MEMORY[0x1CCAA1490]();
      v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
      {
        OUTLINED_FUNCTION_64(v13);
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

Swift::Bool __swiftcall WFWorkflowActionTree.isActionOutputWithIDAvailable(_:at:)(Swift::String _, Swift::Int at)
{
  v3 = *(v2 + OBJC_IVAR___WFWorkflowActionTree_variableAvailability);
  sub_1CA367134(_._countAndFlagsBits, _._object, at);
  return v4 & 1;
}

uint64_t sub_1CA361BD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1CA94C3A8();
  v10 = v9;
  v11 = a1;
  LOBYTE(a5) = a5(v8, v10, a4);

  return a5 & 1;
}

char *WFWorkflowActionTree.__possibleContentClasses(action:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
  v4 = v1;
  v5 = a1;
  OUTLINED_FUNCTION_30_5();
  sub_1CA365410(v6, v7, v8, v6);
  sub_1CA360CAC();
  OUTLINED_FUNCTION_87();

  return v4;
}

uint64_t WFWorkflowActionTree.possibleContentClasses(action:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
  v4 = v1;
  v5 = a1;
  OUTLINED_FUNCTION_30_5();

  return sub_1CA365410(v6, v7, v8, v6);
}

void __swiftcall WFWorkflowActionTree.outputAction(id:)(WFAction_optional *__return_ptr retstr, Swift::String id)
{
  v3 = v2;
  v4 = *(*&v2[OBJC_IVAR___WFWorkflowActionTree_variableAvailability] + 64);
  if (*(v4 + 16))
  {
    OUTLINED_FUNCTION_44_4();
    sub_1CA94C218();
    OUTLINED_FUNCTION_69();
    v5 = sub_1CA271BF8();
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      v8 = [v3 actionAtIndex_];
    }

    else
    {
    }
  }
}

uint64_t WFWorkflowActionTree.shortcutInputActionOutput.getter()
{
  v0 = type metadata accessor for ActionOutput();

  return MEMORY[0x1EEE6C000](v0, &unk_1EC442DE0);
}

uint64_t WFWorkflowActionTree.outputs(for:)(void *a1)
{
  v1 = sub_1CA361F1C(a1);
  if (v1 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444800, &qword_1CA984018);
    OUTLINED_FUNCTION_5_3();
    v2 = sub_1CA94D608();
  }

  else
  {
    sub_1CA94C218();
    sub_1CA94D808();
    v2 = v1;
  }

  return v2;
}

uint64_t sub_1CA361F1C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v53 = MEMORY[0x1E69E7CC0];
  if ([a1 isEligibleForOutputVariable])
  {
    type metadata accessor for ActionOutput();
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = a1;
    *(v5 + 40) = 1;
    MEMORY[0x1CCAA1490](a1);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA94C698();
    }

    sub_1CA94C6E8();
    v4 = v53;
  }

  v6 = [a1 identifier];
  v7 = sub_1CA94C3A8();
  v9 = v8;

  v51 = v7;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v51;
  LOBYTE(v6) = sub_1CA2BFD14(sub_1CA36DB00, v48, &unk_1F49F6478);

  if (v6)
  {
    v11 = sub_1CA94C368();
    v12 = [a1 parameterStateForKey_];

    if (v12)
    {
      v50 = v2;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 string];
        v16 = sub_1CA94C3A8();
        v18 = v17;

        v19 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (v19)
        {
          v20 = a1;
          v21 = [v14 string];
          v22 = sub_1CA94C3A8();
          v24 = v23;

          type metadata accessor for ActionOutput();
          v25 = swift_allocObject();
          *(v25 + 16) = v20;
          *(v25 + 24) = v22;
          *(v25 + 32) = v24;
          *(v25 + 40) = 0;
          MEMORY[0x1CCAA1490]();
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1CA94C698();
          }

          sub_1CA94C6E8();
          v4 = v53;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v26 = [a1 identifier];
  v27 = sub_1CA94C3A8();
  v29 = v28;

  v51 = v27;
  v52 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v49 = &v51;
  LOBYTE(v26) = sub_1CA2BFD14(sub_1CA36DB00, v48, &unk_1F49F6438);

  if (v26)
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = v31;
      v33 = a1;
      if ([v32 mode])
      {
LABEL_32:

        return v4;
      }

      v34 = v33;
      v35 = sub_1CA363C0C(v32);
      if (v36)
      {
LABEL_19:

        goto LABEL_32;
      }

      v37 = v35;
      type metadata accessor for ActionOutput();
      v38 = swift_allocObject();
      *(v38 + 16) = v32;
      *(v38 + 24) = v37;
      *(v38 + 32) = 0;
      *(v38 + 40) = 2;
      v34 = v34;
      MEMORY[0x1CCAA1490]();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v47 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v4 = v53;
      v39 = [v32 identifier];
      v40 = sub_1CA94C3A8();
      v42 = v41;

      if (v40 == 0xD00000000000001FLL && 0x80000001CA9940A0 == v42)
      {
      }

      else
      {
        v44 = sub_1CA94D7F8();

        if ((v44 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v45 = swift_allocObject();
      *(v45 + 16) = v32;
      *(v45 + 24) = v37;
      *(v45 + 32) = 0;
      *(v45 + 40) = 3;
      MEMORY[0x1CCAA1490]();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v4 = v53;
      goto LABEL_32;
    }
  }

  return v4;
}

id sub_1CA36246C(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  a4(v6);

  v8 = OUTLINED_FUNCTION_116();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = sub_1CA94C648();

  return v10;
}

void WFWorkflowActionTree.outputs(for:inScopeOf:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = sub_1CA361F1C(v3);
  [v0 indexOfAction_];
  v5 = *&v0[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
  sub_1CA367290();
  sub_1CA2E3068(v6);
  v13 = MEMORY[0x1E69E7CC0];
  v7 = sub_1CA25B410(v4);
  for (i = 0; v7 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v10 = OUTLINED_FUNCTION_68_3();
    if (sub_1CA2B5A74(v10, v11))
    {
      sub_1CA94D4D8();
      v12 = *(v13 + 16);
      sub_1CA94D518();
      OUTLINED_FUNCTION_194_0();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    else
    {
    }
  }

  sub_1CA94C218();
  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    sub_1CA94D808();
    goto LABEL_15;
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444800, &qword_1CA984018);
  OUTLINED_FUNCTION_5_3();
  sub_1CA94D608();

LABEL_15:

  OUTLINED_FUNCTION_70_2();
}

void sub_1CA3627A8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_1CA362820(char *a1, void *a2)
{
  v4 = _s17ControlFlowBranchVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v154 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s6LayoutVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 indexOfAction_];
  if (v12 == sub_1CA948778())
  {
    return;
  }

  sub_1CA285AF8(v11);
  v13 = *(v11 + 4);
  sub_1CA94C218();
  sub_1CA36D8F4(v11, _s6LayoutVMa);
  if ((v12 & 0x8000000000000000) != 0)
  {
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
    goto LABEL_148;
  }

  if (v12 >= *(v13 + 16))
  {
    goto LABEL_143;
  }

  v14 = v13 + 48 * v12;
  v15 = *(v14 + 32);
  v16 = *(v14 + 48);
  v17 = *(v14 + 56);
  v18 = *(v14 + 64);
  v19 = *(v14 + 72);
  v145 = *(v14 + 40);
  v146 = v16;
  v144 = v17;
  sub_1CA36D94C(v15, v145, v16, v17, v18, v19);

  if (v19)
  {
    if (v19 != 1)
    {
      v22 = v146;
      v23 = v146[2];
      if (v23)
      {
        v143 = a1;
        v152 = *(v4 + 28);
        v142 = OBJC_IVAR___WFWorkflowActionTree_variableAvailability;
        v140 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v153 = (v146 + v140);
        sub_1CA94C218();
        v24 = 0;
        v25 = 0;
        v141 = v23 - 1;
        v26 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v27 = v25;
          while (1)
          {
            if (v27 >= v22[2])
            {
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
              goto LABEL_142;
            }

            v28 = v154;
            sub_1CA36D71C(v153 + *(v5 + 72) * v27, v154);
            v25 = v27 + 1;
            v29 = *(v28 + v152);
            sub_1CA94C218();
            sub_1CA36D8F4(v28, _s17ControlFlowBranchVMa);
            v30 = *(v29 + 16);
            if (v30)
            {
              break;
            }

            ++v27;
            if (v23 == v25)
            {

              v63 = v143;
              if ((v24 & 1) == 0)
              {

                if (!v22[2])
                {
                  goto LABEL_148;
                }

                v64 = *&v63[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
                v65 = *v153;
                v66 = v63;
                v67 = v65;
                sub_1CA365410(v67, v64, v66, v67);
              }

LABEL_135:

              return;
            }
          }

          v31 = v29 + 40 * v30;
          v32 = *v31;
          v34 = *(v31 + 8);
          v33 = *(v31 + 16);
          v35 = *(v31 + 24);
          v147 = *(v31 - 8);
          v151 = v33;
          sub_1CA36DA2C(v147, v32, v34, v33, v35);

          if (v35)
          {
            if (!*(v34 + 16))
            {
              goto LABEL_146;
            }

            v36 = *(v34 + v140);
            sub_1CA36D780(v147, v32, v34, v151, 1);
            v147 = v36;
          }

          v37 = *&v143[v142];
          swift_beginAccess();
          v38 = *(v37 + 32);
          if (*(v38 + 16) && (v39 = sub_1CA320E94(), (v40 & 1) != 0))
          {
            v41 = *(*(v38 + 56) + 8 * v39);
            sub_1CA94C218();
          }

          else
          {
            swift_beginAccess();
            v42 = *(v37 + 24);
            if (*(v42 + 16))
            {
              v43 = *(v42 + 40);
              v44 = sub_1CA94D908();
              v45 = ~(-1 << *(v42 + 32));
              while (1)
              {
                v46 = v44 & v45;
                if (((*(v42 + 56 + (((v44 & v45) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v44 & v45)) & 1) == 0)
                {
                  break;
                }

                v44 = v46 + 1;
                if (*(*(v42 + 48) + 8 * v46) == v147)
                {
                  v41 = MEMORY[0x1E69E7CC0];
                  goto LABEL_30;
                }
              }
            }

            swift_beginAccess();
            v47 = v143;
            v151 = v47;
            v48 = v147;
            sub_1CA369200(&v155, v48);
            swift_endAccess();
            v41 = sub_1CA362820(v47, v48);
            swift_beginAccess();
            sub_1CA6AEF44(v48);
            swift_endAccess();
            swift_beginAccess();
            sub_1CA94C218();
            v49 = *(v37 + 32);
            swift_isUniquelyReferenced_nonNull_native();
            v155 = *(v37 + 32);
            sub_1CA3226FC();
            *(v37 + 32) = v155;
            swift_endAccess();
          }

LABEL_30:
          v151 = *(v41 + 16);
          if (v151)
          {
            v50 = 0;
            v148 = (v41 + 32);
            v149 = v41;
            v150 = v27 + 1;
            while (v50 < *(v41 + 16))
            {
              v51 = v23;
              v52 = v5;
              v53 = v148[v50];
              v54 = *(v26 + 16);
              if (v54)
              {
                v55 = v148[v50];
                ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                v57 = 32;
                v58 = v54;
                while (1)
                {
                  v59 = *(v26 + v57);
                  if (swift_getObjCClassFromMetadata() == ObjCClassFromMetadata)
                  {
                    break;
                  }

                  v57 += 8;
                  if (!--v58)
                  {
                    goto LABEL_37;
                  }
                }

                v5 = v52;
                v23 = v51;
              }

              else
              {
LABEL_37:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1CA2E5130();
                  v26 = v61;
                }

                v60 = *(v26 + 16);
                v5 = v52;
                if (v60 >= *(v26 + 24) >> 1)
                {
                  sub_1CA2E5130();
                  v26 = v62;
                }

                v23 = v51;
                *(v26 + 16) = v60 + 1;
                *(v26 + 8 * v60 + 32) = v53;
              }

              v41 = v149;
              v25 = v150;
              if (++v50 == v151)
              {

                v22 = v146;
                goto LABEL_46;
              }
            }

            goto LABEL_139;
          }

LABEL_46:
          v24 = 1;
          if (v141 == v27)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_135;
          }
        }
      }

LABEL_148:
      __break(1u);
      return;
    }

    if (v18)
    {
      if (v146[2])
      {
        v20 = *&a1[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
        v21 = *(v146 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
        sub_1CA365410(v21, v20, a1, v21);

        return;
      }

      goto LABEL_145;
    }
  }

  else
  {
    sub_1CA36D9BC(v15, v145, v146, v144, v18, 0);
  }

  if ([a2 usesLegacyInputBehavior])
  {
    if (v12)
    {
      v68 = [a1 actionAtIndex_];
      v69 = *&a1[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
      v70 = a1;
      v71 = v68;
      sub_1CA365410(v71, v69, v70, v71);
    }

    else
    {
      v79 = [a2 workflow];
      if (v79)
      {
        v80 = v79;
        v81 = [v79 effectiveInputClasses];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
        v82 = sub_1CA94C658();

        v83 = *(v82 + 16);
        if (v83)
        {
          sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
          v84 = MEMORY[0x1E69E7CC0];
          v85 = 32;
          do
          {
            v86 = *(v82 + v85);
            v87 = swift_dynamicCastMetatype();
            if (v87)
            {
              v88 = v87;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v90 = *(v84 + 16);
                sub_1CA2E5130();
                v84 = v91;
              }

              v89 = *(v84 + 16);
              if (v89 >= *(v84 + 24) >> 1)
              {
                sub_1CA2E5130();
                v84 = v92;
              }

              *(v84 + 16) = v89 + 1;
              *(v84 + 8 * v89 + 32) = v88;
            }

            v85 += 8;
            --v83;
          }

          while (v83);
        }

        goto LABEL_135;
      }
    }

    return;
  }

  if (![a2 inputTypeDeterminesOutputType] || (v72 = objc_msgSend(a2, sel_inputParameter)) == 0)
  {
LABEL_76:
    v149 = v12;
    v93 = [a2 identifier];
    v94 = sub_1CA94C3A8();
    v96 = v95;

    if (v94 == 0xD000000000000018 && 0x80000001CA996200 == v96)
    {
    }

    else
    {
      v98 = sub_1CA94D7F8();

      if ((v98 & 1) == 0)
      {
        goto LABEL_133;
      }
    }

    v99 = sub_1CA94C368();
    v100 = [a2 parameterStateForKey_];

    if (v100)
    {
      objc_opt_self();
      v101 = swift_dynamicCastObjCClass();
      if (v101)
      {
        v102 = [v101 values];
        sub_1CA25B3D0(0, &qword_1EC4448E8, off_1E836EE78);
        v103 = sub_1CA94C658();

        v154 = sub_1CA25B410(v103);
        if (!v154)
        {
LABEL_129:
          swift_unknownObjectRelease();
          goto LABEL_135;
        }

        v145 = v100;
        v143 = a1;
        v104 = 0;
        v153 = (v103 & 0xC000000000000001);
        v150 = v103 + 32;
        v151 = (v103 & 0xFFFFFFFFFFFFFF8);
        v105 = MEMORY[0x1E69E7CC0];
        v152 = v103;
        while (1)
        {
          if (v153)
          {
            v106 = MEMORY[0x1CCAA22D0](v104, v103);
          }

          else
          {
            if (v104 >= *(v151 + 2))
            {
              goto LABEL_144;
            }

            v106 = *(v150 + 8 * v104);
          }

          v107 = v106;
          if (__OFADD__(v104++, 1))
          {
            goto LABEL_141;
          }

          v109 = [v106 state];
          if (!v109)
          {
            goto LABEL_117;
          }

          v110 = v109;
          objc_opt_self();
          v111 = swift_dynamicCastObjCClass();
          if (!v111)
          {
            goto LABEL_116;
          }

          v112 = v111;
          v113 = [v111 variableString];
          v114 = [v113 representsSingleContentVariable];

          if (!v114)
          {
            goto LABEL_116;
          }

          v115 = [v112 variableString];
          v116 = [v115 variables];
          sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
          v117 = sub_1CA94C658();

          v118 = v117 >> 62 ? sub_1CA94D328() : *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v119 = v149;
          if (!v118)
          {
            break;
          }

          if ((v117 & 0xC000000000000001) != 0)
          {
            v120 = MEMORY[0x1CCAA22D0](0, v117);
          }

          else
          {
            if (!*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_147;
            }

            v120 = *(v117 + 32);
          }

          v121 = v120;

          v122 = sub_1CA363784(v121, v119);
          v123 = *(v122 + 16);
          if (v123)
          {
            v146 = v121;
            v147 = v110;
            v148 = v107;
            v124 = 0;
            while (v124 < *(v122 + 16))
            {
              v125 = *(v122 + 32 + 8 * v124++);
              v126 = *(v105 + 16);
              v127 = 32;
              while (v126)
              {
                v128 = *(v105 + v127);
                v127 += 8;
                --v126;
                if (v128 == v125)
                {
                  goto LABEL_113;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1CA2E5130();
                v105 = v130;
              }

              v129 = *(v105 + 16);
              if (v129 >= *(v105 + 24) >> 1)
              {
                sub_1CA2E5130();
                v105 = v131;
              }

              *(v105 + 16) = v129 + 1;
              *(v105 + 8 * v129 + 32) = v125;
LABEL_113:
              if (v124 == v123)
              {

                goto LABEL_127;
              }
            }

            goto LABEL_140;
          }

LABEL_127:
          swift_unknownObjectRelease();
          v103 = v152;
LABEL_128:
          if (v104 == v154)
          {
            goto LABEL_129;
          }
        }

LABEL_116:
        swift_unknownObjectRelease();
        v103 = v152;
LABEL_117:
        v132 = v107;
        v133 = *(v105 + 16);
        v134 = 32;
        while (v133)
        {
          v135 = *(v105 + v134);
          v134 += 8;
          --v133;
          if (v135 == sub_1CA25B3D0(0, &unk_1EC4448F0, 0x1E6996F60))
          {

            goto LABEL_128;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E5130();
          v105 = v138;
        }

        v136 = *(v105 + 16);
        if (v136 >= *(v105 + 24) >> 1)
        {
          sub_1CA2E5130();
          v105 = v139;
        }

        v137 = sub_1CA25B3D0(0, &unk_1EC4448F0, 0x1E6996F60);
        *(v105 + 16) = v136 + 1;
        *(v105 + 8 * v136 + 32) = v137;
        goto LABEL_128;
      }

      swift_unknownObjectRelease();
    }

LABEL_133:
    WFAction.outputContentClasses.getter();
    return;
  }

  v73 = v72;
  objc_opt_self();
  v74 = swift_dynamicCastObjCClass();
  if (!v74)
  {

    goto LABEL_76;
  }

  v75 = [v74 key];
  if (!v75)
  {
    sub_1CA94C3A8();
    v75 = sub_1CA94C368();
  }

  v76 = [a2 parameterStateForKey_];

  if (v76)
  {
    objc_opt_self();
    v77 = swift_dynamicCastObjCClass();
    if (v77)
    {
      v78 = [v77 variable];
      sub_1CA363784(v78, v12);

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CA363784(void *a1, uint64_t a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    v8 = [v6 name];
    v9 = sub_1CA94C3A8();
    v11 = v10;

    v12 = WFWorkflowActionTree.possibleContentClasses(namedVariable:at:)(v9, v11, a2);

    sub_1CA363924(v12, v7);
    v14 = v13;

    return v14;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = a1;
  v19 = [v17 action];
  if (!v19)
  {

LABEL_7:
    v27 = [a1 possibleAggrandizedContentClasses];
    v26 = sub_1CA63DC58(v27);

    return v26;
  }

  v20 = v19;
  v21 = *&v2[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
  v22 = v2;
  v23 = v20;
  v24 = sub_1CA365410(v23, v21, v22, v23);
  sub_1CA363924(v24, v18);
  v26 = v25;

  return v26;
}

void sub_1CA363924(uint64_t a1, id a2)
{
  v3 = [a2 aggrandizements];
  sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
  v4 = sub_1CA94C658();

  v24 = sub_1CA25B410(v4);
  if (v24)
  {
    sub_1CA25B3D0(0, &unk_1EC444900, 0x1E695DFB8);
    v23 = v4 & 0xC000000000000001;
    v20 = v4 + 32;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    sub_1CA94C218();
    v5 = 0;
    v22 = v4;
    while (1)
    {
      if (v23)
      {
        v6 = MEMORY[0x1CCAA22D0](v5, v4);
      }

      else
      {
        if (v5 >= *(v21 + 16))
        {
          goto LABEL_24;
        }

        v6 = *(v20 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      sub_1CA360D8C(a1);

      v9 = sub_1CA56040C();
      v10 = [v7 processedContentClasses_];

      v11 = [v10 array];
      v12 = sub_1CA94C658();

      v13 = *(v12 + 16);
      if (v13)
      {
        v25 = v7;
        v14 = v12 + 32;
        a1 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1CA25B374(v14, v28);
          sub_1CA2C0A20(v28, &v26);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
          if (swift_dynamicCast())
          {
            v15 = v27;
            if (v27)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = *(a1 + 16);
                sub_1CA2E5130();
                a1 = v18;
              }

              v16 = *(a1 + 16);
              if (v16 >= *(a1 + 24) >> 1)
              {
                sub_1CA2E5130();
                a1 = v19;
              }

              *(a1 + 16) = v16 + 1;
              *(a1 + 8 * v16 + 32) = v15;
            }
          }

          v14 += 32;
          --v13;
        }

        while (v13);

        v4 = v22;
        v7 = v25;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (v5 == v24)
      {

        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {

    sub_1CA94C218();
  }
}

uint64_t sub_1CA363C0C(uint64_t a1)
{
  v3 = _s6LayoutVMa(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = [v1 indexOfAction_];
  sub_1CA285AF8(v9);
  v11 = *(v9 + 4);
  sub_1CA94C218();
  result = sub_1CA36D8F4(v9, _s6LayoutVMa);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 >= *(v11 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = v11 + 48 * v10;
  v15 = *(v13 + 32);
  v14 = *(v13 + 40);
  v17 = *(v13 + 48);
  v16 = *(v13 + 56);
  v18 = *(v13 + 64);
  v19 = *(v13 + 72);
  sub_1CA36D94C(v15, v14, v17, v16, v18, *(v13 + 72));

  if (v19 == 1)
  {

    if (!v18)
    {
      v20 = sub_1CA9492B8();
      v21 = *(v20 - 8);
      v22 = *(v21 + 64);
      MEMORY[0x1EEE9AC00](v20);
      v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1CA285AF8(v7);
      v25 = *(v7 + 3);
      sub_1CA94C218();
      result = sub_1CA36D8F4(v7, _s6LayoutVMa);
      if (v10 < *(v25 + 16))
      {
        (*(v21 + 16))(v24, v25 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v10, v20);

        v28 = 1;
        v26 = *&v1[OBJC_IVAR___WFWorkflowActionTree_root];
        sub_1CA94C218();
        sub_1CA6A6E4C();

        (*(v21 + 8))(v24, v20);
        return v28;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_1CA36D9BC(v15, v14, v17, v16, v18, v19);
  }

  return 0;
}

void sub_1CA363EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(_s17ControlFlowBranchVMa(0) - 8);
  v9 = [*(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80))) identifier];
  v10 = sub_1CA94C3A8();
  v12 = v11;

  v16[0] = v10;
  v16[1] = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_98();
  *(v14 - 16) = v16;
  LOBYTE(v9) = sub_1CA2BFD14(sub_1CA36DB00, v15, &unk_1F49F6438);

  if ((v9 & 1) == 0)
  {
    return;
  }

  if (__OFADD__(*a6, 1))
  {
LABEL_7:
    __break(1u);
    return;
  }

  ++*a6;
}

uint64_t sub_1CA364010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_44_4();
  switch(v13)
  {
    case 1:
      if (v12 != 1)
      {
        goto LABEL_20;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      return OUTLINED_FUNCTION_24_7() & 1;
    case 2:
      if (v12 == 2)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    case 3:
      if (v12 != 3)
      {
        goto LABEL_20;
      }

LABEL_17:
      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      result = OUTLINED_FUNCTION_24_7() & (v7 == a6);
      break;
    case 4:
      if (v12 == 4 && !(a6 | a5 | a7))
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    default:
      if (v12 || (v14 = v11, sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0), (OUTLINED_FUNCTION_24_7() & 1) == 0))
      {
LABEL_20:
        result = 0;
      }

      else if (v7 == a6 && v14 == a7)
      {
LABEL_13:
        result = 1;
      }

      else
      {

        result = sub_1CA94D7F8();
      }

      break;
  }

  return result;
}

uint64_t sub_1CA36417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 1:
      MEMORY[0x1CCAA2780](1);
      return sub_1CA94CFE8();
    case 2:
      v8 = 2;
      goto LABEL_8;
    case 3:
      v8 = 3;
LABEL_8:
      MEMORY[0x1CCAA2780](v8);
      sub_1CA94CFE8();
      v7 = a3;
      goto LABEL_9;
    case 4:
      v7 = 4;
LABEL_9:
      result = MEMORY[0x1CCAA2780](v7);
      break;
    default:
      MEMORY[0x1CCAA2780](0);
      sub_1CA94CFE8();
      OUTLINED_FUNCTION_20_0();

      result = sub_1CA94C458();
      break;
  }

  return result;
}

uint64_t sub_1CA364270(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CA94D918();
  sub_1CA36417C(v9, a1, a2, a3, a4);
  return sub_1CA94D968();
}

uint64_t sub_1CA3642F8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1CA94D918();
  sub_1CA36417C(v6, v1, v2, v3, v4);
  return sub_1CA94D968();
}

uint64_t sub_1CA36437C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  switch(*(v0 + 40))
  {
    case 1:
      MEMORY[0x1CCAA2780](1);
      OUTLINED_FUNCTION_59_3();
      return sub_1CA94CFE8();
    case 2:
      v6 = 2;
      goto LABEL_8;
    case 3:
      v6 = 3;
LABEL_8:
      MEMORY[0x1CCAA2780](v6);
      OUTLINED_FUNCTION_59_3();
      sub_1CA94CFE8();
      v5 = v2;
      goto LABEL_9;
    case 4:
      v5 = 4;
LABEL_9:
      result = MEMORY[0x1CCAA2780](v5);
      break;
    default:
      v3 = *(v0 + 32);
      MEMORY[0x1CCAA2780](0);
      OUTLINED_FUNCTION_59_3();
      sub_1CA94CFE8();
      OUTLINED_FUNCTION_33_5();

      result = sub_1CA94C458();
      break;
  }

  return result;
}

uint64_t sub_1CA364498()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = 0x74756374726F6853;
  switch(*(v0 + 40))
  {
    case 1:
      v7 = [v2 generateUUIDIfNecessaryWithUUIDProvider_];
      if (!v7)
      {
        sub_1CA94C3A8();
        v7 = sub_1CA94C368();
      }

      v8 = WFVariableNameForActionOutputUUID(v7, v6);

      v4 = sub_1CA94C3A8();
      sub_1CA36D434(v2, v1, v3, 1u);
      break;
    case 2:
      v4 = 0x4920746165706552;
      if (v1 != 1)
      {
        goto LABEL_9;
      }

      break;
    case 3:
      v4 = 0x4920746165706552;
      if (v1 != 1)
      {
LABEL_9:
        v11 = *(v0 + 24);
        v9 = sub_1CA94D798();
        MEMORY[0x1CCAA1300](v9);

        v4 = 0x4920746165706552;
      }

      break;
    case 4:
      return v4;
    default:
      v5 = *(v0 + 32);
      sub_1CA94C218();
      v4 = v1;
      break;
  }

  return v4;
}

id sub_1CA364674(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  OUTLINED_FUNCTION_20_0();
  v5 = sub_1CA94C368();

  return v5;
}

uint64_t sub_1CA3646E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  switch(*(v0 + 40))
  {
    case 1:
      v9 = v2;
      v10 = sub_1CA36D2C4(v9, &selRef_outputName);
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v20 = [v9 localizedDefaultOutputName];
        v12 = sub_1CA94C3A8();
      }

      sub_1CA36D434(v2, v1, v3, 1u);
      return v12;
    case 2:
      if (v1 == 1)
      {
        sub_1CA94C438();
        if (qword_1EDB9F5F0 != -1)
        {
          goto LABEL_23;
        }

        goto LABEL_10;
      }

      sub_1CA94C438();
      if (qword_1EDB9F5F0 != -1)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    case 3:
      if (v1 == 1)
      {
        sub_1CA94C438();
        if (qword_1EDB9F5F0 != -1)
        {
LABEL_23:
          swift_once();
        }

LABEL_10:
        v5 = qword_1EDB9F690;
        v6 = sub_1CA94C368();
        v7 = sub_1CA94C368();

        v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

        v1 = sub_1CA94C3A8();
      }

      else
      {
        sub_1CA94C438();
        if (qword_1EDB9F5F0 != -1)
        {
LABEL_24:
          swift_once();
        }

LABEL_16:
        v13 = qword_1EDB9F690;
        v14 = sub_1CA94C368();
        v15 = sub_1CA94C368();

        v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

        sub_1CA94C3A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
        v17 = swift_allocObject();
        v18 = MEMORY[0x1E69E6530];
        *(v17 + 16) = xmmword_1CA981310;
        v19 = MEMORY[0x1E69E65A8];
        *(v17 + 56) = v18;
        *(v17 + 64) = v19;
        *(v17 + 32) = v1;
        v1 = sub_1CA94C378();
      }

      return v1;
    case 4:
      sub_1CA94C438();
      if (qword_1EDB9F5F0 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    default:
      v4 = *(v0 + 32);
      sub_1CA94C218();
      return v1;
  }
}

id sub_1CA364BE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  switch(*(v0 + 40))
  {
    case 1:
      v12 = v1;
      v13 = [v12 outputIcon];
      if (!v13)
      {
        v13 = [v12 icon];
      }

      v8 = v13;
      sub_1CA36D434(v1, v2, v3, 1u);
      break;
    case 2:
    case 3:
      sub_1CA25B3D0(0, &qword_1EC444870, 0x1E69E0D70);
      v4 = sub_1CA4D6A18();
      goto LABEL_4;
    case 4:
      v5 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithSystemColor_];
      v6 = [objc_opt_self() clearBackground];
      v7 = objc_allocWithZone(MEMORY[0x1E69E0D70]);
      v4 = sub_1CA42AB48(0xD000000000000019, 0x80000001CA9AA0A0, v5, v6);
LABEL_4:
      v8 = v4;
      break;
    default:
      v9 = objc_opt_self();
      v10 = sub_1CA94C368();
      v11 = [v9 workflowKitImageNamed_];

      v8 = [objc_allocWithZone(MEMORY[0x1E69E0B60]) initWithImage_];
      break;
  }

  return v8;
}

uint64_t sub_1CA364E70()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = 0;
  switch(*(v0 + 40))
  {
    case 1:
      v7 = [v2 generateUUIDIfNecessaryWithUUIDProvider_];
      if (!v7)
      {
        sub_1CA94C3A8();
        v7 = sub_1CA94C368();
      }

      v8 = WFVariableNameForActionOutputUUID(v7, v6);

      v4 = sub_1CA94C3A8();
      sub_1CA36D434(v2, v1, v3, 1u);
      break;
    case 2:
      v4 = 0x4920746165706552;
      if (v1 != 1)
      {
        goto LABEL_9;
      }

      break;
    case 3:
      v4 = 0x4920746165706552;
      if (v1 != 1)
      {
LABEL_9:
        v11 = *(v0 + 24);
        v9 = sub_1CA94D798();
        MEMORY[0x1CCAA1300](v9);

        v4 = 0x4920746165706552;
      }

      break;
    case 4:
      return v4;
    default:
      v5 = *(v0 + 32);
      sub_1CA94C218();
      v4 = v1;
      break;
  }

  return v4;
}

id sub_1CA36501C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  switch(*(v1 + 40))
  {
    case 1:
      result = [v3 outputVariableWithVariableProvider:a1 UUIDProvider:0];
      if (!result)
      {
        goto LABEL_9;
      }

      v12 = result;
      sub_1CA36D434(v3, v2, v4, 1u);
      result = v12;
      break;
    case 4:
      v10 = objc_allocWithZone(WFShortcutInputVariable);
      v11 = swift_unknownObjectRetain();
      result = sub_1CA615164(v11, 0);
      break;
    default:
      result = sub_1CA364E70();
      if (v7)
      {
        v8 = result;
        v9 = v7;
        objc_allocWithZone(WFUserDefinedVariable);
        swift_unknownObjectRetain();
        result = sub_1CA368890(v8, v9, a1, 0);
      }

      else
      {
        __break(1u);
LABEL_9:
        __break(1u);
      }

      break;
  }

  return result;
}

uint64_t sub_1CA365194()
{
  result = 0;
  if (((1 << *(v0 + 40)) & 0xD) != 0)
  {
    return sub_1CA364E70();
  }

  return result;
}

uint64_t sub_1CA3651CC()
{
  sub_1CA36D434(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

uint64_t sub_1CA36520C()
{
  sub_1CA94D918();
  sub_1CA36417C(v2, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  return sub_1CA94D968();
}

uint64_t sub_1CA3652A0()
{
  sub_1CA94D918();
  v1 = *v0;
  sub_1CA36437C();
  return sub_1CA94D968();
}

void *sub_1CA3652EC(void *a1)
{
  v3 = [objc_opt_self() hashTableWithOptions_];
  v4 = MEMORY[0x1E69E7CD0];
  v1[2] = v3;
  v1[3] = v4;
  OUTLINED_FUNCTION_27_2();
  v1[5] = a1[5];
  v1[7] = a1[7];
  v1[8] = a1[8];
  OUTLINED_FUNCTION_27_2();
  v1[6] = a1[6];
  v1[9] = a1[9];
  OUTLINED_FUNCTION_27_2();
  v1[10] = a1[10];
  OUTLINED_FUNCTION_27_2();
  v5 = a1[4];
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();

  v1[4] = v5;
  return v1;
}

uint64_t sub_1CA365410(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_27_2();
  v8 = *(a2 + 32);
  if (*(v8 + 16) && (v9 = sub_1CA320E94(), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    sub_1CA94C218();
  }

  else
  {
    OUTLINED_FUNCTION_27_2();
    if (sub_1CA2B5D28(a1, *(a2 + 24)))
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      OUTLINED_FUNCTION_28();
      sub_1CA369200(&v17, a1);
      swift_endAccess();
      v12 = OUTLINED_FUNCTION_116();
      sub_1CA362820(v12, v13);
      v11 = v14;
      OUTLINED_FUNCTION_28();
      sub_1CA6AEF44(a1);
      swift_endAccess();
      OUTLINED_FUNCTION_28();
      sub_1CA94C218();
      v15 = *(a2 + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *(a2 + 32);
      OUTLINED_FUNCTION_104();
      sub_1CA3226FC();
      *(a2 + 32) = v17;
      swift_endAccess();
    }
  }

  return v11;
}

void sub_1CA365554(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444850, qword_1CA984318);
  sub_1CA94C228();
  swift_endAccess();
  v10 = [a1 identifier];
  v11 = sub_1CA94C3A8();
  v13 = v12;

  v40[0] = v11;
  v40[1] = v13;
  v38 = v40;
  LOBYTE(v10) = sub_1CA2BFD14(sub_1CA36DB00, v37, &unk_1F49F6478);

  if (v10)
  {
    v14 = a2 == 0x6261697261564657 && a3 == 0xEE00656D614E656CLL;
    if (v14 || (OUTLINED_FUNCTION_194_0(), (sub_1CA94D7F8() & 1) != 0))
    {
      sub_1CA365968();
    }
  }

  sub_1CA94C218();
  OUTLINED_FUNCTION_194_0();
  v15 = sub_1CA94C368();
  v16 = [a1 parameterStateForKey:v15 fallingBackToDefaultValue:0];

  if (v16)
  {
    v33 = a1;
    v34 = a2;
    v35 = a3;
    v17 = [v16 containedVariables];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    v18 = sub_1CA94C658();

    v19 = sub_1CA25B410();
    if (v19)
    {
      v20 = v19;
      v36 = 0;
      v21 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1CCAA22D0](v21, v18);
        }

        else
        {
          if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v22 = *(v18 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();

        if (v25)
        {
          v36 = 1;
        }

        ++v21;
        if (v24 == v20)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v36 = 0;
LABEL_21:
    swift_unknownObjectRelease();

    a3 = v35;
    a1 = v33;
    a2 = v34;
    LOBYTE(v16) = v36;
  }

  OUTLINED_FUNCTION_27_2();
  v26 = *(*(v5 + 80) + 16);
  OUTLINED_FUNCTION_28();
  if (v16)
  {
    sub_1CA3692B0(&v39, a1, a2, a3);
    swift_endAccess();
  }

  else
  {
    sub_1CA6AF018();
    swift_endAccess();
  }

  if ((v26 == 0) == (*(*(v5 + 80) + 16) != 0))
  {
    v27 = [*(a4 + OBJC_IVAR___WFWorkflowActionTree_observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444858, &unk_1CA992010);
    v28 = sub_1CA94C658();

    v29 = sub_1CA25B410();
    if (v29)
    {
      v30 = v29;
      if (v29 < 1)
      {
LABEL_37:
        __break(1u);
        return;
      }

      for (i = 0; i != v30; ++i)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1CCAA22D0](i, v28);
        }

        else
        {
          v32 = *(v28 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        [v32 actionTreeDidChangeShortcutInputUsage_];
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1CA365968()
{
  OUTLINED_FUNCTION_37_0();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = [v5 indexOfAction_];
  v109 = v6;
  v10 = sub_1CA361F1C(v8);
  OUTLINED_FUNCTION_27_2();
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_104;
  }

  v11 = *(v4 + 48);
  if (v9 >= *(v11 + 16))
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v110 = v4;
  v115 = v9;
  v12 = *(v11 + 8 * v9 + 32);
  v13 = sub_1CA25B410();
  v8 = v12;
  sub_1CA94C218();
  v14 = 0;
  v116 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v14)
    {
      v6 = v116;
      v9 = v8;
      if (v116[2])
      {
        v20 = v116[5];
        v113 = v116[4];
        v114 = v20;
        sub_1CA94C218();

        v21 = sub_1CA25B410();
        v22 = 0;
        v3 = (v8 & 0xC000000000000001);
        v116 = MEMORY[0x1E69E7CC0];
        while (v21 != v22)
        {
          if (v3)
          {
            v2 = MEMORY[0x1CCAA22D0](v22, v8);
          }

          else
          {
            if (v22 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_103;
            }

            v2 = *(v8 + 8 * v22 + 32);
          }

          v9 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          v6 = v2;
          sub_1CA365194();
          OUTLINED_FUNCTION_70_5();
          ++v22;
          if (v1)
          {
            v22 = v116;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = v116[2];
              OUTLINED_FUNCTION_21();
              sub_1CA26DADC();
              v22 = v25;
            }

            OUTLINED_FUNCTION_69_3();
            if (v16)
            {
              OUTLINED_FUNCTION_64(v23);
              OUTLINED_FUNCTION_43_5();
              sub_1CA26DADC();
              v116 = v26;
            }

            OUTLINED_FUNCTION_47_3();
          }
        }

        if (v116[2])
        {
          v2 = v116[4];
          v9 = v116[5];
          sub_1CA94C218();

          v3 = v113;
          v27 = v113 == v2 && v114 == v9;
          if (!v27 && (sub_1CA94D7F8() & 1) == 0)
          {
            v6 = v110;
            OUTLINED_FUNCTION_28();
            v8 = *(v110 + 48);
            sub_1CA94C218();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v110 + 48) = v8;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_109;
            }

            goto LABEL_39;
          }
        }
      }

LABEL_37:

      OUTLINED_FUNCTION_36();
      return;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1CCAA22D0](v14, v10);
    }

    else
    {
      if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v2 = *(v10 + 8 * v14 + 32);
    }

    if (__OFADD__(v14, 1))
    {
      break;
    }

    sub_1CA365194();
    OUTLINED_FUNCTION_70_5();
    ++v14;
    if (v1)
    {
      v14 = v116;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = v116[2];
        OUTLINED_FUNCTION_21();
        sub_1CA26DADC();
        v14 = v18;
      }

      OUTLINED_FUNCTION_69_3();
      if (v16)
      {
        OUTLINED_FUNCTION_64(v15);
        OUTLINED_FUNCTION_43_5();
        sub_1CA26DADC();
        v116 = v19;
      }

      OUTLINED_FUNCTION_47_3();
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  OUTLINED_FUNCTION_20_7();
  for (i = __swift_storeEnumTagSinglePayload(v69, v70, v71, v72); ; i = sub_1CA94C218())
  {
    v3 = &v102;
    MEMORY[0x1EEE9AC00](i);
    OUTLINED_FUNCTION_34_6();
    v73 = OUTLINED_FUNCTION_104();
    sub_1CA36D830(v73, v74);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v10);
    v9 = v104;
    if (EnumTagSinglePayload == 1)
    {
      v118 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_17_4();
      sub_1CA36DA78(v76, v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
      sub_1CA36D7CC();
      sub_1CA94D2A8();

      sub_1CA27080C(v14, &unk_1EC444840, &qword_1CA984310);
    }

    else
    {

      (*(v2 + 32))(v13, v14, v10);
    }

    LODWORD(v115) = sub_1CA949198();
    (*(v2 + 8))(v13, v10);
    v78 = [v109 actions];
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v6 = OUTLINED_FUNCTION_53_3();

    v106 = v6;
    v79 = sub_1CA25B410();
    v2 = v103;
    v108 = v79;
    if (!v79)
    {
LABEL_93:

      v63 = v110;
LABEL_94:

      sub_1CA28CBA8();
      v95 = [*(v63 + 16) allObjects];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481A0, &qword_1CA992020);
      v96 = OUTLINED_FUNCTION_53_3();

      v97 = sub_1CA25B410();
      if (v97)
      {
        v98 = v97;
        if (v97 < 1)
        {
          goto LABEL_112;
        }

        for (j = 0; j != v98; ++j)
        {
          if ((v96 & 0xC000000000000001) != 0)
          {
            v100 = MEMORY[0x1CCAA22D0](j, v96);
          }

          else
          {
            v100 = *(v96 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          [v100 availableVariablesDidChange];
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_37;
    }

    v8 = 0;
    v107 = v106 & 0xC000000000000001;
    v105 = v106 & 0xFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_56_3(v106 + 32);
    while (1)
    {
      if (v107)
      {
        v80 = MEMORY[0x1CCAA22D0](v8, v106);
      }

      else
      {
        if (v8 >= *(v105 + 16))
        {
          goto LABEL_108;
        }

        OUTLINED_FUNCTION_155_0();
        v80 = *(v81 + 8 * v8);
      }

      if (__OFADD__(v8++, 1))
      {
        goto LABEL_106;
      }

      v111 = v80;
      v112 = v8;
      v8 = [v80 containedVariables];
      sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
      v83 = OUTLINED_FUNCTION_53_3();

      if (!(v83 >> 62))
      {
        v10 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          break;
        }

        goto LABEL_89;
      }

      v10 = sub_1CA94D328();
      if (v10)
      {
        break;
      }

LABEL_89:

      v8 = v112;
      if (v112 == v108)
      {
        goto LABEL_93;
      }
    }

    if (v10 >= 1)
    {
      v84 = 0;
      v116 = (v83 & 0xC000000000000001);
      while (1)
      {
        if (v116)
        {
          v85 = MEMORY[0x1CCAA22D0](v84, v83);
        }

        else
        {
          v85 = *(v83 + 8 * v84 + 32);
        }

        v86 = v85;
        objc_opt_self();
        v87 = swift_dynamicCastObjCClass();
        if (!v87)
        {
          goto LABEL_85;
        }

        v88 = v87;
        v89 = v9;
        v90 = v2;
        v91 = [v87 name];
        v6 = sub_1CA94C3A8();
        v3 = v92;

        v2 = v90;
        v9 = v89;
        if (v6 == v2 && v3 == v89)
        {
        }

        else
        {
          v6 = sub_1CA94D7F8();

          if ((v6 & 1) == 0)
          {
            goto LABEL_85;
          }
        }

        v94 = [v88 variableProvider];
        if (v94)
        {
          v3 = v94;
          if (v115)
          {
            sub_1CA36D324(v94, v113, v114, v88);
          }

          else
          {
            [v88 variableProviderDidInvalidateOutputDetails_];
          }

          swift_unknownObjectRelease();
          goto LABEL_88;
        }

LABEL_85:

LABEL_88:
        if (v10 == ++v84)
        {
          goto LABEL_89;
        }
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    sub_1CA42B24C(v8);
    v8 = v101;
    *(v6 + 48) = v101;
LABEL_39:
    v104 = v9;
    if (v115 >= *(v8 + 16))
    {
      break;
    }

    v29 = v8 + 8 * v115;
    v30 = *(v29 + 32);
    *(v29 + 32) = v10;
    *(v6 + 48) = v8;
    swift_endAccess();

    v31 = sub_1CA366608();
    v32 = sub_1CA366548(v117, v2, v104);
    v34 = v33;
    v10 = sub_1CA9491F8();
    if (!__swift_getEnumTagSinglePayload(v34, 1, v10))
    {
      sub_1CA949188();
    }

    (v32)(v117, 0);
    (v31)(&v118, 0);
    v35 = v110;
    OUTLINED_FUNCTION_28();
    v36 = *(v35 + 40);
    swift_isUniquelyReferenced_nonNull_native();
    v117[0] = *(v35 + 40);
    v37 = v117[0];
    *(v35 + 40) = 0x8000000000000000;
    v38 = sub_1CA271BF8();
    if (__OFADD__(*(v37 + 16), (v39 & 1) == 0))
    {
      goto LABEL_111;
    }

    v40 = v38;
    v41 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444828, &qword_1CA9842F8);
    v42 = sub_1CA94D588();
    v43 = v117[0];
    v103 = v2;
    if (v42)
    {
      v44 = sub_1CA271BF8();
      if ((v41 & 1) != (v45 & 1))
      {
        goto LABEL_113;
      }

      v40 = v44;
    }

    *(v110 + 40) = v43;
    v46 = *(v10 - 8);
    if ((v41 & 1) == 0)
    {
      v47 = *(v10 - 8);
      v48 = *(v46 + 64);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v49);
      OUTLINED_FUNCTION_62();
      v117[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_17_4();
      sub_1CA36DA78(v50, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
      sub_1CA36D7CC();
      sub_1CA94D2A8();
      sub_1CA3230EC(v40, v3, v114, v41, v43);
      sub_1CA94C218();
    }

    v52 = *(v43 + 56);
    v2 = v46;
    v53 = *(v46 + 72);
    sub_1CA949168();
    swift_endAccess();
    v54 = [v109 notifyVariablesOfChanges];
    if (!v54)
    {
      v63 = v110;
      goto LABEL_94;
    }

    v55 = *(v110 + 40);
    v56 = *(v46 + 64);
    MEMORY[0x1EEE9AC00](v54);
    OUTLINED_FUNCTION_6_0();
    v13 = v58 - v57;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444840, &qword_1CA984310);
    v14 = *(*(v59 - 8) + 64);
    MEMORY[0x1EEE9AC00](v59 - 8);
    OUTLINED_FUNCTION_62();
    v60 = *(v55 + 16);
    v116 = &v102;
    if (v60)
    {
      sub_1CA94C218();
      v61 = sub_1CA271BF8();
      if (v62)
      {
        (*(v2 + 16))(v41, *(v55 + 56) + v61 * v53, v10);
      }

      goto LABEL_56;
    }

    OUTLINED_FUNCTION_20_7();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  sub_1CA94D878();
  __break(1u);
}

void (*sub_1CA366548(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1CA36CCD0(v6, a2, a3);
  return sub_1CA3665BC;
}

void sub_1CA3665BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1CA366650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1CA94D7F8();
  }
}

uint64_t sub_1CA36668C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1CCAA2780](a2);

  return sub_1CA94C458();
}

uint64_t sub_1CA3666E0(uint64_t a1)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a1);
  sub_1CA94C458();
  return sub_1CA94D968();
}

uint64_t sub_1CA366748()
{
  v1 = v0[1];
  v2 = v0[2];
  return sub_1CA3666E0(*v0);
}

uint64_t sub_1CA366754(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  return sub_1CA36668C(a1, *v1);
}

uint64_t sub_1CA366760()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  sub_1CA94C458();
  return sub_1CA94D968();
}

void sub_1CA3667DC()
{
  OUTLINED_FUNCTION_37_0();
  v69 = v0;
  v2 = v1;
  v3 = sub_1CA9491F8();
  v4 = sub_1CA94C1E8();
  v75 = sub_1CA94C1E8();
  v5 = [v2 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  OUTLINED_FUNCTION_87();
  v6 = sub_1CA94C658();

  sub_1CA25B410(v6);

  sub_1CA2E51EC();
  v8 = v7;
  v72 = v2;
  v9 = [v2 actions];
  v10 = sub_1CA94C658();

  v74 = sub_1CA25B410(v10);
  v11 = 0;
  OUTLINED_FUNCTION_56_3(v10 & 0xC000000000000001);
  v73 = v10 & 0xFFFFFFFFFFFFFF8;
  v70 = v10;
  v71 = v10 + 32;
  v84 = v3;
  v12 = (v3 - 8);
  v79 = (v3 - 8);
  while (1)
  {
    if (v11 == v74)
    {

      v65 = v69;
      swift_beginAccess();
      v66 = v65[5];
      v65[5] = v4;

      v67 = v65[8];
      v65[8] = v75;

      swift_beginAccess();
      v68 = v65[6];
      v65[6] = v8;

      OUTLINED_FUNCTION_36();
      return;
    }

    OUTLINED_FUNCTION_155_0();
    if (v13)
    {
      v14 = MEMORY[0x1CCAA22D0](v11, v70);
    }

    else
    {
      if (v11 >= *(v73 + 16))
      {
        goto LABEL_49;
      }

      v14 = *(v71 + 8 * v11);
    }

    v15 = v14;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v76 = v11 + 1;
    v16 = sub_1CA361F1C(v14);
    v17 = v16;
    if (v16 >> 62)
    {
      v18 = sub_1CA94D328();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v8;
    v78 = v15;
    v87 = v17;
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v88 = v17 & 0xC000000000000001;
      v80 = v17 & 0xFFFFFFFFFFFFFF8;
      v85 = v18;
      v86 = v11;
      while (1)
      {
        if (v88)
        {
          v21 = MEMORY[0x1CCAA22D0](v20, v17);
        }

        else
        {
          if (v20 >= *(v80 + 16))
          {
            goto LABEL_46;
          }

          v21 = *(v17 + 8 * v20 + 32);
        }

        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v23 = sub_1CA364E70();
        if (v24)
        {
          v25 = v23;
          v26 = v24;
          v89 = v21;
          swift_isUniquelyReferenced_nonNull_native();
          v91 = v4;
          v90 = v25;
          v27 = sub_1CA271BF8();
          if (__OFADD__(v4[2], (v28 & 1) == 0))
          {
            goto LABEL_45;
          }

          v29 = v27;
          v30 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444828, &qword_1CA9842F8);
          v31 = sub_1CA94D588();
          v4 = v91;
          if (v31)
          {
            v32 = sub_1CA271BF8();
            if ((v30 & 1) != (v33 & 1))
            {
              goto LABEL_52;
            }

            v29 = v32;
          }

          if (v30)
          {

            v34 = *v12;
          }

          else
          {
            v81 = &v69;
            v34 = *(v84 - 8);
            v35 = *(v34 + 64);
            OUTLINED_FUNCTION_29();
            MEMORY[0x1EEE9AC00](v36);
            v83 = &v69 - v37;
            v91 = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_17_4();
            v82 = sub_1CA36DA78(&unk_1EC442CF0, v38);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
            sub_1CA36D7CC();
            v39 = v84;
            sub_1CA94D2A8();
            v4[(v29 >> 6) + 8] |= 1 << v29;
            v40 = (v4[6] + 16 * v29);
            *v40 = v90;
            v40[1] = v26;
            (*(v34 + 32))(v4[7] + *(v34 + 72) * v29, v83, v39);
            v41 = v4[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_47;
            }

            v4[2] = v43;
            v12 = v79;
          }

          v44 = v4[7] + *(v34 + 72) * v29;
          v11 = v86;
          sub_1CA949168();
          v17 = v87;
          v19 = v85;
        }

        ++v20;
        if (v22 == v19)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      break;
    }

LABEL_27:
    v45 = v78;
    v46 = sub_1CA36D2C4(v78, &selRef_UUID);
    if (v47)
    {
      v48 = v46;
      v49 = v47;
      v50 = v11;
      v51 = v75;
      swift_isUniquelyReferenced_nonNull_native();
      v91 = v51;
      OUTLINED_FUNCTION_116();
      v52 = sub_1CA271BF8();
      v8 = v77;
      if (__OFADD__(*(v51 + 16), (v53 & 1) == 0))
      {
        goto LABEL_50;
      }

      v54 = v52;
      v55 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444820, &qword_1CA9842F0);
      if (sub_1CA94D588())
      {
        OUTLINED_FUNCTION_116();
        v56 = sub_1CA271BF8();
        if ((v55 & 1) != (v57 & 1))
        {
          goto LABEL_52;
        }

        v54 = v56;
      }

      v17 = v87;
      v58 = v91;
      v75 = v91;
      if (v55)
      {
        *(v91[7] + 8 * v54) = v50;
      }

      else
      {
        v91[(v54 >> 6) + 8] |= 1 << v54;
        v59 = (v58[6] + 16 * v54);
        *v59 = v48;
        v59[1] = v49;
        *(v58[7] + 8 * v54) = v50;
        v60 = v58[2];
        v42 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v42)
        {
          goto LABEL_51;
        }

        v58[2] = v61;
      }

      v45 = v78;
      v12 = v79;
    }

    else
    {
      v8 = v77;
    }

    v63 = *(v8 + 16);
    v62 = *(v8 + 24);
    if (v63 >= v62 >> 1)
    {
      OUTLINED_FUNCTION_64(v62);
      OUTLINED_FUNCTION_20_7();
      sub_1CA2E51EC();
      v8 = v64;
    }

    *(v8 + 16) = v63 + 1;
    *(v8 + 8 * v63 + 32) = v17;
    v11 = v76;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  sub_1CA94D878();
  __break(1u);
}

void sub_1CA366EB4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  v2 = v1;
  if (*(*(v0 + 56) + 16) <= v1)
  {
    goto LABEL_5;
  }

  v3 = sub_1CA9491F8();
  v24 = &v20;
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v20 - v21;
  OUTLINED_FUNCTION_27_2();
  v9 = *(v0 + 40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444840, &qword_1CA984310);
  v23 = &v20;
  v11 = *(*(v10 - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  sub_1CA94C218();
  sub_1CA311940(v9, v14);

  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_1CA27080C(v14, &unk_1EC444840, &qword_1CA984310);
LABEL_5:
    sub_1CA9491E8();
LABEL_6:
    OUTLINED_FUNCTION_36();
    return;
  }

  v15 = v22;
  v16 = (*(v6 + 32))(v22, v14, v3);
  MEMORY[0x1EEE9AC00](v16);
  v17 = *(v0 + 56);
  if (*(v17 + 16) > v2)
  {
    (*(v6 + 16))(&v20 - v21, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v2, v3);
    sub_1CA949108();
    v18 = *(v6 + 8);
    v19 = OUTLINED_FUNCTION_68_3();
    v18(v19);
    (v18)(v15, v3);
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CA367134(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0 && *(*(v3 + 56) + 16) > a3)
  {
    OUTLINED_FUNCTION_44_4();
    v5 = *(v3 + 64);
    sub_1CA94C218();
    v6 = OUTLINED_FUNCTION_69();
    sub_1CA311A0C(v6, v7, v5);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      v10 = *(v3 + 56);
      v11 = sub_1CA9491F8();
      v12 = OUTLINED_FUNCTION_1_0(v11);
      v14 = v13;
      v16 = *(v15 + 64);
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_6_0();
      v19 = v18 - v17;
      if (*(v10 + 16) <= a3)
      {
        __break(1u);
      }

      else
      {
        v20 = *(v14 + 80);
        OUTLINED_FUNCTION_32_4();
        (*(v14 + 16))(v19, v21 + *(v14 + 72) * a3, v11);
        sub_1CA9491A8();
        v22 = *(v14 + 8);
        v23 = OUTLINED_FUNCTION_69();
        v24(v23);
      }
    }
  }
}

void sub_1CA367290()
{
  OUTLINED_FUNCTION_37_0();
  if ((v1 & 0x8000000000000000) != 0 || (v2 = v0, v3 = v1, v4 = *(v0 + 56), v5 = MEMORY[0x1E69E7CC0], *(v4 + 16) <= v1))
  {
LABEL_69:
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v6 = sub_1CA9491F8();
    v7 = &v60;
    v8 = *(*(v6 - 8) + 64);
    MEMORY[0x1EEE9AC00](v6);
    v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v12 + 72) * v3;
    v65 = v11;
    (*(v11 + 16))(v10, v13, v6);
    v84 = v5;
    if (sub_1CA25B410(v5))
    {
      sub_1CA2E8760(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CD0];
    }

    v83 = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444918, &qword_1CA9843B0);
    v63 = &v60;
    v16 = v15 - 8;
    v17 = *(*(v15 - 8) + 64);
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v18);
    v20 = &v60 - v19;
    v64 = v10;
    sub_1CA949118();
    v21 = sub_1CA9490E8();
    v22 = *(v16 + 44);
    OUTLINED_FUNCTION_27_2();
    v79 = v21;
    v23 = *(v21 - 8);
    v78 = *(v23 + 64);
    v24 = OUTLINED_FUNCTION_71_3(&qword_1EC4447F8);
    v25 = v24;
    v77 = (v23 + 8);
    v70 = MEMORY[0x1E69E7CC0];
    while (1)
    {
LABEL_8:
      MEMORY[0x1EEE9AC00](v24);
      OUTLINED_FUNCTION_61_3();
      sub_1CA94CA58();
      sub_1CA36DA78(&qword_1EC444920, MEMORY[0x1EEE78AC8]);
      v26 = v79;
      v27 = sub_1CA94C358();
      (*v77)(v23, v26);
      if (v27)
      {
        sub_1CA27080C(v20, &qword_1EC444918, &qword_1CA9843B0);
        (*(v65 + 8))(v64, v6);

        OUTLINED_FUNCTION_100(&v83);
        goto LABEL_69;
      }

      v28 = v20;
      v29 = sub_1CA94CB28();
      v23 = *v30;
      v29(&v82, 0);
      sub_1CA94CA68();
      if ((v23 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v31 = *(v2 + 48);
      if (v23 >= *(v31 + 16))
      {
        goto LABEL_71;
      }

      v24 = *(v31 + 8 * v23 + 32);
      if (!(v24 >> 62))
      {
        break;
      }

      v23 = *(v31 + 8 * v23 + 32);
      sub_1CA94D328();
      v24 = OUTLINED_FUNCTION_87();
      if (v20)
      {
        goto LABEL_13;
      }
    }

    v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (v28 >= 1)
    {
      v60 = v6;
      v61 = v2;
      v62 = v7;
      OUTLINED_FUNCTION_56_3(v24 & 0xC000000000000001);
      v66 = v32 + 32;
      v69 = v32;
      sub_1CA94C218();
      v33 = 0;
      v75 = v22;
      v76 = v20;
      v74 = v25;
      v73 = v28;
      while (1)
      {
        OUTLINED_FUNCTION_155_0();
        if (v34)
        {
          v23 = MEMORY[0x1CCAA22D0](v33, v69);
        }

        else
        {
          v23 = *(v66 + 8 * v33);
        }

        v35 = v83;
        if ((v83 & 0xC000000000000001) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_16_8();

        v36 = sub_1CA94D368();

        if ((v36 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_63:

        v22 = v75;
        v20 = v76;
        v25 = v74;
        if (++v33 == v73)
        {

          v7 = v62;
          v2 = v61;
          v6 = v60;
          goto LABEL_8;
        }
      }

      if (*(v83 + 16))
      {
        v37 = *(v83 + 40);
        sub_1CA94D918();
        v38 = *(v23 + 24);
        v81 = *(v23 + 16);
        v39 = *(v23 + 40);
        v68 = *(v23 + 32);
        v80 = v39;
        v72 = v38;
        switch(v39)
        {
          case 1:
            MEMORY[0x1CCAA2780](1);
            sub_1CA94CFE8();
            break;
          case 2:
            v41 = 2;
            goto LABEL_27;
          case 3:
            v41 = 3;
LABEL_27:
            MEMORY[0x1CCAA2780](v41);
            sub_1CA94CFE8();
            v40 = v38;
            goto LABEL_28;
          case 4:
            v40 = 4;
LABEL_28:
            MEMORY[0x1CCAA2780](v40);
            break;
          default:
            MEMORY[0x1CCAA2780](0);
            sub_1CA94CFE8();
            sub_1CA94C458();
            break;
        }

        sub_1CA94D968();
        v42 = *(v35 + 32);
        OUTLINED_FUNCTION_60_0();
        v45 = v44 & ~v43;
        v46 = v80;
        if ((*(v35 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
        {
          v47 = ~v43;
          v49 = v80 != 4 || (v72 | v81 | v68) != 0;
          v71 = v49;
          while (1)
          {
            v50 = *(*(v35 + 48) + 8 * v45);
            v51 = *(v50 + 16);
            v52 = *(v50 + 24);
            v53 = *(v50 + 32);
            switch(*(v50 + 40))
            {
              case 1:
                if (v46 != 1)
                {
                  goto LABEL_59;
                }

                sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

                v55 = sub_1CA94CFD8();
                goto LABEL_56;
              case 2:
                if (v46 != 2)
                {
                  goto LABEL_59;
                }

                goto LABEL_51;
              case 3:
                if (v46 != 3)
                {
                  goto LABEL_59;
                }

LABEL_51:
                sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

                v56 = sub_1CA94CFD8();

                v46 = v80;
                if ((v56 & 1) != 0 && v52 == v72)
                {
                  goto LABEL_63;
                }

                goto LABEL_59;
              case 4:
                if (!v71)
                {
                  goto LABEL_63;
                }

                goto LABEL_59;
              default:
                if (v46)
                {
                  goto LABEL_59;
                }

                v67 = sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

                if (sub_1CA94CFD8())
                {
                  if (v52 == v72 && v53 == v68)
                  {

                    goto LABEL_63;
                  }

                  v55 = sub_1CA94D7F8();
LABEL_56:
                  v57 = v55;

                  v46 = v80;
                  if (v57)
                  {
                    goto LABEL_63;
                  }
                }

                else
                {

                  v46 = v80;
                }

LABEL_59:
                v45 = (v45 + 1) & v47;
                if (((*(v35 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                {
                  goto LABEL_60;
                }

                break;
            }
          }
        }
      }

LABEL_60:

      MEMORY[0x1CCAA1490](v58);
      v59 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v59 >> 1)
      {
        OUTLINED_FUNCTION_64(v59);
        sub_1CA94C698();
      }

      OUTLINED_FUNCTION_116();
      sub_1CA94C6E8();
      v70 = v84;
      sub_1CA368E60();
      goto LABEL_63;
    }

LABEL_72:
    __break(1u);
  }
}

void sub_1CA367AE4()
{
  OUTLINED_FUNCTION_37_0();
  v119 = v0;
  v129 = v2;
  v4 = v3;
  v135 = v5;
  v7 = v6;
  v101 = v8;
  v102 = _s17ControlFlowBranchVMa(0);
  v9 = OUTLINED_FUNCTION_1_0(v102);
  v115 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v101 - v16;
  v128 = sub_1CA9491F8();
  v17 = OUTLINED_FUNCTION_1_0(v128);
  v124 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v116 = v21;
  v130 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA9491E8();
  v22 = *(v7 + 16);
  if (!v22)
  {
LABEL_39:
    v96 = v130;
    OUTLINED_FUNCTION_27_2();
    v97 = v124;
    (*(v124 + 16))(v101, v96, v128);
    v98 = *(v97 + 8);
    v99 = OUTLINED_FUNCTION_116();
    v100(v99);
    OUTLINED_FUNCTION_36();
    return;
  }

  v112 = v7 + 32;
  v23 = OUTLINED_FUNCTION_27_2();
  v24 = 0;
  v111 = 0;
  v123 = v124 + 32;
  v118 = v124 + 16;
  v122 = (v124 + 8);
  v127 = v4;
  v121 = v15;
  v103 = v22;
  while (1)
  {
    v25 = v112 + 40 * v24;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    LOBYTE(v25) = *(v25 + 32);
    v117 = v28;
    v113 = v24;
    if ((v25 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v23);
      OUTLINED_FUNCTION_34_6();
      v57 = v26;
      v58 = v26;
      sub_1CA949158();
      v59 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = *(v59 + 16);
        OUTLINED_FUNCTION_21();
        sub_1CA2E52A8();
        v59 = v94;
      }

      v61 = *(v59 + 16);
      v60 = *(v59 + 24);
      if (v61 >= v60 >> 1)
      {
        OUTLINED_FUNCTION_64(v60);
        sub_1CA2E52A8();
        v59 = v95;
      }

      *(v59 + 16) = v61 + 1;
      v62 = *(v124 + 80);
      OUTLINED_FUNCTION_32_4();
      (*(v64 + 32))(v63 + *(v64 + 72) * v61, v1, v128);
      v4 = v127;
      *v127 = v59;
      [v135 indexOfAction_];
      OUTLINED_FUNCTION_37_4();
      OUTLINED_FUNCTION_28();
      sub_1CA949168();
      swift_endAccess();
      sub_1CA36D780(v57, v27, v117, v29, 0);
      goto LABEL_38;
    }

    v110 = &v101;
    v30 = v116;
    MEMORY[0x1EEE9AC00](v23);
    OUTLINED_FUNCTION_34_6();
    sub_1CA94C218();
    sub_1CA94C218();
    v109 = v29;
    v134 = v1;
    sub_1CA9491E8();
    if (!*(v28 + 16))
    {
      goto LABEL_42;
    }

    v106 = v29;
    v107 = v27;
    v108 = v26;
    v31 = (v28 + ((*(v115 + 80) + 32) & ~*(v115 + 80)));
    v32 = [*v31 identifier];
    v33 = sub_1CA94C3A8();
    v35 = v34;

    v136 = v33;
    v137 = v35;
    MEMORY[0x1EEE9AC00](v36);
    OUTLINED_FUNCTION_98();
    *(v37 - 16) = &v136;
    v38 = v111;
    LOBYTE(v32) = sub_1CA2BFD14(sub_1CA36DB00, v39, &unk_1F49F6438);

    if (v32)
    {
      v131 = *(v28 + 16);
      if (v131)
      {
        break;
      }
    }

LABEL_28:
    v111 = v38;
    v105 = &v101;
    MEMORY[0x1EEE9AC00](v40);
    v65 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    OUTLINED_FUNCTION_37_4();
    swift_beginAccess();
    v126 = &v101 - v65;
    sub_1CA949158();
    v66 = swift_endAccess();
    v67 = &v101;
    MEMORY[0x1EEE9AC00](v66);
    v125 = (&v101 - v65);
    sub_1CA9491E8();
    v1 = *(v117 + 16);
    v104 = &v101;
    if (v1)
    {
      v120 = *(v102 + 28);
      OUTLINED_FUNCTION_56_3(*(v115 + 72));
      v68 = v127;
      v69 = v121;
      v70 = v116;
      do
      {
        v71 = sub_1CA36D71C(v31, v69);
        MEMORY[0x1EEE9AC00](v71);
        OUTLINED_FUNCTION_61_3();
        sub_1CA949158();
        v72 = *v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132 = v1;
        v133 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v87 = *(v72 + 16);
          OUTLINED_FUNCTION_21();
          sub_1CA2E52A8();
          v72 = v88;
        }

        v75 = *(v72 + 16);
        v74 = *(v72 + 24);
        if (v75 >= v74 >> 1)
        {
          OUTLINED_FUNCTION_64(v74);
          OUTLINED_FUNCTION_43_5();
          sub_1CA2E52A8();
          v72 = v89;
        }

        *(v72 + 16) = v75 + 1;
        v76 = v124;
        v77 = *(v124 + 80);
        OUTLINED_FUNCTION_32_4();
        v79 = v128;
        v80 = (*(v76 + 32))(v78 + *(v76 + 72) * v75, v65, v128);
        v68 = v127;
        *v127 = v72;
        v131 = &v101;
        MEMORY[0x1EEE9AC00](v80);
        v65 = &v101 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v76 + 16))(v65, v126, v79);
        v69 = v121;
        v81 = v135;
        [v135 indexOfAction_];
        sub_1CA949168();
        v82 = sub_1CA9491C8();
        MEMORY[0x1EEE9AC00](v82);
        sub_1CA367AE4(*(v69 + v120), v81, v68, v65);
        OUTLINED_FUNCTION_7_14();
        sub_1CA36D8F4(v69, v83);
        sub_1CA9491C8();
        v67 = *(v76 + 8);
        (v67)(v65, v79);
        (v67)(v65, v79);
        v84 = v132;
        v85 = v133;
        OUTLINED_FUNCTION_155_0();
        v31 = (v85 + v86);
        v1 = v84 - 1;
      }

      while (v1);
    }

    else
    {
      v68 = v127;
    }

    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_28();
    v90 = v125;
    sub_1CA9491C8();
    swift_endAccess();
    sub_1CA368558(v68, v67);
    [v135 indexOfAction_];
    OUTLINED_FUNCTION_28();
    sub_1CA949168();
    swift_endAccess();
    sub_1CA36D780(v108, v107, v117, v106, 1);
    v91 = *v122;
    v92 = v128;
    (*v122)(v90, v128);
    v91(v126, v92);
    v91(v134, v92);
    OUTLINED_FUNCTION_100(&v135);
    OUTLINED_FUNCTION_100(&v136);
    OUTLINED_FUNCTION_100(&v138);
    v4 = v68;
    v22 = v103;
LABEL_38:
    v24 = v113 + 1;
    if (v113 + 1 == v22)
    {
      goto LABEL_39;
    }
  }

  v41 = 0;
  v126 = *(v102 + 28);
  v133 = v31;
  while (v41 < *(v117 + 16))
  {
    v42 = v114;
    sub_1CA36D71C(v31 + *(v115 + 72) * v41, v114);
    v43 = *(v42 + v126);
    sub_1CA94C218();
    OUTLINED_FUNCTION_7_14();
    sub_1CA36D8F4(v42, v44);
    v45 = sub_1CA6A71A4(v43);

    if (v45 >> 62)
    {
      v46 = sub_1CA94D328();
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v132 = v41;
    if (v46)
    {
      if (v46 < 1)
      {
        goto LABEL_41;
      }

      for (i = 0; i != v46; ++i)
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x1CCAA22D0](i, v45);
        }

        else
        {
          v48 = *(v45 + 8 * i + 32);
        }

        v49 = v48;
        v50 = [v48 identifier];
        v51 = sub_1CA94C3A8();
        v53 = v52;

        v136 = v51;
        v137 = v53;
        MEMORY[0x1EEE9AC00](v54);
        OUTLINED_FUNCTION_98();
        *(v55 - 16) = &v136;
        LOBYTE(v50) = sub_1CA2BFD14(sub_1CA36DB00, v56, &unk_1F49F6438);

        if ((v50 & 1) == 0)
        {
          [v135 indexOfAction_];
          sub_1CA949168();
        }
      }
    }

    v41 = v132 + 1;

    v30 = v116;
    v31 = v133;
    if (v41 == v131)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1CA368558(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1CA9491F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v8);
  (*(v5 + 16))(&v12 - v7, a2, v4);
  sub_1CA949158();
  (*(v5 + 8))(&v12 - v7, v4);
  sub_1CA69ADE0();
  v9 = *(*a1 + 16);
  sub_1CA69AFF4(v9);
  v10 = *a1;
  *(v10 + 16) = v9 + 1;
  return (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, &v12 - v7, v4);
}

uint64_t sub_1CA3686EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  return v0;
}

uint64_t sub_1CA36874C()
{
  sub_1CA3686EC();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1CA368780()
{
  MEMORY[0x1CCAA2780](*v0);
  v6 = *(v0 + 8);
  v8 = *(v0 + 24);
  OUTLINED_FUNCTION_33_5();
  sub_1CA94C298();
  v7 = *(v0 + 40);
  v9 = *(v0 + 56);
  OUTLINED_FUNCTION_33_5();
  sub_1CA94C298();
  v1 = *(v0 + 9);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1CCAA27B0](*&v1);
  v2 = *(v0 + 10);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1CCAA27B0](*&v2);
  if (!*(v0 + 12))
  {
    return sub_1CA94D938();
  }

  v3 = *(v0 + 13);
  v4 = *(v0 + 11);
  sub_1CA94D938();
  sub_1CA94C218();
  OUTLINED_FUNCTION_20_0();
  sub_1CA94C458();
  MEMORY[0x1CCAA2780](v3);
}

id sub_1CA368890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CA94C368();

  if (a4)
  {
    sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
    v8 = sub_1CA94C648();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithName:v7 variableProvider:a3 aggrandizements:v8];

  swift_unknownObjectRelease();
  return v9;
}

BOOL sub_1CA368948(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D968();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_60_0();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_1CA94D7F8() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;
      sub_1CA94C218();
      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  sub_1CA94C218();
  sub_1CA369F28(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

void sub_1CA368A90()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v29 = v4;
  v5 = sub_1CA94ADC8();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v28 = v0;
  v11 = *v0;
  v12 = *(*v0 + 40);
  OUTLINED_FUNCTION_9_10();
  sub_1CA36DABC(v13, v14);
  sub_1CA94C288();
  v30 = v11;
  v31 = v11 + 56;
  v15 = *(v11 + 32);
  OUTLINED_FUNCTION_60_0();
  v18 = ~v17;
  while (1)
  {
    v19 = v16 & v18;
    if (((1 << (v16 & v18)) & *(v31 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v26 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v8 + 16))(v1, v3, v5);
      v32 = *v28;
      sub_1CA36A090(v1, v19, isUniquelyReferenced_nonNull_native);
      *v28 = v32;
      (*(v8 + 32))(v29, v3, v5);
      goto LABEL_7;
    }

    v20 = *(v8 + 72) * v19;
    v21 = *(v8 + 16);
    v21(v1, *(v30 + 48) + v20, v5);
    OUTLINED_FUNCTION_9_10();
    sub_1CA36DABC(&qword_1EC443AB0, v22);
    v23 = sub_1CA94C358();
    v24 = *(v8 + 8);
    v25 = OUTLINED_FUNCTION_68_3();
    v24(v25);
    if (v23)
    {
      break;
    }

    v16 = v19 + 1;
  }

  (v24)(v3, v5);
  v21(v29, *(v30 + 48) + v20, v5);
LABEL_7:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA368E60()
{
  v3 = v0;
  OUTLINED_FUNCTION_44_4();
  v4 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *v0;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1CA94C218();
    OUTLINED_FUNCTION_116();
    v6 = sub_1CA94D338();

    if (v6)
    {

      v49[9] = v6;
      type metadata accessor for ActionOutput();
      swift_dynamicCast();
      result = 0;
      *v2 = v49[0];
      return result;
    }

    result = sub_1CA94D328();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    sub_1CA6ACC80(v5, result + 1, v30, v31, v32, v33, v34, v35, v39, v40, v42, v44, v45, v47, v49[0], v49[1], v49[2], v49[3], v49[4]);
    v37 = v36;
    v49[0] = v36;
    if (*(v36 + 24) <= *(v36 + 16))
    {
      sub_1CA6AD608();
      v37 = v49[0];
    }

    sub_1CA6AE398(v38, v37);

    *v3 = v37;
    *v2 = v1;
    return 1;
  }

  v41 = v0;
  v43 = v2;
  v8 = *(v4 + 40);
  sub_1CA94D918();
  sub_1CA36417C(v49, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  sub_1CA94D968();
  v9 = *(v4 + 32);
  OUTLINED_FUNCTION_60_0();
  v13 = v12 & ~v10;
  if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_35:
    v27 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = *v41;

    sub_1CA36A474(v29, v13, isUniquelyReferenced_nonNull_native);
    *v41 = v49[0];
    *v43 = v1;
    return 1;
  }

  v14 = ~v10;
  v46 = ~v10;
  v48 = v11;
  while (2)
  {
    v15 = *(*(v4 + 48) + 8 * v13);
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v18 = *(v15 + 32);
    v19 = *(v1 + 24);
    v20 = *(v1 + 32);
    v21 = *(v1 + 40);
    switch(*(v15 + 40))
    {
      case 1:
        if (v21 != 1)
        {
          goto LABEL_34;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        OUTLINED_FUNCTION_119();
        v23 = sub_1CA94CFD8();
        goto LABEL_31;
      case 2:
        if (v21 != 2)
        {
          goto LABEL_34;
        }

        goto LABEL_26;
      case 3:
        if (v21 != 3)
        {
          goto LABEL_34;
        }

LABEL_26:
        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        OUTLINED_FUNCTION_119();
        v25 = sub_1CA94CFD8();

        v14 = v46;
        v11 = v48;
        if ((v25 & 1) != 0 && v17 == v19)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      case 4:
        if (v21 != 4 || (v19 | *(v1 + 16) | v20) != 0)
        {
          goto LABEL_34;
        }

        goto LABEL_41;
      default:
        if (*(v1 + 40))
        {
          goto LABEL_34;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

        OUTLINED_FUNCTION_119();
        if ((sub_1CA94CFD8() & 1) == 0)
        {

          v14 = v46;
          v11 = v48;
          goto LABEL_34;
        }

        if (v17 != v19 || v18 != v20)
        {
          v23 = sub_1CA94D7F8();
LABEL_31:
          v26 = v23;

          v14 = v46;
          v11 = v48;
          if (v26)
          {
            goto LABEL_41;
          }

LABEL_34:
          v13 = (v13 + 1) & v14;
          if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_35;
          }

          continue;
        }

LABEL_41:

        *v43 = *(*(v4 + 48) + 8 * v13);

        return 0;
    }
  }
}

BOOL sub_1CA369200(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = *(v7 + 40);
  sub_1CA94D908();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_41_4(v10, v11);
    v14 = v13 & v12;
    if ((v13 & v12) == 0)
    {
      v15 = *v4;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_66_1();
      sub_1CA36A794(a2, v3, v16);
      *v4 = v18;
      goto LABEL_7;
    }

    if (*(*(v7 + 48) + 8 * v3) == a2)
    {
      break;
    }

    v10 = v3 + 1;
  }

  a2 = *(*(v7 + 48) + 8 * v3);
LABEL_7:
  result = v14 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1CA3692B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a2);
  sub_1CA94C458();
  v10 = sub_1CA94D968();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v15 = (v14 + 24 * v12);
      if (*v15 == a2)
      {
        v16 = v15[1] == a3 && v15[2] == a4;
        if (v16 || (sub_1CA94D7F8() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v20 = (*(v8 + 48) + 24 * v12);
    v21 = v20[1];
    v22 = v20[2];
    *a1 = *v20;
    a1[1] = v21;
    a1[2] = v22;
    sub_1CA94C218();
    return 0;
  }

  else
  {
LABEL_10:
    v17 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_1CA94C218();
    sub_1CA36A898(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v24;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t sub_1CA369440(void *a1, double *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1CA94D918();
  sub_1CA368780();
  sub_1CA94D968();
  v6 = v4 + 56;
  v7 = *(v4 + 32);
  OUTLINED_FUNCTION_60_0();
  v10 = v9 & ~v8;
  if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_39:
    v30 = *v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = *v37;
    sub_1CA2BDFE4(a2, v43, &qword_1EC4440C0, &qword_1CA983470);
    sub_1CA36AA48(a2, v10, isUniquelyReferenced_nonNull_native);
    *v37 = v42[0];
    memcpy(a1, a2, 0x70uLL);
    return 1;
  }

  v11 = ~v8;
  v12 = *a2;
  v36 = v4;
  v13 = *(v4 + 48);
  while (1)
  {
    v14 = (v13 + 112 * v10);
    if (*v14 != v12)
    {
      goto LABEL_38;
    }

    v16 = *(v14 + 5);
    v15 = *(v14 + 6);
    v17 = *(v14 + 7);
    v18 = *(v14 + 8);
    v20 = *(v14 + 9);
    v19 = *(v14 + 10);
    v40 = *(v14 + 11);
    v41 = *(v14 + 12);
    v21 = *(v14 + 3) == *(a2 + 3) && *(v14 + 4) == *(a2 + 4);
    v22 = v21 && *(v14 + 1) >> 16 == *(a2 + 1) >> 16;
    v23 = v22 && *(v14 + 2) >> 16 == *(a2 + 2) >> 16;
    v39 = *(v14 + 13);
    if (!v23 && (sub_1CA94D788() & 1) == 0)
    {
      goto LABEL_38;
    }

    v24 = v17 == *(a2 + 7) && v18 == *(a2 + 8);
    v25 = v24 && v16 >> 16 == *(a2 + 5) >> 16;
    v26 = v25 && v15 >> 16 == *(a2 + 6) >> 16;
    if (!v26 && (sub_1CA94D788() & 1) == 0 || v20 != a2[9] || v19 != a2[10])
    {
      goto LABEL_38;
    }

    v27 = *(a2 + 12);
    if (v41)
    {
      break;
    }

    if (!v27)
    {
      goto LABEL_40;
    }

LABEL_38:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (!v27)
  {
    goto LABEL_38;
  }

  v28 = *(a2 + 13);
  v29 = v40 == *(a2 + 11) && v41 == v27;
  if (!v29 && (sub_1CA94D7F8() & 1) == 0 || v39 != v28)
  {
    goto LABEL_38;
  }

LABEL_40:
  v33 = OUTLINED_FUNCTION_134();
  sub_1CA27080C(v33, v34, &qword_1CA983470);
  v35 = (*(v36 + 48) + 112 * v10);
  memcpy(v43, v35, 0x70uLL);
  memcpy(a1, v35, 0x70uLL);
  sub_1CA2BDFE4(v43, v42, &qword_1EC4440C0, &qword_1CA983470);
  return 0;
}

uint64_t sub_1CA3696E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1CA94D918();
  sub_1CA94C458();
  v38 = a4;
  sub_1CA94D948();
  sub_1CA2BBC0C(v39, a5);
  sub_1CA94D968();
  v12 = v10 + 56;
  v13 = *(v10 + 32);
  OUTLINED_FUNCTION_60_0();
  v16 = v15 & ~v14;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v14;
    v35 = v10;
    v18 = *(v10 + 48);
    while (1)
    {
      v19 = v18 + 32 * v16;
      result = *v19;
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      v23 = *v19 == a2 && *(v19 + 8) == a3;
      if (v23 || (v24 = *(v19 + 8), result = sub_1CA94D7F8(), (result & 1) != 0))
      {
        if (v21 == v38)
        {
          v25 = *(v22 + 16);
          if (v25 == *(a5 + 16))
          {
            break;
          }
        }
      }

LABEL_19:
      v16 = (v16 + 1) & v17;
      if (((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v25)
    {
      v26 = v22 == a5;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
LABEL_21:

      v31 = *(v35 + 48) + 32 * v16;
      v32 = *(v31 + 8);
      v33 = *(v31 + 16);
      v34 = *(v31 + 24);
      *a1 = *v31;
      *(a1 + 8) = v32;
      *(a1 + 16) = v33;
      *(a1 + 24) = v34;
      sub_1CA94C218();
      sub_1CA94C218();
      return 0;
    }

    else
    {
      v27 = (v22 + 32);
      v28 = (a5 + 32);
      while (v25)
      {
        if (*v27 != *v28)
        {
          goto LABEL_19;
        }

        ++v27;
        ++v28;
        if (!--v25)
        {
          sub_1CA94C218();

          goto LABEL_21;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_20:
    v29 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = *v36;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA36ACCC(a2, a3, v38, a5, v16, isUniquelyReferenced_nonNull_native);
    *v36 = v39[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v38;
    *(a1 + 24) = a5;
    return 1;
  }

  return result;
}

BOOL sub_1CA369928(unsigned __int16 *a1, unsigned __int16 a2)
{
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1CA94D918();
  sub_1CA94D948();
  sub_1CA94D968();
  v8 = *(v6 + 32);
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_41_4(v9, v10);
    v13 = v12 & v11;
    if ((v12 & v11) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + 2 * v3) == a2)
    {
      goto LABEL_6;
    }

    v9 = v3 + 1;
  }

  v14 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_66_1();
  sub_1CA36AEDC(a2, v3, v15);
  *v2 = v17;
LABEL_6:
  result = v13 == 0;
  *a1 = a2;
  return result;
}

void sub_1CA369F28(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1CA6AD1DC();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1CA36B4CC(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1CA94D918();
      sub_1CA94C458();
      v17 = sub_1CA94D968();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_1CA94D7F8() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_1CA6AE534();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1CA36A090(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1CA94ADC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AD350();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1CA36B700(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1CA36DABC(&qword_1EC441D00, MEMORY[0x1E69DB0B8]);
      v15 = sub_1CA94C288();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1CA36DABC(&qword_1EC443AB0, MEMORY[0x1E69DB0B8]);
        v17 = sub_1CA94C358();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1CA6AE604();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_1CA36A31C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AD5F4();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1CA36CAE4();
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      v14 = sub_1CA94CFC8();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFUserVisibleString();
        v16 = *(*(v12 + 48) + 8 * a2);
        v17 = sub_1CA94CFD8();

        if (v17)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_1CA6AE62C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1CA36A474(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AD608();
    }

    else
    {
      if (v7 > v6)
      {
        sub_1CA6AE640();
        goto LABEL_36;
      }

      sub_1CA36BA18(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1CA94D918();
    sub_1CA36417C(v35, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
    v10 = sub_1CA94D968();
    v11 = -1 << *(v8 + 32);
    a2 = v10 & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v34 = v8 + 56;
      type metadata accessor for ActionOutput();
      v13 = v12;
      v14 = v8 + 56;
      v32 = v12;
      v33 = v8;
      while (1)
      {
        v15 = *(*(v8 + 48) + 8 * a2);
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);
        v18 = *(v15 + 32);
        v19 = *(a1 + 24);
        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        switch(*(v15 + 40))
        {
          case 1:
            if (v21 == 1)
            {
              sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

              v8 = v33;
              v26 = sub_1CA94CFD8();

              v13 = v32;
              v14 = v34;
              if (v26)
              {
                goto LABEL_40;
              }
            }

            goto LABEL_35;
          case 2:
            if (v21 != 2)
            {
              goto LABEL_35;
            }

            goto LABEL_28;
          case 3:
            if (v21 != 3)
            {
              goto LABEL_35;
            }

LABEL_28:
            sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

            v8 = v33;
            v25 = sub_1CA94CFD8();

            v13 = v32;
            v14 = v34;
            if ((v25 & 1) != 0 && v17 == v19)
            {
              goto LABEL_40;
            }

            goto LABEL_35;
          case 4:
            if (v21 == 4 && (v19 | *(a1 + 16) | v20) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_35;
          default:
            if (*(a1 + 40))
            {
              goto LABEL_35;
            }

            sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);

            if (sub_1CA94CFD8())
            {
              if (v17 == v19 && v18 == v20)
              {
                goto LABEL_39;
              }

              v23 = sub_1CA94D7F8();

              v8 = v33;
              v14 = v34;
              v13 = v32;
              if (v23)
              {
                goto LABEL_40;
              }
            }

            else
            {

              v8 = v33;
              v14 = v34;
              v13 = v32;
            }

LABEL_35:
            a2 = (a2 + 1) & v13;
            if (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              goto LABEL_36;
            }

            break;
        }
      }
    }
  }

LABEL_36:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + 8 * a2) = a1;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_39:

LABEL_40:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v30;
  }
}

void sub_1CA36A794(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AD804(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1CA36BD08(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      v14 = sub_1CA94D908();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_1CA6AE654();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1CA36A898(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_1CA6AD9A8();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1CA6AE708();
      goto LABEL_17;
    }

    sub_1CA36BEF4(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a1);
  sub_1CA94C458();
  v15 = sub_1CA94D968();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a4 = v15 & ~v17;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v18 = ~v17;
    v19 = *(v13 + 48);
    do
    {
      v20 = (v19 + 24 * a4);
      if (*v20 == a1)
      {
        v21 = v20[1] == a2 && v20[2] == a3;
        if (v21 || (sub_1CA94D7F8() & 1) != 0)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v18;
    }

    while (((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = (*(v22 + 48) + 24 * a4);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_20:
  sub_1CA94D868();
  __break(1u);
}

uint64_t sub_1CA36AA48(double *__src, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6ADB50(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1CA6AE7E4();
        goto LABEL_46;
      }

      sub_1CA36C148(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1CA94D918();
    sub_1CA368780();
    v10 = sub_1CA94D968();
    v11 = v8 + 56;
    v12 = -1 << *(v8 + 32);
    a2 = v10 & ~v12;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v13 = ~v12;
      v14 = *__src;
      v15 = *(v8 + 48);
      do
      {
        v16 = (v15 + 112 * a2);
        if (*v16 == v14)
        {
          v18 = *(v16 + 5);
          v17 = *(v16 + 6);
          v19 = *(v16 + 7);
          v20 = *(v16 + 8);
          v22 = *(v16 + 9);
          v21 = *(v16 + 10);
          v39 = *(v16 + 11);
          v40 = *(v16 + 12);
          v23 = *(v16 + 3) == *(__src + 3) && *(v16 + 4) == *(__src + 4);
          v24 = v23 && *(v16 + 1) >> 16 == *(__src + 1) >> 16;
          v25 = v24 && *(v16 + 2) >> 16 == *(__src + 2) >> 16;
          v38 = *(v16 + 13);
          if (v25 || (sub_1CA94D788() & 1) != 0)
          {
            v26 = v19 == *(__src + 7) && v20 == *(__src + 8);
            v27 = v26 && v18 >> 16 == *(__src + 5) >> 16;
            v28 = v27 && v17 >> 16 == *(__src + 6) >> 16;
            if (v28 || (sub_1CA94D788()) && v22 == __src[9] && v21 == __src[10])
            {
              v29 = *(__src + 12);
              if (v40)
              {
                if (v29)
                {
                  v30 = *(__src + 13);
                  v31 = v39 == *(__src + 11) && v40 == v29;
                  if (v31 || (sub_1CA94D7F8()) && v38 == v30)
                  {
                    goto LABEL_49;
                  }
                }
              }

              else if (!v29)
              {
                goto LABEL_49;
              }
            }
          }
        }

        a2 = (a2 + 1) & v13;
      }

      while (((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_46:
  v32 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v32 + 48) + 112 * a2), __src, 0x70uLL);
  v34 = *(v32 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_49:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
    result = sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v36;
  }

  return result;
}

void sub_1CA36ACCC(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a6)
  {
    sub_1CA6ADCF8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1CA6AE930();
      goto LABEL_27;
    }

    sub_1CA36C39C(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D948();
  sub_1CA2BBC0C(v35, a4);
  v16 = sub_1CA94D968();
  v17 = v14 + 56;
  v18 = -1 << *(v14 + 32);
  a5 = v16 & ~v18;
  if (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
  {
LABEL_27:
    v29 = *v34;
    *(*v34 + 8 * (a5 >> 6) + 56) |= 1 << a5;
    v30 = *(v29 + 48) + 32 * a5;
    *v30 = a1;
    *(v30 + 8) = a2;
    *(v30 + 16) = a3;
    *(v30 + 24) = a4;
    v31 = *(v29 + 16);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      *(v29 + 16) = v33;
      return;
    }

    goto LABEL_30;
  }

  v19 = ~v18;
  v20 = *(v14 + 48);
  while (1)
  {
    v21 = v20 + 32 * a5;
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    v24 = *v21 == a1 && *(v21 + 8) == a2;
    if (v24 || (sub_1CA94D7F8()) && v22 == a3)
    {
      v25 = *(v23 + 16);
      if (v25 == *(a4 + 16))
      {
        break;
      }
    }

LABEL_26:
    a5 = (a5 + 1) & v19;
    if (((*(v17 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v25)
  {
    v26 = v23 == a4;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    goto LABEL_31;
  }

  v27 = (v23 + 32);
  v28 = (a4 + 32);
  while (v25)
  {
    if (*v27 != *v28)
    {
      goto LABEL_26;
    }

    ++v27;
    ++v28;
    if (!--v25)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1CA94D868();
  __break(1u);
}

void sub_1CA36AEDC(unsigned __int16 a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6ADEF0();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1CA36C654(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_1CA94D918();
      sub_1CA94D948();
      v14 = sub_1CA94D968();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFGlyphCharacter(0);
        if (*(*(v12 + 48) + 2 * a2) == a1)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_1CA6AEA28();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 2 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1CA36B014(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AE07C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1CA36C870(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_1CA949FB8();
      sub_1CA36DABC(&unk_1EC4448B0, MEMORY[0x1E695BF10]);
      v14 = sub_1CA94C288();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v16 = *(*(v12 + 48) + 8 * a2);
        sub_1CA36DABC(&unk_1EC443E70, MEMORY[0x1E695BF10]);
        if (sub_1CA94C358())
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_1CA6AEADC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1CA36B1E4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AE218();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1CA36CAE4();
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      v10 = sub_1CA94CFC8();
      v11 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v8 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        v12 = *(*(v8 + 48) + 8 * a2);
        v13 = sub_1CA94CFD8();

        if (v13)
        {
          goto LABEL_15;
        }

        v10 = a2 + 1;
      }
    }

    sub_1CA6AEBA8();
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }
}

void sub_1CA36B358(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CA6AE22C();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1CA36CAE4();
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      v10 = sub_1CA94CFC8();
      v11 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v8 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
        v12 = *(*(v8 + 48) + 8 * a2);
        v13 = sub_1CA94CFD8();

        if (v13)
        {
          goto LABEL_15;
        }

        v10 = a2 + 1;
      }
    }

    sub_1CA6AEBBC();
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
LABEL_15:
    sub_1CA94D868();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }
}

uint64_t sub_1CA36B4CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444910, &qword_1CA982708);
  result = sub_1CA94D3C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1CA94D918();
        sub_1CA94C218();
        sub_1CA94C458();
        result = sub_1CA94D968();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CA36B700(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1CA94ADC8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444168, &qword_1CA982790);
  v10 = sub_1CA94D3C8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1CA36DABC(&qword_1EC441D00, MEMORY[0x1E69DB0B8]);
        result = sub_1CA94C288();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1CA36BA18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448E0, &unk_1CA982760);
  result = sub_1CA94D3C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_1CA94D918();
        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        switch(*(v17 + 40))
        {
          case 1:
            MEMORY[0x1CCAA2780](1);

            sub_1CA94CFE8();
            break;
          case 2:
            v21 = 2;
            goto LABEL_19;
          case 3:
            v21 = 3;
LABEL_19:
            MEMORY[0x1CCAA2780](v21);

            sub_1CA94CFE8();
            MEMORY[0x1CCAA2780](v19);
            break;
          case 4:
            MEMORY[0x1CCAA2780](4);

            break;
          default:
            v30 = *(v17 + 32);
            MEMORY[0x1CCAA2780](0);

            sub_1CA94CFE8();
            sub_1CA94C458();
            break;
        }

        result = sub_1CA94D968();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        *(*(v6 + 48) + 8 * v25) = v17;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_34;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CA36BD08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444898, &unk_1CA984350);
  result = sub_1CA94D3C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_1CA94D908();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CA36BEF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444860, &unk_1CA984330);
  result = sub_1CA94D3C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = *(v6 + 40);
        sub_1CA94D918();
        MEMORY[0x1CCAA2780](v18);
        sub_1CA94C218();
        sub_1CA94C458();
        result = sub_1CA94D968();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v6 + 48) + 24 * v25);
        *v30 = v18;
        v30[1] = v19;
        v30[2] = v20;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CA36C148(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481D0, &unk_1CA984390);
  result = sub_1CA94D3C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        memcpy(__dst, (*(v3 + 48) + 112 * (v13 | (v7 << 6))), 0x70uLL);
        v16 = *(v6 + 40);
        sub_1CA94D918();
        sub_1CA2BDFE4(__dst, v26, &qword_1EC4440C0, &qword_1CA983470);
        sub_1CA368780();
        result = sub_1CA94D968();
        v17 = -1 << *(v6 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        result = memcpy((*(v6 + 48) + 112 * v20), __dst, 0x70uLL);
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v25;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CA36C39C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4448D0, &unk_1CA992050);
  result = sub_1CA94D3C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v36 = v2;
    v37 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v39 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(v3 + 48) + 32 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v6 + 40);
        sub_1CA94D918();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C458();
        v38 = v20;
        sub_1CA94D948();
        MEMORY[0x1CCAA2780](*(v21 + 16));
        v23 = *(v21 + 16);
        if (v23)
        {
          v24 = (v21 + 32);
          do
          {
            v25 = *v24++;
            v26 = v25;
            if (v25 == 0.0)
            {
              v26 = 0.0;
            }

            MEMORY[0x1CCAA27B0](*&v26);
            --v23;
          }

          while (v23);
        }

        result = sub_1CA94D968();
        v27 = -1 << *(v6 + 32);
        v28 = result & ~v27;
        v29 = v28 >> 6;
        if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
        {
          break;
        }

        v30 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
        v3 = v37;
        *(v13 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v35 = *(v6 + 48) + 32 * v30;
        v11 = v39;
        *v35 = v18;
        *(v35 + 8) = v19;
        *(v35 + 16) = v38;
        *(v35 + 24) = v21;
        ++*(v6 + 16);
        if (!v39)
        {
          goto LABEL_9;
        }
      }

      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v13 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v36;
          goto LABEL_32;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v39 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CA36C654(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4448C8, &unk_1CA984370);
  result = sub_1CA94D3C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 2 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1CA94D918();
        sub_1CA94D948();
        result = sub_1CA94D968();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 2 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1CA36C870(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443E60, &qword_1CA9824D0);
  result = sub_1CA94D3C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v29 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_1CA949FB8();
        sub_1CA36DABC(&unk_1EC4448B0, MEMORY[0x1E695BF10]);

        result = sub_1CA94C288();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v17;
        ++*(v6 + 16);
        v3 = v28;
        v11 = v29;
        if (!v29)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v27;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v29 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_1CA36CAE4()
{
  OUTLINED_FUNCTION_72();
  v3 = v0;
  v4 = *v0;
  if (*(*v0 + 24) > v5)
  {
    v6 = *(*v0 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_134();
  v7 = sub_1CA94D3C8();
  v8 = v7;
  if (*(v4 + 16))
  {
    v29 = v3;
    v9 = 0;
    v10 = 1 << *(v4 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_14:
        v18 = *(v8 + 40);
        v19 = *(*(v4 + 48) + 8 * (v15 | (v9 << 6)));
        v20 = sub_1CA94CFC8();
        v21 = -1 << *(v8 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v8 + 48) + 8 * v24) = v19;
        ++*(v8 + 16);
        if (!v12)
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
        v28 = *(v14 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v13)
        {

          v3 = v29;
          goto LABEL_27;
        }

        v17 = *(v4 + 56 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v3 = v8;
    OUTLINED_FUNCTION_70_2();
  }
}

void (*sub_1CA36CCD0(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1CA36D290(v7);
  v7[9] = sub_1CA36CDC8(v7 + 4, a2, a3);
  return sub_1CA36CD68;
}

void sub_1CA36CD68(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1CA36CDC8(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v9 = *v3;
  v10 = sub_1CA271BF8();
  *(v8 + 48) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444828, &qword_1CA9842F8);
  if (sub_1CA94D588())
  {
    v14 = *v4;
    v15 = sub_1CA271BF8();
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[3] = v12;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444840, &qword_1CA984310) - 8) + 64);
  v8[4] = v17;
  v18 = __swift_coroFrameAllocStub(v17);
  v8[5] = v18;
  if (v13)
  {
    v19 = *(*v4 + 56);
    v20 = sub_1CA9491F8();
    (*(*(v20 - 8) + 32))(v18, v19 + *(*(v20 - 8) + 72) * v12, v20);
    v21 = v18;
    v22 = 0;
    v23 = v20;
  }

  else
  {
    v23 = sub_1CA9491F8();
    v21 = v18;
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
  return sub_1CA36CFA8;
}

void sub_1CA36CFA8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 40);
  v6 = sub_1CA9491F8();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v12);
  v13 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA2BDFE4(v5, v13, &unk_1EC444840, &qword_1CA984310);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v6);
  v15 = v3[48];
  if (v1)
  {
    if (EnumTagSinglePayload != 1)
    {
      v53 = &v52;
      v16 = *(v3 + 2);
      v52 = *(v9 + 32);
      v17 = (v52)(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v6);
      v18 = *v16;
      v19 = *(v3 + 3);
      if (v15)
      {
        v20 = *(v18 + 56);
        v21 = *(v9 + 72);
        OUTLINED_FUNCTION_30_5();
        (v52)();
        goto LABEL_14;
      }

      v29 = *v3;
      v30 = *(v3 + 1);
      v31 = MEMORY[0x1EEE9AC00](v17);
      v39 = OUTLINED_FUNCTION_18_12(v31, v32, v33, v34, v35, v36, v37, v38, v52);
      (v52)(v39);
      OUTLINED_FUNCTION_50_1();
LABEL_13:
      sub_1CA94C218();
      goto LABEL_14;
    }
  }

  else if (EnumTagSinglePayload != 1)
  {
    v52 = v9;
    v53 = &v52;
    v22 = *(v3 + 2);
    v23 = *(v9 + 32);
    v24 = (v23)(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v6);
    v25 = *v22;
    v26 = *(v3 + 3);
    if (v15)
    {
      v27 = *(v25 + 56);
      v28 = *(v52 + 72);
      OUTLINED_FUNCTION_30_5();
      v23();
      goto LABEL_14;
    }

    v52 = &v52;
    v40 = *v3;
    v41 = *(v3 + 1);
    v42 = MEMORY[0x1EEE9AC00](v24);
    v50 = OUTLINED_FUNCTION_18_12(v42, v43, v44, v45, v46, v47, v48, v49, v52);
    (v23)(v50);
    OUTLINED_FUNCTION_50_1();
    goto LABEL_13;
  }

  sub_1CA27080C(v13, &unk_1EC444840, &qword_1CA984310);
  if (v15)
  {
    sub_1CA36D8A0(*(**(v3 + 2) + 48) + 16 * *(v3 + 3));
    sub_1CA94D5A8();
  }

LABEL_14:
  v51 = *(v3 + 5);
  sub_1CA27080C(v51, &unk_1EC444840, &qword_1CA984310);
  free(v51);
  free(v3);
  OUTLINED_FUNCTION_36();
}

uint64_t (*sub_1CA36D290(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1CA36D2B8;
}

uint64_t sub_1CA36D2C4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1CA94C3A8();

  return v4;
}

void sub_1CA36D324(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1CA94C368();
  [a4 variableProvider:a1 variableNameDidChangeTo:v6];
}

id sub_1CA36D3B8(id result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    v4 = a4;
    if (a4 > 3uLL)
    {
      v4 = 0;
    }

    return ((&loc_1CA36D3DC + funcs_1CA36D3E4[v4]))(result);
  }

  return result;
}

id sub_1CA36D3E8(id a1)
{

  return a1;
}

uint64_t sub_1CA36D3F8(void *a1)
{
  v1 = a1;

  return sub_1CA94C218();
}

void sub_1CA36D434(id a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    v4 = a4;
    if (a4 > 3uLL)
    {
      v4 = 0;
    }

    ((&loc_1CA36D458 + funcs_1CA36D460[v4]))(a1);
  }
}

void sub_1CA36D464(id a1)
{
}

uint64_t sub_1CA36D474(void *a1)
{
}

uint64_t sub_1CA36D4B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1CA36D4F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit12ActionOutput33_92494141B4D875F190D9BB85FDDC289CLLC7ContentO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1CA36D570(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1CA36D5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA36D5F8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}