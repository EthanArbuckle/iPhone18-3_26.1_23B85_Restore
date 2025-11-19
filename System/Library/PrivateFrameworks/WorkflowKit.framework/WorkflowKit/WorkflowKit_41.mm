id sub_1CA679F48()
{
  v49 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  v48 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v47 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionNote";
  v7 = @"Description";
  v8 = @"DescriptionNote";
  v9 = sub_1CA94C438();
  v50 = v10;
  v51 = v9;
  v11 = sub_1CA94C438();
  v43 = v12;
  v44 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v46 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v42 - v46;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v45 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v42 - v45;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v51, v50, v44, v43, 0, 0, v15, v20);
  v51 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v51;
  *(v6 + 40) = v22;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v23 = v47;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v23;
  *(inited + 152) = @"Name";
  v24 = @"Name";
  v25 = sub_1CA94C438();
  v27 = v26;
  v28 = sub_1CA94C438();
  v30 = v29;
  v50 = &v42;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v42 - v46;
  sub_1CA948D98();
  v32 = [v16 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v42 - v45;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v25, v27, v28, v30, 0, 0, v31, v33);
  v36 = v51;
  *(inited + 160) = v35;
  *(inited + 184) = v36;
  *(inited + 192) = @"Output";
  v37 = @"Output";
  v38 = MEMORY[0x1E69E6158];
  v39 = sub_1CA94C1E8();
  *(inited + 224) = v48;
  *(inited + 200) = v39;
  v40 = sub_1CA94C368();
  *(inited + 264) = v38;
  *(inited + 232) = v40;
  *(inited + 240) = 0xD00000000000001ALL;
  *(inited + 248) = 0x80000001CA9944E0;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA67A51C()
{
  v108 = sub_1CA94B4D8();
  v106 = *(v108 - 8);
  v0 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v99 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9DD1F0;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v114 = v14;
  v115 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v99 - v115;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v113 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v112 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v110 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v99 - v110;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v111 = v22;
  *(inited + 80) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = @"AppDefinition";
  v23 = @"AppDefinition";
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"Description";
  v105 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1CA97EDF0;
  *(v26 + 32) = @"DescriptionSummary";
  v27 = @"Description";
  v28 = @"DescriptionSummary";
  v29 = sub_1CA94C438();
  v102 = v30;
  v103 = v29;
  v31 = sub_1CA94C438();
  v101 = v32;
  v104 = &v99;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v99 - v115;
  sub_1CA948D98();
  v34 = v113;
  v35 = [v113 bundleURL];
  v100 = &v99;
  MEMORY[0x1EEE9AC00](v35);
  v36 = v110;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v26 + 40) = sub_1CA2F9F14(v103, v102, v31, v101, 0, 0, v33, &v99 - v36);
  v38 = v111;
  *(v26 + 64) = v111;
  *(v26 + 72) = @"FocusFilterDescription";
  v39 = @"FocusFilterDescription";
  v40 = sub_1CA94C438();
  v102 = v41;
  v103 = v40;
  v101 = sub_1CA94C438();
  v43 = v42;
  v104 = &v99;
  MEMORY[0x1EEE9AC00](v101);
  v44 = &v99 - v115;
  sub_1CA948D98();
  v45 = [v34 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v103, v102, v101, v43, 0, 0, v44, &v99 - v36);
  *(v26 + 104) = v38;
  *(v26 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v48 = v105;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v48;
  *(inited + 192) = @"DisabledOnPlatforms";
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = &unk_1F4A0B8A0;
  *(inited + 224) = v49;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x656C70727550;
  *(inited + 248) = 0xE600000000000000;
  v50 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x656E6F687069;
  *(inited + 288) = 0xE600000000000000;
  *(inited + 304) = v50;
  *(inited + 312) = @"InputPassthrough";
  v51 = v50;
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  v52 = @"DisabledOnPlatforms";
  v53 = @"IconColor";
  v54 = @"IconSymbol";
  v55 = @"InputPassthrough";
  v56 = sub_1CA94C368();
  *(inited + 384) = v51;
  *(inited + 352) = v56;
  *(inited + 360) = 0xD00000000000005ALL;
  *(inited + 368) = 0x80000001CA9DD2A0;
  *(inited + 392) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v57 = swift_initStackObject();
  v105 = v57;
  *(v57 + 16) = xmmword_1CA981310;
  *(v57 + 32) = 0x6574617473;
  *(v57 + 40) = 0xE500000000000000;
  v104 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1CA981350;
  *(v58 + 32) = @"Key";
  *(v58 + 40) = 0x65756C61566E4FLL;
  *(v58 + 48) = 0xE700000000000000;
  *(v58 + 64) = v51;
  *(v58 + 72) = @"Label";
  v59 = @"Key";
  v60 = @"Label";
  v61 = sub_1CA94C438();
  v101 = v62;
  v102 = v61;
  v63 = sub_1CA94C438();
  v100 = v64;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v99 - v115;
  sub_1CA948D98();
  v66 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v110;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 80) = sub_1CA2F9F14(v102, v101, v63, v100, 0, 0, v65, &v99 - v67);
  *(v58 + 104) = v111;
  *(v58 + 112) = @"Placeholder";
  v69 = @"Placeholder";
  v70 = sub_1CA94C438();
  v101 = v71;
  v102 = v70;
  v72 = sub_1CA94C438();
  v100 = v73;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v99 - v115;
  sub_1CA948D98();
  v75 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 120) = sub_1CA2F9F14(v102, v101, v72, v100, 0, 0, v74, &v99 - v67);
  v77 = v111;
  *(v58 + 144) = v111;
  *(v58 + 152) = @"Prompt";
  v78 = @"Prompt";
  v79 = sub_1CA94C438();
  v101 = v80;
  v102 = v79;
  v81 = sub_1CA94C438();
  v83 = v82;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v99 - v115;
  sub_1CA948D98();
  v85 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v99 - v110;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v102, v101, v81, v83, 0, 0, v84, v86);
  *(v58 + 184) = v77;
  *(v58 + 160) = v88;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v105 + 48) = sub_1CA2F864C();
  v89 = sub_1CA94C1E8();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 400) = v89;
  *(inited + 424) = v90;
  *(inited + 432) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1CA981360;
  v92 = v107;
  (*(v106 + 104))(v107, *MEMORY[0x1E69DB3D8], v108);
  v93 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource());
  v94 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v92);
  *(v91 + 32) = v95;
  v116 = 0;
  v117 = 0;
  v96 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  WFDeviceIdiomResource.init(requirement:)(&v116);
  *(v91 + 40) = v97;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442D8, &unk_1CA982E00);
  *(inited + 440) = v91;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA67B26C()
{
  v0 = sub_1CA949D18();
  v213 = *(v0 - 8);
  v214 = v0;
  v1 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v212 = v205 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DD3D0;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v231 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v232 = v15;
  v16 = v205 - v231;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v230 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v233 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v229 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v205 - v229;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v227 = v23;
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"Description";
  v226 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v223 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v225 = v205;
  MEMORY[0x1EEE9AC00](v30);
  v33 = v205 - v231;
  sub_1CA948D98();
  v34 = [v230 bundleURL];
  v228 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v205 - v229;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v227;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v226;
  v40 = sub_1CA6B3784();
  v41 = v228;
  *(v228 + 15) = v40;
  *(v41 + 18) = v39;
  *(v41 + 19) = @"IconColor";
  *(v41 + 20) = 2036429383;
  *(v41 + 21) = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  *(v41 + 23) = MEMORY[0x1E69E6158];
  *(v41 + 24) = @"IconSymbol";
  strcpy(v41 + 200, "octagon.fill");
  v41[213] = 0;
  *(v41 + 107) = -5120;
  *(v41 + 28) = v42;
  *(v41 + 29) = @"Input";
  v43 = v42;
  v44 = v41;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v45 = swift_initStackObject();
  v224 = xmmword_1CA981350;
  *(v45 + 16) = xmmword_1CA981350;
  *(v45 + 32) = 0x656C7069746C754DLL;
  *(v45 + 40) = 0xE800000000000000;
  v46 = MEMORY[0x1E69E6370];
  *(v45 + 48) = 1;
  *(v45 + 72) = v46;
  strcpy((v45 + 80), "ParameterKey");
  *(v45 + 93) = 0;
  *(v45 + 94) = -5120;
  *(v45 + 96) = 0x7475706E494657;
  *(v45 + 104) = 0xE700000000000000;
  *(v45 + 120) = v43;
  *(v45 + 128) = 0x6465726975716552;
  *(v45 + 136) = 0xE800000000000000;
  *(v45 + 144) = 1;
  *(v45 + 168) = v46;
  *(v45 + 176) = 0x7365707954;
  *(v45 + 184) = 0xE500000000000000;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v45 + 216) = v222;
  *(v45 + 192) = &unk_1F4A0B8E0;
  v47 = @"IconColor";
  v48 = @"IconSymbol";
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v226 = v51;
  *(v44 + 30) = v50;
  *(v44 + 33) = v51;
  *(v44 + 34) = @"Name";
  v52 = @"Name";
  v53 = sub_1CA94C438();
  v219 = v54;
  v220 = v53;
  v55 = sub_1CA94C438();
  v57 = v56;
  v221 = v205;
  MEMORY[0x1EEE9AC00](v55);
  v58 = v205 - v231;
  sub_1CA948D98();
  v59 = v230;
  v60 = [v230 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = v229;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v220, v219, v55, v57, 0, 0, v58, v205 - v61);
  v65 = v227;
  v64 = v228;
  *(v228 + 35) = v63;
  *(v64 + 38) = v65;
  *(v64 + 39) = @"Output";
  v66 = swift_initStackObject();
  *(v66 + 16) = v224;
  *(v66 + 32) = 0x75736F6C63736944;
  *(v66 + 40) = 0xEF6C6576654C6572;
  *(v66 + 48) = 0x63696C627550;
  *(v66 + 56) = 0xE600000000000000;
  *(v66 + 72) = MEMORY[0x1E69E6158];
  *(v66 + 80) = 0x656C7069746C754DLL;
  *(v66 + 88) = 0xE800000000000000;
  *(v66 + 96) = 1;
  *(v66 + 120) = MEMORY[0x1E69E6370];
  *(v66 + 128) = 0x614E74757074754FLL;
  *(v66 + 136) = 0xEA0000000000656DLL;
  v67 = @"Output";
  *&v224 = sub_1CA94C438();
  v221 = v68;
  v69 = sub_1CA94C438();
  v71 = v70;
  v225 = v205;
  MEMORY[0x1EEE9AC00](v69);
  v72 = v205 - v231;
  sub_1CA948D98();
  v73 = [v59 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 144) = sub_1CA2F9F14(v224, v221, v69, v71, 0, 0, v72, v205 - v61);
  *(v66 + 168) = v65;
  *(v66 + 176) = 0x7365707954;
  *(v66 + 216) = v222;
  *(v66 + 184) = 0xE500000000000000;
  *(v66 + 192) = &unk_1F4A0B920;
  v75 = MEMORY[0x1E69E6158];
  v76 = sub_1CA94C1E8();
  v77 = v228;
  *(v228 + 40) = v76;
  *(v77 + 43) = v226;
  *(v77 + 44) = @"Parameters";
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v226 = swift_allocObject();
  v210 = xmmword_1CA981470;
  *(v226 + 16) = xmmword_1CA981470;
  v225 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_allocObject();
  v211 = xmmword_1CA981370;
  *(v78 + 16) = xmmword_1CA981370;
  *&v224 = 0x80000001CA99C4A0;
  *(v78 + 32) = @"Class";
  *(v78 + 40) = 0xD000000000000016;
  *(v78 + 48) = 0x80000001CA99C4A0;
  *(v78 + 64) = v75;
  *(v78 + 72) = @"DefaultValue";
  *(v78 + 80) = 0x65646F636E45;
  *(v78 + 88) = 0xE600000000000000;
  *(v78 + 104) = v75;
  *(v78 + 112) = @"Items";
  v219 = swift_allocObject();
  *(v219 + 1) = xmmword_1CA981360;
  v79 = @"Class";
  v80 = @"DefaultValue";
  v81 = @"Items";
  v220 = v79;
  v206 = v80;
  v207 = v81;
  v82 = @"Parameters";
  v83 = sub_1CA94C438();
  v216 = v84;
  v217 = v83;
  v85 = sub_1CA94C438();
  v209 = v86;
  v218 = v205;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v231;
  sub_1CA948D98();
  v88 = v230;
  v89 = [v230 bundleURL];
  v205[1] = v205;
  MEMORY[0x1EEE9AC00](v89);
  v90 = v205 - v229;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v217, v216, v85, v209, 0, 0, v205 - v87, v90);
  v93 = v219;
  v219[4] = v92;
  v94 = sub_1CA94C438();
  v216 = v95;
  v217 = v94;
  v209 = sub_1CA94C438();
  v97 = v96;
  v218 = v205;
  MEMORY[0x1EEE9AC00](v209);
  sub_1CA948D98();
  v98 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = v229;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v93 + 40) = sub_1CA2F9F14(v217, v216, v209, v97, 0, 0, v205 - v87, v205 - v99);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v209 = v101;
  *(v78 + 120) = v93;
  *(v78 + 144) = v101;
  *(v78 + 152) = @"Key";
  strcpy((v78 + 160), "WFEncodeMode");
  *(v78 + 173) = 0;
  *(v78 + 174) = -5120;
  *(v78 + 184) = MEMORY[0x1E69E6158];
  *(v78 + 192) = @"Label";
  v102 = @"Key";
  v103 = @"Label";
  v104 = v102;
  v105 = v103;
  v217 = v104;
  v216 = v105;
  v106 = sub_1CA94C438();
  v218 = v107;
  v108 = sub_1CA94C438();
  v110 = v109;
  v219 = v205;
  MEMORY[0x1EEE9AC00](v108);
  v111 = v205 - v231;
  sub_1CA948D98();
  v112 = [v230 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v106, v218, v108, v110, 0, 0, v111, v205 - v99);
  *(v78 + 224) = v227;
  *(v78 + 200) = v114;
  _s3__C3KeyVMa_0(0);
  v219 = v115;
  v218 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v226 + 32) = sub_1CA2F864C();
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1CA981380;
  *(v116 + 32) = v220;
  *(v116 + 40) = 0xD000000000000016;
  *(v116 + 48) = v224;
  v117 = MEMORY[0x1E69E6158];
  v118 = v206;
  *(v116 + 64) = MEMORY[0x1E69E6158];
  *(v116 + 72) = v118;
  *(v116 + 80) = 0xD000000000000013;
  *(v116 + 88) = 0x80000001CA9DD4C0;
  v119 = v207;
  *(v116 + 104) = v117;
  *(v116 + 112) = v119;
  *&v224 = swift_allocObject();
  *(v224 + 16) = v210;
  v120 = sub_1CA94C438();
  v207 = v121;
  v208 = v120;
  v122 = sub_1CA94C438();
  v206 = v123;
  *&v210 = v205;
  MEMORY[0x1EEE9AC00](v122);
  v124 = v231;
  sub_1CA948D98();
  v125 = v230;
  v126 = [v230 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v208, v207, v122, v206, 0, 0, v205 - v124, v205 - v99);
  *(v224 + 32) = v128;
  v129 = sub_1CA94C438();
  v207 = v130;
  v208 = v129;
  v131 = sub_1CA94C438();
  v206 = v132;
  *&v210 = v205;
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948D98();
  v133 = [v125 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v208, v207, v131, v206, 0, 0, v205 - v124, v205 - v99);
  *(v224 + 40) = v135;
  v136 = sub_1CA94C438();
  v207 = v137;
  v208 = v136;
  v138 = sub_1CA94C438();
  v206 = v139;
  *&v210 = v205;
  MEMORY[0x1EEE9AC00](v138);
  v140 = v231;
  sub_1CA948D98();
  v141 = v230;
  v142 = [v230 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = v229;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v208, v207, v138, v206, 0, 0, v205 - v140, v205 - v143);
  v146 = v224;
  *(v224 + 48) = v145;
  *(v116 + 120) = v146;
  v147 = v217;
  *(v116 + 144) = v209;
  *(v116 + 152) = v147;
  *(v116 + 160) = 0xD000000000000015;
  *(v116 + 168) = 0x80000001CA9DD580;
  v148 = v216;
  *(v116 + 184) = MEMORY[0x1E69E6158];
  *(v116 + 192) = v148;
  v149 = sub_1CA94C438();
  v209 = v150;
  *&v210 = v149;
  v208 = sub_1CA94C438();
  v152 = v151;
  *&v224 = v205;
  MEMORY[0x1EEE9AC00](v208);
  sub_1CA948D98();
  v153 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v153);
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v116 + 200) = sub_1CA2F9F14(v210, v209, v208, v152, 0, 0, v205 - v140, v205 - v143);
  *(v116 + 224) = v227;
  *(v116 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v155 = swift_allocObject();
  *(v155 + 16) = v223;
  v156 = @"RequiredResources";
  v157 = MEMORY[0x1E69E6158];
  *(v155 + 32) = sub_1CA94C1E8();
  *(v116 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v116 + 240) = v155;
  sub_1CA94C1E8();
  *(v226 + 40) = sub_1CA2F864C();
  v158 = swift_allocObject();
  *(v158 + 16) = v211;
  *(v158 + 32) = v220;
  *(v158 + 40) = 0xD000000000000019;
  *(v158 + 48) = 0x80000001CA99B030;
  v159 = v217;
  *(v158 + 64) = v157;
  *(v158 + 72) = v159;
  *(v158 + 80) = 0x7475706E494657;
  *(v158 + 88) = 0xE700000000000000;
  v160 = v216;
  *(v158 + 104) = v157;
  *(v158 + 112) = v160;
  v161 = sub_1CA94C438();
  v220 = v162;
  v221 = v161;
  v163 = sub_1CA94C438();
  v217 = v164;
  *&v224 = v205;
  MEMORY[0x1EEE9AC00](v163);
  v165 = v231;
  sub_1CA948D98();
  v166 = v230;
  v167 = [v230 bundleURL];
  v216 = v205;
  MEMORY[0x1EEE9AC00](v167);
  v168 = v229;
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v158 + 120) = sub_1CA2F9F14(v221, v220, v163, v217, 0, 0, v205 - v165, v205 - v168);
  v170 = v227;
  *(v158 + 144) = v227;
  *(v158 + 152) = @"Placeholder";
  v171 = @"Placeholder";
  v172 = sub_1CA94C438();
  v220 = v173;
  v221 = v172;
  v174 = sub_1CA94C438();
  v217 = v175;
  *&v224 = v205;
  MEMORY[0x1EEE9AC00](v174);
  sub_1CA948D98();
  v176 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v158 + 160) = sub_1CA2F9F14(v221, v220, v174, v217, 0, 0, v205 - v165, v205 - v168);
  *(v158 + 184) = v170;
  *(v158 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v178 = swift_allocObject();
  *(v178 + 16) = v223;
  v179 = @"PreferredTypes";
  v180 = v212;
  sub_1CA949CA8();
  v181 = sub_1CA949C68();
  v183 = v182;
  (*(v213 + 8))(v180, v214);
  *(v178 + 32) = v181;
  *(v178 + 40) = v183;
  *(v158 + 224) = v222;
  *(v158 + 200) = v178;
  sub_1CA94C1E8();
  v184 = sub_1CA2F864C();
  v185 = v226;
  *(v226 + 48) = v184;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v187 = v228;
  *(v228 + 45) = v185;
  *(v187 + 48) = v186;
  *(v187 + 49) = @"ParameterSummary";
  v188 = @"ParameterSummary";
  v189 = sub_1CA94C438();
  v191 = v190;
  v192 = sub_1CA94C438();
  v194 = v193;
  MEMORY[0x1EEE9AC00](v192);
  v195 = v205 - v231;
  sub_1CA948D98();
  v196 = [v230 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  v197 = v205 - v229;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v199 = sub_1CA2F9F14(v189, v191, v192, v194, 0, 0, v195, v197);
  v200 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v201 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v202 = v228;
  *(v228 + 50) = v200;
  *(v202 + 53) = v201;
  *(v202 + 54) = @"ResidentCompatible";
  *(v202 + 58) = MEMORY[0x1E69E6370];
  v202[440] = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v203 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA67CC78()
{
  v175 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9DD650;
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
  v189 = v12;
  v192 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v168 - v192;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v190 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v191 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v188 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v168 - v188;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v187 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v185 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
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
  v184 = &v168;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v168 - v192;
  sub_1CA948D98();
  v31 = [v190 bundleURL];
  v186 = inited;
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v168 - v188;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v32);
  *(v21 + 64) = v187;
  *(v21 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v35 = v185;
  v36 = sub_1CA6B3784();
  v37 = v186;
  v186[15] = v36;
  v37[18] = v35;
  v37[19] = @"IconColor";
  v37[20] = 0x65676E61724FLL;
  v37[21] = 0xE600000000000000;
  v38 = MEMORY[0x1E69E6158];
  v37[23] = MEMORY[0x1E69E6158];
  v37[24] = @"IconSymbol";
  v37[25] = 0xD000000000000010;
  v37[26] = 0x80000001CA9CA420;
  v37[28] = v38;
  v37[29] = @"Input";
  v39 = v37;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v183 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 0;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  strcpy((v40 + 96), "WFDictionary");
  *(v40 + 109) = 0;
  *(v40 + 110) = -5120;
  *(v40 + 120) = v38;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  v42 = v41;
  *(v40 + 184) = 0xE500000000000000;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v185;
  *(v40 + 192) = &unk_1F4A0B9E0;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v184 = v47;
  v39[30] = v46;
  v39[33] = v47;
  v39[34] = @"InputPassthrough";
  *(v39 + 280) = 0;
  v39[38] = v42;
  v39[39] = @"Name";
  v48 = @"InputPassthrough";
  v49 = @"Name";
  v180 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  v181 = &v168;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v168 - v192;
  sub_1CA948D98();
  v56 = v190;
  v57 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v168 - v188;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v180, v51, v52, v54, 0, 0, v55, v58);
  v61 = v186;
  v62 = v187;
  v186[40] = v60;
  v61[43] = v62;
  v61[44] = @"Output";
  v63 = swift_initStackObject();
  *(v63 + 16) = v183;
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
  v180 = v66;
  v181 = v65;
  v179 = sub_1CA94C438();
  v68 = v67;
  v182 = &v168;
  MEMORY[0x1EEE9AC00](v179);
  v69 = &v168 - v192;
  sub_1CA948D98();
  v70 = [v56 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v168 - v188;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v181, v180, v179, v68, 0, 0, v69, v71);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v185;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A0BA10;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v186;
  v186[45] = v74;
  v75[48] = v184;
  v75[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_1CA981470;
  v184 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_allocObject();
  v174 = xmmword_1CA981400;
  *(v76 + 16) = xmmword_1CA981400;
  *(v76 + 32) = @"AutocapitalizationType";
  *(v76 + 40) = 1701736270;
  *(v76 + 48) = 0xE400000000000000;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"Class";
  v173 = 0x80000001CA99B500;
  *(v76 + 80) = 0xD000000000000014;
  *(v76 + 88) = 0x80000001CA99B500;
  *(v76 + 104) = v73;
  *(v76 + 112) = @"DisableAutocorrection";
  *(v76 + 120) = 1;
  *(v76 + 144) = MEMORY[0x1E69E6370];
  *(v76 + 152) = @"Key";
  *(v76 + 160) = 0x6F69746369444657;
  *(v76 + 168) = 0xEF79654B7972616ELL;
  *(v76 + 184) = v73;
  *(v76 + 192) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v83 = @"AutocapitalizationType";
  v84 = @"DisableAutocorrection";
  v181 = v80;
  v180 = v81;
  v179 = v82;
  v171 = v83;
  v172 = v84;
  v85 = @"Parameters";
  v86 = sub_1CA94C438();
  v176 = v87;
  v177 = v86;
  v88 = sub_1CA94C438();
  v170 = v89;
  v178 = &v168;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v192;
  sub_1CA948D98();
  v91 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = v188;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 200) = sub_1CA2F9F14(v177, v176, v88, v170, 0, 0, &v168 - v90, &v168 - v92);
  v94 = v187;
  *(v76 + 224) = v187;
  *(v76 + 232) = @"Placeholder";
  v178 = @"Placeholder";
  v176 = sub_1CA94C438();
  v170 = v95;
  v96 = sub_1CA94C438();
  v169 = v97;
  v177 = &v168;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v168 - v90;
  sub_1CA948D98();
  v99 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 240) = sub_1CA2F9F14(v176, v170, v96, v169, 0, 0, v98, &v168 - v92);
  *(v76 + 264) = v94;
  *(v76 + 272) = @"TextAlignment";
  v101 = MEMORY[0x1E69E6158];
  *(v76 + 304) = MEMORY[0x1E69E6158];
  *(v76 + 280) = 0x7468676952;
  *(v76 + 288) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v177 = v102;
  v176 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v170 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v185 + 32) = sub_1CA2F864C();
  v103 = swift_allocObject();
  *(v103 + 16) = v174;
  *(v103 + 32) = v171;
  *(v103 + 40) = 1701736270;
  *(v103 + 48) = 0xE400000000000000;
  v104 = v181;
  *(v103 + 64) = v101;
  *(v103 + 72) = v104;
  v105 = v172;
  v106 = v173;
  *(v103 + 80) = 0xD000000000000014;
  *(v103 + 88) = v106;
  *(v103 + 104) = v101;
  *(v103 + 112) = v105;
  *(v103 + 120) = 1;
  v107 = v180;
  *(v103 + 144) = MEMORY[0x1E69E6370];
  *(v103 + 152) = v107;
  *(v103 + 160) = 0xD000000000000011;
  *(v103 + 168) = 0x80000001CA9DD760;
  v108 = v179;
  *(v103 + 184) = v101;
  *(v103 + 192) = v108;
  v109 = sub_1CA94C438();
  v172 = v110;
  v173 = v109;
  v171 = sub_1CA94C438();
  v112 = v111;
  *&v174 = &v168;
  MEMORY[0x1EEE9AC00](v171);
  v113 = &v168 - v192;
  sub_1CA948D98();
  v114 = v190;
  v115 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = v188;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 200) = sub_1CA2F9F14(v173, v172, v171, v112, 0, 0, v113, &v168 - v116);
  v118 = v187;
  v119 = v178;
  *(v103 + 224) = v187;
  *(v103 + 232) = v119;
  v120 = sub_1CA94C438();
  v172 = v121;
  v173 = v120;
  v122 = sub_1CA94C438();
  v124 = v123;
  *&v174 = &v168;
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v168 - v192;
  sub_1CA948D98();
  v126 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 240) = sub_1CA2F9F14(v173, v172, v122, v124, 0, 0, v125, &v168 - v116);
  v128 = v170;
  *(v103 + 264) = v118;
  *(v103 + 272) = v128;
  v129 = MEMORY[0x1E69E6158];
  *(v103 + 304) = MEMORY[0x1E69E6158];
  *(v103 + 280) = 0x7468676952;
  *(v103 + 288) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v185 + 40) = sub_1CA2F864C();
  v130 = swift_allocObject();
  *(v130 + 16) = v183;
  *(v130 + 32) = v181;
  *(v130 + 40) = 0xD000000000000019;
  *(v130 + 48) = 0x80000001CA99B030;
  v131 = v180;
  *(v130 + 64) = v129;
  *(v130 + 72) = v131;
  strcpy((v130 + 80), "WFDictionary");
  *(v130 + 93) = 0;
  *(v130 + 94) = -5120;
  v132 = v179;
  *(v130 + 104) = v129;
  *(v130 + 112) = v132;
  v133 = sub_1CA94C438();
  v181 = v134;
  v182 = v133;
  v135 = sub_1CA94C438();
  v180 = v136;
  *&v183 = &v168;
  MEMORY[0x1EEE9AC00](v135);
  v137 = v192;
  sub_1CA948D98();
  v138 = [v190 bundleURL];
  v179 = &v168;
  MEMORY[0x1EEE9AC00](v138);
  v139 = v188;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v130 + 120) = sub_1CA2F9F14(v182, v181, v135, v180, 0, 0, &v168 - v137, &v168 - v139);
  v141 = v187;
  v142 = v178;
  *(v130 + 144) = v187;
  *(v130 + 152) = v142;
  v143 = sub_1CA94C438();
  v181 = v144;
  v182 = v143;
  v145 = sub_1CA94C438();
  v180 = v146;
  *&v183 = &v168;
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948D98();
  v147 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v149 = sub_1CA2F9F14(v182, v181, v145, v180, 0, 0, &v168 - v137, &v168 - v139);
  *(v130 + 184) = v141;
  *(v130 + 160) = v149;
  sub_1CA94C1E8();
  v150 = sub_1CA2F864C();
  v151 = v185;
  *(v185 + 48) = v150;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v153 = v186;
  v186[50] = v151;
  v153[53] = v152;
  v153[54] = @"ParameterSummary";
  v154 = @"ParameterSummary";
  v155 = sub_1CA94C438();
  v157 = v156;
  v158 = sub_1CA94C438();
  v160 = v159;
  v187 = &v168;
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v168 - v192;
  sub_1CA948D98();
  v162 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v168 - v188;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v155, v157, v158, v160, 0, 0, v161, v163);
  v166 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v153[58] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v153[55] = v166;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA67E214()
{
  v125 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9DD880;
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
  v133 = v12;
  v134 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v119 - v134;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v130 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v129 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v131 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v119 - v131;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v132 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v128 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v24 = sub_1CA94C438();
  v123 = v25;
  v124 = v24;
  v26 = sub_1CA94C438();
  v28 = v27;
  *&v127 = &v119;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v119 - v134;
  sub_1CA948D98();
  v30 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v131;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v124, v123, v26, v28, 0, 0, v29, &v119 - v31);
  v33 = v132;
  *(v21 + 64) = v132;
  *(v21 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = sub_1CA94C438();
  v123 = v36;
  v124 = v35;
  v122 = sub_1CA94C438();
  v38 = v37;
  *&v127 = &v119;
  MEMORY[0x1EEE9AC00](v122);
  v39 = &v119 - v134;
  sub_1CA948D98();
  v40 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v124, v123, v122, v38, 0, 0, v39, &v119 - v31);
  *(v21 + 104) = v33;
  *(v21 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v43 = v128;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v43;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x6F6769646E49;
  *(inited + 168) = 0xE600000000000000;
  v44 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000001CA9A3B70;
  *(inited + 224) = v44;
  *(inited + 232) = @"Input";
  v45 = v44;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v46 = swift_initStackObject();
  v127 = xmmword_1CA981350;
  *(v46 + 16) = xmmword_1CA981350;
  *(v46 + 32) = 0x656C7069746C754DLL;
  *(v46 + 40) = 0xE800000000000000;
  v47 = MEMORY[0x1E69E6370];
  *(v46 + 48) = 0;
  *(v46 + 72) = v47;
  strcpy((v46 + 80), "ParameterKey");
  *(v46 + 93) = 0;
  *(v46 + 94) = -5120;
  *(v46 + 96) = 0x4C4D54484657;
  *(v46 + 104) = 0xE600000000000000;
  *(v46 + 120) = v45;
  *(v46 + 128) = 0x6465726975716552;
  *(v46 + 136) = 0xE800000000000000;
  *(v46 + 144) = 1;
  *(v46 + 168) = v47;
  *(v46 + 176) = 0x7365707954;
  *(v46 + 184) = 0xE500000000000000;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v46 + 216) = v128;
  *(v46 + 192) = &unk_1F4A0BA40;
  v48 = @"IconColor";
  v49 = @"IconSymbol";
  v50 = @"Input";
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v124 = v52;
  *(inited + 240) = v51;
  *(inited + 264) = v52;
  *(inited + 272) = @"Name";
  v53 = @"Name";
  v54 = sub_1CA94C438();
  v120 = v55;
  v121 = v54;
  v56 = sub_1CA94C438();
  v119 = v57;
  v122 = &v119;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v119 - v134;
  sub_1CA948D98();
  v59 = v130;
  v60 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v119 - v131;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v121, v120, v56, v119, 0, 0, v58, v61);
  *(inited + 304) = v132;
  *(inited + 312) = @"Output";
  v63 = swift_allocObject();
  *(v63 + 16) = v127;
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
  v121 = v66;
  v122 = v65;
  v67 = sub_1CA94C438();
  v120 = v68;
  v123 = &v119;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v119 - v134;
  sub_1CA948D98();
  v70 = [v59 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v119 - v131;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v122, v121, v67, v120, 0, 0, v69, v71);
  *(v63 + 168) = v132;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v128;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A0BA70;
  v73 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v124;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1CA9813B0;
  v123 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = v127;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000019;
  *(v74 + 48) = 0x80000001CA99B030;
  *(v74 + 64) = v73;
  *(v74 + 72) = @"Key";
  *(v74 + 80) = 0x4C4D54484657;
  *(v74 + 88) = 0xE600000000000000;
  *(v74 + 104) = v73;
  *(v74 + 112) = @"Label";
  v75 = @"Parameters";
  v76 = @"Class";
  v77 = @"Key";
  v78 = @"Label";
  v79 = sub_1CA94C438();
  v121 = v80;
  v122 = v79;
  v81 = sub_1CA94C438();
  v120 = v82;
  *&v127 = &v119;
  MEMORY[0x1EEE9AC00](v81);
  v126 = inited;
  v83 = v134;
  sub_1CA948D98();
  v84 = v130;
  v85 = [v130 bundleURL];
  v119 = &v119;
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v119 - v131;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v122, v121, v81, v120, 0, 0, &v119 - v83, v86);
  *(v74 + 144) = v132;
  *(v74 + 152) = @"Placeholder";
  v88 = @"Placeholder";
  v89 = sub_1CA94C438();
  v121 = v90;
  v122 = v89;
  v91 = sub_1CA94C438();
  v120 = v92;
  *&v127 = &v119;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v119 - v83;
  sub_1CA948D98();
  v94 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = v131;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v122, v121, v91, v120, 0, 0, v93, &v119 - v95);
  *(v74 + 184) = v132;
  *(v74 + 160) = v97;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v98 = sub_1CA2F864C();
  v99 = v124;
  *(v124 + 32) = v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v101 = v126;
  *(v126 + 360) = v99;
  *(v101 + 384) = v100;
  *(v101 + 392) = @"ParameterSummary";
  v102 = @"ParameterSummary";
  v103 = sub_1CA94C438();
  v105 = v104;
  v106 = sub_1CA94C438();
  v108 = v107;
  v132 = &v119;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v119 - v134;
  sub_1CA948D98();
  v110 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, &v119 - v95);
  v113 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v114 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v115 = v126;
  *(v126 + 400) = v113;
  *(v115 + 424) = v114;
  *(v115 + 432) = @"RequiredResources";
  *(v115 + 440) = &unk_1F4A0BAA0;
  *(v115 + 464) = v128;
  *(v115 + 472) = @"ResidentCompatible";
  *(v115 + 504) = MEMORY[0x1E69E6370];
  *(v115 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v116 = @"RequiredResources";
  v117 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static WFRunWorkflowAction.toolInvocationSummary(with:)@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v1 = sub_1CA94AC08();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v92 = v3;
  v93 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v91 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA94AC18();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v94 = v9;
  v95 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v90 - v16;
  v17 = sub_1CA94AC88();
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v98 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_19();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v97 = &v90 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v90 - v29;
  v31 = sub_1CA94AFA8();
  v32 = OUTLINED_FUNCTION_1_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_19();
  v39 = (v37 - v38);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v90 - v41;
  v43 = sub_1CA94A2C8();
  sub_1CA94C3A8();
  sub_1CA311928(v43, v30);

  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_1CA67F9C4(v30);
  }

  else
  {
    (*(v34 + 32))(v42, v30, v31);
    (*(v34 + 16))(v39, v42, v31);
    if ((*(v34 + 88))(v39, v31) == *MEMORY[0x1E69DB120])
    {
      (*(v34 + 96))(v39, v31);
      v45 = v97;
      v44 = v98;
      (*(v98 + 32))(v97, v39, v17);
      (*(v44 + 16))(v24, v45, v17);
      v46 = *(v44 + 88);
      v47 = OUTLINED_FUNCTION_187();
      if (v48(v47) == *MEMORY[0x1E69DAE70])
      {
        v49 = *(v44 + 96);
        v50 = OUTLINED_FUNCTION_187();
        v51(v50);
        v90 = v14;
        v52 = *v24;
        v53 = swift_projectBox();
        v54 = v94;
        v55 = v95;
        v56 = *(v94 + 16);
        v57 = v96;
        v56(v96, v53, v95);
        v58 = v90;

        v56(v58, v57, v55);
        v59 = v55;
        v60 = v54;
        if ((*(v54 + 88))(v58, v59) == *MEMORY[0x1E69DAE08])
        {
          (*(v54 + 96))(v58, v59);
          v61 = v91;
          v62 = v92;
          (*(v92 + 32))(v91, v58, v93);
          v63 = [objc_opt_self() defaultDatabase];
          sub_1CA94A9C8();
          v64 = sub_1CA94C368();

          v65 = [v63 referenceForWorkflowID_];

          if (v65)
          {
            WFWorkflowReference.toolInvocationSummary()();

            (*(v62 + 8))(v61, v93);
            (*(v60 + 8))(v96, v95);
            v66 = OUTLINED_FUNCTION_3_58();
            v67(v66);
            v68 = OUTLINED_FUNCTION_1_53();
            return v69(v68);
          }

          (*(v62 + 8))(v61, v93);
          (*(v60 + 8))(v96, v95);
          v82 = OUTLINED_FUNCTION_3_58();
          v83(v82);
          v84 = OUTLINED_FUNCTION_1_53();
          v85(v84);
        }

        else
        {
          v76 = v58;
          v77 = *(v54 + 8);
          v77(v96, v59);
          v78 = OUTLINED_FUNCTION_3_58();
          v79(v78);
          v80 = OUTLINED_FUNCTION_1_53();
          v81(v80);
          v77(v76, v59);
        }
      }

      else
      {
        v72 = *(v44 + 8);
        v72(v45, v17);
        v73 = OUTLINED_FUNCTION_1_53();
        v74(v73);
        v75 = OUTLINED_FUNCTION_187();
        (v72)(v75);
      }
    }

    else
    {
      v71 = *(v34 + 8);
      v71(v42, v31);
      v71(v39, v31);
    }
  }

  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v86 = qword_1EDB9F690;
  v87 = sub_1CA94C368();
  v88 = sub_1CA94C368();

  v89 = [v86 localizedStringForKey:v87 value:v88 table:0];

  sub_1CA94C3A8();
  sub_1CA94A5B8();
  sub_1CA94C1E8();
  return sub_1CA94A5C8();
}

