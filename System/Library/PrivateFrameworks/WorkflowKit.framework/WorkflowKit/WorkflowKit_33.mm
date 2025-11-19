id sub_1CA5A9DB4()
{
  v90 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  v89 = xmmword_1CA981300;
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9D1860;
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
  v95 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = v12;
  v13 = &v85 - v95;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v94 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v92 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v93 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v85 - v93;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v91 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v88 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v86 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v87 = &v85;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v85 - v95;
  sub_1CA948D98();
  v30 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v85 - v93;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v86, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v91;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v88;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconName";
  *(inited + 160) = 0x786F62706F7244;
  *(inited + 168) = 0xE700000000000000;
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"Name";
  v35 = @"IconName";
  v36 = @"Name";
  v37 = sub_1CA94C438();
  v39 = v38;
  v40 = sub_1CA94C438();
  v42 = v41;
  v88 = &v85;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v85 - v95;
  sub_1CA948D98();
  v44 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v85 - v93;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v37, v39, v40, v42, 0, 0, v43, v45);
  *(inited + 224) = v91;
  *(inited + 232) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v88 = swift_allocObject();
  *(v88 + 1) = xmmword_1CA9813B0;
  v87 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v47 = swift_initStackObject();
  *(v47 + 16) = v89;
  *(v47 + 32) = @"AutocapitalizationType";
  *(v47 + 40) = 1701736270;
  *(v47 + 48) = 0xE400000000000000;
  v48 = MEMORY[0x1E69E6158];
  *(v47 + 64) = MEMORY[0x1E69E6158];
  *(v47 + 72) = @"Class";
  *(v47 + 80) = 0xD000000000000014;
  *(v47 + 88) = 0x80000001CA99B500;
  *(v47 + 104) = v48;
  *(v47 + 112) = @"Description";
  v49 = @"Parameters";
  v50 = @"AutocapitalizationType";
  v51 = @"Class";
  v52 = @"Description";
  v53 = sub_1CA94C438();
  v86 = v54;
  v55 = sub_1CA94C438();
  v57 = v56;
  *&v89 = &v85;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v85 - v95;
  sub_1CA948D98();
  v59 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v85 - v93;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 120) = sub_1CA2F9F14(v53, v86, v55, v57, 0, 0, v58, v60);
  *(v47 + 144) = v91;
  *(v47 + 152) = @"DisableAutocorrection";
  v62 = MEMORY[0x1E69E6370];
  *(v47 + 160) = 1;
  *(v47 + 184) = v62;
  *(v47 + 192) = @"Key";
  *(v47 + 200) = 0x6150656C69464657;
  *(v47 + 208) = 0xEA00000000006874;
  v63 = MEMORY[0x1E69E6158];
  *(v47 + 224) = MEMORY[0x1E69E6158];
  *(v47 + 232) = @"KeyboardType";
  *(v47 + 240) = 0x6372616553626557;
  *(v47 + 248) = 0xE900000000000068;
  *(v47 + 264) = v63;
  *(v47 + 272) = @"Label";
  v64 = @"DisableAutocorrection";
  v65 = @"Key";
  v66 = @"KeyboardType";
  v67 = @"Label";
  v68 = sub_1CA94C438();
  v86 = v69;
  v70 = sub_1CA94C438();
  v72 = v71;
  *&v89 = &v85;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v85 - v95;
  sub_1CA948D98();
  v74 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v85 - v93;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 280) = sub_1CA2F9F14(v68, v86, v70, v72, 0, 0, v73, v75);
  *(v47 + 304) = v91;
  *(v47 + 312) = @"TextAlignment";
  *(v47 + 344) = MEMORY[0x1E69E6158];
  *(v47 + 320) = 1952867660;
  *(v47 + 328) = 0xE400000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v77 = @"TextAlignment";
  sub_1CA94C1E8();
  v78 = sub_1CA2F864C();
  v79 = v88;
  v88[4] = v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 240) = v79;
  *(inited + 264) = v80;
  *(inited + 272) = @"RequiredResources";
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 280) = &unk_1F4A07CF8;
  *(inited + 304) = v81;
  *(inited + 312) = @"SuggestedAsInitialAction";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v82 = @"RequiredResources";
  v83 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5AA8C8()
{
  v176 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9D1910;
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
  v191 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v192 = v12;
  v13 = &v171 - v191;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v190 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v188 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v189 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v171 - v189;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v187 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v185 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v175 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  *&v183 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v184 = &v171;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v171 - v191;
  sub_1CA948D98();
  v33 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v171 - v189;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v183, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v187;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v185;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v183 = xmmword_1CA981350;
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
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v181;
  *(v38 + 192) = &unk_1F4A07D78;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v185 = v42;
  v186 = inited;
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 0;
  *(inited + 264) = v39;
  *(inited + 272) = @"LocallyProcessesData";
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"LocallyProcessesData";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v182 = &v171;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v171 - v191;
  sub_1CA948D98();
  v53 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v171 - v189;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v57 = v186;
  v58 = v187;
  v186[40] = v56;
  v57[43] = v58;
  v57[44] = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v183;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 0;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v182 = sub_1CA94C438();
  v180 = v61;
  v62 = sub_1CA94C438();
  v64 = v63;
  v184 = &v171;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v171 - v191;
  sub_1CA948D98();
  v66 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v171 - v189;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v182, v180, v62, v64, 0, 0, v65, v67);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  v69 = v181;
  *(v59 + 216) = v181;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A07DA8;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = v186;
  v186[45] = v71;
  v72[48] = v185;
  v72[49] = @"Parameters";
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_1CA981470;
  v184 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1CA981370;
  v173 = 0xD000000000000019;
  *(v73 + 32) = @"Class";
  *(v73 + 40) = 0xD000000000000019;
  *(v73 + 48) = 0x80000001CA9B0C40;
  *(v73 + 64) = v70;
  *(v73 + 72) = @"DefaultValue";
  *(v73 + 80) = 0x6874676E654CLL;
  *(v73 + 88) = 0xE600000000000000;
  *(v73 + 104) = v70;
  *(v73 + 112) = @"DisallowedVariableTypes";
  *(v73 + 120) = &unk_1F4A07DD8;
  *(v73 + 144) = v69;
  *(v73 + 152) = @"Key";
  v172 = 0x80000001CA994540;
  *(v73 + 160) = 0xD000000000000015;
  *(v73 + 168) = 0x80000001CA994540;
  *(v73 + 184) = v70;
  *(v73 + 192) = @"Label";
  v74 = @"Class";
  v75 = @"Key";
  v76 = @"Label";
  v77 = v74;
  v78 = v75;
  v79 = v76;
  v179 = v77;
  v178 = v78;
  v177 = v79;
  v80 = @"Parameters";
  v81 = @"DefaultValue";
  v82 = @"DisallowedVariableTypes";
  v83 = sub_1CA94C438();
  v85 = v84;
  v86 = sub_1CA94C438();
  v88 = v87;
  v181 = &v171;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v171 - v191;
  sub_1CA948D98();
  v90 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v171 - v189;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v83, v85, v86, v88, 0, 0, v89, v91);
  *(v73 + 224) = v187;
  *(v73 + 200) = v93;
  _s3__C3KeyVMa_0(0);
  v181 = v94;
  v180 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v185 + 32) = sub_1CA2F864C();
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1CA981380;
  *(v95 + 32) = @"AlwaysShowsButton";
  *(v95 + 40) = 1;
  v96 = v179;
  *(v95 + 64) = MEMORY[0x1E69E6370];
  *(v95 + 72) = v96;
  *(v95 + 80) = 0xD000000000000020;
  *(v95 + 88) = 0x80000001CA9D1A20;
  v97 = MEMORY[0x1E69E6158];
  v98 = v178;
  *(v95 + 104) = MEMORY[0x1E69E6158];
  *(v95 + 112) = v98;
  *(v95 + 120) = 0xD000000000000011;
  *(v95 + 128) = 0x80000001CA9B0C80;
  v99 = v177;
  *(v95 + 144) = v97;
  *(v95 + 152) = v99;
  v100 = @"AlwaysShowsButton";
  v101 = sub_1CA94C438();
  v103 = v102;
  v104 = sub_1CA94C438();
  v106 = v105;
  v171 = &v171;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v171 - v191;
  sub_1CA948D98();
  v108 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v171 - v189;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v95 + 160) = sub_1CA2F9F14(v101, v103, v104, v106, 0, 0, v107, v109);
  *(v95 + 184) = v187;
  *(v95 + 192) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v111 = swift_allocObject();
  *(v111 + 16) = v175;
  v112 = @"RequiredResources";
  v113 = MEMORY[0x1E69E6158];
  *(v111 + 32) = sub_1CA94C1E8();
  *(v95 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v95 + 200) = v111;
  v114 = sub_1CA94C368();
  *(v95 + 264) = v113;
  *(v95 + 232) = v114;
  *(v95 + 240) = 0xD000000000000015;
  *(v95 + 248) = v172;
  sub_1CA94C1E8();
  *(v185 + 40) = sub_1CA2F864C();
  v115 = swift_initStackObject();
  *(v115 + 16) = v183;
  v116 = v173;
  *(v115 + 32) = v179;
  *(v115 + 40) = v116;
  *(v115 + 48) = 0x80000001CA99B030;
  v117 = v178;
  *(v115 + 64) = v113;
  *(v115 + 72) = v117;
  *(v115 + 80) = 0x7475706E494657;
  *(v115 + 88) = 0xE700000000000000;
  v118 = v177;
  *(v115 + 104) = v113;
  *(v115 + 112) = v118;
  v182 = sub_1CA94C438();
  v179 = v119;
  v120 = sub_1CA94C438();
  v178 = v121;
  *&v183 = &v171;
  MEMORY[0x1EEE9AC00](v120);
  v122 = v191;
  sub_1CA948D98();
  v123 = v190;
  v124 = [v190 bundleURL];
  v177 = &v171;
  MEMORY[0x1EEE9AC00](v124);
  v125 = v189;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v115 + 120) = sub_1CA2F9F14(v182, v179, v120, v178, 0, 0, &v171 - v122, &v171 - v125);
  v127 = v187;
  *(v115 + 144) = v187;
  *(v115 + 152) = @"Placeholder";
  v128 = @"Placeholder";
  v182 = sub_1CA94C438();
  v179 = v129;
  v178 = sub_1CA94C438();
  v131 = v130;
  *&v183 = &v171;
  MEMORY[0x1EEE9AC00](v178);
  sub_1CA948D98();
  v132 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134 = sub_1CA2F9F14(v182, v179, v178, v131, 0, 0, &v171 - v122, &v171 - v125);
  *(v115 + 184) = v127;
  *(v115 + 160) = v134;
  sub_1CA94C1E8();
  v135 = sub_1CA2F864C();
  v136 = v185;
  *(v185 + 48) = v135;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v138 = v186;
  v186[50] = v136;
  v138[53] = v137;
  v138[54] = @"ParameterSummary";
  v185 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_1CA981360;
  v184 = "Measurement (WFInput)";
  v139 = @"ParameterSummary";
  v140 = sub_1CA94C438();
  v142 = v141;
  v143 = sub_1CA94C438();
  v145 = v144;
  *&v183 = &v171;
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v171 - v191;
  sub_1CA948D98();
  v147 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v171 - v189;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v140, v142, v143, v145, 0, 0, v146, v148);
  v151 = objc_allocWithZone(WFActionParameterSummaryValue);
  v152 = sub_1CA65DD78(0xD00000000000001DLL, v184 | 0x8000000000000000, v150);
  *(v187 + 32) = v152;
  v184 = "urementUnitType}";
  v153 = sub_1CA94C438();
  v155 = v154;
  v156 = sub_1CA94C438();
  v158 = v157;
  *&v183 = &v171;
  MEMORY[0x1EEE9AC00](v156);
  v159 = &v171 - v191;
  sub_1CA948D98();
  v160 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v171 - v189;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v163 = sub_1CA2F9F14(v153, v155, v156, v158, 0, 0, v159, v161);
  v164 = objc_allocWithZone(WFActionParameterSummaryValue);
  v165 = sub_1CA65DD78(0xD00000000000002FLL, v184 | 0x8000000000000000, v163);
  *(v187 + 40) = v165;
  v166 = v185;
  v167 = sub_1CA65AF90();
  v168 = v186;
  v186[55] = v167;
  v168[58] = v166;
  v168[59] = @"ResidentCompatible";
  v168[63] = MEMORY[0x1E69E6370];
  *(v168 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v169 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5ABE64()
{
  v124 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9D1BA0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v129 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v130 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v131 = v11;
  v12 = &v116 - v130;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v128 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v126 = v15;
  v127 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v116 - v127;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v129, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v129 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v123 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v125 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438();
  v121 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v122 = &v116;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v116 - v130;
  sub_1CA948D98();
  v29 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v116 - v127;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v121, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v129;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v33 = v123;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v33;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6E697070616DLL;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 224) = v34;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  *(inited + 264) = v34;
  *(inited + 272) = @"InputPassthrough";
  v35 = MEMORY[0x1E69E6370];
  *(inited + 280) = 0;
  *(inited + 304) = v35;
  *(inited + 312) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"IconSymbolColor";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v123 = &v116;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v116 - v130;
  sub_1CA948D98();
  v48 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v116 - v127;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 344) = v129;
  *(inited + 352) = @"Output";
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  v120 = xmmword_1CA981350;
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = 0x75736F6C63736944;
  *(v51 + 40) = 0xEF6C6576654C6572;
  *(v51 + 48) = 0x63696C627550;
  *(v51 + 56) = 0xE600000000000000;
  *(v51 + 72) = MEMORY[0x1E69E6158];
  *(v51 + 80) = 0x656C7069746C754DLL;
  *(v51 + 88) = 0xE800000000000000;
  *(v51 + 96) = 0;
  *(v51 + 120) = MEMORY[0x1E69E6370];
  *(v51 + 128) = 0x614E74757074754FLL;
  *(v51 + 136) = 0xEA0000000000656DLL;
  v52 = @"Output";
  v53 = sub_1CA94C438();
  v121 = v54;
  v55 = sub_1CA94C438();
  v57 = v56;
  v122 = &v116;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v116 - v130;
  sub_1CA948D98();
  v59 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v116 - v127;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 144) = sub_1CA2F9F14(v53, v121, v55, v57, 0, 0, v58, v60);
  *(v51 + 168) = v129;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 184) = 0xE500000000000000;
  *(v51 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 192) = &unk_1F4A07E88;
  v62 = MEMORY[0x1E69E6158];
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 360) = v63;
  *(inited + 384) = v64;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v122 = swift_allocObject();
  *(v122 + 1) = xmmword_1CA9813B0;
  v121 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_allocObject();
  *(v65 + 16) = v120;
  *(v65 + 32) = @"Class";
  *(v65 + 40) = 0xD000000000000013;
  *(v65 + 48) = 0x80000001CA99B730;
  *(v65 + 64) = v62;
  *(v65 + 72) = @"Key";
  *(v65 + 80) = 0x697461636F4C4657;
  *(v65 + 88) = 0xEA00000000006E6FLL;
  *(v65 + 104) = v62;
  *(v65 + 112) = @"Label";
  v66 = @"Parameters";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v70 = sub_1CA94C438();
  v118 = v71;
  v119 = v70;
  v72 = sub_1CA94C438();
  v117 = v73;
  *&v120 = &v116;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v116 - v130;
  sub_1CA948D98();
  v75 = v128;
  v76 = [v128 bundleURL];
  v116 = &v116;
  MEMORY[0x1EEE9AC00](v76);
  v77 = v127;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 120) = sub_1CA2F9F14(v119, v118, v72, v117, 0, 0, v74, &v116 - v77);
  *(v65 + 144) = v129;
  *(v65 + 152) = @"Prompt";
  v79 = @"Prompt";
  v80 = sub_1CA94C438();
  v118 = v81;
  v119 = v80;
  v82 = sub_1CA94C438();
  v117 = v83;
  *&v120 = &v116;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v116 - v130;
  sub_1CA948D98();
  v85 = [v75 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v119, v118, v82, v117, 0, 0, v84, &v116 - v77);
  *(v65 + 184) = v129;
  *(v65 + 160) = v87;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v88 = sub_1CA2F864C();
  v89 = v122;
  v122[4] = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v89;
  *(inited + 424) = v90;
  *(inited + 432) = @"ParameterSummary";
  v91 = @"ParameterSummary";
  v92 = sub_1CA94C438();
  v94 = v93;
  v95 = sub_1CA94C438();
  v97 = v96;
  v129 = &v116;
  MEMORY[0x1EEE9AC00](v95);
  v98 = &v116 - v130;
  sub_1CA948D98();
  v99 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v116 - v127;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v92, v94, v95, v97, 0, 0, v98, v100);
  v103 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v104 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v103;
  *(inited + 464) = v104;
  *(inited + 472) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v105 = swift_allocObject();
  *(v105 + 16) = v125;
  v106 = swift_initStackObject();
  *(v106 + 16) = xmmword_1CA97EDF0;
  *(v106 + 32) = 0xD000000000000011;
  *(v106 + 40) = 0x80000001CA99B240;
  v107 = swift_allocObject();
  *(v107 + 16) = v125;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1CA9813C0;
  strcpy((v108 + 32), "WFParameterKey");
  *(v108 + 47) = -18;
  *(v108 + 48) = 0x697461636F4C4657;
  *(v108 + 56) = 0xEA00000000006E6FLL;
  v109 = MEMORY[0x1E69E6158];
  *(v108 + 72) = MEMORY[0x1E69E6158];
  *(v108 + 80) = 0xD000000000000010;
  *(v108 + 88) = 0x80000001CA993570;
  v110 = @"RequiredResources";
  v111 = sub_1CA94C1E8();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v108 + 96) = v111;
  *(v108 + 120) = v112;
  *(v108 + 128) = 0x72756F7365524657;
  *(v108 + 168) = v109;
  *(v108 + 136) = 0xEF7373616C436563;
  *(v108 + 144) = 0xD00000000000001BLL;
  *(v108 + 152) = 0x80000001CA993590;
  *(v107 + 32) = sub_1CA94C1E8();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v106 + 48) = v107;
  *(v106 + 72) = v113;
  *(v106 + 80) = 0x72756F7365524657;
  *(v106 + 120) = v109;
  *(v106 + 88) = 0xEF7373616C436563;
  *(v106 + 96) = 0xD000000000000018;
  *(v106 + 104) = 0x80000001CA994040;
  *(v105 + 32) = sub_1CA94C1E8();
  *(inited + 480) = v105;
  *(inited + 504) = v113;
  *(inited + 512) = @"ResidentCompatible";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v114 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5ACEEC()
{
  v33 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"IconColor";
  *(inited + 80) = 1702194242;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0xD000000000000026;
  *(inited + 128) = 0x80000001CA9D1CB0;
  *(inited + 144) = v1;
  *(inited + 152) = @"Input";
  v2 = @"ActionClass";
  v3 = @"IconColor";
  v4 = @"IconSymbol";
  v5 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v6 = sub_1CA94C1E8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 160) = v6;
  *(inited + 184) = v7;
  *(inited + 192) = @"LocallyProcessesData";
  v8 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v8;
  *(inited + 232) = @"Name";
  v9 = @"LocallyProcessesData";
  v10 = @"Name";
  v11 = sub_1CA94C438();
  v32 = v12;
  v13 = sub_1CA94C438();
  v15 = v14;
  v16 = sub_1CA948E58();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v20 = [qword_1EDB9F690 bundleURL];
  v21 = sub_1CA948BA8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v11, v32, v13, v15, 0, 0, v19, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 240) = v26;
  *(inited + 264) = v27;
  *(inited + 272) = @"ResidentCompatible";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v28 = @"ResidentCompatible";
  v29 = sub_1CA94C368();
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 312) = v29;
  *(inited + 320) = 0xD000000000000012;
  *(inited + 328) = 0x80000001CA9933B0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA5AD2EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA5AD30C, 0, 0);
}

uint64_t sub_1CA5AD30C()
{
  [**(v0 + 24) singleStateClass];
  swift_getObjCClassMetadata();
  v1 = off_1E836F350;
  sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
  if (swift_dynamicCastMetatype() || (v1 = off_1E836E828, sub_1CA25B3D0(0, &unk_1EC447480, off_1E836E828), swift_dynamicCastMetatype()))
  {
    v2 = *(v0 + 16);
    sub_1CA94A898();
    v3 = sub_1CA94C368();

    v4 = [objc_allocWithZone(*v1) initWithValue_];

    v5 = *(v0 + 8);

    return v5(v4);
  }

  else
  {
    sub_1CA3DBA78();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1CA5AD484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1CA437724;

  return sub_1CA5AD2EC(a2, a3);
}

void WFDatabase.performTransaction<A>(reason:_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v26 = a5;
  v6 = v5;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v27 = sub_1CA94D098();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v27);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  __swift_storeEnumTagSinglePayload(&v26 - v16, 1, 1, a4);
  if (a1)
  {
    v18 = sub_1CA94C368();
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = v17;
  v19[4] = a2;
  v19[5] = a3;
  v20 = swift_allocObject();
  v20[2] = sub_1CA5AD9B4;
  v20[3] = v19;
  aBlock[4] = sub_1CA5AD9E8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA5ADA10;
  aBlock[3] = &block_descriptor_25;
  v21 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v6 performTransactionWithReason:v18 block:v21 error:aBlock];
  _Block_release(v21);

  v22 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v22)
  {
    swift_willThrow();
    (*(v11 + 8))(v17, v27);

LABEL_9:
    v25 = *MEMORY[0x1E69E9840];
    return;
  }

  v24 = v27;
  (*(v11 + 16))(v15, v17, v27);
  if (__swift_getEnumTagSinglePayload(v15, 1, a4) != 1)
  {
    (*(*(a4 - 8) + 32))(v26, v15, a4);
    (*(v11 + 8))(v17, v24);

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1CA5AD880(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = sub_1CA94D098();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v15 - v12;
  a3(v11);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, a5);
  return (*(v9 + 40))(a2, v13, v8);
}