uint64_t sub_1CA67F9C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WFWorkflowReference.toolInvocationSummary()()
{
  v1 = v0;
  if ([v0 hasShortcutInputVariables] && objc_msgSend(v0, sel_receivesInputFromSearch))
  {
    sub_1CA94C438();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v2 = qword_1EDB9F690;
    OUTLINED_FUNCTION_187();
    v3 = sub_1CA94C368();
    OUTLINED_FUNCTION_187();
    v4 = sub_1CA94C368();

    v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

    sub_1CA94C3A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1CA981310;
    v7 = [v1 name];
    v8 = sub_1CA94C3A8();
    v10 = v9;

    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1CA282DB4();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    sub_1CA94C378();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447ED0, &qword_1CA991AF8);
    v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447ED8, &unk_1CA991B00) - 8);
    v12 = *(*v11 + 72);
    v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1CA981310;
    v15 = (v14 + v13);
    v16 = v11[14];
    *v15 = 0x7475706E494657;
    *(v15 + 1) = 0xE700000000000000;
    sub_1CA94C438();
    v17 = sub_1CA94C368();
    v18 = sub_1CA94C368();

    v19 = [v2 localizedStringForKey:v17 value:v18 table:0];

    sub_1CA94C3A8();
    sub_1CA94A5A8();
    v20 = *MEMORY[0x1E69DAB98];
    v21 = sub_1CA94A5B8();
    (*(*(v21 - 8) + 104))(&v15[v16], v20, v21);
    sub_1CA94C1E8();
  }

  else
  {
    v22 = [v0 name];
    sub_1CA94C3A8();

    sub_1CA94A5B8();
    sub_1CA94C1E8();
  }

  return sub_1CA94A5C8();
}

uint64_t WFDeviceCapabilityResource.capability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkflowKit26WFDeviceCapabilityResource_capability;
  v4 = sub_1CA94B4D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WFDeviceCapabilityResource.__allocating_init(mobileGestaltKey:value:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = OUTLINED_FUNCTION_69();
  return WFDeviceCapabilityResource.init(mobileGestaltKey:value:)(v6, v7, a3);
}

void sub_1CA67FF14()
{
  v1 = v0;
  v2 = sub_1CA94B4D8();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11WorkflowKit26WFDeviceCapabilityResource_capability;
  if (sub_1CA94B4C8())
  {

    [v0 updateAvailability:1 withError:0];
  }

  else
  {
    (*(v5 + 16))(v9, &v0[v10], v2);
    v11 = *(v5 + 88);
    v12 = OUTLINED_FUNCTION_69();
    v14 = v13(v12);
    v15 = MEMORY[0x1E69E6158];
    if (v14 == *MEMORY[0x1E69DB3C0])
    {
      sub_1CA94C438();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v16 = qword_1EDB9F690;
      OUTLINED_FUNCTION_69();
      v17 = sub_1CA94C368();
      OUTLINED_FUNCTION_69();
      v18 = sub_1CA94C368();

      v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

      v20 = sub_1CA94C3A8();
      v22 = v21;
    }

    else
    {
      sub_1CA94C438();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v23 = qword_1EDB9F690;
      v24 = sub_1CA94C368();
      v25 = sub_1CA94C368();

      v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

      v43[1] = sub_1CA94C3A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1CA981310;
      v28 = [objc_opt_self() currentDevice];
      v29 = sub_1CA680530(v28);
      v31 = v30;
      *(v27 + 56) = v15;
      *(v27 + 64) = sub_1CA282DB4();
      if (v31)
      {
        v32 = v29;
      }

      else
      {
        v32 = 0;
      }

      v33 = 0xE000000000000000;
      if (v31)
      {
        v33 = v31;
      }

      *(v27 + 32) = v32;
      *(v27 + 40) = v33;
      v20 = sub_1CA94C378();
      v22 = v34;

      v35 = *(v5 + 8);
      v36 = OUTLINED_FUNCTION_69();
      v37(v36);
    }

    type metadata accessor for WFResourceError(0);
    v43[12] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    v39 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1CA94C3A8();
    *(inited + 40) = v40;
    *(inited + 72) = v15;
    *(inited + 48) = v20;
    *(inited + 56) = v22;
    sub_1CA94C1E8();
    sub_1CA32FD64();
    sub_1CA948AB8();
    v41 = v43[13];
    v42 = sub_1CA948AC8();

    [v1 updateAvailability:0 withError:v42];
  }
}