uint64_t sub_1CA5AD9E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA5ADA88()
{
  v147 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9D1D20;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v155 = inited;
  v157 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  v154 = xmmword_1CA981310;
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v158 = sub_1CA94C438();
  v159 = v9;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v160 = v15;
  v163 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v142 - v163;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB9F690;
  v162 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v161 = v20;
  v164 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v142 - v164;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v158, v159, v10, v12, 0, 0, v16, v21);
  v159 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v159;
  *(v6 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v24 = v157;
  v25 = sub_1CA6B3784();
  v26 = v155;
  v155[15] = v25;
  v26[18] = v24;
  v26[19] = @"Name";
  v27 = @"Name";
  v28 = sub_1CA94C438();
  v30 = v29;
  v31 = sub_1CA94C438();
  v33 = v32;
  v158 = &v142;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v142 - v163;
  sub_1CA948D98();
  v35 = [v17 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v142 - v164;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26[20] = sub_1CA2F9F14(v28, v30, v31, v33, 0, 0, v34, v36);
  v26[23] = v159;
  v26[24] = @"Output";
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v145 = xmmword_1CA9813C0;
  *(v38 + 16) = xmmword_1CA9813C0;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  *(v38 + 80) = 0x614E74757074754FLL;
  *(v38 + 88) = 0xEA0000000000656DLL;
  v40 = @"Output";
  v41 = sub_1CA94C438();
  v157 = v42;
  v43 = sub_1CA94C438();
  v45 = v44;
  v158 = &v142;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v142 - v163;
  sub_1CA948D98();
  v47 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v142 - v164;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v50 = sub_1CA2F9F14(v41, v157, v43, v45, 0, 0, v46, v48);
  v51 = v159;
  *(v38 + 96) = v50;
  *(v38 + 120) = v51;
  *(v38 + 128) = 0x7365707954;
  *(v38 + 136) = 0xE500000000000000;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 168) = v153;
  *(v38 + 144) = &unk_1F4A07FF8;
  v52 = MEMORY[0x1E69E6158];
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v26[25] = v53;
  v26[28] = v54;
  v26[29] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v158 = swift_allocObject();
  v151 = xmmword_1CA981470;
  *(v158 + 1) = xmmword_1CA981470;
  v157 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  v144 = xmmword_1CA981370;
  *(v55 + 16) = xmmword_1CA981370;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000016;
  *(v55 + 48) = 0x80000001CA99C4A0;
  *(v55 + 64) = v52;
  *(v55 + 72) = @"DefaultValue";
  *(v55 + 80) = 0x736472616F42;
  *(v55 + 88) = 0xE600000000000000;
  *(v55 + 104) = v52;
  *(v55 + 112) = @"Items";
  v156 = swift_allocObject();
  *(v156 + 1) = v151;
  *&v151 = @"Class";
  v56 = @"Parameters";
  v57 = @"DefaultValue";
  v58 = @"Items";
  v59 = sub_1CA94C438();
  v148 = v60;
  v149 = v59;
  v61 = sub_1CA94C438();
  v143 = v62;
  v150 = &v142;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v163;
  sub_1CA948D98();
  v64 = v162;
  v65 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v142 - v164;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v149, v148, v61, v143, 0, 0, &v142 - v63, v66);
  v156[4] = v68;
  v69 = sub_1CA94C438();
  v148 = v70;
  v149 = v69;
  v71 = sub_1CA94C438();
  v143 = v72;
  v150 = &v142;
  MEMORY[0x1EEE9AC00](v71);
  sub_1CA948D98();
  v73 = [v64 bundleURL];
  v142 = &v142;
  MEMORY[0x1EEE9AC00](v73);
  v74 = v164;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v149, v148, v71, v143, 0, 0, &v142 - v63, &v142 - v74);
  v156[5] = v76;
  v77 = sub_1CA94C438();
  v148 = v78;
  v149 = v77;
  v79 = sub_1CA94C438();
  v143 = v80;
  v150 = &v142;
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948D98();
  v81 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v149, v148, v79, v143, 0, 0, &v142 - v63, &v142 - v74);
  v84 = v156;
  v156[6] = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v55 + 120) = v84;
  *(v55 + 144) = v85;
  *(v55 + 152) = @"Key";
  v143 = 0x80000001CA99A520;
  *(v55 + 160) = 0xD000000000000010;
  *(v55 + 168) = 0x80000001CA99A520;
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Label";
  v86 = @"Key";
  v87 = @"Label";
  v88 = v86;
  v89 = v87;
  v148 = v88;
  v149 = v89;
  v90 = sub_1CA94C438();
  v92 = v91;
  v93 = sub_1CA94C438();
  v95 = v94;
  v156 = &v142;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v142 - v163;
  sub_1CA948D98();
  v97 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v142 - v164;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v90, v92, v93, v95, 0, 0, v96, v98);
  *(v55 + 224) = v159;
  *(v55 + 200) = v100;
  _s3__C3KeyVMa_0(0);
  v156 = v101;
  v150 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v158[4] = sub_1CA2F864C();
  v102 = swift_initStackObject();
  *(v102 + 16) = xmmword_1CA981350;
  *(v102 + 32) = v151;
  *(v102 + 40) = 0xD00000000000001CLL;
  *(v102 + 48) = 0x80000001CA9A0130;
  v103 = MEMORY[0x1E69E6158];
  v104 = v148;
  *(v102 + 64) = MEMORY[0x1E69E6158];
  *(v102 + 72) = v104;
  strcpy((v102 + 80), "WFTrelloBoard");
  *(v102 + 94) = -4864;
  v105 = v149;
  *(v102 + 104) = v103;
  *(v102 + 112) = v105;
  v106 = sub_1CA94C438();
  v108 = v107;
  v109 = sub_1CA94C438();
  v111 = v110;
  v142 = &v142;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v142 - v163;
  sub_1CA948D98();
  v113 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v142 - v164;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v102 + 120) = sub_1CA2F9F14(v106, v108, v109, v111, 0, 0, v112, v114);
  *(v102 + 144) = v159;
  *(v102 + 152) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v116 = swift_allocObject();
  *(v116 + 16) = v154;
  v117 = swift_allocObject();
  *(v117 + 16) = v145;
  strcpy((v117 + 32), "WFParameterKey");
  *(v117 + 47) = -18;
  v118 = v143;
  *(v117 + 48) = 0xD000000000000010;
  *(v117 + 56) = v118;
  v119 = MEMORY[0x1E69E6158];
  *(v117 + 72) = MEMORY[0x1E69E6158];
  *(v117 + 80) = 0xD000000000000011;
  *(v117 + 88) = 0x80000001CA9A2F30;
  *(v117 + 96) = &unk_1F4A08048;
  *(v117 + 120) = v153;
  *(v117 + 128) = 0x72756F7365524657;
  *(v117 + 168) = v119;
  *(v117 + 136) = 0xEF7373616C436563;
  *(v117 + 144) = 0xD00000000000001BLL;
  *(v117 + 152) = 0x80000001CA993590;
  v146 = @"RequiredResources";
  *(v116 + 32) = sub_1CA94C1E8();
  *(v102 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v102 + 160) = v116;
  sub_1CA94C1E8();
  v158[5] = sub_1CA2F864C();
  v120 = swift_allocObject();
  *(v120 + 16) = v144;
  *(v120 + 32) = sub_1CA94C368();
  strcpy((v120 + 40), "WFTrelloBoard");
  *(v120 + 54) = -4864;
  v121 = v151;
  *(v120 + 64) = v119;
  *(v120 + 72) = v121;
  *(v120 + 80) = 0xD00000000000001BLL;
  *(v120 + 88) = 0x80000001CA9D1E80;
  v122 = v148;
  *(v120 + 104) = v119;
  *(v120 + 112) = v122;
  strcpy((v120 + 120), "WFTrelloList");
  *(v120 + 133) = 0;
  *(v120 + 134) = -5120;
  v123 = v149;
  *(v120 + 144) = v119;
  *(v120 + 152) = v123;
  v124 = sub_1CA94C438();
  v126 = v125;
  v127 = sub_1CA94C438();
  v129 = v128;
  v152 = &v142;
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v142 - v163;
  sub_1CA948D98();
  v131 = [v162 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  v132 = &v142 - v164;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v120 + 160) = sub_1CA2F9F14(v124, v126, v127, v129, 0, 0, v130, v132);
  v134 = v146;
  *(v120 + 184) = v159;
  *(v120 + 192) = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v135 = swift_allocObject();
  *(v135 + 16) = v154;
  *(v135 + 32) = sub_1CA94C1E8();
  *(v120 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v120 + 200) = v135;
  sub_1CA94C1E8();
  v136 = sub_1CA2F864C();
  v137 = v158;
  v158[6] = v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v139 = v155;
  v155[30] = v137;
  v139[33] = v138;
  v139[34] = @"RequiredResources";
  v139[38] = v153;
  v139[35] = &unk_1F4A08108;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v140 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5AEDC4()
{
  v267 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000020;
  *(inited + 48) = 0x80000001CA9C79B0;
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
  v283 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v284 = v12;
  v13 = &v257 - v283;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v281 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v280 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v282 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v257 - v282;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v279 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v277 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v266 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v276 = &v257;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v257 - v283;
  sub_1CA948D98();
  v34 = [v281 bundleURL];
  v278 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v257 - v282;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v279;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v277;
  v40 = sub_1CA6B3784();
  v41 = v278;
  v278[20] = v40;
  v41[23] = v39;
  v41[24] = @"LocallyProcessesData";
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 200) = 1;
  v41[28] = v42;
  v41[29] = @"Name";
  v43 = @"LocallyProcessesData";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v275 = v46;
  v276 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v277 = &v257;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v257 - v283;
  sub_1CA948D98();
  v51 = v281;
  v52 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v282;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v276, v275, v47, v49, 0, 0, v50, &v257 - v53);
  v56 = v278;
  v278[30] = v55;
  v57 = v279;
  v56[33] = v279;
  v56[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1CA9813C0;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  *(v58 + 48) = 1;
  *(v58 + 72) = MEMORY[0x1E69E6370];
  *(v58 + 80) = 0x614E74757074754FLL;
  *(v58 + 88) = 0xEA0000000000656DLL;
  v59 = @"Output";
  v60 = sub_1CA94C438();
  v275 = v61;
  v276 = v60;
  v62 = sub_1CA94C438();
  v274 = v63;
  v277 = &v257;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v257 - v283;
  sub_1CA948D98();
  v65 = [v51 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 96) = sub_1CA2F9F14(v276, v275, v62, v274, 0, 0, v64, &v257 - v53);
  *(v58 + 120) = v57;
  *(v58 + 128) = 0x7365707954;
  *(v58 + 136) = 0xE500000000000000;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v58 + 168) = v265;
  *(v58 + 144) = &unk_1F4A08188;
  v67 = MEMORY[0x1E69E6158];
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v70 = v278;
  v278[35] = v68;
  v70[38] = v69;
  v70[39] = @"Parameters";
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v277 = swift_allocObject();
  v263 = xmmword_1CA981570;
  *(v277 + 1) = xmmword_1CA981570;
  v276 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1CA981370;
  v72 = @"Parameters";
  *(v71 + 32) = sub_1CA94C368();
  *(v71 + 40) = 1;
  *(v71 + 64) = MEMORY[0x1E69E6370];
  *(v71 + 72) = @"Class";
  *(v71 + 80) = 0xD000000000000019;
  *(v71 + 88) = 0x80000001CA9D1FE0;
  *(v71 + 104) = v67;
  *(v71 + 112) = @"Key";
  *(v71 + 120) = 0xD000000000000019;
  *(v71 + 128) = 0x80000001CA9C7AD0;
  *(v71 + 144) = v67;
  *(v71 + 152) = @"Label";
  v73 = @"Class";
  v74 = @"Key";
  v75 = @"Label";
  v76 = v73;
  v77 = v74;
  v78 = v75;
  v268 = v76;
  v269 = v77;
  v271 = v78;
  v273 = sub_1CA94C438();
  v80 = v79;
  v81 = sub_1CA94C438();
  v83 = v82;
  v274 = &v257;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v257 - v283;
  sub_1CA948D98();
  v85 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v257 - v282;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 160) = sub_1CA2F9F14(v273, v80, v81, v83, 0, 0, v84, v86);
  v88 = v279;
  *(v71 + 184) = v279;
  *(v71 + 192) = @"Prompt";
  v270 = @"Prompt";
  v273 = sub_1CA94C438();
  *&v264 = v89;
  v90 = sub_1CA94C438();
  v92 = v91;
  v274 = &v257;
  MEMORY[0x1EEE9AC00](v90);
  v93 = v283;
  sub_1CA948D98();
  v94 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v257 - v282;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v273, v264, v90, v92, 0, 0, &v257 - v93, v95);
  *(v71 + 224) = v88;
  *(v71 + 200) = v97;
  _s3__C3KeyVMa_0(0);
  v274 = v98;
  v273 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v277[4] = sub_1CA2F864C();
  v99 = swift_allocObject();
  v264 = xmmword_1CA981400;
  *(v99 + 16) = xmmword_1CA981400;
  v100 = v268;
  v101 = v269;
  *(v99 + 32) = v268;
  *(v99 + 40) = 0xD000000000000012;
  *(v99 + 48) = 0x80000001CA99B980;
  v102 = MEMORY[0x1E69E6158];
  *(v99 + 64) = MEMORY[0x1E69E6158];
  *(v99 + 72) = @"DefaultValue";
  v103 = MEMORY[0x1E69E6530];
  *(v99 + 80) = 1;
  *(v99 + 104) = v103;
  *(v99 + 112) = v101;
  v262 = 0xD000000000000016;
  *(v99 + 120) = 0xD000000000000016;
  *(v99 + 128) = 0x80000001CA9C7B20;
  v104 = v270;
  *(v99 + 144) = v102;
  *(v99 + 152) = v104;
  v105 = @"DefaultValue";
  v268 = v100;
  v269 = v101;
  v261 = v105;
  v106 = sub_1CA94C438();
  v258 = v107;
  v259 = v106;
  v108 = sub_1CA94C438();
  v257 = v109;
  v260 = &v257;
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v257 - v93;
  sub_1CA948D98();
  v111 = v281;
  v112 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  v113 = v282;
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 160) = sub_1CA2F9F14(v259, v258, v108, v257, 0, 0, v110, &v257 - v113);
  v115 = v279;
  *(v99 + 184) = v279;
  *(v99 + 192) = @"StepperDescription";
  v116 = @"StepperDescription";
  v117 = sub_1CA94C438();
  v258 = v118;
  v259 = v117;
  v119 = sub_1CA94C438();
  v257 = v120;
  v260 = &v257;
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v257 - v283;
  sub_1CA948D98();
  v122 = [v111 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 200) = sub_1CA2F9F14(v259, v258, v119, v257, 0, 0, v121, &v257 - v113);
  *(v99 + 224) = v115;
  *(v99 + 232) = @"StepperNoun";
  v124 = @"StepperNoun";
  v125 = sub_1CA94C438();
  v259 = v126;
  v260 = v125;
  v127 = v126;
  v289 = 0;
  v290 = 0xE000000000000000;
  sub_1CA94D408();

  v289 = v125;
  v290 = v127;
  v287 = 10;
  v288 = 0xE100000000000000;
  v285 = 32;
  v286 = 0xE100000000000000;
  sub_1CA27BAF0();
  v289 = sub_1CA94D1B8();
  v290 = v128;
  v129 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v258 = &v257;
  v130 = v289;
  v257 = v290;
  MEMORY[0x1EEE9AC00](v129);
  v131 = v283;
  sub_1CA948D98();
  v132 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v257 - v282;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 240) = sub_1CA2F9F14(v130, v257, v260, v259, 0, 0, &v257 - v131, v133);
  v135 = v279;
  *(v99 + 264) = v279;
  *(v99 + 272) = @"StepperPrefix";
  v136 = @"StepperPrefix";
  v137 = sub_1CA94C438();
  v258 = v138;
  v259 = v137;
  v139 = sub_1CA94C438();
  v141 = v140;
  v260 = &v257;
  MEMORY[0x1EEE9AC00](v139);
  sub_1CA948D98();
  v142 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v257 - v282;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v259, v258, v139, v141, 0, 0, &v257 - v131, v143);
  *(v99 + 304) = v135;
  *(v99 + 280) = v145;
  sub_1CA94C1E8();
  v277[5] = sub_1CA2F864C();
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_1CA981380;
  v147 = v262;
  *(v146 + 32) = v268;
  *(v146 + 40) = v147;
  *(v146 + 48) = 0x80000001CA99C4A0;
  v148 = MEMORY[0x1E69E6158];
  v149 = v261;
  *(v146 + 64) = MEMORY[0x1E69E6158];
  *(v146 + 72) = v149;
  *(v146 + 80) = 0x79614420796E41;
  *(v146 + 88) = 0xE700000000000000;
  *(v146 + 104) = v148;
  *(v146 + 112) = @"Items";
  v272 = swift_allocObject();
  *(v272 + 1) = v263;
  v150 = @"Items";
  v151 = sub_1CA94C438();
  v261 = v152;
  v262 = v151;
  v153 = sub_1CA94C438();
  v260 = v154;
  *&v263 = &v257;
  MEMORY[0x1EEE9AC00](v153);
  v155 = v283;
  sub_1CA948D98();
  v156 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = v282;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v159 = sub_1CA2F9F14(v262, v261, v153, v260, 0, 0, &v257 - v155, &v257 - v157);
  v272[4] = v159;
  v160 = sub_1CA94C438();
  v261 = v161;
  v262 = v160;
  v162 = sub_1CA94C438();
  v260 = v163;
  *&v263 = &v257;
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v257 - v155;
  sub_1CA948D98();
  v165 = v281;
  v166 = [v281 bundleURL];
  v259 = &v257;
  MEMORY[0x1EEE9AC00](v166);
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v262, v261, v162, v260, 0, 0, v164, &v257 - v157);
  v169 = v272;
  v272[5] = v168;
  v170 = sub_1CA94C438();
  v261 = v171;
  v262 = v170;
  v172 = sub_1CA94C438();
  v260 = v173;
  *&v263 = &v257;
  MEMORY[0x1EEE9AC00](v172);
  v174 = v283;
  sub_1CA948D98();
  v175 = [v165 bundleURL];
  v259 = &v257;
  MEMORY[0x1EEE9AC00](v175);
  v176 = v282;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v169 + 48) = sub_1CA2F9F14(v262, v261, v172, v260, 0, 0, &v257 - v174, &v257 - v176);
  v178 = sub_1CA94C438();
  v261 = v179;
  v262 = v178;
  v260 = sub_1CA94C438();
  v181 = v180;
  *&v263 = &v257;
  MEMORY[0x1EEE9AC00](v260);
  v182 = &v257 - v174;
  sub_1CA948D98();
  v183 = v281;
  v184 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v186 = sub_1CA2F9F14(v262, v261, v260, v181, 0, 0, v182, &v257 - v176);
  v187 = v272;
  v272[7] = v186;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v146 + 120) = v187;
  v189 = v269;
  *(v146 + 144) = v188;
  *(v146 + 152) = v189;
  *(v146 + 160) = 0x7053657461444657;
  *(v146 + 168) = 0xEF72656966696365;
  v190 = v271;
  *(v146 + 184) = MEMORY[0x1E69E6158];
  *(v146 + 192) = v190;
  v191 = sub_1CA94C438();
  v262 = v192;
  *&v263 = v191;
  v193 = sub_1CA94C438();
  v261 = v194;
  v272 = &v257;
  MEMORY[0x1EEE9AC00](v193);
  v195 = v283;
  sub_1CA948D98();
  v196 = v183;
  v197 = [v183 bundleURL];
  MEMORY[0x1EEE9AC00](v197);
  v198 = &v257 - v282;
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v146 + 200) = sub_1CA2F9F14(v263, v262, v193, v261, 0, 0, &v257 - v195, v198);
  v200 = v279;
  v201 = v270;
  *(v146 + 224) = v279;
  *(v146 + 232) = v201;
  v270 = sub_1CA94C438();
  *&v263 = v202;
  v203 = sub_1CA94C438();
  v262 = v204;
  v272 = &v257;
  MEMORY[0x1EEE9AC00](v203);
  sub_1CA948D98();
  v205 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  v206 = &v257 - v282;
  sub_1CA948B68();

  v207 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v208 = sub_1CA2F9F14(v270, v263, v203, v262, 0, 0, &v257 - v195, v206);
  *(v146 + 264) = v200;
  *(v146 + 240) = v208;
  sub_1CA94C1E8();
  v277[6] = sub_1CA2F864C();
  v209 = swift_allocObject();
  *(v209 + 16) = v264;
  v210 = MEMORY[0x1E69E6158];
  *(v209 + 64) = MEMORY[0x1E69E6158];
  *(v209 + 32) = v268;
  *(v209 + 40) = 0xD000000000000014;
  *(v209 + 48) = 0x80000001CA9AB710;
  *(v209 + 72) = sub_1CA94C368();
  *(v209 + 80) = 1702125892;
  *(v209 + 88) = 0xE400000000000000;
  v211 = v269;
  *(v209 + 104) = v210;
  *(v209 + 112) = v211;
  *(v209 + 120) = 0x6669636570534657;
  *(v209 + 128) = 0xEF65746144646569;
  v212 = v271;
  *(v209 + 144) = v210;
  *(v209 + 152) = v212;
  v213 = sub_1CA94C438();
  v271 = v214;
  v272 = v213;
  v215 = sub_1CA94C438();
  v270 = v216;
  v275 = &v257;
  MEMORY[0x1EEE9AC00](v215);
  v217 = &v257 - v283;
  sub_1CA948D98();
  v218 = v281;
  v219 = [v281 bundleURL];
  v269 = &v257;
  MEMORY[0x1EEE9AC00](v219);
  v220 = v282;
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v209 + 160) = sub_1CA2F9F14(v272, v271, v215, v270, 0, 0, v217, &v257 - v220);
  *(v209 + 184) = v279;
  *(v209 + 192) = @"Placeholder";
  v222 = @"Placeholder";
  v223 = sub_1CA94C438();
  v271 = v224;
  v272 = v223;
  v225 = sub_1CA94C438();
  v270 = v226;
  v275 = &v257;
  MEMORY[0x1EEE9AC00](v225);
  v227 = &v257 - v283;
  sub_1CA948D98();
  v228 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v209 + 200) = sub_1CA2F9F14(v272, v271, v225, v270, 0, 0, v227, &v257 - v220);
  *(v209 + 224) = v279;
  *(v209 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v230 = swift_allocObject();
  *(v230 + 16) = v266;
  v231 = @"RequiredResources";
  v232 = MEMORY[0x1E69E6158];
  *(v230 + 32) = sub_1CA94C1E8();
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v209 + 240) = v230;
  *(v209 + 264) = v233;
  *(v209 + 272) = @"TextAlignment";
  *(v209 + 304) = v232;
  *(v209 + 280) = 0x7468676952;
  *(v209 + 288) = 0xE500000000000000;
  v234 = @"TextAlignment";
  sub_1CA94C1E8();
  v235 = sub_1CA2F864C();
  v236 = v277;
  v277[7] = v235;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v238 = v278;
  v278[40] = v236;
  v238[43] = v237;
  v238[44] = @"ParameterSummary";
  v239 = @"ParameterSummary";
  v240 = sub_1CA94C438();
  v242 = v241;
  v243 = sub_1CA94C438();
  v245 = v244;
  MEMORY[0x1EEE9AC00](v243);
  v246 = &v257 - v283;
  sub_1CA948D98();
  v247 = [v281 bundleURL];
  MEMORY[0x1EEE9AC00](v247);
  v248 = &v257 - v282;
  sub_1CA948B68();

  v249 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v250 = sub_1CA2F9F14(v240, v242, v243, v245, 0, 0, v246, v248);
  v251 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v252 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v253 = v278;
  v278[45] = v251;
  v253[48] = v252;
  v253[49] = @"RequiredResources";
  v253[53] = v265;
  v253[50] = &unk_1F4A08238;
  v254 = @"RequiredResources";
  v255 = sub_1CA94C368();
  v253[58] = MEMORY[0x1E69E6530];
  v253[54] = v255;
  v253[55] = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5B0CC4()
{
  v115 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9D2270;
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
  v119 = v12;
  v123 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v108 - v123;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v122 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v120 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v121 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v108 - v121;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v118 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
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
  *&v116 = &v108;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v108 - v123;
  sub_1CA948D98();
  v33 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v108 - v121;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v114, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v118;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v117;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v116 = xmmword_1CA981350;
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
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v117;
  *(v38 + 192) = &unk_1F4A082B8;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v114 = v42;
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438();
  v110 = v45;
  v111 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v112 = &v108;
  MEMORY[0x1EEE9AC00](v46);
  v49 = v123;
  sub_1CA948D98();
  v50 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v108 - v121;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v111, v110, v46, v48, 0, 0, &v108 - v49, v51);
  v53 = v118;
  *(inited + 264) = v118;
  *(inited + 272) = @"Output";
  v54 = swift_initStackObject();
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
  v111 = v57;
  v112 = v56;
  v110 = sub_1CA94C438();
  v59 = v58;
  v113 = &v108;
  MEMORY[0x1EEE9AC00](v110);
  sub_1CA948D98();
  v60 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v108 - v121;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v112, v111, v110, v59, 0, 0, &v108 - v49, v61);
  *(v54 + 168) = v53;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 216) = v117;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 192) = &unk_1F4A082E8;
  v63 = MEMORY[0x1E69E6158];
  *(inited + 280) = sub_1CA94C1E8();
  *(inited + 304) = v114;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1CA9813B0;
  v113 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_allocObject();
  *(v64 + 16) = v116;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD000000000000018;
  *(v64 + 48) = 0x80000001CA9B0430;
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
  v110 = v70;
  v111 = v69;
  v71 = sub_1CA94C438();
  v109 = v72;
  v112 = &v108;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v108 - v123;
  sub_1CA948D98();
  v74 = v122;
  v75 = [v122 bundleURL];
  v108 = &v108;
  MEMORY[0x1EEE9AC00](v75);
  *&v116 = inited;
  v76 = v121;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 120) = sub_1CA2F9F14(v111, v110, v71, v109, 0, 0, v73, &v108 - v76);
  v78 = v118;
  *(v64 + 144) = v118;
  *(v64 + 152) = @"Placeholder";
  v79 = @"Placeholder";
  v80 = sub_1CA94C438();
  v110 = v81;
  v111 = v80;
  v82 = sub_1CA94C438();
  v109 = v83;
  v112 = &v108;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v108 - v123;
  sub_1CA948D98();
  v85 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v111, v110, v82, v109, 0, 0, v84, &v108 - v76);
  *(v64 + 184) = v78;
  *(v64 + 160) = v87;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v88 = sub_1CA2F864C();
  v89 = v114;
  *(v114 + 32) = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v91 = v116;
  *(v116 + 320) = v89;
  v91[43] = v90;
  v91[44] = @"ParameterSummary";
  v92 = @"ParameterSummary";
  v93 = sub_1CA94C438();
  v95 = v94;
  v96 = sub_1CA94C438();
  v98 = v97;
  v118 = &v108;
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v108 - v123;
  sub_1CA948D98();
  v100 = [v122 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v108 - v121;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v93, v95, v96, v98, 0, 0, v99, v101);
  v104 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v105 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v91[45] = v104;
  v91[48] = v105;
  v91[49] = @"RequiredResources";
  v91[53] = v117;
  v91[50] = &unk_1F4A08318;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v106 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5B1BC8()
{
  v336 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981340;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9D23E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v355 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v359 = v11;
  v356 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v327 - v356;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v358 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v357 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v354 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v327 - v354;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v355, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v355 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v352 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v353 = xmmword_1CA9813C0;
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = @"DescriptionInput";
  v22 = @"Description";
  v23 = @"DescriptionInput";
  v24 = sub_1CA94C438();
  v350 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v351 = &v327;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v327 - v356;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  v348 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v327 - v354;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v24, v350, v26, v28, 0, 0, v29, v32);
  *(v21 + 64) = v355;
  *(v21 + 72) = @"DescriptionResult";
  v34 = @"DescriptionResult";
  v35 = sub_1CA94C438();
  v349 = v36;
  v350 = v35;
  v347 = sub_1CA94C438();
  v38 = v37;
  v351 = &v327;
  MEMORY[0x1EEE9AC00](v347);
  v39 = v356;
  sub_1CA948D98();
  v40 = v358;
  v41 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = v354;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 80) = sub_1CA2F9F14(v350, v349, v347, v38, 0, 0, &v327 - v39, &v327 - v42);
  *(v21 + 104) = v355;
  *(v21 + 112) = @"DescriptionSummary";
  v44 = @"DescriptionSummary";
  v45 = sub_1CA94C438();
  v349 = v46;
  v350 = v45;
  v47 = sub_1CA94C438();
  v49 = v48;
  v351 = &v327;
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948D98();
  v50 = [v40 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v350, v349, v47, v49, 0, 0, &v327 - v39, &v327 - v42);
  *(v21 + 144) = v355;
  *(v21 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v53 = v352;
  v54 = sub_1CA6B3784();
  v55 = v348;
  v348[18] = v53;
  v55[15] = v54;
  v56 = v55;
  v55[19] = sub_1CA94C368();
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 160) = 1;
  v56[23] = v57;
  v56[24] = @"IconColor";
  v58 = v57;
  v56[25] = 0x6B63616C42;
  v56[26] = 0xE500000000000000;
  v59 = MEMORY[0x1E69E6158];
  v56[28] = MEMORY[0x1E69E6158];
  v56[29] = @"IconSymbol";
  strcpy(v56 + 240, "terminal.fill");
  *(v56 + 127) = -4864;
  v56[33] = v59;
  v56[34] = @"Input";
  v60 = v59;
  v61 = v56;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v345 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x656C7069746C754DLL;
  *(v62 + 40) = 0xE800000000000000;
  *(v62 + 48) = 0;
  *(v62 + 72) = v58;
  strcpy((v62 + 80), "ParameterKey");
  *(v62 + 93) = 0;
  *(v62 + 94) = -5120;
  *(v62 + 96) = 0x7475706E494657;
  *(v62 + 104) = 0xE700000000000000;
  *(v62 + 120) = v60;
  *(v62 + 128) = 0x6465726975716552;
  *(v62 + 136) = 0xE800000000000000;
  *(v62 + 144) = 0;
  *(v62 + 168) = v58;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 216) = v346;
  *(v62 + 192) = &unk_1F4A08368;
  v63 = @"IconColor";
  v64 = @"IconSymbol";
  v65 = @"Input";
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v352 = v67;
  v61[35] = v66;
  v61[38] = v67;
  v61[39] = @"Name";
  v68 = @"Name";
  v349 = sub_1CA94C438();
  v347 = v69;
  v70 = sub_1CA94C438();
  v72 = v71;
  v350 = &v327;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v327 - v356;
  sub_1CA948D98();
  v74 = v358;
  v75 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = v354;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v349, v347, v70, v72, 0, 0, v73, &v327 - v76);
  v79 = v348;
  v348[40] = v78;
  v80 = v355;
  v79[43] = v355;
  v79[44] = @"Output";
  v81 = swift_allocObject();
  *(v81 + 16) = v353;
  *(v81 + 32) = 0x656C7069746C754DLL;
  *(v81 + 40) = 0xE800000000000000;
  *(v81 + 48) = 0;
  *(v81 + 72) = MEMORY[0x1E69E6370];
  *(v81 + 80) = 0x614E74757074754FLL;
  *(v81 + 88) = 0xEA0000000000656DLL;
  v82 = @"Output";
  v83 = sub_1CA94C438();
  v350 = v84;
  v351 = v83;
  v349 = sub_1CA94C438();
  v86 = v85;
  *&v353 = &v327;
  MEMORY[0x1EEE9AC00](v349);
  v87 = &v327 - v356;
  sub_1CA948D98();
  v88 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 96) = sub_1CA2F9F14(v351, v350, v349, v86, 0, 0, v87, &v327 - v76);
  *(v81 + 120) = v80;
  *(v81 + 128) = 0x7365707954;
  *(v81 + 168) = v346;
  *(v81 + 136) = 0xE500000000000000;
  *(v81 + 144) = &unk_1F4A08398;
  v90 = MEMORY[0x1E69E6158];
  v91 = sub_1CA94C1E8();
  v92 = v348;
  v348[45] = v91;
  v92[48] = v352;
  v92[49] = @"ParameterCollapsingBehavior";
  v92[50] = 0x726576654ELL;
  v92[51] = 0xE500000000000000;
  v92[53] = v90;
  v92[54] = @"Parameters";
  v93 = v90;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v353 = swift_allocObject();
  *(v353 + 16) = xmmword_1CA985370;
  v352 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v94 = swift_allocObject();
  v338 = xmmword_1CA981300;
  *(v94 + 16) = xmmword_1CA981300;
  *(v94 + 32) = @"AutocapitalizationType";
  *(v94 + 40) = 1701736270;
  *(v94 + 48) = 0xE400000000000000;
  *(v94 + 64) = v93;
  *(v94 + 72) = @"Class";
  v347 = 0x80000001CA99B500;
  *(v94 + 80) = 0xD000000000000014;
  *(v94 + 88) = 0x80000001CA99B500;
  *(v94 + 104) = v93;
  *(v94 + 112) = @"DisableAutocorrection";
  *(v94 + 120) = 1;
  *(v94 + 144) = MEMORY[0x1E69E6370];
  *(v94 + 152) = @"Key";
  *(v94 + 160) = 0x7263534853534657;
  *(v94 + 168) = 0xEB00000000747069;
  *(v94 + 184) = v93;
  *(v94 + 192) = @"Label";
  v95 = @"AutocapitalizationType";
  v96 = @"Class";
  v97 = @"DisableAutocorrection";
  v98 = @"Key";
  v99 = @"Label";
  v100 = v95;
  v101 = v96;
  v102 = v97;
  v103 = v98;
  v104 = v99;
  v343 = v100;
  *&v339 = v101;
  v341 = v102;
  v337 = v103;
  v344 = v104;
  v105 = @"ParameterCollapsingBehavior";
  v106 = @"Parameters";
  v349 = sub_1CA94C438();
  v342 = v107;
  *&v335 = sub_1CA94C438();
  v109 = v108;
  v350 = &v327;
  MEMORY[0x1EEE9AC00](v335);
  v110 = v356;
  sub_1CA948D98();
  v111 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = v354;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v94 + 200) = sub_1CA2F9F14(v349, v342, v335, v109, 0, 0, &v327 - v110, &v327 - v112);
  v114 = v355;
  *(v94 + 224) = v355;
  *(v94 + 232) = @"MonospaceFont";
  *(v94 + 240) = 1;
  v115 = MEMORY[0x1E69E6370];
  *(v94 + 264) = MEMORY[0x1E69E6370];
  *(v94 + 272) = @"Multiline";
  *(v94 + 280) = 1;
  *(v94 + 304) = v115;
  *(v94 + 312) = @"Placeholder";
  v342 = @"Placeholder";
  v116 = @"MonospaceFont";
  v117 = @"Multiline";
  v349 = sub_1CA94C438();
  *&v335 = v118;
  v119 = sub_1CA94C438();
  v334 = v120;
  v350 = &v327;
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948D98();
  v121 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v349, v335, v119, v334, 0, 0, &v327 - v110, &v327 - v112);
  *(v94 + 344) = v114;
  *(v94 + 320) = v123;
  _s3__C3KeyVMa_0(0);
  v350 = v124;
  v349 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v353 + 32) = sub_1CA2F864C();
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1CA9813E0;
  *(v125 + 32) = v343;
  *(v125 + 40) = 1701736270;
  *(v125 + 48) = 0xE400000000000000;
  v126 = MEMORY[0x1E69E6158];
  v127 = v339;
  *(v125 + 64) = MEMORY[0x1E69E6158];
  *(v125 + 72) = v127;
  *(v125 + 80) = 0xD000000000000014;
  *(v125 + 88) = v347;
  v128 = v341;
  *(v125 + 104) = v126;
  *(v125 + 112) = v128;
  *(v125 + 120) = 1;
  v129 = v337;
  *(v125 + 144) = MEMORY[0x1E69E6370];
  *(v125 + 152) = v129;
  *(v125 + 160) = 0x736F484853534657;
  *(v125 + 168) = 0xE900000000000074;
  *(v125 + 184) = v126;
  *(v125 + 192) = @"KeyboardType";
  *(v125 + 200) = 5001813;
  *(v125 + 208) = 0xE300000000000000;
  v130 = v344;
  *(v125 + 224) = v126;
  *(v125 + 232) = v130;
  v131 = @"KeyboardType";
  v333 = v127;
  *&v335 = v129;
  v337 = v130;
  v334 = v131;
  *&v339 = sub_1CA94C438();
  v332 = v132;
  v133 = sub_1CA94C438();
  v331 = v134;
  v344 = &v327;
  MEMORY[0x1EEE9AC00](v133);
  v135 = v356;
  sub_1CA948D98();
  v136 = [v358 bundleURL];
  v330 = &v327;
  MEMORY[0x1EEE9AC00](v136);
  v137 = v112;
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v125 + 240) = sub_1CA2F9F14(v339, v332, v133, v331, 0, 0, &v327 - v135, &v327 - v112);
  v139 = v355;
  v140 = v342;
  *(v125 + 264) = v355;
  *(v125 + 272) = v140;
  v342 = v140;
  *&v339 = sub_1CA94C438();
  v332 = v141;
  v142 = sub_1CA94C438();
  v144 = v143;
  v344 = &v327;
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948D98();
  v145 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v125 + 280) = sub_1CA2F9F14(v339, v332, v142, v144, 0, 0, &v327 - v135, &v327 - v137);
  *(v125 + 304) = v139;
  *(v125 + 312) = @"TextAlignment";
  *(v125 + 320) = 0x7468676952;
  *(v125 + 328) = 0xE500000000000000;
  v147 = MEMORY[0x1E69E6158];
  *(v125 + 344) = MEMORY[0x1E69E6158];
  *(v125 + 352) = @"TextContentType";
  *(v125 + 384) = v147;
  v148 = v147;
  *(v125 + 360) = 5001813;
  *(v125 + 368) = 0xE300000000000000;
  v149 = @"TextAlignment";
  v150 = @"TextContentType";
  v151 = v149;
  v152 = v150;
  v332 = v151;
  v344 = v152;
  sub_1CA94C1E8();
  *(v353 + 40) = sub_1CA2F864C();
  v153 = swift_allocObject();
  v339 = xmmword_1CA981400;
  *(v153 + 16) = xmmword_1CA981400;
  v154 = v333;
  *(v153 + 32) = v333;
  *(v153 + 40) = 0xD000000000000014;
  *(v153 + 48) = v347;
  *(v153 + 64) = v148;
  *(v153 + 72) = @"DefaultValue";
  *(v153 + 80) = 12850;
  *(v153 + 88) = 0xE200000000000000;
  v155 = v335;
  *(v153 + 104) = v148;
  *(v153 + 112) = v155;
  *(v153 + 120) = 0x726F504853534657;
  *(v153 + 128) = 0xE900000000000074;
  v156 = v334;
  *(v153 + 144) = v148;
  *(v153 + 152) = v156;
  *(v153 + 160) = 0x61507265626D754ELL;
  *(v153 + 168) = 0xE900000000000064;
  *(v153 + 184) = v148;
  v157 = v337;
  *(v153 + 192) = v337;
  v158 = @"DefaultValue";
  v331 = v154;
  v334 = v155;
  *&v335 = v157;
  v337 = v158;
  v159 = sub_1CA94C438();
  v329 = v160;
  v330 = v159;
  v328 = sub_1CA94C438();
  v162 = v161;
  v333 = &v327;
  MEMORY[0x1EEE9AC00](v328);
  v163 = v356;
  sub_1CA948D98();
  v164 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  v165 = v354;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v153 + 200) = sub_1CA2F9F14(v330, v329, v328, v162, 0, 0, &v327 - v163, &v327 - v165);
  v167 = v355;
  v168 = v342;
  *(v153 + 224) = v355;
  *(v153 + 232) = v168;
  v333 = v168;
  v169 = sub_1CA94C438();
  v329 = v170;
  v330 = v169;
  v171 = sub_1CA94C438();
  v173 = v172;
  v342 = &v327;
  MEMORY[0x1EEE9AC00](v171);
  sub_1CA948D98();
  v174 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v153 + 240) = sub_1CA2F9F14(v330, v329, v171, v173, 0, 0, &v327 - v163, &v327 - v165);
  v176 = v332;
  *(v153 + 264) = v167;
  *(v153 + 272) = v176;
  v177 = MEMORY[0x1E69E6158];
  *(v153 + 304) = MEMORY[0x1E69E6158];
  *(v153 + 280) = 0x7468676952;
  *(v153 + 288) = 0xE500000000000000;
  v342 = v176;
  sub_1CA94C1E8();
  *(v353 + 48) = sub_1CA2F864C();
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_1CA981420;
  *(v178 + 32) = v343;
  *(v178 + 40) = 1701736270;
  *(v178 + 48) = 0xE400000000000000;
  v179 = v331;
  *(v178 + 64) = v177;
  *(v178 + 72) = v179;
  *(v178 + 80) = 0xD000000000000014;
  *(v178 + 88) = v347;
  v180 = v341;
  *(v178 + 104) = v177;
  *(v178 + 112) = v180;
  *(v178 + 120) = 1;
  v181 = MEMORY[0x1E69E6370];
  *(v178 + 144) = MEMORY[0x1E69E6370];
  *(v178 + 152) = @"DoNotLocalizePlaceholder";
  *(v178 + 160) = 1;
  *(v178 + 184) = v181;
  *(v178 + 192) = @"DoNotLocalizeValues";
  *(v178 + 200) = 1;
  v182 = v334;
  v183 = v335;
  *(v178 + 224) = v181;
  *(v178 + 232) = v182;
  *(v178 + 240) = 0x6573554853534657;
  *(v178 + 248) = 0xE900000000000072;
  *(v178 + 264) = v177;
  *(v178 + 272) = v183;
  v332 = v179;
  v334 = v182;
  *&v335 = v183;
  v184 = @"DoNotLocalizePlaceholder";
  v185 = @"DoNotLocalizeValues";
  v341 = sub_1CA94C438();
  v331 = v186;
  v330 = sub_1CA94C438();
  v188 = v187;
  v343 = &v327;
  MEMORY[0x1EEE9AC00](v330);
  v189 = v356;
  sub_1CA948D98();
  v190 = v358;
  v191 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v327 - v354;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v178 + 280) = sub_1CA2F9F14(v341, v331, v330, v188, 0, 0, &v327 - v189, v192);
  v194 = v355;
  v195 = v333;
  *(v178 + 304) = v355;
  *(v178 + 312) = v195;
  v343 = v195;
  v196 = sub_1CA94C438();
  v333 = v197;
  v198 = sub_1CA94C438();
  v200 = v199;
  v341 = &v327;
  MEMORY[0x1EEE9AC00](v198);
  v201 = &v327 - v189;
  sub_1CA948D98();
  v202 = [v190 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  v203 = &v327 - v354;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v178 + 320) = sub_1CA2F9F14(v196, v333, v198, v200, 0, 0, v201, v203);
  v205 = v342;
  *(v178 + 344) = v194;
  *(v178 + 352) = v205;
  *(v178 + 360) = 0x7468676952;
  *(v178 + 368) = 0xE500000000000000;
  v206 = MEMORY[0x1E69E6158];
  v207 = v344;
  *(v178 + 384) = MEMORY[0x1E69E6158];
  *(v178 + 392) = v207;
  *(v178 + 424) = v206;
  v208 = v206;
  *(v178 + 400) = 0x656D616E72657355;
  *(v178 + 408) = 0xE800000000000000;
  sub_1CA94C1E8();
  *(v353 + 56) = sub_1CA2F864C();
  v209 = swift_allocObject();
  *(v209 + 16) = v339;
  v210 = v332;
  *(v209 + 32) = v332;
  *(v209 + 40) = 0xD000000000000016;
  *(v209 + 48) = 0x80000001CA99C4A0;
  v211 = v337;
  *(v209 + 64) = v208;
  *(v209 + 72) = v211;
  *(v209 + 80) = 0x64726F7773736150;
  *(v209 + 88) = 0xE800000000000000;
  *(v209 + 104) = v208;
  *(v209 + 112) = @"DisallowedVariableTypes";
  *(v209 + 120) = &unk_1F4A083C8;
  *(v209 + 144) = v346;
  *(v209 + 152) = @"Items";
  v341 = swift_allocObject();
  *&v341->data = xmmword_1CA981360;
  v337 = v210;
  v212 = @"DisallowedVariableTypes";
  v213 = @"Items";
  *&v339 = sub_1CA94C438();
  v333 = v214;
  v215 = sub_1CA94C438();
  v332 = v216;
  v340 = &v327;
  MEMORY[0x1EEE9AC00](v215);
  v217 = v356;
  sub_1CA948D98();
  v218 = v358;
  v219 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v219);
  v220 = &v327 - v354;
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v222 = sub_1CA2F9F14(v339, v333, v215, v332, 0, 0, &v327 - v217, v220);
  v341[1].isa = v222;
  *&v339 = sub_1CA94C438();
  v333 = v223;
  v224 = sub_1CA94C438();
  v332 = v225;
  v340 = &v327;
  MEMORY[0x1EEE9AC00](v224);
  sub_1CA948D98();
  v226 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v226);
  v227 = v354;
  sub_1CA948B68();

  v228 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v229 = sub_1CA2F9F14(v339, v333, v224, v332, 0, 0, &v327 - v217, &v327 - v227);
  v230 = v341;
  v341[1].info = v229;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v209 + 160) = v230;
  v232 = v334;
  v233 = v335;
  *(v209 + 184) = v231;
  *(v209 + 192) = v232;
  *(v209 + 200) = 0xD000000000000017;
  *(v209 + 208) = 0x80000001CA99A580;
  *(v209 + 224) = MEMORY[0x1E69E6158];
  *(v209 + 232) = v233;
  v333 = v232;
  v334 = v233;
  v340 = sub_1CA94C438();
  *&v339 = v234;
  v235 = sub_1CA94C438();
  v237 = v236;
  v341 = &v327;
  MEMORY[0x1EEE9AC00](v235);
  v238 = &v327 - v356;
  sub_1CA948D98();
  v239 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v239);
  sub_1CA948B68();

  v240 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v209 + 240) = sub_1CA2F9F14(v340, v339, v235, v237, 0, 0, v238, &v327 - v227);
  *(v209 + 264) = v355;
  *(v209 + 272) = @"RequiredResources";
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v241 = swift_allocObject();
  v335 = xmmword_1CA981310;
  *(v241 + 16) = xmmword_1CA981310;
  *&v339 = @"RequiredResources";
  v242 = MEMORY[0x1E69E6158];
  *(v241 + 32) = sub_1CA94C1E8();
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v209 + 304) = v340;
  *(v209 + 280) = v241;
  sub_1CA94C1E8();
  *(v353 + 64) = sub_1CA2F864C();
  v243 = swift_allocObject();
  *(v243 + 16) = v338;
  v244 = v337;
  *(v243 + 32) = v337;
  *(v243 + 40) = 0xD000000000000014;
  *(v243 + 48) = v347;
  v245 = v333;
  *(v243 + 64) = v242;
  *(v243 + 72) = v245;
  strcpy((v243 + 80), "WFSSHPassword");
  *(v243 + 94) = -4864;
  *(v243 + 104) = v242;
  v246 = v334;
  *(v243 + 112) = v334;
  v347 = v244;
  *&v338 = v245;
  v337 = v246;
  v247 = sub_1CA94C438();
  v332 = v248;
  v333 = v247;
  v249 = sub_1CA94C438();
  v331 = v250;
  v334 = &v327;
  MEMORY[0x1EEE9AC00](v249);
  v251 = v356;
  sub_1CA948D98();
  v252 = [v358 bundleURL];
  v330 = &v327;
  MEMORY[0x1EEE9AC00](v252);
  sub_1CA948B68();

  v253 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v243 + 120) = sub_1CA2F9F14(v333, v332, v249, v331, 0, 0, &v327 - v251, &v327 - v227);
  v254 = v355;
  v255 = v343;
  *(v243 + 144) = v355;
  *(v243 + 152) = v255;
  v256 = sub_1CA94C438();
  v332 = v257;
  v333 = v256;
  v331 = sub_1CA94C438();
  v259 = v258;
  v334 = &v327;
  MEMORY[0x1EEE9AC00](v331);
  sub_1CA948D98();
  v260 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v260);
  sub_1CA948B68();

  v261 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v243 + 160) = sub_1CA2F9F14(v333, v332, v331, v259, 0, 0, &v327 - v251, &v327 - v227);
  v262 = v339;
  *(v243 + 184) = v254;
  *(v243 + 192) = v262;
  v263 = swift_allocObject();
  *(v263 + 16) = v335;
  v264 = MEMORY[0x1E69E6158];
  *(v263 + 32) = sub_1CA94C1E8();
  *(v243 + 200) = v263;
  *(v243 + 224) = v340;
  *(v243 + 232) = @"SecureTextInput";
  *(v243 + 240) = 1;
  v265 = v342;
  *(v243 + 264) = MEMORY[0x1E69E6370];
  *(v243 + 272) = v265;
  *(v243 + 280) = 0x7468676952;
  *(v243 + 288) = 0xE500000000000000;
  v266 = v344;
  *(v243 + 304) = v264;
  *(v243 + 312) = v266;
  *(v243 + 344) = v264;
  *(v243 + 320) = 0x64726F7773736150;
  *(v243 + 328) = 0xE800000000000000;
  v267 = @"SecureTextInput";
  sub_1CA94C1E8();
  *(v353 + 72) = sub_1CA2F864C();
  v268 = swift_allocObject();
  *(v268 + 16) = v345;
  *(v268 + 32) = v347;
  *(v268 + 40) = 0xD000000000000011;
  *(v268 + 48) = 0x80000001CA9D2700;
  v269 = v338;
  *(v268 + 64) = v264;
  *(v268 + 72) = v269;
  *(v268 + 80) = 0x79654B4853534657;
  *(v268 + 88) = 0xE800000000000000;
  v270 = v337;
  *(v268 + 104) = v264;
  *(v268 + 112) = v270;
  v271 = sub_1CA94C438();
  v273 = v272;
  v274 = sub_1CA94C438();
  v276 = v275;
  v344 = &v327;
  MEMORY[0x1EEE9AC00](v274);
  v277 = &v327 - v356;
  sub_1CA948D98();
  v278 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v278);
  v279 = &v327 - v354;
  sub_1CA948B68();

  v280 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v268 + 120) = sub_1CA2F9F14(v271, v273, v274, v276, 0, 0, v277, v279);
  v281 = v339;
  *(v268 + 144) = v355;
  *(v268 + 152) = v281;
  v282 = swift_allocObject();
  *(v282 + 16) = xmmword_1CA97EDF0;
  v283 = MEMORY[0x1E69E6158];
  *(v282 + 32) = sub_1CA94C1E8();
  v284 = v283;
  *(v282 + 40) = sub_1CA94C1E8();
  *(v268 + 184) = v340;
  *(v268 + 160) = v282;
  sub_1CA94C1E8();
  *(v353 + 80) = sub_1CA2F864C();
  v285 = swift_allocObject();
  *(v285 + 16) = v345;
  *(v285 + 32) = v347;
  *(v285 + 40) = 0xD000000000000019;
  *(v285 + 48) = 0x80000001CA99B030;
  v286 = v338;
  *(v285 + 64) = v284;
  *(v285 + 72) = v286;
  *(v285 + 80) = 0x7475706E494657;
  *(v285 + 88) = 0xE700000000000000;
  v287 = v337;
  *(v285 + 104) = v284;
  *(v285 + 112) = v287;
  v347 = sub_1CA94C438();
  *&v345 = v288;
  v289 = sub_1CA94C438();
  v344 = v290;
  v351 = &v327;
  MEMORY[0x1EEE9AC00](v289);
  v291 = v356;
  sub_1CA948D98();
  v292 = v358;
  v293 = [v358 bundleURL];
  v342 = &v327;
  MEMORY[0x1EEE9AC00](v293);
  v294 = v354;
  sub_1CA948B68();

  v295 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v285 + 120) = sub_1CA2F9F14(v347, v345, v289, v344, 0, 0, &v327 - v291, &v327 - v294);
  v296 = v343;
  *(v285 + 144) = v355;
  *(v285 + 152) = v296;
  v347 = sub_1CA94C438();
  *&v345 = v297;
  v298 = sub_1CA94C438();
  v344 = v299;
  v351 = &v327;
  MEMORY[0x1EEE9AC00](v298);
  sub_1CA948D98();
  v300 = [v292 bundleURL];
  MEMORY[0x1EEE9AC00](v300);
  sub_1CA948B68();

  v301 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v302 = sub_1CA2F9F14(v347, v345, v298, v344, 0, 0, &v327 - v291, &v327 - v294);
  *(v285 + 184) = v355;
  *(v285 + 160) = v302;
  sub_1CA94C1E8();
  v303 = sub_1CA2F864C();
  v304 = v353;
  *(v353 + 88) = v303;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v306 = v348;
  v348[55] = v304;
  v306[58] = v305;
  v306[59] = @"ParameterSummary";
  v307 = @"ParameterSummary";
  v308 = sub_1CA94C438();
  v310 = v309;
  v311 = sub_1CA94C438();
  v313 = v312;
  MEMORY[0x1EEE9AC00](v311);
  v314 = &v327 - v356;
  sub_1CA948D98();
  v315 = [v358 bundleURL];
  MEMORY[0x1EEE9AC00](v315);
  v316 = &v327 - v354;
  sub_1CA948B68();

  v317 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v318 = sub_1CA2F9F14(v308, v310, v311, v313, 0, 0, v314, v316);
  v319 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v320 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v321 = v348;
  v348[60] = v319;
  v321[63] = v320;
  v321[64] = @"RemoteExecuteOnPlatforms";
  v322 = v346;
  v321[68] = v346;
  v321[65] = &unk_1F4A08608;
  v321[69] = @"RequiredResources";
  v321[73] = v322;
  v321[70] = &unk_1F4A08638;
  v321[74] = @"ResidentCompatible";
  v321[78] = MEMORY[0x1E69E6370];
  *(v321 + 600) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v323 = @"RemoteExecuteOnPlatforms";
  v324 = @"RequiredResources";
  v325 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void LNEnumMetadata.toolkitDefinition(for:displayRepresentationConfig:localizationContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v163 = a2;
  v164 = a3;
  v141 = a1;
  v136 = sub_1CA94B058();
  v7 = OUTLINED_FUNCTION_1_0(v136);
  v151 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  v14 = sub_1CA94B5D8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_6_0();
  v18 = v17 - v16;
  v19 = sub_1CA94B478();
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v26 - v25);
  v27 = sub_1CA94ADC8();
  v28 = OUTLINED_FUNCTION_1_0(v27);
  v165 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v33 - v32);
  v162 = sub_1CA94B728();
  v34 = OUTLINED_FUNCTION_1_0(v162);
  v139 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6_0();
  v161 = v39 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v160 = &v134 - v42;
  v159 = sub_1CA94B5A8();
  v43 = OUTLINED_FUNCTION_1_0(v159);
  v166 = v44;
  v46 = *(v45 + 64);
  v47 = MEMORY[0x1EEE9AC00](v43);
  v169 = &v134 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v168 = &v134 - v49;
  v50 = sub_1CA94B488();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_19_0(v53 - v52);
  v157 = sub_1CA94B078();
  v54 = OUTLINED_FUNCTION_1_0(v157);
  v167 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_6_0();
  v158 = v59 - v58;
  v60 = sub_1CA5B5314(v5);
  v61 = MEMORY[0x1E69E7CC0];
  v144 = v5;
  v138 = a4;
  v137 = v18;
  v135 = v13;
  v142 = v19;
  v140 = v22;
  v145 = v27;
  if (v60)
  {
    v62 = v60;
    v63 = sub_1CA25B410();
    if (v63)
    {
      v155 = v63;
      v156 = v62;
      v170 = v61;
      sub_1CA2B91A0();
      if (v155 < 0)
      {
LABEL_49:
        __break(1u);
        return;
      }

      v64 = 0;
      v61 = v170;
      v65 = v156;
      v154 = v156 & 0xC000000000000001;
      v147 = v156 & 0xFFFFFFFFFFFFFF8;
      v150 = *MEMORY[0x1E69DB240];
      v148 = (v167 + 104);
      v149 = v167 + 32;
      while (1)
      {
        v66 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          break;
        }

        v152 = v61;
        if (v154)
        {
          v67 = MEMORY[0x1CCAA22D0](v64, v65);
        }

        else
        {
          if (v64 >= *(v147 + 16))
          {
            goto LABEL_47;
          }

          v67 = *(v65 + 8 * v64 + 32);
        }

        v68 = v67;
        v69 = [v67 name];
        sub_1CA94C3A8();

        v70 = [v68 version];
        sub_1CA94C3A8();

        v71 = v153;
        sub_1CA94B498();
        v153 = v71;
        if (v71)
        {

          return;
        }

        sub_1CA5B5384(v68);
        if (!v72)
        {
          v73 = sub_1CA949348();
          v74 = [v68 name];
          sub_1CA94C3A8();

          if (*(v73 + 16) && (v75 = sub_1CA271BF8(), (v76 & 1) != 0))
          {
            v77 = (*(v73 + 56) + 16 * v75);
            v79 = *v77;
            v78 = v77[1];
            sub_1CA94C218();
          }

          else
          {

            sub_1CA94B548();
          }
        }

        v80 = v158;
        sub_1CA94B558();
        v81 = v157;
        (*v148)(v80, v150, v157);

        v61 = v152;
        v170 = v152;
        v82 = *(v152 + 16);
        if (v82 >= *(v152 + 24) >> 1)
        {
          sub_1CA2B91A0();
          v80 = v158;
          v61 = v170;
        }

        *(v61 + 16) = v82 + 1;
        (*(v167 + 32))(v61 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v82, v80, v81);
        ++v64;
        v65 = v156;
        if (v66 == v155)
        {

          v5 = v144;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }
  }

LABEL_22:
  v83 = [v5 cases];
  sub_1CA25B3D0(0, &unk_1EC4419C0, 0x1E69AC820);
  v84 = sub_1CA94C658();

  v167 = v84;
  v85 = sub_1CA25B410();
  v86 = MEMORY[0x1E69E7CC0];
  v152 = v61;
  if (v85)
  {
    if (v85 < 1)
    {
      goto LABEL_48;
    }

    v87 = 0;
    v158 = v167 & 0xC000000000000001;
    v156 = v166 + 16;
    v157 = (v139 + 16);
    v154 = v166 + 32;
    v155 = v166 + 8;
    do
    {
      v88 = v85;
      if (v158)
      {
        v89 = MEMORY[0x1CCAA22D0](v87, v167);
      }

      else
      {
        v89 = *(v167 + 8 * v87 + 32);
      }

      v90 = v89;
      v91 = [v89 identifier];
      sub_1CA94C3A8();

      v92 = [v90 displayRepresentation];
      v93 = v161;
      (*v157)(v161, v163, v162);
      v94 = v164;
      v95 = v160;
      DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(v92, v93, v94, v160);
      v96 = sub_1CA94B458();
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v96);
      v97 = v168;
      sub_1CA94B588();
      v98 = v159;
      (*v156)(v169, v97, v159);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = *(v86 + 16);
        sub_1CA2E72D4();
        v86 = v104;
      }

      v99 = *(v86 + 16);
      if (v99 >= *(v86 + 24) >> 1)
      {
        sub_1CA2E72D4();
        v86 = v105;
      }

      ++v87;

      v100 = v166;
      (*(v166 + 8))(v168, v98);
      *(v86 + 16) = v99 + 1;
      (*(v100 + 32))(v86 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v99, v169, v98);
      v85 = v88;
      v101 = v88 == v87;
      v102 = v165;
    }

    while (!v101);
  }

  else
  {
    v102 = v165;
  }

  (*(v102 + 16))(v146, v141, v145);
  v106 = v140;
  v107 = v143;
  v108 = v142;
  (*(v140 + 104))(v143, *MEMORY[0x1E69DB3B8], v142);
  sub_1CA94C218();
  v109 = v144;
  sub_1CA26BB28(v144);
  v110 = v153;
  v111 = sub_1CA94B698();
  if (v110)
  {

    (*(v106 + 8))(v107, v108);
    (*(v102 + 8))(v146, v145);
  }

  else
  {
    v112 = v111;
    v153 = 0;

    v113 = *(v112 + 16);
    if (v113)
    {
      v170 = MEMORY[0x1E69E7CC0];
      sub_1CA2B9148();
      v114 = v170;
      v169 = sub_1CA94B6B8();
      v115 = *(v169 - 1);
      v116 = *(v115 + 16);
      v167 = v115 + 16;
      v168 = v116;
      v117 = *(v115 + 80);
      v162 = v112;
      v118 = v112 + ((v117 + 32) & ~v117);
      v166 = *(v115 + 72);
      LODWORD(v165) = *MEMORY[0x1E69DB220];
      v119 = (v151 + 104);
      v163 = v151 + 32;
      v120 = v136;
      v121 = v135;
      do
      {
        (v168)(v121, v118, v169);
        (*v119)(v121, v165, v120);
        v170 = v114;
        v122 = *(v114 + 16);
        if (v122 >= *(v114 + 24) >> 1)
        {
          sub_1CA2B9148();
          v120 = v136;
          v114 = v170;
        }

        *(v114 + 16) = v122 + 1;
        (*(v151 + 32))(v114 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v122, v121, v120);
        v118 += v166;
        --v113;
      }

      while (v113);

      v109 = v144;
    }

    else
    {
    }

    v123 = [v109 displayRepresentation];
    v124 = [v164 locale];
    v125 = sub_1CA948E58();
    v126 = OUTLINED_FUNCTION_1_0(v125);
    v128 = v127;
    v130 = *(v129 + 64);
    MEMORY[0x1EEE9AC00](v126);
    OUTLINED_FUNCTION_6_0();
    v133 = v132 - v131;
    sub_1CA948DA8();

    sub_1CA948D48();
    (*(v128 + 8))(v133, v125);
    sub_1CA94B5B8();
    sub_1CA94B468();
  }
}