id WFDeviceCapabilityResource.__allocating_init(definition:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1CA94C1A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

id WFDeviceCapabilityResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFDeviceCapabilityResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFDeviceCapabilityResource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA680530(void *a1)
{
  v2 = [a1 localizedModel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA6805A8()
{
  result = sub_1CA94B4D8();
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

uint64_t WFAskLLMAvailabilityProvider.isModelEnabled(modelName:)(void (*a1)(char *, uint64_t))
{
  v131 = a1;
  v1 = sub_1CA949498();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v119 = v3;
  v120 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v117 = v7 - v6;
  OUTLINED_FUNCTION_25_0();
  v118 = sub_1CA9494B8();
  v8 = OUTLINED_FUNCTION_1_0(v118);
  v116 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v115 = v13 - v12;
  OUTLINED_FUNCTION_25_0();
  v14 = sub_1CA949F78();
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v128 = v16;
  v129 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v130 = v20 - v19;
  OUTLINED_FUNCTION_25_0();
  v126 = sub_1CA949578();
  v21 = OUTLINED_FUNCTION_1_0(v126);
  v124 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  v27 = v26 - v25;
  v28 = sub_1CA949528();
  v29 = OUTLINED_FUNCTION_1_0(v28);
  v122 = v30;
  v123 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6_0();
  v35 = v34 - v33;
  v121 = sub_1CA9495A8();
  v36 = OUTLINED_FUNCTION_1_0(v121);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6_0();
  v43 = v42 - v41;
  v44 = sub_1CA9494F8();
  v133 = OUTLINED_FUNCTION_1_0(v44);
  v134 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_3_1();
  v127 = v48;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v49);
  v125 = &v115 - v50;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v51);
  v132 = &v115 - v52;
  OUTLINED_FUNCTION_25_0();
  v53 = sub_1CA9486C8();
  v54 = OUTLINED_FUNCTION_1_0(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_3_1();
  v60 = v59;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v61);
  v62 = *(v56 + 16);
  v62(&v115 - v63, v131, v53);
  v64 = OUTLINED_FUNCTION_10_36();
  v66 = v65(v64);
  if (v66 == *MEMORY[0x1E6996C18])
  {
    if (qword_1EC442DC0 != -1)
    {
      swift_once();
    }

    v67 = &qword_1EC447EE8;
    goto LABEL_13;
  }

  if (v66 == *MEMORY[0x1E6996C20])
  {
    if (qword_1EC442DD0 != -1)
    {
      swift_once();
    }

    v67 = &qword_1EC447EF8;
    goto LABEL_13;
  }

  if (v66 == *MEMORY[0x1E6996C10])
  {
    if (qword_1EC442DC8 != -1)
    {
      swift_once();
    }

    v67 = &qword_1EC447EF0;
LABEL_13:
    v68 = *v67;
    sub_1CA94C218();
    (*(v124 + 104))(v27, *MEMORY[0x1E69A12A0], v126);
    sub_1CA949518();
    sub_1CA949598();
    (*(v122 + 8))(v35, v123);
    v69 = v132;
    sub_1CA949538();
    (*(v38 + 8))(v43, v121);
    v70 = *MEMORY[0x1E69E1078];
    v71 = v130;
    sub_1CA949C58();
    v62(v60, v131, v53);
    v73 = v133;
    v72 = v134;
    v74 = v125;
    v126 = v134[2];
    v126(v125, v69, v133);
    v75 = sub_1CA949F68();
    v76 = sub_1CA94CC18();
    if (OUTLINED_FUNCTION_8_35(v76))
    {
      v77 = swift_slowAlloc();
      v135[0] = swift_slowAlloc();
      *v77 = 136315394;
      LODWORD(v124) = v71;
      v78 = sub_1CA9486B8();
      v80 = v79;
      (*(v56 + 8))(v60, v53);
      v81 = sub_1CA26B54C(v78, v80, v135);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      OUTLINED_FUNCTION_3_59();
      sub_1CA6820DC(v82, v83);
      v84 = sub_1CA94D798();
      v86 = v85;
      v131 = v134[1];
      v131(v74, v133);
      v87 = sub_1CA26B54C(v84, v86, v135);

      *(v77 + 14) = v87;
      _os_log_impl(&dword_1CA256000, v75, v124, "Fetched availability for %s: %s", v77, 0x16u);
      swift_arrayDestroy();
      v73 = v133;
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      v72 = v134;
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();

      (*(v128 + 8))(v130, v129);
    }

    else
    {

      v131 = v72[1];
      v131(v74, v73);
      (*(v56 + 8))(v60, v53);
      (*(v128 + 8))(v71, v129);
    }

    v88 = v127;
    v89 = v132;
    v126(v127, v132, v73);
    v90 = v72[11];
    v91 = OUTLINED_FUNCTION_201();
    v93 = v92(v91);
    if (v93 == *MEMORY[0x1E69A0EF8])
    {
      v94 = v72[12];
      v134 = v72 + 12;
      v95 = OUTLINED_FUNCTION_201();
      v96(v95);
      v98 = v115;
      v97 = v116;
      v99 = v118;
      (*(v116 + 32))(v115, v88, v118);
      sub_1CA9494A8();
      v101 = v119;
      v100 = v120;
      v102 = v117;
      (*(v119 + 104))(v117, *MEMORY[0x1E69A0F40], v120);
      sub_1CA2B5D88();
      v104 = v103;

      (*(v101 + 8))(v102, v100);
      (*(v97 + 8))(v98, v99);
      v105 = OUTLINED_FUNCTION_201();
      (v131)(v105);
      v106 = v104 ^ 1;
      return v106 & 1;
    }

    v107 = v93;
    if (v93 == *MEMORY[0x1E69A0F00])
    {
      v108 = v131;
      v131(v89, v73);
      v109 = OUTLINED_FUNCTION_201();
      v108(v109);
    }

    else
    {
      v110 = *MEMORY[0x1E69A11A0];
      v111 = v89;
      v112 = v131;
      v131(v111, v73);
      if (v107 == v110)
      {
        v106 = 1;
        return v106 & 1;
      }

      v113 = OUTLINED_FUNCTION_201();
      v112(v113);
    }

    v106 = 0;
    return v106 & 1;
  }

  result = sub_1CA94D7E8();
  __break(1u);
  return result;
}

id sub_1CA680FD8()
{
  result = [objc_allocWithZone(WFAskLLMAvailabilityProvider) init];
  qword_1EC447EE0 = result;
  return result;
}

WFAskLLMAvailabilityProvider __swiftcall WFAskLLMAvailabilityProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id static WFAskLLMAvailabilityProvider.shared()()
{
  if (qword_1EC442DB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC447EE0;

  return v1;
}

uint64_t sub_1CA681128(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v5 = sub_1CA9493B8();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CA981310;
  a2();
  v15 = sub_1CA949398();
  v17 = v16;
  result = (*(v8 + 8))(v13, v5);
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  *a3 = v14;
  return result;
}

Swift::Bool __swiftcall WFAskLLMAvailabilityProvider.isUseCaseAvailable(useCaseId:)(Swift::String useCaseId)
{
  object = useCaseId._object;
  countAndFlagsBits = useCaseId._countAndFlagsBits;
  v1 = sub_1CA949F78();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v72 = v3;
  v73 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  v70 = sub_1CA949578();
  v9 = OUTLINED_FUNCTION_1_0(v70);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v16 = v15 - v14;
  v69 = sub_1CA949528();
  v17 = OUTLINED_FUNCTION_1_0(v69);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v24 = v23 - v22;
  v68 = sub_1CA9495A8();
  v25 = OUTLINED_FUNCTION_1_0(v68);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6_0();
  v32 = v31 - v30;
  v33 = sub_1CA9494F8();
  v34 = OUTLINED_FUNCTION_1_0(v33);
  v75 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3_1();
  v71 = v38;
  OUTLINED_FUNCTION_31_2();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &object - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &object - v43;
  (*(v11 + 104))(v16, *MEMORY[0x1E69A12A0], v70);
  v45 = object;
  sub_1CA94C218();
  sub_1CA949508();
  sub_1CA949598();
  (*(v19 + 8))(v24, v69);
  sub_1CA949538();
  v46 = v75;
  (*(v27 + 8))(v32, v68);
  v47 = *MEMORY[0x1E69E1078];
  sub_1CA949C58();
  v48 = *(v46 + 16);
  v68 = v42;
  v70 = v44;
  v48(v42, v44, v33);
  sub_1CA94C218();
  v69 = v8;
  v49 = sub_1CA949F68();
  v50 = sub_1CA94CC18();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = sub_1CA26B54C(countAndFlagsBits, v45, &v76);
    *(v51 + 12) = 2080;
    OUTLINED_FUNCTION_3_59();
    sub_1CA6820DC(v52, v53);
    v54 = v68;
    v55 = v33;
    v56 = sub_1CA94D798();
    v58 = v57;
    v59 = *(v75 + 8);
    v59(v54, v33);
    v60 = sub_1CA26B54C(v56, v58, &v76);

    *(v51 + 14) = v60;
    _os_log_impl(&dword_1CA256000, v49, v50, "Fetched fresh use case availability for %s: %s", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    v46 = v75;
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  else
  {

    v59 = *(v46 + 8);
    v55 = v33;
    v59(v68, v33);
  }

  (*(v72 + 8))(v69, v73);
  v61 = v71;
  (*(v46 + 32))(v71, v70, v55);
  v62 = OUTLINED_FUNCTION_10_36();
  v64 = v63(v62);
  v65 = *MEMORY[0x1E69A11A0];
  if (v64 != *MEMORY[0x1E69A11A0])
  {
    v59(v61, v55);
  }

  return v64 == v65;
}

Swift::Bool __swiftcall WFAskLLMAvailabilityProvider.isActionVisible()()
{
  v0 = sub_1CA949F78();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v95 = v2;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v91 = &v89 - v8;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v89 - v10;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F00, &qword_1CA991B40);
  v11 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_3_1();
  v98 = v12;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v89 - v14;
  OUTLINED_FUNCTION_25_0();
  v15 = sub_1CA9486C8();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_1();
  v96 = v21;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v89 - v23);
  v25 = sub_1CA948698();
  v89 = sub_1CA6820DC(&qword_1EC4443A8, MEMORY[0x1E6996C28]);
  v26 = sub_1CA94C1E8();
  v27 = *(v25 + 16);
  v100 = v18;
  v101 = v15;
  if (v27)
  {
    v93 = v7;
    v94 = v0;
    v29 = *(v18 + 16);
    v28 = v18 + 16;
    v30 = *(v28 + 64);
    v92 = v25;
    v31 = v25 + ((v30 + 32) & ~v30);
    v102 = *(v28 + 56);
    v103 = v29;
    v104 = v28;
    v32 = (v28 - 8);
    while (1)
    {
      v103(v24, v31, v15);
      v33 = WFAskLLMAvailabilityProvider.isModelEnabled(modelName:)(v24);
      swift_isUniquelyReferenced_nonNull_native();
      v105 = v26;
      sub_1CA32127C();
      if (__OFADD__(*(v26 + 16), (v35 & 1) == 0))
      {
        break;
      }

      v36 = v34;
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F08, &qword_1CA991B48);
      if (sub_1CA94D588())
      {
        sub_1CA32127C();
        v15 = v101;
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_44;
        }

        v36 = v38;
      }

      else
      {
        v15 = v101;
      }

      v26 = v105;
      if (v37)
      {
        *(v105[7] + v36) = v33 & 1;
      }

      else
      {
        v105[(v36 >> 6) + 8] |= 1 << v36;
        v103((*(v26 + 48) + v36 * v102), v24, v15);
        *(*(v26 + 56) + v36) = v33 & 1;
        v40 = *(v26 + 16);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_42;
        }

        *(v26 + 16) = v42;
      }

      (*v32)(v24, v15);
      v31 += v102;
      if (!--v27)
      {

        v7 = v93;
        v0 = v94;
        v18 = v100;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {

LABEL_15:
    v43 = v96;
    (*(v18 + 104))(v96, *MEMORY[0x1E6996C18], v15);
    v44 = sub_1CA311F50(v43, v26);
    v104 = *(v18 + 8);
    v104(v43, v15);
    if (v44 == 2 || (v44 & 1) == 0)
    {
LABEL_29:

      v59 = *MEMORY[0x1E69E1078];
      sub_1CA949C58();
      v60 = sub_1CA949F68();
      v61 = sub_1CA94CC18();
      if (OUTLINED_FUNCTION_8_35(v61))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_38(&dword_1CA256000, v62, v63, "Hiding Use Model action because PCC model is disabled");
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
      }

      OUTLINED_FUNCTION_9_39();
      v65 = v7;
      v66 = v0;
LABEL_32:
      v64(v65, v66);
      return 0;
    }

    v94 = v0;
    v45 = 1 << *(v26 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v26 + 64);
    v48 = (v45 + 63) >> 6;
    v103 = (v100 + 16);
    sub_1CA94C218();
    v0 = 0;
    v49 = 0;
    while (v47)
    {
      v50 = v49;
LABEL_26:
      v51 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v52 = v51 | (v50 << 6);
      v53 = v101;
      v54 = v97;
      (*(v100 + 16))(v97, *(v26 + 48) + *(v100 + 72) * v52, v101);
      v55 = *(*(v26 + 56) + v52);
      v56 = v99;
      v54[*(v99 + 48)] = v55;
      v57 = v54;
      v58 = v98;
      sub_1CA682124(v57, v98);
      v7 = *(v58 + *(v56 + 48));
      v104(v58, v53);
      v41 = __OFADD__(v0, v7);
      v0 += v7;
      if (v41)
      {
        __break(1u);
        goto LABEL_29;
      }
    }

    while (1)
    {
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v50 >= v48)
      {

        if (v0 <= 1)
        {
          v77 = sub_1CA94C218();
          sub_1CA68221C(v77, sub_1CA6826E4, sub_1CA6826E4);

          sub_1CA68221C(v26, sub_1CA6823D8, sub_1CA6823D8);

          v78 = *MEMORY[0x1E69E1078];
          v79 = v91;
          sub_1CA949C58();

          v80 = sub_1CA949F68();
          v81 = sub_1CA94CC18();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v105 = v104;
            *v82 = 136315394;
            v83 = sub_1CA94C1F8();
            v85 = sub_1CA26B54C(v83, v84, &v105);

            *(v82 + 4) = v85;
            *(v82 + 12) = 2080;
            v86 = sub_1CA94C1F8();
            v88 = sub_1CA26B54C(v86, v87, &v105);

            *(v82 + 14) = v88;
            _os_log_impl(&dword_1CA256000, v80, v81, "Use Model action hidden due to limited models count; enabled = %s, disabled = %s", v82, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_154();
            MEMORY[0x1CCAA4BF0]();
            OUTLINED_FUNCTION_154();
            MEMORY[0x1CCAA4BF0]();
          }

          else
          {
          }

          OUTLINED_FUNCTION_9_39();
          v65 = v79;
          v66 = v94;
          goto LABEL_32;
        }

        v68 = *MEMORY[0x1E69E1078];
        v69 = v90;
        sub_1CA949C58();
        v70 = sub_1CA949F68();
        v71 = sub_1CA94CC08();
        v72 = OUTLINED_FUNCTION_8_35(v71);
        v73 = v94;
        if (v72)
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_11_38(&dword_1CA256000, v74, v75, "Use Model action is available, model count satisfied");
          OUTLINED_FUNCTION_154();
          MEMORY[0x1CCAA4BF0]();
        }

        OUTLINED_FUNCTION_9_39();
        v76(v69, v73);
        return 1;
      }

      v47 = *(v26 + 64 + 8 * v50);
      ++v49;
      if (v47)
      {
        v49 = v50;
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_44:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA6820DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA682124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F00, &qword_1CA991B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1CA682194(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4(v7, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1CA68221C(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v5 = sub_1CA682194(v13, v7, v5, a3);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1CA5C3FA4(0, v7, v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  v9 = a2(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, v5);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v5 = v9;
  }

LABEL_5:
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

unint64_t type metadata accessor for WFAskLLMAvailabilityProvider()
{
  result = qword_1EC447F10;
  if (!qword_1EC447F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC447F10);
  }

  return result;
}

uint64_t sub_1CA6823D8(unint64_t *a1, uint64_t a2, void *a3)
{
  v29 = a2;
  v30 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F00, &qword_1CA991B40);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v29 - v5;
  v38 = sub_1CA9486C8();
  v6 = *(*(v38 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v38);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  v10 = 0;
  v41 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v31 = 0;
  v32 = (v14 + 63) >> 6;
  v35 = v8 + 16;
  v33 = v12;
  v34 = v8 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v42 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v10 << 6);
    v21 = v41;
    v22 = v36;
    v23 = v37;
    v24 = *(v37 + 16);
    v25 = v38;
    v24(v36, v41[6] + *(v37 + 72) * v20, v38);
    v26 = v20;
    LOBYTE(v21) = *(v21[7] + v20);
    v27 = v39;
    v24(v39, v22, v25);
    *(v27 + *(v40 + 48)) = v21;
    sub_1CA68267C(v27);
    result = (*(v23 + 8))(v22, v25);
    v16 = v42;
    if ((v21 & 1) == 0)
    {
      *(v30 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return sub_1CA6829D8(v30, v29, v31, v41);
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v32)
    {
      return sub_1CA6829D8(v30, v29, v31, v41);
    }

    v19 = v33[v10];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA68267C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F00, &qword_1CA991B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA6826E4(unint64_t *a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v37 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F00, &qword_1CA991B40);
  v4 = *(*(v48 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v48);
  v47 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v35 - v7;
  v44 = sub_1CA9486C8();
  v8 = *(*(v44 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v38 = 0;
  v39 = (v16 + 63) >> 6;
  v42 = v10 + 16;
  v45 = v10;
  v40 = v14;
  v41 = v10 + 8;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v50 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v12 << 6);
    v23 = v49;
    v24 = v44;
    v25 = v45;
    v26 = *(v45 + 16);
    v27 = v43;
    v26(v43, v49[6] + *(v45 + 72) * v22, v44);
    v28 = v22;
    LOBYTE(v23) = *(v23[7] + v22);
    v29 = v46;
    v26(v46, v27, v24);
    v30 = v48;
    v29[*(v48 + 48)] = v23;
    v31 = v29;
    v32 = v47;
    sub_1CA682124(v31, v47);
    LODWORD(v30) = *(v32 + *(v30 + 48));
    v33 = *(v25 + 8);
    v33(v32, v24);
    result = (v33)(v27, v24);
    v18 = v50;
    if (v30 == 1)
    {
      *(v37 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_1CA6829D8(v37, v36, v38, v49);
      }
    }
  }

  v20 = v12;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v39)
    {
      return sub_1CA6829D8(v37, v36, v38, v49);
    }

    v21 = v40[v12];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v50 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA6829D8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = sub_1CA9486C8();
  v47 = *(v49 - 8);
  v8 = *(v47 + 64);
  v9 = MEMORY[0x1EEE9AC00](v49);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F18, &qword_1CA991B50);
  result = sub_1CA94D688();
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
  v40 = v47 + 16;
  v41 = result;
  v48 = v47 + 32;
  v17 = result + 64;
  v42 = a1;
  v39 = a4;
  v18 = v49;
  while (v15)
  {
    v19 = v11;
    v20 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v47;
    v46 = *(v47 + 72);
    v26 = v43;
    (*(v47 + 16))(v43, v24 + v46 * v23, v18);
    v45 = *(a4[7] + v23);
    v27 = *(v25 + 32);
    v11 = v19;
    v27(v19, v26, v18);
    v14 = v41;
    v28 = *(v41 + 40);
    sub_1CA6820DC(&qword_1EC4443A8, MEMORY[0x1E6996C28]);
    result = sub_1CA94C288();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v42;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v42;
LABEL_25:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (v27)(*(v14 + 48) + v32 * v46, v11, v49);
    *(*(v14 + 56) + v32) = v45;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v39;
    v15 = v44;
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
      v44 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id sub_1CA682D9C()
{
  v187 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9DDB50;
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
  v196 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v197 = v13;
  v14 = v179 - v196;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v195 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v194 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v198 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v179 - v198;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v193 = v21;
  v22 = v2;
  v2[10] = v20;
  v2[13] = v21;
  v2[14] = @"AppDefinition";
  v23 = @"AppDefinition";
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v186 = v25;
  v2[15] = v24;
  v2[18] = v25;
  v2[19] = @"Description";
  v191 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1CA97EDF0;
  *(v26 + 32) = @"DescriptionResult";
  v27 = @"Description";
  v28 = @"DescriptionResult";
  v29 = sub_1CA94C438();
  v188 = v30;
  v189 = v29;
  v31 = sub_1CA94C438();
  v33 = v32;
  v190 = v179;
  MEMORY[0x1EEE9AC00](v31);
  v34 = v179 - v196;
  sub_1CA948D98();
  v35 = v195;
  v36 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v36);
  v37 = v179 - v198;
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v26 + 40) = sub_1CA2F9F14(v189, v188, v31, v33, 0, 0, v34, v37);
  v39 = v193;
  *(v26 + 64) = v193;
  *(v26 + 72) = @"DescriptionSummary";
  v40 = @"DescriptionSummary";
  v41 = sub_1CA94C438();
  v188 = v42;
  v189 = v41;
  v43 = sub_1CA94C438();
  v45 = v44;
  v190 = v179;
  MEMORY[0x1EEE9AC00](v43);
  v46 = v179 - v196;
  sub_1CA948D98();
  v47 = [v35 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = v179 - v198;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v50 = sub_1CA2F9F14(v189, v188, v43, v45, 0, 0, v46, v48);
  *(v26 + 104) = v39;
  *(v26 + 80) = v50;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v51 = v191;
  v22[20] = sub_1CA6B3784();
  v22[23] = v51;
  v22[24] = @"DisabledOnPlatforms";
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v191 = v52;
  v192 = v22;
  v22[25] = &unk_1F4A0BB10;
  v22[28] = v52;
  v22[29] = @"LocallyProcessesData";
  v53 = MEMORY[0x1E69E6370];
  *(v22 + 240) = 1;
  v22[33] = v53;
  v22[34] = @"Name";
  v54 = @"DisabledOnPlatforms";
  v55 = @"LocallyProcessesData";
  v56 = @"Name";
  v189 = sub_1CA94C438();
  v58 = v57;
  v59 = sub_1CA94C438();
  v61 = v60;
  v190 = v179;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v179 - v196;
  sub_1CA948D98();
  v63 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v179 - v198;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v189, v58, v59, v61, 0, 0, v62, v64);
  v67 = v192;
  v68 = v193;
  v192[35] = v66;
  v67[38] = v68;
  v67[39] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_1CA9813C0;
  *(v69 + 32) = 0x656C7069746C754DLL;
  *(v69 + 40) = 0xE800000000000000;
  *(v69 + 48) = 1;
  *(v69 + 72) = MEMORY[0x1E69E6370];
  *(v69 + 80) = 0x614E74757074754FLL;
  *(v69 + 88) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438();
  v188 = v72;
  v189 = v71;
  v73 = sub_1CA94C438();
  v75 = v74;
  v190 = v179;
  MEMORY[0x1EEE9AC00](v73);
  v76 = v179 - v196;
  sub_1CA948D98();
  v77 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = v179 - v198;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v189, v188, v73, v75, 0, 0, v76, v78);
  v81 = v191;
  *(v69 + 96) = v80;
  *(v69 + 120) = v68;
  *(v69 + 128) = 0x7365707954;
  *(v69 + 168) = v81;
  *(v69 + 136) = 0xE500000000000000;
  *(v69 + 144) = &unk_1F4A0BB40;
  v82 = MEMORY[0x1E69E6158];
  v83 = sub_1CA94C1E8();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v85 = v192;
  v192[40] = v83;
  v85[43] = v84;
  v85[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v190 = swift_allocObject();
  *(v190 + 1) = xmmword_1CA981360;
  v189 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1CA981380;
  *(v86 + 32) = @"AllowsMultipleValues";
  *(v86 + 40) = 1;
  *(v86 + 64) = MEMORY[0x1E69E6370];
  *(v86 + 72) = @"Class";
  *(v86 + 80) = 0xD000000000000016;
  *(v86 + 88) = 0x80000001CA99C4A0;
  *(v86 + 104) = v82;
  *(v86 + 112) = @"DefaultValue";
  *(v86 + 120) = &unk_1F4A0BB70;
  *(v86 + 144) = v81;
  *(v86 + 152) = @"Items";
  v188 = swift_allocObject();
  *(v188 + 1) = xmmword_1CA981470;
  v184 = @"Class";
  v87 = @"Parameters";
  v88 = @"AllowsMultipleValues";
  v89 = @"DefaultValue";
  v90 = @"Items";
  v91 = sub_1CA94C438();
  v181 = v92;
  v182 = v91;
  v93 = sub_1CA94C438();
  v180 = v94;
  v183 = v179;
  MEMORY[0x1EEE9AC00](v93);
  v95 = v196;
  sub_1CA948D98();
  v96 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v179 - v198;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v182, v181, v93, v180, 0, 0, v179 - v95, v97);
  v100 = v188;
  v188[4] = v99;
  v101 = sub_1CA94C438();
  v181 = v102;
  v182 = v101;
  v103 = sub_1CA94C438();
  v180 = v104;
  v183 = v179;
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948D98();
  v105 = v195;
  v106 = [v195 bundleURL];
  v179[1] = v179;
  MEMORY[0x1EEE9AC00](v106);
  v107 = v198;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v100 + 40) = sub_1CA2F9F14(v182, v181, v103, v180, 0, 0, v179 - v95, v179 - v107);
  v109 = sub_1CA94C438();
  v181 = v110;
  v182 = v109;
  v111 = sub_1CA94C438();
  v180 = v112;
  v183 = v179;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v113 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v182, v181, v111, v180, 0, 0, v179 - v95, v179 - v107);
  v116 = v188;
  v188[6] = v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v86 + 160) = v116;
  *(v86 + 184) = v117;
  *(v86 + 192) = @"Key";
  *(v86 + 200) = 0xD000000000000012;
  *(v86 + 208) = 0x80000001CA9DDCE0;
  *(v86 + 224) = MEMORY[0x1E69E6158];
  *(v86 + 232) = @"Label";
  v118 = @"Key";
  v119 = @"Label";
  v181 = v118;
  v182 = v119;
  v120 = sub_1CA94C438();
  v183 = v121;
  v122 = sub_1CA94C438();
  v124 = v123;
  v188 = v179;
  MEMORY[0x1EEE9AC00](v122);
  v125 = v179 - v196;
  sub_1CA948D98();
  v126 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = v179 - v198;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v120, v183, v122, v124, 0, 0, v125, v127);
  *(v86 + 264) = v193;
  *(v86 + 240) = v129;
  _s3__C3KeyVMa_0(0);
  v188 = v130;
  v183 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v190[4] = sub_1CA2F864C();
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1CA981350;
  *(v131 + 32) = v184;
  *(v131 + 40) = 0xD000000000000011;
  *(v131 + 48) = 0x80000001CA99E620;
  v132 = MEMORY[0x1E69E6158];
  v133 = v181;
  *(v131 + 64) = MEMORY[0x1E69E6158];
  *(v131 + 72) = v133;
  *(v131 + 80) = 0xD000000000000016;
  *(v131 + 88) = 0x80000001CA9DDD20;
  v134 = v182;
  *(v131 + 104) = v132;
  *(v131 + 112) = v134;
  v184 = sub_1CA94C438();
  v182 = v135;
  v136 = sub_1CA94C438();
  v181 = v137;
  v185 = v179;
  MEMORY[0x1EEE9AC00](v136);
  v138 = v196;
  sub_1CA948D98();
  v139 = v195;
  v140 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = v179 - v198;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 120) = sub_1CA2F9F14(v184, v182, v136, v181, 0, 0, v179 - v138, v141);
  *(v131 + 144) = v193;
  *(v131 + 152) = @"Prompt";
  v143 = @"Prompt";
  v144 = sub_1CA94C438();
  v184 = v145;
  v146 = sub_1CA94C438();
  v148 = v147;
  v185 = v179;
  MEMORY[0x1EEE9AC00](v146);
  v149 = v179 - v138;
  sub_1CA948D98();
  v150 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = v179 - v198;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v144, v184, v146, v148, 0, 0, v149, v151);
  *(v131 + 184) = v193;
  *(v131 + 160) = v153;
  sub_1CA94C1E8();
  v154 = sub_1CA2F864C();
  v155 = v190;
  v190[5] = v154;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v157 = v192;
  v192[45] = v155;
  v157[48] = v156;
  v157[49] = @"ParameterSummary";
  v158 = @"ParameterSummary";
  v159 = sub_1CA94C438();
  v161 = v160;
  v162 = sub_1CA94C438();
  v164 = v163;
  v193 = v179;
  MEMORY[0x1EEE9AC00](v162);
  v165 = v179 - v196;
  sub_1CA948D98();
  v166 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  v167 = v179 - v198;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v159, v161, v162, v164, 0, 0, v165, v167);
  v170 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v171 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v157[50] = v170;
  v157[53] = v171;
  v157[54] = @"RequiredResources";
  v157[55] = &unk_1F4A0BBC0;
  v172 = v191;
  v157[58] = v191;
  v157[59] = @"RequiresUnlock";
  *(v157 + 480) = 1;
  v157[63] = MEMORY[0x1E69E6370];
  v157[64] = @"UserInterfaceClasses";
  v173 = @"RequiredResources";
  v174 = @"RequiresUnlock";
  v175 = @"UserInterfaceClasses";
  v176 = sub_1CA94C1E8();
  v157[68] = v186;
  v157[65] = v176;
  v157[69] = @"UserInterfaces";
  v157[73] = v172;
  v157[70] = &unk_1F4A0BC60;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v177 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static LNDurationBridge.duration(with:)()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (sub_1CA323E28(0x73646E6F636573, 0xE700000000000000))
  {
    objc_opt_self();
    v0 = swift_dynamicCastObjCClass();
    v1 = v0 != 0;
    if (v0)
    {
      [v0 longLongValue];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0;
  }

  v2 = sub_1CA323E28(0x6F6365736F747461, 0xEB0000000073646ELL);

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      [v3 longLongValue];
      swift_unknownObjectRelease();
      return 0;
    }

    swift_unknownObjectRelease();
  }

  if (v1)
  {
    return 0;
  }

  sub_1CA94CCC8();
  sub_1CA94D9E8();
  return sub_1CA94CCA8();
}

id sub_1CA6843F4()
{
  swift_unknownObjectRetain();
  v0 = static LNDurationBridge.duration(with:)();
  swift_unknownObjectRelease();

  return v0;
}

id sub_1CA684444(void *a1)
{
  v1 = a1;
  v2 = LNDurationBridge.serializedRepresentation.getter();

  return v2;
}

uint64_t LNDurationBridge.serializedRepresentation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v0 = sub_1CA94C1E8();
  sub_1CA94CCB8();
  if ((v1 & 1) == 0)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v0;
    sub_1CA32EA0C(v2, 0x73646E6F636573, 0xE700000000000000, isUniquelyReferenced_nonNull_native, &v10);

    v4 = v10;
    sub_1CA94D9C8();
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    swift_unknownObjectRetain();
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v10 = v4;
    sub_1CA32EA0C(v6, 0x6F6365736F747461, 0xEB0000000073646ELL, v7, &v10);
  }

  v8 = sub_1CA94C1A8();

  return v8;
}

id sub_1CA684640()
{
  v106 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DDE00;
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
  v111 = v12;
  v113 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v99 - v113;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v110 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v112 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v109 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v99 - v109;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v108 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  *&v107 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v104 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v105 = &v99;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v99 - v113;
  sub_1CA948D98();
  v30 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v99 - v109;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v104, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v108;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v107;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconName";
  *(inited + 160) = 1954047316;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"Input";
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v107 = xmmword_1CA981350;
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
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v105;
  *(v36 + 192) = &unk_1F4A0BCA0;
  v39 = @"IconName";
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v104 = v42;
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 0;
  *(inited + 264) = v38;
  *(inited + 272) = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v100 = v46;
  v101 = v45;
  v47 = sub_1CA94C438();
  v99 = v48;
  v102 = &v99;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v99 - v113;
  sub_1CA948D98();
  v50 = v110;
  v51 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v109;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v101, v100, v47, v99, 0, 0, v49, &v99 - v52);
  v54 = v108;
  *(inited + 304) = v108;
  *(inited + 312) = @"Output";
  v55 = swift_initStackObject();
  *(v55 + 16) = v107;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x656C7069746C754DLL;
  *(v55 + 88) = 0xE800000000000000;
  *(v55 + 96) = 1;
  *(v55 + 120) = MEMORY[0x1E69E6370];
  *(v55 + 128) = 0x614E74757074754FLL;
  *(v55 + 136) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438();
  v101 = v58;
  v102 = v57;
  v100 = sub_1CA94C438();
  v60 = v59;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v100);
  v61 = &v99 - v113;
  sub_1CA948D98();
  v62 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v102, v101, v100, v60, 0, 0, v61, &v99 - v52);
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v105;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F4A0BCD0;
  v64 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v104;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v105 = swift_allocObject();
  *(v105 + 1) = xmmword_1CA9813B0;
  v104 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_allocObject();
  *(v65 + 16) = v107;
  *(v65 + 32) = @"Class";
  *(v65 + 40) = 0xD000000000000014;
  *(v65 + 48) = 0x80000001CA99B500;
  *(v65 + 64) = v64;
  *(v65 + 72) = @"Key";
  *(v65 + 80) = 0x7475706E494657;
  *(v65 + 88) = 0xE700000000000000;
  *(v65 + 104) = v64;
  *(v65 + 112) = @"Label";
  v66 = @"Parameters";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v70 = sub_1CA94C438();
  v103 = v71;
  v72 = sub_1CA94C438();
  v74 = v73;
  *&v107 = &v99;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v99 - v113;
  sub_1CA948D98();
  v76 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v99 - v109;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 120) = sub_1CA2F9F14(v70, v103, v72, v74, 0, 0, v75, v77);
  *(v65 + 144) = v108;
  *(v65 + 152) = @"Multiline";
  *(v65 + 184) = MEMORY[0x1E69E6370];
  *(v65 + 160) = 1;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v79 = @"Multiline";
  sub_1CA94C1E8();
  v80 = sub_1CA2F864C();
  v81 = v105;
  v105[4] = v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v81;
  *(inited + 384) = v82;
  *(inited + 392) = @"ParameterSummary";
  v83 = @"ParameterSummary";
  v84 = sub_1CA94C438();
  v86 = v85;
  v87 = sub_1CA94C438();
  v89 = v88;
  v108 = &v99;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v99 - v113;
  sub_1CA948D98();
  v91 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v99 - v109;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v84, v86, v87, v89, 0, 0, v90, v92);
  v95 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v96 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
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