uint64_t sub_1CA5B5314(void *a1)
{
  v1 = [a1 assistantDefinedSchemas];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EC441778, 0x1E69AC6D0);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA5B5384(void *a1)
{
  v1 = [a1 domain];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

id sub_1CA5B541C()
{
  v28[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
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

id sub_1CA5B57C8()
{
  v29[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
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
  *(inited + 112) = @"Discoverable";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 0;
  *(inited + 144) = v6;
  *(inited + 152) = @"LocallyProcessesData";
  *(inited + 160) = 1;
  *(inited + 184) = v6;
  *(inited + 192) = @"Name";
  v7 = @"Discoverable";
  v8 = @"LocallyProcessesData";
  v9 = @"Name";
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA94C438();
  v15 = v14;
  v16 = sub_1CA948E58();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v20 = [qword_1EDB9F690 bundleURL];
  v21 = sub_1CA948BA8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v10, v12, v13, v15, 0, 0, v19, v24);
  *(inited + 224) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v26;
  v27 = sub_1CA94C368();
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 232) = v27;
  *(inited + 240) = 0xD000000000000015;
  *(inited + 248) = 0x80000001CA9D2880;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5B5B90()
{
  v313 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  v312 = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9D28B0;
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
  v333 = v12;
  v330 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v304 - v330;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v332 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v331 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v329 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v304 - v329;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v328 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v327 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v319 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v326 = &v304;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v304 - v330;
  sub_1CA948D98();
  v31 = [v332 bundleURL];
  v325 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v304 - v329;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v328;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v327;
  v37 = sub_1CA6B3784();
  v38 = v325;
  v325[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 1702194242;
  v38[21] = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 1886351971;
  v38[26] = 0xE400000000000000;
  v38[28] = v39;
  v38[29] = @"Input";
  v40 = v38;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  v323 = xmmword_1CA981350;
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
  *(v41 + 120) = v39;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  v43 = v42;
  *(v41 + 184) = 0xE500000000000000;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v327;
  *(v41 + 192) = &unk_1F4A086F8;
  v44 = @"IconColor";
  v45 = @"IconSymbol";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v326 = v48;
  v40[30] = v47;
  v40[33] = v48;
  v40[34] = @"InputPassthrough";
  *(v40 + 280) = 0;
  v40[38] = v43;
  v40[39] = @"Name";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438();
  *&v321 = v52;
  v53 = sub_1CA94C438();
  v55 = v54;
  v322 = &v304;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v304 - v330;
  sub_1CA948D98();
  v57 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v304 - v329;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v51, v321, v53, v55, 0, 0, v56, v58);
  v61 = v325;
  v325[40] = v60;
  v62 = v328;
  v61[43] = v328;
  v61[44] = @"Output";
  v63 = swift_allocObject();
  *(v63 + 16) = v323;
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
  v322 = sub_1CA94C438();
  *&v321 = v65;
  v66 = sub_1CA94C438();
  v68 = v67;
  v324 = &v304;
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v304 - v330;
  sub_1CA948D98();
  v70 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v304 - v329;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v322, v321, v66, v68, 0, 0, v69, v71);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v327;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A08728;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v325;
  v325[45] = v74;
  v75[48] = v326;
  v75[49] = @"Parameters";
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v327 = swift_allocObject();
  v310 = xmmword_1CA981410;
  *(v327 + 16) = xmmword_1CA981410;
  v326 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_initStackObject();
  *(v76 + 16) = v323;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD000000000000019;
  *(v76 + 48) = 0x80000001CA99B030;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"Key";
  *(v76 + 80) = 0x7475706E494657;
  *(v76 + 88) = 0xE700000000000000;
  *(v76 + 104) = v73;
  *(v76 + 112) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v318 = v80;
  v314 = v81;
  v315 = v82;
  v83 = @"Parameters";
  v322 = sub_1CA94C438();
  *&v321 = v84;
  v85 = sub_1CA94C438();
  v317 = v86;
  *&v323 = &v304;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v330;
  sub_1CA948D98();
  v88 = v332;
  v89 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v329;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 120) = sub_1CA2F9F14(v322, v321, v85, v317, 0, 0, &v304 - v87, &v304 - v90);
  v92 = v328;
  *(v76 + 144) = v328;
  *(v76 + 152) = @"Placeholder";
  v316 = @"Placeholder";
  v322 = sub_1CA94C438();
  *&v321 = v93;
  v94 = sub_1CA94C438();
  v96 = v95;
  *&v323 = &v304;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v304 - v87;
  sub_1CA948D98();
  v98 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v322, v321, v94, v96, 0, 0, v97, &v304 - v90);
  *(v76 + 184) = v92;
  *(v76 + 160) = v100;
  _s3__C3KeyVMa_0(0);
  *&v323 = v101;
  v322 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v327 + 32) = sub_1CA2F864C();
  v102 = swift_allocObject();
  v317 = v102;
  v321 = xmmword_1CA981380;
  *(v102 + 16) = xmmword_1CA981380;
  v103 = v318;
  *(v102 + 32) = v318;
  *(v102 + 40) = 0xD000000000000016;
  *(v102 + 48) = 0x80000001CA99C4A0;
  v104 = MEMORY[0x1E69E6158];
  *(v102 + 64) = MEMORY[0x1E69E6158];
  *(v102 + 72) = @"DefaultValue";
  *(v102 + 80) = 0x7265746E6543;
  *(v102 + 88) = 0xE600000000000000;
  *(v102 + 104) = v104;
  *(v102 + 112) = @"Description";
  v105 = @"DefaultValue";
  v311 = v103;
  v318 = v105;
  v106 = @"Description";
  v308 = sub_1CA94C438();
  v108 = v107;
  v109 = sub_1CA94C438();
  v111 = v110;
  v309 = &v304;
  MEMORY[0x1EEE9AC00](v109);
  v112 = v330;
  sub_1CA948D98();
  v113 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v304 - v329;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v308, v108, v109, v111, 0, 0, &v304 - v112, v114);
  v117 = v317;
  v317[15] = v116;
  *(v117 + 144) = v328;
  *(v117 + 152) = @"Items";
  v118 = swift_allocObject();
  *(v118 + 16) = v310;
  v119 = v118;
  v320 = v118;
  v120 = @"Items";
  v121 = sub_1CA94C438();
  v308 = v122;
  v309 = v121;
  v123 = sub_1CA94C438();
  v307 = v124;
  *&v310 = &v304;
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v304 - v112;
  sub_1CA948D98();
  v126 = v332;
  v127 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = v329;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 32) = sub_1CA2F9F14(v309, v308, v123, v307, 0, 0, v125, &v304 - v128);
  v130 = sub_1CA94C438();
  v308 = v131;
  v309 = v130;
  v132 = sub_1CA94C438();
  v307 = v133;
  *&v310 = &v304;
  MEMORY[0x1EEE9AC00](v132);
  v134 = v330;
  sub_1CA948D98();
  v135 = [v126 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  v136 = v128;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v309, v308, v132, v307, 0, 0, &v304 - v134, &v304 - v128);
  v320[5] = v138;
  v139 = sub_1CA94C438();
  v308 = v140;
  v309 = v139;
  v141 = sub_1CA94C438();
  v307 = v142;
  *&v310 = &v304;
  MEMORY[0x1EEE9AC00](v141);
  v143 = v134;
  sub_1CA948D98();
  v144 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v309, v308, v141, v307, 0, 0, &v304 - v134, &v304 - v136);
  v147 = v320;
  v320[6] = v146;
  v148 = sub_1CA94C438();
  v308 = v149;
  v309 = v148;
  v307 = sub_1CA94C438();
  v151 = v150;
  *&v310 = &v304;
  MEMORY[0x1EEE9AC00](v307);
  sub_1CA948D98();
  v152 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v147 + 56) = sub_1CA2F9F14(v309, v308, v307, v151, 0, 0, &v304 - v143, &v304 - v136);
  v154 = sub_1CA94C438();
  v308 = v155;
  v309 = v154;
  v156 = sub_1CA94C438();
  v307 = v157;
  *&v310 = &v304;
  MEMORY[0x1EEE9AC00](v156);
  v158 = v330;
  sub_1CA948D98();
  v159 = v332;
  v160 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = v329;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v163 = sub_1CA2F9F14(v309, v308, v156, v307, 0, 0, &v304 - v158, &v304 - v161);
  v320[8] = v163;
  v164 = sub_1CA94C438();
  v308 = v165;
  v309 = v164;
  v166 = sub_1CA94C438();
  v307 = v167;
  *&v310 = &v304;
  MEMORY[0x1EEE9AC00](v166);
  sub_1CA948D98();
  v168 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v170 = sub_1CA2F9F14(v309, v308, v166, v307, 0, 0, &v304 - v158, &v304 - v161);
  v171 = v320;
  v320[9] = v170;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v173 = v317;
  v317[20] = v171;
  v174 = v314;
  v175 = v315;
  v173[23] = v172;
  v173[24] = v174;
  v173[25] = 0xD000000000000013;
  v173[26] = 0x80000001CA99A5A0;
  v173[28] = MEMORY[0x1E69E6158];
  v173[29] = v175;
  *&v310 = v174;
  v315 = v175;
  v176 = sub_1CA94C438();
  v314 = v177;
  v178 = sub_1CA94C438();
  v180 = v179;
  v320 = &v304;
  MEMORY[0x1EEE9AC00](v178);
  v181 = &v304 - v330;
  sub_1CA948D98();
  v182 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v182);
  v183 = &v304 - v329;
  sub_1CA948B68();

  v184 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v185 = sub_1CA2F9F14(v176, v314, v178, v180, 0, 0, v181, v183);
  v173[33] = v328;
  v173[30] = v185;
  sub_1CA94C1E8();
  *(v327 + 40) = sub_1CA2F864C();
  v186 = swift_allocObject();
  *(v186 + 16) = v321;
  v320 = 0x80000001CA99C180;
  v187 = v311;
  *(v186 + 32) = v311;
  *(v186 + 40) = 0xD000000000000016;
  *(v186 + 48) = 0x80000001CA99C180;
  v188 = MEMORY[0x1E69E6158];
  v189 = v310;
  *(v186 + 64) = MEMORY[0x1E69E6158];
  *(v186 + 72) = v189;
  strcpy((v186 + 80), "WFImageCropX");
  *(v186 + 93) = 0;
  *(v186 + 94) = -5120;
  v190 = v315;
  *(v186 + 104) = v188;
  *(v186 + 112) = v190;
  v314 = v187;
  v311 = v189;
  v317 = v190;
  v191 = sub_1CA94C438();
  v309 = v192;
  *&v310 = v191;
  v308 = sub_1CA94C438();
  v194 = v193;
  v315 = &v304;
  MEMORY[0x1EEE9AC00](v308);
  v195 = v330;
  sub_1CA948D98();
  v196 = v332;
  v197 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v197);
  v198 = v329;
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v186 + 120) = sub_1CA2F9F14(v310, v309, v308, v194, 0, 0, &v304 - v195, &v304 - v198);
  v200 = v328;
  v201 = v316;
  *(v186 + 144) = v328;
  *(v186 + 152) = v201;
  v315 = v201;
  v202 = sub_1CA94C438();
  v309 = v203;
  *&v310 = v202;
  v204 = sub_1CA94C438();
  v308 = v205;
  v316 = &v304;
  MEMORY[0x1EEE9AC00](v204);
  sub_1CA948D98();
  v206 = [v196 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  sub_1CA948B68();

  v207 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v186 + 160) = sub_1CA2F9F14(v310, v309, v204, v308, 0, 0, &v304 - v195, &v304 - v198);
  *(v186 + 184) = v200;
  *(v186 + 192) = @"RequiredResources";
  *&v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v208 = swift_allocObject();
  *(v208 + 16) = v319;
  v309 = @"RequiredResources";
  v209 = MEMORY[0x1E69E6158];
  *(v208 + 32) = sub_1CA94C1E8();
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v308 = v210;
  *(v186 + 200) = v208;
  *(v186 + 224) = v210;
  *(v186 + 232) = @"TextAlignment";
  *(v186 + 264) = v209;
  *(v186 + 240) = 0x7468676952;
  *(v186 + 248) = 0xE500000000000000;
  v307 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v327 + 48) = sub_1CA2F864C();
  v211 = swift_allocObject();
  *(v211 + 16) = v321;
  v212 = v314;
  *(v211 + 32) = v314;
  *(v211 + 40) = 0xD000000000000016;
  *(v211 + 48) = v320;
  v213 = v311;
  *(v211 + 64) = v209;
  *(v211 + 72) = v213;
  strcpy((v211 + 80), "WFImageCropY");
  *(v211 + 93) = 0;
  *(v211 + 94) = -5120;
  *(v211 + 104) = v209;
  v214 = v317;
  *(v211 + 112) = v317;
  v314 = v212;
  v316 = v213;
  v317 = v214;
  v215 = sub_1CA94C438();
  v305 = v216;
  v306 = v215;
  v217 = sub_1CA94C438();
  v304 = v218;
  v311 = &v304;
  MEMORY[0x1EEE9AC00](v217);
  v219 = v330;
  sub_1CA948D98();
  v220 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  v221 = v329;
  sub_1CA948B68();

  v222 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 120) = sub_1CA2F9F14(v306, v305, v217, v304, 0, 0, &v304 - v219, &v304 - v221);
  v223 = v328;
  v224 = v315;
  *(v211 + 144) = v328;
  *(v211 + 152) = v224;
  v315 = v224;
  v225 = sub_1CA94C438();
  v305 = v226;
  v306 = v225;
  v227 = sub_1CA94C438();
  v229 = v228;
  v311 = &v304;
  MEMORY[0x1EEE9AC00](v227);
  sub_1CA948D98();
  v230 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v230);
  sub_1CA948B68();

  v231 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v211 + 160) = sub_1CA2F9F14(v306, v305, v227, v229, 0, 0, &v304 - v219, &v304 - v221);
  v232 = v309;
  *(v211 + 184) = v223;
  *(v211 + 192) = v232;
  v233 = swift_allocObject();
  *(v233 + 16) = v319;
  v234 = MEMORY[0x1E69E6158];
  *(v233 + 32) = sub_1CA94C1E8();
  *(v211 + 200) = v233;
  v235 = v307;
  *(v211 + 224) = v308;
  *(v211 + 232) = v235;
  *(v211 + 264) = v234;
  *(v211 + 240) = 0x7468676952;
  *(v211 + 248) = 0xE500000000000000;
  *&v319 = v235;
  sub_1CA94C1E8();
  *(v327 + 56) = sub_1CA2F864C();
  v236 = swift_allocObject();
  *(v236 + 16) = v321;
  *(v236 + 32) = v314;
  *(v236 + 40) = 0xD000000000000016;
  *(v236 + 48) = v320;
  v237 = v318;
  *(v236 + 64) = v234;
  *(v236 + 72) = v237;
  v238 = MEMORY[0x1E69E6530];
  *(v236 + 80) = 100;
  v239 = v316;
  *(v236 + 104) = v238;
  *(v236 + 112) = v239;
  *(v236 + 120) = 0xD000000000000010;
  *(v236 + 128) = 0x80000001CA9D2BD0;
  v240 = v317;
  *(v236 + 144) = v234;
  *(v236 + 152) = v240;
  v241 = sub_1CA94C438();
  v309 = v242;
  *&v310 = v241;
  v243 = sub_1CA94C438();
  v308 = v244;
  v311 = &v304;
  MEMORY[0x1EEE9AC00](v243);
  v245 = v330;
  sub_1CA948D98();
  v246 = v332;
  v247 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v247);
  v248 = &v304 - v329;
  sub_1CA948B68();

  v249 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v236 + 160) = sub_1CA2F9F14(v310, v309, v243, v308, 0, 0, &v304 - v245, v248);
  v250 = v328;
  v251 = v315;
  *(v236 + 184) = v328;
  *(v236 + 192) = v251;
  v252 = sub_1CA94C438();
  v309 = v253;
  *&v310 = v252;
  v254 = sub_1CA94C438();
  v256 = v255;
  v311 = &v304;
  MEMORY[0x1EEE9AC00](v254);
  sub_1CA948D98();
  v257 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v257);
  v258 = v329;
  sub_1CA948B68();

  v259 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v236 + 200) = sub_1CA2F9F14(v310, v309, v254, v256, 0, 0, &v304 - v245, &v304 - v258);
  v260 = v319;
  *(v236 + 224) = v250;
  *(v236 + 232) = v260;
  v261 = MEMORY[0x1E69E6158];
  *(v236 + 264) = MEMORY[0x1E69E6158];
  *(v236 + 240) = 0x7468676952;
  *(v236 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v327 + 64) = sub_1CA2F864C();
  v262 = swift_allocObject();
  *(v262 + 16) = v321;
  *(v262 + 32) = v314;
  *(v262 + 40) = 0xD000000000000016;
  *(v262 + 48) = v320;
  v263 = v318;
  *(v262 + 64) = v261;
  *(v262 + 72) = v263;
  *(v262 + 80) = 100;
  v264 = v316;
  *(v262 + 104) = MEMORY[0x1E69E6530];
  *(v262 + 112) = v264;
  *(v262 + 120) = v312;
  *(v262 + 128) = 0x80000001CA9D2C30;
  v265 = v317;
  *(v262 + 144) = v261;
  *(v262 + 152) = v265;
  v266 = sub_1CA94C438();
  v320 = v267;
  *&v321 = v266;
  v268 = sub_1CA94C438();
  v318 = v269;
  v324 = &v304;
  MEMORY[0x1EEE9AC00](v268);
  v270 = &v304 - v330;
  sub_1CA948D98();
  v271 = v332;
  v272 = [v332 bundleURL];
  v317 = &v304;
  MEMORY[0x1EEE9AC00](v272);
  sub_1CA948B68();

  v273 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v262 + 160) = sub_1CA2F9F14(v321, v320, v268, v318, 0, 0, v270, &v304 - v258);
  v274 = v315;
  *(v262 + 184) = v328;
  *(v262 + 192) = v274;
  v275 = sub_1CA94C438();
  v320 = v276;
  *&v321 = v275;
  v277 = sub_1CA94C438();
  v318 = v278;
  v324 = &v304;
  MEMORY[0x1EEE9AC00](v277);
  v279 = v330;
  sub_1CA948D98();
  v280 = [v271 bundleURL];
  MEMORY[0x1EEE9AC00](v280);
  sub_1CA948B68();

  v281 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v262 + 200) = sub_1CA2F9F14(v321, v320, v277, v318, 0, 0, &v304 - v279, &v304 - v258);
  v282 = v319;
  *(v262 + 224) = v328;
  *(v262 + 232) = v282;
  *(v262 + 264) = MEMORY[0x1E69E6158];
  *(v262 + 240) = 0x7468676952;
  *(v262 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  v283 = sub_1CA2F864C();
  v284 = v327;
  *(v327 + 72) = v283;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v286 = v325;
  v325[50] = v284;
  v286[53] = v285;
  v286[54] = @"ParameterSummary";
  v287 = @"ParameterSummary";
  v288 = sub_1CA94C438();
  v290 = v289;
  v291 = sub_1CA94C438();
  v293 = v292;
  MEMORY[0x1EEE9AC00](v291);
  v294 = &v304 - v279;
  sub_1CA948D98();
  v295 = [v332 bundleURL];
  MEMORY[0x1EEE9AC00](v295);
  v296 = &v304 - v329;
  sub_1CA948B68();

  v297 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v298 = sub_1CA2F9F14(v288, v290, v291, v293, 0, 0, v294, v296);
  v299 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v300 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v301 = v325;
  v325[55] = v299;
  v301[58] = v300;
  v301[59] = @"ResidentCompatible";
  v301[63] = MEMORY[0x1E69E6370];
  *(v301 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v302 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA5B8094(uint64_t a1)
{
  v12 = MEMORY[0x1E69E7CD0];
  v3 = [v1 actions];
  sub_1CA3A2F84();
  v4 = sub_1CA94C658();

  result = sub_1CA25B410();
  if (result)
  {
    v6 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      v7 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1CCAA22D0](v7, v4);
        }

        else
        {
          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        ++v7;
        v10 = [v8 userVisibleStringsForUseCase_];
        type metadata accessor for WFUserVisibleString();
        sub_1CA3434EC();
        v11 = sub_1CA94C8F8();

        sub_1CA342840(v11);
      }

      while (v6 != v7);

      return v12;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1CA5B8260()
{
  v1 = [v0 actions];
  sub_1CA3A2F84();
  v2 = sub_1CA94C658();

  result = sub_1CA25B410();
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCAA22D0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v8 = sub_1CA94C1A8();
      [v7 rewriteWithStrings_];
    }

    while (v4 != v5);
  }
}

uint64_t sub_1CA5B840C(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v48 = MEMORY[0x1E69E7CC8];
  v43 = *(a1 + 16);
  for (i = (a1 + 72); ; i += 6)
  {
    if (v43 == v1)
    {

      return v2;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    v4 = *(i - 4);
    v45 = v1;
    v46 = *(i - 5);
    v5 = *(i - 2);
    v47 = *(i - 3);
    v6 = *(i - 1);
    v7 = *i;
    v8 = v6;
    sub_1CA94C218();
    v9 = v8;
    sub_1CA94C218();
    sub_1CA94C218();
    v17 = sub_1CA3211F0(v6);
    v18 = v2[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v2[3] < v20)
    {
      sub_1CA5C3C18(v20, 1, v11, v12, v13, v14, v15, v16, v39, v40, *v41, v41[4]);
      v2 = v48;
      v22 = sub_1CA3211F0(v6);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v17 = v22;
    }

    if (v21)
    {

      v24 = v2[7];
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      v42 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = *(v25 + 16);
        sub_1CA278A8C();
        v25 = v36;
        *(v24 + 8 * v17) = v36;
      }

      v27 = *(v25 + 16);
      v28 = v27 + 1;
      if (v27 >= *(v25 + 24) >> 1)
      {
        v40 = v27 + 1;
        sub_1CA278A8C();
        v28 = v27 + 1;
        v25 = v37;
        *(v42 + 8 * v17) = v37;
      }

      *(v25 + 16) = v28;
      v29 = (v25 + 48 * v27);
      v30 = v45;
      v29[4] = v46;
      v29[5] = v4;
      v29[6] = v47;
      v29[7] = v5;
      v29[8] = v6;
      v29[9] = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443960, &qword_1CA981A58);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1CA981310;
      *(v31 + 32) = v46;
      *(v31 + 40) = v4;
      *(v31 + 48) = v47;
      *(v31 + 56) = v5;
      *(v31 + 64) = v6;
      *(v31 + 72) = v7;
      v2[(v17 >> 6) + 8] |= 1 << v17;
      *(v2[6] + 8 * v17) = v6;
      *(v2[7] + 8 * v17) = v31;
      v32 = v2[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_20;
      }

      v2[2] = v34;
      v30 = v45;
    }

    v1 = v30 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B80, qword_1CA98CC50);
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA5B8698(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
  v3 = sub_1CA25B410();
  v4 = 0;
  v30 = xmmword_1CA9813B0;
  while (1)
  {
    if (v3 == v4)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = [v5 namedQueryInfo];
    v15 = sub_1CA3211F0(v7);
    v16 = v2[2];
    v17 = (v8 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_22;
    }

    v19 = v8;
    if (v2[3] < v18)
    {
      sub_1CA5C3C2C(v18, 1, v9, v10, v11, v12, v13, v14, v28, v29, v30, SBYTE4(v30));
      v2 = v31;
      v20 = sub_1CA3211F0(v7);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_24;
      }

      v15 = v20;
    }

    if (v19)
    {

      v22 = (v2[7] + 8 * v15);
      MEMORY[0x1CCAA1490]();
      if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v23 = swift_allocObject();
      *(v23 + 16) = v30;
      *(v23 + 32) = v6;
      v2[(v15 >> 6) + 8] |= 1 << v15;
      *(v2[6] + 8 * v15) = v7;
      *(v2[7] + 8 * v15) = v23;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_23;
      }

      v2[2] = v26;
    }

    ++v4;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B80, qword_1CA98CC50);
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