id sub_1CA685440()
{
  v31[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 120) = 0x68746C616548;
  *(inited + 128) = 0xE600000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v6;
  *(inited + 192) = @"Name";
  v7 = @"IconName";
  v8 = @"LocallyProcessesData";
  v9 = @"Name";
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA94C438();
  v15 = v14;
  v16 = sub_1CA948E58();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v20 = [qword_1EDB9F690 bundleURL];
  v21 = sub_1CA948BA8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v10, v12, v13, v15, 0, 0, v19, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v26;
  *(inited + 224) = v27;
  *(inited + 232) = @"RequiredResources";
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 240) = &unk_1F4A0BD40;
  v28 = @"RequiredResources";
  v29 = sub_1CA94C368();
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v29;
  *(inited + 280) = 0xD000000000000015;
  *(inited + 288) = 0x80000001CA9941B0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA68584C()
{
  v0 = sub_1CA949D18();
  v181 = *(v0 - 8);
  v182 = v0;
  v1 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v180 = v172 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9DDFE0;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v191 = v15;
  v195 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v172 - v195;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v194 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v192 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v193 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v172 - v193;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v189 = v23;
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"Description";
  v188 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v179 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v187 = v172;
  MEMORY[0x1EEE9AC00](v30);
  v33 = v172 - v195;
  sub_1CA948D98();
  v34 = [v194 bundleURL];
  v190 = inited;
  MEMORY[0x1EEE9AC00](v34);
  v35 = v172 - v193;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v35);
  *(v24 + 64) = v189;
  *(v24 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v188;
  v39 = sub_1CA6B3784();
  v40 = v190;
  *(v190 + 15) = v39;
  *(v40 + 18) = v38;
  *(v40 + 19) = @"IconColor";
  *(v40 + 20) = 2036429383;
  *(v40 + 21) = 0xE400000000000000;
  v41 = MEMORY[0x1E69E6158];
  *(v40 + 23) = MEMORY[0x1E69E6158];
  *(v40 + 24) = @"IconSymbol";
  strcpy(v40 + 200, "hexagon.fill");
  v40[213] = 0;
  *(v40 + 107) = -5120;
  *(v40 + 28) = v41;
  *(v40 + 29) = @"Input";
  v42 = v41;
  v43 = v40;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v44 = swift_initStackObject();
  v186 = xmmword_1CA981350;
  *(v44 + 16) = xmmword_1CA981350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x1E69E6370];
  *(v44 + 48) = 1;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x7475706E494657;
  *(v44 + 104) = 0xE700000000000000;
  *(v44 + 120) = v42;
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  *(v44 + 184) = 0xE500000000000000;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v44 + 216) = v187;
  *(v44 + 192) = &unk_1F4A0BD70;
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"Input";
  v49 = sub_1CA94C1E8();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v188 = v50;
  *(v43 + 30) = v49;
  *(v43 + 33) = v50;
  *(v43 + 34) = @"Name";
  v51 = @"Name";
  v178 = sub_1CA94C438();
  v53 = v52;
  v54 = sub_1CA94C438();
  v56 = v55;
  v184 = v172;
  MEMORY[0x1EEE9AC00](v54);
  v57 = v172 - v195;
  sub_1CA948D98();
  v58 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = v172 - v193;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v178, v53, v54, v56, 0, 0, v57, v59);
  v63 = v189;
  v62 = v190;
  *(v190 + 35) = v61;
  *(v62 + 38) = v63;
  *(v62 + 39) = @"Output";
  v64 = swift_initStackObject();
  *(v64 + 16) = v186;
  *(v64 + 32) = 0x75736F6C63736944;
  *(v64 + 40) = 0xEF6C6576654C6572;
  *(v64 + 48) = 0x63696C627550;
  *(v64 + 56) = 0xE600000000000000;
  *(v64 + 72) = MEMORY[0x1E69E6158];
  *(v64 + 80) = 0x656C7069746C754DLL;
  *(v64 + 88) = 0xE800000000000000;
  *(v64 + 96) = 1;
  *(v64 + 120) = MEMORY[0x1E69E6370];
  *(v64 + 128) = 0x614E74757074754FLL;
  *(v64 + 136) = 0xEA0000000000656DLL;
  v65 = @"Output";
  v66 = sub_1CA94C438();
  v184 = v67;
  v68 = sub_1CA94C438();
  v70 = v69;
  v185 = v172;
  MEMORY[0x1EEE9AC00](v68);
  v71 = v172 - v195;
  sub_1CA948D98();
  v72 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v172 - v193;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 144) = sub_1CA2F9F14(v66, v184, v68, v70, 0, 0, v71, v73);
  *(v64 + 168) = v63;
  *(v64 + 176) = 0x7365707954;
  *(v64 + 216) = v187;
  *(v64 + 184) = 0xE500000000000000;
  *(v64 + 192) = &unk_1F4A0BDA0;
  v75 = MEMORY[0x1E69E6158];
  v76 = sub_1CA94C1E8();
  v77 = v190;
  *(v190 + 40) = v76;
  *(v77 + 43) = v188;
  *(v77 + 44) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v185 = swift_allocObject();
  *(v185 + 1) = xmmword_1CA981360;
  v184 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1CA981370;
  *(v78 + 32) = @"Class";
  *(v78 + 40) = 0xD000000000000016;
  *(v78 + 48) = 0x80000001CA99C4A0;
  *(v78 + 64) = v75;
  *(v78 + 72) = @"DefaultValue";
  *(v78 + 80) = 3490893;
  *(v78 + 88) = 0xE300000000000000;
  *(v78 + 104) = v75;
  *(v78 + 112) = @"Items";
  v188 = swift_allocObject();
  *(v188 + 1) = xmmword_1CA981570;
  v177 = @"Class";
  v79 = @"Parameters";
  v80 = @"DefaultValue";
  v81 = @"Items";
  v82 = sub_1CA94C438();
  v174 = v83;
  v175 = v82;
  v84 = sub_1CA94C438();
  v173 = v85;
  v176 = v172;
  MEMORY[0x1EEE9AC00](v84);
  v86 = v195;
  sub_1CA948D98();
  v87 = v194;
  v88 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = v172 - v193;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91 = sub_1CA2F9F14(v175, v174, v84, v173, 0, 0, v172 - v86, v89);
  v92 = v188;
  v188[4] = v91;
  v93 = sub_1CA94C438();
  v174 = v94;
  v175 = v93;
  v95 = sub_1CA94C438();
  v173 = v96;
  v176 = v172;
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948D98();
  v97 = [v87 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = v193;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92[5] = sub_1CA2F9F14(v175, v174, v95, v173, 0, 0, v172 - v86, v172 - v98);
  v100 = sub_1CA94C438();
  v174 = v101;
  v175 = v100;
  v102 = sub_1CA94C438();
  v173 = v103;
  v176 = v172;
  MEMORY[0x1EEE9AC00](v102);
  v104 = v172 - v195;
  sub_1CA948D98();
  v105 = v194;
  v106 = [v194 bundleURL];
  v172[1] = v172;
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v175, v174, v102, v173, 0, 0, v104, v172 - v98);
  v188[6] = v108;
  v109 = sub_1CA94C438();
  v174 = v110;
  v175 = v109;
  v111 = sub_1CA94C438();
  v173 = v112;
  v176 = v172;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v195;
  sub_1CA948D98();
  v114 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v175, v174, v111, v173, 0, 0, v172 - v113, v172 - v98);
  v117 = v188;
  v188[7] = v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v78 + 120) = v117;
  *(v78 + 144) = v118;
  *(v78 + 152) = @"Key";
  *(v78 + 160) = 0x7954687361484657;
  *(v78 + 168) = 0xEA00000000006570;
  *(v78 + 184) = MEMORY[0x1E69E6158];
  *(v78 + 192) = @"Label";
  v119 = @"Key";
  v120 = @"Label";
  v175 = v119;
  v174 = v120;
  v176 = sub_1CA94C438();
  v122 = v121;
  v123 = sub_1CA94C438();
  v125 = v124;
  v188 = v172;
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948D98();
  v126 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = v172 - v193;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v176, v122, v123, v125, 0, 0, v172 - v113, v127);
  *(v78 + 224) = v189;
  *(v78 + 200) = v129;
  _s3__C3KeyVMa_0(0);
  v188 = v130;
  v176 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v185[4] = sub_1CA2F864C();
  v131 = swift_allocObject();
  *(v131 + 16) = v186;
  *(v131 + 32) = v177;
  *(v131 + 40) = 0xD000000000000019;
  *(v131 + 48) = 0x80000001CA99B030;
  v132 = MEMORY[0x1E69E6158];
  v133 = v175;
  *(v131 + 64) = MEMORY[0x1E69E6158];
  *(v131 + 72) = v133;
  *(v131 + 80) = 0x7475706E494657;
  *(v131 + 88) = 0xE700000000000000;
  v134 = v174;
  *(v131 + 104) = v132;
  *(v131 + 112) = v134;
  v135 = sub_1CA94C438();
  v137 = v136;
  v138 = sub_1CA94C438();
  v140 = v139;
  *&v186 = v172;
  MEMORY[0x1EEE9AC00](v138);
  v141 = v172 - v195;
  sub_1CA948D98();
  v142 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = v172 - v193;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 120) = sub_1CA2F9F14(v135, v137, v138, v140, 0, 0, v141, v143);
  *(v131 + 144) = v189;
  *(v131 + 152) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v145 = swift_allocObject();
  *(v145 + 16) = v179;
  v146 = @"PreferredTypes";
  v147 = v180;
  sub_1CA949CA8();
  v148 = sub_1CA949C68();
  v150 = v149;
  (*(v181 + 8))(v147, v182);
  *(v145 + 32) = v148;
  *(v145 + 40) = v150;
  *(v131 + 184) = v187;
  *(v131 + 160) = v145;
  sub_1CA94C1E8();
  v151 = sub_1CA2F864C();
  v152 = v185;
  v185[5] = v151;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v154 = v190;
  *(v190 + 45) = v152;
  *(v154 + 48) = v153;
  *(v154 + 49) = @"ParameterSummary";
  v155 = @"ParameterSummary";
  v156 = sub_1CA94C438();
  v158 = v157;
  v159 = sub_1CA94C438();
  v161 = v160;
  MEMORY[0x1EEE9AC00](v159);
  v162 = v172 - v195;
  sub_1CA948D98();
  v163 = [v194 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  v164 = v172 - v193;
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v166 = sub_1CA2F9F14(v156, v158, v159, v161, 0, 0, v162, v164);
  v167 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v168 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v169 = v190;
  *(v190 + 50) = v167;
  *(v169 + 53) = v168;
  *(v169 + 54) = @"ResidentCompatible";
  *(v169 + 58) = MEMORY[0x1E69E6370];
  v169[440] = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v170 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA686DB4()
{
  v408 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  v426 = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9DE1B0;
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
  v438 = v12;
  *&v440 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v394 - v440;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v439 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v436 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v437 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v394 - v437;
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
  v407 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v434 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v429 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v432 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v433 = v394;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v394 - v440;
  sub_1CA948D98();
  v33 = inited;
  v34 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = v394 - v437;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v27, v432, v29, v31, 0, 0, v32, v35);
  *(v24 + 64) = v435;
  *(v24 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v434;
  *(v33 + 160) = sub_1CA6B3784();
  *(v33 + 184) = v38;
  *(v33 + 192) = @"Input";
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v405 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  v410 = 0x80000001CA9DE270;
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0xD000000000000021;
  *(v39 + 104) = 0x80000001CA9DE270;
  v41 = MEMORY[0x1E69E6158];
  *(v39 + 120) = MEMORY[0x1E69E6158];
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 0;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v42 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v406;
  *(v39 + 192) = &unk_1F4A0BE10;
  v43 = @"Input";
  v44 = sub_1CA94C1E8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v33 + 200) = v44;
  *(v33 + 224) = v45;
  *(v33 + 232) = @"InputPassthrough";
  *(v33 + 264) = v42;
  *(v33 + 240) = 1;
  v46 = @"InputPassthrough";
  v427 = 0xD000000000000010;
  v47 = sub_1CA94C368();
  v424 = v33;
  *(v33 + 272) = v47;
  *(v33 + 280) = 0xD00000000000003CLL;
  *(v33 + 288) = 0x80000001CA9DE2A0;
  *(v33 + 304) = v41;
  *(v33 + 312) = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v51 = v50;
  v52 = sub_1CA94C438();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v394 - v440;
  sub_1CA948D98();
  v56 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v394 - v437;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  v60 = v424;
  v424[40] = v59;
  v60[43] = v435;
  v60[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v434 = swift_allocObject();
  *(v434 + 16) = xmmword_1CA981720;
  v433 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_allocObject();
  v409 = xmmword_1CA981370;
  *(v61 + 16) = xmmword_1CA981370;
  v425 = 0xD00000000000001BLL;
  *(v61 + 32) = @"Class";
  *(v61 + 40) = 0xD00000000000001BLL;
  *(v61 + 48) = 0x80000001CA9DE300;
  v62 = MEMORY[0x1E69E6158];
  *(v61 + 64) = MEMORY[0x1E69E6158];
  *(v61 + 72) = @"IntentSlotName";
  *(v61 + 80) = 0x7265646E6573;
  *(v61 + 88) = 0xE600000000000000;
  *(v61 + 104) = v62;
  *(v61 + 112) = @"Key";
  *(v61 + 120) = 0xD000000000000023;
  *(v61 + 128) = 0x80000001CA9DE320;
  *(v61 + 144) = v62;
  *(v61 + 152) = @"Label";
  v63 = @"Class";
  v64 = @"IntentSlotName";
  v65 = @"Key";
  v66 = @"Label";
  v67 = v63;
  v68 = v64;
  v69 = v65;
  v70 = v66;
  v412 = v67;
  v411 = v68;
  v416 = v69;
  *&v418 = v70;
  v71 = @"Parameters";
  v72 = sub_1CA94C438();
  v74 = v73;
  v75 = sub_1CA94C438();
  v77 = v76;
  v431 = v394;
  MEMORY[0x1EEE9AC00](v75);
  v78 = v394 - v440;
  sub_1CA948D98();
  v79 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = v394 - v437;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 160) = sub_1CA2F9F14(v72, v74, v75, v77, 0, 0, v78, v80);
  *(v61 + 184) = v435;
  *(v61 + 192) = @"RequiredResources";
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v82 = swift_allocObject();
  *(v82 + 16) = v429;
  v83 = swift_allocObject();
  v423 = xmmword_1CA9813C0;
  *(v83 + 16) = xmmword_1CA9813C0;
  strcpy((v83 + 32), "WFParameterKey");
  *(v83 + 47) = -18;
  v419 = 0x80000001CA9DE380;
  *(v83 + 48) = 0xD000000000000021;
  *(v83 + 56) = 0x80000001CA9DE380;
  v422 = 0x80000001CA993570;
  v84 = MEMORY[0x1E69E6158];
  v85 = v427;
  *(v83 + 72) = MEMORY[0x1E69E6158];
  *(v83 + 80) = v85;
  *(v83 + 88) = 0x80000001CA993570;
  *(v83 + 96) = 0;
  *(v83 + 120) = MEMORY[0x1E69E6370];
  *(v83 + 128) = 0x72756F7365524657;
  v421 = 0x80000001CA993590;
  *(v83 + 168) = v84;
  v86 = v425;
  *(v83 + 136) = 0xEF7373616C436563;
  *(v83 + 144) = v86;
  *(v83 + 152) = 0x80000001CA993590;
  v415 = @"RequiredResources";
  *(v82 + 32) = sub_1CA94C1E8();
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v61 + 224) = v417;
  *(v61 + 200) = v82;
  _s3__C3KeyVMa_0(0);
  v431 = v87;
  v430 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v434 + 32) = sub_1CA2F864C();
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1CA981420;
  *(v88 + 32) = @"AutocapitalizationType";
  *(v88 + 40) = 1701736270;
  *(v88 + 48) = 0xE400000000000000;
  v89 = v412;
  *(v88 + 64) = v84;
  *(v88 + 72) = v89;
  v413 = 0xD000000000000014;
  v414 = 0x80000001CA99B500;
  *(v88 + 80) = 0xD000000000000014;
  *(v88 + 88) = 0x80000001CA99B500;
  *(v88 + 104) = v84;
  *(v88 + 112) = @"Description";
  v404 = v89;
  v90 = @"AutocapitalizationType";
  v91 = @"Description";
  v92 = sub_1CA94C438();
  v94 = v93;
  v95 = sub_1CA94C438();
  v97 = v96;
  v412 = v394;
  MEMORY[0x1EEE9AC00](v95);
  v98 = v394 - v440;
  sub_1CA948D98();
  v99 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = v394 - v437;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 120) = sub_1CA2F9F14(v92, v94, v95, v97, 0, 0, v98, v100);
  *(v88 + 144) = v435;
  *(v88 + 152) = @"DisableAutocorrection";
  *(v88 + 160) = 1;
  v102 = v416;
  *(v88 + 184) = MEMORY[0x1E69E6370];
  *(v88 + 192) = v102;
  *(v88 + 200) = 0xD000000000000015;
  *(v88 + 208) = 0x80000001CA9DE490;
  v103 = MEMORY[0x1E69E6158];
  *(v88 + 224) = MEMORY[0x1E69E6158];
  *(v88 + 232) = @"KeyboardType";
  strcpy((v88 + 240), "EmailAddress");
  *(v88 + 253) = 0;
  *(v88 + 254) = -5120;
  v104 = v418;
  *(v88 + 264) = v103;
  *(v88 + 272) = v104;
  v400 = v102;
  v401 = v104;
  v105 = @"DisableAutocorrection";
  v106 = @"KeyboardType";
  v416 = sub_1CA94C438();
  v412 = v107;
  v108 = sub_1CA94C438();
  v403 = v109;
  *&v418 = v394;
  MEMORY[0x1EEE9AC00](v108);
  v110 = v440;
  sub_1CA948D98();
  v111 = v439;
  v112 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  v113 = v394 - v437;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 280) = sub_1CA2F9F14(v416, v412, v108, v403, 0, 0, v394 - v110, v113);
  v115 = v435;
  *(v88 + 304) = v435;
  *(v88 + 312) = @"Placeholder";
  v402 = @"Placeholder";
  v416 = sub_1CA94C438();
  v412 = v116;
  v403 = sub_1CA94C438();
  v118 = v117;
  *&v418 = v394;
  MEMORY[0x1EEE9AC00](v403);
  sub_1CA948D98();
  v119 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = v394 - v437;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 320) = sub_1CA2F9F14(v416, v412, v403, v118, 0, 0, v394 - v110, v120);
  v122 = v415;
  *(v88 + 344) = v115;
  *(v88 + 352) = v122;
  v123 = swift_allocObject();
  *(v123 + 16) = v429;
  v124 = swift_allocObject();
  *(v124 + 16) = v423;
  strcpy((v124 + 32), "WFParameterKey");
  *(v124 + 47) = -18;
  *(v124 + 48) = 0xD000000000000021;
  *(v124 + 56) = v419;
  v125 = MEMORY[0x1E69E6158];
  v126 = v427;
  *(v124 + 72) = MEMORY[0x1E69E6158];
  *(v124 + 80) = v126;
  *(v124 + 88) = v422;
  *(v124 + 96) = 1;
  v127 = MEMORY[0x1E69E6370];
  *(v124 + 120) = MEMORY[0x1E69E6370];
  *(v124 + 128) = 0x72756F7365524657;
  *(v124 + 168) = v125;
  *(v124 + 136) = 0xEF7373616C436563;
  v128 = v421;
  *(v124 + 144) = v425;
  *(v124 + 152) = v128;
  v129 = v125;
  *(v123 + 32) = sub_1CA94C1E8();
  *(v88 + 360) = v123;
  *(v88 + 384) = v417;
  *(v88 + 392) = @"TextContentType";
  *(v88 + 424) = v129;
  strcpy((v88 + 400), "EmailAddress");
  *(v88 + 413) = 0;
  *(v88 + 414) = -5120;
  v130 = @"TextContentType";
  sub_1CA94C1E8();
  *(v434 + 40) = sub_1CA2F864C();
  v131 = swift_allocObject();
  v418 = xmmword_1CA981400;
  *(v131 + 16) = xmmword_1CA981400;
  *(v131 + 32) = @"AllowsMultipleValues";
  *(v131 + 40) = 1;
  v132 = v404;
  *(v131 + 64) = v127;
  *(v131 + 72) = v132;
  v412 = 0x80000001CA9CB060;
  v416 = 0xD00000000000001CLL;
  *(v131 + 80) = 0xD00000000000001CLL;
  *(v131 + 88) = 0x80000001CA9CB060;
  v133 = v411;
  *(v131 + 104) = v129;
  *(v131 + 112) = v133;
  *(v131 + 120) = 28532;
  *(v131 + 128) = 0xE200000000000000;
  v134 = v400;
  *(v131 + 144) = v129;
  *(v131 + 152) = v134;
  v403 = 0xD00000000000001DLL;
  *(v131 + 160) = 0xD00000000000001DLL;
  *(v131 + 168) = 0x80000001CA9DE500;
  *(v131 + 184) = v129;
  v135 = v401;
  *(v131 + 192) = v401;
  v136 = @"AllowsMultipleValues";
  v399 = v132;
  v398 = v133;
  v400 = v134;
  v401 = v135;
  v411 = v136;
  v137 = sub_1CA94C438();
  v396 = v138;
  v397 = v137;
  v139 = sub_1CA94C438();
  v395 = v140;
  v404 = v394;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v394 - v440;
  sub_1CA948D98();
  v142 = v439;
  v143 = [v439 bundleURL];
  v394[1] = v394;
  MEMORY[0x1EEE9AC00](v143);
  v144 = v437;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 200) = sub_1CA2F9F14(v397, v396, v139, v395, 0, 0, v141, v394 - v144);
  v146 = v435;
  v147 = v402;
  *(v131 + 224) = v435;
  *(v131 + 232) = v147;
  v404 = v147;
  v148 = sub_1CA94C438();
  v396 = v149;
  v397 = v148;
  v150 = sub_1CA94C438();
  v395 = v151;
  v402 = v394;
  MEMORY[0x1EEE9AC00](v150);
  v152 = v394 - v440;
  sub_1CA948D98();
  v153 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v153);
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v131 + 240) = sub_1CA2F9F14(v397, v396, v150, v395, 0, 0, v152, v394 - v144);
  *(v131 + 264) = v146;
  *(v131 + 272) = @"Prompt";
  v402 = @"Prompt";
  v155 = sub_1CA94C438();
  v157 = v156;
  v158 = sub_1CA94C438();
  v160 = v159;
  v397 = v394;
  MEMORY[0x1EEE9AC00](v158);
  v161 = v394 - v440;
  sub_1CA948D98();
  v162 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = v394 - v437;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v165 = sub_1CA2F9F14(v155, v157, v158, v160, 0, 0, v161, v163);
  *(v131 + 304) = v435;
  *(v131 + 280) = v165;
  sub_1CA94C1E8();
  *(v434 + 48) = sub_1CA2F864C();
  v166 = swift_allocObject();
  *(v166 + 16) = v418;
  *(v166 + 32) = v411;
  *(v166 + 40) = 1;
  v168 = v398;
  v167 = v399;
  *(v166 + 64) = MEMORY[0x1E69E6370];
  *(v166 + 72) = v167;
  v169 = v412;
  *(v166 + 80) = v416;
  *(v166 + 88) = v169;
  v170 = MEMORY[0x1E69E6158];
  *(v166 + 104) = MEMORY[0x1E69E6158];
  *(v166 + 112) = v168;
  *(v166 + 120) = 25443;
  *(v166 + 128) = 0xE200000000000000;
  v171 = v400;
  v172 = v401;
  *(v166 + 144) = v170;
  *(v166 + 152) = v171;
  *(v166 + 160) = v403;
  *(v166 + 168) = 0x80000001CA9DE590;
  *(v166 + 184) = v170;
  *(v166 + 192) = v172;
  v399 = v167;
  v398 = v168;
  v400 = v171;
  v401 = v172;
  v173 = sub_1CA94C438();
  v396 = v174;
  v397 = v173;
  v175 = sub_1CA94C438();
  v395 = v176;
  v403 = v394;
  MEMORY[0x1EEE9AC00](v175);
  v177 = v440;
  sub_1CA948D98();
  v178 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  v179 = v394 - v437;
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 200) = sub_1CA2F9F14(v397, v396, v175, v395, 0, 0, v394 - v177, v179);
  v181 = v404;
  *(v166 + 224) = v435;
  *(v166 + 232) = v181;
  v404 = v181;
  v182 = sub_1CA94C438();
  v396 = v183;
  v397 = v182;
  v184 = sub_1CA94C438();
  v395 = v185;
  v403 = v394;
  MEMORY[0x1EEE9AC00](v184);
  sub_1CA948D98();
  v186 = v439;
  v187 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = v437;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 240) = sub_1CA2F9F14(v397, v396, v184, v395, 0, 0, v394 - v177, v394 - v188);
  v190 = v435;
  v191 = v402;
  *(v166 + 264) = v435;
  *(v166 + 272) = v191;
  v403 = v191;
  v192 = sub_1CA94C438();
  v396 = v193;
  v397 = v192;
  v194 = sub_1CA94C438();
  v395 = v195;
  v402 = v394;
  MEMORY[0x1EEE9AC00](v194);
  v196 = v394 - v440;
  sub_1CA948D98();
  v197 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v197);
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v199 = sub_1CA2F9F14(v397, v396, v194, v395, 0, 0, v196, v394 - v188);
  *(v166 + 304) = v190;
  *(v166 + 280) = v199;
  sub_1CA94C1E8();
  *(v434 + 56) = sub_1CA2F864C();
  v200 = swift_allocObject();
  *(v200 + 16) = v418;
  *(v200 + 32) = v411;
  *(v200 + 40) = 1;
  v202 = v398;
  v201 = v399;
  *(v200 + 64) = MEMORY[0x1E69E6370];
  *(v200 + 72) = v201;
  v203 = v412;
  *(v200 + 80) = v416;
  *(v200 + 88) = v203;
  v204 = MEMORY[0x1E69E6158];
  *(v200 + 104) = MEMORY[0x1E69E6158];
  *(v200 + 112) = v202;
  *(v200 + 120) = 6513506;
  *(v200 + 128) = 0xE300000000000000;
  v205 = v400;
  v206 = v401;
  *(v200 + 144) = v204;
  *(v200 + 152) = v205;
  *(v200 + 160) = 0xD00000000000001ELL;
  *(v200 + 168) = 0x80000001CA9DE680;
  *(v200 + 184) = v204;
  *(v200 + 192) = v206;
  v399 = v201;
  v412 = v202;
  v400 = v205;
  v402 = v206;
  v401 = sub_1CA94C438();
  v398 = v207;
  v208 = sub_1CA94C438();
  v397 = v209;
  v411 = v394;
  MEMORY[0x1EEE9AC00](v208);
  v210 = v440;
  sub_1CA948D98();
  v211 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  v212 = v437;
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v200 + 200) = sub_1CA2F9F14(v401, v398, v208, v397, 0, 0, v394 - v210, v394 - v212);
  v214 = v404;
  *(v200 + 224) = v435;
  *(v200 + 232) = v214;
  v411 = v214;
  v401 = sub_1CA94C438();
  v398 = v215;
  v216 = sub_1CA94C438();
  v397 = v217;
  v404 = v394;
  MEMORY[0x1EEE9AC00](v216);
  v218 = v394 - v210;
  sub_1CA948D98();
  v219 = v439;
  v220 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v200 + 240) = sub_1CA2F9F14(v401, v398, v216, v397, 0, 0, v218, v394 - v212);
  v222 = v435;
  v223 = v403;
  *(v200 + 264) = v435;
  *(v200 + 272) = v223;
  v404 = v223;
  v401 = sub_1CA94C438();
  v398 = v224;
  v225 = sub_1CA94C438();
  v227 = v226;
  v403 = v394;
  MEMORY[0x1EEE9AC00](v225);
  v228 = v394 - v440;
  sub_1CA948D98();
  v229 = [v219 bundleURL];
  MEMORY[0x1EEE9AC00](v229);
  v230 = v394 - v437;
  sub_1CA948B68();

  v231 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v232 = sub_1CA2F9F14(v401, v398, v225, v227, 0, 0, v228, v230);
  *(v200 + 304) = v222;
  *(v200 + 280) = v232;
  sub_1CA94C1E8();
  *(v434 + 64) = sub_1CA2F864C();
  v233 = swift_allocObject();
  *(v233 + 16) = v409;
  v234 = v399;
  v235 = v400;
  v237 = v413;
  v236 = v414;
  *(v233 + 32) = v399;
  *(v233 + 40) = v237;
  *(v233 + 48) = v236;
  v238 = MEMORY[0x1E69E6158];
  v239 = v412;
  *(v233 + 64) = MEMORY[0x1E69E6158];
  *(v233 + 72) = v239;
  *(v233 + 80) = 0x7463656A627573;
  *(v233 + 88) = 0xE700000000000000;
  *(v233 + 104) = v238;
  *(v233 + 112) = v235;
  *(v233 + 120) = 0xD000000000000018;
  *(v233 + 128) = 0x80000001CA9DE770;
  v240 = v402;
  *(v233 + 144) = v238;
  *(v233 + 152) = v240;
  v401 = v234;
  v400 = v235;
  v403 = v240;
  v402 = sub_1CA94C438();
  v399 = v241;
  v242 = sub_1CA94C438();
  v398 = v243;
  *&v409 = v394;
  MEMORY[0x1EEE9AC00](v242);
  v244 = v394 - v440;
  sub_1CA948D98();
  v245 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v245);
  v246 = v437;
  sub_1CA948B68();

  v247 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v233 + 160) = sub_1CA2F9F14(v402, v399, v242, v398, 0, 0, v244, v394 - v246);
  v248 = v435;
  v249 = v404;
  *(v233 + 184) = v435;
  *(v233 + 192) = v249;
  *&v409 = v249;
  v402 = sub_1CA94C438();
  v399 = v250;
  v251 = sub_1CA94C438();
  v253 = v252;
  v404 = v394;
  MEMORY[0x1EEE9AC00](v251);
  v254 = v394 - v440;
  sub_1CA948D98();
  v255 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v255);
  sub_1CA948B68();

  v256 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v257 = sub_1CA2F9F14(v402, v399, v251, v253, 0, 0, v254, v394 - v246);
  *(v233 + 224) = v248;
  *(v233 + 200) = v257;
  sub_1CA94C1E8();
  *(v434 + 72) = sub_1CA2F864C();
  v258 = swift_allocObject();
  *(v258 + 16) = v418;
  v260 = v400;
  v259 = v401;
  v262 = v413;
  v261 = v414;
  *(v258 + 32) = v401;
  *(v258 + 40) = v262;
  *(v258 + 48) = v261;
  v263 = MEMORY[0x1E69E6158];
  *(v258 + 64) = MEMORY[0x1E69E6158];
  *(v258 + 72) = v260;
  *(v258 + 80) = 0xD000000000000021;
  *(v258 + 88) = v410;
  v264 = v403;
  *(v258 + 104) = v263;
  *(v258 + 112) = v264;
  v410 = v259;
  v414 = v260;
  v413 = v264;
  v265 = sub_1CA94C438();
  v402 = v266;
  v403 = v265;
  v267 = sub_1CA94C438();
  v269 = v268;
  v404 = v394;
  MEMORY[0x1EEE9AC00](v267);
  v270 = v440;
  sub_1CA948D98();
  v271 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v271);
  v272 = v394 - v437;
  sub_1CA948B68();

  v273 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v258 + 120) = sub_1CA2F9F14(v403, v402, v267, v269, 0, 0, v394 - v270, v272);
  *(v258 + 144) = v435;
  *(v258 + 152) = @"Multiline";
  *(v258 + 160) = 1;
  v274 = v411;
  *(v258 + 184) = MEMORY[0x1E69E6370];
  *(v258 + 192) = v274;
  v275 = @"Multiline";
  v276 = sub_1CA94C438();
  v402 = v277;
  v403 = v276;
  v401 = sub_1CA94C438();
  v279 = v278;
  v404 = v394;
  MEMORY[0x1EEE9AC00](v401);
  sub_1CA948D98();
  v280 = v439;
  v281 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v281);
  v282 = v437;
  sub_1CA948B68();

  v283 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v284 = sub_1CA2F9F14(v403, v402, v401, v279, 0, 0, v394 - v270, v394 - v282);
  v285 = v435;
  *(v258 + 224) = v435;
  *(v258 + 200) = v284;
  *(v258 + 232) = sub_1CA94C368();
  *(v258 + 240) = 1;
  v286 = v409;
  *(v258 + 264) = MEMORY[0x1E69E6370];
  *(v258 + 272) = v286;
  v287 = sub_1CA94C438();
  v402 = v288;
  v403 = v287;
  v289 = sub_1CA94C438();
  v401 = v290;
  v404 = v394;
  MEMORY[0x1EEE9AC00](v289);
  v291 = v394 - v440;
  sub_1CA948D98();
  v292 = [v280 bundleURL];
  MEMORY[0x1EEE9AC00](v292);
  sub_1CA948B68();

  v293 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v294 = sub_1CA2F9F14(v403, v402, v289, v401, 0, 0, v291, v394 - v282);
  *(v258 + 304) = v285;
  *(v258 + 280) = v294;
  sub_1CA94C1E8();
  *(v434 + 80) = sub_1CA2F864C();
  v295 = swift_allocObject();
  *(v295 + 16) = v418;
  *&v418 = 0x80000001CA99E620;
  v296 = v426;
  *(v295 + 32) = v410;
  *(v295 + 40) = v296;
  *(v295 + 48) = 0x80000001CA99E620;
  v297 = MEMORY[0x1E69E6158];
  v298 = v412;
  *(v295 + 64) = MEMORY[0x1E69E6158];
  *(v295 + 72) = v298;
  *(v295 + 80) = 0x74666172447369;
  *(v295 + 88) = 0xE700000000000000;
  v299 = v414;
  *(v295 + 104) = v297;
  *(v295 + 112) = v299;
  *(v295 + 120) = v416;
  *(v295 + 128) = 0x80000001CA9DE8C0;
  v300 = v413;
  *(v295 + 144) = v297;
  *(v295 + 152) = v300;
  v412 = sub_1CA94C438();
  v404 = v301;
  v302 = sub_1CA94C438();
  v403 = v303;
  v416 = v394;
  MEMORY[0x1EEE9AC00](v302);
  v304 = v440;
  sub_1CA948D98();
  v305 = v439;
  v306 = [v439 bundleURL];
  v402 = v394;
  MEMORY[0x1EEE9AC00](v306);
  v307 = v282;
  sub_1CA948B68();

  v308 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v295 + 160) = sub_1CA2F9F14(v412, v404, v302, v403, 0, 0, v394 - v304, v394 - v282);
  v309 = v411;
  *(v295 + 184) = v435;
  *(v295 + 192) = v309;
  v310 = sub_1CA94C438();
  v411 = v311;
  v412 = v310;
  v312 = sub_1CA94C438();
  v404 = v313;
  v416 = v394;
  MEMORY[0x1EEE9AC00](v312);
  v314 = v394 - v304;
  sub_1CA948D98();
  v315 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v315);
  sub_1CA948B68();

  v316 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v295 + 200) = sub_1CA2F9F14(v412, v411, v312, v404, 0, 0, v314, v394 - v282);
  v317 = v435;
  v318 = v409;
  *(v295 + 224) = v435;
  *(v295 + 232) = v318;
  v319 = sub_1CA94C438();
  v411 = v320;
  v412 = v319;
  v321 = sub_1CA94C438();
  *&v409 = v322;
  v416 = v394;
  MEMORY[0x1EEE9AC00](v321);
  v323 = v394 - v440;
  sub_1CA948D98();
  v324 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v324);
  sub_1CA948B68();

  v325 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v295 + 240) = sub_1CA2F9F14(v412, v411, v321, v409, 0, 0, v323, v394 - v307);
  v326 = v415;
  *(v295 + 264) = v317;
  *(v295 + 272) = v326;
  v327 = swift_allocObject();
  *(v327 + 16) = v429;
  v328 = swift_allocObject();
  *(v328 + 16) = v423;
  strcpy((v328 + 32), "WFParameterKey");
  *(v328 + 47) = -18;
  *(v328 + 48) = 0xD000000000000021;
  v329 = v419;
  *(v328 + 56) = v419;
  v330 = MEMORY[0x1E69E6158];
  v331 = v427;
  *(v328 + 72) = MEMORY[0x1E69E6158];
  *(v328 + 80) = v331;
  *(v328 + 88) = v422;
  *(v328 + 96) = 0;
  v332 = MEMORY[0x1E69E6370];
  *(v328 + 120) = MEMORY[0x1E69E6370];
  *(v328 + 128) = 0x72756F7365524657;
  *(v328 + 168) = v330;
  *(v328 + 136) = 0xEF7373616C436563;
  v333 = v421;
  *(v328 + 144) = v425;
  *(v328 + 152) = v333;
  v334 = v330;
  *(v327 + 32) = sub_1CA94C1E8();
  *(v295 + 304) = v417;
  *(v295 + 280) = v327;
  sub_1CA94C1E8();
  *(v434 + 88) = sub_1CA2F864C();
  v335 = swift_allocObject();
  *(v335 + 16) = v405;
  v336 = v426;
  *(v335 + 32) = v410;
  *(v335 + 40) = v336;
  *(v335 + 48) = v418;
  *(v335 + 64) = v334;
  *(v335 + 72) = @"DefaultValue";
  *(v335 + 80) = 1;
  v337 = v413;
  v338 = v414;
  *(v335 + 104) = v332;
  *(v335 + 112) = v338;
  *(v335 + 120) = 0xD000000000000021;
  *(v335 + 128) = v329;
  *(v335 + 144) = v334;
  *(v335 + 152) = v337;
  v339 = @"DefaultValue";
  v340 = sub_1CA94C438();
  v342 = v341;
  v343 = sub_1CA94C438();
  v345 = v344;
  v432 = v394;
  MEMORY[0x1EEE9AC00](v343);
  v346 = v394 - v440;
  sub_1CA948D98();
  v347 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v347);
  v348 = v394 - v437;
  sub_1CA948B68();

  v349 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v350 = sub_1CA2F9F14(v340, v342, v343, v345, 0, 0, v346, v348);
  *(v335 + 184) = v435;
  *(v335 + 160) = v350;
  sub_1CA94C1E8();
  v351 = sub_1CA2F864C();
  v352 = v434;
  *(v434 + 96) = v351;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v354 = v424;
  v424[45] = v352;
  v354[48] = v353;
  v354[49] = @"ParameterSummary";
  v355 = @"ParameterSummary";
  v356 = sub_1CA94C438();
  v358 = v357;
  v359 = sub_1CA94C438();
  v361 = v360;
  MEMORY[0x1EEE9AC00](v359);
  v362 = v394 - v440;
  sub_1CA948D98();
  v363 = [v439 bundleURL];
  MEMORY[0x1EEE9AC00](v363);
  v364 = v394 - v437;
  sub_1CA948B68();

  v365 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v366 = sub_1CA2F9F14(v356, v358, v359, v361, 0, 0, v362, v364);
  v367 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v368 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v369 = v424;
  v424[50] = v367;
  v369[53] = v368;
  v369[54] = @"RequiredResources";
  v439 = swift_allocObject();
  v440 = xmmword_1CA97EDF0;
  *(v439 + 1) = xmmword_1CA97EDF0;
  v370 = swift_initStackObject();
  *(v370 + 16) = v440;
  v438 = 0x80000001CA99B240;
  *(v370 + 32) = v426;
  *(v370 + 40) = 0x80000001CA99B240;
  v371 = swift_allocObject();
  *(v371 + 16) = v429;
  v372 = swift_allocObject();
  *(v372 + 16) = v423;
  strcpy((v372 + 32), "WFParameterKey");
  *(v372 + 47) = -18;
  *(v372 + 48) = 0xD000000000000021;
  *(v372 + 56) = v419;
  v373 = MEMORY[0x1E69E6158];
  v374 = v427;
  *(v372 + 72) = MEMORY[0x1E69E6158];
  *(v372 + 80) = v374;
  *(v372 + 88) = v422;
  *(v372 + 96) = 1;
  *(v372 + 120) = MEMORY[0x1E69E6370];
  *(v372 + 128) = 0x72756F7365524657;
  *(v372 + 168) = v373;
  v375 = v425;
  *(v372 + 136) = 0xEF7373616C436563;
  *(v372 + 144) = v375;
  *(v372 + 152) = v421;
  v376 = @"RequiredResources";
  *(v371 + 32) = sub_1CA94C1E8();
  *(v370 + 48) = v371;
  v377 = v417;
  *(v370 + 72) = v417;
  *(v370 + 80) = 0x72756F7365524657;
  *(v370 + 120) = v373;
  v437 = 0xD000000000000019;
  *(v370 + 88) = 0xEF7373616C436563;
  *(v370 + 96) = 0xD000000000000019;
  *(v370 + 104) = 0x80000001CA9932D0;
  v378 = sub_1CA94C1E8();
  v379 = v439;
  *(v439 + 4) = v378;
  v380 = swift_allocObject();
  *(v380 + 16) = v440;
  v381 = v438;
  *(v380 + 32) = v426;
  *(v380 + 40) = v381;
  v382 = swift_allocObject();
  *(v382 + 16) = v429;
  v383 = swift_allocObject();
  *(v383 + 16) = v423;
  strcpy((v383 + 32), "WFParameterKey");
  *(v383 + 47) = -18;
  *(v383 + 48) = 0xD000000000000021;
  *(v383 + 56) = v419;
  v384 = v427;
  *(v383 + 72) = v373;
  *(v383 + 80) = v384;
  v385 = v421;
  *(v383 + 88) = v422;
  *(v383 + 96) = 0;
  *(v383 + 120) = MEMORY[0x1E69E6370];
  *(v383 + 128) = 0x72756F7365524657;
  *(v383 + 168) = v373;
  *(v383 + 136) = 0xEF7373616C436563;
  *(v383 + 144) = v375;
  *(v383 + 152) = v385;
  *(v382 + 32) = sub_1CA94C1E8();
  *(v380 + 48) = v382;
  v386 = v377;
  *(v380 + 72) = v377;
  *(v380 + 80) = 0x72756F7365524657;
  *(v380 + 120) = v373;
  v387 = v437;
  *(v380 + 88) = 0xEF7373616C436563;
  *(v380 + 96) = v387;
  *(v380 + 104) = 0x80000001CA9DEAD0;
  v379[5] = sub_1CA94C1E8();
  v388 = v424;
  v424[55] = v379;
  v388[58] = v386;
  v388[59] = @"SuggestedAsInitialAction";
  *(v388 + 480) = 1;
  v388[63] = MEMORY[0x1E69E6370];
  v388[64] = @"UserInterfaceClasses";
  v389 = @"SuggestedAsInitialAction";
  v390 = @"UserInterfaceClasses";
  v391 = sub_1CA94C1E8();
  v388[68] = v407;
  v388[65] = v391;
  v388[69] = @"UserInterfaces";
  v388[73] = v406;
  v388[70] = &unk_1F4A0BEB0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v392 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA689E64()
{
  v232 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9DEB00;
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
  v248 = v12;
  v246 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v223 - v246;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v247 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v244 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v245 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v223 - v245;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v243 = v20;
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
  v241 = xmmword_1CA981350;
  *(v24 + 16) = xmmword_1CA981350;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v237 = v28;
  v238 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v239 = v223;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v246;
  sub_1CA948D98();
  v33 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v242 = inited;
  v34 = v245;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v238, v237, v29, v31, 0, 0, v223 - v32, v223 - v34);
  *(v24 + 64) = v243;
  *(v24 + 72) = @"DescriptionNote";
  v36 = @"DescriptionNote";
  v37 = sub_1CA94C438();
  v237 = v38;
  v238 = v37;
  v236 = sub_1CA94C438();
  v40 = v39;
  v239 = v223;
  MEMORY[0x1EEE9AC00](v236);
  v41 = v223 - v32;
  sub_1CA948D98();
  v42 = v247;
  v43 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 80) = sub_1CA2F9F14(v238, v237, v236, v40, 0, 0, v41, v223 - v34);
  *(v24 + 104) = v243;
  *(v24 + 112) = @"DescriptionResult";
  v45 = @"DescriptionResult";
  v46 = sub_1CA94C438();
  v237 = v47;
  v238 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v239 = v223;
  MEMORY[0x1EEE9AC00](v48);
  v51 = v223 - v246;
  sub_1CA948D98();
  v52 = [v42 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v245;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 120) = sub_1CA2F9F14(v238, v237, v48, v50, 0, 0, v51, v223 - v53);
  v55 = v243;
  *(v24 + 144) = v243;
  *(v24 + 152) = @"DescriptionSummary";
  v56 = @"DescriptionSummary";
  v57 = sub_1CA94C438();
  v237 = v58;
  v238 = v57;
  v236 = sub_1CA94C438();
  v60 = v59;
  v239 = v223;
  MEMORY[0x1EEE9AC00](v236);
  v61 = v223 - v246;
  sub_1CA948D98();
  v62 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v238, v237, v236, v60, 0, 0, v61, v223 - v53);
  *(v24 + 184) = v55;
  *(v24 + 160) = v64;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v65 = v240;
  v66 = sub_1CA6B3784();
  v67 = v242;
  v242[20] = v66;
  v67[23] = v65;
  v67[24] = @"IconColor";
  v67[25] = 1953392980;
  v67[26] = 0xE400000000000000;
  v68 = MEMORY[0x1E69E6158];
  v67[28] = MEMORY[0x1E69E6158];
  v67[29] = @"IconSymbol";
  v67[30] = 0x69662E6B636F6C63;
  v67[31] = 0xEA00000000006C6CLL;
  v67[33] = v68;
  v67[34] = @"IconSymbolColor";
  v67[35] = 0x6E65657247;
  v67[36] = 0xE500000000000000;
  v67[38] = v68;
  v67[39] = @"Input";
  v69 = v68;
  v70 = v67;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v71 = swift_initStackObject();
  *(v71 + 16) = v241;
  *(v71 + 32) = 0x656C7069746C754DLL;
  *(v71 + 40) = 0xE800000000000000;
  v72 = MEMORY[0x1E69E6370];
  *(v71 + 48) = 0;
  *(v71 + 72) = v72;
  strcpy((v71 + 80), "ParameterKey");
  *(v71 + 93) = 0;
  *(v71 + 94) = -5120;
  strcpy((v71 + 96), "WFDestination");
  *(v71 + 110) = -4864;
  *(v71 + 120) = v69;
  *(v71 + 128) = 0x6465726975716552;
  *(v71 + 136) = 0xE800000000000000;
  *(v71 + 144) = 1;
  *(v71 + 168) = v72;
  *(v71 + 176) = 0x7365707954;
  *(v71 + 184) = 0xE500000000000000;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v71 + 216) = v238;
  *(v71 + 192) = &unk_1F4A0BF30;
  v73 = @"IconColor";
  v74 = @"IconSymbol";
  v75 = @"IconSymbolColor";
  v76 = @"Input";
  v77 = sub_1CA94C1E8();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v240 = v78;
  v70[40] = v77;
  v70[43] = v78;
  v70[44] = @"Name";
  v79 = @"Name";
  v80 = sub_1CA94C438();
  v236 = v81;
  v82 = sub_1CA94C438();
  v84 = v83;
  v237 = v223;
  MEMORY[0x1EEE9AC00](v82);
  v85 = v246;
  sub_1CA948D98();
  v86 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = v223 - v245;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v80, v236, v82, v84, 0, 0, v223 - v85, v87);
  v90 = v242;
  v91 = v243;
  v242[45] = v89;
  v90[48] = v91;
  v90[49] = @"Output";
  v92 = swift_allocObject();
  *(v92 + 16) = v241;
  *(v92 + 32) = 0x75736F6C63736944;
  *(v92 + 40) = 0xEF6C6576654C6572;
  *(v92 + 48) = 0x63696C627550;
  *(v92 + 56) = 0xE600000000000000;
  *(v92 + 72) = MEMORY[0x1E69E6158];
  *(v92 + 80) = 0x656C7069746C754DLL;
  *(v92 + 88) = 0xE800000000000000;
  *(v92 + 96) = 0;
  *(v92 + 120) = MEMORY[0x1E69E6370];
  *(v92 + 128) = 0x614E74757074754FLL;
  *(v92 + 136) = 0xEA0000000000656DLL;
  v93 = @"Output";
  v239 = sub_1CA94C438();
  v237 = v94;
  v95 = sub_1CA94C438();
  v97 = v96;
  *&v241 = v223;
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948D98();
  v98 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = v223 - v245;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 144) = sub_1CA2F9F14(v239, v237, v95, v97, 0, 0, v223 - v85, v99);
  *(v92 + 168) = v91;
  *(v92 + 176) = 0x7365707954;
  *(v92 + 216) = v238;
  *(v92 + 184) = 0xE500000000000000;
  *(v92 + 192) = &unk_1F4A0BF80;
  v101 = MEMORY[0x1E69E6158];
  v102 = sub_1CA94C1E8();
  v103 = v242;
  v242[50] = v102;
  v103[53] = v240;
  v103[54] = @"Parameters";
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v241 = swift_allocObject();
  *(v241 + 16) = xmmword_1CA981470;
  v240 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1CA981380;
  *(v104 + 64) = v101;
  v229 = 0xD000000000000013;
  v230 = 0x80000001CA99B730;
  *(v104 + 32) = @"Class";
  *(v104 + 40) = 0xD000000000000013;
  *(v104 + 48) = 0x80000001CA99B730;
  v233 = @"Class";
  v105 = @"Parameters";
  *(v104 + 72) = sub_1CA94C368();
  *(v104 + 80) = 1;
  *(v104 + 104) = MEMORY[0x1E69E6370];
  *(v104 + 112) = @"Key";
  *(v104 + 120) = 0xD00000000000001DLL;
  *(v104 + 128) = 0x80000001CA99C3E0;
  *(v104 + 144) = v101;
  *(v104 + 152) = @"Label";
  v106 = @"Key";
  v107 = @"Label";
  v108 = v106;
  v109 = v107;
  v236 = v108;
  v237 = v109;
  v234 = sub_1CA94C438();
  v228 = v110;
  v111 = sub_1CA94C438();
  v227 = v112;
  v235 = v223;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v223 - v246;
  sub_1CA948D98();
  v114 = v247;
  v115 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = v245;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v104 + 160) = sub_1CA2F9F14(v234, v228, v111, v227, 0, 0, v113, v223 - v116);
  v118 = v243;
  *(v104 + 184) = v243;
  *(v104 + 192) = @"Prompt";
  v228 = @"Prompt";
  v234 = sub_1CA94C438();
  v227 = v119;
  v120 = sub_1CA94C438();
  *&v226 = v121;
  v235 = v223;
  MEMORY[0x1EEE9AC00](v120);
  v122 = v223 - v246;
  sub_1CA948D98();
  v123 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v234, v227, v120, v226, 0, 0, v122, v223 - v116);
  *(v104 + 224) = v118;
  *(v104 + 200) = v125;
  v227 = "ustomLocation)";
  *(v104 + 232) = sub_1CA94C368();
  *(v104 + 264) = MEMORY[0x1E69E6370];
  *(v104 + 240) = 1;
  _s3__C3KeyVMa_0(0);
  v235 = v126;
  v234 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v241 + 32) = sub_1CA2F864C();
  v127 = swift_allocObject();
  v226 = xmmword_1CA981370;
  *(v127 + 16) = xmmword_1CA981370;
  v129 = v229;
  v128 = v230;
  *(v127 + 32) = v233;
  *(v127 + 40) = v129;
  *(v127 + 48) = v128;
  v130 = MEMORY[0x1E69E6158];
  v131 = v236;
  *(v127 + 64) = MEMORY[0x1E69E6158];
  *(v127 + 72) = v131;
  strcpy((v127 + 80), "WFDestination");
  *(v127 + 94) = -4864;
  v132 = v237;
  *(v127 + 104) = v130;
  *(v127 + 112) = v132;
  v229 = sub_1CA94C438();
  v225 = v133;
  v134 = sub_1CA94C438();
  v224 = v135;
  v230 = v223;
  MEMORY[0x1EEE9AC00](v134);
  v136 = v246;
  sub_1CA948D98();
  v137 = [v247 bundleURL];
  v223[1] = v223;
  MEMORY[0x1EEE9AC00](v137);
  v138 = v245;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 120) = sub_1CA2F9F14(v229, v225, v134, v224, 0, 0, v223 - v136, v223 - v138);
  v140 = v243;
  v141 = v228;
  *(v127 + 144) = v243;
  *(v127 + 152) = v141;
  v142 = sub_1CA94C438();
  v228 = v143;
  v229 = v142;
  v144 = sub_1CA94C438();
  v225 = v145;
  v230 = v223;
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948D98();
  v146 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v229, v228, v144, v225, 0, 0, v223 - v136, v223 - v138);
  *(v127 + 184) = v140;
  *(v127 + 160) = v148;
  *(v127 + 192) = sub_1CA94C368();
  *(v127 + 224) = MEMORY[0x1E69E6370];
  *(v127 + 200) = 1;
  sub_1CA94C1E8();
  *(v241 + 40) = sub_1CA2F864C();
  v149 = swift_allocObject();
  *(v149 + 16) = v226;
  *(v149 + 32) = v233;
  *(v149 + 40) = 0xD000000000000016;
  *(v149 + 48) = 0x80000001CA99C4A0;
  v150 = MEMORY[0x1E69E6158];
  *(v149 + 64) = MEMORY[0x1E69E6158];
  *(v149 + 72) = @"DefaultValue";
  *(v149 + 80) = 0x676E6976697244;
  *(v149 + 88) = 0xE700000000000000;
  *(v149 + 104) = v150;
  *(v149 + 112) = @"Items";
  v239 = swift_allocObject();
  *(v239 + 1) = xmmword_1CA981570;
  v151 = @"DefaultValue";
  v152 = @"Items";
  v153 = sub_1CA94C438();
  v230 = v154;
  v231 = v153;
  v155 = sub_1CA94C438();
  v229 = v156;
  v233 = v223;
  MEMORY[0x1EEE9AC00](v155);
  sub_1CA948D98();
  v157 = v247;
  v158 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  v159 = v223 - v245;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v161 = sub_1CA2F9F14(v231, v230, v155, v229, 0, 0, v223 - v136, v159);
  v239[4] = v161;
  v162 = sub_1CA94C438();
  v230 = v163;
  v231 = v162;
  v164 = sub_1CA94C438();
  v229 = v165;
  v233 = v223;
  MEMORY[0x1EEE9AC00](v164);
  sub_1CA948D98();
  v166 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  v167 = v245;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v169 = sub_1CA2F9F14(v231, v230, v164, v229, 0, 0, v223 - v136, v223 - v167);
  v170 = v239;
  v239[5] = v169;
  v171 = sub_1CA94C438();
  v230 = v172;
  v231 = v171;
  v173 = sub_1CA94C438();
  v229 = v174;
  v233 = v223;
  MEMORY[0x1EEE9AC00](v173);
  v175 = v223 - v136;
  sub_1CA948D98();
  v176 = v247;
  v177 = [v247 bundleURL];
  v228 = v223;
  MEMORY[0x1EEE9AC00](v177);
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 48) = sub_1CA2F9F14(v231, v230, v173, v229, 0, 0, v175, v223 - v167);
  v179 = sub_1CA94C438();
  v230 = v180;
  v231 = v179;
  v229 = sub_1CA94C438();
  v182 = v181;
  v233 = v223;
  MEMORY[0x1EEE9AC00](v229);
  v183 = v223 - v246;
  sub_1CA948D98();
  v184 = [v176 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = v245;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v231, v230, v229, v182, 0, 0, v183, v223 - v185);
  v188 = v239;
  v239[7] = v187;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v149 + 120) = v188;
  v190 = v236;
  *(v149 + 144) = v189;
  *(v149 + 152) = v190;
  *(v149 + 160) = 0xD000000000000019;
  *(v149 + 168) = 0x80000001CA99C580;
  v191 = v237;
  *(v149 + 184) = MEMORY[0x1E69E6158];
  *(v149 + 192) = v191;
  v192 = sub_1CA94C438();
  v236 = v193;
  v237 = v192;
  v194 = sub_1CA94C438();
  v196 = v195;
  v239 = v223;
  MEMORY[0x1EEE9AC00](v194);
  v197 = v223 - v246;
  sub_1CA948D98();
  v198 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v200 = sub_1CA2F9F14(v237, v236, v194, v196, 0, 0, v197, v223 - v185);
  *(v149 + 224) = v243;
  *(v149 + 200) = v200;
  sub_1CA94C1E8();
  v201 = sub_1CA2F864C();
  v202 = v241;
  *(v241 + 48) = v201;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v204 = v242;
  v242[55] = v202;
  v204[58] = v203;
  v204[59] = @"ParameterSummary";
  v205 = @"ParameterSummary";
  v206 = sub_1CA94C438();
  v208 = v207;
  v209 = sub_1CA94C438();
  v211 = v210;
  MEMORY[0x1EEE9AC00](v209);
  v212 = v223 - v246;
  sub_1CA948D98();
  v213 = [v247 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  v214 = v223 - v245;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v216 = sub_1CA2F9F14(v206, v208, v209, v211, 0, 0, v212, v214);
  v217 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v218 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v219 = v242;
  v242[60] = v217;
  v219[63] = v218;
  v219[64] = @"RequiredResources";
  v219[68] = v238;
  v219[65] = &unk_1F4A0BFB0;
  v219[69] = @"ResidentCompatible";
  v219[73] = MEMORY[0x1E69E6370];
  *(v219 + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v220 = @"RequiredResources";
  v221 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

BOOL sub_1CA68BAD4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1CA94D328();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_1CA68BBA0()
{
  v1 = *(v0 + OBJC_IVAR___WFDatabaseFetchedRecordResult_reason);
  v2 = *(v0 + OBJC_IVAR___WFDatabaseFetchedRecordResult_reason + 8);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA68BD10()
{
  v1 = *(v0 + OBJC_IVAR___WFDatabaseRecordSyncOperation_reason);
  v2 = *(v0 + OBJC_IVAR___WFDatabaseRecordSyncOperation_reason + 8);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

id sub_1CA68BD48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, Class *a6)
{
  *(v6 + *a4) = a1;
  v7 = (v6 + *a5);
  *v7 = a2;
  v7[1] = a3;
  v9.super_class = *a6;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1CA68BEA8(void *a1@<X8>)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() fetchRequest];
  sub_1CA25B3D0(0, &qword_1EC441AA8, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CA981310;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1CA282DB4();
  *(v3 + 32) = 0xD000000000000018;
  *(v3 + 40) = 0x80000001CA99AA20;
  v5 = sub_1CA94CBA8();
  [v2 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 56) = v4;
  *(v6 + 32) = 0x776F6C666B726F77;
  *(v6 + 40) = 0xEA00000000004449;
  v7 = sub_1CA94C648();

  [v2 setPropertiesToFetch_];

  v31[0] = 0;
  v8 = [v2 execute_];
  v9 = v31[0];
  if (v8)
  {
    v10 = v8;
    v28 = v2;
    v29 = a1;
    sub_1CA25B3D0(0, &unk_1EC441990, off_1E836E138);
    v11 = sub_1CA94C658();
    v12 = v9;

    v13 = sub_1CA25B410();
    v14 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    while (v13 != v14)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1CCAA22D0](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v18 = sub_1CA3F132C(v15, &selRef_workflowID);
      v20 = v19;

      ++v14;
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = *(v30 + 16);
          sub_1CA26DADC();
          v30 = v24;
        }

        v21 = *(v30 + 16);
        if (v21 >= *(v30 + 24) >> 1)
        {
          sub_1CA26DADC();
          v30 = v25;
        }

        *(v30 + 16) = v21 + 1;
        v22 = v30 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v20;
        v14 = v17;
      }
    }

    *v29 = v30;
  }

  else
  {
    v26 = v31[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1CA68C2E8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v194 = a5;
  v195 = a7;
  v192 = a6;
  v193 = a4;
  v196 = a8;
  v197[1] = *MEMORY[0x1E69E9840];
  v12 = sub_1CA949F78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v177 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (v177 - v21);
  v23 = sub_1CA68D518(a2, a3, 0, 0);
  if (v8)
  {
    goto LABEL_73;
  }

  v24 = v23;
  v184 = v20;
  v185 = v22;
  v183 = v17;
  v188 = a3;
  v189 = a2;
  v190 = v13;
  v191 = a1;
  v186 = v12;
  v25 = &selRef_setWantedEncryptedSchemaVersion_;
  if (!v23)
  {
    v39 = 0;
    v40 = v191;
    v24 = sub_1CA68D80C(v189, v188);
    v187 = 0;
LABEL_37:
    v63 = v195;
    goto LABEL_38;
  }

  v187 = 0;
  v26 = sub_1CA68EF10(v23);
  if (v27 >> 60 == 15)
  {
    goto LABEL_23;
  }

  v28 = v27;
  v182 = v24;
  v29 = v26;
  v30 = objc_opt_self();
  v31 = sub_1CA948BF8();
  v197[0] = 0;
  v32 = [v30 recordFromSystemFieldsData:v31 error:v197];

  if (!v32)
  {
    v41 = v197[0];
    v42 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA39F318(v29, v28);

    v187 = 0;
LABEL_22:
    v24 = v182;
LABEL_23:
    v40 = v191;
    goto LABEL_24;
  }

  v181 = v29;
  v33 = v197[0];
  v34 = sub_1CA3F132C(v32, &selRef_recordChangeTag);
  if (v35)
  {
    v36 = v189;
    if (v194)
    {
      if (v34 == v193 && v35 == v194)
      {

LABEL_69:
        v108 = v32;
        v109 = *MEMORY[0x1E69E1090];
        v110 = v185;
        sub_1CA949C58();
        v111 = v188;
        sub_1CA94C218();
        v112 = sub_1CA949F68();
        v113 = sub_1CA94CBF8();

        v114 = os_log_type_enabled(v112, v113);
        v115 = v186;
        if (v114)
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v118 = v111;
          v119 = v28;
          v120 = v117;
          v197[0] = v117;
          *v116 = 136446210;
          *(v116 + 4) = sub_1CA26B54C(v36, v118, v197);
          _os_log_impl(&dword_1CA256000, v112, v113, "Local WFWorkflowRecord with identifier %{public}s has the same recordChangeTag as fetched record, this is likely our own change, discarding it.", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v120);
          v121 = v120;
          v28 = v119;
          MEMORY[0x1CCAA4BF0](v121, -1, -1);
          MEMORY[0x1CCAA4BF0](v116, -1, -1);
        }

        (*(v190 + 8))(v110, v115);
        v79 = v196;
        v122 = v182;
        v123 = objc_allocWithZone(WFDatabaseFetchedRecordResult);
        v106 = sub_1CA68EAB8(0, 0xD000000000000010, 0x80000001CA9DF230);
        sub_1CA39F318(v181, v28);

        goto LABEL_72;
      }

      v38 = sub_1CA94D7F8();

      if (v38)
      {
        goto LABEL_69;
      }
    }

    else
    {
    }
  }

  else
  {
    v36 = v189;
    if (!v194)
    {
      goto LABEL_69;
    }
  }

  v194 = sub_1CA948CB8();
  v43 = *(v194 - 1);
  isa = v43[8].isa;
  MEMORY[0x1EEE9AC00](v194);
  v45 = (isa + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = v177 - v45;
  v47 = [v32 modificationDate];
  if (!v47)
  {
    sub_1CA39F318(v181, v28);

    goto LABEL_22;
  }

  v48 = v47;
  v185 = v177;
  v193 = v43;
  sub_1CA948C78();

  MEMORY[0x1EEE9AC00](v49);
  v50 = v177 - v45;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  v180 = v177;
  v52 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51 - 8);
  v54 = v177 - v53;
  sub_1CA6102B4(v192, v177 - v53, &qword_1EC4466D0, &qword_1CA991AA0);
  v55 = v194;
  if (__swift_getEnumTagSinglePayload(v54, 1, v194) == 1)
  {
    (v193[1].isa)(v46, v55);
    sub_1CA39F318(v181, v28);

    sub_1CA633484(v54);
    v24 = v182;
    v40 = v191;
  }

  else
  {
    v192 = v177;
    (v193[4].isa)(v50, v54, v55);
    v125 = sub_1CA948C98();
    v40 = v191;
    if (v125 != -1)
    {
      v195 = v32;
      v126 = *MEMORY[0x1E69E1090];
      v127 = sub_1CA949C58();
      v188 = v177;
      MEMORY[0x1EEE9AC00](v127);
      v128 = (isa + 15) & 0xFFFFFFFFFFFFFFF0;
      v129 = v46;
      v130 = v50;
      v131 = v193[2].isa;
      v180 = (v177 - v128);
      v189 = v130;
      v132 = v131();
      v183 = v177;
      MEMORY[0x1EEE9AC00](v132);
      v133 = v177 - v128;
      v191 = v129;
      (v131)(v177 - v128, v129, v55);
      v134 = sub_1CA949F68();
      v135 = sub_1CA94CC28();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v197[0] = v179;
        *v136 = 136315394;
        v177[1] = sub_1CA3F177C();
        v178 = v135;
        v137 = v180;
        v138 = v194;
        v177[0] = sub_1CA94D798();
        v140 = v139;
        v141 = v193[1].isa;
        v193 = v134;
        (v141)(v137, v138);
        v142 = sub_1CA26B54C(v177[0], v140, v197);
        v143 = v141;

        *(v136 + 4) = v142;
        *(v136 + 12) = 2080;
        v144 = sub_1CA94D798();
        v146 = v145;
        (v143)(v133, v138);
        v147 = sub_1CA26B54C(v144, v146, v197);

        *(v136 + 14) = v147;
        v148 = v193;
        _os_log_impl(&dword_1CA256000, v193, v178, "Remote record modification date %s is not greater than local record modification date %s", v136, 0x16u);
        v149 = v179;
        swift_arrayDestroy();
        MEMORY[0x1CCAA4BF0](v149, -1, -1);
        MEMORY[0x1CCAA4BF0](v136, -1, -1);
      }

      else
      {

        v138 = v194;
        v143 = v193[1].isa;
        (v143)(v133, v194);
        (v143)(v180, v138);
      }

      (*(v190 + 8))(v184, v186);
      v166 = v196;
      v167 = objc_allocWithZone(WFDatabaseFetchedRecordResult);
      v168 = sub_1CA68EAB8(0, 0xD000000000000017, 0x80000001CA9DF210);
      sub_1CA39F318(v181, v28);

      (v143)(v189, v138);
      (v143)(v191, v138);
      *v166 = v168;
      goto LABEL_73;
    }

    sub_1CA39F318(v181, v28);

    v165 = v193[1].isa;
    (v165)(v50, v55);
    (v165)(v46, v55);
    v24 = v182;
  }

  v25 = &selRef_setWantedEncryptedSchemaVersion_;
LABEL_24:
  v56 = [v24 tombstoned];
  v57 = v190;
  if (v56)
  {
    v58 = objc_allocWithZone(WFDatabaseFetchedRecordResult);
    v59 = sub_1CA68EAB8(0, 0x20796C6C61636F6CLL, 0xEF646574656C6564);

    *v196 = v59;
LABEL_73:
    v124 = *MEMORY[0x1E69E9840];
    return;
  }

  if (![v40 allowCreatingConflicts] || (v60 = objc_msgSend(v24, v25[471]), v60 == objc_msgSend(v24, sel_lastSyncedHash)) || (v61 = objc_msgSend(objc_allocWithZone(WFWorkflowRecord), sel_initWithStorage_, v24)) == 0)
  {
    v39 = v24;
    goto LABEL_37;
  }

  v62 = v61;
  v63 = v195;
  v64 = [v40 reasonsForConflictWithLocalWorkflow:v61 remoteWorkflow:v195];
  v65 = sub_1CA94C658();

  if (!v65[2].isa)
  {

    [v40 mergeChangesFrom:v62 into:v63];

    v39 = v24;
LABEL_38:
    v82 = sub_1CA3F132C(v63, &selRef_name);
    v79 = v196;
    if (!v83)
    {
LABEL_58:
      v102 = 0;
      goto LABEL_59;
    }

    v84 = v82;
    v85 = v83;
    v86 = [v24 name];
    if (!v86)
    {
      goto LABEL_45;
    }

    v87 = v86;
    v88 = sub_1CA94C3A8();
    v90 = v89;

    if (v84 == v88 && v85 == v90)
    {
    }

    else
    {
      v92 = sub_1CA94D7F8();

      if ((v92 & 1) == 0)
      {
LABEL_45:
        v93 = sub_1CA94C368();

        v40 = v191;
        v94 = [v191 suggestedWorkflowNameForName_];

        v95 = sub_1CA94C3A8();
        v97 = v96;

        sub_1CA94C218();
        v98 = sub_1CA3F132C(v63, &selRef_name);
        if (v99)
        {
          if (v95 == v98 && v99 == v97)
          {
            swift_bridgeObjectRelease_n();
LABEL_57:

            goto LABEL_58;
          }

          v101 = sub_1CA94D7F8();

          if (v101)
          {
            goto LABEL_57;
          }
        }

        else
        {
        }

        sub_1CA68ED68(v95, v97, v63);
        v102 = 1;
LABEL_59:
        [v40 setIsSavingWorkflowRecordForSync_];
        v197[0] = 0;
        if ([v63 writeToStorage:v24 error:v197])
        {
          v103 = v197[0];
          [v40 setIsSavingWorkflowRecordForSync_];
          if ((v102 & 1) == 0)
          {
            [v24 setLastSyncedHash_];
            [v24 setLastSyncedEncryptedSchemaVersion_];
          }

          if (v39)
          {
            v104 = 2;
          }

          else
          {
            v104 = 1;
          }

          v105 = objc_allocWithZone(WFDatabaseFetchedRecordResult);
          v106 = sub_1CA68EAB8(v104, 0, 0);

          goto LABEL_72;
        }

        v107 = v197[0];
        sub_1CA948AD8();

        swift_willThrow();
        goto LABEL_67;
      }
    }

    v102 = 0;
    v40 = v191;
    goto LABEL_59;
  }

  v193 = v65;
  v194 = v62;
  v66 = *MEMORY[0x1E69E1090];
  v67 = v183;
  sub_1CA949C58();
  v68 = v188;
  sub_1CA94C218();
  v69 = sub_1CA949F68();
  v70 = sub_1CA94CC38();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = v24;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v197[0] = v73;
    *v72 = 136446210;
    *(v72 + 4) = sub_1CA26B54C(v189, v68, v197);
    _os_log_impl(&dword_1CA256000, v69, v70, "Found conflict for workflow with identifier %{public}s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x1CCAA4BF0](v73, -1, -1);
    v74 = v72;
    v24 = v71;
    MEMORY[0x1CCAA4BF0](v74, -1, -1);
  }

  (*(v57 + 8))(v67, v186);
  v75 = v195;
  v182 = v24;
  v76 = sub_1CA68EDCC(v24);
  if (v76)
  {
    v77 = sub_1CA2ED070(v76);

    if (v77)
    {
      v197[0] = 0;
      if ([v75 writeToStorage:v77 error:v197])
      {
        v78 = v197[0];
        v79 = v196;
        v80 = v182;
        v81 = v194;
LABEL_91:

        v197[0] = v193;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
        sub_1CA26E4D4();
        v173 = sub_1CA94C308();
        v175 = v174;

        v176 = objc_allocWithZone(WFDatabaseFetchedRecordResult);
        v106 = sub_1CA68EAB8(3, v173, v175);

LABEL_72:
        *v79 = v106;
        goto LABEL_73;
      }

      v170 = v197[0];

      sub_1CA948AD8();

      swift_willThrow();
LABEL_88:
      v24 = v182;
LABEL_67:

      goto LABEL_73;
    }
  }

  sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  v150 = sub_1CA948D28();
  v151 = *(v150 - 8);
  v152 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v154 = v177 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D18();
  v155 = sub_1CA948CC8();
  v157 = v156;
  (*(v151 + 8))(v154, v150);
  v158 = sub_1CA623D0C(v155, v157, 0);
  if ([v191 objectForDescriptor:v158 properties:0 createIfNecessary:1])
  {
    objc_opt_self();
    v159 = swift_dynamicCastObjCClassUnconditional();
    v197[0] = 0;
    v160 = v195;
    v161 = [v195 writeToStorage:v159 error:v197];
    v81 = v194;
    if (v161)
    {
      v162 = v197[0];
      [v159 setConflictOf_];
      v163 = sub_1CA68EF10(v160);
      if (v164 >> 60 == 15)
      {
        v77 = 0;
      }

      else
      {
        v171 = v163;
        v172 = v164;
        v77 = sub_1CA948BF8();
        sub_1CA39F318(v171, v172);
      }

      v79 = v196;
      v80 = v182;
      [v182 setCloudKitRecordMetadata_];

      swift_unknownObjectRelease();
      goto LABEL_91;
    }

    v169 = v197[0];

    sub_1CA948AD8();

    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_88;
  }

  __break(1u);
}