id sub_1CA5B88D0()
{
  OUTLINED_FUNCTION_11();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_116();
  v1 = sub_1CA94C368();

  v2 = [v0 initWithSystemImageNamed_];

  return v2;
}

uint64_t sub_1CA5B893C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1CA6278E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1CA5BD72C(v6);
  return sub_1CA94D4E8();
}

uint64_t sub_1CA5B89B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1CA35FF80(v4, v5);
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC446B78, 0x1E69ACD98);
    v7 = sub_1CA94C658();

    return sub_1CA35FF84(v4, v7);
  }
}

id sub_1CA5B8A60(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAutoShortcut:a1 phrase:a2 entityInfo:a3];

  return v6;
}

uint64_t WFExecutableAppShortcut.name.getter()
{
  v1 = [v0 entityInfo];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 triggerPhrase];
    v4 = sub_1CA94C3A8();

    v12 = v4;
    MEMORY[0x1CCAA1300](58, 0xE100000000000000);
    v5 = [v2 name];
    v6 = sub_1CA94C3A8();
    v8 = v7;

    MEMORY[0x1CCAA1300](v6, v8);

    return v12;
  }

  else
  {
    v10 = [v0 triggerPhrase];
    v9 = sub_1CA94C3A8();
  }

  return v9;
}

id WFExecutableAppShortcut.entryColor.getter()
{
  v1 = [v0 underlyingAutoShortcut];
  [v1 shortcutTileColor];

  v2 = WFWorkflowPaletteColorForLNShortcutTileColor();
  v3 = [objc_opt_self() colorWithPaletteColor_];

  return v3;
}

uint64_t sub_1CA5B8C60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CA5B8CB8();
  *a2 = result;
  return result;
}

uint64_t sub_1CA5B8C8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1CA94C218();
  return sub_1CA5B8D2C();
}

uint64_t sub_1CA5B8CB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CA94A098();

  return v1;
}

uint64_t sub_1CA5B8D2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1CA94A0A8();
}

uint64_t sub_1CA5B8D98(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B70, &unk_1CA98CC40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return sub_1CA5B8EE0(v7);
}

uint64_t sub_1CA5B8E6C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  sub_1CA94A078();
  return swift_endAccess();
}

uint64_t sub_1CA5B8EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B70, &unk_1CA98CC40);
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_134_0();
  v8 = *(v5 + 16);
  v9 = OUTLINED_FUNCTION_106();
  v10(v9);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  sub_1CA94A088();
  swift_endAccess();
  return (*(v5 + 8))(a1, v2);
}

id AutoShortcutsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutoShortcutsDataSource.init()()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for AutoShortcutsDataSource());
  v3 = AutoShortcutsDataSource.init(expandsEntity:)(1);
  swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

id AutoShortcutsDataSource.init(expandsEntity:)(char a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_134_0();
  v11 = OBJC_IVAR____TtC11WorkflowKit23AutoShortcutsDataSource__collections;
  v19 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446350, &qword_1CA98C930);
  sub_1CA94A068();
  (*(v8 + 32))(&v3[v11], v2, v5);
  v3[OBJC_IVAR____TtC11WorkflowKit23AutoShortcutsDataSource_expandsEntity] = a1;
  type metadata accessor for ExecutableAppShortcutsLoader();
  v12 = swift_allocObject();
  ExecutableAppShortcutsLoader.init(expandsEntity:)(a1);
  *&v3[OBJC_IVAR____TtC11WorkflowKit23AutoShortcutsDataSource_loader] = v12;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for AutoShortcutsDataSource();
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 defaultCenter];
  [v16 addObserver:v15 selector:sel_appShortcutsChanged name:*MEMORY[0x1E69ACB40] object:0];

  return v15;
}

uint64_t ExecutableAppShortcutsLoader.__allocating_init(expandsEntity:)(char a1)
{
  v2 = swift_allocObject();
  ExecutableAppShortcutsLoader.init(expandsEntity:)(a1);
  return v2;
}

uint64_t sub_1CA5B9340(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1CA949F78();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v16 = v15 - v14;
  v17 = *MEMORY[0x1E69E1088];
  sub_1CA949C58();
  sub_1CA94C218();
  v18 = sub_1CA949F68();
  v19 = sub_1CA94CC38();

  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_29_0();
    v24 = v5;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1CA26B54C(a1, a2, &v25);
    _os_log_impl(&dword_1CA256000, v18, v19, "Reloading App Shortcuts with reason: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v4 = v3;
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    v5 = v24;
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  (*(v11 + 8))(v16, v8);
  v22 = *(v5 + OBJC_IVAR____TtC11WorkflowKit23AutoShortcutsDataSource_loader);
  result = sub_1CA5B9BE4();
  if (!v4)
  {
    return sub_1CA5B8D2C();
  }

  return result;
}

uint64_t sub_1CA5B9518()
{
  v0 = sub_1CA949F78();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  return sub_1CA5B9340(0xD000000000000022, 0x80000001CA9D2D40);
}

uint64_t sub_1CA5B9724(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5B9738()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 32) = OBJC_IVAR____TtC11WorkflowKit23AutoShortcutsDataSource_loader;
  sub_1CA94C838();
  *(v0 + 40) = sub_1CA94C828();
  v2 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA5B97D4, v2, v1);
}

uint64_t sub_1CA5B97D4()
{
  OUTLINED_FUNCTION_0();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = *(v3 + v2);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1CA5B9874;
  v6 = v0[2];

  return sub_1CA5BAC58();
}

uint64_t sub_1CA5B9874()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  v4 = *(v3 + 48);
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

id AutoShortcutsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoShortcutsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA5B9A2C()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_1(v3);

  return sub_1CA5B9724(v5);
}

uint64_t sub_1CA5B9AB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AutoShortcutsDataSource();
  result = sub_1CA949FE8();
  *a1 = result;
  return result;
}

uint64_t ExecutableAppShortcutsLoader.Error.hashValue.getter()
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](0);
  return sub_1CA94D968();
}

uint64_t ExecutableAppShortcutsLoader.init(expandsEntity:)(char a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E69ACDC0]) initWithOptions_];
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1CA5B9BE4()
{
  v138[4] = *MEMORY[0x1E69E9840];
  v137 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 24);
  v2 = sub_1CA948E58();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  sub_1CA948DE8();
  sub_1CA948D48();
  (*(v5 + 8))(v10, v2);
  OUTLINED_FUNCTION_70();
  v11 = sub_1CA94C368();

  v138[0] = 0;
  v12 = [v1 autoShortcutsForLocaleIdentifier:v11 error:v138];

  v13 = v138[0];
  if (!v12)
  {
    v105 = v138[0];
    sub_1CA948AD8();

    result = swift_willThrow();
LABEL_112:
    v106 = *MEMORY[0x1E69E9840];
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454A8, &unk_1CA98E820);
  v14 = sub_1CA94C1C8();
  v15 = v13;

  v109 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v108 = (v16 + 63) >> 6;
  v120 = v14;
  sub_1CA94C218();
  v19 = 0;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          if (!v18)
          {
            while (1)
            {
              v21 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                goto LABEL_119;
              }

              if (v21 >= v108)
              {
                break;
              }

              v20 = *(v109 + 8 * v21);
              ++v19;
              if (v20)
              {
                v19 = v21;
                goto LABEL_11;
              }
            }

            result = v137;
            goto LABEL_112;
          }

          v20 = v18;
LABEL_11:
          v18 = (v20 - 1) & v20;
          if (v120[2])
          {
            v22 = (v120[6] + ((v19 << 10) | (16 * __clz(__rbit64(v20)))));
            v23 = *v22;
            v24 = v22[1];
            v114 = v19;
            sub_1CA94C218();
            v25 = sub_1CA271BF8();
            v27 = v26;

            v19 = v114;
            if (v27)
            {
              break;
            }
          }
        }

        i = *(v120[7] + 8 * v25);
        if (!(i >> 62))
        {
          break;
        }

        if (i < 0)
        {
          v102 = *(v120[7] + 8 * v25);
        }

        v103 = sub_1CA94D328();
        v19 = v114;
        v29 = v103;
        if (v103)
        {
          goto LABEL_15;
        }
      }

      v29 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    while (!v29);
LABEL_15:
    v107 = v18;
    swift_retain_n();
    sub_1CA94C218();
    v30 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    while (v29 != v30)
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1CCAA22D0](v30, i);
      }

      else
      {
        if (v30 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_121;
        }

        v32 = *(i + 8 * v30 + 32);
      }

      v33 = v32;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_120;
      }

      v34 = sub_1CA5BBCEC(v32);

      v35 = *(v34 + 16);
      v36 = *(v31 + 16);
      if (__OFADD__(v36, v35))
      {
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v36 + v35 > *(v31 + 24) >> 1)
      {
        sub_1CA278A8C();
        v31 = v37;
      }

      if (*(v34 + 16))
      {
        if ((*(v31 + 24) >> 1) - *(v31 + 16) < v35)
        {
          goto LABEL_125;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
        swift_arrayInitWithCopy();

        if (v35)
        {
          v38 = *(v31 + 16);
          v39 = __OFADD__(v38, v35);
          v40 = v38 + v35;
          if (v39)
          {
            goto LABEL_126;
          }

          *(v31 + 16) = v40;
        }
      }

      else
      {

        if (v35)
        {
          goto LABEL_123;
        }
      }

      ++v30;
    }

    v41 = 0;
    v42 = *(v31 + 16);
    v129 = v42;
    v131 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v43 = 48 * v41;
    while (v42 != v41)
    {
      if (v41 >= *(v31 + 16))
      {
        goto LABEL_124;
      }

      v44 = *(v31 + v43 + 32);
      i = *(v31 + v43 + 40);
      v46 = *(v31 + v43 + 48);
      v45 = *(v31 + v43 + 56);
      v48 = *(v31 + v43 + 64);
      v47 = *(v31 + v43 + 72);
      if (v47 >> 62)
      {
        if (v47 < 0)
        {
          v50 = *(v31 + v43 + 72);
        }

        v49 = sub_1CA94D328();
        v42 = v129;
      }

      else
      {
        v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v41;
      v43 += 48;
      if (v49)
      {
        v51 = v48;
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        v52 = v131;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138[0] = v131;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CA2B9128(0, v131[2] + 1, 1);
          v52 = v138[0];
        }

        v55 = v52[2];
        v54 = v52[3];
        v56 = v55 + 1;
        v42 = v129;
        if (v55 >= v54 >> 1)
        {
          v58 = OUTLINED_FUNCTION_64(v54);
          v132 = v59;
          v127 = v60;
          sub_1CA2B9128(v58, v59, 1);
          v42 = v129;
          v56 = v132;
          v55 = v127;
          v52 = v138[0];
        }

        v52[2] = v56;
        v131 = v52;
        v57 = &v52[6 * v55];
        v57[4] = v44;
        v57[5] = i;
        v57[6] = v46;
        v57[7] = v45;
        v57[8] = v48;
        v57[9] = v47;
        goto LABEL_34;
      }
    }

    v61 = sub_1CA5B840C(v131);
    v62 = sub_1CA94C218();
    v138[0] = sub_1CA42AFF8(v62);
    sub_1CA5B893C(v138);
    if (v115)
    {
      break;
    }

    v63 = v138[0];
    v64 = *(v138[0] + 2);
    if (v64)
    {
      v135 = MEMORY[0x1E69E7CC0];
      v112 = *(v138[0] + 2);
      sub_1CA2B9128(0, v64, 0);
      v65 = 0;
      v66 = v135;
      v113 = v63 + 32;
      v111 = v61;
      v110 = v63;
      while (1)
      {
        if (v65 >= *(v63 + 2))
        {
          goto LABEL_127;
        }

        v119 = v66;
        v122 = v65;
        v67 = *&v113[8 * v65];
        v116 = v67;
        v121 = v67;
        v68 = sub_1CA311E84(v67, v61);
        if (!v68)
        {
          goto LABEL_129;
        }

        v69 = v68;
        v126 = v68[2];
        if (!v126)
        {
          goto LABEL_128;
        }

        v123 = v122 + 1;
        v125 = v68 + 4;
        v117 = v68[7];
        v118 = v68[6];
        sub_1CA94C218();
        v70 = 0;
        v71 = MEMORY[0x1E69E7CC0];
        v124 = v69;
        while (v70 != v126)
        {
          if (v70 >= v69[2])
          {
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          v72 = v125[6 * v70 + 5];
          i = v72 >> 62;
          if (v72 >> 62)
          {
            if (v72 < 0)
            {
              v87 = v125[6 * v70 + 5];
            }

            v73 = sub_1CA94D328();
          }

          else
          {
            v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v74 = v71 >> 62;
          if (v71 >> 62)
          {
            v75 = sub_1CA94D328();
          }

          else
          {
            v75 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v130 = v73;
          v39 = __OFADD__(v75, v73);
          v76 = v75 + v73;
          if (v39)
          {
            goto LABEL_114;
          }

          sub_1CA94C218();
          v133 = v70;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (v74)
            {
LABEL_70:
              sub_1CA94D328();
            }

            else
            {
              v77 = v71 & 0xFFFFFFFFFFFFFF8;
LABEL_69:
              v78 = *(v77 + 16);
            }

            v71 = sub_1CA94D488();
            v77 = v71 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_72;
          }

          if (v74)
          {
            goto LABEL_70;
          }

          v77 = v71 & 0xFFFFFFFFFFFFFF8;
          if (v76 > *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_69;
          }

LABEL_72:
          v79 = *(v77 + 16);
          v80 = *(v77 + 24);
          if (i)
          {
            v67 = sub_1CA94D328();
          }

          else
          {
            v67 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v134 = v133 + 1;
          if (v67)
          {
            if (((v80 >> 1) - v79) < v130)
            {
              goto LABEL_116;
            }

            v81 = v77 + 8 * v79 + 32;
            if (i)
            {
              if (v67 < 1)
              {
                goto LABEL_118;
              }

              sub_1CA5BE5E4();
              for (i = 0; i != v67; ++i)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445A0, &qword_1CA983900);
                v82 = sub_1CA276BDC(v138, i, v72);
                v84 = *v83;
                v82(v138, 0);
                *(v81 + 8 * i) = v84;
              }
            }

            else
            {
              v67 = v72 & 0xFFFFFFFFFFFFFF8;
              sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
              swift_arrayInitWithCopy();
            }

            v69 = v124;
            v70 = v134;
            if (v130 > 0)
            {
              v85 = *(v77 + 16);
              v39 = __OFADD__(v85, v130);
              v86 = v85 + v130;
              if (v39)
              {
                goto LABEL_117;
              }

              *(v77 + 16) = v86;
            }
          }

          else
          {

            v70 = v134;
            v69 = v124;
            if (v130 > 0)
            {
              goto LABEL_115;
            }
          }
        }

        v128 = v71;

        if (v121)
        {
          v88 = [v116 name];
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_27_19();

          v61 = v111;
          v63 = v110;
          v89 = v112;
          v90 = v118;
          v66 = v119;
          v91 = v117;
        }

        else
        {
          v61 = v111;
          v63 = v110;
          if (qword_1EDB9F960 != -1)
          {
            OUTLINED_FUNCTION_1_11();
            swift_once();
          }

          v92 = OUTLINED_FUNCTION_70();
          sub_1CA2786EC(v92, v93);
          if (v94)
          {
            OUTLINED_FUNCTION_27_19();
          }

          else
          {
            sub_1CA94C218();
            v67 = v118;
            i = v117;
          }

          v89 = v112;
          v66 = v119;
          v90 = v118;
          v91 = v117;
        }

        v136 = v66;
        v96 = *(v66 + 16);
        v95 = *(v66 + 24);
        if (v96 >= v95 >> 1)
        {
          v99 = OUTLINED_FUNCTION_64(v95);
          sub_1CA2B9128(v99, v96 + 1, 1);
          v91 = v117;
          v90 = v118;
          v89 = v112;
          v66 = v136;
        }

        *(v66 + 16) = v96 + 1;
        v97 = (v66 + 48 * v96);
        v97[4] = v67;
        v97[5] = i;
        v97[6] = v90;
        v97[7] = v91;
        v97[8] = v121;
        v97[9] = v128;
        v98 = v123 == v89;
        v65 = v123;
        if (v98)
        {
          v100 = v66;

          v101 = v100;
          goto LABEL_105;
        }
      }
    }

    v101 = MEMORY[0x1E69E7CC0];
LABEL_105:
    sub_1CA2B88B4(v101);
    v19 = v114;
    v18 = v107;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA5BA6F8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5BA710(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v21 = v20[20];
  v22 = v20[19];
  v35 = *(v20[21] + 24);
  v23 = sub_1CA94C368();
  v20[22] = v23;
  v24 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0(v24);
  v26 = v25;
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  sub_1CA948DE8();
  sub_1CA948D48();
  (*(v26 + 8))(v29, v24);
  v30 = sub_1CA94C368();
  v20[23] = v30;

  v20[2] = v20;
  v20[7] = v20 + 18;
  v20[3] = sub_1CA5BA8F0;
  v31 = swift_continuation_init();
  v20[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B38, &qword_1CA98C958);
  v20[10] = MEMORY[0x1E69E9820];
  v20[11] = 1107296256;
  v20[12] = sub_1CA5B89B8;
  v20[13] = &block_descriptor_26;
  v20[14] = v31;
  [v35 autoShortcutsForBundleIdentifier:v23 localeIdentifier:v30 completion:v20 + 10];
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DEC8](v32);
}

uint64_t sub_1CA5BA8F0()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 192) = v5;
  if (v5)
  {
    v6 = sub_1CA5BABE8;
  }

  else
  {
    v6 = sub_1CA5BA9F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1CA5BA9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = *(v12 + 176);
  v14 = *(v12 + 144);

  v15 = sub_1CA25B410();
  if (v15)
  {
    v16 = v15;
    v17 = *(v12 + 168);
    a9 = v14 & 0xC000000000000001;
    swift_retain_n();
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v16 == v18)
      {
        v30 = *(v12 + 168);

        goto LABEL_21;
      }

      if (a9)
      {
        v20 = MEMORY[0x1CCAA22D0](v18, v14);
      }

      else
      {
        if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v20 = *(v14 + 8 * v18 + 32);
      }

      v21 = v20;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = *(v12 + 168);
      v23 = sub_1CA5BBCEC(v20);

      v24 = *(v23 + 16);
      v25 = *(v19 + 16);
      if (__OFADD__(v25, v24))
      {
        goto LABEL_26;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v25 + v24 > *(v19 + 24) >> 1)
      {
        sub_1CA278A8C();
        v19 = v26;
      }

      if (*(v23 + 16))
      {
        if ((*(v19 + 24) >> 1) - *(v19 + 16) < v24)
        {
          goto LABEL_28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443F50, &qword_1CA981A60);
        swift_arrayInitWithCopy();

        if (v24)
        {
          v27 = *(v19 + 16);
          v28 = __OFADD__(v27, v24);
          v29 = v27 + v24;
          if (v28)
          {
            goto LABEL_29;
          }

          *(v19 + 16) = v29;
        }
      }

      else
      {

        if (v24)
        {
          goto LABEL_27;
        }
      }

      ++v18;
    }

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

  else
  {
LABEL_21:

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_23_0();

    v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_1CA5BABE8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  OUTLINED_FUNCTION_5();
  v5 = v0[24];

  return v4();
}

uint64_t sub_1CA5BAC58()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v6 = *MEMORY[0x1E69E9840];
  *(v0 + 160) = v1;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_1CA5BAD20;
  v4 = *MEMORY[0x1E69E9840];

  return sub_1CA5BB7D0(v2);
}

uint64_t sub_1CA5BAD20()
{
  OUTLINED_FUNCTION_0();
  v12 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_1_1();
  *v4 = v3;
  v6 = *(v5 + 168);
  *v4 = *v1;
  *(v3 + 176) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_5();
    v9 = *MEMORY[0x1E69E9840];

    return v8();
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1CA5BAE88, 0, 0);
  }
}

uint64_t sub_1CA5BAE88()
{
  OUTLINED_FUNCTION_39_1();
  v37 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 160);
  v2 = [*(v0 + 176) identifier];
  sub_1CA94C3A8();

  v3 = [v1 phrase];
  v4 = [v3 bundleIdentifier];

  sub_1CA94C3A8();
  v5 = objc_allocWithZone(MEMORY[0x1E69AC860]);
  v6 = sub_1CA334F5C();
  *(v0 + 184) = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E69ACF58]) initWithOptions_];
  *(v0 + 192) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CA9813B0;
  *(v8 + 32) = v6;
  sub_1CA25B3D0(0, &qword_1EC446320, 0x1E69AC860);
  v9 = v6;
  OUTLINED_FUNCTION_70();
  v10 = sub_1CA94C648();

  *(v0 + 144) = 0;
  v11 = [v7 actionsWithFullyQualifiedIdentifiers:v10 error:v0 + 144];

  v12 = *(v0 + 144);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446328, qword_1CA98C970);
    v13 = sub_1CA94C1C8();
    v14 = v12;

    v15 = [v9 bundleIdentifier];
    v16 = sub_1CA94C3A8();
    v18 = v17;

    v19 = sub_1CA323E30(v16, v18, v13);

    if (v19)
    {
      v20 = [v9 actionIdentifier];
      v21 = sub_1CA94C3A8();
      v23 = v22;

      v24 = sub_1CA323E2C(v21, v23, v19);
      *(v0 + 200) = v24;

      if (v24)
      {
        v25 = *(v0 + 176);
        sub_1CA25B3D0(0, &qword_1EC4454E8, 0x1E69E0B98);
        v26 = sub_1CA5BB768(v9, v25, v24);
        *(v0 + 208) = v26;
        v27 = [objc_opt_self() defaultDatabase];
        *(v0 + 216) = v27;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 152;
        *(v0 + 24) = sub_1CA5BB364;
        v28 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4454F0, qword_1CA98AEC0);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1CA320A2C;
        *(v0 + 104) = &block_descriptor_9_0;
        *(v0 + 112) = v28;
        [v26 createWorkflowWithEnvironment:0 database:v27 completionHandler:v0 + 80];
        v29 = *MEMORY[0x1E69E9840];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }
    }

    v30 = *(v0 + 176);
    sub_1CA5BE660();
    swift_allocError();
    v31 = v7;
    v7 = v30;
  }

  else
  {
    v32 = *(v0 + 176);
    v33 = v12;
    sub_1CA948AD8();

    v31 = v9;
    v9 = v32;
  }

  swift_willThrow();

  OUTLINED_FUNCTION_5();
  v35 = *MEMORY[0x1E69E9840];

  return v34();
}

uint64_t sub_1CA5BB364()
{
  OUTLINED_FUNCTION_0();
  v9 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 224) = v5;
  if (v5)
  {
    v6 = sub_1CA5BB6A4;
  }

  else
  {
    v6 = sub_1CA5BB494;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA5BB494()
{
  OUTLINED_FUNCTION_39_1();
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 152);

  v2 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C658();

  if (sub_1CA25B410())
  {
    sub_1CA275D70(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1CCAA22D0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);

    OUTLINED_FUNCTION_2_4();
    v11 = *MEMORY[0x1E69E9840];

    return v10(v5);
  }

  else
  {
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v16 = *(v0 + 184);
    v15 = *(v0 + 192);
    v17 = *(v0 + 176);

    sub_1CA5BE660();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_5();
    v19 = *MEMORY[0x1E69E9840];

    return v18();
  }
}

uint64_t sub_1CA5BB6A4()
{
  OUTLINED_FUNCTION_39_1();
  v12 = *MEMORY[0x1E69E9840];
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  swift_willThrow();

  v8 = v0[28];
  OUTLINED_FUNCTION_5();
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

id sub_1CA5BB768(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:a1 action:a2 metadata:a3];

  return v6;
}

uint64_t sub_1CA5BB7D0(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5BB7E4()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v1 = v0;
  v2 = *(v0 + 152);
  v3 = *(*(v0 + 160) + 24);
  v4 = [v2 underlyingAutoShortcut];
  v5 = [v4 bundleIdentifier];

  if (!v5)
  {
    sub_1CA94C3A8();
    sub_1CA94C368();
    OUTLINED_FUNCTION_11();
  }

  *(v1 + 168) = v5;
  v6 = [*(v1 + 152) phrase];
  v7 = [v6 basePhraseTemplate];

  if (!v7)
  {
    sub_1CA94C3A8();
    v7 = sub_1CA94C368();
  }

  *(v1 + 176) = v7;
  v8 = [*(v1 + 152) underlyingAutoShortcut];
  v9 = [v8 actionIdentifier];

  if (!v9)
  {
    sub_1CA94C3A8();
    v9 = sub_1CA94C368();
  }

  *(v1 + 184) = v9;
  v10 = [*(v1 + 152) phrase];
  v11 = [v10 parameterIdentifier];

  v12 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0(v12);
  v14 = v13;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  if (v11)
  {
    sub_1CA948CF8();

    v11 = sub_1CA948CD8();
    (*(v14 + 8))(v17, v12);
  }

  *(v1 + 192) = v11;

  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_1CA5BBAE4;
  v18 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454E0, &unk_1CA987600);
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_1CA3FC964;
  *(v1 + 104) = &block_descriptor_33;
  *(v1 + 112) = v18;
  [v3 retrieveActionForBundleIdentifier:v5 basePhraseTemplate:v7 actionIdentifier:v9 parameterIdentifier:v11 completion:v1 + 80];
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6DEC8](v19);
}

uint64_t sub_1CA5BBAE4()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 200) = v5;
  if (v5)
  {
    v6 = sub_1CA5BBC64;
  }

  else
  {
    v6 = sub_1CA5BBBE8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA5BBBE8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);

  OUTLINED_FUNCTION_2_4();

  return v5(v4);
}

uint64_t sub_1CA5BBC64()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_5();
  v7 = v0[25];

  return v6();
}

uint64_t sub_1CA5BBCEC(void *a1)
{
  v2 = sub_1CA949F78();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  if ([objc_opt_self() isAppShortcutDenyListed:a1 inEnvironment:1])
  {
    v8 = *MEMORY[0x1E69E10D0];
    sub_1CA949C58();
    v9 = a1;
    v10 = sub_1CA949F68();
    v11 = sub_1CA94CC08();

    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_29_0();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v61 = v13;
      *v12 = 136315138;
      v14 = [v9 actionIdentifier];
      v15 = sub_1CA94C3A8();
      v17 = v16;

      v18 = sub_1CA26B54C(v15, v17, &v61);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_1CA256000, v10, v11, "Skipping app shortcut %s because it is denylisted.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    v19 = *(v5 + 8);
    v20 = OUTLINED_FUNCTION_106();
    v21(v20);
    return MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1CA2746C8(a1);
  if (v24)
  {
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v27 = [a1 bundleIdentifier];
    v25 = sub_1CA94C3A8();
    v26 = v28;
  }

  v29 = sub_1CA5BC1E0(a1);
  v31 = v30;
  if (!sub_1CA25B410())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443960, &qword_1CA981A58);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1CA981310;
    if (qword_1EDB9F960 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_35;
  }

  v60 = v25;
  sub_1CA278368(v31);
  v29 = sub_1CA5B8698(v29);
  v32 = sub_1CA94C218();
  v61 = sub_1CA42AFF8(v32);
  sub_1CA5B893C(&v61);

  v25 = 0;
  v33 = v61;
  v34 = *(v61 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v34 == v25)
    {

      return v22;
    }

    if (v25 >= *(v33 + 16))
    {
      break;
    }

    if (!*(v29 + 16))
    {
      goto LABEL_17;
    }

    v35 = *(v33 + 8 * v25 + 32);
    v36 = v35;
    v37 = sub_1CA3211F0(v35);
    if (v38)
    {
      v39 = *(*(v29 + 56) + 8 * v37);
      if (v39 >> 62)
      {
        if (v39 < 0)
        {
          v40 = *(*(v29 + 56) + 8 * v37);
        }

        if (!sub_1CA94D328())
        {
          goto LABEL_16;
        }
      }

      else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      if (v35)
      {
        sub_1CA94C218();
        v41 = [v36 name];
        v42 = sub_1CA94C3A8();
        v58 = v43;
        v59 = v42;
      }

      else
      {
        v44 = qword_1EDB9F960;
        sub_1CA94C218();
        if (v44 != -1)
        {
          OUTLINED_FUNCTION_1_11();
          swift_once();
        }

        v45 = sub_1CA2786EC(v60, v26);
        if (v46)
        {
          v58 = v46;
          v59 = v45;
        }

        else
        {
          sub_1CA94C218();
          v58 = v26;
          v59 = v60;
        }
      }

      sub_1CA94C218();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = *(v22 + 16);
        OUTLINED_FUNCTION_21();
        sub_1CA278A8C();
        v22 = v51;
      }

      v48 = *(v22 + 16);
      v47 = *(v22 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_64(v47);
        sub_1CA278A8C();
        v22 = v52;
      }

      ++v25;
      *(v22 + 16) = v48 + 1;
      v49 = (v22 + 48 * v48);
      v49[4] = v59;
      v49[5] = v58;
      v49[6] = v60;
      v49[7] = v26;
      v49[8] = v35;
      v49[9] = v39;
    }

    else
    {
LABEL_16:

LABEL_17:
      ++v25;
    }
  }

  __break(1u);
LABEL_40:
  OUTLINED_FUNCTION_1_11();
  swift_once();
LABEL_35:
  v53 = OUTLINED_FUNCTION_106();
  v55 = sub_1CA2786EC(v53, v54);
  if (!v56)
  {
    sub_1CA94C218();
    v55 = OUTLINED_FUNCTION_106();
  }

  *(v22 + 32) = v55;
  *(v22 + 40) = v56;
  *(v22 + 48) = v25;
  *(v22 + 56) = v26;
  *(v22 + 64) = 0;
  *(v22 + 72) = v29;
  return v22;
}