id sub_1CA68D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = [objc_opt_self() fetchRequest];
  sub_1CA25B3D0(0, &qword_1EC441AA8, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CA97EDF0;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1CA282DB4();
  *(v9 + 32) = 0x776F6C666B726F77;
  *(v9 + 40) = 0xEA00000000004449;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;
  sub_1CA94C218();
  v12 = sub_1CA94CBA8();
  [v8 setPredicate_];

  [v8 setFetchLimit_];
  if (a3)
  {
    sub_1CA360FF0(a3);
    v13 = sub_1CA94C648();
  }

  else
  {
    v13 = 0;
  }

  [v8 setPropertiesToFetch_];

  if (a4)
  {
    v14 = sub_1CA94C648();
  }

  else
  {
    v14 = 0;
  }

  [v8 setRelationshipKeyPathsForPrefetching_];

  v24[0] = 0;
  v15 = [v8 execute_];
  v16 = v24[0];
  if (v15)
  {
    v17 = v15;
    sub_1CA25B3D0(0, &unk_1EC441990, off_1E836E138);
    v18 = sub_1CA94C658();
    v19 = v16;

    if (sub_1CA25B410())
    {
      sub_1CA275D70(0, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1CCAA22D0](0, v18);
      }

      else
      {
        v20 = *(v18 + 32);
      }

      v16 = v20;
    }

    else
    {

      v16 = 0;
    }
  }

  else
  {
    v21 = v24[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

id sub_1CA68D80C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1CA68D518(a1, a2, 0, 0);
  v7 = v6;
  if (!v3 && !v6)
  {
    v8 = [v2 context];
    v7 = [objc_allocWithZone(WFCoreDataWorkflow) initWithContext_];

    sub_1CA68ED10(a1, a2, v7);
    v9 = sub_1CA94C368();
    [v2 objectWasCreated:v7 identifier:v9];
  }

  return v7;
}

id sub_1CA68DBC0(void *a1, void *a2)
{
  result = [a1 actions];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [a2 actions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444050, &unk_1CA9842E0);
  v7 = sub_1CA94C658();

  sub_1CA361420(v7);

  v8 = sub_1CA94C648();

  LOBYTE(v6) = [v5 isEqualToArray_];

  if (v6)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA26DADC();
    v9 = v10;
    v11 = *(v10 + 16);
    if (v11 >= *(v10 + 24) >> 1)
    {
      sub_1CA26DADC();
      v9 = v19;
    }

    *(v9 + 16) = v11 + 1;
    v12 = v9 + 16 * v11;
    *(v12 + 32) = 0x736E6F69746361;
    *(v12 + 40) = 0xE700000000000000;
  }

  result = [a1 importQuestions];
  if (!result)
  {
    goto LABEL_16;
  }

  v13 = result;
  v14 = [a2 importQuestions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
  v15 = sub_1CA94C658();

  sub_1CA361434(v15);

  v16 = sub_1CA94C648();

  LOBYTE(v14) = [v13 isEqualToArray_];

  if ((v14 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = *(v9 + 16);
      sub_1CA26DADC();
      v9 = v21;
    }

    v17 = *(v9 + 16);
    if (v17 >= *(v9 + 24) >> 1)
    {
      sub_1CA26DADC();
      v9 = v22;
    }

    *(v9 + 16) = v17 + 1;
    v18 = v9 + 16 * v17;
    *(v18 + 32) = 0xD000000000000010;
    *(v18 + 40) = 0x80000001CA9DF180;
  }

  return v9;
}

void sub_1CA68DEF0(void *a1, void *a2)
{
  v23 = sub_1CA949F78();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v8 = [a1 modificationDate];
  v9 = sub_1CA948CB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1CA948C78();

  v25 = a2;
  v13 = [a2 modificationDate];
  MEMORY[0x1EEE9AC00](v13);
  sub_1CA948C78();

  v14 = sub_1CA948C98();
  v15 = *(v10 + 8);
  v15(&v22 - v12, v9);
  v15(&v22 - v12, v9);
  if (v14 == 1)
  {
    v16 = *MEMORY[0x1E69E1090];
    sub_1CA949C58();
    v17 = sub_1CA949F68();
    v18 = sub_1CA94CC38();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1CA256000, v17, v18, "Fetched authorizations are older than local, will ignore them and overwrite them with local.", v19, 2u);
      MEMORY[0x1CCAA4BF0](v19, -1, -1);
    }

    (*(v4 + 8))(v7, v23);
    v20 = [v24 smartPromptPerWorkflowStates];
    sub_1CA25B3D0(0, &qword_1EC447F50, off_1E836F1D0);
    sub_1CA68EE68(&qword_1EC447F58, &qword_1EC447F50, off_1E836F1D0);
    sub_1CA94C8F8();

    v21 = sub_1CA94C8E8();

    [v25 setSmartPromptPerWorkflowStates_];
  }
}

void sub_1CA68E2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1CA68D518(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
  if (!v7)
  {
    v13 = v12;
    if (v12)
    {
      sub_1CA68EF70(a4, a5, v12);
      [v13 setLastSyncedHash_];
      [v13 setLastSyncedEncryptedSchemaVersion_];
    }

    else
    {
      type metadata accessor for WFDatabaseError(0);
      sub_1CA68EB2C(MEMORY[0x1E69E7CC0]);
      sub_1CA68EEB8();
      sub_1CA948AB8();
      swift_willThrow();
    }
  }
}

void sub_1CA68E56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = sub_1CA68D518(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
  if (!v5)
  {
    v8 = v7;
    if (v7)
    {
      if (a5 >> 60 == 15)
      {
        v9 = 0;
      }

      else
      {
        v9 = sub_1CA948BF8();
      }

      [v8 setCloudKitRecordMetadata_];
    }

    else
    {
      type metadata accessor for WFDatabaseError(0);
      sub_1CA68EB2C(MEMORY[0x1E69E7CC0]);
      sub_1CA68EEB8();
      sub_1CA948AB8();
      swift_willThrow();
    }
  }
}

uint64_t WFDatabase.desiredSyncOperation(forWorkflow:)()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_25();
  return sub_1CA3EFC40(0xD000000000000023, v0, v1, v2);
}

void sub_1CA68E7F4(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = sub_1CA68D518(a1, a2, &unk_1F4A0BFF0, &unk_1F4A0C050);
  v6 = v4;
  if (v4)
  {
    v7 = [v4 hiddenFromLibraryAndSync];
    if ((v7 & 1) == 0)
    {
      v8 = [v6 tombstoned];
      if (v8)
      {
        type metadata accessor for WFDatabaseRecordSyncOperation(v8);
        v9 = 2;
LABEL_10:
        v5 = sub_1CA3EB330(v9);

        goto LABEL_11;
      }

      v10 = [v6 conflictOf];
      if (v10)
      {
      }

      else
      {
        v11 = sub_1CA68EDCC(v6);
        if (!v11 || (v12 = sub_1CA68BAD4(v11), v7 = , v12))
        {
          v13 = [v6 syncHash];
          v14 = [v6 lastSyncedHash];
          type metadata accessor for WFDatabaseRecordSyncOperation(v14);
          v9 = v13 != v14;
          goto LABEL_10;
        }
      }
    }

    type metadata accessor for WFDatabaseRecordSyncOperation(v7);
    v9 = 0;
    goto LABEL_10;
  }

  type metadata accessor for WFDatabaseRecordSyncOperation(0);
  v5 = sub_1CA3EB330(0);
LABEL_11:
  *a3 = v5;
}

void sub_1CA68EA10(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[5];
  sub_1CA68E7F4(v1[3], v1[4], a1);
}

id sub_1CA68EAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1CA94C368();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithResultType:a1 reason:v5];

  return v6;
}

unint64_t sub_1CA68EB2C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444278, qword_1CA982C98);
  v2 = sub_1CA94D688();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1CA6102B4(v6, &v15, &unk_1EC447F60, &unk_1CA991B60);
    v7 = v15;
    v8 = v16;
    result = sub_1CA68EC80(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1CA2C0A20(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1CA68EC80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1CA94D918();
  sub_1CA94C458();
  v6 = sub_1CA94D968();

  return sub_1CA271C6C(a1, a2, v6);
}

void sub_1CA68ED10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();
  [a3 setWorkflowID_];
}

void sub_1CA68ED68(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();

  [a3 setName_];
}

uint64_t sub_1CA68EDCC(void *a1)
{
  v1 = [a1 conflicts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &unk_1EC441990, off_1E836E138);
  sub_1CA68EE68(&qword_1EC441988, &unk_1EC441990, off_1E836E138);
  v3 = sub_1CA94C8F8();

  return v3;
}

uint64_t sub_1CA68EE68(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA68EEB8()
{
  result = qword_1EC443698;
  if (!qword_1EC443698)
  {
    type metadata accessor for WFDatabaseError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443698);
  }

  return result;
}

uint64_t sub_1CA68EF10(void *a1)
{
  v1 = [a1 cloudKitRecordMetadata];
  if (v1)
  {
    v2 = v1;
    sub_1CA948C08();
  }

  return OUTLINED_FUNCTION_23();
}

void sub_1CA68EF70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA948BF8();
  [a3 setCloudKitRecordMetadata_];
}