uint64_t *sub_1CA5BC1E0(void *a1)
{
  v207[4] = *MEMORY[0x1E69E9840];
  v193 = sub_1CA949F78();
  v2 = OUTLINED_FUNCTION_1_0(v193);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v9 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v191 = &v181 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v181 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v181 - v15;
  if ([objc_opt_self() isAppShortcutDenyListed:a1 inEnvironment:1])
  {
    v17 = *MEMORY[0x1E69E10D0];
    sub_1CA949C58();
    v18 = a1;
    v19 = sub_1CA949F68();
    v20 = sub_1CA94CC08();

    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_29_0();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v207[0] = v22;
      *v21 = 136315138;
      v23 = [v18 actionIdentifier];
      v24 = v4;
      v25 = sub_1CA94C3A8();
      v27 = v26;

      v28 = sub_1CA26B54C(v25, v27, v207);

      *(v21 + 4) = v28;
      OUTLINED_FUNCTION_33_13(&dword_1CA256000, v29, v30, "Skipping app shortcut %s because it is denylisted.");
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();

      v24[1](v14, v193);
    }

    else
    {

      v4[1](v14, v193);
    }

    goto LABEL_83;
  }

  v189 = v4;
  v190 = v16;
  v188 = v9;
  v31 = MEMORY[0x1E69E7CC0];
  v205 = MEMORY[0x1E69E7CC0];
  v206 = MEMORY[0x1E69E7CC0];
  v194 = a1;
  v32 = WFPrimaryPhrasesForAutoShortcut();
  sub_1CA25B3D0(0, &qword_1EDB9F6D0, 0x1E69ACDA8);
  v33 = sub_1CA94C658();

  v34 = sub_1CA25B410();
  v35 = 0;
  v199 = v33 & 0xC000000000000001;
  v200 = v33;
  v195 = (v33 & 0xFFFFFFFFFFFFFF8);
  v196 = v34;
  while (v34 != v35)
  {
    if (v199)
    {
      v36 = MEMORY[0x1CCAA22D0](v35, v200);
    }

    else
    {
      if (v35 >= v195[2])
      {
        goto LABEL_86;
      }

      v36 = *(v200 + 8 * v35 + 32);
    }

    v37 = v36;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
    }

    v203 = v31;
    v38 = sub_1CA948D28();
    v202 = &v181;
    v39 = OUTLINED_FUNCTION_1_0(v38);
    v198 = v40;
    v42 = *(v41 + 64);
    MEMORY[0x1EEE9AC00](v39);
    OUTLINED_FUNCTION_6_0();
    v197 = (v44 - v43);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    v201 = &v181;
    v46 = *(*(v45 - 8) + 64);
    v47 = MEMORY[0x1EEE9AC00](v45 - 8);
    v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
    v49 = &v181 - v48;
    MEMORY[0x1EEE9AC00](v47);
    v50 = v37;
    v51 = [v50 parameterIdentifier];
    if (MEMORY[0x1EEE9AC00](v51))
    {
      sub_1CA948CF8();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    __swift_storeEnumTagSinglePayload(&v181 - v48, v52, 1, v38);
    sub_1CA276D6C(&v181 - v48, &v181 - v48);
    sub_1CA276D6C(&v181 - v48, &v181 - v48);

    if (__swift_getEnumTagSinglePayload(&v181 - v48, 1, v38) == 1)
    {
      sub_1CA532E30(&v181 - v48, &qword_1EC443BC8, &qword_1CA9834A0);
      v34 = v196;
      v31 = v203;
    }

    else
    {
      v54 = v197;
      v53 = v198;
      v55 = v198[4];
      v55(v197, v49, v38);
      v31 = v203;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v196;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v59 = *(v31 + 16);
        OUTLINED_FUNCTION_21();
        sub_1CA2E5E9C();
        v31 = v60;
      }

      v58 = *(v31 + 16);
      v57 = *(v31 + 24);
      if (v58 >= v57 >> 1)
      {
        OUTLINED_FUNCTION_64(v57);
        sub_1CA2E5E9C();
        v31 = v61;
      }

      *(v31 + 16) = v58 + 1;
      v55((v31 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v58), v54, v38);
    }

    ++v35;
  }

  v62 = MEMORY[0x1E69E10B0];
  if (*(v31 + 16))
  {
    v63 = *(v192 + 24);
    sub_1CA948D28();
    v64 = sub_1CA94C648();

    v207[0] = 0;
    v65 = [v63 propertiesForIdentifiers:v64 error:v207];

    v66 = v207[0];
    if (!v65)
    {
      v169 = v207[0];

      v170 = sub_1CA948AD8();

      swift_willThrow();
      v171 = *v62;
      sub_1CA949C58();
      v172 = v170;
      v173 = sub_1CA949F68();
      LOBYTE(v169) = sub_1CA94CC18();

      if (os_log_type_enabled(v173, v169))
      {
        OUTLINED_FUNCTION_29_0();
        v174 = swift_slowAlloc();
        v175 = OUTLINED_FUNCTION_35_14();
        *v174 = 138412290;
        v176 = v170;
        v177 = _swift_stdlib_bridgeErrorToNSError();
        *(v174 + 4) = v177;
        *v175 = v177;
        OUTLINED_FUNCTION_33_13(&dword_1CA256000, v178, v179, "Error grabbing App Shortcut parameters: %@");
        sub_1CA532E30(v175, &qword_1EC444AE0, &qword_1CA985B70);
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
      }

      else
      {
      }

      v189[1](v191, v193);
      goto LABEL_83;
    }

    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    sub_1CA277284();
    OUTLINED_FUNCTION_116();
    v67 = sub_1CA94C1C8();
    v68 = v66;
  }

  else
  {

    sub_1CA948D28();
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    sub_1CA277284();
    v67 = sub_1CA94C1E8();
  }

  v70 = v194;
  if (!v34)
  {

LABEL_83:
    result = MEMORY[0x1E69E7CC0];
    goto LABEL_84;
  }

  if (v34 < 1)
  {
    goto LABEL_87;
  }

  v71 = 0;
  v184 = 0;
  ++v189;
  v187 = *v62;
  *&v69 = 138412290;
  v185 = v69;
  v192 = MEMORY[0x1E69E7CC0];
  v201 = MEMORY[0x1E69E7CC0];
  v191 = v67;
  do
  {
    if (v199)
    {
      v72 = MEMORY[0x1CCAA22D0](v71, v200);
    }

    else
    {
      v72 = *(v200 + 8 * v71 + 32);
    }

    v73 = v72;
    v74 = sub_1CA948D28();
    v75 = OUTLINED_FUNCTION_1_0(v74);
    v77 = v76;
    v79 = *(v78 + 64);
    MEMORY[0x1EEE9AC00](v75);
    OUTLINED_FUNCTION_6_0();
    v80 = [v73 parameterIdentifier];
    if (v80)
    {
      v81 = v80;
      sub_1CA948CF8();

      if (!*(v67 + 16) || (sub_1CA320F94(), (v83 & 1) == 0))
      {

        v109 = *(v77 + 8);
        v110 = OUTLINED_FUNCTION_70();
        v111(v110);
        goto LABEL_71;
      }

      v203 = v74;
      v84 = *(*(v67 + 56) + 8 * v82);
      v85 = [v84 value];
      if (!v85)
      {
        v125 = OUTLINED_FUNCTION_6_41();
        v126(v125);

        goto LABEL_71;
      }

      v86 = v85;
      v202 = v84;
      v87 = [v85 displayRepresentation];

      if (!v87)
      {
        v127 = OUTLINED_FUNCTION_6_41();
        v128(v127);

        goto LABEL_71;
      }

      v197 = &v181;
      v198 = [v87 image];
      if (!v198)
      {
        sub_1CA25B3D0(0, &unk_1EDB9F6C0, 0x1E69AC870);
        v88 = [v70 systemImageName];
        sub_1CA94C3A8();

        v198 = sub_1CA5B88D0();
        if (!v198)
        {
          v157 = OUTLINED_FUNCTION_6_41();
          v158(v157);

          v34 = v196;
          v67 = v191;
          goto LABEL_71;
        }
      }

      v89 = sub_1CA948E58();
      v195 = &v181;
      v90 = OUTLINED_FUNCTION_1_0(v89);
      v92 = v91;
      v94 = *(v93 + 64);
      MEMORY[0x1EEE9AC00](v90);
      OUTLINED_FUNCTION_6_0();
      v97 = v96 - v95;
      sub_1CA948DE8();
      v98 = sub_1CA948D48();
      (*(v92 + 8))(v97, v89);
      v99 = v98;
      v100 = [v87 title];
      v101 = sub_1CA94C368();
      v102 = [v100 localizedStringForLocaleIdentifier_];

      v192 = sub_1CA94C3A8();
      v104 = v103;

      v195 = v87;
      v105 = [v87 subtitle];
      if (v105)
      {
        sub_1CA94C368();
        OUTLINED_FUNCTION_11();

        v106 = [v105 localizedStringForLocaleIdentifier_];

        v107 = sub_1CA94C3A8();
        v105 = v108;
      }

      else
      {

        v107 = 0;
      }

      v129 = v202;
      v130 = v198;
      v131 = [v198 contextualActionIcon];
      v132 = v194;
      if (!v131)
      {

        OUTLINED_FUNCTION_34_15(&v209);
        v141 = v130;
        v142 = sub_1CA949F68();
        v143 = sub_1CA94CC18();

        if (os_log_type_enabled(v142, v143))
        {
          OUTLINED_FUNCTION_29_0();
          v144 = swift_slowAlloc();
          v145 = OUTLINED_FUNCTION_35_14();
          *v144 = v185;
          *(v144 + 4) = v141;
          *v145 = v141;
          v146 = v141;
          _os_log_impl(&dword_1CA256000, v142, v143, "App Shortcut has image representation, unable to extract data: %@", v144, 0xCu);
          sub_1CA532E30(v145, &qword_1EC444AE0, &qword_1CA985B70);
          OUTLINED_FUNCTION_154();
          MEMORY[0x1CCAA4BF0]();
          v132 = v194;
          OUTLINED_FUNCTION_154();
          MEMORY[0x1CCAA4BF0]();
        }

        (*v189)(v190, v193);
        v147 = 0;
        goto LABEL_68;
      }

      v198 = v131;
      v133 = [v129 value];
      if (v133)
      {
        v134 = v133;
        v186 = v107;
        v135 = [v133 value];

        sub_1CA94D258();
        swift_unknownObjectRelease();
        sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
        if (swift_dynamicCast())
        {
          v183 = v105;
          v136 = v204;
          v137 = [objc_opt_self() defaultDatabase];
          v182 = v136;
          v138 = [v136 identifier];
          v107 = [v138 instanceIdentifier];

          if (!v107)
          {
            sub_1CA94C3A8();
            v107 = sub_1CA94C368();
          }

          v207[0] = 0;
          v105 = [v137 badgeTypeForEntityIdentifier:v107 error:v207];

          if (v105)
          {
            v139 = v207[0];
            v140 = [v105 unsignedIntegerValue];

            v132 = v194;
            OUTLINED_FUNCTION_28_9();
          }

          else
          {
            v159 = v207[0];
            OUTLINED_FUNCTION_11();
            v160 = sub_1CA948AD8();

            swift_willThrow();
            OUTLINED_FUNCTION_34_15(&v208);
            v161 = v160;
            v162 = sub_1CA949F68();
            v107 = sub_1CA94CC18();

            if (os_log_type_enabled(v162, v107))
            {
              OUTLINED_FUNCTION_29_0();
              v163 = swift_slowAlloc();
              v184 = v162;
              v164 = v163;
              v105 = OUTLINED_FUNCTION_35_14();
              *v164 = v185;
              v165 = v160;
              v166 = _swift_stdlib_bridgeErrorToNSError();
              *(v164 + 4) = v166;
              *v105 = v166;
              v167 = v107;
              v107 = v184;
              _os_log_impl(&dword_1CA256000, v184, v167, "Unable to get App Shortcut badge value: %@", v164, 0xCu);
              sub_1CA532E30(v105, &qword_1EC444AE0, &qword_1CA985B70);
              OUTLINED_FUNCTION_154();
              MEMORY[0x1CCAA4BF0]();
              OUTLINED_FUNCTION_154();
              MEMORY[0x1CCAA4BF0]();
            }

            else
            {
            }

            v132 = v194;
            OUTLINED_FUNCTION_28_9();
            (*v189)(v188);
            v140 = 0;
            v184 = 0;
          }

          goto LABEL_67;
        }

        v107 = v186;
      }

      v140 = 0;
LABEL_67:
      v148 = objc_allocWithZone(MEMORY[0x1E69E09B8]);
      v147 = sub_1CA5FAC18(v192, v104, v107, v105, v198, v140);
      v149 = v147;
LABEL_68:
      sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
      v150 = v132;
      v151 = v73;
      v152 = OUTLINED_FUNCTION_106();
      sub_1CA5B8A60(v152, v153, v147);
      MEMORY[0x1CCAA1490]();
      v154 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v154 >> 1)
      {
        OUTLINED_FUNCTION_64(v154);
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v192 = v205;

      v155 = OUTLINED_FUNCTION_6_41();
      v156(v155);
      v34 = v196;
      v70 = v194;
      v67 = v191;
      goto LABEL_71;
    }

    sub_1CA5BE580(v70);
    if (v112)
    {

      v113 = [v70 systemImageName];
      v114 = sub_1CA94C3A8();
      v115 = v70;
      v117 = v116;

      v118 = HIBYTE(v117) & 0xF;
      if ((v117 & 0x2000000000000000) == 0)
      {
        v118 = v114 & 0xFFFFFFFFFFFFLL;
      }

      if (v118)
      {
        sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
        v119 = v115;
        v120 = v73;
        v121 = OUTLINED_FUNCTION_116();
        v123 = sub_1CA5B8A60(v121, v122, 0);
        MEMORY[0x1CCAA1490]();
        v124 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v124 >> 1)
        {
          OUTLINED_FUNCTION_64(v124);
          sub_1CA94C698();
        }

        sub_1CA94C6E8();

        v201 = v206;
        v70 = v194;
      }

      else
      {

        v70 = v115;
      }
    }

    else
    {
    }

LABEL_71:
    ++v71;
  }

  while (v34 != v71);

  result = v201;
LABEL_84:
  v180 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ExecutableAppShortcutsLoader.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1CA5BD534(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA2F6BEC;

  return sub_1CA5BAC58();
}

uint64_t sub_1CA5BD638@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1CA5BD664();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1CA5BD664()
{
  v1 = [v0 id];
  v2 = sub_1CA94C3A8();

  return v2;
}

uint64_t type metadata accessor for AutoShortcutsDataSource()
{
  result = qword_1EC446B60;
  if (!qword_1EC446B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA5BD72C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CA94D778();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B80, qword_1CA98CC50);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA5BD9A0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CA5BD830(0, v2, 1, a1);
  }
}

void sub_1CA5BD830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28 = a2;
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    while (2)
    {
      v31 = a3;
      v7 = *(v4 + 8 * a3);
      v29 = v6;
      v30 = v5;
      do
      {
        v8 = *v5;
        if (*v5)
        {
          if (!v7)
          {
            break;
          }

          v9 = v7;
          v10 = v8;
          v11 = v9;
          v12 = v10;
          v13 = [v11 name];
          sub_1CA94C3A8();

          v14 = [v12 name];
          v15 = sub_1CA94C3A8();

          v16 = sub_1CA27BAF0();
          OUTLINED_FUNCTION_18_25(v16, v17, v18, v19, v20, v21, v22, v23, v27, v28, v29, v30, v15);
          v24 = OUTLINED_FUNCTION_21_20();

          if (v24 == 1)
          {
            break;
          }
        }

        if (!v4)
        {
          __break(1u);
          return;
        }

        v25 = *v5;
        v7 = *(v5 + 8);
        *v5 = v7;
        *(v5 + 8) = v25;
        v5 -= 8;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v31 + 1;
      v5 = v30 + 8;
      v6 = v29 - 1;
      if (v31 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1CA5BD9A0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v128 = a1;
  v138 = MEMORY[0x1E69E7CC0];
  v134 = a3;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a4;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v131 = a4;
    while (1)
    {
      v10 = v8++;
      if (v8 < v6)
      {
        v11 = *v134;
        v12 = *(*v134 + 8 * v10);
        v122 = v9;
        v124 = v5;
        v126 = v10;
        v135 = v6;
        if (v12)
        {
          v13 = *(v11 + 8 * v8);
          if (v13)
          {
            v14 = v13;
            v15 = v12;
            v16 = v14;
            v17 = v15;
            v18 = [v16 name];
            sub_1CA94C3A8();

            v19 = [v17 name];
            v9 = sub_1CA94C3A8();

            v20 = sub_1CA27BAF0();
            OUTLINED_FUNCTION_19_21(v20, v21, v22, v23, v24, v25, v26, v27, v122, v124, v10, v128, v129, v130, v131, v132, v134, v135, v9);
            v7 = OUTLINED_FUNCTION_21_20();

            v10 = v126;
            v6 = v135;
            v28 = v7 != 1;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 1;
        }

        v29 = (v11 + 8 * v10 + 16);
        v5 = v8;
        LODWORD(v132) = v28;
        while (1)
        {
          v30 = v5++;
          if (v5 >= v6)
          {
            break;
          }

          v31 = *(v29 - 1);
          if (v31)
          {
            if (*v29)
            {
              v32 = *v29;
              v33 = v31;
              v34 = v32;
              v35 = v33;
              v36 = [v34 name];
              sub_1CA94C3A8();
              v9 = v37;

              v38 = [v35 name];
              LOBYTE(v33) = sub_1CA94C3A8();

              v39 = sub_1CA27BAF0();
              OUTLINED_FUNCTION_19_21(v39, v40, v41, v42, v43, v44, v45, v46, v122, v124, v126, v128, v129, v130, v131, v132, v134, v135, v33);
              v7 = OUTLINED_FUNCTION_21_20();

              v28 = v132;
              v6 = v135;
              if (v132 == (v7 == 1))
              {
                break;
              }
            }

            else if (v28)
            {
              goto LABEL_20;
            }
          }

          else if (!v28)
          {
            v8 = v30 + 1;
            goto LABEL_30;
          }

          ++v29;
        }

        if (v28)
        {
LABEL_20:
          v8 = v30 + 1;
          v10 = v126;
          if (v30 + 1 < v126)
          {
            goto LABEL_125;
          }

          if (v126 >= v8)
          {
            OUTLINED_FUNCTION_22_19();
          }

          else
          {
            OUTLINED_FUNCTION_22_19();
            do
            {
              if (v47 != v30)
              {
                v48 = *v134;
                if (!*v134)
                {
                  goto LABEL_128;
                }

                v49 = *(v48 + 8 * v47);
                *(v48 + 8 * v47) = *(v48 + 8 * v30);
                *(v48 + 8 * v30) = v49;
              }

              v50 = ++v47 < v30--;
            }

            while (v50);
          }
        }

        else
        {
          v8 = v5;
LABEL_30:
          OUTLINED_FUNCTION_22_19();
          v10 = v126;
        }
      }

      v51 = v134[1];
      if (v8 < v51)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_122;
        }

        if (v8 - v10 < v7)
        {
          v52 = v10 + v7;
          if (__OFADD__(v10, v7))
          {
            goto LABEL_123;
          }

          if (v52 >= v51)
          {
            v52 = v134[1];
          }

          if (v52 < v10)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            return;
          }

          if (v8 != v52)
          {
            v123 = v9;
            v125 = v5;
            v53 = *v134;
            v5 = *v134 + 8 * v8 - 8;
            v127 = v10;
            v54 = v10 - v8;
            v129 = v52;
            do
            {
              v136 = v8;
              v55 = *(v53 + 8 * v8);
              v130 = v54;
              v133 = v5;
              do
              {
                v56 = *v5;
                if (*v5)
                {
                  if (!v55)
                  {
                    break;
                  }

                  v57 = v55;
                  v58 = v56;
                  v59 = v57;
                  v60 = v58;
                  v61 = [v59 name];
                  sub_1CA94C3A8();

                  v62 = [v60 name];
                  LOBYTE(v58) = sub_1CA94C3A8();
                  v9 = v63;

                  v64 = sub_1CA27BAF0();
                  OUTLINED_FUNCTION_19_21(v64, v65, v66, v67, v68, v69, v70, v71, v123, v125, v127, v128, v129, v130, v131, v133, v134, v136, v58);
                  v7 = OUTLINED_FUNCTION_21_20();

                  if (v7 == 1)
                  {
                    break;
                  }
                }

                if (!v53)
                {
                  goto LABEL_126;
                }

                v72 = *v5;
                v55 = *(v5 + 8);
                *v5 = v55;
                *(v5 + 8) = v72;
                v5 -= 8;
              }

              while (!__CFADD__(v54++, 1));
              v8 = v136 + 1;
              v5 = v133 + 8;
              v54 = v130 - 1;
            }

            while (v136 + 1 != v129);
            v8 = v129;
            OUTLINED_FUNCTION_22_19();
            v10 = v127;
          }
        }
      }

      if (v8 < v10)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = v9[2];
        OUTLINED_FUNCTION_21();
        sub_1CA2E49C0();
        v9 = v120;
      }

      v74 = v9[2];
      v75 = v74 + 1;
      if (v74 >= v9[3] >> 1)
      {
        sub_1CA2E49C0();
        v9 = v121;
      }

      v9[2] = v75;
      v76 = v9 + 4;
      v77 = &v9[2 * v74 + 4];
      *v77 = v10;
      v77[1] = v8;
      v132 = *v128;
      if (!*v128)
      {
        goto LABEL_129;
      }

      if (v74)
      {
        v137 = v8;
        while (1)
        {
          v78 = v75 - 1;
          v79 = &v76[2 * v75 - 2];
          v80 = &v9[2 * v75];
          if (v75 >= 4)
          {
            break;
          }

          if (v75 == 3)
          {
            v81 = v9[4];
            v82 = v9[5];
            v91 = __OFSUB__(v82, v81);
            v83 = v82 - v81;
            v84 = v91;
LABEL_70:
            if (v84)
            {
              goto LABEL_111;
            }

            v96 = *v80;
            v95 = v80[1];
            v97 = __OFSUB__(v95, v96);
            v98 = v95 - v96;
            v99 = v97;
            if (v97)
            {
              goto LABEL_114;
            }

            v100 = v79[1];
            v101 = v100 - *v79;
            if (__OFSUB__(v100, *v79))
            {
              goto LABEL_117;
            }

            if (__OFADD__(v98, v101))
            {
              goto LABEL_119;
            }

            if (v98 + v101 >= v83)
            {
              if (v83 < v101)
              {
                v78 = v75 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v75 < 2)
          {
            goto LABEL_113;
          }

          v103 = *v80;
          v102 = v80[1];
          v91 = __OFSUB__(v102, v103);
          v98 = v102 - v103;
          v99 = v91;
LABEL_85:
          if (v99)
          {
            goto LABEL_116;
          }

          v105 = *v79;
          v104 = v79[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_118;
          }

          if (v106 < v98)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v78 - 1 >= v75)
          {
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*v134)
          {
            goto LABEL_127;
          }

          v110 = v9;
          v111 = &v76[2 * v78 - 2];
          v112 = *v111;
          v113 = v76;
          v114 = v78;
          v115 = &v76[2 * v78];
          v116 = v115[1];
          sub_1CA5BE230((*v134 + 8 * *v111), (*v134 + 8 * *v115), (*v134 + 8 * v116), v132);
          if (v5)
          {
            v138 = v110;
            goto LABEL_104;
          }

          if (v116 < v112)
          {
            goto LABEL_106;
          }

          v117 = *(v110 + 16);
          if (v114 > v117)
          {
            goto LABEL_107;
          }

          *v111 = v112;
          v111[1] = v116;
          if (v114 >= v117)
          {
            goto LABEL_108;
          }

          v118 = v114;
          v75 = v117 - 1;
          memmove(v115, v115 + 2, 16 * (v117 - 1 - v118));
          v9 = v110;
          *(v110 + 16) = v117 - 1;
          v50 = v117 > 2;
          v5 = 0;
          v7 = v131;
          v8 = v137;
          v76 = v113;
          if (!v50)
          {
            goto LABEL_99;
          }
        }

        v85 = &v76[2 * v75];
        v86 = *(v85 - 8);
        v87 = *(v85 - 7);
        v91 = __OFSUB__(v87, v86);
        v88 = v87 - v86;
        if (v91)
        {
          goto LABEL_109;
        }

        v90 = *(v85 - 6);
        v89 = *(v85 - 5);
        v91 = __OFSUB__(v89, v90);
        v83 = v89 - v90;
        v84 = v91;
        if (v91)
        {
          goto LABEL_110;
        }

        v92 = v80[1];
        v93 = v92 - *v80;
        if (__OFSUB__(v92, *v80))
        {
          goto LABEL_112;
        }

        v91 = __OFADD__(v83, v93);
        v94 = v83 + v93;
        if (v91)
        {
          goto LABEL_115;
        }

        if (v94 >= v88)
        {
          v108 = *v79;
          v107 = v79[1];
          v91 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v91)
          {
            goto LABEL_120;
          }

          if (v83 < v109)
          {
            v78 = v75 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = v134[1];
      if (v8 >= v6)
      {
        v138 = v9;
        break;
      }
    }
  }

  if (!*v128)
  {
    goto LABEL_130;
  }

  sub_1CA5BE104(&v138, *v128, v134);
LABEL_104:
}

uint64_t sub_1CA5BE104(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1CA627610(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1CA5BE230((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1CA5BE230(char *a1, char *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    v10 = OUTLINED_FUNCTION_106();
    sub_1CA27805C(v10, v11, v4);
    v12 = &v4[8 * v8];
    v67 = v12;
    while (1)
    {
      if (v4 >= v12 || v6 >= v5)
      {
        v33 = v7;
        goto LABEL_32;
      }

      v14 = *v4;
      if (!*v4)
      {
        break;
      }

      if (*v6)
      {
        v15 = *v6;
        v16 = v14;
        v17 = v15;
        v18 = v16;
        v19 = [v17 name];
        sub_1CA94C3A8();

        v20 = [v18 name];
        v21 = sub_1CA94C3A8();

        v22 = sub_1CA27BAF0();
        OUTLINED_FUNCTION_18_25(v22, v23, v24, v25, v26, v27, v28, v29, v59, v60, v62, v6, v21);
        v30 = OUTLINED_FUNCTION_21_20();
        v6 = v64;

        v12 = v67;
        if (v30 != 1)
        {
          break;
        }
      }

      v31 = v4;
      v32 = v7 == v4;
      v4 += 8;
      if (!v32)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 8;
    }

    v31 = v6;
    v32 = v7 == v6++;
    if (v32)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v7 = *v31;
    goto LABEL_15;
  }

  sub_1CA27805C(a2, (a3 - a2) / 8, a4);
  v12 = &v4[8 * v9];
LABEL_17:
  v33 = v6--;
  --v5;
  v65 = v6;
  v61 = v33;
  while (v12 > v4 && v33 > v7)
  {
    v35 = *v6;
    if (!*v6)
    {
      goto LABEL_29;
    }

    v37 = (v12 - 8);
    v36 = *(v12 - 1);
    if (v36)
    {
      v68 = v12;
      v38 = v36;
      v39 = v35;
      v40 = v38;
      v41 = v39;
      v42 = [v40 name];
      v63 = v5;
      v43 = v7;
      v44 = v4;
      sub_1CA94C3A8();

      v45 = [v41 name];
      v46 = sub_1CA94C3A8();

      v66 = v46;
      v4 = v44;
      v7 = v43;
      v5 = v63;
      v47 = sub_1CA27BAF0();
      OUTLINED_FUNCTION_18_25(v47, v48, v49, v50, v51, v52, v53, v54, v59, v61, v63, v65, v66);
      v55 = OUTLINED_FUNCTION_21_20();
      v6 = v65;

      v33 = v61;
      v12 = v68;
      if (v55 != 1)
      {
LABEL_29:
        if (v5 + 1 != v33)
        {
          *v5 = *v6;
        }

        goto LABEL_17;
      }
    }

    if (v12 != (v5 + 1))
    {
      *v5 = *v37;
    }

    --v5;
    v12 = v37;
  }

LABEL_32:
  v56 = (v12 - v4) / 8;
  if (v33 != v4 || v33 >= &v4[8 * v56])
  {
    memmove(v33, v4, 8 * v56);
  }

  return 1;
}

uint64_t sub_1CA5BE580(void *a1)
{
  v1 = [a1 localizedShortTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

unint64_t sub_1CA5BE5E4()
{
  result = qword_1EC4445A8;
  if (!qword_1EC4445A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4445A0, &qword_1CA983900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4445A8);
  }

  return result;
}

unint64_t sub_1CA5BE660()
{
  result = qword_1EC446B40;
  if (!qword_1EC446B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B40);
  }

  return result;
}

unint64_t sub_1CA5BE6B4(uint64_t a1)
{
  result = sub_1CA5BE6DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5BE6DC()
{
  result = qword_1EC446B50;
  if (!qword_1EC446B50)
  {
    type metadata accessor for AutoShortcutsDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B50);
  }

  return result;
}

unint64_t sub_1CA5BE738()
{
  result = qword_1EC446B58;
  if (!qword_1EC446B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B58);
  }

  return result;
}

void sub_1CA5BE798()
{
  sub_1CA27351C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AutoShortcutsDataSource.action(for:)()
{
  OUTLINED_FUNCTION_14();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of ExecutableAppShortcutsLoader.loadItemsForBundleIdentifier(_:)()
{
  v1 = *(*v0 + 112);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v4[1] = sub_1CA2F6BE4;
  v6 = OUTLINED_FUNCTION_116();

  return v8(v6);
}

uint64_t dispatch thunk of ExecutableAppShortcutsLoader.action(for:)()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 120);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return v8(v6);
}

_BYTE *storeEnumTagSinglePayload for ExecutableAppShortcutsLoader.Error(_BYTE *result, int a2, int a3)
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

uint64_t sub_1CA5BED90()
{
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);

  return sub_1CA94C1E8();
}

uint64_t sub_1CA5BEE00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2AD81C;

  return sub_1CA2E0FB4();
}

uint64_t sub_1CA5BEE8C()
{
  OUTLINED_FUNCTION_0();
  v1 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v2 = *(MEMORY[0x1E6996C50] + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_15_20(v3);

  return MEMORY[0x1EEDF81A0](v1);
}

uint64_t sub_1CA5BEF38()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 16);
  *v3 = *v1;
  *(v2 + 24) = v6;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_44();

    return v8(v7);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1CA5BF060()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
    swift_unknownObjectRetain();
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = sub_1CA9490D8();
      OUTLINED_FUNCTION_1_0(v4);
      v6 = v5;
      v8 = *(v7 + 64) + 15;
      v9 = swift_task_alloc();
      sub_1CA9490B8();
      v10 = sub_1CA949078();
      (*(v6 + 8))(v9, v4);

      v11 = [v3 isTodayInCalendar_];
    }

    else
    {
      v11 = 0;
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v11 = 0;
  }

  OUTLINED_FUNCTION_2_4();

  return v12(v11);
}