id sub_1CA68F000()
{
  v140 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  v145 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v148 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = v11;
  v12 = &v131 - v148;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v144 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v147 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v146 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v131 - v146;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v145, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v145 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v143 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v141 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v142 = &v131;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v131 - v148;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v131 - v146;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v141, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v145;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v143;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 6579538;
  *(inited + 168) = 0xE300000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "backward.fill");
  *(inited + 214) = -4864;
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
  v143 = &v131;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v131 - v148;
  sub_1CA948D98();
  v48 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v131 - v146;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v145;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v143 = swift_allocObject();
  v139 = xmmword_1CA981360;
  *(v143 + 1) = xmmword_1CA981360;
  v142 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981370;
  *(v51 + 32) = @"Class";
  *(v51 + 40) = 0xD000000000000016;
  *(v51 + 48) = 0x80000001CA99C4A0;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"DefaultValue";
  *(v51 + 80) = 0x6E696E6E69676542;
  *(v51 + 88) = 0xE900000000000067;
  *(v51 + 104) = v52;
  *(v51 + 112) = @"Items";
  v141 = swift_allocObject();
  *(v141 + 1) = v139;
  v53 = @"Class";
  v54 = @"DefaultValue";
  v137 = v53;
  v136 = v54;
  v55 = @"Parameters";
  v56 = @"Items";
  v57 = sub_1CA94C438();
  v133 = v58;
  v134 = v57;
  v59 = sub_1CA94C438();
  v132 = v60;
  v135 = &v131;
  *&v139 = inited;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v131 - v148;
  sub_1CA948D98();
  v62 = v144;
  v63 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v146;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v134, v133, v59, v132, 0, 0, v61, &v131 - v64);
  v141[4] = v66;
  v67 = sub_1CA94C438();
  v133 = v68;
  v134 = v67;
  v69 = sub_1CA94C438();
  v132 = v70;
  v135 = &v131;
  MEMORY[0x1EEE9AC00](v69);
  v71 = v148;
  sub_1CA948D98();
  v72 = [v62 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v134, v133, v69, v132, 0, 0, &v131 - v71, &v131 - v64);
  v75 = v141;
  v141[5] = v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v51 + 120) = v75;
  *(v51 + 144) = v76;
  *(v51 + 152) = @"Key";
  *(v51 + 160) = 0xD000000000000012;
  *(v51 + 168) = 0x80000001CA9DF360;
  *(v51 + 184) = MEMORY[0x1E69E6158];
  *(v51 + 192) = @"Label";
  v77 = @"Key";
  v78 = @"Label";
  v132 = v77;
  v133 = v78;
  v79 = sub_1CA94C438();
  v135 = v80;
  v81 = sub_1CA94C438();
  v83 = v82;
  v141 = &v131;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v131 - v71;
  sub_1CA948D98();
  v85 = v144;
  v86 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v131 - v146;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v79, v135, v81, v83, 0, 0, v84, v87);
  *(v51 + 224) = v145;
  *(v51 + 200) = v89;
  _s3__C3KeyVMa_0(0);
  v135 = v90;
  v134 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v143[4] = sub_1CA2F864C();
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1CA981380;
  *(v91 + 32) = v137;
  *(v91 + 40) = 0xD00000000000001BLL;
  *(v91 + 48) = 0x80000001CA9A1EB0;
  v92 = MEMORY[0x1E69E6158];
  v93 = v136;
  *(v91 + 64) = MEMORY[0x1E69E6158];
  *(v91 + 72) = v93;
  *(v91 + 80) = 0x6C61636F4CLL;
  *(v91 + 88) = 0xE500000000000000;
  *(v91 + 104) = v92;
  *(v91 + 112) = @"DisallowedVariableTypes";
  v94 = v92;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v141 = v95;
  *(v91 + 120) = &unk_1F4A0C090;
  v96 = v132;
  *(v91 + 144) = v95;
  *(v91 + 152) = v96;
  strcpy((v91 + 160), "WFMediaRoute");
  *(v91 + 173) = 0;
  *(v91 + 174) = -5120;
  v97 = v133;
  *(v91 + 184) = v94;
  *(v91 + 192) = v97;
  v98 = @"DisallowedVariableTypes";
  v99 = sub_1CA94C438();
  v137 = v100;
  v101 = sub_1CA94C438();
  v103 = v102;
  v138 = &v131;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v131 - v148;
  sub_1CA948D98();
  v105 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v131 - v146;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v99, v137, v101, v103, 0, 0, v104, v106);
  *(v91 + 224) = v145;
  *(v91 + 200) = v108;
  v109 = sub_1CA94C368();
  *(v91 + 264) = MEMORY[0x1E69E6158];
  *(v91 + 232) = v109;
  *(v91 + 240) = 0x746E696F70646E45;
  *(v91 + 248) = 0xE800000000000000;
  sub_1CA94C1E8();
  v110 = sub_1CA2F864C();
  v111 = v143;
  v143[5] = v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v113 = v139;
  *(v139 + 320) = v111;
  v113[43] = v112;
  v113[44] = @"ParameterSummary";
  v114 = @"ParameterSummary";
  v115 = sub_1CA94C438();
  v117 = v116;
  v118 = sub_1CA94C438();
  v120 = v119;
  v145 = &v131;
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v131 - v148;
  sub_1CA948D98();
  v122 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v131 - v146;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v115, v117, v118, v120, 0, 0, v121, v123);
  v126 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v127 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v113[45] = v126;
  v113[48] = v127;
  v113[49] = @"RequiredResources";
  v113[53] = v141;
  v113[50] = &unk_1F4A0C0C0;
  v128 = @"RequiredResources";
  v129 = sub_1CA94C368();
  v113[58] = MEMORY[0x1E69E6158];
  v113[54] = v129;
  v113[55] = 1801675074;
  v113[56] = 0xE400000000000000;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA69002C()
{
  v129 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DF450;
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
  v136 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v137 = v12;
  v13 = v121 - v136;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v135 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v134 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v132 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v121 - v132;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v133 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v130 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v127 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v128 = v121;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v121 - v136;
  sub_1CA948D98();
  v33 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v121 - v132;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v127, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v133;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v130;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 0;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  *(inited + 240) = 1;
  *(inited + 264) = v38;
  *(inited + 272) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"LocallyProcessesData";
  v41 = @"Name";
  v42 = sub_1CA94C438();
  v44 = v43;
  v45 = sub_1CA94C438();
  v47 = v46;
  v130 = v121;
  MEMORY[0x1EEE9AC00](v45);
  v48 = v121 - v136;
  sub_1CA948D98();
  v49 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v121 - v132;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v42, v44, v45, v47, 0, 0, v48, v50);
  *(inited + 304) = v133;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x75736F6C63736944;
  *(v52 + 40) = 0xEF6C6576654C6572;
  *(v52 + 48) = 0x63696C627550;
  *(v52 + 56) = 0xE600000000000000;
  *(v52 + 72) = MEMORY[0x1E69E6158];
  *(v52 + 80) = 0x656C7069746C754DLL;
  *(v52 + 88) = 0xE800000000000000;
  *(v52 + 96) = 0;
  *(v52 + 120) = MEMORY[0x1E69E6370];
  *(v52 + 128) = 0x614E74757074754FLL;
  *(v52 + 136) = 0xEA0000000000656DLL;
  v53 = @"Output";
  v54 = sub_1CA94C438();
  v128 = v55;
  v56 = sub_1CA94C438();
  v58 = v57;
  v130 = v121;
  MEMORY[0x1EEE9AC00](v56);
  v59 = v121 - v136;
  sub_1CA948D98();
  v60 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = v121 - v132;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v52 + 144) = sub_1CA2F9F14(v54, v128, v56, v58, 0, 0, v59, v61);
  *(v52 + 168) = v133;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v128;
  *(v52 + 192) = &unk_1F4A0C130;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_1CA9813B0;
  v126 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_1CA981370;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000016;
  *(v66 + 48) = 0x80000001CA99C4A0;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"DefaultValue";
  strcpy((v66 + 80), "Current Song");
  *(v66 + 93) = 0;
  *(v66 + 94) = -5120;
  *(v66 + 104) = v63;
  *(v66 + 112) = @"Items";
  v130 = swift_allocObject();
  *(v130 + 1) = xmmword_1CA981360;
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"DefaultValue";
  v70 = @"Items";
  v71 = sub_1CA94C438();
  v123 = v72;
  v124 = v71;
  v73 = sub_1CA94C438();
  v122 = v74;
  v125 = v121;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v121 - v136;
  sub_1CA948D98();
  v76 = v135;
  v77 = [v135 bundleURL];
  v121[1] = v121;
  MEMORY[0x1EEE9AC00](v77);
  v131 = inited;
  v78 = v132;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v124, v123, v73, v122, 0, 0, v75, v121 - v78);
  v130[4] = v80;
  v81 = sub_1CA94C438();
  v123 = v82;
  v124 = v81;
  v122 = sub_1CA94C438();
  v84 = v83;
  v125 = v121;
  MEMORY[0x1EEE9AC00](v122);
  v85 = v136;
  sub_1CA948D98();
  v86 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v124, v123, v122, v84, 0, 0, v121 - v85, v121 - v78);
  v89 = v130;
  v130[5] = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v66 + 120) = v89;
  *(v66 + 144) = v90;
  *(v66 + 152) = @"Key";
  *(v66 + 160) = 0x7463656A627553;
  *(v66 + 168) = 0xE700000000000000;
  *(v66 + 184) = MEMORY[0x1E69E6158];
  *(v66 + 192) = @"Label";
  v91 = @"Key";
  v92 = @"Label";
  v93 = sub_1CA94C438();
  v125 = v94;
  v95 = sub_1CA94C438();
  v97 = v96;
  v130 = v121;
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948D98();
  v98 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v93, v125, v95, v97, 0, 0, v121 - v85, v121 - v78);
  *(v66 + 224) = v133;
  *(v66 + 200) = v100;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v101 = sub_1CA2F864C();
  v102 = v127;
  *(v127 + 32) = v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v104 = v131;
  v131[45] = v102;
  v104[48] = v103;
  v104[49] = @"ParameterSummary";
  v105 = @"ParameterSummary";
  v106 = sub_1CA94C438();
  v108 = v107;
  v109 = sub_1CA94C438();
  v111 = v110;
  v133 = v121;
  MEMORY[0x1EEE9AC00](v109);
  v112 = v121 - v136;
  sub_1CA948D98();
  v113 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v106, v108, v109, v111, 0, 0, v112, v121 - v78);
  v116 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v117 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v118 = v131;
  v131[50] = v116;
  v118[53] = v117;
  v118[54] = @"RequiredResources";
  v118[58] = v128;
  v118[55] = &unk_1F4A0C170;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v119 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA690FD0()
{
  v0 = sub_1CA949D18();
  v123 = *(v0 - 8);
  v124 = v0;
  v1 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v122 = v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x6F72447269414657;
  *(inited + 48) = 0xEF6E6F6974634170;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v131 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v132 = v15;
  v16 = v114 - v131;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v130 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v128 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v129 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v114 - v129;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v127 = v23;
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"Description";
  v126 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v121 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v119 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v120 = v114;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v114 - v131;
  sub_1CA948D98();
  v33 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v114 - v129;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v119, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v127;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v126;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v37;
  *(inited + 152) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A0C1B0;
  *(inited + 184) = v38;
  *(inited + 192) = @"IconName";
  v39 = v38;
  v126 = v38;
  *(inited + 200) = 0x706F7244726941;
  *(inited + 208) = 0xE700000000000000;
  v40 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x7475706E494657;
  *(v41 + 104) = 0xE700000000000000;
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  *(v41 + 216) = v39;
  *(v41 + 184) = 0xE500000000000000;
  *(v41 + 192) = &unk_1F4A0C1E0;
  v43 = @"DisabledOnPlatforms";
  v44 = @"IconName";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v46;
  *(inited + 264) = v47;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v42;
  *(inited + 312) = @"Name";
  v48 = @"InputPassthrough";
  v49 = @"Name";
  v50 = sub_1CA94C438();
  v52 = v51;
  v53 = sub_1CA94C438();
  v55 = v54;
  v120 = v114;
  MEMORY[0x1EEE9AC00](v53);
  v56 = v114 - v131;
  sub_1CA948D98();
  v57 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = v114 - v129;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v50, v52, v53, v55, 0, 0, v56, v58);
  *(inited + 344) = v127;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v120 = swift_allocObject();
  *(v120 + 1) = xmmword_1CA9813B0;
  v119 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1CA981370;
  *(v60 + 32) = @"Class";
  *(v60 + 40) = 0xD000000000000019;
  *(v60 + 48) = 0x80000001CA99B030;
  v61 = MEMORY[0x1E69E6158];
  *(v60 + 64) = MEMORY[0x1E69E6158];
  *(v60 + 72) = @"Key";
  *(v60 + 80) = 0x7475706E494657;
  *(v60 + 88) = 0xE700000000000000;
  *(v60 + 104) = v61;
  *(v60 + 112) = @"Label";
  v62 = @"Parameters";
  v63 = @"Class";
  v64 = @"Key";
  v65 = @"Label";
  v66 = sub_1CA94C438();
  v116 = v67;
  v117 = v66;
  v68 = sub_1CA94C438();
  v115 = v69;
  v118 = v114;
  MEMORY[0x1EEE9AC00](v68);
  v70 = v114 - v131;
  sub_1CA948D98();
  v71 = v130;
  v72 = [v130 bundleURL];
  v114[1] = v114;
  MEMORY[0x1EEE9AC00](v72);
  v73 = v129;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 120) = sub_1CA2F9F14(v117, v116, v68, v115, 0, 0, v70, v114 - v73);
  v75 = v127;
  *(v60 + 144) = v127;
  *(v60 + 152) = @"Placeholder";
  v76 = @"Placeholder";
  v77 = sub_1CA94C438();
  v116 = v78;
  v117 = v77;
  v115 = sub_1CA94C438();
  v80 = v79;
  v118 = v114;
  MEMORY[0x1EEE9AC00](v115);
  v81 = v114 - v131;
  sub_1CA948D98();
  v82 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 160) = sub_1CA2F9F14(v117, v116, v115, v80, 0, 0, v81, v114 - v73);
  *(v60 + 184) = v75;
  *(v60 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v84 = swift_allocObject();
  *(v84 + 16) = v121;
  v85 = @"PreferredTypes";
  v86 = v122;
  sub_1CA949CA8();
  v87 = sub_1CA949C68();
  v89 = v88;
  (*(v123 + 8))(v86, v124);
  *(v84 + 32) = v87;
  *(v84 + 40) = v89;
  *(v60 + 224) = v126;
  *(v60 + 200) = v84;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v90 = sub_1CA2F864C();
  v91 = v120;
  v120[4] = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v91;
  *(inited + 384) = v92;
  *(inited + 392) = @"ParameterSummary";
  v93 = @"ParameterSummary";
  v94 = sub_1CA94C438();
  v96 = v95;
  v97 = sub_1CA94C438();
  v99 = v98;
  v127 = v114;
  MEMORY[0x1EEE9AC00](v97);
  v100 = v114 - v131;
  sub_1CA948D98();
  v101 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = v114 - v129;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  v105 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v105;
  *(inited + 424) = v106;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F4A0C210;
  v107 = v126;
  *(inited + 464) = v126;
  *(inited + 472) = @"UserInterfaceClasses";
  v108 = @"RequiredResources";
  v109 = @"UserInterfaceClasses";
  v110 = sub_1CA94C1E8();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 480) = v110;
  *(inited + 504) = v111;
  *(inited + 512) = @"UserInterfaces";
  *(inited + 544) = v107;
  *(inited + 520) = &unk_1F4A0C2A0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v112 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA691E3C()
{
  v55 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9DF750;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v54 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v53 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v9 = sub_1CA94C438();
  v56 = v10;
  v57 = v9;
  v11 = sub_1CA94C438();
  v48 = v12;
  v49 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v48 - v52;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v50 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v48 - v50;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v57, v56, v49, v48, 0, 0, v15, v19);
  v57 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v57;
  *(v6 + 40) = v21;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v22 = v53;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v22;
  *(inited + 152) = @"Discoverable";
  v23 = MEMORY[0x1E69E6370];
  *(inited + 160) = 0;
  *(inited + 184) = v23;
  *(inited + 192) = @"InputPassthrough";
  *(inited + 200) = 0;
  *(inited + 224) = v23;
  *(inited + 232) = @"Name";
  v24 = @"Discoverable";
  v25 = @"InputPassthrough";
  v26 = @"Name";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v56 = &v48;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v48 - v52;
  sub_1CA948D98();
  v34 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v48 - v50;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v35);
  v38 = v57;
  *(inited + 240) = v37;
  *(inited + 264) = v38;
  *(inited + 272) = @"Output";
  v39 = @"Output";
  *(inited + 280) = sub_1CA94C1E8();
  v40 = v54;
  *(inited + 304) = v54;
  *(inited + 312) = @"Parameters";
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 320) = MEMORY[0x1E69E7CC0];
  *(inited + 344) = v41;
  *(inited + 352) = @"RequiredResources";
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 360) = &unk_1F4A0C350;
  *(inited + 384) = v42;
  *(inited + 392) = @"UserInterfaceClasses";
  v43 = @"Parameters";
  v44 = @"RequiredResources";
  v45 = @"UserInterfaceClasses";
  v46 = sub_1CA94C1E8();
  *(inited + 424) = v40;
  *(inited + 400) = v46;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA692498()
{
  v126 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DF7F0;
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
  v133 = v12;
  v134 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v120 - v134;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v132 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v130 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v131 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v120 - v131;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v128 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  *&v127 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v27 = sub_1CA94C438();
  v123 = v28;
  *&v124 = v27;
  v122 = sub_1CA94C438();
  v30 = v29;
  v125 = &v120;
  MEMORY[0x1EEE9AC00](v122);
  v31 = &v120 - v134;
  sub_1CA948D98();
  v32 = v132;
  v33 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v129 = inited;
  v34 = v131;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v124, v123, v122, v30, 0, 0, v31, &v120 - v34);
  v36 = v128;
  *(v24 + 64) = v128;
  *(v24 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438();
  v123 = v39;
  *&v124 = v38;
  v122 = sub_1CA94C438();
  v41 = v40;
  v125 = &v120;
  MEMORY[0x1EEE9AC00](v122);
  v42 = &v120 - v134;
  sub_1CA948D98();
  v43 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v124, v123, v122, v41, 0, 0, v42, &v120 - v34);
  *(v24 + 104) = v36;
  *(v24 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v46 = v127;
  v47 = sub_1CA6B3784();
  v48 = v129;
  v129[20] = v47;
  v48[23] = v46;
  v48[24] = @"Input";
  *&v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v127 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 1;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0x7475706E494657;
  *(v49 + 104) = 0xE700000000000000;
  *(v49 + 120) = MEMORY[0x1E69E6158];
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 1;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v123;
  *(v49 + 192) = &unk_1F4A0C400;
  v51 = @"Input";
  v52 = sub_1CA94C1E8();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v125 = v53;
  v48[25] = v52;
  v48[28] = v53;
  v48[29] = @"Name";
  v54 = @"Name";
  v121 = sub_1CA94C438();
  v56 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  v122 = &v120;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v120 - v134;
  sub_1CA948D98();
  v61 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v120 - v131;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v121, v56, v57, v59, 0, 0, v60, v62);
  v66 = v128;
  v65 = v129;
  v129[30] = v64;
  v65[33] = v66;
  v65[34] = @"Output";
  v67 = swift_initStackObject();
  *(v67 + 16) = v127;
  *(v67 + 32) = 0x75736F6C63736944;
  *(v67 + 40) = 0xEF6C6576654C6572;
  *(v67 + 48) = 0x63696C627550;
  *(v67 + 56) = 0xE600000000000000;
  *(v67 + 72) = MEMORY[0x1E69E6158];
  *(v67 + 80) = 0x656C7069746C754DLL;
  *(v67 + 88) = 0xE800000000000000;
  *(v67 + 96) = 0;
  *(v67 + 120) = MEMORY[0x1E69E6370];
  *(v67 + 128) = 0x614E74757074754FLL;
  *(v67 + 136) = 0xEA0000000000656DLL;
  v68 = @"Output";
  v69 = sub_1CA94C438();
  v121 = v70;
  v122 = v69;
  v120 = sub_1CA94C438();
  v72 = v71;
  *&v124 = &v120;
  MEMORY[0x1EEE9AC00](v120);
  v73 = &v120 - v134;
  sub_1CA948D98();
  v74 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = v131;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v122, v121, v120, v72, 0, 0, v73, &v120 - v75);
  v78 = v123;
  *(v67 + 144) = v77;
  *(v67 + 168) = v66;
  *(v67 + 176) = 0x7365707954;
  *(v67 + 216) = v78;
  *(v67 + 184) = 0xE500000000000000;
  *(v67 + 192) = &unk_1F4A0C430;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v129;
  v129[35] = v80;
  v81[38] = v125;
  v81[39] = @"Parameters";
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v122 = swift_allocObject();
  v124 = xmmword_1CA9813B0;
  *(v122 + 1) = xmmword_1CA9813B0;
  v121 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_allocObject();
  *(v82 + 16) = v127;
  *(v82 + 32) = @"Class";
  *(v82 + 40) = 0xD000000000000015;
  *(v82 + 48) = 0x80000001CA99B1E0;
  *(v82 + 64) = v79;
  *(v82 + 72) = @"FilePickerSupportedTypes";
  *(v82 + 80) = &unk_1F4A0C460;
  *(v82 + 104) = v78;
  *(v82 + 112) = @"Key";
  *(v82 + 120) = 0x7475706E494657;
  *(v82 + 128) = 0xE700000000000000;
  *(v82 + 144) = v79;
  *(v82 + 152) = @"Label";
  v83 = @"Parameters";
  v84 = @"Class";
  v85 = @"FilePickerSupportedTypes";
  v86 = @"Key";
  v87 = @"Label";
  v88 = sub_1CA94C438();
  v123 = v89;
  v90 = sub_1CA94C438();
  v92 = v91;
  *&v127 = &v120;
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v120 - v134;
  sub_1CA948D98();
  v94 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v88, v123, v90, v92, 0, 0, v93, &v120 - v75);
  *(v82 + 184) = v128;
  *(v82 + 160) = v96;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v97 = sub_1CA2F864C();
  v98 = v122;
  v122[4] = v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v100 = v129;
  v129[40] = v98;
  v100[43] = v99;
  v100[44] = @"ParameterSummary";
  v101 = @"ParameterSummary";
  v102 = sub_1CA94C438();
  v104 = v103;
  v105 = sub_1CA94C438();
  v107 = v106;
  v128 = &v120;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v120 - v134;
  sub_1CA948D98();
  v109 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v120 - v131;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v102, v104, v105, v107, 0, 0, v108, v110);
  v113 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v114 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v100[45] = v113;
  v100[48] = v114;
  v100[49] = @"RequiredResources";
  v115 = swift_allocObject();
  *(v115 + 16) = v124;
  v135 = 2;
  v136 = 0;
  v116 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v117 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v135);
  *(v115 + 32) = v118;
  v100[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v100[50] = v115;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA693404()
{
  v504 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9DF950;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v503 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v508 = inited;
  v526 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  v507 = xmmword_1CA97EDF0;
  *(v6 + 16) = xmmword_1CA97EDF0;
  *(v6 + 32) = @"DescriptionResult";
  v7 = @"Description";
  v8 = @"DescriptionResult";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v528 = v17;
  v531 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v491 - v531;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v532 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v530 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v529 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v491 - v529;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 40) = v24;
  *(v6 + 64) = v25;
  *(v6 + 72) = @"DescriptionSummary";
  v527 = v25;
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v524 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v525 = v491;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v491 - v531;
  sub_1CA948D98();
  v33 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v491 - v529;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v524, v29, v31, 0, 0, v32, v34);
  *(v6 + 104) = v25;
  *(v6 + 80) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v526;
  v38 = sub_1CA6B3784();
  v39 = v508;
  v508[15] = v38;
  v39[18] = v37;
  v39[19] = @"Input";
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v514 = xmmword_1CA981350;
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
  *(v40 + 120) = MEMORY[0x1E69E6158];
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  *&v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v521;
  *(v40 + 192) = &unk_1F4A0C510;
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v526 = v44;
  v39[20] = v43;
  v39[23] = v44;
  v39[24] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v523 = v47;
  v524 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v525 = v491;
  MEMORY[0x1EEE9AC00](v48);
  v51 = v531;
  sub_1CA948D98();
  v52 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v491 - v529;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39[25] = sub_1CA2F9F14(v524, v523, v48, v50, 0, 0, v491 - v51, v53);
  v55 = v527;
  v39[28] = v527;
  v39[29] = @"Output";
  v56 = swift_initStackObject();
  *(v56 + 16) = v514;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = MEMORY[0x1E69E6158];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  *(v56 + 96) = 0;
  *(v56 + 120) = MEMORY[0x1E69E6370];
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438();
  v523 = v59;
  v524 = v58;
  v60 = sub_1CA94C438();
  v522 = v61;
  v525 = v491;
  MEMORY[0x1EEE9AC00](v60);
  v62 = v491 - v51;
  sub_1CA948D98();
  v63 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v491 - v529;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 144) = sub_1CA2F9F14(v524, v523, v60, v522, 0, 0, v62, v64);
  *(v56 + 168) = v55;
  *(v56 + 176) = 0x7365707954;
  v66 = v521;
  *(v56 + 216) = v521;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 192) = &unk_1F4A0C560;
  v67 = MEMORY[0x1E69E6158];
  v39[30] = sub_1CA94C1E8();
  v39[33] = v526;
  v39[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v523 = swift_allocObject();
  *(v523 + 16) = xmmword_1CA991B70;
  v524 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  v512 = xmmword_1CA981370;
  *(v68 + 16) = xmmword_1CA981370;
  v69 = @"Parameters";
  *(v68 + 32) = sub_1CA94C368();
  *(v68 + 40) = 0xD000000000000012;
  *(v68 + 48) = 0x80000001CA99AAC0;
  *(v68 + 64) = v67;
  *(v68 + 72) = @"Class";
  *(v68 + 80) = 0xD000000000000018;
  *(v68 + 88) = 0x80000001CA9A3950;
  *(v68 + 104) = v67;
  *(v68 + 112) = @"DisallowedVariableTypes";
  *(v68 + 120) = &unk_1F4A0C590;
  *(v68 + 144) = v66;
  *(v68 + 152) = @"Key";
  *(v68 + 160) = 0x6E756F6363414657;
  *(v68 + 168) = 0xE900000000000074;
  *(v68 + 184) = v67;
  *(v68 + 192) = @"Label";
  v70 = @"Key";
  v71 = @"Label";
  v72 = @"Class";
  v73 = @"DisallowedVariableTypes";
  v74 = v70;
  v75 = v71;
  v76 = v72;
  v518 = v73;
  v517 = v74;
  v519 = v75;
  v516 = v76;
  v77 = sub_1CA94C438();
  v79 = v78;
  v80 = sub_1CA94C438();
  v82 = v81;
  v526 = v491;
  MEMORY[0x1EEE9AC00](v80);
  v83 = v491 - v531;
  sub_1CA948D98();
  v84 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = v491 - v529;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v77, v79, v80, v82, 0, 0, v83, v85);
  *(v68 + 224) = v527;
  *(v68 + 200) = v87;
  _s3__C3KeyVMa_0(0);
  v526 = v88;
  v525 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v523 + 32) = sub_1CA2F864C();
  v89 = swift_allocObject();
  *(v89 + 16) = v514;
  v90 = v516;
  v91 = v517;
  *(v89 + 32) = v516;
  *(v89 + 40) = 0xD00000000000001DLL;
  v509 = 0x80000001CA99FB10;
  v510 = 0xD00000000000001DLL;
  *(v89 + 48) = 0x80000001CA99FB10;
  v92 = MEMORY[0x1E69E6158];
  v93 = v518;
  v94 = v519;
  *(v89 + 64) = MEMORY[0x1E69E6158];
  *(v89 + 72) = v93;
  *(v89 + 80) = &unk_1F4A0C5D0;
  *(v89 + 104) = v521;
  *(v89 + 112) = v91;
  *(v89 + 120) = 1735355458;
  *(v89 + 128) = 0xE400000000000000;
  *(v89 + 144) = v92;
  *(v89 + 152) = v94;
  v518 = v90;
  v517 = v91;
  *&v521 = v94;
  v95 = sub_1CA94C438();
  v97 = v96;
  v98 = sub_1CA94C438();
  v100 = v99;
  v519 = v491;
  MEMORY[0x1EEE9AC00](v98);
  v101 = v491 - v531;
  sub_1CA948D98();
  v102 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v491 - v529;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v103);
  *(v89 + 184) = v527;
  *(v89 + 160) = v105;
  sub_1CA94C1E8();
  *(v523 + 40) = sub_1CA2F864C();
  v106 = swift_allocObject();
  *(v106 + 16) = v512;
  v511 = 0xD000000000000014;
  v108 = v517;
  v107 = v518;
  *(v106 + 32) = v518;
  *(v106 + 40) = 0xD000000000000014;
  v506 = 0x80000001CA99B500;
  *(v106 + 48) = 0x80000001CA99B500;
  v109 = MEMORY[0x1E69E6158];
  *(v106 + 64) = MEMORY[0x1E69E6158];
  *(v106 + 72) = v108;
  *(v106 + 80) = 0x656C746954;
  *(v106 + 88) = 0xE500000000000000;
  v110 = v521;
  *(v106 + 104) = v109;
  *(v106 + 112) = v110;
  v516 = v107;
  v515 = v108;
  v517 = v110;
  v111 = sub_1CA94C438();
  v518 = v112;
  v519 = v111;
  *&v513 = sub_1CA94C438();
  v114 = v113;
  *&v521 = v491;
  MEMORY[0x1EEE9AC00](v513);
  v115 = v491 - v531;
  sub_1CA948D98();
  v116 = v532;
  v117 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = v529;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 120) = sub_1CA2F9F14(v519, v518, v513, v114, 0, 0, v115, v491 - v118);
  v120 = v527;
  *(v106 + 144) = v527;
  *(v106 + 152) = @"Placeholder";
  v519 = @"Placeholder";
  v518 = sub_1CA94C438();
  *&v513 = v121;
  v122 = sub_1CA94C438();
  v124 = v123;
  *&v521 = v491;
  MEMORY[0x1EEE9AC00](v122);
  v125 = v491 - v531;
  sub_1CA948D98();
  v126 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 160) = sub_1CA2F9F14(v518, v513, v122, v124, 0, 0, v125, v491 - v118);
  *(v106 + 184) = v120;
  *(v106 + 192) = @"TextAlignment";
  v128 = MEMORY[0x1E69E6158];
  *(v106 + 224) = MEMORY[0x1E69E6158];
  *(v106 + 200) = 0x7468676952;
  *(v106 + 208) = 0xE500000000000000;
  v518 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v523 + 48) = sub_1CA2F864C();
  v129 = swift_allocObject();
  v521 = xmmword_1CA9813C0;
  *(v129 + 16) = xmmword_1CA9813C0;
  v131 = v515;
  v130 = v516;
  v132 = v509;
  v133 = v510;
  *(v129 + 32) = v516;
  *(v129 + 40) = v133;
  *(v129 + 48) = v132;
  *(v129 + 64) = v128;
  *(v129 + 72) = v131;
  *(v129 + 80) = 1701869908;
  *(v129 + 88) = 0xE400000000000000;
  *(v129 + 104) = v128;
  v134 = v517;
  *(v129 + 112) = v517;
  v516 = v130;
  v515 = v131;
  v517 = v134;
  v135 = sub_1CA94C438();
  v137 = v136;
  v138 = sub_1CA94C438();
  v140 = v139;
  *&v513 = v491;
  MEMORY[0x1EEE9AC00](v138);
  v141 = v491 - v531;
  sub_1CA948D98();
  v142 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = v491 - v529;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v135, v137, v138, v140, 0, 0, v141, v143);
  *(v129 + 144) = v527;
  *(v129 + 120) = v145;
  sub_1CA94C1E8();
  *(v523 + 56) = sub_1CA2F864C();
  v146 = swift_allocObject();
  *(v146 + 16) = v521;
  v148 = v515;
  v147 = v516;
  v149 = v509;
  v150 = v510;
  *(v146 + 32) = v516;
  *(v146 + 40) = v150;
  *(v146 + 48) = v149;
  v151 = MEMORY[0x1E69E6158];
  *(v146 + 64) = MEMORY[0x1E69E6158];
  *(v146 + 72) = v148;
  *(v146 + 80) = 0x74616D726F46;
  *(v146 + 88) = 0xE600000000000000;
  v152 = v517;
  *(v146 + 104) = v151;
  *(v146 + 112) = v152;
  v516 = v147;
  v515 = v148;
  v517 = v152;
  v153 = sub_1CA94C438();
  v505 = v154;
  v155 = sub_1CA94C438();
  v157 = v156;
  *&v513 = v491;
  MEMORY[0x1EEE9AC00](v155);
  v158 = v491 - v531;
  sub_1CA948D98();
  v159 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = v491 - v529;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v153, v505, v155, v157, 0, 0, v158, v160);
  *(v146 + 144) = v527;
  *(v146 + 120) = v162;
  sub_1CA94C1E8();
  v163 = sub_1CA2F864C();
  v164 = v523;
  *(v523 + 64) = v163;
  v165 = swift_allocObject();
  *(v165 + 16) = v521;
  v167 = v515;
  v166 = v516;
  v168 = v509;
  v169 = v510;
  *(v165 + 32) = v516;
  *(v165 + 40) = v169;
  *(v165 + 48) = v168;
  v170 = MEMORY[0x1E69E6158];
  *(v165 + 64) = MEMORY[0x1E69E6158];
  *(v165 + 72) = v167;
  *(v165 + 80) = 0x737574617453;
  *(v165 + 88) = 0xE600000000000000;
  v171 = v517;
  *(v165 + 104) = v170;
  *(v165 + 112) = v171;
  *&v513 = v166;
  v505 = v167;
  v515 = v171;
  v172 = sub_1CA94C438();
  v516 = v173;
  v174 = sub_1CA94C438();
  v176 = v175;
  v517 = v491;
  MEMORY[0x1EEE9AC00](v174);
  v177 = v491 - v531;
  sub_1CA948D98();
  v178 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  v179 = v491 - v529;
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v181 = sub_1CA2F9F14(v172, v516, v174, v176, 0, 0, v177, v179);
  *(v165 + 144) = v527;
  *(v165 + 120) = v181;
  sub_1CA94C1E8();
  *(v164 + 72) = sub_1CA2F864C();
  v182 = swift_allocObject();
  *(v182 + 16) = v512;
  v183 = v513;
  *(v182 + 32) = v513;
  *(v182 + 40) = 0xD00000000000001ALL;
  v516 = 0x80000001CA9DFAC0;
  v517 = 0xD00000000000001ALL;
  *(v182 + 48) = 0x80000001CA9DFAC0;
  v184 = MEMORY[0x1E69E6158];
  v185 = v505;
  *(v182 + 64) = MEMORY[0x1E69E6158];
  *(v182 + 72) = v185;
  *(v182 + 80) = 0x69726F6765746143;
  *(v182 + 88) = 0xEA00000000007365;
  v186 = v515;
  *(v182 + 104) = v184;
  *(v182 + 112) = v186;
  *&v513 = v183;
  v505 = v185;
  v515 = v186;
  v501 = sub_1CA94C438();
  *&v500 = v187;
  v188 = sub_1CA94C438();
  v499 = v189;
  v502 = v491;
  MEMORY[0x1EEE9AC00](v188);
  v190 = v491 - v531;
  sub_1CA948D98();
  v191 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = v529;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v182 + 120) = sub_1CA2F9F14(v501, v500, v188, v499, 0, 0, v190, v491 - v192);
  v194 = v527;
  v195 = v519;
  *(v182 + 144) = v527;
  *(v182 + 152) = v195;
  v519 = v195;
  v501 = sub_1CA94C438();
  *&v500 = v196;
  v197 = sub_1CA94C438();
  v199 = v198;
  v502 = v491;
  MEMORY[0x1EEE9AC00](v197);
  v200 = v491 - v531;
  sub_1CA948D98();
  v201 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v182 + 160) = sub_1CA2F9F14(v501, v500, v197, v199, 0, 0, v200, v491 - v192);
  v203 = v518;
  *(v182 + 184) = v194;
  *(v182 + 192) = v203;
  v204 = MEMORY[0x1E69E6158];
  *(v182 + 224) = MEMORY[0x1E69E6158];
  *(v182 + 200) = 0x7468676952;
  *(v182 + 208) = 0xE500000000000000;
  v518 = v203;
  sub_1CA94C1E8();
  *(v523 + 80) = sub_1CA2F864C();
  v205 = swift_allocObject();
  *(v205 + 16) = v512;
  v206 = v513;
  v207 = v516;
  v208 = v517;
  *(v205 + 32) = v513;
  *(v205 + 40) = v208;
  *(v205 + 48) = v207;
  v209 = v505;
  *(v205 + 64) = v204;
  *(v205 + 72) = v209;
  *(v205 + 80) = 1936154964;
  *(v205 + 88) = 0xE400000000000000;
  *(v205 + 104) = v204;
  v210 = v515;
  *(v205 + 112) = v515;
  v516 = v206;
  *&v513 = v209;
  v517 = v210;
  v505 = sub_1CA94C438();
  v502 = v211;
  v501 = sub_1CA94C438();
  v213 = v212;
  v515 = v491;
  MEMORY[0x1EEE9AC00](v501);
  v214 = v491 - v531;
  sub_1CA948D98();
  v215 = v532;
  v216 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v216);
  v217 = v491 - v529;
  sub_1CA948B68();

  v218 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v205 + 120) = sub_1CA2F9F14(v505, v502, v501, v213, 0, 0, v214, v217);
  v219 = v527;
  v220 = v519;
  *(v205 + 144) = v527;
  *(v205 + 152) = v220;
  v501 = v220;
  v515 = sub_1CA94C438();
  v505 = v221;
  v222 = sub_1CA94C438();
  v224 = v223;
  v519 = v491;
  MEMORY[0x1EEE9AC00](v222);
  v225 = v491 - v531;
  sub_1CA948D98();
  v226 = [v215 bundleURL];
  MEMORY[0x1EEE9AC00](v226);
  v227 = v491 - v529;
  sub_1CA948B68();

  v228 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v229 = sub_1CA2F9F14(v515, v505, v222, v224, 0, 0, v225, v227);
  v230 = v518;
  *(v205 + 160) = v229;
  *(v205 + 184) = v219;
  *(v205 + 192) = v230;
  v231 = MEMORY[0x1E69E6158];
  *(v205 + 224) = MEMORY[0x1E69E6158];
  *(v205 + 200) = 0x7468676952;
  *(v205 + 208) = 0xE500000000000000;
  v505 = v230;
  sub_1CA94C1E8();
  *(v523 + 88) = sub_1CA2F864C();
  v232 = swift_allocObject();
  *(v232 + 16) = v521;
  v502 = 0x80000001CA9B2600;
  v233 = v516;
  v234 = v511;
  *(v232 + 32) = v516;
  *(v232 + 40) = v234;
  *(v232 + 48) = 0x80000001CA9B2600;
  v235 = v513;
  *(v232 + 64) = v231;
  *(v232 + 72) = v235;
  *(v232 + 80) = 0x6465636E61766441;
  *(v232 + 88) = 0xE800000000000000;
  *(v232 + 104) = v231;
  v236 = v517;
  *(v232 + 112) = v517;
  v518 = v233;
  v516 = v235;
  v519 = v236;
  v237 = sub_1CA94C438();
  v515 = v238;
  v239 = sub_1CA94C438();
  v241 = v240;
  v517 = v491;
  MEMORY[0x1EEE9AC00](v239);
  v242 = v491 - v531;
  sub_1CA948D98();
  v243 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v243);
  v244 = v491 - v529;
  sub_1CA948B68();

  v245 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v246 = sub_1CA2F9F14(v237, v515, v239, v241, 0, 0, v242, v244);
  *(v232 + 144) = v527;
  *(v232 + 120) = v246;
  sub_1CA94C1E8();
  *(v523 + 96) = sub_1CA2F864C();
  v247 = swift_allocObject();
  *(v247 + 16) = v514;
  v248 = v518;
  *(v247 + 32) = v518;
  *(v247 + 40) = 0xD000000000000011;
  *(v247 + 48) = 0x80000001CA99E620;
  v249 = MEMORY[0x1E69E6158];
  v250 = v516;
  *(v247 + 64) = MEMORY[0x1E69E6158];
  *(v247 + 72) = v250;
  strcpy((v247 + 80), "AllowComments");
  *(v247 + 94) = -4864;
  v251 = v519;
  *(v247 + 104) = v249;
  *(v247 + 112) = v251;
  v499 = v248;
  v497 = v250;
  v498 = v251;
  v252 = sub_1CA94C438();
  v254 = v253;
  v255 = sub_1CA94C438();
  v257 = v256;
  v519 = v491;
  MEMORY[0x1EEE9AC00](v255);
  v258 = v491 - v531;
  sub_1CA948D98();
  v259 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v259);
  v260 = v491 - v529;
  sub_1CA948B68();

  v261 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v247 + 120) = sub_1CA2F9F14(v252, v254, v255, v257, 0, 0, v258, v260);
  *(v247 + 144) = v527;
  *(v247 + 152) = @"RequiredResources";
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v262 = swift_allocObject();
  v513 = xmmword_1CA981310;
  *(v262 + 16) = xmmword_1CA981310;
  v263 = swift_allocObject();
  *(v263 + 16) = v521;
  strcpy((v263 + 32), "WFParameterKey");
  *(v263 + 47) = -18;
  *(v263 + 48) = 0x6465636E61766441;
  *(v263 + 56) = 0xE800000000000000;
  v517 = 0x80000001CA993570;
  v264 = MEMORY[0x1E69E6158];
  *(v263 + 72) = MEMORY[0x1E69E6158];
  *(v263 + 80) = 0xD000000000000010;
  *(v263 + 88) = 0x80000001CA993570;
  *(v263 + 96) = 1;
  *(v263 + 120) = MEMORY[0x1E69E6370];
  *(v263 + 128) = 0x72756F7365524657;
  *(v263 + 168) = v264;
  v515 = 0xD00000000000001BLL;
  v516 = 0x80000001CA993590;
  *(v263 + 136) = 0xEF7373616C436563;
  *(v263 + 144) = 0xD00000000000001BLL;
  *(v263 + 152) = 0x80000001CA993590;
  v496 = @"RequiredResources";
  *(v262 + 32) = sub_1CA94C1E8();
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v247 + 184) = v518;
  *(v247 + 160) = v262;
  sub_1CA94C1E8();
  *(v523 + 104) = sub_1CA2F864C();
  v265 = swift_allocObject();
  v500 = xmmword_1CA981380;
  *(v265 + 16) = xmmword_1CA981380;
  v267 = v498;
  v266 = v499;
  v268 = v511;
  *(v265 + 32) = v499;
  *(v265 + 40) = v268;
  *(v265 + 48) = v506;
  v269 = v497;
  *(v265 + 64) = v264;
  *(v265 + 72) = v269;
  *(v265 + 80) = 1735748691;
  *(v265 + 88) = 0xE400000000000000;
  *(v265 + 104) = v264;
  *(v265 + 112) = v267;
  v499 = v266;
  v497 = v269;
  v498 = v267;
  v270 = sub_1CA94C438();
  v493 = v271;
  v494 = v270;
  v492 = sub_1CA94C438();
  v273 = v272;
  v495 = v491;
  MEMORY[0x1EEE9AC00](v492);
  v274 = v531;
  sub_1CA948D98();
  v275 = v532;
  v276 = [v532 bundleURL];
  v491[1] = v491;
  MEMORY[0x1EEE9AC00](v276);
  v277 = v529;
  sub_1CA948B68();

  v278 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v265 + 120) = sub_1CA2F9F14(v494, v493, v492, v273, 0, 0, v491 - v274, v491 - v277);
  v279 = v527;
  v280 = v501;
  *(v265 + 144) = v527;
  *(v265 + 152) = v280;
  v501 = v280;
  v281 = sub_1CA94C438();
  v493 = v282;
  v494 = v281;
  v283 = sub_1CA94C438();
  v285 = v284;
  v495 = v491;
  MEMORY[0x1EEE9AC00](v283);
  sub_1CA948D98();
  v286 = [v275 bundleURL];
  MEMORY[0x1EEE9AC00](v286);
  sub_1CA948B68();

  v287 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v265 + 160) = sub_1CA2F9F14(v494, v493, v283, v285, 0, 0, v491 - v274, v491 - v277);
  *(v265 + 184) = v279;
  v288 = v496;
  *(v265 + 192) = v496;
  v289 = swift_allocObject();
  *(v289 + 16) = v513;
  v290 = swift_allocObject();
  *(v290 + 16) = v521;
  strcpy((v290 + 32), "WFParameterKey");
  *(v290 + 47) = -18;
  *(v290 + 48) = 0x6465636E61766441;
  *(v290 + 56) = 0xE800000000000000;
  v291 = MEMORY[0x1E69E6158];
  *(v290 + 72) = MEMORY[0x1E69E6158];
  *(v290 + 80) = 0xD000000000000010;
  *(v290 + 88) = v517;
  *(v290 + 96) = 1;
  *(v290 + 120) = MEMORY[0x1E69E6370];
  *(v290 + 128) = 0x72756F7365524657;
  *(v290 + 168) = v291;
  *(v290 + 136) = 0xEF7373616C436563;
  v292 = v516;
  *(v290 + 144) = v515;
  *(v290 + 152) = v292;
  v496 = v288;
  *(v289 + 32) = sub_1CA94C1E8();
  *(v265 + 200) = v289;
  v293 = v505;
  *(v265 + 224) = v518;
  *(v265 + 232) = v293;
  *(v265 + 264) = v291;
  *(v265 + 240) = 0x7468676952;
  *(v265 + 248) = 0xE500000000000000;
  v505 = v293;
  sub_1CA94C1E8();
  *(v523 + 112) = sub_1CA2F864C();
  v294 = swift_allocObject();
  *(v294 + 16) = v500;
  v296 = v498;
  v295 = v499;
  v297 = v511;
  *(v294 + 32) = v499;
  *(v294 + 40) = v297;
  *(v294 + 48) = v506;
  v298 = v497;
  *(v294 + 64) = v291;
  *(v294 + 72) = v298;
  *(v294 + 80) = 0x74707265637845;
  *(v294 + 88) = 0xE700000000000000;
  *(v294 + 104) = v291;
  *(v294 + 112) = v296;
  *&v500 = v295;
  v499 = v298;
  v498 = v296;
  v497 = sub_1CA94C438();
  v495 = v299;
  v494 = sub_1CA94C438();
  v301 = v300;
  v506 = v491;
  MEMORY[0x1EEE9AC00](v494);
  v302 = v531;
  sub_1CA948D98();
  v303 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v303);
  v304 = v491 - v529;
  sub_1CA948B68();

  v305 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v294 + 120) = sub_1CA2F9F14(v497, v495, v494, v301, 0, 0, v491 - v302, v304);
  v306 = v527;
  v307 = v501;
  *(v294 + 144) = v527;
  *(v294 + 152) = v307;
  v506 = v307;
  v497 = sub_1CA94C438();
  v495 = v308;
  v309 = sub_1CA94C438();
  v311 = v310;
  v501 = v491;
  MEMORY[0x1EEE9AC00](v309);
  sub_1CA948D98();
  v312 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v312);
  v313 = v491 - v529;
  sub_1CA948B68();

  v314 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v294 + 160) = sub_1CA2F9F14(v497, v495, v309, v311, 0, 0, v491 - v302, v313);
  v315 = v496;
  *(v294 + 184) = v306;
  *(v294 + 192) = v315;
  v316 = swift_allocObject();
  *(v316 + 16) = v513;
  v317 = swift_allocObject();
  *(v317 + 16) = v521;
  strcpy((v317 + 32), "WFParameterKey");
  *(v317 + 47) = -18;
  *(v317 + 48) = 0x6465636E61766441;
  *(v317 + 56) = 0xE800000000000000;
  v318 = MEMORY[0x1E69E6158];
  *(v317 + 72) = MEMORY[0x1E69E6158];
  *(v317 + 80) = 0xD000000000000010;
  *(v317 + 88) = v517;
  *(v317 + 96) = 1;
  *(v317 + 120) = MEMORY[0x1E69E6370];
  *(v317 + 128) = 0x72756F7365524657;
  *(v317 + 168) = v318;
  *(v317 + 136) = 0xEF7373616C436563;
  v319 = v516;
  *(v317 + 144) = v515;
  *(v317 + 152) = v319;
  v497 = v315;
  *(v316 + 32) = sub_1CA94C1E8();
  *(v294 + 200) = v316;
  v320 = v505;
  *(v294 + 224) = v518;
  *(v294 + 232) = v320;
  *(v294 + 264) = v318;
  *(v294 + 240) = 0x7468676952;
  *(v294 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v523 + 120) = sub_1CA2F864C();
  v321 = swift_allocObject();
  *(v321 + 16) = xmmword_1CA981400;
  v323 = v499;
  v322 = v500;
  v324 = v511;
  *(v321 + 32) = v500;
  *(v321 + 40) = v324;
  *(v321 + 48) = 0x80000001CA9AB710;
  *(v321 + 64) = v318;
  *(v321 + 72) = v323;
  *(v321 + 80) = 1702125892;
  *(v321 + 88) = 0xE400000000000000;
  v325 = v498;
  *(v321 + 104) = v318;
  *(v321 + 112) = v325;
  *&v500 = v322;
  v499 = v323;
  v501 = v325;
  v326 = sub_1CA94C438();
  v495 = v327;
  v496 = v326;
  v494 = sub_1CA94C438();
  v329 = v328;
  v498 = v491;
  MEMORY[0x1EEE9AC00](v494);
  v330 = v531;
  sub_1CA948D98();
  v331 = [v532 bundleURL];
  v493 = v491;
  MEMORY[0x1EEE9AC00](v331);
  v332 = v529;
  sub_1CA948B68();

  v333 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v321 + 120) = sub_1CA2F9F14(v496, v495, v494, v329, 0, 0, v491 - v330, v491 - v332);
  v334 = v506;
  *(v321 + 144) = v527;
  *(v321 + 152) = v334;
  v506 = v334;
  v335 = sub_1CA94C438();
  v495 = v336;
  v496 = v335;
  v337 = sub_1CA94C438();
  v494 = v338;
  v498 = v491;
  MEMORY[0x1EEE9AC00](v337);
  sub_1CA948D98();
  v339 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v339);
  sub_1CA948B68();

  v340 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v341 = sub_1CA2F9F14(v496, v495, v337, v494, 0, 0, v491 - v330, v491 - v332);
  v342 = v497;
  *(v321 + 160) = v341;
  *(v321 + 184) = v527;
  *(v321 + 192) = v342;
  v343 = swift_allocObject();
  *(v343 + 16) = v513;
  v344 = swift_allocObject();
  *(v344 + 16) = v521;
  strcpy((v344 + 32), "WFParameterKey");
  *(v344 + 47) = -18;
  *(v344 + 48) = 0x6465636E61766441;
  *(v344 + 56) = 0xE800000000000000;
  v345 = MEMORY[0x1E69E6158];
  *(v344 + 72) = MEMORY[0x1E69E6158];
  *(v344 + 80) = 0xD000000000000010;
  *(v344 + 88) = v517;
  *(v344 + 96) = 1;
  *(v344 + 120) = MEMORY[0x1E69E6370];
  *(v344 + 128) = 0x72756F7365524657;
  *(v344 + 168) = v345;
  *(v344 + 136) = 0xEF7373616C436563;
  v346 = v516;
  *(v344 + 144) = v515;
  *(v344 + 152) = v346;
  v498 = v342;
  *(v343 + 32) = sub_1CA94C1E8();
  *(v321 + 200) = v343;
  *(v321 + 224) = v518;
  *(v321 + 232) = @"ResultType";
  *(v321 + 240) = 0x676E69727453;
  *(v321 + 248) = 0xE600000000000000;
  v347 = v505;
  *(v321 + 264) = v345;
  *(v321 + 272) = v347;
  *(v321 + 304) = v345;
  *(v321 + 280) = 0x7468676952;
  *(v321 + 288) = 0xE500000000000000;
  v348 = @"ResultType";
  sub_1CA94C1E8();
  *(v523 + 128) = sub_1CA2F864C();
  v349 = swift_allocObject();
  *(v349 + 16) = v514;
  v351 = v499;
  v350 = v500;
  v352 = v509;
  v353 = v510;
  *(v349 + 32) = v500;
  *(v349 + 40) = v353;
  *(v349 + 48) = v352;
  *(v349 + 64) = v345;
  *(v349 + 72) = v351;
  *(v349 + 80) = 0x6574616C706D6554;
  *(v349 + 88) = 0xE800000000000000;
  v354 = v501;
  *(v349 + 104) = v345;
  *(v349 + 112) = v354;
  v510 = v350;
  v499 = v351;
  v509 = v354;
  v355 = sub_1CA94C438();
  v357 = v356;
  v358 = sub_1CA94C438();
  v360 = v359;
  v505 = v491;
  MEMORY[0x1EEE9AC00](v358);
  v361 = v491 - v531;
  sub_1CA948D98();
  v362 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v362);
  v363 = v491 - v529;
  sub_1CA948B68();

  v364 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v349 + 120) = sub_1CA2F9F14(v355, v357, v358, v360, 0, 0, v361, v363);
  v365 = v498;
  *(v349 + 144) = v527;
  *(v349 + 152) = v365;
  v366 = swift_allocObject();
  *(v366 + 16) = v513;
  v367 = swift_allocObject();
  *(v367 + 16) = v521;
  strcpy((v367 + 32), "WFParameterKey");
  *(v367 + 47) = -18;
  *(v367 + 48) = 0x6465636E61766441;
  *(v367 + 56) = 0xE800000000000000;
  v368 = MEMORY[0x1E69E6158];
  *(v367 + 72) = MEMORY[0x1E69E6158];
  *(v367 + 80) = 0xD000000000000010;
  *(v367 + 88) = v517;
  *(v367 + 96) = 1;
  *(v367 + 120) = MEMORY[0x1E69E6370];
  *(v367 + 128) = 0x72756F7365524657;
  *(v367 + 168) = v368;
  *(v367 + 136) = 0xEF7373616C436563;
  v369 = v516;
  *(v367 + 144) = v515;
  *(v367 + 152) = v369;
  v505 = v365;
  *(v366 + 32) = sub_1CA94C1E8();
  *(v349 + 184) = v518;
  *(v349 + 160) = v366;
  sub_1CA94C1E8();
  *(v523 + 136) = sub_1CA2F864C();
  v370 = swift_allocObject();
  *(v370 + 16) = v512;
  v501 = 0xD000000000000019;
  v372 = v509;
  v371 = v510;
  *(v370 + 32) = v510;
  *(v370 + 40) = 0xD000000000000019;
  *&v500 = 0x80000001CA99B030;
  *(v370 + 48) = 0x80000001CA99B030;
  v373 = v499;
  *(v370 + 64) = v368;
  *(v370 + 72) = v373;
  strcpy((v370 + 80), "ThumbnailImage");
  *(v370 + 95) = -18;
  *(v370 + 104) = v368;
  *(v370 + 112) = v372;
  v510 = v371;
  v499 = v373;
  v509 = v372;
  v374 = sub_1CA94C438();
  v496 = v375;
  v497 = v374;
  v376 = sub_1CA94C438();
  v495 = v377;
  v498 = v491;
  MEMORY[0x1EEE9AC00](v376);
  v378 = v531;
  sub_1CA948D98();
  v379 = v532;
  v380 = [v532 bundleURL];
  v494 = v491;
  MEMORY[0x1EEE9AC00](v380);
  v381 = v529;
  sub_1CA948B68();

  v382 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v370 + 120) = sub_1CA2F9F14(v497, v496, v376, v495, 0, 0, v491 - v378, v491 - v381);
  v383 = v527;
  v384 = v506;
  *(v370 + 144) = v527;
  *(v370 + 152) = v384;
  v385 = sub_1CA94C438();
  v496 = v386;
  v497 = v385;
  v387 = sub_1CA94C438();
  v389 = v388;
  v498 = v491;
  MEMORY[0x1EEE9AC00](v387);
  sub_1CA948D98();
  v390 = [v379 bundleURL];
  MEMORY[0x1EEE9AC00](v390);
  sub_1CA948B68();

  v391 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v370 + 160) = sub_1CA2F9F14(v497, v496, v387, v389, 0, 0, v491 - v378, v491 - v381);
  v392 = v505;
  *(v370 + 184) = v383;
  *(v370 + 192) = v392;
  v393 = swift_allocObject();
  *(v393 + 16) = v513;
  v394 = swift_allocObject();
  *(v394 + 16) = v521;
  strcpy((v394 + 32), "WFParameterKey");
  *(v394 + 47) = -18;
  *(v394 + 48) = 0x6465636E61766441;
  *(v394 + 56) = 0xE800000000000000;
  v395 = MEMORY[0x1E69E6158];
  *(v394 + 72) = MEMORY[0x1E69E6158];
  *(v394 + 80) = 0xD000000000000010;
  *(v394 + 88) = v517;
  *(v394 + 96) = 1;
  *(v394 + 120) = MEMORY[0x1E69E6370];
  *(v394 + 128) = 0x72756F7365524657;
  *(v394 + 168) = v395;
  *(v394 + 136) = 0xEF7373616C436563;
  v396 = v516;
  *(v394 + 144) = v515;
  *(v394 + 152) = v396;
  v505 = v392;
  *(v393 + 32) = sub_1CA94C1E8();
  *(v370 + 224) = v518;
  *(v370 + 200) = v393;
  sub_1CA94C1E8();
  *(v523 + 144) = sub_1CA2F864C();
  v397 = swift_allocObject();
  *(v397 + 16) = v514;
  v399 = v510;
  v398 = v511;
  *(v397 + 32) = v510;
  *(v397 + 40) = v398;
  *(v397 + 48) = v502;
  v400 = v499;
  *(v397 + 64) = v395;
  *(v397 + 72) = v400;
  v502 = 0x80000001CA9DFD80;
  *(v397 + 80) = 0xD000000000000010;
  *(v397 + 88) = 0x80000001CA9DFD80;
  v401 = v509;
  *(v397 + 104) = v395;
  *(v397 + 112) = v401;
  v511 = v399;
  v510 = v400;
  v509 = v401;
  v402 = sub_1CA94C438();
  v404 = v403;
  v405 = sub_1CA94C438();
  v407 = v406;
  v499 = v491;
  MEMORY[0x1EEE9AC00](v405);
  v408 = v491 - v531;
  sub_1CA948D98();
  v409 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v409);
  v410 = v491 - v529;
  sub_1CA948B68();

  v411 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v397 + 120) = sub_1CA2F9F14(v402, v404, v405, v407, 0, 0, v408, v410);
  v412 = v505;
  *(v397 + 144) = v527;
  *(v397 + 152) = v412;
  v413 = swift_allocObject();
  *(v413 + 16) = v513;
  v414 = swift_allocObject();
  *(v414 + 16) = v521;
  strcpy((v414 + 32), "WFParameterKey");
  *(v414 + 47) = -18;
  *(v414 + 48) = 0x6465636E61766441;
  *(v414 + 56) = 0xE800000000000000;
  v415 = MEMORY[0x1E69E6158];
  *(v414 + 72) = MEMORY[0x1E69E6158];
  *(v414 + 80) = 0xD000000000000010;
  *(v414 + 88) = v517;
  *(v414 + 96) = 1;
  *(v414 + 120) = MEMORY[0x1E69E6370];
  *(v414 + 128) = 0x72756F7365524657;
  *(v414 + 168) = v415;
  *(v414 + 136) = 0xEF7373616C436563;
  v416 = v516;
  *(v414 + 144) = v515;
  *(v414 + 152) = v416;
  v417 = v415;
  *(v413 + 32) = sub_1CA94C1E8();
  *(v397 + 184) = v518;
  *(v397 + 160) = v413;
  sub_1CA94C1E8();
  *(v523 + 152) = sub_1CA2F864C();
  v418 = swift_allocObject();
  *(v418 + 16) = v512;
  *(v418 + 32) = @"AllowedValueTypes";
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
  *(v418 + 40) = &unk_1F4A0C610;
  v420 = v511;
  *(v418 + 64) = v419;
  *(v418 + 72) = v420;
  *(v418 + 80) = 0xD000000000000015;
  *(v418 + 88) = 0x80000001CA9CE7F0;
  v421 = v510;
  *(v418 + 104) = v417;
  *(v418 + 112) = v421;
  strcpy((v418 + 120), "CustomFields");
  *(v418 + 133) = 0;
  *(v418 + 134) = -5120;
  v422 = v509;
  *(v418 + 144) = v417;
  *(v418 + 152) = v422;
  v423 = @"AllowedValueTypes";
  v424 = sub_1CA94C438();
  v426 = v425;
  v427 = sub_1CA94C438();
  v429 = v428;
  *&v513 = v491;
  MEMORY[0x1EEE9AC00](v427);
  v430 = v491 - v531;
  sub_1CA948D98();
  v431 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v431);
  v432 = v491 - v529;
  sub_1CA948B68();

  v433 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v418 + 160) = sub_1CA2F9F14(v424, v426, v427, v429, 0, 0, v430, v432);
  v434 = v505;
  *(v418 + 184) = v527;
  *(v418 + 192) = v434;
  v435 = swift_allocObject();
  *(v435 + 16) = v507;
  v436 = swift_allocObject();
  *(v436 + 16) = v521;
  strcpy((v436 + 32), "WFParameterKey");
  *(v436 + 47) = -18;
  *(v436 + 48) = 0x6465636E61766441;
  *(v436 + 56) = 0xE800000000000000;
  v437 = MEMORY[0x1E69E6158];
  *(v436 + 72) = MEMORY[0x1E69E6158];
  *(v436 + 80) = 0xD000000000000010;
  v438 = v516;
  v439 = v517;
  *(v436 + 88) = v517;
  *(v436 + 96) = 1;
  *(v436 + 120) = MEMORY[0x1E69E6370];
  *(v436 + 128) = 0x72756F7365524657;
  *(v436 + 168) = v437;
  v440 = v515;
  *(v436 + 136) = 0xEF7373616C436563;
  *(v436 + 144) = v440;
  *(v436 + 152) = v438;
  *(v435 + 32) = sub_1CA94C1E8();
  v441 = swift_allocObject();
  *(v441 + 16) = v521;
  strcpy((v441 + 32), "WFParameterKey");
  *(v441 + 47) = -18;
  v442 = v502;
  *(v441 + 48) = 0xD000000000000010;
  *(v441 + 56) = v442;
  v443 = MEMORY[0x1E69E6158];
  *(v441 + 72) = MEMORY[0x1E69E6158];
  *(v441 + 80) = 0xD000000000000010;
  *(v441 + 88) = v439;
  *(v441 + 96) = 1;
  *(v441 + 120) = MEMORY[0x1E69E6370];
  *(v441 + 128) = 0x72756F7365524657;
  *(v441 + 168) = v443;
  *(v441 + 136) = 0xEF7373616C436563;
  *(v441 + 144) = v440;
  *(v441 + 152) = v438;
  v444 = v443;
  *(v435 + 40) = sub_1CA94C1E8();
  *(v418 + 224) = v518;
  *(v418 + 200) = v435;
  sub_1CA94C1E8();
  *(v523 + 160) = sub_1CA2F864C();
  v445 = swift_allocObject();
  *(v445 + 16) = v514;
  v446 = v501;
  *(v445 + 32) = v511;
  *(v445 + 40) = v446;
  *(v445 + 48) = v500;
  v447 = v510;
  *(v445 + 64) = v444;
  *(v445 + 72) = v447;
  *(v445 + 80) = 0x7475706E494657;
  *(v445 + 88) = 0xE700000000000000;
  v448 = v509;
  *(v445 + 104) = v444;
  *(v445 + 112) = v448;
  v449 = sub_1CA94C438();
  v520 = v450;
  *&v521 = v449;
  v451 = sub_1CA94C438();
  v519 = v452;
  v522 = v491;
  MEMORY[0x1EEE9AC00](v451);
  v453 = v531;
  sub_1CA948D98();
  v454 = [v532 bundleURL];
  v518 = v491;
  MEMORY[0x1EEE9AC00](v454);
  v455 = v529;
  sub_1CA948B68();

  v456 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v445 + 120) = sub_1CA2F9F14(v521, v520, v451, v519, 0, 0, v491 - v453, v491 - v455);
  v457 = v527;
  v458 = v506;
  *(v445 + 144) = v527;
  *(v445 + 152) = v458;
  v459 = sub_1CA94C438();
  v520 = v460;
  *&v521 = v459;
  v461 = sub_1CA94C438();
  v519 = v462;
  v522 = v491;
  MEMORY[0x1EEE9AC00](v461);
  v463 = v491 - v453;
  sub_1CA948D98();
  v464 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v464);
  sub_1CA948B68();

  v465 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v466 = sub_1CA2F9F14(v521, v520, v461, v519, 0, 0, v463, v491 - v455);
  *(v445 + 184) = v457;
  *(v445 + 160) = v466;
  sub_1CA94C1E8();
  v467 = sub_1CA2F864C();
  v468 = v523;
  *(v523 + 168) = v467;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v470 = v508;
  v508[35] = v468;
  v470[38] = v469;
  v470[39] = @"ParameterSummary";
  v471 = @"ParameterSummary";
  v472 = sub_1CA94C438();
  v474 = v473;
  v475 = sub_1CA94C438();
  v477 = v476;
  MEMORY[0x1EEE9AC00](v475);
  v478 = v491 - v531;
  sub_1CA948D98();
  v479 = [v532 bundleURL];
  MEMORY[0x1EEE9AC00](v479);
  v480 = v491 - v529;
  sub_1CA948B68();

  v481 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v482 = sub_1CA2F9F14(v472, v474, v475, v477, 0, 0, v478, v480);
  v483 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v484 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v485 = v508;
  v508[40] = v483;
  v485[43] = v484;
  v485[44] = @"RequiredResources";
  v486 = v485;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v487 = swift_allocObject();
  *(v487 + 16) = v507;
  v488 = @"RequiredResources";
  v489 = MEMORY[0x1E69E6158];
  *(v487 + 32) = sub_1CA94C1E8();
  *(v487 + 88) = v489;
  *(v487 + 56) = v503;
  *(v487 + 64) = 0xD00000000000001CLL;
  *(v487 + 72) = 0x80000001CA993620;
  v486[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v486[45] = v487;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA697280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1CA271524();
    v5 = sub_1CA4FCA38(a1);
    v6 = 0;
    v7 = a1 + 64;
    v24 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v25 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(a1 + 56) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v28 + 16);
        v12 = *(v28 + 24);
        sub_1CA94C218();
        if (v13 >= v12 >> 1)
        {
          sub_1CA271524();
        }

        *(v28 + 16) = v13 + 1;
        v14 = v28 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v16 = *(a1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v18 = v24;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v18 = v24;
          v21 = (a1 + 72 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1CA2974B8(v5, v27, v25 & 1);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_1CA2974B8(v5, v27, v25 & 1);
        }

LABEL_18:
        v6 = v26 + 1;
        if (v26 + 1 == v18)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

id WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v14 = &v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  v15 = MEMORY[0x1E69E7CC0];
  *v14 = 1;
  *(v14 + 1) = v15;
  v14[16] = 0;
  *&v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_preprocessedEntity] = 0;
  *&v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___addButtonParameter] = 0;
  *&v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___tableParameter] = 0;
  *&v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction____lazy_storage___batchExecutor] = 0;
  *&v8[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_metadataForParameterIdentifier] = a4;
  v16 = sub_1CA94C368();

  if (a6)
  {
    sub_1CA94C218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v17 = sub_1CA94C1A8();
  }

  else
  {
    v17 = 0;
  }

  v45.receiver = v8;
  v45.super_class = type metadata accessor for WFEntityUpdatingAction();
  v18 = objc_msgSendSuper2(&v45, sel_initWithIdentifier_metadata_definition_serializedParameters_appIntentDescriptor_fullyQualifiedActionIdentifier_, v16, a3, a5, v17, a7, a8);
  v19 = v18;

  if (v19)
  {

    if (a6)
    {
      v20 = sub_1CA323E28(0x54656C6261544657, 0xEF6574616C706D65);

      if (v20)
      {
        v21 = v19;
        v22 = sub_1CA697948();
        sub_1CA697BC8(v20, v18, v22, &v39);
        v23 = *(&v39 + 1);
        if (*(&v39 + 1))
        {
          v24 = v40;
          v25 = v39;
          v26 = &v21[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
          OUTLINED_FUNCTION_9_40();
          v27 = *(v26 + 1);
          *v26 = v25;
          *(v26 + 1) = v23;
          v26[16] = v24 & 1;
        }
      }
    }

    v28 = &v19[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
    OUTLINED_FUNCTION_27_2();
    if (!*(*(v28 + 1) + 16))
    {
      WFEntityUpdatingAction.createTableRow()(&v39);
      v42 = v39;
      v43 = v40;
      v44 = *v41;
      if (*&v41[16])
      {
        v35 = *&v41[24];
        v34 = *&v41[16];
        swift_beginAccess();
        v37[0] = v39;
        v37[1] = v40;
        v38[0] = *v41;
        *(v38 + 12) = *&v41[12];
        sub_1CA2DBDB8(v37, v36);
        sub_1CA69AF00(sub_1CA2E5064);
        v29 = *(*(v28 + 1) + 16);
        sub_1CA69B140(v29, sub_1CA2E5064);
        v30 = *(v28 + 1);
        *(v30 + 16) = v29 + 1;
        v31 = v30 + (v29 << 6);
        v32 = v43;
        *(v31 + 32) = v42;
        *(v31 + 48) = v32;
        *(v31 + 64) = v44;
        *(v31 + 80) = v34;
        *(v31 + 88) = v35;
        *(v28 + 1) = v30;
        swift_endAccess();
        sub_1CA69AF8C(&v39);
      }
    }
  }

  else
  {

    return 0;
  }

  return v18;
}