uint64_t sub_1CA5BF1B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3D2984;

  return sub_1CA5BEE8C();
}

uint64_t sub_1CA5BF260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_5(a1, a2, a3, a4);
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v4 + 40) = v8;
  *v8 = v4;
  OUTLINED_FUNCTION_15_20(v8);
  v9 = OUTLINED_FUNCTION_44_9();

  return v10(v9);
}

uint64_t sub_1CA5BF35C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
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

uint64_t sub_1CA5BF474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2AD9FC;

  return sub_1CA5BF260(a1, a2, a3, v8);
}

uint64_t sub_1CA5BF530()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_46_9(v1, v2, v3, v4, v5, v6);
  v7 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v8 = *(MEMORY[0x1E6996C50] + 4);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_15_20(v9);

  return MEMORY[0x1EEDF81A0](v7);
}

uint64_t sub_1CA5BF5DC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_44();

    return v8(v7);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1CA5BF704()
{
  OUTLINED_FUNCTION_0();
  if (v0[9])
  {
    v1 = v0[9];
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v2 = swift_dynamicCastObjCClass();
    v0[10] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[11] = v3;
      *v3 = v0;
      v3[1] = sub_1CA5BF7F8;
      v4 = v0[7];
      v5 = v0[4];
      v6 = v0[5];
      v7 = v0[2];
      v8 = v0[3];
      v9 = OUTLINED_FUNCTION_73_0(v0[6]);

      return sub_1CA675E34(v9, v10, v11, v12);
    }

    OUTLINED_FUNCTION_47_12();
  }

  v14 = OUTLINED_FUNCTION_44();

  return v15(v14);
}

uint64_t sub_1CA5BF7F8()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = v4[11];
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v5[12] = v0;

  if (!v0)
  {
    v9 = v5[9];
    swift_unknownObjectRelease();
    v5[13] = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA5BF914()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  WFDateComparisonResultForComparisonOperator(0x3E8uLL, *(v0 + 80), 0, 0, *(v0 + 40), v1);

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_16_27();

  return v4(v3);
}

uint64_t sub_1CA5BF99C()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CA3D3884;

  return sub_1CA5BF530();
}

uint64_t sub_1CA5BFA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_5(a1, a2, a3, a4);
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v4 + 40) = v8;
  *v8 = v4;
  OUTLINED_FUNCTION_15_20(v8);
  v9 = OUTLINED_FUNCTION_44_9();

  return v10(v9);
}

uint64_t sub_1CA5BFB70()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
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

uint64_t sub_1CA5BFC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2AD9FC;

  return sub_1CA5BFA74(a1, a2, a3, v8);
}

uint64_t sub_1CA5BFD44()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_46_9(v1, v2, v3, v4, v5, v6);
  v7 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v8 = *(MEMORY[0x1E6996C50] + 4);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_15_20(v9);

  return MEMORY[0x1EEDF81A0](v7);
}

uint64_t sub_1CA5BFDF0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_44();

    return v8(v7);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1CA5BFF18()
{
  OUTLINED_FUNCTION_0();
  if (v0[9])
  {
    v1 = v0[9];
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v2 = swift_dynamicCastObjCClass();
    v0[10] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[11] = v3;
      *v3 = v0;
      v3[1] = sub_1CA5C000C;
      v4 = v0[7];
      v5 = v0[4];
      v6 = v0[5];
      v7 = v0[2];
      v8 = v0[3];
      v9 = OUTLINED_FUNCTION_73_0(v0[6]);

      return sub_1CA675E34(v9, v10, v11, v12);
    }

    OUTLINED_FUNCTION_47_12();
  }

  v14 = OUTLINED_FUNCTION_44();

  return v15(v14);
}

uint64_t sub_1CA5C000C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = v4[11];
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v5[12] = v0;

  if (!v0)
  {
    v9 = v5[9];
    swift_unknownObjectRelease();
    v5[13] = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA5C0128()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  WFDateComparisonResultForComparisonOperator(0x3E9uLL, *(v0 + 80), 0, 0, *(v0 + 40), v1);

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_16_27();

  return v4(v3);
}

uint64_t sub_1CA5C01B0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  swift_unknownObjectRelease_n();
  v2 = *(v0 + 96);
  v3 = OUTLINED_FUNCTION_44();

  return v4(v3);
}

void sub_1CA5C0210()
{
  OUTLINED_FUNCTION_108();
  v30 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446CA8, &qword_1CA98D448);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v28 = v7;
  v29 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446CB0, &qword_1CA98D450);
  OUTLINED_FUNCTION_1_0(v27);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_63();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446CB8, &qword_1CA98D458);
  OUTLINED_FUNCTION_1_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - v22;
  v25 = v4[3];
  v24 = v4[4];
  OUTLINED_FUNCTION_63_9(v4);
  sub_1CA5C4AB4();
  OUTLINED_FUNCTION_59_6();
  v26 = (v18 + 8);
  if (v30)
  {
    OUTLINED_FUNCTION_50_7();
    sub_1CA5C4B08();
    OUTLINED_FUNCTION_17_12();
    (*(v28 + 8))(v0, v29);
  }

  else
  {
    sub_1CA5C4B5C();
    OUTLINED_FUNCTION_17_12();
    (*(v12 + 8))(v1, v27);
  }

  (*v26)(v23, v16);
  OUTLINED_FUNCTION_107();
}

void sub_1CA5C0448()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C78, &qword_1CA98D430);
  OUTLINED_FUNCTION_1_0(v34);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C80, &qword_1CA98D438);
  OUTLINED_FUNCTION_1_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_63();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C88, &qword_1CA98D440);
  OUTLINED_FUNCTION_1_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_5();
  v15 = v2[3];
  v14 = v2[4];
  OUTLINED_FUNCTION_63_9(v2);
  sub_1CA5C4AB4();
  OUTLINED_FUNCTION_49_7();
  if (!v0)
  {
    v16 = OUTLINED_FUNCTION_48_5();
    sub_1CA4E42C8(v16, 0);
    if (v18 != v17 >> 1)
    {
      OUTLINED_FUNCTION_37_11();
      if (v21 == v22)
      {
        __break(1u);
        return;
      }

      v23 = OUTLINED_FUNCTION_57_8(v19, v20);
      sub_1CA4E42C4(v23);
      OUTLINED_FUNCTION_61_8();
      if (!v14)
      {
        if (v2)
        {
          OUTLINED_FUNCTION_50_7();
          sub_1CA5C4B08();
          OUTLINED_FUNCTION_20_25();
          swift_unknownObjectRelease();
          v30 = OUTLINED_FUNCTION_52_10();
        }

        else
        {
          sub_1CA5C4B5C();
          OUTLINED_FUNCTION_20_25();
          swift_unknownObjectRelease();
          v30 = OUTLINED_FUNCTION_51_8();
        }

        v31(v30);
        v32 = OUTLINED_FUNCTION_10_29();
        v33(v32);
        __swift_destroy_boxed_opaque_existential_0(v0);
        goto LABEL_10;
      }
    }

    v24 = sub_1CA94D4A8();
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D88, &qword_1CA989470) + 48);
    *v26 = &type metadata for DateFilterComparison;
    sub_1CA94D708();
    OUTLINED_FUNCTION_41_12();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = OUTLINED_FUNCTION_53_11();
    v29(v28);
    v2 = v0;
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
LABEL_10:
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA5C080C()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CA3D3884;

  return sub_1CA5BFD44();
}

uint64_t sub_1CA5C08E8(uint64_t a1)
{
  v2 = sub_1CA5C4AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C0924(uint64_t a1)
{
  v2 = sub_1CA5C4AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C0960(uint64_t a1)
{
  v2 = sub_1CA5C4B08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C099C(uint64_t a1)
{
  v2 = sub_1CA5C4B08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C09D8(uint64_t a1)
{
  v2 = sub_1CA5C4B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C0A14(uint64_t a1)
{
  v2 = sub_1CA5C4B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CA5C0A68(_BYTE *a1@<X8>)
{
  sub_1CA5C0448();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_1CA5C0AB4()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA5C0AC8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_27_20(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_22_20(v3);

  return sub_1CA2BCF74(v4, v5);
}

uint64_t sub_1CA5C0B58()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 112) = v0;

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

uint64_t sub_1CA5C0C88()
{
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C0D40;

  return sub_1CA5C0AC8();
}

uint64_t sub_1CA5C0D40()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1CA5C0E24(uint64_t a1)
{
  v3 = v1[1];
  v16 = *v1;
  v17 = v3;
  v4 = v1[3];
  v18 = v1[2];
  v19 = v4;
  sub_1CA43FE30(a1, v13);
  *(&v14 + 1) = 0x65756C6176;
  *&v15 = 0xE500000000000000;
  v5 = sub_1CA2BC3E0(v13);
  sub_1CA43FEEC(v13);
  v6 = v1[5];
  v13[0] = v1[4];
  v13[1] = v6;
  v7 = v1[7];
  v14 = v1[6];
  v15 = v7;
  sub_1CA43FE30(a1, v10);
  v11 = 0x61765F726568746FLL;
  v12 = 0xEB0000000065756CLL;
  v8 = sub_1CA2BC3E0(v10);
  sub_1CA43FEEC(v10);
  return sub_1CA5C0F00(v8, v5);
}

uint64_t sub_1CA5C0F00(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1CA5C4008(a1, sub_1CA5C43A8, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1CA5C0F88()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  v4 = *v3;
  v5 = v3[1];
  *(v1 + 208) = *v3;
  *(v1 + 216) = v5;
  v6 = *(v3 + 16);
  v7 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v7;
  v8 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v8;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  *(v1 + 160) = v6;
  v9 = swift_task_alloc();
  *(v1 + 224) = v9;
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_22_20(v9);

  return sub_1CA2BCF74(v10, v11);
}

uint64_t sub_1CA5C1048()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA5C1140()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = v3[7];
  v6 = v3[4];
  v5 = v3[5];
  *(v0 + 112) = v3[6];
  *(v0 + 128) = v4;
  *(v0 + 168) = v1;
  *(v0 + 80) = v6;
  *(v0 + 96) = v5;
  *(v0 + 176) = v2;
  *(v0 + 184) = 1;
  sub_1CA94C218();
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 240) = v8;
  *v8 = v0;
  v8[1] = sub_1CA5C1214;
  v9 = OUTLINED_FUNCTION_73_0(*(v0 + 192));

  return sub_1CA2BCF74(v9, v0 + 168);
}

uint64_t sub_1CA5C1214()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = *(v2 + 240);
  v6 = *v1;
  *v4 = *v1;
  *(v3 + 248) = v0;

  v7 = *(v3 + 168);
  v8 = *(v2 + 176);

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

uint64_t sub_1CA5C1378()
{
  memcpy((v1 + 16), v0, 0x80uLL);
  v2 = swift_task_alloc();
  *(v1 + 144) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C1430;

  return sub_1CA5C0F88();
}

uint64_t sub_1CA5C1430()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1CA5C1514()
{
  OUTLINED_FUNCTION_0();
  *(v1 + 144) = v0;
  *(v1 + 152) = *v2;
  v3 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v4 = *(MEMORY[0x1E6996C50] + 4);
  v5 = swift_task_alloc();
  *(v1 + 168) = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_15_20(v5);

  return MEMORY[0x1EEDF81A0](v3);
}

uint64_t sub_1CA5C15D0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 168);
  *v3 = *v1;
  *(v2 + 176) = v6;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_44();

    return v8(v7);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1CA5C16F8()
{
  OUTLINED_FUNCTION_0();
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v2 = swift_dynamicCastObjCClass();
    *(v0 + 184) = v2;
    if (v2)
    {
      v3 = *(v0 + 144);
      v4 = v3[3];
      v6 = *v3;
      v5 = v3[1];
      *(v0 + 48) = v3[2];
      *(v0 + 64) = v4;
      *(v0 + 16) = v6;
      *(v0 + 32) = v5;
      v7 = swift_task_alloc();
      *(v0 + 192) = v7;
      *v7 = v0;
      v7[1] = sub_1CA5C17FC;
      v8 = *(v0 + 160);
      v9 = OUTLINED_FUNCTION_73_0(*(v0 + 152));

      return sub_1CA2BCAE8(v9, v10);
    }

    OUTLINED_FUNCTION_47_12();
  }

  v12 = OUTLINED_FUNCTION_44();

  return v13(v12);
}

uint64_t sub_1CA5C17FC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 192);
  *v3 = *v1;
  *(v2 + 200) = v6;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5C18FC()
{
  OUTLINED_FUNCTION_0();
  if (*(v0 + 200))
  {
    v1 = *(v0 + 144);
    v2 = v1[7];
    v4 = v1[4];
    v3 = v1[5];
    *(v0 + 112) = v1[6];
    *(v0 + 128) = v2;
    *(v0 + 80) = v4;
    *(v0 + 96) = v3;
    v5 = swift_task_alloc();
    *(v0 + 216) = v5;
    *v5 = v0;
    v5[1] = sub_1CA5C19E4;
    v6 = *(v0 + 160);
    v7 = OUTLINED_FUNCTION_73_0(*(v0 + 152));

    return sub_1CA2BCAE8(v7, v8);
  }

  else
  {
    v10 = *(v0 + 176);
    swift_unknownObjectRelease_n();
    v11 = OUTLINED_FUNCTION_44();

    return v12(v11);
  }
}

uint64_t sub_1CA5C19E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  *v3 = *v1;
  *(v2 + 224) = v6;
  *(v2 + 232) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5C1AE4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  if (v1)
  {
    WFDateComparisonResultForComparisonOperator(0x3EBuLL, *(v0 + 184), *(v0 + 200), *(v0 + 224), *(v0 + 40), 0);
  }

  swift_unknownObjectRelease_n();
  v4 = OUTLINED_FUNCTION_16_27();

  return v5(v4);
}

uint64_t sub_1CA5C1B88()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 176);
  swift_unknownObjectRelease_n();
  v2 = *(v0 + 208);
  v3 = OUTLINED_FUNCTION_44();

  return v4(v3);
}

uint64_t sub_1CA5C1BE8()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_47_12();
  v2 = *(v0 + 232);
  v3 = OUTLINED_FUNCTION_44();

  return v4(v3);
}

uint64_t sub_1CA5C1C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CA94D7F8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1CA5C1D18()
{
  OUTLINED_FUNCTION_108();
  v30 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C60, &qword_1CA98D418);
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v28 = v7;
  v29 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C68, &qword_1CA98D420);
  OUTLINED_FUNCTION_1_0(v27);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_63();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C70, &qword_1CA98D428);
  OUTLINED_FUNCTION_1_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - v22;
  v25 = v4[3];
  v24 = v4[4];
  OUTLINED_FUNCTION_63_9(v4);
  sub_1CA5C49B8();
  OUTLINED_FUNCTION_59_6();
  v26 = (v18 + 8);
  if (v30)
  {
    OUTLINED_FUNCTION_50_7();
    sub_1CA5C4A0C();
    OUTLINED_FUNCTION_17_12();
    (*(v28 + 8))(v0, v29);
  }

  else
  {
    sub_1CA5C4A60();
    OUTLINED_FUNCTION_17_12();
    (*(v12 + 8))(v1, v27);
  }

  (*v26)(v23, v16);
  OUTLINED_FUNCTION_107();
}

void sub_1CA5C1F50()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C30, &qword_1CA98D3F8);
  OUTLINED_FUNCTION_1_0(v34);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C38, &qword_1CA98D400);
  OUTLINED_FUNCTION_1_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_63();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446C40, &unk_1CA98D408);
  OUTLINED_FUNCTION_1_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_5();
  v15 = v2[3];
  v14 = v2[4];
  OUTLINED_FUNCTION_63_9(v2);
  sub_1CA5C49B8();
  OUTLINED_FUNCTION_49_7();
  if (!v0)
  {
    v16 = OUTLINED_FUNCTION_48_5();
    sub_1CA4E42C8(v16, 0);
    if (v18 != v17 >> 1)
    {
      OUTLINED_FUNCTION_37_11();
      if (v21 == v22)
      {
        __break(1u);
        return;
      }

      v23 = OUTLINED_FUNCTION_57_8(v19, v20);
      sub_1CA4E42C4(v23);
      OUTLINED_FUNCTION_61_8();
      if (!v14)
      {
        if (v2)
        {
          OUTLINED_FUNCTION_50_7();
          sub_1CA5C4A0C();
          OUTLINED_FUNCTION_20_25();
          swift_unknownObjectRelease();
          v30 = OUTLINED_FUNCTION_52_10();
        }

        else
        {
          sub_1CA5C4A60();
          OUTLINED_FUNCTION_20_25();
          swift_unknownObjectRelease();
          v30 = OUTLINED_FUNCTION_51_8();
        }

        v31(v30);
        v32 = OUTLINED_FUNCTION_10_29();
        v33(v32);
        __swift_destroy_boxed_opaque_existential_0(v0);
        goto LABEL_10;
      }
    }

    v24 = sub_1CA94D4A8();
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D88, &qword_1CA989470) + 48);
    *v26 = &type metadata for RowTemplateDateOrderedComparison;
    sub_1CA94D708();
    OUTLINED_FUNCTION_41_12();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = OUTLINED_FUNCTION_53_11();
    v29(v28);
    v2 = v0;
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
LABEL_10:
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA5C2314()
{
  memcpy((v1 + 16), v0, 0x80uLL);
  v2 = swift_task_alloc();
  *(v1 + 144) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C23CC;

  return sub_1CA5C1514();
}

uint64_t sub_1CA5C23CC()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_1CA5C24C0(uint64_t a1)
{
  v2 = sub_1CA5C49B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C24FC(uint64_t a1)
{
  v2 = sub_1CA5C49B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C2538(uint64_t a1)
{
  v2 = sub_1CA5C4A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C2574(uint64_t a1)
{
  v2 = sub_1CA5C4A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C25B0(uint64_t a1)
{
  v2 = sub_1CA5C4A60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA5C25EC(uint64_t a1)
{
  v2 = sub_1CA5C4A60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA5C2628(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1CA94D918();
  a4(v8, v6);
  return sub_1CA94D968();
}

void sub_1CA5C2674(_BYTE *a1@<X8>)
{
  sub_1CA5C1F50();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_1CA5C26C0()
{
  *v0;
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB9F690;
  v2 = sub_1CA94C368();
  v3 = sub_1CA94C368();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = sub_1CA94C3A8();
  return v5;
}

uint64_t sub_1CA5C27BC@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v4 = *(v1 + 56);
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1CA5C3564(v7, &v6);
}

uint64_t sub_1CA5C2804()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_27_20(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_22_20(v3);

  return sub_1CA2BCF74(v4, v5);
}

uint64_t sub_1CA5C2894()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 112) = v0;

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

uint64_t sub_1CA5C29AC()
{
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C51AC;

  return sub_1CA5C2804();
}

uint64_t sub_1CA5C2A64()
{
  OUTLINED_FUNCTION_0();
  *(v1 + 80) = v0;
  *(v1 + 88) = *v2;
  v3 = sub_1CA25B3D0(0, &qword_1EC443AC0, 0x1E695DF00);
  v4 = *(MEMORY[0x1E6996C50] + 4);
  v5 = swift_task_alloc();
  *(v1 + 104) = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_15_20(v5);

  return MEMORY[0x1EEDF81A0](v3);
}

uint64_t sub_1CA5C2B20()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  *v3 = *v1;
  *(v2 + 112) = v6;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_44();

    return v8(v7);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1CA5C2C48()
{
  OUTLINED_FUNCTION_0();
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v2 = swift_dynamicCastObjCClass();
    *(v0 + 120) = v2;
    if (v2)
    {
      v3 = *(v0 + 80);
      v4 = *(v3 + 24);
      v5 = *(v3 + 56);
      v6 = *(v3 + 8);
      *(v0 + 48) = *(v3 + 40);
      *(v0 + 64) = v5;
      *(v0 + 16) = v6;
      *(v0 + 32) = v4;
      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_1CA5C2D54;
      v8 = *(v0 + 96);
      v9 = OUTLINED_FUNCTION_73_0(*(v0 + 88));

      return sub_1CA2BCAE8(v9, v10);
    }

    OUTLINED_FUNCTION_47_12();
  }

  v12 = OUTLINED_FUNCTION_44();

  return v13(v12);
}